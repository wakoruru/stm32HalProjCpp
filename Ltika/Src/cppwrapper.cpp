/*
 * cppwrapper.cpp
 *
 *  Created on: 2017/12/01
 *      Author: wako
 */

#include <cppwrapper.hpp>
#include <LedBlink.h>

void cppLoop(){
	LedBlink led;
	while(1){
		led.Toggle();
	}
}
