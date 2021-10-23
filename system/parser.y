%{
  #include <uncryptic.h>
%}

%start commit
%token TYPE SCOPE BREAKING COLON DESCRIPTION

%{
  extern char * yytext;
  extern int yylex();
  void yyerror(char *);
  void success(void);
%}

%%

commit:
  message
  ;

message:
  type scope colon description {
      success();
    }
  | type colon description {
      success();
    }
  | type scope breaking colon description {
    success();
  }
  | type breaking colon description {
    success();
  }
  | error '\n'{yyerrok;}
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
  exit(1);
}

void success(void) {
  printf("\nCommit Syntax ✓\n");
  exit(0);
}