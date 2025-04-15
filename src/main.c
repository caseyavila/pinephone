#include "led.h"
#include "motor.h"

void kmain(void) {
    int i = 0;

    for (;;) {
        for (int j = 0; j < 100000; j++) {
            if (i % 2) {
                motor_set(0);
                led_set_color(LED_OFF);
            } else {
                motor_set(1);
                led_set_color(LED_BLUE | LED_RED);
            }
        }
        i++;
    }
}
