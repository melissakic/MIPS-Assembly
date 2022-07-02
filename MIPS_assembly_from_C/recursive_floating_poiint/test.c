#include <stdio.h>
#include <math.h>

int foo(double d1,float f1,float f2);//{
/* if (d1>f2) { */
/*   return (f1+f2-d1)/3.; */
/* } */
/* if (d1==f2 && d1 !=f1 && d1 != 0.) { */
/*   return (f1*3.)/d1; */
/* } */
/* return 69; */
/* } */
/*  */
/*  */
/* if (d1<f2 && d1==f1 && f1!=0.) { */
/*   return abs(d1-f2)/f1; */
/* } */
/*  */
/* return f1*f2-12.*d1; */
/* } */

int main(int argc, char *argv[])
{
  printf("%d\n",foo(3.5,6.4,3.6));
  return 0;
}
