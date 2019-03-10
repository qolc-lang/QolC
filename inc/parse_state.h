#include "lexer_node.h"

typedef struct parse_state
{
	int pos;
	char* type;
	char* value;
	struct parse_state* next;
}parse_state;

parse_state* make_parse_stateList(lexer_node* tokens);