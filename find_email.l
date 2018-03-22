

%{
%}
%%
[a-zA-Z0-9]+.[@].[a-zA-Z0-9]+.[/.].[a-zA-Z.]+ printf("%s",yytext);
[a-zA-Z 0-9]+    printf(" ");
%%
main()
{
    extern FILE *yyin;
    yyin=fopen("new","r");
    yylex();
}