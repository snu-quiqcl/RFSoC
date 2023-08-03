#include <stdio.h>
#include "xil_printf.h"

int main(){
    int a;
    int b;
    a = 1;
    b = 2;
    b = a + b;
    int c;
    c =30;
    c = a + b + c;
    xil_printf("hello\r\n");
    return 0;
}