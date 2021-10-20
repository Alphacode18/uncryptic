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
  message commit
  | message
  ;

message:
  type scope colon description {printf("\nCommit Syntax ✓\n");}
  | type colon description {printf("\nCommit Syntax ✓\n");}
  | type scope breaking colon description {printf("\nCommit Syntax ✓\n");}
  | type breaking colon description {printf("\nCommit Syntax ✓\n");}
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

breaking: 
  BREAKING {
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