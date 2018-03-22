

%{
#include<string.h>
void check(char *);
%}
%%
[a-zA-Z]+ check(yytext);
%%
main()
{
    yylex();
}
void check(char *str)
{
    FILE *fp;
    char temp[30];
    fp=fopen("new","r");
    while((fscanf(fp,"%s",temp))!=EOF)
    {
        if(!(strcmp(temp,str)))
        {
            printf("FOUND\n");
            return;
        }
        
    }
    printf("NOT FOUND\n");
        return;
}
