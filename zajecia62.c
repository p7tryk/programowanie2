#include <stdio.h>

#define SIZE 5

//transponowanie

int main()
{
  
  double tab[SIZE][SIZE]
  {
    {1.0,2.0,3.0,4.0,5.0},
      {6.0,7.0,8.0,9.0,10.0},
	{11.0,12.0,13.0,14.0,15.0},
	  {16.0,17.0,18.0,19.0,20.0},
	    {21.0,22.0,23.0,24.0,25.0}
    
  };

  int n,k;




  for(n=0; n<SIZE; n++)
    {
      for(k=0; k<SIZE; k++)
	{
	  printf("%1.1f ", tab[n][k]);
	}
      printf("\n");
    }
  
  int temp;
  printf("\n");
  
  
  for(n=0; n<SIZE; n++)
    {
      for(k=n+1;k<SIZE;k++)
      {
	temp=tab[n][k];
	tab[n][k]=tab[k][n];
	tab[k][n]=temp;
      }
    }












  
 for(n=0; n<SIZE; n++)
   {
      for(k=0; k<SIZE; k++)
	{
	  printf("%1.1f ", tab[n][k]);
	}
      printf("\n");
    }

  
  
  
  return 0;
}

