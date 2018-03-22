
%{
#include<string.h>
void check(char *);
%}
%%
[0-9]+ check(yytext);
%%
main()
{
    extern FILE *yyin;
    yyin=fopen("num","r");
    yylex();
}
void check(char *a)
{
    int len=strlen(a),i,num=0;
    for(i=0;i<len;i++)
        num=num*10+(a[i]-'0');
    int x=0,temp=num;
    for(i=1;i<num;i++)
    {
        if(num%i==0)
            x=x+i;
    }
    if(x==temp)
        printf("%d is perfect \n",num);
    else
        printf("%d is not perfect \n",num);
}