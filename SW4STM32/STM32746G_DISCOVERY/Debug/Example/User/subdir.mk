################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/audio_loopback.c \
C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/audio_play.c \
C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/audio_rec.c \
C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/camera.c \
../Example/User/delay.c \
../Example/User/distortion.c \
C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/eeprom.c \
../Example/User/flanger.c \
../Example/User/fuzz.c \
C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/lcd.c \
C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/log.c \
C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/main.c \
C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/qspi.c \
../Example/User/reverb.c \
../Example/User/rotary.c \
C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/sd.c \
C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/sdram.c \
C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/sdram_dma.c \
../Example/User/stm32f7xx_hal_msp.c \
C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/stm32f7xx_it.c \
C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/touchscreen.c 

OBJS += \
./Example/User/audio_loopback.o \
./Example/User/audio_play.o \
./Example/User/audio_rec.o \
./Example/User/camera.o \
./Example/User/delay.o \
./Example/User/distortion.o \
./Example/User/eeprom.o \
./Example/User/flanger.o \
./Example/User/fuzz.o \
./Example/User/lcd.o \
./Example/User/log.o \
./Example/User/main.o \
./Example/User/qspi.o \
./Example/User/reverb.o \
./Example/User/rotary.o \
./Example/User/sd.o \
./Example/User/sdram.o \
./Example/User/sdram_dma.o \
./Example/User/stm32f7xx_hal_msp.o \
./Example/User/stm32f7xx_it.o \
./Example/User/touchscreen.o 

C_DEPS += \
./Example/User/audio_loopback.d \
./Example/User/audio_play.d \
./Example/User/audio_rec.d \
./Example/User/camera.d \
./Example/User/delay.d \
./Example/User/distortion.d \
./Example/User/eeprom.d \
./Example/User/flanger.d \
./Example/User/fuzz.d \
./Example/User/lcd.d \
./Example/User/log.d \
./Example/User/main.d \
./Example/User/qspi.d \
./Example/User/reverb.d \
./Example/User/rotary.d \
./Example/User/sd.d \
./Example/User/sdram.d \
./Example/User/sdram_dma.d \
./Example/User/stm32f7xx_hal_msp.d \
./Example/User/stm32f7xx_it.d \
./Example/User/touchscreen.d 


# Each subdirectory must supply rules for building sources it contributes
Example/User/audio_loopback.o: C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/audio_loopback.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/audio_play.o: C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/audio_play.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/audio_rec.o: C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/audio_rec.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/camera.o: C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/camera.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/%.o Example/User/%.su Example/User/%.cyclo: ../Example/User/%.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/eeprom.o: C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/eeprom.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/lcd.o: C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/lcd.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/log.o: C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/log.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/main.o: C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/main.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/qspi.o: C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/qspi.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/sd.o: C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/sd.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/sdram.o: C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/sdram.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/sdram_dma.o: C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/sdram_dma.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/stm32f7xx_it.o: C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/stm32f7xx_it.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Example/User/touchscreen.o: C:/Users/Pinthu/STM32CubeIDE/Test_Project1/BSP/Src/touchscreen.c Example/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DUSE_STM32746G_DISCO -DUSE_IOEXPANDER -c -I../../../Inc -I../../../Drivers/CMSIS/Include -I../../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../../Drivers/BSP/STM32746G-Discovery -I../../../Drivers/BSP/Components/Common -I../../../Utilities/Log -I../../../Utilities/Fonts -I../../../Utilities/CPU -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Example-2f-User

clean-Example-2f-User:
	-$(RM) ./Example/User/audio_loopback.cyclo ./Example/User/audio_loopback.d ./Example/User/audio_loopback.o ./Example/User/audio_loopback.su ./Example/User/audio_play.cyclo ./Example/User/audio_play.d ./Example/User/audio_play.o ./Example/User/audio_play.su ./Example/User/audio_rec.cyclo ./Example/User/audio_rec.d ./Example/User/audio_rec.o ./Example/User/audio_rec.su ./Example/User/camera.cyclo ./Example/User/camera.d ./Example/User/camera.o ./Example/User/camera.su ./Example/User/delay.cyclo ./Example/User/delay.d ./Example/User/delay.o ./Example/User/delay.su ./Example/User/distortion.cyclo ./Example/User/distortion.d ./Example/User/distortion.o ./Example/User/distortion.su ./Example/User/eeprom.cyclo ./Example/User/eeprom.d ./Example/User/eeprom.o ./Example/User/eeprom.su ./Example/User/flanger.cyclo ./Example/User/flanger.d ./Example/User/flanger.o ./Example/User/flanger.su ./Example/User/fuzz.cyclo ./Example/User/fuzz.d ./Example/User/fuzz.o ./Example/User/fuzz.su ./Example/User/lcd.cyclo ./Example/User/lcd.d ./Example/User/lcd.o ./Example/User/lcd.su ./Example/User/log.cyclo ./Example/User/log.d ./Example/User/log.o ./Example/User/log.su ./Example/User/main.cyclo ./Example/User/main.d ./Example/User/main.o ./Example/User/main.su ./Example/User/qspi.cyclo ./Example/User/qspi.d ./Example/User/qspi.o ./Example/User/qspi.su ./Example/User/reverb.cyclo ./Example/User/reverb.d ./Example/User/reverb.o ./Example/User/reverb.su ./Example/User/rotary.cyclo ./Example/User/rotary.d ./Example/User/rotary.o ./Example/User/rotary.su ./Example/User/sd.cyclo ./Example/User/sd.d ./Example/User/sd.o ./Example/User/sd.su ./Example/User/sdram.cyclo ./Example/User/sdram.d ./Example/User/sdram.o ./Example/User/sdram.su ./Example/User/sdram_dma.cyclo ./Example/User/sdram_dma.d ./Example/User/sdram_dma.o ./Example/User/sdram_dma.su ./Example/User/stm32f7xx_hal_msp.cyclo ./Example/User/stm32f7xx_hal_msp.d ./Example/User/stm32f7xx_hal_msp.o ./Example/User/stm32f7xx_hal_msp.su ./Example/User/stm32f7xx_it.cyclo ./Example/User/stm32f7xx_it.d ./Example/User/stm32f7xx_it.o ./Example/User/stm32f7xx_it.su ./Example/User/touchscreen.cyclo ./Example/User/touchscreen.d ./Example/User/touchscreen.o ./Example/User/touchscreen.su

.PHONY: clean-Example-2f-User

