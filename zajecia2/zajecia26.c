#include <stdio.h>
#include <ctype.h>
int main()
{
  int c,wc;
  char lastc;
  wc=0;
  lastc=' ';
  while((c=getchar())!=EOF)
    {
      if(isalpha(c)&&isspace(lastc))
	{
	      wc++;
	}
      lastc=c;
    }
  printf("liczba slow %d\n", wc);
}
