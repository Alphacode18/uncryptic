%{
#include <uncryptic.h>
%}

%start commit
%token TYPE SCOPE BREAKING COLON DESCRIPTION

%{
  void yyerror(const char * s);
  int yylex();
%}

%%

commit:
  type
  ;

type: TYPE {printf("Runs\n");}

%%

void yyerror(const char *s) {
  fprintf (stderr, "%s\n", s);
}