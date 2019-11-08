#include <stdio.h>

#define MAX 10
/*
int factorial(int n)
{
  int fact = 1;
  for(n;n>1;n--)
    fact*=n;

  return fact;
  }*/

int factorial(int n)
{  
  if(n>1)
      return n * factorial(n-1);
  else
    return 1;  
}



int main()
{
  for(int i=1;i<MAX;i++)
    {
      printf("%d!=%d\n",i,factorial(i));
    }
  return 0;
}
