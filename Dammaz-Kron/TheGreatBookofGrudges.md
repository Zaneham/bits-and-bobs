Hello and welcome. 

Every so often I get a project Idea and it turns out horribly wrong. That or I encounter a bug or an issue so preposterous it consumes so much of my time I feel like I am going insane. As I work across a multitude of different projects rather than keep it all in my head (bad idea) I needed a place to put them.

This is that place.

It's named after a book in Warhammer Fantasy where the dwarves write down all the wrongdoings against the Dawi. A record is never deleted, the record is struck out when the grudge has been settled. However, unlike this books namesake which is kept by the High King in Karaz-a-Karak this is kept on my PC in central Auckland and whatever server Github chucked it on. 

---

## How this is kept

A grudge is entered against whoever earned it. Numbers are never reused and
nothing is ever deleted, because half the value is being able to look back at
what I was certain about and see how that went.

When one is settled it gets struck through and moved down with a note on how,
since the settling is the interesting part. There is a middle state as well,
because a fix I have offered and nobody has accepted is not a fix, it is a
letter I have sent. Those wait under **Remedy offered** until someone with
commit access decides otherwise.

There is no ranking by severity. An afternoon lost to a build system and a
compiler that quietly miscompiles are both entered, and neither gets an
apology.

Some of these are against me. Those count double.

---

## Outstanding

### 1. OCaml fences every plain store on POWER and ARM
**Against** the OCaml runtime and backend.
**The offence** Write to a mutable field on POWER and you get an `lwsync` in
front of it. Not sometimes. Every time (gah!). Twenty-five of them in one small test
file I only wrote to check something else. It is there to uphold the
publication guarantee in the memory model, which is a fine thing to guarantee,
except the bill is paid by every piece of mutable state in the program whether
or not another domain has ever so much as glanced at it.
**Settled when** blocks that provably never escaped skip both the fence and the
write barrier, with a litmus harness standing there proving the model still
holds.

### 2. The OCaml linearizer never learned to guess
**Against** `asmcomp/linearize.ml`.
**The offence** Line 204 reads `(* Should attempt branch prediction here *)`
and then simply stops. Somebody knew, wrote it down, and moved on. Exception
handlers get laid out wherever the CFG happens to leave them, so the cold path
sits on the fall-through like it pays rent.
**Settled when** a post-linearization pass sinks the `Lraise`-terminated blocks
to the tail. I tried this once already and produced a change that moved the
entire stdlib by nineteen bytes, which is the sort of result that teaches you
something and helps nobody.

### 3. RISC-V scheduling is switched off and nobody remembers why
**Against** `asmcomp/riscv/scheduling.ml`.
**The offence** The whole file is a comment saying `(* Scheduling is turned
off. *)` and a function that hands you back what you gave it. POWER is the only
architecture in the tree that bothers, and RISC-V parts are frequently
in-order, which is exactly where scheduling stops being decoration.
**Settled when** RISC-V has a latency model with POWER's as the template, and
it can be shown not to reorder across atomics. s390x has its scheduling off for
breaking precisely that, and the comment saying so is the only warning anyone
left.

### 4. Float.fma and Float.round still call into C
**Against** the amd64 backend.
**The offence** `stdlib/float.ml` declares `fma`, `round` and `trunc` as
externals and off they go. Meanwhile `amd64/emit.mlp` contains zero occurrences
of `roundsd`, an instruction that has done all four rounding modes in one go
since SSE4.1, and zero of `vfmadd`.
**Settled when** they emit the instruction, or when somebody tells me plainly
that `ocaml_intrinsics` covering it out of tree is the answer everyone wants,
at which point this becomes a grudge about where the answer lives.

### 5. RISC-V recognises none of the idioms the other backends do
**Against** `asmcomp/riscv/selection.ml`.
**The offence** Not one `Cextcall` case. Not a single one. `sqrt` goes all the
way out to libm on a machine where `fsqrt.d` has been sitting in the base D
extension since RV64GC existed, requiring no feature gate and no permission
from anybody. arm64 has carried the equivalent for years and nobody thought to
mention it.
**Settled when** `fsqrt.d` and `sext.w` are emitted, both being free, and the
B-extension gate exists so the rest can follow.

### 11. OCaml's RISC-V assembly only works if nobody compresses it
**Against** `asmcomp/riscv`, the third grudge in this book against the same
corner of the tree and by a distance the worst behaved of them.
**The offence** The compiler emits the same assembly on Linux as it does on a
freestanding cross build. Byte for byte identical. I diffed it. The only thing
that differs in the entire file is the module name sitting in the frametable.

