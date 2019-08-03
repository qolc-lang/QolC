#ifndef _PARSER_FUNCTIONS_H_
#define _PARSER_FUNCTIONS_H_

#include "../inc/parser.h"
#include "../inc/stack.h"
#include "../inc/ast.h"
#include "../inc/command.h"

typedef struct tempVariables
{
	char temp[100];
	char tempOp[3];
	char tempOp2[3];
	char value[100];
}tempVariables;

parse_state* checkForReturnOperator(parse_state* current, char* tempStack, int tempTop, command* commandNode, tempVariables* tempNode);
int isIdentifierType(char* currentType);
int isNumberType(char* currentType);
void BuildImportStatement(char* currentValue, command* commandNode);
void BuildLoadStatement(char* currentValue, command* commandNode);
void BuildPrintStatement(char* currentValue, command* commandNode);
void BuildSleepStatement(char* currentValue, command* commandNode);
void BuildScanStatement(char* currentValue, command* commandNode);

#endif