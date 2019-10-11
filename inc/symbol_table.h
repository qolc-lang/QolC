#ifndef _SYMBOL_TABLE_
#define _SYMBOL_TABLE_

typedef struct symbolTable {
	char variableName[100];
	char variableType[100];
	int isAlreadyDeclared;
	int addr;
	struct symbolTable* next, * first, * last;
}symbolTable;

void Insert();
void Display();
void Delete();
int Search(char lab[]);
void Modify();


#endif