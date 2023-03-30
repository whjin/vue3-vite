import { reactive } from "vue";
import studentList from '../../static/mock/studentList.json';

export const stuListFn = () => {
    const stuList = reactive(studentList);
    return stuList;
};