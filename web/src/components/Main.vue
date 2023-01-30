<template>
  <el-container>
    <el-header>
      <div>疫苗预约后台管理系统</div>
      <div>
        {{username}}
        <el-tooltip content="点击退出"
                    placement="left">
          <el-button type="danger"
                     @click="logout"
                     circle
                     plain
                     icon="el-icon-user-solid"></el-button>
        </el-tooltip>
      </div>
    </el-header>
    <el-container>
      <el-aside width="200px">
        <el-menu router
                 text-color="#fff"
                 background-color="#2b4b6b"
                 active-text-color="#409eff">
          <el-submenu index="1">
            <template slot="title">
              <i class="el-icon-s-marketing"></i>
              <span>预约信息管理</span>
            </template>
            <el-menu-item index="/appointment">
              <i class="el-icon-date"></i>
              <span>预约信息管理</span>
            </el-menu-item>
            <el-menu-item index="/vaccines">
              <i class="el-icon-bangzhu"></i>
              <span>疫苗信息管理</span>
            </el-menu-item>
          </el-submenu>
          <el-submenu index="2">
            <template slot="title">
              <i class="el-icon-s-cooperation"></i>
              <span>预约用户管理</span>
            </template>
            <el-menu-item index="/users">
              <i class="el-icon-s-marketing"></i>
              <span>预约用户管理</span>
            </el-menu-item>
            <el-menu-item index="/address">
              <i class="el-icon-location-outline"></i>
              <span>预约地点管理</span>
            </el-menu-item>
          </el-submenu>
          <el-submenu index="3">
            <template slot="title">
              <i class="el-icon-s-home"></i>
              <span>系统信息管理</span>
            </template>
            <el-menu-item index="/logs">
              <i class="el-icon-c-scale-to-original"></i>
              <span>系统日志管理</span>
            </el-menu-item>
            <el-menu-item index="/administrators">
              <i class="el-icon-s-check"></i>
              <span>系统用户管理</span>
            </el-menu-item>
          </el-submenu>
        </el-menu>
      </el-aside>
      <el-main>
        <router-view />
      </el-main>
    </el-container>
  </el-container>
</template>

<script>
export default {
  data () {
    return {
      username: sessionStorage.getItem("username")
    }
  },
  methods: {
    logout () {
      this.$http.get("http://localhost/administrators/logout") //调用后台注销方法
        .then(res => {
          if (res.data.data == 200) {
            sessionStorage.removeItem("username"); //移除sessionStorage中的用户信息
            sessionStorage.clear(); //清空sessionStorage中的用户信息
            this.$router.push('/login'); //跳转到登录页面
          }
        })
        .catch(e => { })
    }
  }
}
</script>

<style scoped>
.el-header {
  background-color: #2b4b6b;
  display: flex;
  justify-content: space-between;
  padding-left: 10px;
  align-items: center;
  color: white;
  font-size: 18px;
}
.el-aside {
  color: white;
  background-color: #2b4b6b;
}
.el-main {
  background-color: aliceblue;
}
.el-container {
  height: 100%;
}
</style>