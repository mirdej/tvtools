<script setup>
import { ErrorCodes, ref,onMounted, watch } from 'vue'
import axios from 'axios';

const fixt_buttons = ref([]);
const is_active = ref(-1);
var max_id = 0;

const generate_fixt_buttons = () =>{
     var temp = [{label:"CameoWW",items:[]}]
    var btn_id = 0;
    for (var i = 1; i < 11; i++) {
        temp[0].items.push({id:btn_id++,addr:i});
    }
    temp[1] =  {label:"CameoRGB",items:[{'id': btn_id++, 'addr': 11},{'id':btn_id++, 'addr':16}]};
    temp[2]=  {label:"RGB",items:[]}
    for (var i = 24; i < 40; i = i + 3) {
        temp[2].items.push({id:btn_id++,addr:i});
    }
    max_id = btn_id;
    console.log (temp)
    fixt_buttons.value = temp;
}

const check = (a) => {
    is_active.value = a.id;
    axios.put(`${window.device_url}api/check/${a.addr}`);
}

const check1 = (a) => {
    is_active.value = a;
    axios.put(`${window.device_url}api/check/${a}`);
//    console.log(`${window.device_url}api/check/${a}`);
}

onMounted(()=>{
    generate_fixt_buttons();
    console.log(fixt_buttons.value);
})



</script>
<template><h1>Fixture Check</h1>
<div v-for="section in fixt_buttons">
    <h5>{{section.label}}</h5>
<Button v-for="fixt_btn in section.items" :severity="is_active == fixt_btn.id ? 'info' : 'secondary'" @click="check({id:fixt_btn.id,addr:fixt_btn.addr})">{{fixt_btn.addr}} </Button>
<hr />
</div>
<h5>Scenes</h5>

<Button @click="check1('stage')" :severity="is_active == 'stage' ? 'info' : 'secondary'">Stage ON</Button>
<Button @click="check1('backdrop')" :severity="is_active == 'backdrop' ? 'info' : 'secondary'">Backdrop ON</Button>
<Button @click="check1('all')" :severity="is_active == 'all' ? 'info' : 'secondary'">All ON</Button>
<Button @click="check1('off')" :severity="is_active == 'off' ? 'info' : 'secondary'">All OFF</Button>

</template>
<style scoped></style>