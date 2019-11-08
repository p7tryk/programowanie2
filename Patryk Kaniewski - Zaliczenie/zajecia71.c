#include <stdio.h>
#define SIZE 10

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

//zamienia kolejnosc tablicy

//drukuje najwieksza liczba, najmniejsza, i srednio
int main()
{
  double tab[SIZE] = {1.1 , 4.3 , 6.7 , -3.4, 2.4 , 0.1 , 4.2 , -1.2, 0.01 , 1.3 };
  double back[SIZE] = {1.1 , 4.3 , 6.7 , -3.4, 2.4 , 0.1 , 4.2 , -1.2, 0.01 , 1.3 };
  
  
  //------------------------
  shellsort(tab);

  
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
