<script setup>
import { reactive, ref, onMounted, watch } from "vue"
import ColorPreview from "../components/ColorPreview.vue"
import Toolbar from 'primevue/toolbar';
import Dialog from 'primevue/dialog';
import { useConfirm } from "primevue/useconfirm";
import axios from 'axios';
import { useToast } from 'primevue/usetoast';

//-------------------------------------------------------  REACTIVE
const confirm = useConfirm();
const toast = useToast();

const hasUnsavedChanges = ref(false);
const selectedSet = ref(-1);
const selectedScene = ref(-1);
const dialogVisible = ref(false)
var oldName = null;
const inputRef = ref(null)


const colorsets = ref([{ name: "Rot", colors: ['ff0000', 'ff0000', 'ff0000', 'ff0000', 'ff0000', 'ff0000'] }]);


function editSetClick(theSet) {
    if (!hasUnsavedChanges.value) { editSet(theSet); } else {

        confirm.require({
            message: 'Wenn du weitermachst gehen die Einstellungen erloren. Bist du sicher?',
            header: 'Ungesicherte Änderungen',
            icon: 'pi pi-exclamation-triangle',
            rejectClass: 'p-button-secondary p-button-outlined',
            rejectLabel: 'Nein',
            acceptLabel: 'Ja',
            accept: () => {
                editSet(theSet);
            },
            reject: () => {
            }
        });
    }

}


function editSet(theSet) {
    axios.get(window.device_url + 'api/colorset/load/' + theSet, { timeout: 5000 }).then(function (response) {
        //console.log(response);
        hasUnsavedChanges.value = false;
    })
    selectedSet.value = theSet;
    hasUnsavedChanges.value = false;
}

function addColorset() {
    hasUnsavedChanges.value = true;
    colorsets.value.push({ name: "Rot", colors: ['ff0000', 'ff0000', 'ff0000', 'ff0000', 'ff0000', 'ff0000'] })
    selectedSet.value = colorsets.value.length - 1;
}

function removeColorset() {
    confirm.require({
        message: 'Bist du sicher?',
        header: 'Farbeinstellung löschen?',
        icon: 'pi pi-exclamation-triangle',
        rejectClass: 'p-button-secondary p-button-outlined',
        rejectLabel: 'Nein',
        acceptLabel: 'Ja',
        accept: () => {
            colorsets.value.splice(selectedSet.value, 1)
            selectedSet.value = selectedSet.value - 1;
            hasUnsavedChanges.value = true;
        },
        reject: () => {
        }
    });

}

function editName() {
    oldName = colorsets.value[selectedSet.value].name;
    hasUnsavedChanges.value = true;

    dialogVisible.value = true;
    setTimeout(() => {
        document.getElementById("colorSetName").focus()
    }, 100);


}

function cancelEditName() {
    colorsets.value[selectedSet.value].name = oldName;
    dialogVisible.value = false;

}

function saveSet() {
    axios.put(window.device_url + 'api/colorsets', {
        params: colorsets.value, timeout: 2000
    })
        .then(function (response) {
            console.log(response);
            hasUnsavedChanges.value = false;
            toast.add({ severity: 'success', summary: "Colorsets updated", life: 1000 });
        })
        .catch(function (error) {
            console.log(error);
            toast.add({ severity: 'error', summary: 'An error occured', detail: error, life: 4000 });
        })
}


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

let shouldWait = false
let waitingArgs

function loadscene(theSet) {
    axios.get(window.device_url + 'api/scene/load/' + theSet, { timeout: 5000 });
}

function colorchange(i) {
    //     axios.put(`${window.device_url}api/color/${i}/${c}`);

    axios.put(`${window.device_url}api/color/${i}/${colorsets.value[selectedSet.value].colors[i]}`);
    hasUnsavedChanges.value = true;

    //console.log(`${window.device_url}api/color/${i}/${colorsets.value[selectedSet.value].colors[i]}`);

}
function refresh() {
    axios.get(window.device_url + 'api/status', { timeout: 2000 }).then(function(response){
        selectedScene.value = response.data.scene;
        selectedSet.value = response.data.colors;
    })
    setTimeout(refresh, 2000);
    // ...
}


onMounted(() => {

    axios.get(window.device_url + 'api/colorsets', { timeout: 5000 })

        .then(function (response) {
            try {
                var m = response.data[0].colors.length
                if (m > 5) {
                    //console.log(response.data)
                    colorsets.value = response.data
                }

                setTimeout(refresh, 2000);
            } catch (e) {
                toast.add({ severity: 'error', summary: 'An error occured', detail: e, life: 4000 });
            }


        })
})

</script>

<template>
    <div class="swatch-container">
        <div id="swatchpanel">
            <div v-if="selectedSet > -1">
                <div style="display:inline-block" v-for="color, i in colorsets[selectedSet].colors">
                    <ColorPicker @change="(function () {
                        throttle(colorchange, 40)(i);
                    })()" v-model="colorsets[selectedSet].colors[i]" inline />
                </div>

            </div>
        </div>
        <div id="buttonpanel">


            <Button @click="editSetClick(i)" @dblclick="editName" style="width:99%;margin:2px;"
                :severity="selectedSet == i ? 'info' : 'secondary'" v-for="colorset, i in colorsets">
                <ColorPreview :colorset="colorset" />
            </Button>



        </div>


    </div>
    <Toolbar>
        <template #start>
            <Button :disabled=!hasUnsavedChanges @click="saveSet()" severity="secondary"><i class="pi pi-save"
                    style="font-size: 1.5rem"></i></Button>
        </template>
        <template #end>
            <Button @click="removeColorset" v-if="selectedSet > -1" severity="secondary"><i class="pi pi-trash"
                    style="font-size: 1.5rem"></i></Button>
            <Button @click="addColorset" severity="secondary" v-if="colorsets.length < 11"><i class="pi pi-plus-circle"
                    style="font-size: 1.5rem"></i></Button>
        </template>
    </Toolbar>
    {{ hasUnsavedChanges }}
    <div class="swatch-container" style="margin-top: 2em;">
        <Button class="bigBtn" :severity="selectedScene == 0 ? 'info' : 'secondary'" @click="loadscene(0)">Konserve</Button>
        <Button class="bigBtn" :severity="selectedScene == 1 ? 'info' : 'secondary'" @click="loadscene(1)">Live</Button>
    </div>





    <Dialog v-model:visible="dialogVisible" modal header="Namen ändern" :style="{ width: '25rem' }">
        <span class="p-text-secondary block mb-5">Neuer Name</span>
        <div class="flex align-items-center gap-3 mb-3">
            <label for="colorSetName" class="font-semibold w-6rem">Name</label>
            <InputText ref="inputRef" id="colorSetName" v-model="colorsets[selectedSet].name" class="flex-auto"
                autocomplete="off" />
        </div>
        <div class="flex justify-content-end gap-2">
            <Button type="button" label="Zurück" severity="secondary" @click="cancelEditName()"></Button>
            <Button type="button" label="Ok" @click="dialogVisible = false"></Button>
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

.bigBtn {
    width: 50%;
    text-align: center;
    margin: 8px;
}
</style>