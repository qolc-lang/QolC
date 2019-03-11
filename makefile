# In order to execute this "makefile" just type "make"

PrjRoot  = .
SrcDir  = $(PrjRoot)/src
ObjDir  = $(PrjRoot)/obj
OutDir  = $(PrjRoot)/out
IncludeDir = $(PrjRoot)/inc

Includes = -I $(IncludeDir) -I $(PrjRoot)
CC	= gcc
COptions =  -g -c
linkOptions = -g
BuildCommand= $(Includes)  $(COptions)


AppObjects = \
$(ObjDir)/lexer.o \
$(ObjDir)/parser.o \
$(ObjDir)/ast.o \
$(ObjDir)/parse_state.o \
$(ObjDir)/lexer_node.o \
$(ObjDir)/checking_functions.o \
$(ObjDir)/main.o \
#--------------------------

$(OutDir)/mainout.out : $(AppObjects)
	$(CC) $(linkOptions) $(AppObjects) -o $(OutDir)/mainout

$(ObjDir)/lexer.o: $(SrcDir)/lexer.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h
	$(CC) $(BuildCommand) $(SrcDir)/lexer.c -o $(ObjDir)/lexer.o

$(ObjDir)/lexer_node.o: $(SrcDir)/lexer_node.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h
	$(CC) $(BuildCommand) $(SrcDir)/lexer_node.c -o $(ObjDir)/lexer_node.o

$(ObjDir)/parser.o: $(SrcDir)/parser.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h $(PrjRoot)/inc/parser.h
	$(CC) $(BuildCommand) $(SrcDir)/parser.c -o $(ObjDir)/parser.o

$(ObjDir)/parse_state.o: $(SrcDir)/parse_state.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h $(PrjRoot)/inc/parse_state.h
	$(CC) $(BuildCommand) $(SrcDir)/parse_state.c -o $(ObjDir)/parse_state.o

$(ObjDir)/ast.o: $(SrcDir)/ast.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h $(PrjRoot)/inc/parse_state.h $(PrjRoot)/inc/ast.h
	$(CC) $(BuildCommand) $(SrcDir)/ast.c -o $(ObjDir)/ast.o

$(ObjDir)/checking_functions.o: $(SrcDir)/checking_functions.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h
	$(CC) $(BuildCommand) $(SrcDir)/checking_functions.c -o $(ObjDir)/checking_functions.o

$(ObjDir)/main.o: $(SrcDir)/main.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h $(PrjRoot)/inc/lexer_node.h
	$(CC) $(BuildCommand) $(SrcDir)/main.c -o $(ObjDir)/main.o


# clean 
clean:
	rm -rf $(ObjDir)/*.o
	rm $(OutDir)/*.exe

#accounting
count:
	wc $(SrcDir)