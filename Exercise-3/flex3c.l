%{
int num_lines=0;
%}
%%
\n ++num_lines;
. {}
%%
int main()
{
yylex();
printf("no of lines=%d",num_lines);
}
int yywrap()
{
return 1;
}
