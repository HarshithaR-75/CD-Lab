%option noyywrap
%{
  #include<stdio.h>
%}
%%
[0-9]*[0][0] {printf("The given string ends in 00 \n");}
.* {printf("The given string does not end in 00 \n");}
\n {return 0;}
%%
void main()
{
 printf("Enter the string \n");
 yylex();
} 
