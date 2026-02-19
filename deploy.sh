#!/usr/bin/env sh

# 构建
npm run build

cd dist

cp index.html 404.html

# 提交main主分支
git add -A
git commit -m "提交更新main分支"
git push origin main

git push -f git@github.com:whjin/vue3-vite.git main:gh-pages

cd -

# 按任意键关闭
echo "按任意键关闭"
read -n 1

# 关闭sh脚本
exit 0