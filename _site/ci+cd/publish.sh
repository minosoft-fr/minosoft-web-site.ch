#!/bin/bash
clear
jekyll build
git status
git add .
./lu.sh
# Prompt user for a commit message
read -p "commit message: " msg
git commit -m "$msg"
./ci+cd/lu.sh
git push -u origin master
echo done!
