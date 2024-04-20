import { createApp } from 'vue'
import App from './App.vue'
import CounterComponent from './components/CounterComponent.vue'
import 'normalize.css'
import './css/main.css'

const app = createApp(App);
app.component('counter-component', CounterComponent);
app.mount('#app')


