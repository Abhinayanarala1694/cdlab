%{
int verbCount = 0;
int nounCount = 0;
int pronounCount = 0;
%}

%%
"he"|"she"|"it"|"they" { pronounCount++; }
[a-zA-Z]+ing            { verbCount++; }
[a-zA-Z]+               { nounCount++; }
.                       ;

%%

int main() {
    printf("Enter a sentence: ");
    yylex();
    printf("Number of verbs: %d\n", verbCount);
    printf("Number of nouns: %d\n", nounCount);
    printf("Number of pronouns: %d\n", pronounCount);
    return 0;
}
int yywrap()
{
return 1;
}

/*
lex verbrnounrpronoun.l
student@student-TravelMate-P243-M:~/Music/SAYONARA$ gcc lex.yy.c
student@student-TravelMate-P243-M:~/Music/SAYONARA$ ./a.out
Enter a sentence:  sandhya is dancing

Number of verbs: 1
Number of nouns: 2
Number of pronouns: 0
student@student-TravelMate-P243-M:~/Music/SAYONARA$ 
*/


