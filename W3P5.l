%{
#include<stdio.h>
int c=0;
%}
%%
"\/\*"[^*]*\*+([^/*][^*]*\*+)*\/ {c++;}
"//".* {c++;}
%%
int yywrap()
{
return 1;
}
void main()
{
yyin=fopen("input.txt","r");
yyout=fopen("output.txt","w");
yylex();
printf("The number of comments are:%d\n",c);
fprintf(yyout, "The number of comments are: %d\n", c);
fclose(yyin);
fclose(yyout);
}

