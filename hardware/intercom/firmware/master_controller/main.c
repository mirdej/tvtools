// ==============================================================================
// main.c
// firmware for a device based on gnusbCore - OPEN SOURCE USB SENSOR BOX
//
// License:
// The project is built with AVR USB driver by Objective Development, which is
// published under an own licence based on the GNU General Public License (GPL).
// gnusb is also distributed under this enhanced licence. See Documentation.
//
// target-cpu: ATMega16 @ 12MHz
// created 2007-01-28 Michael Egger me@anyma.ch
//
// ==============================================================================

// ==============================================================================
// includes
// ------------------------------------------------------------------------------
// AVR Libc (see http://www.nongnu.org/avr-libc/)
#include <avr/io.h>				// include I/O definitions (port names, pin names, etc)
#include <avr/interrupt.h>		// include interrupt support
#include <avr/pgmspace.h>
#include <avr/wdt.h>			// include watchdog timer support
#include <avr/sleep.h>			// include cpu sleep support

// USB driver by Objective Development (see http://www.obdev.at/products/avrusb/index.html)
#include "usbdrv.h"

// local includes

#include "gnusb.h"					// gnusb setup and utility functions 
#include "../common/tally.h"

// ==============================================================================
// Constants
// ------------------------------------------------------------------------------
#define SPI_PAUSE 		5
#define LED_KEEP_ALIVE	100  	// number of passes before usb status led turns off
#define ACTIVE_OUTPUTS	0x03	// output buffers act9ivated on Max4456
#define BUTTON_DEBOUNCE	50
#define MIX_LEVEL_THRESH	20	// Threshold for switching inputs
#define LED_TIME			200		// led mux time
#define TALLY_BREAK		5000   //time between impulses
#define TALLY_PIN 			0

// ==============================================================================
// Globals
// ------------------------------------------------------------------------------


static u08		in_to_out[8];	// which switcher input is connected to output
static u08		mix_level;
static u08		fader_level;
static u08		reply[8];
static u16		debounce;
static u08 		old_buttons;
static u08		led_mux;
static u08		fader_mode;
static u08 		on_tally;		// mixer channels on air
static u08 		on_hold;		// mixer channels prepared to go on air
static u08		on_prep;		// mixer channel prepared to go on hold
static u08		led_timer;
static u08		button_mask;	

static u08		old_tally,old_hold; 
static u08 		tally_update_timer;

unsigned char 	tx_buffer[RX_MAX_BUF_SIZE+1];
unsigned char 	tx_len,tx_idx;
tx_state_t		tx_state;


// ------------------------------------------------------------------------------
// - CHECk ADC and update ad_values
// ------------------------------------------------------------------------------

void check_fader(void)
{	
	if (!(ADCSRA & (1 << ADSC))) {								// see if AD-Conversion is complete
			
			fader_level = (ADCL | ADCH<<8) >> 2;							// read ADC (8 bits);
						
			ADCSRA |= (1 << ADIF);			// clear hardware "conversion complete" flag 
			ADCSRA |= (1 << ADSC);			// start conversion
		}
}

// ------------------------------------------------------------------------------
// - Message to the tally lights out there
// ------------------------------------------------------------------------------

void update_tallys(void) {
		if (tx_state == idle_tx) {
	     	tx_buffer[0] = MULTICAST_ADDRESS;	// address
    	 	tx_buffer[1] = 4;					// length
     		tx_buffer[2] = CMD_TALLY;			// command
			tx_buffer[3] = on_tally;			// payload
			tx_buffer[4] = on_hold;				// payload
			tx_len = 5;
			tx_idx = 0;
			tx_state = sending_tx;
		}

}

// ------------------------------------------------------------------------------
// - SPI: Send one byte
// ------------------------------------------------------------------------------


void spi_send_byte(uchar the_byte) {
		SPDR = the_byte;
		while (!(SPSR & (1<<SPIF))) {}				// wait until complete	
}

// ------------------------------------------------------------------------------
// - Latch Max 4456 Matrix Switcher
// ------------------------------------------------------------------------------

void latch_max4456 (void) {
	uchar latch_timer;
	latch_timer = 0;
	cbi(PORTB,4);
	while (--latch_timer) {}
	sbi(PORTB,4);
}

// ------------------------------------------------------------------------------
// - Update Video Matrix Switcher
// ------------------------------------------------------------------------------

void set_switch (void) {
	
	uchar i,temp;
	
	for (i = 0; i < 4; i++) {
		temp = in_to_out[2 * i + 1] | in_to_out[2 * i] << 4;
		spi_send_byte(temp);
	}

	latch_max4456();

}


// ------------------------------------------------------------------------------
// - Activate Output Buffers on MAX4456
// ------------------------------------------------------------------------------

