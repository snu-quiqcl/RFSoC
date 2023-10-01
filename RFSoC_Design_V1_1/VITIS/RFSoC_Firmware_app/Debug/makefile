################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
RFSoC_Firmware_app.elf.size \


# All Target
all: RFSoC_Firmware_app.elf secondary-outputs

# Tool invocations
RFSoC_Firmware_app.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM v8 gcc linker'
	aarch64-none-elf-gcc -Wl,-T -Wl,../src/lscript.ld -LE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bsplib/lib -o "RFSoC_Firmware_app.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

RFSoC_Firmware_app.elf.size: RFSoC_Firmware_app.elf
	@echo 'Invoking: ARM v8 Print Size'
	aarch64-none-elf-size RFSoC_Firmware_app.elf  |tee "RFSoC_Firmware_app.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) RFSoC_Firmware_app.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents

-include ../makefile.targets
