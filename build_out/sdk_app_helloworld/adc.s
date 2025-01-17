	.file	"adc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.init_adc,"ax",@progbits
	.align	1
	.globl	init_adc
	.type	init_adc, @function
init_adc:
.LFB29:
	.file 1 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/adc.c"
	.loc 1 70 28
	.cfi_startproc
.LVL0:
	.loc 1 72 3
	li	a5,15
	bgtu	a0,a5,.L5
	.loc 1 70 28 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	li	a4,65536
	.cfi_offset 9, -12
	li	s1,1
	sll	a5,s1,a0
	addi	a4,a4,-400
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	and	a5,a5,a4
	bne	a5,zero,.L3
	.loc 1 85 7 is_stmt 1
	.loc 1 111 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.loc 1 85 7
	lui	a0,%hi(.LC1)
.LVL1:
	.loc 1 111 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 85 7
	addi	a0,a0,%lo(.LC1)
	.loc 1 111 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.L8:
	.loc 1 85 7
	tail	printf
.LVL2:
.L3:
	.cfi_def_cfa_offset 16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	.loc 1 83 7 is_stmt 1
	.loc 1 90 3
	li	a1,4096
	li	a0,1
.LVL3:
	call	bl_adc_freq_init
.LVL4:
	.loc 1 93 3
	mv	a1,s0
	li	a0,1
	call	bl_adc_init
.LVL5:
	.loc 1 96 3
.LBB6:
.LBB7:
	.loc 1 41 3
	.loc 1 41 12 is_stmt 0
	li	a3,1073807360
	lw	a5,-1772(a3)
.LVL6:
	.loc 1 44 3 is_stmt 1
	.loc 1 45 3
	.loc 1 48 3
	.loc 1 49 5
	.loc 1 55 3
	li	a4,-264355840
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL7:
	.loc 1 56 3
	.loc 1 57 5
	.loc 1 57 9 is_stmt 0
	li	a4,37822464
	or	a5,a5,a4
.LVL8:
	.loc 1 63 3 is_stmt 1
	.loc 1 63 59 is_stmt 0
	sw	a5,-1772(a3)
	.loc 1 64 3 is_stmt 1
.LVL9:
.LBE7:
.LBE6:
	.loc 1 99 3
	li	a1,1024
	li	a0,1
	call	bl_adc_dma_init
.LVL10:
	.loc 1 102 3
	mv	a0,s0
	call	bl_adc_gpio_init
.LVL11:
	.loc 1 105 3
	.loc 1 105 17 is_stmt 0
	mv	a0,s0
	call	bl_adc_get_channel_by_gpio
.LVL12:
	mv	s0,a0
.LVL13:
	.loc 1 106 3 is_stmt 1
	.loc 1 106 20 is_stmt 0
	li	a0,1
	call	bl_dma_find_ctx_by_channel
.LVL14:
	.loc 1 107 3 is_stmt 1
	.loc 1 107 26 is_stmt 0
	lw	a5,16(a0)
	.loc 1 107 32
	sll	s1,s1,s0
	.loc 1 107 26
	or	s1,a5,s1
	sw	s1,16(a0)
	.loc 1 110 3 is_stmt 1
	.loc 1 111 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL15:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 110 3
	tail	bl_adc_start
.LVL16:
.L5:
	.loc 1 85 7 is_stmt 1
	lui	a0,%hi(.LC1)
.LVL17:
	addi	a0,a0,%lo(.LC1)
	j	.L8
	.cfi_endproc
.LFE29:
	.size	init_adc, .-init_adc
	.section	.text.read_adc,"ax",@progbits
	.align	1
	.globl	read_adc
	.type	read_adc, @function
read_adc:
.LFB30:
	.loc 1 113 21
	.cfi_startproc
	.loc 1 115 3
	.loc 1 118 3
	.loc 1 113 21 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 118 20
	li	a0,1
	.loc 1 113 21
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 118 20
	call	bl_dma_find_ctx_by_channel
.LVL18:
	.loc 1 121 3 is_stmt 1
	.loc 1 121 11 is_stmt 0
	lw	a1,4(a0)
	li	a0,0
.LVL19:
	.loc 1 121 6
	beq	a1,zero,.L9
	.loc 1 126 3 is_stmt 1
	lui	s0,%hi(adc_data.3949)
	li	a2,4096
	addi	a0,s0,%lo(adc_data.3949)
	call	memcpy
.LVL20:
	.loc 1 133 3
	.loc 1 134 3
	.loc 1 134 8
	addi	a5,s0,%lo(adc_data.3949)
	li	a3,4096
.LBB12:
.LBB13:
.LBB14:
.LBB15:
	.loc 1 136 37 is_stmt 0
	li	a1,65536
	.loc 1 136 47
	li	a2,32768
	add	a3,a5,a3
.LBE15:
.LBE14:
	.loc 1 133 12
	li	a0,0
.LBB17:
.LBB16:
	.loc 1 136 37
	addi	a1,a1,-1
	.loc 1 136 47
	addi	a2,a2,-768
.LVL21:
.L11:
	.loc 1 136 5 is_stmt 1
	.loc 1 137 5
	.loc 1 136 37 is_stmt 0
	lw	a4,0(a5)
	addi	a5,a5,4
.LVL22:
	and	a4,a4,a1
.LVL23:
	.loc 1 136 47
	mul	a4,a4,a2
	.loc 1 136 14
	srli	a4,a4,16
	.loc 1 137 9
	add	a0,a0,a4
.LVL24:
.LBE16:
	.loc 1 134 3
	bne	a3,a5,.L11
.LBE17:
	.loc 1 140 3 is_stmt 1
	.loc 1 140 13 is_stmt 0
	srli	a0,a0,10
.LVL25:
.L9:
.LBE13:
.LBE12:
	.loc 1 141 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	read_adc, .-read_adc
	.section	.text.convert_to_binary,"ax",@progbits
	.align	1
	.globl	convert_to_binary
	.type	convert_to_binary, @function
