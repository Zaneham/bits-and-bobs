# The scratch register bug the tests passed straight through

Found while chasing a benchmark regression, not by a failing test. Worth
writing down because every test I had was green at the point the bug existed,
on five architectures, and they were green by luck rather than by argument.

## What happened

The amd64 fast path for a lone domain wants to do the read-modify-write by
hand, because a locked instruction is wasted when nobody else can observe the
location. That needs a scratch register, which is requested in
`amd64/selection.ml` by adding a fresh register to the result array:

```ocaml
| Iatomic_cas ->
    let treg = Reg.create Int in
    ([| arg.(0); rax; arg.(2); arg.(3) |], [| rax; treg |])
```

`res.(1)` is then used in `emit.mlp` to hold the value loaded from memory.

Nothing told the register allocator that this scratch must not be the same
register as `arg.(0)`, the address. So it happily picked the address register:

```asm
	movq	caml_num_domains_running@GOTPCREL(%rip), %rdi
	movl	$85, %esi
	movl	$199, %eax
	cmpq	$1, (%rdi)
	jne	.L115
	movq	(%rbx), %rbx        <- scratch IS the address register
	cmpq	%rbx, %rax
	jne	.L116
	movq	%rsi, (%rbx)        <- stores through the loaded value
	jmp	.L116
.L115:
	lock cmpxchgq	%rsi, (%rbx)
.L116:
	sete	%al
```

The load destroys the address, and the store then treats the value that was
just loaded as if it were a pointer. Segfault.

## Why the tests did not catch it

The exchange path had exactly the same defect, and had done since it was
written. It never crashed. Every one of these passed while the bug was live:

- amd64 functional test and a four domain stress test
- arm64, riscv, power and s390x under qemu, functional and stress
- the full 1615 test upstream testsuite on amd64

They passed because the allocator happened to choose a different register for
the scratch in those particular functions. Register pressure decides whether
this bites, so it would have surfaced later, in somebody else's code, as an
unreproducible crash.

The only reason it was found at all is that the first attempt at the cas fast
path was *slower* than the C call it replaced, and reading the generated
assembly to find out why is what put the broken `movq (%rbx), %rbx` on screen.

## The fix

State the constraint properly in `interf.ml`: every result register, scratch
included, interferes with every argument.

```ocaml
| Iop(Iatomic_exchange | Iatomic_cas) ->
    Array.iter
      (fun r -> Array.iter (fun a -> add_interf r a) i.arg)
      i.res;
    add_interf_set i.res i.live;
    add_interf_self i.res;
    interf i.next
```

Deliberate ties survive this. Where a backend wants a result in the same
register as an argument, they are already the same register by the time
`interf` runs, and `add_interf` ignores a pair with equal stamps.

Afterwards the scratch lands somewhere else and the address survives:

```asm
	cmpq	$1, (%rdi)
	jne	.L115
	movq	(%rbx), %rdx        <- distinct
	cmpq	%rdx, %rax
	jne	.L116
	movq	%rsi, (%rbx)
	jmp	.L116
.L115:
	lock cmpxchgq	%rsi, (%rbx)
```

## The lesson

A passing test says the allocator made a convenient choice this time. It does
not say the constraint was expressed. For anything that asks for a scratch
register, the interference has to be written down and then confirmed in the
generated code, because the failure mode is silent and load bearing on
register pressure elsewhere.
