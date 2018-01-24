# I see PRs with util--hide paragraphs, what's that?

![Example of util-hide block](img/github-backlink-diff.png)

We decided to add these "backlinks" to help drive SEO from GitHub to Learn.

It's been successful.

We've _changed_ the bloc which is correct. In the screen shot above, the green
block is correct. It should **replace** the line seen in 98. This bloc is
generated whenever someone submits a PR on a learn-co-curriculum repository
from Learn. Therefore, it's possible that a PR might try to create multiple
"instances" of line 100.

The goal is 0 entries of line 98 type, 1 entry of line 100 type.
