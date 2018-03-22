

 

%{

#include <stdio.h>

int wordCount=0;

%}

chars [A-Za-z\_\’\.\”]

number ([0-9])+

delim [” “\n\t]

whitespace {delim}+

words {chars}+

%%

{words} {wordCount++;}

{whitespace} {}

{number} {}

%%

void main()

{

printf(“enter the string\n”);

yylex();

printf(“no. of words : %d \n”, wordCount);

}

int yywrap()

{

return 1;

}