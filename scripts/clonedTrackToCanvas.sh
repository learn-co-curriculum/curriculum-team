# This script is designed to take a folder of local repositories, iterate through each repo, and create a Canvas lesson or assignment using github-to-canvas
# Example: bash githubToCanvas.sh post-grad 154   - this will use the post-grad folder and pass 154 as the course id
# Requires github-to-canvas gem

if [ $# -eq 0 ] || [ $# -eq 1 ]
  then
    echo "Two arguments required - the folder name to iterate through and the canvas course id"
    echo "Example: bash githubToCanvas.sh post-grad 154"
    exit 1
fi


REPOS=$PWD/$1/*

cd $1

for r in $REPOS
do

  cd $r
  git checkout -b 'wip-canvas-branch'
  git checkout 'wip-canvas-branch'
  
  if [[ $r == *"discussion"* ]]; then
    github-to-canvas -c $2 -srl -b 'wip-canvas-branch' -t discussion
  else
    github-to-canvas -c $2 -srl -b 'wip-canvas-branch'
  fi
  
  # Avoid limits with sleep for large amounts of repos
  sleep 5;
done



