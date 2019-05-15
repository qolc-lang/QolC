#ifndef _PARSER_H_
#define _PARSER_H_

#include "parse_state.h"
#include "ast.h"
#include "command.h"

void parseProgram(parse_state* node);
void parseToken(char* token);
parse_state* parseNumber(char* token);
parse_state* parseString(char* token);
void parseExpression(char* token);

void parsing(parse_state* current, command* commandNode);
void checkTheStack(parse_state* current, char* theStackTop, int top);

#endif