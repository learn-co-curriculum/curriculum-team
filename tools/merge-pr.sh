# merge prs from the command line

# Usage: ./merge-pr.sh pr-url pr-directory

merge_pr() {
  PR_URL="$1"

  if [ -z "$PR_URL" ]; then
    echo "Missing a pr url to merge"
    echo "Usage: merge-pr pr-url [pr-directory]"
    exit
  fi

  if [ -z "$2" ]
  then
    PR_DIR="$(echo "$PR_URL"| cut -f5 -d/)"
  else
    PR_DIR="$2"
  fi

  BACK_HOME=$(pwd)
  cd "$PR_DIR" || (echo "couldn't cd into $PR_DIR" && exit 1)

  echo "merging $PR_URL"

  git checkout master
  git remote prune origin
  BRANCH="$(echo "$PR_URL" |cut -f6,7 -d/)/head"
  if [ -n "$BRANCH" ]; then
    git fetch origin "$BRANCH":pr-to-merge
    git merge pr-to-merge
    git push
    git branch -D pr-to-merge
  else
    echo "couldn't find a valid pr branch"
  fi
  git remote prune origin

  cd "$BACK_HOME" || exit 1
}

# if the input is a file, assume it is a list of prs and merge all of them
if [ -f "$1" ]
then
  while read -r url
  do
    merge_pr "$url"
  done < "$1"
else
  # otherwise, just merge a single url
  merge_pr "$1" "$2"
fi

# TODO: if hub doesn't run out of github API token, then this might work:
# git checkout master
# git pull
# hub merge "$PR_URL"
# git push
# Note: 'hub merge' for already-merged prs emits a scary looking warning, like:
# Error getting pull request: Forbidden (HTTP 403)
# API rate limit exceeded for user ID
# This will stop you from using the script for a while, so
# try to avoid attempting to merge a pr that has already been merged
