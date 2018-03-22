

%{
void check(char *);
%}
%%    
[0-9]    ;
[0-9][0-9]    ;
[0-9][0-9][0-9]     ;
[0-9][0-9][0-9][0-9]    {printf("%s",yytext);check(yytext);}
[0-9][0-9][0-9][0-9][0-9]+ ;
%%
main()
{
    extern FILE *yyin;
    yyin=fopen("num","r");
    yylex();
}
void check(char *a)
{
    int x=0,i;
    for(i=0;i<4;i++)
        x=x*10+(a[i]-'0');
    if(x%400==0)    
        printf("\tYES\n");
    else if(x%4==0&&x%100!=0)
        printf("\tYES\n");
    else
        printf("\tNO\n");
}