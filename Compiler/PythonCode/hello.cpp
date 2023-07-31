#include <stdio.h>
#include "xil_printf.h"

void xil_printf( const char8 *ctrl1, ...);

int main(){
    int a;
    a = 30;
    xil_printf("hello\r\n");
}
