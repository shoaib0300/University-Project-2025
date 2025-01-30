	.file	"get_data_from_json.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.load_room_data,"ax",@progbits
	.align	1
	.globl	load_room_data
	.type	load_room_data, @function
load_room_data:
.LFB4:
	.file 1 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/get_data_from_json.c"
	.loc 1 23 44
	.cfi_startproc
.LVL0:
	.loc 1 24 5
	.loc 1 24 18 is_stmt 0
	lui	a1,%hi(.LC0)
	.loc 1 23 44
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 24 18
	addi	a1,a1,%lo(.LC0)
	.loc 1 23 44
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 24 18
	call	fopen
.LVL1:
	.loc 1 25 5 is_stmt 1
	.loc 1 25 8 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 26 9 is_stmt 1
	.loc 1 104 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	.loc 1 26 9
	lui	a0,%hi(.LC1)
.LVL2:
	.loc 1 104 1
	.loc 1 26 9
	addi	a0,a0,%lo(.LC1)
	.loc 1 104 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 26 9
	tail	printf
.LVL3:
.L2:
	.cfi_restore_state
	.loc 1 31 5
	li	a2,2
	li	a1,0
	mv	s1,a0
	.loc 1 31 5 is_stmt 1
	call	fseek
.LVL4:
	.loc 1 32 5
	.loc 1 32 21 is_stmt 0
	mv	a0,s1
	call	ftell
.LVL5:
	mv	s0,a0
.LVL6:
	.loc 1 33 5 is_stmt 1
	mv	a0,s1
	call	rewind
.LVL7:
	.loc 1 36 5
	.loc 1 36 28 is_stmt 0
	addi	a0,s0,1
	call	malloc
.LVL8:
	mv	s2,a0
.LVL9:
	.loc 1 37 5 is_stmt 1
	.loc 1 37 8 is_stmt 0
	bne	a0,zero,.L3
	.loc 1 38 9 is_stmt 1
	lui	a0,%hi(.LC2)
.LVL10:
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL11:
	.loc 1 39 9
.L13:
	.loc 1 103 5
	.loc 1 104 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s2,16(sp)
	.cfi_restore 18
.LVL12:
	lw	s3,12(sp)
	.cfi_restore 19
	.loc 1 103 5
	mv	a0,s1
	.loc 1 104 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL13:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 103 5
	tail	fclose
.LVL14:
.L3:
	.cfi_restore_state
	.loc 1 44 5 is_stmt 1
	.loc 1 44 24 is_stmt 0
	mv	a3,s1
	mv	a2,s0
	li	a1,1
	call	fread
.LVL15:
	.loc 1 45 5 is_stmt 1
	.loc 1 45 8 is_stmt 0
	beq	s0,a0,.L4
	.loc 1 46 9 is_stmt 1
	lui	a0,%hi(.LC3)
.LVL16:
	addi	a0,a0,%lo(.LC3)
.LVL17:
.L17:
	.loc 1 56 9 is_stmt 0
	call	printf
.LVL18:
	.loc 1 57 9 is_stmt 1
.L15:
	.loc 1 102 5
	mv	a0,s2
	call	free
.LVL19:
	j	.L13
.LVL20:
.L4:
	.loc 1 51 5
	.loc 1 51 22 is_stmt 0
	add	s0,s2,s0
.LVL21:
	sb	zero,0(s0)
	.loc 1 54 5 is_stmt 1
	.loc 1 54 19 is_stmt 0
	mv	a0,s2
.LVL22:
	call	cJSON_Parse
.LVL23:
	mv	s3,a0
.LVL24:
	.loc 1 55 5 is_stmt 1
	.loc 1 55 8 is_stmt 0
	bne	a0,zero,.L5
	.loc 1 56 9 is_stmt 1
	lui	a0,%hi(.LC4)
.LVL25:
	addi	a0,a0,%lo(.LC4)
	j	.L17
.LVL26:
.L5:
	.loc 1 63 5
	.loc 1 63 20 is_stmt 0
	lui	a1,%hi(.LC5)
	addi	a1,a1,%lo(.LC5)
	call	cJSON_GetObjectItem
.LVL27:
	mv	s0,a0
.LVL28:
	.loc 1 64 5 is_stmt 1
	.loc 1 64 8 is_stmt 0
	bne	a0,zero,.L6
.L7:
	.loc 1 65 9 is_stmt 1
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
.LVL29:
.L16:
	.loc 1 75 9 is_stmt 0
	call	printf
.LVL30:
	.loc 1 76 9 is_stmt 1
.L14:
	.loc 1 101 5
	mv	a0,s3
	call	cJSON_Delete
.LVL31:
	j	.L15
.LVL32:
.L6:
	.loc 1 64 26 is_stmt 0 discriminator 1
	call	cJSON_IsArray
.LVL33:
	.loc 1 64 22 discriminator 1
	beq	a0,zero,.L7
	.loc 1 73 5 is_stmt 1
	.loc 1 73 24 is_stmt 0
	mv	a0,s0
	li	a1,0
	call	cJSON_GetArrayItem
.LVL34:
	mv	s0,a0
.LVL35:
	.loc 1 74 5 is_stmt 1
	.loc 1 74 8 is_stmt 0
	bne	a0,zero,.L8
	.loc 1 75 9 is_stmt 1
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	j	.L16
.L8:
	.loc 1 83 5
	.loc 1 83 15 is_stmt 0
	lui	a1,%hi(.LC8)
	addi	a1,a1,%lo(.LC8)
	call	cJSON_GetObjectItem
.LVL36:
	.loc 1 83 13
	lw	a4,20(a0)
	.loc 1 86 24
	lui	a1,%hi(.LC9)
	.loc 1 83 13
	lui	a5,%hi(room_id)
	.loc 1 86 24
	addi	a1,a1,%lo(.LC9)
	mv	a0,s0
	.loc 1 83 13
	sw	a4,%lo(room_id)(a5)
	.loc 1 86 5 is_stmt 1
	.loc 1 86 24 is_stmt 0
	call	cJSON_GetObjectItem
.LVL37:
	.loc 1 86 17
	lw	a0,16(a0)
	call	strdup
.LVL38:
	.loc 1 86 15
	lui	a5,%hi(room_name)
	.loc 1 87 25
	lui	a1,%hi(.LC10)
	.loc 1 86 15
	sw	a0,%lo(room_name)(a5)
	.loc 1 87 5 is_stmt 1
	.loc 1 87 25 is_stmt 0
	addi	a1,a1,%lo(.LC10)
	mv	a0,s0
	call	cJSON_GetObjectItem
