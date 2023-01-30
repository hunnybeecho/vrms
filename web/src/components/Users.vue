<template>
  <el-card>
    <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{path:'/welcome'}">首页</el-breadcrumb-item>
      <el-breadcrumb-item>预约用户管理</el-breadcrumb-item>
      <el-breadcrumb-item>预约用户管理</el-breadcrumb-item>
    </el-breadcrumb>
    <!-- 面板布局 -->
    <el-row :gutter="12">
      <el-col :span="6">
        <el-input clearable
                  @clear="listPage"
                  v-model="username"
                  placeholder="请输入用户名称查询"></el-input>
      </el-col>
      <el-col :span="6">
        <el-button type="primary"
                   icon="el-icon-search"
                   @click="listPage">查询</el-button>
        <el-button type="success"
                   icon="el-icon-plus"
                   @click="openAddDialog">添加</el-button>
      </el-col>
    </el-row>
    <el-table :data="tableData"
              style="width: 100%">
      <el-table-column prop="address"
                       type="expand">
        <template slot-scope="scope">
          <el-form label-position="left"
                   inline
                   class="demo-table-expand">
            <el-form-item label="用户住址">
              <span>{{ scope.row.address }}</span>
            </el-form-item>
          </el-form>
        </template>
      </el-table-column>
      <el-table-column prop="username"
                       label="用户名称"></el-table-column>
      <el-table-column prop="password"
                       label="密码"></el-table-column>
      <el-table-column prop="age"
                       label="年龄"></el-table-column>
      <el-table-column width="200px"
                       prop="idcard"
                       label="身份证"></el-table-column>
      <el-table-column prop="tel"
                       label="电话"></el-table-column>
      <el-table-column prop="stats"
                       label="状态">
        <template slot-scope="scope">
          <el-switch @change="changeStats(scope.row)"
                     v-model="scope.row.stats"
                     active-color="#13ce66"
                     inactive-color="#ff4949"
                     :active-value="0"
                     :inactive-value="1">
          </el-switch>
        </template>
      </el-table-column>
      <el-table-column align="center"
                       label="操作">
        <template slot-scope="scope">
          <el-tooltip content="点击修改"
                      placement="left">
            <el-button type="warning"
                       circle
                       icon="el-icon-edit"
                       @click="openEditDialog(scope.row)"></el-button>
          </el-tooltip>
          <el-tooltip content="点击删除"
                      placement="right">
            <el-button type="danger"
                       circle
                       icon="el-icon-delete"
                       @click="remove(scope.row)"></el-button>
          </el-tooltip>
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
               title="添加用户信息">
      <el-form>
        <el-form-item label="用户名称">
          <el-input v-model="users.username"
                    placeholder="请输入用户名称"></el-input>
        </el-form-item>
        <el-form-item label="密码">
          <el-input v-model="users.password"
                    placeholder="请输入用户密码"
                    type="password"></el-input>
        </el-form-item>
        <el-form-item label="用户性别">
          <el-radio-group v-model="users.sex">
            <el-radio label="男"></el-radio>
            <el-radio label="女"></el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="年龄">
          <el-input v-model="users.age"
                    placeholder="请输入用户年龄"></el-input>
        </el-form-item>
        <el-form-item label="身份证">
          <el-input v-model="users.idcard"
                    placeholder="请输入用户身份证号"></el-input>
        </el-form-item>
        <el-form-item label="电话">
          <el-input v-model="users.tel"
                    placeholder="请输入用户电话号码"></el-input>
        </el-form-item>
        <el-form-item label="住址">
          <el-input v-model="users.address"
                    placeholder="请输入用户住址"
                    type="textarea"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer"
           class="dialog-footer">
        <el-button @click="addFlag = false">取 消</el-button>
        <el-button type="primary"
                   @click="save">确 定</el-button>
      </div>
    </el-dialog>
    <el-dialog :visible.sync="editFlag"
               :close-on-click-modal="false"
               title="修改用户信息">
      <el-form>
        <el-form-item label="用户名称">
          <el-input v-model="users.username"
                    placeholder="请输入用户名称"></el-input>
        </el-form-item>
        <el-form-item label="密码">
          <el-input v-model="users.password"
                    placeholder="请输入用户密码"
                    type="password"></el-input>
        </el-form-item>
        <el-form-item label="用户性别">
          <el-radio-group v-model="users.sex">
            <el-radio label="男"></el-radio>
            <el-radio label="女"></el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="年龄">
          <el-input v-model="users.age"
                    placeholder="请输入用户年龄"></el-input>
        </el-form-item>
        <el-form-item label="身份证">
          <el-input v-model="users.idcard"
                    placeholder="请输入用户身份证号"></el-input>
        </el-form-item>
        <el-form-item label="电话">
          <el-input v-model="users.tel"
                    placeholder="请输入用户电话号码"></el-input>
        </el-form-item>
        <el-form-item label="住址">
          <el-input v-model="users.address"
                    placeholder="请输入用户住址"
                    type="textarea"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer"
           class="dialog-footer">
        <el-button @click="editFlag = false">取 消</el-button>
        <el-button type="primary"
                   @click="update">确 定</el-button>
      </div>
    </el-dialog>
  </el-card>
