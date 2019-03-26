#include <stdio.h>

int main()
{
  int input;
  int sum;
  scanf("%d",&input);
  sum=input+1;
  for(int n=2; n<=input/2;n++)
    {
      if(!(input%n))
	{
	  printf("%d",n);
	  
	  sum=sum+n;
	}
    }
  printf("\nsuma dzielnikow %d jest %d\n",input,sum);
  
}
