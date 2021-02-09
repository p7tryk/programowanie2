#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "define.h"
void shellsort(double * tab)
{
  double temp;

  int i,j,h;
  
  for(h=SIZE/2;h!=0;h=h/2)
    {
      for(i=SIZE-h;i>=0;i--)
	{
	  temp=tab[i];
	  j=i+h;
	  while(j<=SIZE&&temp>tab[j])
	    {
	      tab[j-h]=tab[j];
	      j=j+h;
	    }
	  tab[j-h]=temp;
	}
    }
  
  
}

void bubblesort(double *tab)
{
  double temp;
  int i,n;
  
  for(i=1;i<SIZE;i++)
    {
      for(n=SIZE-1;n>=i;n--)
	{
	  if(tab[n-1]>tab[n])
	    {
	      temp = tab[n-1];
	      tab[n-1]=tab[n];
	      tab[n]=temp;  
	    }
	}
    }
}
void insertionsort(double *tab)
{
  double temp;
  int i=1;
  int j=0;
  
  for(i=1;i<SIZE;i++)
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
void selectionsort(double *tab)
{
  double temp;
  int i=1;
  int n=0;
  int k=0;
  
  for(i=0;i<SIZE;i++)
    {
      k=i;
      temp=tab[i];
      for(n=i+1; n<SIZE; n++)
	{
	  if(tab[n]<temp)
	    {
	      k=n;
	      temp=tab[n];
	    }
	}
      tab[k]=tab[i];
      tab[i]=temp;
    }
  
}


int main()
{
  double tab[SIZE];
  time_t t;

  int bubblet;
  int insertiont;
  int selectiont;
  int shellt;
  int quickt;
  int heapt;

  double tab1[SIZE];
  double tab2[SIZE];
  double tab3[SIZE];
  double tab4[SIZE];
  double tab5[SIZE];
  double tab6[SIZE];
  
  srand((unsigned) time(&t));
  
  for(int i=0;i<SIZE;i++)
    {
      tab[i]=((double)(rand()%50));
      tab1[i]=tab[i];
      tab2[i]=tab[i];
      tab3[i]=tab[i];
      tab4[i]=tab[i];
      tab5[i]=tab[i];
      tab6[i]=tab[i];
	
    }
  
  //printf("sortowanie losowego zbioru\n");
  
  bubblet=clock();
  bubblesort(tab1);
  bubblet=clock()-bubblet;

  insertiont=clock();
  insertionsort(tab2);
  insertiont=clock()-insertiont;

  selectiont=clock();
  selectionsort(tab3);
  selectiont=clock()-selectiont;

  shellt=clock();
  shellsort(tab4);
  shellt=clock()-shellt;
  //----------------------------


  printf("b;%1.3f,\ns;%1.3f,\ni;%1.3f\nsh;%1.3f\n",(double)bubblet/CLOCKS_PER_SEC,(double)selectiont/CLOCKS_PER_SEC,(double)insertiont/CLOCKS_PER_SEC, (double)shellt/CLOCKS_PER_SEC);



}
