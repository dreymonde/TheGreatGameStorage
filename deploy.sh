#!/bin/bash

swift build --chdir ../Generator/
../Generator/.build/debug/Generator

scp -r content/ root@188.226.164.226:/var/www/html

git add -A
git commit -m "New edition"
git push origin master
