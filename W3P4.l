%option noyywrap
%{
  #include<stdio.h>
%}
%%
[+-][0-9]+ {printf("Its a signed integer");}
[0-9]+ {printf("Its an unsigned integer");}
%%
void main()
{
 printf("Enter an integer\n");
 yylex();
}

