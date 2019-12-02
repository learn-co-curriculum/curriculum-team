# Getting the curriculum onto your local machine

## Basic Setup

```
$ git clone git@github.com:learn-co-curriculum/curriculum-team.git
$ pip install pyyaml
$ source track-health-tools.sh
$ brew install go
$ git clone https://github.com/flatiron-school/hub
$ cd hub
$ make
$ echo 'export PATH="$(pwd)/bin:$PATH"' >> ~/.bash_profile
$ hub --version # should should something like 
$ # git version 2.23.0
$ # hub version 2.13.0-27-gee3ff9d3 # note the `-27-gee3ff9d3` stuff after the version
```

## Update all the lesson lists that we support

```
# check that tools/names-and-ids.txt is updated (ping someone in slack, probably)
$ ./tools/update_lesson_lists.sh
```

## run the summary script

```
$ ./tools/summary.sh
```

## clone all the tracks to local

```
# (use sparingly - clones lots of repos!)
$ ./tools/clone_all_tracks.sh
```
