#include "../inc/checking_functions.h"

//Check for keyword 
int isKeyword(char buffer[]){
	char keywords[31][10] = {"string","else","enum","float","for",
							"if","int","return", "struct", "while",
							"new", "delete", "defer", "print", "break",
							"continue", "then", "import", "load", "null",
							"main", "to", "cast", "sleep", "bool",
							"array_add", "true", "false", "assert", "union",
							"scan"};
	int i, flag = 0;
	for(i = 0; i < 31; ++i){
		if(strcmp(keywords[i], buffer) == 0){
			flag = 1;
			break;
		}
	}
	return flag;
}

//Check for number
int isNumber(char buffer[], int pos, int len, lexer_node* myNode, char* temp_buffer){
	int count = 0;
	char buf[len];
	int j = 0;

	memset(buf, 0, sizeof(buf));
	if (isdigit(buffer[pos])) {
		buf[j] = buffer[pos];
		++j;
		++pos;
		++count;
		do {
			if (pos < len) {
				if (isdigit(buffer[pos]) || buffer[pos] == '.') {
					++count;
					buf[j] = buffer[pos];
					++pos;
					++j;
				}
				else if (buffer[pos] == 'x') {
					if (buf [0] == '0') {
						++count;
						buf[j] = buffer[pos];
						++pos;
						++j;
						while (isalnum(buffer[pos])) {
							++count;
							buf[j] = buffer[pos];
							++pos;
							++j;
						}
					}
				}
			}
		}while (isdigit(buffer[pos]) || buffer[pos] == '.' || buffer[pos] == 'x');
		if (buf[1] == 'x') {
			strcpy(temp_buffer, "hexadecimal number,");
			strcat(temp_buffer, buf);
			push_lexerList(myNode, temp_buffer);
			memset(temp_buffer, 0, sizeof(temp_buffer));
		} else {
			strcpy(temp_buffer, "number,");
			strcat(temp_buffer, buf);
			push_lexerList(myNode, temp_buffer);
			memset(temp_buffer, 0, sizeof(temp_buffer));
		}
		return count;
	}
	return -1;
}

//Check for operator
int isOperator(char buffer, lexer_node* myNode, char* temp_buffer) {
	char operators[10][2] = {"%", "="};
	size_t op_pos;
	char operator_buff[10];
	memset(operator_buff, 0, sizeof(operator_buff));

	for (op_pos = 0; op_pos < 2; ++op_pos){
		if (buffer == *operators[op_pos]){
			operator_buff[0] = buffer;
			strcpy(temp_buffer, "operator, ");
			strcat(temp_buffer, operator_buff);
			push_lexerList(myNode, temp_buffer);
			memset(temp_buffer, 0, sizeof(temp_buffer));
			return 1;
		}
	}
	return 0;
}

//Check for @ operations
int isAtOperator(char buffer[], int pos, int len, lexer_node* myNode, char* temp_buffer) {
	int count = 0;
	if (buffer[pos] == '@'){
		++pos;
		if (pos < len) {
			if (buffer[pos] == '='){
				++pos;
				++count;
				if (buffer[pos] == '='){
					++count;
					strcpy(temp_buffer, "operator,@==");
					push_lexerList(myNode, temp_buffer);
					memset(temp_buffer, 0, sizeof(temp_buffer));
					return count;
				}
				else{
					strcpy(temp_buffer, "operator,@=");
					push_lexerList(myNode, temp_buffer);
					memset(temp_buffer, 0, sizeof(temp_buffer));
					return count;
				}
			}
			else if (buffer[pos] == '@'){
				++count;
				strcpy(temp_buffer, "operator,@@");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				return count;
			}
			else if (buffer[pos] == '.'){
				++count;
				strcpy(temp_buffer, "operator,@.");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				return count;
			}
			else if (buffer[pos] == '/'){
				++count;
				strcpy(temp_buffer, "comment end,@/");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				return count;
			}
			else if (buffer[pos] == '|'){
				++count;
				strcpy(temp_buffer, "block end,@|");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				return count;
			}
			else {
				strcpy(temp_buffer, "operator,@");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				return count;
			}
		}
	}
	return -1;
}

//Check for string literal
int isStringLiteral(char buffer[], int pos, int len, lexer_node* myNode, char* temp_buffer) {
	int count = 0;
	char buf[len];
	int j = 0;

	memset(buf, 0, sizeof(buf));
	if (buffer[pos] == '"') {
		++pos;
		do {
			if (pos < len) {
				++count;
				buf[j++] = buffer[pos];
			}
			++pos;
		}while (buffer[pos] != '"');
		strcpy(temp_buffer, "string,");
		strcat(temp_buffer, buf);
		push_lexerList(myNode, temp_buffer);
		memset(temp_buffer, 0, sizeof(temp_buffer));
		++count;
		return count;
	}
	return -1;
}

