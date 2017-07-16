#!/bin/bash

rm -rf content/complication-pushes
mkdir content/complication-pushes

swift build --chdir ../Generator/
../Generator/.build/debug/Generator "$@"
