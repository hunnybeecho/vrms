// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import ElementUI from 'element-ui'; // 引入ElementUI的js库
import 'element-ui/lib/theme-chalk/index.css'; // 引入ElementUI样式
import axios from 'axios' // 引入axios 它就是ajax技术
import './assets/css/main.css'

Vue.config.productionTip = false
Vue.use(ElementUI) // 启用ElementUI组件在Vue对象中,就是挂载ElementUI在vue中
Vue.prototype.$http=axios //挂载axios在vue对象中,这样axios成为vue对象中的属性

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
