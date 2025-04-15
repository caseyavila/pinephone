#include "led.h"

#define LED_CONF ((volatile uint32_t *) 0x01C20874)
#define LED_DATA ((volatile uint32_t *) 0x01C2087C)

void led_set_color(uint32_t color) {
    *LED_CONF &= 0x77711177;
    *LED_DATA = (*LED_DATA & ~LED_WHITE) | color;
}
