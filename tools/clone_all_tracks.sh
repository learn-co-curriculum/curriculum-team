# Clones all repos in all the tracks
# BEWARE: takes a while, may download several thousand repos 

# Usage: ./clone_all_tracks.sh [target_dir] [lesson_list_dir]
if [ -z "$1" ]
then
  TARGET_DIR="$HOME/curriculum/tracks"
else
  TARGET_DIR="$1"
fi

if [ -z "$2" ]
then
  LESSON_LISTS_DIR='lesson_lists'
else
  LESSON_LISTS_DIR="$2"
fi

# takes a file with a list of lessons as github repos and a directory
# clones all the repos in the list to the directory
clone_lesson_list_to_dir() {
  mkdir "$2"
  back_home=$(pwd)
  cd "$2" || return
  while read -r repo; do
    echo "$repo"
    git clone "$(github_link_from_https_to_ssh "$repo")"
  done < "$1"
  cd "$back_home" || exit
}

for list in "$LESSON_LISTS_DIR"/*.txt; do
  echo "cloning $list to $TARGET_DIR/${list%.*}"
  clone_lesson_list_to_dir "$list" "$TARGET_DIR/${list%.*}"
done
