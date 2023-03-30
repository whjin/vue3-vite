import { ref } from "vue";

export const stuAddFn = (stuList) => {
    let nameMsg = ref("");

    const addStu = () => {
        if (!!nameMsg.value) {
            const item = { id: stuList.length + 1, name: nameMsg.value };
            stuList.push(item);
            nameMsg.value = "";
        }
    };

    return { nameMsg, addStu };
};