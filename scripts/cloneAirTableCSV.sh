mkdir $1
cd $1
cat ../$1.csv | while IFS="," read -r a b c d e f g; do git clone "$g"; done
