# Getting the curriculum onto your local machine

## Basic setup

Get this repo, install dependencies, source the track health tools

```
git clone git@github.com:learn-co-curriculum/curriculum-team.git
pip install pyyaml
source track-health-tools.sh
```

## Clone a whole track

```
lesson_list [track-id] > lesson_lists/[name-of-track].txt
clone_lesson_list_to_dir lesson_lists/[name-of-track].txt [tracks-path]/[name-of-track]
```

## Update all the lesson lists that we support

```
# check that tools/lesson_lists/names-and-ids.txt is updated
update_lesson_lists tools/lesson_lists/names-and-ids.txt
```

## Clone all the tracks...

```
mkdir ~/curriculum/tracks
cd tools/lesson_lists
for list in *.txt; do
  echo "cloning $list to ~/curriculum/tracks/${list%.*}";
  clone_lesson_list_to_dir $PWD/$list ~/curriculum/tracks/${list%.*};
done
```
