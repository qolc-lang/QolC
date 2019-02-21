#include "../inc/headers.h"
#include "../inc/checking_functions.h"
 
int lex(char fileName[]){
	char buffer[150];
	char reading_buffer[150];
	int new_pos = 0, new_string_pos = 0, special_pos=0, num_pos = 0, char_pos = 0;
	FILE *fp;
	int index=0;
	int temp_pos = 0;
	int flag = 0;
	size_t pos;

	memset(buffer, 0, sizeof(buffer));
	memset(reading_buffer, 0, sizeof(reading_buffer));
	
	fp = fopen(fileName,"r");
	
	if(fp == NULL) {
		printf("error while opening the file\n");
		exit(0);
	}

	while (fgets(reading_buffer,sizeof(reading_buffer), fp) != NULL) {
		printf("@@@@@@@@ : buffer : %s\n", reading_buffer);

		for (pos = 0; pos < strlen(reading_buffer); ++pos){
			//printf("reading_buffer[pos] : %c\n", reading_buffer[pos]);

			if ((new_pos = isAtOperator(reading_buffer, pos, strlen(reading_buffer))) != -1){
				pos += new_pos;
				buffer[index] = '\0';
				index = 0;
				if(isKeyword(buffer) == 1)
   					printf("[keyword, %s]\n", buffer);
   				else if(isNumber(reading_buffer, pos, strlen(reading_buffer)) != -1)
   					printf("[number, %s]\n", buffer);
   				else{
   					if (buffer[0] == '\0') {
   						continue;
   					}
   					printf("[identifier, %s]\n", buffer);
   				}
   				continue;
			}

			if (reading_buffer[pos] == ';')
			{
				printf("[end of command, ;]\n");
				continue;
			}

			if ((num_pos = isNumber(reading_buffer, pos, strlen(reading_buffer))) != -1){
				temp_pos = --pos;
				if (isalnum(reading_buffer[temp_pos]) || reading_buffer[temp_pos] == '_') {
					int temp;
					++pos;
					for (temp = 0; temp < num_pos; ++temp)
					{
						buffer[index++] = reading_buffer[pos];
						++pos;
					}
					--pos;
					continue;
				}
				else {
					++pos;
					pos += num_pos;
					if (reading_buffer[pos] == ';')
					{
						printf("[end of command, ;]\n");
						continue;
					}
				}
			}

			if ((special_pos = isSpecialSymbol(reading_buffer, pos, strlen(reading_buffer), &flag)) != -1){
				pos += special_pos;
				int temp1 = 1;
				int temp2 = 2;
				if (flag == 1) {
					buffer[index] = '\0';
					index = 0;
					if(buffer[0] == '\0') {
						continue;
					}
					if(isKeyword(buffer) == 1)
	   					printf("[keyword, %s]\n", buffer);
	   				else
	   					printf("[identifier, %s]\n", buffer);

	   				continue;
				}
				else if (flag == 2) {
					--pos;
					buffer[index] = '\0';
					index = 0;
					if(buffer[0] == '\0') {
						continue;
					}
					if(isKeyword(buffer) == 1)
	   					printf("[keyword, %s]\n", buffer);
	   				else
	   					printf("[identifier, %s]\n", buffer);
					continue;
				}
				else {
					continue;
				}
			}

			if ((char_pos = isChar(reading_buffer, pos, strlen(reading_buffer))) != -1){
				pos += char_pos;
				if (reading_buffer[pos] == ';')
				{
					printf("[end of command, ;]\n");
					continue;
				}
				continue;
			}

			if ((new_string_pos = isStringLiteral(reading_buffer, pos, strlen(reading_buffer))) != -1){
				pos += new_string_pos;
				continue;
			}

			if (isalnum(reading_buffer[pos]) || reading_buffer[pos] == '_' || isdigit(reading_buffer[pos])) {
				buffer[index++] = reading_buffer[pos];
			}
			else if ((reading_buffer[pos] == ' ' 
				     || reading_buffer[pos] == '\n' 
				     || reading_buffer[pos] == ';'
				     || isOperator(reading_buffer[pos]) ) 
				     && (index!=0)) 
			{
				buffer[index] = '\0';
				index = 0;

				if(isKeyword(buffer) == 1)
   					printf("[keyword, %s]\n", buffer);
   				else
   					printf("[identifier, %s]\n", buffer);
			}
			else {
				if (reading_buffer[pos] == ';')
				{
				}
			}
		}
		printf("\n");
	}
	if (feof(fp)) {
   		printf("End of file\n");

   		//catching end of file buffer
   		if (index != 0) {
			buffer[index] = '\0';
			index = 0;

			if(isKeyword(buffer) == 1)
					printf("[keyword, %s]\n", buffer);
			else if(isNumber(reading_buffer, pos, strlen(reading_buffer)) != -1)
				printf("[number, %s]\n", buffer);
			else
				printf("[identifier, %s]\n", buffer);
   		}
 	}
 	else {
		printf("Some other error interrupted the read.\n");
	}
	
	fclose(fp);
	return 0;
}
