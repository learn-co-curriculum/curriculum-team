## I Found a Typo, Spelling Mistake, etc. AKA "Tiny Stuff." Can I Fix and Commit Directly?

Please don't. Create a PR and mention it in the #se-curriculum-questions slack channel.

## I Want To Update a Lesson Or Lab ***in Full Stack Web Development*** ("Software Engineering," "SE," or "FSWD")

**EXAMPLES**:

* Confusing wording
* Improperly formatted Markdown
* Inconsistent styling or wording between multiple lessons
* A `solution` branch that use ridiculously advanced content to where the learner is
* Broken NPM or RubyGems dependencies

We call these "repository fixes." We appreciate help in doing these types of updates.

### Do You Know How to Fix It?

Create a PR with the change and then notify us about it via a [JIRA issue][jira]. Please try to follow the [style guide](./style_guide.md). We like to merge PRs!

### Sorry, I don't know how to Fix It

1. If you are unable to create a PR that addresses your concern, you can, as an alternative, create an issue that describes the problem in the GitHub Issues Form **ALSO** Please add a `#staff` at the end of your PR or Issue.
2. Submit a [JIRA issue][jira] with a link to your Issue so that we know to give you faster review. As of August 2019, Curriculum has burned down 3 years worth of issues to ~500 from 1000+. In theory, this additional "add to Jira" step won't be needed in order to get you priority attention, but it's still work in progress.

## I Want To Change The Way We Teach a Topic (order) or I've Found a Systemic Flaw / Misconfiguration

Phew, this one is a bit dicier. What if your change sets us backward (I'm sure
it won't) or what if another teacher disagrees with you? And how will whatever
process we describe here work with more schools and more curricula?

Write your perspective, point of view, recommendation, edits etc. Then use
the [JIRA issue][jira] to alert us to the presence of the issue and we'll be in contact.

## My Students are Stymied, we have a PR, why won't you merge it!?!

Curriculum was (re-)born in 2018 with a backlog of >1000 issues dating
from the ~2 year time period when the team was disbanded. As of January
2018 we are trying to 1) advance business strategy by releasing new
products releases, etc. ("projects") and balancing that against 2)
needs to maintain and sustain the existing operation ("ops"). Where
there is a bug that's been ignored and a fix is present, please use the
Slack channel `#curriculum` as an interrupt to put our attention on something
in a timely fashion.

Bear in mind order and structure issues are far less easily integrated, but
"point" fixes to repos should be implement-able quickly, once our "interrupt"
is activated.

[jira]: https://flatiron.atlassian.net/projects/CO/board
[dswiki]: https://github.com/learn-co-curriculum/dsc-curriculum-guidelines
