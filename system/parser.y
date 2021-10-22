%{
  #include <uncryptic.h>
%}

%start commit
%token TYPE SCOPE BREAKING COLON DESCRIPTION

%{
  extern char * yytext;
  extern int yylex();
  void yyerror(char *);
%}

%%

commit:
  message
  ;

message:
  type scope colon description {
    printf("\nCommit Syntax ✓\n");
    exit(0);
    }
  | type colon description {
    printf("\nCommit Syntax ✓\n");
    exit(0);
    }
  | type scope breaking colon description {
    printf("\nCommit Syntax ✓\n");
    exit(0);}
  | type breaking colon description {
    printf("\nCommit Syntax ✓\n");
    exit(0);}
  | error '\n'{yyerrok;}
  ;

type: 
  TYPE {
    printf("TYPE\n");
  }
  ;

scope: 
  SCOPE {
    printf("SCOPE\n");
  }
  ;

breaking: 
  BREAKING {
    printf("BREAKING\n");;
  }
  ;

colon: 
  COLON {
    printf("COLON\n");;
  }
  ;

description: 
  DESCRIPTION {
    printf("DESCRIPTION\n");;
  }
  ;

%%

void yyerror(char *s) {
  fprintf(stderr, "Syntax Error: Please Ensure You Are Following The Conventional Commit Message Format\n");
  exit(1);
}