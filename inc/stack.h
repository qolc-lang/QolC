#ifndef STACK_H_
#define STACK_H_

#include "ast.h"
 
void push(char** st, int* top, char* element);
char* pop(char** st, int* top);
int full(int* top, const int size);
int empty(int* top);
void init(int* top);
void display(char** st, int* top);
 
#endif