
%{
    
%}
%%
\n {printf("\n\n",yytext);}
%%

main()
{
extern FILE *yyin;
yyin=fopen("new","r");
yylex();
}