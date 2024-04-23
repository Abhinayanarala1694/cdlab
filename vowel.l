%{
  int v=0;
  int c=0;
%}
%%
[aeiouAEIOU] {v++;}
[a-z A-Z] {c++;}
\n return 0;
%%
int yywrap(){}
int main()
{
	printf("enter he string of vowels and consonents");
	yylex();
	printf("no. of vowels=%d \n no of consonents=%d",v,c);
	return 0;
}
/*
 lex vowel.l
student@student-TravelMate-P243-M:~/Music/SAYONARA$ gcc lex.yy.c
student@student-TravelMate-P243-M:~/Music/SAYONARA$ ./a.out
enter he string of vowels and consonents abcdefghi
no. of vowels=3 
 no of consonents=7student@student-TravelMate-P243-M:~/Music/SAYONARA$ ^C
student@student-TravelMate-P243-M:~/Music/SAYONARA$ 
*/

