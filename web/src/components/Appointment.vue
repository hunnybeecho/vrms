<template>
  <el-card>
    <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{path:'/welcome'}">首页</el-breadcrumb-item>
      <el-breadcrumb-item>预约信息管理</el-breadcrumb-item>
      <el-breadcrumb-item>预约信息管理</el-breadcrumb-item>
    </el-breadcrumb>
    <!-- 面板布局 -->
    <el-row :gutter="12">
      <el-col :span="6">
        <el-input clearable
                  @clear="listPage"
                  v-model="username"
                  placeholder="请输入预约用户名称查询"></el-input>
      </el-col>
      <el-col :span="6">
        <el-button type="primary"
                   icon="el-icon-search"
                   @click="listPage">查询</el-button>
        <el-button type="success"
                   icon="el-icon-plus"
                   @click="openAddDialog">预约</el-button>
      </el-col>
    </el-row>
    <el-table :data="tableData">
      <el-table-column prop="username"
                       label="姓名"></el-table-column>
      <el-table-column prop="address"
                       label="预约地点"></el-table-column>
      <el-table-column prop="avcname"
                       label="疫苗名称"></el-table-column>
      <el-table-column prop="appstats"
                       label="预约状态">
        <template slot-scope="scope">
          <el-tag v-if="scope.row.appstats==0"
                  type="success">已预约</el-tag>
          <el-tag v-else-if="scope.row.appstats==1"
                  type="danger">已取消</el-tag>
          <el-tag v-else
                  type="warning">未知</el-tag>
        </template>
      </el-table-column>
      <el-table-column prop="apptime"
                       label="预约时间"></el-table-column>
      <el-table-column prop="stats"
                       label="是否接种">
        <template slot-scope="scope">
          <el-tag v-if="scope.row.stats==0"
                  type="danger">未接种</el-tag>
          <el-tag v-else-if="scope.row.stats==1"
                  type="success">已接种</el-tag>
          <el-tag v-else
                  type="warning">未知</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="接种时间">
        <template slot-scope="scope">
          {{scope.row.mtime}}
        </template>
      </el-table-column>
      <el-table-column prop="remark"
                       label="备注"></el-table-column>
      <el-table-column align="center"
                       label="操作">
        <template slot-scope="scope">
          <el-button type="success"
                     v-if="scope.row.stats==0"
                     @click="update(scope.row)">确认接种</el-button>
        </template>
      </el-table-column>
    </el-table>
    <!-- 分页组件 -->
    <el-pagination @size-change="handleSizeChange"
                   @current-change="handleCurrentChange"
                   :current-page="pager.page"
                   :page-size="pager.size"
                   :page-sizes="[5, 10, 15, 20]"
                   :total="pager.total"
                   layout="total, sizes, prev, pager, next, jumper"></el-pagination>

    <el-dialog :visible.sync="addFlag"
               :close-on-click-modal="false"
               title="添加预约信息">
      <el-form>
        <el-form-item label="预约用户姓名">
          <el-select v-model="appointment.uid"
                     filterable
                     placeholder="请选择预约用户姓名">
            <el-option v-for="item in userList"
                       :key="item.uid"
                       :label="item.username"
                       :value="item.uid">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="预约地址">
          <el-select v-model="appointment.addid"
                     filterable
                     placeholder="请选择预约地址">
            <el-option v-for="item in addressList"
                       :key="item.addid"
                       :label="item.address"
                       :value="item.addid">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="预约疫苗名称">
          <el-select v-model="appointment.avcid"
                     filterable
                     placeholder="请选择预约疫苗名称">
            <el-option v-for="item in vaccinesList"
                       :key="item.avcid"
                       :label="item.avcname"
                       :value="item.avcid">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="预约时间">
          <el-date-picker v-model="appointment.apptime"
                          value-format="yyyy-MM-dd HH:mm:ss"
                          type="datetime"
                          placeholder="请选择预约时间">
          </el-date-picker>
        </el-form-item>
      </el-form>
      <div slot="footer"
           class="dialog-footer">
        <el-button @click="addFlag = false">取 消</el-button>
        <el-button type="primary"
                   @click="save">确 定</el-button>
      </div>
    </el-dialog>
  </el-card>
</template>

<script>
export default {
  data () {
    return {
      addFlag: false, // 显示添加对话框的标记
      tableData: [],
      pager: {
        page: 1,
        size: 5,
        total: 0
      },
      username: '',
      appointment: {
        addid: 0,
        appstats: 0,
        apptime: '',
        avcid: 0,
        money: '',
        remark: '',
        stats: 0,
        uid: 0
      },
      userList: [],
      vaccinesList: [],
      addressList: []
    }
  },
  methods: {
    openAddDialog () {
      this.appointment = {};
      this.addFlag = !this.addFlag;
    },
    update (row) {
      this.appointment = row;
      this.$http.post('http://127.0.0.1/appointment/changeStats', this.appointment).then(res => {
        if (res.data.code == 200) {
          this.$message({
            message: res.data.message,
            type: 'success'
          });
          this.listPage();
        }
      }).catch(e => {
        this.$message.error('啊哦出错了，服务器端未启动');
      })
    },
    save () {
      this.$http.post('http://127.0.0.1/appointment/save', this.appointment).then(res => {
        if (res.data.code == 200) {
          this.$message({
            message: res.data.message,
            type: 'success'
          });
          this.addFlag = !this.addFlag; //关闭对话代码
          this.listPage();
          this.appointment = {}
        }
      }).catch(e => {
        this.$message.error('啊哦出错了，服务器端未启动');
      })
    },
    handleCurrentChange (val) {
      console.info("改变分页起始数据" + val);
      this.pager.page = val;
      this.listPage(); // 重新调用分页查询方法
    },
    handleSizeChange (val) {
      console.info("改变每页显示的最大条数" + val);
      this.pager.size = val;
      this.listPage();
    },
    listPage () { // 定义分页方法
      this.$http.get('http://127.0.0.1/appointment/listPage', {
        params: {
          page: this.pager.page,
          size: this.pager.size,
          username: this.username
        }
      }).then(res => {
        console.info(res);
        this.tableData = res.data.data.data; // 查询出的数据
        this.pager.total = res.data.data.count; // 返回分页统计记录数
        console.info(this.pager.total);
      })
    },
    listUsers () {
      this.$http.get('http://127.0.0.1/users/list').then(res => {
        this.userList = res.data.data;
      }).catch(err => {
        this.$message.error('啊哦出错了，服务器端未启动');
      })
    },
    listVaccines () {
      this.$http.get('http://127.0.0.1/vaccines/list').then(res => {
        this.vaccinesList = res.data.data;
      }).catch(err => {
        this.$message.error('啊哦出错了，服务器端未启动');
      })
    },

    listAddress () {
      this.$http.get('http://127.0.0.1/address/list').then(res => {
        this.addressList = res.data.data;
      }).catch(err => {
        this.$message.error('啊哦出错了，服务器端未启动');
      })
    }
  },
  created () {
    this.listPage();
    this.listUsers();
    this.listVaccines()
    this.listAddress()
  }
}
</script>

<style>
.el-breadcrumb {
  padding-bottom: 12px;
}
.el-pagination {
  padding-top: 12px;
}
</style>