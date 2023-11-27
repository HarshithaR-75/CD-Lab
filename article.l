%option noyywrap
%{
  #include<stdio.h>
  int a=0;
%}
%%
[A|a|AN|An|THE|The][a-zA-Z]* {a=1;}
\n {return 0;}
%%
void main()
{
 printf("Enter a sentence \n");
 a=0;
 yylex();
 if(a==1)
 {
  printf("It starts with article");
 }
 else
 {
 printf("It does not start with article");
 }
}

