%{
  #include "y.tab.h"
  #include <uncryptic.h>
%}

%%

:  {
  return COLON;
}

[a-z]+ {
  return TYPE;
}

! {
  return BREAKING;
}

[A-Za-z0-9 ]+ {
  return DESCRIPTION;
}

\([a-z]+\) {
  return SCOPE;
}

%%

int yywrap (void) {
  return 1;
}