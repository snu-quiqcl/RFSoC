/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#ifndef XPS_BOARD_ZCU111
#define XPS_BOARD_ZCU111
#endif

#ifndef __BAREMETAL__
#define __BAREMETAL__
#endif

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "E:\Xilinx\Vitis\2020.2\data\embeddedsw\XilinxProcessorIPLib\drivers\rfdc_v8_1\examples\xrfdc_clk.c"
#include "E:\Xilinx\Vitis\2020.2\data\embeddedsw\XilinxProcessorIPLib\drivers\rfdc_v8_1\examples\xrfdc_clk.h"
#include "xparameters.h"
#include "xil_io.h"

#define RFDC_DEVICE_ID 	XPAR_XRFDC_0_DEVICE_ID
#define I2CBUS	1
#define XRFDC_BASE_ADDR		XPAR_XRFDC_0_BASEADDR
#define RFDC_DEV_NAME    XPAR_XRFDC_0_DEV_NAME

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

#define AXI_LEN = 0x10;
#define M_AXI_HPM0_FPD_ADDR XPAR_AXI_HPM0_FPD_0_S_AXI_BASEADDR
#define M_AXI_HPM1_FPD_ADDR XPAR_AXI_HPM1_FPD_0_S_AXI_BASEADDR
#define MAKE128CONST(hi,lo) ((((__uint128_t)hi << 64) | lo))

//typedef unsigned __int128 uint128_t;

unsigned int LMK04208_CKin[1][26] = {
		{0x00160040,0x80140320,0x80140321,0x80140322,
		0xC0140023,0x40140024,0x80141E05,0x03300006,0x01300007,0x06010008,
		0x55555549,0x9102410A,0x0401100B,0x1B0C006C,0x2302886D,0x0200000E,
		0x8000800F,0xC1550410,0x00000058,0x02C9C419,0x8FA8001A,0x10001E1B,
		0x0021201C,0x0180033D,0x0200033E,0x003F001F }};

static INLINE void Xil_Out128(UINTPTR Addr, __uint128_t Value)
{
	volatile __uint128_t *LocalAddr = (volatile __uint128_t *)Addr;
	*LocalAddr = Value;
}

int main()
{
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application\n\r");


    print("\n Configuring the Clock \r\n");
	LMK04208ClockConfig(I2CBUS, LMK04208_CKin);
	LMX2594ClockConfig(I2CBUS, 6400000);
	print("Clock Config Done\n\r");
	/*RF driver*/
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000005,( DAC00_FAST_SHUTDOWN<<32)+((u64)255<<40)));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000010,( DAC00_PL_EVENT << 32 ) + ( (u64) 255 << 40 )));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000020,( DAC00_NCO_FREQ << 32 ) + ( (u64) 255 << 40 )));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000030,( DAC00_NCO_PHASE << 32 ) + ( (u64) 255 << 40 )));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000040,( DAC00_NCO_PHASE_RST << 32 ) + ( (u64) 255 << 40 )));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000050,( DAC0_SYSREF_INT_GATING << 32 ) + ( (u64) 255 << 40 )));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000060,( DAC0_SYSREF_INT_REENABLE << 32 ) + ( (u64) 255 << 40 )));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000065,( UPDATE << 32 ) + ( (u64) 255 << 40 ) + ( (u64) 1 << 36 ) + (u64)1));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x00000000000000C0,( S00_AXIS_TDATA << 32 ) + ( (u64) 255 << 40 ) + (u64)0x00007fff));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x00000000000000D0,( S00_AXIS_TVALID << 32 ) + ( (u64) 255 << 40 ) + (u64)0x00000001));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x00000000000000E0,( DAC00_NCO_FREQ << 32 ) + ( (u64) 1 << 40 ) +(u64) 0x00000000));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x00000000000000F0,( DAC00_NCO_FREQ << 32 ) + ( (u64) 2 << 40 ) + (u64)0x00000010));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000100,( DAC00_NCO_UPDATE_EN << 32 ) + ( (u64) 255 << 40 ) + (u64)7));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000110,( DAC0_NCO_UPDATE_REQ << 32 ) + ( (u64) 255 << 40 ) + (u64)0x0020));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000140,( UPDATE << 32 ) + ( (u64) 255 << 40 ) + ( (u64) 1 << 36 ) + (u64)1));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000600,( DAC00_NCO_FREQ << 32 ) + ( (u64) 1 << 40 ) + (u64)0x00000000));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000610,( DAC00_NCO_FREQ << 32 ) + ( (u64) 2 << 40 ) + (u64)0x00000001));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000620,( DAC0_NCO_UPDATE_REQ << 32 ) + ( (u64) 244 << 40 ) + (u64)0x0020));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000630,( UPDATE << 32 ) + ( (u64) 255 << 40 ) + ( (u64) 1 << 36 ) + (u64)1));
	usleep(1000);
	//Change frequency

	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000A00,( DAC00_NCO_FREQ << 32 ) + ( (u64) 1 << 40 ) + (u64)0x00000000));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000A10,( DAC00_NCO_FREQ << 32 ) + ( (u64) 2 << 40 ) + (u64)0x00000010));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000A20,( DAC0_NCO_UPDATE_REQ << 32 ) + ( (u64) 255<< 40 ) + (u64)0x0020));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000A30,( UPDATE << 32 ) + ( (u64) 255 << 40 ) + ( (u64) 1 << 36 ) + (u64)1));
	usleep(1000);
	//Change Amplitude

	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000B00,( S00_AXIS_TDATA << 32 ) + ( (u64) 255 << 40 ) + (u64)0x00000000));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000B10,( UPDATE << 32 ) + ( (u64) 255 << 40 ) + ( (u64) 1 << 36 ) + (u64)1));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000D00,( S00_AXIS_TDATA << 32 ) + ( (u64) 255 << 40 ) + (u64)0x00007fff));
	usleep(1000);
	Xil_Out128(XPAR_DAC_CONTROLLER_0_BASEADDR,MAKE128CONST(0x0000000000000D10,( UPDATE << 32 ) + ( (u64) 255 << 40 ) + ( (u64) 1 << 36 ) + (u64)1));
	usleep(1000);
	//TimeController

	Xil_Out128(XPAR_TIMECONTROLLER_0_BASEADDR,MAKE128CONST(0,2));
	usleep(1000);
	Xil_Out128(XPAR_TIMECONTROLLER_0_BASEADDR,MAKE128CONST(0,9));
	usleep(1000);
	/**/
	print("Programming Done\n");
	sleep(45);
	print("Finish");
    cleanup_platform();
    return 0;
}

