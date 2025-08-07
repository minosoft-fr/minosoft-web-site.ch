#!/bin/bash
cd ~/minosoft
yaml=_config.yml
# increase build version
major=$(grep 'major:' $yaml | awk '{print $2}')
minor=$(grep 'minor:' $yaml | awk '{print $2}')
patch=$(grep 'patch:' $yaml | awk '{print $2}')
build=$(grep 'build:' $yaml | awk '{print $2}')
echo "prev version = $major.$minor.$patch.$build"
next_build=$((build + 1))
echo "next version = $major.$minor.$patch.$next_build"
sed -i "s/build: $build/build: $next_build/" $yaml
# end
echo done!
