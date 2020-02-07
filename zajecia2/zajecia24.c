#include <stdio.h>


int main()
{
  int c;
  int nwc, nother;
  FILE *infile;
  nother=nwc=0;

  if((infile=fopen("zajecia2.txt","rt"))==NULL)
    {
      printf("Couldn't open a file\n");
      return 0;
    }
  while((c=fgetc(infile))!=EOF)
    {
      if(c==' '||c==' '||c==' ')
	{
	  nwc++
	    }
      else
	{
	  nother++;
	}
    }
}
