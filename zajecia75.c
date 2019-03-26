#include <stdio.h>

int main()
{
  int input;
  scanf("%d",&input);

  for(int i=0;i<(sizeof(input)*8);i++)
    {
      printf("%d", input>>sizeof(input)*8-1-i&1);
      
    }
  printf("\n");
  

}
