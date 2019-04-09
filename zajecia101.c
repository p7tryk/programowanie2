#include <stdio.h>
#include <math.h>
#define SIZE 6

double sredniageom(double dat[], int size)
{
  double temp=1;

  for(int i=0;i<size;i++)
    temp*=dat[i];
  return pow(temp,1/(double)size);
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
  printf("\n\n");
    
}

double max(double dat[], int num)
{
  double temp=dat[0];
  for(int i=0; i<num;i++)
    {
      if(dat[i]>temp)
	temp = dat[i];
    }
  return temp;
}

double min(double dat[], int num)
{
  double temp=dat[0];
  for(int i=0; i<num;i++)
    {
      if(dat[i]<temp)
	temp = dat[i];
    }
  return temp;
}

int match(double dat[],int num, double match)
{
  for(int i=0;i<num;i++)
    {
      if(dat[i]==match)
	return i;
    }
  return -1;
}

int count(double dat[],int num, double match)
{
  int temp=0;
  for(int i=0;i<num;i++)
    {
      if(dat[i]==match)
	temp++;
    }
  return temp;
}


int main()
{
  int i;
  double tab[SIZE] = { 2.3, 1.7, 3.3 , 4.7, 2.4 ,3.3};
  
  drukuj(tab, SIZE);
  printf("%lf\n",sredniageom(tab, SIZE));
  printf("%lf\n",sredniaharm(tab, SIZE));
  printf("%lf\n",max(tab, SIZE));
  printf("%lf\n",min(tab, SIZE));
  printf("index %d\n", match(tab,SIZE,tab[2]));
  printf("%d razy\n", count(tab,SIZE,tab[2]));
}
