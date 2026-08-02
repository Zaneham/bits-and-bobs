# bits and bobs

Raw output from my projects. Assembly dumps, disassembly, build logs, benchmark
numbers, little test programs, and whatever notes went with them.

It exists so I can link to the actual thing. A PR comment can hold a summary
table, it can't hold objdump output for five architectures, and "trust me, I
measured it" isn't evidence. So the raw stuff lives here and I link to it from
wherever the conversation is happening.

It's not a portfolio. Things land here in whatever state they came out in.

## How it's laid out

```
<project>/<date>-<topic>/
    README.md     what it is, how I produced it, what's worth looking at
    src/          the programs I ran
    asm/          compiler output
    disasm/       objdump output
    logs/         raw run output, unedited
    notes/        recipes and references
    patches/      the exact tree the numbers came from
```

Dates are when I did the work, not when I tidied it up.

## Links stay put

I don't force push, rename or rewrite history here. If I've linked something
from a review, that link should still work in years, otherwise the repo hasn't
done its one job.

## One rule

Nothing in here reveals device names, usernames, hostnames, networks or IPs.

`tools/check-secrets.sh` enforces it. Once per clone:

```sh
ln -sf ../../tools/pre-commit .git/hooks/pre-commit
```

Anything else that should never show up goes in `.secretwords`, one per line.
That file is gitignored, because a list of things you mustn't publish is itself
a thing you mustn't publish.

Run it over everything whenever:

```sh
tools/check-secrets.sh
```

Raw output is exactly the sort of thing that quietly carries a hostname or a
home directory path, so I'd rather it was a check than something I have to
remember.

## Elsewhere

`general-llm-usage/` has my prompts and how I actually use models when I'm
working. My transparency page covers the same ground and points back here.
