import { createApp } from 'vue'


//https://vuejsdevelopers.com/2017/08/28/vue-js-ajax-recipes/
//npm i axios vue-axios --save
import axios from 'axios'
import VueAxios from 'vue-axios'
 
import ToastService from 'primevue/toastservice';
import ConfirmationService from 'primevue/confirmationservice';


import App from "./App.vue"
import PrimeVue from 'primevue/config';

import Button from 'primevue/button';
import InputText from 'primevue/inputtext';
import InputNumber from 'primevue/inputnumber';
import Toast from 'primevue/toast';
import FloatLabel from 'primevue/floatlabel';
import ColorPicker from 'primevue/colorpicker';




import './assets/app.css'
import 'primevue/resources/themes/aura-dark-teal/theme.css'
import 'primeicons/primeicons.css'

window.device_url="http://lalala:8000/";
window.served_from_device = true;

const app = createApp(App);

app.use(VueAxios, axios)
app.use(PrimeVue);
app.use(ToastService);
app.use(ConfirmationService);

app.component("Button",Button);
app.component("InputText",InputText);
app.component("InputNumber",InputNumber);
app.component("Toast",Toast);
app.component("FloatLabel",FloatLabel);
app.component("ColorPicker",ColorPicker);

app.mount("#app")
