#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define SIZE 10


void ustaw(double * odn, double * don, double x)
{
  for(odn;odn<=don;odn++)
    {
      *odn=x;
    }
}
void wypelnij(double * odn, double * don, int x, int y)
{
  time_t t;
  
  srand(time(&t));
  double r;
  for(odn;odn<=don;odn++)
    {
      r = (double) rand();
      r = (int)r%(x-y); //zwraca losowa liczba w przedziale (x,y)
      r = r+x;
      *odn=r;
    }
    
}


void odwroc(double * odn, double * don)
{
  double * x = odn;
  double * y = don;
  double temp = 0;
  for(int i=0;i<don-odn;i++)
    {
      temp = *(odn+i);
      *(odn+i) = *(don-i);
      *(don-i) = temp;
    }
}




/* TODO XOR DOUBLE
 void odwroc(double * odn, double * don)
{
  double * x = odn;
  double * y = don;
  
  for(int i=0;i<don-odn;i++)
    {
      x^y= x;
      x^y= y;
      x^y= x;
    }
    }*/

void print(double * odn, double * don)
{
  for(odn;odn<=don;odn++)
    {
      printf("%lf\n",*odn);
    }
  printf("\n");
}

int main()
{

  double *  table  = (double*) malloc(SIZE*sizeof(double));

  double * end = table+SIZE;
  
  ustaw(table,end,5);

  print(table, end);

  wypelnij(table,end,5,20);
  print (table,end);
  odwroc(table,end);
  print(table,end); 
  free(table);
  

}
  
