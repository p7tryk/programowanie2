#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#define SIZE 3

void shellsort(double * tab, int size)
{
  double temp;

  int i,j,h;
  h=size/2;
  
  for(h=size/2;h!=0;h=h/2)
    {
      for(i=size-h;i>=0;i--)
	{
	  temp=tab[i];
	  j=i+h;
	  while(j<size&&temp>tab[j])
	    {
	      tab[j-h]=tab[j];
	      j=j+h;
	    }
	  tab[j-h]=temp;
	}
    }
  
  
}


void drukuj(double dat[],int num)
{
  printf("\n");
  for(int i=0;i<num;i++)
    {
      printf("%lf,",dat[i]);
    }
  printf("\n\n");
    
}

void fill(double *tab, int size)
{
  time_t t;
  srand((unsigned) time(&t));
  for(int i=0;i<size;i++)
    {
      tab[i]=((double)(rand()%50));
    }
}

void copytab(double * tab, double * src, int size)
{
  for(int i=0; i<size;i++)
    {
      tab[i]=src[i];
    }
    

}

int reverse(double * tab, int size)
{
  double temp;
  for(int i=0; i<size/2;i++)
    {
      temp = tab[i]; //jestem gupi
      tab[i]= tab[size-i-1];
      tab[size-i-1]=temp;
    }

}

int main(int argc, char*argv[])
{

  int bubblet;
  int insertiont;
  int selectiont;
  int shellt;
  int quickt;
  int heapt;

  double tab[SIZE];
  double src[SIZE];

  fill(src, SIZE);
  copytab(tab, src, SIZE);
    
  
  drukuj(src,SIZE);
  shellsort(tab,SIZE);
  drukuj(tab,SIZE);
  
}
