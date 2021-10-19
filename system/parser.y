%{
  #include <uncryptic.h>
  extern int yylex();
  void yyerror(char *);
%}

%start goal
%token TYPE SCOPE BREAKING COLON DESCRIPTION

%%

goal:
  commit
  ;

commit:
  type scope colon description
  | type colon description
  ;

type: 
  TYPE {
    ;
  }
  ;

scope: 
  SCOPE {
    ;
  }
  ;

colon: 
  COLON {
    ;
  }
  ;

description: 
  DESCRIPTION {
    ;
  }
  ;

%%

void yyerror(char *s) {
  fprintf(stderr, "Syntax Error: Please Ensure You Are Following The Conventional Commit Message Format\n");
}