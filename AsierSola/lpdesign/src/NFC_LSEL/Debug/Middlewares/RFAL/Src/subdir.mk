################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/RFAL/Src/rfal_analogConfig.c \
../Middlewares/RFAL/Src/rfal_crc.c \
../Middlewares/RFAL/Src/rfal_dpo.c \
../Middlewares/RFAL/Src/rfal_iso15693_2.c \
../Middlewares/RFAL/Src/rfal_isoDep.c \
../Middlewares/RFAL/Src/rfal_nfc.c \
../Middlewares/RFAL/Src/rfal_nfcDep.c \
../Middlewares/RFAL/Src/rfal_nfca.c \
../Middlewares/RFAL/Src/rfal_nfcb.c \
../Middlewares/RFAL/Src/rfal_nfcf.c \
../Middlewares/RFAL/Src/rfal_nfcv.c \
../Middlewares/RFAL/Src/rfal_rfst25r3911.c \
../Middlewares/RFAL/Src/rfal_st25tb.c \
../Middlewares/RFAL/Src/rfal_st25xv.c \
../Middlewares/RFAL/Src/rfal_t1t.c \
../Middlewares/RFAL/Src/rfal_t2t.c \
../Middlewares/RFAL/Src/rfal_t4t.c 

OBJS += \
./Middlewares/RFAL/Src/rfal_analogConfig.o \
./Middlewares/RFAL/Src/rfal_crc.o \
./Middlewares/RFAL/Src/rfal_dpo.o \
./Middlewares/RFAL/Src/rfal_iso15693_2.o \
./Middlewares/RFAL/Src/rfal_isoDep.o \
./Middlewares/RFAL/Src/rfal_nfc.o \
./Middlewares/RFAL/Src/rfal_nfcDep.o \
./Middlewares/RFAL/Src/rfal_nfca.o \
./Middlewares/RFAL/Src/rfal_nfcb.o \
./Middlewares/RFAL/Src/rfal_nfcf.o \
./Middlewares/RFAL/Src/rfal_nfcv.o \
./Middlewares/RFAL/Src/rfal_rfst25r3911.o \
./Middlewares/RFAL/Src/rfal_st25tb.o \
./Middlewares/RFAL/Src/rfal_st25xv.o \
./Middlewares/RFAL/Src/rfal_t1t.o \
./Middlewares/RFAL/Src/rfal_t2t.o \
./Middlewares/RFAL/Src/rfal_t4t.o 

C_DEPS += \
./Middlewares/RFAL/Src/rfal_analogConfig.d \
./Middlewares/RFAL/Src/rfal_crc.d \
./Middlewares/RFAL/Src/rfal_dpo.d \
./Middlewares/RFAL/Src/rfal_iso15693_2.d \
./Middlewares/RFAL/Src/rfal_isoDep.d \
./Middlewares/RFAL/Src/rfal_nfc.d \
./Middlewares/RFAL/Src/rfal_nfcDep.d \
./Middlewares/RFAL/Src/rfal_nfca.d \
./Middlewares/RFAL/Src/rfal_nfcb.d \
./Middlewares/RFAL/Src/rfal_nfcf.d \
./Middlewares/RFAL/Src/rfal_nfcv.d \
./Middlewares/RFAL/Src/rfal_rfst25r3911.d \
./Middlewares/RFAL/Src/rfal_st25tb.d \
./Middlewares/RFAL/Src/rfal_st25xv.d \
./Middlewares/RFAL/Src/rfal_t1t.d \
./Middlewares/RFAL/Src/rfal_t2t.d \
./Middlewares/RFAL/Src/rfal_t4t.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/RFAL/Src/rfal_analogConfig.o: ../Middlewares/RFAL/Src/rfal_analogConfig.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_analogConfig.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_crc.o: ../Middlewares/RFAL/Src/rfal_crc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_crc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_dpo.o: ../Middlewares/RFAL/Src/rfal_dpo.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_dpo.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_iso15693_2.o: ../Middlewares/RFAL/Src/rfal_iso15693_2.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_iso15693_2.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_isoDep.o: ../Middlewares/RFAL/Src/rfal_isoDep.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_isoDep.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_nfc.o: ../Middlewares/RFAL/Src/rfal_nfc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_nfc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_nfcDep.o: ../Middlewares/RFAL/Src/rfal_nfcDep.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_nfcDep.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_nfca.o: ../Middlewares/RFAL/Src/rfal_nfca.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_nfca.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_nfcb.o: ../Middlewares/RFAL/Src/rfal_nfcb.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_nfcb.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_nfcf.o: ../Middlewares/RFAL/Src/rfal_nfcf.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_nfcf.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_nfcv.o: ../Middlewares/RFAL/Src/rfal_nfcv.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_nfcv.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_rfst25r3911.o: ../Middlewares/RFAL/Src/rfal_rfst25r3911.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_rfst25r3911.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_st25tb.o: ../Middlewares/RFAL/Src/rfal_st25tb.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_st25tb.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_st25xv.o: ../Middlewares/RFAL/Src/rfal_st25xv.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_st25xv.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_t1t.o: ../Middlewares/RFAL/Src/rfal_t1t.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_t1t.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_t2t.o: ../Middlewares/RFAL/Src/rfal_t2t.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_t2t.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RFAL/Src/rfal_t4t.o: ../Middlewares/RFAL/Src/rfal_t4t.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Drivers/CMSIS/Include -I../Middlewares/RFAL/Inc -I../Drivers/BSP/Components -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/RFAL/Src/rfal_t4t.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

