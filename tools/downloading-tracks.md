# Getting the curriculum onto your local machine

## Basic Setup

```
$ git clone git@github.com:learn-co-curriculum/curriculum-team.git
$ pip install pyyaml
$ source track-health-tools.sh
$ brew install go
$ git clone https://github.com/flatiron-school/hub
$ cd hub
$ git checkout fis
$ make
$ echo 'export PATH="$(pwd)/bin:$PATH"' >> ~/.bash_profile
$ hub --version # should should something like 
$ # git version 2.23.0
$ # hub version 2.13.0-27-gee3ff9d3 # note the `-27-gee3ff9d3` stuff after the version
```

## Update the `lesson_lists` with what is currently on learn

```
# check that tools/names-and-ids.txt is updated (ping someone in slack, probably)
$ ./tools/update_lesson_lists.sh
```

## Get the Github Issues for all the tracks in `lesson_lists`

```
$ ./tools/issues.sh
```

## Summarize the data in a day of issues

```
$ ./tools/summary.sh
```

## Clone all tracks in `lesson_lists` to local

```
# (use sparingly - clones lots of repos!)
$ ./tools/clone_all_tracks.sh
```
