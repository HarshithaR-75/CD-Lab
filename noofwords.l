%option noyywrap
%{
  #include<stdio.h>
%}
 int len=0;
%%
[a-zA-Z0-9]* {len++;} 
"\n" {printf("Number of words in the given sentence is %d",len);}
%%
void main()
{
 yylex();
}
