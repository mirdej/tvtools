// ==============================================================================
// includes
// ------------------------------------------------------------------------------
// AVR Libc (see http://www.nongnu.org/avr-libc/)
#include <avr/io.h>				// include I/O definitions (port names, pin names, etc)
#include <avr/interrupt.h>		// include interrupt support
#include <avr/pgmspace.h>
#include <avr/eeprom.h>
#include <avr/wdt.h>			// include watchdog timer support
#include <avr/sleep.h>			// include cpu sleep support

#include "../common/tally.h"
// *******************************************************************************
// CHANGE THIS AND RECOMPILE FOR EVERY DEVICE
#define DEVICE_ID 	8
// *******************************************************************************
//#define IN_REGIE 	1
//#define IN_REGIE2 	2

// signs for 7 segment display
const char 		segment_numbers[] PROGMEM = {0x81,0xE7,0x49,0x43,0x27,0x13,0x11,0xc7,0x01,0x03};

#define 		STRICH_UNTEN 	0xfb
#define 		STRICH_MITTE    0x7f
#define 		STRICH_OBEN 	0xdf
#define 		CLEAR_DISPLAY 	0xff

#define 		DISPLAY_STEPS	5

#define 		DEVICEADDRESS_LOC	0x01
#define 		TALLYCHANNEL_LOC	0x02

unsigned char 	device_address, tally_channel;
unsigned char 	error, error_display_count;
unsigned char 	display_values[DISPLAY_STEPS],display_idx;

unsigned int	button_debounce;
unsigned char	old_buttons;

unsigned char 	rx_buffer[RX_MAX_BUF_SIZE];
unsigned char 	rx_idx, rx_len;
rx_state_t		rx_state;


// ------------------------------------------------------------------------------
// 7 Segment Display
// ------------------------------------------------------------------------------

void display_clear(void) {
	PORTB |= 0xFE; // turn off all segments 
}

void display_set_segments(unsigned char n) {
	display_clear();
	PORTB &= n;
}

unsigned char display_number(unsigned char n) {
	return (pgm_read_byte(&(segment_numbers[n])));
}

void display_update(void) {
	if (TIFR & (1 << TOV1)) {

			TIFR = (1 << TOV1);  // clear timer overflow (see: http://www.nongnu.org/avr-libc/user-manual/FAQ.html#faq_intbits)
	
			if (error) {
				if (error_display_count == 0) {error_display_count = 10;}
				display_values[0] = 0x19; // E
				display_values[1] = display_number(error);
				error_display_count--;
				if (error_display_count == 1) {
					display_values[0] = STRICH_MITTE;
					display_values[1] = CLEAR_DISPLAY;
					error = 0;
					error_display_count = 0;
				}
				
			} else if (tally_channel) {	// device is configured, display steady channel number
				
				display_values[0] = display_number(tally_channel);
				display_values[1] = display_values[0];
				
			} else if (device_address) {
				
				display_values[0] = display_number(device_address / 10);
				display_values[1] = display_number(device_address % 10);
			}
			
			display_idx++;
			display_idx %= 2;
			display_set_segments(display_values[display_idx]);
	}
}

// ------------------------------------------------------------------------------
// Hardware Init
// ------------------------------------------------------------------------------

void init (void) {

	// get unique device address from eeprom
	device_address = DEVICE_ID;
	if (device_address > 127) device_address = 0;
	// which channel are we serving?
	tally_channel = eeprom_read_byte((unsigned char *) TALLYCHANNEL_LOC);
	if (tally_channel > 8) tally_channel = 0;

	// ------------------------- Initialize Hardware
	
	// PORTB: 7Segment display + one led
	DDRB 	= 0xff;		// set all pins to output
#ifdef IN_REGIE
	PORTB 	= 0xf0;		//
#else
	PORTB 	= 0xfe;		//
#endif
	display_values[0] = STRICH_MITTE;
	display_values[1] = CLEAR_DISPLAY;
	display_values[2] = STRICH_MITTE;
	display_values[3] = CLEAR_DISPLAY;
	display_values[4] = CLEAR_DISPLAY;
	
	// PORTD: RX/TX, Expansion (Lanc)
	DDRD 	= 0x42;		// tx (PD 2), led (PD 6) outputs
	PORTD 	= 0x00;		// turn off all leds
	PORTD |= (1 << 4) | (1 << 5); //pullups for buttons
	
	// Start timer 1 for display blinking
	TCCR1B = (1 << CS11) | ( 1 << CS10);
	
	// Init UART 
	UCSRA = ( 1 << MPCM );  									// Multiprocessor mode
	UCSRB = ( 1 << RXCIE ) | ( 1 << RXEN) | ( 1 << UCSZ2); 		// Enable RX Interrupt, RX
	UCSRC = /*( 1 << UPM1) |*/ ( 1 << UCSZ1) | ( 1 << UCSZ0 );		// Even Parity, 9 bit, 1 stop bit
	UBRRH = 0;
#ifndef IN_REGIE
	UBRRL = 149; 												// 5000 baud (F_CPU/16/BAUD - 1)
#else
	UBRRL = 12;
#endif
	

	// enable interrupts
	sei();
}

