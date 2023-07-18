#ifndef _RFDC_CONT_
#define _RFDC_CONT_

#ifndef XPS_BOARD_ZCU111
#define XPS_BOARD_ZCU111
#endif

#include <string.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_io.h"

#ifndef __BAREMETAL__
#define __BAREMETAL__
#endif

#define RFDC_DEVICE_ID 	XPAR_XRFDC_0_DEVICE_ID
#define I2CBUS	1
#define XRFDC_BASE_ADDR		XPAR_XRFDC_0_BASEADDR
#define RFDC_DEV_NAME    XPAR_XRFDC_0_DEV_NAME

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
#define AXI_LEN 0x10;
#define M_AXI_HPM0_FPD_ADDR XPAR_AXI_HPM0_FPD_0_S_AXI_BASEADDR
#define M_AXI_HPM1_FPD_ADDR XPAR_AXI_HPM1_FPD_0_S_AXI_BASEADDR

#define MAKE128CONST(hi,lo) ((((__uint128_t)hi << 64) | (lo)))
#define DEBUG_RFDC 1
#define MODULE_NUM 4
#define FNCT_NUM 3

/*
 * Sampling frequency of DAC
 */
static int64_t sampling_freq;
struct module_tuple{
	int64_t  num;
	char module_name[128];
	UINTPTR addr;
};
/*
 * list of functions
 */
struct fnct_tuple{
	int64_t  num;
	char fnct_name[128];
};

/*
 * Instruction Format
 */
struct instruction{
	int64_t  num;
	char type;
	char * name;
	struct instruction* next;
};
extern const struct module_tuple MODULE[MODULE_NUM];
extern const struct fnct_tuple FNCT[FNCT_NUM];

void LMX2594ClockConfig(int XIicBus, int XFrequency);
void LMK04208ClockConfig(int XIicBus, unsigned int LMK04208_CKin[1][26]);
int64_t inst_process(struct tcp_pcb *tpcb, char * TCP_data);
int64_t read_sampling_freq(struct tcp_pcb *tpcb);
char * int642str(int64_t val, char * str_dest);
char * substring(char * str_dest,char * str,int64_t start,int64_t end);
int64_t string_count(char* str, int64_t pos, char spc);
int64_t string2int64(char* str);

#endif
