%{
int vow_num=0;
int con_num=0;
int x=0;
%}

%%
[aeiouAEIOU] ++vow_num;
\n ;
[a-zA-Z] ++con_num;
. {}
%%
int main()
{
yylex();
printf("no of vowels=%d",vow_num);
printf("\nno of consonents=%d",con_num);

}
int yywrap()
{
return 1;
}

