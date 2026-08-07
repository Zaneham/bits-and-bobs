# Documents cited

Cited by number and page rather than reproduced, since these are IBM
publications and this repo does not carry extracted manual text. (I don't want to contend with Copyright law, lol.)

## IBM High Level Assembler for z/OS & z/VM & z/VSE, Language Reference

Release 6, SC26-4940-05, Sixth Edition, July 2008.

| page | what is there |
|---|---|
| 302 | Sublists in operands, and what counts as one |
| 303 | Table 48, subscripted parameters against sublist entries, including `()` |
| 304 | Multilevel sublists, nesting depth, 1024 character operand cap |
| 305 | Table 49, `&P` and `&SYSLIST` for a call of `(A,(B,(C)),D)` |
| 305 | Passing sublists to inner macro instructions |
| 347 | Table 58, variable symbols allowed as terms in arithmetic expressions |
| 356 | SETC variables in arithmetic expressions, null treated as zero |
| 363 | Character relations collate in EBCDIC, shorter value is the lesser |

These are printed page numbers, not PDF ones. The issue cites `asmr1010.pdf`,
which is the fifth edition of the same book, so its numbering differs from this
one either way.

## IBM OS Assembler H, General Information Manual

GC26-3758-3, January 1974.

| page | what is there |
|---|---|
| 13 | Multilevel sublists in macro instruction operands, listed as an extension over Assembler F, worked through with `(A,(B,(C)),D)` |
| 19 | Using SETC variables in arithmetic expressions, null treated as zero |

This is the document that closes the provenance gap in the issue. The features
in question are Assembler H extensions, so they are genuinely of the period,
and their absence from the December 1967 Assembler F manual is expected rather
than suspicious.

## Not a document, but used as a reference implementation

z390, version as recorded in the listing headers, running on OpenJDK 25.
Open source, <https://github.com/z390development/z390>. `mz390` is its macro
processor and implements the HLASM macro language. Section 7 of `findings.md`
lists the two places it is looser than the manual.
