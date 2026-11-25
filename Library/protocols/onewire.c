#include "onewire.h"


uint8_t ONEWIRE_Reset(ONEWIRE_PINOUT *my_pinout) {

	GPIO_ResetPin(my_pinout->port, my_pinout->pin);
	SYSTICK_Delay(480e-3); //Time to set at low
	uint8_t result = GPIO_ReadPin(my_pinout->port, my_pinout->pin);

	return result;
}

void ONEWIRE_WriteOne(ONEWIRE_PINOUT *my_pinout) {
	GPIO_ResetPin(my_pinout->port, my_pinout->pin);
	SYSTICK_Delay(6e-3);

	GPIO_SetPin(my_pinout->port, my_pinout->pin);
	SYSTICK_Delay(64e-3);
}

void ONEWIRE_WriteZero(ONEWIRE_PINOUT *my_pinout) {
	GPIO_ResetPin(my_pinout->port, my_pinout->pin);

	SYSTICK_Delay(60e-3);

	GPIO_SetPin(my_pinout->port, my_pinout->pin);
	SYSTICK_Delay(10e-3);
}

void ONEWIRE_WriteByte(ONEWIRE_PINOUT *my_pinout, uint8_t data) {

	for (uint8_t i = 0; i < 8; i++) {
		if ((data >> i) & 1U) {
			ONEWIRE_WriteOne(my_pinout);
		} else {
			ONEWIRE_WriteZero(my_pinout);
		}
	}
}

uint8_t ONEWIRE_ReadBit(ONEWIRE_PINOUT *my_pinout) {
	GPIO_ResetPin(my_pinout->port, my_pinout->pin);
	SYSTICK_Delay(6e-3);

	GPIO_SetPin(my_pinout->port, my_pinout->pin);
	SYSTICK_Delay(9e-3);

	uint8_t result = GPIO_ReadPin(my_pinout->port, my_pinout->pin);
	SYSTICK_Delay(55e-3);

	return result;

}

uint8_t ONEWIRE_ReadByte(ONEWIRE_PINOUT* my_pinout) {
	uint8_t m_byte;
	for (uint8_t i = 0; i < 8; i++) {
		m_byte |= (ONEWIRE_ReadBit(my_pinout) & 0x01) << i;

	}
	return m_byte;
}