.LVL39:
	.loc 1 87 18
	lw	a0,16(a0)
	call	strdup
.LVL40:
	.loc 1 87 16
	lui	a5,%hi(room_floor)
	.loc 1 88 28
	lui	a1,%hi(.LC11)
	.loc 1 87 16
	sw	a0,%lo(room_floor)(a5)
	.loc 1 88 5 is_stmt 1
	.loc 1 88 28 is_stmt 0
	addi	a1,a1,%lo(.LC11)
	mv	a0,s0
	call	cJSON_GetObjectItem
.LVL41:
	.loc 1 88 21
	lw	a0,16(a0)
	call	strdup
.LVL42:
	.loc 1 88 19
	lui	a5,%hi(room_building)
	.loc 1 89 24
	lui	a1,%hi(.LC12)
	.loc 1 88 19
	sw	a0,%lo(room_building)(a5)
	.loc 1 89 5 is_stmt 1
	.loc 1 89 24 is_stmt 0
	addi	a1,a1,%lo(.LC12)
	mv	a0,s0
	call	cJSON_GetObjectItem
.LVL43:
	.loc 1 89 22
	lw	a2,24(a0)
	lw	a3,28(a0)
	.loc 1 90 21
	lui	a1,%hi(.LC13)
	.loc 1 89 22
	lui	a5,%hi(room_temperature)
	.loc 1 90 21
	addi	a1,a1,%lo(.LC13)
	mv	a0,s0
	.loc 1 89 22
	sw	a2,%lo(room_temperature)(a5)
	sw	a3,%lo(room_temperature+4)(a5)
	.loc 1 90 5 is_stmt 1
	.loc 1 90 21 is_stmt 0
	call	cJSON_GetObjectItem
.LVL44:
	.loc 1 90 19
	lw	a4,20(a0)
	.loc 1 91 20
	lui	a1,%hi(.LC14)
	.loc 1 90 19
	lui	a5,%hi(room_humidity)
	.loc 1 91 20
	addi	a1,a1,%lo(.LC14)
	mv	a0,s0
	.loc 1 90 19
	sw	a4,%lo(room_humidity)(a5)
	.loc 1 91 5 is_stmt 1
	.loc 1 91 20 is_stmt 0
	call	cJSON_GetObjectItem
.LVL45:
	.loc 1 91 18
	lw	a4,20(a0)
	.loc 1 92 14
	lui	a1,%hi(.LC15)
	.loc 1 91 18
	lui	a5,%hi(room_lightOn)
	.loc 1 92 14
	addi	a1,a1,%lo(.LC15)
	mv	a0,s0
	.loc 1 91 18
	sw	a4,%lo(room_lightOn)(a5)
	.loc 1 92 1 is_stmt 1
	.loc 1 92 14 is_stmt 0
	call	cJSON_GetObjectItem
.LVL46:
	.loc 1 92 12
	lw	a4,20(a0)
	.loc 1 93 19
	lui	a1,%hi(.LC16)
	.loc 1 92 12
	lui	a5,%hi(room_fanOn)
	.loc 1 93 19
	addi	a1,a1,%lo(.LC16)
	mv	a0,s0
	.loc 1 92 12
	sw	a4,%lo(room_fanOn)(a5)
	.loc 1 93 5 is_stmt 1
	.loc 1 93 19 is_stmt 0
	call	cJSON_GetObjectItem
.LVL47:
	.loc 1 93 17
	lw	a4,20(a0)
	.loc 1 94 35
	lui	a1,%hi(.LC17)
	.loc 1 93 17
	lui	a5,%hi(room_active)
	.loc 1 94 35
	addi	a1,a1,%lo(.LC17)
	mv	a0,s0
	.loc 1 93 17
	sw	a4,%lo(room_active)(a5)
	.loc 1 94 5 is_stmt 1
	.loc 1 94 35 is_stmt 0
	call	cJSON_GetObjectItem
.LVL48:
	.loc 1 94 28
	lw	a0,16(a0)
	call	strdup
.LVL49:
	.loc 1 94 26
	lui	a5,%hi(room_temperatureUnit)
	.loc 1 95 20
	lui	a1,%hi(.LC18)
	.loc 1 94 26
	sw	a0,%lo(room_temperatureUnit)(a5)
	.loc 1 95 5 is_stmt 1
	.loc 1 95 20 is_stmt 0
	addi	a1,a1,%lo(.LC18)
	mv	a0,s0
	call	cJSON_GetObjectItem
.LVL50:
	.loc 1 95 18
	lw	a4,20(a0)
	.loc 1 96 20
	lui	a1,%hi(.LC19)
	.loc 1 95 18
	lui	a5,%hi(room_minTemp)
	.loc 1 96 20
	addi	a1,a1,%lo(.LC19)
	mv	a0,s0
	.loc 1 95 18
	sw	a4,%lo(room_minTemp)(a5)
	.loc 1 96 5 is_stmt 1
	.loc 1 96 20 is_stmt 0
	call	cJSON_GetObjectItem
.LVL51:
	.loc 1 96 18
	lw	a4,20(a0)
	.loc 1 97 19
	lui	a1,%hi(.LC20)
	.loc 1 96 18
	lui	a5,%hi(room_maxTemp)
	.loc 1 97 19
	addi	a1,a1,%lo(.LC20)
	mv	a0,s0
	.loc 1 96 18
	sw	a4,%lo(room_maxTemp)(a5)
	.loc 1 97 5 is_stmt 1
	.loc 1 97 19 is_stmt 0
	call	cJSON_GetObjectItem
.LVL52:
	.loc 1 97 17
	lw	a4,20(a0)
	.loc 1 98 19
	lui	a1,%hi(.LC21)
	.loc 1 97 17
	lui	a5,%hi(room_minHum)
	.loc 1 98 19
	addi	a1,a1,%lo(.LC21)
	mv	a0,s0
	.loc 1 97 17
	sw	a4,%lo(room_minHum)(a5)
	.loc 1 98 5 is_stmt 1
	.loc 1 98 19 is_stmt 0
	call	cJSON_GetObjectItem
.LVL53:
	.loc 1 98 17
	lw	a4,20(a0)
	lui	a5,%hi(room_maxHum)
	sw	a4,%lo(room_maxHum)(a5)
	j	.L14
	.cfi_endproc
