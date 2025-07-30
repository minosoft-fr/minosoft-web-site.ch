#!/bin/bash
cd ~/minosoft/ci+cd
./lu.sh
cd ~/minosoft
bundle exec jekyll serve --baseurl ''
