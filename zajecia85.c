#include <stdio.h>
#define MAXSIZE 10

//TODO wyswietlic menu zapytac czy posortowac, odwrotnie posortowac, zostawic
void insertionsort(double * tab,int size)
{
  double temp;
  int i=1;
  int j=0;
  
  for(i=1;i<size;i++)
    {
        temp=tab[i];
        j=i-1;
 
        while((temp<tab[j])&&(j>=0))
	  {
            tab[j+1]=tab[j];
	    j=j-1;
	  }
	tab[j+1]=temp;
    }
}





int main()
{
  double tab[MAXSIZE];
  double x;
  int i;

  int size=MAXSIZE;

  FILE *outfile;
  outfile= fopen("resources/file2.txt", "w");
  if(outfile==NULL)
    {
      printf("Nie mozna otworzyc pliku\n");
      return 1;
    }
  
  FILE *infile;
  
  infile= fopen("resources/file1.txt", "rt");
  if(infile==NULL)
    {
      printf("Nie mozna otworzyc pliku\n");
      return 1;
    }
  
  for(i=0; i<size;i++)
    {
      if(fscanf(infile,"%lf\n",&x)<0)
	{
	  size=i;
	  break;
	}
      tab[i]=x;
      // printf("%3.1lf\n",x);
    }
  
  insertionsort(tab,size);
  
  for(i=0; i<size;i++)
    {
      fprintf(outfile,"%lf\n",tab[i]);
      //printf("%lf\n",tab[i]);
    }

  fclose(infile);
  fclose(outfile);
  return 0;
    
}
