#include <stdio.h>
#include <stdlib.h>


//TODO make pointer to a pointer so you can change passed pointer (function pass copy of a pointer not actual pointer)

void strcopy(char * dst, char * src)
{
  while(*dst++ = *src++);

}

int strlen(const char * str)
{
  const char *eos=str;
  while(*eos++);
  return eos-str-1;
}
/*
char *strcat(char * dest, const char *src)
{
  int n = 0;

  n = strlen(src);

  for(int i = 0; i<strlen(dest);i++)
    {
      dest[i]=src[i];
    }
  
  return dest;
  }*/

char *strsupercat(char * dest, const char *src)
{
  int n = 0;

  n = strlen(dest) + strlen(src);

  char * temp = (char*) malloc(n*sizeof(char));

  for(int i = 0; i<strlen(dest);i++)
    {
      temp[i]=dest[i];
    }
  for(int i = 0;i<strlen(src);i++)
    {
      temp[i+strlen(dest)]=src[i];
    }
  
  *dest=temp;
  return temp;
}


int main()
{
  char * stemp = "Jestem ";
  
  const char * s2 = "niesmiertelny";

  printf("%s %d\n",strsupercat(s1,s2),strlen(s1));

}
