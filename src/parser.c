#include "../inc/parser.h"

void parseProgram(parse_state* node) {
	printf("in parse program\n");

	parse_state * current = node;
	
	//first in the list is the head
	while (current != NULL) {
		// printf("counter-pos %d : %d\n", counter, current->pos);
		// printf("counter-type %d : %s\n", counter, current->type);

		if (strcmp(current->value, "import") == 0) {
			printf("import statement to be built\n");
			// stmt* import_stmt = stmt_create(STMT_IMPORT, )
		}
		else {
			//printf("counter-value %d : %s\n", counter, current->value);
		}
		current = current->next;
	}

	return;
}
