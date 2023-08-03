#include <stdio.h>
#include "xil_printf.h"

void xil_printf( const char8 *ctrl1, ...);

class A{
    public:
        int a;
    public:
        A(int a);
        void class_made(int c);

};

A(int a){
    this->a = a;
}

void A::class_made(int c){
    xil_printf("%d\r\n",a+c);
    return;
}

int main(){
    int a;
    a = 30;
    xil_printf("hello\r\n");

    xil_printf("hello2\r\n");

    xil_printf("hello3\r\n");

    a_class = A(a);
    a_class.class_made(20);
}
