<script setup>
import { ErrorCodes, ref, watch } from 'vue'
import axios from 'axios';

import { useToast } from 'primevue/usetoast';
import { onMounted } from 'vue'
import AppFrame from "./AppFrame.vue"
import ConfirmDialog from 'primevue/confirmdialog';

//-------------------------------------------------------  GLOBALS

var host;

var ip = location.host;
  if (ip.startsWith('127') || ip.startsWith('localhost')) {
    window.device_url = "http://baby-s3.local/";
    window.served_from_device = false;
  } else {
    window.device_url = "http://" + ip + "/";
    window.served_from_device = true;
  }



//-------------------------------------------------------  REACTIVE

const blink_color = ref();
const blink_interval = ref();
const toast = useToast();
const version = __APP_VERSION__

//-------------------------------------------------------  INTERACTION

const setblink = () => {
  console.log(blink_color.value)

  axios.put(window.device_url + 'api/settings', {
    params: {
      "blink_interval": blink_interval.value,
      "blink_color": blink_color.value
    }, timeout: 2000
  })

    .then(function (response) {
      console.log(response);
      toast.add({ severity: 'success', summary: 'Settings updated', detail: "Time: " + blink_interval.value + " ms\nColor: " + blink_color.value, life: 2000 });
    })
    .catch(function (error) {
      console.log(error);
      toast.add({ severity: 'error', summary: 'An error occured', detail: error, life: 3000});
    })
    .finally(function () {
      // always executed
    });
  }

onMounted(() => {

  axios
    .get(window.device_url + 'api/settings')
    // .then(response => (blink_interval.value = response.data))
    .then(response => {
      blink_color.value = response.data.blink_color;
      blink_interval.value = response.data.blink_interval;
      console.log(response)
    })

  

})
</script>








<template>
  <div class="container">
    <AppFrame title="Baby-S3-Blink" :app_version="version"/>
    <ConfirmDialog></ConfirmDialog>
    <ColorPicker id="color_picker" v-model="blink_color" style="padding-right:1em;" />
    <FloatLabel>
      <InputNumber id="blink_interval" suffix=" ms" v-model="blink_interval" style="padding-right:1em" />
      <label for="blink_interval">Blink time</label>
    </FloatLabel>
    <Button label="Set" @click="setblink" icon="pi pi-arrow-circle-up"></Button>
  </div>
  <Toast />
</template>







<style scoped>
/* "that's probably the only CSS you'll need to know about"  Cagatay Civici, PrimeVue */
.container {
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 90vh;
}

.p-colorpicker-preview {
  height: 200px;
}
</style>
