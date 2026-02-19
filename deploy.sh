#!/usr/bin/env sh

# 发生错误时终止
set -e

# 构建
echo "开始构建项目..."
npm run build
echo "项目构建完成！"

# 提交main主分支
echo "提交main主分支..."
git pull origin main
git add .
git commit -m "提交更新main分支"
git push origin main
echo "main主分支提交完成！"

# 检查gh-pages分支是否存在，如果不存在则创建
if git show-ref --verify --quiet refs/heads/gh-pages; then
    echo "gh-pages分支已存在"
else
    echo "创建gh-pages分支..."
    git checkout -b gh-pages --orphan
    git rm -rf .
    touch .gitkeep
    git add .gitkeep
    git commit -m "初始化gh-pages分支"
    git push origin gh-pages
    git checkout main
    echo "gh-pages分支创建完成！"
fi

# 切换到gh-pages分支
echo "切换到gh-pages分支..."
git checkout gh-pages

# 删除除了.git目录和.gitignore之外的所有文件
echo "清理gh-pages分支内容..."
find . -maxdepth 1 ! -name ".git" ! -name ".gitignore" ! -name "." -exec rm -rf {} \;

# 复制dist目录下的所有文件到当前目录
echo "复制构建后的文件到gh-pages分支..."
cp -r dist/* .

# 提交gh-pages分支
echo "提交gh-pages分支..."
git add .
git commit -m "提交部署gh-pages分支"
git push origin gh-pages
echo "gh-pages分支提交完成！"

# 切换回main分支
echo "切换回main分支..."
git checkout main

# 按任意键关闭
echo "按任意键关闭"
read -n 1

# 关闭sh脚本
exit 0