%{
#include<stdio.h>
%}
  
%%
[1-9][0-9]*             {printf("Integer\n"); }
[0-9]*[.][0-9]*         {printf("Float\n"); }
[+]                      {printf("Plus Operator.\n"); }
[-]                      {printf("Minus Operator.\n"); }
[*]                      {printf("Plus Operator.\n"); }
[/]                      {printf("Multiplicative Operator.\n"); }
[%]                      {printf("Modulus Operator.\n"); }
[a-zA-Z][_a-zA-Z0-9]*	{printf("Identifier.\n"); }
[ \t\n]					;
.					printf("unexpected character\n");

%%

  
int main()
{   
    yylex();
  
    return 0;
}

