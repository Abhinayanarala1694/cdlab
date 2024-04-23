%option noyywrap
%{
	#include<stdio.h>
%}

%%
[a-zA-Z0-9]+ {fun(yyleng);}
%%
fun(int l){
if(l==3){
if(yytext[0]=='A')printf("%s is starting with A and have length of 3\n",yytext);
}
}
int main()
{
	printf("Enter i/p string:");
	yylex();
	return 0;
}

/*
tudent-TravelMate-P243-M:~/Music/SAYONARA$ ./a.out
Enter i/p string: Ask And Arj
 Ask is starting with A and have length of 3
 And is starting with A and have length of 3
 Arj is starting with A and have length of 3

student@student-TravelMate-P243-M:~/Music/SAYONARA$ ./a.out
Enter i/p string:Asdfg

student@student-TravelMate-P243-M:~/Music/SAYONARA$ 

*/
