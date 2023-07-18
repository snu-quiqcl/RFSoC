#include <string.h>
#ifndef _RFDC_
#define _RFDC_
#include "lwip/err.h"
#include "lwip/tcp.h"
#include "rfdc_controller.h"
#endif
#include "xil_printf.h"
#include "xil_printf.h"
#include "E:\Xilinx\Vitis\2020.2\data\embeddedsw\XilinxProcessorIPLib\drivers\rfdc_v8_1\examples\xrfdc_clk.h"
#include "E:\Xilinx\Vitis\2020.2\data\embeddedsw\XilinxProcessorIPLib\drivers\rfdc_v8_1\examples\xrfdc_clk.c"
#include "xparameters.h"
#include "xil_io.h"

#define RFDC_DEVICE_ID 	XPAR_XRFDC_0_DEVICE_ID
#define I2CBUS	1
#define XRFDC_BASE_ADDR		XPAR_XRFDC_0_BASEADDR
#define RFDC_DEV_NAME    XPAR_XRFDC_0_DEV_NAME

//MUX address
#define S00_AXIS_TDATA (u64)0x0
#define S00_AXIS_TVALID (u64)0x1
#define DAC00_FAST_SHUTDOWN (u64)0x2
#define DAC00_PL_EVENT (u64)0x3
#define DAC00_NCO_FREQ (u64)0x4
#define DAC00_NCO_PHASE (u64)0x5
#define DAC00_NCO_PHASE_RST (u64)0x6
#define DAC00_NCO_UPDATE_EN (u64)0x7
#define DAC0_NCO_UPDATE_REQ (u64)0x8
#define DAC0_SYSREF_INT_GATING (u64)0x9
#define DAC0_SYSREF_INT_REENABLE (u64)0xA
#define UPDATE (u64)0xF

//AXI address
#define AXI_LEN 0x10;
#define M_AXI_HPM0_FPD_ADDR XPAR_AXI_HPM0_FPD_0_S_AXI_BASEADDR
#define M_AXI_HPM1_FPD_ADDR XPAR_AXI_HPM1_FPD_0_S_AXI_BASEADDR

#define MAKE128CONST(hi,lo) ((((__uint128_t)hi << 64) | (lo)))
#define DEBUG_RFDC 1
#define MODULE_NUM 3
#define FNCT_NUM 2

/*
 * Sampling frequency of DAC
 */
static u64 sampling_freq = 0;

unsigned int LMK04208_CKin[1][26] = {
		{0x00160040,0x80140320,0x80140321,0x80140322,
		0xC0140023,0x40140024,0x80141E05,0x03300006,0x01300007,0x06010008,
		0x55555549,0x9102410A,0x0401100B,0x1B0C006C,0x2302886D,0x0200000E,
		0x8000800F,0xC1550410,0x00000058,0x02C9C419,0x8FA8001A,0x10001E1B,
		0x0021201C,0x0180033D,0x0200033E,0x003F001F }};
/*
 * list of modules
 */
struct module_tuple{
	u64  num;
	char module_name[128];
	UINTPTR addr;
};
/*
 * list of functions
 */
struct fnct_tuple{
	u64  num;
	char fnct_name[128];
};

/*
 * Instruction Format
 */
struct instruction_form{
	u64  num;
	char inst_name[128];
};

const struct module_tuple MODULE[MODULE_NUM] = {
	{0,"CPU",0},
	{1,"BIN",0},
	{2,"DAC00",XPAR_DAC_CONTROLLER_0_BASEADDR},
	{3,"TIME_CONT",XPAR_TIMECONTROLLER_0_BASEADDR}
};

const struct fnct_tuple FNCT[FNCT_NUM] = {
	{0,"write_fifo"},
	{1,"set_clock"},
	{2,"read_sampling_freq"}
};

/*
 * 128bit AXI output function
 */
static INLINE void Xil_Out128(UINTPTR Addr, __uint128_t Value)
{
	volatile __uint128_t *LocalAddr = (volatile __uint128_t *)Addr;
	*LocalAddr = Value;
}

void set_clock(u64 freq){
	print("\n Configuring the Clock \r\n");
	//LMK04208ClockConfig(I2CBUS, LMK04208_CKin);
	//LMX2594ClockConfig(I2CBUS, freq);
	//temporarily
	sampling_freq = freq * 1000;
	print("Clock Config Done\n\r");
#ifdef XPAR_DAC_CONTROLLER_0_BASEADDR
	xil_printf("DAC CONTROLLER BASE ADDRESS : %I64d\r\n",XPAR_DAC_CONTROLLER_0_BASEADDR);
#else
	xil_printf("NO DAC CONTROLLER BASE ADDRESS ERROR\r\n");
#endif
	return;
}

/*
 * return integer of string value
 */
u64 string2int64(char* str){
	u64 num = 0;
	int i = 0;
	if( str[0] == '0' && (str[1] == 'x' || str[1] == 'X')){
		i=2;
		while( str[i] != '\0'){
			if( '0' <= str[i] && str[i] <= '9' ) num = num*16 + (str[i]-'0');
			else if( 'A' <= str[i] && str[i] <= 'F' ) num = num*16 + (str[i]-'A')+10;
			else if( 'a' <= str[i] && str[i] <= 'f' ) num = num*16 + (str[i]-'a')+10;
			else{
				xil_printf("TYPE ERROR\r\n");
				return 0;
			}
			i++;
		}
	}
	else{
		while( str[i] != '\0'){
			if( str[i] < '0' || str[i] > '9'){
				xil_printf("TYPE ERROR\r\n");
				return 0;
			}
			num = num*10 + (str[i]-'0');
			i++;
		}
	}

	return num;
}

