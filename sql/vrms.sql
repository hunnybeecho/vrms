/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : vrms

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 09/01/2023 12:55:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `addid` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址ID',
  `address` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '地址名称',
  `detail` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '地址详情',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话',
  `ctime` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '添加时间',
  `mtime` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int(11) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`addid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '西安市临潼区', '西安科技大学', '13523435243', '2022-01-04 12:47:17', '2022-01-04 15:04:10', 1);
INSERT INTO `address` VALUES (2, '西安市碑林区', '陕西省人民医院', '029-120', '2022-01-04 14:52:26', '2022-01-05 14:58:52', 0);
INSERT INTO `address` VALUES (3, '西安市灞桥区', '唐都医院', '13583749373', '2022-01-04 15:06:08', NULL, 1);
INSERT INTO `address` VALUES (4, '西安市灞桥区', '唐都医院', '029-120', '2022-01-05 15:01:02', '2022-01-07 02:20:18', 0);
INSERT INTO `address` VALUES (5, '西安市新城区', '西京医院', '029-120', '2022-01-05 15:02:30', '2022-01-07 02:20:23', 0);

-- ----------------------------
-- Table structure for administrators
-- ----------------------------
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户名称',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户密码',
  `images` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '头像',
  `stats` int(11) NULL DEFAULT 0 COMMENT '状态',
  `ctime` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建时间',
  `mtime` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int(11) NULL DEFAULT 0 COMMENT '0未删除,1已删除',
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of administrators
-- ----------------------------
INSERT INTO `administrators` VALUES (1, 'admin', '111111', 'https://img2.baidu.com/it/u=1666784597,3151824921&fm=26&fmt=auto', 0, '2021-12-28 15:29:45', '', 0);
INSERT INTO `administrators` VALUES (2, '张三', '000000', 'https://img0.baidu.com/it/u=4184426087,3279245270&fm=26&fmt=auto', 0, '2021-12-28 15:29:57', '2022-01-04 11:06:57', 0);
INSERT INTO `administrators` VALUES (4, '李四', '000000', 'https://img0.baidu.com/it/u=4184426087,3279245270&fm=26&fmt=auto', 0, '2021-12-28 16:15:02', NULL, 0);
INSERT INTO `administrators` VALUES (5, '王五', '000000', 'https://img0.baidu.com/it/u=4184426087,3279245270&fm=26&fmt=auto', 0, '2022-01-03 14:21:51', NULL, 0);
INSERT INTO `administrators` VALUES (6, '赵六', '000000', 'https://img0.baidu.com/it/u=4184426087,3279245270&fm=26&fmt=auto', 0, '2022-01-03 14:21:56', NULL, 1);
INSERT INTO `administrators` VALUES (7, '孙七', '000000', 'https://img0.baidu.com/it/u=4184426087,3279245270&fm=26&fmt=auto', 0, '2022-01-03 14:22:50', NULL, 0);
INSERT INTO `administrators` VALUES (8, '周八', '111111', 'https://img0.baidu.com/it/u=4184426087,3279245270&fm=26&fmt=auto', 0, '2022-01-03 14:23:01', '2022-01-08 22:20:19', 0);
INSERT INTO `administrators` VALUES (9, '吴九', '000000', 'https://img0.baidu.com/it/u=4184426087,3279245270&fm=26&fmt=auto', 0, '2022-01-03 14:23:14', NULL, 0);
INSERT INTO `administrators` VALUES (10, '郑十', '000000', 'https://img0.baidu.com/it/u=4184426087,3279245270&fm=26&fmt=auto', 0, '2022-01-03 14:23:26', NULL, 1);
INSERT INTO `administrators` VALUES (11, '小王', '000000', 'https://img0.baidu.com/it/u=4184426087,3279245270&fm=26&fmt=auto', 0, '2022-01-04 10:12:40', NULL, 1);
INSERT INTO `administrators` VALUES (12, '小明', '000000', 'https://img0.baidu.com/it/u=4184426087,3279245270&fm=26&fmt=auto', 0, '2022-01-04 10:17:00', NULL, 1);
INSERT INTO `administrators` VALUES (13, '张飞', '1111111', '11111', 0, '2022-01-07 11:13:32', NULL, 1);
INSERT INTO `administrators` VALUES (14, '赵云', '000000', 'https://img0.baidu.com/it/u=4184426087,3279245270&fm=26&fmt=auto', 1, '2022-01-08 22:19:09', NULL, 1);

-- ----------------------------
-- Table structure for appointment
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment`  (
  `appid` int(11) NOT NULL AUTO_INCREMENT COMMENT '预约ID',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户外键',
  `addid` int(11) NULL DEFAULT NULL COMMENT '预约地址外键',
  `avcid` int(11) NULL DEFAULT NULL COMMENT '疫苗外键',
  `money` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '支付金额',
  `appstats` int(11) NULL DEFAULT 0 COMMENT '预约状态 0已预约、1已取消',
  `apptime` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '预约时间',
  `stats` int(11) NULL DEFAULT 0 COMMENT '接种状态 0未接种、1已接种',
  `ctime` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建时间',
  `mtime` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int(11) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  `remark` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`appid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of appointment
-- ----------------------------
INSERT INTO `appointment` VALUES (1, 1, 2, 1, '200', 0, '2022-01-06 22:34:46', 1, NULL, '2022-01-06 22:30:40', 0, '无');
INSERT INTO `appointment` VALUES (4, 2, 4, 4, NULL, 0, '2022-01-06 22:40:57', 1, NULL, '2022-01-06 22:51:20', 0, NULL);
INSERT INTO `appointment` VALUES (6, 1, 5, 1, NULL, 0, '2022-01-06 22:45:41', 1, NULL, '2022-01-08 21:34:01', 0, NULL);
INSERT INTO `appointment` VALUES (7, 1, 5, 4, NULL, 0, '2022-01-06 22:48:10', 1, NULL, '2022-01-08 22:27:44', 0, NULL);
INSERT INTO `appointment` VALUES (8, 3, 2, 4, NULL, 0, '2022-01-07 00:18:52', 0, NULL, NULL, 0, NULL);
INSERT INTO `appointment` VALUES (10, 2, 2, 4, NULL, 0, '2022-01-09 14:00:00', 0, NULL, NULL, 0, NULL);
INSERT INTO `appointment` VALUES (11, 1, 4, 4, NULL, 0, '2022-01-13 00:01:00', 0, NULL, NULL, 0, NULL);
INSERT INTO `appointment` VALUES (12, 2, 5, 5, NULL, 0, '2022-01-13 12:00:00', 0, NULL, NULL, 0, NULL);
INSERT INTO `appointment` VALUES (13, 3, 2, 1, NULL, 0, '2022-01-10 15:00:00', 0, NULL, NULL, 0, NULL);
INSERT INTO `appointment` VALUES (14, 3, 4, 4, NULL, 0, '2022-01-10 16:00:00', 0, NULL, NULL, 0, NULL);

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `opid` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `optime` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作时间',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作ip',
  `methods` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '操作方法',
  `ddesc` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '操作方法描述',
  PRIMARY KEY (`opid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1045 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (1, '2022-01-05 11:42:29', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (2, '2022-01-05 11:53:21', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (3, '2022-01-05 11:58:36', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (4, '2022-01-05 12:06:00', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (5, '2022-01-05 12:06:00', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (6, '2022-01-05 12:06:03', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (7, '2022-01-05 12:06:10', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (8, '2022-01-05 12:06:14', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (9, '2022-01-05 12:06:15', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (10, '2022-01-05 12:06:18', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (11, '2022-01-05 12:06:19', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (12, '2022-01-05 12:06:22', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (13, '2022-01-05 12:06:36', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (14, '2022-01-05 12:07:34', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (15, '2022-01-05 12:07:36', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (16, '2022-01-05 12:09:42', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (17, '2022-01-05 12:10:40', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (18, '2022-01-05 12:10:51', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (19, '2022-01-05 12:11:05', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (20, '2022-01-05 12:11:26', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (21, '2022-01-05 12:11:33', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (22, '2022-01-05 12:11:34', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (23, '2022-01-05 12:36:00', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (24, '2022-01-05 12:37:23', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (25, '2022-01-05 12:37:23', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (26, '2022-01-05 12:37:25', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (27, '2022-01-05 14:08:16', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (28, '2022-01-05 14:08:26', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (29, '2022-01-05 14:10:14', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (30, '2022-01-05 14:11:53', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (31, '2022-01-05 14:14:15', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (32, '2022-01-05 14:14:26', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (33, '2022-01-05 14:14:29', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (34, '2022-01-05 14:14:44', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (35, '2022-01-05 14:14:59', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (36, '2022-01-05 14:18:41', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (37, '2022-01-05 14:19:21', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (38, '2022-01-05 14:23:53', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.save', '添加疫苗信息');
INSERT INTO `logs` VALUES (39, '2022-01-05 14:26:21', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (40, '2022-01-05 14:26:32', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (41, '2022-01-05 14:27:08', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.save', '添加疫苗信息');
INSERT INTO `logs` VALUES (42, '2022-01-05 14:27:08', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (43, '2022-01-05 14:27:59', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (44, '2022-01-05 14:28:27', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.save', '添加疫苗信息');
INSERT INTO `logs` VALUES (45, '2022-01-05 14:28:27', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (46, '2022-01-05 14:31:29', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.save', '添加疫苗信息');
INSERT INTO `logs` VALUES (47, '2022-01-05 14:31:29', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (48, '2022-01-05 14:31:40', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (49, '2022-01-05 14:31:44', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (50, '2022-01-05 14:43:44', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (51, '2022-01-05 14:43:50', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (52, '2022-01-05 14:44:55', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (53, '2022-01-05 14:47:36', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (54, '2022-01-05 14:47:42', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (55, '2022-01-05 14:47:46', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (56, '2022-01-05 14:47:49', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (57, '2022-01-05 14:48:05', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.remove', '删除疫苗信息');
INSERT INTO `logs` VALUES (58, '2022-01-05 14:48:05', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (59, '2022-01-05 14:48:39', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.save', '添加疫苗信息');
INSERT INTO `logs` VALUES (60, '2022-01-05 14:48:39', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (61, '2022-01-05 14:48:47', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.update', '修改疫苗信息');
INSERT INTO `logs` VALUES (62, '2022-01-05 14:48:47', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (63, '2022-01-05 14:57:56', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (64, '2022-01-05 14:58:03', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (65, '2022-01-05 14:58:06', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (66, '2022-01-05 14:58:52', '127.0.0.1', 'com.vrms.app.controller.AddressController.update', '修改预约地点信息');
INSERT INTO `logs` VALUES (67, '2022-01-05 14:58:52', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (68, '2022-01-05 15:01:02', '127.0.0.1', 'com.vrms.app.controller.AddressController.save', '添加预约地点信息');
INSERT INTO `logs` VALUES (69, '2022-01-05 15:01:02', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (70, '2022-01-05 15:01:09', '127.0.0.1', 'com.vrms.app.controller.AddressController.remove', '删除预约地点信息');
INSERT INTO `logs` VALUES (71, '2022-01-05 15:01:09', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (72, '2022-01-05 15:02:30', '127.0.0.1', 'com.vrms.app.controller.AddressController.save', '添加预约地点信息');
INSERT INTO `logs` VALUES (73, '2022-01-05 15:02:30', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (74, '2022-01-05 15:03:07', '127.0.0.1', 'com.vrms.app.controller.AddressController.update', '修改预约地点信息');
INSERT INTO `logs` VALUES (75, '2022-01-05 15:03:07', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (76, '2022-01-05 15:03:15', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (77, '2022-01-05 15:03:17', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (78, '2022-01-05 15:03:49', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (79, '2022-01-05 15:03:56', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (80, '2022-01-06 14:15:25', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (81, '2022-01-06 14:28:19', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (82, '2022-01-06 14:28:32', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (83, '2022-01-06 14:28:39', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (84, '2022-01-06 21:41:52', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (85, '2022-01-06 21:41:55', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (86, '2022-01-06 21:41:55', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (87, '2022-01-06 21:41:55', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (88, '2022-01-06 21:41:55', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (89, '2022-01-06 22:05:50', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.save', '添加预约信息');
INSERT INTO `logs` VALUES (90, '2022-01-06 22:06:15', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (91, '2022-01-06 22:20:05', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (92, '2022-01-06 22:21:12', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (93, '2022-01-06 22:21:27', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (94, '2022-01-06 22:21:41', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (95, '2022-01-06 22:26:39', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (96, '2022-01-06 22:26:39', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (97, '2022-01-06 22:26:39', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (98, '2022-01-06 22:26:39', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (99, '2022-01-06 22:26:52', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (100, '2022-01-06 22:26:52', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (101, '2022-01-06 22:27:17', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (102, '2022-01-06 22:27:17', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (103, '2022-01-06 22:27:17', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (104, '2022-01-06 22:27:17', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (105, '2022-01-06 22:27:38', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (106, '2022-01-06 22:27:38', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (107, '2022-01-06 22:27:38', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (108, '2022-01-06 22:27:38', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (109, '2022-01-06 22:27:53', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (110, '2022-01-06 22:27:53', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (111, '2022-01-06 22:30:22', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (112, '2022-01-06 22:30:22', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (113, '2022-01-06 22:30:22', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (114, '2022-01-06 22:30:22', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (115, '2022-01-06 22:30:39', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (116, '2022-01-06 22:30:39', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (117, '2022-01-06 22:30:39', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (118, '2022-01-06 22:30:39', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (119, '2022-01-06 22:30:40', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (120, '2022-01-06 22:30:40', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (121, '2022-01-06 22:31:24', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (122, '2022-01-06 22:31:24', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (123, '2022-01-06 22:31:24', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (124, '2022-01-06 22:31:24', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (125, '2022-01-06 22:31:27', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (126, '2022-01-06 22:31:27', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (127, '2022-01-06 22:31:27', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (128, '2022-01-06 22:31:27', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (129, '2022-01-06 22:33:19', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (130, '2022-01-06 22:33:19', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (131, '2022-01-06 22:33:19', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (132, '2022-01-06 22:33:19', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (133, '2022-01-06 22:33:32', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (134, '2022-01-06 22:33:32', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (135, '2022-01-06 22:33:32', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (136, '2022-01-06 22:33:32', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (137, '2022-01-06 22:33:45', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (138, '2022-01-06 22:33:45', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (139, '2022-01-06 22:33:45', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (140, '2022-01-06 22:33:45', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (141, '2022-01-06 22:33:50', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (142, '2022-01-06 22:33:50', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (143, '2022-01-06 22:33:50', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (144, '2022-01-06 22:33:50', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (145, '2022-01-06 22:34:22', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (146, '2022-01-06 22:34:22', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (147, '2022-01-06 22:34:22', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (148, '2022-01-06 22:34:22', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (149, '2022-01-06 22:34:35', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (150, '2022-01-06 22:34:35', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (151, '2022-01-06 22:34:35', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (152, '2022-01-06 22:34:35', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (153, '2022-01-06 22:34:52', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (154, '2022-01-06 22:34:52', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (155, '2022-01-06 22:34:52', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (156, '2022-01-06 22:34:52', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (157, '2022-01-06 22:35:22', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (158, '2022-01-06 22:35:28', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.remove', '删除疫苗信息');
INSERT INTO `logs` VALUES (159, '2022-01-06 22:35:28', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (160, '2022-01-06 22:35:33', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (161, '2022-01-06 22:35:33', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (162, '2022-01-06 22:35:33', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (163, '2022-01-06 22:35:33', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (164, '2022-01-06 22:35:41', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (165, '2022-01-06 22:35:43', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (166, '2022-01-06 22:35:43', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (167, '2022-01-06 22:35:43', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (168, '2022-01-06 22:35:43', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (169, '2022-01-06 22:37:04', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.save', '添加预约信息');
INSERT INTO `logs` VALUES (170, '2022-01-06 22:37:04', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (171, '2022-01-06 22:38:57', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (172, '2022-01-06 22:38:57', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (173, '2022-01-06 22:38:57', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (174, '2022-01-06 22:38:57', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (175, '2022-01-06 22:39:06', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (176, '2022-01-06 22:39:06', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (177, '2022-01-06 22:39:06', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (178, '2022-01-06 22:39:06', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (179, '2022-01-06 22:39:14', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.save', '添加预约信息');
INSERT INTO `logs` VALUES (180, '2022-01-06 22:39:14', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (181, '2022-01-06 22:40:20', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (182, '2022-01-06 22:40:20', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (183, '2022-01-06 22:40:20', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (184, '2022-01-06 22:40:20', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (185, '2022-01-06 22:40:52', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (186, '2022-01-06 22:40:52', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (187, '2022-01-06 22:40:52', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (188, '2022-01-06 22:40:52', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (189, '2022-01-06 22:40:57', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.save', '添加预约信息');
INSERT INTO `logs` VALUES (190, '2022-01-06 22:40:57', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (191, '2022-01-06 22:43:02', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (192, '2022-01-06 22:43:02', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (193, '2022-01-06 22:43:02', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (194, '2022-01-06 22:43:02', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (195, '2022-01-06 22:43:58', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (196, '2022-01-06 22:43:58', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (197, '2022-01-06 22:43:58', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (198, '2022-01-06 22:43:58', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (199, '2022-01-06 22:45:03', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.save', '添加预约信息');
INSERT INTO `logs` VALUES (200, '2022-01-06 22:45:03', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (201, '2022-01-06 22:45:35', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (202, '2022-01-06 22:45:35', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (203, '2022-01-06 22:45:35', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (204, '2022-01-06 22:45:35', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (205, '2022-01-06 22:45:41', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.save', '添加预约信息');
INSERT INTO `logs` VALUES (206, '2022-01-06 22:45:41', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (207, '2022-01-06 22:47:57', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (208, '2022-01-06 22:47:57', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (209, '2022-01-06 22:47:57', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (210, '2022-01-06 22:47:57', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (211, '2022-01-06 22:48:01', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (212, '2022-01-06 22:48:01', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (213, '2022-01-06 22:48:01', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (214, '2022-01-06 22:48:01', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (215, '2022-01-06 22:48:10', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.save', '添加预约信息');
INSERT INTO `logs` VALUES (216, '2022-01-06 22:48:10', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (217, '2022-01-06 22:49:41', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (218, '2022-01-06 22:49:41', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (219, '2022-01-06 22:49:41', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (220, '2022-01-06 22:49:41', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (221, '2022-01-06 22:51:20', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (222, '2022-01-06 22:51:20', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (223, '2022-01-06 22:57:55', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (224, '2022-01-06 22:57:55', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (225, '2022-01-06 22:57:55', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (226, '2022-01-06 22:57:55', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (227, '2022-01-06 23:12:24', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (228, '2022-01-06 23:12:24', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (229, '2022-01-06 23:12:24', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (230, '2022-01-06 23:12:24', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (231, '2022-01-06 23:12:52', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (232, '2022-01-06 23:12:52', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (233, '2022-01-06 23:12:52', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (234, '2022-01-06 23:12:52', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (235, '2022-01-06 23:13:15', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (236, '2022-01-06 23:13:15', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (237, '2022-01-06 23:13:15', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (238, '2022-01-06 23:13:15', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (239, '2022-01-06 23:14:45', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (240, '2022-01-06 23:14:45', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (241, '2022-01-06 23:14:45', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (242, '2022-01-06 23:14:45', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (243, '2022-01-06 23:43:17', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (244, '2022-01-06 23:43:24', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (245, '2022-01-06 23:43:24', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (246, '2022-01-06 23:43:24', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (247, '2022-01-06 23:43:24', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (248, '2022-01-06 23:43:25', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (249, '2022-01-06 23:43:28', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (250, '2022-01-06 23:43:29', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (251, '2022-01-06 23:43:39', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (252, '2022-01-06 23:43:39', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (253, '2022-01-06 23:43:39', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (254, '2022-01-06 23:43:39', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (255, '2022-01-06 23:43:40', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (256, '2022-01-06 23:43:40', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (257, '2022-01-06 23:43:40', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (258, '2022-01-06 23:43:40', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (259, '2022-01-06 23:43:40', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (260, '2022-01-06 23:43:41', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (261, '2022-01-06 23:43:41', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (262, '2022-01-06 23:43:41', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (263, '2022-01-06 23:43:41', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (264, '2022-01-06 23:43:41', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (265, '2022-01-06 23:43:42', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (266, '2022-01-06 23:43:43', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (267, '2022-01-06 23:43:43', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (268, '2022-01-06 23:43:43', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (269, '2022-01-06 23:43:43', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (270, '2022-01-06 23:43:43', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (271, '2022-01-06 23:43:44', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (272, '2022-01-06 23:43:44', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (273, '2022-01-06 23:43:44', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (274, '2022-01-06 23:43:44', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (275, '2022-01-06 23:44:16', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (276, '2022-01-06 23:44:19', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (277, '2022-01-06 23:44:20', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (278, '2022-01-06 23:45:21', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (279, '2022-01-06 23:45:21', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (280, '2022-01-06 23:45:21', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (281, '2022-01-06 23:45:21', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (282, '2022-01-06 23:45:21', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (283, '2022-01-06 23:45:23', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (284, '2022-01-06 23:45:23', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (285, '2022-01-06 23:47:06', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (286, '2022-01-06 23:47:19', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (287, '2022-01-06 23:49:55', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (288, '2022-01-06 23:49:55', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (289, '2022-01-06 23:49:55', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (290, '2022-01-06 23:49:55', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (291, '2022-01-06 23:57:05', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (292, '2022-01-06 23:57:05', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (293, '2022-01-06 23:57:05', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (294, '2022-01-06 23:57:05', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (295, '2022-01-06 23:57:07', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (296, '2022-01-06 23:57:09', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (297, '2022-01-06 23:57:10', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (298, '2022-01-06 23:57:17', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (299, '2022-01-06 23:57:25', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (300, '2022-01-06 23:57:25', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (301, '2022-01-06 23:57:25', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (302, '2022-01-06 23:57:25', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (303, '2022-01-06 23:58:31', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (304, '2022-01-06 23:58:31', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (305, '2022-01-06 23:58:31', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (306, '2022-01-06 23:58:31', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (307, '2022-01-06 23:59:06', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (308, '2022-01-06 23:59:06', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (309, '2022-01-06 23:59:06', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (310, '2022-01-06 23:59:06', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (311, '2022-01-06 23:59:40', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (312, '2022-01-06 23:59:40', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (313, '2022-01-06 23:59:40', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (314, '2022-01-06 23:59:40', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (315, '2022-01-07 00:00:34', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (316, '2022-01-07 00:00:50', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (317, '2022-01-07 00:00:50', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (318, '2022-01-07 00:00:50', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (319, '2022-01-07 00:00:50', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (320, '2022-01-07 00:01:34', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (321, '2022-01-07 00:01:34', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (322, '2022-01-07 00:01:34', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (323, '2022-01-07 00:01:34', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (324, '2022-01-07 00:01:40', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (325, '2022-01-07 00:01:40', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (326, '2022-01-07 00:01:40', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (327, '2022-01-07 00:01:40', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (328, '2022-01-07 00:01:56', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (329, '2022-01-07 00:01:56', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (330, '2022-01-07 00:01:56', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (331, '2022-01-07 00:01:56', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (332, '2022-01-07 00:02:00', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (333, '2022-01-07 00:02:01', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (334, '2022-01-07 00:02:02', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (335, '2022-01-07 00:02:02', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (336, '2022-01-07 00:02:02', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (337, '2022-01-07 00:02:02', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (338, '2022-01-07 00:02:03', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (339, '2022-01-07 00:04:06', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (340, '2022-01-07 00:04:10', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (341, '2022-01-07 00:04:13', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (342, '2022-01-07 00:04:13', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (343, '2022-01-07 00:04:13', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (344, '2022-01-07 00:04:13', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (345, '2022-01-07 00:04:15', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (346, '2022-01-07 00:04:17', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (347, '2022-01-07 00:04:18', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (348, '2022-01-07 00:04:21', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (349, '2022-01-07 00:04:21', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (350, '2022-01-07 00:04:21', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (351, '2022-01-07 00:04:21', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (352, '2022-01-07 00:04:37', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (353, '2022-01-07 00:04:37', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (354, '2022-01-07 00:04:37', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (355, '2022-01-07 00:04:37', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (356, '2022-01-07 00:06:54', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (357, '2022-01-07 00:06:58', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (358, '2022-01-07 00:06:58', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (359, '2022-01-07 00:06:58', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (360, '2022-01-07 00:06:58', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (361, '2022-01-07 00:07:01', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (362, '2022-01-07 00:07:02', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (363, '2022-01-07 00:07:03', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (364, '2022-01-07 00:07:04', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (365, '2022-01-07 00:07:16', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (366, '2022-01-07 00:07:16', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (367, '2022-01-07 00:07:16', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (368, '2022-01-07 00:07:16', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (369, '2022-01-07 00:08:08', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (370, '2022-01-07 00:09:49', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (371, '2022-01-07 00:09:49', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (372, '2022-01-07 00:09:49', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (373, '2022-01-07 00:09:49', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (374, '2022-01-07 00:18:31', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (375, '2022-01-07 00:18:31', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (376, '2022-01-07 00:18:31', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (377, '2022-01-07 00:18:31', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (378, '2022-01-07 00:18:34', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (379, '2022-01-07 00:18:35', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (380, '2022-01-07 00:18:35', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (381, '2022-01-07 00:18:35', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (382, '2022-01-07 00:18:35', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (383, '2022-01-07 00:18:52', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.save', '添加预约信息');
INSERT INTO `logs` VALUES (384, '2022-01-07 00:18:52', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (385, '2022-01-07 00:18:54', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (386, '2022-01-07 00:20:59', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (387, '2022-01-07 00:20:59', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (388, '2022-01-07 00:20:59', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (389, '2022-01-07 00:20:59', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (390, '2022-01-07 00:21:11', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.save', '添加预约信息');
INSERT INTO `logs` VALUES (391, '2022-01-07 00:21:12', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (392, '2022-01-07 00:21:13', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (393, '2022-01-07 00:22:32', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (394, '2022-01-07 00:22:32', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (395, '2022-01-07 00:22:32', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (396, '2022-01-07 00:22:32', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (397, '2022-01-07 00:24:54', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (398, '2022-01-07 00:24:54', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (399, '2022-01-07 00:24:54', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (400, '2022-01-07 00:24:54', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (401, '2022-01-07 00:28:06', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (402, '2022-01-07 00:28:06', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (403, '2022-01-07 00:28:06', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (404, '2022-01-07 00:28:06', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (405, '2022-01-07 00:29:48', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (406, '2022-01-07 00:29:48', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (407, '2022-01-07 00:29:48', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (408, '2022-01-07 00:29:48', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (409, '2022-01-07 00:30:01', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.save', '添加预约信息');
INSERT INTO `logs` VALUES (410, '2022-01-07 00:30:02', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (411, '2022-01-07 00:30:03', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (412, '2022-01-07 00:30:47', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (413, '2022-01-07 00:30:47', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (414, '2022-01-07 00:30:47', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (415, '2022-01-07 00:30:47', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (416, '2022-01-07 00:30:51', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (417, '2022-01-07 00:30:52', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (418, '2022-01-07 00:30:56', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (419, '2022-01-07 00:30:57', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (420, '2022-01-07 00:30:57', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (421, '2022-01-07 00:30:57', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (422, '2022-01-07 00:30:57', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (423, '2022-01-07 00:31:09', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (424, '2022-01-07 00:31:10', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (425, '2022-01-07 00:31:11', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (426, '2022-01-07 00:31:13', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (427, '2022-01-07 00:31:14', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (428, '2022-01-07 00:31:14', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (429, '2022-01-07 00:31:14', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (430, '2022-01-07 00:31:14', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (431, '2022-01-07 00:31:49', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (432, '2022-01-07 00:31:50', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (433, '2022-01-07 00:31:51', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (434, '2022-01-07 00:31:53', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (435, '2022-01-07 00:31:55', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (436, '2022-01-07 00:31:56', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (437, '2022-01-07 00:31:59', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (438, '2022-01-07 00:31:59', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (439, '2022-01-07 00:31:59', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (440, '2022-01-07 00:31:59', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (441, '2022-01-07 00:34:32', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (442, '2022-01-07 00:35:03', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (443, '2022-01-07 00:35:47', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (444, '2022-01-07 00:48:13', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (445, '2022-01-07 00:48:13', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (446, '2022-01-07 00:48:13', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (447, '2022-01-07 00:48:13', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (448, '2022-01-07 00:48:14', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (449, '2022-01-07 00:48:15', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (450, '2022-01-07 00:48:15', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (451, '2022-01-07 00:48:17', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (452, '2022-01-07 00:52:38', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (453, '2022-01-07 00:54:58', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (454, '2022-01-07 00:55:07', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (455, '2022-01-07 00:55:12', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (456, '2022-01-07 00:55:20', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (457, '2022-01-07 01:26:31', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (458, '2022-01-07 01:27:46', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (459, '2022-01-07 01:27:49', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (460, '2022-01-07 01:28:24', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (461, '2022-01-07 01:30:06', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (462, '2022-01-07 02:14:43', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (463, '2022-01-07 02:14:43', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (464, '2022-01-07 02:14:43', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (465, '2022-01-07 02:14:43', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (466, '2022-01-07 02:14:46', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (467, '2022-01-07 02:14:48', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (468, '2022-01-07 02:14:49', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (469, '2022-01-07 02:14:54', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (470, '2022-01-07 02:17:56', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (471, '2022-01-07 02:19:14', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (472, '2022-01-07 02:19:19', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (473, '2022-01-07 02:19:25', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (474, '2022-01-07 02:19:25', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (475, '2022-01-07 02:19:25', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (476, '2022-01-07 02:19:25', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (477, '2022-01-07 02:19:34', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (478, '2022-01-07 02:19:47', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (479, '2022-01-07 02:19:59', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (480, '2022-01-07 02:20:18', '127.0.0.1', 'com.vrms.app.controller.AddressController.update', '修改预约地点信息');
INSERT INTO `logs` VALUES (481, '2022-01-07 02:20:18', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (482, '2022-01-07 02:20:23', '127.0.0.1', 'com.vrms.app.controller.AddressController.update', '修改预约地点信息');
INSERT INTO `logs` VALUES (483, '2022-01-07 02:20:23', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (484, '2022-01-07 02:20:36', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (485, '2022-01-07 02:20:36', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (486, '2022-01-07 02:20:36', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (487, '2022-01-07 02:20:36', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (488, '2022-01-07 02:20:37', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (489, '2022-01-07 02:20:38', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (490, '2022-01-07 02:20:38', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (491, '2022-01-07 02:20:38', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (492, '2022-01-07 02:20:38', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (493, '2022-01-07 02:20:46', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (494, '2022-01-07 02:29:29', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (495, '2022-01-07 02:29:32', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (496, '2022-01-07 02:29:32', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (497, '2022-01-07 02:29:32', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (498, '2022-01-07 02:29:32', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (499, '2022-01-07 02:30:10', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (500, '2022-01-07 02:30:13', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (501, '2022-01-07 02:30:13', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (502, '2022-01-07 02:30:13', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (503, '2022-01-07 02:30:13', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (504, '2022-01-07 02:30:19', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (505, '2022-01-07 09:07:28', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (506, '2022-01-07 09:07:38', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (507, '2022-01-07 09:07:38', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (508, '2022-01-07 09:07:38', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (509, '2022-01-07 09:07:38', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (510, '2022-01-07 09:12:06', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (511, '2022-01-07 09:20:17', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (512, '2022-01-07 09:21:13', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (513, '2022-01-07 09:21:13', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (514, '2022-01-07 09:21:13', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (515, '2022-01-07 09:21:13', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (516, '2022-01-07 09:28:08', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (517, '2022-01-07 09:31:07', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.save', '添加疫苗信息');
INSERT INTO `logs` VALUES (518, '2022-01-07 09:31:07', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (519, '2022-01-07 09:33:34', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (520, '2022-01-07 09:33:34', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (521, '2022-01-07 09:33:34', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (522, '2022-01-07 09:33:34', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (523, '2022-01-07 09:33:40', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (524, '2022-01-07 09:33:41', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (525, '2022-01-07 09:33:48', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (526, '2022-01-07 09:33:54', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (527, '2022-01-07 09:34:00', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (528, '2022-01-07 09:34:00', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (529, '2022-01-07 09:34:00', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (530, '2022-01-07 09:34:00', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (531, '2022-01-07 09:34:07', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (532, '2022-01-07 09:53:08', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (533, '2022-01-07 09:54:54', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (534, '2022-01-07 10:34:16', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (535, '2022-01-07 10:42:53', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (536, '2022-01-07 10:44:13', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (537, '2022-01-07 10:44:13', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (538, '2022-01-07 10:44:13', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (539, '2022-01-07 10:44:13', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (540, '2022-01-07 10:44:42', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (541, '2022-01-07 10:44:52', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (542, '2022-01-07 10:44:54', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (543, '2022-01-07 10:45:09', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (544, '2022-01-07 10:47:04', '127.0.0.1', 'com.vrms.app.controller.UsersController.changeStats', '改变用户状态');
INSERT INTO `logs` VALUES (545, '2022-01-07 10:47:04', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (546, '2022-01-07 10:47:05', '127.0.0.1', 'com.vrms.app.controller.UsersController.changeStats', '改变用户状态');
INSERT INTO `logs` VALUES (547, '2022-01-07 10:47:05', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (548, '2022-01-07 10:47:09', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (549, '2022-01-07 10:47:12', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (550, '2022-01-07 10:47:18', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (551, '2022-01-07 10:47:30', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (552, '2022-01-07 10:47:34', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (553, '2022-01-07 10:47:43', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (554, '2022-01-07 10:47:53', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (555, '2022-01-07 10:47:55', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (556, '2022-01-07 10:47:57', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.changeStats', '改变管理员状态');
INSERT INTO `logs` VALUES (557, '2022-01-07 10:47:57', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (558, '2022-01-07 10:47:58', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.changeStats', '改变管理员状态');
INSERT INTO `logs` VALUES (559, '2022-01-07 10:47:58', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (560, '2022-01-07 10:52:44', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (561, '2022-01-07 10:52:55', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (562, '2022-01-07 10:59:38', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (563, '2022-01-07 11:00:17', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (564, '2022-01-07 11:00:17', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (565, '2022-01-07 11:00:18', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (566, '2022-01-07 11:00:18', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (567, '2022-01-07 11:00:18', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (568, '2022-01-07 11:00:18', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (569, '2022-01-07 11:00:18', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (570, '2022-01-07 11:07:45', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (571, '2022-01-07 11:09:04', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (572, '2022-01-07 11:09:04', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (573, '2022-01-07 11:09:04', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (574, '2022-01-07 11:09:04', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (575, '2022-01-07 11:09:21', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (576, '2022-01-07 11:09:27', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (577, '2022-01-07 11:09:53', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.save', '添加预约信息');
INSERT INTO `logs` VALUES (578, '2022-01-07 11:09:53', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (579, '2022-01-07 11:09:56', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (580, '2022-01-07 11:09:59', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (581, '2022-01-07 11:10:05', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (582, '2022-01-07 11:10:05', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (583, '2022-01-07 11:10:13', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (584, '2022-01-07 11:10:16', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (585, '2022-01-07 11:10:31', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (586, '2022-01-07 11:10:59', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.save', '添加疫苗信息');
INSERT INTO `logs` VALUES (587, '2022-01-07 11:10:59', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (588, '2022-01-07 11:11:02', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (589, '2022-01-07 11:11:05', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (590, '2022-01-07 11:11:06', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (591, '2022-01-07 11:11:20', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.update', '修改疫苗信息');
INSERT INTO `logs` VALUES (592, '2022-01-07 11:11:20', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (593, '2022-01-07 11:11:25', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.remove', '删除疫苗信息');
INSERT INTO `logs` VALUES (594, '2022-01-07 11:11:25', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (595, '2022-01-07 11:11:33', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (596, '2022-01-07 11:11:58', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (597, '2022-01-07 11:12:01', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (598, '2022-01-07 11:12:24', '127.0.0.1', 'com.vrms.app.controller.UsersController.save', '添加用户信息');
INSERT INTO `logs` VALUES (599, '2022-01-07 11:12:24', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (600, '2022-01-07 11:12:32', '127.0.0.1', 'com.vrms.app.controller.UsersController.changeStats', '改变用户状态');
INSERT INTO `logs` VALUES (601, '2022-01-07 11:12:32', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (602, '2022-01-07 11:12:43', '127.0.0.1', 'com.vrms.app.controller.UsersController.update', '修改用户信息');
INSERT INTO `logs` VALUES (603, '2022-01-07 11:12:43', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (604, '2022-01-07 11:12:45', '127.0.0.1', 'com.vrms.app.controller.UsersController.remove', '删除用户信息');
INSERT INTO `logs` VALUES (605, '2022-01-07 11:12:45', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (606, '2022-01-07 11:12:49', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (607, '2022-01-07 11:12:52', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (608, '2022-01-07 11:12:52', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (609, '2022-01-07 11:12:58', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (610, '2022-01-07 11:13:12', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (611, '2022-01-07 11:13:17', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (612, '2022-01-07 11:13:32', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.save', '添加管理员信息');
INSERT INTO `logs` VALUES (613, '2022-01-07 11:13:32', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (614, '2022-01-07 11:13:36', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (615, '2022-01-07 11:13:41', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (616, '2022-01-07 11:13:43', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.changeStats', '改变管理员状态');
INSERT INTO `logs` VALUES (617, '2022-01-07 11:13:43', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (618, '2022-01-07 11:13:55', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.remove', '删除管理员信息');
INSERT INTO `logs` VALUES (619, '2022-01-07 11:13:55', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (620, '2022-01-07 11:14:26', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (621, '2022-01-07 11:14:35', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (622, '2022-01-07 11:17:17', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (623, '2022-01-07 11:20:08', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (624, '2022-01-07 11:20:13', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (625, '2022-01-07 11:20:21', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (626, '2022-01-07 11:21:03', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (627, '2022-01-08 18:08:59', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (628, '2022-01-08 18:09:18', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (629, '2022-01-08 18:09:18', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (630, '2022-01-08 18:09:18', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (631, '2022-01-08 18:09:18', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (632, '2022-01-08 18:09:23', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (633, '2022-01-08 18:09:25', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (634, '2022-01-08 18:09:25', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (635, '2022-01-08 18:09:25', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (636, '2022-01-08 18:09:25', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (637, '2022-01-08 19:17:20', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (638, '2022-01-08 19:17:22', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (639, '2022-01-08 19:17:23', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (640, '2022-01-08 19:17:24', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (641, '2022-01-08 19:17:35', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (642, '2022-01-08 19:17:35', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (643, '2022-01-08 19:17:35', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (644, '2022-01-08 19:17:35', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (645, '2022-01-08 19:17:50', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (646, '2022-01-08 19:17:55', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (647, '2022-01-08 19:17:55', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (648, '2022-01-08 19:17:56', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (649, '2022-01-08 19:18:42', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (650, '2022-01-08 19:18:42', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (651, '2022-01-08 19:18:42', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (652, '2022-01-08 19:18:42', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (653, '2022-01-08 19:22:34', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (654, '2022-01-08 19:22:36', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (655, '2022-01-08 19:22:36', '127.0.0.1', 'com.vrms.app.controller.AddressController.listPage', '分页查询预约地点信息');
INSERT INTO `logs` VALUES (656, '2022-01-08 19:22:38', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (657, '2022-01-08 19:24:26', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (658, '2022-01-08 19:24:26', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (659, '2022-01-08 19:24:26', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (660, '2022-01-08 19:24:26', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (661, '2022-01-08 19:27:44', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (662, '2022-01-08 19:27:44', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (663, '2022-01-08 19:28:11', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (664, '2022-01-08 19:28:11', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (665, '2022-01-08 19:29:15', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (666, '2022-01-08 19:29:15', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (667, '2022-01-08 19:29:54', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (668, '2022-01-08 19:29:56', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (669, '2022-01-08 19:29:56', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (670, '2022-01-08 19:31:00', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (671, '2022-01-08 19:31:00', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (672, '2022-01-08 19:31:00', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (673, '2022-01-08 19:31:00', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (674, '2022-01-08 19:31:05', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (675, '2022-01-08 19:31:05', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (676, '2022-01-08 19:31:33', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (677, '2022-01-08 19:31:36', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (678, '2022-01-08 19:31:36', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (679, '2022-01-08 19:31:37', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (680, '2022-01-08 19:31:37', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (681, '2022-01-08 19:31:38', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (682, '2022-01-08 19:31:38', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (683, '2022-01-08 19:33:38', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (684, '2022-01-08 19:33:38', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (685, '2022-01-08 19:33:38', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (686, '2022-01-08 19:33:38', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (687, '2022-01-08 19:33:40', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (688, '2022-01-08 19:33:40', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (689, '2022-01-08 19:33:40', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (690, '2022-01-08 19:33:40', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (691, '2022-01-08 19:33:42', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (692, '2022-01-08 19:33:42', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (693, '2022-01-08 19:38:16', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (694, '2022-01-08 19:41:05', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (695, '2022-01-08 19:41:57', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (696, '2022-01-08 19:42:00', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (697, '2022-01-08 19:42:01', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (698, '2022-01-08 19:42:39', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (699, '2022-01-08 19:43:00', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (700, '2022-01-08 19:43:00', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (701, '2022-01-08 19:43:00', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (702, '2022-01-08 19:43:00', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (703, '2022-01-08 19:43:07', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (704, '2022-01-08 19:43:07', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (705, '2022-01-08 19:43:20', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (706, '2022-01-08 19:43:23', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (707, '2022-01-08 19:43:49', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (708, '2022-01-08 19:43:50', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (709, '2022-01-08 19:43:51', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (710, '2022-01-08 19:43:52', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (711, '2022-01-08 19:44:22', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (712, '2022-01-08 19:44:22', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (713, '2022-01-08 19:44:22', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (714, '2022-01-08 19:44:22', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (715, '2022-01-08 19:44:25', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (716, '2022-01-08 19:44:25', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (717, '2022-01-08 19:45:42', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (718, '2022-01-08 19:45:42', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (719, '2022-01-08 19:45:42', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (720, '2022-01-08 19:45:42', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (721, '2022-01-08 19:45:54', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (722, '2022-01-08 19:45:54', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (723, '2022-01-08 19:45:54', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (724, '2022-01-08 19:45:54', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (725, '2022-01-08 19:45:56', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (726, '2022-01-08 19:45:56', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (727, '2022-01-08 19:46:12', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (728, '2022-01-08 19:46:12', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (729, '2022-01-08 19:46:37', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (730, '2022-01-08 19:46:37', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (731, '2022-01-08 19:46:37', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (732, '2022-01-08 19:46:37', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (733, '2022-01-08 19:47:56', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (734, '2022-01-08 19:47:56', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (735, '2022-01-08 19:47:56', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (736, '2022-01-08 19:47:56', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (737, '2022-01-08 19:47:58', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (738, '2022-01-08 19:47:58', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (739, '2022-01-08 19:47:59', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (740, '2022-01-08 19:47:59', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (741, '2022-01-08 19:47:59', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (742, '2022-01-08 19:47:59', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (743, '2022-01-08 19:49:46', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (744, '2022-01-08 19:49:46', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (745, '2022-01-08 19:49:46', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (746, '2022-01-08 19:49:46', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (747, '2022-01-08 19:49:49', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (748, '2022-01-08 19:49:49', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (749, '2022-01-08 19:49:49', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (750, '2022-01-08 19:49:49', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (751, '2022-01-08 19:49:52', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (752, '2022-01-08 19:49:52', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (753, '2022-01-08 19:52:31', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (754, '2022-01-08 19:52:32', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (755, '2022-01-08 19:52:32', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (756, '2022-01-08 19:52:51', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.save', '添加预约信息');
INSERT INTO `logs` VALUES (757, '2022-01-08 19:52:51', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (758, '2022-01-08 19:52:53', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (759, '2022-01-08 19:52:53', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (760, '2022-01-08 19:54:55', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (761, '2022-01-08 19:54:55', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (762, '2022-01-08 19:54:55', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (763, '2022-01-08 19:54:55', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (764, '2022-01-08 19:55:57', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (765, '2022-01-08 19:55:58', '127.0.0.1', 'com.vrms.app.controller.UsersController.changeStats', '改变用户状态');
INSERT INTO `logs` VALUES (766, '2022-01-08 19:55:58', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (767, '2022-01-08 19:55:59', '127.0.0.1', 'com.vrms.app.controller.UsersController.changeStats', '改变用户状态');
INSERT INTO `logs` VALUES (768, '2022-01-08 19:55:59', '127.0.0.1', 'com.vrms.app.controller.UsersController.listPage', '分页查询用户信息');
INSERT INTO `logs` VALUES (769, '2022-01-08 19:56:07', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (770, '2022-01-08 19:56:07', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (771, '2022-01-08 19:56:07', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (772, '2022-01-08 19:56:07', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (773, '2022-01-08 19:56:09', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (774, '2022-01-08 19:56:10', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (775, '2022-01-08 19:56:10', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (776, '2022-01-08 19:56:10', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (777, '2022-01-08 19:56:10', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (778, '2022-01-08 19:56:15', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (779, '2022-01-08 19:56:16', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (780, '2022-01-08 19:56:16', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (781, '2022-01-08 19:56:16', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (782, '2022-01-08 19:56:16', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (783, '2022-01-08 19:56:17', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (784, '2022-01-08 19:56:18', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (785, '2022-01-08 19:56:18', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (786, '2022-01-08 19:56:18', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (787, '2022-01-08 19:56:18', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (788, '2022-01-08 19:56:20', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (789, '2022-01-08 19:56:20', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (790, '2022-01-08 19:57:55', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (791, '2022-01-08 19:57:58', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (792, '2022-01-08 19:57:58', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (793, '2022-01-08 19:57:58', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (794, '2022-01-08 19:57:58', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (795, '2022-01-08 19:57:59', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (796, '2022-01-08 19:57:59', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (797, '2022-01-08 19:59:54', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (798, '2022-01-08 19:59:54', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (799, '2022-01-08 19:59:54', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (800, '2022-01-08 19:59:54', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (801, '2022-01-08 19:59:57', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (802, '2022-01-08 19:59:57', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (803, '2022-01-08 20:00:09', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (804, '2022-01-08 20:00:11', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (805, '2022-01-08 20:00:31', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (806, '2022-01-08 20:00:31', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (807, '2022-01-08 20:03:12', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (808, '2022-01-08 20:03:12', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (809, '2022-01-08 20:03:14', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (810, '2022-01-08 20:03:14', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (811, '2022-01-08 20:07:28', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (812, '2022-01-08 20:07:28', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (813, '2022-01-08 20:07:28', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (814, '2022-01-08 20:07:28', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (815, '2022-01-08 20:07:32', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (816, '2022-01-08 20:07:32', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (817, '2022-01-08 20:07:36', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (818, '2022-01-08 20:07:37', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (819, '2022-01-08 20:07:37', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (820, '2022-01-08 20:07:41', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (821, '2022-01-08 20:07:56', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (822, '2022-01-08 20:07:58', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (823, '2022-01-08 20:07:58', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (824, '2022-01-08 20:08:02', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (825, '2022-01-08 20:08:12', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.update', '修改疫苗信息');
INSERT INTO `logs` VALUES (826, '2022-01-08 20:08:12', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (827, '2022-01-08 20:08:17', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.update', '修改疫苗信息');
INSERT INTO `logs` VALUES (828, '2022-01-08 20:08:17', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (829, '2022-01-08 20:10:17', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (830, '2022-01-08 20:10:17', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (831, '2022-01-08 20:10:17', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (832, '2022-01-08 20:10:17', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (833, '2022-01-08 20:10:19', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (834, '2022-01-08 20:10:19', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (835, '2022-01-08 20:10:57', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (836, '2022-01-08 20:11:16', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.save', '添加预约信息');
INSERT INTO `logs` VALUES (837, '2022-01-08 20:11:16', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (838, '2022-01-08 20:11:19', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (839, '2022-01-08 20:11:19', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (840, '2022-01-08 20:12:01', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (841, '2022-01-08 20:12:01', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (842, '2022-01-08 20:12:01', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (843, '2022-01-08 20:12:01', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (844, '2022-01-08 20:15:39', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (845, '2022-01-08 20:15:39', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (846, '2022-01-08 20:15:39', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (847, '2022-01-08 20:15:39', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (848, '2022-01-08 20:15:43', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (849, '2022-01-08 20:15:43', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (850, '2022-01-08 20:15:43', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (851, '2022-01-08 20:15:43', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (852, '2022-01-08 20:15:44', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (853, '2022-01-08 20:15:44', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (854, '2022-01-08 20:16:37', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (855, '2022-01-08 20:16:37', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (856, '2022-01-08 20:16:37', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (857, '2022-01-08 20:16:37', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (858, '2022-01-08 20:16:40', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (859, '2022-01-08 20:16:40', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (860, '2022-01-08 20:18:57', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (861, '2022-01-08 20:18:59', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (862, '2022-01-08 20:21:14', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (863, '2022-01-08 20:21:14', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (864, '2022-01-08 20:32:23', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (865, '2022-01-08 20:32:23', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (866, '2022-01-08 20:33:20', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (867, '2022-01-08 20:33:20', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (868, '2022-01-08 20:33:20', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (869, '2022-01-08 20:33:20', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (870, '2022-01-08 20:33:25', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (871, '2022-01-08 20:33:25', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (872, '2022-01-08 20:35:40', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (873, '2022-01-08 20:35:40', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (874, '2022-01-08 20:35:40', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (875, '2022-01-08 20:35:40', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (876, '2022-01-08 20:35:42', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (877, '2022-01-08 20:35:42', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (878, '2022-01-08 20:35:48', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (879, '2022-01-08 20:35:48', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (880, '2022-01-08 20:50:37', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (881, '2022-01-08 21:28:45', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (882, '2022-01-08 21:28:45', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (883, '2022-01-08 21:28:45', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (884, '2022-01-08 21:28:45', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (885, '2022-01-08 21:28:46', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (886, '2022-01-08 21:28:46', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (887, '2022-01-08 21:29:23', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (888, '2022-01-08 21:29:23', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (889, '2022-01-08 21:31:34', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (890, '2022-01-08 21:31:34', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (891, '2022-01-08 21:31:34', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (892, '2022-01-08 21:31:34', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (893, '2022-01-08 21:31:51', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (894, '2022-01-08 21:31:51', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (895, '2022-01-08 21:32:31', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (896, '2022-01-08 21:32:31', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (897, '2022-01-08 21:32:31', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (898, '2022-01-08 21:32:31', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (899, '2022-01-08 21:33:32', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (900, '2022-01-08 21:34:01', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (901, '2022-01-08 21:37:36', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (902, '2022-01-08 21:38:59', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (903, '2022-01-08 21:41:08', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (904, '2022-01-08 21:41:08', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (905, '2022-01-08 21:41:08', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (906, '2022-01-08 21:41:08', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (907, '2022-01-08 21:41:12', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (908, '2022-01-08 21:41:27', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (909, '2022-01-08 21:41:41', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (910, '2022-01-08 21:41:41', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (911, '2022-01-08 21:41:41', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (912, '2022-01-08 21:41:41', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (913, '2022-01-08 21:42:01', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (914, '2022-01-08 21:42:13', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (915, '2022-01-08 21:45:39', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (916, '2022-01-08 21:45:39', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (917, '2022-01-08 21:45:51', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (918, '2022-01-08 21:45:51', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (919, '2022-01-08 21:45:51', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (920, '2022-01-08 21:45:51', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (921, '2022-01-08 21:50:12', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (922, '2022-01-08 21:50:12', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (923, '2022-01-08 21:50:14', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (924, '2022-01-08 21:50:14', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (925, '2022-01-08 21:50:14', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (926, '2022-01-08 21:50:14', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (927, '2022-01-08 21:50:16', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (928, '2022-01-08 21:50:16', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (929, '2022-01-08 21:50:35', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (930, '2022-01-08 21:50:35', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (931, '2022-01-08 21:50:35', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (932, '2022-01-08 21:50:35', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (933, '2022-01-08 21:50:52', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (934, '2022-01-08 21:50:52', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (935, '2022-01-08 21:52:10', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (936, '2022-01-08 21:52:10', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (937, '2022-01-08 21:58:02', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (938, '2022-01-08 21:58:02', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (939, '2022-01-08 21:58:02', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (940, '2022-01-08 21:58:02', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (941, '2022-01-08 21:58:03', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (942, '2022-01-08 21:58:03', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (943, '2022-01-08 22:16:38', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (944, '2022-01-08 22:16:38', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (945, '2022-01-08 22:17:02', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (946, '2022-01-08 22:17:07', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (947, '2022-01-08 22:17:49', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (948, '2022-01-08 22:18:05', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (949, '2022-01-08 22:18:19', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.remove', '删除管理员信息');
INSERT INTO `logs` VALUES (950, '2022-01-08 22:18:19', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (951, '2022-01-08 22:19:09', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.save', '添加管理员信息');
INSERT INTO `logs` VALUES (952, '2022-01-08 22:19:09', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (953, '2022-01-08 22:20:19', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.update', '修改管理员信息');
INSERT INTO `logs` VALUES (954, '2022-01-08 22:20:19', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (955, '2022-01-08 22:20:44', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.changeStats', '改变管理员状态');
INSERT INTO `logs` VALUES (956, '2022-01-08 22:20:44', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (957, '2022-01-08 22:21:01', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.remove', '删除管理员信息');
INSERT INTO `logs` VALUES (958, '2022-01-08 22:21:01', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (959, '2022-01-08 22:22:10', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.remove', '删除管理员信息');
INSERT INTO `logs` VALUES (960, '2022-01-08 22:22:10', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (961, '2022-01-08 22:23:09', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (962, '2022-01-08 22:23:09', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (963, '2022-01-08 22:23:09', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (964, '2022-01-08 22:23:09', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (965, '2022-01-08 22:23:14', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (966, '2022-01-08 22:24:49', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.save', '添加预约信息');
INSERT INTO `logs` VALUES (967, '2022-01-08 22:24:49', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (968, '2022-01-08 22:25:22', '127.0.0.1', 'com.vrms.app.controller.AdministratorsController.listPage', '分页查询管理员信息');
INSERT INTO `logs` VALUES (969, '2022-01-08 22:25:23', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (970, '2022-01-08 22:25:23', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (971, '2022-01-08 22:25:23', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (972, '2022-01-08 22:25:23', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (973, '2022-01-08 22:27:28', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (974, '2022-01-08 22:27:28', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (975, '2022-01-08 22:28:49', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (976, '2022-01-08 22:28:49', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (977, '2022-01-09 00:23:31', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (978, '2022-01-09 00:23:31', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (979, '2022-01-09 00:25:00', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (980, '2022-01-09 00:25:00', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (981, '2022-01-09 00:25:00', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (982, '2022-01-09 00:25:00', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (983, '2022-01-09 00:25:03', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (984, '2022-01-09 00:25:03', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (985, '2022-01-09 00:25:03', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (986, '2022-01-09 00:25:03', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (987, '2022-01-09 00:25:05', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (988, '2022-01-09 00:25:07', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (989, '2022-01-09 00:25:07', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (990, '2022-01-09 00:28:25', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (991, '2022-01-09 00:28:25', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (992, '2022-01-09 00:28:26', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (993, '2022-01-09 00:28:26', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (994, '2022-01-09 00:28:26', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (995, '2022-01-09 00:28:26', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (996, '2022-01-09 00:28:27', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (997, '2022-01-09 00:28:27', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (998, '2022-01-09 00:28:27', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (999, '2022-01-09 00:28:27', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1000, '2022-01-09 00:31:03', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1001, '2022-01-09 00:31:03', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (1002, '2022-01-09 00:31:03', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (1003, '2022-01-09 00:31:03', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (1004, '2022-01-09 00:31:08', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1005, '2022-01-09 00:31:08', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (1006, '2022-01-09 00:31:08', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (1007, '2022-01-09 00:31:08', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (1008, '2022-01-09 00:31:10', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (1009, '2022-01-09 00:31:10', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1010, '2022-01-09 00:31:27', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (1011, '2022-01-09 00:31:27', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1012, '2022-01-09 00:32:37', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (1013, '2022-01-09 00:32:37', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (1014, '2022-01-09 00:32:37', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1015, '2022-01-09 00:32:37', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (1016, '2022-01-09 00:48:45', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (1017, '2022-01-09 00:48:48', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (1018, '2022-01-09 00:48:48', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (1019, '2022-01-09 00:48:48', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (1020, '2022-01-09 00:48:48', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1021, '2022-01-09 00:48:50', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (1022, '2022-01-09 00:48:50', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1023, '2022-07-04 16:35:52', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (1024, '2022-07-04 16:36:04', '0:0:0:0:0:0:0:1', 'com.vrms.app.controller.AdministratorsController.login', '登录');
INSERT INTO `logs` VALUES (1025, '2022-07-04 16:45:04', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (1026, '2022-07-04 16:45:04', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (1027, '2022-07-04 16:45:04', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (1028, '2022-07-04 16:45:04', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1029, '2022-07-04 16:45:09', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1030, '2022-07-04 16:45:12', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1031, '2022-07-04 16:45:14', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1032, '2022-07-04 16:45:17', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (1033, '2022-07-04 16:45:17', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1034, '2022-07-04 16:51:33', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.listPage', '分页查询疫苗信息');
INSERT INTO `logs` VALUES (1035, '2022-07-04 16:53:35', '127.0.0.1', 'com.vrms.app.controller.UsersController.list', '查询所有预约用户注册信息');
INSERT INTO `logs` VALUES (1036, '2022-07-04 16:53:35', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1037, '2022-07-04 16:53:35', '127.0.0.1', 'com.vrms.app.controller.AddressController.list', '查询所有预约地点信息');
INSERT INTO `logs` VALUES (1038, '2022-07-04 16:53:35', '127.0.0.1', 'com.vrms.app.controller.VaccinesController.list', '查询所有疫苗信息');
INSERT INTO `logs` VALUES (1039, '2022-07-04 16:53:38', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (1040, '2022-07-04 16:53:38', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1041, '2022-07-04 17:01:50', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1042, '2022-07-04 17:01:52', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.changeStats', '改变接种状态');
INSERT INTO `logs` VALUES (1043, '2022-07-04 17:01:52', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');
INSERT INTO `logs` VALUES (1044, '2022-07-04 17:08:15', '127.0.0.1', 'com.vrms.app.controller.AppointmentController.listPage', '分页查询预约信息');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户名称',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码',
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '性别',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `idcard` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '身份证',
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话',
  `address` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '住址',
  `ctime` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建时间',
  `mtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int(11) NULL DEFAULT 0 COMMENT '0未删除 , 1已删除',
  `stats` int(11) NULL DEFAULT 0 COMMENT '0未禁用,1已经用',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '张三', '111111', '男', 21, '110110110110110110', '13587263594', '陕西省西安市临潼区斜口街道陕鼓大道48号西安科技大学临潼校区', '2022-01-05 10:44:24', '2022-01-05 10:51:34', 0, 0);
INSERT INTO `users` VALUES (2, '李四', '111111', '女', 19, '110110110110110111', '18700273933', '陕西省西安市临潼区斜口街道陕鼓大道48号西安科技大学临潼校区', '2022-01-05 10:44:39', '2022-01-07 11:12:43', 0, 1);
INSERT INTO `users` VALUES (3, '王五', '111111', '男', 20, '110110110110110112', '18792736499', '陕西省西安市临潼区斜口街道陕鼓大道48号西安科技大学临潼校区', '2022-01-05 10:48:57', NULL, 0, 0);
INSERT INTO `users` VALUES (4, '张三', '111111', '男', 21, '110110110110110110', '13587263594', '陕西省西安市临潼区斜口街道陕鼓大道48号西安科技大学临潼校区', '2022-01-05 10:50:28', NULL, 1, 0);
INSERT INTO `users` VALUES (5, '张三', '111111', '男', 21, '110110110110110110', '13587263594', '陕西省西安市临潼区斜口街道陕鼓大道48号西安科技大学临潼校区', '2022-01-05 10:50:32', NULL, 1, 0);
INSERT INTO `users` VALUES (6, '张飞', '11111', '女', 20, '111111', '9999', '西安市', '2022-01-07 11:12:24', NULL, 1, 0);

-- ----------------------------
-- Table structure for vaccines
-- ----------------------------
DROP TABLE IF EXISTS `vaccines`;
CREATE TABLE `vaccines`  (
  `avcid` int(11) NOT NULL AUTO_INCREMENT COMMENT '疫苗ID',
  `avcname` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '疫苗名称',
  `manufactor` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成厂家',
  `mdate` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生产日期',
  `price` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '单价',
  `instructions` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '说明',
  `ctime` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建时间',
  `mtime` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int(11) NULL DEFAULT 0 COMMENT '0未删除 1已删除',
  PRIMARY KEY (`avcid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vaccines
-- ----------------------------
INSERT INTO `vaccines` VALUES (1, '新冠病毒灭活疫苗', '北京生物制品研究所有限公司', '2022-01-04', '200', '慢性疾病的急性发作期、严重慢性疾病患者慎用。', '2022-01-05 14:27:08', '2022-01-08 20:08:17', 0);
INSERT INTO `vaccines` VALUES (4, 'HPV疫苗', '默沙东', '2022-01-04', '2000', '本品适用于16~26岁女性的预防接种。', '2022-01-05 14:48:39', NULL, 0);
INSERT INTO `vaccines` VALUES (5, '乙肝疫苗', '北京天坛生物', '2022-01-02', '20', '患有肝炎、发热、急性或慢性严重疾病，有过敏史者禁用。', '2022-01-07 09:31:07', NULL, 0);
INSERT INTO `vaccines` VALUES (6, 'HH', '西安', '2022-01-05', '10', '疫苗', '2022-01-07 11:10:59', '2022-01-07 11:11:20', 1);

SET FOREIGN_KEY_CHECKS = 1;
