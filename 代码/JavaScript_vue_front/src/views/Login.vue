<template>
  <transition name="animate__animated animate__bounce" appear leave-active-class="animate__backOutDown"
              enter-active-class="animate__backInUp">
    <div style="display: flex;justify-content: center;margin-top: 50px">
      <div :class="['dowebok', css2]">
        <div class="form-container sign-up-container">
          <div>
            <h1>注册</h1>
            <span>请输入您的信息</span>
            <input type="text" v-model="Regster.username" placeholder="账号">
            <input type="password" v-model="Regster.password" placeholder="以字母开头只能包含字母、数字(8-15位)">
            <input type="text" v-model="Regster.email" placeholder="邮箱">
            <input type="text" v-model="Regster.code" placeholder="邮箱验证码">
            <el-button @click="GetCode" icon="el-icon-search" circle
                       style="position: absolute;top: 306px;left: 292px;"></el-button>
            <button @click="Register">注册</button>
          </div>
        </div>
        <div class="form-container sign-in-container">
          <div>
            <h1>登录</h1>
            <span>或使用您的帐号</span>
            <input type="text" placeholder="账号" v-model="LoginForm.username">
            <input type="password" placeholder="密码" v-model="LoginForm.password">
            <a href="###">忘记密码？</a>
            <button @click="Login">登录</button>
          </div>
        </div>
        <div class="overlay-container">
          <div class="overlay">
            <div class="overlay-panel overlay-left">
              <h1>已有帐号？</h1>
              <p>请使用您的帐号进行登录</p>
              <button class="ghost" @click="Log">登录</button>
            </div>
            <div class="overlay-panel overlay-right">
              <h1>没有帐号？</h1>
              <p>立即注册加入我们，和我们一起开始旅程吧</p>
              <button class="ghost" @click="Reg">注册</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </transition>
</template>

<script>

import qs from "qs";

export default {
  name: "LoginReg",
  data() {
    return {
      css2: "",
      LoginForm: {
        username: "admin",
        password: "admin"
      },
      Regster: {
        username: "",
        password: "",
        email: "",
        code: ""
      }
    }
  },
  methods: {
    GetCode() {
      const data = qs.stringify({
        "email": this.Regster.email
      })
      this.postRequest("/auth/captcha", data).then(resp => {
        if (resp.data.code == 200) {
          this.$message.success("邮箱验证码发送成功")

        }
      })
    },
    Register() {
      const data = qs.stringify({
        'username': this.Regster.username,
        'password': this.Regster.password,
        'email': this.Regster.email,
        "code": this.Regster.code
      });
      this.postRequest("/auth/register", data).then(resp => {
        console.log(resp)
        if (resp.data.code == 200) {
          this.$message.success("注册成功")
          this.Regster.username = ""
          this.Regster.password = ""
          this.Regster.email = ""
          this.Register.code = ""
          this.Log()
          // this.$router.replace("/Home")
        } else if (resp.data.code == 401) {
          this.$message.error("登录, 缺少请求参数")
        } else if (resp.data.code == 403) {
          this.$message.error("注册失败, 用户已存在")
        } else if (resp.data.code == 404) {
          this.$message.error("注册失败, 邮箱格式不正确")
        } else if (resp.data.code == 405) {
          this.$message.error("注册失败, 密码格式不正确")
        } else if (resp.data.code == 406) {
          this.$message.error("注册失败, 邮箱或验证码错误")
        } else {
          this.$message.error("服务器内部出错")
        }
      })
    },
    Login() {
      const data = qs.stringify({
        'username': this.LoginForm.username,
        'password': this.LoginForm.password
      });
      this.postRequest('/auth/login', data).then(resp => {
        // console.log(resp)
        if (resp.data.code == 200) {
          this.$message.success("登录成功")
          const token = JSON.stringify(resp.data)
          window.sessionStorage.setItem("token", token)
          this.$router.replace("/Home/Display")
        } else if (resp.data.code == 401) {
          this.$message.error("登录, 缺少请求参数")
        } else {
          this.$message.error("用户名或密码错误")
        }
      })
    },
    Reg() {
      this.css2 = "right-panel-active"
    },
    Log() {
      this.css2 = ""
    }
  }
}
</script>

