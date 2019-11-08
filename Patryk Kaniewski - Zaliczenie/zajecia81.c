#include <stdio.h>
#define SIZE 8

int main()
{
  double tab[SIZE][SIZE];
  int i, k;
  int offset = 2;
  

  
  
  for(i=0;i<SIZE;i++)
    for(k=0;k<SIZE;k++)
      tab[i][k]=2*(i-offset>k)+3*(i<=k+offset&&i+offset>=k)+4*(i+offset<k);
  
  
    
  for(i=0;i<SIZE;i++)
    {
      for(k=0;k<SIZE;k++)
	printf("%2.0f ",tab[i][k]);
      printf("\n");
    }
  return 0;
}
