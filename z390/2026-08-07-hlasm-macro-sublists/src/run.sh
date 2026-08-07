#!/bin/sh
# Run every test through z390's mz390 macro processor and drop the listings
# in ../logs.  Point Z390 at a z390 checkout; it needs z390.jar and mac/.
#
#   src/run.sh /c/dev/z390
set -e

Z390=${1:-/c/dev/z390}
here=$(cd "$(dirname "$0")" && pwd)
logs="$here/../logs"

[ -f "$Z390/z390.jar" ] || { echo "no z390.jar under $Z390" >&2; exit 1; }
win=$(cd "$Z390" && pwd -W 2>/dev/null || echo "$Z390")

mkdir -p "$logs"
cd "$logs"
for f in "$here"/*.MLC; do
    n=$(basename "$f" .MLC)
    rm -f "$n".*
    cp "$f" .
    java -classpath "$Z390/z390.jar" -Xrs mz390 "$n.MLC" \
         "sysmac(+$win/mac)" "syscpy(+$win/mac)" >/dev/null 2>&1 || true
    rm -f "$n.MLC" "$n.OBJ"
    printf '%-10s %s\n' "$n" "$(grep -c 'MZ390E' "$n.ERR" || true) mz390 errors"
done
