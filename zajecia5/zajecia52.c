#include <stdio.h>
#define SIZE 10


//zamienia kolejnosc tablicy

//drukuje najwieksza liczba, najmniejsza, i srednio
int main()
{
  double tab[SIZE] = {1.1 , 4.3 , 6.7 , -3.4, 2.4 , 0.1 , 4.2 , -1.2, 0.01 , 1.3 };
  double val = tab[0];
  int n;

  int maxpos=0;
  int minpos=0;
  double all = tab[0];

 
  for(n=1;n<SIZE;n++)
    {
      if(val<tab[n])
	{
	  val=tab[n];
	  maxpos=n;
	}
     else if(val>tab[n])
	{
	  val=tab[n];
	  maxpos=n;
	}
    }
  
  printf("max %1.3f pos %d,\nmin %1.3f pos %d,\nmean %1.3f\n", tab[maxpos],maxpos, tab[minpos], minpos, all/SIZE );
  
  double temp=0;

  for(n=0;n<SIZE;n++)
    {
      printf("%1.1f ",tab[n]);
    }
  printf("\n");
  
  for(n=0;n<(SIZE/2);n++)
    {
      temp=tab[n];
      tab[n]=tab[SIZE-n-1];
      tab[SIZE-n-1]=temp;
    }
  printf("\n");
  for(n=0;n<SIZE;n++)
    {
      printf("%1.1f ",tab[n]);
    }
  printf("\n");
  
  
  return 0;
}
