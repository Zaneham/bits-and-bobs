# What HLASM does with nested macro sublists, run rather than argued

virtualagc issue #1331 has ASM101S turning the macro operand
`(10,(100,200,300),30)` into `(10,((,(100,((,,200),(,,300))),)),30)`, and then
crashing in Python when the wreckage meets an `AIF` that wants a number. The
open questions in the issue are what the right answer actually is, how IBM
compared values of unlike types, and whether any of this is documented
anywhere near the period the AP-101S code was written.

z390 answers the first one directly. Its `mz390` implements the HLASM macro
language, so rather than read a manual twice I can just run the thing. I
maintain z390, so it is used here as a reference implementation and checked
against the IBM manuals throughout, including where the two disagree.

Run on OpenJDK 25. Exact versions are in the listing headers.

## What's worth looking at

| Question | File |
|---|---|
| All of it, with the manual citations | `notes/findings.md` |
| Which documents, which pages | `notes/references.md` |
| Does nesting survive, and how deep can you index? | `logs/RONMULT.PRN` |
| The manual's own Table 49 example, run | `logs/RONT49.PRN` |
| What `N'` counts, including omitted and empty entries | `logs/RONCNT.PRN` |
| EBCDIC collation, and arithmetic on things that aren't numbers | `logs/RONCMP.PRN` |
| The test in the issue, cut down to the macro language | `logs/RONSUB.PRN` |

## The short version

A sublist keeps its source text exactly, nesting and all, and extra subscripts
walk into it.

```
SYSLIST(2)     = >(10,(100,200,300),30)<
SYSLIST(2,1)   = >10<
SYSLIST(2,2)   = >(100,200,300)<
SYSLIST(2,2,1) = >100<
```

There is no type puzzle behind the crash. One sentence covers it, and it is the
same sentence in the 1974 Assembler H manual and the 2008 HLASM one. An
arithmetic term has to be a valid self-defining term, a null string counts as
zero, and anything else is a program error the assembler should diagnose. In
the failing `FPMSWTCH.asm` case the comparand is null, so the relation is just
true. The mismatch only showed up because the sublist had landed in the wrong
parameter slot.

The reason the December 1967 manual in the issue says nothing is that
multilevel sublists are an Assembler **H** extension. They are in the Assembler
H General Information Manual of January 1974, p.13, worked through with the
same `(A,(B,(C)),D)` example that later became Table 49. Contemporary with the
AP-101, and not an AP-101S invention.

Character relations collate in EBCDIC and treat the shorter value as the
lesser, which the listings confirm by way of `A LT 1` and `a LT A`. Both invert
under ASCII.

## Where z390 is not the manual

`mz390` accepts a whole sublist as an arithmetic term and quietly calls it
zero, with no diagnostic and RC=0. Only the null case is documented that way.
It also disagrees with Table 48 on subscripting into `()`. Section 7 of
`notes/findings.md` has both. Neither touches the sublist results, which the
manuals corroborate line for line.

## Running it

```sh
src/run.sh /path/to/z390     # needs z390.jar and mac/ under that directory
```

Listings land in `logs/`. All five programs assemble with no mz390 errors.
