# General LLM usage

How I actually use LLMs when I'm working, and the prompts that go with it.

This is the thing the notes elsewhere in the repo point at when they say the
writing is a mix of mine and something a model helped organise. Rather than
sticking a disclaimer on every file, the detail lives here and the files link
back.

## Prompts

- 2026-08-08, Trying to figure out SV errors.
  [shared conversation](https://chatgpt.com/share/6a76d8f8-53e4-83ec-a83a-ff6321b0e11a)

- 2026-08-07, Espresso in modern chip design.
  [shared conversation](https://chatgpt.com/share/6a756a67-9a04-83ec-975c-37430f82efa7)

- 2026-08-02, TAL to C transpiler.
  [shared conversation](https://chatgpt.com/s/t_6a6f01fed4fc8191b6317043d547ac24)

## If you're reading this off the back of a PR

The short version is that I write the code and I read the docs. Models help me
organise notes, draft prose, and check I haven't misread a spec. Where output
is model-assisted I say so on the file rather than leaving you to guess. If
something in my writing looks like it was asserted rather than checked, ask me,
because that distinction matters more to me than looking clever.

## A warning to myself

Prompts and transcripts are the worst offenders in this whole repo for leaking
things. They pick up terminal output, absolute paths, machine names, usernames,
whatever was on screen at the time. `tools/check-secrets.sh` covers this folder
like everywhere else, but the gate only catches shapes it knows about, so
anything pasted in here gets read properly first.
