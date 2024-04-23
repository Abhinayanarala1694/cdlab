
%{
#include <stdio.h>
#include "y.tab.h"
%}
%%
[01] {yylval = atoi(yytext);return digit;}
%%
int yywrap()
{
  return 1;
}
/*
lex bi_de.l
student@student-TravelMate-P243-M:~/Music/SAYONARA/YACC$ yacc -d bin_de.y
student@student-TravelMate-P243-M:~/Music/SAYONARA/YACC$ gcc lex.yy.c y.tab.c
y.tab.c: In function ‘yyparse’:
y.tab.c:1209:16: warning: implicit declaration of function ‘yylex’ [-Wimplicit-function-declaration]
 1209 |       yychar = yylex ();
      |                ^~~~~
student@student-TravelMate-P243-M:~/Music/SAYONARA/YACC$ ./a.out
11001

Decimal Value : 25
*/
