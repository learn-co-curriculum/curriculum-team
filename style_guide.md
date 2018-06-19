# Style Guide

## Introduction

To ensure that we all write with a common voice, we have adopted the following
style decisions.

Contents:

* Flatiron Concerns
  * [American English Standard](#american_dictionary)
  * [Do Not Mention Dates](#do_not_mention_dates)
* Formatting Markdown
  * [Text Wrap at 80 Column](#text_wrap_at_80_column)
  * [Headings Get an Additional Blank Line](#headings_get_an_additional_blank_line)
  * [Do Not Leave Hanging Whitespace at End-of-Line](#do_not_leave_hanging_whitespace_at_end-of-line)
  * [Footnote Style Markdown Links](#footnote_style_markdown_links)
  * [Do Not Use Smartquotes](#do_not_use_smartquotes)
  * [Long Dash](#long_dash_em-dash_literal)
  * [Code Blocks](#code_blocks)
  * [Block Quote](#block_quote)
  * [Lists](#lists)
  * [Do Not Use Curly-Quotes](#curly_quotes)
* Style
  * [Tone](#tone)
  * [Personhood](#personhood)
  * [Non-Gendered Speech](#non-gendered_speech)
  * [Abbreviations](#abbreviations)
  * [Code Words](#code_words)
  * [Capitalization](#capitalization)
  * [Asides](#asides)
  * [Numerology](#numerology)
  * [Latin Abbreviations](#latin_abbrevs)
  * [In-Line Quote](#in_line_quote)
  * [Disambiguation of "learn"](#disambiguation_of_learn)
  * [Learner vs. learner](#learner_vs_learner)
  * [Tables](#tables)
  * [Headings Should Be Capitalized According to AP Style](#headings_should_be_capitalized_according_to_ap_style)
  * [Bullet Terminators](#bullets)
* Engaging Writing
  * [Avoid Burying the Lede](#avoid_burying_the_lede)
  * [Write to a Junior High level](#write_jr_high)
  * [Avoid Value Judgements](#avoid_value_judgements)
  * [Prefer Active Voice](#prefer_active_voice)
  * [Write from the Student Perspective](#write_from_the_student_perspective)
  * [Avoid Rhetorical Questions to Drive Material](#avoid_rhetorical_questions_to_drive_material)
* Word Choice
  * [Terminal, console, etc.](#wc_terminal)
  * [Table of Word Choice Alternatives](#wc_subs)

---

## Flatiron Concerns

<a name="american_dictionary"></a>

## American English Standard

We draw from the American English dictionary. It's a "hood" not a "bonnet," a "trunk" not a "boot," a "color" not a 
"colour" et al.

<a name="do_not_mention_dates"></a>

## Do Not Mention Dates

Do not specify delivery-specific concerns in the text. The "first Monday of the
module" seems specific, obivious, and routine, but in the US Market, many
holidays fall on Monday such that this won't be appropriate. As Flatiron has an
ever wider presence we will run against cultures that work on Friday, don't
work on Saturday, etc.

## Formatting Markdown

Use [GitHub-flavored markdown][GHMD].

<a name="text_wrap_at_80_column"></a>

## Text Wrap at 80 Column

Text should be hard wrapped near 80-column width.

The text we write as curriculum is not _merely_ text, it's _technical text_.
It's important that it be written easily, but **it's more important** that it
be _reviewed, vetted, and discussed_ easily.

While _editors_ may have soft wrap, many editing tools (e.g. `git diff`,
`DiffMerge`, `vimdiff`, etc.) have their efficacy undermined by long lines. For
the same reason we don't write methods with their implementation all in one
line, we want a similar level of granularity when editing _technical text_.

With short (i.e. wrapped) lines, reviewers have an absolute coordinate from
which edits can be suggested.  In a long line, reviewers must point to the
portion of the text via some relative means (third sentence, second use of
"their") before explaining the change, which can be very time consuming for
both the editor and the author receiving the feedback.

These tools help the editing process. All major editors have configuration
options to support this (e.g. vim's `format`, [Atom][atom-hard-wrap]).

That said, **don't make this a crusade**. It would be an anti-pattern to
iterate through old curriculum making everything 80-column compliant. If you're
going to do substantial rework or new work, adhere to this guideline.

Also, Markdown image linking will break when you heard break in the link
specification brackets `[this will\n break]`. Obviously break our guideline
here. It's very unlikely that you're going to receive frequent feedback on your
links.

Additionally, note that adhering to [footnote-style
links](#footnote_style_markdown_links) will allow you to wrap and have short
lines.

<a name="code_words"></a>

#### Code Words

When discussing a "code word" as part of a regular sentence, wrap the code word
in single back ticks ( \` ). This could be a variable name (`myString`), a
class name (`NSArray`), a method name (`.include?`), an operator (`<=>`), or a
string literal (`"Hi, Grandma."`); in general, any piece of code that does not
constitute a whole line or statement.

Avoid beginning a new paragraph with a code word:

Not: `pwd` means "print working directory".  
Use: The `pwd` command means "print working directory".  

Also avoid beginning a new sentence with a code word whenever possible, though
a semicolon `;` can be employed if altering the English syntax would make the
paragraph awkward.

<a name="capitalization"></a>

### Capitalization

Names of languages should be capitalized unless part of a code snippet (e.g.
Ruby or `ruby`, Objective-C, Python or `python`; not: ruby, objective-c,
python).  

Don't capitalize:

* autolayout (iOS)
* bash — the commonly-used acronym for Bourne-Again SHell.
* boolean — though in specific reference to the fields of Boolean Algebra or
* Boolean Logic this can be appropriate, just be consistent.
* debug console (iOS) — this is a colloquial name for the 'Console Output
* Viewer' in Xcode

**Do** capitalize:

* *most acronyms:* CLI, URL, HTTP, LLDB.
* *names of programming languages:* Python, Ruby, Objective-C, Swift, JavaScript
* Interface Builder — Xcode's integrated storyboard design tool.

<a name="asides"></a>

### Asides

Use sparingly.

**Note:** *The basic aside for "whispering" something minor that doesn't fit
into the flow of exposition.*  Example:

**Note:** You might find that your version differs in its third number versus
what we have in our example. We use 2.7.2, but 2.7.3 would work just fine.

**Advanced:** *A helpful note that is not readily understandable to the present
skill level of the reading and not required to fulfill the objectives.*
Example:

**Advanced:** If you notice that you're repeating yourself a lot in these specs,
you might want to try using a `let` block to DRY out the code. Consult the
documentation...

**Pro-tip:** *A note about style or best-practice, or a friendly reminder about
avoiding a common or simple mistake. Think opinion-piece.*  

**Pro-tip:** Since launching the debugger console is a *very* common task when
writing JavaScript, you might want to learn the shortcut: &#8984; + &#8997; +
j.

**Hint:** (in labs) *A note about avoiding a common mistake not readily
apparent in the given instructions, or direction to a useful method that has
not been previously explained.* Example:

**Hint:** Your first insinct might be to reach for `.each`, but since you're
accumulating the values, there might be a better Enumerable.

**Reminder:** *A reminder of previously learned concepts as we start to build
on them.* Example:

**Reminder:** JavaScript does not have implicit `return` in its functions. If
you pass a closure in, you might be surprised unless you're careful about what
you return!

<a name="lists"></a>

### Lists:

1. Lists can be automatically numbered,
   * and contain bullet points.

* Or they can be unnumbered (bulleted) lists.

2 — You can also manually number your list if the automatic numbering gets
broken because of a code-snippet.

But, keep a consistent style. And generally avoiding making a list with only
one point. Consider using an aside.

If you reference other bullets use numbered list.

<a name="numerology"></a>

### Numerology

When discussing numbers in exposition paragraphs, remember the English rule
that numbers from zero to ten should be written out and values over 1,000
should be written with comma separators. Since this can collide with discussing
code, think of the use case to determine what you're talking about. Are you:

* discussing the number only in your exposition? Use the English form. 
* discussing an integer value from your code? Put the digit `10` in a code
  snippet. 
* discussing an abstract count that's relevant to your code? Do both, by
* presenting it as ten (10) or ten (`10`).

<a name="latin_abbrevs"></a>

### *exampla gratia* (e.g.) vs. *id est* (i.e.) vs. *et cetera* (etc.)

* e.g. — Latin for "given example(s)" — points to a single example or a finite
  list of examples.
* i.e. — Latin for "meaning" — points out a further explanation of the same
  idea.
* etc. — follows one or several examples pulled from a longer set of potential
  examples. 

*etc. and e.g. should not be combined in the same list*

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

Prefer footnote-style link definition to inline. Given our width constraint
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

In the first sample we can use the `Byron` pointer in a variety of cases. In a
technical document we could create a pointer like `[link-definition]` and
easily (with a sufficently powerful editor) wrap all occurrences of `<a>`,
`link` and `MDN documentation of the anchor tag` all with the same pointer. And
when / if that `href` changes, we can make 1 change, 1 commit, 1 focused line
(provided the lines are wrapped!).

This recalls the wisdom behind the refactor "EXTRACT MAGIC STRING TO SYMBOLIC
CONSTANT."

Obviously, in unordered lists of links this is unhelpful and therefore can be
ignored. Where intelligibility is impaired or level of indirection is
needlessly increased, this rule may be ignored.

The goal of this rule is to increase readability and make changing links (which
have a tendency to die out) easy. Honor that spirit.

<a name="do_not_use_smartquotes"></a>

### Do Not Use Smartquotes

If your editor does this, stop it.

Not:

“Why”

But:

"Why"

If one wanted to change the first example from `“` to `'` one couldn't search
for this character. Use code characters.

<a name="long_dash_em-dash_literal"></a>

### Long Dash (Em-Dash) Literal

Employ the the long dash character \`&mdash;\` directly by using the HTML
entity `&mdash;`. Additionally modern markdown engines will convert `--`
to &mdash;


<a name="code_blocks"></a>

#### Code Blocks

```objc
NSString *code = @"Code ";
NSString *block = @"block.";
NSString *codeBlock = [code stringByAppendingString:block];
```

"Code blocks" are declared by wrapping in triple back-ticks ( ``` ). The
opening triple back-tick should be followed with a language declaration
appropriate to the contents of the code block:

* `bash` : Bash, CLI output
* `ruby` : Ruby
* `js`   : JavaScript
* `objc` : Objective-C
* `swift`: Swift
* (none) : LLDB console output

The example code block above is written in markdown with the following syntax:

\`\`\`objc  
NSString *code = @"Code ";  
NSString *block = @"block.";  
NSString *codeBlock = [code stringByAppendingString:block];  
\`\`\`

<a name="block_quote"></a>

##### Block Quote

>You can employ an HTML-style block quote by starting the first line with an
>`>`. This is better for large excerpts when line breaks don't matter.
>(attribution or link)

More commonly a block quote will be appropriate when quoting a technical work,
programming documents, or a blog.

<a name="in_line_quote"></a>

##### In-Line Quote

When writing an "in-line quote", punctuation should remain outside the phrase
"unless you are making a reference quote that includes it." Punctuation symbols
can have technical importance to the subject matter so explicitly excluding
punctuation from quotes is justifiable.

<a name="curly_quotes"></a>

##### Do Not Use Curly-Quotes

No: `”`

They render unpredictably, you can't search for them from a standard keyboard.
No. Also no: &raquo; &laquo;. Use American quotation formatting.

## Style

<a name="tone"></a>

### Tone

Tone should be conversational. It is appropriate to "break the fourth wall" and
speak to the reader using "you."

Per our "[Brand Book][bb]," here are attributes that our voice should have:

#### Passionate

Optimistic, Positive, Purposeful **over** Apathetic, Sarcastic, Detached

#### Rigorous

Elite, Determined, Eager **over** Elistist, Gentle, Easy

#### Knowledgable

Trustworthy, Useful, Transparent **over** Uninformed, Unhelpful, Overtly Salesy

<a name="personhood"></a>

### Personhood

Curriculum should be writen in first-person plural (We).

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
corresponding shortener _explicitly stated_. Feel free to be generous with your
abbreviations' explanations. Feel free to use abbreviations sparringly.

Incorrect:

```
You can use AR to access the database...
```

Correct:

```
You can use ActiveRecord ('AR') to access the database...
```

<a name="disambiguation_of_learn"></a>

### Disambiguation of "learn"

Because of our appropriation of the word "learn" among our curriculum software,
disambiguating its use is important:

* learn — verb — to gain knowledge or improve a skill. 
* `learn` command, the — noun phrase (as, "the `learn` command") — the bash
  command that runs all tests in labs. This should always be wrapped in
  a code snippet.
* Learn.co — proper noun — the website and address of the curriculum tool
  available to students, faculty, and staff.
* Learn IDE, the — proper noun — the application that students use to work
  through the Learn.co curriculum.

Usage:

"You'll learn that the `learn` command integrates with your profile on Learn.co
by uploading information through the Learn IDE."

<a name="learner_vs_learner"></a>

#### Learner vs. learner

* learner — noun — a person who is gaining new knowledge or developing a skill.
* Learner — proper noun — a student using Learn.co to learn software
* development.

Usage:

"Learners on Learn.co are learning the tools to make themselves lifelong
learners."

<a name="tables"></a>

### Tables

Tables are a great way to organize sets of parallel information, such as
[logical
operators](https://github.com/learn-co-curriculum/reading-ios-looping-and-conditionals#combining-conditionals).

Try to keep the Markdown symbols as table-like as possible, wrap symbols in
code snippets, and use markdown reference notation for icon links inside a
"cell". These will improve future maintainability of the code.
<a name="headings_should_be_capitalized_according_to_ap_style"></a>

### Headings Should Be Capitalized According to AP Style

Capitalize every word except: "a," "an," "and," "at," "but," "by," "for," "in,"
"nor," "of," "on," "or," "out," "so," "the," "to," "up," and "yet."

<a name="bullet_termination"></a>

### Bullet Termination

At the end of a sentence on a bullet **do not** add a period. If multiple sentences
are present in the bullet, punctuate as normal but leave the period off the last statement.

<a name="write_jr_high"></a>

### Write to a Junior-High Reading Level

While beautiful prose is something that we, as writers, likely hold dear, we
need to downplay that when writing technical material. We want the cognitive
burden to be on the _learning_ not waiting for the third nested appositive in
the sentence after an em-dash to be the burden.

In effort to help this we're using readable.io to score. While there are some
cases where using words that readable doesn't like are the right thing to do
(e.g. "integrated development environment" is, well, what it is, I don't give a
damn if those mean a lot of syllables that make for long sentences in their
scorer).

For READMES, target 6.x and for technical material target 7.x. Obviously, the
lower the score the more friendly you are to the reader, but let's be
reasonable.

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

Learners, especially in technology, will tend to mimic our opinions
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
does "power" even mean in this context?).

Versus:

> `vim will let you accomplish many changes in a programmatic interface. To see
> this in action type `:%s/dog/poodle/g|%s/Dog/Poodle/g|44,50m0|w`. In this
> one line you changed all mentions of dogs to Poodle and took your
> lede-bearing paragraph and moved it to the top of the document _and_ saved the
> file to disk _all without leaving the home-row_. It's this capability to
> programmatically "queue" and move text efficiently that earns `vim` the
> adjective of being "powerful."

This, however, makes one ask, is that argument _even useful_? Did I just break
the flow? If the answer is "yes" then there's probably a very good argument for
simply _deleting the sentence_.

<a name="prefer_active_voice"></a>

### Prefer Active Voice

While **it is unnatural to avoid all passive construction**, strive for active
voice as much as possible. Implicit here is that **it's permissible to use the
imperative mood** when warranted since we _are_ experts.

Prefer:

> Start the server.

or:

> You must start the server before attempting to connect.

over:

> The server must be started by you before it can be reached.

<a name="write_from_the_student_perspective"></a>

### Write from the Student Perspective

While this seems to be natural enough, keeping your goals separate from the
students' perspectives can often become muddled.

First, it is **absolutely fine** for Flatiron to indoctrinate Flatiron values.
This guide, in many ways, does exactly that. By expressing an opinion on how
we handle gender and personhood, we are expressing a value. Expressing
the enthusiasm we have in our corporate culture about technology is fine.

That said, both code and text needs to be written for where the _students'_
values and knowledge are, _not the curriculum authors'_. Consider that, as a
developer, we know a `let` block is a great way to DRY up a spec. But is a
student on their 3rd test-driven lab going to be able to handle the attending
questions e.g.:

* Am I **wrong** if I don't use `let`
* Will I not get a job if I don't use `let`
* This test is failing, did someone make a mistake by using `let`?

<a name="avoid_rhetorical_questions_to_drive_material"></a>

### Avoid Rhetorical Questions to Drive Material

It's tempting to "plant" a rhetorical question in order to set up material.
Often, however, this work is not required. They're reading a lesson expecting
to have material presented. Speaking with authority, especially in earlier
courses, creates safety that allows them to learn comfortably.

## Specific Word Choice

<a name="wc_terminal"></a>
### Terminal, console, etc.

Given our subject matter we have to be careful not to conflate `bash`, `shell`,
`command line`, `command prompt`. It's important to be clear on which layer
of abstracting you're working with, where. The general preferred nouns should
be `terminal` and `shell`. Here are tips for sensing the boundary:

* All students should be pointed to the `terminal`. Pretty safe. This means
  the terminal emulation program, i.e. the thing that handles raw input and output
  and painting a screen. **NOTE** it does not process the input for semantic
  meaning. `ls` is handled by the **shell** not the **terminal**. You _can_
  type `ls` into the termainal though.
* `the shell` takes input, thinks, prints things out. Pretty safe. Use this when
   you're trying to talk about the OS level mechanics. The shell doesn't paint
   the screen.
* `Terminal` is a command used only by Mac users. Not safe
* `console`s exist in Chrome and in an XTerm. Not safe.
* `bash` is a specific shell. Probably not safe.
* The command prompt is the thing set by `PS1`, might be safe to orient by,
  but it doesn't process data, etc.
* The command-line...roughly the same as shell, but it's really a style of
  of interaction. Prefer shell.
  
<a name="wc_subs"></a>  
Table of Substitutions

|Not|Prefer|
|---|------|
|interacting|working|
|as presented by|shown|
|erroneous|wrong|

[80col]: https://www.emacswiki.org/emacs/EightyColumnRule
[GHMD]: https://help.github.com/categories/writing-on-github/
[gitlab-sg]: https://about.gitlab.com/2016/10/11/wrapping-text/
[kernel-style]: https://www.kernel.org/doc/html/v4.10/process/coding-style.html#breaking-long-lines-and-strings
[atom-hard-wrap]: https://atom.io/packages/hard-wrap
[bb]: https://flatiron.atlassian.net/wiki/spaces/ER/pages/330104842/Flatiron+School+Brand+Book
