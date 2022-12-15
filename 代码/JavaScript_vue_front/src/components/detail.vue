<template>
  <div style="margin-left: 60px;">
    <div style="background-image: linear-gradient(-225deg, #9EFBD3 0%, #57E9F2 48%, #45D4FB 100%)">
      <el-input placeholder="请按职位搜索" prefix-icon="el-icon-search" @keydown.enter.native="SearchForPosition"
        v-model="Search">
      </el-input>
    </div>
    <div style="height: 490px; overflow: auto; margin-top: 12px;">
      <el-card class="box-card" shadow="hover" v-for="item in tableData" :key="item.id">
        <div slot="header" class="clearfix">
          <span style="color: rgb(47, 124, 108);font-size: 16px;">{{ item.positionName }}</span>
          <el-button style="float: right; padding: 3px 0" type="text"><i class="el-icon-phone"></i> 联系</el-button>
        </div>
        <div class="text item" style="display: flex;justify-content: space-between">
          <div class="distance">
            <div><i class="el-icon-location"></i>{{ item.address }}</div>
            <div style="color: rgb(152, 145, 134);">{{ item.publishtime }}</div>
            <div style="color: rgb(228, 95, 63);"><i class="el-icon-money"></i>{{ item.money }}</div>
            <div style="color: rgb(75, 84, 89);">{{ item.education }}</div>
          </div>
          <div style="display: flex;flex-direction:column;align-items: flex-end">
            <el-avatar shape="square" :src="item.posturl"></el-avatar>
            <div>{{ item.jobNature }}</div>
          </div>
        </div>
      </el-card>
    </div>

  </div>
</template>

<script>
export default {
  name: "detail",
  data() {
    return {
      tableData: [],
      Search: ""
    }
  }, methods: {
    SearchForPosition() {
      const newJson = [];
      this.tableData = eval(this.tableData);
      console.log(this.tableData)
      for (let i = 0; i < this.tableData.length; i++) {
        if ((this.tableData[i].positionName).indexOf(this.Search) > -1) {  //name为你需要遍历的变量
          const tempJson = {   //一下id和name是json中需要输出的变量
            "positionName": this.tableData[i].positionName,
            "address": this.tableData[i].address,
            "publishtime": this.tableData[i].publishtime,
            "money": this.tableData[i].money,
            "education": this.tableData[i].education,
            "jobNature": this.tableData[i].jobNature
          };
          newJson.push(tempJson);
        }
      }
      this.tableData = newJson
    }
  },
  mounted() {
    this.tableData = this.$store.state.tableData
    // console.log(this.tableData, "ertrt")
  },
}
</script>

<style scoped>
.box-card {

  /* background: url("../assets/1.png") no-repeat; */

  border-radius: 40px;
  width: 90%;
  margin-top: 12px;
  margin-bottom: 20px;
}

/* .box-card :hover { */
/* background-color: chartreuse; */
/* background-image: linear-gradient(0deg, #b3ffab 0%, #12fff7 100%) */
/* } */

.el-input /deep/ .el-input__inner {
  background-color: #54fc0069;
  color: red;
}

.distance>div {
  margin-bottom: 3px;
}
</style>