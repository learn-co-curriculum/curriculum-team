#!/bin/sh

cat > CONTRIBUTING.md <<EOT
# Contributing to Learn.co Curriculum

We're really exited that you're about to contribute to the [open
curriculum](https://learn.co/content-license) on [Learn.co](https://learn.co).
If this is your first time contributing, please continue reading to learn how
to make the most meaningful and useful impact possible.

## Raising an Issue to Encourage a Contribution

If you notice a problem with the curriculum that you believe needs improvement
but you're unable to make the change yourself, you should raise a Github issue
containing a clear description of the problem. Include relevant snippets of
the content and/or screenshots if applicable. Curriculum owners regularly review
issue lists and your issue will be prioritized and addressed as appropriate.

## Submitting a Pull Request to Suggest an Improvement

If you see an opportunity for improvement and can make the change yourself go
ahead and use a typical git workflow to make it happen:

* Fork this curriculum repository
* Make the change on your fork, with descriptive commits in the standard format
* Open a Pull Request against this repo

A curriculum owner will review your change and approve or comment on it in due
course.

# Why Contribute?

Curriculum on Learn is publicly and freely available under Learn's
[Educational Content License](https://learn.co/content-license). By
embracing an open-source contribution model, our goal is for the curriculum
on Learn to become, in time, the best educational content the world has
ever seen.

We need help from the community of Learners to maintain and improve the
educational content. Everything from fixing typos, to correcting
out-dated information, to improving exposition, to adding better examples,
to fixing tests—all contributions to making the curriculum more effective are
welcome.
EOT

cat > LICENSE.md <<EOT
# Learn.co Educational Content License

Copyright (c) 2015 Flatiron School, Inc

The Flatiron School, Inc. owns this Educational Content. However, the Flatiron
School supports the development and availability of educational materials in
the public domain. Therefore, the Flatiron School grants Users of the Flatiron
Educational Content set forth in this repository certain rights to reuse, build
upon and share such Educational Content subject to the terms of the Educational
Content License set forth [here](http://learn.co/content-license)
(http://learn.co/content-license). You must read carefully the terms and
conditions contained in the Educational Content License as such terms govern
access to and use of the Educational Content.  

Flatiron School is willing to allow you access to and use of the Educational
Content only on the condition that you accept all of the terms and conditions
contained in the Educational Content License set forth
[here](http://learn.co/content-license) (http://learn.co/content-license).  By
accessing and/or using the Educational Content, you are agreeing to all of the
terms and conditions contained in the Educational Content License.  If you do
not agree to any or all of the terms of the Educational Content License, you
are prohibited from accessing, reviewing or using in any way the Educational
Content.
EOT

cat > .learn <<EOT
tags:
  - bundler
  - introduction
languages:
  - ruby
resources: 2
EOT

cat > .gitignore <<EOT
.DS_Store
EOT
