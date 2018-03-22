%{
#include<stdio.h>
int j=0;
%}
%%
"scanf" {fprintf(yyout,"%s","readf");}
"printf" {fprintf(yyout,"%s","writef");}
.        {fprintf(yyout,"%s",yytext);}

%%
int wrap()
{
return 1;
}

int main(int argv,char *argc)
{

yyin=fopen("sample.c","rw");
/*yyout=fopen("new.c","r");*/
yylex();
printf("the program is successful");
return 0;
}
