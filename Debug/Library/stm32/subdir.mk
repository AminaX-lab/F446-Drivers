################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Library/stm32/gpio.c \
../Library/stm32/interrupt.c \
../Library/stm32/timer.c \
../Library/stm32/usart.c 

OBJS += \
./Library/stm32/gpio.o \
./Library/stm32/interrupt.o \
./Library/stm32/timer.o \
./Library/stm32/usart.o 

C_DEPS += \
./Library/stm32/gpio.d \
./Library/stm32/interrupt.d \
./Library/stm32/timer.d \
./Library/stm32/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Library/stm32/%.o Library/stm32/%.su Library/stm32/%.cyclo: ../Library/stm32/%.c Library/stm32/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DNUCLEO_F446RE -c -I../Inc -I"C:/Users/Renar/STM32CubeIDE/workspace_2.2.0/F446-Drivers/Src" -I"C:/Users/Renar/STM32CubeIDE/workspace_2.2.0/F446-Drivers/Drivers/CMSIS/Device/ST/STM32F4xx" -I"C:/Users/Renar/STM32CubeIDE/workspace_2.2.0/F446-Drivers/Drivers/CMSIS/Include" -I"C:/Users/Renar/STM32CubeIDE/workspace_2.2.0/F446-Drivers/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/Renar/STM32CubeIDE/workspace_2.2.0/F446-Drivers/Library/components" -I"C:/Users/Renar/STM32CubeIDE/workspace_2.2.0/F446-Drivers/Library/protocols" -I"C:/Users/Renar/STM32CubeIDE/workspace_2.2.0/F446-Drivers/Library/stm32" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -ftls-model=local-exec -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Library-2f-stm32

clean-Library-2f-stm32:
	-$(RM) ./Library/stm32/gpio.cyclo ./Library/stm32/gpio.d ./Library/stm32/gpio.o ./Library/stm32/gpio.su ./Library/stm32/interrupt.cyclo ./Library/stm32/interrupt.d ./Library/stm32/interrupt.o ./Library/stm32/interrupt.su ./Library/stm32/timer.cyclo ./Library/stm32/timer.d ./Library/stm32/timer.o ./Library/stm32/timer.su ./Library/stm32/usart.cyclo ./Library/stm32/usart.d ./Library/stm32/usart.o ./Library/stm32/usart.su

.PHONY: clean-Library-2f-stm32

