# OCaml

I contribute to the [OCaml compiler](https://github.com/ocaml/ocaml), almost
entirely in `asmcomp/`, the native-code backend. This is where that work leaves
its evidence.

Two kinds of thing end up here. Changes of my own, where the entry holds the
assembly, the objdump, the run logs and the exact patches a reviewer would
otherwise have to take on trust. And reviews of other people's changes, where I
am checking somebody else's claim rather than making one, and the entry says
what I actually ran rather than what I thought.

The backend touches five architectures, so most entries carry per-architecture
output. Where a result came off real hardware rather than qemu the entry says
which machine, because qemu-user serialises and therefore proves nothing about
memory ordering, only that the encodings assemble and the logic holds.

| Entry | What it covers |
|---|---|
| `2026-08-02-atomic-exchange-cas` | Native `Atomic.exchange` and `Atomic.compare_and_set` across all five backends, gated on the value being statically immediate so the write barrier is a no-op. ocaml/ocaml#14980. |
| `2026-08-05-comballoc-offset` | Reviewing ocaml/ocaml#14812, one `add` fewer per combined allocation. |
| `2026-08-12-atomic-compare-exchange` | Compare-exchange becomes the primitive and `compare_and_set` is derived from it in cmmgen, one Cmm operation rather than two. Folded into ocaml/ocaml#14980. |
| `2026-08-12-power-frame-pointers` | Reviewing ocaml/ocaml#14505, frame pointers on POWER. |
| `2026-08-13-s390x-sqrt-bswap` | `sqdbr` for square root and `lrvgr` for byte swap on s390x, where both were going out to C. ocaml/ocaml#15002. |