<style scoped>
.LoginReg {
  display: flex;
  justify-content: space-between;
}

* {
  box-sizing: border-box;
}

body {
  font-family: 'Montserrat', sans-serif;
  background: #f6f5f7;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: -20px 0 50px;
}

h1 {
  font-weight: bold;
  margin: 0;
}

p {
  font-size: 14px;
  line-height: 20px;
  letter-spacing: .5px;
  margin: 20px 0 30px;
}

span {
  font-size: 12px;
}

a {
  color: #333;
  font-size: 14px;
  text-decoration: none;
  margin: 15px 0;
}

.dowebok {
  background: #fff;
  border-radius: 10px;
  box-shadow: 0 14px 28px rgba(0, 0, 0, .25), 0 10px 10px rgba(0, 0, 0, .22);
  position: relative;
  overflow: hidden;
  width: 768px;
  max-width: 100%;
  min-height: 480px;
}

.form-container div {
  background: #fff;
  display: flex;
  flex-direction: column;
  padding: 0 50px;
  height: 100%;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.social-container {
  margin: 20px 0;
}

.social-container a {
  border: 1px solid #ddd;
  border-radius: 50%;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  margin: 0 5px;
  height: 40px;
  width: 40px;
}

.social-container a:hover {
  background-color: #eee;
}

.form-container input {
  background: #eee;
  border: none;
  padding: 12px 15px;
  margin: 8px 0;
  width: 100%;
  outline: none;
}

button {
  border-radius: 20px;
  border: 1px solid lightseagreen;
  background: lightseagreen;
  color: #fff;
  font-size: 12px;
  font-weight: bold;
  padding: 12px 45px;
  letter-spacing: 1px;
  text-transform: uppercase;
  transition: transform 80ms ease-in;
  cursor: pointer;
}

button:active {
  transform: scale(.95);
}

button:focus {
  outline: none;
}

button.ghost {
  background: transparent;
  border-color: #fff;
}

.form-container {
  position: absolute;
  top: 0;
  height: 100%;
  transition: all .6s ease-in-out;
}

.sign-in-container {
  left: 0;
  width: 50%;
  z-index: 2;
}

.sign-up-container {
  left: 0;
  width: 50%;
  z-index: 1;
  opacity: 0;
}

.overlay-container {
  position: absolute;
  top: 0;
  left: 50%;
  width: 50%;
  height: 100%;
  overflow: hidden;
  transition: transform .6s ease-in-out;
  z-index: 100;
}

.overlay {
  background: lightseagreen;
  background: linear-gradient(to right, lightseagreen, lightseagreen) no-repeat 0 0 / cover;
  color: #fff;
  position: relative;
  left: -100%;
  height: 100%;
  width: 200%;
  transform: translateY(0);
  transition: transform .6s ease-in-out;
}

.overlay-panel {
  position: absolute;
  top: 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 0 40px;
  height: 100%;
  width: 50%;
  text-align: center;
  transform: translateY(0);
  transition: transform .6s ease-in-out;
}

.overlay-right {
  right: 0;
  transform: translateY(0);
}

.overlay-left {
  transform: translateY(-20%);
}

/* Move signin to right */
.dowebok.right-panel-active .sign-in-container {
  transform: translateY(100%);
}

/* Move overlay to left */
.dowebok.right-panel-active .overlay-container {
  transform: translateX(-100%);
}

/* Bring signup over signin */
.dowebok.right-panel-active .sign-up-container {
  transform: translateX(100%);
  opacity: 1;
  z-index: 5;
}

/* Move overlay back to right */
.dowebok.right-panel-active .overlay {
  transform: translateX(50%);
}

/* Bring back the text to center */
.dowebok.right-panel-active .overlay-left {
  transform: translateY(0);
}

/* Same effect for right */
.dowebok.right-panel-active .overlay-right {
  transform: translateY(20%);
}
</style>
