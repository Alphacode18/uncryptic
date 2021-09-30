/* commit.h */

/* Tokens defined for lexer */

#define TYPE (1)
#define SCOPE (2)
#define DESCRIPTION (3)

struct commit {
  char * type;
  char * scope;
  char * description;
};