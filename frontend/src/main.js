import { createApp } from 'vue'
import App from './App.vue'
import vuetify from './plugins/vuetify'
import { loadFonts } from './plugins/webfontloader'
import custom_axios from '@/plugins/axios';
import VueAxios from 'vue-axios';

loadFonts()

createApp(App)
  .use(vuetify)
  .use(VueAxios, custom_axios)
  .mount('#app')
