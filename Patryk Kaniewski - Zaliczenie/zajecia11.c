#include <stdio.h>
int main()
{
  int c = 'a';
  while((c=getchar())!=EOF)
    {
      if( c!='\n')
	c++;
      putchar(c);
    }
}
