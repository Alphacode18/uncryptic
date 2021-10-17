%code requires 
{
#include <string>

#if __cplusplus > 199711L
#define register      // Deprecated in C++11 so remove the keyword
#endif
}

%token TYPE SCOPE BREAKING COLON DESCRIPTION

%{
#include <cstdio>
#include <unistd.h>
#include <cstring>
#include <stdio.h>
#include <regex.h>

void yyerror(const char * s);
int yylex();

%}

%%

goal:
  commands
  ;

commands:
  command
  | commands command
  ;

%%

void
yyerror(const char * s)
{
  fprintf(stderr,"%s", s);
}

#if 0
main()
{
  yyparse();
}
#endif