.LFE4:
	.size	load_room_data, .-load_room_data
	.comm	room_maxHum,4,4
	.comm	room_minHum,4,4
	.comm	room_maxTemp,4,4
	.comm	room_minTemp,4,4
	.comm	room_temperatureUnit,4,4
	.comm	room_active,4,4
	.comm	room_fanOn,4,4
	.comm	room_lightOn,4,4
	.comm	room_humidity,4,4
	.comm	room_temperature,8,8
	.comm	room_building,4,4
	.comm	room_floor,4,4
	.comm	room_name,4,4
	.comm	room_id,4,4
	.section	.rodata.load_room_data.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"r"
	.zero	2
.LC1:
	.string	"Error: Unable to open file.\n"
	.zero	3
.LC2:
	.string	"Memory allocation failed.\n"
	.zero	1
.LC3:
	.string	"Error: Unable to read the entire file.\n"
.LC4:
	.string	"Error: Unable to parse JSON.\n"
	.zero	2
.LC5:
	.string	"rooms"
	.zero	2
.LC6:
	.string	"Error: No rooms found in JSON.\n"
.LC7:
	.string	"Error: No first room found.\n"
	.zero	3
.LC8:
	.string	"id"
	.zero	1
.LC9:
	.string	"name"
	.zero	3
.LC10:
	.string	"floor"
	.zero	2
.LC11:
	.string	"building"
	.zero	3
.LC12:
	.string	"temperature"
.LC13:
	.string	"humidity"
	.zero	3
.LC14:
	.string	"lightOn"
.LC15:
	.string	"fanOn"
	.zero	2
.LC16:
	.string	"active"
	.zero	1
.LC17:
	.string	"temperatureUnit"
.LC18:
	.string	"minTemp"
.LC19:
	.string	"maxTemp"
.LC20:
	.string	"minHum"
	.zero	1
.LC21:
	.string	"maxHum"
	.text
