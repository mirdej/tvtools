<script setup>
import axios from 'axios';
import Sidebar from 'primevue/sidebar';
import Knob from 'primevue/knob';
import Dialog from 'primevue/dialog';
import InputGroup from 'primevue/inputgroup';
import InputGroupAddon from 'primevue/inputgroupaddon';
import Chart from 'primevue/chart';


import { ref, computed, onMounted, watch } from 'vue'
import { useToast } from 'primevue/usetoast';
import { useConfirm } from "primevue/useconfirm";

//-------------------------------------------------------  REACTIVE
const confirm = useConfirm();
const new_hostname = ref("New-Hostname")
const hostnameDialogVisible = ref(false);
const deviceInfo_visible = ref(false);
const device = ref({ "message": "deviceinfo", "firmware": "unknown", "version": "unknown", "chip": "unknown", "chip_rev": 0, "chip_cores": 0, "chip_fcpu": 0, "sdk_version": "unknown", "flash_size": 0, "flash_speed": 0, "flash_mode": 0, "flash_free_sketch_space": 0, "hostname": "unknown", "ip": "unknown", "mac": "unknown", "millis": 0, "ram_free": 0, "ram_lowest": 0, "ram_largest_free_block": 0, "psram_size": 0, "psram_free": 0, "psram_free_min": 0, "psram_max_alloc": 0, "fs_used": 0, "fs_total": 1 });
const chartData = ref();
const chartOptions = ref();

const setChartData = () => {
    const documentStyle = getComputedStyle(document.documentElement);

    return {
        labels:[".","."],
        datasets: [
            {
                label: 'Free memory',
                data: [50,50],
                fill: false,
                borderColor: documentStyle.getPropertyValue('--cyan-500'),
                tension: 0.4
            }]
    };
};

onMounted(() => {
    chartData.value = setChartData();
    console.log(window.device_url);
});

const percentFreeRam = computed(() => {
    var f = device.value.ram_free / 327680. * 100.;
    return parseInt(f)
})

const percentFreeFS = computed(() => {
    var f = device.value.fs_used / device.value.fs_total * 100.;
    return 100 - parseInt(f)
})

var intervalHandle;
watch(deviceInfo_visible, (vis) => {/* console.log(vis) */
    if (vis) {
        updateDeviceInfo();
        intervalHandle = setInterval(updateDeviceInfo, 2000)
    } else {
        clearInterval(intervalHandle)
    }
})


//-------------------------------------------------------  GLOBALS

const toast = useToast();


//-------------------------------------------------------  INTERACTION

const onDeviceButtonClick = () => {
    deviceInfo_visible.value = !deviceInfo_visible.value;
}


const setHostname = () => {
    hostnameDialogVisible.value = false;
    var s = new_hostname.value;
    s = s.replace(/\W/g, "-");

    console.log("New hostname: " + s)


    axios.put(window.device_url + 'api/settings', {
    params: {
      "hostname": s,
    }, timeout: 2000
  })
        .then(function (response) {
            console.log(response);
            toast.add({ severity: 'success', summary: 'Hostname', detail: "Set to " + s, life: 4000 });
        })
        .catch(function (error) {
            console.log(error);
            toast.add({ severity: 'error', summary: 'An error occured', detail: error, life:4000});
        })
        .finally(function () {
            // always executed
        });
}

const onPowerButtonClick = () => {


    confirm.require({
        message: 'Are you sure you want to proceed?',
        header: 'Reboot ES32?',
        icon: 'pi pi-exclamation-triangle',
        rejectClass: 'p-button-secondary p-button-outlined',
        rejectLabel: 'Cancel',
        acceptLabel: 'Reboot',
        accept: () => {
            axios.get(window.device_url + 'api/reboot', { timeout: 2000 })

                .then(function (response) {
                    console.log(response);
                    toast.add({ severity: 'info', summary: 'Restarting...', detail: "Please Wait", life: 4000 });
                })
                .catch(function (error) {
                    console.log(error);
                    toast.add({ severity: 'error', summary: 'An error occured', detail: error , life: 4000 });
                })
                .finally(function () {
                    // always executed
                });

        },
        reject: () => {
        }
    });
}

const onCopyClick = (text) => {
    console.log("Copied " + text)
    navigator.clipboard.writeText(text);
    toast.add({ severity: 'success', summary: "Copied", detail:text, life: 1000 });

}
//-------------------------------------------------------  UTILITY / DISPLAY

function humanFileSize(size) {
    var i = size == 0 ? 0 : Math.floor(Math.log(size) / Math.log(1024));
    return +((size / Math.pow(1024, i)).toFixed(2)) * 1 + ' ' + ['B', 'kB', 'MB', 'GB', 'TB'][i];
}

function capitalizeFirstLetter(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}

const compiletime = (t) => {
    var timestamp = t.split('+')[1];
    var thedate = new Date(timestamp * 1000);
    return thedate.toLocaleString();
}

