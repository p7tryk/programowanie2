#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define SIZE 60000

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

  double tab1[SIZE];
  double tab2[SIZE];
  double tab3[SIZE];
  
  srand((unsigned) time(&t));
  
  for(int i=0;i<SIZE;i++)
    {
      tab[i]=SIZE-i;
      tab1[i]=tab[i];
      tab2[i]=tab[i];
      tab3[i]=tab[i];
    }

  //printf("odwocony zbior\n");
  
  bubblet=clock();
  bubblesort(tab1);
  bubblet=clock()-bubblet;

  insertiont=clock();
  insertionsort(tab2);
  insertiont=clock()-insertiont;

  selectiont=clock();
  selectionsort(tab3);
  selectiont=clock()-selectiont;
  //----------------------------
  /*
  printf("bubble sort\n");
  for(int n=0;n<SIZE;n++)
    {
      printf("%1.1f ",tab1[n]);
    }
  printf("\nselectionsort\n");
  
  for(int n=0;n<SIZE;n++)
    {
      printf("%1.1f ",tab2[n]);
    }
  printf("\ninsertionsort\n");
  
  for(int n=0;n<SIZE;n++)
    {
      printf("%1.1f ",tab3[n]);
    }
  printf("\noriginal\n");
  for(int n=0;n<SIZE;n++)
    {
      printf("%1.1f ",tab[n]);
    }
  printf("\n");
  */

  printf("b;%1.2f,\ns;%1.2f,\ni;%1.2f\n",(double)bubblet/CLOCKS_PER_SEC,(double)selectiont/CLOCKS_PER_SEC,(double)insertiont/CLOCKS_PER_SEC);



}
