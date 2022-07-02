#include <stdio.h>

struct A{
  int i;
  float f;
  double d;
};


struct A foo(int *niz){
  struct A temp;
  for (int i = 0; i < 3; ++ i) {
    temp.i+=niz[i];
  }
  return temp;
}

int main(int argc, char *argv[])
{
  int niz[]={1,2,3};
  struct A temp=foo(niz);
 printf("%d\n",temp.i);
  return 0;
}
