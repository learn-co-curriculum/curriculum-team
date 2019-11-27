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
