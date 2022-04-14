/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'cpu' in SOPC Builder design 'nios_system'
 * SOPC Builder design path: ../../nios_system.sopcinfo
 *
 * Generated: Sat Apr 02 23:30:20 SGT 2022
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * ADC configuration
 *
 */

#define ADC_BASE 0x5000
#define ADC_IRQ -1
#define ADC_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ADC_NAME "/dev/ADC"
#define ADC_SPAN 32
#define ADC_TYPE "altera_up_avalon_adc"
#define ALT_MODULE_CLASS_ADC altera_up_avalon_adc


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00004820
#define ALT_CPU_CPU_FREQ 100000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0xf
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00002020
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 100000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0xf
#define ALT_CPU_NAME "cpu"
#define ALT_CPU_RESET_ADDR 0x00002000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00004820
#define NIOS2_CPU_FREQ 100000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0xf
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00002020
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0xf
#define NIOS2_RESET_ADDR 0x00002000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_NIOS2_QSYS
#define __ALTERA_UP_AVALON_ADC


/*
 * LEDs configuration
 *
 */

#define ALT_MODULE_CLASS_LEDs altera_avalon_pio
#define LEDS_BASE 0x5070
#define LEDS_BIT_CLEARING_EDGE_REGISTER 0
#define LEDS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LEDS_CAPTURE 0
#define LEDS_DATA_WIDTH 8
#define LEDS_DO_TEST_BENCH_WIRING 0
#define LEDS_DRIVEN_SIM_VALUE 0
#define LEDS_EDGE_TYPE "NONE"
#define LEDS_FREQ 100000000
#define LEDS_HAS_IN 0
#define LEDS_HAS_OUT 1
#define LEDS_HAS_TRI 0
#define LEDS_IRQ -1
#define LEDS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LEDS_IRQ_TYPE "NONE"
#define LEDS_NAME "/dev/LEDs"
#define LEDS_RESET_VALUE 0
#define LEDS_SPAN 16
#define LEDS_TYPE "altera_avalon_pio"


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone V"
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/null"
#define ALT_STDERR_BASE 0x0
#define ALT_STDERR_DEV null
#define ALT_STDERR_TYPE ""
#define ALT_STDIN "/dev/null"
#define ALT_STDIN_BASE 0x0
#define ALT_STDIN_DEV null
#define ALT_STDIN_TYPE ""
#define ALT_STDOUT "/dev/null"
#define ALT_STDOUT_BASE 0x0
#define ALT_STDOUT_DEV null
#define ALT_STDOUT_TYPE ""
#define ALT_SYSTEM_NAME "nios_system"


/*
 * acid configuration
 *
 */

#define ACID_BASE 0x5040
#define ACID_BIT_CLEARING_EDGE_REGISTER 0
#define ACID_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ACID_CAPTURE 0
#define ACID_DATA_WIDTH 1
#define ACID_DO_TEST_BENCH_WIRING 0
#define ACID_DRIVEN_SIM_VALUE 0
#define ACID_EDGE_TYPE "NONE"
#define ACID_FREQ 100000000
#define ACID_HAS_IN 0
#define ACID_HAS_OUT 1
#define ACID_HAS_TRI 0
#define ACID_IRQ -1
#define ACID_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ACID_IRQ_TYPE "NONE"
#define ACID_NAME "/dev/acid"
#define ACID_RESET_VALUE 0
#define ACID_SPAN 16
#define ACID_TYPE "altera_avalon_pio"
#define ALT_MODULE_CLASS_acid altera_avalon_pio


/*
 * base configuration
 *
 */

#define ALT_MODULE_CLASS_base altera_avalon_pio
#define BASE_BASE 0x5030
#define BASE_BIT_CLEARING_EDGE_REGISTER 0
#define BASE_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BASE_CAPTURE 0
#define BASE_DATA_WIDTH 1
#define BASE_DO_TEST_BENCH_WIRING 0
#define BASE_DRIVEN_SIM_VALUE 0
#define BASE_EDGE_TYPE "NONE"
#define BASE_FREQ 100000000
#define BASE_HAS_IN 0
#define BASE_HAS_OUT 1
#define BASE_HAS_TRI 0
#define BASE_IRQ -1
#define BASE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define BASE_IRQ_TYPE "NONE"
#define BASE_NAME "/dev/base"
#define BASE_RESET_VALUE 0
#define BASE_SPAN 16
#define BASE_TYPE "altera_avalon_pio"


