# ISA references

Citations only. The documents themselves are not redistributable, these are
pointers so a claim in the PR can be checked against the primary source.

## RISC-V

*The RISC-V Instruction Set Manual, Volume I: Unprivileged Architecture*, 2024.

- **14.3, Eventual Success of Store-Conditional Instructions.** Defines the
  constrained LR/SC loop. At most 16 instructions placed sequentially. Between
  the LR and the SC, only base-I instructions, and specifically no loads, no
  stores, no backward jumps, no taken backward branches, no `JALR`, no `FENCE`,
  no `SYSTEM`. The retry code may branch backwards. The SC must target the same
  address and width as the LR.
- Same section, worked compare-and-swap example: `lr` / `bne` / `sc` / `bnez`,
  which is the shape used here.
- Ordering bits: software should not set `rl` on an LR unless `aq` is also set,
  nor `aq` on an SC unless `rl` is also set. Hence `lr.d.aqrl` with `sc.d.rl`.
- `amoswap.d` covers exchange in one instruction. `.aqrl` orders both
  directions, so no separate fence.

## ARM

*ARM Architecture Reference Manual, ARMv8, for ARMv8-A architecture profile.*

- **B2.10, Synchronization and semaphores.** Load-Exclusive marks a block,
  Store-Exclusive to any address in that block clears the mark and returns a
  status bit.
- **B2.10.5, Load-Exclusive and Store-Exclusive instruction usage
  restrictions.** The pair must match in address, transaction size and number
  of registers, otherwise behaviour is constrained unpredictable. Notably:
  "It is not necessary for every LoadExcl instruction to have a subsequent
  StoreExcl instruction", so abandoning the sequence on a failed compare is
  architecturally fine. `CLREX` on that path is conventional rather than
  required, and it does not disturb the condition flags, which is why the
  compare's flags survive to the `cset`.

## PowerPC

*PowerPC Microprocessor Family: The Programming Environments Manual.*

- **D.3, Compare and Swap.** The canonical primitive:
  `lwarx` / `cmpw` / `bne-` / `stwcx.` / `bne-`, with the failure path branching
  out without clearing the reservation. The 64-bit form substitutes `ldarx`,
  `cmpd` and `stdcx.`.
- **D.4.1.1.** An `isync` immediately after the loop acts as the import
  barrier.

*PowerPC Compiler Writer's Guide* is the companion for scheduling and
code-sequence idioms.

## z/Architecture

*z/Architecture Principles of Operation*, SA22-7832.

- **COMPARE AND SWAP, page 7-159.** `CSG R1,R3,D2(B2)` compares R1 with the
  doubleword second operand. Equal: the third operand is stored, condition
  code 0. Unequal: the second operand is loaded into R1, storage unchanged,
  condition code 1. Codes 2 and 3 are never set. The second operand must be
  doubleword aligned.
- Same page: "A serialization function is performed before the operand is
  fetched and again after the operation is completed." That is why no extra
  fence is emitted, and it is consistent with `LAAG` carrying none.
- Because CSG reloads R1 itself on failure, an exchange loop needs no reload
  in the body.

The Reference Summary, SA22-7871, is the quick lookup for encodings.

## x86-64

Intel and AMD manuals for `cmpxchg`, `xchg` and `setcc`. `xchg` with a memory
operand asserts the lock implicitly, which is why the single-domain fast path
here spells the swap out as a load and a store rather than using an unlocked
form. There is no unlocked `xchg` against memory.

## OCaml memory model

Not an ISA document, but the reason the fences exist at all.
ocaml/ocaml#10995 and #10972, and the review discussion on #14575. The short
version is that OCaml requires non-atomic stores not to be reordered before an
atomic operation, which the standard C11 mappings do not guarantee on their
own.
