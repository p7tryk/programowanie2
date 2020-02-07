#include <stdio.h>
#define SIZE 10


//drukuje najwieksza liczba, najmniejsza, i srednio
int main()
{
  double tab[SIZE] = {1.1 , 4.3 , 6.7 , -3.4, 2.4 , 0.1 , 4.2 , -1.2, 0.01 , 1.3 };
  double val = tab[0];
  int n;

  int maxpos=0;
  int minpos=0;
  double all = tab[0];

 
  for (n=1;n<SIZE;n++)
    {
      if (val<tab[n])
	{
	  val=tab[n];
	  maxpos=n;
	}
      if (val>tab[n])
	{
	  val=tab[n];
	  maxpos=n;
	}
    }
  
  printf("max %1.3f pos %d,\nmin %1.3f pos %d,\nmean %1.3f\n", tab[maxpos],maxpos, tab[minpos], minpos, all/SIZE );
  return 0;
}
