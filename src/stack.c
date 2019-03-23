#include "../inc/stack.h"

void init(int* top)
{
    *top = 0;
}
 
void push(char* st, int* top, char* element)
{
    printf("in push\n");
    printf("the top : %d\n", *top);
    printf("the element : %s\n", element);
    strcpy(st, element);
    ++*top;
    printf("exitin pus\n");
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