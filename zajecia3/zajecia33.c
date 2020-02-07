#include <stdio.h>
#include <ctype.h>
int main()
{
  int c,wc,cc;
  char lastc;
  wc=0;
  cc=0;
  int smc =0;

  FILE *infile;
  infile=fopen("zajecia31.txt","r");
  
  if(infile==NULL)
    {
      printf("nie mozna otworzyc pliku\n");
      return 0;
    }
	

  
  while((c=fgetc(infile))!=EOF) // dopoki nie koniec pliku  znak -> c
    {
      c=tolower(c); //zamienia c na male znaki
      cc++;
      if(isalpha(c)&&isspace(lastc))
	{
	  wc++;
	}
      if(c=='a'||c=='e'||c=='u'||c=='y'||c=='i'||c=='o')
	{
	  smc++;
	}
      lastc=c;
    }
  printf("liczba slow %d liczba znakow %d liczba samoglosek %d\n", wc,cc,smc);

  fclose(infile);
}
