<template>
  <div class="refs-wrapper">
    <p>{{ msg }}</p>
    <div>
      <span>监听值：{{ num }}</span>
      <span>响应值：{{ watchNum }}</span>
    </div>
    <button @click="watchEffectBtn">watchEffect数据监听</button>
    <button @click="messageChange">{{ message }}</button>
  </div>
</template>

<script setup>
import { ref, watchEffect } from "vue";

let msg = ref("Hello Vue3 Ref");

const btn = () => {
  setTimeout(() => {
    msg.value = "Hello Vue3 Component Ref";
  }, 3000);
};

defineExpose({
  msg, btn
});

let num = ref(0);
let watchNum = ref(0);
const watchEffectBtn = () => {
  num.value++;
};
watchEffect(() => {
  watchNum.value = num.value + 2;
});

defineProps({
  message: String,
});

const emit = defineEmits(['change']);

const messageChange = () => {
  emit('change', '变更message，defineEmits');
}

</script>

<style></style>
