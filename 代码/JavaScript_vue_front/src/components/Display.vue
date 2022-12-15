<template>
  <div class="hello">
    <el-input placeholder="请按职位搜索" prefix-icon="el-icon-search" @keydown.enter.native="SearchForPosition"
      v-model="Search">
    </el-input>
    <el-table :data="FilterTableData" border height="500" :row-class-name="tableRowClassName"
      style="width: 100%;margin-top: 10px;overflow-y:scroll">
      <el-table-column prop="positionName" label="职位" width="150">
      </el-table-column>
      <el-table-column prop="address" label="地点" width="120">
      </el-table-column>
      <el-table-column prop="publishtime" width="100" label="发布时间">
      </el-table-column>
      <el-table-column prop="money" width="100" label="薪水">
      </el-table-column>
      <el-table-column prop="education" width="150" label="教育">
      </el-table-column>
      <el-table-column prop="jobNature" width="350" label="介绍">
      </el-table-column>
    </el-table>
  </div>
</template>

<script>

export default {
  data() {
    return {
      token: "",
      tableData: [],
      FilterTableData: [],
      Search: ""
    }
  },
  mounted() {
    const token = sessionStorage.getItem("token") ? JSON.parse(sessionStorage.getItem("token")) : {}
    this.token = token.data.name
    this.GetPostInfo()
  },
  methods: {
    tableRowClassName({ row, rowIndex }) {
      if (rowIndex === 1) {
        return 'warning-row';
      } else if (rowIndex === 3) {
        return 'success-row';
      }
      return '';
    },
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
      this.FilterTableData = newJson
    },
    GetPostInfo() {
      this.getRequest("/api/user").then(resp => {
        if (resp) {
          let temp = {}	//	用于name判断
          let result = [] // 最后的新数组
          resp.data.map((item, index) => {
            if (!temp[item.positionName]) {
              result.push(item)
              temp[item.positionName] = true
            }
          })
          this.tableData = result
          this.FilterTableData = result
          this.$store.state.tableData = this.tableData;

        }
      })
    }
  },
  watch: {
    Search: {
      handler(value) {
        const newJson = [];
        this.tableData = eval(this.tableData);
        for (let i = 0; i < this.tableData.length; i++) {
          if ((this.tableData[i].positionName).indexOf(value) > -1) {  //name为你需要遍历的变量
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
        this.FilterTableData = newJson
      },
      // immediate: true,
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.el-table .warning-row {
  background: oldlace;
}


.el-table .success-row {
  background: #f0f9eb;
}

::v-deep .el-table th {
  background-color: #ADAD;
}

::v-deep.el-table thead {
  color: #FC5531;
  font-weight: 500;
}

::v-deep .el-table tr {
  background-color: rgba(13, 176, 168, 0.347);
}

::v-deep .el-table td,
.building-top .el-table th.is-leaf {
  border-bottom: 1px solid #007ACC;
}
</style>
