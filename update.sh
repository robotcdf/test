#!/bin/sh

git pull origin master
git add $(git ls-files -o)
git add $(git ls-files -m)
git rm  --ignore-unmatch [--] $(git ls-files -d)

echo "git status:"
git status

echo "Please enter the commit message:"   
read MSG
git commit -m "${MSG}"
echo "commiting..."

echo "pushing..."
git push origin master

echo "push done!"
