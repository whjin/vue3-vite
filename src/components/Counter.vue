<template>
  <div class="counter-wrapper">
    <div>普通属性：{{num}}</div>
    <button @click="add">计数（ref）</button>
    <div>计算属性：{{computedNum}}</div>
    <button @click="computedAdd">计数（computed）</button>

    <div>{{ watchNum }}</div>
    <button @click="watchNum++">计数（watch）</button>
  </div>
</template>

<script setup>
import { ref, computed, watch } from "vue";

let num = ref(0);
const add = () => {
  num.value++;
};

let computedNum = computed({
  get: () => {
    return num.value;
  },
  set: val => {
    num.value = val;
  }
});
const computedAdd = () => {
  computedNum.value = 100;
};

let watchNum = ref(0);
watch(watchNum, () => { })
</script>

<style></style>
