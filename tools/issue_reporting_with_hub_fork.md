## `github/hub` fork at `sgharms/hub:fis`

The default GitHub `hub` command ***does not have the `-r` flag that Steven added to it***. As such you need ***Steven's*** `hub` in order to use this tool.

1. Clone https://github.com/sgharms/hub/
2. Checkout `fis` branch
3. Run `make`
4. This creates `bin/hub` in the git dir
5. Use _this_ `hub` (adjust PATH, use `/path/to/cloned/hub/bin/hub`) so that the `-r` flag is available.

The critical change is support for an `-r` flag which allows you to specify a repo to get the issues on *OR*, if you pass `-r STDIN` you can read in a file of repos to query. And that's very handy.

## Configuring Output

The `-f` flag takes a format string for awesome output

**JSON** (wih some massaging)

```
{% raw %}
-f '{%n  "issueId": %I,%n  "issueTitle": "%t",%n  "issueURL": "%U",%n  "reporterId": "%au",%n  "createDate": "%uI"%n}%n%'
{% endraw %}
```

**Simple List of Issue URLs**

```
-f %U%n'
```

## Data Sources

Look in `lesson_lists/`. The "Rewritten & Brickified" tracks we have created
since July 2018 are here. Using them as input should give you a good sense of
the issues.

## Example Use

```
cat $HOME/git_checkouts/curriculum_tools/lesson_lists/v7_repos.txt | /home/sgharms/git_checkouts/hub-sgh/bin/hub  issue -r STDIN -f '* %U%n'
```

"Take the list of v7 repos (a file of Github URLs). Pipe that output into Steven's `hub` fork using the `-r STDIN` flag which means "read a list of URLs from STDIN." The last flag specifies to emit a list of issue \[U\]RLS."




