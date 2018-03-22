

 

   %{
             #include<stdio.h>
              int com=0;
   %}
   %%
  "//"[a-zA_Z\t ]*                            {com++;}
  "/*"[a-zA-Z\t\n ]* "*/"$                {com++;}
  %%
  main()
 {
    yyin=fopen(""com.c","r");
    yyout=fopen("com1.c","w");
    yylex();
   printf("no. of comment lines=%d\n",com);
 }

