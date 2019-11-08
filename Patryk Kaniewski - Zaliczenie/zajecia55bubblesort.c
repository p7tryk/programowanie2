#include <stdio.h>
#define SIZE 10


//zamienia kolejnosc tablicy

//drukuje najwieksza liczba, najmniejsza, i srednio
int main()
{
  double tab[SIZE] = {1.1 , 4.3 , 6.7 , -3.4, 2.4 , 0.1 , 4.2 , -1.2, 0.01 , 1.3 };
  double back[SIZE] = {1.1 , 4.3 , 6.7 , -3.4, 2.4 , 0.1 , 4.2 , -1.2, 0.01 , 1.3 };
  
  
  //------------------------
  double temp;
  int i=1;
  int n=0;
  
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
