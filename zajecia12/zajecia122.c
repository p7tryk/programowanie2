#include <stdio.h>
#include <math.h>
#define PI 3.14159265358979323846

void trig(double x, double *sinx, double *cosx, double *tanx)
{
  *sinx=sin(x);
  *cosx=cos(x);
  *tanx=tan(x);
    

}


int main()
{
  double x,sinx,cosx,tanx;

  scanf("%lf",&x);
  trig(x,&sinx,&cosx,&tanx);
  printf("x=%lf sinx=%lf cosx=%lf tanx=%1.50lf\n", x, sinx, cosx,tanx);

}
