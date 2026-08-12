# Why one Cmm operation and not two

On ocaml/ocaml#14980, gasche asked whether the native cas work could also
support `compare_and_exchange` from #14912, ideally without duplicating
anything. This is the answer, written down because the reasoning is the whole
design.

## The observation

Every backend was already computing the value it needed and then throwing it
away. Compare-and-swap on all five architectures loads the old value as part
of doing its job, because it has to compare against something. The old code
then spent instructions turning that into a boolean and discarded the value.

So compare-and-exchange is not extra work on top of compare-and-set. It is
compare-and-set with the last step removed.

## What that means per backend

s390x is the clearest case. `csg` loads the storage value into its first
operand when the comparison fails, and when it succeeds that operand still
holds the expected value, which is the same word. So the register already
holds the right answer on both paths, and the `lghi` / `brc` / `lghi` tail
that built the boolean is pure deletion.

arm64 is the same story, `res.(0)` holds the loaded value all the way to the
final `cset`, so the `cset` goes and nothing else moves.

power gets shorter twice over. The old sequence put the loaded value in r0 and
then materialised the boolean with `li` / `b` / `li`. Since the loaded value is
now the result, `ldarx` reads straight into the result register, r0 is not
needed, and the three boolean instructions go. Eleven instructions to eight.

riscv is the only one that needs anything added. `lr.d` puts the old value in
the result register, but `sc.d` then overwrites that same register with the
store status, which the old code relied on. The value now has to survive, so
the status moves to t1. That is safe without touching proc.ml because t1 sits
above `num_available_registers`, so the allocator never keeps a live value
there, which is the same assumption `emit_load` and `addimm` already make all
through that file.

amd64 is the one place the trade is not free. `cmpxchg` overwrites rax with
whatever it found, which is exactly the result, so the locked path needs
nothing after it. But the single-domain fast path does the compare by hand and
rax is still holding the expected value at that point, so that path has to copy
the loaded value into rax itself. One extra `mov` on one path.

## Deriving the boolean

`compare_and_set` becomes the returned value tested against the expected one,
as a `Ccmpi Ceq` in cmmgen. That is legitimate because the native path only
fires when the value is statically immediate, so the words compare directly.
The expected value gets a `bind` since it is now used twice.

The payoff is that the comparison is an ordinary Cmm comparison, so when the
boolean feeds a branch, which is what nearly all real code does, it folds into
the branch. The old code materialised a tagged boolean with `sete` and `movzbq`
and then immediately tested it. On riscv that shape went from nine instructions
to seven. See `logs/codegen-before-after.txt`.

## What is deliberately not here

There is no `compare_and_exchange` in the stdlib in this change, and no lambda
primitive for it either. `Patomic_cas` stays exactly as it was.

That is on purpose. The surface syntax for #14912 is still under discussion,
and none of that bears on the native side, which cares about the operation and
not what the arguments are called. Doing the unification at the Cmm layer keeps
the two independent. Whatever signature #14912 arrives at, its `external` binds
to a primitive that is already native, and adding the lambda primitive then is
small.
