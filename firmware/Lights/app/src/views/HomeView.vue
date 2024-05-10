<script setup>
import { reactive, ref } from "vue"
import ColorPreview from "../components/ColorPreview.vue"
import Toolbar from 'primevue/toolbar';
import Dialog from 'primevue/dialog';
import { useConfirm } from "primevue/useconfirm";

//-------------------------------------------------------  REACTIVE
const confirm = useConfirm();

const selectedSet = ref(0);
const dialogVisible = ref(false)
var oldName = null;
const inputRef = ref(null)


const colorsets = ref([{
    name: 'John Doe',
    colors: ['ff0033', '00dddd', 'dd66ff', 'ff0000', '00dddd', 'dd66ff']
}, {
    name: 'Schnabi Du',
    colors: ['000033', '00dd00', 'dd66ff', 'ff00ff', '0000ff', '00dd00']
}])

function editSet(theSet) {
    selectedSet.value = theSet;
}

function addColorset() {
    colorsets.value.push({ name: "Rot", colors: ['ff0000', 'ff0000', 'ff0000', 'ff0000', 'ff0000', 'ff0000'] })
    selectedSet.value = colorsets.value.length - 1;
}

function removeColorset() {
    confirm.require({
        message: 'Are you sure you want to proceed?',
        header: 'Delete Colorset?',
        icon: 'pi pi-exclamation-triangle',
        rejectClass: 'p-button-secondary p-button-outlined',
        rejectLabel: 'Cancel',
        acceptLabel: 'Delete',
        accept: () => {
            colorsets.value.splice(selectedSet.value, 1)
            selectedSet.value = selectedSet.value - 1;
        },
        reject: () => {
        }
    });

}

function editName() {
    oldName = colorsets.value[selectedSet.value].name;
    dialogVisible.value = true;    
    setTimeout(() => {
        document.getElementById("colorSetName").focus()
    }, 100);

   
 }

function cancelEditName() {
    colorsets.value[selectedSet.value].name = oldName;
    dialogVisible.value = false;

}

</script>

<template>
    <div class="swatch-container">
        <div id="swatchpanel">
            <div v-if="selectedSet > -1">
                <div style="display:inline-block" v-for="color, i in colorsets[selectedSet].colors">
                    <ColorPicker v-model="colorsets[selectedSet].colors[i]" inline />
                </div>

            </div>
        </div>
        <div id="buttonpanel">


            <Button @click="editSet(i)" @dblclick="editName" style="width:99%;margin:2px;"
                :severity="selectedSet == i ? 'info' : 'secondary'" v-for="colorset, i in colorsets">
                <ColorPreview :colorset="colorset" />
            </Button>



        </div>


    </div>
    <Toolbar>
        <template #start>
            <Button @click="" severity="secondary"><i class="pi pi-save"
                    style="font-size: 1.5rem"></i></Button>
        </template>
        <template #end> 
            <Button @click="removeColorset" v-if="selectedSet > -1" severity="secondary"><i class="pi pi-trash"
                    style="font-size: 1.5rem"></i></Button>
            <Button @click="addColorset" severity="secondary"  v-if="colorsets.length < 11"><i class="pi pi-plus-circle"
                    style="font-size: 1.5rem"></i></Button>
        </template>
    </Toolbar>

    <div class="swatch-container" style="margin-top: 2em;">
        <Button class="bigBtn" severity="secondary">Konserve</Button>       <Button class="bigBtn" severity="info">Live</Button>
    
    </div>

    


   
    <Dialog v-model:visible="dialogVisible" modal header="Edit colorSetName" :style="{ width: '25rem' }">
        <span class="p-text-secondary block mb-5">Enter a new name</span>
        <div class="flex align-items-center gap-3 mb-3">
            <label for="colorSetName" class="font-semibold w-6rem">Name</label>
            <InputText ref="inputRef" id="colorSetName" v-model="colorsets[selectedSet].name" class="flex-auto" autocomplete="off" />
        </div>
        <div class="flex justify-content-end gap-2">
            <Button type="button" label="Cancel" severity="secondary" @click="cancelEditName()"></Button>
            <Button type="button" label="Save" @click="dialogVisible = false"></Button>
        </div>
    </Dialog>
</template>
<style scoped>
.swatch-container {
    display: flex;
    background: #18181b;
    border: 1px solid #3f3f46;
    border-radius: 6px;
    /*     border: 1px solid yellow;
 */
}

#swatchpanel {
    min-width: 190px;
    max-width: 600px;
    /*     border: 1px solid red;
 */
}

#buttonpanel {
    /*     border: 1px solid red;
 */
    max-width: 380px;

}

.bigBtn {width:50%;text-align: center;margin:8px;}
</style>