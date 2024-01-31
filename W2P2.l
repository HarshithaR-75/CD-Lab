%option noyywrap
%{
  #include<stdio.h>
%}
%%
[aeiouAEIOU] {printf("Vowel:%s \n",yytext);}
[a-zA-Z] {printf("Consonant:%s \n",yytext);}
%%
void main()
{
 printf("Enter\n");
 yylex();
}

