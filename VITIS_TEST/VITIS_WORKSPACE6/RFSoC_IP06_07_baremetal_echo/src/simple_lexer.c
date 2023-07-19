#include <string.h>
#include "lwip/err.h"
#include "lwip/tcp.h"
#include "rfdc_controller.h"

struct instruction * simple_lexer(struct tcp_pcb *tpcb, struct instruction * inst){
	struct instruction * token = NULL;
	int64_t module_num = 0;
	int64_t fnct_num = 0;
	int64_t param_num = 0;
	int64_t timestamp_num = 0;

	token = tokenizer(inst);
	if( token == NULL ){
		return NULL;
	}

	if( token -> type == 'F'){
		tokenizer(token->next);
		return token;
	}

	module_num = get_module(token);
	token = token->next;

	switch(module_num){
		case 0: // CPU
#ifdef DEBUG_RFDC
			xil_printf("CASE 0 \r\n");
#endif
			tokenizer(token);
			fnct_num = get_fnct(token);
			param_num = get_param(token->next);
			run_cpu_process(tpcb,fnct_num,param_num);
			return;
		case 1: // Binary
#ifdef DEBUG_RFDC
			xil_printf("CASE 1 \r\n");
#endif
			fnct_num = get_fnct(token);
			simple_lexer(tpcb,token);
			run_bin_process(tpcb,fnct_num);
			return;
		default: // Module
#ifdef DEBUG_RFDC
			xil_printf("CASE B \r\n");
#endif
			token = simple_lexer(tpcb,token);
			fnct_num = get_fnct(token);
			timestamp_num = get_param(token->next);
			param_num = get_param(token-> next -> next);
			run_rtio_process(tpcb,module_num, fnct_num, timestamp_num, param_num);
			free(inst->name);
			free(inst);
			return token;
	}
}

INLINE struct instruction * tokenizer(struct instruction *inst){
	int64_t pos = 0;
	char * temp_str;
	if( is_end(inst) ){
#ifdef DEBUG_RFDC
		xil_printf("!EOL reached \r\n");
#endif
		free(inst->name);
		free(inst);
		return NULL;
	}

	if( inst -> type == 'N'){
		return inst;
	}

	pos = string_count(inst->name,2,'#');

	inst->next = malloc(sizeof(struct instruction));
	inst->next->name = malloc(sizeof(char)*(strlen(inst->name)-pos));
	inst->next->type = 'N';
	substring(inst->next->name,inst->name,pos,strlen(inst->name)+1);
	inst->next->next = NULL;

	temp_str = malloc(sizeof(char)*(pos));
	substring(temp_str,inst->name,1,pos);
#ifdef DEBUG_RFDC
	xil_printf("inst -> name : %s inst->next->name : %s\r\n",inst->name, inst->next->name);
#endif

	free(inst->name);
	inst->name = temp_str;

#ifdef DEBUG_RFDC
	xil_printf("Return inst -> name : %s\r\n",inst->name);
#endif

	return inst;
}

INLINE int64_t get_module(struct instruction * inst){
	int64_t i = 0;
	if( inst -> type == 'M'){
		return inst->num;
	}
	while(i < MODULE_NUM){
		if(strcmp((const char *)(inst->name),MODULE[i].module_name) == 0){
			inst->num = MODULE[i].num;
			inst->type = 'M';
			return inst -> num;
		}
	}


}

INLINE int64_t get_fnct(struct instruction * inst){
	int64_t i = 0;
	if( inst -> type == 'M'){
		return inst->num;
	}
	while(i < FNCT_NUM){
		if(strcmp((const char *)(inst->name),FNCT[i].fnct_name) == 0){
			inst->num = FNCT[i].num;
			inst->type = 'F';
			return inst -> num;
		}
		i++;
	}
}

INLINE int64_t get_timestamp(struct instruction *inst){
	if( inst -> type == 'T'){
		return inst->num;
	}
	else{
		inst->type = 'T';
		inst->num = string2int64(inst->name);
		return inst->num;
	}
}

INLINE int64_t get_param(struct instruction *inst){
	if( inst -> type == 'P'){
		return inst->num;
	}
	else{
		inst->type = 'P';
		inst->num = string2int64(inst->name);
		return inst->num;
	}
}

INLINE int64_t is_end(struct instruction *inst){
	if( strcmp(inst -> name,"#!EOL") == 0 ){
		xil_printf("END of line\r\n");
		return 1;
	}
	else{
		return 0;
	}
}

int64_t free_all(struct instruction *inst){
	if( inst == NULL ){
		return 0;
	}
	free(inst->name);
	inst->name = NULL;
	if(inst->next != NULL ){
		free_all(inst->next);
	}
	inst->next = NULL;
}
