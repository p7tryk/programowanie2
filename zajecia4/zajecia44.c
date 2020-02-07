#include <stdio.h>
#include <ctype.h>

/*calculateratio(char* filename[20])
{
  int c,cc;
  cc=0;
  int smc =0;
  double smratio;
  
  
  
  FILE *infile;
  infile=fopen(filename,"rt");
  
  if(infile==NULL)
    {
      printf("nie mozna otworzyc pliku\n");
      return 0;
    }
  
  
  
  while((c=fgetc(infile))!=EOF) // dopoki nie koniec pliku  znak -> c
    {
      cc++;
      if(c=='a'||c=='e'||c=='u'||c=='y'||c=='i'||c=='o')
	{
	  smc++;
	}
    }
  printf("liczba znakow %d, liczba samoglosek %d, \% samoglosek %f", cc,smc,smratio);
  
  fclose(infile);
  
  
}
*/

int main()
{
    
  //calculateratio("/resources/cz.dic");


  int c,cc;
  cc=0;
  int smc =0;
  double smratio=0;
  
  FILE *infile;
  infile=fopen("zajecia31.txt","rt");
  
  if(infile==NULL)
    {
      printf("nie mozna otworzyc pliku\n");
      return 0;
    }
	

  
  while((c=fgetc(infile))!=EOF) // dopoki nie koniec pliku  znak -> c
    {
      if(isalpha(c))
	cc++;
      if(c=='a'||c=='e'||c=='u'||c=='y'||c=='i'||c=='o')
	  smc++;
    }
  //smratio =  cc/smc;
  
  printf("liczba znakow %d, liczba samoglosek %d, \% samoglosek ", cc,smc);
  //printf("%f\n", smratio);
  
  fclose(infile);
  
}
