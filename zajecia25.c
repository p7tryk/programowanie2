#include <stdio.h>
int whitecheck(int passed)
{
  int x=0;
  char whitec[3] = {' ','\n','\t'};
  
  for(x=0; x<4;x++);
  {
    if(passed==whitec[x])
      {
	return 1; //jezeli znak zgadza sie z whitec return TRUE
      }
  }
  return 0; //jezeli znak jest whitec return TRUE
}

int main()
{
  int c,wc;
  char lastc;
  wc=0;
  lastc=' ';
  int cc=0;
  while((c=getchar())!=EOF)
    {
      if(c!=' ')
	{
	  cc++;
	  if(lastc==' ')
	    {
	      wc++;
	    }
	}
      lastc=c;
    }
  printf("liczba slow %d\nliczba znakow %d\n", wc,cc);
}
