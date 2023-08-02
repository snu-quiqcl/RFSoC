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


A::A(int a){
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

    A a_class(a);
    a_class.class_made(20);

    uint64_t cuurent_sp_val;
    uint64_t cuurent_fp_val;
    asm volatile(
        "mov %0, SP\n" // Read SP and store in sp_val
        "mov %1, x29\n" // Read FP and store in fp_val
        : "=r" (cuurent_sp_val), "=r" (cuurent_fp_val) // Output operands
    );

    // Print the values of SP and FP
    xil_printf("Current SP: %llx\r\n", cuurent_sp_val);
    xil_printf("Current FP: %llx\r\n", cuurent_fp_val);

    uint64_t loaded_value;
    __asm__ __volatile__ (
        "mov x0, #0x700000\n\t"
        "ldr %0, [x0]\n\t" // Load the value from the memory address in %1 to %0 (a register)
        : "=r" (loaded_value) 
        : // Output operand: %0 will hold the loaded value
        : "x0"
    );

    xil_printf("Saved SP: %llx\r\n", loaded_value);
}

