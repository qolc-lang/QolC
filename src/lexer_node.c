#include "../inc/lexer_node.h"

void print_lexerList(lexer_node* node, char* fileName) {
	lexer_node * current = node;
	int counter = 0;
	int option;
	char text[150];
	char num_str[50];

	memset(text, 0, sizeof(text));
	memset(num_str, 0, sizeof(num_str));

	FILE *f = fopen(fileName, "w");
	if (f == NULL)
	{
	    printf("Error opening output file file!\n");
	    exit(1);
	}

	printf("\n");
	printf("Press 1 if you want to print the results on the console\nor any number if you want to print on the file.\n");
	scanf("%d", &option);

	while (current != NULL) {
		++counter;
		if (option == 1)
			printf("counter-%d : %s\n", counter, current->token);
		else {
			sprintf(num_str, "%d", counter);
			strcpy(text, "counter-");
			strcat(text, num_str);
			strcat(text, " : ");
			strcat(text, current->token);
			fprintf(f, "%s\n", text);
		}	
		current = current->next;
	}

	fclose(f);
}

void push_lexerList(lexer_node* node, char token[]) {
    lexer_node * current = node;
    while (current->next != NULL) {
        current = current->next;
    }
    current->next = malloc(sizeof(lexer_node));
    strcpy(current->next->token, token);
    current->next->next = NULL;
}

int pop_lexerList() {
	printf("in pop list\n");
}