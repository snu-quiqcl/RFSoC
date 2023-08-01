#include <stdio.h>
#include <vector>
#include "xil_printf.h"
using namespace std;

void xil_printf( const char8 *ctrl1, ...);

int main(){
    int a;
    a = 30;
    xil_printf("hello\r\n");
    vector<int> v;
    for(int i=0; i<=64; i++){
        v.push_back(i+1);
    }
    return 0;    
}
