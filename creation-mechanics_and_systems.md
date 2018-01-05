# Curriculum Creation: Mechanics and Systems

## Baseline Setup

Given a pristine directory, one must provide the following:

* **CONTRIBUTING.md**: Provides information on how to contribute bugs, feature
  requests, etc.
* **LICENSE.md**: Contains the Flatiron School copyright notice
* **.learn** [file][learn]: Include tags that describe the content covered.

Obviously the `CONTRIBUTING.md` file and `LICENSE.md` files will look identical
across _most_ if not _all_ lessons. Variance is to be expected in the
[`.learn`][learn] file.

A baseline setup script can be found in the [curriciulum-initialize shell
script](./curriculum-initialize.sh).

## Committing

Your new content should be added to the learn-co organization in GitHub.

Within a lab’s GitHub repository, there are 3 branches of note: master,
solution, and wip-\*. Master is the branch which will be populated to the
student experience. Solution contains the recommended solution to the lab and
whose implementation passes all the tests. Lastly, wip-\* branches are for
improvements that curriculum engineers create. These branches will not be
populated to the student repositories.

[learn]: ./learn-file.md

<!-- Note! Heroku application: https://learn-linter-ci.herokuapp.com/ points to
this page! Therefore if you move this page, you need to make sure to open up
that application which is in flatiron-labs/learn-linter-ci -->
