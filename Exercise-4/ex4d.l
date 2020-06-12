%{
#include<stdio.h>
%}

%%
/*Whenever encounter an whitespace in input file 
it place with single whitespace*/
[\t" "]+ fprintf(yyout," ");		
/*print other character as it is in yyout file*/
.|\n fprintf(yyout,"%s",yytext);	
%%

int yywrap()
{
return 1;
}

int main(void)
{
yyin=fopen("inputfor4d.txt","r");		
yyout=fopen("outputfor4d.txt","w");
/*call the yylex function.*/
yylex();
return 0;
}