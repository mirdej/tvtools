<script setup>
import { ErrorCodes, ref, watch } from 'vue'
import axios from 'axios';
import { onMounted } from 'vue'
import AppFrame from "./AppFrame.vue"
import { RouterLink, RouterView } from 'vue-router'

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

const version = __APP_VERSION__

//-------------------------------------------------------  ROUTER




//-------------------------------------------------------  INTERACTION


onMounted(() => {

 /*  axios
    .get(window.device_url + 'api/settings')
    .then(response => {
      console.log(response)
    })
 */
  

})
</script>








<template>
  <div class="container">
    <AppFrame title="TV.Lights" :app_version="version"/>

  <nav>
    <RouterLink to="/">Home</RouterLink>
    <RouterLink to="/fixtures">Fixtures</RouterLink>
  </nav>

  <main>
    <RouterView />
  </main>
</div>
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
