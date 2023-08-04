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
        uint64_t addr;
        uint64_t sample_freq;
    public:
        DAC(uint64_t addr, uint64_t sample_freq = 6400000000){
            this->addr = addr;
            this->sample_freq = sample_freq;
        };
        void initialize(uint64_t timestamp);
        void set_freq(uint64_t timestamp,uint64_t freq);
        void set_amp(uint64_t timestamp, long double amp);
};

class TimeController{
    public:
        uint64_t addr;
    public:
        TimeController(uint64_t addr){
            this-> addr = addr;
        };
        void reset();
        void auto_start();
        void auto_stop();
};

void DAC::initialize(uint64_t timestamp = 0){
    reg128_write(this-> addr,(uint64_t)10 + timestamp,( DAC00_FAST_SHUTDOWN<<32)+((int64_t)255<<40));
    
    reg128_write(this-> addr,(uint64_t)20 + timestamp,( DAC00_PL_EVENT << 32 ) + ( (uint64_t) 255 << 40 ));
    
    reg128_write(this-> addr,(uint64_t)30 + timestamp,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 255 << 40 ));
    
    reg128_write(this-> addr,(uint64_t)40 + timestamp,( DAC00_NCO_PHASE << 32 ) + ( (uint64_t) 255 << 40 ));
    
    reg128_write(this-> addr,(uint64_t)50 + timestamp,( DAC00_NCO_PHASE_RST << 32 ) + ( (uint64_t) 255 << 40 ));
    
    reg128_write(this-> addr,(uint64_t)60 + timestamp,( DAC0_SYSREF_INT_GATING << 32 ) + ( (uint64_t) 255 << 40 ));
    
    reg128_write(this-> addr,(uint64_t)70 + timestamp,( DAC0_SYSREF_INT_REENABLE << 32 ) + ( (uint64_t) 255 << 40 ));
    
    reg128_write(this-> addr,(uint64_t)90 + timestamp,( S00_AXIS_TDATA << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x00007fff);
    
    reg128_write(this-> addr,(uint64_t)100 + timestamp,( S00_AXIS_TVALID << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x00000001);
    
    reg128_write(this-> addr,(uint64_t)110 + timestamp,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 1 << 40 ) +(uint64_t) 0x00000000);
    
    reg128_write(this-> addr,(uint64_t)120 + timestamp,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 2 << 40 ) + (uint64_t)0x00000000);
    
    reg128_write(this-> addr,(uint64_t)130 + timestamp,( DAC00_NCO_UPDATE_EN << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)7);
    
    reg128_write(this-> addr,(uint64_t)140 + timestamp,( DAC0_NCO_UPDATE_REQ << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)10); // last value is update signal width
    
    reg128_write(this-> addr,(uint64_t)160 + timestamp,( S00_AXIS_TDATA << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x00000000);
    
    reg128_write(this-> addr,(uint64_t)170 + timestamp,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1);
}

void DAC::set_freq(uint64_t timestamp,uint64_t freq){
    uint64_t input_val;
    input_val = (uint64_t)(((long double)freq/(long double)(this->sample_freq))*(((uint64_t)1<<48)-(uint64_t)1));
    reg128_write(this-> addr,timestamp + (uint64_t)10,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 1 << 40 ) + (uint64_t)(input_val & 0xffffffff));
    
    reg128_write(this-> addr,timestamp + (uint64_t)20,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 2 << 40 ) + (uint64_t)((input_val >> 32) & 0xffff));

    reg128_write(this-> addr,timestamp + (uint64_t)30,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 1 << 40 ) + (uint64_t)(0x00000000));

    reg128_write(this-> addr,timestamp + (uint64_t)40,( DAC00_NCO_UPDATE_EN << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)7);

    reg128_write(this-> addr,timestamp + (uint64_t)50,( DAC0_NCO_UPDATE_REQ << 32 ) + ( (uint64_t) 244 << 40 ) + (uint64_t)0x0010);

    xil_printf("FREQ : %llx\r\n",this->addr);
    
    reg128_write(this-> addr,timestamp + (uint64_t)60,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1);
}

