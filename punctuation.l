%option noyywrap
%{
  #include<stdio.h>
  int a=0;
%}
%%
[a-zA-Z]+[?|.|!] {a=1;}
\n {return 0;}
%%
void main() 		
{
 printf("Enter a sentence \n");
 a=0;
 yylex();
 if(a==1)
 {
  printf("It ends with a punctuation");
 }
 else
 {
 printf("It does not end with a punctuation");
 }
}
 	
