#include <stdio.h>
#include <ctype.h>
int main()
{
  int lower, upper, step;

  double fahr, cel;
  lower=0;
  upper=300;
  step=20;
  fahr=lower;

  for(fahr;fahr<=upper;fahr=fahr+step)
    {
      cel= (5.0/9.0)+(fahr-32.0);
      printf("%4.0f %6.1f\n", fahr, cel);
    }
  
}
