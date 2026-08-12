# bits and bobs

Kia ora! Hello! G'day! 

Welcome to my bits and bobs repository. Bits and bobs is British slang for "many little things too numerous to list". 
It was very common to hear my mum say it whenever she went out shopping and now it's something you may read whenever something terribly important regarding compilers pops up. 
Funny how that works ey? 

This contains raw output from my projects. Assembly dumps, disassembly, build logs, benchmark
numbers, little test programs, and whatever notes went with them.

It exists so I can link to the actual thing. A PR comment can hold a summary
table, it can't hold objdump output for five architectures, and "trust me, I
measured it" isn't evidence. So the raw stuff lives here and I link to it from
wherever the conversation is happening.

It's not a portfolio. Things land here in whatever state they came out in.

If you've come here from a link in a pull request, each entry lives under
`<project>/<date>-<topic>/` and has its own README saying what it is and what's
worth looking at. The full layout, and the one rule about nothing revealing
hosts, users, networks or IPs, are below.

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

## On that note - LLM Usage

This repository will feature heavy LLM usage. It shows generated tests and some generated documentation. Where documentation is wholly synthetic and has had no revisions or edits by me, nor was a voice to text and then organised, it will be marked as synthetic with what model was used to generate it.

- Qwen coder
- Chatgpt
- Claude code
- Deepseek 

All feature here. I'm currently exploring some frontier models (woohoo! Full time job means I can afford a subscription no more povo student). 

## Thanks! 

Thanks for reading, if you have any questions about anything in this repository or if you just want to "spin a few yarns" then feel free to get in touch.
