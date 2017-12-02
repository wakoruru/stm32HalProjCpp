################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/main.c \
../Src/stm32f4xx_hal_msp.c \
../Src/stm32f4xx_it.c \
../Src/system_stm32f4xx.c \
../Src/xprintf.c 

CPP_SRCS += \
../Src/LedBlink.cpp \
../Src/UsartUtility.cpp \
../Src/cppwrapper.cpp 

OBJS += \
./Src/LedBlink.o \
./Src/UsartUtility.o \
./Src/cppwrapper.o \
./Src/main.o \
./Src/stm32f4xx_hal_msp.o \
./Src/stm32f4xx_it.o \
./Src/system_stm32f4xx.o \
./Src/xprintf.o 

C_DEPS += \
./Src/main.d \
./Src/stm32f4xx_hal_msp.d \
./Src/stm32f4xx_it.d \
./Src/system_stm32f4xx.d \
./Src/xprintf.d 

CPP_DEPS += \
./Src/LedBlink.d \
./Src/UsartUtility.d \
./Src/cppwrapper.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU G++ Compiler'
	@echo $(PWD)
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F401xE -I"/home/wako/workspace/sw4stm32_ws/Uart/Inc" -I"/home/wako/workspace/sw4stm32_ws/Uart/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/wako/workspace/sw4stm32_ws/Uart/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"/home/wako/workspace/sw4stm32_ws/Uart/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/wako/workspace/sw4stm32_ws/Uart/Drivers/CMSIS/Include"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fno-exceptions -fno-rtti -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F401xE -I"/home/wako/workspace/sw4stm32_ws/Uart/Inc" -I"/home/wako/workspace/sw4stm32_ws/Uart/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/wako/workspace/sw4stm32_ws/Uart/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"/home/wako/workspace/sw4stm32_ws/Uart/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/wako/workspace/sw4stm32_ws/Uart/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


