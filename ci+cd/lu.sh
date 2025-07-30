#!/bin/bash
git log -1 --format="%ad" --date=format:"%d/%m/%Y" > ../_includes/last_update.txt
