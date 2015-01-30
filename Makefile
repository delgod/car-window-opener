all:
	avr-gcc -Wall -Os -DF_CPU=1200000 -mmcu=attiny13 -c main.c -o main.o
	avr-gcc -Wall -Os -DF_CPU=1200000 -mmcu=attiny13 -o main.elf main.o
	rm -f main.hex
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex
	avr-size --format=avr --mcu=attiny13 main.elf
	sudo avrdude -c usbasp -P usb -U flash:w:main.hex -p t13

clean:
	rm -rf main.o main.hex main.elf *~
