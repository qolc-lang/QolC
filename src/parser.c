#include "../inc/parser.h"
#include "../inc/stack.h"
#include "../inc/ast.h"
#include "../inc/command.h"

void parseProgram(parse_state* node) {
	printf("in parse program\n");
	
	command* commandNode = malloc(sizeof(command) *2);
	parse_state * current = node;
	const int SIZE = 50;
	int top;
	char theStack[200][SIZE];
	char temp[100];
	init(&top);
	memset(temp, 0, sizeof(temp));

	while (current != NULL) {
		printf("counter-type: %s\n", current->type);

		//Check for import in value and push it to the stack
		if (strcmp(current->value, "import") == 0) {
			printf("import statement to be built\n");
			push(theStack[top], &top, current->value);
			// printf("full now? : %d\n", full(&top, SIZE));
			// printf("or maybe empty? : %d\n", empty(&top));
		}
		//Check for load in value and push it to the stack
		else if (strcmp(current->value, "load") == 0) {
			printf("load statement to be built\n");
			push(theStack[top], &top, current->value);
		}
		else if (strcmp(current->value, "string") == 0) {
			printf("string keyword going in\n");
			push(theStack[top], &top, current->value);
		}
		else if (strcmp(current->value, "@") == 0) {
			printf("operator @ going in\n");
			push(theStack[top], &top, current->value);
		}
		else if (strcmp(current->value, "|") == 0) {
			printf("parenthesis going in\n");
			push(theStack[top], &top, current->value);
		}
		else { 

		}

		printf("counter-value: %s\n", current->value);

		//Check for string type
		if (strcmp(current->type, "string") == 0) {
			//peeking the stack so decreasing value of top
			pop(&top);
			if (strcmp(theStack[top], "import") == 0) {
				printf("import statement is in the stack atm\n");
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* stringExpr = expr_create_string(current->value);
				stmt* import_stmt = stmt_create(STMT_IMPORT, NULL, NULL, stringExpr, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, import_stmt, NULL); 
			}
			else if (strcmp(theStack[top], "load") == 0) {
				printf("load statement is in the stack atm\n");
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* stringExpr = expr_create_string(current->value);
				stmt* load_stmt = stmt_create(STMT_LOAD, NULL, NULL, stringExpr, NULL, NULL, NULL, NULL);
				push_commandList(commandNode, NULL, load_stmt, NULL); 
			}
			else {

			}
		}

		//Check for string type
		if (strcmp(current->type, "identifier") == 0) {
			//peeking the stack so decreasing value of top
			pop(&top);
			if (strcmp(theStack[top], "@") == 0) {
				printf("@ operator is in the stack atm\n");
				printf("going to insert value : %s\n", current->value);
				//increasing top value
				++top;
				push(theStack[top], &top, current->value);
			}
		}
		
		current = current->next;
	}

	print_commandList(commandNode);

	return;
}
