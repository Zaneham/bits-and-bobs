/*
 * Exercises the real riscv64 files from the Solo5 tree, compiled as-is:
 *
 *   bindings/spt/sys_linux_riscv64.c
 *   tenders/spt/spt_launch_riscv64.S
 *
 * Freestanding, no libc, run under qemu-riscv64 and on real hardware. The point
 * is to prove the syscall numbers, the register bindings and the launch
 * trampoline, none of which the eye is any good at checking.
 */

long sys_read(long fd, void *buf, long size);
long sys_write(long fd, const void *buf, long size);
long sys_pread64(long fd, void *buf, long size, long pos);
long sys_pwrite64(long fd, const void *buf, long size, long pos);
long sys_clock_gettime(const long which, void *ts);
long sys_timerfd_settime(long fd, long flags, const void *utmr, void *otmr);
long sys_epoll_pwait(long epfd, void *events, long maxevents, long timeout,
                     void *sigmask, long sigsetsize);
void sys_exit_group(long status);

void spt_launch(void *sp, void (*fn)(void *), void *arg);

#define CLOCK_MONOTONIC 1
#define EBADF           9

struct timespec {
    long tv_sec;
    long tv_nsec;
};

struct itimerspec {
    struct timespec it_interval;
    struct timespec it_value;
};

struct epoll_event {
    unsigned int events;
    unsigned long long data;
} __attribute__((packed));

static long slen(const char *s)
{
    long n = 0;
    while (s[n])
        n++;
    return n;
}

static void say(const char *s)
{
    (void)sys_write(1, s, slen(s));
}

static void sayl(long v)
{
    char b[24];
    int i = (int)sizeof(b);
    unsigned long u = (v < 0) ? (unsigned long)-v : (unsigned long)v;

    b[--i] = '\0';
    do {
        b[--i] = (char)('0' + (u % 10));
        u /= 10;
    } while (u);
    if (v < 0)
        b[--i] = '-';

    say(&b[i]);
}

static long failures;

static void check(const char *what, int ok)
{
    say(ok ? "  ok    " : "  FAIL  ");
    say(what);
    say("\n");
    if (!ok)
        failures++;
}

static void checkv(const char *what, long got, long want)
{
    int ok = (got == want);

    say(ok ? "  ok    " : "  FAIL  ");
    say(what);
    if (!ok) {
        say("  (got ");
        sayl(got);
        say(", wanted ");
        sayl(want);
        say(")");
    }
    say("\n");
    if (!ok)
        failures++;
}

/* Stack for the launched function. 16-byte aligned, per the psABI. */
static unsigned long launch_stack[512] __attribute__((aligned(16)));

/*
 * Runs on the stack spt_launch handed us, not the one we started on. Takes an
 * argument through a2 to prove the trampoline shuffles it into a0.
 */
static void launched(void *arg)
{
    say("\nspt_launch\n");
    check("argument arrived in a0", arg == (void *)0x5010501050105010UL);

    unsigned long sp;
    __asm__ __volatile__("mv %0, sp" : "=r"(sp));
    check("running on the new stack",
          sp > (unsigned long)launch_stack &&
              sp <= (unsigned long)&launch_stack[512]);
    check("new stack is 16-byte aligned", (sp & 0xf) == 0);

    say(failures ? "\nFAILURE\n" : "\nSUCCESS\n");
    sys_exit_group(failures ? 1 : 0);
}

void _start(void)
{
    say("**** riscv64 syscall wrapper check ****\n\n");

    /* Return value comes back positive and correct. */
    checkv("sys_write returns the byte count",
           sys_write(1, "  (this line came out of sys_write)\n", 36), 36);

    /*
     * Errors are a negative return in a0, with no condition bit involved. This
     * is the bit that differs from the ppc64le port these were written from, so
     * every wrapper that can fail cheaply gets checked.
     *
     * Each of these has to reach the fd lookup to give EBADF, so the pointer
     * and count arguments are real. Pass a null itimerspec and the kernel
     * faults on the copy first; pass maxevents of zero and epoll_pwait rejects
     * it before it ever looks at the fd. Either way you would be testing the
     * argument you did not mean to.
     */
    struct itimerspec its = {{0, 0}, {0, 0}};
    struct epoll_event evs[4];
    char buf[8];

    checkv("sys_read(-1) is -EBADF", sys_read(-1, buf, sizeof(buf)), -EBADF);
    checkv("sys_write(-1) is -EBADF", sys_write(-1, buf, sizeof(buf)), -EBADF);
    checkv("sys_pread64(-1) is -EBADF",
           sys_pread64(-1, buf, sizeof(buf), 0), -EBADF);
    checkv("sys_pwrite64(-1) is -EBADF",
           sys_pwrite64(-1, buf, sizeof(buf), 0), -EBADF);
    checkv("sys_timerfd_settime(-1) is -EBADF",
           sys_timerfd_settime(-1, 0, &its, (void *)0), -EBADF);
    checkv("sys_epoll_pwait(-1) is -EBADF",
           sys_epoll_pwait(-1, evs, 4, 0, (void *)0, 8), -EBADF);

    struct timespec a = {0, 0}, b = {0, 0};
    checkv("sys_clock_gettime succeeds",
           sys_clock_gettime(CLOCK_MONOTONIC, &a), 0);
    check("sys_clock_gettime filled the struct", a.tv_sec != 0 || a.tv_nsec != 0);
    (void)sys_clock_gettime(CLOCK_MONOTONIC, &b);
    check("monotonic clock does not go backwards",
          b.tv_sec > a.tv_sec || (b.tv_sec == a.tv_sec && b.tv_nsec >= a.tv_nsec));

    /*
     * rdtime, which crt_init.h seeds the stack canary from. U-mode access is
     * gated on scounteren.TM, so this is the line that can trap on real silicon
     * while passing happily under qemu.
     */
    unsigned long t0, t1;
    __asm__ __volatile__("rdtime %0" : "=r"(t0));
    __asm__ __volatile__("rdtime %0" : "=r"(t1));
    check("rdtime is readable from U-mode", t0 != 0);
    check("rdtime advances", t1 >= t0);

    void *sp = (void *)&launch_stack[512];
    spt_launch(sp, launched, (void *)0x5010501050105010UL);

    say("\nFAILURE, spt_launch returned\n");
    sys_exit_group(1);
}
