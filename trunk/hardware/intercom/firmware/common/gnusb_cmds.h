// ==============================================================================
// usb_commands.h
//
// Commands shared between the gnuswitch firmware and host software
//
// License:
// The project is built with AVR USB driver by Objective Development, which is
// published under an own licence based on the GNU General Public License (GPL).
// gnusb is also distributed under this enhanced licence. See Documentation.
//
// target-cpu: ATMega16 @ 12MHz
// created 2007-07-26 Michael Egger me@anyma.ch
//
// ==============================================================================

#define PATCH 				1  	// PATCH Button, Input  - sets which physical input corresponds to button
#define	PATCH_GET			2	// 5 bytes: Btn1, Btn2,.. Btn5

#define CONNECT				3	// CONNECT Input, Output
#define CONNECT_GET			4 	// 8 bytes: Out 0, Out 1, ..., Out 7

#define MIX					5	// Set mix level (if jumper is set on Digipot)

#define POLL				6	// 3 bytes: Mix level, Out 0, Out 1

#define SET_TALLY			10
#define BANG_TALLY			11
#define SET_BUTTON_MASK		12

#define	FADERMODE			7	// Set Fadermode
#define FADERMODE_GET		8	// 1 byte

#define FADERMODE_AUTO		0x40
#define FADERMODE_MANUAL	0x80


// Start Bootloader for Software updates
#define cmd_StartBootloader 	0xf8


#define err_BadChannel 1
#define err_BadValue 2

