# Curriculum Development Tools

## Powerful Text Editor

We write, a lot. Your preferred tools need to be a text editor that makes you
_lethal_.

### Instructor App

At Flatiron School the tooling of Curriculum is the responsibility of
Curriculum. We cannot look to the "Product" team to build data analytics,
automation, etc. features we need. We must build it ourselves.

Similarly, the Online Education Team has felt a similar "pinch" and has built
an application for building their own analytics platform called "The Instructor
App." This Rails app serves as a sensible place to integrate our tooling as the
interests between Online Ed and Curriculum are multiple.

The installation can be a bit _complicated_ so we've broken that documentation
into a separate document: the [instructor app][]

## (Optional) Markdown Editor

We write, a lot, in Markdown. If you benefit from a WYSIWYG editor, use it.
HOWEVER, make sure the code you check in is matches with our [style guide][sg].

In general, you will need to do some text transformation (see "Powerful Text
Editor") in order to make it compliant. Steven recommends learning to "read"
Markdown in ASCII, but your mileage may vary.

Note: Atom, for example, enables viewing formatted markdown next to ASCII
markdown. On MacOS, in Atom, keyboard shortcut is: control + shift + m. 

## Git

You will need to become a `git` master in this role. Common behaviors:

* branching
* rebasing interactively
* melding commits
* cleaning up commit histories

If this is a growth area, be sure to communicate this early so that we can show
you advanced techniques which help editors / authors work more efficiently.

[instructor app]: (./instructor_app.md)
[sg]: (./style_guide.md)
Basic tools for working with tracks.

* `track_output.py`: Output a track (provided an id) to present JSON or CSV
* `diff_lessons.rb`: Compare two track's lessons and print a summary
* A forked version of `github/hub` at `sgharms/hub` can be used for [issue reporting](./issue_reporting_with_hub_fork.md)
* `ops_summary.sh`: A shell script that, when provided a list of files
  containing the URLs to repositories, uses `sgharms/hub` to crawl their issues
  and create a summary. The files with repos can be gotten out of
  `curriculum_tools/lesson_lists` (they're the files with `_repos` in their
  names). Invoke with `ops_summary.sh PATH_TO_FILES` and, in the current
  directory, it will generate files full of issue URLs and print out a summary.
  The summary can be added to the [tracking chart][chart]

[chart]: https://docs.google.com/spreadsheets/d/1bou9Lgostb0jJYJ0Y2gb1m1iBfVSEv7P95ysO_0QanM/edit#gid=555704270
