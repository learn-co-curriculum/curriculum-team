#!/usr/bin/env bash

# Important note: Make sure you're using sgharms' fork of github/hub
# so that you have the -r flag. Integration to github/hub is pending.

# Usage: ./issues.sh [path/to/lesson_lists_dir] [path/to/issues_output_dir]

github_link_from_ssh_to_https() {
  temp="$(echo $1 | sed 's+git@github.com:+https://github.com/+g')"
  echo "${temp%.git}"
}

process_sourcefile () {
  cat "$1" | hub issue -r STDIN --include-pulls -f '* [%ct][%au]: %t %U%n' >> "$2"
}


if [ -z "$1" ]
then
  SEARCH_DIR="lesson_lists"
else
  SEARCH_DIR="$1"
fi

if [ -z "$2" ]
then
  DEST_DIR="issues_output"
else
  DEST_DIR="$2"
fi

DEST_DIR_PREFIX="$DEST_DIR/$(date "+%Y-%m-%d")"

if [ -d $DEST_DIR_PREFIX ]
then
  echo "Folder exists at ${DEST_DIR_PREFIX}"
else
  mkdir "$DEST_DIR_PREFIX"
fi

if [ $? != 0 ]; then
  echo "Unable to create ${DEST_DIR_PREFIX}. Exiting"
  exit 1
fi

for source_file in "$SEARCH_DIR"/*
do
  SRC="${source_file}"
  DEST="${SRC%.txt}_issues.txt"
  DEST=${DEST/$SEARCH_DIR/$DEST_DIR_PREFIX}

  if [ -f "${SRC}" ]
  then
    if [ -f "${DEST}" ]
    then
      read -r -p "${source_file%.txt} exists. Overwrite? [y/N]" response
      if [[ ! "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
      then
        continue
      else
        echo -n > "${DEST}"
      fi
    fi

    printf "%s " "${source_file%.txt}"
    process_sourcefile "${SRC}" "${DEST}"
    printf "%s\n" "$(wc -l "${DEST}" |awk '{print $1}')"
    sleep 2
  else
    echo "Could not find $SRC"
  fi
done
