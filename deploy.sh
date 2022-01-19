#!/usr/bin/env sh

set -e

npm run build

cd docs

# git init
git add -A
git commit -m  'New Deployment'
git push -f https://github.com/kimzerovirus/ediya_clone.git main:gh-pages

cd -