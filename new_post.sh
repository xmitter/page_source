#!/bin/bash

date=`date +"%F %R"`
text="$(cat <<EOF
TITLE: $1
DATE: $date
-------------------------
EOF
)"


if [ -e $1 ]; then
  echo "File $1 already exists!"
else
  echo "$text" >> content/post/$1.txt
fi
