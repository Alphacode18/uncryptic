#include <stdio.h>
#include <uncryptic.h>

extern int yylex();
extern int yylineno;
extern char* yytext;

char *names[] = {NULL, "db_type", "db_name", "db_table_prefix", "db_port"};

int main(void) 
{

	int token;
	while(token = yylex()) {
    switch(token) {
      case (TYPE):
        printf("Type: %s\t", yytext);
        break;
      case (SCOPE):
        printf("Scope: %s\t", yytext);
        break;
      case (BREAKING):
        printf("Breaking: True\t");
        break;
      case (COLON):
        printf("Colon: True\t");
        break;
      case (DESCRIPTION):
        printf("Description: %s\t", yytext + 1);
        break;
      default:
        printf("\nCommit message has a syntax error\n");
        break;
    }
	}
	return 0;
}