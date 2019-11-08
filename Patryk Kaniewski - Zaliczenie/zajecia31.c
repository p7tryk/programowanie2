#include <stdio.h>
#include <ctype.h>
int main()
{
  int c;
  FILE *infile;

  
  if((infile=fopen("zajecia31.txt", "r"))==NULL)
    {
      printf("nie mozna owtorzyc\n");
      return 0;
    }
  
  c=fgetc(infile);

  printf("%c\n", c);
  
  fclose(infile);
}
