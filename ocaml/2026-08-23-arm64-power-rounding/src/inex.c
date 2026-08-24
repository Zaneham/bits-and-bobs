/* Test inexact flag handling for floor function */

#include <stdio.h>
#include <math.h>
#include <fenv.h>
#pragma STDC FENV_ACCESS ON

static double iflr(double x)
{
  double r;
  __asm__("fidbr %0,7,%1" : "=f"(r) : "f"(x));
  return r;
}

int main(void)
{
  double v = 3.7, r;

  feclearexcept(FE_ALL_EXCEPT);
  r = iflr(v);
  printf("fidbr floor(%g) = %g, inexact raised = %d\n",
         v, r, !!fetestexcept(FE_INEXACT));

  feclearexcept(FE_ALL_EXCEPT);
  r = floor(v);
  printf("libm  floor(%g) = %g, inexact raised = %d\n",
         v, r, !!fetestexcept(FE_INEXACT));

  return 0;
}
