<script setup>
import Slider from 'primevue/slider';
import { ref, onMounted } from "vue"
import axios from 'axios';

const scenes = ref([{ name: "All On", levels: [100, 100, 20, 33, 0, 100, 50, 60, 70, 90, 100, 100] }]);
const selectedSet = ref(0);


let shouldWait = false
let waitingArgs

function throttle(cb, delay = 1000) {
    const timeoutFunc = () => {
        if (waitingArgs == null) {
            shouldWait = false
        } else {
            cb(...waitingArgs)
            waitingArgs = null
            setTimeout(timeoutFunc, delay)
        }
    }

    return (...args) => {
        if (shouldWait) {
            waitingArgs = args
            return
        }

        cb(...args)
        shouldWait = true
        setTimeout(timeoutFunc, delay)
    }
}

function slideChange(i){
    axios.put(`${window.device_url}api/channel/${i}/${scenes.value[selectedSet.value].levels[i]}`);
    console.log(`${window.device_url}api/channel/${i}/${scenes.value[selectedSet.value].levels[i]}`);

}

</script>
<template>
    <div class="flex">
        <div v-for="scene, i in scenes[selectedSet].levels" style="width:40px;display:inline-block;text-align: center;">
            <Slider orientation="vertical" v-model="scenes[selectedSet].levels[i]" @change="(function () {
                throttle(slideChange,40)(i);
            })()" style="height:255px;padding:30%" />
            <div style="padding:5px;text-align:left;color:#888">{{ i + 1 }}</div>
        </div>
    </div>

</template>
<style scoped></style>