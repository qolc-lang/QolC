#include "../inc/stack.h"

void init(int* top)
{
    *top = 0;
}
 
void push(char* st, int* top, char* element)
{
    strcpy(st, element);
    ++*top;
    printf("push completed with element : %s \n", element);
}

void pop(int* top)
{
    if (*top > 0)
        --*top;
}

int full(int *top, const int size)
{
    return *top == size ? 1 : 0;
}

int empty(int *top)
{
    return *top == 0 ? 1 : 0;
}