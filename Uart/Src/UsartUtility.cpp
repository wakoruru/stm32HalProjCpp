/**
 * @file UsartUtility.cpp
 * @brief usart utility library for HAL on stm32
 * @author wako
 * @date 2017/12/2
 */

#include <UsartUtility.h>
/**
 * @fn constructor
 * @brief
 * @param USARTn USART number. ex)USART2
 * @param Baud baudrate ex)115200
 * @return
 */
UsartUtility::UsartUtility(USART_TypeDef *USARTn,uint32_t Baud) {
	// TODO Auto-generated constructor stub
	huartx.Instance = USARTn;
	huartx.Init.BaudRate = Baud;
	huartx.Init.WordLength = UART_WORDLENGTH_8B;
	huartx.Init.StopBits = UART_STOPBITS_1;
	huartx.Init.Parity = UART_PARITY_NONE;
	huartx.Init.Mode = UART_MODE_TX_RX;
	huartx.Init.HwFlowCtl = UART_HWCONTROL_NONE;
	huartx.Init.OverSampling = UART_OVERSAMPLING_16;
	HAL_UART_Init(&huartx);
}
/**
 * @fn putc
 * @brief put charagter to usart
 * @param c character
 */
void UsartUtility::_putc(uint8_t c){
	char buf[1];
	buf[0] = c;
	HAL_UART_Transmit(&huartx,(uint8_t *)buf,sizeof(buf),10);
}
/**
 * @fn puts
 * @brief put string
 * @param s string
 * @return
 */
void UsartUtility::_puts(char *s){
	while(*s){
		UsartUtility::_putc(*s++);
	}
}
/**
 * @fn getc
 * @brief receive character from usart.
 * @param
 * @return received character
 */
uint8_t UsartUtility::_getc(){
	char buf[1];
	HAL_UART_Receive(&huartx,(uint8_t *)buf,sizeof(buf),0xffff);
	return (uint8_t)buf[0];
}
UsartUtility::~UsartUtility() {
	// TODO Auto-generated destructor stub
}
