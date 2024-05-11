<script setup>
import { reactive, computed } from 'vue';

const props = defineProps(['colorset'])
/* 
const colorset = reactive({
    name: 'John Doe',
    colors: ['ff0033', '00dddd', 'dd66ff', 'ff0000']
}) */

const gradientString = computed(() => {

    const pad = 10;
    var s = `background:linear-gradient(90deg, #${props.colorset.colors[0]}  ${pad}%`
    var percentPerColor = (100 - 2 * pad) / (props.colorset.colors.length - 1)
    for (var i = 1; i < props.colorset.colors.length; i++) {
        s += `, #${props.colorset.colors[i]} ${parseInt(pad + i * percentPerColor)}%`
    }
    s += " );)";
    return s;
})

</script>


<template>
    <div class="colorPreviewButton">
        <div class="colorPreviewPill" :style=gradientString></div>
        <div class="colorPreviewName">{{ props.colorset.name }}</div>
    </div>
</template>


<style scoped>
.colorPreviewPill {
    border: 1px solid black;
    border-radius: 20px;
    padding: 4px;
    position: relatstickyive;
    left:1em;
    width: 120px;
    height: 2em;
    display: inline-block;
}

.colorPreviewName {
    display: inline-block;
    position: sticky;
    left:5px;
/*     border: 1px solid black;
 */margin-left:1em;

}

.colorPreviewButton {
display:flex;
align-items: center;
}
</style>