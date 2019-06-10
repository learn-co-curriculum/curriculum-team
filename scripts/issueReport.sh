if [ $# -eq 0 ]
  then
    echo "One argument required - the folder name containing repos to check for issues and PRs"
    exit 1
fi

REPOS=$PWD/$1/*

cd $1

for r in $REPOS
do

  cd $r

  issues=$(hub issue --include-pulls -f "%sC%>(8)%i%Creset  %<(25)%t %U%n")
  if [ -n "$issues" ]; then
    echo "Issues and PRs for ${PWD##*/}:"
    echo "$issues"
    sleep 1;
  fi

done



