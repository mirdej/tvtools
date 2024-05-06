<!--  -------------------------------------------------------------------------------------------------- -->
<!--  ----------------------------------------------------------------------------------------  SCRIPT -->



<script setup>
import { ref, watch,onMounted } from 'vue'
import DeviceInfo from "./DeviceInfo.vue"
import SettingsBrowser from "./SettingsBrowser.vue"

import Badge from 'primevue/badge';
import axios from 'axios';


//-------------------------------------------------------  REACTIVE
const props = defineProps(['title','app_version']);
const is_local = ref(!window.served_from_device);
const talking_to = ref(window.device_url)
const year = ref(0);
year.value = new Date().getFullYear();

onMounted(() => {

axios.get(window.device_url + 'api/deviceinfo', { timeout: 5000 })

.then(function (response) {
    window.device_url = "http://" + response.data.ip + "/";
    talking_to.value=window.device_url;
    console .log(window.device_url);
   /*  chartData.value.labels.push('.');
   chartData.value.datasets[0].data.push(50);
    console.log(chartData.value.datasets[0].data); */
})
})

</script>



<!--  -------------------------------------------------------------------------------------------------- -->
<!--  ----------------------------------------------------------------------------------------  TEMPLATE -->


<template>
    <header>
        <img class="logo_img" src="/logo_anyma_black.svg" alt="anyma" />
        {{title}} <span style=" font-size:.7em;padding:2px;color:#888"> @ {{talking_to}} <Badge v-if="is_local" value="LOCALLY SERVED" severity="warning" /></span>
    </header>
    <footer>
        Version {{app_version}} © {{ year }} Michael Egger <a href="https://www.anyma.ch/">[ a n y m a ]</a>
    </footer>
    <DeviceInfo />
    <SettingsBrowser />

</template>


<!--  -------------------------------------------------------------------------------------------------- -->
<!--  ----------------------------------------------------------------------------------------  STYLE -->



<style>
header,
footer {
    position: absolute;
    width: 100%;
    padding: 2%;
    background: #9ed89e0b;
    border-bottom: 1px solid rgba(103, 103, 103, 0.721);
    color: #eee;
}

header {
    top: 0;
    display: flex;
    align-items: center;

    font-size: 1em;
}

footer {
    bottom: 0;
    padding-top: 5px;
    border-top: 1px solid rgba(103, 103, 103, 0.721);
    font-size: .7em;
}

footer a {
    text-decoration: none;
}

footer a:hover {
    text-decoration: underline;
}

footer a:visited {
    color: aqua
}

.logo_img {
    height: 14px;
    filter: invert(1);
    fill-opacity: 0.9;
    padding-right: 2em;
}
</style>