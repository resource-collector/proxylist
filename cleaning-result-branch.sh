#!/bin/bash
rm -rf .git
git init
git config --global --add safe.directory /github/workspace
git config --local user.email "binsarjr121@gmail.com"
git config --local user.name "binsarjr"
git config --global --add safe.directory /github/workspace
# echo "*" > .gitignore
# echo "!*.txt" >> .gitignore
# echo "!countries" >> .gitignore

find . ! -name '*.txt' -type f -exec rm -f {} +

git add -A

d=`date '+%Y-%m-%dT%H:%M:%SZ'`
git commit -m "$d"