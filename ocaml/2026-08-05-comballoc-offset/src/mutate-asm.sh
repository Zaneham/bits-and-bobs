#!/bin/sh
# Do the tests actually catch a wrong displacement?
#
#   mutate-asm.sh <path-to-ocaml-tree> <output-dir>
#
# Compile the test to assembly, rewrite every combined-allocation displacement
# back to the plain 8 the uncombined case uses, reassemble, relink, run. This
# is the bug the patch would have if a backend ignored the new offset field.
# The test is only worth anything if this run fails.

set -e

TREE=$1
OUT=$2
SRC=$(cd "$(dirname "$0")" && pwd)

mkdir -p "$OUT"
cd "$OUT"

cp "$SRC/comb_group.ml" .
"$TREE/ocamlopt.opt" -nostdlib -I "$TREE/stdlib" -S -c comb_group.ml

echo "--- displacements off the young pointer, as emitted"
grep -o "leaq	[0-9]*(%r15)" comb_group.s | sort | uniq -c | sed 's/^/    /'

# Anything other than 8 is a folded combined-allocation displacement.
sed 's/leaq	[0-9]*(%r15)/leaq	8(%r15)/' comb_group.s > comb_group_broken.s

echo "--- after flattening every displacement to 8"
grep -o "leaq	[0-9]*(%r15)" comb_group_broken.s | sort | uniq -c | sed 's/^/    /'

as -o comb_group.o comb_group_broken.s
"$TREE/ocamlopt.opt" -nostdlib -I "$TREE/stdlib" -o comb_group_broken comb_group.cmx

echo "--- run with the wrong displacements (expected to fail)"
set +e
./comb_group_broken > broken.out 2>&1
status=$?
head -20 broken.out | sed 's/^/    /'
echo "    exit=$status"
