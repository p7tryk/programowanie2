#include <stdio.h>
#include <ctype.h>
#include <math.h>

int main()
{
  double lower, upper, step;
  
  double angle;
  double pi=3.1415;
  double sinx,cosx,tanx;
  lower=0.0;
  upper=pi;
  step=0.1;
  angle=lower;

  for(angle;angle<upper;angle=angle+step)
    {
      sinx= sin(angle);
      cosx = cos(angle);
      tanx = tan(angle);

      printf("angle = %4.0f\248, x = %2.3f , sinx = %2.5f, cosx = %2.5f, tanx= %2.5f\n", (angle/pi)*180, angle, sinx, cosx, tanx);
    }
  
}
