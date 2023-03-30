<template>
	<div class="home-container">
		<div class="home-wrapper">
			<div class="item-box counter">
				<div>{{num}}</div>
				<button @click="add">Counter</button>
			</div>
			<div class="item-box">
				<ul>
					<li v-for="item in studentList" :key="item.id">
						{{item.id}}--{{item.name}}
					</li>
				</ul>
			</div>
		</div>
	</div>
</template>

<script setup>
import { ref, reactive } from "vue";
import studentList from "../static/mock/studentList.json";

let num = ref(0);
const stuList = reactive(studentList);
let msg = ref("");

const add = () => {
	num.value++;
};

const addStu = () => {
	const item = { id: stuList.length + 1, name: msg.value };
	stuList.push(item);
	
}
</script>

<style lang="less">
</style>
