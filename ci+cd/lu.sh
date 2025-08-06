#!/bin/bash
cd ~/minosoft
#git log -1 --format="%cd" --date=iso > _includes/last_update.txt
#git log -1 --format="%ad" --date=format:"%d/%m/%Y" > _includes/last_update.txt

# Récupère la date du dernier commit
last_update=$(git log -1 --format="%cd" --date=iso)

# Met à jour _config.yml avec cette date
sed -i "s/^last_update: .*/last_update: \"$last_update\"/" _config.yml
