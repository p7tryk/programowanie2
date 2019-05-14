#include <stdio.h>
#include <stdlib.h>

#define MAXLENGTH 30

struct data
{
  char firstname[MAXLENGTH];
  char lastname[MAXLENGTH];
  int year;
};

struct element
{
  struct data data;
  struct element * next;
  struct element * prev;
};

struct list
{
  struct element * begin = NULL;
  struct element * end = NULL;
  int size = 0;
};

  

void addBegin(struct data data,struct list * list)
{
  struct element * newEl = (struct element*)  malloc(sizeof(struct element));
  newEl->data = data;
  newEl->prev = NULL;
  newEl->next = list->begin;

  if(list->begin!=NULL)
    {
       list->begin->prev=newEl; 
    }
  
  list->begin = newEl;
    
  if(list->end==NULL) //jezeli list jest pusta
    {
      list->end=list->begin;
    }
  list->size++;

}
//TODO
void addEnd(struct data data,struct list * list)
{
  struct element * newEl = (struct element*)  malloc(sizeof(struct element));
  newEl->data = data;
  newEl->next = NULL;
  newEl->prev = list->end;
  
  if(list->end!=NULL)
    {
      list->end->next=newEl; 
    }
  
  list->end = newEl;
  
  if(list->begin==NULL) //jezeli list jest pusta
    {
      list->begin=list->end;
    }
  list->size++;
  
}

void addBefore(struct data data,struct list * list, int chosen)
{
  if(chosen<list->size)
    return;

  
  struct element * newEl = (struct element*)  malloc(sizeof(struct element));

}


void printlist(struct list * list)
{
  struct element * pointer;

  pointer = list->begin;
  for(int i=0; i<list->size;i++)
    {
     
      printf("%s %s %d\n", pointer->data.firstname, pointer->data.lastname, pointer->data.year);
      
      if(pointer->next==NULL)
	{
	  break;
	}
      pointer=pointer->next;
    }

}


int main()
{
  struct list mylist;

  struct data mydata = {"Patryk","Kaniewski",15};
  addBegin(mydata, &mylist);

  mydata = (struct data){"Filip", "Rzepka",21};
  addBegin(mydata,&mylist);

  mydata = (struct data){"Dominik", "Gandziarek",31};
  addBegin(mydata,&mylist);
  
  printlist(&mylist);
  return 0;
}
