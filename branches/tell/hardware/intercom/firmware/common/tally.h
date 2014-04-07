// tally.h
// common used codes


#define	MULTICAST_ADDRESS 		0xff

#define CMD_SET_CHANNEL			0x10
#define CMD_TALLY				0x30


// rx states

#define RX_MAX_BUF_SIZE 			8

typedef enum {
	idle_rx = 0,
	receiving_rx = 1,
	complete_rx = 2
} rx_state_t;

typedef enum {
	idle_tx = 0,
	sending_tx = 1
} tx_state_t;

// errors

#define ERR_RX_UNDERFLOW 				0
#define ERR_RX_OVERFLOW 				1
#define ERR_RX_BUFFER_OVERFLOW			2
#define ERR_RX_BAD_STATE				3
#define ERR_RX_FRAMING_ERROR			4
#define ERR_RX_DOR						5
#define ERR_RX_UPE						6

#define ERR_UNKNOWN_COMMAND				7

