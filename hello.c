#include <stdio.h>

int fn_a(int b)
{
  return b * 3;
}

int main()
{
  int a = fn_a(3);
  printf("%d\n", a);
  return 0;
}

