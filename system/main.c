#include <uncryptic.h>

extern int yylex();
extern int yylineno;
extern char* yytext;
extern int yyparse();

int main(void) {
  yyparse();
  return 0;
}