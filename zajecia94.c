#include <stdio.h>
#define MAX 70

int fib(int i)
{
  if(i<2)
    return i;
  else
    return fib(i-1)+fib(i-2);      
}



int main()
{
  for(int i=1;i<MAX;i++)
    printf("%d liczba ciagu f jest %d\n",i,fib(i));
}
z
