#include <stdio.h>
#include <stdint.h>
#include "xparameters.h"
#include "xil_io.h"

//MUX address
#define S00_AXIS_TDATA (int64_t)0x0
#define S00_AXIS_TVALID (int64_t)0x1
#define DAC00_FAST_SHUTDOWN (int64_t)0x2
#define DAC00_PL_EVENT (int64_t)0x3
#define DAC00_NCO_FREQ (int64_t)0x4
#define DAC00_NCO_PHASE (int64_t)0x5
#define DAC00_NCO_PHASE_RST (int64_t)0x6
#define DAC00_NCO_UPDATE_EN (int64_t)0x7
#define DAC0_NCO_UPDATE_REQ (int64_t)0x8
#define DAC0_SYSREF_INT_GATING (int64_t)0x9
#define DAC0_SYSREF_INT_REENABLE (int64_t)0xA
#define UPDATE (int64_t)0xF

//AXI address
#define AXI_LEN 0x10
#define M_AXI_HPM0_FPD_ADDR XPAR_AXI_HPM0_FPD_0_S_AXI_BASEADDR
#define M_AXI_HPM1_FPD_ADDR XPAR_AXI_HPM1_FPD_0_S_AXI_BASEADDR

//Memory address
#define DRAM_BASE_ADDRESS 0xf00000
#define TARGET_ADDRESS 0x700100
#define UPPER_ADDRESS 0x700108
#define LOWER_ADDRESS 0x700110
#define MAKE128CONST(hi,lo) ((__uint128_t)(((hi) << 64) | (lo)))

static INLINE void Xil_Out128(UINTPTR Addr, __uint128_t Value)
{
	volatile __uint128_t *LocalAddr = (volatile __uint128_t *)Addr;
	*LocalAddr = Value;
	xil_printf("ADDR : %llx\r\n",LocalAddr);
	xil_printf("Value : %llx AND %llx\r\n",(Value >> 64)&0xffffffff,Value&0xffffffff);
}

__attribute__((always_inline)) static void reg128_write(uint64_t addr, uint64_t upper_data, uint64_t lower_data)
{
    volatile uint64_t * target_addr = (volatile uint64_t *)TARGET_ADDRESS;
    volatile uint64_t * lower_addr = (volatile uint64_t *)LOWER_ADDRESS;
    volatile uint64_t * upper_addr =(volatile uint64_t *) UPPER_ADDRESS;

    *target_addr = addr;
    *lower_addr = lower_data;
    *upper_addr = upper_data;

    __asm__ __volatile__(
		    "sub sp, sp, #32\n\t"
		    "str x0, [sp, #8]\n\t"
		    "str x1, [sp, #16]\n\t"
		    "str x2, [sp, #24]\n\t"
		    "ldr x0, [%0]\n\t"
		    "ldr x1, [%1]\n\t"
		    "ldr x2, [%2]\n\t"
		    "stp x1, x2, [x0]\n\t"
		    "ldr x0, [sp, #8]\n\t"
		    "ldr x1, [sp, #16]\n\t"
		    "ldr x2, [sp, #24]\n\t"
		    "add sp, sp, #32\n\t"
		    ://Target
		    : "r" (TARGET_ADDRESS), "r" (LOWER_ADDRESS), "r" (UPPER_ADDRESS)//Variable
		    ://Clover
		    );
}

class DAC{
    public:
        UINTPTR addr;
        uint64_t sample_freq;
    public:
        DAC(UINTPTR addr, uint64_t sample_freq = 6400000000){
            this->addr = addr;
            this->sample_freq = sample_freq;
        };
        void initialize(uint64_t timestamp);
        void set_freq(uint64_t timestamp,uint64_t freq);
        void set_amp(uint64_t timestamp, long double amp);
};

class TimeController{
    public:
        UINTPTR addr;
    public:
        TimeController(UINTPTR addr){
            this-> addr = addr;
        };
        void reset();
        void auto_start();
        void auto_stop();
};

void DAC::initialize(uint64_t timestamp = 0){
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)10 + timestamp,( DAC00_FAST_SHUTDOWN<<32)+((int64_t)255<<40)));
    
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)20 + timestamp,( DAC00_PL_EVENT << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)30 + timestamp,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)40 + timestamp,( DAC00_NCO_PHASE << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)50 + timestamp,( DAC00_NCO_PHASE_RST << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)60 + timestamp,( DAC0_SYSREF_INT_GATING << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)70 + timestamp,( DAC0_SYSREF_INT_REENABLE << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)90 + timestamp,( S00_AXIS_TDATA << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x00007fff));
    
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)100 + timestamp,( S00_AXIS_TVALID << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x00000001));
    
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)110 + timestamp,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 1 << 40 ) +(uint64_t) 0x00000000));
    
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)120 + timestamp,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 2 << 40 ) + (uint64_t)0x00000000));
    
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)130 + timestamp,( DAC00_NCO_UPDATE_EN << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)7));
    
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)140 + timestamp,( DAC0_NCO_UPDATE_REQ << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)10)); // last value is update signal width
    
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)160 + timestamp,( S00_AXIS_TDATA << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x00000000));
    
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)170 + timestamp,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1));
}

