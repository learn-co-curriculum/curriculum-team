if [ -d 'spec' ] || [ -d 'test' ]; then
  git co solution --quiet
  branch_name=$(git symbolic-ref -q HEAD)
  branch_name=${branch_name##refs/heads/}
  branch_name=${branch_name:-HEAD}
  
  if [ $branch_name != 'solution' ]
  then
    echo "${PWD##*/} - No solution branch found"
  fi
  git co master --quiet
fi
