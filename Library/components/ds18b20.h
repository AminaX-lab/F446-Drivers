#ifndef DS18B20_H_
#define DS18B20_H_

#include <stdio.h>
#include "onewire.h"

float DS18B20_GetTemperature(ONEWIRE_PINOUT* oneWire_pinout);


#endif
