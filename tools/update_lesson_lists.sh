# Usage: update the lists of lessons for the tracks
# ./update_lesson_lists.sh [path/to/names-and-ids] [path/to/lesson-lists-dir]

if [ -z "$1" ]
then
  NAMES_AND_IDS="$PWD/tools/names-and-ids.txt"
else
  NAMES_AND_IDS="$1"
fi

if [ -z "$2" ]
then
  LESSON_LISTS_DIR='lesson_lists'
else
  LESSON_LISTS_DIR="$2"
fi

if [ ! -d "$LESSON_LISTS_DIR" ]; then
  mkdir "$LESSON_LISTS_DIR"
fi

# accepts a track id, outputs a list of lessons
lesson_list () {
  "$PWD"/tools/track_output.py "$1" -u
}

update_lesson_lists () {
  while read -r line; do
    list_file="$(echo "$line" | sed 's/[0-9[:space:]]*\(.*\)/\1/'| tr 'A-Z :' 'a-z-').txt"
    track_id=$(echo "$line" | sed 's/\([0-9]*\).*/\1/' )
    lesson_list "$track_id" > "$2/$list_file"
    echo "track $track_id repos stored in $2/$list_file"
  done < $1
}

update_lesson_lists "$NAMES_AND_IDS" "$LESSON_LISTS_DIR"
