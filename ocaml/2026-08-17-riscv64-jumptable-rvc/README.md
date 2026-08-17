# RISC-V jump tables assume nobody compresses them

`asmcomp/riscv/emit.mlp` lowers a switch to a jump island and indexes it by
four. Enable the C extension and the assembler shrinks the entries to two bytes,
the index arithmetic lands mid-entry, and you jump to the wrong handler.
Silently.

*NOTE:* Just me this time and Qwen sanitising the logs a wee bit. 

## What's worth looking at

| Question | File |
|---|---|
| Shortest way to see it | `src/switch.ml`, `logs/native-linux-repro.txt` |
| The islands, broken and fixed | `disasm/` |
| The four lines that do it | `notes/emit-lswitch.txt` |
| Four builds, one variable at a time | `logs/test-matrix.txt` |
| The fix | `patches/` |

## The offence

```
uncompressed        compressed
  34:  j 44           2c:  j 34
  38:  j 80           2e:  j 66
  3c:  j bc           30:  j 94
  40:  j f8           32:  j c6
       stride 4            stride 2
```

Same function, same label, and `slli t0, idx, 2` either way. On the right index
0 is correct by luck and index 2 lands on a case body rather than a jump.

Nothing in the emitted assembly says those entries must be full width. The
constraint sits three lines above in the shift, unstated, which is the actual
defect.

## How bad

Stock OCaml 5.5.0 cannot build itself on riscv64 if the assembler compresses.
`ocamlc.opt` links, then segfaults compiling dynlink. No unikernel required
either, `src/switch.ml` is 25 lines and takes SIGILL on plain Linux.

It has survived because `Config.asm` is bare `as`, which defaults to no
compression here. ocaml-solo5 sets it to a gcc wrapper, which is how it turned
up.

## The fix

`.option push` / `norvc` / `norelax` around the island, seven lines. Compression
stays on everywhere else, 9858 compressed instructions still in the module.

Open: whether `norelax` is load-bearing or `norvc` alone holds, and a testsuite
run.
