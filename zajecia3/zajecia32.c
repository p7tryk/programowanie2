#include <stdio.h>
#include <ctype.h>
int main()
{
  int c,wc;
  char lastc;
  wc=0;
  lastc=' ';

  FILE *infile;
  infile=fopen("zajecia31.txt","r");
    
  if(infile==NULL)
    {
      printf("nie mozna otworzyc pliku\n");
      return 0;
    }
	

  
  while((c=fgetc(infile))!=EOF)
    {
      if(isalpha(c)&&isspace(lastc))
	{
	      wc++;
	}
      lastc=c;
    }
  printf("liczba slow %d\n", wc);

  fclose();
}
