#!/usr/bin/env sh

# 发生错误时终止
set -e

# 构建
npm run build

# 提交main主分支
git add .
git commit -m "提交更新main分支"
git push origin main

# 进入dist文件夹
cd "./dist"

ls

# 提交gh-pages主分支
git add .
git commit -m "提交部署gh-pages分支"
git push origin gh-pages

# 任意键退出
echo "按任意键关闭"
read -n 1

# 关闭sh脚本
exit 0

