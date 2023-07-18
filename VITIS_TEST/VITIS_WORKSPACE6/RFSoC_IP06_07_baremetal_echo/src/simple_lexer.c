#include <string.h>
#include "lwip/err.h"
#include "lwip/tcp.h"
#include "rfdc_controller.h"

int64_t simple_lexer(struct tcp_pcb *tpcb, struct instruction * inst){
	int64_t pos = 0;
	char * temp_str;
	pos = string_count(inst->name,2,'#');

	inst->next = malloc(sizeof(struct instruction));
	inst->next->name = malloc(sizeof(char)*(strlen(inst->name)-pos));
	substring(inst->next->name,inst->name,pos,strlen(inst->name)+1);
	inst->next->next = NULL;

	xil_printf("%d\r\n",pos);
	temp_str = malloc(sizeof(char)*(pos));
	substring(temp_str,inst->name,1,pos);

	free(inst->name);
	inst->name = temp_str;
	xil_printf("%s\r\n",inst->name);
	xil_printf("%s\r\n",inst->next->name);

	return 0;
}

int64_t get_device(struct instruction * inst){
	int64_t pos = 0;
	pos = string_count(inst->name,1,'#');
	return 0;
}

int64_t get_module(struct instruction * inst){
	int64_t pos = 0;
	pos = string_count(inst->name,1,'#');
	return 0;
}

int64_t get_timestamp(struct instruction *inst){
	int64_t pos = 0;
	pos = string_count(inst->name,1,'#');
	return 0;
}

int64_t get_inst(struct instruction *inst){
	int64_t pos = 0;
	pos = string_count(inst->name,1,'#');
	return 0;
}

int64_t free_all(struct instruction *inst){
	free(inst->name);
	inst->name = NULL;
	if(inst->next != NULL ){
		free_all(inst->next);
	}
	inst->next = NULL;
}