void DAC::set_freq(uint64_t timestamp,uint64_t freq){
    uint64_t input_val;
    input_val = (uint64_t)(((long double)freq/(long double)(this->sample_freq))*(((uint64_t)1<<48)-(uint64_t)1));;
    Xil_Out128(this-> addr,MAKE128CONST(timestamp,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 1 << 40 ) + (uint64_t)(input_val & 0xffffffff)));
    
    Xil_Out128(this-> addr,MAKE128CONST(timestamp + (uint64_t)10,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 2 << 40 ) + (uint64_t)((input_val >> 32) & 0xffff)));


    Xil_Out128(this-> addr,MAKE128CONST(timestamp + (uint64_t)20,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 1 << 40 ) + (uint64_t)(0x00000000)));
    
    
    Xil_Out128(this-> addr,MAKE128CONST(timestamp + (uint64_t)30,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1));
}

void DAC::set_amp(uint64_t timestamp, long double amp){
    uint64_t input_val;
    input_val = (uint64_t)(amp * ((1 << 15) - 1));
    Xil_Out128(this-> addr,MAKE128CONST(timestamp,( S00_AXIS_TDATA << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)(0x00007fff)));
    
    Xil_Out128(this-> addr,MAKE128CONST(timestamp + (uint64_t)10,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1));
}

void TimeController::reset(){
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)0,(uint64_t)2));
}

void TimeController::auto_start(){
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)0,(uint64_t)9));
}

void TimeController::auto_stop(){
    Xil_Out128(this-> addr,MAKE128CONST((uint64_t)0,(uint64_t)0));
}

int main(){
	/*
    DAC dac00 = DAC((volatile __uint128_t *)XPAR_DAC_CONTROLLER_0_BASEADDR,6400000000);
    TimeController tc = TimeController(XPAR_TIMECONTROLLER_0_BASEADDR);
    tc.auto_stop();
    tc.reset();
    dac00.initialize((uint64_t)10);
    dac00.set_freq((uint64_t)500,(uint64_t)10000);
    dac00.set_amp((uint64_t)600,(long double)0.6);
    tc.reset();
    tc.auto_start();
    */

    Xil_Out128(XPAR_TIMECONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0,(uint64_t)0));
    Xil_Out128(XPAR_TIMECONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0,(uint64_t)2));

    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000005,( DAC00_FAST_SHUTDOWN<<32)+((uint64_t)255<<40)));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000010,( DAC00_PL_EVENT << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000020,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000030,( DAC00_NCO_PHASE << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000040,( DAC00_NCO_PHASE_RST << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000050,( DAC0_SYSREF_INT_GATING << 32 ) + ( (uint64_t) 255 << 40 )));
   
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000060,( DAC0_SYSREF_INT_REENABLE << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000065,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1));
   
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x00000000000000C0,( S00_AXIS_TDATA << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x00007fff));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x00000000000000D0,( S00_AXIS_TVALID << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x00000001));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x00000000000000E0,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 1 << 40 ) +(uint64_t) 0x00000000));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x00000000000000F0,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 2 << 40 ) + (uint64_t)0x00000015));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000100,( DAC00_NCO_UPDATE_EN << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)7));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000110,( DAC0_NCO_UPDATE_REQ << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x0005));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000140,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000600,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 1 << 40 ) + (uint64_t)0x00000000));
   
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000610,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 2 << 40 ) + (uint64_t)0x00000001));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000620,( DAC0_NCO_UPDATE_REQ << 32 ) + ( (uint64_t) 244 << 40 ) + (uint64_t)0x0005));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000630,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1));
    
    //Change frequency

    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000A00,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 1 << 40 ) + (uint64_t)0x00000000));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000A10,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 2 << 40 ) + (uint64_t)0x00000002));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000A20,( DAC0_NCO_UPDATE_REQ << 32 ) + ( (uint64_t) 255<< 40 ) + (uint64_t)0x0010));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000A30,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1));
    
    //Change Amplitude
 
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000D00,( S00_AXIS_TDATA << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x00007fff));
    
    Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0x0000000000000D10,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1));
    
    //TimeController

    Xil_Out128(XPAR_TIMECONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0,(uint64_t)2));
    
    Xil_Out128(XPAR_TIMECONTROLLER_0_BASEADDR,MAKE128CONST((uint64_t)0,(uint64_t)9));
    xil_printf("%llx\r\n",XPAR_DAC_CONTROLLER_0_BASEADDR);
    xil_printf("%llx\r\n",XPAR_TIMECONTROLLER_0_BASEADDR);

    reg128_write(0x1000000UL,0x8888ULL,0x4444ULL);
    int64_t * temp_addr = (int64_t *)(0x1000000UL);   
    int64_t * temp_addr2 = (int64_t *)(0x1000008UL);   
    xil_printf("TEMP VAL : %llx\r\n",*temp_addr);
    xil_printf("TEMP VAL PRIME : %llx\r\n",*(temp_addr2));
}
