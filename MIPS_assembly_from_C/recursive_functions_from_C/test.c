#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

extern char* d; 

void print_comb(uint32_t maxr);//{
/*   for (int i= 0; i < maxr; ++i) { */
/*     printf("%c",d[i]); */
/*   } */
/*   printf("\n"); */
/* } */

void combinations_impl(char* chars,uint32_t maxr,
    uint32_t size,uint32_t r);//{
/* if (r==0) { */
/*   print_comb(maxr); */
/* return; */
/* } */
/*   for (int i= 0; i < size; ++i) { */
/*     d[maxr-r]=chars[i]; */
/*     combinations_impl(chars,maxr,size,r-1); */
/*   } */
/*  */
/* } */

void combinations(char* chars,uint32_t size,uint32_t r);//{
/*   d=malloc(r); */
/*   combinations_impl(chars,r,size,r); */
/* }  */
/*  */
int main(int argc, char *argv[])
{
  char set[]={'a','b'};
  combinations(set,2,3);
  return 0;
}
