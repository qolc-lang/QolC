#include "../inc/parser.h"
#include "../inc/stack.h"
#include "../inc/ast.h"
#include "../inc/command.h"

void parseProgram(parse_state* node) {
	printf("in parse program\n");
	
	command* commandNode = malloc(sizeof(command));
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
			// pop(&top);
			//stmt* import_stmt = stmt_create(STMT_IMPORT, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
			// printf("full now? : %d\n", full(&top, SIZE));
			// printf("or maybe empty? : %d\n", empty(&top));
			// stmt* import_stmt = stmt_create(STMT_IMPORT, )
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
				//strcpy(temp, theStack[top]);
				theStack[0][top] = '\0';
				printf("the value to work as expr : %s\n", current->value);
				expr* stringExpr = expr_create_string(current->value);
				stmt* import_stmt = stmt_create(STMT_IMPORT, NULL, NULL, stringExpr, NULL, NULL, NULL, NULL);
			}
		}
		
		current = current->next;
	}

	return;
}
