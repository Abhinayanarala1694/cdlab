%{
#include "y.tab.h"
%}

%%

[0-9]+          { yylval = atoi(yytext); return NUMBER; }
[-+*%/\n]        { return *yytext; }
[ \t]           ; // Ignore whitespace
.               ;
%%
/*
student@student-TravelMate-P243-M:~/Music/SAYONARA/new folder/sdt$ lex calculator.l
student@student-TravelMate-P243-M:~/Music/SAYONARA/new folder/sdt$ yacc -d calculator.y
student@student-TravelMate-P243-M:~/Music/SAYONARA/new folder/sdt$ gcc lex.yy.c y.tab.c
y.tab.c: In function ‘yyparse’:
y.tab.c:1223:16: warning: implicit declaration of function ‘yylex’ [-Wimplicit-function-declaration]
 1223 |       yychar = yylex ();
      |                ^~~~~
calculator.y:19:83: warning: implicit declaration of function ‘yyerror’; did you mean ‘yyerrok’? [-Wimplicit-function-declaration]
   19 | m '/' factor   { if ($3 != 0) $$ = $1 / $3; else yyerror("division by zero"); }
      |                                                                        ^~~~~~~
      |                                                                        yyerrok
student@student-TravelMate-P243-M:~/Music/SAYONARA/new folder/sdt$ ./a.out
5+2+5
= 12

*/
