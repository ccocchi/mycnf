#! /bin/bash

git fetch --prune 2>&1 > /dev/null | grep '\[deleted\]' | awk '{print $5}' | sed 's/origin\///' | xargs git branch -D
echo 'Done'
