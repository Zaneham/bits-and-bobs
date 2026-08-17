# Reproducing

Needs a riscv64 Linux box with opam and OCaml 5.5.

    opam install solo5 ocaml-solo5

Then build a unikernel that calls Printf with a conversion in it. src/s5.ml is
the smallest one that fails.

    solo5-elftool gen-manifest manifest.json manifest.c
    riscv64-solo5-ocaml-gcc -c manifest.c -o manifest.o
    riscv64-solo5-ocaml-gcc -I "$(ocamlfind -toolchain solo5 printconf stdlib)" \
        -c startup.c -o startup.o
    ocamlfind -toolchain solo5 ocamlopt -ccopt "-z solo5-abi=spt" \
        -o s5.spt s5.ml startup.o manifest.o
    solo5-spt s5.spt

startup.c and manifest.json are the ones from ocaml-solo5's example/ directory.

To see it without a unikernel at all, assemble any OCaml module containing a
switch with a -march that includes 'c' and look at the jump island.
