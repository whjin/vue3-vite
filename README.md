# Vue 3 + Vite

### 根目录下新建deploy.sh
```
#!/usr/bin/env sh

# 发生错误时终止
set -e

# 构建
npm run build

# 进入构建文件夹
cd dist

# 如果你要部署到自定义域名
# echo 'www.example.com' > CNAME

git init
git checkout -b main
git add -A
git commit -m 'deploy'

# 如果你要部署在 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# 如果你要部署在 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:whjin/vue-vite-app.git main:gh-pages

cd -
```

### 配置vite.config.js 

```
export default defineConfig({
  base: './',
});
```

### 配置index.html

```
<link rel="icon" type="image/svg+xml" href="./vite.svg" />

<script type="module" src="./src/main.js"></script>
```