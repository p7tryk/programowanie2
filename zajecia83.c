#include <stdio.h>

int main()
{

  for(int n=2;n<21;n++)
    {
      long unsigned int s=1;
      for(int i=2;i<=n;s*=i++);
      printf("%d!=%lu\n",n,s);
    }
    
    
}
