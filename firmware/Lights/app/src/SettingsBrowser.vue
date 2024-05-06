<script setup>
import { ref, watch,onMounted } from 'vue'
import Inplace from 'primevue/inplace';
import Button from 'primevue/button';
import Sidebar from 'primevue/sidebar';
import Card from 'primevue/card';
import axios from 'axios';
import { useToast } from 'primevue/usetoast';
const toast = useToast();

const panel_visible = ref(false);
const settings_key_array = ref([])
    const settings_value_array = ref([])


const onDeviceButtonClick = () => {
    panel_visible.value = !panel_visible.value;


    axios.get(window.device_url + 'api/settings', { timeout: 2000 })

.then(function (response) {
    settings_key_array.value = Object.keys(response.data)
    settings_value_array.value = Object.values(response.data)
})
.catch(function (error) {
    console.log(error);
    toast.add({ severity: 'error', summary: 'An error occured', detail: error, life: 4000 });
})
.finally(function () {
    // always executed
});
}




   
   

   


const sendSettings = () => {
    var newJson = {};

    for (var i = 0; i < settings_key_array.value.length; i++) {
        newJson[settings_key_array.value[i]] = settings_value_array.value[i]
    }
    panel_visible.value = false;
    
    axios.put(window.device_url + 'api/settings', {
    params: newJson, timeout: 2000
  })
        .then(function (response) {
            console.log(response);
            toast.add({ severity: 'success', summary: "Settings updated" , life: 1000 });
        })
        .catch(function (error) {
            console.log(error);
            toast.add({ severity: 'error', summary: 'An error occured', detail: error, life:4000});
        })
}




</script>

<template>


<button class="device-button p-link" type="button" @click="onDeviceButtonClick()">
        <i class="pi pi-cog" style="font-size:1.8em;color:#777"></i>
    </button>
    <Sidebar class="device_info" v-model:visible="panel_visible" header="Device Info" position="top"
        style="height:auto; color:#888">

<Card style="">
    <template #title>All Device Settings</template>
    <template #subtitle>Edit values in place, be careful!</template>
    <template #content>

<table>

    

    <tr style="height:1.5em;" v-for="(key, i) in settings_key_array"><td style="color:#888">
  {{ key }}</td><td>
  <Inplace :closable="true">
    <template #display>
        {{ settings_value_array[i] }}
    </template>
    <template #content>
        <InputText v-model="settings_value_array[i]" autofocus />
    </template>
</Inplace>

</td>

</tr></table>


</template>
    <template #footer>
        <div class="flex gap-3 mt-1">
            <Button label="Cancel" severity="secondary" outlined class="w-full" @click="onDeviceButtonClick()"/>
            <Button label="Save" class="w-full" @click="sendSettings()" />
        </div>
    </template>
</Card>
</Sidebar>
</template>

<style scoped>
.device-button {
    position: absolute;
    top: 28px;
    right: 14px
}
</style>