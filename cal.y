%{
#include<stdio.h>
int yylex();
void yyerror(const char *s);
%}

%token NUMBER PLUS MINUS TIMES DIV FAC BRA KET TRD BKET NEWLINE

%%
lines   : line
             | line lines
	         ;
line    : expr NEWLINE { printf ("line: value = %d\n", $1); }
             ;
expr    : expr PLUS term { $$ = $1 + $3; }
		 | expr MINUS term { $$ = $1 - $3; }
                 | expr DIV term { $$ = $1 / $3; }
	         | expr FAC term { $$ = $1 % $3; }
	         | term { $$ = $1; }
	         ;
term    : term TIMES factor {$$ = $1 * $3; }
	         | factor {$$ = $1; }
	         ;
factor  : BRA expr KET{ $$ = $2; }
                 | TRD expr BKET{ $$ = $2; }
	         | NUMBER{ $$ = $1; }
	         ;
%%



#include "lex.yy.c"
