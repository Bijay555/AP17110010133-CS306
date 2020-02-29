%%
[0-9]*00 {printf("string accepted");}
[0-9]*11 {printf("string accepted");}
[0-9]* {printf("string rejected");}
%%
int main()
{
yylex();
}
int yywrap()
{
return 1;
}
