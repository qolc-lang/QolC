#ifndef _PARSER_H_
#define _PARSER_H_

#include "parse_state.h"
#include "ast.h"
#include "command.h"

void parseProgram(parse_state* node);
void parsing(parse_state* current, command* commandNode);
parse_state* checkTheStack(parse_state* current, char* theStackTop, int top, command* commandNode);

#endif