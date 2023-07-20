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

	fnct_num = get_fnct(token);
	if( token -> type == 'F'){
		return token;
	}
	else{
		module_num = get_module(token);
		token = token -> next;

		switch(module_num){
			case 0: // CPU
				tokenizer(token);
				fnct_num = get_fnct(token);
				tokenizer(token -> next);
				param_num = get_param(token -> next);
				run_cpu_process(tpcb,fnct_num,param_num);
				return token;

			case 1: // Binary
				tokenizer(token);
				fnct_num = get_fnct(token);
				tokenizer(token -> next);
				param_num = get_param(token -> next);
				run_bin_process(tpcb, fnct_num,param_num);
				return token;

			default: // Module
				token = simple_lexer(tpcb,token);
				inst -> next = token;
				fnct_num = get_fnct(token);
				tokenizer(token -> next);
				timestamp_num = get_timestamp(token -> next);
				tokenizer(token -> next -> next);
				param_num = get_param(token-> next -> next);
				run_rtio_process(tpcb,module_num, fnct_num, timestamp_num, param_num);
				free(inst -> name);
				inst -> name = NULL;
				free(inst);
				inst = NULL;
				return token;
		}
	}
}

INLINE struct instruction * tokenizer(struct instruction *inst){
	int64_t pos = 0;
	char * temp_str = NULL;
	if( is_end(inst) ){
		free(inst->name);
		inst->name = NULL;
		free(inst);
		inst = NULL;
		return NULL;
	}

	//xil_printf("tokenizer : inst->name = %s, inst->type = %c\r\n",inst->name, inst->type);
	if( inst -> type != '!'){
		return inst;
	}

	pos = string_count(inst->name,2,'#');

	inst->next = (struct instruction *)malloc(sizeof(struct instruction));
	if( inst -> next == NULL ){
		xil_printf("memory allocation failed\r\n");
	}
	inst -> next -> name = NULL;

	inst->next->name = (char *)malloc(sizeof(char)*(strlen(inst->name)-pos+2));
	if( inst -> next -> name == NULL ){
		xil_printf("memory allocation failed\r\n");
	}

	inst->next->type = '!';
	substring(inst->next->name,inst->name,pos,strlen(inst->name)+2);
	inst->next->next = NULL;

	temp_str = (char *)malloc(sizeof(char)*(pos+2));
	if( temp_str == NULL ){
		xil_printf("memory allocation failed\r\n");
	}

	substring(temp_str,inst->name,1,pos);


	if( inst->name != NULL ){
		free(inst->name);
		inst-> name = temp_str;
	}
	else{
		xil_printf("NULL pointer cannot be freed\r\n");
	}

#ifdef DEBUG_RFDC
	//xil_printf("Return inst -> name : %s\r\n",inst->name);
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
		i++;
	}
	return i;
}

INLINE int64_t get_fnct(struct instruction * inst){
	int64_t i = 0;
	if( inst -> type == 'F'){
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
	return i;
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
	free(inst);
	return;
}
