delim   	[\t]
ws           		{delim}+
digit   	[0-9]
number  	{digit}+
%%
{ws}    	;   
\n                        return(NEWLINE);
{number}  	{ 
            				yylval = atoi(yytext);
					return(NUMBER);
        }
"+"    				return(PLUS);
"-"    				return(MINUS);
"*"   				return(TIMES);
"/"    				return(DIV);
"%"    				return(FAC);

"("    				return(BRA);
")"    				return(KET);
"["    				return(TRD);
"]"    				return(BKET);
%%