void DAC::set_amp(uint64_t timestamp, long double amp){
    uint64_t input_val;
    input_val = (uint64_t)(amp * ((1 << 15) - 1));
    reg128_write(this-> addr,timestamp,( S00_AXIS_TDATA << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)(input_val & (0x00007fff)));
    xil_printf("AMP : %llx\r\n",this->addr);
    
    reg128_write(this-> addr,timestamp + (uint64_t)10,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1);
}

void TimeController::reset(){
    reg128_write(this-> addr,(uint64_t)0,(uint64_t)2);
}

void TimeController::auto_start(){
    reg128_write(this-> addr,(uint64_t)0,(uint64_t)9);
}

void TimeController::auto_stop(){
    reg128_write(this-> addr,(uint64_t)0,(uint64_t)0);
    xil_printf("TC : %llx\r\n",this->addr);
}

int main(){
/*	
    DAC dac00 = DAC((uint64_t)XPAR_DAC_CONTROLLER_0_BASEADDR,6400000000);
    TimeController tc = TimeController((uint64_t)XPAR_TIMECONTROLLER_0_BASEADDR);
    tc.auto_stop();
    tc.reset();
    dac00.initialize((uint64_t)1000);
    dac00.set_freq((uint64_t)5000,(uint64_t)10000);
    dac00.set_amp((uint64_t)6000,(long double)0.90);
    tc.reset();
    tc.auto_start();
  */ 
    
    reg128_write(XPAR_TIMECONTROLLER_0_BASEADDR,(uint64_t)0,(uint64_t)0);
    reg128_write(XPAR_TIMECONTROLLER_0_BASEADDR,(uint64_t)0,(uint64_t)2);

    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000005,( DAC00_FAST_SHUTDOWN<<32)+((uint64_t)255<<40));
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000010,( DAC00_PL_EVENT << 32 ) + ( (uint64_t) 255 << 40 ));
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000020,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 255 << 40 ));
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000030,( DAC00_NCO_PHASE << 32 ) + ( (uint64_t) 255 << 40 ));
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000040,( DAC00_NCO_PHASE_RST << 32 ) + ( (uint64_t) 255 << 40 ));
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000050,( DAC0_SYSREF_INT_GATING << 32 ) + ( (uint64_t) 255 << 40 ));
   
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000060,( DAC0_SYSREF_INT_REENABLE << 32 ) + ( (uint64_t) 255 << 40 ));
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000065,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1);
   
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x00000000000000C0,( S00_AXIS_TDATA << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x00007fff);
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x00000000000000D0,( S00_AXIS_TVALID << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x00000001);
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x00000000000000E0,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 1 << 40 ) +(uint64_t) 0x00000000);
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x00000000000000F0,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 2 << 40 ) + (uint64_t)0x00000015);
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000100,( DAC00_NCO_UPDATE_EN << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)7);
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000110,( DAC0_NCO_UPDATE_REQ << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x0005);
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000140,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1);
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000600,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 1 << 40 ) + (uint64_t)0x00000000);
   
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000610,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 2 << 40 ) + (uint64_t)0x00000001);
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000620,( DAC0_NCO_UPDATE_REQ << 32 ) + ( (uint64_t) 244 << 40 ) + (uint64_t)0x0005);
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000630,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1);
    

    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000A00,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 1 << 40 ) + (uint64_t)0x00000000);
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000A10,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 2 << 40 ) + (uint64_t)0x00000002);
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000A20,( DAC0_NCO_UPDATE_REQ << 32 ) + ( (uint64_t) 255<< 40 ) + (uint64_t)0x0010);
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000A30,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1);
    
 
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000D00,( S00_AXIS_TDATA << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x00007fff);
    
    reg128_write(XPAR_DAC_CONTROLLER_0_BASEADDR,(uint64_t)0x0000000000000D10,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1);
    

    reg128_write(XPAR_TIMECONTROLLER_0_BASEADDR,(uint64_t)0,(uint64_t)2);
    
    reg128_write(XPAR_TIMECONTROLLER_0_BASEADDR,(uint64_t)0,(uint64_t)9);
    
}
