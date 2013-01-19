DEVICE     = attiny2313
CLOCK      = 12000000
PROGRAMMER = -c usbasp -P usb
AVRDUDE = avrdude $(PROGRAMMER) -p $(DEVICE)
FUSEOPT =  -U hfuse:w:0x9f:m -U lfuse:w:0xc9:m


# Choose your favorite programmer and interface above.

COMPILE = avr-gcc -Wall -Os -Iusbdrv -I. -mmcu=$(DEVICE) #-DDEBUG_LEVEL=2
OBJECTS = main.o


# symbolic targets:
all:	main.hex

.c.o:
	$(COMPILE) -c $< -o $@

.c.s:
	$(COMPILE) -S $< -o $@

flash:	all
	$(AVRDUDE) -U flash:w:main.hex:i

clean:
	rm -f main.hex main.lst main.obj main.cof main.list main.map main.eep.hex main.bin *.o 

fuse:
	$(AVRDUDE) $(FUSEOPT)

# file targets:
main.bin:	$(OBJECTS)
	$(COMPILE) -o main.bin $(OBJECTS)

main.hex:	main.bin
	rm -f main.hex main.eep.hex
	avr-objcopy -j .text -j .data -O ihex main.bin main.hex
	avr-size main.bin
disasm:	main.bin
	avr-objdump -d main.bin

cpp:
	$(COMPILE) -E main.c
