/*
 * LedBlink.cpp
 *
 *  Created on: 2017/12/01
 *      Author: wako
 */

#include <LedBlink.h>
#include "stm32f4xx_hal.h"
LedBlink::LedBlink() {
	// TODO Auto-generated constructor stub
}

LedBlink::~LedBlink() {
	// TODO Auto-generated destructor stub
}

void LedBlink::Toggle(){
	HAL_GPIO_TogglePin(GPIOA,GPIO_PIN_5);
	HAL_Delay(100);
}

