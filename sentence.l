%option noyywrap
%{
  #include<stdio.h>
  int flag=0;
%}
%%
and|or|but|because|if|then|nevertheless {flag=1;}
\n {if(flag==1) printf("\n Compound sentence\n");
else printf("\n It is a simple sentence \n");}
%%
void main()
{
 printf("Enter a sentence \n");
 yylex();
 flag = 0; 
}

