#!/usr/bin/env sh

message=""

if ["$1"=""]
then message="New Deployment"
else message=$1

set -e

npm run build

cd docs

# git init
git add -A
git commit -m  "$message"
git push -f https://github.com/kimzerovirus/ediya_clone.git main:gh-pages

cd -