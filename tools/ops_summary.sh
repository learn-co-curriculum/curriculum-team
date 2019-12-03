#!/usr/bin/env bash

# Important note: Make sure you're using sgharms' fork of github/hub
# so that you have the -r flag. Integration to github/hub is pending.

if [ -z "$1" ]
then
  SEARCH_DIR="${PWD}"
else
  SEARCH_DIR="$1"
fi

SOURCE_FILES="prework_repos.txt mod1_repos.txt pfwtfp_repos.txt mod2_repos.txt mod3_1_repos.txt mod4_repos.txt v7_repos.txt v8_repos.txt"

process_sourcefile () {
  cat "$1" |hub  issue -r STDIN -f '* [%ct][%au]: %t %U%n' > "$2" 2>&1
}

for source_file in $SOURCE_FILES
do
  SRC="${SEARCH_DIR}/${source_file}"
  DEST="${SRC%_repos.txt}_issues.md"

  if [ -f "${SRC}" ]
  then
    process_sourcefile "${SEARCH_DIR}/${source_file}" "${DEST}"
    echo "${source_file} $(grep http ${DEST} | wc -l |awk '{print $1}')"
  else
    echo "Could not find ${SEARCH_DIR}/${source_file} | $SRC"
  fi
done
