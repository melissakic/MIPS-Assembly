#include <stdio.h>

int converzija(int broj,char* buffer);//{
/*   int i; */
/*   for (i = 0; broj>0; ++i) { */
/*     char c=(broj%2)+'0'; */
/*     buffer[i]=c; */
/*     broj=broj/2; */
/*   } */
/*   buffer[i]='\0'; */
/*   return i; */
/* } */
/*  */


int main(void)
{
  int a=6;
  char c[10];
  int broj=converzija(a,c);
  for (int i = broj; i>=0; --i) {
    printf("%c,",c[i]);
  }
  return 0;
}
