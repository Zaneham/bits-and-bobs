# One Cmm operation for atomic compare-exchange, all five backends

Follow-up to ocaml/ocaml#14980, which gets `Atomic.exchange` and
`Atomic.compare_and_set` emitting real instructions instead of calling into C
when the stored value is statically immediate.

On that PR gasche asked whether the work could also cover
`Atomic.compare_and_exchange` from #14912, ideally without duplicating
anything. It can, and it turns out to be a deletion rather than an addition.

Every backend already loads the old value, because compare-and-swap has to
compare against something. The old code then spent instructions turning that
into a boolean and threw the value away. So the instruction returns what it
found, and `compare_and_set` becomes that value tested against the expected
one, as a `Ccmpi Ceq` in cmmgen. One Cmm operation instead of two.

*NOTE:* this document is thrown together with Claude Code and heavily edited by
me. Claude also assisted with organising all the output and tests I made into
this section. Questions welcome.

## What's worth looking at

| Question | File |
|---|---|
| What does each backend emit now? | `asm/<arch>-stress_cae.s` |
| What changed, before and after? | `logs/codegen-before-after.txt` |
| Is the encoding what I think it is? | `disasm/<arch>-stress_cae.objdump.txt` |
| Does it work? | `logs/qemu-and-native-runs.txt` |
| Does it work on real weakly ordered hardware? | `logs/real-hardware-runs.txt` |
| Is the testsuite clean? | `logs/testsuite-amd64.txt` |
| Did compare_and_set get slower? | `logs/benchmarks-amd64.txt` |
| Why one operation and not two | `notes/one-cmm-op.md` |
| Exact tree these came from | `patches/` |

## What changed per backend

| arch | before | after |
|---|---|---|
| s390x | `lgr`, `csg`, `lghi`, `brc 8`, `lghi` | `lgr`, `csg`. The rest is deletion |
| arm64 | ldaxr/stlxr loop, then `cset` | same loop, no `cset`. 9 instructions to 8 |
| power | `ldarx` into r0, then `li`/`b`/`li` | `ldarx` into the result, no boolean tail. 11 to 8 |
| riscv | `sc.d` status overwrites the result | status moves to t1, result survives. 9 to 7 in the branch shape |
| amd64 | `lock cmpxchg`, then `sete`/`movzbq` | `lock cmpxchg` alone, plus one `mov` on the single-domain path |

s390x is the neatest. `csg` loads the storage value into its first operand on
failure, and on success that operand still holds the expected value, which is
the same word, so the register is already correct on both paths.

amd64 is the only one that pays anything. `cmpxchg` leaves what it found in
rax, so the locked path needs nothing after it, but the single-domain fast path
compares by hand while rax still holds the expected value, so it copies the
loaded value into rax itself.

riscv is the only one needing a register it did not need before, since `sc.d`
overwrites the result register with the store status. It goes to t1, which is
above `num_available_registers` and so never holds a live value, the same
assumption `emit_load` and `addimm` already make in that file.

## The point of it

`compare_and_set` used to build a tagged boolean and then, in the common case,
immediately test it. Now the comparison is an ordinary Cmm comparison, so when
the boolean feeds a branch it folds into the branch instead. `logs/codegen-before-after.txt`
shows this most clearly on riscv, where the branch shape goes from nine
instructions to seven, losing the `li 1` / `j` / `li 0` / `beqz` round trip.

## Numbers

`logs/benchmarks-amd64.txt`, and there are three harnesses in there rather than
one because the first two disagreed.

| shape | baseline | branch |
|---|---|---|
| boolean consumed by a branch | 0.662 | 0.583 |
| boolean discarded | 0.444 to 0.476 | 0.438 to 0.455 |

ns/op, best of five, three interleaved rounds.

The branch shape is the one the change is aimed at and it is consistently about
12% faster. The discarded shape is flat.

`bench_cas.ml`, the harness from #14575, disagrees. It puts the baseline at
0.37 for the discarded shape against the 0.44 to 0.48 the same code measures in
the other two harnesses, while the branch sits at about 0.45 in all three. A
number that only appears in one of three harnesses, and only for the baseline,
is layout luck rather than a difference in the generated code. All three runs
are in the log.

## How I produced this

Built on x86-64. The other four backends cross-compiled and run under
qemu-user. qemu-user serialises, so those runs show the encodings assemble and
the logic holds, not that the fences are right.

For the fences, three of the four ran on real hardware, all cloned from the
fork branch with the patch applied on top and built from the same checkout:
Power10 with 192 cores, a SpacemiT X60 riscv64, and a z15. Power is the one
that matters most here, since `ldarx` now writes to a different register and
192 cores will actually steal the reservation. It passes 32 domains doing 100k
compare-and-set retries each with no lost updates, and the full upstream
testsuite there gives the same 1618 passed and 0 failed as amd64.

arm64 has no host in this set so it stays qemu only. Its change is the same
deletion as s390x, and the arm64 emitter self-checks instruction lengths at
assembly time, so a wrong size table entry fails the build rather than
miscompiling. That covers the size change, not the ordering.

`stress_cae.ml` covers cas hit and miss, cas where expected equals the new
value, negative and `min_int` and `max_int` payloads, bool payloads, a pointer
payload with a full major collection to keep the write barrier path honest, and
then four domains racing on one variable both for lost updates and for exchange
tag uniqueness.

## What is not in this change

No `compare_and_exchange` in the stdlib, and no lambda primitive for it.
`Patomic_cas` is untouched.

The interface for #14912 is still being discussed, and none of that discussion
touches the native side. Keeping the unification at the Cmm layer means the two
are independent. Whatever signature #14912 arrives at, its `external` binds to
a primitive that is already native, and adding the lambda primitive at that
point is small.
