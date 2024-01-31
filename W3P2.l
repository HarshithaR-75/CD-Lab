%option noyywrap
%{
  #include<stdio.h>
  int flag=0;
%}
%%
^(a|an|the|A|An|The)[" "].* {flag=1;}
.* {flag=0;}
\n {return 0;}
%%
void main()
{
 printf("Enter a sentence\n");
 yylex();
 if(flag==1)
  printf("The sentence starts with article\n");
 else
  printf("The sentence does not start with article\n");
}

