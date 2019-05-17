if [ -d 'spec' ] || [ -d 'test' ]
then
  git co solution > /dev/null
  branch_name=$(git symbolic-ref -q HEAD)
  branch_name=${branch_name##refs/heads/}
  branch_name=${branch_name:-HEAD}
  
  if [ $branch_name != 'solution' ]
  then
    echo '- No solution branch found'
  fi
fi
