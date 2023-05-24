#!/bin/bash

commitMessage=$1
currentBranch="$(git rev-parse --abbrev-ref HEAD)"

echo $currentBranch

git add -A
git commit -m "${commitMessage} (${currentBranch})"
git push origin "$currentBranch"