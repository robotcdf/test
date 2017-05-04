#!/bin/bash
CUR_DIR=$(pwd)
cd /home/robot/idao/test/

git pull origin master
echo "pull done----------->>>>>>>>>" 

git add $(git ls-files -o)
git add $(git ls-files -m)
git rm  --ignore-unmatch [--] $(git ls-files -d)

echo "git status:"
git status

echo "Please enter the commit message:"   
read COMMIT_MESSAGE

if [ "x$COMMIT_MESSAGE" == "x" ] ; then
#COMMIT_MESSAGE = "some update"
export COMMIT_MESSAGE="some update"
    echo "${COMMIT_MESSAGE}"
fi

echo "commiting------->>>>>>>>>>"
git commit -m "${COMMIT_MESSAGE}"

echo "pushing--------->>>>>>>>>"
git push origin master

cd $CUR_DIR

echo "push done------->>>>>>>>>"
