#!/bin/bash

date=`date +"%F %R"`
header=$(cat <<EOF
TITLE: $1
DATE: $date
-------------------------
EOF
)

makefileadd="\t$1 \ "

if [ -e $1 ]; then
  echo "File $1 already exists!"
else
  echo "$header" >> content/post/$1.txt
  printf "\n Created file at content/post/$1.txt \n"
  printf "\"$makefileadd\" will be added to the Makefile \n"
#  sed '/POSTS = \\/r \n\t$makefileadd\n' Makefile
fi
