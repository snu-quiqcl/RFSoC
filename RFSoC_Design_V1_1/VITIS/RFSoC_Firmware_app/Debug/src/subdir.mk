################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/clock_config.c \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/echo.c \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/i2c_access.c \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/iic_phyreset.c \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/main.c \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/platform.c \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/platform_mb.c \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/platform_ppc.c \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/platform_zynq.c \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/platform_zynqmp.c \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/rfdc_controller.c \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/run_binary.c \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/sfp.c \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/si5324.c \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/simple_lexer.c \
E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/string_process.c 

OBJS += \
./src/clock_config.o \
./src/echo.o \
./src/i2c_access.o \
./src/iic_phyreset.o \
./src/main.o \
./src/platform.o \
./src/platform_mb.o \
./src/platform_ppc.o \
./src/platform_zynq.o \
./src/platform_zynqmp.o \
./src/rfdc_controller.o \
./src/run_binary.o \
./src/sfp.o \
./src/si5324.o \
./src/simple_lexer.o \
./src/string_process.o 

C_DEPS += \
./src/clock_config.d \
./src/echo.d \
./src/i2c_access.d \
./src/iic_phyreset.d \
./src/main.d \
./src/platform.d \
./src/platform_mb.d \
./src/platform_ppc.d \
./src/platform_zynq.d \
./src/platform_zynqmp.d \
./src/rfdc_controller.d \
./src/run_binary.d \
./src/sfp.d \
./src/si5324.d \
./src/simple_lexer.d \
./src/string_process.d 


# Each subdirectory must supply rules for building sources it contributes
src/clock_config.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/clock_config.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/echo.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/echo.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/i2c_access.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/i2c_access.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/iic_phyreset.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/iic_phyreset.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/main.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/platform.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/platform.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/platform_mb.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/platform_mb.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/platform_ppc.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/platform_ppc.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/platform_zynq.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/platform_zynq.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/platform_zynqmp.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/platform_zynqmp.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/rfdc_controller.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/rfdc_controller.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/run_binary.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/run_binary.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/sfp.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/sfp.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/si5324.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/si5324.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/simple_lexer.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/simple_lexer.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/string_process.o: E:/RFSoC/GIT/Vivado_prj_manager/Vitis_main/RFSoC_Firmware/string_process.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -D __BAREMETAL__ -IE:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/export/RFSoC_Firmware_plt/sw/RFSoC_Firmware_plt/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


