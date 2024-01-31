%option noyywrap
%{
#include<stdio.h>
%}
%%
[ \t]+ {fprintf(yyout," ");}
.|\n {fprintf(yyout,"%s",yytext);}
%%
void main()
{
yyin=fopen("input.txt","r");
yyout=fopen("output.txt","w");
yylex();
fclose(yyin);
fclose(yyout);
printf("Printed!\n");
}

