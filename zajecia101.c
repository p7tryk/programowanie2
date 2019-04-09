#include <stdio.h>
#include <math.h>
#define SIZE 6

double sredniageom(double dat[], int size)
{
  double temp=1;
  double realsize= size;

  for(int i=0;i<size;i++)
    temp*=dat[i];
  return pow(temp,1/realsize);
}


double sredniaharm(double dat[], int size)
{
  double temp =1;

  for(int i=0;i<size;i++)
    {
      temp += (double)1/dat[i];
    }

  return (double)size/temp;
}


void drukuj(double dat[],int num)
{
  printf("\n");
  for(int i=0;i<num;i++)
    {
      printf("%lf,",dat[i]);
    }
  printf("\n");
    
}


int main()
{
  int i;
  double tab[SIZE] = { 2.3, 1.7, 3.3 , 4.7, 2.4 ,6.7};
  
  drukuj(tab, SIZE);
  printf("%lf\n",sredniageom(tab, SIZE));
  printf("%lf\n",sredniaharm(tab, SIZE));
  
}
