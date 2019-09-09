#include "../inc/checking_functions.h"
 
lexer_node lex(char fileName[]) {
	char buffer[150];
	char temp_buffer[200];
	char reading_buffer[150];
	int new_pos = 0, new_string_pos = 0, special_pos=0, num_pos = 0, char_pos = 0;
	int index=0;
	int temp_pos = 0;
	int flag = 0;
	size_t pos;
	FILE *fp;
	lexer_node * myNode = malloc(sizeof(lexer_node) * 200);

	memset(buffer, 0, sizeof(buffer));
	memset(temp_buffer, 0, sizeof(temp_buffer));
	memset(reading_buffer, 0, sizeof(reading_buffer));
	
	fp = fopen(fileName,"r");
	
	if(fp == NULL) {
		printf("error while opening the file\n");
		exit(0);
	}

	while (fgets(reading_buffer,sizeof(reading_buffer), fp) != NULL) {
		//printf("~~~~ %s\n", reading_buffer);
		for (pos = 0; pos < strlen(reading_buffer); ++pos) {
			printf("reading_buffer[pos] : %c\n", reading_buffer[pos]);

			/* 
				Checking for @ operations. After new position in buffer, also checking for 
				keyword, number, or identifier. 
			*/
			if ((new_pos = isAtOperator(reading_buffer, pos, strlen(reading_buffer), myNode, temp_buffer)) != -1) {
				pos += new_pos;
				buffer[index] = '\0';
				index = 0;
				if(isKeyword(buffer) == 1) 
					pushForLex(buffer, "keyword", myNode);
   				else if(isNumber(reading_buffer, pos, strlen(reading_buffer), myNode, temp_buffer) != -1) 
   					pushForLex(buffer, "number", myNode);
   				else {
   					if (buffer[0] == '\0') 
   						continue;
   					pushForLex(buffer, "identifier", myNode);
   				}
   				continue;
			}

			/* 
				Checking for end of command (new line). Also need to check for keyword or identifier. 
			*/
			if (reading_buffer[pos] == '\n') {
				pushForLex(NULL, "end of command", myNode);
				
				buffer[index] = '\0';
				index = 0;

				if(isKeyword(buffer) == 1) 
	   				pushForLex(buffer, "keyword", myNode);
   				else {
   					if (buffer[0] == '\0')
   						continue;
   					pushForLex(buffer, "identifier", myNode);
   				}
				continue;
			}

			/* 
				Checking for number.
			*/
			if ((num_pos = isNumber(reading_buffer, pos, strlen(reading_buffer),  myNode, temp_buffer)) != -1) {
				temp_pos = --pos;
				if (isalnum(reading_buffer[temp_pos]) || reading_buffer[temp_pos] == '_') {
					int temp;
					++pos;
					for (temp = 0; temp < num_pos; ++temp) {
						buffer[index++] = reading_buffer[pos];
						++pos;
					}
					--pos;
					continue;
				}
				else {
					++pos;
					pos += num_pos;
					if (reading_buffer[pos] == '\n') {
						pushForLex(NULL, "end of command", myNode);

						buffer[index] = '\0';
						index = 0;

						if(isKeyword(buffer) == 1) 
							pushForLex(buffer, "keyword", myNode);
		   				else {
		   					if (buffer[0] == '\0')
		   						continue;
		   					pushForLex(buffer, "identifier", myNode);
		   				}
						continue;
					}
				}
			}

			/* 
				Checking for special symbol.
			*/
			if ((special_pos = isSpecialSymbol(reading_buffer, pos, strlen(reading_buffer), &flag, myNode, temp_buffer)) != -1) {
				pos += special_pos;
				if (flag == 1) {
					buffer[index] = '\0';
					index = 0;
					if(buffer[0] == '\0') 
						continue;
					if(isKeyword(buffer) == 1) 
		   				pushForLex(buffer, "keyword", myNode);
	   				else
	   					pushForLex(buffer, "identifier", myNode);
	   				continue;
				}
				else if (flag == 2) {
					--pos;
					buffer[index] = '\0';
					index = 0;
					if(buffer[0] == '\0')
						continue;
					if(isKeyword(buffer) == 1)
		   				pushForLex(buffer, "keyword", myNode);
	   				else 
		   				pushForLex(buffer, "identifier", myNode);
					continue;
				}
				else
					continue;
			}

			/* 
				Checking for character.
			*/
			if ((char_pos = isChar(reading_buffer, pos, strlen(reading_buffer), myNode, temp_buffer)) != -1) {
				pos += char_pos;
				if (reading_buffer[pos] == '\n') {
					pushForLex(NULL, "end of command", myNode);

					buffer[index] = '\0';
					index = 0;

					if(isKeyword(buffer) == 1)
		   				pushForLex(buffer, "keyword", myNode);
	   				else {
	   					if (buffer[0] == '\0')
	   						continue;
	   					pushForLex(buffer, "identifier", myNode);
	   				}

					continue;
				}
				continue;
			}

			/* 
				Checking for string.
			*/
			if ((new_string_pos = isStringLiteral(reading_buffer, pos, strlen(reading_buffer), myNode, temp_buffer)) != -1) {
				pos += new_string_pos;
				continue;
			}

			if (isalnum(reading_buffer[pos]) || reading_buffer[pos] == '_' || isdigit(reading_buffer[pos]))
				buffer[index++] = reading_buffer[pos];
			else if ((reading_buffer[pos] == ' ' 
				     || reading_buffer[pos] == '\n' 
				     || reading_buffer[pos] == ';'
				     || isOperator(reading_buffer[pos], myNode, temp_buffer)) 
				     && (index!=0)) {
				buffer[index] = '\0';
				index = 0;

				if(isKeyword(buffer) == 1) 
	   				pushForLex(buffer, "keyword", myNode);
   				else
   					pushForLex(buffer, "identifier", myNode);
			}
			else;
		}
	}

	/*
		Catching end of file buffer
	*/
	if (feof(fp)) {
   		//printf("End of file\n");
   		if (index != 0) {
			buffer[index] = '\0';
			index = 0;

			if(isKeyword(buffer) == 1)
				pushForLex(buffer, "keyword", myNode);
			else if(isNumber(reading_buffer, pos, strlen(reading_buffer),  myNode, temp_buffer) != -1)
				pushForLex(buffer, "number", myNode);
			else
				pushForLex(buffer, "identifier", myNode);
   		}
 	}
 	else
		printf("Some other error interrupted the read.\n");

	free(myNode);
	fclose(fp);
	return *myNode;
}
