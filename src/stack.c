#include "../inc/stack.h"

/*
	Initializing stack
*/
void init(int* top)
{
    *top = 0;
}

/*
	Pushing the element in the stack
*/
void push(char* st, int* top, char* element)
{
    strcpy(st, element);
    ++*top;
    printf("Push completed with element : %s \n", element);
}

/*
	Removing an element from the stack
*/
void pop(int* top)
{
    if (*top > 0)
        --*top;
}

/*
	Checking for full stack
*/
int full(int *top, const int size)
{
    return *top == size ? 1 : 0;
}

/*
	Checking for empty stack
*/
int empty(int *top)
{
    return *top == 0 ? 1 : 0;
}