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


int inputemployes(struct employee* employees, char * filename)
{
  FILE *indata;

  int emplyno, n;
  int linesread =0;

  if((indata=fopen(filename,"rt"))==NULL) return 0;

  for(emplyno=0;emplyno<MAXEMPLY;emplyno++)
    {
      linesread++;
      if(fscanf(indata,"%29s %29s %d",
		employees[emplyno].firstname,
		employees[emplyno].lastname,
		&(employees[emplyno].age)) <=0)  
	break;
    }
  fclose(indata);
  linesread--;//remove last empty element;
  return linesread;
}

void emplyprint(struct employee* employees, int size)
{
  for(int n=0;n<size;n++)
    {
      printf("%s,%s,%d\n",
	     employees[n].firstname, employees[n].lastname,employees[n].age);
    }
  printf("\n");
}

void writeemployees(struct employee* employees, int size, char * filename)
{
  FILE *outdata;

  int emplyno, n;

  if((outdata=fopen(filename,"w"))==NULL)
    return;

  for(emplyno=0;emplyno<size;emplyno++)
    {
      fprintf(outdata,"%29s %29s %d",
	      employees[emplyno].firstname,
	      employees[emplyno].lastname,
	      employees[emplyno].age);
    }
  fclose(outdata);


}

int main(int argc, char **argv)
{
  struct employee employees[MAXEMPLY];

  char inputfile[100]= "resources/people.txt";
  char * infilename = inputfile;
  
  if(argc>1)
    infilename = argv[1];
  else
    infilename="resources/people.txt";

  char outputfile[100]= "resources/people5.txt";
  char * outfilename = outputfile;
  
  if(argc>2)
    outfilename = argv[2];
  else
    outfilename="resources/people.txt";
  
  
  int emplynumber = inputemployes(employees,infilename);
  

  
  emplyprint(employees, emplynumber);
  shellsort(employees, emplynumber);
  emplyprint(employees, emplynumber);
  writeemployees(employees,emplynumber,outfilename);

  return 0;
}
