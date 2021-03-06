#include <avr/io.h>
#include <util/delay.h>

#define ENG_OFF       PORTB |= 0b00010000        // disable engine
#define ENG_ON        PORTB &= 0b11101111        // enable engine
#define BUTTON_STATE  bit_is_set( PINB, PB3 )    // is button pressed?

const int pull_delay       = 50;
const int support_delay    = 3000;
const int press_limit      = 10000;
const int quick_press_time = 400;

void smart_sleep ( int support_time );

int main(void) {

    // set PB3 as input, other pins as output
    DDRB = 0b11110111;

    // engine off by default
    ENG_OFF;

    unsigned int prev_state = BUTTON_STATE;
    unsigned int press_time = 0;

    while (1) {
        if (BUTTON_STATE) {         // button is pressed now
            if ( !prev_state ) {    // on pressing
                ENG_ON;
            }
            if ( press_time > press_limit ) {    // protect engine
                press_time = quick_press_time;
                ENG_OFF;
            }
            press_time += pull_delay;
        }
        else if ( !BUTTON_STATE && prev_state ) {    // on unpressing
            if ( press_time > 0 && press_time <= quick_press_time ) {
                smart_sleep(support_delay);
            }
            press_time = 0;
            ENG_OFF;
        }

        prev_state = BUTTON_STATE;
        _delay_ms(pull_delay);
    }
    return 0;
}

void smart_sleep ( int support_time ) {
    unsigned int prev_state = BUTTON_STATE;

    while ( support_time > 0 ) {
        if ( prev_state && !BUTTON_STATE ) {    // on unpressing
            return;
        }
        support_time -= pull_delay;
        prev_state = BUTTON_STATE;
        _delay_ms(pull_delay);
    }
    return;
}
