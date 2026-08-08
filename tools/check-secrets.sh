#!/bin/sh
# Prime directive gate. Nothing committed may reveal device names, remote
# usernames, hostnames, networks or IPs.
#
#   tools/check-secrets.sh            # whole tree
#   tools/check-secrets.sh --staged   # staged files only
#
# Put anything else that must never appear in .secretwords, one per line.
# That file is gitignored, because a list of things you mustn't publish is
# itself a thing you mustn't publish.
#
# Known false positives go in .secretallow, one regex per line. That file is
# tracked, so CI applies the same exemptions. Version numbers are the usual
# culprit, since a four-part one is indistinguishable from an address.
#
# This script excludes itself from the scan, since it necessarily contains the
# patterns it's looking for.

set -eu

root=$(git rev-parse --show-toplevel)
cd "$root"

self=tools/check-secrets.sh

if [ "${1:-}" = "--staged" ]; then
  files=$(git diff --cached --name-only --diff-filter=ACM | grep -v "^$self$" || true)
else
  files=$(git ls-files | grep -v "^$self$" || true)
fi

[ -n "$files" ] || { echo "secret gate: nothing to check"; exit 0; }

fail=0

# Allowed line shapes, combined into one alternation. Applied to the matched
# lines rather than to the file list, so an exemption never blinds the gate to
# the rest of a file.
# Strip CR first. A Windows checkout leaves one on every line, which kills the
# exemptions and turns the blank line into a \r that would match anything.
allow=''
if [ -f .secretallow ]; then
  while IFS= read -r a; do
    a=$(printf '%s' "$a" | tr -d '\r')
    case "$a" in ''|'#'*) continue ;; esac
    if [ -z "$allow" ]; then allow="$a"; else allow="$allow|$a"; fi
  done < .secretallow
fi

check() {
  hits=$(printf '%s\n' $files | xargs grep -InE "$1" 2>/dev/null || true)
  if [ -n "$hits" ] && [ -n "$allow" ]; then
    hits=$(printf '%s\n' "$hits" | grep -vE "$allow" || true)
  fi
  if [ -n "$hits" ]; then
    fail=1
    printf 'SECRET GATE: /%s/\n' "$1" >&2
    printf '%s\n' "$hits" | cut -c1-160 | sed 's/^/  /' >&2
  fi
}

# One pattern per line. Read as lines rather than words, so a pattern may
# contain spaces and character classes.
while IFS= read -r pat; do
  case "$pat" in ''|'#'*) continue ;; esac
  check "$pat"
done <<'PATTERNS'
(^|[^0-9])((25[0-5]|2[0-4][0-9]|1?[0-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1?[0-9]?[0-9])([^0-9]|$)
cfarm[0-9]+
[A-Za-z0-9_.-]+\.(local|internal|lan)([^A-Za-z0-9]|$)
/home/[A-Za-z0-9_-]+/
/Users/[A-Za-z0-9_-]+/
[A-Za-z]:\\Users\\[A-Za-z0-9_-]+
ssh-(rsa|ed25519|dss) AAAA
-----BEGIN [A-Z ]*PRIVATE KEY-----
PATTERNS

# Literal wordlist, if present.
if [ -f .secretwords ]; then
  while IFS= read -r w; do
    w=$(printf '%s' "$w" | tr -d '\r')
    case "$w" in ''|'#'*) continue ;; esac
    hits=$(printf '%s\n' $files | xargs grep -Iln -F -- "$w" 2>/dev/null || true)
    if [ -n "$hits" ]; then
      fail=1
      echo "SECRET GATE: wordlist entry appears in:" >&2
      printf '%s\n' "$hits" | sed 's/^/  /' >&2
    fi
  done < .secretwords
fi

if [ "$fail" -ne 0 ]; then
  echo >&2
  echo "Refusing. Scrub the above before committing." >&2
  exit 1
fi

echo "secret gate: clean ($(printf '%s\n' $files | wc -l | tr -d ' ') files)"
