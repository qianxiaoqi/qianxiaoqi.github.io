yarn build:example

cd example/public

git init
git add -A
date=`date +%Y-%m-%d_%H:%M:%S`
git commit -m "deploy ${date}"

git push -f git@github.com:qianxiaoqi/qianxiaoqi.github.io.git master

cd ../../
rm -rf example/public

