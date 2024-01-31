%option noyywrap
%{
  #include<stdio.h>
%}
%%
[+-]?[0-9]+[.][0-9]+ {printf("Its a floating point number \n");}
[+-]?[0-9]+ {printf("Its not a floating point number");}
%%
void main()
{
 printf("Enter an integer\n");
 yylex();
}

