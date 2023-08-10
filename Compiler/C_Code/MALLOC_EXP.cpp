#include <stdio.h>
#include "xil_printf.h"
#include "xil_cache.h"

//Shared Memory Address
#define STACK_START_PTR_ADDR 0x700010
#define STACK_END_PTR_ADDR 0x700020
#define HEAP_START_PTR_ADDR 0x700030
#define HEAP_END_PTR_ADDR 0x700040
#define ENTRY_PTR_ADDR 0x700050
#define DRAM_BASE_ADDRESS 0xf00000

extern u8 _heap_start[];
extern u8 _heap_end[];
extern char8 HeapBase[];
extern char8 HeapLimit[];

int main(){
	xil_printf("hello world\r\n");
	xil_printf("%llx\r\n",_heap_start);
	xil_printf("%llx\r\n",_heap_end);
	xil_printf("%llx\r\n",HeapBase);
	xil_printf("%llx\r\n",HeapLimit);
	return 0;
}
