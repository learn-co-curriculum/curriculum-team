# Closing Issues and PRs

## Issue Resolution Process

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

#### Step 5C: Update Known Issues Spreadsheet

If a new problem was added, visit the [Known Issues Spreadsheet] and create an entry describing the new problem. The definitions for `Cost to Fix`, `Impact of Fix` and `Urgency` can be found here: [Known Issues Spreadsheet Ratings].

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


#### Step 6A: Update Known Issues Spreadsheet

Finally, visit the [Known Issues Spreadsheet] and create an entry describing the new problem. The definitions for `Cost to Fix`, `Impact of Fix` and `Urgency` can be found here: [Known Issues Spreadsheet Ratings].

You're done!

### Escalation / Help

If this process didn't help you, contact @steven.harms and we'll try to iron it
out. This is still work in progress.


[trello]: https://trello.com/b/dujVgBTU/curriculum-big-issues
[Known Issues Spreadsheet]: https://docs.google.com/spreadsheets/d/1YUKD-N4XSkn-T4-biA6N1n9LGZDW-qwYhxAH2JAsyMo/edit#gid=0
[Known Issues Spreadsheet Ratings]:https://docs.google.com/spreadsheets/d/1YUKD-N4XSkn-T4-biA6N1n9LGZDW-qwYhxAH2JAsyMo/edit#gid=1317169924&range=A1d/1YUKD-N4XSkn-T4-biA6N1n9LGZDW-qwYhxAH2JAsyMo/edit#gid=0
[saved-replies]: ./issue-handling-saved-responses.md
[process]: ./updating-lessons-process.md
