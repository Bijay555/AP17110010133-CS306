%{
#include<stdio.h>
#include<string.h>
int cnt=0,i=0,j=0;
char st[10][10];
int look_up(char st[10][10],char *id,int n);
%}
%%
int |
float |
char |
double |
void |
main { printf(" \n %s is keyword",yytext);}
{num} { printf("\n %s is float",yytext);}
{id} { printf("\n %s is identifier",yytext);
cnt++;
if(!look_up(st,yytext,i))
strcpy(st[i++],yytext);
}
{digit} {printf("\n %s is digit",yytext);}
%%
main()
{
FILE *fp;
char ip[10];
printf("\n Enter file name\n");
scanf("%s",ip);
printf("The file u entered is :%s",ip);
fp=fopen(ip,"r");
if(fp==NULL)
{ printf("\n File Doesnot exists\n");
exit(0);
}
else
{
yyin=fp;
yylex();
fclose(fp);
printf("\n the contents of symbol table are :\n");
for(j=0;j<i;j++)
printf("\n %s",st[j]);
printf("\n\n");

}
return 0;
}
int yywrap()
{
return 1;
}