void	activate_switcher_outputs() {

	uchar i,temp;
	
	for (i = 0; i < 4; i++) {
		temp = 0;
		if (ACTIVE_OUTPUTS & ( 1 << (2 * i)) ) 		{ temp |= 0x90; }
		if (ACTIVE_OUTPUTS & ( 1 << (2 * i + 1)) ) 	{ temp |= 0x09; }
		spi_send_byte(temp);
	}

	latch_max4456();
	
}


// ------------------------------------------------------------------------------
// - Decide if we change the switcher settings
// ------------------------------------------------------------------------------
uchar get_index (uchar binary) {
	uchar i;
	for (i = 0; i < 5; i++) {
		if 	(1 & (binary >> i)) return i;
	}
	return 0xff;
}

void check_switch_change (void) {
	uchar temp;

		if (on_prep) {
			on_hold = on_prep;
		}
		temp = get_index(on_hold);
		

	if (mix_level < MIX_LEVEL_THRESH) {

		on_prep = 0;

		if (on_hold) {
			if (temp != 0xff) {
				if (in_to_out[1] != temp) {
					in_to_out[1] = temp;
					set_switch();
				}
			}
		} else {
			on_hold = (1 << in_to_out[1]);
		}
		
		on_tally = (1 << in_to_out[0]);
		
	} else if (mix_level > (255 - MIX_LEVEL_THRESH)){

		on_prep = 0;

		if (on_hold) {
			if (temp != 0xff) {
				if (in_to_out[0] != temp) {
					in_to_out[0] = temp;
					set_switch();
				}
			}
		} else {
			on_hold = (1 << in_to_out[0]);
		}
		on_tally = (1 << in_to_out[1]);
		
	} else {
		
		on_tally = ((1 << in_to_out[1]) | (1 << in_to_out[0]));
		if (on_prep) {
			on_hold = on_prep;
		} else 	on_hold = 0;
	}
	
	if ((old_hold != on_hold ) | (old_tally != on_tally )) {
		old_tally = on_tally;
		old_hold = on_hold;
		update_tallys();
	}
}



// ------------------------------------------------------------------------------
// - Activate Output Buffers on MAX4456
// ------------------------------------------------------------------------------


void check_buttons (void) {
	if (debounce) {
		debounce--;
	} else {
		
		uchar temp,trigger;
		
		temp =  ~(PINA & button_mask);
		trigger =	temp & (temp ^ old_buttons);  // detect low/high transition
		old_buttons = temp;
		
		if (trigger) {
			debounce = BUTTON_DEBOUNCE;
			
			if (trigger & 0x20) {
				fader_mode ^= 0xC0; // toggle fade_mode between 0x40 and 0x80
			}  
			else {
				on_prep = trigger;
			}
		}
	}
}


// ------------------------------------------------------------------------------
// - LED control
// ------------------------------------------------------------------------------

void light_leds (void) {
	
	if (led_timer) {
		led_timer--;
	} else {
	
	
		uchar leds = 0;
		uchar i,temp;
		
		led_mux ^= 0xC0;  // toggle ledmux between 0x40 and 0x80
	
	
		if (led_mux == 0x80) { temp = on_tally; }
		else { temp = on_hold;}
		
		// really stupid wiring
		for (i = 0; i < 5; i++) {
			if (1 & temp >> i) {leds |= (1 << (5-i)); }
		}
		 
		if (led_mux & fader_mode) {leds |= 1;}
		
		leds |= led_mux;
		PORTC = leds;
		
		led_timer = LED_TIME;
		return;
		
	}
}



// ------------------------------------------------------------------------------
// - Set Mix level
// ------------------------------------------------------------------------------

void set_mix_level(uchar level) {
	mix_level = level;
}



// ------------------------------------------------------------------------------
// - usbFunctionSetup
// ------------------------------------------------------------------------------
uchar usbFunctionSetup(uchar data[8])
{
	
	if(data[1] == POLL){       						// GET ALL ad_values
	
		reply[0] = mix_level;
		reply[1] = in_to_out[0]+1;		// channel numbers in max: 1-5, here 0-4 
		reply[2] = in_to_out[1]+1;		// channel numbers in max: 1-5, here 0-4 
		usbMsgPtr = reply;
        return 3;
	} else if(data[1] == SET_TALLY) {					// Set Tally to channel
      
//      		on_tally = data[2];
	
	} else if(data[1] == SET_BUTTON_MASK) {				
     	
     	button_mask = data[2];				// number of used channels (default 4) 
     	activate_switcher_outputs();
     	
    } else if(data[1] == BANG_TALLY) {					// Set Leds

		ledToggle(STATUS_LED_YELLOW);
     	
	} else if(data[1] == PATCH) {					// Set Leds
		
	//	button_patch[data[2]] = data[3];
     //	if (tx_state == idle_tx) {
	     	tx_buffer[0] = data[2];				// address
    	 	tx_buffer[1] = 3;					// length
     		tx_buffer[2] = CMD_SET_CHANNEL;		// command
			tx_buffer[3] = data[4];				// payload
			tx_len = 4;
			tx_idx = 0;
			tx_state = sending_tx;
	//	}
				
	} else if(data[1] == cmd_StartBootloader) {			// Start Bootloader for reprogramming the gnusb
		startBootloader();
	}
	
	return 0;
}


