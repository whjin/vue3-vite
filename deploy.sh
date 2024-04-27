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
cd dist

# 提交gh-pages主分支
git add .
git commit -m "提交部署gh-pages分支"
git push origin gh-pages

# 退出
cd -

