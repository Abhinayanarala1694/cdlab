%{
	int i=0,f=0;
%}
%%
[0-9]+"."[0-9]+ {f++;}
[0-9]+ {i++;}
\n return 0;
%%
int yywrap()
{return 1;}
int main(){
yylex();
printf("Float :%d \n Int : %d",f,i);
return 0;
}

/*
lex IntFloat.l
student@student-TravelMate-P243-M:~/Music/SAYONARA$  gcc lex.yy.c
student@student-TravelMate-P243-M:~/Music/SAYONARA$ ./a.out
12 6.5 3.22 4.7 9
    Float :3 
 Int : 2student@student-TravelMate-P243-M:~/Music/SAYONARA$ 




