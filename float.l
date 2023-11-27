%option noyywrap
%{
  #include<stdio.h>
%}
%%
[-+]?[0-9]+[.][0-9]+ {printf("It is a floating point number \n");}
[-+]?[0-9]+ {printf("It is not a floating point number \n");}
%%
void main()
{
 printf("Enter a number");
 yylex();
}
