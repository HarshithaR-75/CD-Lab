%option noyywrap
%{
  #include<stdio.h>
%}
 int vowel=0;
 int consonant=0;
%%
[aeiouAEIOU] {vowel++;} 
[a-zA-Z] {consonant++;}

"\n" {printf("Number of vowels is %d and Number of consonanats is %d",vowel,consonant);}

%%
void main()
{
 yylex();
}
