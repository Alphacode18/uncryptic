# Makefile For Testing Purposes

lexer: main.c lex.yy.c
	gcc main.c lex.yy.c -ll -o lexer -I../include/

lex.yy.c: lexer.l
	lex lexer.l

clean:
	rm lexer
	rm lex.yy.c