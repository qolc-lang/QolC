#include "../inc/headers.h"
#include "../inc/checking_functions.h"
 
int main(){
	char buffer[20], blankBuffer[20], digitBuffer[20];
	char reading_buffer[50];
	int new_pos = 0;
	int new_string_pos = 0;
	FILE *fp;
	int j=0;
	
	fp = fopen("input/input_program.txt","r");
	
	if(fp == NULL) {
		printf("error while opening the file\n");
		exit(0);
	}

	while (fgets(reading_buffer,sizeof(reading_buffer), fp) != NULL) {
		printf("@@@@@@@@ : buffer : %s\n", reading_buffer);
		size_t pos;
		for (pos = 0; pos < strlen(reading_buffer); ++pos)
		{
			//printf("reading_buffer[pos] : %c\n", reading_buffer[pos]);

			if ((new_pos = isAtOperator(reading_buffer, pos, strlen(reading_buffer))) != -1)
			{
				pos += new_pos;
				buffer[j] = '\0';
				j = 0;

				if(isKeyword(buffer) == 1)
   					printf("@@@@@@@@ : keyword : %s\n", buffer);
   				else if(isNumber(buffer) == 1)
   					printf("@@@@@@@@ : number : %s\n", buffer);
   				else{
   					if (buffer[0] == '\0') {
   						continue;
   					}
   					printf("@@@@@@@@ : indentifier : %s\n", buffer);
   				}

   				continue;
			}

			if ((new_string_pos = isStringLiteral(reading_buffer, pos, strlen(reading_buffer))) != -1)
			{
				pos += new_string_pos;
				continue;
			}

			//check if it is identifier, number or keyword
			if (isalnum(reading_buffer[pos])) {
				buffer[j++] = reading_buffer[pos];
			}
			else if ((reading_buffer[pos] == ' ' 
				     || reading_buffer[pos] == '\n' 
				     || reading_buffer[pos] == ';'
				     || isOperator(reading_buffer[pos]) ) 
				     && (j!=0)) 
			{
				buffer[j] = '\0';
				j = 0;

				if(isKeyword(buffer) == 1)
   					printf("@@@@@@@@ : keyword : %s\n", buffer);
   				else if(isNumber(buffer) == 1)
   					printf("@@@@@@@@ : number : %s\n", buffer);
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
 	}
 	else {
		printf("Some other error interrupted the read.\n");
	}
	
	fclose(fp);
	return 0;
}
