/*program ma wyswietlic menu:

  wczytaj tablice
  posortuj rosnaco
  posortuj malujaca
  odwroc kolejnosc
  zapisz tablice do pliku
  wyjscie
*/
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


int wybor(double * tab, int * size)
{
  double x;
  int i;
  int sizetemp = size;
  char filename[255];
  char choice;
  scanf("%c",&choice);

  switch(choice) 
    {
    case 'z':
      printf("podaj nazwe pliku\n");
      scanf("%255s",filename);
      
      FILE *outfile;
      outfile= fopen(filename, "w");
      if(outfile==NULL)
	{
	  printf("Nie mozna otworzyc pliku outfile\n");
	  break;
	}
      
      for(i=0; i<sizetemp;i++)
	{
	  fprintf(outfile,"%lf\n",tab[i]);
	}
      fclose(outfile);
      printf("Zapisano do pliku\n");
      break;
    case 'w':
      printf("podaj liczbe cyfr\n");
      scanf("%d",&size);

      if(sizetemp>MAXSIZE)
	{
	  printf("za duzo elementow\n");
	  break;
	}
      
      for(i=0; i<sizetemp;i++)
	{
	  scanf("%lf",&x);
	  tab[i]=x;
	}
      printf("zapisano liczby\n");
      break;

    case 'm':
      break;
    case 'o':
      break;
    case 'k':
      printf("wychodze\n");
      return 0;
      
    }
  

  
  wybor(tab,size);
}




int main()
{
  
  double tab[MAXSIZE];


  int size=0;

  
  
  wybor(tab,size);

  l
  return 0;
    
}
