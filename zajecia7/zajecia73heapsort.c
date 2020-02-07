#include <stdio.h>
#define SIZE 4

void heaping(double * tab ,int l , int p)
{
  int i, j;
  temp=tab[i];

  while(j<=p)
    {
      if(j>p)
	if(tab[j] > tab[j+1])
	  j++;
      if(temp > tab[j])
	{
	  tab[i]=tab[j];
	  i=j;
	  j=2*i;
	}
      else
	j=p+1;

    }
  tab[i]=temp;
  
}

void heapsort(double * tab)
{
  int l,p;
  int temp;

  l=SIZE/2;

  for(l=SIZE/2;l>=0;l--)
    {
      heaping(tab,l,SIZE-1);
    }
      

}

int main()
{
  //double tab[SIZE] = {1.1 , 4.3 , 6.7 , -3.4, 2.4 , 0.1 , 4.2 , -1.2, 0.01 , 1.3 };
  //double back[SIZE] = {1.1 , 4.3 , 6.7 , -3.4, 2.4 , 0.1 , 4.2 , -1.2, 0.01 , 1.3 };
  double tab[SIZE]={3.1, 2.2, 1,3};
  
  //----------------------------
  for(int n=0;n<SIZE;n++)
    {
      printf("%1.1f ",tab[n]);
    }
  printf("\n");
  
  for(int n=0;n<SIZE;n++)
    {
      printf("%1.1f ",back[n]);
    }
  printf("\n");
}
