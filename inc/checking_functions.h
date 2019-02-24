#ifndef _CHECK_FUNC_H_
#define _CHECK_FUNC_H_

#include "lexer_node.h"

int isKeyword(char buffer[]);
int isNumber(char buffer[], int pos, int len, lexer_node* myNode, char* temp_buffer);
int isOperator(char buffer, lexer_node* myNode, char* temp_buffer);
int isAtOperator(char buffer[], int pos, int len, lexer_node* myNode, char* temp_buffer);
int isStringLiteral(char buffer[], int pos, int len, lexer_node* myNode, char* temp_buffer);
int isSpecialSymbol(char buffer[], int pos, int len, int *flag, lexer_node* myNode, char* temp_buffer);
int isChar(char buffer[], int pos, int len, lexer_node* myNode, char* temp_buffer);
int lex(char fileName[]);

#endif