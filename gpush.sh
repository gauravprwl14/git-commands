#!/bin/sh

# First parameter will be the commit message
readonly message=$1

# Getting the current branch
readonly currentBranch=$(git symbolic-ref --short -q HEAD)

echo "currentBranch => $currentBranch"

if [ ! -z "$message" ]
then
git add .
git commit -m "$message"
pushResponse = $(git push origin $currentBranch)

echo "Current changes is pushed to $pushResponse"
else
echo "Please provide commit message"
fi