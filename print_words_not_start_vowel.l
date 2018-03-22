//Lex program to print the words in a file that doesnot start with a vowel






%{
%}
%%
[aeiouAEIOU].[a-zA-Z0-9.]+    printf("");
[a-zA-Z0-9]+    printf("%s",yytext);
%%
main()
{
    extern FILE *yyin;
    yyin=fopen("new","r");
    yylex();
}