.Letext0:
	.file 2 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 3 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 4 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 5 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 6 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 7 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 8 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/cJSON.h"
	.file 9 "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/room_data.h"
	.file 10 "/home/shoaib/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf84
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF168
	.byte	0xc
	.4byte	.LASF169
	.4byte	.LASF170
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x64
	.byte	0x5
	.4byte	.LASF10
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x64
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2e
	.byte	0xe
	.4byte	0x41
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x74
	.byte	0xe
	.4byte	0x41
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x93
	.byte	0x14
	.4byte	0x5d
	.byte	0x6
	.byte	0x4
	.byte	0x3
	.byte	0xa5
	.byte	0x3
	.4byte	0xca
	.byte	0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0xa7
	.byte	0xc
	.4byte	0x77
	.byte	0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0xa8
	.byte	0x13
	.4byte	0xca
	.byte	0
	.byte	0x8
	.4byte	0x2c
	.4byte	0xda
	.byte	0x9
	.4byte	0x64
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x3
	.byte	0xa2
	.byte	0x9
	.4byte	0xfe
	.byte	0xb
	.4byte	.LASF16
	.byte	0x3
	.byte	0xa4
	.byte	0x7
	.4byte	0x5d
	.byte	0
	.byte	0xb
	.4byte	.LASF17
	.byte	0x3
	.byte	0xa9
	.byte	0x5
	.4byte	0xa8
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0xaa
	.byte	0x3
	.4byte	0xda
	.byte	0xc
	.byte	0x4
	.byte	0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x16
	.byte	0x17
	.4byte	0x48
	.byte	0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0xc
	.byte	0xd
	.4byte	0x5d
	.byte	0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x23
	.byte	0x1b
	.4byte	0x118
	.byte	0xd
	.4byte	.LASF26
	.byte	0x18
	.byte	0x4
	.byte	0x34
	.byte	0x8
	.4byte	0x18a
	.byte	0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x36
	.byte	0x13
	.4byte	0x18a
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x4
	.byte	0x37
	.byte	0x7
	.4byte	0x5d
	.byte	0x4
	.byte	0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0x37
	.byte	0xb
	.4byte	0x5d
	.byte	0x8
	.byte	0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x5d
	.byte	0xc
	.byte	0xb
	.4byte	.LASF25
	.byte	0x4
	.byte	0x37
	.byte	0x1b
	.4byte	0x5d
	.byte	0x10
	.byte	0xe
	.string	"_x"
	.byte	0x4
	.byte	0x38
	.byte	0xb
	.4byte	0x190
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x130
	.byte	0x8
	.4byte	0x10c
	.4byte	0x1a0
	.byte	0x9
	.4byte	0x64
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF27
	.byte	0x24
	.byte	0x4
	.byte	0x3c
	.byte	0x8
	.4byte	0x223
	.byte	0xb
	.4byte	.LASF28
	.byte	0x4
	.byte	0x3e
	.byte	0x7
	.4byte	0x5d
	.byte	0
	.byte	0xb
	.4byte	.LASF29
	.byte	0x4
	.byte	0x3f
	.byte	0x7
	.4byte	0x5d
	.byte	0x4
	.byte	0xb
	.4byte	.LASF30
	.byte	0x4
	.byte	0x40
	.byte	0x7
	.4byte	0x5d
	.byte	0x8
	.byte	0xb
	.4byte	.LASF31
	.byte	0x4
	.byte	0x41
	.byte	0x7
	.4byte	0x5d
	.byte	0xc
	.byte	0xb
	.4byte	.LASF32
	.byte	0x4
	.byte	0x42
	.byte	0x7
	.4byte	0x5d
	.byte	0x10
	.byte	0xb
	.4byte	.LASF33
	.byte	0x4
	.byte	0x43
	.byte	0x7
	.4byte	0x5d
	.byte	0x14
	.byte	0xb
	.4byte	.LASF34
	.byte	0x4
	.byte	0x44
	.byte	0x7
	.4byte	0x5d
	.byte	0x18
	.byte	0xb
	.4byte	.LASF35
	.byte	0x4
	.byte	0x45
	.byte	0x7
	.4byte	0x5d
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF36
	.byte	0x4
	.byte	0x46
	.byte	0x7
	.4byte	0x5d
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF37
	.2byte	0x108
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.4byte	0x268
	.byte	0xb
	.4byte	.LASF38
	.byte	0x4
	.byte	0x50
	.byte	0x9
	.4byte	0x268
	.byte	0
	.byte	0xb
	.4byte	.LASF39
	.byte	0x4
	.byte	0x51
	.byte	0x9
	.4byte	0x268
	.byte	0x80
	.byte	0x11
	.4byte	.LASF40
	.byte	0x4
	.byte	0x53
	.byte	0xa
	.4byte	0x10c
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF41
	.byte	0x4
	.byte	0x56
	.byte	0xa
	.4byte	0x10c
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x10a
	.4byte	0x278
	.byte	0x9
	.4byte	0x64
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF42
	.2byte	0x190
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.4byte	0x2bb
	.byte	0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x63
	.byte	0x12
	.4byte	0x2bb
	.byte	0
	.byte	0xb
	.4byte	.LASF43
	.byte	0x4
	.byte	0x64
	.byte	0x6
	.4byte	0x5d
	.byte	0x4
	.byte	0xb
	.4byte	.LASF44
	.byte	0x4
	.byte	0x66
	.byte	0x9
	.4byte	0x2c1
	.byte	0x8
	.byte	0xb
	.4byte	.LASF37
	.byte	0x4
	.byte	0x67
	.byte	0x1e
	.4byte	0x223
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x278
	.byte	0x8
	.4byte	0x2d1
	.4byte	0x2d1
	.byte	0x9
	.4byte	0x64
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2d7
	.byte	0x12
	.byte	0xd
	.4byte	.LASF45
	.byte	0x8
	.byte	0x4
	.byte	0x7a
	.byte	0x8
	.4byte	0x300
	.byte	0xb
	.4byte	.LASF46
	.byte	0x4
	.byte	0x7b
	.byte	0x11
	.4byte	0x300
	.byte	0
	.byte	0xb
	.4byte	.LASF47
	.byte	0x4
	.byte	0x7c
	.byte	0x6
	.4byte	0x5d
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.4byte	.LASF48
	.byte	0x68
	.byte	0x4
	.byte	0xba
	.byte	0x8
	.4byte	0x449
	.byte	0xe
	.string	"_p"
	.byte	0x4
	.byte	0xbb
	.byte	0x12
	.4byte	0x300
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x4
	.byte	0xbc
	.byte	0x7
	.4byte	0x5d
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x4
	.byte	0xbd
	.byte	0x7
	.4byte	0x5d
	.byte	0x8
	.byte	0xb
	.4byte	.LASF49
	.byte	0x4
	.byte	0xbe
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.byte	0xb
	.4byte	.LASF50
	.byte	0x4
	.byte	0xbf
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x4
	.byte	0xc0
	.byte	0x11
	.4byte	0x2d8
	.byte	0x10
	.byte	0xb
	.4byte	.LASF51
	.byte	0x4
	.byte	0xc1
	.byte	0x7
	.4byte	0x5d
	.byte	0x18
	.byte	0xb
	.4byte	.LASF52
	.byte	0x4
	.byte	0xc8
	.byte	0xa
	.4byte	0x10a
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF53
	.byte	0x4
	.byte	0xca
	.byte	0xe
	.4byte	0x5cd
	.byte	0x20
	.byte	0xb
	.4byte	.LASF54
	.byte	0x4
	.byte	0xcc
	.byte	0xe
	.4byte	0x5f7
	.byte	0x24
	.byte	0xb
	.4byte	.LASF55
	.byte	0x4
	.byte	0xcf
	.byte	0xd
	.4byte	0x61b
	.byte	0x28
	.byte	0xb
	.4byte	.LASF56
	.byte	0x4
	.byte	0xd0
	.byte	0x9
	.4byte	0x635
	.byte	0x2c
	.byte	0xe
	.string	"_ub"
	.byte	0x4
	.byte	0xd3
	.byte	0x11
	.4byte	0x2d8
	.byte	0x30
	.byte	0xe
	.string	"_up"
	.byte	0x4
	.byte	0xd4
	.byte	0x12
	.4byte	0x300
	.byte	0x38
	.byte	0xe
	.string	"_ur"
	.byte	0x4
	.byte	0xd5
	.byte	0x7
	.4byte	0x5d
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF57
	.byte	0x4
	.byte	0xd8
	.byte	0x11
	.4byte	0x63b
	.byte	0x40
	.byte	0xb
	.4byte	.LASF58
	.byte	0x4
	.byte	0xd9
	.byte	0x11
	.4byte	0x64b
	.byte	0x43
	.byte	0xe
	.string	"_lb"
	.byte	0x4
	.byte	0xdc
	.byte	0x11
	.4byte	0x2d8
	.byte	0x44
	.byte	0xb
	.4byte	.LASF59
	.byte	0x4
	.byte	0xdf
	.byte	0x7
	.4byte	0x5d
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF60
	.byte	0x4
	.byte	0xe0
	.byte	0xa
	.4byte	0x84
	.byte	0x50
	.byte	0xb
	.4byte	.LASF61
	.byte	0x4
	.byte	0xe3
	.byte	0x12
	.4byte	0x467
	.byte	0x54
	.byte	0xb
	.4byte	.LASF62
	.byte	0x4
	.byte	0xe7
	.byte	0xc
	.4byte	0x124
	.byte	0x58
	.byte	0xb
	.4byte	.LASF63
	.byte	0x4
	.byte	0xe9
	.byte	0xe
	.4byte	0xfe
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF64
	.byte	0x4
	.byte	0xea
	.byte	0x7
	.4byte	0x5d
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0x9c
	.4byte	0x467
	.byte	0x14
	.4byte	0x467
	.byte	0x14
	.4byte	0x10a
	.byte	0x14
	.4byte	0x5bb
	.byte	0x14
	.4byte	0x5d
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x472
	.byte	0x15
	.4byte	0x467
	.byte	0x16
	.4byte	.LASF65
	.2byte	0x428
	.byte	0x4
	.2byte	0x265
	.byte	0x8
	.4byte	0x5bb
	.byte	0x17
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x267
	.byte	0x7
	.4byte	0x5d
	.byte	0
	.byte	0x17
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6a7
	.byte	0x4
	.byte	0x17
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6a7
	.byte	0x8
	.byte	0x17
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6a7
	.byte	0xc
	.byte	0x17
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x26e
	.byte	0x7
	.4byte	0x5d
	.byte	0x10
	.byte	0x17
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8a7
	.byte	0x14
	.byte	0x17
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x272
	.byte	0x7
	.4byte	0x5d
	.byte	0x30
	.byte	0x17
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x273
	.byte	0x16
	.4byte	0x8bc
	.byte	0x34
	.byte	0x17
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x275
	.byte	0x7
	.4byte	0x5d
	.byte	0x38
	.byte	0x17
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x277
	.byte	0xa
	.4byte	0x8cd
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x27a
	.byte	0x13
	.4byte	0x18a
	.byte	0x40
	.byte	0x17
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x27b
	.byte	0x7
	.4byte	0x5d
	.byte	0x44
	.byte	0x17
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x27c
	.byte	0x13
	.4byte	0x18a
	.byte	0x48
	.byte	0x17
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8d3
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x280
	.byte	0x7
	.4byte	0x5d
	.byte	0x50
	.byte	0x17
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x281
	.byte	0x9
	.4byte	0x5bb
	.byte	0x54
	.byte	0x17
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x882
	.byte	0x58
	.byte	0x18
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2bb
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x278
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x8e4
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x668
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x8f0
	.2byte	0x2ec
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5c1
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF87
	.byte	0x15
	.4byte	0x5c1
	.byte	0xf
	.byte	0x4
	.4byte	0x449
	.byte	0x13
	.4byte	0x9c
	.4byte	0x5f1
	.byte	0x14
	.4byte	0x467
	.byte	0x14
	.4byte	0x10a
	.byte	0x14
	.4byte	0x5f1
	.byte	0x14
	.4byte	0x5d
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5c8
	.byte	0xf
	.byte	0x4
	.4byte	0x5d3
	.byte	0x13
	.4byte	0x90
	.4byte	0x61b
	.byte	0x14
	.4byte	0x467
	.byte	0x14
	.4byte	0x10a
	.byte	0x14
	.4byte	0x90
	.byte	0x14
	.4byte	0x5d
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5fd
	.byte	0x13
	.4byte	0x5d
	.4byte	0x635
	.byte	0x14
	.4byte	0x467
	.byte	0x14
	.4byte	0x10a
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x621
	.byte	0x8
	.4byte	0x2c
	.4byte	0x64b
	.byte	0x9
	.4byte	0x64
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x2c
	.4byte	0x65b
	.byte	0x9
	.4byte	0x64
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x124
	.byte	0x18
	.4byte	0x306
	.byte	0x19
	.4byte	.LASF89
	.byte	0xc
	.byte	0x4
	.2byte	0x128
	.byte	0x8
	.4byte	0x6a1
	.byte	0x17
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6a1
	.byte	0
	.byte	0x17
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x12b
	.byte	0x7
	.4byte	0x5d
	.byte	0x4
	.byte	0x17
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6a7
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x668
	.byte	0xf
	.byte	0x4
	.4byte	0x65b
	.byte	0x19
	.4byte	.LASF92
	.byte	0xe
	.byte	0x4
	.2byte	0x144
	.byte	0x8
	.4byte	0x6e6
	.byte	0x17
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x145
	.byte	0x12
	.4byte	0x6e6
	.byte	0
	.byte	0x17
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x146
	.byte	0x12
	.4byte	0x6e6
	.byte	0x6
	.byte	0x17
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x147
	.byte	0x12
	.4byte	0x3a
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x3a
	.4byte	0x6f6
	.byte	0x9
	.4byte	0x64
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x4
	.2byte	0x285
	.byte	0x7
	.4byte	0x80b
	.byte	0x17
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x287
	.byte	0x18
	.4byte	0x64
	.byte	0
	.byte	0x17
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x288
	.byte	0x12
	.4byte	0x5bb
	.byte	0x4
	.byte	0x17
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x289
	.byte	0x10
	.4byte	0x80b
	.byte	0x8
	.byte	0x17
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1a0
	.byte	0x24
	.byte	0x17
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x28b
	.byte	0xf
	.4byte	0x5d
	.byte	0x48
	.byte	0x17
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x56
	.byte	0x50
	.byte	0x17
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6ad
	.byte	0x58
	.byte	0x17
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x28e
	.byte	0x16
	.4byte	0xfe
	.byte	0x68
	.byte	0x17
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x28f
	.byte	0x16
	.4byte	0xfe
	.byte	0x70
	.byte	0x17
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x290
	.byte	0x16
	.4byte	0xfe
	.byte	0x78
	.byte	0x17
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x291
	.byte	0x10
	.4byte	0x81b
	.byte	0x80
	.byte	0x17
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x292
	.byte	0x10
	.4byte	0x82b
	.byte	0x88
	.byte	0x17
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x293
	.byte	0xf
	.4byte	0x5d
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x294
	.byte	0x16
	.4byte	0xfe
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x295
	.byte	0x16
	.4byte	0xfe
	.byte	0xac
	.byte	0x17
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x296
	.byte	0x16
	.4byte	0xfe
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x297
	.byte	0x16
	.4byte	0xfe
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x298
	.byte	0x16
	.4byte	0xfe
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x299
	.byte	0x8
	.4byte	0x5d
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x5c1
	.4byte	0x81b
	.byte	0x9
	.4byte	0x64
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x5c1
	.4byte	0x82b
	.byte	0x9
	.4byte	0x64
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x5c1
	.4byte	0x83b
	.byte	0x9
	.4byte	0x64
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x4
	.2byte	0x29e
	.byte	0x7
	.4byte	0x862
	.byte	0x17
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x862
	.byte	0
	.byte	0x17
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x872
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x300
	.4byte	0x872
	.byte	0x9
	.4byte	0x64
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x64
	.4byte	0x882
	.byte	0x9
	.4byte	0x64
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x4
	.2byte	0x283
	.byte	0x3
	.4byte	0x8a7
	.byte	0x1c
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x29a
	.byte	0xb
	.4byte	0x6f6
	.byte	0x1c
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x83b
	.byte	0
	.byte	0x8
	.4byte	0x5c1
	.4byte	0x8b7
	.byte	0x9
	.4byte	0x64
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF171
	.byte	0xf
	.byte	0x4
	.4byte	0x8b7
	.byte	0x1e
	.4byte	0x8cd
	.byte	0x14
	.4byte	0x467
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8c2
	.byte	0xf
	.byte	0x4
	.4byte	0x18a
	.byte	0x1e
	.4byte	0x8e4
	.byte	0x14
	.4byte	0x5d
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8ea
	.byte	0xf
	.byte	0x4
	.4byte	0x8d9
	.byte	0x8
	.4byte	0x65b
	.4byte	0x900
	.byte	0x9
	.4byte	0x64
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF118
	.byte	0x4
	.2byte	0x333
	.byte	0x17
	.4byte	0x467
	.byte	0x1f
	.4byte	.LASF119
	.byte	0x4
	.2byte	0x334
	.byte	0x1d
	.4byte	0x46d
	.byte	0x4
	.4byte	.LASF120
	.byte	0x6
	.byte	0x42
	.byte	0x10
	.4byte	0x65b
	.byte	0x20
	.4byte	.LASF121
	.byte	0x7
	.byte	0x67
	.byte	0xe
	.4byte	0x5bb
	.byte	0xd
	.4byte	.LASF122
	.byte	0x28
	.byte	0x8
	.byte	0x67
	.byte	0x10
	.4byte	0x9a8
	.byte	0xb
	.4byte	.LASF123
	.byte	0x8
	.byte	0x6a
	.byte	0x13
	.4byte	0x9a8
	.byte	0
	.byte	0xb
	.4byte	.LASF124
	.byte	0x8
	.byte	0x6b
	.byte	0x13
	.4byte	0x9a8
	.byte	0x4
	.byte	0xb
	.4byte	.LASF125
	.byte	0x8
	.byte	0x6d
	.byte	0x13
	.4byte	0x9a8
	.byte	0x8
	.byte	0xb
	.4byte	.LASF126
	.byte	0x8
	.byte	0x70
	.byte	0x9
	.4byte	0x5d
	.byte	0xc
	.byte	0xb
	.4byte	.LASF127
	.byte	0x8
	.byte	0x73
	.byte	0xb
	.4byte	0x5bb
	.byte	0x10
	.byte	0xb
	.4byte	.LASF128
	.byte	0x8
	.byte	0x75
	.byte	0x9
	.4byte	0x5d
	.byte	0x14
	.byte	0xb
	.4byte	.LASF129
	.byte	0x8
	.byte	0x77
	.byte	0xc
	.4byte	0x9ae
	.byte	0x18
	.byte	0xb
	.4byte	.LASF130
	.byte	0x8
	.byte	0x7a
	.byte	0xb
	.4byte	0x5bb
	.byte	0x20
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x932
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF131
	.byte	0x4
	.4byte	.LASF122
	.byte	0x8
	.byte	0x7b
	.byte	0x3
	.4byte	0x932
	.byte	0x20
	.4byte	.LASF132
	.byte	0x9
	.byte	0x4
	.byte	0xc
	.4byte	0x5d
	.byte	0x20
	.4byte	.LASF133
	.byte	0x9
	.byte	0x5
	.byte	0xe
	.4byte	0x5bb
	.byte	0x20
	.4byte	.LASF134
	.byte	0x9
	.byte	0x6
	.byte	0xe
	.4byte	0x5bb
	.byte	0x20
	.4byte	.LASF135
	.byte	0x9
	.byte	0x7
	.byte	0xe
	.4byte	0x5bb
	.byte	0x20
	.4byte	.LASF136
	.byte	0x9
	.byte	0x8
	.byte	0xf
	.4byte	0x9ae
	.byte	0x20
	.4byte	.LASF137
	.byte	0x9
	.byte	0x9
	.byte	0xc
	.4byte	0x5d
	.byte	0x20
	.4byte	.LASF138
	.byte	0x9
	.byte	0xa
	.byte	0xc
	.4byte	0x5d
	.byte	0x20
	.4byte	.LASF139
	.byte	0x9
	.byte	0xb
	.byte	0xc
	.4byte	0x5d
	.byte	0x20
	.4byte	.LASF140
	.byte	0x9
	.byte	0xc
	.byte	0xc
	.4byte	0x5d
	.byte	0x20
	.4byte	.LASF141
	.byte	0x9
	.byte	0xd
	.byte	0xe
	.4byte	0x5bb
	.byte	0x20
	.4byte	.LASF142
	.byte	0x9
	.byte	0xe
	.byte	0xc
	.4byte	0x5d
	.byte	0x20
	.4byte	.LASF143
	.byte	0x9
	.byte	0xf
	.byte	0xc
	.4byte	0x5d
	.byte	0x20
	.4byte	.LASF144
	.byte	0x9
	.byte	0x10
	.byte	0xc
	.4byte	0x5d
	.byte	0x20
	.4byte	.LASF145
	.byte	0x9
	.byte	0x11
	.byte	0xc
	.4byte	0x5d
	.byte	0x21
	.4byte	0x9c1
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	room_id
	.byte	0x21
	.4byte	0x9cd
	.byte	0x1
	.byte	0x9
	.byte	0x7
	.byte	0x5
	.byte	0x3
	.4byte	room_name
	.byte	0x21
	.4byte	0x9d9
	.byte	0x1
	.byte	0xa
	.byte	0x7
	.byte	0x5
	.byte	0x3
	.4byte	room_floor
	.byte	0x21
	.4byte	0x9e5
	.byte	0x1
	.byte	0xb
	.byte	0x7
	.byte	0x5
	.byte	0x3
	.4byte	room_building
	.byte	0x21
	.4byte	0x9f1
	.byte	0x1
	.byte	0xc
	.byte	0x8
	.byte	0x5
	.byte	0x3
	.4byte	room_temperature
	.byte	0x21
	.4byte	0x9fd
	.byte	0x1
	.byte	0xd
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	room_humidity
	.byte	0x21
	.4byte	0xa09
	.byte	0x1
	.byte	0xe
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	room_lightOn
	.byte	0x21
	.4byte	0xa15
	.byte	0x1
	.byte	0xf
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	room_fanOn
	.byte	0x21
	.4byte	0xa21
	.byte	0x1
	.byte	0x10
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	room_active
	.byte	0x21
	.4byte	0xa2d
	.byte	0x1
	.byte	0x11
	.byte	0x7
	.byte	0x5
	.byte	0x3
	.4byte	room_temperatureUnit
	.byte	0x21
	.4byte	0xa39
	.byte	0x1
	.byte	0x12
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	room_minTemp
	.byte	0x21
	.4byte	0xa45
	.byte	0x1
	.byte	0x13
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	room_maxTemp
	.byte	0x21
	.4byte	0xa51
	.byte	0x1
	.byte	0x14
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	room_minHum
	.byte	0x21
	.4byte	0xa5d
	.byte	0x1
	.byte	0x15
	.byte	0x5
	.byte	0x5
	.byte	0x3
	.4byte	room_maxHum
	.byte	0x22
	.4byte	.LASF172
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xec7
	.byte	0x23
	.4byte	.LASF173
	.byte	0x1
	.byte	0x17
	.byte	0x21
	.4byte	0x5f1
	.4byte	.LLST0
	.byte	0x24
	.4byte	.LASF146
	.byte	0x1
	.byte	0x18
	.byte	0xb
	.4byte	0xec7
	.4byte	.LLST1
	.byte	0x24
	.4byte	.LASF147
	.byte	0x1
	.byte	0x20
	.byte	0xa
	.4byte	0x41
	.4byte	.LLST2
	.byte	0x24
	.4byte	.LASF148
	.byte	0x1
	.byte	0x24
	.byte	0xb
	.4byte	0x5bb
	.4byte	.LLST3
	.byte	0x24
	.4byte	.LASF149
	.byte	0x1
	.byte	0x2c
	.byte	0xc
	.4byte	0x6b
	.4byte	.LLST4
	.byte	0x24
	.4byte	.LASF150
	.byte	0x1
	.byte	0x36
	.byte	0xc
	.4byte	0xecd
	.4byte	.LLST5
	.byte	0x24
	.4byte	.LASF151
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.4byte	0xecd
	.4byte	.LLST6
	.byte	0x25
	.4byte	.LASF152
	.byte	0x1
	.byte	0x49
	.byte	0xc
	.4byte	0xecd
	.byte	0x1
	.byte	0x58
	.byte	0x26
	.4byte	.LVL1
	.4byte	0xed3
	.4byte	0xbdf
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x28
	.4byte	.LVL3
	.4byte	0xedf
	.4byte	0xbf6
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x26
	.4byte	.LVL4
	.4byte	0xeeb
	.4byte	0xc14
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x26
	.4byte	.LVL5
	.4byte	0xef7
	.4byte	0xc28
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL7
	.4byte	0xf03
	.4byte	0xc3c
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL8
	.4byte	0xf0f
	.4byte	0xc50
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.byte	0
	.byte	0x26
	.4byte	.LVL11
	.4byte	0xedf
	.4byte	0xc67
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x29
	.4byte	.LVL14
	.4byte	0xf1b
	.byte	0x26
	.4byte	.LVL15
	.4byte	0xf27
	.4byte	0xc8f
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL18
	.4byte	0xedf
	.byte	0x26
	.4byte	.LVL19
	.4byte	0xf33
	.4byte	0xcac
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL23
	.4byte	0xf3f
	.4byte	0xcc0
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL27
	.4byte	0xf4b
	.4byte	0xcd7
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x2a
	.4byte	.LVL30
	.4byte	0xedf
	.byte	0x26
	.4byte	.LVL31
	.4byte	0xf57
	.4byte	0xcf4
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL33
	.4byte	0xf63
	.byte	0x26
	.4byte	.LVL34
	.4byte	0xf6f
	.4byte	0xd16
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x26
	.4byte	.LVL36
	.4byte	0xf4b
	.4byte	0xd2d
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x26
	.4byte	.LVL37
	.4byte	0xf4b
	.4byte	0xd4a
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x2a
	.4byte	.LVL38
	.4byte	0xf7b
	.byte	0x26
	.4byte	.LVL39
	.4byte	0xf4b
	.4byte	0xd70
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x2a
	.4byte	.LVL40
	.4byte	0xf7b
	.byte	0x26
	.4byte	.LVL41
	.4byte	0xf4b
	.4byte	0xd96
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x2a
	.4byte	.LVL42
	.4byte	0xf7b
	.byte	0x26
	.4byte	.LVL43
	.4byte	0xf4b
	.4byte	0xdbc
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x26
	.4byte	.LVL44
	.4byte	0xf4b
	.4byte	0xdd9
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x26
	.4byte	.LVL45
	.4byte	0xf4b
	.4byte	0xdf6
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x26
	.4byte	.LVL46
	.4byte	0xf4b
	.4byte	0xe13
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x26
	.4byte	.LVL47
	.4byte	0xf4b
	.4byte	0xe30
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x26
	.4byte	.LVL48
	.4byte	0xf4b
	.4byte	0xe4d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0x2a
	.4byte	.LVL49
	.4byte	0xf7b
	.byte	0x26
	.4byte	.LVL50
	.4byte	0xf4b
	.4byte	0xe73
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0x26
	.4byte	.LVL51
	.4byte	0xf4b
	.4byte	0xe90
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0x26
	.4byte	.LVL52
	.4byte	0xf4b
	.4byte	0xead
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0x2b
	.4byte	.LVL53
	.4byte	0xf4b
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x91a
	.byte	0xf
	.byte	0x4
	.4byte	0x9b5
	.byte	0x2c
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x6
	.byte	0xf3
	.byte	0x8
	.byte	0x2c
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x6
	.byte	0xc8
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x6
	.byte	0xe6
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x6
	.byte	0xec
	.byte	0x6
	.byte	0x2c
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x6
	.byte	0xed
	.byte	0x6
	.byte	0x2c
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x7
	.byte	0x6c
	.byte	0x7
	.byte	0x2c
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x6
	.byte	0xbf
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x6
	.byte	0xdf
	.byte	0x8
	.byte	0x2c
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x7
	.byte	0x5e
	.byte	0x6
	.byte	0x2c
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x8
	.byte	0x9a
	.byte	0x9
	.byte	0x2c
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x8
	.byte	0xb2
	.byte	0x9
	.byte	0x2c
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x8
	.byte	0xab
	.byte	0x6
	.byte	0x2c
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x8
	.byte	0xc4
	.byte	0xc
	.byte	0x2c
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x8
	.byte	0xb0
	.byte	0x9
	.byte	0x2c
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xa
	.byte	0x54
	.byte	0x7
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
	.byte	0xe
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
	.byte	0x8
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
	.byte	0x34
	.byte	0
	.byte	0x47
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2c
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-1
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27-1
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"_dso_handle"
.LASF127:
	.string	"valuestring"
