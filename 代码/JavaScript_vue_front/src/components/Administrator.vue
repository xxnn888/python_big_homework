<template>
  <div class="hello">
    <div style="display: flex;justify-content: space-between">
      <el-input class="input-width" placeholder="请按职位搜索" prefix-icon="el-icon-search"
                @keydown.enter.native="SearchForPosition" v-model="Search">
      </el-input>
      <el-button type="success" icon="el-icon-plus" @click="addJobLevel" plain>添加</el-button>
    </div>
    <el-table :data="FilterTableData" border height="460" style="width: 100%;margin-top: 10px;overflow-y:scroll">
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
      <el-table-column fixed="right" label="操作" width="150">
        <template slot-scope="scope">
          <el-button @click="EdictClick(scope.row)" type="primary" size="small">编辑</el-button>
          <el-button @click="DeleteClick(scope.row)" type="danger" size="small">删除</el-button>
        </template>
      </el-table-column>
    </el-table>


    <el-dialog :title="DialogTitle" :visible.sync="dialogFormVisible">
      <el-form :model="form">
        <el-row>
          <el-col :span="12">
            <el-form-item label="职位名称" :label-width="formLabelWidth">
              <el-input v-model="form.positionName" autocomplete="off"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="地址" :label-width="formLabelWidth">
              <el-select v-model="form.address" placeholder="请选择地址">
                <el-option v-for="it in province" :key="it" :label="it" :value="it"></el-option>
              </el-select>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="12">
            <el-form-item label="发布时间" :label-width="formLabelWidth">
              <el-input v-model="form.publishtime" autocomplete="off" :disabled="true"></el-input>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="薪水" :label-width="formLabelWidth">
              <el-input-number v-model="form.money" :min="1" :max="10" label="描述文字">
              </el-input-number>
              <!-- <span style="font-size: 18px;margin-left: 2px">k</span> -->
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="12">
            <el-form-item label="学历要求" :label-width="formLabelWidth">
              <el-select v-model="form.education" placeholder="请选择学历要求">
                <el-option v-for="it in Education" :key="it" :label="it" :value="it"></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="图片" :label-width="formLabelWidth">
              <el-input v-model="form.posturl" autocomplete="off" disabled></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-form-item label="介绍" :label-width="formLabelWidth">
          <el-input v-model="form.jobNature" autocomplete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="AddSubmit">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
export default {
  data() {
    return {
      token: "",
      tableData: [],
      FilterTableData: [],
      Search: "",
      dialogFormVisible: false,
      formLabelWidth: '100px',
      DialogTitle: "",
      form: {
        positionName: '',
        address: '',
        publishtime: '',
        money: '',
        education: "",
        posturl: "https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/48/94/CioPOWDVmDyAerHSAABjTx5KPhA005.PNG",
        jobNature: '',
      },
      province: [
        "北京",
        "天津",
        "河北省",
        "山西省",
        "内蒙古自治区",
        "辽宁省",
        "吉林省",
        "黑龙江省",
        "上海",
        "江苏省",
        "浙江省",
        "安徽省",
        "福建省",
        "江西省",
        "山东省",
        "河南省",
        "湖北省",
        "湖南省",
        "广东省",
        "广西壮族自治区",
        "海南省",
        "重庆",
        "四川省",
        "贵州省",
        "云南省",
        "西藏自治区",
        "陕西省",
        "甘肃省",
        "青海省",
        "宁夏回族自治区",
        "新疆维吾尔自治区",
        "台湾省",
        "香港特别行政区",
        "澳门特别行政区",
        "海外"
      ],
      Education: ["经验1-3年  / 大专", "经验5-10年 / 本科", "经验不限  / 大专", "经验1-3年 / 本科",
        "经验1-3年  / 不限", "经验不限  / 硕士", "经验不限  / 不限"]
    }
  },
  created() {
    this.getCurrentTime();
  },
  mounted() {
    const token = sessionStorage.getItem("token") ? JSON.parse(sessionStorage.getItem("token")) : {}
    this.token = token.data.name
    this.GetPostInfo()
  },
  methods: {
    AddSubmit() {
      this.dialogFormVisible = false
      this.form.money += "k"
      // console.log(this.form)
      if (this.DialogTitle == "添加职位") {
        this.postRequest("/api/add", this.form).then(resp => {
          if (resp) {
            this.$message({
              type: 'success',
              message: '添加成功!'
            });
            this.GetPostInfo()
          } else {
            this.$message({
              type: 'danger',
              message: '添加失败!'
            });
          }
        })
      } else {
        this.postRequest("/api/update", this.form).then(resp => {
          if (resp) {
            this.$message({
              type: 'success',
              message: '修改成功!'
            });
          } else {
            this.$message({
              type: 'danger',
              message: '修改失败!'
            });
          }
        })
      }

    },
    getCurrentTime() {
      //添加定时器
      setInterval(() => {
        //转换当前时间，这里也可以单独封装成一个函数
        let h = new Date().getHours();
        let mm = new Date().getMinutes() < 10 ? "0" + new Date().getMinutes() : new Date().getMinutes();
        this.form.publishtime = h + ":" + mm;
      }, 500)
    },
    addJobLevel() {
      this.dialogFormVisible = true
      this.DialogTitle = "添加职位"
      this.form = {
        positionName: '',
        address: '',
        publishtime: '',
        money: '',
        education: "",
        posturl: "https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/48/94/CioPOWDVmDyAerHSAABjTx5KPhA005.PNG",
        jobNature: '',
      }
      // this.$message({
      //   message: '恭喜你，这是一条成功消息',
      //   type: 'success'
      // });
    },
    EdictClick(row) {
      this.dialogFormVisible = true
      this.DialogTitle = "编辑职位"
      this.form = row;
    },
    DeleteClick(row) {
      this.$confirm('此操作将永久删除, 是否继续?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.getRequest(`/api/delete/${row.id}`).then(resp => {
          if (resp.data.code == 200) {
            this.$message({
              type: 'success',
              message: '删除成功!'
            });
            this.GetPostInfo()
          } else {
            this.$message({
              type: 'danger',
              message: '删除失败!'
            });
          }
        })
      }).catch(() => {
        this.$message({
          type: 'info',
          message: '已取消删除'
        });
      });
    },
    SearchForPosition() {
      const newJson = [];
      this.tableData = eval(this.tableData);
      console.log(this.tableData)
      for (let i = 0; i < this.tableData.length; i++) {
        if ((this.tableData[i].positionName).indexOf(this.Search) > -1) {  //name为你需要遍历的变量
          const tempJson = {   //一下id和name是json中需要输出的变量
            "id": this.tableData[i].id,
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
              "id": this.tableData[i].id,
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

<style scoped>
.input-width {
  width: 50%;
}

::v-deep .el-table th {
  background-color: #ADAD;
}

::v-deep.el-table thead {
  color: #FC5531;
  font-weight: 500;
}

::v-deep .el-table tr {
  background-color: rgba(184, 207, 206, 0.347);
}

::v-deep .el-table td,
.building-top .el-table th.is-leaf {
  border-bottom: 1px solid #007ACC;
}
</style>
<style>
.el-dialog {
  background: rgb(188, 224, 231);
  border-radius: 15px;
}
</style>