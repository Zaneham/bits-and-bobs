# Building and running every OCaml backend on one x86-64 box

Adapted from `.github/workflows/build-cross.yml` in the OCaml tree. This makes
all five backends testable in an evening with no hardware.

## Toolchains

```sh
apt install gcc-aarch64-linux-gnu gcc-riscv64-linux-gnu \
            gcc-powerpc64le-linux-gnu gcc-s390x-linux-gnu qemu-user
```

## Per target

A native OCaml of the same version must be on `PATH` first, so build and
install the tree once normally.

```sh
cp -a <tree> ~/x-arm64
cd ~/x-arm64
git clean -xfd                      # essential, see below
./configure --prefix=$HOME/cross-arm64 --target=aarch64-linux-gnu
make crossopt -j8
```

Then compile straight out of the tree rather than installing:

```sh
./ocamlopt.opt -nostdlib -I ./stdlib -o prog prog.ml
qemu-aarch64 -L /usr/aarch64-linux-gnu ./prog
```

Targets used: `aarch64-linux-gnu`, `riscv64-linux-gnu`,
`powerpc64le-linux-gnu`, `s390x-linux-gnu`. Corresponding runners:
`qemu-aarch64`, `qemu-riscv64`, `qemu-ppc64le`, `qemu-s390x`, each with
`-L /usr/<triple>`.

## Two traps

`git clean -xfd` the copied tree before configuring. Skip it and stale
host artefacts leak in, and you get confusing failures from the target's
`emit.mlp` such as an unbound value that plainly does exist.

`make installcross` and the final link of the cross `ocamlopt.opt` can fail on
a stale `str.a` in the wrong format. Ignore it. The compiler binary is already
built and works, which is why the recipe above skips installing.

## What this does and does not prove

It proves the sequences assemble, that the encodings are what you meant, and
that the logic is right. Disassemble to confirm the encoding rather than
trusting the assembler's parse of your mnemonics, which is how the ambiguity
in PowerPC `cmpd` with an optional condition-register operand got confirmed
as the two-operand form.

It does not prove memory ordering. qemu-user serialises, so fences are
effectively no-ops. Ordering has to come from the ISA documents and from
matching conventions that have already been reviewed.

## Free correctness check on arm64 and power

Those emitters wrap each instruction in an assembler assertion:

```
.ifgt (. - .Lx) - N
.error "Emit.instr_size: instruction length mismatch"
.endif
```

So a wrong entry in the branch-relaxation size table is caught by the
assembler instead of silently miscompiling a far branch. Worth deliberately
setting a size wrong once to confirm the assertion is live for the case you
are adding.

## TSan

```sh
./configure --enable-tsan
```

On WSL2 the instrumented binaries fail to start with "unexpected memory
mapping". Fix with `sysctl -w vm.mmap_rnd_bits=28` before building.
