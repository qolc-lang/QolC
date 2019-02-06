#include "../inc/headers.h"
#include "../inc/checking_functions.h"
 
int main(){
	char buffer[20];
	char reading_buffer[50];
	int new_pos = 0, new_string_pos = 0, special_pos=0, floating_pos = 0, char_pos = 0;
	FILE *fp;
	int index=0;
	size_t pos;

	memset(buffer, 0, sizeof(buffer));
	memset(reading_buffer, 0, sizeof(reading_buffer));
	
	fp = fopen("input/input_program.txt","r");
	
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
   					printf("@@@@@@@@ : keyword : %s\n", buffer);
   				else if(isNumber(reading_buffer, pos, strlen(reading_buffer)) != -1)
   					printf("@@@@@@@@ : number : %s\n", buffer);
   				else{
   					if (buffer[0] == '\0') {
   						continue;
   					}
   					printf("@@@@@@@@ : indentifier : %s\n", buffer);
   				}
   				continue;
			}

			if ((new_string_pos = isStringLiteral(reading_buffer, pos, strlen(reading_buffer))) != -1){
				pos += new_string_pos;
				continue;
			}

			if ((floating_pos = isNumber(reading_buffer, pos, strlen(reading_buffer))) != -1){
				pos += floating_pos;
				continue;
			}

			if ((special_pos = isSpecialSymbol(reading_buffer, pos, strlen(reading_buffer))) != -1){
				pos += special_pos;
				continue;
			}

			if ((char_pos = isChar(reading_buffer, pos, strlen(reading_buffer))) != -1){
				pos += char_pos;
				continue;
			}

			if (isalnum(reading_buffer[pos]) || reading_buffer[pos] == '_') {
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
   					printf("@@@@@@@@ : keyword : %s\n", buffer);
   				else
   					printf("@@@@@@@@ : indentifier : %s\n", buffer);
			}
			else {
				if (reading_buffer[pos] == ';')
				{
					//printf("end of this command, going to next one\n");
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
					printf("@@@@@@@@ : keyword : %s\n", buffer);
			else if(isNumber(reading_buffer, pos, strlen(reading_buffer)) != -1)
				printf("@@@@@@@@ : number : %s\n", buffer);
			else
				printf("@@@@@@@@ : indentifier : %s\n", buffer);
   		}


 	}
 	else {
		printf("Some other error interrupted the read.\n");
	}
	
	fclose(fp);
	return 0;
}
