#!/bin/sh
# Build ocaml/ocaml#14812 on the machine this runs on, then run the comballoc
# offset tests natively. Expects the test sources beside it.
#
#   remote-build.sh [work-dir]
#
# Shallow clone, because none of the history matters here.

set -e

WORK=${1:-$HOME/comballoc-14812}
SRC=$(cd "$(dirname "$0")" && pwd)

# Shared machines, so stay polite even where there are 192 cores.
J=$(nproc)
[ "$J" -gt 16 ] && J=16

if [ ! -d "$WORK/.git" ]; then
  git clone --depth 50 https://github.com/ocaml/ocaml.git "$WORK"
  cd "$WORK"
  git fetch --depth 50 origin pull/14812/head:pr14812
else
  cd "$WORK"
fi

git checkout pr14812
git log --oneline -1

./configure --disable-ocamldoc > configure.log 2>&1
make -j"$J" world.opt > build.log 2>&1
echo "built: $(./ocamlopt.opt -version)"

sh "$SRC/run-tests.sh" "$WORK" "$WORK/testrun"