// ------------------------------------------------------------------------------
// Communication
// ------------------------------------------------------------------------------

ISR (USART_RX_vect) {
	unsigned char in_byte,extra_byte;
	

	// check for errors first
	if (UCSRA & ((1 << FE) | (1 << DOR) | (1 << UPE))) {
		if (UCSRA & (1 << FE)) 		error = ERR_RX_FRAMING_ERROR;
		if (UCSRA & (1 << DOR)) 	error = ERR_RX_DOR;
		if (UCSRA & (1 << UPE)) 	error = ERR_RX_UPE;
		UCSRA &= ~((1 << FE) | (1 << DOR) | ( 1 << UPE)); // clear errors
	}
	
	extra_byte = UCSRB;
	in_byte = UDR;		// need to read UDR to clear RXC flag
	if (error) return;
	
	
	if (extra_byte & (1 << RXB8)) {				// we're listening to addresses only
		if (in_byte == MULTICAST_ADDRESS) in_byte = device_address;
		if (in_byte == device_address){		// HE's talking to us!! let's listen...
			
			rx_idx = 0;
			if 		(rx_state == receiving_rx)	error = ERR_RX_UNDERFLOW;  // shouldn't there be more data first ??
			else if (rx_state == complete_rx) 	error = ERR_RX_OVERFLOW;   // we haven't processed last command, buffer will get overwritten
			rx_state = receiving_rx;
			UCSRA &= ~(1 << MPCM);			// prepare to receive non-address bytes
											// NOTE: 	no &= as this probably interferes with TX Complete Flag as it is cleared by writing 1 to it

			
		}
		
	} else {								// MPCM == 0 -> we're receiving data
		
		if 		(rx_state != receiving_rx)	error = ERR_RX_BAD_STATE;
		if (rx_idx == 0) rx_len = in_byte;
		else {
			rx_buffer[rx_idx-1]	= in_byte;
		}
		rx_idx++;


		if (rx_idx > rx_len) {
			rx_state = complete_rx;
			UCSRA = (1 << MPCM);			// only listen to address packets now
		}
		
	}

}


void check_rx(void) {
	
	if (rx_state == complete_rx) {
		
		switch (rx_buffer[0]) {
			
			case CMD_SET_CHANNEL:
				if (device_address > 8) break;  // only devices 1-8 can be reassigned
				if (rx_buffer[1] < 9 ) tally_channel = rx_buffer[1];
				eeprom_write_byte((unsigned char *) TALLYCHANNEL_LOC,tally_channel);
				break;
				
			case CMD_TALLY:
				PORTD &= ~(1 << 6);
#ifdef IN_REGIE
				PORTB &= ~0x07;
				if (rx_buffer[1] & (1 << (IN_REGIE2-1))) {PORTB |= (1 << 1);}
				if (rx_buffer[2] & (1 << (IN_REGIE2-1))) {PORTB |= (1 << 2);}
#else
				PORTB &= ~(1 << 0);
#endif
				if (tally_channel == 0) break;
				if (rx_buffer[1] & (1 << (tally_channel-1))) {PORTD |= (1 << 6);}
				if (rx_buffer[2] & (1 << (tally_channel-1))) {PORTB |= (1 << 0);}
				break;
		
			default:
				error = ERR_UNKNOWN_COMMAND;
			
		}
		
		rx_state = idle_rx;
	}
	
}

void check_buttons(void) {
	if (button_debounce) {
			button_debounce++;
			return;
	}
		
	if (~PIND & (1 << 4)) {
		tally_channel +=5;
		tally_channel %=6;
			button_debounce = 1;

	}
	if (~PIND & (1 << 5)) {
		tally_channel++;
		tally_channel %=6;
			button_debounce = 1;
	}
	
	
	if (button_debounce == 1) {
					eeprom_write_byte((unsigned char *) TALLYCHANNEL_LOC,tally_channel);
	}
}

// ==============================================================================
// - main
// ------------------------------------------------------------------------------
int main(void)
{

	init();

	rx_state = idle_rx;	
#ifdef IN_REGIE
	tally_channel = IN_REGIE;
#endif

	// ------------------------- Main Loop
	while(1) {

		check_rx();
#ifndef IN_REGIE
		check_buttons();
		display_update();
#endif		
	}
	return 0;
}

