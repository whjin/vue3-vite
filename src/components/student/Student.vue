<template>
  <div class="student-wrapper">
    <input type="text" v-model="nameMsg" />
    <button @click="addStu">新增</button>
    <ul>
      <li v-for="item in stuList" :key="item.id">
        {{item.id}}--{{item.name}}
      </li>
    </ul>
  </div>
</template>

<script setup>
import { stuListFn } from "./stuList";
import { stuAddFn } from './stuAdd';

let stuList = stuListFn();
const { nameMsg, addStu } = stuAddFn(stuList);
</script>

<style></style>
