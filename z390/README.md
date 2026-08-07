# z390

I maintain [z390](https://github.com/z390development/z390), the open-source
System/390 assembler, macro processor and emulator. This is where my IBM
assembler work lives when it touches z390, and where ongoing z390 work will
keep landing.

Two kinds of thing end up here. Work on z390 itself (such as scripts, notes, or dumps), and work where z390 is the
reference implementation I check an answer against. The second case comes up quite a bit, because `mz390` implements the HLASM macro language properly, so a
question about what IBM's macro language actually does can be settled by
running it rather than by reading a manual twice and hoping.

When z390 is used as a reference rather than being the subject, the entry says
so, and it says where z390 and the IBM manuals disagree. They do sometimes, sadly.

| Entry | What it covers |
|---|---|
| `2026-08-07-hlasm-macro-sublists` | Nested macro sublists, `N'` counts, EBCDIC collation, and what an arithmetic term is allowed to be. z390 as reference, for virtualagc issue #1331. |
