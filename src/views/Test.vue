<template>
  <div class="test-container">
    <header>
      <RouterLink to="/">Home</RouterLink>
    </header>
    <main>
      <el-button type="primary" id="counter" @click="increment">{{ plusOne }}</el-button>
      <h2 @click="changeTitle">{{ title }}</h2>
    </main>
  </div>
</template>

<script>
import { ref, toRef, toRefs, computed } from 'vue';
import { RouterLink } from 'vue-router';
import { ElButton } from 'element-plus';

export default {
  props: {
    title: String,
  },
  setup(props) {
    const count = ref(0);

    function increment() {
      count.value++;
    }

    const plusOne = computed(() => {
      return count.value;
    });

    const { title } = toRefs(props);
    console.log('1111111111111');

    return { count, plusOne, increment };
  },
  methods: {
    changeTitle() {
      this.$emit('change-title');
    },
  },
};
</script>

<style lang="less"></style>
