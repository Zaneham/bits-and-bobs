#!/bin/sh
# What the patch actually changes in the emitted code.
#
#   compare-asm.sh <baseline-tree> <patched-tree> <output-dir>
#
# Same source through both compilers, then look at what happens after the
# young pointer is bumped.

set -e

BASE=$1
PATCHED=$2
OUT=$3
SRC=$(cd "$(dirname "$0")" && pwd)

mkdir -p "$OUT"
cd "$OUT"
cp "$SRC/comb_group.ml" .

"$BASE/ocamlopt.opt" -nostdlib -I "$BASE/stdlib" -S -c comb_group.ml
mv comb_group.s baseline.s
"$PATCHED/ocamlopt.opt" -nostdlib -I "$PATCHED/stdlib" -S -c comb_group.ml
mv comb_group.s patched.s

echo "--- baseline: the young pointer bump and what follows"
grep -A3 "subq	\$104, %r15" baseline.s | sed 's/^/    /'
echo
echo "--- patched: same site"
grep -A3 "subq	\$104, %r15" patched.s | sed 's/^/    /'
echo
echo "--- instruction counts (lines that are instructions, not labels or directives)"
printf "    baseline %s\n" "$(grep -c "^	[a-z]" baseline.s)"
printf "    patched  %s\n" "$(grep -c "^	[a-z]" patched.s)"
echo
echo "--- adds against the young pointer result, per file"
printf "    baseline leaq off r15: %s, separate addq: %s\n" \
  "$(grep -c "leaq	[0-9]*(%r15)" baseline.s)" \
  "$(grep -c "^	addq	\$[0-9]*, %r[a-z0-9]*$" baseline.s)"
printf "    patched  leaq off r15: %s, separate addq: %s\n" \
  "$(grep -c "leaq	[0-9]*(%r15)" patched.s)" \
  "$(grep -c "^	addq	\$[0-9]*, %r[a-z0-9]*$" patched.s)"
echo
echo "--- full diff"
diff -u baseline.s patched.s | sed 's/^/    /' || true
