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
$(ObjDir)/checking_functions.o \
$(ObjDir)/main.o \
#--------------------------


$(OutDir)/mainout.out : $(AppObjects)
	$(CC) $(linkOptions) $(AppObjects) -o $(OutDir)/mainout

$(ObjDir)/lexer.o: $(SrcDir)/lexer.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h
	$(CC) $(BuildCommand) $(SrcDir)/lexer.c -o $(ObjDir)/lexer.o

$(ObjDir)/checking_functions.o: $(SrcDir)/checking_functions.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h
	$(CC) $(BuildCommand) $(SrcDir)/checking_functions.c -o $(ObjDir)/checking_functions.o

$(ObjDir)/main.o: $(SrcDir)/main.c $(PrjRoot)/inc/headers.h $(PrjRoot)/inc/checking_functions.h
	$(CC) $(BuildCommand) $(SrcDir)/main.c -o $(ObjDir)/main.o


# clean 
clean:
	rm -rf $(ObjDir)/*.o
	rm $(OutDir)/*.exe

#accounting
count:
	wc $(SrcDir)