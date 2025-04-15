#pragma once

#include <stdint.h>

#define LED_OFF   0x00000000
#define LED_RED   0x00080000
#define LED_GREEN 0x00040000
#define LED_BLUE  0x00100000
#define LED_WHITE 0x001C0000

void led_set_color(uint32_t color);
