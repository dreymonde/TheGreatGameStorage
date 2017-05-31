#!/bin/bash

rm -rf complication-pushes
mkdir complication-pushes

swift build --chdir ../Generator/
../Generator/.build/debug/Generator "$@"
git add -A
git commit -m "New edition"
git push origin master

cd complication-pushes

for file in *.json
do
    echo $file
    ruby ../../Pusher/pusher.rb "$file"
done

cd ..
