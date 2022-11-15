################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/gpio.c \
C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/main.c \
C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/rng.c \
C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/spi.c \
C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/stm32f7xx_hal_msp.c \
C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/stm32f7xx_it.c \
C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/tim.c \
C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/usart.c 

OBJS += \
./Src/gpio.o \
./Src/main.o \
./Src/rng.o \
./Src/spi.o \
./Src/stm32f7xx_hal_msp.o \
./Src/stm32f7xx_it.o \
./Src/tim.o \
./Src/usart.o 

C_DEPS += \
./Src/gpio.d \
./Src/main.d \
./Src/rng.d \
./Src/spi.d \
./Src/stm32f7xx_hal_msp.d \
./Src/stm32f7xx_it.d \
./Src/tim.d \
./Src/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Src/gpio.o: C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/gpio.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/KIRTTIPHOOM/STM32CubeIDE/MAD_Lab/lab08/Drivers" -I"C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/main.o: C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/main.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/KIRTTIPHOOM/STM32CubeIDE/MAD_Lab/lab08/Drivers" -I"C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/rng.o: C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/rng.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/KIRTTIPHOOM/STM32CubeIDE/MAD_Lab/lab08/Drivers" -I"C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/spi.o: C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/spi.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/KIRTTIPHOOM/STM32CubeIDE/MAD_Lab/lab08/Drivers" -I"C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/stm32f7xx_hal_msp.o: C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/stm32f7xx_hal_msp.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/KIRTTIPHOOM/STM32CubeIDE/MAD_Lab/lab08/Drivers" -I"C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/stm32f7xx_it.o: C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/stm32f7xx_it.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/KIRTTIPHOOM/STM32CubeIDE/MAD_Lab/lab08/Drivers" -I"C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/tim.o: C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/tim.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/KIRTTIPHOOM/STM32CubeIDE/MAD_Lab/lab08/Drivers" -I"C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/usart.o: C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Src/usart.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/KIRTTIPHOOM/STM32CubeIDE/MAD_Lab/lab08/Drivers" -I"C:/Users/KIRTTIPHOOM/Desktop/STM32-ILI9341-master/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/gpio.d ./Src/gpio.o ./Src/gpio.su ./Src/main.d ./Src/main.o ./Src/main.su ./Src/rng.d ./Src/rng.o ./Src/rng.su ./Src/spi.d ./Src/spi.o ./Src/spi.su ./Src/stm32f7xx_hal_msp.d ./Src/stm32f7xx_hal_msp.o ./Src/stm32f7xx_hal_msp.su ./Src/stm32f7xx_it.d ./Src/stm32f7xx_it.o ./Src/stm32f7xx_it.su ./Src/tim.d ./Src/tim.o ./Src/tim.su ./Src/usart.d ./Src/usart.o ./Src/usart.su

.PHONY: clean-Src

