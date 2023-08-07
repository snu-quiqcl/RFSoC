#include <stdio.h>
#include "malloc.h"
#include "xil_printf.h"

//Shared Memory Address
#define STACK_START_PTR_ADDR 0x700010
#define STACK_END_PTR_ADDR 0x700020
#define HEAP_START_PTR_ADDR 0x700030
#define HEAP_END_PTR_ADDR 0x700040
#define ENTRY_PTR_ADDR 0x700050
#define DRAM_BASE_ADDRESS 0xf00000

extern u8 _heap_start[];
extern u8 _heap_end[];

int main(){
	xil_printf("hello world\r\n");
	xil_printf("%llx\r\n",_heap_start);
	xil_printf("%llx\r\n",_heap_end);
	int * a;
	//a = (int *) malloc(sizeof(int));
	//*a = 33;
	//xil_printf("%d\r\n",a);
	//free(a);
	return 0;
}
