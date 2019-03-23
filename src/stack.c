#include "../inc/stack.h"

void init(int* top)
{
    *top = 0;
}
 
void push(char** st, int* top, char* element)
{
    strcpy(st[(*top)++], element);
}

char* pop(char** st, int* top)
{
    return st[--(*top)];
}

int full(int *top, const int size)
{
    return *top == size ? 1 : 0;
}

int empty(int *top)
{
    return *top == 0 ? 1 : 0;
}
 
void display(char** st,int* top)
{
    printf("Stack: ");
    int i;
    for(i = 0; i < *top; i++)
    {
        printf("%s ",st[i]);
    }
    printf("\n");
}