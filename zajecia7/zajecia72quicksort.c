#include <stdio.h>
#define SIZE 4

void quicksort(double * tab,int l, int p)
{
  double temp1,temp2;

  int i,j;
  
  i=0;
  j=p;
  temp1=tab[(l+p)/2];
  
  do
    {
      while(tab[i]<temp1)
	i++;
      while(tab[j]>temp1)
	j++;

      if(i<=j)
	{
	  
	  temp2=tab[i];
	  tab[i]=tab[j];
	  tab[j]=temp2;
	  
	  i++;
	  j--;
	}
      
    }
  while(i>j);
    
  if(l<j)
    quicksort(tab,l,j);
  if(i<p)
    quicksort(tab,i,p);
  
  
  
}

//zamienia kolejnosc tablicy

//drukuje najwieksza liczba, najmniejsza, i srednio
int main()
{
  //double tab[SIZE] = {1.1 , 4.3 , 6.7 , -3.4, 2.4 , 0.1 , 4.2 , -1.2, 0.01 , 1.3 };
  //double back[SIZE] = {1.1 , 4.3 , 6.7 , -3.4, 2.4 , 0.1 , 4.2 , -1.2, 0.01 , 1.3 };
  double tab[SIZE]={3.1, 2.2, 1,3};
  double back[SIZE]={3.1, 2.2, 1,3};
  
  
  //------------------------
  quicksort(tab,1,SIZE);

  
  //----------------------------
    for(int n=0;n<SIZE;n++)
    {
      printf("%1.1f ",tab[n]);
    }
  printf("\n");
  
  for(int n=0;n<SIZE;n++)
    {
      printf("%1.1f ",back[n]);
    }
  printf("\n");
}
