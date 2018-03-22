

%{#include<stdio.h>
int id=0;
%}

%%
[a-zA-Z][a-zA-Z0-9_]* {id++; ECHO; printf("\n");}
.+ {;}
\n {;}
%%
void main(int argc, char *argv[])
{
if(argc!=2)
{
printf("usage : ./a.out in.txt\n");
exit(0);
}
yyin=fopen(argv[1],"r");
printf("the valid identifiers are: \n");
yylex();
printf("\n number of identifiers are = %d\n",id);
}
int yywrap()
{
return 1;
}