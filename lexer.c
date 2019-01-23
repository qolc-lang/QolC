#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>
 
int isKeyword(char buffer[]){
	char keywords[21][10] = {"auto","break","char","string","continue",
							"double","else","enum","float","for"
							"if","int","return","short","signed",
							"sizeof","static","struct","typedef",
							"unsigned","while"};
	int i, flag = 0;
	
	for(i = 0; i < 21; ++i){
		if(strcmp(keywords[i], buffer) == 0){
			flag = 1;
			break;
		}
	}
	
	return flag;
}
 
int main(){
	char ch, buffer[15], operators[] = "+-*/%@=";
	FILE *fp;
	int i,j=0;
	
	fp = fopen("input_program.txt","r");
	
	if(fp == NULL){
		printf("error while opening the file\n");
		exit(0);
	}
	
	while((ch = fgetc(fp)) != EOF){
   		for(i = 0; i < 7; ++i){
   			if(ch == operators[i])
   				printf("%c is operator\n", ch);
   		}

   		if (isdigit(ch)) {
   			printf("%c is number\n", ch);
   		}
   		
   		if(isalnum(ch)){
   			buffer[j++] = ch;
   		}
   		else if((ch == ' ' || ch == '\n') && (j != 0)){
   				buffer[j] = '\0';
   				j = 0;
   				   				
   				if(isKeyword(buffer) == 1)
   					printf("%s is keyword\n", buffer);
   				else
   					printf("%s is indentifier\n", buffer);
   		}
   		
	}
	
	fclose(fp);
	
	return 0;
}
