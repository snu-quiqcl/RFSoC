#include <stdio.h>
#include <stdint.h>
#include "xparameters.h"

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
#define MAKE128CONST(hi,lo) ((__uint128_t)(((hi) << 64) | (lo)))

static inline void Xil_Out128(volatile __uint128_t * Addr, __uint128_t Value)
{
	volatile __uint128_t *LocalAddr = (volatile __uint128_t *)Addr;
	*LocalAddr = Value;
}

class DAC{
    public:
        __uint128_t * addr;
        uint64_t sample_freq;
    public:
        DAC(__uint128_t * addr, uint64_t sample_freq = 6400000000){
            this->addr = addr;
            this->sample_freq = sample_freq;
        };
        void initialize(uint64_t timestamp);
        void set_freq(uint64_t timestamp,uint64_t freq);
        void set_amp(uint64_t timestamp, double amp);
};

class TimeController{
    public:
        __uint128_t * addr;
    public:
        TimeController(__uint128_t * addr){
            this-> addr = addr;
        };
        void reset();
        void auto_start();
        void auto_stop();
};

void DAC::initialize(uint64_t timestamp = 0){
    Xil_Out128(this-> addr,MAKE128CONST(1 + timestamp,( DAC00_FAST_SHUTDOWN<<32)+((int64_t)255<<40)));
    
    Xil_Out128(this-> addr,MAKE128CONST(2 + timestamp,( DAC00_PL_EVENT << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(this-> addr,MAKE128CONST(3 + timestamp,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(this-> addr,MAKE128CONST(4 + timestamp,( DAC00_NCO_PHASE << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(this-> addr,MAKE128CONST(5 + timestamp,( DAC00_NCO_PHASE_RST << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(this-> addr,MAKE128CONST(6 + timestamp,( DAC0_SYSREF_INT_GATING << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(this-> addr,MAKE128CONST(7 + timestamp,( DAC0_SYSREF_INT_REENABLE << 32 ) + ( (uint64_t) 255 << 40 )));
    
    Xil_Out128(this-> addr,MAKE128CONST(9 + timestamp,( S00_AXIS_TDATA << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x00007fff));
    
    Xil_Out128(this-> addr,MAKE128CONST(10 + timestamp,( S00_AXIS_TVALID << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x00000001));
    
    Xil_Out128(this-> addr,MAKE128CONST(11 + timestamp,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 1 << 40 ) +(uint64_t) 0x00000000));
    
    Xil_Out128(this-> addr,MAKE128CONST(12 + timestamp,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 2 << 40 ) + (uint64_t)0x00000000));
    
    Xil_Out128(this-> addr,MAKE128CONST(13 + timestamp,( DAC00_NCO_UPDATE_EN << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)7));
    
    Xil_Out128(this-> addr,MAKE128CONST(14 + timestamp,( DAC0_NCO_UPDATE_REQ << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)10)); // last value is update signal width
    
    Xil_Out128(this-> addr,MAKE128CONST(16 + timestamp,( S00_AXIS_TDATA << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)0x00000000));
    
    Xil_Out128(this-> addr,MAKE128CONST(17 + timestamp,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1));
}

void DAC::set_freq(uint64_t timestamp,uint64_t freq){
    uint64_t input_val;
    input_val = (uint64_t)(((long double)freq/(long double)(this->sample_freq))*(((uint64_t)1<<48)-(uint64_t)1));;
    Xil_Out128(this-> addr,MAKE128CONST(timestamp,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 1 << 40 ) + (uint64_t)(input_val & 0xffffffff)));
    
    Xil_Out128(this-> addr,MAKE128CONST(timestamp + 10,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 2 << 40 ) + (uint64_t)((input_val >> 32) & 0xffff)));


    Xil_Out128(this-> addr,MAKE128CONST(timestamp,( DAC00_NCO_FREQ << 32 ) + ( (uint64_t) 1 << 40 ) + (uint64_t)(0x00000000)));
    
    
    Xil_Out128(this-> addr,MAKE128CONST(timestamp + 1,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1));
}

void DAC::set_amp(uint64_t timestamp, double amp){
    uint64_t input_val;
    input_val = (uint64_t)(amp * ((1 << 15) - 1));
    Xil_Out128(this-> addr,MAKE128CONST(timestamp,( S00_AXIS_TDATA << 32 ) + ( (uint64_t) 255 << 40 ) + (uint64_t)(0x00007fff)));
    
    Xil_Out128(this-> addr,MAKE128CONST(timestamp + 10,( UPDATE << 32 ) + ( (uint64_t) 255 << 40 ) + ( (uint64_t) 1 << 36 ) + (uint64_t)1));
}

void TimeController::reset(){
    Xil_Out128(this-> addr,MAKE128CONST(0,2));
}

void TimeController::auto_start(){
    Xil_Out128(this-> addr,MAKE128CONST(0,9));
}

void TimeController::auto_stop(){
    Xil_Out128(this-> addr,MAKE128CONST(0,0));
}

int main(){
	int a =0;
}
