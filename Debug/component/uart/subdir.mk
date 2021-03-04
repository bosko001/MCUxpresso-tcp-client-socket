################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/uart/fsl_adapter_uart.c 

OBJS += \
./component/uart/fsl_adapter_uart.o 

C_DEPS += \
./component/uart/fsl_adapter_uart.d 


# Each subdirectory must supply rules for building sources it contributes
component/uart/%.o: ../component/uart/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DFRDM_K64F -DFREEDOM -DSERIAL_PORT_TYPE_UART=1 -DFSL_RTOS_FREE_RTOS -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\board" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\source" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\mdio" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\phy" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\lwip\contrib\apps\tcpecho" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\lwip\port" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\lwip\src" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\lwip\src\include" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\drivers" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\utilities" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\device" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\component\uart" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\component\serial_manager" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\component\lists" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\CMSIS" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\freertos\freertos_kernel\include" -I"C:\Users\Dragomir\git\MCUxpresso-tcp-client-socket\freertos\freertos_kernel\portable\GCC\ARM_CM4F" -I"D:\Programming\posao\dnet\mdio" -I"${workspace_loc:/dnet/lwip/template{MacroEnd}" -I"D:\Programming\posao\dnet\freertos\freertos_kernel\include" -I"D:\Programming\posao\dnet\mmcau" -I"D:\Programming\posao\dnet\device" -I"D:\Programming\posao\dnet\mbedtls\include" -I"D:\Programming\posao\dnet\CMSIS" -I"D:\Programming\posao\dnet\source" -I"D:\Programming\posao\dnet\utilities" -I"D:\Programming\posao\dnet\lwip\src\include" -I"D:\Programming\posao\dnet\lwip\port" -I"D:\Programming\posao\dnet\phy" -I"D:\Programming\posao\dnet\CMSIS_driver" -I"D:\Programming\posao\dnet\board" -I"D:\Programming\posao\dnet\drivers" -I"D:\Programming\posao\dnet\accel" -I"D:\Programming\posao\dnet\component\i2c" -I"D:\Programming\posao\dnet\component\lists" -I"D:\Programming\posao\dnet\component\osa" -I"D:\Programming\posao\dnet\component\serial_manager" -I"D:\Programming\posao\dnet\component\uart" -I"D:\Programming\posao\dnet\drivers\freertos" -I"D:\Programming\posao\dnet\lcd" -I"D:\Programming\posao\dnet\lwip\template" -O0 -fno-common -g3 -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


