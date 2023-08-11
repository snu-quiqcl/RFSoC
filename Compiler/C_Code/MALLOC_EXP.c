#include <stdio.h>
#include "xil_printf.h"
#include "xil_cache.h"
#include "memory_region.h"
#include "custom_malloc.h"

int main();

void * malloc(size_t nb);

int main(){
	Xil_DCacheInvalidate();
	xil_printf("hello world\r\n");

	malloc(sizeof(int));

	return 0;
}