// ------------------------------------------------------------------------------
// - usbFunctionWrite
// ------------------------------------------------------------------------------
uchar usbFunctionWrite(uchar* data, uchar len)
{
	return 0;
}

// ------------------------------------------------------------------------------
// - UART
// ------------------------------------------------------------------------------

void check_uart(void) {
	
	if (tx_state == idle_tx) return;
	
	if (!( UCSRA & (1<<UDRE))) return;  // still sending last byte
	
	if (tx_idx == 0) {
		// indicate this is an address frame by setting bit 9 to 1
		UCSRB |= ( 1 << TXB8 );
	} else  {
		UCSRB &= ~( 1 << TXB8 );	
	}
	
	UDR = tx_buffer[tx_idx];
	tx_idx++;
	
	if (tx_idx > tx_len) {
		tx_state = idle_tx;
		//UCSRB &= ~(1 << TXEN); // turn off uart
//		PORTB &= ~(1 << 1); // pull pin low
	}
	
}

// ==============================================================================
// - main
// ------------------------------------------------------------------------------
int main(void)
{
	// ------------------------- Initialize Hardware
	
	// PORTA: AD Converter
	DDRA 	= 0x00;		// set all pins to input
	PORTA 	= 0x7f;		// 0111 1111  turn on pullups on buttons, off on adc 

	//PORTB: Serial Communication + Buttons
	
	DDRB = 0xBF;		// 1011 1111 - All outputs except MISO (bits 0-4: slave select)
	SPCR = (1<<SPE)|(1<<MSTR)|(1<<SPR0)|(1<<SPR1); 		//  enable SPI in Master Mode, clk = fcpu/8
	SPSR |= (1 << SPI2X);
	PORTB |= 0x00;		// 0001 1111 - All CS Low

	// PORTC: LEDs
	DDRC 	= 0xff;		// set all pins to output
	PORTC 	= 0xff;		// turn off all leds
		
	// PORTD: gnusbCore stuff: USB, status leds, jumper
	UCSRB = ( 1 << UCSZ2); 						
	UCSRC = /*( 1 << UPM1) | */( 1 << UCSZ1) | ( 1 << UCSZ0 );		// Even Parity, 9 bit, 1 stop bit
	UBRRH = 0;
	UBRRL = 149; 												// 5000 baud (F_CPU/16/BAUD - 1)
//	UBRRL = F_CPU/4000000 - 1; UBRRH =  0; // baud rate 250kbps

	initCoreHardware();
	ledOn(STATUS_LED_GREEN);
	
	// PORTD RX/TX (PD0,PD1)
	DDRD |= (1 << 1);
	DDRD &= ~(1 << 0);
	PORTD &= ~0x03; // turn off pullups


	tx_state = idle_tx;

	activate_switcher_outputs();
	fader_mode = FADERMODE_AUTO;
	led_mux = 0x40;
	button_mask= 0x3f;// 0011 1111

	// start first ad conversion
	ADMUX = (ADMUX & ~ADC_MUX_MASK) | (7 & ADC_MUX_MASK);		// set channel

	ADCSRA |= (1 << ADIF);			// clear hardware "conversion complete" flag 
	ADCSRA |= (1 << ADSC);			// start conversion
	
	old_tally = 0;
	
	UCSRB |= (1 << TXEN); // turn on uart

	// start slow timer for periodic tally updates
	TCCR0 = (1 << CS02);
	
	// ------------------------- Main Loop
	while(1) {
        wdt_reset();		// reset Watchdog timer - otherwise Watchdog will reset gnusb

		usbPoll();

		check_fader();
		set_mix_level(fader_level);
		check_buttons();
		check_switch_change();
		light_leds();

		check_uart();
		
		if (TIFR & (1 << TOV0)) {

			TIFR = (1 << TOV0);  // clear timer overflow (see: http://www.nongnu.org/avr-libc/user-manual/FAQ.html#faq_intbits)
			tally_update_timer++;
			if (tally_update_timer == 0) update_tallys();
		}
		
	}
	return 0;
}

