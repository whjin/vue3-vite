# Vue3 + Vite

## Node版本

> 20.9.0

### 配置vite.config.js 

```
export default defineConfig(({ mode }) => {
  return {
    base: mode == 'production' ? '/vue3-vite/' : './',
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

### 配置index.html

```
<link rel="icon" href="/favicon.ico">

<script type="module" src="/src/main.js"></script>
```