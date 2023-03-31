<template>
  <div class="child-wrapper">
    <div>接收父组件数据：<span>{{ msg }}</span></div>
    <div>接收父组件响应数据：<span>hello {{ inputVal }}</span></div>
  </div>
</template>

<script setup>
import { inject } from 'vue';

let msg = inject('msg');
let inputVal = inject('inputVal');
</script>

<style></style>
