<script setup>
import { ErrorCodes, ref,onMounted, watch } from 'vue'
import axios from 'axios';

const fixt_buttons = ref([]);
const is_active = ref(0);
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
    //console.log(a);
    //console.log(`${window.device_url}api/check/${a.addr}`);
    axios.put(`${window.device_url}api/check/${a.addr}`);

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
</template>
<style scoped></style>