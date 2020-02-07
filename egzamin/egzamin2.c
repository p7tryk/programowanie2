#include <stdio.h>
#include <stdlib.h>

void shellsort(double * tab, int size)
{
  double temp;

  int i,j,h;
  
  for(h=size/2;h!=0;h=h/2)
    {
      for(i=size-h;i>=0;i--)
	{
	  temp=tab[i];
	  j=i+h;
	  while(j<size&&temp>tab[j])
	    {
	      tab[j-h]=tab[j];
	      j=j+h;
	    }
	  tab[j-h]=temp;
	}
    }
  
  
}

int countemployes(const char * filename)
{
  FILE * indata;
  double record = 0;
  int n;
  if((indata=fopen(filename,"rt"))==NULL)
    {
      //printf("Couldn't read from file %s\n",filename);
      return -1;
    }
  for(n=0;true;n++)
    {
      if(fscanf(indata, "%f",&record)<=0)
	break;
    }
  fclose(indata);
  //printf("%d count\n",n);
  return n; //just in case
}


int readfile(const char * filename, double * table,int linecount)
{
  FILE * indata;
  if((indata=fopen(filename,"rt"))==NULL)
    {
       printf("Couldn't read from file %s\n",filename);
      return 0;
    }
  for(int i=0; i<linecount;i++)
    {
      fscanf(indata,"%lf", &table[i]);
    }
  fclose(indata);
  //printf("readfile\n");
  return linecount;
}


int median(const char * filename, double * result)
{
  
  
  int size = countemployes(filename);
  if(size)
    return 0;
  double * table = (double*)malloc(sizeof(double)*size);
  readfile(filename, table, size);
  shellsort(table,size);
  
  if(size%2)
    {
      *result = table[size/2];
    }
  else
    *result = (table[size/2]+table[size/2+1]) /2;

    
  return !!size; //0 albo 1
  
     
    
}



int main()
{
  double result = 0.0;
  char * filename = "tet.txt";

  int i = median(filename, &result);
  
  printf("result=%f\nreturn value=%d\n", result, i );
}
