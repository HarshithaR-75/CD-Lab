%option noyywrap
%{
  #include<stdio.h>
%}
%%
[+-]?[0-9]+ {printf("Digit:%s \n",yytext);}
[a-zA-Z]+ {printf("Stream of Characters:%s \n",yytext);}
%%
void main()
{
 printf("Enter\n");
 yylex();
}

