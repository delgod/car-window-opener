#include <avr/io.h>

#define ENG_ON         PORTB |= _BV(PB4)         // enable engine
#define ENG_OFF        PORTB &= ~_BV(PB4)        // disable engine
#define BUTTON_STATE  bit_is_set( PINB, PB3 )   // is button pressed?

int main(void) {

    // output pin
    DDRB |= _BV(PB4);     // LED on pin 3

    // input pin
    DDRB &= ~_BV(PB3);    // switch on pin 2
    PORTB |= _BV(PB3);    // enable pull-up resistor

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
