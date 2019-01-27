#ifndef _CHECK_FUNC_H_
#define _CHECK_FUNC_H_


int isKeyword(char buffer[]);
int isNumber(char buffer[]);
int isOperator(char buffer);
int isAtOperator(char buffer[], int pos, int len);
int isStringLiteral(char buffer[], int pos, int len);

#endif