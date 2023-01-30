<template>
  <div>
    <el-row :gutter="20">
      <el-col :span="8">
        <el-card shadow="hover"
                 class="mgb20"
                 style="height:252px;">
          <div class="user-info">
            <img src="../assets/img/img.jpg"
                 class="user-avator"
                 alt />
            <div class="user-info-cont">
              <div class="user-info-name">{{name}}</div>
              <div>{{role}}</div>
            </div>
          </div>
          <div class="user-info-list">
            上次登录时间：
            <span>2022-01-08</span>
          </div>
          <div class="user-info-list">
            上次登录地点：
            <span>陕西省西安市</span>
          </div>
        </el-card>
        <el-card shadow="hover"
                 style="height:252px;">
          <div slot="header"
               class="clearfix">
            <span>语言详情</span>
          </div>Vue
          <el-progress :percentage="71.3"
                       color="#42b983"></el-progress>JavaScript
          <el-progress :percentage="24.1"
                       color="#f1e05a"></el-progress>CSS
          <el-progress :percentage="13.7"></el-progress>HTML
          <el-progress :percentage="5.9"
                       color="#f56c6c"></el-progress>
        </el-card>
      </el-col>
      <el-col :span="16">
        <el-row :gutter="20"
                class="mgb20">
          <el-col :span="8">
            <el-card shadow="hover"
                     :body-style="{padding: '0px'}">
              <div class="grid-content grid-con-1">
                <i class="el-icon-lx-people grid-con-icon"></i>
                <div class="grid-cont-right">
                  <div class="grid-num">176</div>
                  <div>用户访问量</div>
                </div>
              </div>
            </el-card>
          </el-col>
          <el-col :span="8">
            <el-card shadow="hover"
                     :body-style="{padding: '0px'}">
              <div class="grid-content grid-con-2">
                <i class="el-icon-lx-notice grid-con-icon"></i>
                <div class="grid-cont-right">
                  <div class="grid-num">2</div>
                  <div>系统消息</div>
                </div>
              </div>
            </el-card>
          </el-col>
          <el-col :span="8">
            <el-card shadow="hover"
                     :body-style="{padding: '0px'}">
              <div class="grid-content grid-con-3">
                <i class="el-icon-lx-goods grid-con-icon"></i>
                <div class="grid-cont-right">
                  <div class="grid-num">4</div>
                  <div>待办事项数量</div>
                </div>
              </div>
            </el-card>
          </el-col>
        </el-row>
        <el-card shadow="hover"
                 style="height:403px;">
          <div slot="header"
               class="clearfix">
            <span>待办事项</span>
            <el-button style="float: right; padding: 3px 0"
                       type="text">添加</el-button>
          </div>
          <el-table :show-header="false"
                    :data="todoList"
                    style="width:100%;">
            <el-table-column width="40">
              <template slot-scope="scope">
                <el-checkbox v-model="scope.row.status"></el-checkbox>
              </template>
            </el-table-column>
            <el-table-column>
              <template slot-scope="scope">
                <div class="todo-item"
                     :class="{'todo-item-del': scope.row.status}">{{scope.row.title}}</div>
              </template>
            </el-table-column>
            <el-table-column width="60">
              <template>
                <i class="el-icon-edit"></i>
                <i class="el-icon-delete"></i>
              </template>
            </el-table-column>
          </el-table>
        </el-card>
      </el-col>
    </el-row>
    <el-row :gutter="20">
      <el-col :span="12">
        <el-card shadow="hover">
          <schart ref="bar"
                  class="schart"
                  canvasId="bar"
                  :options="options"></schart>
        </el-card>
      </el-col>
      <el-col :span="12">
        <el-card shadow="hover">
          <schart ref="line"
                  class="schart"
                  canvasId="line"
                  :options="options2"></schart>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import Schart from 'vue-schart';
