%option noyywrap
%{
#include<stdio.h>
int flag=0;
%}
%%
if|then|but|because|nevertheless|and|or {flag=1;}
.* {flag=0;}
\n {return 0;}
%%
void main()
{
printf("Enter a sentence:\n");
yylex();
if(flag==1)
printf("Compound sentence!\n");
else
printf("Simple sentence!\n");
}

