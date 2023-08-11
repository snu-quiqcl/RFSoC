#include <stdio.h>
#include <stddef.h>
#include "xil_printf.h"
#include "xil_cache.h"
#include "memory_region.h"
#include "custom_malloc.h"

extern u8 _heap_start[];
extern u8 _heap_end[];
extern char8 HeapBase[];
extern char8 HeapLimit[];
extern u8 __bss_start__[];
extern u8 __bss_end__[];
extern u8 __data_start__[];
extern u8 __data_end__[];
extern u8 _etext[];

static int bss_test;
int64_t data_test = 50;

int main();

void * malloc(size_t nb);

void _start_temp(){
	//__asm__ __volatile__();
	volatile u8 * addr_target;
	volatile u8 * addr_src;
	u8 * addr = __bss_start__;

	do{
		addr_target = addr;
		*addr_target = 0;
		addr++;
	}while(addr <= __bss_end__);
	Xil_DCacheFlush();
	xil_printf("bss initialization done\r\n");

	main();
	return;
}

int main(){
	Xil_DCacheInvalidate();
	xil_printf("hello world\r\n");
	xil_printf("%llx\r\n",_heap_start);
	xil_printf("%d\r\n",*_heap_start);
	xil_printf("%llx\r\n",_heap_end);
	xil_printf("%llx\r\n",HeapBase);
	xil_printf("%llx\r\n",HeapLimit);

	xil_printf("%llx\r\n",__bss_start__);
	xil_printf("%llx\r\n",__bss_end__);

	xil_printf("%d\r\n",bss_test);
	xil_printf("%d\r\n",data_test);
	size_t b = sizeof(int);
	int * a;
	fREe(a);

	return 0;
}
