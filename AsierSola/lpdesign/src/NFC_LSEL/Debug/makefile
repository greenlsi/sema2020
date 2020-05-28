################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/RFAL/Src/subdir.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Drivers/BSP/Components/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
NFC_LSEL.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
NFC_LSEL.list \

OBJCOPY_BIN += \
NFC_LSEL.bin \


# All Target
all: NFC_LSEL.elf secondary-outputs

# Tool invocations
NFC_LSEL.elf: $(OBJS) $(USER_OBJS) C:\Users\Asier\STM32CubeIDE\workspace_1.1.0\NFC_LSEL\STM32F401RETX_FLASH.ld
	arm-none-eabi-gcc -o "NFC_LSEL.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\Asier\STM32CubeIDE\workspace_1.1.0\NFC_LSEL\STM32F401RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="NFC_LSEL.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

NFC_LSEL.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "NFC_LSEL.list"
	@echo 'Finished building: $@'
	@echo ' '

NFC_LSEL.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "NFC_LSEL.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
