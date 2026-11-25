#ifndef ONEWIRE_H_
#define ONEWIRE_H_

#include <stdint.h>
#include <stm32f446xx.h>
#include "main.h"
#include "gpio.h"
#include "timer.h"

typedef struct {
	GPIO_TypeDef* port;
	uint8_t pin;
}ONEWIRE_PINOUT;

/**
 * @brief Resets the OneWire bus and checks for a connected device.
 * @param void.
 * @return 1 if a device is detected, 0 otherwise.
 */
uint8_t ONEWIRE_Reset(ONEWIRE_PINOUT* my_pinout);


/**
 * @brief Writes a logic 1 on the OneWire bus.
 * @void
 */
void ONEWIRE_WriteOne(ONEWIRE_PINOUT* my_pinout);

/**
 * @brief Writes a logic 0 on the OneWire bus.
 * @param void.
 */
void ONEWIRE_WriteZero(ONEWIRE_PINOUT* my_pinout);

/**
 * @brief Writes one byte of data on the OneWire bus.
 * @param data
 */
void ONEWIRE_WriteByte(ONEWIRE_PINOUT* my_pinout, uint8_t data);

/**
 * @brief Reads one bit from the OneWire bus.
 * @param void
 * @return The bit read from the bus (0 or 1).
 */
uint8_t ONEWIRE_ReadBit(ONEWIRE_PINOUT* my_pinout);

/**
 * @brief Reads one byte from the OneWire bus.
 * @param void
 * @return The byte read from the bus.
 */
uint8_t ONEWIRE_ReadByte(ONEWIRE_PINOUT* my_pinout);




#endif
