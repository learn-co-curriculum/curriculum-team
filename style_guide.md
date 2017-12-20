# Style Guide

## Introduction

To ensure that we all write with a common voice, we have adopted the following
style decisions.

## Text

Text should be hard wrapped near 80 column width. This ensures that the code is
redable in the terminal with `cat` or other pagers. **DO NOT** retroactively
open a number of files and apply some sort of scripting to change this. If
you're in a file doing work, make the change.

## Links

Prefer footnote-style linke definition to inline. Given our width constraint
guidelines, footnote-style helps keep the document readable. Further, as URLs
need to change, the grep-ability / maintainability is increased by using
footnote style. Prefer:

```

[Byron][] the poodle is a great dog.
[Karbit's Byron by the Bay][Byron] was born in Reno, NV but now dwells in Manhattan.

[Byron]: https://laurennicoleroth.smugmug.com/Byron/i-KgvCcgX/A

```

Not:

```
[Byron](https://laurennicoleroth.smugmug.com/Byron/i-KgvCcgX/A) loves to play in Marin County!
```

Obviously, in unordered lists of links this is unhelpful and therefore can be
ignored.

## Style Decisions

### Tone

Tone should be conversational. It is appropriate to "break the fourth wall" and
speak to the reader using "you."

### Personhood

Curriculum should be writen in first-person plural.

### Non-Gendered Speech

We do not use "he" or "she" or "ze" or "wir" or "hir."

We use "they" as a third-person singular honoring the descriptivist tendencies
of pre-18<sup>th</sup> century usage.
