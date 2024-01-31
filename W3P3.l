%option noyywrap
%{
  #include<stdio.h>
  int flag=0;
%}
%%
.*[?|!|.]$ {flag=1;}
.* {flag=0;}
\n {return 0;}
%%
void main()
{
 printf("Enter a sentence\n");
 yylex();
 if(flag==1)
  printf("The sentence ends with punctuation mark\n");
 else
  printf("The sentence does not end with punctuation mark\n");
}

