<template>
  <div class="about">
    <el-container>
      <el-header>
        <div class="head">
          <img src="../assets/2.png" alt="" width="50px" style="margin-left: 5px;">
          <h1 style="margin-right: 450px;">拉勾网职位管理系统</h1>
        </div>
      </el-header>
      <el-container>
        <el-aside width="150px"
          style="background-image:linear-gradient(0deg,#d9afd9 0%, #97d9e1 100%);border-radius: 300px;">
          <div class="aside">
            <router-link :to="{ name: 'Display' }" class="div" active-class="active">职位信息</router-link>
            <router-link :to="{ name: 'detail' }" class="div" active-class="active">详细信息</router-link>
            <router-link :to="{name:'Administrator'}" class="div" v-if="token === 'admin'"
              active-class="active">管理权限</router-link>
          </div>
        </el-aside>
        <el-main>
          <transition appear enter-active-class="animate__flipInX" leave-active-class="animate__backOutUp"
            name="animate__animated animate__bounce">
            <router-view />
          </transition>
        </el-main>
      </el-container>
    </el-container>
  </div>
</template>
<script>
export default {
  data() {
    return {
      token: ""
    }
  },
  mounted() {
    const token = sessionStorage.getItem("token") ? JSON.parse(sessionStorage.getItem("token")) : {}
    this.token = token.data.name
  },
}
</script>
<style>
.div {
  font-family: 华文中宋, fantasy;
  width: 70px;
  height: 50px;
  border-radius: 15px;
  color: black;
  line-height: 50px;
  margin-right: 10px;
}

.active {
  background-color: aquamarine;
}

.div:hover {
  border-bottom: black 1px solid;
  cursor: pointer;
}

.head {
  width: 100%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-radius: 15px;
  background-color: antiquewhite;
  /* background-image: linear-gradient(0deg, #9be15d 0%, #00e3ae 100%) */
}

.aside {
  margin-top: 20px;
  height: 490px;
  border: 1px silver solid;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.color {
  background-color: aqua;
}
</style>