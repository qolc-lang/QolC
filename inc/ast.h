#ifndef _AST_H_
#define _AST_H_

typedef struct ast
{
	//array of objects
	struct ast* next;
}ast;

void print_ast(lexer_node* node, char* fileName);
void push_ast(lexer_node* node, char token[]);
int pop_ast();

#endif