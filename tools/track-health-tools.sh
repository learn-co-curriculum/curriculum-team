# Written for Bash, usable in Zsh
# By Robert Cobb (robert.cobb@flatironschool.com)

function hub-gh-token() {
  local token=$(cat ~/.config/hub | grep token | cut -d ' ' -f 4)
  [ -n "$token" ] && echo "$token" || >&2 echo "No hub token found, need to configure hub's token"
}

function gh-rate-limit-check() {
  command -v jq
  if [ $? -ne 0 ]
  then
    echo "Must have the `jq` program installed exist" >&2
  fi
  curl -s -H "Authorization: token $(hub-gh-token)" -X GET https://api.github.com/rate_limit | jq '.rate.remaining'
}

function git-check-remote() {
  local UPSTREAM=${1:-'@{u}'}
  local LOCAL=$(git rev-parse @)
  local REMOTE=$(git rev-parse "$UPSTREAM")
  local BASE=$(git merge-base @ "$UPSTREAM")

  if [ $LOCAL = $REMOTE ]; then
    true
  elif [ $LOCAL = $BASE ]; then
    echo "Need to pull"
  elif [ $REMOTE = $BASE ]; then
    echo "Need to push"
  else
    echo "Diverged"
  fi
}

function git-check-status() {
  git remote update &>/dev/null
  local status=$(git-check-remote)
  local pwd=$(pwd)
  local dir=$(basename "$pwd")
  [ -n "$status" ] && echo "$dir: $status";
}

function check-track-git-status() {
  local pwd=$(pwd)
  for f in $(ls);
  do
    cd $f && git-check-status;
    cd "$pwd";
  done
  cd "$pwd";
}

function get-last-commit-sha() {
  local reponame=$1
  curl -H "Authorization: token $(hub-gh-token)" -s "https://api.github.com/repos/${reponame}/commits"  | jq ".[0].sha" 2>&1
}

function check-for-misalignment() {
  local default_org="learn-co-curriculum"
  local students_org="learn-co-students"
  local repo_shortname="$1"
  local downstream_org="$2"
  local canonical_sha=$(get-last-commit-sha "${default_org}/${repo_shortname}")
  local downstream_sha=$(get-last-commit-sha "${students_org}/${repo_shortname}-${downstream_org}")
  if [ $canonical_sha != $downstream_sha ]
  then
    echo "${repo_shortname} is out of sync! ${canonical_sha} versus ${downstream_sha}"
  else
    echo "${repo_shortname} is synchronized at ${canonical_sha}"
  fi
}

function check-for-misalignment-lcc() {
  local default_org="learn-co-curriculum"
  local students_org="learn-co-curriculum"
  local repo_shortname="$1"

  local canonical_sha=$(get-last-commit-sha "${default_org}/${repo_shortname}")
  local downstream_sha=$(get-last-commit-sha "${students_org}/phrg-${repo_shortname}")

  if [ "$(echo $canonical_sha|cut -c1-9)" == 'jq: error' ] || [ "$(echo $downstream_sha|cut -c1-9)" == 'jq: error' ]
  then
    echo "[UNIQSHA] ${repo_shortname} was not replicated"
  elif [ $canonical_sha != $downstream_sha ]
  then
    echo "[UNSYNC] phrg-${repo_shortname} [${canonical_sha}:${downstream_sha}]"
  else
    echo "[SYNC] ${repo_shortname}"
  fi
}
