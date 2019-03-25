#include "../inc/parser.h"
#include "../inc/stack.h"
#include "../inc/ast.h"

void parseProgram(parse_state* node) {
	printf("in parse program\n");

	const int SIZE = 2;
	char sample[100];
	memset(sample, 0, sizeof(sample));
	

	parse_state * current = node;
	char theStack[200][SIZE];
	int top;

	init(&top);
	
	//first in the list is the head
	while (current != NULL) {
		// printf("counter-pos %d : %d\n", counter, current->pos);
		// printf("counter-type %d : %s\n", counter, current->type);

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
			if ()
			//printf("counter-value %d : %s\n", counter, current->value);
		}
		current = current->next;
	}

	return;
}
