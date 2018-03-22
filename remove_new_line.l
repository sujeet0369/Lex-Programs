

%{
%}
%%
\n    printf("");
%%
main()
{
    extern FILE *yyin;
    yyin=fopen("new","r");
    yylex();
}
