# A kernel written in OCaml, running on an RTX 4060 Ti

OCaml has no first-class GPU story. The usual answer is `ctypes` around CUDA,
which means writing the kernel in C anyway.

This is the other end of a first attempt. An OCaml program emits Booth IR as
text, `kath` compiles it, and the result runs on the GPU.

## The chain

```
vadd.ml                      OCaml 5.5.0, no C stubs, nothing linked
  -> vadd.bir                byte-identical to what the CUDA frontend emits
  -> kath --bir-in --nvidia-ptx
  -> vadd.ptx                987 bytes, .entry vadd, .target sm_89
  -> driver JIT
  -> RTX 4060 Ti
```

```
nv_rt: NVIDIA GeForce RTX 4060 Ti (sm_89)
all 4096 elements correct, c[0]=1000 c[4095]=1000
OK: an OCaml kernel ran on the GPU.
```

`c[i] = i + (1000-i)`, so every element is 1000. Uniform on purpose: if the
indexing were wrong it would still be uniform, so the CPU run in `logs/` uses
`a[i] + 100*a[i]` where a wrong index shows up immediately.

No CUDA SDK. `nvcc` and `ptxas` are not installed; the driver JITs the PTX.

## Same BIR, six backends

```
--cpu           999 bytes      --nvidia-ptx   1036 bytes
--rv64          858 bytes      --metal        1018 bytes
--amdgpu       1300 bytes      --tensix       3070 bytes
```

Intel is a declared stub and says so.

## What this is not

OCaml is a metaprogram here. It runs on the host and emits IR; nothing OCaml
executes on the device. The next step is a typedtree checker, so an ordinary
OCaml function *is* the kernel rather than a program that constructs one.

It will never be OCaml semantics on a GPU. No GC, no closures at runtime, no
exceptions, no polymorphism. CUDA C isn't C either.

## Two bugs found on the way

`kath --bkhit` selected no backend and exited 0 having compiled nothing. Every
backend declares variant flags alongside its on-switch, and passing only a
variant left `be_run` with nothing selected, which it treated as success. It
already errored on *two* backends selected. Now it errors on none.

The value numbering in BIR text counts instructions, not values, so `store`,
`br` and `ret` each burn a number and print nothing. An emitter that numbers
only what it defines produces valid BIR that disagrees with the frontend's.
Grudge 13.
