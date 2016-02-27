# Name: gnusb Makefile
# www.anyma.ch

DEVICE     = atmega88
CLOCK      = 20000000
PROGRAMMER = -c usbasp -P usb
AVRDUDE = avrdude $(PROGRAMMER) -p $(DEVICE)

# Choose your favorite programmer and interface above.

COMPILE = avr-gcc -Wall -Os -Iusbdrv -I. -DF_CPU=$(CLOCK) -mmcu=$(DEVICE) #-DDEBUG_LEVEL=2
# NEVER compile the final product with debugging! Any debug output will
# distort timing so that the specs can't be met.

PATH_TO_GNUSBCORE = ./
PATH_TO_USBDRV = usbdrv
PATH_TO_COMMON = ../common

OBJECTS = build/usbdrv.o build/usbdrvasm.o build/oddebug.o build/gnusb.o build/main.o


# symbolic targets:
all:	build/main.hex

#===============================================================
# generic make file to be included by the project's own makefile

build: 
	mkdir build


build/%.o: %.c build
	$(COMPILE) -c $< -o $@

build/%.o: $(PATH_TO_USBDRV)/%.c build
	$(COMPILE) -c $< -o $@

build/%.o: $(PATH_TO_USBDRV)/%.S build
	$(COMPILE) -x assembler-with-cpp -c $< -o $@

build/%.o: $(PATH_TO_GNUSBCORE)/%.c build
	$(COMPILE) -I$(PATH_TO_GNUSBCORE)/common -c $< -o $@


flash:	all
	$(AVRDUDE)  -U flash:w:build/main.hex:i

clean:
	rm -rf build

# file targets:
build/main.bin:	$(OBJECTS)
	$(COMPILE) -o $@ $(OBJECTS)

build/main.hex:	build/main.bin
	rm -f $@ build/main.eep.hex
	avr-objcopy -j .text -j .data -O ihex $< $@
	avr-size $@
	
disasm:	build/main.bin
	avr-objdump -d main.bin

cpp:
	$(COMPILE) -E main.c

terminal:
	$(AVRDUDE) -t