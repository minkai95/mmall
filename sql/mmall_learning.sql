/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : mmall_learning

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2018-12-02 10:58:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mmall_cart
-- ----------------------------
DROP TABLE IF EXISTS `mmall_cart`;
CREATE TABLE `mmall_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `checked` int(11) DEFAULT NULL COMMENT '是否选择,1=已勾选,0=未勾选',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mmall_cart
-- ----------------------------
INSERT INTO `mmall_cart` VALUES ('126', '21', '26', '1', '1', '2017-04-13 21:27:06', '2017-04-13 21:27:06');
INSERT INTO `mmall_cart` VALUES ('130', '1', '28', '10', '1', '2018-11-08 23:59:37', '2018-11-08 23:59:37');

-- ----------------------------
-- Table structure for mmall_category
-- ----------------------------
DROP TABLE IF EXISTS `mmall_category`;
CREATE TABLE `mmall_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别Id',
  `parent_id` int(11) DEFAULT NULL COMMENT '父类别id当id=0时说明是根节点,一级类别',
  `name` varchar(50) DEFAULT NULL COMMENT '类别名称',
  `status` tinyint(1) DEFAULT '1' COMMENT '类别状态1-正常,2-已废弃',
  `sort_order` int(4) DEFAULT NULL COMMENT '排序编号,同类展示顺序,数值相等则自然排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100032 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mmall_category
-- ----------------------------
INSERT INTO `mmall_category` VALUES ('100001', '0', '家用电器', '1', null, '2017-03-25 16:46:00', '2017-03-25 16:46:00');
INSERT INTO `mmall_category` VALUES ('100002', '0', '数码3C', '1', null, '2017-03-25 16:46:21', '2017-03-25 16:46:21');
INSERT INTO `mmall_category` VALUES ('100003', '0', '服装箱包', '1', null, '2017-03-25 16:49:53', '2017-03-25 16:49:53');
INSERT INTO `mmall_category` VALUES ('100004', '0', '食品生鲜', '1', null, '2017-03-25 16:50:19', '2017-03-25 16:50:19');
INSERT INTO `mmall_category` VALUES ('100005', '0', '酒水饮料', '1', null, '2017-03-25 16:50:29', '2017-03-25 16:50:29');
INSERT INTO `mmall_category` VALUES ('100006', '100001', '冰箱', '1', null, '2017-03-25 16:52:15', '2017-03-25 16:52:15');
INSERT INTO `mmall_category` VALUES ('100007', '100001', '电视', '1', null, '2017-03-25 16:52:26', '2017-03-25 16:52:26');
INSERT INTO `mmall_category` VALUES ('100008', '100001', '洗衣机', '1', null, '2017-03-25 16:52:39', '2017-03-25 16:52:39');
INSERT INTO `mmall_category` VALUES ('100009', '100001', '空调', '1', null, '2017-03-25 16:52:45', '2017-03-25 16:52:45');
INSERT INTO `mmall_category` VALUES ('100010', '100001', '电热水器', '1', null, '2017-03-25 16:52:54', '2017-03-25 16:52:54');
INSERT INTO `mmall_category` VALUES ('100011', '100002', '电脑', '1', null, '2017-03-25 16:53:18', '2017-03-25 16:53:18');
INSERT INTO `mmall_category` VALUES ('100012', '100002', '手机', '1', null, '2017-03-25 16:53:27', '2017-03-25 16:53:27');
INSERT INTO `mmall_category` VALUES ('100013', '100002', '平板电脑', '1', null, '2017-03-25 16:53:35', '2017-03-25 16:53:35');
INSERT INTO `mmall_category` VALUES ('100014', '100002', '数码相机', '1', null, '2017-03-25 16:53:56', '2017-03-25 16:53:56');
INSERT INTO `mmall_category` VALUES ('100015', '100002', '3C配件', '1', null, '2017-03-25 16:54:07', '2017-03-25 16:54:07');
INSERT INTO `mmall_category` VALUES ('100016', '100003', '女装', '1', null, '2017-03-25 16:54:44', '2017-03-25 16:54:44');
INSERT INTO `mmall_category` VALUES ('100017', '100003', '帽子', '1', null, '2017-03-25 16:54:51', '2017-03-25 16:54:51');
INSERT INTO `mmall_category` VALUES ('100018', '100003', '旅行箱', '1', null, '2017-03-25 16:55:02', '2017-03-25 16:55:02');
INSERT INTO `mmall_category` VALUES ('100019', '100003', '手提包', '1', null, '2017-03-25 16:55:09', '2017-03-25 16:55:09');
INSERT INTO `mmall_category` VALUES ('100020', '100003', '保暖内衣', '1', null, '2017-03-25 16:55:18', '2017-03-25 16:55:18');
INSERT INTO `mmall_category` VALUES ('100021', '100004', '零食', '1', null, '2017-03-25 16:55:30', '2017-03-25 16:55:30');
INSERT INTO `mmall_category` VALUES ('100022', '100004', '生鲜', '1', null, '2017-03-25 16:55:37', '2017-03-25 16:55:37');
INSERT INTO `mmall_category` VALUES ('100023', '100004', '半成品菜', '1', null, '2017-03-25 16:55:47', '2017-03-25 16:55:47');
INSERT INTO `mmall_category` VALUES ('100024', '100004', '速冻食品', '1', null, '2017-03-25 16:55:56', '2017-03-25 16:55:56');
INSERT INTO `mmall_category` VALUES ('100025', '100004', '进口食品', '1', null, '2017-03-25 16:56:06', '2017-03-25 16:56:06');
INSERT INTO `mmall_category` VALUES ('100026', '100005', '白酒', '1', null, '2017-03-25 16:56:22', '2017-03-25 16:56:22');
INSERT INTO `mmall_category` VALUES ('100027', '100005', '红酒', '1', null, '2017-03-25 16:56:30', '2017-03-25 16:56:30');
INSERT INTO `mmall_category` VALUES ('100028', '100005', '饮料', '1', null, '2017-03-25 16:56:37', '2017-03-25 16:56:37');
INSERT INTO `mmall_category` VALUES ('100029', '100005', '调制鸡尾酒', '1', null, '2017-03-25 16:56:45', '2017-03-25 16:56:45');
INSERT INTO `mmall_category` VALUES ('100030', '100005', '进口洋酒', '1', null, '2017-03-25 16:57:05', '2017-03-25 16:57:05');
INSERT INTO `mmall_category` VALUES ('100031', '0', '已修改的家用电器', '1', null, '2018-10-22 22:19:06', '2018-10-22 22:19:06');

