#include <stdio.h>


int main()
{
  int c,wc,smc,sc;
  wc=0;
  sc=0;
  smc=0;
  
  while( (c=getchar())!=EOF)
    {
      if (c=='a'||c=='e'||c=='o'||c=='u'||c=='y')
	{
	  smc++;
	}
      else if(c==' '||c=='\n'||c=='\t')
	{
	  wc++;
	}
      else
	{
	  sc++;
	}
      
    }
  printf("liczba bialych znakow %d, liczba spolglosek %d, liczba samoglosek %d\n",wc,sc,smc);
  //todo change for array of characters for easy expansion
}
