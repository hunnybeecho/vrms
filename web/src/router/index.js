import Vue from 'vue'
import Router from 'vue-router'
// 导入布局组件
import Main from '../components/Main'
//导入管理员用户界面
import Administrators from '../components/Administrators'
//导入系统日志组件
import Logs from '../components/Logs'
//导入用户组件
import Users from '../components/Users'
//导入预约地址组件
import Address from '../components/Address'
//导入疫苗组件
import Vaccines from '../components/Vaccines'
//导入预约组件
import Appointment from '../components/Appointment'
//导入登录组件
import Login from '../components/Login'
//欢迎组件
import Welcome from '../components/Welcome'
//启用路由，脚手架自动生成代码
Vue.use(Router)

let router = new Router({
  routes: [
    { //定义多个路由
      path: '/',
      redirect: '/login'
    },
    {
      path: '/login',
      component: Login,
    }, 
    {
      path: '/main',
      name: 'Main',
      component: Main,
      redirect: '/welcome',
      children: [ //定义子组件
        {
          path: '/welcome',
          component: Welcome
        },
        {
          path: '/administrators',
          name: 'administrators',
          component: Administrators
        },
        {
          path: '/logs',
          name: 'logs',
          component: Logs
        },
        {
          path: '/users',
          name: 'users',
          component: Users
        },
        {
          path: '/address',
          name: 'address',
          component: Address
        },
        {
          path: '/vaccines',
          name: 'vaccines',
          component: Vaccines
        },
        {
          path: '/appointment',
          name: 'appointment',
          component: Appointment
        }
      ]
    }
  ]
})


// 定义一个路由器
router.beforeEach((to, from, next) => {
  if (to.path == '/login') {
    next();
  } else {
    if (sessionStorage.getItem("username")) {
      next();
    } else {
      alert('该用户还未登录，请登录')
      next({
        path: '/login'
      })
    }
  }
})
export default router
