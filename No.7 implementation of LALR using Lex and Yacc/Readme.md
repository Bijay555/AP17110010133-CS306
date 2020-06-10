Implement LALR parser using LEX and YACC for the following Grammar by specifying proper precedence for operators:


E → E+E | E-E | E*E | E/E | -E | (E) | digit

### Precedence and associativity in YACC

The precedence and associativity of operator tokens in the declarations section can be
specified by using the keywords:
+ %left --- for left to right associativity of operators
+ %right --- for right to left associativity of operators
+ %nonassoc --- for operators without associativity

For example:

+ %left '+' '-'

indicates that the + and - operations have the same precedence and are left associative.
Associativity declarations should be given in order of precedence. Operations with lowest
precedence are listed first, and those with highest precedence are listed last. Operations with
equal precedence are listed on the same line. For example,

+ %right '='
+ %left '+' '-'
+ %left '*' '/' '%'
