#include <stdio.h>
#include <stdlib.h>
#include <math.h>

float bar(float f1,float f2,double d1);//{ 
/*  */
/* if (f1<f2) { */
/*   return 2.f * ceil(f1) - round(f2)+ trunc(d1); */
/* }else if (f1==f2) { */
/*   return ceil(f1)- floor(f2)+trunc(d1); */
/* } */
/* return d1; */
/* } */
/*  */
int main(int argc, char *argv[])
{
  printf("%f\n",bar(5.1,5.1,4.4));
  return 0;
}
