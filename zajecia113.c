#include <stdio.h>
#include <string.h>
#define MAXEMPLY 100
#define MAXNAME 30

//sort by first letter
 
struct employee
{
  char firstname[MAXNAME];
  char lastname[MAXNAME];
  short int age;
};
int cmpstr(char * str1, char * str2) //returns 1 if first string is first alphabetically
{
  for(int i=0; i<strlen(str1);i++)
    {
	 if(str1[i]<=str2[i])
	   {
	     return 1;
	   }
    
    }
return 0;

}



void shellsort(struct employee * tab, int size, int mask)
  {
  struct employee temp;

  int i,j,h;
  
  for(h=size/2;h!=0;h=h/2)
    {
      for(i=size-h;i>=0;i--)
	{
	  temp=tab[i];
	  j=i+h;
	  while(j<size&&cmpstr(temp.lastname,tab[j].lastname))
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
      if(fscanf(indata,"%29s %29s %d",
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

  shellsort(employees, emplyno,0);
  for(int n=0;n<emplyno;n++)
    {
      printf("%s,%s,%d\n",
	     employees[n].firstname, employees[n].lastname,employees[n].age);
    }

  


 

    


}
