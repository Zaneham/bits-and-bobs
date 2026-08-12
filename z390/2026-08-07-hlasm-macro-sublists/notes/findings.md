# What real HLASM does with sublists and with mismatched comparands

Written for virtualagc issue #1331, where ASM101S mangles nested macro
sublists and then crashes comparing one against a number.

Two independent sources agree throughout. The manuals say what should happen,
and z390's `mz390` is a working HLASM-compatible macro processor that does it.
Where they disagree I have gone with the manual, and said so below.

## 1. Nested sublists keep their source text

A sublist parameter stringifies as exactly the characters that were written,
parentheses and all, however deep the nesting goes. Extra subscripts walk down
into it.

Calling `MULT 1,(10,(100,200,300),30),3`:

```
SYSLIST(1)     = >1<
SYSLIST(2)     = >(10,(100,200,300),30)<
SYSLIST(2,1)   = >10<
SYSLIST(2,2)   = >(100,200,300)<
SYSLIST(2,2,1) = >100<
SYSLIST(2,2,3) = >300<
SYSLIST(2,9)   = ><                        past the end
SYSLIST(9)     = ><                        past the end
SYSLIST(1,1)   = >1<                       operand 1 is not a sublist
```

`logs/RONMULT.PRN`, source `src/RONMULT.MLC`.

So the ASM101S output in the issue,

```
(10,((,(100,((,,200),(,,300))),)),30)
```

is a parser defect rather than an obscure corner of the macro language. The
answer it should give is the input text back.

The same run passes `&SYSLIST(2)` on to an inner macro, and the inner macro
sees the sublist intact, with `&SYSLIST(1,1)` giving `10`.

## 2. The manual's own worked example, run

Table 49 of the HLASM Language Reference tabulates `&P` and `&SYSLIST` for a
macro called with `(A,(B,(C)),D)`. `src/RONT49.MLC` is that table as a program.
Every value matches, `logs/RONT49.PRN`:

| reference | value |
|---|---|
| `&P` | `(A,(B,(C)),D)` |
| `&P(1)` | `A` |
| `&P(2)` | `(B,(C))` |
| `&P(2,1)` | `B` |
| `&P(2,2)` | `(C)` |
| `&P(2,2,1)` | `C` |
| `&P(2,2,2)` | null |
| `N'&P` | 3 |
| `N'&P(2)` | 2 |
| `N'&P(2,2)` | 1 |
| `N'&P(3)` | 1 |

`&SYSLIST(1,2,2,1)` reaches `C` the same way.

## 3. This is era-appropriate, which is why the 1967 manual is silent

Multilevel sublists are an Assembler **H** extension. They are absent from
Assembler F, which is what the December 1967 manual in the issue describes, so
looking there was always going to come up empty.

The Assembler H General Information Manual, GC26-3758-3, January 1974, p.13,
carries a section headed "Multilevel sublists in macro instruction operands"
and works through `(A,(B,(C)),D)`, giving the identical table that later became
Table 49. Same example, same answers, thirty-four years apart.

So the feature is neither an AP-101S invention nor a modern retrofit. It was
documented IBM behaviour while the AP-101 was being built. The one difference
across the years is the size cap on an operand, 255 characters in Assembler H
and 1024 in HLASM.

## 4. Counting, including the awkward cases

From `logs/RONCNT.PRN`. Counts have to be taken in an arithmetic context, so
the test assigns them with SETA. An `N'` inside a quoted string is not
substituted, which cost me a run.

| call | `N'&SYSLIST(2)` | note |
|---|---|---|
| `1,(10,(100,200,300),30),3` | 3 | inner sublist counts as one entry |
| `1,(A,,C),3` | 3 | an omitted entry still counts |
| `1,(A,B,),3` | 3 | trailing omitted entry counts |
| `1,(),3` | 1 | `()` is one entry, the null string |
| `1,PLAIN,3` | 1 | not a sublist, so 1 |

`N'&SYSLIST(2,2)` on the first of those is 3.

## 5. The comparison that crashes

There is no type puzzle here. The rule is one sentence, and it is the same
sentence in both eras.

Assembler H General Information Manual, GC26-3758-3, p.19:

> You can use a SETC variable as an arithmetic term if its character string
> value represents a valid self-defining term. A null value is treated as zero.

HLASM Language Reference, SC26-4940-05, p.356:

> The assembler permits a SETC variable to be used as a term in an arithmetic
> expression if the character string value of the variable is a self-defining
> term. [...] A null string is treated as zero.

Table 58 on p.347 extends the same requirement to the things that actually
turn up in `AIF`. Against "Symbolic parameters" it gives the restriction
"Value must be a self-defining term", and against `&SYSLIST(n)` and
`&SYSLIST(n,m)`, "Corresponding operand or sublist entry must be a
self-defining term".

That gives three cases and no ambiguity:

- null, which is zero
- a valid self-defining term, decimal or `X'..'` or `B'..'` or `C'..'`, which is its value
- anything else, including a whole sublist, which is a program error the assembler should diagnose

Nothing in either manual asks for a sublist to be coerced into a number, or for
a string to be compared against one. The right behaviour on the third case is a
diagnostic against the offending line, not a coercion and not a traceback.

Applied to the `FPMSWTCH.asm` failure in the issue, `&SYSLIST(1)` at the point
of the `AIF` is the null string, so `&SYSLIST(1) LE 0` is simply true and the
macro branches to `.INVALCC`. The mismatched-type question only arose because
the sublist had landed in slot 1 instead of slot 2. Fix the parser and the
comparison stops being interesting.

## 6. Collation, which confirms the EBCDIC change

Character relations collate in EBCDIC, and a shorter value is the smaller one.
`logs/RONCMP.PRN`:

```
>A< LT >1<        letters below digits, true only in EBCDIC
>a< LT >A<        lower below upper, again EBCDIC only
>AB< LT >ABC<     shorter is less
```

The first two both invert under ASCII, so they pin the collation down rather
than merely being consistent with it.

## 7. Two places not to copy z390

`mz390` is a good reference but it is not the manual, and it is looser in two
spots that bear directly on this issue.

**It never diagnoses a bad arithmetic term.** Handed a whole sublist, a
non-numeric string, or a null, it evaluates all three as zero and finishes at
RC=0 with no message. `logs/RONCMP.PRN` shows `ARITH (CH,R4,GE,TPCTPRI)`,
`ARITH ABC` and `ARITH ,` all taking the `LE 0` branch in silence. Only the
null case is documented. The other two should be errors, per section 5.

**It disagrees on `()`.** For an operand of `()`, `mz390` gives `&SYSLIST(n,1)`
as `()`. Table 48 on p.303 says a subscripted reference into `()` yields the
null character string. I would follow the manual.

Neither affects the sublist results above, which the manual corroborates
line for line.
