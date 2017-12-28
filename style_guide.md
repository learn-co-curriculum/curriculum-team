# Style Guide

## Introduction

To ensure that we all write with a common voice, we have adopted the following
style decisions.

Contents:

* Formatting Markdown
  * [Text Wrap at 80 Column](#text_wrap_at_80_column)
  * [Headings Get an Additional Blank Line](#headings_get_an_additional_blank_line)
  * [Do Not Leave Hanging Whitespace at End-of-Line](#do_not_leave_hanging_whitespace_at_end-of-line)
  * [Footnote Style Markdown Links](#footnote_style_markdown_links)
* Style
  * [Tone](#tone)
  * [Personhood](#personhood)
  * [Non-Gendered Speech](#non-gendered_speech)
  * [Abbreviations](#abbreviations)
  * [Headings Should Be Capitalized According to AP Style](#headings_should_be_capitalized_according_to_ap_style)
* Engaging Writing
  * [Avoid Burying the Lede](#avoid_burying_the_lede)
  * [Avoid Value Judgements](#avoid_value_judgements)
  * [Prefer Active Voice](#prefer_active_voice)
  * [Write from the Student Perspective](#write_from_the_student_perspective)
  * [Avoid Rhetorical Questions to Drive Material](#avoid_rhetorical_questions_to_drive_material)

---

<a name="text_wrap_at_80_column"></a>

## Text Wrap at 80 Column

Text should be hard wrapped near 80 column width. This has a number of
benefits:

![Broken vertical comparison](./img/why_80col_width.png)

* On a split screen at resonable reasolution two documents can be compared
* When reviewed with a pager or `git add --patch` the line fits and can be
  easily viewed within the terminal
* [Further...][80col]

This ensures that the code is
redable in the terminal with `cat` or other pagers. **DO NOT** retroactively
open a number of files and apply some sort of scripting to change this.

If you open a file to do significant work, do a commit which does a wholesale
reformat and then get to work. The `diff` for this commit will (likely) touch
many of the files and, as a result, if it's integrated with an actual content
change, will make it difficult to see the content change in a sea of
reformatted lines.


<a name="headings_get_an_additional_blank_line"></a>

## Headings Get an Additional Blank Line

Markdown was designed to emualte rich text within console based editors and
pagers. As such a headline should "pop" by being surrounded by blank lines.

Do:

```
lorem ipsum sit dolor amet

## Example

Example is a very important word.
```

Do not:

```
lorem ipsum sit dolor amet

## Example
Example is a very important word.
```

Furthermore, many editors use newline to break when doing an automatic reformat
to 80-columns. Here's an example of how this looks when it goes wrong:

![Re-wrapping with unbroken header](./img/why_space_between_headings.png)


<a name="do_not_leave_hanging_whitespace_at_end-of-line"></a>

### Do Not Leave Hanging Whitespace at End-of-Line

When editing it's common to leave hanging whitespace

```
I hope that this 
does not reflect poorly on my yearly 
review.
```

If you try to "select" with your mouse, you'll see there are extra space
characters at the end of the first two lines.  Don't leave these. Most editors
will detect and highlight these.


<a name="footnote_style_markdown_links"></a>

## Footnote Style Markdown Links

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
ignored. Where intelligibility is impaired or level of indirection is
needlessly increased, this rule may be ignored.

The goal of this rule is to increase readability and to ensure that an image
link is not > 80 columns. Honor that spirit.

## Style Decisions

<a name="tone"></a>

### Tone

Tone should be conversational. It is appropriate to "break the fourth wall" and
speak to the reader using "you."

<a name="personhood"></a>

### Personhood

Curriculum should be writen in first-person plural.

<a name="non-gendered_speech"></a>

### Non-Gendered Speech

We do not use "he" or "she" or "ze" or "wir" or "hir."

We use "they" as a third-person singular honoring the descriptivist tendencies
of pre-18<sup>th</sup> century usage.


<a name="abbreviations"></a>

### Abbreviations

Technological writing is full of initialisms, acronyms, and abbreviations. Our
audience is quite likely to be unfamiliar with them. To remedy this, any
abbreviation may be used _only after it is introduced_ in the document and the
corresponding shortener _explicitly stated_.

Incorrect:

```
We will transform the display of this content by using CSS. Remember, CSS only
adjusts the way the content is viewed on the browser. It has no bearing on the
actual material written on the disk on the server!
```

Correct:

```
We will transform the display of this content by using Cascading Style Sheets
("CSS"). Remember, CSS only adjusts the way the content is viewed on the
browser. It has no bearing on the actual material written on the disk on the
server!
```

<a name="headings_should_be_capitalized_according_to_ap_style"></a>

### Headings Should Be Capitalized According to AP Style

Capitalize every word except: "a," "an," "and," "at," "but," "by," "for," "in,"
"nor," "of," "on," "or," "out," "so," "the," "to," "up," and "yet."

<a name="avoid_burying_the_lede"></a>

### Avoid Burying the Lede

The "lede" is the point of the thing.

In technical writing, especially when encountering newcomers, we cannot rely on
subtlety or three-act structure to create and sustain tension such that the
audience will be _gasp_ amazed and awed by our writing for the big reveal of
the lede at the end of the document.

While we should guide the presentation by questions, the reader should already
have the answer in the bag. While it may feel inferior as a _writer_ it's
superior as a _curriculum writer_. Time and again, research has shown that
communicating the goals, following the plan, and then reviewing pays dividends
for learners.

**Protip**: If you're wondering where your lede is and you've been writing like
a novel (building to a rising **ho-ho!** _reveal_!) Your lede is _most likely_
in your final paragraph. You can often literally move that paragraph to be the
first and *ka-bam* you now have writing ideal for learners!

<a name="avoid_value_judgements"></a>

### Avoid Value Judgements

Learners, especially in technology, will tend to ape and absorb our opinions
about technology. A statement such as: "We'll be using Ruby, because this would
be Hell on Earth in Java" is often humorous for the experienced, but will be
taken and parroted by neophytes in ways that might be dangerous to their
outcomes. Imagine they walk into an interview at a Big Bank and are asked about
what technology to use for online banking and they suggest Ruby because "Java
is Hell on Earth."

While many value judgements can be entirely innocuous, it can lead to an
integration of the hacker culture which uses scoffing as a means for compliance
and social control. In its pathological form, it's antithetical to our value of
"Radiate Positivity."

Also, be aware imputation or inference of values can set up learners' sense of
impostor syndrome.

> "This is a simple and elegant interface."

If the student reads those value words, they may well feel "stupid" if the
matter doesn't come easily for them. Lacking sufficent taste the Rack
middleware's _elegance_ might be lost on them and they will conclude it is
_them_ who is "stupid" because the elegance of a responder with a single method
is not something that has become native to their mental map of the programming
universe.

### Avoid Tautological or Weak Sentences

If a statement merely states a truth or opinion, it's likely standing in for a
vigorous demonstration.

Example:

> `vim` is a powerful editor!

First, we have an implicit value judgment (Are other editors underpowered? What
does "power" even mean in this context?)

Versus:

> `vim will let you accomplish many changes in a programmatic interface. To see
> this in action type `:%s/dog/poodle/g|%s/Dog/Poodle/g|44,50m0|w`. In this
> one line you changed all mentions of dogs to Poodle and took your
> lede-bearing paragraph and moved it to the top of the documen _and_ saved the
> file to disk _all without leaving the home-row_. It's this capability to
> programmatically "queue" and move text efficiently that earns `vim` the
> adjective of being "powerful."

<a name="prefer_active_voice"></a>

### Prefer Active Voice

While it is unnatural to avoid all passive construction, strive for active
voice as much as possible. Implicit here is that it's permissible to use the
imperative mood when warranted.

Prefer:

> Start the server.

or:

> You must start the server before attempting to connect.

over:

> The server must be started by you before it can be reached.

<a name="write_from_the_student_perspective"></a>

### Write from the Student Perspective

While this seems to be natural enough, keeping your goals separate from the
students' perspective can often become muddled. Relentlessly ask "is this _my_
value or is this the student's _value_." You might well believe that
cryptography is a moral right and that the student is learning PK-cryptography
in order to subvert the prying eyes of the corporo-politico nation state;
**however**, the student might well be wondering "How can we ensure a message
can't be read when at rest?" **Our** values as a school or writer or
enthusiasts can occasionally move us away from proper student empathy.

<a name="avoid_rhetorical_questions_to_drive_material"></a>

### Avoid Rhetorical Questions to Drive Material

It's tempting to "plant" a rhetorical question in order to set up material.
Often, however, this work is not required. They're reading a lesson expecting
to have material presented. Speaking with authority, especially in earlier
courses, creates safety that allows them to learn comfotably.

[80col]: https://www.emacswiki.org/emacs/EightyColumnRule
