_STACK_SIZE = DEFINED(_STACK_SIZE) ? _STACK_SIZE : 0xA000;
_HEAP_SIZE = DEFINED(_HEAP_SIZE) ? _HEAP_SIZE : 0xA000;
_START = 0x00F00000;
/* Define Memories in the system */

MEMORY
{
   psu_ddr_0_MEM_0 : ORIGIN = 0x0, LENGTH = 0x7FF00000
   psu_ddr_1_MEM_0 : ORIGIN = 0x800000000, LENGTH = 0x80000000
   psu_ocm_ram_0_MEM_0 : ORIGIN = 0xFFFC0000, LENGTH = 0x40000
   psu_qspi_linear_0_MEM_0 : ORIGIN = 0xC0000000, LENGTH = 0x20000000
}

/* Specify the default entry point to the program */

ENTRY(_START)

/* Define the sections, and where they are mapped in memory */

SECTIONS
{
.text : {
   *(.text)
   *(.text.*)
} > psu_ddr_0_MEM_0

.bss (NOLOAD) : {
   . = ALIGN(64);
   __bss_start__ = .;
   *(.bss)
   *(.bss.*)
   . = ALIGN(64);
   __bss_end__ = .;
} > psu_ddr_0_MEM_0

/* Generate Stack and Heap definitions */

.heap (NOLOAD) : {
   . = ALIGN(64);
   _heap = .;
   HeapBase = .;
   _heap_start = .;
   . += _HEAP_SIZE;
   _heap_end = .;
   HeapLimit = .;
} > psu_ddr_0_MEM_0

.stack (NOLOAD) : {
   . = ALIGN(64);
   _stack_end = .;
   . += _STACK_SIZE;
   __stack_start = .;
} > psu_ddr_0_MEM_0

_end = .;
}