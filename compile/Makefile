# Makefile For Testing Purposes
PROJDIR := $(realpath $(CURDIR)/..)
SOURCEDIR := $(PROJDIR)/system
BUILDDIR := bin

CC = gcc
TARGET = linter
FLAGS = -I../include/ -ll -o

$(BUILDDIR)/$(TARGET): $(SOURCEDIR)/main.c lex.yy.c y.tab.c
	$(CC) $(SOURCEDIR)/main.c y.tab.c lex.yy.c $(FLAGS) $(TARGET)

lex.yy.c: $(SOURCEDIR)/lexer.l
	lex $(SOURCEDIR)/lexer.l

y.tab.c: $(SOURCEDIR)/parser.y
	yacc -d $(SOURCEDIR)/parser.y

clean:
	rm -rf $(TARGET) lex.yy.c y.tab.c y.tab.h linter.dSYM