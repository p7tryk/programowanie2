#include <stdio.h>

#define MAXEMPLY 100
#define MAXNAME 30
struct employee
{
  char firstname[MAXNAME];
  char lastname[MAXNAME];
  short int age;
};

void shellsort(struct employee * tab, int size)
  {
  struct employee temp;

  int i,j,h;
  
  for(h=size/2;h!=0;h=h/2)
    {
      for(i=size-h;i>=0;i--)
	{
	  temp=tab[i];
	  j=i+h;
	  while(j<size&&temp.age>tab[j].age)
	    {
	      tab[j-h]=tab[j];
	      j=j+h;
	    }
	  tab[j-h]=temp;
	}
    }
  
  
}


int main()
{
  struct employee employees[MAXEMPLY];

  FILE *indata;

  int emplyno, n;

  if((indata=fopen("resources/people.txt","rt"))==NULL) return 0;

  for(emplyno=0;emplyno<MAXEMPLY;emplyno++)
    {
      if(fscanf(indata,"%30s %30s %d",
		employees[emplyno].firstname,
		employees[emplyno].lastname,
		&(employees[emplyno].age)) <=0)
	break;
    }
  fclose(indata);

  for(int n=0;n<emplyno;n++)
    {
      printf("%s,%s,%d\n",
	     employees[n].firstname, employees[n].lastname,employees[n].age);
    }
  printf("\n");

  shellsort(employees, emplyno);
  for(int n=0;n<emplyno;n++)
    {
      printf("%s,%s,%d\n",
	     employees[n].firstname, employees[n].lastname,employees[n].age);
    }

  


 

    


}
