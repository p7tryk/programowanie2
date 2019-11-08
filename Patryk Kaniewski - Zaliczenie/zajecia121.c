#include <stdio.h>
#define PI 3.1415


void sphere(double r, double *s, double *v)
{
  *s=4.*PI*r*r;
  *v=4.*PI*r*r*r/3.;

}


int main()
{
  double r,s,v;
  scanf("%lf",&r);
  sphere(r,&s,&v);
  printf("r=%f s=%f v=%f\n", r, s, v);

}
