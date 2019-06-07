#ifndef _LEXER_NODE_H_
#define _LEXER_NODE_H_

#include "headers.h"

typedef struct lexer_node
{
	char token[150];
	struct lexer_node* next;
}lexer_node;

void pushAndreset(char buffer[], char* typeToPush);
void print_lexerList(lexer_node* node, char* fileName);
void push_lexerList(lexer_node* node, char token[]);
int pop_lexerList();

#endif