#include <string.h>
#include "lwip/err.h"
#include "lwip/tcp.h"
#include "rfdc_controller.h"

int64_t run_binary(){

}

int64_t save_binary(){

}

int64_t run_bin_process(struct tcp_pcb *tpcb, int64_t fnct_num){
	xil_printf("BIN %d",fnct_num);
}