What differs is who assembles it. `Config.asm` is bare `as` on Linux and gets
no compression and no relaxation. ocaml-solo5 sets it to a gcc wrapper, which
cheerfully staples `-march=rv64imafdc` onto compiler-generated assembly that
never asked for it, because as far as it is concerned it is compiling C.

So it builds. It links. It boots. It allocates, it collects garbage, it runs an
effect handler and resumes the continuation, freestanding, on RISC-V, first
time of asking. And then it cannot print a number (GAH). `Printf.sprintf
"plain"`, no conversion in it, nothing whatsoever to format, hands back binary
garbage. `%d` segfaults loading field six of a closure environment.

An afternoon in a disassembler for this. On the way I convicted gp-relative
relaxation, then frametable label differences, then host archive contamination,
and all three walked free. What it actually is: every function entry sitting at
2 mod 4, and 287 `R_RISCV_ALIGN` relocations where the Linux build has exactly
none. Drop the `c` and every last one of them works.
**Settled when** the backend tolerates compression of its own output, or it is
established that it cannot and the toolchain is made to stop asking. What galls
is that this has sat there for as long as riscv64 has been Tier 1, and digging
it out took a unikernel, because assembling OCaml through a C driver is a thing
precisely one project on earth does.

---

## Remedy offered

Sent. Not settled. There is a difference and I intend to feel it.

### 7. Atomic compare-and-set materialised a boolean five times over
**Against** the OCaml backend.
**The offence** Every single architecture already had the old value in hand,
because comparing is what the instruction does, and then spent further
instructions turning it into a boolean before throwing the value away. s390x
was the worst of it, building the answer with `lghi`/`brc`/`lghi` while `csg`
had already left the correct word sitting in the register on both paths.
**Remedy** ocaml/ocaml#14980. Compare-exchange becomes the primitive and
`compare_and_set` is derived from it in cmmgen. One Cmm operation rather than
two, and four of the five backends get shorter.

### 8. s390x recognises none of the idioms the other backends do
**Against** `asmcomp/s390x/selection.ml`.
**The offence** Same offence as grudge 5, different machine, and if anything
less excusable. `sqrt` and every byte-swap went out to C on hardware that has
had `sqdbr` and `lrvgr` in baseline since the z900, which is to say since 2000.
**Remedy** ocaml/ocaml#15002. Thirteen calls become thirteen instructions.
Built and run on real z15, testsuite clean at 1616 passed and 0 failed.

### 9. Yosys silently discards every proof obligation
**Against** `backends/smt2/smt2.cc` and `backends/btor/btor.cc`.
**The offence** Both walk the cells looking for `$assert`, `$assume` and
`$cover`, find none of them, and carry on. The frontend emits `$check`. There
is no else branch, so the assertion is never seen, never written, and never
mentioned. `write_smt2` produces an assertion function of literally `true` and
the solver reports PASS, which it does honestly, having been handed nothing to
disprove. A tool whose entire purpose is proving things told people their
design was correct because it had quietly dropped the question.
**Remedy** YosysHQ/yosys#6117. Error instead, with a regression test per
backend that fails without the fix.

---

## Settled

### ~~6. Cloudflare will not serve my own 404~~
Settled 2026-08-14, and the grudge was aimed at the wrong party for most of its
life.

The site is not Cloudflare Pages at all. A Cloudflare auto-configuration pull
request had quietly turned it into a Worker serving static assets, and Workers
default `not_found_handling` to `none`, which returns exactly the empty body I
was seeing. `_redirects` is a Pages feature, so it was never going to do
anything here, which is why the documented remedy did nothing and why adding it
upset the build.

One line in `wrangler.jsonc`, `"not_found_handling": "404-page"`, and a missing
path returns the abend dump. Live within forty seconds of the push.

The lesson worth keeping is that I spent an evening applying the correct fix to
the wrong platform, having never checked which platform it was.

### ~~10. FLOGR was written down as a free win. It is not.~~
Settled 2026-08-13 by opening SA22-7832 instead of trusting my memory of it.

`FLOGR` is count-leading-zeros exactly, no adjustment needed, and it is there at
the z10 baseline. All true. What I had not checked is that the manual requires
R1 to be an even-numbered register and to designate an even-odd pair, writing
the bit position to R1 and the residual to R1+1. That is a register allocation
constraint of the same family as amd64's division pairs, and it is not free at
all, it just looked free from a distance.

Entered against myself, because availability and cost are not the same thing
and I wrote them down as though they were. This is the reason the book exists.
