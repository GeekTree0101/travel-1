/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mltravel

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2021-05-12 14:55:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_cms_car`
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_car`;
CREATE TABLE `t_cms_car` (
  `ID` varchar(46) NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int(1) DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '车票标题',
  `START_PLACE` varchar(20) DEFAULT NULL COMMENT '出发地点',
  `END_PLACE` varchar(20) DEFAULT NULL COMMENT '到达地点',
  `START_DATE_AND_TIME` varchar(100) DEFAULT NULL COMMENT '出发日期跟时间',
  `NEED_TIME` double DEFAULT NULL COMMENT '需要时间',
  `GATHER_PLACE` varchar(20) DEFAULT NULL COMMENT '上车集中地',
  `TYPE` int(1) DEFAULT NULL COMMENT '车的类型，0是飞机，1是火车，2是汽车',
  `IMG_URL` varchar(200) DEFAULT NULL COMMENT '图片',
  `STATE` int(1) DEFAULT NULL,
  `REMARK` varchar(5000) DEFAULT NULL COMMENT '备注',
  `PRICE` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cms_car
-- ----------------------------
INSERT INTO `t_cms_car` VALUES ('14707f24beda43f2a5ba09b9077adf6b', null, '2021-03-31 20:37:45', '0', null, null, '郑州-西安机票', '郑州', '西安', '2021-03-31', '1.2', '郑州', '0', null, '1', '去西安啦', '3120');
INSERT INTO `t_cms_car` VALUES ('699709bf6e6b4af8af73c56d1ea6487b', null, '2021-03-31 20:40:14', '0', null, '2021-03-31 20:41:07', '洛阳-郑州火车票', '洛阳', '郑州', '2021-03-31', '0.75', '洛阳', '1', null, '1', '去郑州啦', '27');
INSERT INTO `t_cms_car` VALUES ('7a3b93797256405cbea37ce87b78f7b7', null, '2021-03-31 17:51:38', '0', null, '2021-03-31 20:36:15', '郑州-昆明机票', '郑州', '丽江', '2021-03-31', '1.3', '大理机场', '0', null, '1', '欢迎来到美丽丽江', '2154');

-- ----------------------------
-- Table structure for `t_cms_hotel`
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_hotel`;
CREATE TABLE `t_cms_hotel` (
  `ID` varchar(46) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int(1) DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `HOTEL_NAME` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '酒店名称',
  `HOTEL_INTRO` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '酒店简介',
  `HOTEL_STAR` int(1) DEFAULT NULL COMMENT '酒店星级',
  `LINK_PHONE` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `ADDRESS` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
  `STATE` int(1) DEFAULT NULL COMMENT '状态',
  `IMG_URL` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRICE` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_cms_hotel
-- ----------------------------
INSERT INTO `t_cms_hotel` VALUES ('6ea0151ab3144d459e29d76046c4a6d0', null, '2021-03-31 20:17:54', '0', null, '2021-03-31 20:32:49', '西安锦江之星', '锦江之星是国内知名的快捷酒店品牌，创立于1996年。\r\n创立至今，旗下各品牌酒店总数已超1000多家，分布在全国31个省、直辖市，200多个城市。客房总数超100000间。\r\n锦江之星提供便捷的酒店快速预订、会员特价预订、地图查询预订等特色服务。旗下品牌有锦江之星快捷酒店、金广快捷酒店、百时快捷酒店、白玉兰、锦江都城等。', '4', '400-820-9999', '西安', '1', '/images/jinjiang.jpg', '726');
INSERT INTO `t_cms_hotel` VALUES ('72b3b48d3580425299621c504e03c9ce', null, '2021-03-31 20:22:26', '0', null, '2021-03-31 20:28:58', '郑州如家酒店', '如家酒店是如家酒店集团旗下3大品牌之一。\r\n如家酒店在全国300个城市拥有近2000家酒店。如家酒店多年获得中国金枕头奖“中国最佳经济型连锁酒店品牌”殊荣。2014年，如家酒店以4.2亿美元的品牌价值入选中国品牌100强。\r\n2016年4月4日，首旅酒店集团对如家酒店的私有化购买交易已经完成交割。', '3', '400-820-3333', '郑州', '1', '/images/rujia.jpg', '274');
INSERT INTO `t_cms_hotel` VALUES ('982329d76569465e9a682a007f080c35', null, '2021-03-31 20:19:36', '0', null, '2021-03-31 20:32:43', '上海全季酒店', '全季酒店是华住旗下针对中档酒店市场的有限服务酒店，以简约而富有品质的设计风格，深受客户喜爱的酒店设施，恰到好处的优质服务，致力于为智慧、练达的精英型商旅客人提供最优质地段的选择。', '4', '898-88686988', '上海', '1', '/images/quanji.jpg', '591');
INSERT INTO `t_cms_hotel` VALUES ('c4ea09cc525e4b8c9a38d3eb3cf0a294', null, '2021-03-31 20:21:09', '0', null, '2021-03-31 20:32:37', '北京橘子酒店', '桔子酒店作为华住集团中档酒店中的主力品牌，在产品设计中更多的回归了桔子本质，融入了活力、健康与阳光的全新品牌理念，使桔子酒店以更新鲜、更自然、更健康的品牌形象呈现，在“桔子酒店”空间，住客们可以体验健康、感受快乐、释放活力，并充分感受他的艺术感和时尚感。', '4', '400-819-0099', '北京', '1', '/images/juzi.jpg', '366');
INSERT INTO `t_cms_hotel` VALUES ('cc579a43aa4d4b8388f3823cb105401c', null, '2021-03-24 09:36:46', '1', null, null, '家园酒店', '', null, '131313131', '红海边儿', '1', null, '288');
INSERT INTO `t_cms_hotel` VALUES ('e1b0d27685594ed5aa531278ce8711c1', null, '2021-03-26 10:43:09', '0', null, '2021-03-31 20:32:58', '昆明豪生大酒店', '昆明花之城豪生国际大酒店，整体建筑形象宛如一朵盛开的花瓣和露珠组成的鲜花，是迄今为止全国最美的花卉主题酒店，共设客房2268间，依托云南丰富的植物花卉资源优势，设有玫瑰、山茶花、薰衣草以及兰花四个花卉主题客房。配套设施包括4D穹幕影厅、全球最大温室主题花园、云珍美食汇、全球首个花园商城。', '5', '0871-65918888', '昆明', '1', '/images/kunming.jpg', '522');

-- ----------------------------
-- Table structure for `t_cms_insurance`
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_insurance`;
CREATE TABLE `t_cms_insurance` (
  `ID` varchar(46) NOT NULL,
  `ADD_USER_ID` varchar(46) DEFAULT NULL,
  `ADD_TIME` datetime DEFAULT NULL,
  `DELETE_STATUS` int(1) DEFAULT '0',
  `MODIFY_USER_ID` varchar(46) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `TITLE` varchar(100) DEFAULT NULL COMMENT '保险公司',
  `INSURANCE_COMPANY` int(1) DEFAULT NULL,
  `PRICE` double DEFAULT NULL,
  `TYPE` int(1) DEFAULT NULL,
  `RESUME` varchar(500) DEFAULT NULL,
  `STATE` int(1) DEFAULT NULL,
  `IMG_URL` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cms_insurance
-- ----------------------------
INSERT INTO `t_cms_insurance` VALUES ('0b4d521f55ec4f4eada2f6d16b668e13', null, '2021-03-31 21:27:30', '0', null, null, '上海外滩保险服务', '0', '300', '0', '我帮你保险哦', '1', '/images/pingan2.jpg');
INSERT INTO `t_cms_insurance` VALUES ('63b9a168d3b44b9c8180f6566742e4be', null, '2021-03-31 21:26:11', '0', null, null, '玉龙雪山保险服务', '0', '150', '1', '我替你保险哦', '1', '/images/pingan.jpg');
INSERT INTO `t_cms_insurance` VALUES ('94badae7866f4f7d96ba29f81de2cb97', null, '2021-03-31 21:28:22', '0', null, null, '郑州玉米楼保险服务', '0', '25', '0', '这个很安全哦', '1', '/images/renshou2.jpg');
INSERT INTO `t_cms_insurance` VALUES ('b93e8cdf58e840f89d02cffb2aad4258', null, '2021-03-31 21:27:54', '0', null, '2021-03-31 21:28:03', '西安兵马俑保险服务', '1', '366', '3', '我帮你保险哦', '1', '/images/renshou.jpg');

-- ----------------------------
-- Table structure for `t_cms_message`
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_message`;
CREATE TABLE `t_cms_message` (
  `ID` varchar(46) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int(1) DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户ID',
  `USER_NAME` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `NAME` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `TITLE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `CONTENT` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '内容',
  `STATE` int(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_cms_message
-- ----------------------------
INSERT INTO `t_cms_message` VALUES ('20ec38ae007e467fbca00bed282ada4c', null, '2021-05-11 17:56:17', '0', null, null, 'da3c52b46d10410f9000a0effe75b377', 'zjh', '', '玉米楼', 'dfsafsa', '1');
INSERT INTO `t_cms_message` VALUES ('723f28f276a948dca4daa976e36c7d89', null, '2021-03-27 10:23:51', '0', null, '2021-03-27 10:24:13', 'da3c52b46d10410f9000a0effe75b377', 'zjh', '张呈光', 'dddd', 'dddd', '1');
INSERT INTO `t_cms_message` VALUES ('bb4c8e5837c04f59a8ad8e5fc080a663', null, '2021-03-24 09:37:17', '1', null, null, '88923bfbe2164969b56f0d5c94d271c0', 'zjh', 'zzz', '的撒大苏打', '顶顶顶顶', '1');
INSERT INTO `t_cms_message` VALUES ('e444ed9b1c69474babe0e9de0d46ef64', null, '2021-04-18 20:07:40', '0', null, null, '0740e21cd4614393a02e18f47c1fe92a', '1122', 'aaaa', '11122', '11133', '1');
INSERT INTO `t_cms_message` VALUES ('e937105b5e9f453ab1ed2bf62473e70d', null, '2021-03-27 10:24:20', '0', null, null, 'da3c52b46d10410f9000a0effe75b377', 'zjh', '张呈光', 'dddd', 'aaa', '1');

-- ----------------------------
-- Table structure for `t_cms_scenic_spot`
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_scenic_spot`;
CREATE TABLE `t_cms_scenic_spot` (
  `ID` varchar(46) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int(1) DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `SPOT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '景点名称',
  `SPOT_INTRO` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '景点简介',
  `SPOT_STAR` int(1) DEFAULT NULL COMMENT '景点星级',
  `SPOT_ADDRESS` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '景点地址',
  `OPEN_TIME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '开放时间',
  `TICKETS_MESSAGE` double DEFAULT NULL COMMENT '门票',
  `STATE` int(1) DEFAULT NULL COMMENT '状态',
  `IMG_URL` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_cms_scenic_spot
-- ----------------------------
INSERT INTO `t_cms_scenic_spot` VALUES ('0499f8c670904d97aba647e7d5c190c4', null, '2021-03-31 19:50:21', '0', null, '2021-03-31 20:03:13', '北京故宫博物院', '北京故宫是中国明清两代的皇家宫殿，旧称紫禁城，位于北京中轴线的中心。北京故宫以三大殿为中心，占地面积约72万平方米，建筑面积约15万平方米，有大小宫殿七十多座，房屋九千余间。\r\n北京故宫于明成祖永乐四年（1406年）开始建设，以南京故宫为蓝本营建，到永乐十八年（1420年）建成，成为明清两朝二十四位皇帝的皇宫。民国十四年国庆节（1925年10月10日）故宫博物院正式成立开幕。北京故宫南北长961米，东西宽753米，四面围有高10米的城墙，城外有宽52米的护城河。紫禁城有四座城门，南面为午门，北面为神武门，东面为东华门，西面为西华门。城墙的四角，各有一座风姿绰约的角楼，民间有九梁十八柱七十二条脊之说，形容其结构的复杂。', '5', '北京', '9：00-17：00', '168', '1', '/images/beijing.jpg');
INSERT INTO `t_cms_scenic_spot` VALUES ('10dcecafce524eb08f00db42c87e12f4', null, '2021-04-18 19:56:35', '1', null, null, 'aaaa', 'dasdsad', '5', '西安', '9:30-17:20', '321231', '1', '/images/1.jpg');
INSERT INTO `t_cms_scenic_spot` VALUES ('128e70f2ec66408d8941806a513f0bca', null, '2021-03-31 19:52:11', '0', null, '2021-03-31 20:03:04', '上海外滩', '外滩（英文：The Bund；上海话拼音：nga thae），位于上海市黄浦区的黄浦江畔，即外黄浦滩，为中国历史文化街区。1844年（清道光廿四年）起，外滩这一带被划为英国租界，成为上海十里洋场的真实写照，也是旧上海租界区以及整个上海近代城市开始的起点。\r\n外滩全长1.5公里，南起延安东路，北至苏州河上的外白渡桥，东面即黄浦江，西面是旧上海金融、外贸机构的集中地。上海辟为商埠以后，外国的银行、商行、总会、报社开始在此云集，外滩成为全国乃至远东的金融中心。民国三十二年（1943年）8月，外滩随交还上海公共租界于汪伪国民政府，结束长达百年的租界时期，于民国三十四年（1945年）拥有正式路名中山东一路。', '4', '上海', '20：30-23：20', '388', '1', '/images/shanghai.jpg');
INSERT INTO `t_cms_scenic_spot` VALUES ('213a301cfa1e4904b661105cd5c5b25c', null, '2021-03-31 19:56:59', '0', null, '2021-03-31 20:02:49', '丽江玉龙雪山', '玉龙雪山为云南省丽江市境内雪山群，东界丽（江）鸣（音）公路，西临虎跳峡涧、南起玉湖，北至大具下虎跳峡口，地处东经100°4′2″-100°16′30″、北纬27°3′2″～27°18′57″之间，在丽江北面约15千米处，全长75千米，是北半球最近赤道终年积雪的山脉，隔江西与中甸雪山、东与绵绵山相并列，北自三江口，向南延伸到北纬27°，如扇面向古城展开。全山的13座山峰由南向北纵向排列，主峰扇子陡最高处海拔5596米，终年积雪，雪线高度介于4800～5000米之间。发育有亚欧大陆距离赤道最近的温带海洋性冰川。', '5', '云南', '14：00-17：25', '466', '1', '/images/lijiang.jpg');
INSERT INTO `t_cms_scenic_spot` VALUES ('42a5319ab148486a94d5acdaa92b350d', null, '2021-03-31 19:52:21', '1', null, null, '上海外滩', '外滩（英文：The Bund；上海话拼音：nga thae），位于上海市黄浦区的黄浦江畔，即外黄浦滩，为中国历史文化街区。1844年（清道光廿四年）起，外滩这一带被划为英国租界，成为上海十里洋场的真实写照，也是旧上海租界区以及整个上海近代城市开始的起点。\r\n外滩全长1.5公里，南起延安东路，北至苏州河上的外白渡桥，东面即黄浦江，西面是旧上海金融、外贸机构的集中地。上海辟为商埠以后，外国的银行、商行、总会、报社开始在此云集，外滩成为全国乃至远东的金融中心。民国三十二年（1943年）8月，外滩随交还上海公共租界于汪伪国民政府，结束长达百年的租界时期，于民国三十四年（1945年）拥有正式路名中山东一路。', '4', '上海', '20.30-23.20', '388', '1', null);
INSERT INTO `t_cms_scenic_spot` VALUES ('4762b83c77fb4e66b50b895ac896f9cf', null, '2021-03-29 19:18:17', '0', null, '2021-03-31 20:03:18', '郑州玉米楼', '河南省郑州市郑东新区CBD商务中心，会展宾馆的建筑外形酷似玉米棒，280米的高楼被当地百姓戏称为“大玉米”', '3', '郑州', '8：00-17：00', '68', '1', '/images/zhengzhou.jpg');
INSERT INTO `t_cms_scenic_spot` VALUES ('4f6efc0309ac430ba358c0b958c20053', null, '2021-03-31 19:54:59', '0', null, '2021-03-31 20:02:58', '西安兵马俑', '兵马俑，即秦始皇兵马俑，亦简称秦兵马俑或秦俑，第一批全国重点文物保护单位，第一批中国世界遗产，位于今陕西省西安市临潼区秦始皇陵以东1.5千米处的兵马俑坑内。\r\n兵马俑是古代墓葬雕塑的一个类别。古代实行人殉，奴隶是奴隶主生前的附属品，奴隶主死后奴隶要作为殉葬品为奴隶主陪葬。兵马俑即制成兵马（战车、战马、士兵）形状的殉葬品 。', '5', '西安', '9:30-17:20', '236', '1', '/images/xian.jpg');
INSERT INTO `t_cms_scenic_spot` VALUES ('cd3becf2491343349337ee72ace5f51f', null, '2021-03-31 19:52:12', '1', null, null, '上海外滩', '外滩（英文：The Bund；上海话拼音：nga thae），位于上海市黄浦区的黄浦江畔，即外黄浦滩，为中国历史文化街区。1844年（清道光廿四年）起，外滩这一带被划为英国租界，成为上海十里洋场的真实写照，也是旧上海租界区以及整个上海近代城市开始的起点。\r\n外滩全长1.5公里，南起延安东路，北至苏州河上的外白渡桥，东面即黄浦江，西面是旧上海金融、外贸机构的集中地。上海辟为商埠以后，外国的银行、商行、总会、报社开始在此云集，外滩成为全国乃至远东的金融中心。民国三十二年（1943年）8月，外滩随交还上海公共租界于汪伪国民政府，结束长达百年的租界时期，于民国三十四年（1945年）拥有正式路名中山东一路。', '4', '上海', '20.30-23.20', '388', '1', null);

-- ----------------------------
-- Table structure for `t_cms_strategy`
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_strategy`;
CREATE TABLE `t_cms_strategy` (
  `ID` varchar(46) NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int(1) DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `IMG_URL` varchar(200) DEFAULT NULL COMMENT 'logo图片地址',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '主题',
  `RATING` int(1) DEFAULT NULL COMMENT '等级',
  `SUMMARY` varchar(1000) DEFAULT NULL COMMENT '简介',
  `INTRO_URL` varchar(200) DEFAULT NULL COMMENT '内容图片地址',
  `STATE` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cms_strategy
-- ----------------------------
INSERT INTO `t_cms_strategy` VALUES ('2f71e002bbfe443a92adbb9f8c2d11d9', null, '2021-03-31 17:53:31', '0', null, '2021-03-31 20:52:52', '/images/lijiang.jpg', '玉龙雪山', '5', '来这里很不错哦\r\n', null, '1');
INSERT INTO `t_cms_strategy` VALUES ('4788880ae7d84b08abc07f62e021ec10', null, '2021-03-31 20:54:34', '1', null, null, '/images/zhengzhou.jpg', '玉米楼', '3', '看着也一般般', null, '1');
INSERT INTO `t_cms_strategy` VALUES ('65aa5ff0cd8e414a8161e1d8ddec228b', null, '2021-03-31 20:53:46', '0', null, null, '/images/shanghai.jpg', '外滩', '4', '我觉得还可以', null, '1');
INSERT INTO `t_cms_strategy` VALUES ('a0c3e75d9ad243d5a46b3378824e5d17', null, '2021-03-31 20:54:10', '0', null, '2021-03-31 21:04:21', '/images/a6.jpg', '北京故宫博物院', '5', '非常庄严', '/images/beijing.jpg', '1');
INSERT INTO `t_cms_strategy` VALUES ('a41894f306ca483cb7589694264f16d3', null, '2021-03-31 20:54:33', '0', null, '2021-03-31 20:59:06', '/images/l_img03.jpg', '玉米楼', '3', '看着也一般般', '/images/zhengzhou.jpg', '1');
INSERT INTO `t_cms_strategy` VALUES ('ab13807430a643c9b8835286f40b5298', null, '2021-03-24 09:37:48', '1', null, null, null, '的撒大苏打', '2', '但是大多数', null, '1');
INSERT INTO `t_cms_strategy` VALUES ('d43e968bb55d443a851d768bb6bb3e74', null, '2021-03-31 20:53:21', '0', null, null, '/images/xian.jpg', '西安兵马俑', '5', '我非常喜欢啊', null, '1');

-- ----------------------------
-- Table structure for `t_cms_travel_route`
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_travel_route`;
CREATE TABLE `t_cms_travel_route` (
  `ID` varchar(46) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int(1) DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `TITLE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `START_SITE` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '出发地点',
  `END_SITE` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '结束地点',
  `END_TIME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '结束日期',
  `START_TIME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '出团日期',
  `DAY` int(16) DEFAULT NULL COMMENT '持续天数',
  `PRODUCT_CODE` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品编号',
  `PRICE` double DEFAULT NULL COMMENT '价格',
  `STATE` int(1) DEFAULT NULL COMMENT '状态',
  `IMG_URL` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INTRO` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_cms_travel_route
-- ----------------------------
INSERT INTO `t_cms_travel_route` VALUES ('05f80d56c4ca4aa196394d52009c457a', null, '2021-03-26 10:21:41', '0', null, '2021-03-26 11:08:14', '昆大丽七日游', '昆明机场', '大理机场', '2021-5-1', '2021-3-26', null, null, '2666', '1', null, '从昆明到大理怎么走？\r\n\r\n巴士：可以在昆明南窑汽车站坐车，昆明到大理（下关）车程为4.5小时，票价约90元。车停在下关汽车站，到古城的话可以在车站门口坐4路车前往，用时1.5小时，票价2元。');
INSERT INTO `t_cms_travel_route` VALUES ('20247715b3b1433a95c73ac0049636cb', null, '2021-03-31 20:10:54', '0', null, '2021-03-31 20:12:16', '郑州玉米楼一日游', '焦作', '郑州', '2021-05-01', '2021-03-31', null, null, '236', '1', null, '千玺广场，位于郑东新区CBD如意湖畔，该建筑因外形酷似玉米棒，而被当地人亲切的称为“大玉米”。\r\n其建设设计灵感来自中国现存古老的砖塔之一--“嵩岳寺塔”，主楼曲线与“嵩岳寺塔”吻合。\r\n站在金水路与通泰路交叉口的高楼顶端向前望去，千玺广场如同一个巨大的金“玉米棒”矗立在郑东新区CBD中央，成为一道靓丽风景。');
INSERT INTO `t_cms_travel_route` VALUES ('27165cbe2bc64734bfdb4356a5180e63', null, '2021-03-24 09:35:25', '1', null, null, '红海行动', '红海', '家乡', '2021-3-14', '2021-3-1', null, null, '500.5', '1', null, '');
INSERT INTO `t_cms_travel_route` VALUES ('dc72584290844445b094101b9b908355', null, '2021-03-31 20:05:25', '0', null, null, '西安兵马俑一日游', '郑州', '西安临潼', '2021-05-01', '2021-03-31', null, null, '520', '1', null, '　【自驾】\r\n　　1. 从起点到连霍高速公路\r\n　　2. 连霍高速公路\r\n　　3. 秦俑馆公路到终点');
INSERT INTO `t_cms_travel_route` VALUES ('dcfa6e52696d4bdea849b6143f2cca9d', null, '2021-03-31 20:08:24', '0', null, null, '上海三日游', '沈阳', '上海', '2021-05-01', '2021-03-31', null, null, '6888', '1', null, '交通：沈阳到上海机票200（因为疫情和夜间的原因）上海到杭州高铁票73\r\n在上海期间我们都是买一日的地铁票18\r\n住宿：如家酒店浦东大道店 人均三天248\r\n景点：第一天武康路＋夜骑东方明珠\r\n第二天：田子坊＋城隍庙＋韩国街\r\n第三天：科技馆＋外滩＋迪士尼');
INSERT INTO `t_cms_travel_route` VALUES ('f310a1331e204410b45aa9c3566b6181', null, '2021-03-31 20:09:57', '0', null, '2021-03-31 20:11:38', '北京故宫两日游', '郑州', '北京', '2021-05-07', '2021-03-31', null, null, '3999', '1', null, '早上07:00前到酒店上门接客或打的到现场报销车费、早上拼车接客，请理性选择服务套餐。具体时间在您出行前一天晚上19点至23点导游或是工作人员通知（客人住地不同接客时间不同）。 约6：50/7：10/7：30乘座正规旅游用车导游带队出发、前往举世闻名的万里长城—【八达岭长城】');

-- ----------------------------
-- Table structure for `t_pz_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_pz_admin_user`;
CREATE TABLE `t_pz_admin_user` (
  `ID` varchar(46) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int(1) DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `USER_NAME` varchar(46) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(46) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `LINK_TEL` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `NAME` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `STATE` int(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_pz_admin_user
-- ----------------------------
INSERT INTO `t_pz_admin_user` VALUES ('13dfd081d05e46f2b9730ce6e80dc209', null, '2021-03-24 09:32:41', '1', null, null, 'zjhzjh', '123456', '123456789', 'aaaa', '1');
INSERT INTO `t_pz_admin_user` VALUES ('6ab7ed300cbc404e8a8ca3c34eaa60c3', null, '2021-03-27 09:59:23', '0', null, null, 'zjh123', '123', '13613613', '赵家辉', '1');

-- ----------------------------
-- Table structure for `t_pz_province`
-- ----------------------------
DROP TABLE IF EXISTS `t_pz_province`;
CREATE TABLE `t_pz_province` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `province` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '省份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_pz_province
-- ----------------------------
INSERT INTO `t_pz_province` VALUES ('1', '北京');
INSERT INTO `t_pz_province` VALUES ('2', '天津');
INSERT INTO `t_pz_province` VALUES ('3', '上海');
INSERT INTO `t_pz_province` VALUES ('4', '重庆');
INSERT INTO `t_pz_province` VALUES ('5', '河北');
INSERT INTO `t_pz_province` VALUES ('6', '河南');
INSERT INTO `t_pz_province` VALUES ('7', '云南');
INSERT INTO `t_pz_province` VALUES ('8', '辽宁');
INSERT INTO `t_pz_province` VALUES ('9', '黑龙江');
INSERT INTO `t_pz_province` VALUES ('10', '湖南');
INSERT INTO `t_pz_province` VALUES ('11', '安徽');
INSERT INTO `t_pz_province` VALUES ('12', '山东');
INSERT INTO `t_pz_province` VALUES ('13', '新疆');
INSERT INTO `t_pz_province` VALUES ('14', '江苏');
INSERT INTO `t_pz_province` VALUES ('15', '浙江');
INSERT INTO `t_pz_province` VALUES ('16', '江西');
INSERT INTO `t_pz_province` VALUES ('17', '湖北');
INSERT INTO `t_pz_province` VALUES ('18', '广西');
INSERT INTO `t_pz_province` VALUES ('19', '甘肃');
INSERT INTO `t_pz_province` VALUES ('20', '山西');
INSERT INTO `t_pz_province` VALUES ('21', '内蒙古');
INSERT INTO `t_pz_province` VALUES ('22', '陕西');
INSERT INTO `t_pz_province` VALUES ('23', '吉林');
INSERT INTO `t_pz_province` VALUES ('24', '福建');
INSERT INTO `t_pz_province` VALUES ('25', '贵州');
INSERT INTO `t_pz_province` VALUES ('26', '广东');
INSERT INTO `t_pz_province` VALUES ('27', '青海');
INSERT INTO `t_pz_province` VALUES ('28', '西藏');
INSERT INTO `t_pz_province` VALUES ('29', '四川');
INSERT INTO `t_pz_province` VALUES ('30', '宁夏');
INSERT INTO `t_pz_province` VALUES ('31', '海南');
INSERT INTO `t_pz_province` VALUES ('32', '台湾');
INSERT INTO `t_pz_province` VALUES ('33', '香港');
INSERT INTO `t_pz_province` VALUES ('34', '澳门');

-- ----------------------------
-- Table structure for `t_pz_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_pz_user`;
CREATE TABLE `t_pz_user` (
  `ID` varchar(46) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int(1) DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `USER_NAME` varchar(46) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(46) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `LINK_TEL` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `NAME` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `IC_CODE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份证',
  `STATE` int(1) DEFAULT '1' COMMENT '状态',
  `PROVINCE` int(16) DEFAULT NULL COMMENT '省份',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_pz_user
-- ----------------------------
INSERT INTO `t_pz_user` VALUES ('0740e21cd4614393a02e18f47c1fe92a', null, '2021-04-18 20:04:30', '0', null, '2021-04-18 20:07:21', '1122', '112233', '123213213', 'aaaa', '1321321', '1', '15');
INSERT INTO `t_pz_user` VALUES ('3c9b5cf7455a4520b4b1627a0c2756e1', null, '2021-03-24 09:30:12', '1', null, null, 'zjh', '111', '123456', 'zjhzjh', '123131313131', '1', '6');
INSERT INTO `t_pz_user` VALUES ('88923bfbe2164969b56f0d5c94d271c0', null, '2021-03-24 09:31:54', '1', null, null, 'zjh', '123456', '123456789', 'zzz', '123456ddd', '1', '1');
INSERT INTO `t_pz_user` VALUES ('da3c52b46d10410f9000a0effe75b377', null, '2021-03-26 10:15:48', '0', null, '2021-05-11 17:56:11', 'zjh', '123', '321123', '', '16613161', '1', '6');
INSERT INTO `t_pz_user` VALUES ('ff14032d501944b4b951934fcffc4725', null, '2021-04-16 08:35:21', '1', null, '2021-04-16 08:36:19', 'qqq111', 'aaa111', '1371371', 'zzz', '1238565261', '2', '25');

-- ----------------------------
-- Table structure for `t_yw_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_yw_order`;
CREATE TABLE `t_yw_order` (
  `ID` varchar(46) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int(1) DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `USER_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户ID',
  `USER_NAME` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `PRODUCT_ID` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NAME` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产品名称',
  `FEE` double DEFAULT NULL COMMENT '订单费用',
  `PRODUCT_TYPE` int(1) DEFAULT NULL COMMENT '产品类型1：旅游2：酒店',
  `STATE` int(1) DEFAULT NULL COMMENT '状态',
  `ORDER_CODE` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `ORDER_TIME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单日期',
  `SETOFF_TIME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '预定日期',
  `LINK_TEL` varchar(46) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `PEOPLE_COUNT` int(10) DEFAULT NULL COMMENT '人数',
  `REQUIREMENT` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特殊要求',
  `IC_CODE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份证号码',
  `IMG_URL` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_yw_order
-- ----------------------------
INSERT INTO `t_yw_order` VALUES ('0d055b41b9ce466e9be8f53d71e66b16', null, '2021-05-11 17:57:12', '0', null, '2021-05-11 18:20:51', 'da3c52b46d10410f9000a0effe75b377', 'zjh', 'f310a1331e204410b45aa9c3566b6181', '北京故宫两日游', '3999', '0', '2', 'OE6EA2C', '2021-05-11', '2021-03-31', '321123', null, '无', '16613161', null);
INSERT INTO `t_yw_order` VALUES ('0dc723e79daf40bc87bd8778ae62bf67', null, '2021-04-18 20:05:03', '0', null, '2021-04-18 20:05:18', '0740e21cd4614393a02e18f47c1fe92a', '1122', 'f310a1331e204410b45aa9c3566b6181', '北京故宫两日游', '3999', '0', '1', 'OCE2EDF', '2021-04-18', '2021-03-31', '123213213', null, '无', '1321321', null);
INSERT INTO `t_yw_order` VALUES ('1cb0ee1cd80f4feea5b952f5d0a0fad1', null, '2021-04-16 08:41:14', '1', null, '2021-04-16 08:41:22', 'da3c52b46d10410f9000a0effe75b377', 'zjh', 'c4ea09cc525e4b8c9a38d3eb3cf0a294', '北京橘子酒店', '0', '2', '2', 'OB71386', '2021-04-16', '2021-4-16', '321123', '3', '没有', '16613161', '/images/juzi.jpg');
INSERT INTO `t_yw_order` VALUES ('2118f9b077a2480fbf5b538a302ec79b', null, '2021-04-18 20:06:22', '1', null, '2021-04-18 20:06:29', '0740e21cd4614393a02e18f47c1fe92a', '1122', 'b93e8cdf58e840f89d02cffb2aad4258', '西安兵马俑保险服务', '366', '4', '1', 'O5489DF', '2021-04-18', '2021-04-18', '123213213', null, '无', '1321321', '/images/renshou.jpg');
INSERT INTO `t_yw_order` VALUES ('486cdd95823a48a3ad63ed75735dff4f', null, '2021-03-31 21:29:17', '1', null, '2021-03-31 21:29:24', 'da3c52b46d10410f9000a0effe75b377', 'zjh', '94badae7866f4f7d96ba29f81de2cb97', '郑州玉米楼保险服务', '25', '4', '1', 'OF6C953', '2021-03-31', '2021-03-31', '321123', null, '无', '16613161', '/images/renshou2.jpg');
INSERT INTO `t_yw_order` VALUES ('5377382f99074b92a957d784014d729f', null, '2021-03-24 09:36:06', '1', null, null, '88923bfbe2164969b56f0d5c94d271c0', 'zjh', '27165cbe2bc64734bfdb4356a5180e63', '红海行动', '500.5', '0', '0', 'O08BAF9', '2021-03-24', '2021-3-1', '123456789', null, '无', '123456ddd', null);
INSERT INTO `t_yw_order` VALUES ('66a2df0bfb2e4dba86904b24e8a0c0f0', null, '2021-04-18 20:05:26', '0', null, '2021-04-18 20:05:34', '0740e21cd4614393a02e18f47c1fe92a', '1122', '4f6efc0309ac430ba358c0b958c20053', '西安兵马俑', '236', '1', '1', 'S8269AF', '2021-04-18', '9:30-17:20', '123213213', null, '无', '1321321', '/images/xian.jpg');
INSERT INTO `t_yw_order` VALUES ('6a2d9d7574c242f481c46f7ff7131645', null, '2021-05-11 15:35:07', '0', null, '2021-05-11 17:56:26', 'da3c52b46d10410f9000a0effe75b377', 'zjh', '20247715b3b1433a95c73ac0049636cb', '郑州玉米楼一日游', '236', '0', '1', 'O0ADB20', '2021-05-11', '2021-03-31', '321123', null, '无', '16613161', null);
INSERT INTO `t_yw_order` VALUES ('6f23084ec7554aaca121ca997e499af1', null, '2021-04-16 08:41:37', '1', null, '2021-04-16 08:41:42', 'da3c52b46d10410f9000a0effe75b377', 'zjh', '0499f8c670904d97aba647e7d5c190c4', '北京故宫博物院', '168', '1', '2', 'S17A390', '2021-04-16', '9：00-17：00', '321123', null, '无', '16613161', '/images/beijing.jpg');
INSERT INTO `t_yw_order` VALUES ('7487ea21619247c59f54db406a1b8467', null, '2021-04-18 20:05:50', '0', null, '2021-04-18 20:06:01', '0740e21cd4614393a02e18f47c1fe92a', '1122', '72b3b48d3580425299621c504e03c9ce', '郑州如家酒店', '0', '2', '1', 'O6E49F2', '2021-04-18', '2021-4-16', '123213213', '13', 'sadasdsa', '1321321', '/images/rujia.jpg');
INSERT INTO `t_yw_order` VALUES ('774d8345091d4fa99adeec67b9a4397d', null, '2021-04-16 08:39:21', '1', null, '2021-04-16 08:39:31', 'da3c52b46d10410f9000a0effe75b377', 'zjh', '94badae7866f4f7d96ba29f81de2cb97', '郑州玉米楼保险服务', '25', '4', '2', 'O1F4D43', '2021-04-16', '2021-04-16', '321123', null, '无', '16613161', '/images/renshou2.jpg');
INSERT INTO `t_yw_order` VALUES ('779f12dae5ed4362a4bdca13117a459e', null, '2021-04-15 22:09:06', '1', null, '2021-04-15 22:09:14', 'da3c52b46d10410f9000a0effe75b377', 'zjh', '20247715b3b1433a95c73ac0049636cb', '郑州玉米楼一日游', '236', '0', '1', 'O8D0CE8', '2021-04-15', '2021-03-31', '321123', null, '无', '16613161', null);
INSERT INTO `t_yw_order` VALUES ('93e9d606a6a94bdd993ee4fe92984f47', null, '2021-04-16 08:39:52', '1', null, '2021-04-16 08:40:24', 'da3c52b46d10410f9000a0effe75b377', 'zjh', '699709bf6e6b4af8af73c56d1ea6487b', '洛阳-郑州火车票', '27', '3', '2', 'O9C0D2E', '2021-04-16', '2021-03-31', '321123', null, '无', '16613161', null);
INSERT INTO `t_yw_order` VALUES ('9fdb2df2baff468f8b110fc26984c3d3', null, '2021-03-23 17:11:31', '1', null, null, 'f89648d5597d47acac133610d534c9e1', 'user', '184bbb8db4c74d2ba81f428a1b6031ad', '新会——深圳', '80', '3', '0', 'O3A2E8A', '2021-03-23', '2019-05-11', '13589403330', null, '无', '444783199010018088', '/images/汽车票.jpg');
INSERT INTO `t_yw_order` VALUES ('acdf87cc6f4e44849178df200fc1a04c', null, '2021-03-26 11:04:25', '1', null, '2021-03-26 11:04:35', 'da3c52b46d10410f9000a0effe75b377', 'zjh', '05f80d56c4ca4aa196394d52009c457a', '昆大丽七日游', '2666', '0', '1', 'OE35D25', '2021-03-26', '2021-3-26', '321123', null, '无', '16613161', null);
INSERT INTO `t_yw_order` VALUES ('ce7754e99f1f4e489e9d64bcf86034bc', null, '2021-05-11 18:20:47', '0', null, null, 'da3c52b46d10410f9000a0effe75b377', 'zjh', '0499f8c670904d97aba647e7d5c190c4', '北京故宫博物院', '168', '1', '0', 'S437899', '2021-05-11', '9：00-17：00', '321123', null, '无', '16613161', '/images/beijing.jpg');
INSERT INTO `t_yw_order` VALUES ('d35aff45b63d40e2a696e78c87cbf113', null, '2021-03-30 08:24:45', '0', null, '2021-03-30 08:25:04', 'da3c52b46d10410f9000a0effe75b377', 'zjh', '4762b83c77fb4e66b50b895ac896f9cf', '河南郑州', '333', '1', '1', 'SDE6FF3', '2021-03-30', '8.00-17.00', '321123', null, '无', '16613161', '/images/zhengzhou.jpg');
INSERT INTO `t_yw_order` VALUES ('d9ad69f12dfd43fdb3c2faf10e2fa371', null, '2021-03-26 10:24:09', '1', null, '2021-03-26 10:24:21', 'da3c52b46d10410f9000a0effe75b377', 'zjh', '05f80d56c4ca4aa196394d52009c457a', '昆大丽七日游', '2666', '0', '1', 'OCDB7B3', '2021-03-26', '2021-3-26', '321123', null, '无', '16613161', null);
INSERT INTO `t_yw_order` VALUES ('ee6ba3977954421bbab992dbbf72e932', null, '2021-05-11 17:57:30', '0', null, null, 'da3c52b46d10410f9000a0effe75b377', 'zjh', '213a301cfa1e4904b661105cd5c5b25c', '丽江玉龙雪山', '466', '1', '0', 'S992CB6', '2021-05-11', '14：00-17：25', '321123', null, '无', '16613161', '/images/lijiang.jpg');
INSERT INTO `t_yw_order` VALUES ('f247cf3ab3914ff6a3117fad3c1c6e65', null, '2021-04-18 20:06:09', '1', null, '2021-04-18 20:06:29', '0740e21cd4614393a02e18f47c1fe92a', '1122', '14707f24beda43f2a5ba09b9077adf6b', '郑州-西安机票', '3120', '3', '1', 'O5C4008', '2021-04-18', '2021-03-31', '123213213', null, '无', '1321321', null);
INSERT INTO `t_yw_order` VALUES ('f5b75dc3926340df8007341d541686c5', null, '2021-03-26 11:08:20', '1', null, '2021-03-29 19:47:00', 'da3c52b46d10410f9000a0effe75b377', 'zjh', '05f80d56c4ca4aa196394d52009c457a', '昆大丽七日游', '2666', '0', '1', 'OC34848', '2021-03-26', '2021-3-26', '321123', null, '无', '16613161', null);
