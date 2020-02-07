#include <stdio.h>
#define SIZE 8
//reverse grid
int main()
{
  double tab[SIZE][SIZE];
  int i, k;
  int offset = 2;
  
  for(k=SIZE;k>=0;k--)
    for(i=SIZE;i>=0;i--)
      tab[i][k]=2*(k-offset>i)+3*(k<=i+offset&&k+offset>=i)+4*(k+offset<i);
  
  
  
  for(i=0;i<SIZE;i++)
    {
      for(k=0;k<SIZE;k++)
	printf("%2.0f ",tab[i][k]);
      printf("\n");
    }
  return 0;
}
