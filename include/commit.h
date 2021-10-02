/* commit.h */

/* Tokens defined for lexer */

#define TYPE (1)
#define SCOPE (2)
#define BREAKING (3)
#define COLON (4)
#define DESCRIPTION (5)


struct commit {
  char * type;
  char * scope;
  char * description;
};