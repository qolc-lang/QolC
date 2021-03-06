# In order to execute this "makefile" just type "make"

PrjRoot  = .
SrcDir  = $(PrjRoot)/src
ObjDir  = $(PrjRoot)/obj
OutDir  = $(PrjRoot)/out
GenDir  = $(PrjRoot)/generated
IncludeDir = $(PrjRoot)/inc

Includes = -I $(IncludeDir) -I $(PrjRoot)
CC	= gcc
COptions =  -g -c -Wall -save-temps -l -Werror -fPIC -v -ansi -funsigned-char -D_FORTIFY_SOURCE=2 -D_GLIBCXX_ASSERTION -fasynchronous-unwind-tables -fexceptions -fstack-protector-strong -fpie -Wl,-pie -grecord-gcc-switches 
linkOptions = -g
BuildCommand= $(Includes)  $(COptions)


AppObjects = \
$(ObjDir)/lexer.o \
$(ObjDir)/parser.o \
$(ObjDir)/stack.o \
$(ObjDir)/command.o \
$(ObjDir)/parserFunctions.o \
$(ObjDir)/ast.o \
$(ObjDir)/parse_state.o \
$(ObjDir)/symbol_table.o \
$(ObjDir)/lexer_node.o \
$(ObjDir)/checking_functions.o \
$(ObjDir)/main.o \
#--------------------------

$(OutDir)/mainout.out : $(AppObjects)
	$(CC) $(linkOptions) $(AppObjects) -o $(OutDir)/mainout
	mkdir -p $(GenDir)
	mv $(PrjRoot)/*.i $(GenDir)
	mv $(PrjRoot)/*.s $(GenDir)
	rm -f compile_results.txt

$(ObjDir)/lexer.o: $(SrcDir)/lexer.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h
	$(CC) $(BuildCommand) $(SrcDir)/lexer.c -o $(ObjDir)/lexer.o

$(ObjDir)/lexer_node.o: $(SrcDir)/lexer_node.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h
	$(CC) $(BuildCommand) $(SrcDir)/lexer_node.c -o $(ObjDir)/lexer_node.o

$(ObjDir)/symbol_table.o: $(SrcDir)/symbol_table.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h $(PrjRoot)/inc/parser.h $(PrjRoot)/inc/symbol_table.h
	$(CC) $(BuildCommand) $(SrcDir)/symbol_table.c -o $(ObjDir)/symbol_table.o

$(ObjDir)/parser.o: $(SrcDir)/parser.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h $(PrjRoot)/inc/parser.h
	$(CC) $(BuildCommand) $(SrcDir)/parser.c -o $(ObjDir)/parser.o

$(ObjDir)/parse_state.o: $(SrcDir)/parse_state.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h $(PrjRoot)/inc/parse_state.h
	$(CC) $(BuildCommand) $(SrcDir)/parse_state.c -o $(ObjDir)/parse_state.o

$(ObjDir)/ast.o: $(SrcDir)/ast.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h $(PrjRoot)/inc/parse_state.h $(PrjRoot)/inc/ast.h
	$(CC) $(BuildCommand) $(SrcDir)/ast.c -o $(ObjDir)/ast.o

$(ObjDir)/parserFunctions.o: $(SrcDir)/parserFunctions.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h $(PrjRoot)/inc/parse_state.h $(PrjRoot)/inc/ast.h $(PrjRoot)/inc/command.h $(PrjRoot)/inc/parserFunctions.h
	$(CC) $(BuildCommand) $(SrcDir)/parserFunctions.c -o $(ObjDir)/parserFunctions.o

$(ObjDir)/command.o: $(SrcDir)/command.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h $(PrjRoot)/inc/parse_state.h $(PrjRoot)/inc/ast.h $(PrjRoot)/inc/command.h
	$(CC) $(BuildCommand) $(SrcDir)/command.c -o $(ObjDir)/command.o

$(ObjDir)/stack.o: $(SrcDir)/stack.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h $(PrjRoot)/inc/parse_state.h $(PrjRoot)/inc/ast.h $(PrjRoot)/inc/stack.h
	$(CC) $(BuildCommand) $(SrcDir)/stack.c -o $(ObjDir)/stack.o

$(ObjDir)/checking_functions.o: $(SrcDir)/checking_functions.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h
	$(CC) $(BuildCommand) $(SrcDir)/checking_functions.c -o $(ObjDir)/checking_functions.o

$(ObjDir)/main.o: $(SrcDir)/main.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h
	$(CC) $(BuildCommand) $(SrcDir)/main.c -o $(ObjDir)/main.o


# clean 
clean:
	rm -rf $(ObjDir)/*.o
	rm $(OutDir)/*.exe
	rm -rf $(PrjRoot)/*.i
	rm -rf $(PrjRoot)/*.s
	rm -rf $(GenDir)/*.i
	rm -rf $(GenDir)/*.s
	rm -d $(GenDir)

#accounting
count:
	wc $(SrcDir)