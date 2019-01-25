# In order to execute this "makefile" just type "make"

OBJS 	=  lexer.o checking_functions.o
SOURCE	=  lexer.c checking_functions.c
HEADER  =  headers.h checking_functions.h
OUT  	= lexerout
CC	= gcc
FLAGS   = -g -c

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT)

# create/compile the individual files
lexer.o: lexer.c headers.h checking_functions.h
	$(CC) $(FLAGS) lexer.c

checking_functions.o: checking_functions.c headers.h checking_functions.h
	$(CC) $(FLAGS) checking_functions.c	

# clean 
clean:
	rm -f $(OBJS) $(OUT) 

#accounting
count:
	wc $(SOURCE) $(HEADER)