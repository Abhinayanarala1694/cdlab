%{
int verbCount = 0;
int nonVerbCount = 0;
%}

%%
[a-zA-Z]+ing    { verbCount++; }
[a-zA-Z]+       { nonVerbCount++; }
.               ;

%%

int main() {
    printf("Enter input: ");
    yylex();
    printf("Number of verbs: %d\n", verbCount);
    printf("Number of non-verbs: %d\n", nonVerbCount);
    return 0;
}
int yywrap()
{
return 1;
}

/*
 lex vrnonverb.l
student@student-TravelMate-P243-M:~/Music/SAYONARA$ gcc lex.yy.c
student@student-TravelMate-P243-M:~/Music/SAYONARA$ ./a.out
Enter input:  iam eating orange

Number of verbs: 1
Number of non-verbs: 2
student@student-TravelMate-P243-M:~/Music/SAYONARA$ 
*/


