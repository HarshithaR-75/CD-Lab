%option noyywrap
%{
  #include<stdio.h>
%}
%%
[0-9] {printf ("int \n");}
[a-zA-Z] {printf("char \n");}
[-+]?[0-9]*\.?[0-9]* {printf("float \n");}
[a-zA-Z]* {printf("variable \n");}

%%
void main()
{
 yylex();
}
