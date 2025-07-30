#!/bin/bash
cd ~/minosoft
git log -1 --format="%cd" --date=iso > _includes/last_update.txt
#git log -1 --format="%ad" --date=format:"%d/%m/%Y" > _includes/last_update.txt
