%option noyywrap
%{
  #include<stdio.h>
%}
%%
[+-]?[0-9]+ {printf("Number:%s \n",yytext);}
[a-zA-Z]+ {printf("Alphabets:%s \n",yytext);}
[a-zA-Z0-9]+ {printf("Alphanumeric:%s \n",yytext);}
%%
void main()
{
 printf("Enter\n");
 yylex();
}

