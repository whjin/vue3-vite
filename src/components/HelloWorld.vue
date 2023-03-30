<template>
	<h1>{{ msg }}</h1>
</template>

<script setup>
import { ref } from 'vue';

defineProps({
	msg: String,
});

</script>

<style scoped>
.read-the-docs {
	color: #888;
}
</style>
