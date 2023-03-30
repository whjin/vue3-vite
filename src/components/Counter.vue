<template>
	<div class="counter">
		<button @click="add">Counter</button>
		<span>{{num}}</span>
	</div>
</template>

<script setup>
import { ref } from "vue";

let num = ref(0);

const add = () => {
	num.value++;
}
</script>

<style scoped>
</style>
