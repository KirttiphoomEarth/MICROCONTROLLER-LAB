################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/KIRTTIPHOOM/Desktop/ILI9341/ILI9341_GFX.c \
C:/Users/KIRTTIPHOOM/Desktop/ILI9341/ILI9341_STM32_Driver.c \
C:/Users/KIRTTIPHOOM/Desktop/ILI9341/ILI9341_Touchscreen.c 

OBJS += \
./ILI9341/ILI9341_GFX.o \
./ILI9341/ILI9341_STM32_Driver.o \
./ILI9341/ILI9341_Touchscreen.o 

C_DEPS += \
./ILI9341/ILI9341_GFX.d \
./ILI9341/ILI9341_STM32_Driver.d \
./ILI9341/ILI9341_Touchscreen.d 


# Each subdirectory must supply rules for building sources it contributes
ILI9341/ILI9341_GFX.o: C:/Users/KIRTTIPHOOM/Desktop/ILI9341/ILI9341_GFX.c ILI9341/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/KIRTTIPHOOM/Desktop/ILI9341" -I"C:/Users/KIRTTIPHOOM/STM32CubeIDE/MAD_Lab/lab08_1/Drivers" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
ILI9341/ILI9341_STM32_Driver.o: C:/Users/KIRTTIPHOOM/Desktop/ILI9341/ILI9341_STM32_Driver.c ILI9341/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/KIRTTIPHOOM/Desktop/ILI9341" -I"C:/Users/KIRTTIPHOOM/STM32CubeIDE/MAD_Lab/lab08_1/Drivers" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
ILI9341/ILI9341_Touchscreen.o: C:/Users/KIRTTIPHOOM/Desktop/ILI9341/ILI9341_Touchscreen.c ILI9341/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/KIRTTIPHOOM/Desktop/ILI9341" -I"C:/Users/KIRTTIPHOOM/STM32CubeIDE/MAD_Lab/lab08_1/Drivers" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ILI9341

clean-ILI9341:
	-$(RM) ./ILI9341/ILI9341_GFX.d ./ILI9341/ILI9341_GFX.o ./ILI9341/ILI9341_GFX.su ./ILI9341/ILI9341_STM32_Driver.d ./ILI9341/ILI9341_STM32_Driver.o ./ILI9341/ILI9341_STM32_Driver.su ./ILI9341/ILI9341_Touchscreen.d ./ILI9341/ILI9341_Touchscreen.o ./ILI9341/ILI9341_Touchscreen.su

.PHONY: clean-ILI9341