/*
 * esp configuration
 *
 */

#define ALT_MODULE_CLASS_esp altera_avalon_pio
#define ESP_BASE 0x5060
#define ESP_BIT_CLEARING_EDGE_REGISTER 0
#define ESP_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ESP_CAPTURE 0
#define ESP_DATA_WIDTH 8
#define ESP_DO_TEST_BENCH_WIRING 0
#define ESP_DRIVEN_SIM_VALUE 0
#define ESP_EDGE_TYPE "NONE"
#define ESP_FREQ 100000000
#define ESP_HAS_IN 0
#define ESP_HAS_OUT 1
#define ESP_HAS_TRI 0
#define ESP_IRQ -1
#define ESP_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ESP_IRQ_TYPE "NONE"
#define ESP_NAME "/dev/esp"
#define ESP_RESET_VALUE 0
#define ESP_SPAN 16
#define ESP_TYPE "altera_avalon_pio"


/*
 * esptype configuration
 *
 */

#define ALT_MODULE_CLASS_esptype altera_avalon_pio
#define ESPTYPE_BASE 0x5020
#define ESPTYPE_BIT_CLEARING_EDGE_REGISTER 0
#define ESPTYPE_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ESPTYPE_CAPTURE 0
#define ESPTYPE_DATA_WIDTH 2
#define ESPTYPE_DO_TEST_BENCH_WIRING 0
#define ESPTYPE_DRIVEN_SIM_VALUE 0
#define ESPTYPE_EDGE_TYPE "NONE"
#define ESPTYPE_FREQ 100000000
#define ESPTYPE_HAS_IN 0
#define ESPTYPE_HAS_OUT 1
#define ESPTYPE_HAS_TRI 0
#define ESPTYPE_IRQ -1
#define ESPTYPE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ESPTYPE_IRQ_TYPE "NONE"
#define ESPTYPE_NAME "/dev/esptype"
#define ESPTYPE_RESET_VALUE 0
#define ESPTYPE_SPAN 16
#define ESPTYPE_TYPE "altera_avalon_pio"


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * heater configuration
 *
 */

#define ALT_MODULE_CLASS_heater altera_avalon_pio
#define HEATER_BASE 0x5050
#define HEATER_BIT_CLEARING_EDGE_REGISTER 0
#define HEATER_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HEATER_CAPTURE 0
#define HEATER_DATA_WIDTH 1
#define HEATER_DO_TEST_BENCH_WIRING 0
#define HEATER_DRIVEN_SIM_VALUE 0
#define HEATER_EDGE_TYPE "NONE"
#define HEATER_FREQ 100000000
#define HEATER_HAS_IN 0
#define HEATER_HAS_OUT 1
#define HEATER_HAS_TRI 0
#define HEATER_IRQ -1
#define HEATER_IRQ_INTERRUPT_CONTROLLER_ID -1
#define HEATER_IRQ_TYPE "NONE"
#define HEATER_NAME "/dev/heater"
#define HEATER_RESET_VALUE 0
#define HEATER_SPAN 16
#define HEATER_TYPE "altera_avalon_pio"


/*
 * onchip_memory2_0 configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory2_0 altera_avalon_onchip_memory2
#define ONCHIP_MEMORY2_0_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY2_0_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY2_0_BASE 0x2000
#define ONCHIP_MEMORY2_0_CONTENTS_INFO ""
#define ONCHIP_MEMORY2_0_DUAL_PORT 0
#define ONCHIP_MEMORY2_0_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY2_0_INIT_CONTENTS_FILE "nios_system_onchip_memory2_0"
#define ONCHIP_MEMORY2_0_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY2_0_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY2_0_IRQ -1
#define ONCHIP_MEMORY2_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY2_0_NAME "/dev/onchip_memory2_0"
#define ONCHIP_MEMORY2_0_NON_DEFAULT_INIT_FILE_ENABLED 1
#define ONCHIP_MEMORY2_0_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY2_0_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY2_0_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY2_0_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY2_0_SIZE_VALUE 8192
#define ONCHIP_MEMORY2_0_SPAN 8192
#define ONCHIP_MEMORY2_0_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY2_0_WRITABLE 1

#endif /* __SYSTEM_H_ */
