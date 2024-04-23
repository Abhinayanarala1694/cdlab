%{
#include<stdio.h>
int l;
%}
%%
[a-zA-Z0-9]+ {l=yyleng;fun(l);}
\n return 0;
%%
fun(int l)
{
	if(yytext[0]=='a'){
		if(l==3){
			printf("%s is word with length 3",yytext);
			}
			else
			{
			  printf("word is not with length 3");
			}
		}
		else
		{
		printf("word not start with a");
		}
}
int yywrap(){}
int main()
{
yylex();
return 0;
}
