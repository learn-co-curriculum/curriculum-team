# Clones all repos in all the tracks
# BEWARE: takes a while, may download several thousand repos 

# Usage: ./clone_all_tracks.sh [target_dir] [lesson_list_dir]
# Note: use full paths, not relative paths

if [ -z "$1" ]
then
  echo "need a target directory"
else
  TARGET_DIR="$1"
fi

if [ -z "$2" ]
then
  echo "need a lesson list directory"
  exit 1
else
  LESSON_LISTS_DIR="$2"  
fi

github_link_from_https_to_ssh() {
  temp="$(echo $1 | sed 's+https://github.com/+git@github.com:+g')"
  echo "$temp.git"
}

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
  target="$TARGET_DIR/$(basename ${list%.*})"
  echo "cloning $list to $target"
  clone_lesson_list_to_dir "$list" "$target"
done