.LASF169:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/get_data_from_json.c"
.LASF158:
	.string	"malloc"
.LASF47:
	.string	"_size"
.LASF9:
	.string	"size_t"
.LASF92:
	.string	"_rand48"
.LASF71:
	.string	"_emergency"
.LASF130:
	.string	"string"
.LASF124:
	.string	"prev"
.LASF122:
	.string	"cJSON"
.LASF61:
	.string	"_data"
.LASF126:
	.string	"type"
.LASF162:
	.string	"cJSON_Parse"
.LASF112:
	.string	"_wcrtomb_state"
.LASF113:
	.string	"_wcsrtombs_state"
.LASF154:
	.string	"printf"
.LASF7:
	.string	"long long unsigned int"
.LASF51:
	.string	"_lbfsize"
.LASF171:
	.string	"__locale_t"
.LASF163:
	.string	"cJSON_GetObjectItem"
.LASF110:
	.string	"_mbrtowc_state"
.LASF123:
	.string	"next"
.LASF105:
	.string	"_wctomb_state"
.LASF28:
	.string	"__tm_sec"
.LASF155:
	.string	"fseek"
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF57:
	.string	"_ubuf"
.LASF46:
	.string	"_base"
.LASF30:
	.string	"__tm_hour"
.LASF86:
	.string	"__sf"
