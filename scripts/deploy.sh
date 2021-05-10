# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd example/public

# 添加自定义域名
echo 'xiaoqi.live' > CNAME

# commit 代码
git init
git add -A
date=`date +%Y-%m-%d_%H:%M:%S`
git commit -m "deploy ${date}"

# 发布到 github
git push -f git@github.com:qianxiaoqi/qianxiaoqi.github.io.git master:gh-pages

# 删除打包后的文件夹
cd ../../
rm -rf example/public