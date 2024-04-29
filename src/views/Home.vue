<template>
  <div class="home-container">
    <main>
      <RouterLink to="/about">About</RouterLink>
      <RouterLink to="/test">Test</RouterLink>
    </main>
  </div>
</template>

<script setup>
import { ref, reactive } from "vue";
import { RouterLink } from "vue-router";

</script>

<style lang="less"></style>