.LASF37:
	.string	"_on_exit_args"
.LASF172:
	.string	"load_room_data"
.LASF52:
	.string	"_cookie"
.LASF129:
	.string	"valuedouble"
.LASF85:
	.string	"__sglue"
.LASF4:
	.string	"long int"
.LASF49:
	.string	"_flags"
.LASF41:
	.string	"_is_cxa"
.LASF67:
	.string	"_stdin"
.LASF59:
	.string	"_blksize"
.LASF149:
	.string	"bytesRead"
.LASF143:
	.string	"room_maxTemp"
.LASF131:
	.string	"double"
.LASF81:
	.string	"_cvtbuf"
.LASF60:
	.string	"_offset"
.LASF111:
	.string	"_mbsrtowcs_state"
.LASF109:
	.string	"_mbrlen_state"
.LASF38:
	.string	"_fnargs"
.LASF44:
	.string	"_fns"
.LASF24:
	.string	"_sign"
.LASF21:
	.string	"_flock_t"
.LASF69:
	.string	"_stderr"
.LASF26:
	.string	"_Bigint"
.LASF100:
	.string	"_gamma_signgam"
.LASF53:
	.string	"_read"
.LASF77:
	.string	"_result_k"
.LASF27:
	.string	"__tm"
.LASF8:
	.string	"unsigned int"
