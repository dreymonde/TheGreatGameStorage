#!/bin/bash

swift build --chdir ../Generator/
../Generator/.build/debug/Generator
git add -A
git commit -m "New edition"
