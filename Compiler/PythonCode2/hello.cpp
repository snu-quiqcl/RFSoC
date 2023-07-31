#include <stdio.h>
//#include <stdlib.h>
#include "xil_printf.h"
#include <malloc.h>

void xil_printf( const char8 *ctrl1, ...);

int main(){
    int a;
    a = 30;
    xil_printf("hello\r\n");

    int * ptr = (int *)malloc(sizeof(int));
    xil_printf("PTR ADDR:%d",ptr);
    free(ptr);
}
