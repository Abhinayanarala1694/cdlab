%{
#include <stdio.h>
#include "y.tab.h"
//yylval = atoi(yytext);return digit;
%}
%%
[01] {yylval = atoi(yytext);return digit;}
%%
int yywrap()
{

}
/*
lex binary.l
yacc -d binary.y
gcc lex.yy.c y.tab.c

student@student-TravelMate-P243-M:~/Music/SAYONARA/YACC$ ./a.out
1100011

No.of bits : 7
student@student-TravelMate-P243-M:~/Music/SAYONARA/YACC$ ^C
student@student-TravelMate-P243-M:~/Music/SAYONARA/YACC$ 
*/