convert_to_binary:
.LFB31:
	.loc 1 143 35 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 144 3
	.loc 1 146 3
	.loc 1 143 35 is_stmt 0
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	s0,136(sp)
	sw	ra,140(sp)
	sw	s1,132(sp)
	sw	s2,128(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 146 8
	li	s0,0
.LVL27:
.L17:
	.loc 1 146 3 discriminator 1
	bne	a0,zero,.L18
	.loc 1 150 3 is_stmt 1
	lui	a0,%hi(.LC2)
.LVL28:
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL29:
	.loc 1 151 3
	.loc 1 151 9 is_stmt 0
	addi	s0,s0,-1
.LVL30:
	.loc 1 151 3
	li	s1,-1
	.loc 1 153 5
	lui	s2,%hi(.LC3)
.L19:
	.loc 1 151 3 discriminator 1
	bne	s0,s1,.L20
	.loc 1 155 3 is_stmt 1
	.loc 1 157 1 is_stmt 0
	lw	s0,136(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL31:
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s1,132(sp)
	.cfi_restore 9
	lw	s2,128(sp)
	.cfi_restore 18
	.loc 1 155 3
	lui	a0,%hi(.LC4)
	.loc 1 157 1
	.loc 1 155 3
	addi	a0,a0,%lo(.LC4)
	.loc 1 157 1
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	.loc 1 155 3
	tail	printf
.LVL32:
.L18:
	.cfi_restore_state
	.loc 1 147 5 is_stmt 1 discriminator 3
	.loc 1 147 9 is_stmt 0 discriminator 3
	slli	a5,s0,2
	.loc 1 147 11 discriminator 3
	andi	a4,a0,1
	.loc 1 147 9 discriminator 3
	add	a5,sp,a5
	sw	a4,0(a5)
	.loc 1 148 5 is_stmt 1 discriminator 3
	.loc 1 148 6 is_stmt 0 discriminator 3
	srli	a0,a0,1
.LVL33:
	.loc 1 146 16 discriminator 3
	addi	s0,s0,1
.LVL34:
	j	.L17
.LVL35:
.L20:
	.loc 1 153 5 is_stmt 1 discriminator 3
	slli	a5,s0,2
	add	a5,sp,a5
	lw	a1,0(a5)
	addi	a0,s2,%lo(.LC3)
	.loc 1 151 20 is_stmt 0 discriminator 3
	addi	s0,s0,-1
.LVL36:
	.loc 1 153 5 discriminator 3
	call	printf
.LVL37:
	j	.L19
	.cfi_endproc
.LFE31:
	.size	convert_to_binary, .-convert_to_binary
	.section	.text.task_adc,"ax",@progbits
	.align	1
	.globl	task_adc
	.type	task_adc, @function
task_adc:
.LFB27:
	.loc 1 17 1 is_stmt 1
	.cfi_startproc
.LVL38:
	.loc 1 18 3
	lui	a0,%hi(.LC5)
.LVL39:
	.loc 1 17 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 18 3
	addi	a0,a0,%lo(.LC5)
	.loc 1 17 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 18 3
	call	printf
.LVL40:
	.loc 1 21 3 is_stmt 1
	li	a0,4
	call	init_adc
.LVL41:
	.loc 1 23 3
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL42:
	.loc 1 26 3
	li	a0,2000
	.loc 1 32 5 is_stmt 0
	li	s0,4096
	.loc 1 26 3
	call	vTaskDelay
.LVL43:
	.loc 1 30 5
	lui	s1,%hi(.LC7)
	.loc 1 32 5
	addi	s0,s0,904
.L23:
	.loc 1 29 3 is_stmt 1 discriminator 1
	.loc 1 30 5 discriminator 1
	call	read_adc
.LVL44:
	mv	a1,a0
	addi	a0,s1,%lo(.LC7)
	call	printf
.LVL45:
	.loc 1 31 5 discriminator 1
	call	read_adc
.LVL46:
	call	convert_to_binary
.LVL47:
	.loc 1 32 5 discriminator 1
	mv	a0,s0
	call	vTaskDelay
.LVL48:
	j	.L23
	.cfi_endproc
.LFE27:
	.size	task_adc, .-task_adc
	.section	.text.read_temperature,"ax",@progbits
	.align	1
	.globl	read_temperature
	.type	read_temperature, @function
read_temperature:
.LFB32:
	.loc 1 160 62
	.cfi_startproc
.LVL49:
	.loc 1 161 3
	.loc 1 162 3
	.loc 1 164 3
.LBB18:
	.loc 1 164 8
.LBE18:
	.loc 1 160 62 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 160 62
	mv	s1,a1
.LBB19:
	.loc 1 164 12
	li	s0,0
	.loc 1 165 5
	lui	s3,%hi(.LC8)
	.loc 1 164 3
	li	s2,4
.LVL50:
.L26:
	.loc 1 165 5 is_stmt 1 discriminator 3
	.loc 1 165 23 is_stmt 0 discriminator 3
	add	a5,s1,s0
	.loc 1 165 5 discriminator 3
	lbu	a1,0(a5)
	addi	a0,s3,%lo(.LC8)
	.loc 1 164 38 discriminator 3
	addi	s0,s0,1
.LVL51:
	.loc 1 165 5 discriminator 3
	call	printf
.LVL52:
	.loc 1 164 3 discriminator 3
	bne	s0,s2,.L26
.LBE19:
	.loc 1 167 3 is_stmt 1
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL53:
	.loc 1 170 3
	.loc 1 171 3
.LBB20:
	.loc 1 171 8
	.loc 1 171 12 is_stmt 0
	li	a5,0
.LBE20:
	.loc 1 170 7
	li	a1,0
.LBB21:
	.loc 1 171 3
	li	a4,8
.LVL54:
.L27:
	.loc 1 173 5 is_stmt 1 discriminator 3
	.loc 1 174 16 is_stmt 0 discriminator 3
	add	a3,s1,a5
	lbu	a3,0(a3)
	.loc 1 173 9 discriminator 3
	slli	a1,a1,1
.LVL55:
	.loc 1 174 5 is_stmt 1 discriminator 3
	.loc 1 171 26 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL56:
	.loc 1 174 9 discriminator 3
	add	a1,a3,a1
.LVL57:
	.loc 1 171 3 discriminator 3
	bne	a5,a4,.L27
.LBE21:
	.loc 1 176 3 is_stmt 1
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL58:
	.loc 1 179 3
	.loc 1 181 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL59:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL60:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	li	a0,20
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	read_temperature, .-read_temperature
	.section	.text.read_humidity,"ax",@progbits
	.align	1
	.globl	read_humidity
	.type	read_humidity, @function
read_humidity:
.LFB33:
	.loc 1 184 56 is_stmt 1
	.cfi_startproc
.LVL61:
	.loc 1 185 3
	.loc 1 186 3
.LBB22:
	.loc 1 186 8
.LBE22:
	.loc 1 184 56 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 184 56
	mv	s1,a1
.LBB23:
	.loc 1 186 12
	li	s0,0
	.loc 1 187 5
	lui	s3,%hi(.LC8)
	.loc 1 186 3
	li	s2,4
.LVL62:
.L32:
	.loc 1 187 5 is_stmt 1 discriminator 3
	.loc 1 187 20 is_stmt 0 discriminator 3
	add	a5,s1,s0
	.loc 1 187 5 discriminator 3
	lbu	a1,0(a5)
	addi	a0,s3,%lo(.LC8)
	.loc 1 186 35 discriminator 3
	addi	s0,s0,1
.LVL63:
	.loc 1 187 5 discriminator 3
	call	printf
.LVL64:
	.loc 1 186 3 discriminator 3
	bne	s0,s2,.L32
.LBE23:
	.loc 1 189 3 is_stmt 1
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL65:
	.loc 1 191 3
	.loc 1 192 3
.LBB24:
	.loc 1 192 8
	.loc 1 192 12 is_stmt 0
	li	a5,0
.LBE24:
	.loc 1 191 7
	li	a1,0
.LBB25:
	.loc 1 192 3
	li	a4,8
.LVL66:
.L33:
	.loc 1 193 5 is_stmt 1 discriminator 3
	.loc 1 194 13 is_stmt 0 discriminator 3
	add	a3,s1,a5
	lbu	a3,0(a3)
	.loc 1 193 9 discriminator 3
	slli	a1,a1,1
.LVL67:
	.loc 1 194 5 is_stmt 1 discriminator 3
	.loc 1 192 26 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL68:
	.loc 1 194 9 discriminator 3
	add	a1,a3,a1
.LVL69:
	.loc 1 192 3 discriminator 3
	bne	a5,a4,.L33
.LBE25:
	.loc 1 196 3 is_stmt 1
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL70:
	.loc 1 198 3
	.loc 1 200 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL71:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL72:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	li	a0,38
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	read_humidity, .-read_humidity
	.section	.bss.adc_data.3949,"aw",@nobits
	.align	2
	.type	adc_data.3949, @object
	.size	adc_data.3949, 4096
adc_data.3949:
	.zero	4096
	.section	.rodata.convert_to_binary.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"\nBinary of Given Number is="
.LC3:
	.string	"%d"
	.zero	1
.LC4:
	.string	"\r\n"
	.section	.rodata.init_adc.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"Invalid pin selected for ADC\r\n"
	.section	.rodata.read_temperature.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"%hhu"
	.zero	3
.LC9:
	.string	"%d\r\n"
	.section	.rodata.task_adc.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"ADC task started\r\n"
	.zero	1
.LC6:
	.string	"ADC initialized\r\n"
	.zero	2
.LC7:
	.string	"\nCurrent value of digitized analog signal: %lu\r\n"
	.text
.Letext0:
	.file 2 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/home/shoaib/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 5 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 7 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 8 "/home/shoaib/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h"
	.file 9 "/home/shoaib/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 10 "/home/shoaib/bl_iot_sdk/components/hal_drv/bl602_hal/bl_adc.h"
	.file 11 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 12 "/home/shoaib/bl_iot_sdk/components/hal_drv/bl602_hal/bl_dma.h"
	.file 13 "/home/shoaib/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 14 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 15 "/home/shoaib/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_adc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1050
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF170
	.byte	0xc
	.4byte	.LASF171
	.4byte	.LASF172
	.4byte	.Ldebug_ranges0+0x90
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x4d
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x67
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x81
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x41
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x75
	.byte	0x6
	.4byte	.LASF122
	.byte	0x3
	.byte	0x54
	.byte	0x13
	.4byte	0x91
	.byte	0x7
	.byte	0x4
	.4byte	0x5b
	.byte	0x7
	.byte	0x4
	.4byte	0xc8
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x8
	.4byte	0xc1
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.byte	0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x25
	.byte	0xa
	.byte	0x4
	.byte	0x5
	.byte	0xa5
	.byte	0x3
	.4byte	0x120
	.byte	0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa7
	.byte	0xc
	.4byte	0xcd
	.byte	0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa8
	.byte	0x13
	.4byte	0x120
	.byte	0
	.byte	0xc
	.4byte	0x67
	.4byte	0x130
	.byte	0xd
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.byte	0xe
	.byte	0x8
	.byte	0x5
	.byte	0xa2
	.byte	0x9
	.4byte	0x154
	.byte	0xf
	.4byte	.LASF21
	.byte	0x5
	.byte	0xa4
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xf
	.4byte	.LASF22
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.4byte	0xfe
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0xaa
	.byte	0x3
	.4byte	0x130
	.byte	0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x81
	.byte	0x4
	.4byte	.LASF25
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x23
	.byte	0x1b
	.4byte	0x16c
	.byte	0x10
	.4byte	.LASF31
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.byte	0x8
	.4byte	0x1de
	.byte	0xf
	.4byte	.LASF27
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0x1de
	.byte	0
	.byte	0x11
	.string	"_k"
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF28
	.byte	0x6
	.byte	0x37
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.byte	0xf
	.4byte	.LASF29
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.byte	0xf
	.4byte	.LASF30
	.byte	0x6
	.byte	0x37
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.byte	0x11
	.string	"_x"
	.byte	0x6
	.byte	0x38
	.byte	0xb
	.4byte	0x1e4
	.byte	0x14
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x184
	.byte	0xc
	.4byte	0x160
	.4byte	0x1f4
	.byte	0xd
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF32
	.byte	0x24
	.byte	0x6
	.byte	0x3c
	.byte	0x8
	.4byte	0x277
	.byte	0xf
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xf
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF35
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0xf
	.4byte	.LASF36
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.byte	0xf
	.4byte	.LASF37
	.byte	0x6
	.byte	0x42
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0xf
	.4byte	.LASF38
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.byte	0xf
	.4byte	.LASF39
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xf
	.4byte	.LASF40
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF41
	.byte	0x6
	.byte	0x46
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.byte	0x12
	.4byte	.LASF42
	.2byte	0x108
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x2bc
	.byte	0xf
	.4byte	.LASF43
	.byte	0x6
	.byte	0x50
	.byte	0x9
	.4byte	0x2bc
	.byte	0
	.byte	0xf
	.4byte	.LASF44
	.byte	0x6
	.byte	0x51
	.byte	0x9
	.4byte	0x2bc
	.byte	0x80
	.byte	0x13
	.4byte	.LASF45
	.byte	0x6
	.byte	0x53
	.byte	0xa
	.4byte	0x160
	.2byte	0x100
	.byte	0x13
	.4byte	.LASF46
	.byte	0x6
	.byte	0x56
	.byte	0xa
	.4byte	0x160
	.2byte	0x104
	.byte	0
	.byte	0xc
	.4byte	0x8f
	.4byte	0x2cc
	.byte	0xd
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x12
	.4byte	.LASF47
	.2byte	0x190
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x30f
	.byte	0xf
	.4byte	.LASF27
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x30f
	.byte	0
	.byte	0xf
	.4byte	.LASF48
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF49
	.byte	0x6
	.byte	0x66
	.byte	0x9
	.4byte	0x315
	.byte	0x8
	.byte	0xf
	.4byte	.LASF42
	.byte	0x6
	.byte	0x67
	.byte	0x1e
	.4byte	0x277
	.byte	0x88
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2cc
	.byte	0xc
	.4byte	0x325
	.4byte	0x325
	.byte	0xd
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x32b
	.byte	0x14
	.byte	0x10
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0x8
	.4byte	0x354
	.byte	0xf
	.4byte	.LASF51
	.byte	0x6
	.byte	0x7b
	.byte	0x11
	.4byte	0x354
	.byte	0
	.byte	0xf
	.4byte	.LASF52
	.byte	0x6
	.byte	0x7c
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x67
	.byte	0x10
	.4byte	.LASF53
	.byte	0x68
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x49d
	.byte	0x11
	.string	"_p"
	.byte	0x6
	.byte	0xbb
	.byte	0x12
	.4byte	0x354
	.byte	0
	.byte	0x11
	.string	"_r"
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x11
	.string	"_w"
	.byte	0x6
	.byte	0xbd
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0xf
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x3a
	.byte	0xc
	.byte	0xf
	.4byte	.LASF55
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x3a
	.byte	0xe
	.byte	0x11
	.string	"_bf"
	.byte	0x6
	.byte	0xc0
	.byte	0x11
	.4byte	0x32c
	.byte	0x10
	.byte	0xf
	.4byte	.LASF56
	.byte	0x6
	.byte	0xc1
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xf
	.4byte	.LASF57
	.byte	0x6
	.byte	0xc8
	.byte	0xa
	.4byte	0x8f
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF58
	.byte	0x6
	.byte	0xca
	.byte	0xe
	.4byte	0x615
	.byte	0x20
	.byte	0xf
	.4byte	.LASF59
	.byte	0x6
	.byte	0xcc
	.byte	0xe
	.4byte	0x639
	.byte	0x24
	.byte	0xf
	.4byte	.LASF60
	.byte	0x6
	.byte	0xcf
	.byte	0xd
	.4byte	0x65d
	.byte	0x28
	.byte	0xf
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0x677
	.byte	0x2c
	.byte	0x11
	.string	"_ub"
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x32c
	.byte	0x30
	.byte	0x11
	.string	"_up"
	.byte	0x6
	.byte	0xd4
	.byte	0x12
	.4byte	0x354
	.byte	0x38
	.byte	0x11
	.string	"_ur"
	.byte	0x6
	.byte	0xd5
	.byte	0x7
	.4byte	0x25
	.byte	0x3c
	.byte	0xf
	.4byte	.LASF62
	.byte	0x6
	.byte	0xd8
	.byte	0x11
	.4byte	0x67d
	.byte	0x40
	.byte	0xf
	.4byte	.LASF63
	.byte	0x6
	.byte	0xd9
	.byte	0x11
	.4byte	0x68d
	.byte	0x43
	.byte	0x11
	.string	"_lb"
	.byte	0x6
	.byte	0xdc
	.byte	0x11
	.4byte	0x32c
	.byte	0x44
	.byte	0xf
	.4byte	.LASF64
	.byte	0x6
	.byte	0xdf
	.byte	0x7
	.4byte	0x25
	.byte	0x4c
	.byte	0xf
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe0
	.byte	0xa
	.4byte	0xda
	.byte	0x50
	.byte	0xf
	.4byte	.LASF66
	.byte	0x6
	.byte	0xe3
	.byte	0x12
	.4byte	0x4bb
	.byte	0x54
	.byte	0xf
	.4byte	.LASF67
	.byte	0x6
	.byte	0xe7
	.byte	0xc
	.4byte	0x178
	.byte	0x58
	.byte	0xf
	.4byte	.LASF68
	.byte	0x6
	.byte	0xe9
	.byte	0xe
	.4byte	0x154
	.byte	0x5c
	.byte	0xf
	.4byte	.LASF69
	.byte	0x6
	.byte	0xea
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.byte	0x15
	.4byte	0xf2
	.4byte	0x4bb
	.byte	0x16
	.4byte	0x4bb
	.byte	0x16
	.4byte	0x8f
	.byte	0x16
	.4byte	0x60f
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x4c6
	.byte	0x8
	.4byte	0x4bb
	.byte	0x17
	.4byte	.LASF70
	.2byte	0x428
	.byte	0x6
	.2byte	0x265
	.byte	0x8
	.4byte	0x60f
	.byte	0x18
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x267
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x18
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6e9
	.byte	0x4
	.byte	0x18
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6e9
	.byte	0x8
	.byte	0x18
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6e9
	.byte	0xc
	.byte	0x18
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x26e
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0x18
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8e9
	.byte	0x14
	.byte	0x18
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x272
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.byte	0x18
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x273
	.byte	0x16
	.4byte	0x8fe
	.byte	0x34
	.byte	0x18
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x275
	.byte	0x7
	.4byte	0x25
	.byte	0x38
	.byte	0x18
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x277
	.byte	0xa
	.4byte	0x90f
	.byte	0x3c
	.byte	0x18
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1de
	.byte	0x40
	.byte	0x18
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x25
	.byte	0x44
	.byte	0x18
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1de
	.byte	0x48
	.byte	0x18
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x27d
	.byte	0x14
	.4byte	0x915
	.byte	0x4c
	.byte	0x18
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.byte	0x18
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x281
	.byte	0x9
	.4byte	0x60f
	.byte	0x54
	.byte	0x18
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x8c4
	.byte	0x58
	.byte	0x19
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x30f
	.2byte	0x148
	.byte	0x19
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x2cc
	.2byte	0x14c
	.byte	0x19
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x926
	.2byte	0x2dc
	.byte	0x19
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x6aa
	.2byte	0x2e0
	.byte	0x19
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x932
	.2byte	0x2ec
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xc1
	.byte	0x7
	.byte	0x4
	.4byte	0x49d
	.byte	0x15
	.4byte	0xf2
	.4byte	0x639
	.byte	0x16
	.4byte	0x4bb
	.byte	0x16
	.4byte	0x8f
	.byte	0x16
	.4byte	0xbb
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x61b
	.byte	0x15
	.4byte	0xe6
	.4byte	0x65d
	.byte	0x16
	.4byte	0x4bb
	.byte	0x16
	.4byte	0x8f
	.byte	0x16
	.4byte	0xe6
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x63f
	.byte	0x15
	.4byte	0x25
	.4byte	0x677
	.byte	0x16
	.4byte	0x4bb
	.byte	0x16
	.4byte	0x8f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x663
	.byte	0xc
	.4byte	0x67
	.4byte	0x68d
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0xc
	.4byte	0x67
	.4byte	0x69d
	.byte	0xd
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x124
	.byte	0x18
	.4byte	0x35a
	.byte	0x1a
	.4byte	.LASF93
	.byte	0xc
	.byte	0x6
	.2byte	0x128
	.byte	0x8
	.4byte	0x6e3
	.byte	0x18
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6e3
	.byte	0
	.byte	0x18
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x12b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x18
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6e9
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x6aa
	.byte	0x7
	.byte	0x4
	.4byte	0x69d
	.byte	0x1a
	.4byte	.LASF96
	.byte	0xe
	.byte	0x6
	.2byte	0x144
	.byte	0x8
	.4byte	0x728
	.byte	0x18
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x145
	.byte	0x12
	.4byte	0x728
	.byte	0
	.byte	0x18
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x146
	.byte	0x12
	.4byte	0x728
	.byte	0x6
	.byte	0x18
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x147
	.byte	0x12
	.4byte	0x6e
	.byte	0xc
	.byte	0
	.byte	0xc
	.4byte	0x6e
	.4byte	0x738
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x1b
	.byte	0xd0
	.byte	0x6
	.2byte	0x285
	.byte	0x7
	.4byte	0x84d
	.byte	0x18
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x287
	.byte	0x18
	.4byte	0x2c
	.byte	0
	.byte	0x18
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x288
	.byte	0x12
	.4byte	0x60f
	.byte	0x4
	.byte	0x18
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x289
	.byte	0x10
	.4byte	0x84d
	.byte	0x8
	.byte	0x18
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1f4
	.byte	0x24
	.byte	0x18
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28b
	.byte	0xf
	.4byte	0x25
	.byte	0x48
	.byte	0x18
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x88
	.byte	0x50
	.byte	0x18
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6ef
	.byte	0x58
	.byte	0x18
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28e
	.byte	0x16
	.4byte	0x154
	.byte	0x68
	.byte	0x18
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x154
	.byte	0x70
	.byte	0x18
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x154
	.byte	0x78
	.byte	0x18
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x291
	.byte	0x10
	.4byte	0x85d
	.byte	0x80
	.byte	0x18
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x292
	.byte	0x10
	.4byte	0x86d
	.byte	0x88
	.byte	0x18
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x293
	.byte	0xf
	.4byte	0x25
	.byte	0xa0
	.byte	0x18
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x294
	.byte	0x16
	.4byte	0x154
	.byte	0xa4
	.byte	0x18
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x295
	.byte	0x16
	.4byte	0x154
	.byte	0xac
	.byte	0x18
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x296
	.byte	0x16
	.4byte	0x154
	.byte	0xb4
	.byte	0x18
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x297
	.byte	0x16
	.4byte	0x154
	.byte	0xbc
	.byte	0x18
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x298
	.byte	0x16
	.4byte	0x154
	.byte	0xc4
	.byte	0x18
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x299
	.byte	0x8
	.4byte	0x25
	.byte	0xcc
	.byte	0
	.byte	0xc
	.4byte	0xc1
	.4byte	0x85d
	.byte	0xd
	.4byte	0x2c
	.byte	0x19
	.byte	0
	.byte	0xc
	.4byte	0xc1
	.4byte	0x86d
	.byte	0xd
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.byte	0xc
	.4byte	0xc1
	.4byte	0x87d
	.byte	0xd
	.4byte	0x2c
	.byte	0x17
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x29e
	.byte	0x7
	.4byte	0x8a4
	.byte	0x18
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x8a4
	.byte	0
	.byte	0x18
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x8b4
	.byte	0x78
	.byte	0
	.byte	0xc
	.4byte	0x354
	.4byte	0x8b4
	.byte	0xd
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.byte	0xc
	.4byte	0x2c
	.4byte	0x8c4
	.byte	0xd
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.byte	0x1c
	.byte	0xf0
	.byte	0x6
	.2byte	0x283
	.byte	0x3
	.4byte	0x8e9
	.byte	0x1d
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x29a
	.byte	0xb
	.4byte	0x738
	.byte	0x1d
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x87d
	.byte	0
	.byte	0xc
	.4byte	0xc1
	.4byte	0x8f9
	.byte	0xd
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.byte	0x1e
	.4byte	.LASF173
	.byte	0x7
	.byte	0x4
	.4byte	0x8f9
	.byte	0x1f
	.4byte	0x90f
	.byte	0x16
	.4byte	0x4bb
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x904
	.byte	0x7
	.byte	0x4
	.4byte	0x1de
	.byte	0x1f
	.4byte	0x926
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x92c
	.byte	0x7
	.byte	0x4
	.4byte	0x91b
	.byte	0xc
	.4byte	0x69d
	.4byte	0x942
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x20
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x333
	.byte	0x17
	.4byte	0x4bb
	.byte	0x20
	.4byte	.LASF124
	.byte	0x6
	.2byte	0x334
	.byte	0x1d
	.4byte	0x4c1
	.byte	0x6
	.4byte	.LASF125
	.byte	0x8
	.byte	0x8
	.byte	0x11
	.4byte	0x75
	.byte	0x4
	.4byte	.LASF126
	.byte	0x9
	.byte	0x7c
	.byte	0xf
	.4byte	0x32b
	.byte	0xc
	.4byte	0x97f
	.4byte	0x97f
	.byte	0x21
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x985
	.byte	0x7
	.byte	0x4
	.4byte	0x968
	.byte	0x6
	.4byte	.LASF127
	.byte	0x9
	.byte	0x84
	.byte	0x1c
	.4byte	0x974
	.byte	0x22
	.byte	0x7
	.byte	0x1
	.4byte	0x67
	.byte	0xf
	.byte	0x88
	.byte	0xe
	.4byte	0x9d0
	.byte	0x23
	.4byte	.LASF128
	.byte	0
	.byte	0x23
	.4byte	.LASF129
	.byte	0x1
	.byte	0x23
	.4byte	.LASF130
	.byte	0x2
	.byte	0x23
	.4byte	.LASF131
	.byte	0x3
	.byte	0x23
	.4byte	.LASF132
	.byte	0x4
	.byte	0x23
	.4byte	.LASF133
	.byte	0x5
	.byte	0x23
	.4byte	.LASF134
	.byte	0x6
	.byte	0
	.byte	0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF135
	.byte	0x4
	.4byte	.LASF136
	.byte	0xa
	.byte	0x24
	.byte	0x10
	.4byte	0x9e3
	.byte	0x7
	.byte	0x4
	.4byte	0x9e9
	.byte	0x1f
	.4byte	0x9fe
	.byte	0x16
	.4byte	0x25
	.byte	0x16
	.4byte	0x9fe
	.byte	0x16
	.4byte	0x75
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x75
	.byte	0x10
	.4byte	.LASF137
	.byte	0x1c
	.byte	0xa
	.byte	0x25
	.byte	0x10
	.4byte	0xa6c
	.byte	0xf
	.4byte	.LASF138
	.byte	0xa
	.byte	0x26
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0xf
	.4byte	.LASF139
	.byte	0xa
	.byte	0x27
	.byte	0xf
	.4byte	0x9fe
	.byte	0x4
	.byte	0xf
	.4byte	.LASF140
	.byte	0xa
	.byte	0x28
	.byte	0xb
	.4byte	0x8f
	.byte	0x8
	.byte	0xf
	.4byte	.LASF141
	.byte	0xa
	.byte	0x29
	.byte	0x9
	.4byte	0x25
	.byte	0xc
	.byte	0xf
	.4byte	.LASF142
	.byte	0xa
	.byte	0x2a
	.byte	0xe
	.4byte	0x75
	.byte	0x10
	.byte	0xf
	.4byte	.LASF143
	.byte	0xa
	.byte	0x2b
	.byte	0xe
	.4byte	0x75
	.byte	0x14
	.byte	0x11
	.string	"cb"
	.byte	0xa
	.byte	0x2c
	.byte	0x11
	.4byte	0x9d7
	.byte	0x18
	.byte	0
	.byte	0x4
	.4byte	.LASF144
	.byte	0xa
	.byte	0x2d
	.byte	0x2
	.4byte	0xa04
	.byte	0x24
	.4byte	.LASF147
	.byte	0x1
	.byte	0xb8
	.byte	0x9
	.4byte	0x5b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0xb3c
	.byte	0x25
	.4byte	.LASF145
	.byte	0x1
	.byte	0xb8
	.byte	0x20
	.4byte	0x75
	.4byte	.LLST20
	.byte	0x26
	.string	"hr"
	.byte	0x1
	.byte	0xb8
	.byte	0x35
	.4byte	0xb5
	.4byte	.LLST21
	.byte	0x27
	.4byte	.LASF146
	.byte	0x1
	.byte	0xb9
	.byte	0xb
	.4byte	0x5b
	.byte	0x26
	.byte	0x28
	.string	"res"
	.byte	0x1
	.byte	0xbf
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST22
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0xaf9
	.byte	0x28
	.string	"i"
	.byte	0x1
	.byte	0xba
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST23
	.byte	0x2a
	.4byte	.LVL64
	.4byte	0xfda
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0xb11
	.byte	0x28
	.string	"i"
	.byte	0x1
	.byte	0xc0
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST24
	.byte	0
	.byte	0x2c
	.4byte	.LVL65
	.4byte	0xfda
	.4byte	0xb28
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x2a
	.4byte	.LVL70
	.4byte	0xfda
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF148
	.byte	0x1
	.byte	0xa0
	.byte	0x9
	.4byte	0x5b
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0xc11
	.byte	0x25
	.4byte	.LASF145
	.byte	0x1
	.byte	0xa0
	.byte	0x23
	.4byte	0x75
	.4byte	.LLST14
	.byte	0x25
	.4byte	.LASF149
	.byte	0x1
	.byte	0xa0
	.byte	0x38
	.4byte	0xb5
	.4byte	.LLST15
	.byte	0x27
	.4byte	.LASF146
	.byte	0x1
	.byte	0xa1
	.byte	0xb
	.4byte	0x5b
	.byte	0x17
	.byte	0x2d
	.4byte	.LASF150
	.byte	0x1
	.byte	0xa2
	.byte	0x7
	.4byte	0xc11
	.4byte	.LLST16
	.byte	0x28
	.string	"res"
	.byte	0x1
	.byte	0xaa
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST17
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xbce
	.byte	0x28
	.string	"i"
	.byte	0x1
	.byte	0xa4
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST18
	.byte	0x2a
	.4byte	.LVL52
	.4byte	0xfda
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0xbe6
	.byte	0x28
	.string	"i"
	.byte	0x1
	.byte	0xab
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST19
	.byte	0
	.byte	0x2c
	.4byte	.LVL53
	.4byte	0xfda
	.4byte	0xbfd
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x2a
	.4byte	.LVL58
	.4byte	0xfda
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	0x25
	.4byte	0xc21
	.byte	0xd
	.4byte	0x2c
	.byte	0x5
	.byte	0
	.byte	0x2e
	.4byte	.LASF153
	.byte	0x1
	.byte	0x8f
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0xca3
	.byte	0x26
	.string	"n"
	.byte	0x1
	.byte	0x8f
	.byte	0x21
	.4byte	0x75
	.4byte	.LLST11
	.byte	0x2f
	.string	"a"
	.byte	0x1
	.byte	0x90
	.byte	0x7
	.4byte	0xca3
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x28
	.string	"i"
	.byte	0x1
	.byte	0x90
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST12
	.byte	0x2c
	.4byte	.LVL29
	.4byte	0xfda
	.4byte	0xc78
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x30
	.4byte	.LVL32
	.4byte	0xfda
	.4byte	0xc8f
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x2a
	.4byte	.LVL37
	.4byte	0xfda
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	0x25
	.4byte	0xcb3
	.byte	0xd
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x31
	.4byte	.LASF174
	.byte	0x1
	.byte	0x71
	.byte	0xa
	.4byte	0x75
	.byte	0x1
	.4byte	0xd09
	.byte	0x32
	.4byte	.LASF151
	.byte	0x1
	.byte	0x73
	.byte	0x13
	.4byte	0xd09
	.byte	0x5
	.byte	0x3
	.4byte	adc_data.3949
	.byte	0x33
	.string	"ctx"
	.byte	0x1
	.byte	0x76
	.byte	0xe
	.4byte	0xd1a
	.byte	0x33
	.string	"sum"
	.byte	0x1
	.byte	0x85
	.byte	0xc
	.4byte	0x75
	.byte	0x34
	.byte	0x33
	.string	"i"
	.byte	0x1
	.byte	0x86
	.byte	0xc
	.4byte	0x25
	.byte	0x34
	.byte	0x35
	.4byte	.LASF152
	.byte	0x1
	.byte	0x88
	.byte	0xe
	.4byte	0x75
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	0x75
	.4byte	0xd1a
	.byte	0x36
	.4byte	0x2c
	.2byte	0x3ff
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xa6c
	.byte	0x2e
	.4byte	.LASF154
	.byte	0x1
	.byte	0x46
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0xe3f
	.byte	0x26
	.string	"pin"
	.byte	0x1
	.byte	0x46
	.byte	0x17
	.4byte	0x5b
	.4byte	.LLST0
	.byte	0x2d
	.4byte	.LASF155
	.byte	0x1
	.byte	0x69
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST1
	.byte	0x28
	.string	"ctx"
	.byte	0x1
	.byte	0x6a
	.byte	0xe
	.4byte	0xd1a
	.4byte	.LLST2
	.byte	0x37
	.4byte	0xe3f
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x60
	.byte	0x3
	.4byte	0xda0
	.byte	0x38
	.4byte	0xe50
	.4byte	.LLST3
	.byte	0x38
	.4byte	0xe5c
	.4byte	.LLST3
	.byte	0x39
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x3a
	.4byte	0xe68
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0x3b
	.4byte	.LVL2
	.4byte	0xfda
	.byte	0x2c
	.4byte	.LVL4
	.4byte	0xfe6
	.4byte	0xdc4
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0x2c
	.4byte	.LVL5
	.4byte	0xff2
	.4byte	0xdde
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL10
	.4byte	0xffe
	.4byte	0xdf9
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.byte	0x2c
	.4byte	.LVL11
	.4byte	0x100a
	.4byte	0xe0d
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL12
	.4byte	0x1016
	.4byte	0xe21
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL14
	.4byte	0x1022
	.4byte	0xe35
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x3b
	.4byte	.LVL16
	.4byte	0x102e
	.byte	0
	.byte	0x3c
	.4byte	.LASF175
	.byte	0x1
	.byte	0x27
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0xe75
	.byte	0x3d
	.4byte	.LASF156
	.byte	0x1
	.byte	0x27
	.byte	0x22
	.4byte	0x75
	.byte	0x3d
	.4byte	.LASF157
	.byte	0x1
	.byte	0x27
	.byte	0x32
	.4byte	0x75
	.byte	0x33
	.string	"reg"
	.byte	0x1
	.byte	0x29
	.byte	0xc
	.4byte	0x75
	.byte	0
	.byte	0x2e
	.4byte	.LASF158
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0xf34
	.byte	0x25
	.4byte	.LASF159
	.byte	0x1
	.byte	0x10
	.byte	0x15
	.4byte	0x8f
	.4byte	.LLST13
	.byte	0x2c
	.4byte	.LVL40
	.4byte	0xfda
	.4byte	0xeb2
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x2c
	.4byte	.LVL41
	.4byte	0xd20
	.4byte	0xec5
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x2c
	.4byte	.LVL42
	.4byte	0xfda
	.4byte	0xedc
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x2c
	.4byte	.LVL43
	.4byte	0x103a
	.4byte	0xef1
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0x3e
	.4byte	.LVL44
	.4byte	0xcb3
	.byte	0x2c
	.4byte	.LVL45
	.4byte	0xfda
	.4byte	0xf11
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x3e
	.4byte	.LVL46
	.4byte	0xcb3
	.byte	0x3e
	.4byte	.LVL47
	.4byte	0xc21
	.byte	0x2a
	.4byte	.LVL48
	.4byte	0x103a
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	0xcb3
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0xfda
	.byte	0x3a
	.4byte	0xcd6
	.4byte	.LLST6
	.byte	0x3a
	.4byte	0xce2
	.4byte	.LLST7
	.byte	0x37
	.4byte	0xcb3
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x71
	.byte	0xa
	.4byte	0xfac
	.byte	0x39
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.byte	0x40
	.4byte	0xcd6
	.byte	0x3a
	.4byte	0xce2
	.4byte	.LLST8
	.byte	0x41
	.4byte	0xcee
	.4byte	.Ldebug_ranges0+0
	.byte	0x3a
	.4byte	0xcef
	.4byte	.LLST9
	.byte	0x41
	.4byte	0xcf9
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x3a
	.4byte	0xcfa
	.4byte	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL18
	.4byte	0x1022
	.4byte	0xfbf
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2a
	.4byte	.LVL20
	.4byte	0x1047
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	adc_data.3949
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.byte	0x42
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xb
	.byte	0xc8
	.byte	0x5
	.byte	0x42
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xa
	.byte	0x3a
	.byte	0x5
	.byte	0x42
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0xa
	.byte	0x35
	.byte	0x5
	.byte	0x42
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0xa
	.byte	0x36
	.byte	0x5
	.byte	0x42
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0xa
	.byte	0x38
	.byte	0x5
	.byte	0x42
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xa
	.byte	0x39
	.byte	0x5
	.byte	0x42
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xc
	.byte	0x4e
	.byte	0x7
	.byte	0x42
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xa
	.byte	0x37
	.byte	0x5
	.byte	0x43
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0xd
	.2byte	0x2f6
	.byte	0x6
	.byte	0x42
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0xe
	.byte	0x1f
	.byte	0x8
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x29
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x34
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x35
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x37
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x3a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3b
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3c
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3d
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3e
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3f
	.byte	0x2e
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x40
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x41
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x42
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x43
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST20:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL62
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL72
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL50
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL60
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL49
	.4byte	.LVL58
	.2byte	0x7
	.byte	0x9
	.byte	0xfd
	.byte	0x9f
	.byte	0x93
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x10
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xf9,0x81,0x7f
	.byte	0x1a
	.byte	0xc
	.4byte	0x2410000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0xc
	.4byte	0x2410000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0xe
	.byte	0x7f
	.byte	0
	.byte	0x6
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xa
	.2byte	0x7d00
	.byte	0x1e
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0xd
	.byte	0x7e
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xa
	.2byte	0x7d00
	.byte	0x1e
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0xe
	.byte	0x7f
	.byte	0x7c
	.byte	0x6
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xa
	.2byte	0x7d00
	.byte	0x1e
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0
	.4byte	0
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF160:
	.string	"printf"
.LASF2:
	.string	"short int"
.LASF43:
	.string	"_fnargs"
.LASF96:
	.string	"_rand48"
.LASF76:
	.string	"_emergency"
.LASF128:
	.string	"ADC_PGA_GAIN_NONE"
.LASF88:
	.string	"_atexit0"
.LASF168:
	.string	"vTaskDelay"
.LASF116:
	.string	"_wcrtomb_state"
.LASF117:
	.string	"_wcsrtombs_state"
.LASF122:
	.string	"TrapNetCounter"
.LASF129:
	.string	"ADC_PGA_GAIN_1"
.LASF130:
	.string	"ADC_PGA_GAIN_2"
.LASF131:
	.string	"ADC_PGA_GAIN_4"
.LASF156:
	.string	"gain1"
.LASF157:
	.string	"gain2"
.LASF132:
	.string	"ADC_PGA_GAIN_8"
.LASF173:
	.string	"__locale_t"
.LASF175:
	.string	"set_adc_gain"
.LASF114:
	.string	"_mbrtowc_state"
.LASF109:
	.string	"_wctomb_state"
.LASF33:
	.string	"__tm_sec"
.LASF16:
	.string	"_off_t"
.LASF61:
	.string	"_close"
.LASF1:
	.string	"signed char"
.LASF158:
	.string	"task_adc"
.LASF11:
	.string	"long long unsigned int"
.LASF35:
	.string	"__tm_hour"
.LASF91:
	.string	"__sf"
.LASF42:
	.string	"_on_exit_args"
.LASF57:
	.string	"_cookie"
.LASF90:
	.string	"__sglue"
.LASF3:
	.string	"long int"
.LASF54:
	.string	"_flags"
.LASF46:
	.string	"_is_cxa"
.LASF72:
	.string	"_stdin"
.LASF62:
	.string	"_ubuf"
.LASF82:
	.string	"_result_k"
.LASF4:
	.string	"long long int"
.LASF139:
	.string	"channel_data"
.LASF12:
	.string	"BaseType_t"
.LASF86:
	.string	"_cvtbuf"
.LASF65:
	.string	"_offset"
.LASF115:
	.string	"_mbsrtowcs_state"
.LASF113:
	.string	"_mbrlen_state"
.LASF8:
	.string	"short unsigned int"
.LASF49:
	.string	"_fns"
.LASF29:
	.string	"_sign"
.LASF123:
	.string	"_impure_ptr"
.LASF74:
	.string	"_stderr"
.LASF31:
	.string	"_Bigint"
.LASF147:
	.string	"read_humidity"
.LASF166:
	.string	"bl_dma_find_ctx_by_channel"
.LASF58:
	.string	"_read"
.LASF32:
	.string	"__tm"
.LASF20:
	.string	"__wchb"
.LASF133:
	.string	"ADC_PGA_GAIN_16"
.LASF73:
	.string	"_stdout"
.LASF85:
	.string	"_cvtlen"
.LASF10:
	.string	"long unsigned int"
.LASF55:
	.string	"_file"
.LASF127:
	.string	"intCbfArra"
.LASF159:
	.string	"pvParameters"
.LASF66:
	.string	"_data"
.LASF94:
	.string	"_niobs"
.LASF105:
	.string	"_rand_next"
.LASF151:
	.string	"adc_data"
.LASF111:
	.string	"_signal_buf"
.LASF102:
	.string	"_asctime_buf"
.LASF81:
	.string	"_result"
.LASF19:
	.string	"__wch"
.LASF171:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/adc.c"
.LASF169:
	.string	"memcpy"
.LASF44:
	.string	"_dso_handle"
.LASF141:
	.string	"lli_flag"
.LASF87:
	.string	"_new"
.LASF67:
	.string	"_lock"
.LASF98:
	.string	"_mult"
.LASF145:
	.string	"dht22_data"
.LASF161:
	.string	"bl_adc_freq_init"
.LASF59:
	.string	"_write"
.LASF38:
	.string	"__tm_year"
.LASF134:
	.string	"ADC_PGA_GAIN_32"
.LASF120:
	.string	"_nmalloc"
.LASF167:
	.string	"bl_adc_start"
.LASF126:
	.string	"intCallback_Type"
.LASF152:
	.string	"scaled"
.LASF164:
	.string	"bl_adc_gpio_init"
.LASF13:
	.string	"TickType_t"
.LASF119:
	.string	"_nextf"
.LASF37:
	.string	"__tm_mon"
.LASF47:
	.string	"_atexit"
.LASF79:
	.string	"__sdidinit"
.LASF104:
	.string	"_gamma_signgam"
.LASF15:
	.string	"wint_t"
.LASF172:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/build_out/sdk_app_helloworld"
.LASF125:
	.string	"SystemCoreClock"
.LASF84:
	.string	"_freelist"
.LASF150:
	.string	"error"
.LASF23:
	.string	"_mbstate_t"
.LASF25:
	.string	"_LOCK_RECURSIVE_T"
.LASF137:
	.string	"adc_ctx"
.LASF51:
	.string	"_base"
.LASF5:
	.string	"int32_t"
.LASF146:
	.string	"_default"
.LASF95:
	.string	"_iobs"
.LASF144:
	.string	"adc_ctx_t"
.LASF118:
	.string	"_h_errno"
.LASF40:
	.string	"__tm_yday"
.LASF143:
	.string	"data_size"
.LASF69:
	.string	"_flags2"
.LASF163:
	.string	"bl_adc_dma_init"
.LASF92:
	.string	"__FILE"
.LASF53:
	.string	"__sFILE"
.LASF68:
	.string	"_mbstate"
.LASF107:
	.string	"_mblen_state"
.LASF75:
	.string	"_inc"
.LASF48:
	.string	"_ind"
.LASF154:
	.string	"init_adc"
.LASF80:
	.string	"__cleanup"
.LASF77:
	.string	"_unspecified_locale_info"
.LASF174:
	.string	"read_adc"
.LASF28:
	.string	"_maxwds"
.LASF170:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF97:
	.string	"_seed"
.LASF21:
	.string	"__count"
.LASF22:
	.string	"__value"
.LASF60:
	.string	"_seek"
.LASF39:
	.string	"__tm_wday"
.LASF17:
	.string	"_fpos_t"
.LASF153:
	.string	"convert_to_binary"
.LASF135:
	.string	"float"
.LASF71:
	.string	"_errno"
.LASF14:
	.string	"char"
.LASF64:
	.string	"_blksize"
.LASF138:
	.string	"mode"
.LASF52:
	.string	"_size"
.LASF0:
	.string	"unsigned int"
.LASF140:
	.string	"adc_lli"
.LASF45:
	.string	"_fntypes"
.LASF6:
	.string	"uint8_t"
.LASF148:
	.string	"read_temperature"
.LASF27:
	.string	"_next"
.LASF101:
	.string	"_strtok_last"
.LASF165:
	.string	"bl_adc_get_channel_by_gpio"
.LASF7:
	.string	"unsigned char"
.LASF99:
	.string	"_add"
.LASF24:
	.string	"__ULong"
.LASF112:
	.string	"_getdate_err"
.LASF162:
	.string	"bl_adc_init"
.LASF124:
	.string	"_global_impure_ptr"
.LASF149:
	.string	"tempe"
.LASF9:
	.string	"uint32_t"
.LASF100:
	.string	"_unused_rand"
.LASF30:
	.string	"_wds"
.LASF93:
	.string	"_glue"
.LASF18:
	.string	"_ssize_t"
.LASF110:
	.string	"_l64a_buf"
.LASF155:
	.string	"channel"
.LASF89:
	.string	"_sig_func"
.LASF142:
	.string	"chan_init_table"
.LASF70:
	.string	"_reent"
.LASF26:
	.string	"_flock_t"
.LASF63:
	.string	"_nbuf"
.LASF121:
	.string	"_unused"
.LASF41:
	.string	"__tm_isdst"
.LASF103:
	.string	"_localtime_buf"
.LASF34:
	.string	"__tm_min"
.LASF106:
	.string	"_r48"
.LASF136:
	.string	"bl_adc_cb_t"
.LASF108:
	.string	"_mbtowc_state"
.LASF83:
	.string	"_p5s"
.LASF78:
	.string	"_locale"
.LASF56:
	.string	"_lbfsize"
.LASF50:
	.string	"__sbuf"
.LASF36:
	.string	"__tm_mday"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