.LASF15:
	.string	"__wchb"
.LASF68:
	.string	"_stdout"
.LASF80:
	.string	"_cvtlen"
.LASF5:
	.string	"long unsigned int"
.LASF50:
	.string	"_file"
.LASF90:
	.string	"_niobs"
.LASF134:
	.string	"room_floor"
.LASF3:
	.string	"short unsigned int"
.LASF159:
	.string	"fclose"
.LASF83:
	.string	"_atexit0"
.LASF107:
	.string	"_signal_buf"
.LASF98:
	.string	"_asctime_buf"
.LASF142:
	.string	"room_minTemp"
.LASF76:
	.string	"_result"
.LASF14:
	.string	"__wch"
.LASF166:
	.string	"cJSON_GetArrayItem"
.LASF10:
	.string	"wint_t"
.LASF141:
	.string	"room_temperatureUnit"
.LASF62:
	.string	"_lock"
.LASF164:
	.string	"cJSON_Delete"
.LASF64:
	.string	"_flags2"
.LASF120:
	.string	"FILE"
.LASF54:
	.string	"_write"
.LASF33:
	.string	"__tm_year"
.LASF128:
	.string	"valueint"
.LASF116:
	.string	"_nmalloc"
.LASF20:
	.string	"_LOCK_RECURSIVE_T"
