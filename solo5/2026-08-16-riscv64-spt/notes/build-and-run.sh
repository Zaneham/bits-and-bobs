#!/bin/sh
# Builds the check harness against the real riscv64 files in the Solo5 tree and
# runs it. Cross-compiled on x86-64, run under qemu-riscv64. Ubuntu 24.04,
# gcc-riscv64-linux-gnu 13.2.
#
#   ENTRY=... SOLO5=... sh build-and-run.sh
set -e

ENTRY=${ENTRY:-/mnt/c/dev/bits-and-bobs/solo5/2026-08-16-riscv64-spt}
SOLO5=${SOLO5:-/mnt/c/dev/systems/solo5}
CC=${CC:-riscv64-linux-gnu-gcc}
OBJDUMP=${OBJDUMP:-riscv64-linux-gnu-objdump}

mkdir -p "$ENTRY/logs" "$ENTRY/disasm" "$ENTRY/asm"
OUT=$(mktemp -d)

echo "== toolchain =="
$CC --version | head -1
qemu-riscv64 --version | head -1

echo
echo "== build =="
$CC -static -nostdlib -nostartfiles -ffreestanding -O2 -Wall -Wextra -Werror \
    -D__SOLO5_BINDINGS__ -I "$SOLO5/include" -I "$SOLO5/bindings" \
    -o "$OUT/rvcheck" \
    "$ENTRY/src/main.c" \
    "$SOLO5/bindings/spt/sys_linux_riscv64.c" \
    "$SOLO5/tenders/spt/spt_launch_riscv64.S"
echo "built clean"
file "$OUT/rvcheck" | sed 's/^.*: //'

echo
echo "== assembly the compiler produced for the wrappers =="
$CC -S -O2 -ffreestanding -D__SOLO5_BINDINGS__ \
    -I "$SOLO5/include" -I "$SOLO5/bindings" \
    -o "$ENTRY/asm/sys_linux_riscv64.s" \
    "$SOLO5/bindings/spt/sys_linux_riscv64.c"

$OBJDUMP -d "$OUT/rvcheck" > "$ENTRY/disasm/rvcheck.objdump.txt"
for f in sys_read sys_write sys_pread64 sys_pwrite64 sys_clock_gettime \
         sys_epoll_pwait sys_timerfd_settime sys_exit_group spt_launch; do
    echo
    awk -v f="$f" '$0 ~ "<"f">:" {p=1} p&&/^$/{p=0} p' \
        "$ENTRY/disasm/rvcheck.objdump.txt"
done

echo
echo "== run under qemu-riscv64 =="
qemu-riscv64 "$OUT/rvcheck"
echo "exit status $?"

rm -rf "$OUT"
