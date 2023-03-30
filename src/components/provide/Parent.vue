<template>
  <div class="parent-wrapper">
    <input type="text" v-model="inputVal">
    <Child />
  </div>
</template>

<script setup>
import { provide, ref } from 'vue';
import Child from "./Child.vue";

provide('msg', "hello vue3");

let inputVal = ref("vue3");

provide('inputVal', inputVal)

</script>

<style></style>
