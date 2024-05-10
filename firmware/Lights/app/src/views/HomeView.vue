<script setup>
import { reactive, ref } from "vue"
import ColorPreview from "../components/ColorPreview.vue"
import Splitter from 'primevue/splitter';
import SplitterPanel from 'primevue/splitterpanel';
import Toolbar from 'primevue/toolbar';

const selectedSet = ref(-1);

const colorsets = ref([{
    name: 'John Doe',
    colors: ['ff0033', '00dddd', 'dd66ff', 'ff0000']
}, {
    name: 'Schnabi Du',
    colors: ['000033', '00dd00', 'dd66ff', 'ff00ff', '0000ff']
}])

function editSet(theSet) {
    selectedSet.value = theSet;
}

function addColorset() {
    colorsets.value.push({ name: "Rot", colors: ['ff0000', 'ff0000', 'ff0000', 'ff0000'] })
    selectedSet.value = colorsets.value.length -1;
}

function removeColorset() {
    colorsets.value.splice(selectedSet.value,1)
    selectedSet.value = selectedSet.value -1;
}

</script>

<template>

    <Splitter style="height: 50%">
        <SplitterPanel class="flex align-items-center justify-content-center" :size="75">
            <div v-if="selectedSet > -1">
                <div style="display:inline-block" v-for="color, i in colorsets[selectedSet].colors">
                    <ColorPicker v-model="colorsets[selectedSet].colors[i]" inline />
                </div>
               
            </div>
        </SplitterPanel>
        <SplitterPanel class="flex align-items-center justify-content-center" :size="25" :minSize="10">
            <Button @click="editSet(i)" style="width:96%;margin:2%;" :severity="selectedSet == i ? 'info' : 'secondary'"
                v-for="colorset, i in colorsets">
                <ColorPreview :colorset="colorset" />
            </Button>

            
        </SplitterPanel>
    </Splitter>
    <Toolbar>
    <template #start>
        <Button @click="addColorset"><i class="pi pi-plus-circle" style="font-size: 1.5rem"></i></Button>
        <Button @click="removeColorset" v-if="selectedSet > -1"><i class="pi pi-minus-circle" style="font-size: 1.5rem"></i></Button>

    </template>

    <template #center>
        
    </template>

    <template #end>  <input v-if="selectedSet > -1" v-model="colorsets[selectedSet].name" /></template>
</Toolbar>

</template>
<style scoped></style>