export default {
  name: 'dashboard',
  data () {
    return {
      name: localStorage.getItem('ms_username'),
      todoList: [
        {
          title: '预约登记',
          status: false
        },
        {
          title: '预约登记',
          status: false
        },
        {
          title: '预约登记',
          status: false
        },
        {
          title: '预约登记',
          status: false
        },
        {
          title: '预约登记',
          status: true
        },
        {
          title: '预约登记',
          status: true
        }
      ],
      data: [
        {
          name: '2022/01/01',
          value: 1083
        },
        {
          name: '2022/01/02',
          value: 941
        },
        {
          name: '2022/01/03',
          value: 1139
        },
        {
          name: '2022/01/04',
          value: 816
        },
        {
          name: '2022/01/05',
          value: 327
        },
        {
          name: '2022/01/06',
          value: 228
        },
        {
          name: '2022/01/07',
          value: 1065
        }
      ],
      options: {
        type: 'bar',
        title: {
          text: '最近一周疫苗接种人数图'
        },
        bgColor: '#fbfbfb',
        labels: ['周一', '周二', '周三', '周四', '周五'],
        datasets: [
          {
            label: '新冠病毒灭活疫苗',
            fillColor: 'rgba(241, 49, 74, 0.5)',
            data: [2346, 2784, 2707, 1902, 2305]
          },
          {
            label: 'HPV疫苗',
            data: [1643, 1785, 1902, 1375, 1605]
          },
          {
            label: '乙肝疫苗',
            data: [1443, 1983, 1505, 2357, 1202]
          }
        ]
      },
      options2: {
        type: 'line',
        title: {
          text: '近几月疫苗预约人数趋势图'
        },
        labels: ['8月', '9月', '10月', '11月', '12月'],
        datasets: [
          {
            label: '新冠病毒灭活疫苗',
            data: [234, 278, 270, 190, 492]
          },
          {
            label: 'HPV疫苗',
            data: [164, 178, 150, 135, 160]
          },
          {
            label: '乙肝疫苗',
            data: [74, 118, 200, 235, 90]
          }
        ]
      }
    };
  },
  components: {
    Schart
  },
  computed: {
    role () {
      return this.name === 'user' ? '普通用户' : '管理员';
    }
  },
  // created() {
  //     this.handleListener();
  //     this.changeDate();
  // },
  // activated() {
  //     this.handleListener();
  // },
  // deactivated() {
  //     window.removeEventListener('resize', this.renderChart);
  //     bus.$off('collapse', this.handleBus);
  // },
  methods: {
    changeDate () {
      const now = new Date().getTime();
      this.data.forEach((item, index) => {
        const date = new Date(now - (6 - index) * 86400000);
        item.name = `${date.getFullYear()}/${date.getMonth() + 1}/${date.getDate()}`;
      });
    }
    // handleListener() {
    //     bus.$on('collapse', this.handleBus);
    //     // 调用renderChart方法对图表进行重新渲染
    //     window.addEventListener('resize', this.renderChart);
    // },
    // handleBus(msg) {
    //     setTimeout(() => {
    //         this.renderChart();
    //     }, 200);
    // },
    // renderChart() {
    //     this.$refs.bar.renderChart();
    //     this.$refs.line.renderChart();
    // }
  }
};
</script>


<style scoped>
.el-row {
  margin-bottom: 20px;
}
.grid-content {
  display: flex;
  align-items: center;
  height: 100px;
}
.grid-cont-right {
  flex: 1;
  text-align: center;
  font-size: 14px;
  color: #999;
}
.grid-num {
  font-size: 30px;
  font-weight: bold;
}
.grid-con-icon {
  font-size: 50px;
  width: 100px;
  height: 100px;
  text-align: center;
  line-height: 100px;
  color: #fff;
}
.grid-con-1 .grid-con-icon {
  background: rgb(45, 140, 240);
}
.grid-con-1 .grid-num {
  color: rgb(45, 140, 240);
}
.grid-con-2 .grid-con-icon {
  background: rgb(100, 213, 114);
}
.grid-con-2 .grid-num {
  color: rgb(45, 140, 240);
}
.grid-con-3 .grid-con-icon {
  background: rgb(242, 94, 67);
}
.grid-con-3 .grid-num {
  color: rgb(242, 94, 67);
}
.user-info {
  display: flex;
  align-items: center;
  padding-bottom: 20px;
  border-bottom: 2px solid #ccc;
  margin-bottom: 20px;
}
.user-avator {
  width: 120px;
  height: 120px;
  border-radius: 50%;
}
.user-info-cont {
  padding-left: 50px;
  flex: 1;
  font-size: 14px;
  color: #999;
}
.user-info-cont div:first-child {
  font-size: 30px;
  color: #222;
}
.user-info-list {
  font-size: 14px;
  color: #999;
  line-height: 25px;
}
.user-info-list span {
  margin-left: 70px;
}
.mgb20 {
  margin-bottom: 20px;
}
.todo-item {
  font-size: 14px;
}
.todo-item-del {
  text-decoration: line-through;
  color: #999;
}
.schart {
  width: 100%;
  height: 300px;
}
</style>