const uptime = (m) => {
    return new Date(m).toISOString().slice(11, -5);
}

const updateDeviceInfo = () => {
    if (deviceInfo_visible) {
        axios.get(window.device_url + 'api/deviceinfo', { timeout: 2000 })

            .then(function (response) {
                device.value = response.data;
                window.device_url = "http://" + device.value.ip + "/";
                console .log(window.device_url);
               /*  chartData.value.labels.push('.');
               chartData.value.datasets[0].data.push(50);
                console.log(chartData.value.datasets[0].data); */
            })
            .catch(function (error) {
                console.log(error);
                toast.add({ severity: 'error', summary: 'An error occured', detail: error, life: 4000 });
            })
            .finally(function () {
                // always executed
            });
    }
}

</script>






<template>
    <button class="device-button p-link" type="button" @click="onDeviceButtonClick()">
        <i class="pi pi-info-circle" style="font-size:1.8em;color:#777"></i>
    </button>
    <Sidebar class="device_info" v-model:visible="deviceInfo_visible" header="Device Info" position="bottom"
        style="height:auto; color:#888">
        <!-- <h1>Testing  {{ device.chip }}</h1> -->
        <p><span class="device_info_bold">Chip: </span> {{ device.chip }} | Cores: {{ device.chip_cores }} | {{
            device.chip_fcpu }} Mhz | SDK: {{ device.sdk_version }}</p>
        <p><span class="device_info_bold">Firmware: </span>{{ device.firmware }} | Version: {{ device.version }} | {{
            compiletime(device.version) }}</p>
        <p><span class="device_info_bold">RAM: </span> Free: {{ humanFileSize(device.ram_free) }} | Largest free block :
            {{ humanFileSize(device.ram_largest_free_block) }} | Lowest: {{ humanFileSize(device.ram_lowest) }}</p>
        <Knob :size="64" v-model="percentFreeRam" valueTemplate="{value}%" readonly />
    <!--     <Chart type="line" :data="chartData" :options="chartOptions" class="h-1rem" style="height:3vh"/> -->

        <p><span class="device_info_bold">Flash: </span>{{ humanFileSize(device.flash_size) }} | Free Sketch Size:
            {{ humanFileSize(device.flash_free_sketch_space) }}</p>
        <p><span class="device_info_bold">Uptime: </span> {{ uptime(device.millis) }}
            <button class="inline-button" type="button" @click="onPowerButtonClick()">
                <i class="pi pi-power-off" style="font-size:1em;color:#fff"></i>
            </button>
        </p>
        <p><span class="device_info_bold">Hostname:</span> {{ capitalizeFirstLetter(device.hostname) }}
            <button class="inline-button" type="button" style="margin-right:0px;" @click="onCopyClick(device.hostname)">
                <i class="pi pi-copy" style="font-size:1em;color:#fff"></i>
            </button>
            <button class="inline-button" type="button" @click="hostnameDialogVisible = true">
                <i class="pi pi-pencil" style="font-size:1em;color:#fff"></i>
            </button>

            | IP: {{ device.ip }}
            <button class="inline-button" type="button" @click="onCopyClick(device.ip)">
                <i class="pi pi-copy" style="font-size:1em;color:#fff"></i>
            </button>
            | MAC: {{ device.mac }}
            <button class="inline-button" type="button" @click="onCopyClick(device.mac)">
                <i class="pi pi-copy" style="font-size:1em;color:#fff"></i>
            </button>
        </p>
        <p><span class="device_info_bold">Filesystem:</span>{{ humanFileSize(device.fs_used) }} of {{
            humanFileSize(device.fs_total) }} ({{ parseInt(device.fs_used / device.fs_total * 100) }} %)</p>
        <Knob :size="64" v-model="percentFreeFS" valueTemplate="{value}%" readonly/>
    </Sidebar>

    <Dialog v-model:visible="hostnameDialogVisible" modal header="Edit Hostname" :style="{ width: '25rem' }">
        <span class="p-text-secondary block mb-5">Enter a new Hostname</span>
        <div class="flex align-items-center gap-3 mb-3">
            <label for="hostname" class="font-semibold w-6rem">Hostname</label>
            <InputText id="hostname" v-model="new_hostname" class="flex-auto" autocomplete="off" />
        </div>
        <div class="flex justify-content-end gap-2">
            <Button type="button" label="Cancel" severity="secondary" @click="hostnameDialogVisible = false"></Button>
            <Button type="button" label="Save" @click="setHostname()"></Button>
        </div>
    </Dialog>

</template>






<style scoped>
.inline-button {
    margin-left: .5em;
    margin-right: 1em;
}

.device_info p {
    font-size: .8em;
}

.device_info_bold {
    font-weight: bold;
    color:
        #335d5a;
}

.device-button {
    position: absolute;
    bottom: 6px;
    right: 14px
}
</style>