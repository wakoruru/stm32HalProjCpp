/*
 * UsartUtility.h
 *
 *  Created on: 2017/12/02
 *      Author: wako
 */

#ifndef USARTUTILITY_H_
#define USARTUTILITY_H_
#include "stm32f4xx_hal.h"
#include "stm32f4xx_hal_uart.h"
class UsartUtility {

public:
	UsartUtility(USART_TypeDef *USARTn,uint32_t Baud);
	virtual ~UsartUtility();
	void _putc(uint8_t);
	void _puts(char *);
	uint8_t _getc();
private:
	/* structure */
	UART_HandleTypeDef huartx;
};

#endif /* USARTUTILITY_H_ */
