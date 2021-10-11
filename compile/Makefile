# Makefile For Testing Purposes
PROJDIR := $(realpath $(CURDIR)/..)
SOURCEDIR := $(PROJDIR)/system
BUILDDIR := bin

CC = gcc
TARGET = linter
FLAGS = -I../include/ -ll -o

$(BUILDDIR)/$(TARGET): $(SOURCEDIR)/main.c $(SOURCEDIR)/lex.yy.c
	$(CC) $(SOURCEDIR)/main.c lex.yy.c $(FLAGS) $(TARGET)

$(SOURCEDIR)/lex.yy.c: $(SOURCEDIR)/lexer.l
	lex $(SOURCEDIR)/lexer.l

clean:
	rm $(TARGET)
	rm lex.yy.c