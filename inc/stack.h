#ifndef STACK_H_
#define STACK_H_

#include "ast.h"
 
void push(char* st, int* top, char* element);
void pop(int* top);
int full(int* top, const int size);
int empty(int* top);
void init(int* top);
 
#endif