# Native `Atomic.exchange` and `Atomic.compare_and_set`, all five backends

Follow-up to ocaml/ocaml#14575, which got `Atomic.fetch_and_add` emitting a real
instruction instead of calling into C. `exchange` and `compare_and_set` were
still going through `caml_atomic_exchange_field` and `caml_atomic_cas_field`.

They're C calls because of the write barrier. When the stored value is
statically known to be immediate the barrier does nothing, so the instruction is
the whole job. That's the gate. Immediate goes native, maybe-pointer keeps the
C call and keeps the barrier.

*NOTE:* Much of this is a mix of my own writings and also output from raw voice to text fed into my local Ollama (Qwen coder) model and organised. If you have any questions about any part of this documentation please feel free to reach out. My general prompt usage will also be detailed in this repository. 

## What's worth looking at

| Question | File |
|---|---|
| What does each backend emit? | `asm/<arch>-cas_test.s` |
| Is the encoding what I think it is? | `disasm/<arch>-cas_test.objdump.txt` |
| Does it work? | `logs/qemu-and-native-runs.txt` |
| Does it fire where it matters? | `logs/reach-dlambda.txt` |
| Does TSan still get its instrumentation? | `logs/tsan-guard.txt` |
| Exact tree these came from | `patches/` |

## The sequences

| arch | exchange | compare_and_set |
|---|---|---|
| amd64 | domain fast path, else `xchg` | fast path, else `lock cmpxchg`, then `sete` |
| arm64 | `ldaxr`/`stlxr` loop + `dmb ishst` | + `cmp`/`b.ne`/`clrex`/`cset` |
| riscv | `amoswap.d.aqrl` | `lr.d.aqrl` / `sc.d.rl` loop |
| power | `sync`, `ldarx`/`stdcx.` loop, `isync`, `lwsync` | + `cmpd`/`bne-` |
| s390x | `lg` then `csg`/`brc 4` loop | `lgr`/`csg`/`lghi`/`brc 8` |

The trailing fences aren't decoration. OCaml's memory model is stronger than
C11, in that non-atomic stores mustn't be reordered before an atomic operation,
and the plain C11 mappings don't give you that. See ocaml/ocaml#10995 and
#10972. The per-arch conventions here are the ones #14575 settled on for
`fetch_and_add`.

riscv carries no extra fence because `.aqrl` already orders both directions.
s390x carries none because the Principles of Operation (SA22-7832, page 7-159)
says `CSG` performs a serialisation function before the operand is fetched and
again after the operation completes.

## The finding that shaped it

`logs/reach-dlambda.txt` is the interesting one. The type-based gate on its own
did almost nothing, because `Atomic.exchange` and `Atomic.compare_and_set` were
plain `val`s in `atomic.mli`. So the primitive had already been lowered to a C
call inside `atomic.ml`, where the element type is still abstract, and the call
site only ever saw a closure application.

Making them `external` puts the primitive at the call site, where the type is
usually concrete. `atomic.mli` already argues for this in a comment above
`module Loc`, which exposes its operations as externals for the same reason.

After that, in `logs/reach-dlambda.txt`:

- `int Atomic.t` and `bool Atomic.t` go native
- `string Atomic.t` keeps `caml_atomic_cas_field`, barrier intact
- genuinely polymorphic and locally abstract types keep the C call

That last line is the safety property. If an abstract type specialised, the
barrier would get skipped for something that might be a pointer.

## How I produced this

Built on x86-64. The other four backends I cross-compiled and ran under
qemu-user, recipe in `notes/cross-build-recipe.md`.

qemu-user serialises, so those runs show the encodings assemble and the logic is
right. They don't show the fences are right. That rests on the ISA documents
cited in `notes/isa-references.md` and on matching conventions already reviewed
and merged in #14575.

`cas_test.ml` covers cas success and failure, negative and zero values, cas
where expected equals new, bool payloads, and using the result as a branch
condition so the tagging gets exercised. `cas_par.ml` runs four domains doing
400k cas retries and checks every exchange tag is seen exactly once, which
catches a lost update. `atomic_par.ml` does the same through the public API with
pointer payloads and GC pressure, so the barrier path stays live.

`bench_cas.ml` mirrors the benchmark from #14575: single domain, two domains
contended on one variable, two domains uncontended via `Atomic.make_contended`.
Numbers to follow.