/*
 * return position of character 'spc' in str
 * pos : number of spc
 */

int string_count(char* str, int pos, char spc){
	int i = 0, num = 0;
	while( *(str+i) != '\0'){
		xil_printf("%c ",*(str+i));
		if( *(str+i) == spc){
			num++;
		}
		if( num == pos ){
			return i;
		}
		i++;
	}

	return -1;
}

char * substring(char * str_dest,char * str,int start,int end){
	int i = 0;
	for( i = 0; i < end-start;i++){
		*(str_dest+i) = *(str+start+i);
	}
	*(str_dest+end-start) = '\0';
	return str_dest;
}

char * int642str(u64 val, char * str_dest){
	u64 temp_val = val;
	char inverse_str[1024];
	int i = 0;
	int len = 0;
	while(temp_val != 0 ){
		*(inverse_str+i) = (temp_val % 10)  + '0';
		temp_val = temp_val / 10;
		i++;
	}
	*(str_dest + i) = '\0';
	i--;
	len = i;

	while(i >= 0){
		*(str_dest + i) = inverse_str[len-i];
#ifdef DEBUG_RFDC
		xil_printf("str_dest :%d %c\r\n",i,*(str_dest + i));
#endif
		i--;
	}
#ifdef DEBUG_RFDC
	xil_printf("int642str : %s\r\n",str_dest);
#endif
	return str_dest;
}

void write_fifo(int module_index, u64 timestamp, u64 instruction){
	Xil_Out128(MODULE[module_index].addr,MAKE128CONST(timestamp,instruction));
#ifdef DEBUG_RFDC
	xil_printf("WRITE FIFO\r\n");
#endif
}
void set_clock(u64 freq);

u64 read_sampling_freq(struct tcp_pcb *tpcb){
	char str[1024];
	int642str(sampling_freq,str);
#ifdef DEBUG_RFDC
	xil_printf("str_len : %d\r\n",strlen(str));
#endif
	if (tcp_sndbuf(tpcb) > strlen(str)) {
		tcp_write(tpcb, str, strlen(str), 1);
	}
	else{
		xil_printf("no space in tcp_sndbuf\n\r");
	}
	xil_printf("TCP write done \r\n");
}


/*
 * TCP data format
 * 1. Timestamp output format
 * #{Device}#{function name}#{timestamp}#{inst}#!EOL
 *
 * 2. CPU instruction format
 * #CPU#{function name}#{inst}#!EOL
 *
 * 3. binary file send format
 * #BIN#!EOL
 *
 * 4. Branch setting format -> shuold be aligned
 * #BRANCH#{tag_num}#{Device}#{function name}#{timestamp}#{inst}#!EOL
 *
 * 5. Clear branch format
 * #CLRBRANCH#!EOL
 */

int inst_process(struct tcp_pcb *tpcb, char * TCP_data){
	char module[128];
	int module_num =0;
	int module_index = 0;
	char fnct[128];
	int fnct_num = 0;
	int fnct_index = 0;
	char timestamp[128];
	char inst[128];
	u64 timestamp_int = 0;
	u64 inst_int = 0;
	int i =0;
	int spc_pos[5] = {0};
	for( int j = 0 ; j < 5; j++){
		spc_pos[j] = string_count(TCP_data,j+1,'#');
		if( spc_pos[j] < 0 ){
			return -(j+1);
		}
	}

#ifdef DEBUG_RFDC
	xil_printf("POSITION DONE\r\n");
#endif

	substring(module, TCP_data,spc_pos[0]+1,spc_pos[1]);
	substring(fnct, TCP_data,spc_pos[1]+1,spc_pos[2]);
	substring(timestamp, TCP_data,spc_pos[2]+1,spc_pos[3]);
	substring(inst, TCP_data,spc_pos[3]+1,spc_pos[4]);

#ifdef DEBUG_RFDC
	xil_printf("INST : \r\n");
	xil_printf("%s\r\n",module);
	xil_printf("%s\r\n",fnct);
	xil_printf("%s\r\n",timestamp);
	xil_printf("%s\r\n",inst);
#endif

	i = 0;
	while(i < MODULE_NUM){
		if(strcmp((const char *)module,MODULE[i].module_name) == 0){
			module_num = MODULE[i].num;
			module_index = i;
			break;
		}
		i++;
	}

	i = 0;
	while(i < FNCT_NUM){
		if(strcmp((const char *)fnct,FNCT[i].fnct_name) == 0){
			fnct_num = FNCT[i].num;
			fnct_index = i;
			break;
		}
		i++;
	}

#ifdef DEBUG_RFDC
	xil_printf("module : %d\r\n",module_num);
	xil_printf("fnct : %d\r\n",fnct_num);
	xil_printf("timestamp : %d\r\n",string2int64(timestamp));
	xil_printf("inst : %d\r\n",string2int64(inst));
#endif

	read_sampling_freq(tpcb);
	return 0;
}


