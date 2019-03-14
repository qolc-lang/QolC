#ifndef _PARSE_STATE_H_
#define _PARSE_STATE_H_

#include "lexer_node.h"

typedef struct parse_state
{
	int pos;
	char type[100];
	char value[100];
	struct parse_state* next;
}parse_state;

parse_state* make_parse_stateList(lexer_node* tokens);
void push_parseList(parse_state* node, int pos, char type[], char value[]);
void print_parseStateList(parse_state* node);
int removeLast(parse_state* head);

#endif