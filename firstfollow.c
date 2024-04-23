#include<stdio.h>
void first(char , int , int );
void Result(char );
int n,m,m1;
char P[10][10],F[10],f[10];
void main()
{
int d,i,j;
char c,ch;
scanf("%d",&n);	
for(i=0;i<n;i++)
scanf("%s%c",P[i],&ch);

do{
	m=0,m1=0;
	printf("ele:");
	scanf("%c",&c);
	//first(c,0,0);
	first(c,0,0);
	printf("FIRST(%c)={ ",c);
	for(i=0;i<m;i++)
	 printf("%c ",f[i]);
	 printf("}\n");
	 follow(c);
	 printf("FOLLOW(%c)={ ",c);
	 for(j=0;j<m1;j++)
	 {
	 	printf("%c ",F[j]);
	 }
	 printf("}\n");
	printf("press 1:");
	scanf("%d%c",&d,&ch);
}while(d==1);
}

void first(char c,int q1,int q2)
{
	int i;
	if(!(isupper(c)))
	 Results(c);
	for(i=0;i<n;i++)
	{
		if(P[i][0]==c)
		{
			if(P[i][2]=='$')
			{
				if(P[q1][q2]=='\0')
				 Results('$');
				if(P[q1][q2]!='\0' && (q1!=0 || q2!=0))
				 first(P[q1][q2],q1,(q2+1));
				else
				Results('$');
			}
			else if(islower(P[i][2]))
			 Results(P[i][2]);
			 else
			 first(P[i][2],i,3);
		}
	}
}

void follow(char c)
{
	int i,j;
	if(P[0][0]==c)
	 Result('$');
	for(i=0;i<n;i++)
	{
		for(j=2;j<strlen(P[i]);j++)
		{
			if(P[i][j]==c)
			{
				if(P[i][j+1]!='\0')
				 First(P[i][j+1],i,(j+1));
			    if(P[i][j+1]=='\0' && c!=P[i][0] )
				 follow(P[i][0]);
				
			}
		}
	}
}

void First(char c,int q1,int q2)
{
	int i;
	if(!(isupper(c)))
	 Result(c);
	for(i=0;i<n;i++)
	{
		if(P[i][0]==c)
		{
			if(P[i][2]=='$')
			 follow(P[i][0]);
			else if(islower(P[i][2]))
			 Result(P[i][2]);
			else
			 First(P[i][2],i,3);
		     
		}
	}
}
void Result(char c)
{
	int i;
	for(i=0;i<m1;i++)
	{
	 if(F[i]==c)
	  return ;	
	}
	F[m1++]=c;
}

void Results(char c)
{
	int i;
	for(i=0;i<m;i++)
	{
	 if(f[i]==c)
	  return ;	
	}
	f[m++]=c;
}

/*
8
E-TD
D-+TD
D-$
T-FS
S-*FS
S-$
F-i
F-(E)
ele:E
FIRST(E)={ i ( }
FOLLOW(E)={ $ ) }
press 1:1
ele:T
FIRST(T)={ i ( }
FOLLOW(T)={ + $ ) }
press 1:1
ele:D
FIRST(D)={ + $ }
FOLLOW(D)={ $ ) }
press 1:1
ele:S
FIRST(S)={ * $ }
FOLLOW(S)={ + $ ) }
press 1:F
ele:FIRST(F)={ i ( }
FOLLOW(F)={ * + $ ) }
press 1:0*/

