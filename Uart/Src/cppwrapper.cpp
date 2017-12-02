/*
 * cppwrapper.cpp
 *
 *  Created on: 2017/12/01
 *      Author: wako
 */

#include <cppwrapper.hpp>
#include <LedBlink.h>
#include <UsartUtility.h>
#include "xprintf.h"

void cppmain(){
	char a[]="Hello,world!\n";
	LedBlink led;
	UsartUtility uart2(USART2,115200);
	while(1){
		led.Toggle();
		uart2._puts(a);
		HAL_Delay(100);
	}
}
