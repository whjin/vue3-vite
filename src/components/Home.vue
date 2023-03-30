<template>
  <div class="home-container">
    <div class="home-wrapper">
      <div class="item-box">
        <Counter />
      </div>
      <div class="item-box">
        <Student />
      </div>
      <div class="item-box">
        <Parent />
      </div>
    </div>
  </div>
</template>

<script setup>
import Counter from "./Counter.vue";
import Student from "./student/Student.vue";
import Parent from "./provide/Parent.vue"
</script>

<style lang="less">
</style>
