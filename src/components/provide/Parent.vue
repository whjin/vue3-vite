<template>
  <div class="parent-wrapper">
    <input type="text" v-model="inputVal">
    <Child />
    <Refs ref="msgRef" :message="message" @change="msgChange"></Refs>
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

let message = ref('初始message，点击变更');

const msgChange = (msg) => {
  message.value = msg;
  
};

onMounted(() => {
  msgRef.value.btn();
})

</script>

<style></style>
