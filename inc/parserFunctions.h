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


typedef struct memberFlags
{
	int nIsStructMember;
	int nIsUnionMember;
	int nIsEnumMember;
	int nIsAssertMember;
	int nIsMainMember;
	int nIsReturnMember;
}memberFlags;

int isIdentifierType(char* currentType);
int isNumberType(char* currentType);
void BuildSingleExprStatement(char* currentValue, command* commandNode, int statement);
void BuildDoubleExprStatement(parse_state* current, command* commandNode, int statement);
void BuildNewStatement(parse_state * current, command* commandNode, char* temp);
void BuildDeclarationExprStatement(char* currentValue, command* commandNode, char* temp, int type, int typeOfMember);
void BuildAssignAndCompareExprStatement(char* temp, char* temp2, command* commandNode, int operation, int typeOfMember);
void BuildDeclarationStatement(char* temp, char* temp2, command* commandNode);
void BuildSimpleExpressionStatement(char* temp, char* temp2, command* commandNode, int operation, int typeOfMember);
int CheckIfMemberOfStatement(memberFlags mFlags);
void ClearFlags(memberFlags* mFlags);
int CheckArrayType(parse_state* current, symbolTable* symTable);

#endif