</template>

<script>
export default {
  data () {
    return {
      addFlag: false, // 显示添加对话框的标记
      editFlag: false,
      tableData: [],
      pager: {
        page: 1,
        size: 5,
        total: 0
      },
      username: '', // 根据管理员名称条件查询
      users: {
        uid: 0,
        username: '',
        password: '',
        sex: '',
        age: 0,
        idcard: '',
        tel: '',
        address: '',
        stats: 0
      }
    }
  },
  methods: {
    openEditDialog (row) {
      this.users = row;
      this.editFlag = !this.editFlag;
    },
    openAddDialog () {
      this.users = {};
      this.addFlag = !this.addFlag;
    },
    save () {
      this.$http.post('http://127.0.0.1//users/save', this.users).then(res => {
        if (res.data.code == 200) {
          this.$message({
            message: res.data.message,
            type: 'success'
          });
          this.addFlag = !this.addFlag;
          this.listPage();
        }
      })
    },
    update () {
      this.$http.post('http://127.0.0.1//users/update', this.users).then(res => {
        if (res.data.code == 200) {
          this.$message({
            message: res.data.message,
            type: 'success'
          });
          this.editFlag = !this.editFlag;
          this.listPage();
        }
      })
    },
    remove (row) {
      this.$http.post('http://127.0.0.1//users/remove?uid=' + row.uid).then(res => {
        if (res.data.code == 200) {
          this.$message({
            message: res.data.message,
            type: 'success'
          });
          this.listPage();
        }
      })
    },
    changeStats (row) {
      console.info(row.stats);
      this.users = row;
      this.$http.post('http://127.0.0.1/users/changeStats', this.users).then(res => {
        console.info(res);
        if (res.data.code == 200) {
          this.$message({
            message: res.data.message,
            type: 'success'
          });
          this.listPage();
        }
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
      this.$http.get('http://127.0.0.1/users/listPage', {
        params: {
          page: this.pager.page,
          size: this.pager.size,
          username: this.username
        }
      }).then(res => {
        console.info(res);
        this.tableData = res.data.data.data; // 查询出的数据
        this.pager.total = res.data.data.count; // 返回分页统计记录数
      })
    }
  },
  created () {
    this.listPage();
  }
}
</script>

<style>
.demo-table-expand {
  font-size: 0;
}
.demo-table-expand label {
  width: 90px;
  color: #99a9bf;
}
.demo-table-expand .el-form-item {
  margin-right: 0;
  margin-bottom: 0;
  width: 50%;
}
.el-breadcrumb {
  padding-bottom: 12px;
}
.el-pagination {
  padding-top: 12px;
}
</style>