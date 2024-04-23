// FOLLOW 


#include<stdio.h>
#include<string.h>
int n,m=0,p,i=0,j=0;
char a[10][10],f[10];
void follow(char c);
void first(char c,int q1,int q2);

int main()
{
	int i,choice;
	char c,ch;
	printf("Enter the no.of productions:");
	scanf("%d",&n);
	printf("Enter the productions(epsilon=$):\n");
	for(i=0;i<n;i++)
		scanf("%s%c",a[i],&ch);

	do
	{
		m=0;
		printf("Enter the element whose FOLLOW is to be found:");
		scanf("%c",&c);
		follow(c);
		printf("FOLLOW(%c) = { ",c);
		for(i=0;i<m;i++)
		printf("%c ",f[i]);
		printf(" }\n");
		printf("Do you want to continue(0/1)?");
		scanf("%d%c",&choice,&ch);
	}
	while(choice==1);
}

void follow(char c)
{

	if(a[0][0]==c)
		f[m++]='$';
	for(i=0;i<n;i++)
	{
		for(j=2;j<strlen(a[i]);j++)
		{
			if(a[i][j]==c)
			{
				if(a[i][j+1]!='\0')
					first(a[i][j+1],i,(j+2));

				if(a[i][j+1]=='\0' && c!=a[i][0])
				 	follow(a[i][0]);

			}
		}
	}
}

void first(char c,int q1,int q2)
{
	int k;
	if(!(isupper(c)))
		f[m++]=c;
	for(k=0;k<n;k++)
	{
		if(a[k][0]==c)
		{
			if(a[k][2]=='$') 
				follow(a[i][0]);
			
			else if(islower(a[k][2]))
				f[m++]=a[k][2];
			else first(a[k][2],k,3);
		}
	}

}



/*

SAMPLE OUTPUT:

productions:
E=TD
D=+TD
D=$
T=FS
S=*FS
S=$
F=(E)
F=a

FOLLOW(E)=FOLLOW(D)={),$}
FOLLOW(T)=FOLLOW(S)={+,),$}
FOLLOW(F)={+,*,),$}

*/

/*
/Music/SAYONARA$                                   gcc Follow.c
student@student-TravelMate-P243-M:~/Music/SAYONARA$  ./a.out
Enter the no.of productions: 5
Enter the productions(epsilon=$):
S-aABb
A-c
A-$
B-d
B-$
Enter the element whose FOLLOW is to be found:S
FOLLOW(S) = { $  }
Do you want to continue(0/1)?1
Enter the element whose FOLLOW is to be found: A
FOLLOW( ) = {  }
Do you want to continue(0/1)?Enter the element whose FOLLOW is to be found:FOLLOW(A) = { d $  }
Do you want to continue(0/1)?




