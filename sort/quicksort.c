#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#define SIZE 10

void quicksort(double tab[], int size, int l,int p)
{
  int i = l;
  int j = p;

  int x;
  int temp;

  x=tab[(l+p)/2];
  do
    {
      while (tab[i] < x)
	i++;
      while (tab[j] > x)
	j--;
      if(i<=j)
	{
	  temp=tab[i];
	  tab[i]=tab[j];
	  tab[j]=temp;
	
	  i++;
	  j--;
	}
    }
  while(i<j);
  
  if(l<j)
    quicksort(tab, size, l, j);
  if(i<p)
    quicksort(tab, size, i, p);
      


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
  quicksort(tab,SIZE, 0, SIZE);
  drukuj(tab,SIZE);
  
}
