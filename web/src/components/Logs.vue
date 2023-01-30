<template>
  <el-card>
    <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{path:'/welcome'}">首页</el-breadcrumb-item>
      <el-breadcrumb-item>系统信息管理</el-breadcrumb-item>
      <el-breadcrumb-item>系统日志管理</el-breadcrumb-item>
    </el-breadcrumb>
    <!-- 表格组件 -->
    <el-table :data="tableData">
      <el-table-column prop="optime"
                       label="操作时间"></el-table-column>
      <el-table-column prop="ip"
                       label="操作ip"></el-table-column>
      <el-table-column prop="methods"
                       label="操作方法"></el-table-column>
      <el-table-column prop="ddesc"
                       label="操作方法描述"></el-table-column>
    </el-table>
    <!-- 分页组件 -->
    <el-pagination @size-change="handleSizeChange"
                   @current-change="handleCurrentChange"
                   :current-page="pager.page"
                   :page-size="pager.size"
                   :page-sizes="[5, 10, 15, 20]"
                   :total="pager.total"
                   layout="total, sizes, prev, pager, next, jumper"></el-pagination>
  </el-card>
</template>

<script>
export default {
  data () {
    return {
      tableData: [],
      pager: {
        page: 1,
        size: 5,
        total: 0
      }
    }
  },
  methods: {
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
      this.$http.get('http://127.0.0.1/logs/listPage', {
        params: {
          page: this.pager.page,
          size: this.pager.size,
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