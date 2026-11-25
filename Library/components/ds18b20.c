#include "ds18b20.h"

float DS18B20_GetTemperature(ONEWIRE_PINOUT* oneWire_pinout){
	printf("[DS18B20] Getting the temperature... \n\r");
	uint16_t temperature = 0;

	ONEWIRE_Reset(oneWire_pinout);

	ONEWIRE_WriteByte(oneWire_pinout, 0xCC); // Skip ROM
	ONEWIRE_WriteByte(oneWire_pinout, 0x44); // Convert T

	SYSTICK_Delay(10);

	ONEWIRE_WriteByte(oneWire_pinout, 0XCC); // Skip ROM
	ONEWIRE_WriteByte(oneWire_pinout, 0XBE); // Read Scratchpad

	temperature |= (ONEWIRE_ReadByte(oneWire_pinout) << 8);

	printf("[DS18B20] Finish the temperature acquisition \n\r");

	return (float)temperature/4.0;


}
