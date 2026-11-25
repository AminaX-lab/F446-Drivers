################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Library/protocols/onewire.c 

OBJS += \
./Library/protocols/onewire.o 

C_DEPS += \
./Library/protocols/onewire.d 


# Each subdirectory must supply rules for building sources it contributes
Library/protocols/%.o Library/protocols/%.su Library/protocols/%.cyclo: ../Library/protocols/%.c Library/protocols/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DNUCLEO_F446RE -c -I../Inc -I"C:/Users/Renar/STM32CubeIDE/workspace_2.2.0/F446-Drivers/Src" -I"C:/Users/Renar/STM32CubeIDE/workspace_2.2.0/F446-Drivers/Drivers/CMSIS/Device/ST/STM32F4xx" -I"C:/Users/Renar/STM32CubeIDE/workspace_2.2.0/F446-Drivers/Drivers/CMSIS/Include" -I"C:/Users/Renar/STM32CubeIDE/workspace_2.2.0/F446-Drivers/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/Renar/STM32CubeIDE/workspace_2.2.0/F446-Drivers/Library/components" -I"C:/Users/Renar/STM32CubeIDE/workspace_2.2.0/F446-Drivers/Library/protocols" -I"C:/Users/Renar/STM32CubeIDE/workspace_2.2.0/F446-Drivers/Library/stm32" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -ftls-model=local-exec -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Library-2f-protocols

clean-Library-2f-protocols:
	-$(RM) ./Library/protocols/onewire.cyclo ./Library/protocols/onewire.d ./Library/protocols/onewire.o ./Library/protocols/onewire.su

.PHONY: clean-Library-2f-protocols

