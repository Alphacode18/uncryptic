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
  ;

type: 
  TYPE {
    fprintf(stdout, "TYPES\t");
  }
  ;

scope: 
  SCOPE {
    fprintf(stdout, "SCOPE\t");
  }
  ;

colon: 
  COLON {
    fprintf(stdout, "COLON\t");
  }
  ;

description: 
  DESCRIPTION {
    fprintf(stdout, "DESCRIPTION\t");
  }
  ;

%%

void yyerror(char *s) {
  fprintf(stderr, "%s", s);
}

int main() {
  yyparse();
}