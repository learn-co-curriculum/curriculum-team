if [ $# -eq 0 ]
  then
    echo "One argument required - the folder name containing repos to lint"
    exit 1
fi

ORIGINAL=$PWD
REPOS=$PWD/$1/*
FILES=$PWD/linters/*

cd $1

for r in $REPOS
do

  echo ""
  echo "$r:"
  cd $r

  for f in $FILES
  do
    sh $f
  done
  
done