//Check for special symbol
int isSpecialSymbol(char buffer[], int pos, int len, int *flag, lexer_node* myNode, char* temp_buffer) {
	int count = 0;
	char buf[len];
	int j = 0;
	int temp1 = 1;
	int temp2 = 2;
	int temp10 = 10;
	memset(buf, 0, sizeof(buf));

	if (buffer[pos] == '#') {
		strcpy(temp_buffer, "special symbol, #");
		push_lexerList(myNode, temp_buffer);
		memset(temp_buffer, 0, sizeof(temp_buffer));
		*flag = temp10;
		return 1;
	}

	if (buffer[pos] == '\\') {
		strcpy(temp_buffer, "return symbol, \\");
		push_lexerList(myNode, temp_buffer);
		memset(temp_buffer, 0, sizeof(temp_buffer));
		*flag = temp10;
		return 1;
	}

	if (buffer[pos] == '[') {
		strcpy(temp_buffer, "array start, [");
		push_lexerList(myNode, temp_buffer);
		memset(temp_buffer, 0, sizeof(temp_buffer));
		*flag = temp2;
		return 1;
	}

	if (buffer[pos] == ']') {
		strcpy(temp_buffer, "array end, ]");
		push_lexerList(myNode, temp_buffer);
		memset(temp_buffer, 0, sizeof(temp_buffer));
		*flag = temp2;
		return 1;
	}

	if (buffer[pos] == '!') {
		strcpy(temp_buffer, "special symbol, !");
		push_lexerList(myNode, temp_buffer);
		memset(temp_buffer, 0, sizeof(temp_buffer));
		*flag = temp2;
		return 1;
	}

	if (buffer[pos] == '&') {
		strcpy(temp_buffer, "reference symbol, &");
		push_lexerList(myNode, temp_buffer);
		memset(temp_buffer, 0, sizeof(temp_buffer));
		*flag = temp2;
		return 1;
	}

	if (buffer[pos] == ',') {
		strcpy(temp_buffer, "comma, ,");
		push_lexerList(myNode, temp_buffer);
		memset(temp_buffer, 0, sizeof(temp_buffer));
		*flag = temp2;
		return 1;
	}

	if (buffer[pos] == '^'){
		strcpy(temp_buffer, "pointer symbol, ^");
		push_lexerList(myNode, temp_buffer);
		memset(temp_buffer, 0, sizeof(temp_buffer));
		*flag = temp2;
		return 1;
	}

	if (buffer[pos] == '/'){
		++pos;
		++count;
		if (pos < len) {
			if (buffer[pos] == '@'){
				++pos;
				++count;
				strcpy(temp_buffer, "comment start, /@");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				*flag = temp2;
				return count;
			}
			else if (buffer[pos] == '='){
				++pos;
				++count;
				strcpy(temp_buffer, "operator, /=");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				*flag = temp2;
				return count;
			}
			else {
				++pos;
				++count;
				strcpy(temp_buffer, "operator, /");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				*flag = temp2;
				return count;
			}
		}
	}

	if (buffer[pos] == '|'){
		++pos;
		++count;
		if (pos < len) {
			if (buffer[pos] == '@'){
				++pos;
				++count;
				strcpy(temp_buffer, "block start,|@");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				*flag = temp10;
				return count;
			}
			else {
				strcpy(temp_buffer, "parenthesis,|");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				*flag = temp2;
				return 1;
			}
		}
	}

	if (buffer[pos] == '+'){
		++pos;
		if (pos < len) {
			if (buffer[pos] == '+'){
				++pos;
				++count;
				strcpy(temp_buffer, "operator, ++");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				*flag = temp1;
				return count;
			}
			else if (buffer[pos] == '='){
				++pos;
				++count;
				strcpy(temp_buffer, "operator, +=");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				*flag = temp1;
				return count;
			}
			else {
				strcpy(temp_buffer, "operator, +");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				*flag = temp1;
				return count;
			}
		}
	}

	if (buffer[pos] == '-'){
		++pos;
		if (pos < len) {
			if (buffer[pos] == '-'){
				++pos;
				++count;
				if (pos < len) {
					if (buffer[pos] == '-'){
						++pos;
						++count;
						strcpy(temp_buffer, "operator, ---");
						push_lexerList(myNode, temp_buffer);
						memset(temp_buffer, 0, sizeof(temp_buffer));
						*flag = temp1;
						return count;
					}
					else {
						strcpy(temp_buffer, "operator, --");
						push_lexerList(myNode, temp_buffer);
						memset(temp_buffer, 0, sizeof(temp_buffer));
						*flag = temp1;
						return count;
					}
				}
			}
			else if (buffer[pos] == '='){
				++pos;
				++count;
				strcpy(temp_buffer, "operator, -=");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				*flag = temp1;
				return count;
			}
			else if (buffer[pos] == '>'){
				++pos;
				++count;
				strcpy(temp_buffer, "operator, ->");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				*flag = temp1;
				return count;
			}
			else {
				strcpy(temp_buffer, "operator, -");
				push_lexerList(myNode, temp_buffer);
				memset(temp_buffer, 0, sizeof(temp_buffer));
				*flag = temp1;
				return count;
			}
		}
	}

	if (buffer[pos] == '*'){
		++pos;
		if (buffer[pos] == '='){
			++pos;
			++count;
			strcpy(temp_buffer, "operator, *=");
			push_lexerList(myNode, temp_buffer);
			memset(temp_buffer, 0, sizeof(temp_buffer));
			*flag = temp1;
			return count;
		}
		else {
			strcpy(temp_buffer, "operator, *");
			push_lexerList(myNode, temp_buffer);
			memset(temp_buffer, 0, sizeof(temp_buffer));
			*flag = temp1;
			return count;
		}
	}

	if (buffer[pos] == '~'){
		++pos;
		if (buffer[pos] == '='){
			++pos;
			++count;
			strcpy(temp_buffer, "operator, ~=");
			push_lexerList(myNode, temp_buffer);
			memset(temp_buffer, 0, sizeof(temp_buffer));
			*flag = temp1;
			return count;
		}
		else {
			strcpy(temp_buffer, "operator, ~");
			push_lexerList(myNode, temp_buffer);
			memset(temp_buffer, 0, sizeof(temp_buffer));
			*flag = temp1;
			return count;
		}
	}

	if (buffer[pos] == '<'){
		++pos;
		if (buffer[pos] == '='){
			++pos;
			++count;
			strcpy(temp_buffer, "operator, <=");
			push_lexerList(myNode, temp_buffer);
			memset(temp_buffer, 0, sizeof(temp_buffer));
			*flag = temp1;
			return count;
		}
		else {
			strcpy(temp_buffer, "operator, <");
			push_lexerList(myNode, temp_buffer);
			memset(temp_buffer, 0, sizeof(temp_buffer));
			*flag = temp1;
			return count;
		}
	}

	if (buffer[pos] == '>'){
		++pos;
		if (buffer[pos] == '='){
			++pos;
			++count;
			strcpy(temp_buffer, "operator, >=");
			push_lexerList(myNode, temp_buffer);
			memset(temp_buffer, 0, sizeof(temp_buffer));
			*flag = temp1;
			return count;
		}
		else {
			strcpy(temp_buffer, "operator, >");
			push_lexerList(myNode, temp_buffer);
			memset(temp_buffer, 0, sizeof(temp_buffer));
			*flag = temp1;
			return count;
		}
	}

	if (buffer[pos] == '.'){
		++pos;
		if (buffer[pos] == '.'){
			++pos;
			++count;
			strcpy(temp_buffer, "operator, ..");
			push_lexerList(myNode, temp_buffer);
			memset(temp_buffer, 0, sizeof(temp_buffer));
			*flag = temp1;;
			return count;
		} 
		else {
			strcpy(temp_buffer, "operator, .");
			push_lexerList(myNode, temp_buffer);
			memset(temp_buffer, 0, sizeof(temp_buffer));
			*flag = temp1;
			return count;
		}
	}

	return -1;
}

//Check for character
int isChar(char buffer[], int pos, int len, lexer_node* myNode, char* temp_buffer) {
	int count = 0;
	char buf[len];
	int j = 0;

	memset(buf, 0, sizeof(buf));
	if (buffer[pos] == '\'') {
		buf[j] = buffer[pos];
		++j;
		++pos;
		do {
			if (pos < len) {
				++count;
				buf[j] = buffer[pos];
				++j;
			}
			++pos;
		}while (buffer[pos] != '\n');
		strcpy(temp_buffer, "character, ");
		strcat(temp_buffer, buf);
		push_lexerList(myNode, temp_buffer);
		memset(temp_buffer, 0, sizeof(temp_buffer));
		++count;
		return count;
	}
	return -1;
}
