%option noyywrap
%{
  #include<stdio.h>
%}
%%
[0-9]*[1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9] {printf("10th symbol from end is 1 \n");}
.* {printf("10th symbol from end is not 1\n");}
\n {return 0;}
%%
void main()
{
 printf("Enter the string \n");
 yylex();
} 
