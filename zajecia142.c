#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MAXNAME 30

//sort by first letter
struct employee
{
  char firstname[MAXNAME];
  char lastname[MAXNAME];
  short int age;
} employee;

typedef struct employee*  pemployee;




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

int inputemployes(struct employee * employees, char * filename, int maxemply)
{
  FILE *indata;

  int emplyno;
  int linesread =0;

  if((indata=fopen(filename,"rt"))==NULL)
    {
      printf("Couldn't read from file %s\n",filename);
      return -1;
    }
  for(emplyno=0;emplyno<maxemply;emplyno++)
    {
      linesread++;
      if(fscanf(indata,"%29s %29s %hd",
		employees[emplyno].firstname,
		employees[emplyno].lastname,
		&(employees[emplyno].age)) <=0)  
	break;
    }
  fclose(indata);
  linesread--;//remove last empty element;
  return linesread;
}

int countemployes(char * filename)
{
  struct employee record;
  FILE *indata;
  int n;
  if((indata=fopen(filename,"rt"))==NULL)
    {
      printf("Couldn't read from file %s\n",filename);
      return -1;
    }
  for(n=0;n>=0;n++)
    {
      if(fscanf(indata, "%29s %29s %hd",
		record.firstname,
		record.lastname,
		&record.age)<=0)
	return n; //returns number of employees read
    }
  return -1; //just in case
}

void printsingle(struct employee* employee)
{
  printf("%s\t%s\t%d\n",
	 employee->firstname,
	 employee->lastname,
	 employee->age);

}

void emplyprint(struct employee * employees, int size)
{
  for(int n=0;n<size;n++)
    {
      printsingle(&employees[n]);
    }
  printf("\n");
}




void writeemployees(struct employee * employees, int size, char * filename)
{
  FILE *outdata;

  int emplyno;

  if((outdata=fopen(filename,"w"))==NULL)
    {
      printf("Couldn't write to file %s\n",filename);
      return;
    }
  for(emplyno=0;emplyno<size;emplyno++)
    {
      fprintf(outdata,"%29s\t%29s\t%d\n",
	      employees[emplyno].firstname,
	      employees[emplyno].lastname,
	      employees[emplyno].age);
    }
  fclose(outdata);


}

int main(int argc, char *argv[])
{
  

  char intemp[]= "resources/people.txt";
  char * infilename = intemp;
  if(argc>1)
    infilename = argv[1];


  char outtemp[]= "resources/people5.txt";
  char * outfilename = outtemp;
  if(argc>2)
    outfilename = argv[2];

  
  
  int emplynumber = countemployes(infilename);


  struct employee * employees = (struct employee *) malloc(emplynumber * sizeof(struct employee));

  inputemployes(employees, infilename, emplynumber);
  emplyprint(employees, emplynumber);
  shellsort(employees, emplynumber);
  emplyprint(employees, emplynumber);
  writeemployees(employees,emplynumber,outfilename);
  free(employees);
  return 0;
}
