# Closing Issues and PRs

## Issue Resolution Process (ALPHA: 2018-01-14)

### Goal

Our goal is to take care of our curriculum so that students are not
encountering bumps that frustrate their learning. It's _awesome_ that they're
sharing ideas with us for improvement. These are not _burdens_ they are
_gifts_. How can we handle these _gifts_ properly?

## Determine Whether An Issue Is Actionable By Curriculum

Here is a summary of issues that are *not* actionable:

* A misunderstanding with the challenge. Please tell them to ask-a-question or
  work with a coach
* There is a bug in the IDE: it disconnected, it hung, etc. The problem is in
  the IDE environment. They should email `support@flatironschool.com` or refer
  to our help center here: `http://help.learn.co/the-learn-ide`
* This is an issue that you can't replicate. Ask the reporter for more
  details...then check back in a week. If they haven't responded close the
  issue (with a smile! and a comment) and ask them to re-open if they come across
  the issue again.

Saved replies are available [here][saved-replies].

When copying these templates, **make sure you grab the raw Markdown.**

If the problem is not one of the above, you have an actionable curriculum
issue.

## Actionable Curriculum Issues

If the text is unclear, the `div` they're meant to find by `id` isn't there,
etc. It's a bug on our side. This is our work!

The Curriculum Issues Manager should have delegated a repository to you.

### Step 1: Load up the Repository's Issues

http://_repo_/issues

### Step 2: Do a Rough Triage

Look at the issues present. For each issue which you think you can fix in
**fewer than 5 minutes**, FIX IT [according to this process][process].

If this addresses all the issues, great! You're done!

### Step 3: Big Issues

OK, so there are issues left that take > 5 minutes to fix.

This is a hard step: **ignore the urge to fix it**. Issues > 5 minutes need to
be planned and considered. It's never that we don't want to fix an issue, the
matter is, rather, that we want to do many things and we have to choose to do
the _most important_ things. We will now do some administrative work to help us
track the cost of handling a given repository's issues well.

### Step 4: Is a KNOWN ISSUES Issue Present?

Has someone already created a KNOWN ISSUES issue? *IF SO* proceed to Step 5.
*IF NOT* proceed to Step 6.

### Step 5: Repository has a "Known Issues" Issue

This step has 3 sub-steps

#### Step 5A: Find or create a PROBLEM in the "Known Issues" Issue

Is the new issue already covered as a PROBLEM in the "Known Issues" issue?

*IF SO*: Add the issue-opener's GitHub `userid` under the NOTIFY: bloc for the
given PROBLEM e.g.

```text
PROBLEM: Derps are derpy
NOTIFY: @octocat, @sgharms, @new-issue-reporter
```

IF NOT: Add a PROBLEM **and** and a NOTIFY line and a `#number` as a link to
the original issue. e.g.

```text
PROBLEM: Lerps are lerpy
NOTIFY: @new-issue-reporter
```

Save the "Known Issues" issue.

#### Step 5B: Close the Original Issue

Close the _original issue_ with a nice message (see below) and provide the
original reporter a link to the KNOWN ISSUES issue.

```text

Thanks for reporting this issue. We're now aware of it and are tracking it in
$URL_TO_KNOWN_ISSUE_ISSUE.  We will add this to our internal work queue and
notify you when it is resolved.

We're closing this issue but invite you to follow progress at that URL.

-- Flatiron Curriculum Team
```

#### Step 5C: Update Curriculum Projects Tracking Board

Finally, visit the [Trello for Curriculum Projects][trello]. Find the card for
this repo in "REPORTED ISSUES IN GH REPOS." Follow the UPDATE FLAG RANKINGS on
this card. The card _should_ have been created as part of Step 6 by a previous
contributor...but if not, help their oversight :).

You're done!

### Step 6: Repository Has No Known Issues Issue

Create an issue called "Known Issues."

Add a PROBLEM **and** and a NOTIFY line e.g.

```text
PROBLEM: Zerps are zerpy
NOTIFY: @octocat
```

Close the issue and provide the original reporter a link to the KNOWN ISSUES
issue.

```text
Thanks for reporting this issue. We're aware of it and are tracking it in $URL.
We're closing this issue but invite you to follow $URL.
```

Finally, visit the [Trello for Curriculum Projects][trello]. Find the card for
this repo in "REPORTED ISSUES IN GH REPOS." Follow the UPDATE FLAG RANKINGS on
this card

## Reported Issues In GH Repos

When we have a "Known Issues" Issue, we want to reflect that work exists in a
project management software. That's what we use [Trello][trello] for.

Create a card in the REPORTED ISSUES IN GH REPOS lane of Trello.

The title should be:

`[difficulty:payoff][issue_count:number_of_reporters] Repo Name: Known Issues`

* difficulty: How hard would it be to clear this Known Issues backlog
  (EASY|MEDIUM|HARD|WHOA|VIDEO)
* payoff: Is this a popular lesson? Is it a critical lesson? The more you
  answer these questions in the affirmative, the more the payff is HIGH. The
  less, well, the less. Values are: (HIGH|MEDIUM|LOW)
* issue\_count: How many problems are in the known issue. If the problems "foo,
  bar, and bat" are each reported by "alpha, beta, and beta again") the issue
  count is **2**.
* number_of_reporters: How many people report an issue. You might have a
  _single_ issue with 100 reporters. That implies a big payoff for the fix!

Within the card include a link back to the "Known Issues" Issue.

### Inferences

Titling our cards in this way makes it possible for management to understand
cost / payoff relationships. e.g.

* [Medium:High][1:100]: _Wow! We're lagging. One issue could help a lot of
  reporters and is onldy midldly difficult. Is the team trained properly?_
* [Easy:low][1:1]: _Meh_
* [WHOA:low][1:1]: _Wow, someone's found an edge case_
* [Easy:high][100:100]: _Wow, lots of things wrong in this thing. Probably need
  a rewrite_

### Escalation / Help

If this process didn't help you, contact @steven.harms and we'll try to iron it
out. This is still work in progress.


[trello]: https://trello.com/b/dujVgBTU/curriculum-big-issues
[saved-replies]: ./issue-handling-saved-responses.md
[process]: ./updating-lessons-process.md
