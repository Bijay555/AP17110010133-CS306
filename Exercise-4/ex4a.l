%{
#include<stdio.h>
#include<string.h>


%}
%%



int |
float |
char |
double |
void |
auto |
break |
case |
const |
continue |
default |
do |
else |
enum |
extern |
for |
goto |
if |
long |
register |
return |
short |
signed |
sizeof |
static |
struct |
switch |
typedef |
union |
unsigned |
volatile |
while |
main { printf(" \n %s is keyword",yytext);}
"<=" {printf("\n %s is Relational operator Lessthan or Equal to",yytext);}
"<" {printf("\n %s is Relational operator Lessthan",yytext);}
">=" {printf("\n %s is Relational operator Greaterthan or Equal to",yytext);}
">" {printf("\n %s is Relational operator Greaterthan",yytext);}
"==" {printf("\n %s is Relational operator Equal to",yytext);}
"!=" {printf("\n %s is Relational operator Not Equal to",yytext);}

^[a-zA-Z_][a-zA-Z0-9_]* { printf("\n %s is identifier",yytext); }

^[0-9a-zA-Z]* {printf("Invalid Identifier"); }


%%
int main()
{
printf("Enter the string to identify:");
yylex();
}
int yywrap()
{
return 1;
}