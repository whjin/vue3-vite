<template>
  <div class="about-container">
    <main>
      <Test :title="title" @change-title="onChangeTitle" />
    </main>
  </div>
</template>

<script>
import { ref, reactive } from "vue";
import Test from './Test.vue';

export default {
  components: {
    Test,
  },
  setup (props) {
    const title = ref("Vue2");

    function onChangeTitle () {
      title.value = "Vue3";
    }

    return {
      title,
      onChangeTitle
    };
  },
};
</script>

<style lang="less"></style>
