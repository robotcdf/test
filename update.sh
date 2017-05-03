#!/bin/sh

git pull origin master
git add $(git ls-files -o)
git add $(git ls-files -m)
git rm  --ignore-unmatch [--] $(git ls-files -d)


#MESSAGE="$($*)"
#git commit -m $MESSAGE
git commit -m "$*"
git push origin master