-- ----------------------------
-- Table structure for mmall_order
-- ----------------------------
DROP TABLE IF EXISTS `mmall_order`;
CREATE TABLE `mmall_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_no` bigint(20) DEFAULT NULL COMMENT '订单号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `shipping_id` int(11) DEFAULT NULL,
  `payment` decimal(20,2) DEFAULT NULL COMMENT '实际付款金额,单位是元,保留两位小数',
  `payment_type` int(4) DEFAULT NULL COMMENT '支付类型,1-在线支付',
  `postage` int(10) DEFAULT NULL COMMENT '运费,单位是元',
  `status` int(10) DEFAULT NULL COMMENT '订单状态:0-已取消-10-未付款，20-已付款，40-已发货，50-交易成功，60-交易关闭',
  `payment_time` datetime DEFAULT NULL COMMENT '支付时间',
  `send_time` datetime DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime DEFAULT NULL COMMENT '交易完成时间',
  `close_time` datetime DEFAULT NULL COMMENT '交易关闭时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_no_index` (`order_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mmall_order
-- ----------------------------
INSERT INTO `mmall_order` VALUES ('103', '1491753014256', '1', '25', '13998.00', '1', '0', '20', '2018-11-08 00:36:29', null, null, null, '2017-04-09 23:50:14', '2018-11-08 00:36:42');
INSERT INTO `mmall_order` VALUES ('104', '1491830695216', '1', '26', '13998.00', '1', '0', '10', null, null, null, null, '2017-04-10 21:24:55', '2017-04-10 21:24:55');
INSERT INTO `mmall_order` VALUES ('105', '1492089528889', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:18:48', '2017-04-13 21:18:48');
INSERT INTO `mmall_order` VALUES ('106', '1492090946105', '1', '29', '27894.00', '1', '0', '20', '2017-04-13 21:42:40', null, null, null, '2017-04-13 21:42:26', '2017-04-13 21:42:41');
INSERT INTO `mmall_order` VALUES ('107', '1492091003128', '1', '29', '8597.00', '1', '0', '20', '2017-04-13 21:43:38', null, null, null, '2017-04-13 21:43:23', '2017-04-13 21:43:38');
INSERT INTO `mmall_order` VALUES ('108', '1492091051313', '1', '29', '1999.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:11', '2017-04-13 21:44:11');
INSERT INTO `mmall_order` VALUES ('109', '1492091061513', '1', '29', '6598.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:21', '2017-04-13 21:44:21');
INSERT INTO `mmall_order` VALUES ('110', '1492091069563', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:29', '2017-04-13 21:44:29');
INSERT INTO `mmall_order` VALUES ('111', '1492091076073', '1', '29', '4299.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:36', '2017-04-13 21:44:36');
INSERT INTO `mmall_order` VALUES ('112', '1492091083720', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:43', '2017-04-13 21:44:43');
INSERT INTO `mmall_order` VALUES ('113', '1492091089794', '1', '29', '6999.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:49', '2017-04-13 21:44:49');
INSERT INTO `mmall_order` VALUES ('114', '1492091096400', '1', '29', '6598.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:44:56', '2017-04-13 21:44:56');
INSERT INTO `mmall_order` VALUES ('115', '1492091102371', '1', '29', '3299.00', '1', '0', '10', null, null, null, null, '2017-04-13 21:45:02', '2017-04-13 21:45:02');
INSERT INTO `mmall_order` VALUES ('116', '1492091110004', '1', '29', '8598.00', '1', '0', '40', '2017-04-13 21:55:16', '2017-04-13 21:55:31', null, null, '2017-04-13 21:45:09', '2017-04-13 21:55:31');
INSERT INTO `mmall_order` VALUES ('117', '1492091141269', '1', '29', '22894.00', '1', '0', '40', '2017-04-13 21:46:06', '2018-11-09 00:09:07', null, null, '2017-04-13 21:45:41', '2018-11-09 00:09:07');
INSERT INTO `mmall_order` VALUES ('118', '1541692688600', '1', '29', '20990.00', '1', '0', '0', null, null, null, null, '2018-11-08 23:58:08', '2018-11-08 23:58:08');

-- ----------------------------
-- Table structure for mmall_order_item
-- ----------------------------
DROP TABLE IF EXISTS `mmall_order_item`;
CREATE TABLE `mmall_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单子表id',
  `user_id` int(11) DEFAULT NULL,
  `order_no` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `product_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `product_image` varchar(500) DEFAULT NULL COMMENT '商品图片地址',
  `current_unit_price` decimal(20,2) DEFAULT NULL COMMENT '生成订单时的商品单价，单位是元,保留两位小数',
  `quantity` int(10) DEFAULT NULL COMMENT '商品数量',
  `total_price` decimal(20,2) DEFAULT NULL COMMENT '商品总价,单位是元,保留两位小数',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_no_index` (`order_no`) USING BTREE,
  KEY `order_no_user_id_index` (`user_id`,`order_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mmall_order_item
-- ----------------------------
INSERT INTO `mmall_order_item` VALUES ('113', '1', '1491753014256', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '2', '13998.00', '2017-04-09 23:50:14', '2017-04-09 23:50:14');
INSERT INTO `mmall_order_item` VALUES ('114', '1', '1491830695216', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '2', '13998.00', '2017-04-10 21:24:55', '2017-04-10 21:24:55');
INSERT INTO `mmall_order_item` VALUES ('115', '1', '1492089528889', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:18:48', '2017-04-13 21:18:48');
INSERT INTO `mmall_order_item` VALUES ('116', '1', '1492090946105', '29', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '4299.00', '2', '8598.00', '2017-04-13 21:42:26', '2017-04-13 21:42:26');
INSERT INTO `mmall_order_item` VALUES ('117', '1', '1492090946105', '28', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '1999.00', '1', '1999.00', '2017-04-13 21:42:26', '2017-04-13 21:42:26');
INSERT INTO `mmall_order_item` VALUES ('118', '1', '1492090946105', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:42:26', '2017-04-13 21:42:26');
INSERT INTO `mmall_order_item` VALUES ('119', '1', '1492090946105', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '2', '13998.00', '2017-04-13 21:42:26', '2017-04-13 21:42:26');
INSERT INTO `mmall_order_item` VALUES ('120', '1', '1492091003128', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '2', '6598.00', '2017-04-13 21:43:23', '2017-04-13 21:43:23');
INSERT INTO `mmall_order_item` VALUES ('121', '1', '1492091003128', '28', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '1999.00', '1', '1999.00', '2017-04-13 21:43:23', '2017-04-13 21:43:23');
INSERT INTO `mmall_order_item` VALUES ('122', '1', '1492091051313', '28', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '1999.00', '1', '1999.00', '2017-04-13 21:44:11', '2017-04-13 21:44:11');
INSERT INTO `mmall_order_item` VALUES ('123', '1', '1492091061513', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '2', '6598.00', '2017-04-13 21:44:21', '2017-04-13 21:44:21');
INSERT INTO `mmall_order_item` VALUES ('124', '1', '1492091069563', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:44:29', '2017-04-13 21:44:29');
INSERT INTO `mmall_order_item` VALUES ('125', '1', '1492091076073', '29', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '4299.00', '1', '4299.00', '2017-04-13 21:44:36', '2017-04-13 21:44:36');
INSERT INTO `mmall_order_item` VALUES ('126', '1', '1492091083720', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:44:43', '2017-04-13 21:44:43');
INSERT INTO `mmall_order_item` VALUES ('127', '1', '1492091089794', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '1', '6999.00', '2017-04-13 21:44:49', '2017-04-13 21:44:49');
INSERT INTO `mmall_order_item` VALUES ('128', '1', '1492091096400', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '2', '6598.00', '2017-04-13 21:44:56', '2017-04-13 21:44:56');
INSERT INTO `mmall_order_item` VALUES ('129', '1', '1492091102371', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:45:02', '2017-04-13 21:45:02');
INSERT INTO `mmall_order_item` VALUES ('130', '1', '1492091110004', '29', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '4299.00', '2', '8598.00', '2017-04-13 21:45:09', '2017-04-13 21:45:09');
INSERT INTO `mmall_order_item` VALUES ('131', '1', '1492091141269', '26', 'Apple iPhone 7 Plus (A1661) 128G 玫瑰金色 移动联通电信4G手机', '241997c4-9e62-4824-b7f0-7425c3c28917.jpeg', '6999.00', '1', '6999.00', '2017-04-13 21:45:41', '2017-04-13 21:45:41');
INSERT INTO `mmall_order_item` VALUES ('132', '1', '1492091141269', '27', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', '3299.00', '1', '3299.00', '2017-04-13 21:45:41', '2017-04-13 21:45:41');
INSERT INTO `mmall_order_item` VALUES ('133', '1', '1492091141269', '29', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '4299.00', '2', '8598.00', '2017-04-13 21:45:41', '2017-04-13 21:45:41');
INSERT INTO `mmall_order_item` VALUES ('134', '1', '1492091141269', '28', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '1999.00', '2', '3998.00', '2017-04-13 21:45:41', '2017-04-13 21:45:41');
INSERT INTO `mmall_order_item` VALUES ('135', '1', '1541692688600', '28', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '1999.00', '10', '19990.00', '2018-11-08 23:58:08', '2018-11-08 23:58:08');
INSERT INTO `mmall_order_item` VALUES ('136', '1', '1541692688600', '26', '三星洗衣机', 'test.jpg', '1000.00', '1', '1000.00', '2018-11-08 23:58:08', '2018-11-08 23:58:08');

-- ----------------------------
-- Table structure for mmall_pay_info
-- ----------------------------
DROP TABLE IF EXISTS `mmall_pay_info`;
CREATE TABLE `mmall_pay_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `order_no` bigint(20) DEFAULT NULL COMMENT '订单号',
  `pay_platform` int(10) DEFAULT NULL COMMENT '支付平台:1-支付宝,2-微信',
  `platform_number` varchar(200) DEFAULT NULL COMMENT '支付宝支付流水号',
  `platform_status` varchar(20) DEFAULT NULL COMMENT '支付宝支付状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mmall_pay_info
-- ----------------------------
INSERT INTO `mmall_pay_info` VALUES ('53', '1', '1492090946105', '1', '2017041321001004300200116250', 'WAIT_BUYER_PAY', '2017-04-13 21:42:33', '2017-04-13 21:42:33');
INSERT INTO `mmall_pay_info` VALUES ('54', '1', '1492090946105', '1', '2017041321001004300200116250', 'TRADE_SUCCESS', '2017-04-13 21:42:41', '2017-04-13 21:42:41');
INSERT INTO `mmall_pay_info` VALUES ('55', '1', '1492091003128', '1', '2017041321001004300200116251', 'WAIT_BUYER_PAY', '2017-04-13 21:43:31', '2017-04-13 21:43:31');
INSERT INTO `mmall_pay_info` VALUES ('56', '1', '1492091003128', '1', '2017041321001004300200116251', 'TRADE_SUCCESS', '2017-04-13 21:43:38', '2017-04-13 21:43:38');
INSERT INTO `mmall_pay_info` VALUES ('57', '1', '1492091141269', '1', '2017041321001004300200116252', 'WAIT_BUYER_PAY', '2017-04-13 21:45:59', '2017-04-13 21:45:59');
INSERT INTO `mmall_pay_info` VALUES ('58', '1', '1492091141269', '1', '2017041321001004300200116252', 'TRADE_SUCCESS', '2017-04-13 21:46:07', '2017-04-13 21:46:07');
INSERT INTO `mmall_pay_info` VALUES ('59', '1', '1492091110004', '1', '2017041321001004300200116396', 'WAIT_BUYER_PAY', '2017-04-13 21:55:08', '2017-04-13 21:55:08');
INSERT INTO `mmall_pay_info` VALUES ('60', '1', '1492091110004', '1', '2017041321001004300200116396', 'TRADE_SUCCESS', '2017-04-13 21:55:17', '2017-04-13 21:55:17');
INSERT INTO `mmall_pay_info` VALUES ('61', '1', '1491753014256', '1', '2018110822001454150500615394', 'TRADE_SUCCESS', '2018-11-08 00:36:42', '2018-11-08 00:36:42');

-- ----------------------------
-- Table structure for mmall_product
-- ----------------------------
DROP TABLE IF EXISTS `mmall_product`;
CREATE TABLE `mmall_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `category_id` int(11) NOT NULL COMMENT '分类id,对应mmall_category表的主键',
  `name` varchar(100) NOT NULL COMMENT '商品名称',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '商品副标题',
  `main_image` varchar(500) DEFAULT NULL COMMENT '产品主图,url相对地址',
  `sub_images` text COMMENT '图片地址,json格式,扩展用',
  `detail` text COMMENT '商品详情',
  `price` decimal(20,2) NOT NULL COMMENT '价格,单位-元保留两位小数',
  `stock` int(11) NOT NULL COMMENT '库存数量',
  `status` int(6) DEFAULT '1' COMMENT '商品状态.1-在售 2-下架 3-删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mmall_product
-- ----------------------------
INSERT INTO `mmall_product` VALUES ('26', '1', '三星洗衣机', '三星大促销', 'test.jpg', 'test.jpg', 'detailtext', '1000.00', '99', '1', null, '2018-11-08 23:58:08');
INSERT INTO `mmall_product` VALUES ('27', '100006', 'Midea/美的 BCD-535WKZM(E)冰箱双开门对开门风冷无霜智能电家用', '送品牌烤箱，五一大促', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg', 'ac3e571d-13ce-4fad-89e8-c92c2eccf536.jpeg,4bb02f1c-62d5-48cc-b358-97b05af5740d.jpeg,36bdb49c-72ae-4185-9297-78829b54b566.jpeg', '\r\n\"miaoshu.jpg\"\r\n\r\n\"miaoshu2.jpg\"\"miaoshu3.jpg\"\"miaoshu4.jpg\"\r\n\r\n', '3299.00', '8876', '2', '2017-04-13 18:51:54', '2017-04-13 21:45:41');
INSERT INTO `mmall_product` VALUES ('28', '100012', '4+64G送手环/Huawei/华为 nova 手机P9/P10plus青春', 'NOVA青春版1999元', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg', '0093f5d3-bdb4-4fb0-bec5-5465dfd26363.jpeg,13da2172-4445-4eb5-a13f-c5d4ede8458c.jpeg,58d5d4b7-58d4-4948-81b6-2bae4f79bf02.jpeg', '\r\n\"11TB2fKK3cl0kpuFjSsziXXa.oVXa_!!1777180618.jpg\"\"22TB2YP3AkEhnpuFjSZFpXXcpuXXa_!!1777180618.jpg\"\"33TB2Yyshk.hnpuFjSZFpXXcpuXXa_!!1777180618.jpg\"\"TB2diyziB8kpuFjSspeXXc7IpXa_!!1777180618.jpg\"\r\n\r\n', '1999.00', '9984', '1', '2017-04-13 18:57:18', '2018-11-08 23:58:08');
INSERT INTO `mmall_product` VALUES ('29', '100008', 'Haier/海尔HJ100-1HU1 10公斤滚筒洗衣机全自动带烘干家用大容量 洗烘一体', '门店机型 德邦送货', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg', '173335a4-5dce-4afd-9f18-a10623724c4e.jpeg,42b1b8bc-27c7-4ee1-80ab-753d216a1d49.jpeg,2f1b3de1-1eb1-4c18-8ca2-518934931bec.jpeg', '\r\n\"1TB2WLZrcIaK.eBjSspjXXXL.XXa_!!2114960396.jpg\"\"2TB2zhOFbZCO.eBjSZFzXXaRiVXa_!!2114960396.jpg\"\"3TB27mCtb7WM.eBjSZFhXXbdWpXa_!!2114960396.jpg\"\r\n\r\n', '4299.00', '9993', '1', '2017-04-13 19:07:47', '2017-04-13 21:45:41');
INSERT INTO `mmall_product` VALUES ('30', '1', '三星洗衣机', '三星大促销', 'test.jpg', 'test.jpg', 'detailtext', '1000.00', '100', '1', '2018-10-24 23:40:18', '2018-10-24 23:40:18');

-- ----------------------------
-- Table structure for mmall_shipping
-- ----------------------------
DROP TABLE IF EXISTS `mmall_shipping`;
CREATE TABLE `mmall_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `receiver_name` varchar(20) DEFAULT NULL COMMENT '收货姓名',
  `receiver_phone` varchar(20) DEFAULT NULL COMMENT '收货固定电话',
  `receiver_mobile` varchar(20) DEFAULT NULL COMMENT '收货移动电话',
  `receiver_province` varchar(20) DEFAULT NULL COMMENT '省份',
  `receiver_city` varchar(20) DEFAULT NULL COMMENT '城市',
  `receiver_district` varchar(20) DEFAULT NULL COMMENT '区/县',
  `receiver_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `receiver_zip` varchar(6) DEFAULT NULL COMMENT '邮编',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mmall_shipping
-- ----------------------------
INSERT INTO `mmall_shipping` VALUES ('4', '13', 'geely', '010', '18688888888', '北京', '北京市', '海淀区', '中关村', '100000', '2017-01-22 14:26:25', '2017-01-22 14:26:25');
INSERT INTO `mmall_shipping` VALUES ('7', '17', 'Rosen', '13800138000', '13800138000', '北京', '北京', null, '中关村', '100000', '2017-03-29 12:11:01', '2017-03-29 12:11:01');
INSERT INTO `mmall_shipping` VALUES ('29', '1', 'kane', '010', '18688888888', '北京', '北京市', null, '中关村', '100000', null, '2018-10-28 22:14:17');
INSERT INTO `mmall_shipping` VALUES ('30', '1', 'geely', '010', '18688888888', '北京', '北京市', null, '中关村', '100000', '2018-10-28 22:08:40', '2018-10-28 22:08:40');

-- ----------------------------
-- Table structure for mmall_user
-- ----------------------------
DROP TABLE IF EXISTS `mmall_user`;
CREATE TABLE `mmall_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '用户密码，MD5加密',
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `question` varchar(100) DEFAULT NULL COMMENT '找回密码问题',
  `answer` varchar(100) DEFAULT NULL COMMENT '找回密码答案',
  `role` int(4) NOT NULL COMMENT '角色0-管理员,1-普通用户',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mmall_user
-- ----------------------------
INSERT INTO `mmall_user` VALUES ('1', 'admin', '9BD7ADB4CFAC798B6D5934FD41BAF89A', 'email@aaa.com', '15595959595', '问题', '答案啊', '1', '2016-11-06 16:56:45', '2018-10-22 00:23:07');
INSERT INTO `mmall_user` VALUES ('13', 'geely', '08E9A6EA287E70E7E3F7C982BF7923AC', 'geely@happymmall.com', '13800138000', '问题', '答案', '0', '2016-11-19 22:19:25', '2016-11-19 22:19:25');
INSERT INTO `mmall_user` VALUES ('17', 'rosen', '095AC193FE2212EEC7A93E8FEFF11902', 'rosen1@happymmall.com', '13800138000', '问题', '答案', '0', '2017-03-17 10:51:33', '2017-04-09 23:13:26');
INSERT INTO `mmall_user` VALUES ('21', 'soonerbetter', 'DE6D76FE7C40D5A1A8F04213F2BEFBEE', 'test06@happymmall.com', '13800138000', '105204', '105204', '0', '2017-04-13 21:26:22', '2017-04-13 21:26:22');
INSERT INTO `mmall_user` VALUES ('22', 'admina', '9BD7ADB4CFAC798B6D5934FD41BAF89A', 'admin@happymmall.coma', '13555555555', '问题', '答案', '0', '2018-10-21 23:25:20', '2018-10-21 23:25:20');
