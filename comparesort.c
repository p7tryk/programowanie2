#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#define SIZE 200000

void quicksort(double * tab, int size, int l,int p)
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
	  while(j<size&&temp>tab[j])
	    {
	      tab[j-h]=tab[j];
	      j=j+h;
	    }
	  tab[j-h]=temp;
	}
    }
  
  
}

void bubblesort(double *tab, int size)
{
  double temp;
  int i,n;
  
  for(i=1;i<size;i++)
    {
      for(n=size-1;n>=i;n--)
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
void insertionsort(double *tab, int size)
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
void selectionsort(double *tab, int size)
{
  double temp;
  int i=1;
  int n=0;
  int k=0;
  
  for(i=0;i<size;i++)
    {
      k=i;
      temp=tab[i];
      for(n=i+1; n<size; n++)
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

  int bubblet= 0;
  int insertiont= 0;
  int selectiont= 0;
  int shellt= 0;
  int quickt= 0;
  int heapt = 0;

  double * tab = (double*) malloc (SIZE * sizeof(double));
  double * src = (double*) malloc (SIZE * sizeof(double));

  fill(src,SIZE);
  int mode = 0;
  if(argc>1)
    {
      printf("%s\n",argv[1]);
      if(!strcmp(argv[1],"-s"))
	{
	  shellsort(src,SIZE);
	  printf("sorted mode\n");
	}
      else if(!strcmp(argv[1],"-r"))
	{
	  shellsort(src,SIZE);
	  reverse(src, SIZE);
	  printf("reverse sorted mode\n");
	}
      else if(!strcmp(argv[1],"-q"))
	{
	  printf("skipping simple sorts\n");
	  mode=1;
	}
  }

  
  if(argc>2)
    {
      if(strcmp(argv[2],"-q"))
	{
	  printf("skipping simple sorts\n");
	  mode=1;
	}
      if(strcmp(argv[2],"-s"))
	{
	  shellsort(src,SIZE);
	  printf("sorted mode\n");
	}
      else if(strcmp(argv[2],"-r"))
	{
	  shellsort(src,SIZE);
	  reverse(src, SIZE);
	  printf("reverse sorted mode\n");
	};
      
    }
  
  if(!mode) //jezeli jest quickmode to skip
    {
      memcpy(tab,src,SIZE * sizeof(double));
      bubblet=clock();
      bubblesort(tab,SIZE);
      bubblet=clock()-bubblet;
      
      memcpy(tab,src,SIZE * sizeof(double));
      insertiont=clock();
      insertionsort(tab,SIZE);
      insertiont=clock()-insertiont;
      
      memcpy(tab,src,SIZE * sizeof(double));
      selectiont=clock();
      selectionsort(tab, SIZE);
      selectiont=clock()-selectiont;
    }
  memcpy(tab,src,SIZE * sizeof(double));
  shellt=clock();
  shellsort(tab,SIZE);
  shellt=clock()-shellt;

  memcpy(tab,src,SIZE * sizeof(double));
  quickt=clock();
  quicksort(tab,SIZE,0,SIZE);
  quickt=clock()-quickt;
  //----------------------------
  free(tab);
  free(src);

  printf("%1.3f\t%1.3f\t%1.3f\t%1.3f\t%1.3f\n",(double)bubblet/CLOCKS_PER_SEC,(double)selectiont/CLOCKS_PER_SEC,(double)insertiont/CLOCKS_PER_SEC, (double)shellt/CLOCKS_PER_SEC, (double)quickt/CLOCKS_PER_SEC);



}
