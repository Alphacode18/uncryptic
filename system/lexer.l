%{
  #include <uncryptic.h>
%}

:  printf("COLON\t");
[a-z]+ printf("ACTION:%s\t", yytext);
! printf("BANG\t");
[A-Za-z0-9 ]+ printf("MESSAGE:%s\t", yytext + 1);
\([a-z]+\) printf("SCOPE:%s\t", yytext);

%%