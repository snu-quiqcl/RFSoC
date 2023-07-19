#include <string.h>
#include "lwip/err.h"
#include "lwip/tcp.h"
#include "rfdc_controller.h"
#include "xil_exception.h"
#include "xil_cache.h"

#define BUFFER_SIZE 4096
#define LOAD_ADDRESS 0x10000000

static page_num = 0;
static total_page_num = 0;

static unsigned char * buffer;

int64_t run_binary(){
	Xil_DCacheFlush();
	void (*loaded_code)(void) = (void (*)(void))LOAD_ADDRESS;
	loaded_code();
}

int64_t save_binary(struct tcp_pcb *tpcb, char * page){
	if( page_num == 0 ){
		buffer = malloc( sizeof(unsigned char) * BUFFER_SIZE * total_page_num );
	}
	page_num++;
	unsigned char *data = (unsigned char *)page;
	int64_t data_length = strlen(page);

	// Copy the received data to the buffer
	memcpy(buffer + sizeof(unsigned char) * BUFFER_SIZE * total_page_num, data, data_length);
	xil_printf("DATA : %s",buffer);

	if( page_num >= total_page_num){
		binary_mode = 0;
	}
}

