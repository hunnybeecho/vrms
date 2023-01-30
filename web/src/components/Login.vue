<template>
  <div class="bg"
       :height="fullHeight"
       :width="fullWidth">
    <div class="img_box">
      <!-- 背景图片：动态绑定宽高 -->
      <img src="../assets/img/bg1.jpg"
           :height="fullHeight"
           :width="fullWidth" />
    </div>
    <el-card class="box-card">
      <div slot="header"
           class="header-card">
        <span>疫苗预约管理系统</span>
      </div>
      <el-form :model="user"
               :rules="rules"
               ref="user">
        <el-form-item prop="username">
          <el-input suffix-icon="el-icon-user-solid"
                    v-model="user.username"
                    clearable
                    placeholder="请输入用户名"></el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input suffix-icon="el-icon-s-goods"
                    v-model="user.password"
                    clearable
                    type="password"
                    placeholder="请输入密码">
          </el-input>
        </el-form-item>
        <el-button type="primary"
                   @click="login">登录</el-button>
      </el-form>
    </el-card>
  </div>
</template>

<script>
export default {
  data () {
    return {
      // 获取设备宽度、高度
      fullWidth: document.documentElement.clientWidth,
      fullHeight: document.documentElement.clientHeight,
      // 以下两个暂时没有用到
      curWidth: '',
      curHeight: '',
      rules: {
        username: [{
          required: true,
          message: '请输入用户名',
          trigger: 'blur'
        }],
        password: [{
          required: true,
          message: '请输入密码',
          trigger: 'blur'
        }],
      },
      user: {
        username: '',
        password: ''
      }
    }
  },
  created () {
    // 添加监听，监听设备宽高
    window.addEventListener('resize', this.handleResize)
  },
  beforeDestroy: function () {
    // 销毁监听
    window.removeEventListener('resize', this.handleResize)
  },
  methods: {
    // 处理设备宽高
    handleResize (event) {
      this.fullWidth = document.documentElement.clientWidth - 16
      this.fullHeight = document.documentElement.clientHeight - 16
      this.curWidth = this.fullWidth + 'px'
      this.curHeight = this.fullHeight + 'px'
      console.log('curWidth=' + this.curWidth + ',curHeight=' + this.curHeight)
    },
    login () {
      this.$refs['user'].validate((valid) => {
        if (valid) {
          this.$http.get('http://localhost/administrators/login', {
            params: this.user
          })
            .then(res => {
              if (res.data.data == null) {
                this.$message.error('用户名或者密码错误，或者账号被锁定，请联系管理员');
              } else {
                sessionStorage.setItem("username", res.data.data)
                this.$router.push('/Main');
              }


            })
            .catch(e => {
              this.$message.error('啊哦出错了，网络异常');
            })

        }
      });

    }
  }

}
</script>

<style scoped>
.box-card {
  width: 550px;
  height: 280px;
  border-radius: 10px;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  box-shadow: 10px 20px 30px #888888;
}

.login-form {
  position: absolute;
  bottom: 0px;
  width: 100%;
  padding: 0px 20px;
  box-sizing: border-box;
}

.el-button {
  display: flex;
  justify-content: center;
  width: 100%;
  font-weight: bold;
  height: 40px;
  font-size: 18px;
  border-radius: 10px;
}

.header-card {
  display: flex;
  justify-content: center;
  font-size: 18px;
}

.el-input {
  border-radius: 10px;
  height: 50px;
  font-size: 18px;
  border-bottom-color: green;
}

.bg {
  padding: 0;
  margin: 0;
}
.bg .img_box {
  width: 100%;
  height: 100%;
}
.bg .img_box img {
  position: fixed; /* 固定图片位置 */
}
</style>
