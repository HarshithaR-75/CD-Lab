%option noyywrap
%{
  #include<stdio.h>
%}
%%
[aeiouAEIOU] {printf ("Vowel");}
[a-zA-Z] {printf("Consonant");}
%%
void main()
{
 yylex();
}
