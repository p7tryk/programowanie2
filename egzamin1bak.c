#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void shellsort(char * tab, int size)
{
  char temp;

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

int anagram(char * word1, char * word2)
{
  /*
  char * string1 = word1;
  char * string2 = word2;
  */
  char string1[strlen(word1)];
  char string2[strlen(word2)];

  
    
  
  for(int i = 0;i < strlen(string1);i++)
    {
      if(string1[i]>'z'&&string1[i]<'A')
	{
	  string1[i]=' ';
	  continue;
	  }
      string1[i]=word1[i];
    }
  for(int i = 0;i < strlen(string2);i++)
    {
      if(string2[i]<'a'&&string2[i]>'Z')
	{
	  string2[i]=' ';
	  continue;
	}
      string2[i]=word2[i];
    }
  strlwr(string1);
  strlwr(string2);
    
  if(strlen(string1)!=strlen(string2))
    {
      return 0;
    }
  shellsort(string1, strlen(string1));
  shellsort(string2, strlen(string2));
  printf("%s\n%s\n", string1,string2);

  return !strcmp(string1, string2);
  
  
}



int main()
{
  printf("%d %d\n", 'a', 'Z');
  char test1[] = "et@ts";
  char test2[] = "te#st";
  
  printf("%d\n",anagram(test1,test2));

}
