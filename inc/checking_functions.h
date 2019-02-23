#ifndef _CHECK_FUNC_H_
#define _CHECK_FUNC_H_

#include "lexer_node.h"

int isKeyword(char buffer[]);
int isNumber(char buffer[], int pos, int len, lexer_node* myNode, char* temp_buffer);
int isOperator(char buffer, lexer_node* myNode, char* temp_buffer);
int isAtOperator(char buffer[], int pos, int len);
int isStringLiteral(char buffer[], int pos, int len);
int isSpecialSymbol(char buffer[], int pos, int len, int *flag);
int isChar(char buffer[], int pos, int len);
int lex(char fileName[]);

#endif