.LASF115:
	.string	"_nextf"
.LASF32:
	.string	"__tm_mon"
.LASF42:
	.string	"_atexit"
.LASF121:
	.string	"suboptarg"
.LASF74:
	.string	"__sdidinit"
.LASF11:
	.string	"_off_t"
.LASF153:
	.string	"fopen"
.LASF79:
	.string	"_freelist"
.LASF165:
	.string	"cJSON_IsArray"
.LASF146:
	.string	"file"
.LASF170:
	.string	"/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/build_out/sdk_app_helloworld"
.LASF152:
	.string	"firstRoom"
.LASF133:
	.string	"room_name"
.LASF138:
	.string	"room_lightOn"
.LASF1:
	.string	"unsigned char"
.LASF125:
	.string	"child"
.LASF82:
	.string	"_new"
.LASF114:
	.string	"_h_errno"
.LASF2:
	.string	"short int"
.LASF35:
	.string	"__tm_yday"
.LASF45:
	.string	"__sbuf"
.LASF91:
	.string	"_iobs"
.LASF88:
	.string	"__FILE"
.LASF18:
	.string	"_mbstate_t"
.LASF48:
	.string	"__sFILE"
.LASF135:
	.string	"room_building"
.LASF63:
	.string	"_mbstate"
.LASF101:
	.string	"_rand_next"
.LASF103:
	.string	"_mblen_state"
.LASF70:
	.string	"_inc"
.LASF43:
	.string	"_ind"
.LASF147:
	.string	"fileSize"
.LASF160:
	.string	"fread"
.LASF73:
	.string	"_locale"
.LASF75:
	.string	"__cleanup"
.LASF72:
	.string	"_unspecified_locale_info"
.LASF23:
	.string	"_maxwds"
.LASF168:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF93:
	.string	"_seed"
.LASF16:
	.string	"__count"
.LASF132:
	.string	"room_id"
.LASF17:
	.string	"__value"
.LASF55:
	.string	"_seek"
.LASF118:
	.string	"_impure_ptr"
.LASF12:
	.string	"_fpos_t"
.LASF66:
	.string	"_errno"
.LASF87:
	.string	"char"
.LASF29:
	.string	"__tm_min"
.LASF145:
	.string	"room_maxHum"
.LASF148:
	.string	"buffer"
.LASF94:
	.string	"_mult"
.LASF22:
	.string	"_next"
.LASF97:
	.string	"_strtok_last"
.LASF151:
	.string	"rooms"
.LASF40:
	.string	"_fntypes"
.LASF161:
	.string	"free"
.LASF95:
	.string	"_add"
.LASF150:
	.string	"json"
.LASF19:
	.string	"__ULong"
.LASF108:
	.string	"_getdate_err"
.LASF139:
	.string	"room_fanOn"
.LASF119:
	.string	"_global_impure_ptr"
.LASF137:
	.string	"room_humidity"
.LASF96:
	.string	"_unused_rand"
.LASF136:
	.string	"room_temperature"
.LASF25:
	.string	"_wds"
.LASF34:
	.string	"__tm_wday"
.LASF89:
	.string	"_glue"
.LASF167:
	.string	"strdup"
.LASF13:
	.string	"_ssize_t"
.LASF106:
	.string	"_l64a_buf"
.LASF84:
	.string	"_sig_func"
.LASF65:
	.string	"_reent"
.LASF144:
	.string	"room_minHum"
.LASF58:
	.string	"_nbuf"
.LASF117:
	.string	"_unused"
.LASF36:
	.string	"__tm_isdst"
.LASF99:
	.string	"_localtime_buf"
.LASF157:
	.string	"rewind"
.LASF56:
	.string	"_close"
.LASF102:
	.string	"_r48"
.LASF156:
	.string	"ftell"
.LASF104:
	.string	"_mbtowc_state"
.LASF78:
	.string	"_p5s"
.LASF140:
	.string	"room_active"
.LASF31:
	.string	"__tm_mday"
.LASF173:
	.string	"file_path"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
