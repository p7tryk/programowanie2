#include <stdio.h>
#include <ctype.h>
#include <math.h>

#define PI 3.14159265358979323846

int main()
{
  double lower, upper, step;
  
  double angle;
  lower=0.0;
  upper=PI;
  step=0.1;
  angle=lower;

  for(angle;angle<upper;angle=angle+step)
    {
      printf("angle = %4.0f\248, x = %2.1f , sinx = %2.3f, cosx = %2.3f, tanx= %2.3f\n",
	     (angle/PI)*180, angle, sin(angle), cos(angle), tan(angle));
    }
  
}
