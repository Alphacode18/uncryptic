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
  type scope colon description {printf("\nCommit Syntax ✓\n");}
  | type colon description {printf("\nCommit Syntax ✓\n");}
  | type scope breaking colon description {printf("\nCommit Syntax ✓\n");}
  | type breaking colon description {printf("\nCommit Syntax ✓\n");}
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
}