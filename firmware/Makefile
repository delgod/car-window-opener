all:
	avr-gcc -Wall -Os -DF_CPU=1200000 -mmcu=attiny13 -c main.c -o main.o
	avr-gcc -Wall -Os -DF_CPU=1200000 -mmcu=attiny13 -o main.elf main.o
	rm -f main.hex
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex
	avr-size --format=avr --mcu=attiny13 main.elf
	sudo avrdude -c usbasp -P usb -U flash:w:main.hex -p t13

debug:
	avr-gcc -Wall -Os -DF_CPU=1200000 -mmcu=attiny13 -c debug.c -o debug.o
	avr-gcc -Wall -Os -DF_CPU=1200000 -mmcu=attiny13 -o debug.elf debug.o
	rm -f debug.hex
	avr-objcopy -j .text -j .data -O ihex debug.elf debug.hex
	avr-size --format=avr --mcu=attiny13 debug.elf
	sudo avrdude -c usbasp -P usb -U flash:w:debug.hex -p t13

clean:
	rm -rf *.o *.hex *.elf *~
