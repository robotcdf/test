#!/bin/bash
CUR_DIR=$(pwd)
cd /home/robot/idao/test/

git pull origin master
git add $(git ls-files -o)
git add $(git ls-files -m)
git rm  --ignore-unmatch [--] $(git ls-files -d)

echo "git status:"
git status

echo "Please enter the commit message:"   
read COMMIT_MESSAGE

if [ "$COMMIT_MESSAGE" == "" ] ; then
    COMMIT_MESSAGE = "some update"
fi

echo "commiting------->>>>>>>>>>"
git commit -m "${COMMIT_MESSAGE}"

echo "pushing--------->>>>>>>>>"
git push origin master

cd $CUR_DIR

echo "push done------->>>>>>>>>"
