/* The bare rounding instructions against libm, over the values that catch a
   wrong rounding mode. Build with -O2 -lm and run. */

#include <stdio.h>
#include <math.h>
#include <string.h>
#include <stdint.h>

#if defined(__aarch64__)
#define DEF(fn, insn) \
  static double fn(double x) { double r; \
    __asm__(insn " %d0, %d1" : "=w"(r) : "w"(x)); return r; }
DEF(iflr, "frintm")
DEF(icl,  "frintp")
DEF(itrc, "frintz")
DEF(irnd, "frinta")
#elif defined(__powerpc64__)
#define DEF(fn, insn) \
  static double fn(double x) { double r; \
    __asm__(insn " %0,%1" : "=d"(r) : "d"(x)); return r; }
DEF(iflr, "frim")
DEF(icl,  "frip")
DEF(itrc, "friz")
DEF(irnd, "frin")
#elif defined(__s390x__)
/* fidbr M3 masks, Principles of Operation 19-32. 7 toward -inf, 6 toward
   +inf, 5 toward 0, 1 to nearest with ties away. */
#define DEF(fn, mask) \
  static double fn(double x) { double r; \
    __asm__("fidbr %0," mask ",%1" : "=f"(r) : "f"(x)); return r; }
DEF(iflr, "7")
DEF(icl,  "6")
DEF(itrc, "5")
DEF(irnd, "1")
#else
#error "no round-to-integer instructions known for this target"
#endif

static uint64_t bits(double d) { uint64_t u; memcpy(&u, &d, 8); return u; }

static int bad = 0;

static void chk(const char *n, double x, double got, double want)
{
  int ok = isnan(want) ? isnan(got) : bits(got) == bits(want);
  if (!ok) {
    printf("MISMATCH %s(%a): got %a, want %a\n", n, x, got, want);
    bad = 1;
  }
}

int main(void)
{
  static const double v[] = {
    0.0, -0.0, 0.5, -0.5, 1.5, -1.5, 2.5, -2.5,
    0x1.fffffffffffffp-2, -0x1.fffffffffffffp-2,   /* predecessor of 0.5 */
    1.0, -1.0, 3.7, -3.7,
    0x1.fffffffffffffp+51, -0x1.fffffffffffffp+51, /* 2^52 - 0.5 */
    1e300, -1e300, 0x1p-1074, -0x1p-1074, 1e-300, -1e-300,
    INFINITY, -INFINITY, NAN
  };

  for (size_t i = 0; i < sizeof v / sizeof *v; i++) {
    chk("floor", v[i], iflr(v[i]), floor(v[i]));
    chk("ceil",  v[i], icl(v[i]),  ceil(v[i]));
    chk("trunc", v[i], itrc(v[i]), trunc(v[i]));
    chk("round", v[i], irnd(v[i]), round(v[i]));
  }

  puts(bad ? "FAIL" : "all match libm");
  return bad;
}
