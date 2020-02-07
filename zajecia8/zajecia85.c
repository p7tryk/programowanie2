#include <stdio.h>
#define MAXSIZE 10

//TODO fix odwrotnie
void shellsort(double * tab, int size)
{
  double temp;

  int i,j,h;
  
  for(h=size/2;h!=0;h=h/2)
    {
      for(i=size-h;i>=0;i--)
	{
	  temp=tab[i];
	  j=i+h;
	  while(j<=size&&temp>tab[j])
	    {
	      tab[j-h]=tab[j];
	      j=j+h;
	    }
	  tab[j-h]=temp;
	}
    }
  
  
}
int reverse(double * tab, int size)
{
  double temp;
  for(int i=0; i<size/2;i++)
    {
      tab[i]= temp;
      tab[i]= tab[size-i];
      tab[size-i]=temp;
    }

}




int main(int argc, char* argv[])
{
  if(argc<3)
    {
      printf("Podaj pliki jako argument\na.out infile outfile\n");
      return 0;
    }

  
  double tab[MAXSIZE];
  double x;
  int i;

  int size=MAXSIZE;

  FILE *outfile;
  outfile= fopen(argv[2], "w");
  if(outfile==NULL)
    {
      printf("Nie mozna otworzyc pliku outfile\n");
      return 1;
    }
  
  FILE *infile;
  
  infile= fopen(argv[1], "rt");
  if(infile==NULL)
    {
      printf("Nie mozna otworzyc plik infile\n");
      fclose(outfile);
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
  
  printf("Podaj tryb programu:\n1. Przepisz liczby z pliku\n2. Przepisz odwrotnie liczby z pliku\n3. Posortuj liczby z pliku\n4. Posortuj odwrotnie liczby z pliku\nDowolny klawisz. Nic nie rob\n");
  
  int choice;
  scanf("%d",&choice);
  switch(choice)
    {
    case 1:
      break;
    case 2:
      reverse(tab,size);
      break;
    case 3:
      shellsort(tab,size-1);
      break;
      
    case 4:
      shellsort(tab,size-1);
      // reverse(tab,size);
      break;
    default:
      fclose(infile);
      fclose(outfile);
      
      return 0;      
    }

  
  for(i=0; i<size;i++)
    {
      fprintf(outfile,"%lf\n",tab[i]);
      //printf("%lf\n",tab[i]);
    }
  //debug
  printf("size=%d\n",size);
  for(i=0; i<MAXSIZE;i++)
    {
      printf("%lf\n",tab[i]);
    }
  

  
  fclose(infile);
  fclose(outfile);
  return 0;
    
}
