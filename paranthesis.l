%{
#include "y.tab.h"
%}

%%
"(" { return '('; }
")" { return ')'; }
\n  { return '\n'; }
%%

/*
lex paren.l
student@student-TravelMate-P243-M:~/Music/SAYONARA/YACC$ yacc -d parenthesis.y
student@student-TravelMate-P243-M:~/Music/SAYONARA/YACC$ gcc lex.yy.c y.tab.c

   
student@student-TravelMate-P243-M:~/Music/SAYONARA/YACC$ ./a.out
((()))
	Valid
student@student-TravelMate-P243-M:~/Music/SAYONARA/YACC$ 


