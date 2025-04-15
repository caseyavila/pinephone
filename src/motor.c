#include "motor.h"

#define MOTOR_CONF ((volatile uint32_t *) 0x01C2086C)
#define MOTOR_DATA ((volatile uint32_t *) 0x01C2087C)
#define MOTOR_MASK 0x00000004

void motor_set(uint8_t on) {
    *MOTOR_CONF &= 0x77777177;
    *MOTOR_DATA = (*MOTOR_DATA & ~MOTOR_MASK) | ((!!on) << 2);
}

