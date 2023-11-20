%option noyywrap
%{
  #include<stdio.h>
%}
%%
[+-]?[0-9]* {printf ("%s is a digit",yytext);}
[a-zA-Z]* {printf("%s is stream of characters",yytext);}
%%
void main()
{
 yylex();
}
