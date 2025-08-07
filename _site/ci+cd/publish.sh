#!/bin/bash
clear
cd ~/minosoft
# increase build version
./ci+cd/next_version.sh
# build last updates
jekyll build
git status
git add .
read -p "commit message: " msg
git commit -m "$msg"
git push -u origin master
# git last update datetime
./ci+cd/lu.sh
git status
git add .
git commit -m "git last update datetime"
git push -u origin master
# end
echo done!
