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

#include "usbdrv.h"
#include "gnusb.h"
#include "../common/tally.h"

// ==============================================================================
// Globals
// ------------------------------------------------------------------------------

volatile uint32_t lastTime;
volatile uint32_t	ticks;

volatile unsigned char	on_tally;
volatile unsigned char	on_tally_idx;
volatile unsigned char	old_buttons;

static unsigned char		reply[8];

unsigned char 	tx_buffer[RX_MAX_BUF_SIZE+1];
unsigned char 	tx_len,tx_idx;
tx_state_t		tx_state;


// ------------------------------------------------------------------------------
// Count Milliseconds

ISR(TIMER0_COMPA_vect)
{
	ticks++;
}



uint32_t millis()
{
	uint32_t m;
	uint8_t oldSREG = SREG;

	// disable interrupts while we read timer0_millis or we might get an
	// inconsistent value (e.g. in the middle of a write to timer0_millis)
	cli();
	m = ticks / 10;
	SREG = oldSREG;
	sei();
	
	return m;
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
			tx_buffer[4] = 0;				// payload
			tx_len = 5;
			tx_idx = 0;
			tx_state = sending_tx;
		}
}






// ------------------------------------------------------------------------------
// - UART
// ------------------------------------------------------------------------------

void check_uart(void) {
	
	if (tx_state == idle_tx) return;
	
	if (!( UCSR0A & (1<<UDRE0))) return;  // still sending last byte
	
	if (tx_idx == 0) {
		// indicate this is an address frame by setting bit 9 to 1
		UCSR0B |= ( 1 << TXB80 );
	} else  {
		UCSR0B &= ~( 1 << TXB80 );	
	}
	
	UDR0 = tx_buffer[tx_idx];
	tx_idx++;
	
	if (tx_idx > tx_len) {
		tx_state = idle_tx;
		//UCSRB &= ~(1 << TXEN); // turn off uart
//		PORTB &= ~(1 << 1); // pull pin low
	}
	
}

// ------------------------------------------------------------------------------
// - Select Camera
// ------------------------------------------------------------------------------

void select_cam(unsigned char idx) {

/*-------------

Cam 1: 1x1
Cam 2: 0x1
Cam 3: 010
Cam 4: 000

--------------*/
    unsigned char selector;

	if (idx > 3) idx = 3;

    switch (idx) {
           case 0: selector = 0x50; break;
           case 1: selector = 0x10; break;
           case 2: selector = 0x20; break;
           default: selector = 0x00;
    }

    PORTD = ( PORTD & 0x8F ) | selector;

    on_tally_idx = idx;

	on_tally = 1 << idx;
	PORTB = 1 << idx;
	update_tallys();
}


// ------------------------------------------------------------------------------
// - Check Buttons
// ------------------------------------------------------------------------------

void check_buttons(void) {
	// sample buttons

	cli();
	unsigned char temp = PINC & 0x0f;
	if (temp == old_buttons) return;
	old_buttons = temp;
	
	unsigned char trigger = ~temp & 0x0f;
	if (!trigger) return;
	
	if (trigger & 1) select_cam(0);
	else if (trigger & 2) select_cam(1);
	else if (trigger & 4) select_cam(2);
	else if (trigger & 8) select_cam(3);
	lastTime = millis();

	sei();
}

// ------------------------------------------------------------------------------
// - Interrupt on new video frame (every 40 ms)
// ------------------------------------------------------------------------------

ISR(PCINT1_vect) {
 check_buttons();
}

// ------------------------------------------------------------------------------
// - usbFunctionSetup
// ------------------------------------------------------------------------------
uchar usbFunctionSetup(uchar data[8])
{
	
	if(data[1] == POLL){       						// GET ALL ad_values
	
		reply[0] = 255;          // this comes from the old gnuswitch, mixlevel, does not make sense anymore
		reply[1] = on_tally_idx;		
		reply[2] = 0;		
		usbMsgPtr = reply;
        return 3;
        
	} else if(data[1] == SET_TALLY) {			// Start Bootloader for reprogramming the gnusb
		uint8_t c = data[2];
		c %= 4;
		select_cam(c);
	
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


// ==============================================================================
// - main
// ------------------------------------------------------------------------------
int main(void)
{

	// ------------------------- Initialize Hardware
	//PORTB: LEDs
	
	DDRB = 0x0f;
	PORTB = 0x00;

	// PORTC: Buttons
	DDRC 	= 0x00;		// set all pins to input
	PORTC 	= 0x0f;		// pullups
		
	// PORTD: 4066 control, interrupt, rx/tx, USB
	DDRD = 0xf2;
	
	// timer 0	-> millisecond clock
	ticks 	= 0;
	TCCR0A 	= (1 << WGM01);									// CTC
	TCCR0B 	= (0 << CS02) | (1 << CS01) | (0 << CS00);		// 8 prescaler @ 20Mhz -> 2'500'000 Hz
	TIMSK0 	= (1 << OCIE0A);								// enable interrupt
	OCR0A	= 249;											// 10000 Hz -> 10 ticks / Millisecond

	// init UART
	UCSR0B = ( 1 << UCSZ02); 						
	UCSR0C = /*( 1 << UPM1) | */( 1 << UCSZ01) | ( 1 << UCSZ00 );		// Even Parity, 9 bit, 1 stop bit
	UBRR0H = 0;
	UBRR0L = 249; 												// 5000 baud (F_CPU/16/BAUD - 1)

	// enable Pinchange Interrupt on PC5 -> PCINT13
	PCICR = (1 << PCIE1);
    PCMSK1 = (1 << PCINT13);
	

	usbDeviceConnect();
	usbReset();
    usbInit();

	wdt_enable(WDTO_1S);	// enable watchdog timer

	sei();
	
	tx_state = idle_tx;
	
	UCSR0B |= (1 << TXEN0); // turn on uart
	
	select_cam(0);
	
	unsigned long tt;
	unsigned char idx;
	
	// ------------------------- Main Loop
	while(1) {
        wdt_reset();
		usbPoll();			// see if there's something going on on the usb bus
        check_uart();	
        
        if (millis()-lastTime >= 80) {
        	 check_buttons();
        }
	}
	return 0;
}

