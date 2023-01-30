<template>
  <el-card>
    <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{path:'/welcome'}">首页</el-breadcrumb-item>
      <el-breadcrumb-item>预约用户管理</el-breadcrumb-item>
      <el-breadcrumb-item>预约地点管理</el-breadcrumb-item>
    </el-breadcrumb>
    <!-- 面板布局 -->
    <el-row :gutter="12">
      <el-col :span="6">
        <el-input clearable
                  @clear="listPage"
                  v-model="addressName"
                  placeholder="请输入地址名称查询"></el-input>
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
    <el-table :data="tableData">
      <el-table-column prop="address"
                       label="地址名称"></el-table-column>
      <el-table-column prop="detail"
                       label="地址详情"></el-table-column>
      <el-table-column prop="tel"
                       label="电话"></el-table-column>
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
               title="添加预约地点信息">
      <el-form>
        <el-form-item label="地址名称">
          <el-input v-model="address.address"
                    placeholder="请输入地址名称"></el-input>
        </el-form-item>
        <el-form-item label="地址详情">
          <el-input v-model="address.detail"
                    type="textarea"
                    placeholder="请输入地址详情"></el-input>
        </el-form-item>
        <el-form-item label="电话">
          <el-input v-model="address.tel"
                    placeholder="请输入电话号码"></el-input>
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
               title="修改预约地点信息">
      <el-form>
        <el-form-item label="地址名称">
          <el-input v-model="address.address"
                    placeholder="请输入地址名称"></el-input>
        </el-form-item>
        <el-form-item label="地址详情">
          <el-input v-model="address.detail"
                    placeholder="请输入地址详情"></el-input>
        </el-form-item>
        <el-form-item label="电话">
          <el-input v-model="address.tel"
                    placeholder="请输入电话号码"></el-input>
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
      addressName: '',
      address: {
        addid: 0,
        address: '',
        detail: '',
        tel: ''
      }
    }
  },
  methods: {
    openEditDialog (row) {
      this.address = row;
      this.editFlag = !this.editFlag;
    },
    openAddDialog () {
      this.address = {};
      this.addFlag = !this.addFlag;
    },
    save () {
      this.$http.post('http://127.0.0.1//address/save', this.address).then(res => {
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
      this.$http.post('http://127.0.0.1//address/update', this.address).then(res => {
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
      this.$http.post('http://127.0.0.1//address/remove?addid=' + row.addid).then(res => {
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
      this.$http.get('http://127.0.0.1/address/listPage', {
        params: {
          page: this.pager.page,
          size: this.pager.size,
          address: this.addressName
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
.el-breadcrumb {
  padding-bottom: 12px;
}
.el-pagination {
  padding-top: 12px;
}
</style>