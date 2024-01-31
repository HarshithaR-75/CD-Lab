%option noyywrap
%{
  #include<stdio.h>
%}
%%
int|float|char {printf("Keyword:%s \n",yytext);}
[a-zA-Z][a-zA-Z0-9] {printf("Identifier:%s \n",yytext);}
,|; {printf("Seperators:%s \n",yytext);}
%%
void main()
{
  yylex();
}
