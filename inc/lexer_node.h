#include "headers.h"

typedef struct 
{
	char token[150];
	struct lexer_node* next;
}lexer_node;

void print_lexerList();
void push_lexerList(lexer_node* node, char token[]);
int pop_lexerList();