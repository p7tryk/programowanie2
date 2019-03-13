#include <stdio.h>
#include <ctype.h>
int main()
{
  int c,cc;

  cc=0;
  int smc =0;
  double smratio= 0;


  double test1,test2;
  
  FILE *infile;
  infile=fopen("resources/de.dic","rt");
  
  if(infile==NULL)
    {
      printf("nie mozna otworzyc pliku\n");
      return 0;
    }
	

  
  while((c=fgetc(infile))!=EOF) // dopoki nie koniec pliku  znak -> c
    {
      if(isalpha(c))
	{
	  cc++;
	}
      if(c=='a'||c=='e'||c=='u'||c=='y'||c=='i'||c=='o')
	{
	  smc++;
	}
    }
  smratio = cc;
  printf("%f", smratio);
   
  printf("liczba znakow %d liczba samoglosek %d %%samoglosek %2.3f\n",cc,smc,(smc/smratio)*100);
  
  fclose(infile);
}
