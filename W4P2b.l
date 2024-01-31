%option noyywrap
%{
  #include<stdio.h>
%}
%%
[0-9]*[2][2][2][0-9]* {printf("The given string contains 3 consecutive 2's \n");}
.* {printf("The given string does not contain 3 consecutive 2's \n");}
\n {return 0;}
%%
void main()
{
 printf("Enter the string \n");
 yylex();
} 
