# Me reviewing ocaml/ocaml#14505, frame pointers on POWER

PR head `3ed6fa5a53` against its merge-base `7832b03b74`, three configurations
per machine so the baseline is there to compare against. Machines are donated
hosts on a public compiler test farm; identifying details are left out on
purpose.

  ppc64le   IBM POWER10, 192 cores, AlmaLinux 9.8, gcc 11.5
  ppc64     IBM POWER10, 64 cores, big-endian, Debian sid, gcc 15.3

## ppc64le

| build | passed | skipped | failed |
|---|---|---|---|
| PR, `--enable-frame-pointers` | 1627 | 46 | 0 |
| PR, default | 1619 | 54 | 0 |
| merge-base, default | 1618 | 54 | 0 |

All eight `tests/frame-pointers` tests ran and passed. It works.

## ppc64 big-endian

| build | passed | skipped | failed |
|---|---|---|---|
| PR, `--enable-frame-pointers` | 1536 | 137 | 0 |
| PR, default | 1535 | 138 | 0 |
| merge-base, default | 1534 | 138 | 0 |

Green, and it means nothing, for the same reason big-endian got dropped from
the comballoc review. There is no native backend here, so the build is
bytecode only and seven of the eight frame-pointer tests skip. The merge-base
behaves identically, so this is upstream's position and not the PR's doing.
`logs/be-c_call-skip-reason.txt` shows the skip is on `native`, not on
`frame_pointers`.


## Files

- `logs/` the six build and testsuite runs
- `asm/` `fptest.ml` through each ppc64le build, for the prologue difference
