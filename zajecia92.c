/*program ma wyswietlic menu:

  wczytaj tablice
  posortuj rosnaco
  posortuj malujaca
  odwroc kolejnosc
  zapisz tablice do pliku
  wyjscie
*/
#include <stdio.h>
#define MAXSIZE 10

#define TRUE 1


//TODO fix odwrotnie
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
	  while(j<=size&&temp>tab[j])
	    {
	      tab[j-h]=tab[j];
	      j=j+h;
	    }
	  tab[j-h]=temp;
	}
    }
  
  
}
int reverse(double * tab, int size)
{
  double temp;
  for(int i=0; i<size/2;i++)
    {
      temp = tab[i]; //jestem gupi
      tab[i]= tab[size-i-1];
      tab[size-i-1]=temp;
    }

}


int wybor(double * tab, int size)
{
  double x;
  int i;
  //int sizetemp = size;
  char filename[255];
  char choice;
  int data = 0;

  
  while(true)
    {
      
      printf("w:wpisywanie\nz:zapis do pliku\nr:sort rosnaco \nm:sort malejaco\no:odwrocic\nz:\nk: wyjscie\np: printout\n");
      do
	{
	  scanf("%c",&choice);
	}
      while(choice=='\n');
      
      switch(choice) 
	{
	case 'z':
	  if(!data)
	    {
	      printf("nie ma danych\n");
	      continue;
	    }
	  
	  printf("podaj nazwe pliku\n");
	  scanf("%255s",filename);
	  
	  FILE *outfile;
	  outfile= fopen(filename, "w");
	  if(outfile==NULL)
	    {
	      printf("Nie mozna otworzyc pliku outfile\n");
	      break;
	    }
	  
	  for(i=0; i<size;i++)
	    {
	      fprintf(outfile,"%lf\n",tab[i]);
	    }
	  fclose(outfile);
	  printf("Zapisano do pliku\n");
	  break;
	  
	case 'w':
	  printf("podaj liczbe cyfr\n");
	  scanf("%d",&size);
	  
	  if(size>MAXSIZE)
	    {
	      printf("za duzo elementow\n");
	      break;
	    }
	  printf("wpisz %d elementow\n",size);
	  for(i=0; i<size;i++)
	    {
	      scanf("%lf",&x);
	      tab[i]=x;\
	    }
	  printf("\nzapisano liczby\n");
	  data=TRUE;
	  break;

	case 'r':
	  if(!data)
	    {
	      printf("nie ma danych\n");
	      continue;
	    }
	  printf("sortuje rosnaco\n");
	  shellsort(tab,size-1);
	  break;
	  
	case 'm':
	  if(!data)
	    {
	      printf("nie ma danych\n");
	      continue;
	    }
	  printf("sortuje malejąco\n");
	  shellsort(tab,size-1);
	  reverse(tab,size);
	  break;
	  
	case 'o':
	  if(!data)
	    {
	      printf("nie ma danych\n");
	      continue;
	    }
	  printf("odwracam\n");
	  reverse(tab,size);
	  break;
	  
	case 'k':
	  printf("wychodze\n");
	  return 0;
	case 'p':
	  for(i=0; i<size;i++)
	    {
	      printf("%lf\n",tab[i]);
	    }
	  break;
	}
    }
 
  choice=0;
}




int main()
{
  
  double tab[MAXSIZE];


  int size=0;

  
  
  wybor(tab,size);

  return 0;
    
}
