<script setup>
import Slider from 'primevue/slider';
import { ref, onMounted } from "vue"
import Toolbar from 'primevue/toolbar';
import Dialog from 'primevue/dialog';
import { useConfirm } from "primevue/useconfirm";
import axios from 'axios';
import { useToast } from 'primevue/usetoast';
const scenes = ref([{ name: "Random", levels: [100, 100, 20, 33, 0, 100, 50, 60, 70, 90, 100, 100] },{ name: "Dull", levels: [2, 2, 2, 3, 0, 55, 1, 2, 3, 4, 6, 7] }]);
const selectedSet = ref(0);

const hasUnsavedChanges = ref(false);
const dialogVisible = ref(false)
var oldName = null;

const confirm = useConfirm();
const toast = useToast();

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

function slideChange(i) {
    hasUnsavedChanges.value = true;
    axios.put(`${window.device_url}api/channel/${i}/${scenes.value[selectedSet.value].levels[i]}`);
    //console.log(`${window.device_url}api/channel/${i}/${scenes.value[selectedSet.value].levels[i]}`);

}

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
}}

function editSet(theSet) {
    hasUnsavedChanges.value = false;
    axios.get(window.device_url + 'api/scene/load/' + theSet, { timeout: 5000 })
    selectedSet.value = theSet;
}


function addScene() {
    scenes.value.push({ name: "Off", levels: [0,0,0,0,0,0,0,0,0,0,0,0] })
    hasUnsavedChanges.value = true;
    selectedSet.value = scenes.value.length - 1;
}

function removeScene() {
    confirm.require({
        message: 'Are you sure you want to proceed?',
        header: 'Delete Scene?',
        icon: 'pi pi-exclamation-triangle',
        rejectClass: 'p-button-secondary p-button-outlined',
        rejectLabel: 'Cancel',
        acceptLabel: 'Delete',
        accept: () => {
            scenes.value.splice(selectedSet.value, 1)
            selectedSet.value = selectedSet.value - 1;
            hasUnsavedChanges.value = true;

        },
        reject: () => {
        }
    });

}

function editName() {
    oldName = scenes.value[selectedSet.value].name;
    dialogVisible.value = true;
    hasUnsavedChanges.value = true;

    setTimeout(() => {
        document.getElementById("colorSetName").focus()
    }, 100);


}

function cancelEditName() {
    scenes.value[selectedSet.value].name = oldName;
    dialogVisible.value = false;

}

function saveSet() {
    axios.put(window.device_url + 'api/scenes', {
        params: scenes.value, timeout: 2000
    })
        .then(function (response) {
            console.log(response);
            toast.add({ severity: 'success', summary: "Scenes updated", life: 1000 });
            hasUnsavedChanges.value = false;

        })
        .catch(function (error) {
            console.log(error);
            toast.add({ severity: 'error', summary: 'An error occured', detail: error, life: 4000 });
        })
}

function refreshStatus() {
    axios.get(window.device_url + 'api/status', { timeout: 2000 }).then(function(response){
        //selectedScene.value = response.data.scene;
        selectedSet.value = response.data.scene;
    })
    setTimeout(refreshStatus, 2000);
    // ...
}


onMounted(() => {

    axios.get(window.device_url + 'api/scenes', { timeout: 5000 })

        .then(function (response) {
            try {
                var m = response.data[0].levels.length
                if (m > 5) {
                    //console.log(response.data)
                    scenes.value = response.data
                    refreshStatus()
                }
            } catch (e) {
                toast.add({ severity: 'error', summary: 'An error occured', detail: e, life: 4000 });
            }
        })
})

</script>
<template>


    <div class="swatch-container">
        <div class="flex">
            <div v-for="scene, i in scenes[selectedSet].levels"
                style="width:40px;display:inline-block;text-align: center;">
                <Slider orientation="vertical" v-model="scenes[selectedSet].levels[i]" @change="(function () {
                    throttle(slideChange, 40)(i);
                })()" style="height:255px;padding:30%" />
                <div style="padding:5px;text-align:left;color:#888">{{ i + 1 }}</div>
            </div>
        </div>
        <div id="buttonpanel">


            <Button @click="editSetClick(i)" @dblclick="editName" style="width:99%;margin:2px;"
                :severity="selectedSet == i ? 'info' : 'secondary'" v-for="scene, i in scenes">
                {{ scene.name }}
            </Button>



        </div>


    </div>
    <Toolbar>
        <template #start>
            <Button :disabled="!hasUnsavedChanges" @click="saveSet()" severity="secondary"><i class="pi pi-save"
                    style="font-size: 1.5rem"></i></Button>
        </template>
        <template #end>
            <Button @click="removeScene" v-if="selectedSet > -1" severity="secondary"><i class="pi pi-trash"
                    style="font-size: 1.5rem"></i></Button>
            <Button @click="addScene" severity="secondary" v-if="scenes.length < 11"><i class="pi pi-plus-circle"
                    style="font-size: 1.5rem"></i></Button>
        </template>
    </Toolbar>


    <Dialog v-model:visible="dialogVisible" modal header="Edit colorSetName" :style="{ width: '25rem' }">
        <span class="p-text-secondary block mb-5">Enter a new name</span>
        <div class="flex align-items-center gap-3 mb-3">
            <label for="colorSetName" class="font-semibold w-6rem">Name</label>
            <InputText ref="inputRef" id="colorSetName" v-model="scenes[selectedSet].name" class="flex-auto"
                autocomplete="off" />
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
    padding: 30px;
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