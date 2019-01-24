#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>
 
int isKeyword(char buffer[]){
	char keywords[10][10] = {"string","else","enum","float","for",
							"if","int","return", "struct", "while"};
	int i, flag = 0;
	
	for(i = 0; i < 10; ++i){
		if(strcmp(keywords[i], buffer) == 0){
			flag = 1;
			break;
		}
	}
	
	return flag;
}
 
int main(){
	char buffer[20];
	char reading_buffer[50];
	char operators[10][3] = {"+", "-", "*", "/", "%", "#", "@", "@="};
	FILE *fp;
	int j=0;
	
	fp = fopen("input_program.txt","r");
	
	if(fp == NULL){
		printf("error while opening the file\n");
		exit(0);
	}

	while (fgets(reading_buffer,sizeof(reading_buffer), fp) != NULL) {
		printf("buffer : %s\n", reading_buffer);
		int pos, op_pos;
		for (pos = 0; pos < strlen(reading_buffer); ++pos)
		{
			printf("pos : %c\n", reading_buffer[pos]);

			//check if it is in operators
			for (op_pos = 0; op_pos < strlen(*operators); ++op_pos)
			{
				printf("op_pos : %c\n", operators[op_pos]);
				if (reading_buffer[pos] == *operators[op_pos]) {
					printf("%c is operator\n", reading_buffer[pos]);
				}
			}
			
			if (isalnum(reading_buffer[pos])) {
				//if the character is alphanumeric, add it to buffer
				buffer[j++] = reading_buffer[pos];
			}
			else if ((reading_buffer[pos] == ' ' || reading_buffer[pos] == '\n') && (j!=0)) {
				buffer[j] = '\0';
				j = 0;

				if(isKeyword(buffer) == 1)
   					printf("%s is keyword\n", buffer);
   				else
   					printf("%s is indentifier\n", buffer);
			}
			else {

			}

		}
	}
	if (feof(fp)) {
   		printf("End of file\n");
 	}
 	else {
		printf("Some other error interrupted the read.\n");
	}

	
	// while((ch = fgetc(fp)) != EOF){
 //   		for(i = 0; i < 7; ++i){
 //   			if(ch == operators[i])
 //   				printf("%c is operator\n", ch);
 //   		}

 //   		if (isdigit(ch)) {
 //   			printf("%c is number\n", ch);
 //   		}
   		
 //   		if(isalnum(ch)){
 //   			buffer[j++] = ch;
 //   		}
 //   		else if((ch == ' ' || ch == '\n') && (j != 0)){
 //   				buffer[j] = '\0';
 //   				j = 0;
   				   				
 //   				if(isKeyword(buffer) == 1)
 //   					printf("%s is keyword\n", buffer);
 //   				else
 //   					printf("%s is indentifier\n", buffer);
 //   		}
   		
	// }
	
	fclose(fp);
	
	return 0;
}
