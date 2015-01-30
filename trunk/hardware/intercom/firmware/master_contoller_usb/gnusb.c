// ==============================================================================
// gnusbcore.c
// globals and utilities for gnusbCore - OPEN SOURCE USB SENSOR BOX
//
// License:
// The project is built with AVR USB driver by Objective Development, which is
// published under an own licence based on the GNU General Public License (GPL).
// usb2dmx is also distributed under this enhanced licence. See Documentation.
//
// target-cpu: ATMega16 @ 12MHz
// created 2007-01-28 Michael Egger me@anyma.ch
//

// ==============================================================================
// includes
// ------------------------------------------------------------------------------
// AVR Libc (see http://www.nongnu.org/avr-libc/)
#include <avr/io.h>			// include I/O definitions (port names, pin names, etc)
#include <avr/interrupt.h>	// include interrupt support
#include <avr/pgmspace.h> 	
#include <avr/wdt.h>		// include watchdog timer support
#include <avr/sleep.h>		// include cpu sleep support

// USB driver by Objective Development (see http://www.obdev.at/products/avrusb/index.html)
#include "usbdrv.h"

// local includes
#include "gnusb.h"		// gnusb setup and utility functions 


// ==============================================================================
// - sleepIfIdle
// ------------------------------------------------------------------------------
void sleepIfIdle() {}



// ------------------------------------------------------------------------------
// - Status Leds
// ------------------------------------------------------------------------------
// 							(on means  set to 0 as we sink the LEDs )
void ledOff(uchar led) {
//	PORTD |=  1 << led;
}

void ledOn(uchar led){
//	PORTD &= ~(1 << led);
}

void ledToggle(uchar led){
//	PORTD ^= 1 << led;
}

// ------------------------------------------------------------------------------
// - ADC Utilities
// ------------------------------------------------------------------------------
int ad_ConversionComplete (void) {
	return (!(ADCSRA & (1 << ADSC)));
}

 int ad_Read10bit (void) {
 	return (ADCL | ADCH << 8);
 }
 
 int ad_Read8bit (void) {
 	return ad_Read10bit() >> 2;
 }
 
 void ad_SetChannel (uchar mux) {
 	ADMUX = (ADMUX & ~ADC_MUX_MASK) | (mux & ADC_MUX_MASK);		// set channel
 }
 
 void ad_StartConversion () {
 			ADCSRA |= (1 << ADIF);			// clear hardware "conversion complete" flag 
			ADCSRA |= (1 << ADSC);			// start conversion
}

// ------------------------------------------------------------------------------
// - USB Reset
// ------------------------------------------------------------------------------
// Set USB- and USB+ Pins to output and pull them low for more than 10ms

 void usbReset(void) {
 	u08  i, j;
 	
	USBOUT &= ~USBMASK;	// make sure USB pins are pulled low 	
 	USBDDR |= USBMASK;	// set USB pins to output -> SE0
 	
    j = 0;
    while(--j) {       
        i = 0;
        while(--i);     // delay >10ms for USB reset
    }
 
    USBDDR &= ~USBMASK; // set USB pins to input
}

// ==============================================================================
// - Init hardware
// ------------------------------------------------------------------------------
void initCoreHardware(void)
{
}

// ------------------------------------------------------------------------------
// - Start Bootloader
// ------------------------------------------------------------------------------
// dummy function doing the jump to bootloader section (Adress 1C00 on Atmega16)
void (*jump_to_bootloader)(void) = 0x1C00; __attribute__ ((unused))

void startBootloader(void) {
		
		
		MCUSR &= ~(1 << PORF);			// clear power on reset flag
										// this will hint the bootloader that it was forced
	
		cli();							// turn off interrupts
		wdt_disable();					// disable watchdog timer
		usbDeviceDisconnect(); 			// disconnect gnusb from USB bus
		
		cbi(ADCSRA, ADIE);				// disable ADC interrupts
		cbi(ADCSRA, ADEN);				// disable ADC (turn off ADC power)


		PORTB = 0;
		PORTC = 0;
		ledOff(STATUS_LED_GREEN);		
		ledOff(STATUS_LED_YELLOW);

		jump_to_bootloader();
}

