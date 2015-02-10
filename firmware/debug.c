#include <avr/io.h>

#define ENG_OFF       PORTB |= 0b00010000        // disable engine
#define ENG_ON        PORTB &= 0b11101111        // enable engine
#define BUTTON_STATE  bit_is_set( PINB, PB3 )    // is button pressed?

int main(void) {
 
    // set PB3 as input, other pins as output
    DDRB = 0b11110111;

    // engine off by default
    ENG_OFF;

    while (1) {
        if (BUTTON_STATE) {    // button is pressed now
            ENG_ON;
        }
        else {                 // on unpressing
            ENG_OFF;
        }
    }
    return 0;
}
