#!/bin/sh
# Build and run the comballoc offset tests against a given OCaml tree.
#
#   run-tests.sh <path-to-ocaml-tree> <output-dir> [ocamlopt-name]
#
# Dumps the post-comballoc Mach for each test so the group sizes and
# displacements are visible, then runs it.

set -e

TREE=$1
OUT=$2
OPT=${3:-ocamlopt.opt}
SRC=$(cd "$(dirname "$0")" && pwd)

mkdir -p "$OUT"
cd "$OUT"

for f in comb_group comb_boundary; do
  cp "$SRC/$f.ml" .
  "$TREE/$OPT" -nostdlib -I "$TREE/stdlib" -dcombine -S -o "$f" "$f.ml" \
    2> "$f.combine"
  echo "--- $f: combined groups (alloc <total bytes> <displacement>)"
  grep -o "alloc [0-9]* [0-9]*" "$f.combine" | sort -u | sed 's/^/    /'
  echo "--- $f: run"
  ./"$f" 2>&1 | sed 's/^/    /'
done
