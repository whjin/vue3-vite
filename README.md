# Vue3 + Vite

## Node 版本

> 20.9.0

## 配置 vite.config.js

```vite.config.js
export default defineConfig(({ mode }) => {
  return {
    base: mode == 'production' ? '/vite-vue3/' : './',
    plugins: [
      vue(),
    ],
    resolve: {
      alias: {
        '@': fileURLToPath(new URL('./src', import.meta.url))
      }
    }
  };
});
```

## 部署

```sh
npm install -D gh-pages

package.json 配置 "deploy": "gh-pages -d dist"

npm run build
npm run deploy
```

## 配置 index.html

```html
<link rel="icon" href="/favicon.ico" />

<script type="module" src="/src/main.js"></script>
```

## docx-preview 配置参数

|            参数             |  类型   | 默认值 | 说明                |
| :-------------------------: | :-----: | :----: | ------------------- |
|          className          | string  | 'docx' | 自定义 CSS 类名前缀 |
|          inWrapper          | boolean |  true  | 是否包裹内容        |
|         ignoreWidth         | boolean | false  | 忽略页面宽度        |
|        ignoreHeight         | boolean | false  | 忽略页面高度        |
|         ignoreFonts         | boolean | false  | 忽略字体定义        |
|         breakPages          | boolean |  true  | 是否分页            |
| ignoreLastRenderedPageBreak | boolean |  true  | 是否分页标签        |
|        renderHeaders        | boolean |  true  | 渲染页眉            |
|        renderFooters        | boolean |  true  | 渲染页脚            |
|       renderFootnotes       | boolean |  true  | 渲染脚注            |
|       renderEndnotes        | boolean |  true  | 渲染尾注            |
|       renderComments        | boolean | false  | 渲染批注            |
|        useBase64URL         | boolean | false  | base64 图片资源     |
|      useMathMLPolyfill      | boolean | false  | 公式补丁            |
|        experimental         | boolean | false  | 启用制表符实验功能  |
|     trimXmlDeclaration      | boolean |  true  | 去除 XML 声明头     |
|            debug            | boolean | false  | 调试模式            |
