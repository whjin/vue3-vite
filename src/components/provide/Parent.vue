<template>
  <div class="parent-wrapper">
    <input type="text" v-model="inputVal">
    <Child />
    <Refs ref="msgRef"></Refs>
  </div>
</template>

<script setup>
import { provide, ref, onMounted } from 'vue';
import Child from "./Child.vue";
import Refs from "./Refs.vue";

provide('msg', "hello vue3");

let inputVal = ref("vue3");

provide('inputVal', inputVal);

const msgRef = ref(null);
onMounted(() => {
  msgRef.value.btn();
})

</script>

<style></style>
