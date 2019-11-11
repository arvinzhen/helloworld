/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : tp51admin

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-01-25 17:24:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tp_comment`
-- ----------------------------
DROP TABLE IF EXISTS `tp_comment`;
CREATE TABLE `tp_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `names` varchar(50) DEFAULT NULL COMMENT '联系人',
  `sex` varchar(10) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `area` varchar(50) NOT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `content` text NOT NULL,
  `reply` text,
  `addtime` varchar(50) DEFAULT NULL,
  `ischeck` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否查看',
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_comment
-- ----------------------------
INSERT INTO `tp_comment` VALUES ('202', '微信开发', '庄子', null, '18970097776', '', null, '88085905@qqq.com', '我要做一个微信小程序', null, '1506092467', '0', null);

-- ----------------------------
-- Table structure for `tp_downusers`
-- ----------------------------
DROP TABLE IF EXISTS `tp_downusers`;
CREATE TABLE `tp_downusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '下载用户id',
  `did` int(11) DEFAULT NULL COMMENT '下载产品id',
  `downtime` varchar(10) DEFAULT NULL COMMENT '下载时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_downusers
-- ----------------------------
INSERT INTO `tp_downusers` VALUES ('183', '63', '71', '1541567185');
INSERT INTO `tp_downusers` VALUES ('182', '31', '65', '1541566817');
INSERT INTO `tp_downusers` VALUES ('181', '31', '64', '1541566812');
INSERT INTO `tp_downusers` VALUES ('180', '31', '64', '1541566809');
INSERT INTO `tp_downusers` VALUES ('197', '187', '60', '1541661825');
INSERT INTO `tp_downusers` VALUES ('196', '63', '77', '1541636784');
INSERT INTO `tp_downusers` VALUES ('195', '14', '76', '1541603429');
INSERT INTO `tp_downusers` VALUES ('194', '80', '62', '1541590225');
INSERT INTO `tp_downusers` VALUES ('193', '80', '77', '1541590203');
INSERT INTO `tp_downusers` VALUES ('192', '58', '71', '1541586859');
INSERT INTO `tp_downusers` VALUES ('191', '58', '60', '1541586749');
INSERT INTO `tp_downusers` VALUES ('190', '85', '64', '1541569362');
INSERT INTO `tp_downusers` VALUES ('189', '85', '65', '1541569346');
INSERT INTO `tp_downusers` VALUES ('188', '85', '65', '1541569341');
INSERT INTO `tp_downusers` VALUES ('187', '85', '68', '1541569286');
INSERT INTO `tp_downusers` VALUES ('186', '85', '68', '1541569284');
INSERT INTO `tp_downusers` VALUES ('185', '14', '67', '1541569094');
INSERT INTO `tp_downusers` VALUES ('184', '14', '60', '1541567540');
INSERT INTO `tp_downusers` VALUES ('211', '187', '73', '1541661994');
INSERT INTO `tp_downusers` VALUES ('210', '187', '74', '1541661988');
INSERT INTO `tp_downusers` VALUES ('209', '187', '71', '1541661979');
INSERT INTO `tp_downusers` VALUES ('208', '187', '70', '1541661975');
INSERT INTO `tp_downusers` VALUES ('207', '187', '70', '1541661961');
INSERT INTO `tp_downusers` VALUES ('206', '187', '70', '1541661961');
INSERT INTO `tp_downusers` VALUES ('205', '187', '68', '1541661869');
INSERT INTO `tp_downusers` VALUES ('204', '187', '67', '1541661861');
INSERT INTO `tp_downusers` VALUES ('203', '187', '66', '1541661859');
INSERT INTO `tp_downusers` VALUES ('202', '187', '65', '1541661857');
INSERT INTO `tp_downusers` VALUES ('201', '187', '64', '1541661854');
INSERT INTO `tp_downusers` VALUES ('200', '187', '63', '1541661834');
INSERT INTO `tp_downusers` VALUES ('199', '187', '62', '1541661832');
INSERT INTO `tp_downusers` VALUES ('198', '187', '61', '1541661828');
INSERT INTO `tp_downusers` VALUES ('221', '63', '82', '1544703167');
INSERT INTO `tp_downusers` VALUES ('220', '60', '60', '1542253706');
INSERT INTO `tp_downusers` VALUES ('219', '14', '60', '1541673510');
INSERT INTO `tp_downusers` VALUES ('218', '63', '74', '1541669140');
INSERT INTO `tp_downusers` VALUES ('217', '187', '73', '1541662131');
INSERT INTO `tp_downusers` VALUES ('216', '187', '73', '1541662078');
INSERT INTO `tp_downusers` VALUES ('215', '187', '68', '1541662054');
INSERT INTO `tp_downusers` VALUES ('214', '187', '77', '1541662015');
INSERT INTO `tp_downusers` VALUES ('213', '187', '76', '1541662002');
INSERT INTO `tp_downusers` VALUES ('212', '187', '75', '1541661997');

-- ----------------------------
-- Table structure for `tp_leader`
-- ----------------------------
DROP TABLE IF EXISTS `tp_leader`;
CREATE TABLE `tp_leader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `names` varchar(50) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL COMMENT '个人照片',
  `zhiwu` varchar(50) DEFAULT NULL,
  `content` text COMMENT '详细介绍',
  `addtime` varchar(11) DEFAULT NULL,
  `views` int(11) DEFAULT '100' COMMENT '浏览次数',
  `keyword` varchar(200) DEFAULT NULL COMMENT '关键词',
  `description` text COMMENT '描述',
  `sortid` int(11) DEFAULT '0',
  `paixu` smallint(6) DEFAULT '1',
  `sortpath` varchar(50) DEFAULT NULL COMMENT '类别路径',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_leader
-- ----------------------------

-- ----------------------------
-- Table structure for `tp_schooljw`
-- ----------------------------
DROP TABLE IF EXISTS `tp_schooljw`;
CREATE TABLE `tp_schooljw` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `areaname` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `schoolname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2955 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_schooljw
-- ----------------------------
INSERT INTO `tp_schooljw` VALUES ('1', '闵行区', '31.032063', '121.447075', '上海交通大学（闵行校区）');
INSERT INTO `tp_schooljw` VALUES ('2', '闵行区', '31.9786993', '116.3503261', '紫竹科技园');
INSERT INTO `tp_schooljw` VALUES ('3', '闵行区', '31.03227', '121.453079', '华东师范大学（闵行校区）');
INSERT INTO `tp_schooljw` VALUES ('4', '闵行区', '31.029303', '121.457632', '上海东海职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('5', '闵行区', '31.028201345102', '121.43737644822', '上海电机学院（闵行校区）');
INSERT INTO `tp_schooljw` VALUES ('6', '松江区', '31.049418', '121.198133', '松江大学城一期');
INSERT INTO `tp_schooljw` VALUES ('7', '松江区', '31.056047635277', '121.21333905403', '松江大学城二期');
INSERT INTO `tp_schooljw` VALUES ('8', '松江区', '31.056047635277', '121.21333905403', '松江大学城三期');
INSERT INTO `tp_schooljw` VALUES ('9', '松江区', '31.056047635277', '121.21333905403', '松江大学城四期');
INSERT INTO `tp_schooljw` VALUES ('10', '松江区', '31.056047635277', '121.21333905403', '松江大学城五期');
INSERT INTO `tp_schooljw` VALUES ('11', '松江区', '31.056047635277', '121.21333905403', '松江大学城六期');
INSERT INTO `tp_schooljw` VALUES ('12', '松江区', '31.199867', '121.71428', '上海农林职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('13', '宝山区', '31.3910984', '121.4883251', '上海大学（宝山校区）');
INSERT INTO `tp_schooljw` VALUES ('14', '宝山区', '31.406605', '121.465484', '上海建峰职业技术学院（宝山区）');
INSERT INTO `tp_schooljw` VALUES ('15', '宝山区', '31.364405', '121.43523', '济光学院');
INSERT INTO `tp_schooljw` VALUES ('16', '宝山区', '31.3786866', '121.4914409', '上海医疗器械高等专业学院（宝山）');
INSERT INTO `tp_schooljw` VALUES ('17', '宝山区', '31.4182656', '121.3560343', '上海震旦职业学院');
INSERT INTO `tp_schooljw` VALUES ('18', '宝山区', '31.199867', '121.71428', '邦德职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('19', '宝山区', '31.239199', '121.529372', '上海海事职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('20', '临港', '30.8743405', '121.90492', '上海海事大学（临港校区）');
INSERT INTO `tp_schooljw` VALUES ('21', '临港', '31.293557911419', '121.56230379549', '上海海洋大学（临港校区）');
INSERT INTO `tp_schooljw` VALUES ('22', '临港', '30.8858185', '121.889534', '上海电机学院（临港校区）');
INSERT INTO `tp_schooljw` VALUES ('23', '临港', '31.149442', '121.584118', '上海建桥学院');
INSERT INTO `tp_schooljw` VALUES ('24', '奉贤区', '30.837357', '121.503021', '华东理工大学(奉贤校区)');
INSERT INTO `tp_schooljw` VALUES ('25', '奉贤区', '30.837155', '121.517651', '上海师范大学(奉贤校区)');
INSERT INTO `tp_schooljw` VALUES ('26', '奉贤区', '30.915115190667', '121.56063294724', '上海应用技术大学（奉贤校区）');
INSERT INTO `tp_schooljw` VALUES ('27', '奉贤区', '0', '0', '上海旅游高等职业学院');
INSERT INTO `tp_schooljw` VALUES ('28', '奉贤区', '30.9239745', '121.6936515', '上海电子信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('29', '奉贤区', '30.941209', '121.456095', '上海商学院');
INSERT INTO `tp_schooljw` VALUES ('30', '杨浦区', '36.609303582942', '114.48268620691', '复旦大学(邯郸校区)');
INSERT INTO `tp_schooljw` VALUES ('31', '杨浦区', '31.304896', '121.499854', '上海财经大学');
INSERT INTO `tp_schooljw` VALUES ('32', '杨浦区', '31.299744633834', '121.56145040526', '上海理工大学（军工路校区）');
INSERT INTO `tp_schooljw` VALUES ('33', '杨浦区', '31.311931', '121.521181', '上海体育学院');
INSERT INTO `tp_schooljw` VALUES ('34', '杨浦区', '31.289330339051', '121.50752512549', '同济大学（四平路校区）');
INSERT INTO `tp_schooljw` VALUES ('35', '杨浦区', '31.247249', '121.481091', '上海城市管理学院');
INSERT INTO `tp_schooljw` VALUES ('36', '杨浦区', '31.2001123', '121.4591424', '上海健康医学院（杨浦）');
INSERT INTO `tp_schooljw` VALUES ('37', '杨浦区', '31.280683', '121.54262', '上海出版印刷高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('38', '杨浦区', '31.335457', '121.508978', '复旦大学（江湾校区）');
INSERT INTO `tp_schooljw` VALUES ('39', '徐汇区', '31.1408757', '121.4251069', '华东理工大学(徐汇)');
INSERT INTO `tp_schooljw` VALUES ('40', '徐汇区', '31.1614742', '121.4165297', '上海师范大学(徐汇)');
INSERT INTO `tp_schooljw` VALUES ('41', '徐汇区', '31.661164', '121.538717', '上海健康职业学院');
INSERT INTO `tp_schooljw` VALUES ('42', '徐汇区', '31.167691', '121.41958', '上海应用技术学院(徐汇)');
INSERT INTO `tp_schooljw` VALUES ('43', '嘉定区', '31.2822186', '121.2123299', '同济大学(嘉定校区)');
INSERT INTO `tp_schooljw` VALUES ('44', '嘉定区', '31.2822186', '121.2123299', '上海大学（嘉定校区）');
INSERT INTO `tp_schooljw` VALUES ('45', '嘉定区', '31.4086995', '121.2019913', '上海师范大学天华学院');
INSERT INTO `tp_schooljw` VALUES ('46', '嘉定区', '31.4094701', '121.2544627', '上海工艺美术职业学院');
INSERT INTO `tp_schooljw` VALUES ('47', '嘉定区', '31.3860055', '121.2571597', '上海科学技术职业学院');
INSERT INTO `tp_schooljw` VALUES ('48', '嘉定区', '31.049711', '121.75441', '上海工商职业学院');
INSERT INTO `tp_schooljw` VALUES ('49', '普陀区', '31.227812', '121.4066077', '华东师范大学(普陀)');
INSERT INTO `tp_schooljw` VALUES ('50', '青浦区', '31.2244447', '121.4180604', '上海政法学院');
INSERT INTO `tp_schooljw` VALUES ('51', '南汇', '31.0478888', '121.7866829', '上海电力学院（南汇校区）');
INSERT INTO `tp_schooljw` VALUES ('52', '南汇', '31.049711', '121.75441', '上海工商外国语职业学院');
INSERT INTO `tp_schooljw` VALUES ('53', '南汇', '31.040164', '121.781025', '上海思博职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('54', '南汇', '31.407596', '121.462777', '生活园区');
INSERT INTO `tp_schooljw` VALUES ('55', '南汇', '31.05984492228', '121.75732592171', '上海出版印刷高等专科学校（拱极路校区）');
INSERT INTO `tp_schooljw` VALUES ('56', '浦东新区', '31.2974197', '121.5036178', '复旦大学');
INSERT INTO `tp_schooljw` VALUES ('57', '浦东新区', '31.210823209575', '121.59184906372', '中国美院张江高科校区');
INSERT INTO `tp_schooljw` VALUES ('58', '浦东新区', '31.212356', '121.587006', '上海电影艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('59', '浦东新区', '31.1948457', '121.5986899', '上海中医药大学');
INSERT INTO `tp_schooljw` VALUES ('60', '浦东新区', '31.2440713', '121.4337901', '上海第二工业大学');
INSERT INTO `tp_schooljw` VALUES ('61', '浦东新区', '31.277126', '121.652384', '上海金融学院');
INSERT INTO `tp_schooljw` VALUES ('62', '浦东新区', '31.2666526', '121.6586613', '上海杉达学院');
INSERT INTO `tp_schooljw` VALUES ('63', '浦东新区', '31.2001123', '121.4591424', '上海健康医学院（浦东）');
INSERT INTO `tp_schooljw` VALUES ('64', '浦东新区', '31.168623', '121.574923', '上海海关学院');
INSERT INTO `tp_schooljw` VALUES ('65', '长宁区', '31.2023004', '121.4142331', '东华大学（延安路校区）');
INSERT INTO `tp_schooljw` VALUES ('66', '闸北区', '31.274224', '121.4551254', '行健学院');
INSERT INTO `tp_schooljw` VALUES ('67', '下沙大学城(东)', '30.263516987125', '120.18049432782', '杭州师范大学(下沙校区)');
INSERT INTO `tp_schooljw` VALUES ('68', '下沙大学城(东)', '30.3086194', '120.388381', '浙江工商大学（下沙校区）');
INSERT INTO `tp_schooljw` VALUES ('69', '下沙大学城(东)', '29.159492070564', '119.95719352744', '浙江财经大学（下沙校区）');
INSERT INTO `tp_schooljw` VALUES ('70', '下沙大学城(东)', '30.3192758', '120.3831848', '浙江金融职业学院');
INSERT INTO `tp_schooljw` VALUES ('71', '下沙大学城(东)', '30.3166922', '120.3827127', '浙江经贸职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('72', '下沙大学城(东)', '30.243529', '120.297499', '浙江经济职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('73', '下沙大学城(东)', '30.303399', '120.337133', '浙江水利水电学院');
INSERT INTO `tp_schooljw` VALUES ('74', '下沙大学城(东)', '30.322025290482', '120.35172932414', '杭州电子科技大学软件学院');
INSERT INTO `tp_schooljw` VALUES ('75', '下沙大学城(西)', '30.287688', '120.1403455', '杭州电子科技大学');
INSERT INTO `tp_schooljw` VALUES ('76', '下沙大学城(西)', '30.3135118', '120.3575586', '浙江理工大学');
INSERT INTO `tp_schooljw` VALUES ('77', '下沙大学城(西)', '30.642689', '120.533026', '浙江传媒学院');
INSERT INTO `tp_schooljw` VALUES ('78', '下沙大学城(西)', '30.320432', '120.35325', '杭州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('79', '下沙大学城(西)', '30.318923', '120.364094', '中国计量学院');
INSERT INTO `tp_schooljw` VALUES ('80', '下沙大学城(西)', '30.311079', '120.359561', '浙江警官职业学院');
INSERT INTO `tp_schooljw` VALUES ('81', '下沙大学城(西)', '30.3051815', '120.3529802', '浙江育英职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('82', '下沙大学城(西)', '30.319588', '120.377451', '中国计量学院现代科技学院');
INSERT INTO `tp_schooljw` VALUES ('83', '滨江区', '30.172925', '120.149777', '浙江中医药大学');
INSERT INTO `tp_schooljw` VALUES ('84', '滨江区', '30.174234', '120.152857', '浙江机电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('85', '滨江区', '28.6553782', '121.4000335', '浙江艺术职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('86', '滨江区', '30.174419', '120.163315', '浙江商业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('87', '滨江区', '30.172996', '120.1596244', '浙江医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('88', '小和山区', '30.224922', '120.036889', '浙江工业大学（屏峰校区）');
INSERT INTO `tp_schooljw` VALUES ('89', '小和山区', '30.227841211832', '120.03305544447', '浙江科技学院(小和山校区)');
INSERT INTO `tp_schooljw` VALUES ('90', '小和山区', '30.208983', '120.018514', '浙江长征职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('91', '小和山区', '0', '0', '北大青鸟留下校区');
INSERT INTO `tp_schooljw` VALUES ('92', '小和山区', '30.225477444219', '120.04149053321', '浙江外国语学院（留下校区）');
INSERT INTO `tp_schooljw` VALUES ('93', '万向区', '30.252706', '120.075754', '万向职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('94', '万向区', '30.286206', '120.14102', '杭州电子科技大学信息工程学院');
INSERT INTO `tp_schooljw` VALUES ('95', '萧山区', '30.2435976', '120.301491', '浙江旅游职业学院');
INSERT INTO `tp_schooljw` VALUES ('96', '萧山区', '29.071547958907', '119.64803270323', '浙江同济科技职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('97', '萧山区', '30.172890240405', '120.38907188419', '浙江师范大学（萧山校区）');
INSERT INTO `tp_schooljw` VALUES ('98', '萧山区', '30.243529', '120.297499', '浙江建设职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('99', '拱墅区', '30.3246296', '120.1561982', '浙江大学城市学院');
INSERT INTO `tp_schooljw` VALUES ('100', '拱墅区', '30.319069', '120.158701', '浙江树人大学');
INSERT INTO `tp_schooljw` VALUES ('101', '拱墅区', '30.2953535', '120.1566872', '浙江工业大学（假山校区）');
INSERT INTO `tp_schooljw` VALUES ('102', '下城区', '30.290822650583', '120.17128669635', '浙江工业大学（朝晖校区）');
INSERT INTO `tp_schooljw` VALUES ('103', '下城区', '30.1609368', '120.2809728', '杭州商业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('104', '西湖区', '30.306084', '120.091223', '浙江大学（紫金港校区）');
INSERT INTO `tp_schooljw` VALUES ('105', '西湖区', '30.2742787', '120.1441802', '浙江大学（西溪校区）');
INSERT INTO `tp_schooljw` VALUES ('106', '西湖区', '30.263608', '120.1234389', '浙江大学（玉泉校区）');
INSERT INTO `tp_schooljw` VALUES ('107', '西湖区', '30.291500906031', '120.14547837904', '浙江工商大学（西湖校区）');
INSERT INTO `tp_schooljw` VALUES ('108', '西湖区', '30.3412425', '120.0823157', '浙江交通职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('109', '余杭区', '30.294845337752', '120.00066254778', '杭州师范大学（仓前校区）');
INSERT INTO `tp_schooljw` VALUES ('110', '余杭区', '30.294845337752', '120.00066254778', '浙江理工大学科艺学院（仓前校区）');
INSERT INTO `tp_schooljw` VALUES ('111', '余杭区', '24.667551', '121.80027', '梦想小镇');
INSERT INTO `tp_schooljw` VALUES ('112', '临安市', '28.692370075762', '115.91014754522', '浙江农林大学（东湖校区）');
INSERT INTO `tp_schooljw` VALUES ('113', '海淀区', '39.9996674', '116.3264439', '清华大学');
INSERT INTO `tp_schooljw` VALUES ('114', '海淀区', '39.997747994849', '116.316163685', '北京大学（海淀校区）');
INSERT INTO `tp_schooljw` VALUES ('115', '海淀区', '40.02412', '116.317813', '北京体育大学');
INSERT INTO `tp_schooljw` VALUES ('116', '海淀区', '39.990249', '116.357096', '北京科技大学');
INSERT INTO `tp_schooljw` VALUES ('117', '海淀区', '40.0076546', '116.3470287', '北京林业大学');
INSERT INTO `tp_schooljw` VALUES ('118', '海淀区', '40.004171', '116.353052', '中国农业大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('119', '海淀区', '39.9944245', '116.3499072', '北京语言大学');
INSERT INTO `tp_schooljw` VALUES ('120', '海淀区', '39.990972', '116.3507619', '中国地质大学（北京）');
INSERT INTO `tp_schooljw` VALUES ('121', '海淀区', '39.996741', '116.349602', '中国矿业大学（北京）');
INSERT INTO `tp_schooljw` VALUES ('122', '海淀区', '40.002173', '116.35389', '北京大学（医学部）');
INSERT INTO `tp_schooljw` VALUES ('123', '海淀区', '39.9809553', '116.3472564', '北京航空航天大学');
INSERT INTO `tp_schooljw` VALUES ('124', '海淀区', '40.004375', '116.363511', '北京城市学院（清泉）');
INSERT INTO `tp_schooljw` VALUES ('125', '海淀区', '39.9191295', '116.3710332', '北京联合大学应用文理学院');
INSERT INTO `tp_schooljw` VALUES ('126', '海淀区', '39.969144911673', '116.36342353788', '北京邮电大学（海淀校区）');
INSERT INTO `tp_schooljw` VALUES ('127', '海淀区', '39.9619537', '116.3662615', '北京师范大学');
INSERT INTO `tp_schooljw` VALUES ('128', '海淀区', '40.169887', '116.283102', '中央财经大学');
INSERT INTO `tp_schooljw` VALUES ('129', '海淀区', '39.9522209', '116.343155', '北京交通大学');
INSERT INTO `tp_schooljw` VALUES ('130', '海淀区', '39.9696062', '116.3188145', '中国人民大学');
INSERT INTO `tp_schooljw` VALUES ('131', '海淀区', '39.962958313821', '116.32387114628', '北京理工大学（中关村校区）');
INSERT INTO `tp_schooljw` VALUES ('132', '海淀区', '39.965133', '116.308922', '北京科技经营管理学院');
INSERT INTO `tp_schooljw` VALUES ('133', '海淀区', '39.9554851', '116.3105121', '北京外国语大学');
INSERT INTO `tp_schooljw` VALUES ('134', '海淀区', '39.950857', '116.32008', '中央民族大学');
INSERT INTO `tp_schooljw` VALUES ('135', '海淀区', '39.720361', '116.170043', '北京工商大学');
INSERT INTO `tp_schooljw` VALUES ('136', '海淀区', '37.988016', '114.4623327', '中国劳动关系学院');
INSERT INTO `tp_schooljw` VALUES ('137', '海淀区', '39.936754064268', '116.31304656488', '首都师范大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('138', '海淀区', '40.0367309', '116.3496194', '北京信息科技大学（清河小营校区）');
INSERT INTO `tp_schooljw` VALUES ('139', '海淀区', '40.0206202', '116.3461142', '北京培黎职业学院');
INSERT INTO `tp_schooljw` VALUES ('140', '海淀区', '39.950088', '116.307678', '中国青年政治学院');
INSERT INTO `tp_schooljw` VALUES ('141', '海淀区', '39.936348', '116.308531', '首都师范大学（北区）');
INSERT INTO `tp_schooljw` VALUES ('142', '海淀区', '40.077743419262', '116.27682688672', '北京城市学院（航天城校区）');
INSERT INTO `tp_schooljw` VALUES ('143', '海淀区', '39.9304437', '116.3076925', '首都师范大学（东区）');
INSERT INTO `tp_schooljw` VALUES ('144', '朝阳区', '39.989107', '116.381711', '北京信息科技大学（健翔桥）');
INSERT INTO `tp_schooljw` VALUES ('145', '朝阳区', '39.976851448037', '116.42742780547', '北京化工大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('146', '朝阳区', '39.9803805', '116.4277656', '对外经济贸易大学');
INSERT INTO `tp_schooljw` VALUES ('147', '朝阳区', '39.9733819', '116.4247023', '北京中医药大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('148', '朝阳区', '39.936339139908', '116.46484222996', '北京联合大学（校本部）');
INSERT INTO `tp_schooljw` VALUES ('149', '朝阳区', '40.2273146', '116.1853669', '北京劳动保障职业学院');
INSERT INTO `tp_schooljw` VALUES ('150', '朝阳区', '39.991708', '116.428126', '北京联合大学北院');
INSERT INTO `tp_schooljw` VALUES ('151', '朝阳区', '40.000566876905', '116.4419264564', '中华女子学院（朝阳校区）');
INSERT INTO `tp_schooljw` VALUES ('152', '朝阳区', '39.879698934637', '116.48723698632', '北京工业大学(朝阳校区）');
INSERT INTO `tp_schooljw` VALUES ('153', '朝阳区', '39.9812654', '116.4716007', '北京中医药大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('154', '朝阳区', '39.983827', '116.474749', '北京经济管理职业学院');
INSERT INTO `tp_schooljw` VALUES ('155', '朝阳区', '39.982703', '116.464011', '中央美术学院');
INSERT INTO `tp_schooljw` VALUES ('156', '朝阳区', '39.921919', '116.487396', '北京联合大学商务学院');
INSERT INTO `tp_schooljw` VALUES ('157', '朝阳区', '39.912793', '116.556581', '中国传媒大学');
INSERT INTO `tp_schooljw` VALUES ('158', '朝阳区', '39.9100913', '116.5624881', '北京第二外国语学院');
INSERT INTO `tp_schooljw` VALUES ('159', '朝阳区', '39.9169984', '116.603838', '北京政法职业学院');
INSERT INTO `tp_schooljw` VALUES ('160', '朝阳区', '39.980009838124', '116.43712950497', '北京服装学院（朝阳校区）');
INSERT INTO `tp_schooljw` VALUES ('161', '朝阳区', '40.000566876905', '116.4419264564', '中华女子学院（松竹公寓）');
INSERT INTO `tp_schooljw` VALUES ('162', '昌平区', '40.155045583608', '116.4329434013', '北京服装学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('163', '昌平区', '40.222382', '116.2474', '中国政法大学（昌平校区）');
INSERT INTO `tp_schooljw` VALUES ('164', '昌平区', '40.221717096086', '116.21645177339', '中国石油大学（昌平校区）');
INSERT INTO `tp_schooljw` VALUES ('165', '昌平区', '40.21456', '116.253543', '北京化工大学（昌平校区）');
INSERT INTO `tp_schooljw` VALUES ('166', '昌平区', '19.095351', '108.651815', '北京涉外经济专修学院');
INSERT INTO `tp_schooljw` VALUES ('167', '昌平区', '40.242207526366', '116.22406042106', '北京联合大学（昌平校区）');
INSERT INTO `tp_schooljw` VALUES ('168', '昌平区', '40.095455972657', '116.31540910837', '华北电力大学（北京校区）');
INSERT INTO `tp_schooljw` VALUES ('169', '昌平区', '40.170248', '116.2805203', '中央财经大学（沙河校区）');
INSERT INTO `tp_schooljw` VALUES ('170', '昌平区', '40.108866', '116.3748694', '北京邮电大学（宏福校区）');
INSERT INTO `tp_schooljw` VALUES ('171', '昌平区', '40.092594', '116.30938', '北京农学院');
INSERT INTO `tp_schooljw` VALUES ('172', '昌平区', '39.923807', '116.338512', '北京华文学院');
INSERT INTO `tp_schooljw` VALUES ('173', '昌平区', '40.203245569139', '116.2531834857', '北京汇佳职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('174', '昌平区', '40.1794127', '116.1694397', '北京吉利大学');
INSERT INTO `tp_schooljw` VALUES ('175', '昌平区', '40.154375', '116.275757', '北京航空航天大学（昌平区）');
INSERT INTO `tp_schooljw` VALUES ('176', '昌平区', '40.141821', '116.425909', '中华女子学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('177', '昌平区', '40.117216', '116.250033', '北京科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('178', '昌平区', '40.158567866087', '116.28757960367', '北京外交学院（昌平校区）');
INSERT INTO `tp_schooljw` VALUES ('179', '昌平区', '40.2273146', '116.1853669', '北京劳动保障职业学院（昌平）');
INSERT INTO `tp_schooljw` VALUES ('180', '昌平区', '40.0326119', '116.3511875', '北京交通职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('181', '昌平区', '40.137003923668', '116.39476541712', '北京邮电大学（沙河校区）');
INSERT INTO `tp_schooljw` VALUES ('182', '东城区', '39.911456', '116.414837', '北京协和医科大学');
INSERT INTO `tp_schooljw` VALUES ('183', '东城区', '39.935993', '116.40448', '中央戏剧学院');
INSERT INTO `tp_schooljw` VALUES ('184', '东城区', '39.922164', '116.424437', '北京财贸职业学院东四校区');
INSERT INTO `tp_schooljw` VALUES ('185', '通州区', '39.9248645', '116.6394722', '北京物资学院');
INSERT INTO `tp_schooljw` VALUES ('186', '通州区', '39.9765534', '116.8120174', '燕京理工学院');
INSERT INTO `tp_schooljw` VALUES ('187', '通州区', '39.953173', '116.804799', '华北科技学院');
INSERT INTO `tp_schooljw` VALUES ('188', '通州区', '39.953471', '116.799959', '防灾科技学院');
INSERT INTO `tp_schooljw` VALUES ('189', '通州区', '39.954405', '116.797325', '北京社会管理职业学院');
INSERT INTO `tp_schooljw` VALUES ('190', '通州区', '0', '0', '交通干部管理职业学院');
INSERT INTO `tp_schooljw` VALUES ('191', '通州区', '39.62365409864', '116.75012609382', '北京经济技术职业学院');
INSERT INTO `tp_schooljw` VALUES ('192', '通州区', '39.968778', '116.993051', '廊坊燕京职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('193', '通州区', '39.929983564936', '116.39563677347', '北京财政经贸学院');
INSERT INTO `tp_schooljw` VALUES ('194', '通州区', '39.94118668126', '116.74063100458', '北京工商大学嘉华学院');
INSERT INTO `tp_schooljw` VALUES ('195', '通州区', '39.874353', '116.651549', '北京现代音乐研修学院');
INSERT INTO `tp_schooljw` VALUES ('196', '通州区', '39.929184', '116.669974', '北京工业大学（通州分校）');
INSERT INTO `tp_schooljw` VALUES ('197', '大兴区', '39.959624', '116.501967', '北京电子科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('198', '大兴区', '39.763621667998', '116.31981978843', '北京石油化工学院（康庄）');
INSERT INTO `tp_schooljw` VALUES ('199', '大兴区', '39.749851365977', '116.33564793151', '北京印刷学院（主校区）');
INSERT INTO `tp_schooljw` VALUES ('200', '大兴区', '39.7186853', '116.3416949', '中国防卫科技学院信息安全学院');
INSERT INTO `tp_schooljw` VALUES ('201', '大兴区', '39.743392', '116.342776', '北京大学（大兴校区）');
INSERT INTO `tp_schooljw` VALUES ('202', '大兴区', '39.743392', '116.342776', '北京建筑大学（大兴校区）');
INSERT INTO `tp_schooljw` VALUES ('203', '大兴区', '39.7852966', '116.297335', '首都师范大学科德学院');
INSERT INTO `tp_schooljw` VALUES ('204', '大兴区', '39.753928663024', '116.33300691331', '北京石油化工学院（清源校区）');
INSERT INTO `tp_schooljw` VALUES ('205', '大兴区', '39.763923', '116.368433', '中国人民公安大学');
INSERT INTO `tp_schooljw` VALUES ('206', '房山区', '39.929983564936', '116.39563677347', '北京农业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('207', '房山区', '39.7316907', '116.1702382', '北京理工大学（良乡校区）');
INSERT INTO `tp_schooljw` VALUES ('208', '房山区', '39.709949', '116.177307', '首都师范大学（良乡校区）');
INSERT INTO `tp_schooljw` VALUES ('209', '房山区', '39.738720771009', '116.14409326456', '北京工商大学（良乡校区）');
INSERT INTO `tp_schooljw` VALUES ('210', '房山区', '39.721387', '116.164489', '北京经贸职业学院');
INSERT INTO `tp_schooljw` VALUES ('211', '房山区', '39.738720771009', '116.14409326456', '北京中医药大学（良乡校区）');
INSERT INTO `tp_schooljw` VALUES ('212', '延庆县', '39.788078', '116.285478', '北京邮电大学世纪学院');
INSERT INTO `tp_schooljw` VALUES ('213', '西城区', '39.932030692113', '116.35276065148', '北京外交学院（展览路校区）');
INSERT INTO `tp_schooljw` VALUES ('214', '西城区', '39.940585079392', '116.34759539479', '北京建筑大学（展览路校区）');
INSERT INTO `tp_schooljw` VALUES ('215', '西城区', '39.902385', '116.358909', '中央音乐学院');
INSERT INTO `tp_schooljw` VALUES ('216', '丰台区', '39.847577020265', '116.32436521431', '首都经济贸易大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('217', '丰台区', '39.865173', '116.352877', '首都医科大学');
INSERT INTO `tp_schooljw` VALUES ('218', '石景山区', '39.9267037', '116.2029293', '首钢工学院');
INSERT INTO `tp_schooljw` VALUES ('219', '石景山区', '39.927309', '116.206828', '北方工业大学');
INSERT INTO `tp_schooljw` VALUES ('220', '江宁区', '31.88611', '118.819805', '东南大学（九龙湖校区）');
INSERT INTO `tp_schooljw` VALUES ('221', '江宁区', '31.9116316', '118.7866113', '河海大学（江宁校区）');
INSERT INTO `tp_schooljw` VALUES ('222', '江宁区', '31.9362751', '118.7870695', '南京航空航天大学（江宁校区）');
INSERT INTO `tp_schooljw` VALUES ('223', '江宁区', '31.939909', '118.785492', '正德学院');
INSERT INTO `tp_schooljw` VALUES ('224', '江宁区', '31.957394', '118.7569611', '三江大学');
INSERT INTO `tp_schooljw` VALUES ('225', '江宁区', '32.0448565', '118.8871225', '金陵科技学院');
INSERT INTO `tp_schooljw` VALUES ('226', '江宁区', '32.072145', '118.77875', '中国药科大学');
INSERT INTO `tp_schooljw` VALUES ('227', '江宁区', '31.912355', '118.907004', '南京交通职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('228', '江宁区', '31.8885616', '118.8939266', '中国传媒大学南广学院');
INSERT INTO `tp_schooljw` VALUES ('229', '江宁区', '31.9064935', '118.8942231', '南京晓庄学院（方山校区）');
INSERT INTO `tp_schooljw` VALUES ('230', '江宁区', '32.0677936', '118.7586017', '南京工程学院');
INSERT INTO `tp_schooljw` VALUES ('231', '江宁区', '31.933958', '118.889832', '南京医科大学（江宁校区）');
INSERT INTO `tp_schooljw` VALUES ('232', '江宁区', '31.915077', '118.902916', '江苏海事学院');
INSERT INTO `tp_schooljw` VALUES ('233', '江宁区', '31.9287236', '118.8884472', '南京旅游职业学院');
INSERT INTO `tp_schooljw` VALUES ('234', '江宁区', '31.3404804', '120.6078123', '江苏经贸职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('235', '江宁区', '31.963526611071', '118.75863840052', '南京三江大学（东江校区）');
INSERT INTO `tp_schooljw` VALUES ('236', '江宁区', '32.1138698', '118.8715677', '南京新华电脑专修学院');
INSERT INTO `tp_schooljw` VALUES ('237', '栖霞区', '32.0568391', '118.7789602', '南京大学');
INSERT INTO `tp_schooljw` VALUES ('238', '栖霞区', '32.087806', '118.916804', '应天职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('239', '栖霞区', '32.10387', '118.938141', '南京中医药大学');
INSERT INTO `tp_schooljw` VALUES ('240', '栖霞区', '32.1002272', '118.9125502', '南京师范大学（仙林校区）');
INSERT INTO `tp_schooljw` VALUES ('241', '栖霞区', '32.1165711', '118.9224985', '南京财经大学');
INSERT INTO `tp_schooljw` VALUES ('242', '栖霞区', '32.1056453', '118.9318309', '南京邮电大学（仙林校区）');
INSERT INTO `tp_schooljw` VALUES ('243', '栖霞区', '32.072048', '118.774302', '南京信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('244', '栖霞区', '32.124887', '118.934243', '南京理工大学紫金学院');
INSERT INTO `tp_schooljw` VALUES ('245', '栖霞区', '32.118625', '118.941793', '南京工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('246', '浦口区', '32.150804', '118.7043476', '东南大学成贤学院');
INSERT INTO `tp_schooljw` VALUES ('247', '浦口区', '32.176339', '118.7034559', '南京大学（金陵学院）');
INSERT INTO `tp_schooljw` VALUES ('248', '浦口区', '32.210504914326', '118.72957821727', '南京信息工程大学（滨江校区）');
INSERT INTO `tp_schooljw` VALUES ('249', '浦口区', '32.072048', '118.774302', '南京化工职业技术');
INSERT INTO `tp_schooljw` VALUES ('250', '浦口区', '32.132883', '118.699648', '南京农业大学（浦口校区）');
INSERT INTO `tp_schooljw` VALUES ('251', '浦口区', '32.074899', '118.64125', '南京工业大学（江浦校区）');
INSERT INTO `tp_schooljw` VALUES ('252', '浦口区', '32.044279940673', '118.7554404329', '南京审计学院（浦口校区）');
INSERT INTO `tp_schooljw` VALUES ('253', '浦口区', '32.059061751164', '118.56912288708', '江苏健康学院（浦口校区');
INSERT INTO `tp_schooljw` VALUES ('254', '浦口区', '32.104776749131', '118.70350040832', '南京铁道职业技术学院（浦口校区）');
INSERT INTO `tp_schooljw` VALUES ('255', '浦口区', '32.210504914326', '118.72957821727', '南京信息工程大学（花旗营校区）');
INSERT INTO `tp_schooljw` VALUES ('256', '鼓楼区', '32.0557629', '118.7800568', '南京大学（鼓楼校区）');
INSERT INTO `tp_schooljw` VALUES ('257', '鼓楼区', '32.058583', '118.756648', '河海大学');
INSERT INTO `tp_schooljw` VALUES ('258', '鼓楼区', '32.0545221', '118.7643327', '南京师范大学(随园校区)');
INSERT INTO `tp_schooljw` VALUES ('259', '鼓楼区', '32.050592344148', '118.78115891966', '南京医科大学（鼓楼校区）');
INSERT INTO `tp_schooljw` VALUES ('260', '鼓楼区', '32.0442416', '118.7666113', '南京中医药大学（汉中路）');
INSERT INTO `tp_schooljw` VALUES ('261', '鼓楼区', '32.0519052', '118.7959939', '东南大学四牌楼校区');
INSERT INTO `tp_schooljw` VALUES ('262', '玄武区', '32.035225', '118.855317', '南京理工大学');
INSERT INTO `tp_schooljw` VALUES ('263', '玄武区', '32.0377214', '118.8462874', '南京农业大学');
INSERT INTO `tp_schooljw` VALUES ('264', '玄武区', '32.0448565', '118.8871225', '钟山职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('265', '玄武区', '32.041196267403', '118.82806843339', '南京航空航天大学（明故宫校区）');
INSERT INTO `tp_schooljw` VALUES ('266', '玄武区', '32.080854', '118.812692', '南京林业大学');
INSERT INTO `tp_schooljw` VALUES ('267', '玄武区', '32.049085058666', '118.8737203194', '南京体育学院（本部）');
INSERT INTO `tp_schooljw` VALUES ('268', '仙林区', '32.121943', '118.919651', '南京技师学院');
INSERT INTO `tp_schooljw` VALUES ('269', '东西湖区', '30.642004789583', '114.2465306714', '武汉轻工大学（金银湖校区）');
INSERT INTO `tp_schooljw` VALUES ('270', '东西湖区', '30.638145', '114.237653', '武汉轻工大学（常青校区）');
INSERT INTO `tp_schooljw` VALUES ('271', '洪山区', '30.5879128', '114.4284882', '武汉外语外事职业学院');
INSERT INTO `tp_schooljw` VALUES ('272', '洪山区', '30.467814', '114.31339', '湖北科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('273', '洪山区', '30.5173362', '114.3387638', '武汉科技大学城市学院');
INSERT INTO `tp_schooljw` VALUES ('274', '洪山区', '30.4684882', '114.4126866', '武汉理工大学华夏学院');
INSERT INTO `tp_schooljw` VALUES ('275', '洪山区', '30.515235', '114.391429', '武汉工程大学邮电与信息工程学院');
INSERT INTO `tp_schooljw` VALUES ('276', '洪山区', '30.502453', '114.3805908', '中南财经政法大学武汉学院');
INSERT INTO `tp_schooljw` VALUES ('277', '洪山区', '30.4736678', '114.3813001', '中南财经政法大学（南湖校区）');
INSERT INTO `tp_schooljw` VALUES ('278', '洪山区', '30.503172792898', '114.40270108431', '长江职业学院(流芳校区)');
INSERT INTO `tp_schooljw` VALUES ('279', '洪山区', '30.5217423', '114.3454994', '湖北轻工职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('280', '洪山区', '30.478354', '114.307472', '湖北工业大学工程技术学院');
INSERT INTO `tp_schooljw` VALUES ('281', '洪山区', '30.497081670652', '114.36549327008', '湖北水利水电职业技术学院（南湖校区）');
INSERT INTO `tp_schooljw` VALUES ('282', '洪山区', '30.5175005', '114.3777877', '武汉体育学院');
INSERT INTO `tp_schooljw` VALUES ('283', '洪山区', '25.0254571', '121.5273658', '华中师范大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('284', '洪山区', '30.51765', '114.3459819', '武汉理工大学（马房山校区）');
INSERT INTO `tp_schooljw` VALUES ('285', '洪山区', '30.530491', '114.413993', '武汉工贸职业学院');
INSERT INTO `tp_schooljw` VALUES ('286', '洪山区', '39.990972', '116.3507619', '中国地质大学');
INSERT INTO `tp_schooljw` VALUES ('287', '洪山区', '30.507395', '114.379027', '武汉民政职业学院');
INSERT INTO `tp_schooljw` VALUES ('288', '洪山区', '30.510763', '114.371411', '湖北艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('289', '洪山区', '30.4606147', '114.0870285', '湖北商贸学院');
INSERT INTO `tp_schooljw` VALUES ('290', '洪山区', '30.538872', '114.246921', '湖北交通职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('291', '洪山区', '31.209309841437', '112.41055590399', '湖北生物科技职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('292', '洪山区', '30.5359394', '114.3124612', '武昌首义学院');
INSERT INTO `tp_schooljw` VALUES ('293', '洪山区', '30.471687', '114.357103', '华中农业大学');
INSERT INTO `tp_schooljw` VALUES ('294', '洪山区', '30.442342', '114.310891', '武汉大学珞珈学院');
INSERT INTO `tp_schooljw` VALUES ('295', '洪山区', '30.499872', '114.397877', '湖北开放职业学院');
INSERT INTO `tp_schooljw` VALUES ('296', '洪山区', '30.491806', '114.396031', '中南民族大学');
INSERT INTO `tp_schooljw` VALUES ('297', '洪山区', '30.5244', '114.366074', '武汉电力职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('298', '洪山区', '30.507905', '114.413666', '华中科技大学');
INSERT INTO `tp_schooljw` VALUES ('299', '洪山区', '30.550101', '114.314136', '湖北中医药大学');
INSERT INTO `tp_schooljw` VALUES ('300', '洪山区', '30.4851452', '114.4152175', '武汉职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('301', '洪山区', '30.486355', '114.283738', '武昌工学院');
INSERT INTO `tp_schooljw` VALUES ('302', '洪山区', '30.5591974', '114.3612922', '武汉交通职业学院');
INSERT INTO `tp_schooljw` VALUES ('303', '洪山区', '30.495139', '114.437676', '华中科技大学文华学院');
INSERT INTO `tp_schooljw` VALUES ('304', '洪山区', '30.530491', '114.413993', '武汉工贸职业学院');
INSERT INTO `tp_schooljw` VALUES ('305', '洪山区', '30.4430533', '114.3095258', '武汉工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('306', '洪山区', '30.5360485', '114.3643219', '武汉大学');
INSERT INTO `tp_schooljw` VALUES ('307', '洪山区', '30.506313', '114.370465', '湖北青年职业学院');
INSERT INTO `tp_schooljw` VALUES ('308', '洪山区', '30.503172792898', '114.40270108431', '长江职业学院（光谷校区）');
INSERT INTO `tp_schooljw` VALUES ('309', '洪山区', '30.4831602', '114.3071829', '湖北工业大学');
INSERT INTO `tp_schooljw` VALUES ('310', '洪山区', '30.467814', '114.31339', '武汉科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('311', '洪山区', '30.440674', '114.267263', '武汉科技大学（黄家湖校区）');
INSERT INTO `tp_schooljw` VALUES ('312', '洪山区', '30.5047997', '114.3433588', '武汉理工大学（升升公寓）');
INSERT INTO `tp_schooljw` VALUES ('313', '洪山区', '30.581078686056', '114.3161942637', '武汉工商职业学院');
INSERT INTO `tp_schooljw` VALUES ('314', '洪山区', '30.491581437469', '114.40483006837', '武汉纺织大学（东湖校区）');
INSERT INTO `tp_schooljw` VALUES ('315', '洪山区', '30.440674', '114.267263', '武汉科技大学（洪山校区）');
INSERT INTO `tp_schooljw` VALUES ('316', '洪山区', '21.7536081', '108.3666838', '武汉纺织大学（南湖校区）');
INSERT INTO `tp_schooljw` VALUES ('317', '洪山区', '30.474749', '114.3255636', '武汉城市职业学院');
INSERT INTO `tp_schooljw` VALUES ('318', '洪山区', '30.4877589', '114.2824864', '武汉工商学院');
INSERT INTO `tp_schooljw` VALUES ('319', '洪山区', '30.509876', '114.357836', '华中师范大学（南湖校区）');
INSERT INTO `tp_schooljw` VALUES ('320', '江夏区', '30.435829', '114.459735', '武汉商贸职业学院');
INSERT INTO `tp_schooljw` VALUES ('321', '江夏区', '30.443612', '114.428398', '武汉软件工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('322', '江夏区', '30.373056', '114.40137', '湖北第二师范学院');
INSERT INTO `tp_schooljw` VALUES ('323', '江夏区', '30.429088581128', '114.44758042758', '湖北经济学院法商学院');
INSERT INTO `tp_schooljw` VALUES ('324', '江夏区', '30.505318', '114.376009', '武汉科技学院外经贸学院');
INSERT INTO `tp_schooljw` VALUES ('325', '江夏区', '30.708632', '114.543541', '武汉工程科技学院');
INSERT INTO `tp_schooljw` VALUES ('326', '江夏区', '30.419303', '114.318766', '武汉东湖学院');
INSERT INTO `tp_schooljw` VALUES ('327', '江夏区', '30.345113', '114.3366793', '湖北生态工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('328', '江夏区', '30.37543', '114.3380213', '武汉纺织大学（阳光校区）');
INSERT INTO `tp_schooljw` VALUES ('329', '江夏区', '30.4776349', '114.4459879', '武汉语言文化职业学院');
INSERT INTO `tp_schooljw` VALUES ('330', '江夏区', '30.403081', '114.318556', '长江工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('331', '江夏区', '30.415864', '114.320576', '汉口学院');
INSERT INTO `tp_schooljw` VALUES ('332', '江夏区', '30.40323', '114.372966', '武汉信息传播职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('333', '江夏区', '30.418033', '114.416686', '武汉体育学院体育科技学院');
INSERT INTO `tp_schooljw` VALUES ('334', '江夏区', '30.401673905253', '114.42865313049', '湖北美术学院（江夏校区）');
INSERT INTO `tp_schooljw` VALUES ('335', '江夏区', '30.519346', '114.359054', '湖北经济学院');
INSERT INTO `tp_schooljw` VALUES ('336', '江夏区', '30.4007481', '114.4097271', '华中农业大学楚天学院');
INSERT INTO `tp_schooljw` VALUES ('337', '江夏区', '30.4293322', '114.411458', '武汉铁路职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('338', '江夏区', '30.439539', '114.419584', '华中师范大学武汉传媒学院');
INSERT INTO `tp_schooljw` VALUES ('339', '江夏区', '30.416196', '114.371296', '武昌理工学院');
INSERT INTO `tp_schooljw` VALUES ('340', '江夏区', '30.3729836', '114.399748', '武昌职业学院');
INSERT INTO `tp_schooljw` VALUES ('341', '江夏区', '30.581078686056', '114.3161942637', '武汉体育科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('342', '江夏区', '30.371459', '114.406279', '湖北水利水电职业技术学院（汤逊湖校区）');
INSERT INTO `tp_schooljw` VALUES ('343', '江夏区', '30.46223', '114.433784', '武汉工程大学（流芳校区）');
INSERT INTO `tp_schooljw` VALUES ('344', '江夏区', '30.404847', '114.436602', '湖北城市建设职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('345', '经济技术开发区', '30.521263', '114.157553', '江汉大学文理学院');
INSERT INTO `tp_schooljw` VALUES ('346', '经济技术开发区', '30.5786668', '114.3276255', '武汉商学院');
INSERT INTO `tp_schooljw` VALUES ('347', '经济技术开发区', '30.509998', '114.159742', '江汉大学');
INSERT INTO `tp_schooljw` VALUES ('348', '青山区', '30.623529', '114.369519', '武汉科技大学（青山校区）');
INSERT INTO `tp_schooljw` VALUES ('349', '武昌区', '28.692370075762', '115.91014754522', '武汉航海职业技术学院(东湖校区)');
INSERT INTO `tp_schooljw` VALUES ('350', '武昌区', '30.488539', '114.310677', '湖北大学（武昌校区）');
INSERT INTO `tp_schooljw` VALUES ('351', '武昌区', '30.461696', '114.344416', '湖北财税职业学院');
INSERT INTO `tp_schooljw` VALUES ('352', '武昌区', '30.579654', '114.370383', '湖北财经高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('353', '武昌区', '30.5381138', '114.2954477', '武汉音乐学院');
INSERT INTO `tp_schooljw` VALUES ('354', '武昌区', '30.5335005', '114.3128326', '中南财经政法大学（首义校区）');
INSERT INTO `tp_schooljw` VALUES ('355', '武昌区', '30.609678', '114.357953', '武汉理工大学（余家头校区）');
INSERT INTO `tp_schooljw` VALUES ('356', '新洲区', '30.708632', '114.543541', '武汉工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('357', '新洲区', '30.709198', '114.522888', '武汉生物工程学院');
INSERT INTO `tp_schooljw` VALUES ('358', '新洲区', '30.646841', '114.585646', '湖北大学（阳逻校区）');
INSERT INTO `tp_schooljw` VALUES ('359', '汉口区', '30.6364104', '114.2351481', '武汉工业学院');
INSERT INTO `tp_schooljw` VALUES ('360', '汉南区', '30.308817', '114.08459', '湖北国土资源职业学院');
INSERT INTO `tp_schooljw` VALUES ('361', '汉阳区', '30.565702', '114.235699', '武汉船舶职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('362', '江岸区', '30.6753519', '114.3709244', '湖北大学知行学院');
INSERT INTO `tp_schooljw` VALUES ('363', '长安区', '34.039665698048', '108.77644299727', '西北工业大学（长安校区）');
INSERT INTO `tp_schooljw` VALUES ('364', '长安区', '34.1233959', '108.8359416', '西安电子科技大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('365', '长安区', '29.5151516', '106.5759872', '西北大学（长安校区）');
INSERT INTO `tp_schooljw` VALUES ('366', '长安区', '23.0686122', '113.3924088', '陕西师范大学（长安校区）');
INSERT INTO `tp_schooljw` VALUES ('367', '长安区', '34.045191', '108.788673', '西北工业大学明德学院');
INSERT INTO `tp_schooljw` VALUES ('368', '长安区', '34.071629', '108.896817', '西安科技大学高新学院');
INSERT INTO `tp_schooljw` VALUES ('369', '长安区', '34.2073974', '108.9492426', '西安外国语大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('370', '长安区', '34.158892', '108.906934', '西北政法大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('371', '长安区', '34.038446', '108.812788', '西安体育学院（丰裕口校区）');
INSERT INTO `tp_schooljw` VALUES ('372', '长安区', '34.158267', '108.8967419', '西安邮电大学长安校区');
INSERT INTO `tp_schooljw` VALUES ('373', '长安区', '34.120234', '108.936377', '西安培华学院');
INSERT INTO `tp_schooljw` VALUES ('374', '长安区', '34.114731', '108.936316', '西安财经学院（长安校区）');
INSERT INTO `tp_schooljw` VALUES ('375', '长安区', '34.02198', '109.011224', '西安翻译学院');
INSERT INTO `tp_schooljw` VALUES ('376', '长安区', '34.127964458628', '108.99792022075', '陕西职业技术学院(老校区)');
INSERT INTO `tp_schooljw` VALUES ('377', '长安区', '33.979866', '108.706231', '西安高新科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('378', '长安区', '34.047822', '108.780963', '西安城市建设职业学院');
INSERT INTO `tp_schooljw` VALUES ('379', '长安区', '34.2378478', '108.855646', '陕西电子信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('380', '长安区', '34.1917098', '108.9393569', '陕西学前师范学院');
INSERT INTO `tp_schooljw` VALUES ('381', '长安区', '34.046024', '108.822018', '陕西青年职业学院');
INSERT INTO `tp_schooljw` VALUES ('382', '长安区', '34.165112', '108.870797', '陕西工商职业学院');
INSERT INTO `tp_schooljw` VALUES ('383', '长安区', '34.119705', '108.941258', '陕西电子科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('384', '长安区', '34.139733', '108.933659', '西京学院');
INSERT INTO `tp_schooljw` VALUES ('385', '长安区', '34.1547639', '108.9360914', '延安大学西安创新学院');
INSERT INTO `tp_schooljw` VALUES ('386', '长安区', '34.049417', '108.794486', '西北大学现代学院');
INSERT INTO `tp_schooljw` VALUES ('387', '雁塔区', '34.216258', '108.942322', '西安交通大学（财经校区）');
INSERT INTO `tp_schooljw` VALUES ('388', '雁塔区', '34.2075115', '108.9441957', '西北大学太白校区');
INSERT INTO `tp_schooljw` VALUES ('389', '雁塔区', '34.221302', '108.996927', '西安理工大学（曲江校区）');
INSERT INTO `tp_schooljw` VALUES ('390', '雁塔区', '34.2033419', '108.946824', '陕西师范大学（雁塔校区）');
INSERT INTO `tp_schooljw` VALUES ('391', '雁塔区', '34.2073974', '108.9492426', '西安外国语大学（雁塔校区）');
INSERT INTO `tp_schooljw` VALUES ('392', '雁塔区', '34.2075115', '108.9441957', '西北政法大学（北校区）');
INSERT INTO `tp_schooljw` VALUES ('393', '雁塔区', '34.229235', '108.942791', '西安音乐学院');
INSERT INTO `tp_schooljw` VALUES ('394', '雁塔区', '34.217989', '108.930438', '西安美术学院');
INSERT INTO `tp_schooljw` VALUES ('395', '雁塔区', '34.219491156085', '108.91082950156', '西安文理学院（雁塔校区）');
INSERT INTO `tp_schooljw` VALUES ('396', '雁塔区', '34.215991121672', '108.96097291513', '西安财经学院（翠西校区）');
INSERT INTO `tp_schooljw` VALUES ('397', '雁塔区', '34.221028438248', '108.95495426821', '西安邮电大学（雁塔校区）');
INSERT INTO `tp_schooljw` VALUES ('398', '雁塔区', '34.173244', '108.921331', '西安欧亚学院');
INSERT INTO `tp_schooljw` VALUES ('399', '雁塔区', '34.233404', '108.869176', '西安外事学院');
INSERT INTO `tp_schooljw` VALUES ('400', '雁塔区', '34.154446', '108.936114', '西安东方亚太职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('401', '雁塔区', '34.2426269', '109.0041211', '陕西警官职业学院');
INSERT INTO `tp_schooljw` VALUES ('402', '雁塔区', '34.227514', '108.839923', '西安职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('403', '雁塔区', '34.223971', '109.001532', '西安交通大学曲江校区');
INSERT INTO `tp_schooljw` VALUES ('404', '雁塔区', '34.224689', '108.947604', '长安大学（小寨校区）');
INSERT INTO `tp_schooljw` VALUES ('405', '雁塔区', '34.236496696718', '108.92336984648', '西安电子科技大学北校区');
INSERT INTO `tp_schooljw` VALUES ('406', '雁塔区', '34.102692', '108.647054', '西安石油大学');
INSERT INTO `tp_schooljw` VALUES ('407', '雁塔区', '34.238382', '108.932704', '西安体育学院');
INSERT INTO `tp_schooljw` VALUES ('408', '雁塔区', '34.2402119', '108.8961374', '西北大学（桃园校区）');
INSERT INTO `tp_schooljw` VALUES ('409', '雁塔区', '34.2374787', '108.9651021', '西安建筑科技大学');
INSERT INTO `tp_schooljw` VALUES ('410', '雁塔区', '34.215991121672', '108.96097291513', '西安财经学院（翠东校区）');
INSERT INTO `tp_schooljw` VALUES ('411', '雁塔区', '34.231177', '108.95664', '长安大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('412', '雁塔区', '34.1552337', '108.2068825', '西安铁路工程职工大学');
INSERT INTO `tp_schooljw` VALUES ('413', '碑林区', '34.2415328', '108.9353648', '陕西经济管理职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('414', '碑林区', '34.304104', '108.721424', '陕西艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('415', '碑林区', '38.464264338591', '106.38211745708', '西安交通大学（兴庆校区）');
INSERT INTO `tp_schooljw` VALUES ('416', '碑林区', '34.250067302311', '108.92292069372', '西北工业大学（友谊西路校区）');
INSERT INTO `tp_schooljw` VALUES ('417', '碑林区', '34.259563174536', '108.9998515776', '西安理工大学（金花校区）');
INSERT INTO `tp_schooljw` VALUES ('418', '碑林区', '23.134189931328', '113.25604103548', '西安工业大学（金花校区）');
INSERT INTO `tp_schooljw` VALUES ('419', '碑林区', '34.234502', '108.961992', '西安科技大学（北校区）');
INSERT INTO `tp_schooljw` VALUES ('420', '碑林区', '34.24330092673', '108.93833561628', '西安医学院（含光路校区）');
INSERT INTO `tp_schooljw` VALUES ('421', '莲湖区', '34.28068', '108.940273', '西安铁路职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('422', '莲湖区', '34.268170438132', '108.8985766144', '西安航空学院（本部)');
INSERT INTO `tp_schooljw` VALUES ('423', '莲湖区', '34.270047', '108.911918', '西安理工大学高等技术学院');
INSERT INTO `tp_schooljw` VALUES ('424', '未央区', '34.366797', '108.858285', '西安交通大学城市学院');
INSERT INTO `tp_schooljw` VALUES ('425', '未央区', '34.370249', '108.905016', '长安大学（渭水校区）');
INSERT INTO `tp_schooljw` VALUES ('426', '未央区', '34.379641', '108.986284', '西安工业大学（未央校区）');
INSERT INTO `tp_schooljw` VALUES ('427', '未央区', '34.37032', '109.194004', '陕西科技大学（西安校区）');
INSERT INTO `tp_schooljw` VALUES ('428', '未央区', '34.385199', '108.9980514', '西安医学院（未央校区）');
INSERT INTO `tp_schooljw` VALUES ('429', '未央区', '34.2803231', '108.92798', '陕西交通职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('430', '灞桥区', '34.2908603', '108.9537054', '西安铁道技师学院');
INSERT INTO `tp_schooljw` VALUES ('431', '灞桥区', '34.2285389', '109.0774076', '西安思源学院');
INSERT INTO `tp_schooljw` VALUES ('432', '灞桥区', '34.231045', '109.081884', '西安海棠职业学院');
INSERT INTO `tp_schooljw` VALUES ('433', '灞桥区', '34.2133914', '109.1026232', '西安汽车科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('434', '灞桥区', '34.228739', '109.095584', '西安财经行知学院');
INSERT INTO `tp_schooljw` VALUES ('435', '灞桥区', '35.860020191608', '109.50378300259', '陕西职业技术学院(新校区)');
INSERT INTO `tp_schooljw` VALUES ('436', '新城区', '34.2429563', '109.0164085', '西安建筑科技大学华清学院');
INSERT INTO `tp_schooljw` VALUES ('437', '新城区', '34.268277', '108.9861279', '西安电力高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('438', '新城区', '34.257611', '108.997329', '西安工程大学');
INSERT INTO `tp_schooljw` VALUES ('439', '户县', '34.019829994819', '108.76155807497', '西安建筑科技大学草堂校区');
INSERT INTO `tp_schooljw` VALUES ('440', '户县', '34.093616', '108.622841', '陕西国防工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('441', '户县', '34.1079416', '108.6550024', '西安石油大学户县校区');
INSERT INTO `tp_schooljw` VALUES ('442', '户县', '34.1082907', '108.7310277', '西安医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('443', '户县', '34.2508993', '108.9845629', '西安交通工程学院');
INSERT INTO `tp_schooljw` VALUES ('444', '临潼区', '34.37032', '109.194004', '西安科技大学（临潼校区）');
INSERT INTO `tp_schooljw` VALUES ('445', '临潼区', '34.369317', '109.186206', '西安工程大学（临潼校区）');
INSERT INTO `tp_schooljw` VALUES ('446', '临潼区', '34.371518', '109.223062', '西安美术学院（临潼校区）');
INSERT INTO `tp_schooljw` VALUES ('447', '阎良区', '34.6566756', '109.2128487', '西安航空职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('448', '阎良区', '34.686371674569', '109.31341409891', '西安航空学院（阎良校区）');
INSERT INTO `tp_schooljw` VALUES ('449', '高陵区', '38.042543057444', '114.55788336116', '西安工业大学北方信息工程学院');
INSERT INTO `tp_schooljw` VALUES ('450', '武侯区', '30.6324231', '104.0805405', '四川大学(望江校区)');
INSERT INTO `tp_schooljw` VALUES ('451', '武侯区', '30.644929', '104.045372', '成都体育学院');
INSERT INTO `tp_schooljw` VALUES ('452', '双流区', '30.5573923', '103.9998758', '四川大学（江安校区）');
INSERT INTO `tp_schooljw` VALUES ('453', '双流区', '30.58070559746', '104.00288344947', '成都信息工程学院（航空港校区）');
INSERT INTO `tp_schooljw` VALUES ('454', '双流区', '30.568385086687', '103.97336513041', '西南民族大学（航空港校区）');
INSERT INTO `tp_schooljw` VALUES ('455', '青羊区', '30.681957', '103.816472', '西南财经大学(光华校区) ');
INSERT INTO `tp_schooljw` VALUES ('456', '青羊区', '30.666201', '104.044065', '成都中医药大学（十二桥校区）');
INSERT INTO `tp_schooljw` VALUES ('457', '新都区', '30.831667367713', '104.19048557217', '西南石油大学（成都校区）');
INSERT INTO `tp_schooljw` VALUES ('458', '新都区', '30.805829', '104.177095', '四川音乐学院（新都校区）');
INSERT INTO `tp_schooljw` VALUES ('459', '新都区', '30.818281', '104.195747', '成都医学院（新都校区）');
INSERT INTO `tp_schooljw` VALUES ('460', '金牛区', '30.701879', '104.051704', '西南交通大学(九里校区)');
INSERT INTO `tp_schooljw` VALUES ('461', '金牛区', '30.666201', '104.044065', '成都中医药大学(十二桥校区)');
INSERT INTO `tp_schooljw` VALUES ('462', '金牛区', '30.512318', '103.597512', '四川电影电视职业学院');
INSERT INTO `tp_schooljw` VALUES ('463', '金牛区', '30.710241', '104.050097', '电子科技大学(九里堤校区)');
INSERT INTO `tp_schooljw` VALUES ('464', '郫县', '30.761916', '103.990541', '西南交通大学(犀浦校区)');
INSERT INTO `tp_schooljw` VALUES ('465', '郫县', '30.772648', '103.95059', '西华大学');
INSERT INTO `tp_schooljw` VALUES ('466', '郫县', '30.7587448', '103.9597445', '成都纺织高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('467', '郫县', '30.793658003058', '103.89484424578', '成都工业学院（郫县校区）');
INSERT INTO `tp_schooljw` VALUES ('468', '郫县', '30.8233008', '103.9810092', '四川科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('469', '郫县', '30.823498', '103.9841049', '四川传媒学院');
INSERT INTO `tp_schooljw` VALUES ('470', '郫县', '30.7259568', '103.9491004', '四川大学锦城学院');
INSERT INTO `tp_schooljw` VALUES ('471', '郫县', '30.7287321', '103.9661111', '电子科技大学成都学院');
INSERT INTO `tp_schooljw` VALUES ('472', '郫县', '30.7461166', '103.9267658', '电子科技大学(清水河校区)');
INSERT INTO `tp_schooljw` VALUES ('473', '郫县', '30.7835972', '103.9600755', '银杏酒店管理学院');
INSERT INTO `tp_schooljw` VALUES ('474', '郫县', '30.83963639687', '103.88462152908', '成都中医药大学（郫县校区）');
INSERT INTO `tp_schooljw` VALUES ('475', '郫县', '30.830589792056', '103.98421666097', '四川五月花专修学院（团结校区）');
INSERT INTO `tp_schooljw` VALUES ('476', '郫县', '30.7813042', '103.9314703', '四川托普信息技术职业学院');
INSERT INTO `tp_schooljw` VALUES ('477', '郫县', '30.822937878309', '103.98591445838', '四川工商学院（团结校区）');
INSERT INTO `tp_schooljw` VALUES ('478', '温江区', '30.690656', '103.924114', '四川商务职业学院');
INSERT INTO `tp_schooljw` VALUES ('479', '温江区', '30.685585', '103.818615', '西南财经大学(柳林校区)');
INSERT INTO `tp_schooljw` VALUES ('480', '温江区', '30.608217', '104.120463', '成都师范大学');
INSERT INTO `tp_schooljw` VALUES ('481', '温江区', '30.682203', '103.856646', '四川交通职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('482', '温江区', '30.692435113484', '103.81404166516', '成都中医药大学（温江校区）');
INSERT INTO `tp_schooljw` VALUES ('483', '温江区', '30.7049908', '103.8622519', '四川农业大学(成都校区)');
INSERT INTO `tp_schooljw` VALUES ('484', '温江区', '30.6949737', '103.8174701', '成都农业科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('485', '温江区', '30.6463431', '104.1646077', '四川艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('486', '龙泉驿', '30.608893', '104.164042', '四川师范大学（东区）');
INSERT INTO `tp_schooljw` VALUES ('487', '龙泉驿', '30.5606446', '104.2027053', '四川师范大学（成龙校区）');
INSERT INTO `tp_schooljw` VALUES ('488', '龙泉驿', '30.539319', '103.914598', '四川华新现代职业学院');
INSERT INTO `tp_schooljw` VALUES ('489', '龙泉驿', '30.649512', '104.188179', '成都大学');
INSERT INTO `tp_schooljw` VALUES ('490', '龙泉驿', '31.2650593', '121.5476598', '四川城市职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('491', '龙泉驿', '30.5845213', '104.1839085', '四川科技职工大学');
INSERT INTO `tp_schooljw` VALUES ('492', '龙泉驿', '30.6465437', '104.1650723', '四川长江职业学院');
INSERT INTO `tp_schooljw` VALUES ('493', '龙泉驿', '30.6087334', '104.3065735', '成都信息工程学院（龙泉校区）');
INSERT INTO `tp_schooljw` VALUES ('494', '龙泉驿', '30.529353', '104.23956', '成都航空职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('495', '龙泉驿', '30.628455', '104.066647', '四川财经职业学院');
INSERT INTO `tp_schooljw` VALUES ('496', '龙泉驿', '30.585431279192', '104.2837296841', '四川旅游学院（龙泉校区）');
INSERT INTO `tp_schooljw` VALUES ('497', '龙泉驿', '30.597239', '104.299426', '四川国际标榜职业学院');
INSERT INTO `tp_schooljw` VALUES ('498', '锦江区', '30.622894', '104.123683', '四川邮电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('499', '锦江区', '30.614137902696', '104.12705622011', '四川师范大学（狮子山校区）');
INSERT INTO `tp_schooljw` VALUES ('500', '成华区', '30.676206', '104.145394', '成都理工大学');
INSERT INTO `tp_schooljw` VALUES ('501', '成华区', '30.675104', '104.100361', '电子科技大学（沙河校区）');
INSERT INTO `tp_schooljw` VALUES ('502', '都江堰', '30.97723', '103.625311', '四川工商职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('503', '都江堰', '30.670441', '104.14593', '四川外国语大学(成都学院)');
INSERT INTO `tp_schooljw` VALUES ('504', '都江堰', '30.8925766', '103.5936075', '成都东软学院');
INSERT INTO `tp_schooljw` VALUES ('505', '崇州市', '30.6953086', '104.0286143', '四川水利职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('506', '金堂县', '30.568347', '104.276731', '四川天一学院');
INSERT INTO `tp_schooljw` VALUES ('507', '青白江区', '30.826907336993', '104.2715666275', '四川建筑职业技术学院（青白江校区）');
INSERT INTO `tp_schooljw` VALUES ('508', '新津县', '30.479531', '103.879671', '成都职业技术学院（花源校区）');
INSERT INTO `tp_schooljw` VALUES ('509', '新津县', '30.97723', '103.625311', '成都艺术职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('510', '西高教', '30.323412534352', '120.09472411773', '浙江电大工程学院');
INSERT INTO `tp_schooljw` VALUES ('511', '西高教', '29.904261987747', '121.54369088809', '宁波教育学院育才学院');
INSERT INTO `tp_schooljw` VALUES ('512', '西高教', '29.8807067', '121.5325609', '宁波工程学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('513', '北高教', '29.854232', '121.584748', '宁波大学科技学院');
INSERT INTO `tp_schooljw` VALUES ('514', '北高教', '29.8807067', '121.5325609', '宁波工程学院');
INSERT INTO `tp_schooljw` VALUES ('515', '北高教', '29.9085812', '121.6372337', '宁波大学');
INSERT INTO `tp_schooljw` VALUES ('516', '北高教', '34.310462884168', '108.71931974989', '浙江纺织服装职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('517', '南高教', '29.803511', '121.561649', '宁波诺丁汉');
INSERT INTO `tp_schooljw` VALUES ('518', '南高教', '29.816637', '121.563107', '浙江万里学院（钱湖校区）');
INSERT INTO `tp_schooljw` VALUES ('519', '南高教', '29.827230651471', '121.63516533814', '浙江万里学院（回龙校区）');
INSERT INTO `tp_schooljw` VALUES ('520', '南高教', '29.815083', '121.57287', '浙江大学宁波理工学院');
INSERT INTO `tp_schooljw` VALUES ('521', '南高教', '29.894235186904', '121.48860679423', '宁波大红鹰学院（鄞州校区）');
INSERT INTO `tp_schooljw` VALUES ('522', '慈溪市', '30.320201', '121.19459', '宁波大红鹰学院（杭州湾校区）');
INSERT INTO `tp_schooljw` VALUES ('523', '北仑区', '29.894134', '121.816069', '宁波职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('524', '江东区', '30.258813', '120.122228', '浙江大学软件学院');
INSERT INTO `tp_schooljw` VALUES ('525', '鄞州区', '29.159492070564', '119.95719352744', '浙江医药高等专科技术学院');
INSERT INTO `tp_schooljw` VALUES ('526', '鄞州区', '29.872164', '121.555505', '宁波城市职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('527', '鄞州区', '29.885256382535', '121.57900327767', '宁波天一卫生职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('528', '江北区', '29.897985', '121.5372505', '宁波教育学院（育才校区）');
INSERT INTO `tp_schooljw` VALUES ('529', '江北区', '29.899556', '121.537857', '浙江广播电视大学工商学院');
INSERT INTO `tp_schooljw` VALUES ('530', '江北区', '29.477709', '121.87869', '宁波广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('531', '海曙区', '29.159492070564', '119.95719352744', '浙江工商职业技术学校');
INSERT INTO `tp_schooljw` VALUES ('532', '扬州市', '32.33819', '119.39539', '扬州大学（扬子津校区）');
INSERT INTO `tp_schooljw` VALUES ('533', '扬州市', '32.3758105', '119.4256435', '扬州大学（江阳路南校区）');
INSERT INTO `tp_schooljw` VALUES ('534', '扬州市', '32.377365', '119.421696', '扬州大学（江阳路北校区）');
INSERT INTO `tp_schooljw` VALUES ('535', '扬州市', '32.384709', '119.424249', '扬州大学（荷花池校区）');
INSERT INTO `tp_schooljw` VALUES ('536', '扬州市', '32.3857826', '119.4240766', '扬州大学（文汇路校区）');
INSERT INTO `tp_schooljw` VALUES ('537', '扬州市', '32.3977856', '119.4240312', '扬州大学（瘦西湖校区）');
INSERT INTO `tp_schooljw` VALUES ('538', '扬州市', '32.4020939', '119.4503623', '扬州大学盐阜路校区');
INSERT INTO `tp_schooljw` VALUES ('539', '扬州市', '32.4143524', '119.4474223', '扬州工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('540', '扬州市', '32.3924934', '119.4028842', '扬州职业大学');
INSERT INTO `tp_schooljw` VALUES ('541', '扬州市', '32.408505254568', '119.42777719185', '扬州江海职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('542', '扬州市', '32.080299', '118.771417', '南京邮电大学通达学院');
INSERT INTO `tp_schooljw` VALUES ('543', '扬州市', '34.28533', '117.191778', '扬州商务高等职业学校');
INSERT INTO `tp_schooljw` VALUES ('544', '泉山区', '34.221642', '117.197969', '中国矿业大学(文昌校区）');
INSERT INTO `tp_schooljw` VALUES ('545', '泉山区', '34.216283', '117.148264', '中国矿业大学(南湖校区)');
INSERT INTO `tp_schooljw` VALUES ('546', '泉山区', '34.203329', '117.17838', '江苏建筑职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('547', '泉山区', '34.22106575057', '117.21596936518', '徐州工程学院（泉山校区）');
INSERT INTO `tp_schooljw` VALUES ('548', '泉山区', '34.2636022', '117.1753444', '徐州医学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('549', '泉山区', '34.2618222', '117.1361288', '徐州生物工程学院');
INSERT INTO `tp_schooljw` VALUES ('550', '泉山区', '0', '0', '徐州幼儿师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('551', '铜山新区', '34.200317526305', '117.18638816474', '江苏师范大学（泉山校区）');
INSERT INTO `tp_schooljw` VALUES ('552', '铜山新区', '32.7977996', '130.7210458', '九州学院');
INSERT INTO `tp_schooljw` VALUES ('553', '铜山新区', '34.287876', '117.129169', '徐州高等师范学校');
INSERT INTO `tp_schooljw` VALUES ('554', '贾汪区', '34.410523474787', '117.49824390558', '江苏师范大学（贾汪校区）');
INSERT INTO `tp_schooljw` VALUES ('555', '新城区', '34.1975637', '117.2984227', '徐州工程学院（中心校区）');
INSERT INTO `tp_schooljw` VALUES ('556', '云龙区', '34.268058564325', '117.26264531948', '徐州医学院（主校区）');
INSERT INTO `tp_schooljw` VALUES ('557', '九里区', '34.298633', '117.140639', '徐州工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('558', '惠山区', '32.072048', '118.774302', '江苏信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('559', '惠山区', '31.574266', '120.287345', '无锡商业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('560', '惠山区', '31.585408', '120.184208', '无锡城市职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('561', '惠山区', '31.569034', '120.172666', '江南影视学院');
INSERT INTO `tp_schooljw` VALUES ('562', '滨湖区', '31.4825084', '120.2776136', '江南大学');
INSERT INTO `tp_schooljw` VALUES ('563', '滨湖区', '31.921644', '120.276372', '无锡职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('564', '滨湖区', '31.521034', '120.390602', '无锡科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('565', '滨湖区', '31.4799592', '120.3769908', '无锡太湖学院');
INSERT INTO `tp_schooljw` VALUES ('566', '滨湖区', '31.4946', '120.24483', '无锡南洋职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('567', '滨湖区', '31.583799', '120.23156', '无锡交通高等职业技术学校');
INSERT INTO `tp_schooljw` VALUES ('568', '南长区', '31.543999361536', '120.30076845255', '无锡职业技术学院（中桥校区）');
INSERT INTO `tp_schooljw` VALUES ('569', '经开区', '31.776938', '117.1877352', '安徽大学（馨苑校区）');
INSERT INTO `tp_schooljw` VALUES ('570', '经开区', '31.845348654665', '117.26975989912', '合肥学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('571', '经开区', '31.859250423596', '117.21599631435', '安徽建筑大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('572', '经开区', '31.861412560407', '117.28157261657', '合肥师范学院（锦绣校区）');
INSERT INTO `tp_schooljw` VALUES ('573', '经开区', '31.77144', '117.204183', '合肥工业大学（翡翠湖校区）');
INSERT INTO `tp_schooljw` VALUES ('574', '经开区', '31.855531735212', '117.26921193276', '安徽医科大学南校区');
INSERT INTO `tp_schooljw` VALUES ('575', '经开区', '31.7822095', '117.2097618', '安徽财贸职业学院');
INSERT INTO `tp_schooljw` VALUES ('576', '经开区', '31.754223', '117.198773', '安徽三联学院');
INSERT INTO `tp_schooljw` VALUES ('577', '经开区', '31.760701', '117.181891', '合肥财经职业学院');
INSERT INTO `tp_schooljw` VALUES ('578', '经开区', '31.822601320142', '117.31159398672', '安徽审计职业学院（方兴校区）');
INSERT INTO `tp_schooljw` VALUES ('579', '经开区', '31.7308490229', '117.25890836856', '合肥滨湖职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('580', '经开区', '31.76102', '117.17429', '合肥信息技术职业学院');
INSERT INTO `tp_schooljw` VALUES ('581', '蜀山区', '31.860048', '117.257372', '安徽农业大学');
INSERT INTO `tp_schooljw` VALUES ('582', '蜀山区', '31.855531735212', '117.26921193276', '安徽医科大学（校本部）');
INSERT INTO `tp_schooljw` VALUES ('583', '蜀山区', '31.8466771', '117.2523416', '安徽大学江淮学院');
INSERT INTO `tp_schooljw` VALUES ('584', '蜀山区', '31.862769', '117.207651', '合肥万博科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('585', '蜀山区', '31.831898', '117.183333', '安徽新华学院');
INSERT INTO `tp_schooljw` VALUES ('586', '蜀山区', '31.8553818', '117.203832', '合肥通用职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('587', '蜀山区', '31.8716238', '117.2491022', '安徽警官职业学院（西区）');
INSERT INTO `tp_schooljw` VALUES ('588', '蜀山区', '31.858422357641', '117.2673434573', '安徽中医药大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('589', '蜀山区', '31.859250423596', '117.21599631435', '安徽经济管理干部学院');
INSERT INTO `tp_schooljw` VALUES ('590', '包河区', '31.859852', '117.17463', '安徽工业经济职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('591', '包河区', '31.830579', '117.299044', '安徽交通职业技术学院北区');
INSERT INTO `tp_schooljw` VALUES ('592', '包河区', '31.859250423596', '117.21599631435', '安徽建筑大学（北校区）');
INSERT INTO `tp_schooljw` VALUES ('593', '瑶海区', '31.614803', '117.909886', '安徽职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('594', '瑶海区', '31.9385917', '117.3907924', '安徽中医药大学（少荃湖校区）');
INSERT INTO `tp_schooljw` VALUES ('595', '瑶海区', '31.9204082', '117.2810245', '安徽万通汽车专修学院');
INSERT INTO `tp_schooljw` VALUES ('596', '瑶海区', '31.853457', '117.232544', '安徽农业大学经济技术学院');
INSERT INTO `tp_schooljw` VALUES ('597', '肥西县', '31.742552', '117.018387', '安徽文达信息工程学院');
INSERT INTO `tp_schooljw` VALUES ('598', '肥西县', '31.740704', '117.023435', '安徽外国语学院');
INSERT INTO `tp_schooljw` VALUES ('599', '肥西县', '31.8611456', '117.2058536', '合肥科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('600', '肥西县', '27.842977508435', '112.95403072313', '徽商职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('601', '新站区', '31.7600268', '117.2342438', '安徽城市管理职业学院');
INSERT INTO `tp_schooljw` VALUES ('602', '居巢区', '31.649472', '117.930437', '巢湖学院');
INSERT INTO `tp_schooljw` VALUES ('603', '居巢区', '31.614803', '117.909886', '合肥职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('604', '居巢区', '31.859250423596', '117.21599631435', '安徽建筑大学城市建设学院');
INSERT INTO `tp_schooljw` VALUES ('605', '昌北区', '39.990009', '116.407914', '江西农业大学南昌商学院');
INSERT INTO `tp_schooljw` VALUES ('606', '昌北区', '28.749190161313', '115.87492498619', '华东交通大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('607', '昌北区', '28.749190161313', '115.87492498619', '华东交通大学（北校区）');
INSERT INTO `tp_schooljw` VALUES ('608', '昌北区', '20.056512327375', '110.34459694639', '东华理工大学（昌北区）');
INSERT INTO `tp_schooljw` VALUES ('609', '昌北区', '28.76819713292', '115.83930717273', '江西农业大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('610', '昌北区', '28.76819713292', '115.83930717273', '江西农业大学（北校区）');
INSERT INTO `tp_schooljw` VALUES ('611', '昌北区', '28.749000153111', '115.88313549855', '江西理工大学（南昌校区）');
INSERT INTO `tp_schooljw` VALUES ('612', '昌北区', '28.733688', '115.836377', '江西财经大学现代经济管理学院');
INSERT INTO `tp_schooljw` VALUES ('613', '昌北区', '28.765798694975', '115.86249243793', '江西财经大学（蛟桥园南校区）');
INSERT INTO `tp_schooljw` VALUES ('614', '昌北区', '28.765798694975', '115.86249243793', '江西财经大学（蛟桥园北校区）');
INSERT INTO `tp_schooljw` VALUES ('615', '昌北区', '28.7237949', '115.8178128', '江西财经大学（麦庐园校区）');
INSERT INTO `tp_schooljw` VALUES ('616', '昌北区', '28.784032', '115.856958', '南昌理工学院（主校区）');
INSERT INTO `tp_schooljw` VALUES ('617', '昌北区', '28.683513628725', '115.95787451695', '南昌师范学院（昌北校区）');
INSERT INTO `tp_schooljw` VALUES ('618', '昌北区', '28.589741', '115.907566', '江西电力职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('619', '昌北区', '28.756508', '115.858008', '江西艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('620', '昌北区', '28.695128', '115.873228', '江西交通职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('621', '昌北区', '27.757251810258', '115.67607607857', '江西科技师范大学（枫林校区）');
INSERT INTO `tp_schooljw` VALUES ('622', '昌北区', '27.777672', '116.12055', '江西机电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('623', '昌北区', '28.679069', '115.82119', '江西司法警官职业学院');
INSERT INTO `tp_schooljw` VALUES ('624', '昌北区', '27.757251810258', '115.67607607857', '江西旅游商贸职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('625', '昌北区', '27.757251810258', '115.67607607857', '江西青年职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('626', '昌北区', '28.749822', '115.874874', '江西水利职业学院');
INSERT INTO `tp_schooljw` VALUES ('627', '昌北区', '28.7087134', '115.8263167', '华东交通大学理工学院');
INSERT INTO `tp_schooljw` VALUES ('628', '昌北区', '20.056512327375', '110.34459694639', '东华理工大学（枫林校区）');
INSERT INTO `tp_schooljw` VALUES ('629', '红谷滩新区', '28.800550810092', '115.75047374088', '江西中医药大学科技学院（湾里区）');
INSERT INTO `tp_schooljw` VALUES ('630', '红谷滩新区', '28.6867675', '115.744116', '江西中医药大学（湾里区）');
INSERT INTO `tp_schooljw` VALUES ('631', '红谷滩新区', '28.660589', '115.820223', '南昌大学（前湖校区）');
INSERT INTO `tp_schooljw` VALUES ('632', '红谷滩新区', '28.655045880198', '115.820927842', '南昌航空大学(前湖校区)');
INSERT INTO `tp_schooljw` VALUES ('633', '红谷滩新区', '26.719185', '114.26961', '江西工业贸易职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('634', '红谷滩新区', '28.662929', '115.777769', '南昌师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('635', '红谷滩新区', '28.63925', '115.801567', '江西经济管理干部学院');
INSERT INTO `tp_schooljw` VALUES ('636', '红谷滩新区', '28.655045880198', '115.820927842', '江西科技师范大学（前湖校区）');
INSERT INTO `tp_schooljw` VALUES ('637', '红谷滩新区', '28.655045880198', '115.820927842', '南昌大学医学院（前湖校区）');
INSERT INTO `tp_schooljw` VALUES ('638', '红谷滩新区', '28.613879', '115.753635', '江西科技师范大学理工学院');
INSERT INTO `tp_schooljw` VALUES ('639', '红谷滩新区', '28.613642', '115.758553', '南昌工学院');
INSERT INTO `tp_schooljw` VALUES ('640', '青云谱区', '28.650676', '115.897276', '江西工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('641', '青云谱区', '28.587977', '115.906766', '江西信息应用职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('642', '青云谱区', '28.638205586184', '115.92356822954', '江西航空职业技术学院（青云谱校区）');
INSERT INTO `tp_schooljw` VALUES ('643', '青云谱区', '28.562415', '115.940495', '江西生物科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('644', '青云谱区', '28.570044', '115.8816932', '江西建设职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('645', '青云谱区', '28.638205586184', '115.92356822954', '江西航空职业技术学院（ 昌南校区）');
INSERT INTO `tp_schooljw` VALUES ('646', '青云谱区', '28.4179854', '115.9655496', '江西护理职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('647', '青云谱区', '28.692121', '115.973586', '江西泰豪动漫职业学院');
INSERT INTO `tp_schooljw` VALUES ('648', '青云谱区', '28.7448441', '115.957684', '江西新闻出版职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('649', '青云谱区', '28.850493881654', '115.58947942743', '南昌职业学院（安义校区）');
INSERT INTO `tp_schooljw` VALUES ('650', '青云谱区', '28.624906', '115.907842', '江西机电职业技术学院（青云谱校区）');
INSERT INTO `tp_schooljw` VALUES ('651', '青云谱区', '0', '0', '南昌大学人民武装学院');
INSERT INTO `tp_schooljw` VALUES ('652', '青云谱区', '27.757251810258', '115.67607607857', '江西翻译专修学院');
INSERT INTO `tp_schooljw` VALUES ('653', '青云谱区', '28.451677', '115.950313', '江西服装学院');
INSERT INTO `tp_schooljw` VALUES ('654', '青云谱区', '27.757251810258', '115.67607607857', '江西泰豪动漫学院（创意园区）');
INSERT INTO `tp_schooljw` VALUES ('655', '瑶湖区', '28.6783142038', '116.0314178467', '江西师范大学（瑶湖校区）');
INSERT INTO `tp_schooljw` VALUES ('656', '瑶湖区', '28.6791425187', '116.0175991058', '江西科技学院（瑶湖校区）');
INSERT INTO `tp_schooljw` VALUES ('657', '瑶湖区', '28.6909641177', '116.02423234495', '南昌工程学院（瑶湖校区）');
INSERT INTO `tp_schooljw` VALUES ('658', '瑶湖区', '28.6940878', '116.024598', '江西工业职业技术学院(瑶湖校区)');
INSERT INTO `tp_schooljw` VALUES ('659', '瑶湖区', '28.672184', '115.999365', '江西现代职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('660', '瑶湖区', '28.7449605', '115.8871616', '江西外语外贸职业学院');
INSERT INTO `tp_schooljw` VALUES ('661', '瑶湖区', '28.649115', '115.937996', '江西制造职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('662', '青山湖区', '28.67547', '115.923436', '江西师范大学科学技术学院');
INSERT INTO `tp_schooljw` VALUES ('663', '青山湖区', '28.587369', '115.881997', '江西工商职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('664', '青山湖区', '28.477965', '115.958635', '江西科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('665', '青山湖区', '28.6773735', '115.9415797', '南昌大学科学技术学院');
INSERT INTO `tp_schooljw` VALUES ('666', '青山湖区', '28.662280423804', '115.95202654808', '南昌航空大学科技学院（上海路校区）');
INSERT INTO `tp_schooljw` VALUES ('667', '青山湖区', '28.703756', '115.916446', '南昌大学（青山湖校区）');
INSERT INTO `tp_schooljw` VALUES ('668', '湾里区', '28.89775', '115.817312', '江西先锋软件职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('669', '湾里区', '28.664222', '115.756065', '江西警察学院');
INSERT INTO `tp_schooljw` VALUES ('670', '湾里区', '25.8349623', '114.9182066', '江西应用科技学院');
INSERT INTO `tp_schooljw` VALUES ('671', '岳麓区', '32.0519052', '118.7959939', '湖南大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('672', '岳麓区', '28.158797', '112.93613', '中南大学（升华公寓）');
INSERT INTO `tp_schooljw` VALUES ('673', '岳麓区', '28.1506599', '112.9400428', '湖南大学（北校区）');
INSERT INTO `tp_schooljw` VALUES ('674', '岳麓区', '28.174257467974', '112.93802291895', '中南大学（校本部）');
INSERT INTO `tp_schooljw` VALUES ('675', '岳麓区', '28.174257467974', '112.93802291895', '中南大学（湘雅校区）');
INSERT INTO `tp_schooljw` VALUES ('676', '岳麓区', '0', '0', '湖南中医药大学（含浦校区）');
INSERT INTO `tp_schooljw` VALUES ('677', '岳麓区', '28.191013284317', '112.95657292772', '湖南师范大学（南院校区）');
INSERT INTO `tp_schooljw` VALUES ('678', '岳麓区', '28.217524', '112.936267', '湖南师范大学医学院');
INSERT INTO `tp_schooljw` VALUES ('679', '岳麓区', '27.695857415397', '111.72065725834', '湖南第一师范学院（东方红校区）');
INSERT INTO `tp_schooljw` VALUES ('680', '岳麓区', '28.174537', '112.94508', '湖南艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('681', '岳麓区', '28.220745338233', '112.84697067249', '长沙职业技术学院（雷锋校区）');
INSERT INTO `tp_schooljw` VALUES ('682', '岳麓区', '28.218767', '112.920163', '湖南商学院');
INSERT INTO `tp_schooljw` VALUES ('683', '岳麓区', '28.205518', '112.926696', '湖南财政经济学院');
INSERT INTO `tp_schooljw` VALUES ('684', '岳麓区', '28.204928', '112.880418', '湖南涉外经济学院');
INSERT INTO `tp_schooljw` VALUES ('685', '岳麓区', '28.138739', '112.908131', '湖南工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('686', '岳麓区', '28.149424', '112.909464', '长沙南方职业学院');
INSERT INTO `tp_schooljw` VALUES ('687', '岳麓区', '28.0713596', '113.0453213', '湖南商务职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('688', '岳麓区', '28.16722', '112.9226', '湖南师范大学树达学院');
INSERT INTO `tp_schooljw` VALUES ('689', '岳麓区', '28.222788', '113.129942', '湖南公安高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('690', '岳麓区', '27.842977508435', '112.95403072313', '湖南工业贸易职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('691', '岳麓区', '28.191013284317', '112.95657292772', '湖南师范大学（主校区）');
INSERT INTO `tp_schooljw` VALUES ('692', '岳麓区', '28.2021074', '112.8232962', '湖南电子科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('693', '长沙县', '28.266186738097', '113.09243265301', '长沙师范学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('694', '长沙县', '28.266186738097', '113.09243265301', '长沙师范学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('695', '长沙县', '28.028559', '113.044402', '长沙航空职业技术学院（田心桥校区）');
INSERT INTO `tp_schooljw` VALUES ('696', '长沙县', '28.00007', '112.987875', '湖南科技职业学院（暮云镇校区）');
INSERT INTO `tp_schooljw` VALUES ('697', '长沙县', '28.146885257483', '113.19177625932', '湖南交通职业技术学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('698', '长沙县', '28.222788', '113.129942', '湖南警察学院');
INSERT INTO `tp_schooljw` VALUES ('699', '长沙县', '28.3386227', '112.8181012', '湖南信息学院');
INSERT INTO `tp_schooljw` VALUES ('700', '长沙县', '28.262591597913', '113.08371908956', '湖南大众传媒职业技术学院（星沙校区）');
INSERT INTO `tp_schooljw` VALUES ('701', '长沙县', '28.2629519', '113.0598209', '湖南机电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('702', '长沙县', '28.2182499', '113.1086138', '长沙电力职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('703', '长沙县', '28.2149', '113.107463', '湖南水利水电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('704', '长沙县', '28.159469', '112.989866', '湖南现代物流职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('705', '长沙县', '28.218143', '113.1321856', '湖南安全技术职业学院');
INSERT INTO `tp_schooljw` VALUES ('706', '长沙县', '28.221982', '113.182638', '湖南都市职业学院');
INSERT INTO `tp_schooljw` VALUES ('707', '长沙县', '28.186184', '113.137202', '湖南三一工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('708', '长沙县', '28.213472262588', '112.97934497239', '长沙卫生职业学院');
INSERT INTO `tp_schooljw` VALUES ('709', '长沙县', '28.274938', '113.068599', '湖南工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('710', '天心区', '28.131862', '112.990237', '中南林业科技大学');
INSERT INTO `tp_schooljw` VALUES ('711', '天心区', '28.160834981638', '112.98538158542', '长沙理工大学（金盆岭校区）');
INSERT INTO `tp_schooljw` VALUES ('712', '天心区', '28.181533240972', '112.97912937907', '湖南第一师范学院（书院路校区）');
INSERT INTO `tp_schooljw` VALUES ('713', '天心区', '27.695857415397', '111.72065725834', '湖南外贸职业学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('714', '天心区', '28.218143', '113.1321856', '长沙职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('715', '天心区', '28.092815', '113.000075', '保险职业学院');
INSERT INTO `tp_schooljw` VALUES ('716', '天心区', '28.1613911', '112.9759042', '湖南邮电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('717', '天心区', '28.134724', '112.987618', '湖南网络工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('718', '天心区', '28.138833', '112.991338', '中南大学（铁道校区）');
INSERT INTO `tp_schooljw` VALUES ('719', '天心区', '28.161574', '112.97477', '长沙通信职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('720', '芙蓉区', '28.180981', '113.084817', '湖南农业大学');
INSERT INTO `tp_schooljw` VALUES ('721', '芙蓉区', '28.2050206', '113.0668684', '湖南师范大学（张公岭校区）');
INSERT INTO `tp_schooljw` VALUES ('722', '芙蓉区', '28.1855176', '113.0008649', '湖南信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('723', '芙蓉区', '28.186343', '113.094657', '湖南生物机电职业技术学院（东湖校区）');
INSERT INTO `tp_schooljw` VALUES ('724', '芙蓉区', '28.20808', '113.094532', '湖南司法警官职业学院');
INSERT INTO `tp_schooljw` VALUES ('725', '芙蓉区', '28.206198686379', '113.0781495954', '湖南劳动人事职业学院');
INSERT INTO `tp_schooljw` VALUES ('726', '芙蓉区', '28.207408331124', '113.07748484933', '湖南生物机电职业技术学院（马坡岭校区）');
INSERT INTO `tp_schooljw` VALUES ('727', '雨花区', '28.142661', '113.044581', '长沙航空职业技术学院（圭塘校区）');
INSERT INTO `tp_schooljw` VALUES ('728', '雨花区', '28.108791', '113.010515', '湖南外国语职业学院');
INSERT INTO `tp_schooljw` VALUES ('729', '雨花区', '28.127496', '113.036579', '长沙理工大学（雨花区）');
INSERT INTO `tp_schooljw` VALUES ('730', '雨花区', '28.1617846', '112.9983833', '湖南中医药大学（东塘校区）');
INSERT INTO `tp_schooljw` VALUES ('731', '雨花区', '28.1474106', '113.0440375', '湖南食品药品职业学院');
INSERT INTO `tp_schooljw` VALUES ('732', '雨花区', '28.2080036', '112.988752', '湖南体育职业学院');
INSERT INTO `tp_schooljw` VALUES ('733', '雨花区', '28.1540705', '113.0208309', '湖南工贸学院');
INSERT INTO `tp_schooljw` VALUES ('734', '雨花区', '28.206381725618', '113.00641990045', '湖南大众传媒职业技术学院（韶山路校区）');
INSERT INTO `tp_schooljw` VALUES ('735', '雨花区', '28.115885', '113.0087', '湖南女子学院');
INSERT INTO `tp_schooljw` VALUES ('736', '雨花区', '28.272288', '113.066348', '长沙民政职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('737', '雨花区', '28.1144937', '113.0131322', '湖南税务高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('738', '雨花区', '28.12748635644', '113.0321383872', '湖南科技职业学院(老校区)');
INSERT INTO `tp_schooljw` VALUES ('739', '雨花区', '28.07797760304', '113.05011348045', '长沙商贸旅游职业技术学院（老校区）');
INSERT INTO `tp_schooljw` VALUES ('740', '雨花区', '28.07797760304', '113.05011348045', '长沙商贸旅游职业技术学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('741', '雨花区', '28.128126', '113.024228', '长沙环境保护职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('742', '望城区', '28.297074438751', '112.82520472999', '湖南外贸职业学院（望城校区)');
INSERT INTO `tp_schooljw` VALUES ('743', '望城区', '28.347331083848', '112.8244411703', '湖南信息职业技术学院（望城校区）');
INSERT INTO `tp_schooljw` VALUES ('744', '望城区', '28.201287', '112.929002', '长沙医学院');
INSERT INTO `tp_schooljw` VALUES ('745', '望城区', '28.2686094', '112.9579853', '湖南商学院北津学院');
INSERT INTO `tp_schooljw` VALUES ('746', '望城区', '28.360205', '112.911526', '中南林业科技大学涉外学院');
INSERT INTO `tp_schooljw` VALUES ('747', '开福区', '28.252023', '113.026796', '长沙学院');
INSERT INTO `tp_schooljw` VALUES ('748', '高新技术开发区', '34.799356', '113.821707', '郑州大学（新校区）');
INSERT INTO `tp_schooljw` VALUES ('749', '高新技术开发区', '34.837145862135', '113.55637153114', '河南工业大学（莲花街校区）');
INSERT INTO `tp_schooljw` VALUES ('750', '高新技术开发区', '34.806830981251', '113.57187628424', '郑州轻工业学院（高新区校区）');
INSERT INTO `tp_schooljw` VALUES ('751', '龙子湖大学城', '34.719658', '113.99428', '郑州电力职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('752', '龙子湖大学城', '32.926340096944', '117.47831948937', '河南财经政法大学（龙子湖校区）');
INSERT INTO `tp_schooljw` VALUES ('753', '龙子湖大学城', '34.756607395007', '113.64964259224', '河南理工大学万方学院（郑州）');
INSERT INTO `tp_schooljw` VALUES ('754', '龙子湖大学城', '34.7765562', '113.8499042', '河南师范大学新联学院（郑州）');
INSERT INTO `tp_schooljw` VALUES ('755', '龙子湖大学城', '34.7983818', '113.8223511', '河南农业大学（龙子湖校区）');
INSERT INTO `tp_schooljw` VALUES ('756', '龙子湖大学城', '32.926340096944', '117.47831948937', '河南牧业经济学院（龙子湖校区）');
INSERT INTO `tp_schooljw` VALUES ('757', '龙子湖大学城', '34.780158', '113.806319', '河南中医学院');
INSERT INTO `tp_schooljw` VALUES ('758', '龙子湖大学城', '34.7890000000', '113.7870100000', '郑州航空工业管理学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('759', '龙子湖大学城', '34.8584205', '113.6053648', '河南经贸职业学院');
INSERT INTO `tp_schooljw` VALUES ('760', '龙子湖大学城', '32.926340096944', '117.47831948937', '河南教育学院（龙子湖校区）');
INSERT INTO `tp_schooljw` VALUES ('761', '龙子湖大学城', '35.7352582', '114.2819876', '河南职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('762', '龙子湖大学城', '34.811906470963', '113.8077623281', '河南广播电视大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('763', '龙子湖大学城', '34.7800831', '113.7822405', '河南大学软件学院');
INSERT INTO `tp_schooljw` VALUES ('764', '龙子湖大学城', '34.7749675', '113.8615341', '河南财政税务高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('765', '龙子湖大学城', '34.791022', '113.664178', '河南警察学院');
INSERT INTO `tp_schooljw` VALUES ('766', '龙子湖大学城', '32.926340096944', '117.47831948937', '华北水利水电大学（龙子湖校区）');
INSERT INTO `tp_schooljw` VALUES ('767', '龙子湖大学城', '34.780551', '113.894999', '中原文化艺术学院');
INSERT INTO `tp_schooljw` VALUES ('768', '龙子湖大学城', '34.787401', '113.890988', '河南交通职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('769', '龙子湖大学城', '0', '0', '郑州铁路职业技术学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('770', '金水区', '34.7813087', '113.6651457', '郑州大学工学院软件学院');
INSERT INTO `tp_schooljw` VALUES ('771', '金水区', '34.814', '113.509676', '郑州轻工业学院');
INSERT INTO `tp_schooljw` VALUES ('772', '金水区', '34.791380286663', '113.66977361872', '河南农业大学（文化路校区）');
INSERT INTO `tp_schooljw` VALUES ('773', '金水区', '34.8036355', '113.6594503', '河南财经政法大学（文北校区）');
INSERT INTO `tp_schooljw` VALUES ('774', '金水区', '34.669646', '113.626684', '郑州轻工业学院轻工职业学院');
INSERT INTO `tp_schooljw` VALUES ('775', '金水区', '34.791380286663', '113.66977361872', '河南农业大学（桃李园）');
INSERT INTO `tp_schooljw` VALUES ('776', '金水区', '34.81852265758', '113.68164921756', '华北水利水电大学（花园校区）');
INSERT INTO `tp_schooljw` VALUES ('777', '金水区', '34.454317', '113.079267', '河南司法警官职业学院');
INSERT INTO `tp_schooljw` VALUES ('778', '金水区', '34.8027297', '113.6873922', '河南牧业经济学院（北林）');
INSERT INTO `tp_schooljw` VALUES ('779', '金水区', '34.806141875845', '113.68755108476', '河南水利与环境职业学院');
INSERT INTO `tp_schooljw` VALUES ('780', '金水区', '34.7989875', '113.6865319', '河南信息统计职业学院');
INSERT INTO `tp_schooljw` VALUES ('781', '金水区', '34.798016', '113.6884845', '河南省工艺美术学校');
INSERT INTO `tp_schooljw` VALUES ('782', '二七区', '34.7404144', '113.6391238', '郑州大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('783', '二七区', '34.815225', '113.5365773', '郑州大学医学院');
INSERT INTO `tp_schooljw` VALUES ('784', '二七区', '34.708055', '113.512066', '郑州科技学院');
INSERT INTO `tp_schooljw` VALUES ('785', '二七区', '34.698879', '113.5315', '澍青医学院');
INSERT INTO `tp_schooljw` VALUES ('786', '二七区', '34.724660537592', '113.66373700569', '中州大学（航海中路）');
INSERT INTO `tp_schooljw` VALUES ('787', '二七区', '34.713865', '113.523983', '河南建筑职业技术学院（二七区）');
INSERT INTO `tp_schooljw` VALUES ('788', '二七区', '34.740209', '113.6528947', '郑州铁路职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('789', '二七区', '34.7250916', '113.6969826', '郑州旅游职业学院');
INSERT INTO `tp_schooljw` VALUES ('790', '中原区', '34.754820539291', '113.62179512143', '中原工学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('791', '中原区', '34.773473', '113.539885', '河南化工职业学院');
INSERT INTO `tp_schooljw` VALUES ('792', '中原区', '34.759543388542', '113.62019613762', '河南工程学院（桐柏路校区）');
INSERT INTO `tp_schooljw` VALUES ('793', '中原区', '34.756607395007', '113.64964259224', '郑州财经技师学校');
INSERT INTO `tp_schooljw` VALUES ('794', '中原区', '34.7472533', '113.614073', '河南工业大学（中原路校区）');
INSERT INTO `tp_schooljw` VALUES ('795', '中原区', '34.7813087', '113.6651457', '中原工学院软件学院');
INSERT INTO `tp_schooljw` VALUES ('796', '惠济区', '34.866368461619', '113.65588581553', '中州大学（英才校区）');
INSERT INTO `tp_schooljw` VALUES ('797', '惠济区', '34.758217', '113.02574', '郑州财经学院');
INSERT INTO `tp_schooljw` VALUES ('798', '惠济区', '34.865924202491', '113.66899209292', '河南牧业经济学院（英才街校区）');
INSERT INTO `tp_schooljw` VALUES ('799', '惠济区', '34.756607395007', '113.64964259224', '郑州师范学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('800', '惠济区', '34.910724', '113.540137', '河南艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('801', '惠济区', '34.8264057', '113.63074', '郑州大学体育学院');
INSERT INTO `tp_schooljw` VALUES ('802', '惠济区', '34.756607395007', '113.64964259224', '郑州师范学院（老校区）');
INSERT INTO `tp_schooljw` VALUES ('803', '惠济区', '34.866368461619', '113.65588581553', '中州大学（金河校区）');
INSERT INTO `tp_schooljw` VALUES ('804', '荥阳市', '34.796627', '113.790527', '郑州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('805', '管城区', '34.689246', '113.675632', '黄河科技学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('806', '新郑市', '34.396007', '113.764348', '郑州大学西亚斯国际学院');
INSERT INTO `tp_schooljw` VALUES ('807', '新郑市', '34.598798822639', '113.69456685079', '郑州大学升达经贸管理学院');
INSERT INTO `tp_schooljw` VALUES ('808', '新郑市', '34.756607395007', '113.64964259224', '郑州工业应用技术学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('809', '新郑市', '23.408842532327', '116.75934269269', '中原工学院（龙湖校区）');
INSERT INTO `tp_schooljw` VALUES ('810', '新郑市', '34.439164', '113.708621', '郑州理工职业学院');
INSERT INTO `tp_schooljw` VALUES ('811', '新郑市', '23.408842532327', '116.75934269269', '河南检察职业学院（龙湖校区）');
INSERT INTO `tp_schooljw` VALUES ('812', '新郑市', '23.408842532327', '116.75934269269', '河南工程学院（龙湖校区）');
INSERT INTO `tp_schooljw` VALUES ('813', '新郑市', '23.408842532327', '116.75934269269', '河南机电职业学院（龙湖校区）');
INSERT INTO `tp_schooljw` VALUES ('814', '新郑市', '23.408842532327', '116.75934269269', '河南工业贸易职业学院（龙湖校区）');
INSERT INTO `tp_schooljw` VALUES ('815', '新郑市', '23.408842532327', '116.75934269269', '中原工学院信息商务学院（龙湖校区）');
INSERT INTO `tp_schooljw` VALUES ('816', '新郑市', '34.756607395007', '113.64964259224', '郑州工业应用技术学院（老校区）');
INSERT INTO `tp_schooljw` VALUES ('817', '巩义市', '34.758217', '113.02574', '郑州成功财经学院');
INSERT INTO `tp_schooljw` VALUES ('818', '番禺区', '23.047819', '113.406609', '华南理工大学（大学城校区)');
INSERT INTO `tp_schooljw` VALUES ('819', '番禺区', '23.070316909861', '113.40413568181', '广东外语外贸大学（大学城校区）');
INSERT INTO `tp_schooljw` VALUES ('820', '番禺区', '23.052848', '113.378237', '华南师范大学(大学城校区）');
INSERT INTO `tp_schooljw` VALUES ('821', '番禺区', '23.041659', '113.425994', '广州医科大学（番禺校区）');
INSERT INTO `tp_schooljw` VALUES ('822', '番禺区', '23.0662938', '113.389502', '中山大学（大学城校区）');
INSERT INTO `tp_schooljw` VALUES ('823', '番禺区', '23.037387', '113.397236', '广东工业大学(大学城校区)');
INSERT INTO `tp_schooljw` VALUES ('824', '番禺区', '23.0598468', '113.4050068', '广州中医药大学（大学城校区）');
INSERT INTO `tp_schooljw` VALUES ('825', '番禺区', '23.055449', '113.411846', '广东药学院（大学城校区）');
INSERT INTO `tp_schooljw` VALUES ('826', '番禺区', '23.0578929', '113.3804945', '星海音乐学院(大学城校区）');
INSERT INTO `tp_schooljw` VALUES ('827', '番禺区', '23.0398592', '113.3835639', '广州美术学院（大学城校区）');
INSERT INTO `tp_schooljw` VALUES ('828', '番禺区', '23.0662938', '113.389502', '广州大学(大学城校区）');
INSERT INTO `tp_schooljw` VALUES ('829', '番禺区', '23.0165137', '113.4101892', '暨南大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('830', '番禺区', '23.2001167', '113.2096018', '番禺职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('831', '番禺区', '23.0996694', '113.3117875', '广东女子职业学院');
INSERT INTO `tp_schooljw` VALUES ('832', '番禺区', '23.001899', '113.391553', '广州科技贸易职业学院');
INSERT INTO `tp_schooljw` VALUES ('833', '番禺区', '22.969759', '113.3419692', '广州文艺职业学院');
INSERT INTO `tp_schooljw` VALUES ('834', '番禺区', '22.896468', '113.309728', '番禺理工学院');
INSERT INTO `tp_schooljw` VALUES ('835', '番禺区', '23.0961585', '113.3171136', '番禺师范学院');
INSERT INTO `tp_schooljw` VALUES ('836', '白云区', '23.199128360467', '113.34293412744', '广东机电职业技术学院（白云校区）');
INSERT INTO `tp_schooljw` VALUES ('837', '白云区', '23.171588655272', '113.26521273474', '广州民航职业技术学院（白云校区）');
INSERT INTO `tp_schooljw` VALUES ('838', '白云区', '23.205912744919', '113.29579105429', '广东外语外贸大学（白云校区）');
INSERT INTO `tp_schooljw` VALUES ('839', '白云区', '23.107883', '113.280445', '仲恺农业工程学院');
INSERT INTO `tp_schooljw` VALUES ('840', '白云区', '23.199128360467', '113.34293412744', '广东机电职业技术学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('841', '白云区', '23.407134574888', '113.46246265855', '广东工贸职业技术学院 （白云校区）');
INSERT INTO `tp_schooljw` VALUES ('842', '白云区', '23.368351', '113.426636', '广东青年职业学院');
INSERT INTO `tp_schooljw` VALUES ('843', '白云区', '23.15866', '113.278599', '广州科技职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('844', '白云区', '23.2571133', '113.3572139', '广州涉外经济职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('845', '白云区', '23.218105', '113.288297', '广东省国防工业职工大学');
INSERT INTO `tp_schooljw` VALUES ('846', '白云区', '23.274393080179', '113.25285205093', '广东建设职业技术学院（校本部）');
INSERT INTO `tp_schooljw` VALUES ('847', '白云区', '23.272243', '113.213837', '广东白云学院');
INSERT INTO `tp_schooljw` VALUES ('848', '白云区', '23.335456', '113.381886', '广东外语外贸大学南国商学院');
INSERT INTO `tp_schooljw` VALUES ('849', '白云区', '23.0877707', '113.281828', '南方医科大学（广州校区）');
INSERT INTO `tp_schooljw` VALUES ('850', '白云区', '23.2001167', '113.2096018', '广州铁路职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('851', '白云区', '23.26116', '113.455467', '广东技术师范学院天河学院');
INSERT INTO `tp_schooljw` VALUES ('852', '白云区', '23.1946544', '113.3317675', '广州市公安管理干部学院');
INSERT INTO `tp_schooljw` VALUES ('853', '白云区', '23.166123219049', '113.38563957137', '广技师天河学院');
INSERT INTO `tp_schooljw` VALUES ('854', '白云区', '23.267238719178', '113.46257943827', '广东技术师范学院（白云校区）');
INSERT INTO `tp_schooljw` VALUES ('855', '白云区', '23.254493', '113.469497', '广州东华职业学院');
INSERT INTO `tp_schooljw` VALUES ('856', '白云区', '23.233793', '113.255936', '广东外语外贸大学公开学院');
INSERT INTO `tp_schooljw` VALUES ('857', '白云区', '22.798985564272', '115.37472152923', '广东科贸职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('858', '白云区', '23.274393080179', '113.25285205093', '广东建设职业技术学院(夏矛校区)');
INSERT INTO `tp_schooljw` VALUES ('859', '白云区', '23.120048437341', '113.30764868702', '广州城市职业技术学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('860', '白云区', '23.120048437341', '113.30764868702', '广州城市职业技术学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('861', '海珠区', '23.089479', '113.356876', '广东财经大学');
INSERT INTO `tp_schooljw` VALUES ('862', '海珠区', '23.0958862', '113.3045122', '中山大学海珠校区');
INSERT INTO `tp_schooljw` VALUES ('863', '海珠区', '23.138918', '113.346643', '广州美术学院');
INSERT INTO `tp_schooljw` VALUES ('864', '海珠区', '23.096155', '113.288603', '广东技术师范学院南校区');
INSERT INTO `tp_schooljw` VALUES ('865', '海珠区', '23.087622003042', '113.33383429262', '广东轻工职业学院（海珠校区）');
INSERT INTO `tp_schooljw` VALUES ('866', '天河区', '23.151326', '113.344683', '华南理工大学');
INSERT INTO `tp_schooljw` VALUES ('867', '天河区', '23.16330735152', '113.35791786334', '华南农业大学（天河校区）');
INSERT INTO `tp_schooljw` VALUES ('868', '天河区', '23.2003933', '113.379233', '广东金融学院');
INSERT INTO `tp_schooljw` VALUES ('869', '天河区', '23.1322723', '113.4362397', '广州现代信息工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('870', '天河区', '23.148637', '113.338516', '广东外语艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('871', '天河区', '23.1819911', '113.3539185', '广东交通职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('872', '天河区', '23.1460207', '113.3352332', '广东水利水电职业技术学院（天河校区）');
INSERT INTO `tp_schooljw` VALUES ('873', '天河区', '23.167148', '113.3565', '广东体育职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('874', '天河区', '23.202303', '113.3746498', '广东食品药品职业学院');
INSERT INTO `tp_schooljw` VALUES ('875', '天河区', '23.134826', '113.36474', '广东邮电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('876', '天河区', '23.143648', '113.273739', '广东工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('877', '天河区', '23.167148', '113.3565', '广州体育职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('878', '天河区', '23.172373', '113.327972', '民办南华工商学院');
INSERT INTO `tp_schooljw` VALUES ('879', '天河区', '23.165384', '113.416522', '广东岭南职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('880', '天河区', '23.1800026', '113.352711', '广州华南商贸职业学院');
INSERT INTO `tp_schooljw` VALUES ('881', '天河区', '23.201320659872', '113.39420042287', '中山大学新华学院（广州校区）');
INSERT INTO `tp_schooljw` VALUES ('882', '天河区', '23.131707', '113.371643', '广东技术师范学院');
INSERT INTO `tp_schooljw` VALUES ('883', '天河区', '23.052848', '113.378237', '华南师范大学');
INSERT INTO `tp_schooljw` VALUES ('884', '天河区', '23.143307', '113.317198', '广州体育学院');
INSERT INTO `tp_schooljw` VALUES ('885', '天河区', '23.179296364085', '113.32645920439', '广东工贸职业技术学院（天河校区）');
INSERT INTO `tp_schooljw` VALUES ('886', '天河区', '23.1960634', '113.3621708', '广东工业大学（龙洞校区）');
INSERT INTO `tp_schooljw` VALUES ('887', '天河区', '23.155540562868', '113.31117902767', '星海音乐学院天河校区');
INSERT INTO `tp_schooljw` VALUES ('888', '天河区', '23.131502', '113.436032', '广州华成理工职业技术学校');
INSERT INTO `tp_schooljw` VALUES ('889', '天河区', '23.161737417072', '113.3389995493', '广东农工商职业技术学院（天河校区）');
INSERT INTO `tp_schooljw` VALUES ('890', '天河区', '23.155234', '113.406178', '私立华联学院');
INSERT INTO `tp_schooljw` VALUES ('891', '天河区', '23.156296494928', '113.33821802351', '暨南大学（天河校区）');
INSERT INTO `tp_schooljw` VALUES ('892', '花都区', '23.3853675', '113.0857543', '广东培正学院');
INSERT INTO `tp_schooljw` VALUES ('893', '花都区', '23.446660612076', '113.22017169648', '广州工商学院（花都校区）');
INSERT INTO `tp_schooljw` VALUES ('894', '花都区', '23.139806228499', '113.28989817014', '华南建设学院西院');
INSERT INTO `tp_schooljw` VALUES ('895', '花都区', '23.406836094601', '113.19274642927', '广东行政职业学院（花都校区）');
INSERT INTO `tp_schooljw` VALUES ('896', '花都区', '23.367128', '113.203088', '广东交通职业技术学院(北校区）');
INSERT INTO `tp_schooljw` VALUES ('897', '花都区', '23.4319686', '113.1718439', '华南理工大学广州学院');
INSERT INTO `tp_schooljw` VALUES ('898', '花都区', '23.404738422267', '113.191560666', '广东第二师范学院（花都校区）');
INSERT INTO `tp_schooljw` VALUES ('899', '花都区', '23.457616', '113.276107', '广州大学市政技术学院');
INSERT INTO `tp_schooljw` VALUES ('900', '花都区', '23.392259479017', '113.08691705718', '广州民航职业技术学院（赤坭校区）');
INSERT INTO `tp_schooljw` VALUES ('901', '花都区', '23.418027', '113.3131623', '广州民航职业技术学院（实训基地）');
INSERT INTO `tp_schooljw` VALUES ('902', '花都区', '0', '0', '华南师范大学康大学院');
INSERT INTO `tp_schooljw` VALUES ('903', '从化市', '23.1237776', '113.2868524', '广州工程技术职业学院');
INSERT INTO `tp_schooljw` VALUES ('904', '从化市', '23.544954', '113.606936', '广州医学院从化学院');
INSERT INTO `tp_schooljw` VALUES ('905', '从化市', '23.6439429', '113.6713479', '中山大学南方学院');
INSERT INTO `tp_schooljw` VALUES ('906', '从化市', '23.5136811', '113.5791614', '华南农业大学珠江学院');
INSERT INTO `tp_schooljw` VALUES ('907', '从化市', '23.451133', '113.49444', '广州大学华软软件学院');
INSERT INTO `tp_schooljw` VALUES ('908', '从化市', '23.4591004', '113.4951862', '广州南洋理工职业学院');
INSERT INTO `tp_schooljw` VALUES ('909', '从化市', '23.5288314', '113.6067419', '广州城建职业学院');
INSERT INTO `tp_schooljw` VALUES ('910', '从化市', '23.575184', '113.514682', '广州华夏职业学院');
INSERT INTO `tp_schooljw` VALUES ('911', '从化市', '23.680247482759', '113.68482022137', '广东水利水电职业技术学院（从化校区）');
INSERT INTO `tp_schooljw` VALUES ('912', '越秀区', '23.127914', '113.2895734', '中山大学北校区');
INSERT INTO `tp_schooljw` VALUES ('913', '越秀区', '23.134153', '113.299382', '广东工业大学（东风路校区）');
INSERT INTO `tp_schooljw` VALUES ('914', '越秀区', '23.1496316', '113.2658359', '广州大学桂花岗校区');
INSERT INTO `tp_schooljw` VALUES ('915', '越秀区', '23.1552524', '113.2650885', '广州医科大学');
INSERT INTO `tp_schooljw` VALUES ('916', '越秀区', '23.1571932', '113.2543097', '广东技师师范学院北校区');
INSERT INTO `tp_schooljw` VALUES ('917', '越秀区', '23.580384', '113.616006', '广东理工职业学院（广州校区）');
INSERT INTO `tp_schooljw` VALUES ('918', '越秀区', '23.085209', '113.333403', '广东药学院赤岗校区');
INSERT INTO `tp_schooljw` VALUES ('919', '增城市', '23.2776883', '113.7972009', '广州华商职业学院');
INSERT INTO `tp_schooljw` VALUES ('920', '增城市', '23.261141', '113.81086', '广州华立科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('921', '增城市', '23.267503', '113.831087', '广州珠江职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('922', '增城市', '23.3405096', '113.5365073', '广州商学院');
INSERT INTO `tp_schooljw` VALUES ('923', '增城市', '23.275113', '113.72365', '广州大学松田学院');
INSERT INTO `tp_schooljw` VALUES ('924', '增城市', '23.261270921319', '113.78502620097', '广东财经大学华商学院');
INSERT INTO `tp_schooljw` VALUES ('925', '增城市', '23.308099', '113.565974', '广州康大职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('926', '增城市', '23.120048437341', '113.30764868702', '广州松田职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('927', '增城市', '23.238517', '113.863985', '广东工业大学华立学院');
INSERT INTO `tp_schooljw` VALUES ('928', '增城市', '23.346744795996', '113.76767992158', '广东农工商职业技术学院（增城校区）');
INSERT INTO `tp_schooljw` VALUES ('929', '黄浦区', '23.0945555', '113.4779281', '广州航海学院');
INSERT INTO `tp_schooljw` VALUES ('930', '闽侯县', '26.021623', '119.21415', '福州大学（旗山校区）');
INSERT INTO `tp_schooljw` VALUES ('931', '闽侯县', '26.070715', '119.188214', '福建医科大学（上街校区）');
INSERT INTO `tp_schooljw` VALUES ('932', '闽侯县', '26.022004', '119.203969', '福建师范大学协和学院');
INSERT INTO `tp_schooljw` VALUES ('933', '闽侯县', '26.021623', '119.21415', '福建师范大学（旗山校区）');
INSERT INTO `tp_schooljw` VALUES ('934', '闽侯县', '26.032613', '119.197189', '福建工程学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('935', '闽侯县', '26.030417', '119.199309', '福建工程学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('936', '闽侯县', '26.064704', '119.169116', '福建闽江学院');
INSERT INTO `tp_schooljw` VALUES ('937', '闽侯县', '26.024551', '119.202289', '福建华南女子职业学院旗山校区');
INSERT INTO `tp_schooljw` VALUES ('938', '闽侯县', '26.255186831964', '119.04386834964', '闽江师范高等专科学校旗山校区');
INSERT INTO `tp_schooljw` VALUES ('939', '闽侯县', '26.066636', '119.194689', '福建江夏学院');
INSERT INTO `tp_schooljw` VALUES ('940', '闽侯县', '26.140076', '119.171735', '福建卫生职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('941', '闽侯县', '26.138894', '119.149976', '福建艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('942', '闽侯县', '26.0740767', '119.1628116', '福州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('943', '闽侯县', '0', '0', '福建农业职业技术学院相思苑');
INSERT INTO `tp_schooljw` VALUES ('944', '闽侯县', '26.076968637344', '119.18830689254', '福建中医药大学（旗山校区）');
INSERT INTO `tp_schooljw` VALUES ('945', '闽侯县', '26.1135313', '119.2102365', '福建技师学院');
INSERT INTO `tp_schooljw` VALUES ('946', '马尾区', '26.079913611688', '119.51133755382', '福建对外经济贸易职业技术学院（马尾校区）');
INSERT INTO `tp_schooljw` VALUES ('947', '马尾区', '26.0036393', '119.4498618', '福州大学阳光学院');
INSERT INTO `tp_schooljw` VALUES ('948', '马尾区', '26.0692735', '119.6528721', '福建农林大学东方学院');
INSERT INTO `tp_schooljw` VALUES ('949', '仓山区', '26.084946', '119.239701', '福建农林大学');
INSERT INTO `tp_schooljw` VALUES ('950', '仓山区', '26.042126262425', '119.31568661381', '福建师范大学（仓山校区）');
INSERT INTO `tp_schooljw` VALUES ('951', '仓山区', '26.0273053', '119.3135791', '福建警察学院');
INSERT INTO `tp_schooljw` VALUES ('952', '仓山区', '26.089549', '119.243678', '福建江夏学院金山校区');
INSERT INTO `tp_schooljw` VALUES ('953', '仓山区', '24.876492', '118.658479', '福建幼儿师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('954', '仓山区', '26.019325', '119.201078', '福建船政交通职业学院');
INSERT INTO `tp_schooljw` VALUES ('955', '仓山区', '26.086857937818', '119.25373946586', '福建生物工程职业技术学院（铜盘校区）');
INSERT INTO `tp_schooljw` VALUES ('956', '仓山区', '25.994897', '119.350314', '福建信息职业技术学院杜园校区');
INSERT INTO `tp_schooljw` VALUES ('957', '仓山区', '25.9822865', '119.3495892', '福建信息职业技术学院螺洲校区');
INSERT INTO `tp_schooljw` VALUES ('958', '仓山区', '25.830182', '119.308616', '福建农业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('959', '仓山区', '26.0312256', '119.3088046', '福州英华职业学院');
INSERT INTO `tp_schooljw` VALUES ('960', '仓山区', '26.047125253121', '119.3302122139', '福州科技职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('961', '仓山区', '26.0211937', '119.3450482', '福建对外经济贸易职业技术学院白湖亭校区');
INSERT INTO `tp_schooljw` VALUES ('962', '仓山区', '26.073648', '119.504884', '福建对外经济贸易职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('963', '仓山区', '26.03487', '119.284767', '福建农林大学金山学院');
INSERT INTO `tp_schooljw` VALUES ('964', '仓山区', '25.9989084', '119.3528166', '福建交通职业技术学院排下校区');
INSERT INTO `tp_schooljw` VALUES ('965', '仓山区', '26.178433716302', '119.36362019581', '福州外语外贸职业技术学院宦溪校区');
INSERT INTO `tp_schooljw` VALUES ('966', '仓山区', '26.089137', '119.245042', '福建理工学校');
INSERT INTO `tp_schooljw` VALUES ('967', '仓山区', '26.07951', '119.246956', '福州科技学院');
INSERT INTO `tp_schooljw` VALUES ('968', '仓山区', '26.0687396', '119.2406135', '闽江学院洪塘校区');
INSERT INTO `tp_schooljw` VALUES ('969', '仓山区', '26.029241', '119.30475', '福建建筑高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('970', '仓山区', '26.026730290008', '119.31920797141', '福建金融职业技术学院北校区');
INSERT INTO `tp_schooljw` VALUES ('971', '仓山区', '26.073643', '119.273594', '福建省建筑学院');
INSERT INTO `tp_schooljw` VALUES ('972', '仓山区', '26.034262154328', '119.31856119144', '福建船政交通职业学院（排下区）');
INSERT INTO `tp_schooljw` VALUES ('973', '鼓楼区', '24.45369', '118.089871', '福建教育学院');
INSERT INTO `tp_schooljw` VALUES ('974', '鼓楼区', '26.0730796', '119.2683737', '福州大学怡山校区');
INSERT INTO `tp_schooljw` VALUES ('975', '鼓楼区', '26.10706', '119.262656', '福州大学（铜盘校区）');
INSERT INTO `tp_schooljw` VALUES ('976', '鼓楼区', '26.1052269', '119.3012338', '福建中医药大学屏山校区');
INSERT INTO `tp_schooljw` VALUES ('977', '鼓楼区', '26.102859', '119.250507', '福建工程学院软件学院');
INSERT INTO `tp_schooljw` VALUES ('978', '鼓楼区', '26.0655946', '119.2804566', '闽江学院工业路校区');
INSERT INTO `tp_schooljw` VALUES ('979', '鼓楼区', '26.103859', '119.25403', '福建商业高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('980', '鼓楼区', '26.084302539139', '119.2988433855', '闽江师范高等专科学校光禄坊校区');
INSERT INTO `tp_schooljw` VALUES ('981', '鼓楼区', '26.104675', '119.2948752', '福建信息职业技术学院（龙腰校区）');
INSERT INTO `tp_schooljw` VALUES ('982', '鼓楼区', '26.078429', '119.279901', '福州黎明职业技术学院福屿校区');
INSERT INTO `tp_schooljw` VALUES ('983', '鼓楼区', '26.0740373', '119.2686006', '福州大学至诚学院');
INSERT INTO `tp_schooljw` VALUES ('984', '鼓楼区', '26.11194', '119.298199', '福建体育职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('985', '鼓楼区', '26.107275', '119.262436', '福州软件职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('986', '晋安区', '26.085337', '119.3726513', '福建工程学院（鳝溪校区）');
INSERT INTO `tp_schooljw` VALUES ('987', '晋安区', '26.062272', '119.330591', '闽江学院（长乐路校区）');
INSERT INTO `tp_schooljw` VALUES ('988', '晋安区', '26.027399', '119.264831', '福建省科技进修学院');
INSERT INTO `tp_schooljw` VALUES ('989', '晋安区', '26.068145', '119.353505', '福建工程学院浦东校区');
INSERT INTO `tp_schooljw` VALUES ('990', '晋安区', '26.0619954', '119.3328162', '福州师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('991', '晋安区', '0', '0', '省电力职业技能学院');
INSERT INTO `tp_schooljw` VALUES ('992', '连江县', '26.240135199849', '119.46960227984', '福建商业高等专科学校（新校区）');
INSERT INTO `tp_schooljw` VALUES ('993', '连江县', '36.240091', '120.022612', '福州理工学院');
INSERT INTO `tp_schooljw` VALUES ('994', '台江区', '26.074834903911', '119.30708084703', '福建医科大学台江校区');
INSERT INTO `tp_schooljw` VALUES ('995', '长乐市', '25.9246325', '119.4987046', '福州外语外贸学院');
INSERT INTO `tp_schooljw` VALUES ('996', '西乡塘区', '22.838706', '108.2899833', '广西大学');
INSERT INTO `tp_schooljw` VALUES ('997', '西乡塘区', '22.8431645', '108.3196321', '广西师范学院（明秀校区）');
INSERT INTO `tp_schooljw` VALUES ('998', '西乡塘区', '22.846744882189', '108.24110679881', '广西民族大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('999', '西乡塘区', '22.841174529026', '108.30706038933', '广西财经学院（明秀校区）');
INSERT INTO `tp_schooljw` VALUES ('1000', '西乡塘区', '22.841181', '108.300926', '广西工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1001', '西乡塘区', '22.832745', '108.193599', '南宁职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1002', '西乡塘区', '22.833017', '108.198638', '广西民族大学西校区');
INSERT INTO `tp_schooljw` VALUES ('1003', '西乡塘区', '22.836474', '108.200969', '广西民族大学相思湖学院');
INSERT INTO `tp_schooljw` VALUES ('1004', '西乡塘区', '22.8352624', '108.2337267', '广西机电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1005', '西乡塘区', '22.848526680373', '108.26369019932', '广西国际商务职业技术学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1006', '西乡塘区', '22.844696617718', '108.27151444031', '广西艺术学院（相思湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1007', '西乡塘区', '23.203281', '108.183355', '广西电力职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1008', '西乡塘区', '22.839367', '108.225235', '广西工商职业技术学院（相思湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1009', '西乡塘区', '22.841457', '108.243981', '广西农业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1010', '西乡塘区', '22.853725', '108.289063', '广西大学行健文理学院');
INSERT INTO `tp_schooljw` VALUES ('1011', '西乡塘区', '22.845121260477', '108.30391632004', '广西建设职业技术学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1012', '西乡塘区', '22.846744882189', '108.32453243149', '广西中医药大学（明秀校区）');
INSERT INTO `tp_schooljw` VALUES ('1013', '西乡塘区', '22.8313503', '108.2415907', '广西经济管理干部学院');
INSERT INTO `tp_schooljw` VALUES ('1014', '西乡塘区', '22.82763', '108.184937', '广西财经学院（相思湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1015', '青秀区', '25.27668', '110.286204', '广西教育学院');
INSERT INTO `tp_schooljw` VALUES ('1016', '青秀区', '22.831526', '108.356175', '广西警官高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1017', '青秀区', '22.8276019', '108.3544212', '广西政法管理干部学院');
INSERT INTO `tp_schooljw` VALUES ('1018', '青秀区', '22.797255', '108.350438', '广西医科大学');
INSERT INTO `tp_schooljw` VALUES ('1019', '青秀区', '22.797318', '108.3425608', '广西医科大学护理学院');
INSERT INTO `tp_schooljw` VALUES ('1020', '青秀区', '22.7942143', '108.3615658', '广西经贸职业技术学院（青山校区）');
INSERT INTO `tp_schooljw` VALUES ('1021', '青秀区', '22.799671', '108.51581', '广西外国语学院');
INSERT INTO `tp_schooljw` VALUES ('1022', '青秀区', '22.795183', '108.506366', '广西中医药大学（仙葫校区）');
INSERT INTO `tp_schooljw` VALUES ('1023', '青秀区', '22.809088468438', '108.34601989928', '广西艺术学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('1024', '青秀区', '22.8656332', '108.3191523', '广西中医药大学赛恩斯新医药学院');
INSERT INTO `tp_schooljw` VALUES ('1025', '青秀区', '0', '0', '广西师范学院（五合校区）');
INSERT INTO `tp_schooljw` VALUES ('1026', '兴宁区', '22.829812', '108.327024', '广西体育高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1027', '兴宁区', '23.203281', '108.183355', '广西水利电力职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1028', '兴宁区', '22.915901266021', '108.49671963159', '广西交通职业技术学院（四塘校区）');
INSERT INTO `tp_schooljw` VALUES ('1029', '兴宁区', '22.865427609896', '108.37858347401', '广西卫生职业技术学院（昆仑校区）');
INSERT INTO `tp_schooljw` VALUES ('1030', '兴宁区', '22.835551', '108.348943', '广西师范学院（长堽校区）');
INSERT INTO `tp_schooljw` VALUES ('1031', '兴宁区', '22.915901266021', '108.49671963159', '广西交通职业技术学院（园湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1032', '邕宁区', '22.75022', '108.4547', '南宁学院');
INSERT INTO `tp_schooljw` VALUES ('1033', '江南区', '22.832745', '108.193599', '广西职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1034', '江南区', '22.8334426', '108.3480295', '广西师范学院师园学院');
INSERT INTO `tp_schooljw` VALUES ('1035', '江南区', '22.590773', '107.925073', '广西演艺职业学院');
INSERT INTO `tp_schooljw` VALUES ('1036', '江南区', '23.552247814152', '108.92426813892', '广西轻工高级技工学院');
INSERT INTO `tp_schooljw` VALUES ('1037', '武鸣区', '23.21087002468', '108.191735928', '广西水利电力职业技术学院（里建校区）');
INSERT INTO `tp_schooljw` VALUES ('1038', '武鸣区', '22.795461', '108.3614499', '广西经济职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1039', '美兰区', '20.061987647189', '110.33831779087', '海南大学(海甸校区)');
INSERT INTO `tp_schooljw` VALUES ('1040', '美兰区', '19.965377', '110.489567', '海口经济学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1041', '美兰区', '19.994954746377', '110.49693159472', '海南师范大学（桂林洋校区）');
INSERT INTO `tp_schooljw` VALUES ('1042', '美兰区', '19.98137483444', '110.52366516669', '琼台师范高等专科学校（桂林洋校区）');
INSERT INTO `tp_schooljw` VALUES ('1043', '美兰区', '20.013863', '110.369627', '海南经贸职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1044', '美兰区', '20.043786', '110.407678', '海南科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('1045', '琼山区', '20.002232547898', '110.3512354241', '海南师范大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('1046', '琼山区', '19.9823292', '110.3793524', '海南政法职业学院');
INSERT INTO `tp_schooljw` VALUES ('1047', '琼山区', '20.004533858849', '110.36415305733', '琼台师范高等专科学校（老校区）');
INSERT INTO `tp_schooljw` VALUES ('1048', '琼山区', '20.012215', '110.371167', '海南工商职业学院');
INSERT INTO `tp_schooljw` VALUES ('1049', '龙华区', '19.983107', '110.326344', '海南大学（城西校区）');
INSERT INTO `tp_schooljw` VALUES ('1050', '龙华区', '19.9816509', '110.3330756', '海南医学院');
INSERT INTO `tp_schooljw` VALUES ('1051', '龙华区', '19.995031', '110.3095822', '海南职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1052', '九龙坡区', '29.487509', '106.541063', '四川美术学院（黄桷坪校区）');
INSERT INTO `tp_schooljw` VALUES ('1053', '九龙坡区', '29.4854073', '106.5341286', '重庆电力高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1054', '九龙坡区', '28.8418323', '108.7681127', '重庆广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('1055', '巴南区', '29.458335', '106.529861', '重庆理工大学（花溪校区）');
INSERT INTO `tp_schooljw` VALUES ('1056', '巴南区', '29.35356', '105.893995', '重庆工程学院');
INSERT INTO `tp_schooljw` VALUES ('1057', '巴南区', '29.659188', '106.459473', '重庆工商大学融智学院');
INSERT INTO `tp_schooljw` VALUES ('1058', '涪陵区', '29.7014038', '107.3919153', '重庆工贸职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1059', '涪陵区', '29.750852', '107.262769', '长江师范学院');
INSERT INTO `tp_schooljw` VALUES ('1060', '合川区', '29.9717609', '106.4061157', '重庆人文科技学院');
INSERT INTO `tp_schooljw` VALUES ('1061', '合川区', '29.9985523', '106.2407443', '重庆邮电大学移通学院');
INSERT INTO `tp_schooljw` VALUES ('1062', '合川区', '30.003225', '106.226889', '重庆工商职业学院');
INSERT INTO `tp_schooljw` VALUES ('1063', '合川区', '29.854229', '106.071605', '重庆师范大学涉外商贸学院');
INSERT INTO `tp_schooljw` VALUES ('1064', '合川区', '30.0038735', '106.2634973', '重庆工商大学派斯学院');
INSERT INTO `tp_schooljw` VALUES ('1065', '合川区', '30.0050022', '106.2343933', '重庆民生职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1066', '江津区', '29.509882', '106.438516', '重庆工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1067', '江津区', '29.4193137', '106.3155728', '重庆交通大学（双福校区）');
INSERT INTO `tp_schooljw` VALUES ('1068', '江津区', '29.4133448', '106.2760413', '重庆交通职业学院');
INSERT INTO `tp_schooljw` VALUES ('1069', '江津区', '29.238279', '105.872606', '重庆电讯职业学院');
INSERT INTO `tp_schooljw` VALUES ('1070', '江津区', '29.576644', '106.505703', '重庆航天职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1071', '江津区', '29.407238', '106.276214', '重庆公共运输职业学院');
INSERT INTO `tp_schooljw` VALUES ('1072', '江津区', '29.536722', '106.494563', '重庆能源职业学院');
INSERT INTO `tp_schooljw` VALUES ('1073', '南岸区', '29.4902087', '106.5713629', '重庆交通大学');
INSERT INTO `tp_schooljw` VALUES ('1074', '南岸区', '29.51113545721', '106.58711076216', '重庆工商大学（学府校区）');
INSERT INTO `tp_schooljw` VALUES ('1075', '南岸区', '29.534724', '106.605348', '重庆邮电大学');
INSERT INTO `tp_schooljw` VALUES ('1076', '南岸区', '29.557078158012', '106.6236538303', '重庆第二师范学院（南山校区）');
INSERT INTO `tp_schooljw` VALUES ('1077', '南岸区', '29.533692', '106.477759', '重庆建筑工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('1078', '南岸区', '29.516793015367', '106.58380499789', '重庆第二师范学院（学府校区）');
INSERT INTO `tp_schooljw` VALUES ('1079', '南岸区', '29.523110244375', '106.46217443188', '重庆工商大学（兰花湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1080', '沙坪坝区', '29.5985159', '106.2989147', '重庆大学(虎溪校区）');
INSERT INTO `tp_schooljw` VALUES ('1081', '沙坪坝区', '29.589896', '106.323447', '重庆科技学院（虎溪校区）');
INSERT INTO `tp_schooljw` VALUES ('1082', '沙坪坝区', '29.394743', '105.5838586', '重庆师范大学');
INSERT INTO `tp_schooljw` VALUES ('1083', '沙坪坝区', '29.5221258', '106.5125139', '重庆医科大学（大学城）');
INSERT INTO `tp_schooljw` VALUES ('1084', '沙坪坝区', '29.4878707', '106.5426937', '四川美术学院');
INSERT INTO `tp_schooljw` VALUES ('1085', '沙坪坝区', '29.6256513', '106.3098088', '重庆医药高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1086', '沙坪坝区', '29.62637', '106.325335', '重庆电子工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('1087', '沙坪坝区', '29.751862', '106.38146', '重庆职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1088', '沙坪坝区', '29.580009', '106.302238', '重庆城市管理学院');
INSERT INTO `tp_schooljw` VALUES ('1089', '沙坪坝区', '29.515655', '106.423096', '重庆巴渝职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1090', '沙坪坝区', '29.593769', '106.412186', '重庆商务职业学院');
INSERT INTO `tp_schooljw` VALUES ('1091', '沙坪坝区', '29.6200273', '106.328302', '重庆房地产职业学院');
INSERT INTO `tp_schooljw` VALUES ('1092', '沙坪坝区', '29.572046', '106.43559', '四川外国语大学（沙坪坝区）');
INSERT INTO `tp_schooljw` VALUES ('1093', '沙坪坝区', '29.5648874', '106.4676011', '重庆大学（A区）');
INSERT INTO `tp_schooljw` VALUES ('1094', '沙坪坝区', '29.625962', '106.317012', '重庆警察学院');
INSERT INTO `tp_schooljw` VALUES ('1095', '沙坪坝区', '29.5648874', '106.4676011', '重庆大学（B区）');
INSERT INTO `tp_schooljw` VALUES ('1096', '沙坪坝区', '29.5648874', '106.4676011', '重庆大学（C区）');
INSERT INTO `tp_schooljw` VALUES ('1097', '沙坪坝区', '29.519880964401', '106.5077814026', '重庆化工职业学院（沙坪坝校区）');
INSERT INTO `tp_schooljw` VALUES ('1098', '万州区', '30.801265743889', '108.38964162773', '重庆三峡学院（老区）');
INSERT INTO `tp_schooljw` VALUES ('1099', '万州区', '30.755982586335', '108.37848467329', '重庆服装工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('1100', '万州区', '30.7985085', '108.3831427', '重庆三峡医药高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1101', '万州区', '29.576472', '106.302652', '重庆信息技术职业学院');
INSERT INTO `tp_schooljw` VALUES ('1102', '万州区', '29.5957879', '106.4420135', '重庆三峡学院（新区）');
INSERT INTO `tp_schooljw` VALUES ('1103', '万州区', '30.7555281', '108.3955085', '重庆三峡职业学院');
INSERT INTO `tp_schooljw` VALUES ('1104', '永川区', '29.326296', '105.941167', '重庆城市职业学院');
INSERT INTO `tp_schooljw` VALUES ('1105', '永川区', '29.351955', '105.935449', '重庆文理学院（红河校区）');
INSERT INTO `tp_schooljw` VALUES ('1106', '永川区', '29.3893836', '105.8836148', '重庆大学城市科技学院');
INSERT INTO `tp_schooljw` VALUES ('1107', '永川区', '29.3691608', '105.8875823', '重庆财经职业学院');
INSERT INTO `tp_schooljw` VALUES ('1108', '永川区', '29.372994', '105.876486', '重庆科创职业学院');
INSERT INTO `tp_schooljw` VALUES ('1109', '永川区', '29.370733772056', '105.94214537232', '重庆水利电力职业技术学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1110', '永川区', '29.356253902385', '105.94511876356', '重庆文理学院（星湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1111', '永川区', '29.24407474637', '105.8794526308', '重庆电信职业学院（星湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1112', '渝北区', '29.772601', '106.638276', '重庆工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1113', '渝北区', '29.6635716', '106.5959754', '西南政法大学（渝北区）');
INSERT INTO `tp_schooljw` VALUES ('1114', '渝北区', '29.670603', '106.605553', '重庆南方翻译学院');
INSERT INTO `tp_schooljw` VALUES ('1115', '渝北区', '29.682326', '106.602309', '重庆海联职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1116', '北碚区', '29.830410811264', '106.43349153695', '西南大学（北碚校区）');
INSERT INTO `tp_schooljw` VALUES ('1117', '北碚区', '29.838736705915', '106.43021272184', '重庆师范大学（北碚校区）');
INSERT INTO `tp_schooljw` VALUES ('1118', '北碚区', '29.786083016651', '106.38358168283', '重庆青年职业技术学院（北碚校区）');
INSERT INTO `tp_schooljw` VALUES ('1119', '两江新区', '29.51885951597', '106.51842632289', '重庆理工大学（两江校区)');
INSERT INTO `tp_schooljw` VALUES ('1120', '綦江区', '28.876132409161', '106.67923199218', '重庆南方翻译学院（綦江校区）');
INSERT INTO `tp_schooljw` VALUES ('1121', '五华区', '25.144245', '102.733782', '云南机电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1122', '五华区', '24.977514', '102.794386', '云南大学');
INSERT INTO `tp_schooljw` VALUES ('1123', '五华区', '25.063915', '102.693516', '昆明理工大学莲花校区');
INSERT INTO `tp_schooljw` VALUES ('1124', '五华区', '25.081111', '102.64861', '云南师范大学商学院（五华区）');
INSERT INTO `tp_schooljw` VALUES ('1125', '五华区', '25.07357', '102.65473', '昆明理工大学津桥学院');
INSERT INTO `tp_schooljw` VALUES ('1126', '五华区', '25.068925', '102.662295', '昆明医学院海源学院');
INSERT INTO `tp_schooljw` VALUES ('1127', '五华区', '24.898236', '102.434813', '云南经济管理学院');
INSERT INTO `tp_schooljw` VALUES ('1128', '五华区', '25.0748339', '102.6932788', '云南警官学院');
INSERT INTO `tp_schooljw` VALUES ('1129', '五华区', '25.087222875392', '102.72640927487', '云南财经大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('1130', '五华区', '24.841391', '102.833395', '昆明医科大学');
INSERT INTO `tp_schooljw` VALUES ('1131', '五华区', '25.08212594317', '102.71747113505', '云南旅游职业学院');
INSERT INTO `tp_schooljw` VALUES ('1132', '呈贡区', '24.859733', '102.847881', '云南师范大学（呈贡校区）');
INSERT INTO `tp_schooljw` VALUES ('1133', '呈贡区', '24.856906', '102.856692', '昆明理工大学（呈贡校区）');
INSERT INTO `tp_schooljw` VALUES ('1134', '呈贡区', '24.8328223', '102.8245185', '云南艺术学院');
INSERT INTO `tp_schooljw` VALUES ('1135', '呈贡区', '24.87168061745', '102.87260849658', '昆明医科大学（呈贡校区）');
INSERT INTO `tp_schooljw` VALUES ('1136', '呈贡区', '24.840339', '102.854279', '云南民族大学（呈贡校区）');
INSERT INTO `tp_schooljw` VALUES ('1137', '呈贡区', '24.83802', '102.862373', '云南交通职业技术学院（呈贡区）');
INSERT INTO `tp_schooljw` VALUES ('1138', '呈贡区', '24.859733', '102.847881', '云南大学(呈贡校区)');
INSERT INTO `tp_schooljw` VALUES ('1139', '呈贡区', '25.0611483', '102.705747', '云南开放大学');
INSERT INTO `tp_schooljw` VALUES ('1140', '呈贡区', '24.773628', '102.807312', '云南财经大学（呈贡校区)');
INSERT INTO `tp_schooljw` VALUES ('1141', '呈贡区', '24.837492', '102.823598', '云南中医学院（呈贡校区）');
INSERT INTO `tp_schooljw` VALUES ('1142', '官渡区', '24.933765', '102.713129', '昆明艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('1143', '官渡区', '24.97712', '102.794447', '昆明学院');
INSERT INTO `tp_schooljw` VALUES ('1144', '官渡区', '25.098487', '102.717693', '昆明广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('1145', '官渡区', '24.864205992711', '101.59294534887', '云南省轻工职业学院');
INSERT INTO `tp_schooljw` VALUES ('1146', '官渡区', '24.978792', '102.85504', '云南新兴职业学院');
INSERT INTO `tp_schooljw` VALUES ('1147', '盘龙区', '25.128193', '102.747357', '云南农业大学');
INSERT INTO `tp_schooljw` VALUES ('1148', '盘龙区', '25.059878', '102.758776', '西南林业大学');
INSERT INTO `tp_schooljw` VALUES ('1149', '盘龙区', '25.0363636', '102.7248689', '云南中医学院（白塔校区）');
INSERT INTO `tp_schooljw` VALUES ('1150', '盘龙区', '25.065229', '102.642599', '云南科技信息职业学院');
INSERT INTO `tp_schooljw` VALUES ('1151', '盘龙区', '25.049104', '102.730485', '昆明理工大学新迎校区');
INSERT INTO `tp_schooljw` VALUES ('1152', '盘龙区', '25.092927', '102.772376', '云南林业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1153', '西山区', '24.9713257', '102.6328767', '云南文化艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('1154', '西山区', '24.9657896', '102.6819006', '云南体育运动职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1155', '西山区', '24.973008', '102.674086', '云南大学滇池学院(西山区)');
INSERT INTO `tp_schooljw` VALUES ('1156', '嵩明县', '25.254279830538', '103.00568347478', '云南师范大学文理学院（杨林校区）');
INSERT INTO `tp_schooljw` VALUES ('1157', '嵩明县', '0', '0', '云南大学滇池学院（杨林校区）');
INSERT INTO `tp_schooljw` VALUES ('1158', '嵩明县', '38.858628', '117.467325', '外事外语学院');
INSERT INTO `tp_schooljw` VALUES ('1159', '嵩明县', '25.240872485053', '103.01569059816', '云南师范大学商学院(杨林校区)');
INSERT INTO `tp_schooljw` VALUES ('1160', '嵩明县', '25.308514868558', '103.3434104142', '云南城市建设学院（杨林校区）');
INSERT INTO `tp_schooljw` VALUES ('1161', '嵩明县', '25.247400684736', '102.99887431902', '昆明医学院海源学院（杨林校区）');
INSERT INTO `tp_schooljw` VALUES ('1162', '嵩明县', '25.241682', '103.005617', '云南工商学院');
INSERT INTO `tp_schooljw` VALUES ('1163', '安宁市', '24.894301', '102.496003', '昆明工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1164', '安宁市', '24.893722', '102.435119', '云南工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('1165', '安宁市', '24.902951062545', '102.43950846119', '云南经济管理学院（安宁校区）');
INSERT INTO `tp_schooljw` VALUES ('1166', '安宁市', '24.9209288', '102.4816305', '中国地质大学安宁学习中心');
INSERT INTO `tp_schooljw` VALUES ('1167', '安宁市', '24.852353841885', '102.39112572644', '昆明冶金高等专科学院（安宁校区）');
INSERT INTO `tp_schooljw` VALUES ('1168', '安宁市', '24.397745', '102.53739', '云南技师学院');
INSERT INTO `tp_schooljw` VALUES ('1169', '安宁市', '24.9336147', '102.5400742', '云南华程学院');
INSERT INTO `tp_schooljw` VALUES ('1170', '安宁市', '25.0914386', '102.6579934', '云南艺术学院文化学院');
INSERT INTO `tp_schooljw` VALUES ('1171', '晋宁县', '24.649895', '102.62341', '昆明卫生职业学院');
INSERT INTO `tp_schooljw` VALUES ('1172', '宜良县', '24.961504226536', '103.0118009353', '云南国土资源职业学校（阳宗海校区）');
INSERT INTO `tp_schooljw` VALUES ('1173', '花溪区', '26.449069119102', '106.68111843375', '贵州大学（北校区）');
INSERT INTO `tp_schooljw` VALUES ('1174', '花溪区', '26.5875561', '106.7212787', '贵州师范大学');
INSERT INTO `tp_schooljw` VALUES ('1175', '花溪区', '26.397909006209', '106.66527232456', '贵州财经大学（花溪校区）');
INSERT INTO `tp_schooljw` VALUES ('1176', '花溪区', '26.470157387394', '106.67632148233', '贵州民族大学（大学城新校区）');
INSERT INTO `tp_schooljw` VALUES ('1177', '花溪区', '26.597086', '106.7157371', '贵阳医学院');
INSERT INTO `tp_schooljw` VALUES ('1178', '花溪区', '26.574704', '106.723371', '贵阳中医学院');
INSERT INTO `tp_schooljw` VALUES ('1179', '花溪区', '26.667392', '106.636335', '贵州轻工职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1180', '花溪区', '26.398627', '106.66588', '贵州亚泰职业学院');
INSERT INTO `tp_schooljw` VALUES ('1181', '花溪区', '26.430362951988', '106.67694131313', '贵州大学南校区（农学院）');
INSERT INTO `tp_schooljw` VALUES ('1182', '花溪区', '26.449069119102', '106.68111843375', '贵州大学（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1183', '花溪区', '26.470157387394', '106.67632148233', '贵州民族大学（董家堰校区）');
INSERT INTO `tp_schooljw` VALUES ('1184', '花溪区', '26.902819242743', '106.73498981517', '贵州城市职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1185', '云岩区', '26.562304', '106.651255', '贵州理工学院');
INSERT INTO `tp_schooljw` VALUES ('1186', '云岩区', '26.902819242743', '106.73498981517', '贵州财经大学（北校区）');
INSERT INTO `tp_schooljw` VALUES ('1187', '云岩区', '26.605529', '106.606388', '贵州广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('1188', '云岩区', '26.560068', '106.654166', '贵州大学科技学院');
INSERT INTO `tp_schooljw` VALUES ('1189', '云岩区', '34.736021', '113.634279', '省商业高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1190', '云岩区', '26.6103887', '106.7302365', '贵阳市财经学校');
INSERT INTO `tp_schooljw` VALUES ('1191', '云岩区', '26.622494366991', '106.74517659965', '贵州大学明德学院（云岩校区）');
INSERT INTO `tp_schooljw` VALUES ('1192', '云岩区', '26.594367753541', '106.72822557468', '贵州师范大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('1193', '云岩区', '26.902819242743', '106.73498981517', '贵州中医学院（本部）');
INSERT INTO `tp_schooljw` VALUES ('1194', '云岩区', '26.604325519485', '106.72120082559', '贵阳医学院（本部）');
INSERT INTO `tp_schooljw` VALUES ('1195', '云岩区', '26.594367753541', '106.72822557468', '贵州师范大学（宝山校区）');
INSERT INTO `tp_schooljw` VALUES ('1196', '南明区', '26.548168', '106.702916', '贵州大学沙冲校区');
INSERT INTO `tp_schooljw` VALUES ('1197', '南明区', '26.563616716436', '106.78432475376', '贵阳学院（龙洞堡校区）');
INSERT INTO `tp_schooljw` VALUES ('1198', '南明区', '26.590139', '106.724506', '贵州大学艺术学院');
INSERT INTO `tp_schooljw` VALUES ('1199', '南明区', '26.56706', '106.738628', '贵州警官职业学院');
INSERT INTO `tp_schooljw` VALUES ('1200', '南明区', '26.553003', '106.766122', '贵州省社会主义学院');
INSERT INTO `tp_schooljw` VALUES ('1201', '南明区', '26.567504', '106.693609', '贵州商业高等专科学校南校区');
INSERT INTO `tp_schooljw` VALUES ('1202', '南明区', '26.561294', '106.779986', '贵阳医学院神奇民族医药学院');
INSERT INTO `tp_schooljw` VALUES ('1203', '南明区', '26.551244', '106.693591', '贵州新华电脑学院');
INSERT INTO `tp_schooljw` VALUES ('1204', '乌当区', '26.578892', '104.8205046', '贵州师范学院');
INSERT INTO `tp_schooljw` VALUES ('1205', '乌当区', '26.688321874612', '106.73344472969', '贵州大学明德学院（乌当校区）');
INSERT INTO `tp_schooljw` VALUES ('1206', '白云区', '26.664813', '106.62819', '贵州省消防学校');
INSERT INTO `tp_schooljw` VALUES ('1207', '白云区', '26.902819242743', '106.73498981517', '贵州商学院');
INSERT INTO `tp_schooljw` VALUES ('1208', '白云区', '26.587153', '106.720504', '贵州师范大学求是学院');
INSERT INTO `tp_schooljw` VALUES ('1209', '金阳区', '26.560068', '106.654166', '贵阳职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1210', '金阳区', '26.613789', '106.604384', '贵阳护理职业学院');
INSERT INTO `tp_schooljw` VALUES ('1211', '金阳区', '27.7356233', '109.2000232', '贵州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1212', '金阳区', '27.706164201047', '103.20105594008', '贵州广播电视大学（金阳校区）');
INSERT INTO `tp_schooljw` VALUES ('1213', '金阳区', '27.706164201047', '103.20105594008', '贵州工业职业技术学院（金阳校区）');
INSERT INTO `tp_schooljw` VALUES ('1214', '金阳区', '27.706164201047', '103.20105594008', '贵州交通职业技术学院（金阳校区）');
INSERT INTO `tp_schooljw` VALUES ('1215', '清镇市', '26.598042456907', '106.47673596419', '贵州工业职业技术学院（清镇校区）');
INSERT INTO `tp_schooljw` VALUES ('1216', '清镇市', '26.902819242743', '106.73498981517', '贵州幼儿师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1217', '清镇市', '26.5083293', '106.7331936', '贵州省机械工业学校');
INSERT INTO `tp_schooljw` VALUES ('1218', '清镇市', '26.592808997184', '106.47384342045', '贵州建设职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1219', '清镇市', '27.665768', '106.885534', '贵州省旅游学校');
INSERT INTO `tp_schooljw` VALUES ('1220', '清镇市', '26.561306214818', '106.45866205733', '贵州工商职业学院');
INSERT INTO `tp_schooljw` VALUES ('1221', '清镇市', '26.546348', '106.432262', '贵州电力职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1222', '清镇市', '26.688620452714', '106.35381183824', '贵州交通职业技术学院（清镇校区）');
INSERT INTO `tp_schooljw` VALUES ('1223', '城关区', '36.0477699', '103.8585624', '兰州大学');
INSERT INTO `tp_schooljw` VALUES ('1224', '城关区', '36.045989', '103.818081', '西北民族大学');
INSERT INTO `tp_schooljw` VALUES ('1225', '城关区', '36.043245', '103.869559', '甘肃中医学院');
INSERT INTO `tp_schooljw` VALUES ('1226', '城关区', '36.053915998031', '103.88776559836', '兰州财经大学（段家滩校区）');
INSERT INTO `tp_schooljw` VALUES ('1227', '城关区', '36.065197', '103.896676', '兰州文理学院');
INSERT INTO `tp_schooljw` VALUES ('1228', '城关区', '36.0983001', '103.8341359', '甘肃警察职业学院');
INSERT INTO `tp_schooljw` VALUES ('1229', '城关区', '36.045139', '103.889005', '甘肃农业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1230', '城关区', '38.10326145192', '102.4576183112', '甘肃卫生职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1231', '城关区', '36.040115', '103.872544', '兰州城市学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1232', '城关区', '36.0630007', '103.8696256', '甘肃交通职业技术学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1233', '城关区', '36.023959', '103.948251', '兰州资源环境职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1234', '城关区', '36.044365', '103.915769', '兰州长青学院');
INSERT INTO `tp_schooljw` VALUES ('1235', '城关区', '36.047058', '103.8657171', '兰州大学医学院');
INSERT INTO `tp_schooljw` VALUES ('1236', '城关区', '36.052340300763', '103.92356307293', '兰州职业技术学院雁儿湾校区');
INSERT INTO `tp_schooljw` VALUES ('1237', '城关区', '34.5657178', '105.8144087', '甘肃工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1238', '城关区', '36.056104413662', '103.8600079581', '兰州大学（盘旋路校区）');
INSERT INTO `tp_schooljw` VALUES ('1239', '安宁区', '36.090703', '103.700763', '甘肃农业大学');
INSERT INTO `tp_schooljw` VALUES ('1240', '安宁区', '36.1059223', '103.7252772', '兰州交通大学');
INSERT INTO `tp_schooljw` VALUES ('1241', '安宁区', '36.10438711495', '103.74475536117', '西北师范大学（旧校区）');
INSERT INTO `tp_schooljw` VALUES ('1242', '安宁区', '36.100986', '103.744311', '兰州城市学院（培黎校区）');
INSERT INTO `tp_schooljw` VALUES ('1243', '安宁区', '35.691669', '107.639182', '甘肃职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1244', '安宁区', '36.10161', '103.7307342', '甘肃政法学院');
INSERT INTO `tp_schooljw` VALUES ('1245', '安宁区', '36.063051', '103.869575', '甘肃交通职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1246', '安宁区', '36.1063899', '103.7316978', '西北师范大学知行学院');
INSERT INTO `tp_schooljw` VALUES ('1247', '安宁区', '36.100844046311', '103.70252601915', '兰州城市学院（本部）');
INSERT INTO `tp_schooljw` VALUES ('1248', '安宁区', '36.128138', '103.680414', '兰州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1249', '榆中县', '35.935076', '104.163796', '西北民族大学(榆中校区)');
INSERT INTO `tp_schooljw` VALUES ('1250', '榆中县', '36.477005620009', '103.95038647546', '兰州财经大学（和平校区）');
INSERT INTO `tp_schooljw` VALUES ('1251', '榆中县', '36.0965196', '103.7382843', '兰州外国语学院');
INSERT INTO `tp_schooljw` VALUES ('1252', '榆中县', '36.003594', '103.966765', '兰州商学院陇桥学院');
INSERT INTO `tp_schooljw` VALUES ('1253', '榆中县', '36.007674', '103.964443', '兰州交通大学博文学院');
INSERT INTO `tp_schooljw` VALUES ('1254', '榆中县', '35.942318', '104.158658', '兰州大学（榆中校区）');
INSERT INTO `tp_schooljw` VALUES ('1255', '榆中县', '0', '0', '西北民族大学（校本部）');
INSERT INTO `tp_schooljw` VALUES ('1256', '七里河区', '36.051285', '103.763321', '兰州建筑学院');
INSERT INTO `tp_schooljw` VALUES ('1257', '七里河区', '36.0575398', '103.779564', '兰州理工大学');
INSERT INTO `tp_schooljw` VALUES ('1258', '七里河区', '36.0528733', '103.7461141', '兰州工业学院');
INSERT INTO `tp_schooljw` VALUES ('1259', '七里河区', '36.0568942', '103.7429005', '兰州理工大学技术工程学院');
INSERT INTO `tp_schooljw` VALUES ('1260', '七里河区', '36.091125', '103.621868', '兰州石化学院');
INSERT INTO `tp_schooljw` VALUES ('1261', '南开区', '39.109313149544', '117.17694697383', '南开大学（八里台校区 ）');
INSERT INTO `tp_schooljw` VALUES ('1262', '南开区', '39.1173742', '117.1776493', '天津中医药大学');
INSERT INTO `tp_schooljw` VALUES ('1263', '南开区', '39.090631', '117.273789', '天津艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('1264', '河西区', '39.076158279849', '117.27823990313', '天津科技大学（河西校区）');
INSERT INTO `tp_schooljw` VALUES ('1265', '河西区', '39.0649325', '117.2909716', '天津职业技术师范大学');
INSERT INTO `tp_schooljw` VALUES ('1266', '河西区', '39.114142256006', '117.21549326326', '天津外国语大学（河西校区）');
INSERT INTO `tp_schooljw` VALUES ('1267', '河西区', '39.063177', '117.273135', '天津财经大学');
INSERT INTO `tp_schooljw` VALUES ('1268', '河西区', '39.1166074', '117.2289567', '天津音乐学院');
INSERT INTO `tp_schooljw` VALUES ('1269', '河西区', '39.073718', '117.28566', '天津医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1270', '河西区', '39.074223', '117.187461', '天津体育学院');
INSERT INTO `tp_schooljw` VALUES ('1271', '西青区', '39.086807', '117.152014', '天津理工大学');
INSERT INTO `tp_schooljw` VALUES ('1272', '西青区', '39.159121', '116.975359', '天津农学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1273', '西青区', '39.098563', '117.180417', '天津师范大学');
INSERT INTO `tp_schooljw` VALUES ('1274', '西青区', '39.088791', '117.095375', '天津城建大学');
INSERT INTO `tp_schooljw` VALUES ('1275', '西青区', '39.005414', '117.11002', '天津公安警官职业学院');
INSERT INTO `tp_schooljw` VALUES ('1276', '西青区', '39.150957', '117.076475', '天津交通职业学院');
INSERT INTO `tp_schooljw` VALUES ('1277', '西青区', '39.12109', '117.116361', '天津广播影视职业学院');
INSERT INTO `tp_schooljw` VALUES ('1278', '西青区', '39.1224301', '117.1855156', '天津工业大学');
INSERT INTO `tp_schooljw` VALUES ('1279', '西青区', '39.097364926554', '117.10698694071', '天津农学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1280', '西青区', '39.126473', '117.017453', '天津理工大学中环信息学院');
INSERT INTO `tp_schooljw` VALUES ('1281', '西青区', '39.09098', '117.093433', '天津商业大学宝德学院');
INSERT INTO `tp_schooljw` VALUES ('1282', '北辰区', '39.182963', '117.217492', '天津职业大学');
INSERT INTO `tp_schooljw` VALUES ('1283', '北辰区', '39.264027', '117.360546', '天津渤海职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1284', '北辰区', '39.2617166', '117.1126182', '天津冶金职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1285', '北辰区', '39.193945', '117.10914', '天津城市建设管理职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1286', '北辰区', '39.234283', '117.061182', '河北工业大学（北辰校区）');
INSERT INTO `tp_schooljw` VALUES ('1287', '河北区', '39.183717', '117.216458', '天津美术学院');
INSERT INTO `tp_schooljw` VALUES ('1288', '河北区', '39.17138', '117.220795', '天津铁道职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1289', '河东区', '39.159836', '117.248567', '天津城市职业学院');
INSERT INTO `tp_schooljw` VALUES ('1290', '和平区', '39.105488', '117.184617', '天津医科大学');
INSERT INTO `tp_schooljw` VALUES ('1291', '红桥区', '39.17803', '117.1312131', '天津机电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1292', '红桥区', '39.1820307', '117.1307234', '天津商业大学');
INSERT INTO `tp_schooljw` VALUES ('1293', '红桥区', '39.1796791', '117.165927', '河北工业大学（红桥校区）');
INSERT INTO `tp_schooljw` VALUES ('1294', '津南区', '39.1110824', '117.1748329', '天津大学');
INSERT INTO `tp_schooljw` VALUES ('1295', '津南区', '39.081166', '117.156838', '天津青年职业学院');
INSERT INTO `tp_schooljw` VALUES ('1296', '津南区', '39.143928364305', '117.21081309155', '天津工艺美术职业学院');
INSERT INTO `tp_schooljw` VALUES ('1297', '津南区', '39.0613306', '117.2292591', '天津商务职业学院');
INSERT INTO `tp_schooljw` VALUES ('1298', '津南区', '39.087739', '117.154894', '天津中德职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1299', '津南区', '39.008766', '117.376219', '天津电子信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1300', '津南区', '39.0652535', '117.2914084', '天津现代职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1301', '津南区', '39.000285', '117.365564', '天津海运职业学院');
INSERT INTO `tp_schooljw` VALUES ('1302', '津南区', '39.144996', '117.02172', '天津轻工职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1303', '津南区', '38.969790214889', '117.39290860148', '南开大学（津南新校区）');
INSERT INTO `tp_schooljw` VALUES ('1304', '东丽区', '39.1118774', '117.3497451', '中国民航大学');
INSERT INTO `tp_schooljw` VALUES ('1305', '武清', '39.402', '117.071735', '天津天狮学院');
INSERT INTO `tp_schooljw` VALUES ('1306', '滨海新区', '39.089062264388', '117.71552604233', '天津科技大学（滨海校区）');
INSERT INTO `tp_schooljw` VALUES ('1307', '滨海新区', '38.861877213377', '117.40773962545', '天津外国语大学（大港校区）');
INSERT INTO `tp_schooljw` VALUES ('1308', '滨海新区', '38.863674', '117.449407', '南开大学滨海学院');
INSERT INTO `tp_schooljw` VALUES ('1309', '滨海新区', '38.9268184', '117.4218338', '天津医科大学临床医学院');
INSERT INTO `tp_schooljw` VALUES ('1310', '滨海新区', '38.866646', '117.456902', '天津国土资源和房屋管理学院');
INSERT INTO `tp_schooljw` VALUES ('1311', '滨海新区', '38.7251764', '117.5000725', '天津工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1312', '滨海新区', '39.072892', '117.5425678', '天津生物工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1313', '滨海新区', '39.029982', '117.650138', '天津滨海职业学院（北区）');
INSERT INTO `tp_schooljw` VALUES ('1314', '滨海新区', '39.035694506118', '117.65685770948', '天津滨海职业学院（南区）');
INSERT INTO `tp_schooljw` VALUES ('1315', '静海县', '38.844811', '117.217575', '天津石油职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1316', '静海县', '38.884834', '117.15628', '天津大学仁爱学院');
INSERT INTO `tp_schooljw` VALUES ('1317', '宝坻区', '39.551324', '117.40372', '天津财经大学珠江学院');
INSERT INTO `tp_schooljw` VALUES ('1318', '宝坻区', '39.545966', '117.394431', '北京科技大学天津学院');
INSERT INTO `tp_schooljw` VALUES ('1319', '长清区', '36.54648', '116.83488', '山东师范大学（长清校区）');
INSERT INTO `tp_schooljw` VALUES ('1320', '长清区', '36.561027', '116.802216', '山东中医药大学（长清校区）');
INSERT INTO `tp_schooljw` VALUES ('1321', '长清区', '36.53742375583', '116.79330763968', '山东管理学院（长清校区）');
INSERT INTO `tp_schooljw` VALUES ('1322', '长清区', '36.555593', '116.83592', '山东工艺美术学院（长清校区）');
INSERT INTO `tp_schooljw` VALUES ('1323', '长清区', '36.537318', '116.798311', '山东交通学院（长清校区）');
INSERT INTO `tp_schooljw` VALUES ('1324', '长清区', '26.0817572', '119.2886398', '济南幼儿师范高等专科学院');
INSERT INTO `tp_schooljw` VALUES ('1325', '长清区', '36.562712570567', '116.82692223186', '山东女子学院（长清校区）');
INSERT INTO `tp_schooljw` VALUES ('1326', '长清区', '36.5681144', '116.8523459', '山东圣翰财贸职业学院');
INSERT INTO `tp_schooljw` VALUES ('1327', '长清区', '36.523709', '116.822589', '山东艺术学院（长清校区）');
INSERT INTO `tp_schooljw` VALUES ('1328', '长清区', '36.428570082125', '116.80354832249', '山东齐鲁工业大学（长清校区）');
INSERT INTO `tp_schooljw` VALUES ('1329', '长清区', '36.579559897422', '116.81972680473', '山东劳动职业技术学院（长清校区）');
INSERT INTO `tp_schooljw` VALUES ('1330', '章丘区', '36.6786414', '117.0507535', '齐鲁师范学院');
INSERT INTO `tp_schooljw` VALUES ('1331', '章丘区', '36.6781341', '117.5436936', '齐鲁理工学院');
INSERT INTO `tp_schooljw` VALUES ('1332', '章丘区', '36.648671175038', '117.08220269169', '山东财经大学（明水）');
INSERT INTO `tp_schooljw` VALUES ('1333', '章丘区', '36.676463171895', '117.43837184334', '山东财经大学（圣井）');
INSERT INTO `tp_schooljw` VALUES ('1334', '章丘区', '36.6739704', '117.5225153', '山东杏林科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('1335', '章丘区', '36.667104', '117.520166', '山东电子职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1336', '章丘区', '36.676856', '117.538841', '山东旅游职业学院');
INSERT INTO `tp_schooljw` VALUES ('1337', '章丘区', '36.666026', '117.509145', '山东凯文科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('1338', '章丘区', '36.6999015', '116.9726962', '山东技师学院');
INSERT INTO `tp_schooljw` VALUES ('1339', '历下区', '36.674306', '117.059933', '山东大学（中心校区）');
INSERT INTO `tp_schooljw` VALUES ('1340', '历下区', '36.6522291', '117.0182603', '山东大学（趵突泉）');
INSERT INTO `tp_schooljw` VALUES ('1341', '历下区', '36.65139', '117.030655', '山东大学（千佛山）');
INSERT INTO `tp_schooljw` VALUES ('1342', '历下区', '36.0773723', '120.4156873', '山东大学（软件园）');
INSERT INTO `tp_schooljw` VALUES ('1343', '历下区', '36.657842205406', '117.04864199784', '山东师范大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('1344', '历下区', '36.658968', '117.509054', '山东财经大学（燕山）');
INSERT INTO `tp_schooljw` VALUES ('1345', '历下区', '36.644386', '117.040513', '山东工艺美术学院');
INSERT INTO `tp_schooljw` VALUES ('1346', '历下区', '36.672671318733', '117.09465320606', '山东政法学院（厉下校区）');
INSERT INTO `tp_schooljw` VALUES ('1347', '历下区', '36.644072', '117.057669', '山东传媒职业学院');
INSERT INTO `tp_schooljw` VALUES ('1348', '历下区', '36.6550751', '117.0453229', '山东艺术学院');
INSERT INTO `tp_schooljw` VALUES ('1349', '历下区', '36.650156', '117.046138', '山东中医药大学');
INSERT INTO `tp_schooljw` VALUES ('1350', '历城区', '36.685795', '117.064716', '山东大学（洪家楼校区）');
INSERT INTO `tp_schooljw` VALUES ('1351', '历城区', '36.672671318733', '117.09465320606', '山东政法学院（历城校区）');
INSERT INTO `tp_schooljw` VALUES ('1352', '历城区', '36.6942683', '117.1490401', '山东警察学院');
INSERT INTO `tp_schooljw` VALUES ('1353', '历城区', '36.6946755', '117.0938536', '山东农业工程学院');
INSERT INTO `tp_schooljw` VALUES ('1354', '历城区', '36.09928387855', '118.52765710474', '山东艺术设计职业学院');
INSERT INTO `tp_schooljw` VALUES ('1355', '历城区', '36.639931', '117.275944', '山东城市建设职业学院');
INSERT INTO `tp_schooljw` VALUES ('1356', '历城区', '36.651743', '117.039936', '山东体育学院');
INSERT INTO `tp_schooljw` VALUES ('1357', '历城区', '36.675961', '117.3560453', '山东现代职业学院');
INSERT INTO `tp_schooljw` VALUES ('1358', '历城区', '36.728625421017', '117.24167886888', '山东协和学院（郭店）');
INSERT INTO `tp_schooljw` VALUES ('1359', '历城区', '36.824739995187', '117.19148155698', '山东协和学院（遥墙）');
INSERT INTO `tp_schooljw` VALUES ('1360', '历城区', '36.485651', '117.854497', '山东职业学院');
INSERT INTO `tp_schooljw` VALUES ('1361', '历城区', '36.6362738', '117.2692113', '山东商业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1362', '历城区', '36.6414467', '117.2269276', '济南护理职业学院');
INSERT INTO `tp_schooljw` VALUES ('1363', '历城区', '36.636627', '117.261428', '济南职业学院');
INSERT INTO `tp_schooljw` VALUES ('1364', '历城区', '36.6504226', '117.0675526', '济南工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1365', '历城区', '36.670734', '117.239527', '山东青年政治学院');
INSERT INTO `tp_schooljw` VALUES ('1366', '历城区', '36.643690706421', '117.26836752558', '济南职业学院（彩石）');
INSERT INTO `tp_schooljw` VALUES ('1367', '市中区', '36.603248', '117.049327', '山东大学（兴隆山）');
INSERT INTO `tp_schooljw` VALUES ('1368', '市中区', '36.625226', '117.020479', '山东财经大学（舜耕）');
INSERT INTO `tp_schooljw` VALUES ('1369', '市中区', '36.5520722', '116.8229715', '山东女子学院');
INSERT INTO `tp_schooljw` VALUES ('1370', '市中区', '36.595492', '117.027008', '山东电力高等专科学院');
INSERT INTO `tp_schooljw` VALUES ('1371', '市中区', '36.6078451', '116.9554205', '山东力明科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('1372', '市中区', '36.630305', '117.021153', '济南大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1373', '市中区', '36.603248', '117.049327', '济南大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1374', '高新区', '36.680071', '117.185317', '山东建筑大学');
INSERT INTO `tp_schooljw` VALUES ('1375', '高新区', '36.8447686', '117.1128963', '山东英才学院');
INSERT INTO `tp_schooljw` VALUES ('1376', '槐荫区', '36.572653', '116.816921', '山东劳动职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1377', '天桥区', '36.7116416', '117.0487503', '山东外事翻译职业学院');
INSERT INTO `tp_schooljw` VALUES ('1378', '天桥区', '36.683192523433', '116.96987857072', '山东交通学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1379', '天桥区', '36.683192523433', '116.96987857072', '山东交通学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1380', '济阳县', '36.8541821', '117.1132895', '山东英才学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('1381', '迎泽区', '37.8520196', '112.5736125', '山西艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('1382', '迎泽区', '37.703902', '112.566579', '山西警官职业学院');
INSERT INTO `tp_schooljw` VALUES ('1383', '迎泽区', '37.839745', '112.554917', '山西财经大学北校区');
INSERT INTO `tp_schooljw` VALUES ('1384', '尖草坪区', '37.895452', '112.5382985', '山西林业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1385', '尖草坪区', '37.889747', '112.528042', '太原城市职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1386', '尖草坪区', '37.866564138861', '112.51548697061', '山西老区职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1387', '尖草坪区', '37.960858919399', '112.53626477706', '山西金融职业学院');
INSERT INTO `tp_schooljw` VALUES ('1388', '尖草坪区', '37.9560455', '112.5408567', '太原工业学院');
INSERT INTO `tp_schooljw` VALUES ('1389', '尖草坪区', '38.0094275', '112.4434612', '中北大学');
INSERT INTO `tp_schooljw` VALUES ('1390', '万柏林区', '37.854105', '112.523041', '太原理工大学（虎峪校区）');
INSERT INTO `tp_schooljw` VALUES ('1391', '万柏林区', '37.861527', '112.522673', '太原理工大学（迎西校区）');
INSERT INTO `tp_schooljw` VALUES ('1392', '万柏林区', '37.854878', '112.518122', '山西省财政税务专科学校');
INSERT INTO `tp_schooljw` VALUES ('1393', '万柏林区', '37.834102', '112.535202', '山西金融职业学院南校区');
INSERT INTO `tp_schooljw` VALUES ('1394', '万柏林区', '37.880799077662', '112.49904797978', '太原科技大学（主校区）');
INSERT INTO `tp_schooljw` VALUES ('1395', '晋源区', '37.685586', '112.430016', '山西医科大学晋祠学院');
INSERT INTO `tp_schooljw` VALUES ('1396', '晋源区', '37.7994859', '112.5077041', '山西警官高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1397', '晋源区', '37.7994859', '112.5077041', '山西电力职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1398', '晋源区', '37.7943239', '112.5917899', '太原科技大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('1399', '晋源区', '37.890275630085', '112.5508622416', '太原生态工程学院');
INSERT INTO `tp_schooljw` VALUES ('1400', '晋源区', '37.727497', '112.449691', '山西经贸职业学院南校区');
INSERT INTO `tp_schooljw` VALUES ('1401', '杏花岭区', '37.880977085848', '112.59868802695', '山西大学（大东关校区）');
INSERT INTO `tp_schooljw` VALUES ('1402', '杏花岭区', '37.8817489', '112.5506317', '山西工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1403', '杏花岭区', '37.880126', '112.613921', '山西轻工职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1404', '小店区', '37.775389', '112.655927', '山西财贸职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1405', '小店区', '37.80551973692', '112.59433124522', '山西大学（坞城校区）');
INSERT INTO `tp_schooljw` VALUES ('1406', '小店区', '37.794684878148', '112.59416056718', '山西财经大学（坞城校区）');
INSERT INTO `tp_schooljw` VALUES ('1407', '小店区', '37.890275630085', '112.5508622416', '太原学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1408', '小店区', '37.807324', '112.562898', '山西建筑职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1409', '小店区', '37.800836708447', '112.58320123996', '山西职业技术学院（主校区）');
INSERT INTO `tp_schooljw` VALUES ('1410', '小店区', '37.800836708447', '112.58320123996', '山西职业技术学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1411', '小店区', '37.800836708447', '112.58320123996', '山西职业技术学院（长风校区）');
INSERT INTO `tp_schooljw` VALUES ('1412', '小店区', '37.80063', '112.625901', '山西煤炭职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1413', '小店区', '37.775838', '112.650494', '山西药科职业学院');
INSERT INTO `tp_schooljw` VALUES ('1414', '小店区', '37.8109933', '112.6005443', '山西国际商务职业学院');
INSERT INTO `tp_schooljw` VALUES ('1415', '小店区', '37.6245984', '112.5769569', '山西应用科技学院');
INSERT INTO `tp_schooljw` VALUES ('1416', '小店区', '37.766703', '112.584885', '山西工商学院');
INSERT INTO `tp_schooljw` VALUES ('1417', '小店区', '37.743427', '112.667022', '山西大学商务学院');
INSERT INTO `tp_schooljw` VALUES ('1418', '小店区', '37.831859', '112.581803', '山西旅游职业学院');
INSERT INTO `tp_schooljw` VALUES ('1419', '小店区', '37.831859', '112.581803', '太原旅游职业学院');
INSERT INTO `tp_schooljw` VALUES ('1420', '小店区', '37.704686570609', '112.60884786227', '山西青年职业学院');
INSERT INTO `tp_schooljw` VALUES ('1421', '小店区', '37.782547', '112.562451', '山西体育职业学院');
INSERT INTO `tp_schooljw` VALUES ('1422', '小店区', '37.839745', '112.554917', '山西财经大学（北校区）');
INSERT INTO `tp_schooljw` VALUES ('1423', '桥西区', '37.737107', '115.671726', '河北工程技术学院');
INSERT INTO `tp_schooljw` VALUES ('1424', '桥西区', '35.131375', '114.2040268', '河北外国语学院');
INSERT INTO `tp_schooljw` VALUES ('1425', '桥西区', '38.055246', '114.351648', '河北中医学院');
INSERT INTO `tp_schooljw` VALUES ('1426', '桥西区', '37.98039', '114.462047', '河北工业职业技术学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('1427', '桥西区', '38.046099', '114.407464', '石家庄职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1428', '桥西区', '38.018696311086', '114.45734500848', '河北交通职业技术学院(西校区)');
INSERT INTO `tp_schooljw` VALUES ('1429', '桥西区', '38.000203', '114.471286', '河北公安警察职业学院');
INSERT INTO `tp_schooljw` VALUES ('1430', '桥西区', '37.995424', '114.471432', '石家庄工商职业学院');
INSERT INTO `tp_schooljw` VALUES ('1431', '桥西区', '37.989088', '114.460328', '石家庄科技信息职业学院');
INSERT INTO `tp_schooljw` VALUES ('1432', '桥西区', '38.0139535', '114.4627713', '河北女子职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1433', '桥西区', '38.07458', '114.387068', '石家庄医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1434', '桥西区', '37.9945881', '114.4561819', '石家庄人民医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1435', '桥西区', '38.034155', '114.459305', '河北劳动关系职业学院');
INSERT INTO `tp_schooljw` VALUES ('1436', '桥西区', '37.996462617577', '114.47522128813', '河北师范大学汇华学院南校区');
INSERT INTO `tp_schooljw` VALUES ('1437', '桥西区', '37.996462617577', '114.47522128813', '河北师范大学汇华学院北校区');
INSERT INTO `tp_schooljw` VALUES ('1438', '桥西区', '38.01428280995', '114.4641631473', '河北经贸大学经济管理学院南校区');
INSERT INTO `tp_schooljw` VALUES ('1439', '桥西区', '38.020984687642', '114.46461230005', '河北经贸大学经济管理学院西校区');
INSERT INTO `tp_schooljw` VALUES ('1440', '桥西区', '38.020920727786', '114.46753179296', '河北工业职业技术学院北校区');
INSERT INTO `tp_schooljw` VALUES ('1441', '桥西区', '38.011407', '114.45851', '河北师范大学附属民族学院');
INSERT INTO `tp_schooljw` VALUES ('1442', '桥西区', '37.996565', '114.461074', '石家庄城市职业学院');
INSERT INTO `tp_schooljw` VALUES ('1443', '桥西区', '38.048958172537', '114.52207690353', '泊头职业学院（石家庄校区）');
INSERT INTO `tp_schooljw` VALUES ('1444', '桥东区', '38.023749120971', '114.53800386022', '石家庄邮电职业技术学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1445', '桥东区', '38.0795493', '114.5193001', '石家庄铁道大学');
INSERT INTO `tp_schooljw` VALUES ('1446', '桥东区', '38.048958172537', '114.52207690353', '石家庄铁路职业技术学院南校区');
INSERT INTO `tp_schooljw` VALUES ('1447', '裕华区', '38.867692559517', '115.47487362574', '河北轨道职业技术学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1448', '裕华区', '38.017331', '114.548536', '河北医科大学临床学院');
INSERT INTO `tp_schooljw` VALUES ('1449', '裕华区', '38.1460255', '114.5531822', '石家庄经济职业学院');
INSERT INTO `tp_schooljw` VALUES ('1450', '裕华区', '37.998635', '114.60474', '石家庄信息工程职业学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('1451', '裕华区', '38.043833', '114.55723', '河北化工医药职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1452', '裕华区', '37.99808', '114.51859', '河北师范大学');
INSERT INTO `tp_schooljw` VALUES ('1453', '裕华区', '38.04619', '114.535257', '河北医科大学');
INSERT INTO `tp_schooljw` VALUES ('1454', '裕华区', '38.039274896068', '114.52164571688', '河北科技大学（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1455', '裕华区', '37.994926', '114.526928', '石家庄经济学院');
INSERT INTO `tp_schooljw` VALUES ('1456', '裕华区', '38.020885', '114.599745', '石家庄学院（南区）');
INSERT INTO `tp_schooljw` VALUES ('1457', '裕华区', '38.030514077143', '114.64970815039', '河北交通职业技术学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1458', '裕华区', '38.0375806', '114.6030194', '石家庄学院（北区）');
INSERT INTO `tp_schooljw` VALUES ('1459', '裕华区', '38.0328898', '114.6119244', '河北科技大学理工学院');
INSERT INTO `tp_schooljw` VALUES ('1460', '裕华区', '38.0192759', '114.557535', '石家庄邮电职业技术学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1461', '裕华区', '38.048958172537', '114.52207690353', '石家庄信息工程职业技术学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('1462', '新华区', '38.147867', '114.551873', '石家庄铁路职业技术学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('1463', '新华区', '38.137472', '114.461806', '河北政法职业学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1464', '新华区', '38.14136377795', '114.50187401261', '河北经贸大学（北院）');
INSERT INTO `tp_schooljw` VALUES ('1465', '新华区', '38.1237789', '114.5030279', '河北体育学院');
INSERT INTO `tp_schooljw` VALUES ('1466', '新华区', '38.1706967', '114.4383067', '石家庄工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('1467', '新华区', '38.1701266', '114.4370102', '石家庄财经职业学院');
INSERT INTO `tp_schooljw` VALUES ('1468', '新华区', '38.13513422326', '114.50634757405', '河北政法职业学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1469', '新华区', '38.101635855668', '114.43698940562', '河北传媒学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('1470', '长安区', '38.05382418851', '114.54251335388', '河北医科大学 基础学院');
INSERT INTO `tp_schooljw` VALUES ('1471', '长安区', '37.995311', '114.455402', '河北省艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('1472', '长安区', '0', '0', '河北传媒学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('1473', '藁城市', '38.05120297372', '114.70489105786', '石家庄城市经济职业学院');
INSERT INTO `tp_schooljw` VALUES ('1474', '藁城市', '38.0356354', '114.6926203', '石家庄科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('1475', '藁城市', '38.867692559517', '115.47487362574', '河北轨道职业技术学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1476', '鹿泉县', '38.0557979', '114.3524712', '石家庄理工职业学院');
INSERT INTO `tp_schooljw` VALUES ('1477', '鹿泉县', '38.047787', '114.346239', '石家庄幼儿师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1478', '鹿泉县', '38.060817', '114.416815', '石家庄柯棣华医学中专');
INSERT INTO `tp_schooljw` VALUES ('1479', '正定县', '38.159878', '114.567502', '石家庄科技工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('1480', '元氏区', '38.9129339', '121.5978666', '石家庄铁道大学四方学院');
INSERT INTO `tp_schooljw` VALUES ('1481', '栾城县', '37.91355239559', '114.66833900666', '河北传媒学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1482', '新乐市', '38.344793', '114.719653', '河北美术学院');
INSERT INTO `tp_schooljw` VALUES ('1483', '新乐市', '38.01895', '114.556539', '石家庄经济学院华信学院');
INSERT INTO `tp_schooljw` VALUES ('1484', '灵寿县', '38.510929038359', '114.18781742326', '石家庄医学高等专科学校（灵寿校区）');
INSERT INTO `tp_schooljw` VALUES ('1485', '南岗区', '45.7412044', '126.6308352', '哈尔滨工业大学（一校区）');
INSERT INTO `tp_schooljw` VALUES ('1486', '南岗区', '45.7560929', '126.6848596', '哈尔滨工业大学（二校区）');
INSERT INTO `tp_schooljw` VALUES ('1487', '南岗区', '45.7754388', '126.6778707', '哈尔滨工程大学');
INSERT INTO `tp_schooljw` VALUES ('1488', '南岗区', '22.231252134095', '114.21879098243', '哈尔滨师范大学（南区）');
INSERT INTO `tp_schooljw` VALUES ('1489', '南岗区', '45.7591652', '126.6747155', '哈尔滨体育学院');
INSERT INTO `tp_schooljw` VALUES ('1490', '南岗区', '45.721362', '126.618329', '黑龙江司法警官职业学院');
INSERT INTO `tp_schooljw` VALUES ('1491', '南岗区', '45.6600328', '126.5419278', '黑龙江农业工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('1492', '南岗区', '45.6891594', '126.6171381', '哈尔滨护士学校');
INSERT INTO `tp_schooljw` VALUES ('1493', '南岗区', '45.7003851', '126.6202132', '哈尔滨医科大学');
INSERT INTO `tp_schooljw` VALUES ('1494', '南岗区', '45.2107269', '127.9649569', '哈尔滨学院');
INSERT INTO `tp_schooljw` VALUES ('1495', '南岗区', '45.7317338', '126.6199906', '黑龙江艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('1496', '南岗区', '45.716867', '126.609946', '黑龙江省工商职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1497', '南岗区', '45.875608', '126.506633', '哈尔滨华夏计算机职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1498', '南岗区', '45.7150614', '126.6146033', '哈尔滨理工大学');
INSERT INTO `tp_schooljw` VALUES ('1499', '南岗区', '45.791359657673', '126.69808706439', '黑龙江工程学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1500', '南岗区', '45.7108244', '126.6239101', '省法官学院');
INSERT INTO `tp_schooljw` VALUES ('1501', '南岗区', '45.7597493', '126.6888791', '黑龙江科技大学（嵩山校区）');
INSERT INTO `tp_schooljw` VALUES ('1502', '南岗区', '45.731089', '126.6195538', '黑龙江广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('1503', '南岗区', '45.7144858996', '126.62538719946', '黑龙江大学（主校区）');
INSERT INTO `tp_schooljw` VALUES ('1504', '南岗区', '50.383816', '124.113936', '黑龙江职业学院');
INSERT INTO `tp_schooljw` VALUES ('1505', '南岗区', '45.584999111156', '126.5244266432', '哈尔滨传媒职业学院');
INSERT INTO `tp_schooljw` VALUES ('1506', '南岗区', '45.753590128955', '126.63902347711', '哈尔滨工业大学（三校区）');
INSERT INTO `tp_schooljw` VALUES ('1507', '道里区', '22.663802137193', '108.13558285059', '哈尔滨商业大学（江南校区）');
INSERT INTO `tp_schooljw` VALUES ('1508', '道里区', '45.765534', '126.639477', '哈尔滨广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('1509', '道里区', '50.383816', '124.113936', '黑龙江省职业学院');
INSERT INTO `tp_schooljw` VALUES ('1510', '道里区', '45.650513', '126.4216', '哈尔滨应用职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1511', '道里区', '45.6754259', '126.620777', '黑龙江省工会干部学院');
INSERT INTO `tp_schooljw` VALUES ('1512', '香坊区', '45.654894', '126.657407', '黑龙江大学剑桥学院');
INSERT INTO `tp_schooljw` VALUES ('1513', '香坊区', '45.739969', '126.725613', '东北农业大学');
INSERT INTO `tp_schooljw` VALUES ('1514', '香坊区', '45.7240008', '126.6403002', '东北林业大学');
INSERT INTO `tp_schooljw` VALUES ('1515', '香坊区', '45.72904626076', '126.74292149239', '哈尔滨金融学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1516', '香坊区', '45.725138', '126.64942', '黑龙江中医药大学');
INSERT INTO `tp_schooljw` VALUES ('1517', '香坊区', '45.7160787', '126.6409384', '哈尔滨金融高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1518', '香坊区', '45.7352521', '126.696637', '哈尔滨电力职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1519', '香坊区', '45.720652', '126.653254', '哈尔滨理工大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1520', '香坊区', '45.666245', '126.650604', '哈尔滨职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1521', '香坊区', '45.71307', '126.636404', '哈尔滨理工大学（南区）');
INSERT INTO `tp_schooljw` VALUES ('1522', '香坊区', '45.396306', '127.21135', '哈尔滨外国语学院');
INSERT INTO `tp_schooljw` VALUES ('1523', '香坊区', '45.893531207694', '126.49629171462', '黑龙江中医药学校');
INSERT INTO `tp_schooljw` VALUES ('1524', '道外区', '45.7849064', '126.6845753', '黑龙江工程学院（东区）');
INSERT INTO `tp_schooljw` VALUES ('1525', '道外区', '45.773749', '126.636972', '哈尔滨市职工大学');
INSERT INTO `tp_schooljw` VALUES ('1526', '平房区', '45.6990824', '126.6265997', '哈尔滨铁道职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1527', '平房区', '45.699038', '126.627426', '黑龙江东方学院');
INSERT INTO `tp_schooljw` VALUES ('1528', '平房区', '45.577087', '126.644101', '黑龙江民族职业学院');
INSERT INTO `tp_schooljw` VALUES ('1529', '松北区', '45.818654', '126.564269', '哈尔滨商业大学（江北校区）');
INSERT INTO `tp_schooljw` VALUES ('1530', '松北区', '45.822904', '126.651466', '黑龙江科技大学');
INSERT INTO `tp_schooljw` VALUES ('1531', '松北区', '45.8739529', '126.5500376', '哈尔滨广厦学院');
INSERT INTO `tp_schooljw` VALUES ('1532', '松北区', '46.598090027014', '125.1557863343', '东北石油大学华瑞学院');
INSERT INTO `tp_schooljw` VALUES ('1533', '松北区', '45.872751', '126.506724', '黑龙江建筑职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1534', '松北区', '45.861311', '126.559496', '哈尔滨师范大学（松北校区）');
INSERT INTO `tp_schooljw` VALUES ('1535', '松北区', '45.857786', '126.550225', '哈尔滨师范大学恒星学院');
INSERT INTO `tp_schooljw` VALUES ('1536', '松北区', '45.86769', '126.527127', '黑龙江生物科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('1537', '松北区', '45.6754259', '126.620777', '黑龙江信息技术职业学院');
INSERT INTO `tp_schooljw` VALUES ('1538', '松北区', '45.866339', '126.5284', '哈尔滨远东理工学院');
INSERT INTO `tp_schooljw` VALUES ('1539', '松北区', '46.738562634762', '127.81516589827', '黑龙江农垦职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1540', '松北区', '45.753590128955', '126.63902347711', '哈尔滨工业大学华德学院');
INSERT INTO `tp_schooljw` VALUES ('1541', '松北区', '45.876617', '126.490886', '黑龙江财经学院');
INSERT INTO `tp_schooljw` VALUES ('1542', '松北区', '45.715332', '126.6111451', '黑龙江工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('1543', '松北区', '45.7109768', '126.6233343', '黑龙江生态工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('1544', '松北区', '45.768931', '126.771632', '东北农业大学成栋学院');
INSERT INTO `tp_schooljw` VALUES ('1545', '松北区', '45.77509', '126.68233', '哈尔滨信息工程学院');
INSERT INTO `tp_schooljw` VALUES ('1546', '松北区', '45.874058', '126.538788', '哈尔滨华德学院');
INSERT INTO `tp_schooljw` VALUES ('1547', '松北区', '45.396306', '127.21135', '黑龙江外国语学院');
INSERT INTO `tp_schooljw` VALUES ('1548', '阿城区', '45.773131907955', '126.64573381927', '哈尔滨科学技术职业学院');
INSERT INTO `tp_schooljw` VALUES ('1549', '阿城区', '45.695049355404', '126.62342889345', '黑龙江护理高等专科学校（阿城校区）');
INSERT INTO `tp_schooljw` VALUES ('1550', '阿城区', '45.6528352', '126.955963', '黑龙江江南职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1551', '宽城区', '43.8246579', '126.5724896', '吉林城市职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1552', '宽城区', '0', '0', '长春理工大学光电信息学院（本部）');
INSERT INTO `tp_schooljw` VALUES ('1553', '宽城区', '34.4479294', '115.6513717', '吉林工程技术师范学院');
INSERT INTO `tp_schooljw` VALUES ('1554', '绿园区', '43.875749', '125.283262', '吉林工程技术师范学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('1555', '绿园区', '43.944498', '125.283509', '吉林俄语学院');
INSERT INTO `tp_schooljw` VALUES ('1556', '绿园区', '43.9127038', '125.2670608', '吉林大学（和平校区）');
INSERT INTO `tp_schooljw` VALUES ('1557', '绿园区', '43.880529', '125.252961', '吉林工商学院和平校区');
INSERT INTO `tp_schooljw` VALUES ('1558', '绿园区', '43.908838231087', '125.28039030129', '空军航空大学西安大路分校');
INSERT INTO `tp_schooljw` VALUES ('1559', '绿园区', '43.678844490067', '126.26286703755', '吉林财税高等专科学院');
INSERT INTO `tp_schooljw` VALUES ('1560', '绿园区', '43.892981', '125.333999', '长春建筑职工业余大学');
INSERT INTO `tp_schooljw` VALUES ('1561', '绿园区', '43.8425852', '125.1853572', '长春理工大学高新校区');
INSERT INTO `tp_schooljw` VALUES ('1562', '绿园区', '43.894223391828', '125.28065080989', '吉林工商学院（西安大路校区）');
INSERT INTO `tp_schooljw` VALUES ('1563', '绿园区', '43.90946821181', '125.23190875292', '吉林建筑大学城建学院');
INSERT INTO `tp_schooljw` VALUES ('1564', '农安县', '43.883341', '125.264591', '吉林司法警官职业学院');
INSERT INTO `tp_schooljw` VALUES ('1565', '双阳区', '43.5326926', '125.6684524', '吉林农业大学发展学院');
INSERT INTO `tp_schooljw` VALUES ('1566', '双阳区', '43.7941556', '125.4080245', '长春建筑学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1567', '双阳区', '43.86531', '125.514004', '长春科技学院');
INSERT INTO `tp_schooljw` VALUES ('1568', '双阳区', '43.690693', '125.520664', '长春大学旅游学院');
INSERT INTO `tp_schooljw` VALUES ('1569', '朝阳区', '43.829081', '125.282392', '吉林大学（前卫南区）');
INSERT INTO `tp_schooljw` VALUES ('1570', '朝阳区', '43.8328947', '125.3144185', '长春大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1571', '朝阳区', '43.8328947', '125.3144185', '长春理工大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1572', '朝阳区', '43.8343488', '125.3032136', '长春理工大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1573', '朝阳区', '43.850263', '125.293997', '吉林大学（南湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1574', '朝阳区', '43.858489519547', '125.29080166215', '长春工程学院（湖西校区）');
INSERT INTO `tp_schooljw` VALUES ('1575', '朝阳区', '43.860277050688', '125.29640708853', '长春工业大学（南湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1576', '朝阳区', '43.841907', '125.266494', '吉林交通职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1577', '朝阳区', '43.821472', '125.26059', '吉林动画学院');
INSERT INTO `tp_schooljw` VALUES ('1578', '朝阳区', '43.865786', '125.25074', '长春汽车工业高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1579', '朝阳区', '43.828095', '125.298955', '长春工业大学林园校区');
INSERT INTO `tp_schooljw` VALUES ('1580', '朝阳区', '43.836529', '125.327287', '长春金融高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1581', '朝阳区', '43.841723101157', '125.31722981025', '长春理工大学研究生院');
INSERT INTO `tp_schooljw` VALUES ('1582', '朝阳区', '43.831936704966', '125.33145896953', '吉林省教育学院南校区');
INSERT INTO `tp_schooljw` VALUES ('1583', '朝阳区', '43.8343488', '125.3032136', '长春大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1584', '朝阳区', '43.870351216846', '125.32335625383', '吉林艺术学院（红旗街校区）');
INSERT INTO `tp_schooljw` VALUES ('1585', '朝阳区', '43.823586103137', '125.26546944677', '长春理工大学光电信息学院（达新校区）');
INSERT INTO `tp_schooljw` VALUES ('1586', '朝阳区', '43.861725', '125.319632', '长春工程学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1587', '朝阳区', '43.833164', '125.284738', '吉林省经济管理干部学院');
INSERT INTO `tp_schooljw` VALUES ('1588', '朝阳区', '43.870149750326', '125.32316760968', '吉林艺术学院音乐学院（同志街校区）');
INSERT INTO `tp_schooljw` VALUES ('1589', '朝阳区', '43.870351216846', '125.32335625383', '吉林艺术学院（自由大路分校）');
INSERT INTO `tp_schooljw` VALUES ('1590', '朝阳区', '43.8181103', '125.27866', '吉林建筑装饰学院');
INSERT INTO `tp_schooljw` VALUES ('1591', '朝阳区', '43.882562', '125.307669', '吉林大学（朝阳校区）');
INSERT INTO `tp_schooljw` VALUES ('1592', '高新区', '43.785447147349', '125.22049128989', '吉林师范大学（长春校区）');
INSERT INTO `tp_schooljw` VALUES ('1593', '高新区', '43.7748575', '125.2140938', '长春信息技术职业学院');
INSERT INTO `tp_schooljw` VALUES ('1594', '南关区', '43.854859', '125.327356', '吉林大学（南岭校区）');
INSERT INTO `tp_schooljw` VALUES ('1595', '南关区', '43.834271281154', '125.43789918941', '东北师范大学（本部)');
INSERT INTO `tp_schooljw` VALUES ('1596', '南关区', '43.870353', '125.308494', '吉林大学（新民校区）');
INSERT INTO `tp_schooljw` VALUES ('1597', '南关区', '41.7137489', '125.9279942', '吉林省教育学院');
INSERT INTO `tp_schooljw` VALUES ('1598', '南关区', '43.888252', '125.326951', '长春职工大学');
INSERT INTO `tp_schooljw` VALUES ('1599', '南关区', '43.867797090513', '125.34639779016', '吉林体育学院（自由大路校区）');
INSERT INTO `tp_schooljw` VALUES ('1600', '南关区', '43.894918', '125.315965', '长春职工医科大学（新发路）');
INSERT INTO `tp_schooljw` VALUES ('1601', '南关区', '43.8487028', '126.5491326', '吉林社会主义学院');
INSERT INTO `tp_schooljw` VALUES ('1602', '南关区', '43.873961', '125.334867', '长春行政学院');
INSERT INTO `tp_schooljw` VALUES ('1603', '南关区', '43.836915', '126.606894', '吉林大学北区');
INSERT INTO `tp_schooljw` VALUES ('1604', '南关区', '43.89418', '125.313564', '长春教育学院');
INSERT INTO `tp_schooljw` VALUES ('1605', '南关区', '43.9045143', '125.3191605', '长春广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('1606', '二道区', '43.83839', '125.364817', '吉林体育学院（临河校区）');
INSERT INTO `tp_schooljw` VALUES ('1607', '二道区', '43.886841', '125.3245', '长春师范大学');
INSERT INTO `tp_schooljw` VALUES ('1608', '二道区', '43.86531', '125.514004', '吉林科技职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1609', '二道区', '43.8641645', '125.3867173', '吉刚汽车学院');
INSERT INTO `tp_schooljw` VALUES ('1610', '二道区', '43.872276', '125.387691', '长春市技师学院');
INSERT INTO `tp_schooljw` VALUES ('1611', '二道区', '43.883937', '125.427183', '长春医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1612', '二道区', '43.890689306106', '125.39749340757', '长春师范大学乐群校区');
INSERT INTO `tp_schooljw` VALUES ('1613', '二道区', '43.9166933', '125.3360128', '吉林公共关系专修学院');
INSERT INTO `tp_schooljw` VALUES ('1614', '二道区', '43.833344', '125.366158', '长春职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1615', '经济技术开发区', '43.8751542', '125.3679031', '长春大学光华学院（A区）');
INSERT INTO `tp_schooljw` VALUES ('1616', '经济技术开发区', '43.8751542', '125.3679031', '长春大学光华学院（B区）');
INSERT INTO `tp_schooljw` VALUES ('1617', '经济技术开发区', '25.679151620054', '112.88447492752', '长春工业大学（北湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1618', '九台经济技术开发区', '44.0020949', '125.5408302', '吉林工商学院（卡伦湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1619', '九台经济技术开发区', '43.981988', '125.545877', '九台长春大学');
INSERT INTO `tp_schooljw` VALUES ('1620', '净月旅游开发区', '43.779601', '125.430385', '长春工业大学人文信息学院');
INSERT INTO `tp_schooljw` VALUES ('1621', '净月旅游开发区', '43.795122', '125.406845', '吉林建筑大学');
INSERT INTO `tp_schooljw` VALUES ('1622', '净月旅游开发区', '43.829732', '125.420322', '长春中医药大学');
INSERT INTO `tp_schooljw` VALUES ('1623', '净月旅游开发区', '43.817362', '125.4428732', '吉林财经大学');
INSERT INTO `tp_schooljw` VALUES ('1624', '净月旅游开发区', '43.827379', '125.427422', '东北师范大学（净月校区）');
INSERT INTO `tp_schooljw` VALUES ('1625', '净月旅游开发区', '43.81387', '125.406601', '吉林农业大学');
INSERT INTO `tp_schooljw` VALUES ('1626', '净月旅游开发区', '43.8246346', '125.4136948', '吉林警察学院');
INSERT INTO `tp_schooljw` VALUES ('1627', '净月旅游开发区', '43.822054', '125.440489', '吉林华桥外国语学院');
INSERT INTO `tp_schooljw` VALUES ('1628', '净月旅游开发区', '43.873413', '125.334901', '长春东方大学');
INSERT INTO `tp_schooljw` VALUES ('1629', '净月旅游开发区', '43.8240078', '125.4124086', '东北师范大学人文学院');
INSERT INTO `tp_schooljw` VALUES ('1630', '净月旅游开发区', '43.827379', '125.427422', '吉林大学净月校区');
INSERT INTO `tp_schooljw` VALUES ('1631', '净月旅游开发区', '43.829732', '125.420322', '吉林中医药大学');
INSERT INTO `tp_schooljw` VALUES ('1632', '净月旅游开发区', '43.8205973', '125.4396822', '长春财经学院');
INSERT INTO `tp_schooljw` VALUES ('1633', '大东区', '41.7648332', '123.4497238', '沈阳大学');
INSERT INTO `tp_schooljw` VALUES ('1634', '大东区', '41.836007681806', '123.46200435577', '沈阳音乐学院（柳条湖街）');
INSERT INTO `tp_schooljw` VALUES ('1635', '大东区', '41.945761', '123.491643', '沈阳职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1636', '大东区', '41.62159835334', '122.75358266449', '辽宁商贸职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1637', '东陵区', '41.914688', '123.721703', '辽宁何氏医学院');
INSERT INTO `tp_schooljw` VALUES ('1638', '和平区', '41.770861454167', '123.42600925399', '东北大学（南湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1639', '和平区', '41.793213', '123.412273', '中国医科大学');
INSERT INTO `tp_schooljw` VALUES ('1640', '和平区', '41.798535916451', '123.41853535215', '中国医科大学理工学部');
INSERT INTO `tp_schooljw` VALUES ('1641', '和平区', '41.7484216', '123.50644', '沈阳音乐学院（沈阳校区）');
INSERT INTO `tp_schooljw` VALUES ('1642', '和平区', '41.776274', '123.428802', '鲁迅美术学院（沈阳）');
INSERT INTO `tp_schooljw` VALUES ('1643', '皇姑区', '41.839561513682', '123.41821196216', '辽宁大学（崇山校区）');
INSERT INTO `tp_schooljw` VALUES ('1644', '皇姑区', '41.9064788', '123.4103105', '沈阳师范大学');
INSERT INTO `tp_schooljw` VALUES ('1645', '皇姑区', '41.831508', '123.433675', '辽宁中医药大学（沈阳）');
INSERT INTO `tp_schooljw` VALUES ('1646', '皇姑区', '41.8327443', '123.4504237', '辽宁民族师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1647', '浑南新区', '41.746681', '123.513618', '沈阳建筑大学');
INSERT INTO `tp_schooljw` VALUES ('1648', '浑南新区', '41.6531382', '123.4246548', '东北大学（浑南校区）');
INSERT INTO `tp_schooljw` VALUES ('1649', '浑南新区', '41.945761', '123.491643', '沈阳城市建设学院');
INSERT INTO `tp_schooljw` VALUES ('1650', '浑南新区', '41.726775', '123.4912211', '沈阳理工大学');
INSERT INTO `tp_schooljw` VALUES ('1651', '浑南新区', '41.7484', '123.50642', '沈阳音乐学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('1652', '浑南新区', '41.824937', '123.539181', '沈阳理工继续教育学院');
INSERT INTO `tp_schooljw` VALUES ('1653', '沈北新区', '41.932381029777', '123.40193466632', '辽宁大学（蒲河校区）');
INSERT INTO `tp_schooljw` VALUES ('1654', '沈北新区', '41.886435', '123.415603', '沈阳医学院');
INSERT INTO `tp_schooljw` VALUES ('1655', '沈北新区', '41.917538', '123.40311', '沈阳航空航天大学');
INSERT INTO `tp_schooljw` VALUES ('1656', '沈北新区', '41.9195471', '123.3490924', '辽宁广告职业学院');
INSERT INTO `tp_schooljw` VALUES ('1657', '沈北新区', '41.939421', '123.511502', '辽宁交通高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1658', '沈北新区', '41.9393586', '123.5187894', '辽宁金融职业学院');
INSERT INTO `tp_schooljw` VALUES ('1659', '沈北新区', '41.936533', '123.492541', '辽宁经济管理干部学院');
INSERT INTO `tp_schooljw` VALUES ('1660', '沈北新区', '41.62159835334', '122.75358266449', '辽宁水利职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1661', '沈北新区', '39.202457', '121.705624', '辽宁装备制造职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1662', '沈北新区', '41.855196', '123.416792', '沈阳北方软件学院');
INSERT INTO `tp_schooljw` VALUES ('1663', '沈北新区', '41.945761', '123.491643', '辽宁城市建设职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1664', '沈北新区', '41.9163078', '123.4143605', '沈阳工程学院');
INSERT INTO `tp_schooljw` VALUES ('1665', '沈北新区', '41.9584264', '123.4892456', '中国医科大学（沈北校区）');
INSERT INTO `tp_schooljw` VALUES ('1666', '沈北新区', '41.85305', '123.449915', '辽宁传媒学院');
INSERT INTO `tp_schooljw` VALUES ('1667', '沈北新区', '40.665548721681', '122.25226530854', '辽宁现代服务职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1668', '沈河区', '41.827669', '123.567962', '沈阳农业大学');
INSERT INTO `tp_schooljw` VALUES ('1669', '沈河区', '41.769151', '123.446039', '沈阳药科大学');
INSERT INTO `tp_schooljw` VALUES ('1670', '沈河区', '41.770511748408', '123.4590579137', '辽宁金杯技师学院（华文校区）');
INSERT INTO `tp_schooljw` VALUES ('1671', '苏家屯区', '41.7458136', '123.5262927', '沈阳城市学院');
INSERT INTO `tp_schooljw` VALUES ('1672', '苏家屯区', '0', '0', '沈阳师范大学海华学院');
INSERT INTO `tp_schooljw` VALUES ('1673', '苏家屯区', '41.678208', '123.419588', '辽宁中医药大学杏林学院');
INSERT INTO `tp_schooljw` VALUES ('1674', '苏家屯区', '41.67393', '123.420193', '沈阳化工大学科亚学院');
INSERT INTO `tp_schooljw` VALUES ('1675', '苏家屯区', '41.580877', '123.714074', '沈阳体育学院');
INSERT INTO `tp_schooljw` VALUES ('1676', '苏家屯区', '41.6593652', '123.3333426', '辽宁林业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1677', '苏家屯区', '41.62159835334', '122.75358266449', '辽宁医药职业学院');
INSERT INTO `tp_schooljw` VALUES ('1678', '铁西区', '41.781788', '123.350929', '沈阳工业大学（兴顺校区）');
INSERT INTO `tp_schooljw` VALUES ('1679', '铁西区', '41.808638532893', '123.43278247753', '沈阳药科大学高职');
INSERT INTO `tp_schooljw` VALUES ('1680', '于洪区', '41.736968', '123.250031', '沈阳工业大学（中央校区）');
INSERT INTO `tp_schooljw` VALUES ('1681', '于洪区', '41.743273', '123.233043', '沈阳化工大学');
INSERT INTO `tp_schooljw` VALUES ('1682', '于洪区', '41.79502', '123.322934', '沈阳警官学校');
INSERT INTO `tp_schooljw` VALUES ('1683', '新城区', '40.842942', '111.655849', '呼和浩特民族学院');
INSERT INTO `tp_schooljw` VALUES ('1684', '新城区', '0', '0', '内蒙古财经大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1685', '新城区', '40.853227250236', '111.69034844442', '内蒙古工业大学（新城校区）');
INSERT INTO `tp_schooljw` VALUES ('1686', '新城区', '40.8394898', '111.656617', '呼和浩特职业学院（通道北路）');
INSERT INTO `tp_schooljw` VALUES ('1687', '新城区', '40.857415', '111.674654', '内蒙古体育职业学院');
INSERT INTO `tp_schooljw` VALUES ('1688', '新城区', '40.83536', '111.664639', '内蒙古丰州职业学院');
INSERT INTO `tp_schooljw` VALUES ('1689', '新城区', '40.87073', '111.694924', '内蒙古警察职业学院');
INSERT INTO `tp_schooljw` VALUES ('1690', '新城区', '40.899649332276', '111.70163116163', '内蒙古能源职业学院');
INSERT INTO `tp_schooljw` VALUES ('1691', '新城区', '40.848957', '111.779892', '内蒙古师范大学鸿德学院');
INSERT INTO `tp_schooljw` VALUES ('1692', '新城区', '40.882319895653', '111.64396893094', '内蒙古师范大学青年政治学院');
INSERT INTO `tp_schooljw` VALUES ('1693', '新城区', '40.829934', '111.700917', '内蒙古大学艺术学院');
INSERT INTO `tp_schooljw` VALUES ('1694', '新城区', '40.7897873', '111.7049035', '内蒙古广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('1695', '新城区', '40.849209461874', '111.70001421171', '内蒙古电子信息职业技术学院附属中专');
INSERT INTO `tp_schooljw` VALUES ('1696', '赛罕区', '0', '0', '内蒙古经贸外语职业学院');
INSERT INTO `tp_schooljw` VALUES ('1697', '赛罕区', '40.8046554', '111.6968841', '内蒙古师范大学（昭乌达路）');
INSERT INTO `tp_schooljw` VALUES ('1698', '赛罕区', '40.818259490671', '111.69712166797', '内蒙古大学（北校区）');
INSERT INTO `tp_schooljw` VALUES ('1699', '赛罕区', '40.816512321027', '111.71756710138', '内蒙古农业大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1700', '赛罕区', '40.839714', '111.64889', '内蒙古机电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1701', '赛罕区', '41.2762982', '112.6364249', '内蒙古商贸职业学院');
INSERT INTO `tp_schooljw` VALUES ('1702', '赛罕区', '40.8277224', '111.7267649', '内蒙古电子信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1703', '赛罕区', '40.898919', '111.836065', '呼和浩特职业学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1704', '赛罕区', '40.895081', '111.841811', '内蒙古北方职业技术学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1705', '赛罕区', '40.831962244082', '111.72579557985', '内蒙古化工职业学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1706', '赛罕区', '40.816512321027', '111.71756710138', '内蒙古农业大学(西校区)');
INSERT INTO `tp_schooljw` VALUES ('1707', '赛罕区', '40.816512321027', '111.71756710138', '内蒙古农业大学(南校区）');
INSERT INTO `tp_schooljw` VALUES ('1708', '赛罕区', '40.816512321027', '111.71756710138', '内蒙古农业大学（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1709', '赛罕区', '40.81495', '111.700189', '内蒙古大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1710', '回民区', '40.862653423022', '111.63653994438', '内蒙古财经大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('1711', '回民区', '40.873649', '111.633439', '内蒙古建筑职业技术学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('1712', '回民区', '38.117215943532', '114.4535002609', '内蒙古医科大学（新华校区）');
INSERT INTO `tp_schooljw` VALUES ('1713', '玉泉区', '38.4712392', '106.2282433', '内蒙古大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('1714', '玉泉区', '40.759326', '111.671446', '内蒙古大学创业学院');
INSERT INTO `tp_schooljw` VALUES ('1715', '金川开发区', '40.7884293', '111.5529251', '内蒙古工业大学（金川校区）');
INSERT INTO `tp_schooljw` VALUES ('1716', '金川开发区', '30.835078318026', '121.24839991809', '内蒙古医科大学(金山校区)');
INSERT INTO `tp_schooljw` VALUES ('1717', '盛乐经济园区', '40.494434', '111.789037', '内蒙古师范大学（盛乐校区）');
INSERT INTO `tp_schooljw` VALUES ('1718', '舟山市', '30.0381527', '122.1075663', '浙江海洋学院');
INSERT INTO `tp_schooljw` VALUES ('1719', '舟山市', '29.9861442', '122.1881488', '浙江海运职业学院');
INSERT INTO `tp_schooljw` VALUES ('1720', '舟山市', '30.038079', '122.106963', '浙江海洋学院东海科学技术学院');
INSERT INTO `tp_schooljw` VALUES ('1721', '德阳市', '31.1301659', '104.4125988', '四川司法警官职业学院');
INSERT INTO `tp_schooljw` VALUES ('1722', '德阳市', '31.091347', '104.388725', '四川工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1723', '德阳市', '30.950872', '104.310493', '中国民用航空飞行学院');
INSERT INTO `tp_schooljw` VALUES ('1724', '德阳市', '31.085667', '104.379656', '四川建筑职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1725', '德阳市', '31.323047', '104.499607', '四川工业科技学院');
INSERT INTO `tp_schooljw` VALUES ('1726', '德阳市', '30.5537694', '104.2654434', '四川航天职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1727', '德阳市', '31.00647552925', '104.29847087752', '四川师范大学广汉分院');
INSERT INTO `tp_schooljw` VALUES ('1728', '德阳市', '31.012348492049', '104.24318915644', '四川航天职业技术学院（广汉校区）');
INSERT INTO `tp_schooljw` VALUES ('1729', '南充市', '30.7974055', '106.0887082', '西华师范大学');
INSERT INTO `tp_schooljw` VALUES ('1730', '南充市', '30.850018', '106.156555', '南充职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1731', '南充市', '30.799699265935', '106.08604494405', '川北医学院（顺庆校区）');
INSERT INTO `tp_schooljw` VALUES ('1732', '南充市', '30.779467', '106.1287', '川北医学院（高坪校区）');
INSERT INTO `tp_schooljw` VALUES ('1733', '南充市', '30.805391196103', '106.09550410107', '西华师范大学（老区）');
INSERT INTO `tp_schooljw` VALUES ('1734', '咸阳市', '34.328289', '108.691919', '陕西科技大学（咸阳校区）');
INSERT INTO `tp_schooljw` VALUES ('1735', '咸阳市', '34.301016', '108.725086', '陕西科技大学镐京学院');
INSERT INTO `tp_schooljw` VALUES ('1736', '咸阳市', '34.284783', '108.074238', '西北农林科技大学（北校区）');
INSERT INTO `tp_schooljw` VALUES ('1737', '咸阳市', '34.31828', '108.740698', '陕西中医药大学');
INSERT INTO `tp_schooljw` VALUES ('1738', '咸阳市', '34.359746', '108.728298', '咸阳师范学院');
INSERT INTO `tp_schooljw` VALUES ('1739', '咸阳市', '34.2993055', '108.7178069', '陕西国际商贸学院');
INSERT INTO `tp_schooljw` VALUES ('1740', '咸阳市', '34.304104', '108.721424', '陕西服装工程学院');
INSERT INTO `tp_schooljw` VALUES ('1741', '咸阳市', '34.351264', '108.715117', '陕西工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1742', '咸阳市', '34.356628', '108.714321', '陕西能源职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1743', '咸阳市', '34.354188', '108.699888', '陕西财经职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1744', '咸阳市', '34.355614', '108.708427', '陕西邮电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1745', '咸阳市', '34.3010174', '108.7377297', '咸阳职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1746', '咸阳市', '34.061057', '109.204886', '陕西旅游烹饪职业学院');
INSERT INTO `tp_schooljw` VALUES ('1747', '咸阳市', '31.36730900485', '89.137975395893', '西藏民族大学');
INSERT INTO `tp_schooljw` VALUES ('1748', '咸阳市', '34.277482', '108.084734', '杨凌职业技术学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('1749', '咸阳市', '34.271034356438', '108.08587063647', '杨凌职业技术学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('1750', '咸阳市', '34.2763794', '108.074497', '杨凌职业技术学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1751', '咸阳市', '34.267916857287', '108.07822605658', '西北农林科技大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('1752', '温州市', '27.9160755', '120.7000165', '温州大学');
INSERT INTO `tp_schooljw` VALUES ('1753', '温州市', '27.925146', '120.71201', '温州医科大学');
INSERT INTO `tp_schooljw` VALUES ('1754', '温州市', '27.917671', '120.69168', '温州大学城市学院');
INSERT INTO `tp_schooljw` VALUES ('1755', '温州市', '27.924145', '120.704169', '温州大学瓯江学院');
INSERT INTO `tp_schooljw` VALUES ('1756', '温州市', '27.920682', '120.7001116', '温州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1757', '温州市', '27.983082', '120.632922', '温州科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('1758', '温州市', '28.002923', '120.699933', '浙江工贸职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1759', '温州市', '27.964929', '120.750433', '浙江东方职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1760', '温州市', '27.924525512615', '120.70355964321', '温州大学（城院、瓯江混合）');
INSERT INTO `tp_schooljw` VALUES ('1761', '温州市', '28.006789', '120.684498', '温州大学（学院路校区）');
INSERT INTO `tp_schooljw` VALUES ('1762', '开发区', '37.466542', '118.54901', '中国石油大学（华东）');
INSERT INTO `tp_schooljw` VALUES ('1763', '开发区', '36.147346', '120.38781', '山东科技大学（青岛校区）');
INSERT INTO `tp_schooljw` VALUES ('1764', '开发区', '35.987534093796', '120.17271500211', '青岛滨海学院（开发区）');
INSERT INTO `tp_schooljw` VALUES ('1765', '开发区', '35.9673354', '120.191768', '青岛开发区职业中专');
INSERT INTO `tp_schooljw` VALUES ('1766', '崂山区', '36.158801', '120.420564', '青岛科技大学');
INSERT INTO `tp_schooljw` VALUES ('1767', '崂山区', '36.1199499', '120.4821577', '青岛大学（崂山校区）');
INSERT INTO `tp_schooljw` VALUES ('1768', '崂山区', '36.163934', '120.497274', '中国海洋大学（崂山校区）');
INSERT INTO `tp_schooljw` VALUES ('1769', '城阳区', '36.3149529', '120.3964663', '青岛农业大学');
INSERT INTO `tp_schooljw` VALUES ('1770', '城阳区', '36.304978', '120.506795', '青岛理工大学琴岛学院');
INSERT INTO `tp_schooljw` VALUES ('1771', '城阳区', '36.2328132', '120.3587908', '青岛求实职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1772', '市南区', '36.0648205', '120.339632', '青岛大学（中心校区）');
INSERT INTO `tp_schooljw` VALUES ('1773', '市南区', '36.0777824', '120.3952931', '青岛远洋船员职业学院');
INSERT INTO `tp_schooljw` VALUES ('1774', '市南区', '36.065077', '120.3359384', '中国海洋大学（鱼山校区）');
INSERT INTO `tp_schooljw` VALUES ('1775', '市南区', '36.080654228003', '120.39045527467', '山东外贸职业学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('1776', '李沧区', '36.105210891762', '120.3844276447', '青岛恒星科技学院');
INSERT INTO `tp_schooljw` VALUES ('1777', '李沧区', '36.179897752381', '120.44281750285', '山东外贸职业学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('1778', '李沧区', '36.170654', '120.488959', '青岛酒店管理职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1779', '黄岛区', '35.923821', '120.112203', '青岛黄海学院（黄岛区）');
INSERT INTO `tp_schooljw` VALUES ('1780', '黄岛区', '36.0756601', '120.4174654', '青岛港湾职业技术学院（黄岛区）');
INSERT INTO `tp_schooljw` VALUES ('1781', '黄岛区', '35.970457', '120.160312', '青岛职业技术学院（黄岛区）');
INSERT INTO `tp_schooljw` VALUES ('1782', '黄岛区', '35.96521898356', '120.21681281959', '青岛理工大学（老校区）');
INSERT INTO `tp_schooljw` VALUES ('1783', '黄岛区', '35.967572', '120.208591', '青岛理工大学（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1784', '胶州市', '36.240091', '120.022612', '青岛工学院');
INSERT INTO `tp_schooljw` VALUES ('1785', '市北区', '36.105706611661', '120.37815747224', '青岛理工大学（四方校区）');
INSERT INTO `tp_schooljw` VALUES ('1786', '市北区', '36.147346', '120.38781', '青岛科技大学（四方校区）');
INSERT INTO `tp_schooljw` VALUES ('1787', '市北区', '36.383307487301', '120.35478356287', '青岛市技师学院（良友分部）');
INSERT INTO `tp_schooljw` VALUES ('1788', '北市区', '38.870612', '115.5149', '河北大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('1789', '北市区', '38.9321137', '115.4485366', '保定学院');
INSERT INTO `tp_schooljw` VALUES ('1790', '北市区', '38.8787724', '115.5139297', '中央司法警官学院');
INSERT INTO `tp_schooljw` VALUES ('1791', '北市区', '39.588802', '116.754534', '河北大学（新区）');
INSERT INTO `tp_schooljw` VALUES ('1792', '北市区', '38.919755', '115.500112', '河北金融学院');
INSERT INTO `tp_schooljw` VALUES ('1793', '北市区', '38.866943', '115.543233', '河北软件职业技术学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1794', '北市区', '38.8710777', '115.523639', '保定职业技术学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1795', '北市区', '38.882881834924', '115.51229703329', '华北电力大学（一校区）');
INSERT INTO `tp_schooljw` VALUES ('1796', '北市区', '38.882881834924', '115.51229703329', '华北电力大学（二校区）');
INSERT INTO `tp_schooljw` VALUES ('1797', '北市区', '38.886675', '115.491477', '华北电力大学科技学院');
INSERT INTO `tp_schooljw` VALUES ('1798', '北市区', '38.886097637001', '115.52616687036', '保定职业技术学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1799', '南市区', '38.82742', '115.453264', '河北农业大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1800', '南市区', '38.8142475', '115.4968716', '河北科技学院');
INSERT INTO `tp_schooljw` VALUES ('1801', '南市区', '38.85634938066', '115.48999210747', '河北农业大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1802', '南市区', '38.8535743', '115.5192584', '河北大学（医学部）');
INSERT INTO `tp_schooljw` VALUES ('1803', '南市区', '38.814229', '115.487643', '中国地质大学长城学院');
INSERT INTO `tp_schooljw` VALUES ('1804', '南市区', '0', '0', '河北软件职业技术学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1805', '常州市', '31.6754824', '119.9551658', '常州信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1806', '常州市', '31.675862', '119.947232', '常州机电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1807', '常州市', '31.746158', '119.994447', '常州轻工职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1808', '常州市', '31.771395286508', '119.98186101346', '常州纺织职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1809', '常州市', '31.6867968', '119.9472406', '常州工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1810', '常州市', '31.6881399', '119.940688', '常州大学武进校区');
INSERT INTO `tp_schooljw` VALUES ('1811', '常州市', '31.771395286508', '119.98186101346', '常州卫生高等职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1812', '常州市', '31.782742', '119.90583', '常州大学（白云校区）');
INSERT INTO `tp_schooljw` VALUES ('1813', '芜湖市', '31.339709302937', '118.38117940828', '安徽师范大学（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1814', '芜湖市', '31.2866634', '118.3680357', '安徽商贸职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1815', '芜湖市', '31.34241', '118.373041', '皖南医学院');
INSERT INTO `tp_schooljw` VALUES ('1816', '芜湖市', '31.3289629', '118.3622747', '安徽机电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1817', '芜湖市', '31.2852725', '118.3567414', '芜湖职业技术学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('1818', '芜湖市', '31.3001621', '118.3760979', '安徽中医药高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1819', '芜湖市', '32.0733797', '118.7778711', '安徽工程大学机电学院');
INSERT INTO `tp_schooljw` VALUES ('1820', '芜湖市', '31.286552997524', '118.37522364275', '芜湖职业技术学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('1821', '芜湖市', '31.335534', '118.408653', '安徽工程大学');
INSERT INTO `tp_schooljw` VALUES ('1822', '芜湖市', '31.339709302937', '118.38117940828', '安徽师范大学（老校区）');
INSERT INTO `tp_schooljw` VALUES ('1823', '吴中区', '31.248448', '120.576747', '苏州科技学院石湖校区');
INSERT INTO `tp_schooljw` VALUES ('1824', '吴中区', '31.3404804', '120.6078123', '苏州经贸职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1825', '吴中区', '31.216841', '120.586417', '苏州大学文正学院');
INSERT INTO `tp_schooljw` VALUES ('1826', '吴中区', '31.2551533', '120.5724293', '苏州技师学院');
INSERT INTO `tp_schooljw` VALUES ('1827', '吴中区', '31.219974', '120.593393', '苏州工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1828', '吴中区', '31.314330406683', '120.67134642459', '苏州旅游与财经职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1829', '吴中区', '31.2314449', '120.5885231', '苏州工艺美术职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1830', '吴中区', '31.375911', '120.501595', '苏州市职业大学');
INSERT INTO `tp_schooljw` VALUES ('1831', '吴中区', '31.29822', '120.622213', '苏州卫生职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1832', '工业园区', '31.272634', '120.730677', '苏州大学（独墅湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1833', '工业园区', '0', '0', '文荟学生公寓');
INSERT INTO `tp_schooljw` VALUES ('1834', '工业园区', '0', '0', '文星学生公寓');
INSERT INTO `tp_schooljw` VALUES ('1835', '工业园区', '31.2746722', '120.7381529', '西交利物浦大学');
INSERT INTO `tp_schooljw` VALUES ('1836', '工业园区', '31.257174', '120.747298', '苏州工业园区服务外包职业学院');
INSERT INTO `tp_schooljw` VALUES ('1837', '工业园区', '31.3415657', '120.6704623', '苏州工业园区职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1838', '工业园区', '31.27557', '120.743274', '苏州港大思培科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('1839', '姑苏区', '31.281291251771', '120.73695865903', '苏州大学（本部校区）');
INSERT INTO `tp_schooljw` VALUES ('1840', '姑苏区', '31.315243', '120.583739', '苏州农业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1841', '高新区', '31.3053143', '120.5644483', '苏州科技学院（江枫校区）');
INSERT INTO `tp_schooljw` VALUES ('1842', '高新区', '31.265547', '120.556485', '苏州科技学院天平学院');
INSERT INTO `tp_schooljw` VALUES ('1843', '高新区', '31.322489', '120.419411', '苏州高博软件技术职业学院');
INSERT INTO `tp_schooljw` VALUES ('1844', '吴江区', '31.13279', '120.63369', '苏州信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1845', '张家港', '31.893633', '120.571503', '沙洲职业工学院');
INSERT INTO `tp_schooljw` VALUES ('1846', '张家港', '31.859068', '120.538133', '江苏科技大学（张家港校区）');
INSERT INTO `tp_schooljw` VALUES ('1847', '太仓', '31.457215', '121.120448', '健雄职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1848', '常熟', '31.589054', '120.777428', '常熟理工学院（东南校区）');
INSERT INTO `tp_schooljw` VALUES ('1849', '常熟', '31.613073', '120.736351', '常熟理工学院（东湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1850', '昆山', '31.2825172', '121.1396113', '硅湖职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1851', '昆山', '31.46274', '120.848132', '苏州托普信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1852', '昆山', '31.3898753', '120.8901215', '昆山登云科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('1853', '昆山', '31.150382', '120.8408823', '苏州大学应用技术学院');
INSERT INTO `tp_schooljw` VALUES ('1854', '崇川区', '32.015602', '120.904746', '南通大学（钟秀校区）');
INSERT INTO `tp_schooljw` VALUES ('1855', '崇川区', '32.0092282', '120.8700556', '南通大学（启秀校区）');
INSERT INTO `tp_schooljw` VALUES ('1856', '崇川区', '0', '0', '江苏工程职业技术学院（校内）');
INSERT INTO `tp_schooljw` VALUES ('1857', '崇川区', '31.978857581693', '120.91592806579', '南通大学（主校区）');
INSERT INTO `tp_schooljw` VALUES ('1858', '崇川区', '32.014663163074', '120.87379753737', '南通科技职业技术学院（校内）');
INSERT INTO `tp_schooljw` VALUES ('1859', '崇川区', '32.014770321299', '120.90023466853', '南通职业大学（校内）');
INSERT INTO `tp_schooljw` VALUES ('1860', '崇川区', '32.014663163074', '120.87379753737', '南通开放大学');
INSERT INTO `tp_schooljw` VALUES ('1861', '崇川区', '32.026466', '120.880739', '南通大学生公寓');
INSERT INTO `tp_schooljw` VALUES ('1862', '崇川区', '32.014770321299', '120.90023466853', '南通职业大学（育才）');
INSERT INTO `tp_schooljw` VALUES ('1863', '崇川区', '32.012141', '120.900786', '南通师范学院');
INSERT INTO `tp_schooljw` VALUES ('1864', '崇川区', '31.972989', '120.8857731', '南通航运职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1865', '港闸区', '32.014663163074', '120.87379753737', '南通理工学院');
INSERT INTO `tp_schooljw` VALUES ('1866', '港闸区', '32.051695', '120.886135', '江苏商贸职业学院');
INSERT INTO `tp_schooljw` VALUES ('1867', '海门市', '34.092313800276', '120.02660561091', '江苏工程职业技术学院（滨海校区）');
INSERT INTO `tp_schooljw` VALUES ('1868', '开发区', '32.0053131', '120.8950843', '南通体臣卫校');
INSERT INTO `tp_schooljw` VALUES ('1869', '镇江市', '32.19932', '119.514279', '江苏大学');
INSERT INTO `tp_schooljw` VALUES ('1870', '镇江市', '32.197581', '119.466296', '江苏科技大学');
INSERT INTO `tp_schooljw` VALUES ('1871', '镇江市', '32.2044706', '119.5088297', '江苏大学京江学院');
INSERT INTO `tp_schooljw` VALUES ('1872', '镇江市', '32.194666', '119.472925', '镇江高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1873', '镇江市', '32.0052416', '120.8930781', '江苏农林职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1874', '亭湖区', '33.378296', '120.20964', '盐城师范学院（新长校区）');
INSERT INTO `tp_schooljw` VALUES ('1875', '亭湖区', '33.383472', '120.205461', '盐城工学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1876', '亭湖区', '33.388584906818', '120.20747044229', '盐城工学院（老校区）');
INSERT INTO `tp_schooljw` VALUES ('1877', '亭湖区', '44.785711993821', '122.74529130464', '盐城师范学院（通榆校区）');
INSERT INTO `tp_schooljw` VALUES ('1878', '亭湖区', '33.388584906818', '120.20747044229', '盐城工学院（希望大道校区）');
INSERT INTO `tp_schooljw` VALUES ('1879', '盐都区', '33.379857656475', '120.14886499082', '盐城高等师范');
INSERT INTO `tp_schooljw` VALUES ('1880', '盐都区', '33.379857656475', '120.14886499082', '盐城机电高等职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1881', '盐都区', '33.327023101377', '120.18164415888', '盐城工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1882', '盐都区', '33.325494', '120.171751', '盐城卫生职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1883', '荆州市', '30.330292', '112.218838', '长江大学工程技术学院');
INSERT INTO `tp_schooljw` VALUES ('1884', '荆州市', '30.356014842542', '112.19265393644', '长江大学文理学院（城中区）');
INSERT INTO `tp_schooljw` VALUES ('1885', '荆州市', '30.3313496', '112.1984235', '荆州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1886', '荆州市', '30.3270826', '112.2531295', '荆州理工职业学院');
INSERT INTO `tp_schooljw` VALUES ('1887', '荆州市', '31.209309841437', '112.41055590399', '湖北中医药高等高职学校');
INSERT INTO `tp_schooljw` VALUES ('1888', '荆州市', '30.351865', '112.146836', '长江大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('1889', '荆州市', '30.334607', '112.219182', '长江大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1890', '奎文区', '37.0786408', '119.2004556', '潍坊学院');
INSERT INTO `tp_schooljw` VALUES ('1891', '奎文区', '36.710175', '119.171288', '山东畜牧兽医职业学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('1892', '奎文区', '36.718414240783', '119.16066604846', '山东信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1893', '奎文区', '36.710993643137', '119.13886417373', '潍坊医学院（奎文校区）');
INSERT INTO `tp_schooljw` VALUES ('1894', '潍城区', '36.7066643', '119.1312764', '潍坊医学院');
INSERT INTO `tp_schooljw` VALUES ('1895', '潍城区', '36.683994', '119.094474', '山东经贸职业学院');
INSERT INTO `tp_schooljw` VALUES ('1896', '潍城区', '36.698211', '119.065066', '潍坊商业学校');
INSERT INTO `tp_schooljw` VALUES ('1897', '潍城区', '36.805659', '118.027535', '山东科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('1898', '坊子区', '36.722370150865', '119.14800892382', '山东交通职业学院（潍坊校区）');
INSERT INTO `tp_schooljw` VALUES ('1899', '青州市', '36.654844', '117.061794', '山东师范大学历山学院');
INSERT INTO `tp_schooljw` VALUES ('1900', '青州市', '36.676005', '118.47534', '潍坊工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('1901', '滨海区', '36.713172', '119.14193', '潍坊职业学院');
INSERT INTO `tp_schooljw` VALUES ('1902', '寿光市', '36.8795652', '118.7716509', '潍坊科技学院');
INSERT INTO `tp_schooljw` VALUES ('1903', '马鞍山市', '31.697313045447', '118.5194825246', '安徽工业大学工商学院');
INSERT INTO `tp_schooljw` VALUES ('1904', '马鞍山市', '31.662903', '118.55097', '河海大学文天学院');
INSERT INTO `tp_schooljw` VALUES ('1905', '马鞍山市', '31.671989', '118.559274', '安徽工业大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('1906', '马鞍山市', '31.663449', '118.556895', '马鞍山职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1907', '马鞍山市', '31.655305', '118.497967', '马鞍山师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1908', '马鞍山市', '31.660697', '118.496657', '安徽冶金科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('1909', '巢湖市', '31.622832793801', '117.88041001869', '安徽长江职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1910', '西夏区', '38.496959', '106.1132798', '北方民族大学');
INSERT INTO `tp_schooljw` VALUES ('1911', '西夏区', '38.521664172437', '106.12897496437', '宁夏艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('1912', '西夏区', '38.505935', '106.142922', '宁夏建设职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1913', '西夏区', '38.0977954', '106.3836624', '宁夏工业职业学院');
INSERT INTO `tp_schooljw` VALUES ('1914', '西夏区', '37.967255', '106.15158', '宁夏职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1915', '西夏区', '38.501165', '106.112594', '宁夏工商职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1916', '西夏区', '38.495266', '106.136354', '宁夏财经职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1917', '西夏区', '38.505854', '106.146756', '宁夏司法警官职业学院');
INSERT INTO `tp_schooljw` VALUES ('1918', '西夏区', '38.4146595', '106.2837517', '宁夏大学A校区');
INSERT INTO `tp_schooljw` VALUES ('1919', '西夏区', '38.4146595', '106.2837517', '宁夏大学B校区');
INSERT INTO `tp_schooljw` VALUES ('1920', '西夏区', '38.4146595', '106.2837517', '宁夏大学C校区');
INSERT INTO `tp_schooljw` VALUES ('1921', '西夏区', '38.4723194', '106.2269928', '宁夏大学南校区');
INSERT INTO `tp_schooljw` VALUES ('1922', '西夏区', '38.49868', '106.117956', '宁夏大学新华学院');
INSERT INTO `tp_schooljw` VALUES ('1923', '西夏区', '38.512657', '106.152655', '中国矿业大学银川学院');
INSERT INTO `tp_schooljw` VALUES ('1924', '永宁县', '38.248061', '106.23577', '银川能源学院');
INSERT INTO `tp_schooljw` VALUES ('1925', '永宁县', '38.330958847349', '106.17400701959', '宁夏防沙治沙职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1926', '兴庆区', '37.321317157424', '106.15547497692', '宁夏幼儿师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1927', '兴庆区', '38.419795464021', '106.29036453229', '宁夏医科大学（雁湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1928', '兴庆区', '38.4374599', '106.2788901', '宁夏医科大学双怡校区');
INSERT INTO `tp_schooljw` VALUES ('1929', '延安市', '36.6172312', '109.464111', '延安大学');
INSERT INTO `tp_schooljw` VALUES ('1930', '延安市', '36.5678112', '109.4550481', '延安职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1931', '宝鸡市', '34.348457', '107.160605', '宝鸡文理学院');
INSERT INTO `tp_schooljw` VALUES ('1932', '宝鸡市', '34.3369736', '107.2976014', '宝鸡职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1933', '渭南市', '34.494582', '109.466427', '渭南师范学院');
INSERT INTO `tp_schooljw` VALUES ('1934', '渭南市', '34.518330844522', '109.41271278998', '陕西铁路工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1935', '渭南市', '34.519119034026', '109.41821041971', '渭南职业技术学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1936', '渭南市', '34.501040832948', '109.47307892026', '渭南师范学院（西岳校区）');
INSERT INTO `tp_schooljw` VALUES ('1937', '渭南市', '34.519119034026', '109.41821041971', '渭南职业技术学院（老校区）');
INSERT INTO `tp_schooljw` VALUES ('1938', '城北区', '36.729494', '101.751451', '青海大学');
INSERT INTO `tp_schooljw` VALUES ('1939', '城北区', '36.685623', '101.259285', '青海畜牧兽医职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1940', '城北区', '36.647706', '101.766017', '青海交通职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1941', '城北区', '0', '0', '西宁城市职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1942', '城北区', '36.6241378', '101.7596388', '青海昆仑学院');
INSERT INTO `tp_schooljw` VALUES ('1943', '城西区', '36.60107', '101.76079', '青海建筑职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1944', '城西区', '28.866683', '105.427726', '青海师范大学');
INSERT INTO `tp_schooljw` VALUES ('1945', '城中区', '36.626407', '101.7877', '青海卫生职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1946', '城中区', '36.6022061', '101.7918758', '青海警官职业学院');
INSERT INTO `tp_schooljw` VALUES ('1947', '城东区', '36.5907858', '101.829578', '青海民族大学');
INSERT INTO `tp_schooljw` VALUES ('1948', '蚌埠市', '32.906334', '117.42865', '蚌埠医学院');
INSERT INTO `tp_schooljw` VALUES ('1949', '蚌埠市', '32.922339', '117.39258', '安徽财经大学');
INSERT INTO `tp_schooljw` VALUES ('1950', '蚌埠市', '32.6379577', '117.0125683', '蚌埠学院');
INSERT INTO `tp_schooljw` VALUES ('1951', '蚌埠市', '32.9009548', '117.4232058', '蚌埠电子信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1952', '新余市', '27.856917', '114.996856', '新余学院');
INSERT INTO `tp_schooljw` VALUES ('1953', '新余市', '27.757251810258', '115.67607607857', '江西新能源科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('1954', '新余市', '27.833867', '114.932022', '赣西科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('1955', '新余市', '27.757251810258', '115.67607607857', '江西工程学院（天工校区）');
INSERT INTO `tp_schooljw` VALUES ('1956', '新余市', '27.735248176386', '114.80382142867', '江西工程学院（仙女湖校区）');
INSERT INTO `tp_schooljw` VALUES ('1957', '驻马店', '33.000936', '114.002559', '驻马店职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1958', '驻马店', '33.0080102', '114.0070433', '黄淮学院');
INSERT INTO `tp_schooljw` VALUES ('1959', '信阳市', '32.108454666783', '114.07322957241', '信阳农林学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1960', '信阳市', '32.129885', '114.039413', '信阳师范学院');
INSERT INTO `tp_schooljw` VALUES ('1961', '信阳市', '32.1622', '114.135014', '信阳职业技术学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('1962', '信阳市', '32.129883', '114.039398', '信阳师范学院华锐学院');
INSERT INTO `tp_schooljw` VALUES ('1963', '周口', '33.630434', '114.72793', '周口科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('1964', '周口', '33.6330926', '114.6228932', '周口职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1965', '周口', '33.6315061', '114.6829714', '周口师范学院');
INSERT INTO `tp_schooljw` VALUES ('1966', '平顶山', '26.5091864', '106.6771152', '河南质量工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('1967', '平顶山', '33.7118358', '113.2875533', '平顶山工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1968', '平顶山', '34.21176', '112.996218', '平顶山学院');
INSERT INTO `tp_schooljw` VALUES ('1969', '平顶山', '33.769448', '113.189162', '河南城建学院');
INSERT INTO `tp_schooljw` VALUES ('1970', '平顶山', '33.7333234', '113.3111217', '平顶山教育学院');
INSERT INTO `tp_schooljw` VALUES ('1971', '南阳市', '32.9739862', '112.4956496', '南阳医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1972', '南阳市', '33.307379', '111.484187', '南阳职业学院');
INSERT INTO `tp_schooljw` VALUES ('1973', '南阳市', '32.9649415', '112.4936176', '南阳农业职业学院');
INSERT INTO `tp_schooljw` VALUES ('1974', '南阳市', '33.7118358', '113.2875533', '河南工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1975', '南阳市', '32.97506', '112.490251', '南阳师范学院');
INSERT INTO `tp_schooljw` VALUES ('1976', '南阳市', '32.977371', '112.546126', '南阳理工学院');
INSERT INTO `tp_schooljw` VALUES ('1977', '商丘市', '34.394332', '115.618099', '商丘医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1978', '商丘市', '33.913991', '116.456231', '永城职业学院');
INSERT INTO `tp_schooljw` VALUES ('1979', '商丘市', '34.3732616', '115.6571894', '商丘工学院');
INSERT INTO `tp_schooljw` VALUES ('1980', '商丘市', '34.3937415', '115.6860838', '商丘学院');
INSERT INTO `tp_schooljw` VALUES ('1981', '商丘市', '34.3732616', '115.6571894', '商丘职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1982', '商丘市', '34.4104812', '115.6165454', '商丘师范学院');
INSERT INTO `tp_schooljw` VALUES ('1983', '商丘市', '34.440858265775', '115.62895996987', '商丘师范学院（老校区）');
INSERT INTO `tp_schooljw` VALUES ('1984', '许昌市', '34.176253', '113.492093', '许昌陶瓷职业学院');
INSERT INTO `tp_schooljw` VALUES ('1985', '许昌市', '34.21176', '112.996218', '许昌学院');
INSERT INTO `tp_schooljw` VALUES ('1986', '漯河市', '33.568129', '114.010151', '漯河职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1987', '漯河市', '33.605068', '113.988873', '漯河食品职业学院');
INSERT INTO `tp_schooljw` VALUES ('1988', '漯河市', '33.5674222', '114.0134008', '漯河医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('1989', '安阳市', '36.033185', '114.380147', '安阳职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1990', '安阳市', '36.0242673', '114.3892268', '安阳师范学院人文管理学院');
INSERT INTO `tp_schooljw` VALUES ('1991', '安阳市', '36.0585959', '114.3710409', '安阳师范学院');
INSERT INTO `tp_schooljw` VALUES ('1992', '安阳市', '36.0626992', '114.3496406', '安阳工学院');
INSERT INTO `tp_schooljw` VALUES ('1993', '安阳市', '36.030642048385', '114.39669142044', '安阳师范学院人文管理学院（老校区）');
INSERT INTO `tp_schooljw` VALUES ('1994', '安阳市', '36.037376885919', '114.39612548797', '安阳职业技术学院医药卫生学院');
INSERT INTO `tp_schooljw` VALUES ('1995', '安阳市', '36.128185649613', '114.38863362002', '河南护理职业学院');
INSERT INTO `tp_schooljw` VALUES ('1996', '开封市', '34.822684', '114.339361', '开封文化艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('1997', '开封市', '34.799742', '114.313588', '开封大学');
INSERT INTO `tp_schooljw` VALUES ('1998', '开封市', '34.806641', '114.333624', '黄河水利职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('1999', '开封市', '34.799189', '114.351293', '河南大学民生学院');
INSERT INTO `tp_schooljw` VALUES ('2000', '开封市', '34.817963', '114.308058', '河南大学（金明校区）');
INSERT INTO `tp_schooljw` VALUES ('2001', '开封市', '34.822684', '114.339361', '开封教育学院');
INSERT INTO `tp_schooljw` VALUES ('2002', '开封市', '34.8081242', '114.3689501', '河南大学（明伦校区）');
INSERT INTO `tp_schooljw` VALUES ('2003', '新乡市', '35.279263', '114.041236', '新乡职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2004', '新乡市', '35.323292803144', '113.91033983429', '河南机电高等专科学校（老校区）');
INSERT INTO `tp_schooljw` VALUES ('2005', '新乡市', '35.3283892', '113.9074176', '新乡学院');
INSERT INTO `tp_schooljw` VALUES ('2006', '新乡市', '34.7765562', '113.8499042', '河南师范大学新联学院');
INSERT INTO `tp_schooljw` VALUES ('2007', '新乡市', '35.288084730996', '113.93899578006', '新乡医学院三全学院（新乡校区）');
INSERT INTO `tp_schooljw` VALUES ('2008', '新乡市', '34.708055', '113.512066', '河南科技学院');
INSERT INTO `tp_schooljw` VALUES ('2009', '新乡市', '35.282144', '113.931932', '新乡医学院');
INSERT INTO `tp_schooljw` VALUES ('2010', '新乡市', '35.32426', '113.920215', '河南师范大学');
INSERT INTO `tp_schooljw` VALUES ('2011', '新乡市', '35.317186', '113.903864', '河南机电高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2012', '鹤壁市', '35.7352582', '114.2819876', '鹤壁职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2013', '鹤壁市', '35.7026018', '114.3116933', '鹤壁汽车工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('2014', '洛阳市', '34.686501', '112.499404', '河南林业职业学院');
INSERT INTO `tp_schooljw` VALUES ('2015', '洛阳市', '34.606079', '112.435551', '洛阳理工学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2016', '洛阳市', '34.657596898505', '112.41952997604', '洛阳理工学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('2017', '洛阳市', '34.668389549444', '112.38101961883', '河南科技大学（开元校区菁园）');
INSERT INTO `tp_schooljw` VALUES ('2018', '洛阳市', '34.668389549444', '112.38101961883', '河南科技大学（周山校区）');
INSERT INTO `tp_schooljw` VALUES ('2019', '洛阳市', '34.665254', '112.37304', '河南科技大学（西苑校区）');
INSERT INTO `tp_schooljw` VALUES ('2020', '洛阳市', '34.6586176', '112.3978705', '河南科技大学景华校区');
INSERT INTO `tp_schooljw` VALUES ('2021', '洛阳市', '34.661263886758', '112.47910559746', '洛阳师范学院（老校区）');
INSERT INTO `tp_schooljw` VALUES ('2022', '洛阳市', '34.656844', '112.481256', '洛阳师范学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2023', '洛阳市', '34.668389549444', '112.38101961883', '河南科技大学（开元校区嘉园）');
INSERT INTO `tp_schooljw` VALUES ('2024', '洛阳市', '34.657366778398', '112.44752117573', '洛阳铁路工程学校（洛理伊滨校区）');
INSERT INTO `tp_schooljw` VALUES ('2025', '洛阳市', '34.7644472', '113.7003619', '河南推拿学院');
INSERT INTO `tp_schooljw` VALUES ('2026', '焦作市', '34.157177569375', '113.48679776939', '河南工信学院');
INSERT INTO `tp_schooljw` VALUES ('2027', '焦作市', '35.18807', '113.265768', '河南理工大学');
INSERT INTO `tp_schooljw` VALUES ('2028', '焦作市', '35.2410177', '113.2341779', '河南理工大学万方科技学院');
INSERT INTO `tp_schooljw` VALUES ('2029', '焦作市', '35.21978226079', '113.28320580861', '焦作大学（老校区）');
INSERT INTO `tp_schooljw` VALUES ('2030', '焦作市', '35.213233', '113.2718947', '焦作师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2031', '焦作市', '35.2333825', '113.2629604', '焦作大学');
INSERT INTO `tp_schooljw` VALUES ('2032', '焦作市', '35.087919', '113.4321259', '黄河交通学院（武陟）');
INSERT INTO `tp_schooljw` VALUES ('2033', '绵阳市', '31.4927419', '104.7887328', '绵阳职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2034', '绵阳市', '31.4943874', '104.7759692', '绵阳师范学院');
INSERT INTO `tp_schooljw` VALUES ('2035', '绵阳市', '31.535485', '104.697396', '西南科技大学');
INSERT INTO `tp_schooljw` VALUES ('2036', '绵阳市', '31.420544', '104.763777', '四川音乐学院绵阳艺术学院');
INSERT INTO `tp_schooljw` VALUES ('2037', '绵阳市', '31.438737236844', '104.64836985671', '四川汽车职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2038', '绵阳市', '31.787263', '104.786485', '四川幼儿师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2039', '绵阳市', '31.443077', '104.757967', '四川中医药高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2040', '绵阳市', '31.443738', '104.795135', '西南科技大学城市学院');
INSERT INTO `tp_schooljw` VALUES ('2041', '绵阳市', '31.494200670087', '104.69319530166', '西南财经大学天府学院（绵阳校区）');
INSERT INTO `tp_schooljw` VALUES ('2042', '绵阳市', '31.4496307', '104.6077666', '绵阳师范学院（磨家校区）');
INSERT INTO `tp_schooljw` VALUES ('2043', '泸州市', '30.487411320121', '106.65488792519', '四川医科大学(城北校区)');
INSERT INTO `tp_schooljw` VALUES ('2044', '泸州市', '28.865876', '105.426326', '泸州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2045', '泸州市', '28.8677237', '105.4191506', '四川化工职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2046', '泸州市', '28.87489', '105.433664', '四川警察学院');
INSERT INTO `tp_schooljw` VALUES ('2047', '泸州市', '28.882371', '105.444623', '四川医科大学(忠山校区)');
INSERT INTO `tp_schooljw` VALUES ('2048', '自贡市', '30.691293', '103.817994', '四川理工学院');
INSERT INTO `tp_schooljw` VALUES ('2049', '十堰市', '32.647796', '110.740597', '湖北汽车工业学院');
INSERT INTO `tp_schooljw` VALUES ('2050', '十堰市', '32.656687766221', '110.74676833674', '湖北汽车工业学院天津路校区');
INSERT INTO `tp_schooljw` VALUES ('2051', '十堰市', '32.622785', '110.779304', '湖北医药学院');
INSERT INTO `tp_schooljw` VALUES ('2052', '十堰市', '30.4430533', '114.3095258', '湖北工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2053', '十堰市', '32.55623', '111.542318', '郧阳师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2054', '襄阳市', '0', '0', '湖北文理学院理工学院（尹集校区）');
INSERT INTO `tp_schooljw` VALUES ('2055', '襄阳市', '0', '0', '襄阳职业技术学院（主校区）');
INSERT INTO `tp_schooljw` VALUES ('2056', '襄阳市', '28.013099384778', '120.67834420756', '襄阳职业技术学院医学院');
INSERT INTO `tp_schooljw` VALUES ('2057', '襄阳市', '0', '0', '湖北文理学院（新校区 ）');
INSERT INTO `tp_schooljw` VALUES ('2058', '襄阳市', '0', '0', '湖北文理学院（老校区）');
INSERT INTO `tp_schooljw` VALUES ('2059', '襄阳市', '0', '0', '襄阳汽车职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2060', '襄阳市', '0', '0', '襄阳职业技术学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2061', '滁州市', '32.249995', '118.306906', '滁州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2062', '滁州市', '32.3042741', '118.3206653', '滁州学院');
INSERT INTO `tp_schooljw` VALUES ('2063', '黄山市', '29.7134127', '118.2903939', '黄山学院');
INSERT INTO `tp_schooljw` VALUES ('2064', '环翠区', '37.4948672', '122.1281761', '山东交通学院海运学院');
INSERT INTO `tp_schooljw` VALUES ('2065', '荣成市', '37.16516', '122.486658', '哈尔滨理工大学（荣成校区）');
INSERT INTO `tp_schooljw` VALUES ('2066', '荣成市', '37.069749317773', '122.44592201038', '威海海洋职业学院');
INSERT INTO `tp_schooljw` VALUES ('2067', '高区', '37.5306447', '122.0602405', '山东大学（威海分校）');
INSERT INTO `tp_schooljw` VALUES ('2068', '高区', '37.52995', '122.0799389', '哈尔滨工业大学（威海）');
INSERT INTO `tp_schooljw` VALUES ('2069', '高区', '37.430611', '121.940641', '山东药品食品职业学院');
INSERT INTO `tp_schooljw` VALUES ('2070', '高区', '37.444362', '121.934305', '威海职业学院');
INSERT INTO `tp_schooljw` VALUES ('2071', '乳山区', '36.8282794', '121.687855', '山东外事翻译职业学院（乳山）');
INSERT INTO `tp_schooljw` VALUES ('2072', '运城市', '35.054599', '111.032984', '山西水利职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2073', '运城市', '35.0190916', '111.0009234', '山西运城农业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2074', '运城市', '35.634173949924', '111.21306076086', '运城护理职业技术学校');
INSERT INTO `tp_schooljw` VALUES ('2075', '运城市', '35.09791', '111.064043', '运城师范高等专科学院');
INSERT INTO `tp_schooljw` VALUES ('2076', '运城市', '35.072553', '111.005316', '运城职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2077', '运城市', '35.038853642824', '111.00684574799', '运城幼儿师范学院');
INSERT INTO `tp_schooljw` VALUES ('2078', '运城市', '35.0302882', '111.0208937', '运城学院');
INSERT INTO `tp_schooljw` VALUES ('2079', '廊坊市', '39.522408', '116.673255', '廊坊师范学院（安次区）');
INSERT INTO `tp_schooljw` VALUES ('2080', '廊坊市', '39.526285', '116.731368', '北华航天工业学院');
INSERT INTO `tp_schooljw` VALUES ('2081', '廊坊市', '39.527848353653', '116.68767589476', '河北石油职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2082', '廊坊市', '39.620354111941', '116.74591304097', '廊坊职业技术学院（大学城校区）');
INSERT INTO `tp_schooljw` VALUES ('2083', '廊坊市', '39.179635', '117.165882', '河北工业大学');
INSERT INTO `tp_schooljw` VALUES ('2084', '廊坊市', '39.620986332203', '116.75022490742', '北京中医药大学（廊坊校区）');
INSERT INTO `tp_schooljw` VALUES ('2085', '廊坊市', '39.615363', '116.744263', '廊坊东方职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2086', '雨湖区', '27.883972', '112.865903', '湘潭大学');
INSERT INTO `tp_schooljw` VALUES ('2087', '雨湖区', '27.876513', '112.860089', '湘潭大学兴湘学院');
INSERT INTO `tp_schooljw` VALUES ('2088', '雨湖区', '0', '0', '湖南科技大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2089', '雨湖区', '0', '0', '湖南科技大学（北校区）');
INSERT INTO `tp_schooljw` VALUES ('2090', '九华区', '28.0942637', '112.9637095', '湖南软件职业学院');
INSERT INTO `tp_schooljw` VALUES ('2091', '岳塘区', '27.819393980725', '112.93405240859', '湖南工程学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('2092', '岳塘区', '27.819393980725', '112.93405240859', '湖南工程学院（南校）');
INSERT INTO `tp_schooljw` VALUES ('2093', '岳塘区', '27.811867', '112.924924', '湖南电气职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2094', '岳塘区', '27.81456', '112.951002', '湖南城建学院高新校区');
INSERT INTO `tp_schooljw` VALUES ('2095', '岳塘区', '27.840692', '112.947787', '湘潭职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2096', '岳塘区', '27.835899', '112.921356', '湖南理工职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2097', '建华区', '47.359556736695', '123.93676779114', '齐齐哈尔大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('2098', '建华区', '47.356141', '123.954768', '齐齐哈尔医学院');
INSERT INTO `tp_schooljw` VALUES ('2099', '建华区', '47.314787', '123.97011', '齐齐哈尔高等师范专科学院');
INSERT INTO `tp_schooljw` VALUES ('2100', '建华区', '47.356422', '123.942947', '齐齐哈尔大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2101', '建华区', '47.352129', '123.932543', '齐齐哈尔大学（中校区）');
INSERT INTO `tp_schooljw` VALUES ('2102', '铁峰区', '47.327499', '123.988076', '黑龙江交通职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2103', '依安县', '47.355772052732', '123.93293202661', '黑龙江广播电视大学电大分校');
INSERT INTO `tp_schooljw` VALUES ('2104', '龙沙区', '47.301143', '123.964363', '齐齐哈尔工程学院');
INSERT INTO `tp_schooljw` VALUES ('2105', '湖州市', '30.8725749', '120.1210626', '湖州师范学院');
INSERT INTO `tp_schooljw` VALUES ('2106', '湖州市', '30.875423', '120.128508', '湖州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2107', '淮北市', '33.9456595', '116.7936866', '淮北职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2108', '淮北市', '33.989132278929', '116.81737324429', '淮北师范大学（相山校区）');
INSERT INTO `tp_schooljw` VALUES ('2109', '淮北市', '31.466577051785', '120.24849605493', '淮北师范大学（滨湖校区）');
INSERT INTO `tp_schooljw` VALUES ('2110', '亳州市', '33.8481078', '115.7693607', '亳州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2111', '亳州市', '33.258547', '116.556569', '亳州师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2112', '阜阳市', '32.893401', '115.786321', '阜阳师范学院');
INSERT INTO `tp_schooljw` VALUES ('2113', '阜阳市', '32.892325', '115.805247', '阜阳师范学院信息工程学院');
INSERT INTO `tp_schooljw` VALUES ('2114', '阜阳市', '32.8866872', '115.793696', '阜阳职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2115', '宿州市', '33.6311803', '116.993969', '宿州学院');
INSERT INTO `tp_schooljw` VALUES ('2116', '宿州市', '33.631505', '116.993513', '宿州学院（西区）');
INSERT INTO `tp_schooljw` VALUES ('2117', '宿州市', '33.7244436', '116.9760579', '宿州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2118', '集美区', '24.588466297546', '118.10129434444', '集美大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('2119', '集美区', '24.5921515', '118.0953413', '集美大学诚毅学院');
INSERT INTO `tp_schooljw` VALUES ('2120', '集美区', '24.588466297546', '118.10129434444', '集美大学师范学院');
INSERT INTO `tp_schooljw` VALUES ('2121', '集美区', '24.5717109', '118.0989575', '集美大学财经学院');
INSERT INTO `tp_schooljw` VALUES ('2122', '集美区', '24.5812163', '118.1038203', '集美大学水产学院');
INSERT INTO `tp_schooljw` VALUES ('2123', '集美区', '24.580661', '118.097829', '集美大学体育学院');
INSERT INTO `tp_schooljw` VALUES ('2124', '集美区', '24.599417', '118.086548', '华侨大学（厦门校区）');
INSERT INTO `tp_schooljw` VALUES ('2125', '集美区', '24.627639', '118.089741', '厦门工学院');
INSERT INTO `tp_schooljw` VALUES ('2126', '集美区', '24.617812', '118.081318', '厦门理工学院（集美校区）');
INSERT INTO `tp_schooljw` VALUES ('2127', '集美区', '24.616811', '118.073626', '厦门软件学院');
INSERT INTO `tp_schooljw` VALUES ('2128', '集美区', '24.624973', '118.081292', '厦门华厦学院');
INSERT INTO `tp_schooljw` VALUES ('2129', '集美区', '24.61565', '118.038006', '厦门兴才职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2130', '集美区', '24.588466297546', '118.10129434444', '集美大学机械学院');
INSERT INTO `tp_schooljw` VALUES ('2131', '集美区', '24.5667832', '118.0939915', '集美大学航海学院');
INSERT INTO `tp_schooljw` VALUES ('2132', '集美区', '24.57841', '118.1004888', '集美大学轮机工程学院');
INSERT INTO `tp_schooljw` VALUES ('2133', '集美区', '24.48922831057', '118.10388146431', '厦门工商旅游学院');
INSERT INTO `tp_schooljw` VALUES ('2134', '集美区', '24.6374626', '118.0878405', '福州大学厦门工艺美术学院');
INSERT INTO `tp_schooljw` VALUES ('2135', '思明区', '24.444588116906', '118.10100688667', '厦门大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('2136', '思明区', '24.494226620815', '118.1120650275', '厦门海洋学院（思明校区）');
INSERT INTO `tp_schooljw` VALUES ('2137', '思明区', '24.6013231', '118.1063699', '厦门城市职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2138', '思明区', '24.459497', '118.1626', '厦门医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2139', '思明区', '24.48922831057', '118.10388146431', '厦门科技专修学院');
INSERT INTO `tp_schooljw` VALUES ('2140', '翔安区', '24.6525241', '118.2505844', '厦门大学（翔安校区）');
INSERT INTO `tp_schooljw` VALUES ('2141', '翔安区', '24.603505', '118.248185', '厦门华天涉外职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2142', '翔安区', '24.590472', '118.260284', '厦门安防学院');
INSERT INTO `tp_schooljw` VALUES ('2143', '翔安区', '24.6065436', '118.0998773', '厦门技师学院');
INSERT INTO `tp_schooljw` VALUES ('2144', '翔安区', '24.606438316896', '118.2564227229', '厦门南洋职业学院（翔安校区）');
INSERT INTO `tp_schooljw` VALUES ('2145', '翔安区', '24.5901653', '118.2540497', '厦门海洋学院');
INSERT INTO `tp_schooljw` VALUES ('2146', '翔安区', '24.636417', '118.247773', '厦门演艺职业学院');
INSERT INTO `tp_schooljw` VALUES ('2147', '同安区', '24.744054', '118.170783', '厦门东海学院');
INSERT INTO `tp_schooljw` VALUES ('2148', '泉州市', '24.940225846426', '118.65175799466', '华侨大学（泉州校区）');
INSERT INTO `tp_schooljw` VALUES ('2149', '泉州市', '25.119811985554', '118.62038916626', '仰恩大学（旧校区）');
INSERT INTO `tp_schooljw` VALUES ('2150', '泉州市', '24.712275', '118.666285', '闽南理工学院（宝盖校区）');
INSERT INTO `tp_schooljw` VALUES ('2151', '泉州市', '24.867067', '118.66915', '泉州师范学院');
INSERT INTO `tp_schooljw` VALUES ('2152', '泉州市', '24.9157656', '118.5941062', '泉州医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2153', '泉州市', '24.876492', '118.658479', '泉州幼儿师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2154', '泉州市', '24.880555', '118.627502', '黎明职业大学');
INSERT INTO `tp_schooljw` VALUES ('2155', '泉州市', '24.901648287191', '118.6003569534', '泉州理工职业学院');
INSERT INTO `tp_schooljw` VALUES ('2156', '泉州市', '24.905958', '118.540595', '泉州经贸职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2157', '泉州市', '24.962717', '118.560091', '泉州信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2158', '泉州市', '24.945831', '118.59477', '福建电力职业技术学院（丰泽区）');
INSERT INTO `tp_schooljw` VALUES ('2159', '泉州市', '24.812651', '118.548192', '泉州轻工职业学院');
INSERT INTO `tp_schooljw` VALUES ('2160', '泉州市', '24.907488', '118.542308', '泉州师范学院软件学院');
INSERT INTO `tp_schooljw` VALUES ('2161', '泉州市', '24.4880023', '118.1048839', '泉州海洋职业学院');
INSERT INTO `tp_schooljw` VALUES ('2162', '泉州市', '25.08480124575', '118.23892373158', '福建农林大学安溪茶学院');
INSERT INTO `tp_schooljw` VALUES ('2163', '泉州市', '25.042856829912', '118.48821249357', '福建师范大学闽南科技学校');
INSERT INTO `tp_schooljw` VALUES ('2164', '泉州市', '25.19388187134', '118.311219359', '泉州师范学院诗山校区');
INSERT INTO `tp_schooljw` VALUES ('2165', '泉州市', '24.901648287191', '118.6003569534', '泉州华光摄影职业学院');
INSERT INTO `tp_schooljw` VALUES ('2166', '泉州市', '24.736903', '118.669988', '泉州纺织服装职业学院');
INSERT INTO `tp_schooljw` VALUES ('2167', '泉州市', '24.901648287191', '118.6003569534', '泉州工艺美术职业学院');
INSERT INTO `tp_schooljw` VALUES ('2168', '泉州市', '25.119811985554', '118.62038916626', '仰恩大学（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2169', '金州区', '39.070215', '121.770458', '大连理工大学城市学院');
INSERT INTO `tp_schooljw` VALUES ('2170', '金州区', '39.202457', '121.705624', '大连装备制造职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2171', '金州区', '39.0782335', '121.7410899', '辽宁轻工职业学院');
INSERT INTO `tp_schooljw` VALUES ('2172', '金州区', '38.948706290505', '121.59347499669', '大连民族大学（开发区）');
INSERT INTO `tp_schooljw` VALUES ('2173', '金州区', '39.100412', '121.821936', '大连大学');
INSERT INTO `tp_schooljw` VALUES ('2174', '金州区', '39.0546465', '121.7820498', '大连艺术学院');
INSERT INTO `tp_schooljw` VALUES ('2175', '金州区', '39.08593', '121.82983', '大连财经学院');
INSERT INTO `tp_schooljw` VALUES ('2176', '金州区', '39.097189922764', '122.02351181042', '大连民族大学（金石滩）');
INSERT INTO `tp_schooljw` VALUES ('2177', '金州区', '39.08162', '121.983616', '沈阳音乐学院（大连校区）');
INSERT INTO `tp_schooljw` VALUES ('2178', '金州区', '39.062971', '121.881262', '辽宁中医药大学（大连）');
INSERT INTO `tp_schooljw` VALUES ('2179', '金州区', '39.0866898', '121.9950798', '鲁迅美术学院（大连）');
INSERT INTO `tp_schooljw` VALUES ('2180', '甘井子区', '38.8748679', '121.5316801', '大连理工大学');
INSERT INTO `tp_schooljw` VALUES ('2181', '甘井子区', '38.870041', '121.534141', '大连海事大学');
INSERT INTO `tp_schooljw` VALUES ('2182', '甘井子区', '38.7933508', '121.1586027', '大连交通大学');
INSERT INTO `tp_schooljw` VALUES ('2183', '甘井子区', '38.854479', '121.514318', '大连医科大学中山学院');
INSERT INTO `tp_schooljw` VALUES ('2184', '甘井子区', '38.8737675', '121.5415582', '大连轻工学校');
INSERT INTO `tp_schooljw` VALUES ('2185', '甘井子区', '38.8878078', '121.5363278', '大连东软信息学院');
INSERT INTO `tp_schooljw` VALUES ('2186', '甘井子区', '38.9696322', '121.5271894', '大连工业大学');
INSERT INTO `tp_schooljw` VALUES ('2187', '甘井子区', '38.913559', '121.593247', '大连职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2188', '甘井子区', '39.126292', '121.730254', '大连经贸外语学院');
INSERT INTO `tp_schooljw` VALUES ('2189', '甘井子区', '38.948706290505', '121.59347499669', '中国人民解放军信息工程大学大连分院');
INSERT INTO `tp_schooljw` VALUES ('2190', '甘井子区', '38.959617', '121.526021', '大连商务职业学院');
INSERT INTO `tp_schooljw` VALUES ('2191', '甘井子区', '38.926635', '121.484086', '辽宁师范大学（西山校区）');
INSERT INTO `tp_schooljw` VALUES ('2192', '甘井子区', '39.01884', '121.625597', '大连汽车职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2193', '甘井子区', '38.897413', '121.610536', '大连枫叶职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2194', '甘井子区', '38.966732', '121.323097', '大连海洋大学（渤海校区）');
INSERT INTO `tp_schooljw` VALUES ('2195', '甘井子区', '38.9355149', '121.4971286', '大连软件职业学院');
INSERT INTO `tp_schooljw` VALUES ('2196', '沙河口区', '38.876483', '121.549925', '东北财经大学');
INSERT INTO `tp_schooljw` VALUES ('2197', '沙河口区', '38.966727', '121.323091', '大连海洋大学');
INSERT INTO `tp_schooljw` VALUES ('2198', '沙河口区', '38.924514413679', '121.56902312071', '辽宁师范大学（沙河口校区）');
INSERT INTO `tp_schooljw` VALUES ('2199', '沙河口区', '38.91719487219', '121.65125400709', '中国人民解放军外国语学院大连分院');
INSERT INTO `tp_schooljw` VALUES ('2200', '旅顺口区', '38.876245', '121.541698', '辽宁对外经贸学院');
INSERT INTO `tp_schooljw` VALUES ('2201', '旅顺口区', '38.799078882535', '121.16851360908', '大连交通大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2202', '旅顺口区', '38.809188', '121.310176', '大连外国语大学');
INSERT INTO `tp_schooljw` VALUES ('2203', '旅顺口区', '38.8812644', '121.5699714', '大连医科大学');
INSERT INTO `tp_schooljw` VALUES ('2204', '旅顺口区', '38.9003467', '121.6149836', '大连科技大学');
INSERT INTO `tp_schooljw` VALUES ('2205', '旅顺口区', '38.948706290505', '121.59347499669', '大连航运学院');
INSERT INTO `tp_schooljw` VALUES ('2206', '澳门本岛', '22.193482', '113.551936', '澳门理工学院');
INSERT INTO `tp_schooljw` VALUES ('2207', '澳门本岛', '22.2069371', '113.5476801', '澳门旅游学院');
INSERT INTO `tp_schooljw` VALUES ('2208', '澳门本岛', '22.1887852', '113.5540526', '澳门城市大学');
INSERT INTO `tp_schooljw` VALUES ('2209', '澳门本岛', '22.202577893923', '113.55479948189', '澳门镜湖护理学院');
INSERT INTO `tp_schooljw` VALUES ('2210', '凼仔岛', '23.131562', '113.299073', '澳门科技大学');
INSERT INTO `tp_schooljw` VALUES ('2211', '横琴岛', '22.1638762', '113.5596655', '澳门大学');
INSERT INTO `tp_schooljw` VALUES ('2212', '左家镇', '44.0502', '126.109934', '吉林农业科技学院左家校区');
INSERT INTO `tp_schooljw` VALUES ('2213', '左家镇', '36.6386901', '101.7422127', '省师范大学');
INSERT INTO `tp_schooljw` VALUES ('2214', '经济技术开发区', '43.957271', '126.478751', '吉林农业科技学院');
INSERT INTO `tp_schooljw` VALUES ('2215', '经济技术开发区', '43.906461129954', '126.62532432777', '吉林化工学院双吉校区');
INSERT INTO `tp_schooljw` VALUES ('2216', '经济技术开发区', '43.8333575', '125.3153435', '吉林机电工程学院');
INSERT INTO `tp_schooljw` VALUES ('2217', '龙潭区', '43.906461129954', '126.62532432777', '吉林化工学院（龙北路）');
INSERT INTO `tp_schooljw` VALUES ('2218', '龙潭区', '43.9249741', '126.5655596', '北华大学北校区');
INSERT INTO `tp_schooljw` VALUES ('2219', '龙潭区', '43.887126', '126.618549', '吉化职工大学');
INSERT INTO `tp_schooljw` VALUES ('2220', '龙潭区', '43.929292936254', '126.56804836846', '吉林电子信息职业技术学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2221', '龙潭区', '43.929292936254', '126.56804836846', '吉林电子信息职业技术学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('2222', '龙潭区', '43.929292936254', '126.56804836846', '吉林电子信息职业技术学院（主校区）');
INSERT INTO `tp_schooljw` VALUES ('2223', '昌邑区', '44.4027711', '126.9486473', '吉林市广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('2224', '昌邑区', '43.8663597', '126.5725503', '吉林铁路运输职工大学');
INSERT INTO `tp_schooljw` VALUES ('2225', '昌邑区', '43.880975979125', '126.5982493997', '吉林铁道职业技术学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2226', '昌邑区', '43.867209', '126.574401', '吉林加拿大泰尔弗国际商学院');
INSERT INTO `tp_schooljw` VALUES ('2227', '昌邑区', '43.8701611', '126.5605131', '吉林工商管理专修学院(莲安胡同)');
INSERT INTO `tp_schooljw` VALUES ('2228', '丰满区', '43.836222109934', '126.557376499', '北华大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2229', '丰满区', '43.8083864', '126.5651805', '北华大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2230', '丰满区', '44.019317', '126.155158', '北华大学师范分院');
INSERT INTO `tp_schooljw` VALUES ('2231', '丰满区', '43.831481484409', '126.57945684844', '吉林工业职业技术学院（官山路）');
INSERT INTO `tp_schooljw` VALUES ('2232', '丰满区', '43.767767', '126.638313', '吉林传播学院');
INSERT INTO `tp_schooljw` VALUES ('2233', '丰满区', '43.883587', '125.304612', '吉林科技大学');
INSERT INTO `tp_schooljw` VALUES ('2234', '丰满区', '43.821012', '126.546706', '吉林市职工大学');
INSERT INTO `tp_schooljw` VALUES ('2235', '丰满区', '43.852951080449', '126.61519144162', '吉林神哲学院');
INSERT INTO `tp_schooljw` VALUES ('2236', '丰满区', '43.806865', '126.561567', '吉林医药学院');
INSERT INTO `tp_schooljw` VALUES ('2237', '丰满区', '43.8450707', '126.5683177', '吉林医学院');
INSERT INTO `tp_schooljw` VALUES ('2238', '船营区', '43.8475055', '126.5459884', '大连港务专修学院吉林分院');
INSERT INTO `tp_schooljw` VALUES ('2239', '船营区', '43.8508697', '126.5507117', '吉林职工医科大学');
INSERT INTO `tp_schooljw` VALUES ('2240', '船营区', '43.8487018', '126.5491294', '吉林市经济管理学院');
INSERT INTO `tp_schooljw` VALUES ('2241', '船营区', '43.832307381979', '126.51934224371', '东北电力大学（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2242', '船营区', '43.832307381979', '126.51934224371', '东北电力大学（老校区）');
INSERT INTO `tp_schooljw` VALUES ('2243', '永吉县', '43.867754', '126.5727539', '吉林铁道职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2244', '台北市', '25.0173405', '121.5397518', '国立台湾大学');
INSERT INTO `tp_schooljw` VALUES ('2245', '台北市', '24.9877028', '121.5756459', '国立政治大学');
INSERT INTO `tp_schooljw` VALUES ('2246', '台北市', '25.0254571', '121.5273658', '国立台湾师范大学');
INSERT INTO `tp_schooljw` VALUES ('2247', '台北市', '25.1230017', '121.5137024', '国立阳明大学');
INSERT INTO `tp_schooljw` VALUES ('2248', '新界', '22.417534', '114.20383', '香港中文大学');
INSERT INTO `tp_schooljw` VALUES ('2249', '新界', '22.4690426', '114.1943533', '香港教育学院');
INSERT INTO `tp_schooljw` VALUES ('2250', '新界', '35.8302136', '128.7573554', '岭南大学');
INSERT INTO `tp_schooljw` VALUES ('2251', '九龙', '22.337857', '114.1819618', '香港浸会大学');
INSERT INTO `tp_schooljw` VALUES ('2252', '九龙', '22.3045499', '114.1796998', '香港理工大学');
INSERT INTO `tp_schooljw` VALUES ('2253', '九龙', '22.3374015', '114.171789', '香港城市大学');
INSERT INTO `tp_schooljw` VALUES ('2254', '九龙', '22.3363998', '114.2654655', '香港科技大学');
INSERT INTO `tp_schooljw` VALUES ('2255', '港岛', '22.2829989', '114.1370848', '香港大学');
INSERT INTO `tp_schooljw` VALUES ('2256', '港岛', '22.286251', '114.197933', '树仁大学');
INSERT INTO `tp_schooljw` VALUES ('2257', '天山区', '43.771628576999', '87.625031289878', '新疆大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('2258', '天山区', '43.7849441', '87.6424834', '新疆大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2259', '天山区', '43.790562391981', '87.657037915198', '乌鲁木齐职业大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('2260', '天山区', '43.806329', '87.634754', '乌鲁木齐职业大学（青年路校区）');
INSERT INTO `tp_schooljw` VALUES ('2261', '天山区', '43.790562391981', '87.657037915198', '乌鲁木齐职业大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('2262', '天山区', '0', '0', '新疆警察学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2263', '天山区', '43.761062328819', '87.6567774066', '新疆体育职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2264', '天山区', '43.7883866', '87.6402442', '新疆教育学院');
INSERT INTO `tp_schooljw` VALUES ('2265', '天山区', '43.771726', '87.629233', '新疆艺术学院');
INSERT INTO `tp_schooljw` VALUES ('2266', '新市区', '43.8919409', '87.5617007', '新疆工程学院(天津路校区)');
INSERT INTO `tp_schooljw` VALUES ('2267', '新市区', '0', '0', '新疆警察学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('2268', '新市区', '43.902175', '87.538155', '新疆职业大学（迎宾校区）');
INSERT INTO `tp_schooljw` VALUES ('2269', '新市区', '43.879288', '87.571098', '新疆机电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2270', '新市区', '43.893125509135', '87.551630746657', '新疆财经大学商务学院');
INSERT INTO `tp_schooljw` VALUES ('2271', '新市区', '43.850151', '87.583124', '新疆医科大学厚博学院');
INSERT INTO `tp_schooljw` VALUES ('2272', '新市区', '43.883295627592', '87.561583971708', '新疆铁道职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2273', '新市区', '43.8842021', '87.5458126', '新疆财经大学');
INSERT INTO `tp_schooljw` VALUES ('2274', '新市区', '43.843862237587', '87.586062796855', '新疆医科大学 (本部）');
INSERT INTO `tp_schooljw` VALUES ('2275', '新市区', '43.849889', '87.600191', '新疆建设职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2276', '新市区', '0', '0', '新疆职业机电技术学院');
INSERT INTO `tp_schooljw` VALUES ('2277', '沙依巴布区', '43.814548', '87.580445', '新疆工程学院');
INSERT INTO `tp_schooljw` VALUES ('2278', '沙依巴布区', '43.767529', '87.614438', '新疆大学科学技术学院');
INSERT INTO `tp_schooljw` VALUES ('2279', '沙依巴布区', '43.809232', '87.595048', '新疆职业大学（友好校区）');
INSERT INTO `tp_schooljw` VALUES ('2280', '沙依巴布区', '43.7706117', '87.6030158', '新疆轻工职业技术学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2281', '沙依巴布区', '43.8216286', '87.5837766', '新疆大学（北校区）');
INSERT INTO `tp_schooljw` VALUES ('2282', '沙依巴布区', '43.817445', '87.571052', '新疆农业大学科学技术学院');
INSERT INTO `tp_schooljw` VALUES ('2283', '沙依巴布区', '43.814141', '87.566296', '新疆农业大学');
INSERT INTO `tp_schooljw` VALUES ('2284', '沙依巴布区', '43.8398244716', '87.600300939188', '新疆师范大学（昆仑校区）');
INSERT INTO `tp_schooljw` VALUES ('2285', '水磨沟区', '43.821799', '87.632756', '新疆教育学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2286', '水磨沟区', '43.890684', '87.564317', '新疆天山职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2287', '水磨沟区', '43.842210753037', '87.672884024394', '新疆师范大学（温泉校区）');
INSERT INTO `tp_schooljw` VALUES ('2288', '米东区', '45.5454041', '84.8891571', '新疆交通职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2289', '米东区', '43.921032', '87.630696', '新疆轻工职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2290', '达坂城区', '43.95705', '87.674726', '新疆能源职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2291', '头屯河区', '43.86394944532', '87.447606968602', '新疆现代职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2292', '头屯河区', '43.865814804545', '87.431069164163', '乌鲁木齐职业大学（头屯河校区）');
INSERT INTO `tp_schooljw` VALUES ('2293', '头屯河区', '43.925786918299', '87.425041534191', '新疆工程学院(头屯河校区)');
INSERT INTO `tp_schooljw` VALUES ('2294', '石河子市', '44.306611', '86.058034', '石河子大学（中区、北区）');
INSERT INTO `tp_schooljw` VALUES ('2295', '石河子市', '44.305311532444', '86.058530209358', '石河子大学科技学院');
INSERT INTO `tp_schooljw` VALUES ('2296', '石河子市', '44.306595', '86.024095', '新疆石河子职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2297', '石河子市', '22.231252134095', '114.21879098243', '石河子大学（南区）');
INSERT INTO `tp_schooljw` VALUES ('2298', '石河子市', '43.814368', '87.614704', '石河子大学（东区）');
INSERT INTO `tp_schooljw` VALUES ('2299', '昌吉市', '43.8532999', '87.5826191', '昌吉学院（新区）');
INSERT INTO `tp_schooljw` VALUES ('2300', '昌吉市', '44.0185418', '87.3204018', '新疆农业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2301', '昌吉市', '44.0024466', '87.3069179', '昌吉职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2302', '昌吉市', '44.022042311008', '87.327027419998', '新疆农业职业技术学院（分院）');
INSERT INTO `tp_schooljw` VALUES ('2303', '宜春市', '27.7990398', '114.3691503', '宜春职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2304', '宜春市', '27.7871773', '114.3577819', '宜春学院');
INSERT INTO `tp_schooljw` VALUES ('2305', '宜春市', '27.797842431715', '114.36410088168', '宜春学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('2306', '阿拉尔市', '40.540567', '81.297684', '塔里木大学');
INSERT INTO `tp_schooljw` VALUES ('2307', '芝罘区', '37.528494460735', '121.36557488881', '鲁东大学（主校区）');
INSERT INTO `tp_schooljw` VALUES ('2308', '芝罘区', '37.519131', '121.374324', '鲁东大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2309', '莱山区', '37.479634221817', '121.46478374933', '烟台大学（北校区）');
INSERT INTO `tp_schooljw` VALUES ('2310', '莱山区', '37.458966', '121.470152', '烟台大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2311', '莱山区', '37.454683', '121.476494', '烟台大学文经学院');
INSERT INTO `tp_schooljw` VALUES ('2312', '莱山区', '36.6558732', '117.0595026', '山东工商学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2313', '莱山区', '37.478135', '121.442065', '山东工商学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('2314', '莱山区', '37.459627', '121.461072', '滨州医学院（烟台校区）');
INSERT INTO `tp_schooljw` VALUES ('2315', '高新区', '36.245693813256', '117.73570198409', '山东商务职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2316', '高新区', '37.5582824', '121.2247541', '烟台职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2317', '牟平区', '37.441692', '121.63278', '山东中医药高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2318', '龙口区', '37.604765515103', '120.49811719004', '烟台南山学院（南山校区）');
INSERT INTO `tp_schooljw` VALUES ('2319', '龙口区', '37.726512', '120.442918', '烟台南山学院（东海校区）');
INSERT INTO `tp_schooljw` VALUES ('2320', '蓬莱市', '37.811309', '120.707851', '济南大学泉城学院');
INSERT INTO `tp_schooljw` VALUES ('2321', '开发区', '37.5582824', '121.2247541', '烟台工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2322', '福山区', '37.53655719906', '121.30954757415', '烟台汽车工程技术学院');
INSERT INTO `tp_schooljw` VALUES ('2323', '赣州市', '25.865237958225', '114.94000454393', '赣南医学院（黄金校区）');
INSERT INTO `tp_schooljw` VALUES ('2324', '赣州市', '25.794926', '114.886838', '赣南师范学院（黄金校区）');
INSERT INTO `tp_schooljw` VALUES ('2325', '赣州市', '25.860174255674', '114.93808217014', '江西理工大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('2326', '赣州市', '25.860174255674', '114.93808217014', '江西理工大学（黄金校区）');
INSERT INTO `tp_schooljw` VALUES ('2327', '赣州市', '25.862168', '114.9162203', '江西理工大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('2328', '赣州市', '25.845290740152', '114.93590827081', '赣州高等师范专科学院');
INSERT INTO `tp_schooljw` VALUES ('2329', '赣州市', '25.883302', '114.916388', '江西环境工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('2330', '赣州市', '25.848982', '114.944437', '江西应用技术职业学院');
INSERT INTO `tp_schooljw` VALUES ('2331', '榆林市', '38.292654', '109.723982', '榆林学院');
INSERT INTO `tp_schooljw` VALUES ('2332', '榆林市', '38.224727', '109.763361', '榆林职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2333', '安康市', '32.685316', '109.033468', '安康学院');
INSERT INTO `tp_schooljw` VALUES ('2334', '安康市', '32.690673970979', '109.03775108707', '安康职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2335', '汉中市', '33.084024', '107.040136', '陕西理工学院（南区）');
INSERT INTO `tp_schooljw` VALUES ('2336', '汉中市', '34.6566756', '109.2128487', '陕西航空职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2337', '汉中市', '33.071589', '107.056681', '汉中职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2338', '商洛市', '33.8628622', '109.9536412', '商洛学院');
INSERT INTO `tp_schooljw` VALUES ('2339', '商洛市', '33.879748', '109.913543', '商洛职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2340', '铜川市', '34.886208', '108.934846', '铜川职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2341', '深州市', '22.5340033', '113.937192', '深圳大学');
INSERT INTO `tp_schooljw` VALUES ('2342', '深州市', '22.604042448715', '114.00655732271', '南方科技大学（深圳校区）');
INSERT INTO `tp_schooljw` VALUES ('2343', '深州市', '22.685402', '114.210418', '香港中文大学（深圳）');
INSERT INTO `tp_schooljw` VALUES ('2344', '深州市', '22.5921301', '113.9481722', '深圳职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2345', '深州市', '22.5563383', '113.9690212', '广东新安职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2346', '深州市', '22.566636', '114.095881', '深圳信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2347', '深州市', '22.539497', '113.98587', '暨南大学深圳旅游学院');
INSERT INTO `tp_schooljw` VALUES ('2348', '深州市', '22.52607', '114.069054', '深圳技师学院');
INSERT INTO `tp_schooljw` VALUES ('2349', '佛山市', '23.03083591669', '113.10349977689', '佛山科学技术学院（本部）');
INSERT INTO `tp_schooljw` VALUES ('2350', '佛山市', '23.207559', '112.85261', '广东财经大学（三水校区）');
INSERT INTO `tp_schooljw` VALUES ('2351', '佛山市', '23.0446461', '112.8781963', '广东环境保护工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('2352', '佛山市', '23.144336', '113.028699', '华南师范大学（南海校区）');
INSERT INTO `tp_schooljw` VALUES ('2353', '佛山市', '23.090756', '113.299702', '广东轻工职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2354', '佛山市', '22.808684', '113.324168', '佛山职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2355', '佛山市', '22.809929', '113.269724', '佛山广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('2356', '佛山市', '22.808684', '113.324168', '顺德职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2357', '佛山市', '23.136514', '113.026033', '广东东软学院');
INSERT INTO `tp_schooljw` VALUES ('2358', '佛山市', '0', '0', '广州工商学院（三水校区）');
INSERT INTO `tp_schooljw` VALUES ('2359', '佛山市', '22.824520378405', '112.68325449335', '广东职业技术学院（高明校区）');
INSERT INTO `tp_schooljw` VALUES ('2360', '佛山市', '22.988390571653', '113.12387334585', '广东职业技术学院（禅城校区）');
INSERT INTO `tp_schooljw` VALUES ('2361', '泰州市', '32.029348', '118.856141', '南京理工大学泰州科技学院');
INSERT INTO `tp_schooljw` VALUES ('2362', '泰州市', '32.47605304638', '119.91959945856', '泰州学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2363', '泰州市', '32.4801816', '119.9335909', '南京师范大学泰州学院');
INSERT INTO `tp_schooljw` VALUES ('2364', '泰州市', '32.102007', '118.94663', '南京中医药大学翰林学院');
INSERT INTO `tp_schooljw` VALUES ('2365', '泰州市', '32.93847650503', '120.22624502745', '江苏农牧科技职业技术学院（凤凰路校区）');
INSERT INTO `tp_schooljw` VALUES ('2366', '泰州市', '32.486517', '119.939831', '泰州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2367', '泰州市', '32.47605304638', '119.91959945856', '泰州机电高等职业学校');
INSERT INTO `tp_schooljw` VALUES ('2368', '泰州市', '32.47605304638', '119.91959945856', '泰州学院（老校区）');
INSERT INTO `tp_schooljw` VALUES ('2369', '泰州市', '32.47605304638', '119.91959945856', '泰州农牧（老校区）');
INSERT INTO `tp_schooljw` VALUES ('2370', '韶关市', '24.682728', '113.604549', '韶关学院');
INSERT INTO `tp_schooljw` VALUES ('2371', '韶关市', '24.788372', '113.589973', '韶关学院医学院');
INSERT INTO `tp_schooljw` VALUES ('2372', '韶关市', '24.820275148077', '113.60277797917', '韶关学院韶州师范分院（浈江区）');
INSERT INTO `tp_schooljw` VALUES ('2373', '韶关市', '24.640798', '113.639307', '广东松山职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2374', '韶关市', '24.7726754', '113.6842624', '韶关市技师学院');
INSERT INTO `tp_schooljw` VALUES ('2375', '肇庆市', '23.080574', '112.495929', '肇庆学院');
INSERT INTO `tp_schooljw` VALUES ('2376', '肇庆市', '23.078662202397', '112.47964456652', '广州金融学院肇庆校区');
INSERT INTO `tp_schooljw` VALUES ('2377', '肇庆市', '23.2825354', '113.6116872', '广东工商职业学院');
INSERT INTO `tp_schooljw` VALUES ('2378', '肇庆市', '23.072534', '112.440561', '肇庆科技职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2379', '肇庆市', '23.05497982271', '113.77951060514', '广东理工学院(南校区）');
INSERT INTO `tp_schooljw` VALUES ('2380', '肇庆市', '23.103320976105', '112.47778507412', '肇庆医学高等专科（端州校区）');
INSERT INTO `tp_schooljw` VALUES ('2381', '肇庆市', '23.1530872', '113.343118', '广东理工学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('2382', '肇庆市', '23.208960206933', '112.62524192353', '肇庆医学高等专科学校（鼎湖校区）');
INSERT INTO `tp_schooljw` VALUES ('2383', '安庆市', '30.5127437', '117.098842', '安庆师范学院');
INSERT INTO `tp_schooljw` VALUES ('2384', '开发区', '41.120786196692', '121.16564801451', '渤海大学（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2385', '开发区', '41.62159835334', '122.75358266449', '辽宁理工学院（开发区校区）');
INSERT INTO `tp_schooljw` VALUES ('2386', '开发区', '41.0876231', '121.1091428', '锦州商务职业学院');
INSERT INTO `tp_schooljw` VALUES ('2387', '开发区', '40.665548721681', '122.25226530854', '辽宁理工职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2388', '开发区', '41.087716', '121.108818', '辽宁医学院医疗学院');
INSERT INTO `tp_schooljw` VALUES ('2389', '开发区', '40.864385727408', '121.07928492278', '辽宁理工职业学院（开发区校区）');
INSERT INTO `tp_schooljw` VALUES ('2390', '古塔区', '41.145789', '121.126774', '辽宁工业大学');
INSERT INTO `tp_schooljw` VALUES ('2391', '古塔区', '41.1490903', '121.1415984', '辽宁医学院');
INSERT INTO `tp_schooljw` VALUES ('2392', '古塔区', '41.134721', '121.1207664', '辽宁石化职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2393', '古塔区', '0', '0', '辽宁医学院畜牧学院');
INSERT INTO `tp_schooljw` VALUES ('2394', '古塔区', '41.114506', '121.175882', '锦州师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2395', '古塔区', '41.146098', '121.161251', '锦州师范高等专科学校北区');
INSERT INTO `tp_schooljw` VALUES ('2396', '凌海区', '41.1435862', '121.1484212', '辽宁铁道职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2397', '凌海区', '41.114953', '121.1757276', '锦州电视大学');
INSERT INTO `tp_schooljw` VALUES ('2398', '凌海区', '41.086564', '121.118854', '渤海大学');
INSERT INTO `tp_schooljw` VALUES ('2399', '湛江市', '21.1455572', '110.3025897', '广东海洋大学');
INSERT INTO `tp_schooljw` VALUES ('2400', '湛江市', '21.280794761602', '110.35830508847', '岭南师范学院(校本部)');
INSERT INTO `tp_schooljw` VALUES ('2401', '湛江市', '21.2858853', '110.3333673', '广东海洋大学寸金学院（麻章区学智路）');
INSERT INTO `tp_schooljw` VALUES ('2402', '湛江市', '21.222663', '110.4173729', '广东海洋大学（海滨校区）');
INSERT INTO `tp_schooljw` VALUES ('2403', '湛江市', '21.210967330013', '110.41674884492', '广东医学院湛江校区');
INSERT INTO `tp_schooljw` VALUES ('2404', '湛江市', '21.365871337248', '110.2523499536', '湛江师范学院基础教育学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('2405', '三亚市', '18.32731', '109.55961', '三亚学院');
INSERT INTO `tp_schooljw` VALUES ('2406', '三亚市', '18.297248', '109.516578', '三亚城市职业学院');
INSERT INTO `tp_schooljw` VALUES ('2407', '三亚市', '18.2913618', '109.4882649', '三亚航空旅游职业学院');
INSERT INTO `tp_schooljw` VALUES ('2408', '三亚市', '18.337543', '109.559863', '三亚理工职业学院');
INSERT INTO `tp_schooljw` VALUES ('2409', '三亚市', '18.311713', '109.532747', '琼州学院（三亚校区）');
INSERT INTO `tp_schooljw` VALUES ('2410', '琼海市', '19.252488', '110.473866', '海南软件职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2411', '文昌市', '19.603557', '110.764712', '海南外国语职业学院');
INSERT INTO `tp_schooljw` VALUES ('2412', '五指山市', '18.308063', '109.535136', '琼州学院');
INSERT INTO `tp_schooljw` VALUES ('2413', '娄底市', '27.7122483', '112.0068032', '湖南人文科技学院');
INSERT INTO `tp_schooljw` VALUES ('2414', '娄底市', '27.7391393', '112.0233515', '娄底职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2415', '娄底市', '27.842977508435', '112.95403072313', '潇湘职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2416', '娄底市', '27.7301158', '112.02639', '娄底卫校');
INSERT INTO `tp_schooljw` VALUES ('2417', '宿迁市', '34.0870429', '118.7743344', '宿迁学院');
INSERT INTO `tp_schooljw` VALUES ('2418', '宿迁市', '34.018164', '118.283066', '宿迁泽达职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2419', '宿迁市', '34.087176', '118.774862', '宿迁职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2420', '宿迁市', '34.022014245727', '118.29970309853', '宿迁卫生学校');
INSERT INTO `tp_schooljw` VALUES ('2421', '宿迁市', '34.015128', '118.298032', '宿迁广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('2422', '宿迁市', '33.952045166985', '118.29689140228', '宿迁高等师范学院');
INSERT INTO `tp_schooljw` VALUES ('2423', '连云港市', '34.607741', '119.220001', '淮海工学院');
INSERT INTO `tp_schooljw` VALUES ('2424', '连云港市', '34.653244', '119.2350957', '连云港职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2425', '鞍山市', '41.079017', '122.995782', '鞍山师范学院');
INSERT INTO `tp_schooljw` VALUES ('2426', '鞍山市', '41.256275', '123.182197', '辽宁科技大学');
INSERT INTO `tp_schooljw` VALUES ('2427', '鞍山市', '41.152530479528', '122.92975834111', '辽宁林业职业技术学院（鞍山教学区）');
INSERT INTO `tp_schooljw` VALUES ('2428', '鞍山市', '41.124942', '122.948732', '鞍山师范高等职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2429', '鞍山市', '41.109936345571', '123.06714518581', '辽宁科技大学应用技术学校');
INSERT INTO `tp_schooljw` VALUES ('2430', '本溪市', '41.290077', '123.792112', '辽宁冶金职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2431', '本溪市', '41.285586', '123.79793', '辽宁科技学院');
INSERT INTO `tp_schooljw` VALUES ('2432', '本溪市', '41.460127442057', '123.71186803337', '沈阳药科大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2433', '本溪市', '41.247846', '125.368009', '本溪广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('2434', '铁岭市', '42.256255711536', '123.7525972052', '铁岭师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2435', '铁岭市', '38.9355149', '121.4971286', '辽宁职业学院');
INSERT INTO `tp_schooljw` VALUES ('2436', '铁岭市', '42.241679', '123.749252', '辽宁工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('2437', '铁岭市', '42.253479439817', '123.75381890069', '铁岭卫生职业学院');
INSERT INTO `tp_schooljw` VALUES ('2438', '盘锦市', '41.345822', '121.811222', '辽河石油职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2439', '丹东市', '40.061275', '124.324051', '辽宁地质工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('2440', '丹东市', '40.034514', '124.34012', '辽宁机电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2441', '丹东市', '40.150884', '124.427569', '辽东学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2442', '丹东市', '40.176677', '124.364164', '辽东学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('2443', '营口市', '40.63419766813', '122.25151073191', '营口理工学院（营口大学园）');
INSERT INTO `tp_schooljw` VALUES ('2444', '营口市', '40.63722941994', '122.25204073216', '东北财经大学（营口大学园）');
INSERT INTO `tp_schooljw` VALUES ('2445', '营口市', '40.63722941994', '122.25204073216', '辽宁科技大学（营口大学园）');
INSERT INTO `tp_schooljw` VALUES ('2446', '营口市', '40.63722941994', '122.25204073216', '辽宁石油化工大学（营口大学园）');
INSERT INTO `tp_schooljw` VALUES ('2447', '营口市', '40.183042', '122.153257', '辽宁农业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2448', '营口市', '40.660575418304', '122.25778988743', '营口职业技术学院东校区');
INSERT INTO `tp_schooljw` VALUES ('2449', '营口市', '40.660575418304', '122.25778988743', '营口职业技术学院西校区');
INSERT INTO `tp_schooljw` VALUES ('2450', '营口市', '40.668647441125', '122.23338292672', '营口大学（南区）');
INSERT INTO `tp_schooljw` VALUES ('2451', '营口市', '31.2892576', '121.5347033', '营口大学（东区）');
INSERT INTO `tp_schooljw` VALUES ('2452', '朝阳市', '41.565665438486', '120.45114479492', '朝阳师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2453', '阜新市', '42.05088', '121.661526', '辽宁工程技术大学（北校区）');
INSERT INTO `tp_schooljw` VALUES ('2454', '阜新市', '42.040553', '121.712611', '阜新高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2455', '阜新市', '42.029625951798', '121.67128621996', '辽宁工程技术大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2456', '葫芦岛市', '40.711713500499', '120.95864249279', '渤海船舶职业学院');
INSERT INTO `tp_schooljw` VALUES ('2457', '葫芦岛市', '40.620019', '120.794372', '辽宁财贸学院');
INSERT INTO `tp_schooljw` VALUES ('2458', '葫芦岛市', '40.628872946534', '120.78675173345', '辽宁工程技术大学（葫芦岛校区）');
INSERT INTO `tp_schooljw` VALUES ('2459', '抚顺市', '41.824937', '123.539181', '沈阳工学院');
INSERT INTO `tp_schooljw` VALUES ('2460', '抚顺市', '41.856358', '123.791387', '辽宁石油化工大学');
INSERT INTO `tp_schooljw` VALUES ('2461', '抚顺市', '41.883062', '123.938952', '抚顺职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2462', '抚顺市', '41.896672', '123.924551', '抚顺师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2463', '抚顺市', '41.850041', '123.792702', '辽宁冶金职工大学');
INSERT INTO `tp_schooljw` VALUES ('2464', '抚顺市', '41.877297787137', '123.9298149162', '抚顺矿务局职工工学院');
INSERT INTO `tp_schooljw` VALUES ('2465', '辽阳市', '41.207868', '123.189837', '沈阳工业大学（辽阳校区）');
INSERT INTO `tp_schooljw` VALUES ('2466', '辽阳市', '41.2869862', '123.1653391', '辽阳职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2467', '辽阳市', '41.253761', '123.162556', '辽宁广播电视大学辽阳分校');
INSERT INTO `tp_schooljw` VALUES ('2468', '辽阳市', '41.2485004', '123.1583884', '辽宁建筑职业学院');
INSERT INTO `tp_schooljw` VALUES ('2469', '辽阳市', '41.256011', '123.177541', '辽宁大学外国语学院');
INSERT INTO `tp_schooljw` VALUES ('2470', '四平市', '43.162920612049', '124.3507968104', '吉林师范大学（四平校区）');
INSERT INTO `tp_schooljw` VALUES ('2471', '四平市', '43.1569174', '124.3427052', '四平职业大学');
INSERT INTO `tp_schooljw` VALUES ('2472', '四平市', '43.5171687', '124.8259592', '吉林农业工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2473', '四平市', '43.1742497', '124.3551924', '吉林广播电视大学四平分校');
INSERT INTO `tp_schooljw` VALUES ('2474', '榆次区', '37.7256599', '112.7343394', '晋中师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2475', '榆次区', '37.2046065', '112.1623511', '晋中学院');
INSERT INTO `tp_schooljw` VALUES ('2476', '榆次区', '0', '0', '山西医科大学（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2477', '榆次区', '37.743873', '112.720936', '太原理工大学（明向校区）');
INSERT INTO `tp_schooljw` VALUES ('2478', '榆次区', '37.841974', '112.531432', '山西中医学院');
INSERT INTO `tp_schooljw` VALUES ('2479', '榆次区', '37.862947', '112.5776357', '太原师范学院（榆次区）');
INSERT INTO `tp_schooljw` VALUES ('2480', '榆次区', '37.845774', '112.578151', '山西职工医学院');
INSERT INTO `tp_schooljw` VALUES ('2481', '榆次区', '37.758996928041', '112.66836958536', '山西交通职业技术学院（文华校区）');
INSERT INTO `tp_schooljw` VALUES ('2482', '榆次区', '37.690227', '112.715931', '晋中职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2483', '榆次区', '35.072553', '111.005316', '山西职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2484', '榆次区', '37.747798526979', '112.71076062237', '山西建筑职业技术学院（榆次校区）');
INSERT INTO `tp_schooljw` VALUES ('2485', '榆次区', '37.674069', '112.640379', '中北大学信息商务学院');
INSERT INTO `tp_schooljw` VALUES ('2486', '榆次区', '37.679051437294', '112.64685516839', '山西华澳商贸职业学院');
INSERT INTO `tp_schooljw` VALUES ('2487', '榆次区', '37.757812974089', '112.74241690854', '山西能源学院');
INSERT INTO `tp_schooljw` VALUES ('2488', '榆次区', '37.865127', '112.604245', '山西传媒学院');
INSERT INTO `tp_schooljw` VALUES ('2489', '太谷县', '37.424414', '112.578437', '山西农业大学');
INSERT INTO `tp_schooljw` VALUES ('2490', '太谷县', '37.4516266', '112.5734999', '山西农业大学信息学院');
INSERT INTO `tp_schooljw` VALUES ('2491', '太谷县', '37.212541', '112.163136', '山西农业大学平遥机电学院');
INSERT INTO `tp_schooljw` VALUES ('2492', '长治市', '36.215756', '113.137517', '长治学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('2493', '长治市', '36.199281', '113.141071', '长治学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2494', '长治市', '36.1801124', '113.1196713', '长治学院师范分院');
INSERT INTO `tp_schooljw` VALUES ('2495', '长治市', '36.172546', '113.11571', '长治医学院');
INSERT INTO `tp_schooljw` VALUES ('2496', '长治市', '36.215863', '113.131876', '长治职业技术学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('2497', '长治市', '36.183515', '113.119257', '长治职业技术学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2498', '长治市', '36.19122930976', '113.12518488635', '长治职业技术学院（星海校区）');
INSERT INTO `tp_schooljw` VALUES ('2499', '长治市', '36.2091908', '113.1343835', '山西机电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2500', '长治市', '36.201663657645', '113.12028912132', '山西省广播电视大学长治分校');
INSERT INTO `tp_schooljw` VALUES ('2501', '长治市', '36.184396', '113.1213859', '太原理工大学长治学院华北机电学校');
INSERT INTO `tp_schooljw` VALUES ('2502', '宁德市', '27.074147', '119.643676', '宁德职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2503', '宁德市', '26.644357713786', '119.54572468873', '宁德师范学院(旧区)');
INSERT INTO `tp_schooljw` VALUES ('2504', '宁德市', '26.644357713786', '119.54572468873', '宁德师范学院(新区)');
INSERT INTO `tp_schooljw` VALUES ('2505', '南平市', '27.321501', '118.120804', '闽北职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2506', '南平市', '22.663802137193', '108.13558285059', '福建林业职业技术学院（江南校区）');
INSERT INTO `tp_schooljw` VALUES ('2507', '南平市', '26.589150277505', '118.26445357416', '福建林业职业技术学院（天麟校区）');
INSERT INTO `tp_schooljw` VALUES ('2508', '武夷山市', '27.719867', '118.002875', '武夷山职业学院');
INSERT INTO `tp_schooljw` VALUES ('2509', '武夷山市', '27.732834137117', '118.01097870849', '武夷学院（本部）');
INSERT INTO `tp_schooljw` VALUES ('2510', '武夷山市', '27.7077098', '118.0034834', '武夷学院（桃源校区）');
INSERT INTO `tp_schooljw` VALUES ('2511', '莆田市', '25.444014', '119.010572', '莆田学院');
INSERT INTO `tp_schooljw` VALUES ('2512', '莆田市', '25.2667607', '118.8581846', '湄洲湾职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2513', '莆田市', '25.468250972587', '118.70462327391', '莆田学院（仙游校区）');
INSERT INTO `tp_schooljw` VALUES ('2514', '嘉兴市', '30.734762', '120.785233', '同济大学浙江学院');
INSERT INTO `tp_schooljw` VALUES ('2515', '嘉兴市', '30.7474805', '120.7160109', '嘉兴职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2516', '嘉兴市', '30.745411', '120.73336', '嘉兴学院（越秀校区）');
INSERT INTO `tp_schooljw` VALUES ('2517', '嘉兴市', '30.740294', '120.725565', '嘉兴学院（梁林校区）');
INSERT INTO `tp_schooljw` VALUES ('2518', '嘉兴市', '30.789282', '120.776517', '嘉兴南洋职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2519', '雁峰区', '27.259357520654', '112.70876636982', '衡阳师范学院（南岳校区）');
INSERT INTO `tp_schooljw` VALUES ('2520', '雁峰区', '26.884252581347', '112.61781293697', '湖南工学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2521', '雁峰区', '26.872106', '112.61483', '湖南致公专修大学');
INSERT INTO `tp_schooljw` VALUES ('2522', '雁峰区', '26.889730268568', '112.62125344707', '湖南高速铁路职业技术学院西校区');
INSERT INTO `tp_schooljw` VALUES ('2523', '石鼓区', '26.890489', '112.624126', '湖南环境生物职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2524', '石鼓区', '26.943214', '112.598022', '湖南工商职业学院');
INSERT INTO `tp_schooljw` VALUES ('2525', '石鼓区', '26.941561669285', '112.60662903337', '湖南工业科技职工大学北校区');
INSERT INTO `tp_schooljw` VALUES ('2526', '珠晖区', '26.886532298488', '112.69125839544', '湖南工学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2527', '珠晖区', '27.695857415397', '111.72065725834', '湖南高速铁路职业技术学院东校区');
INSERT INTO `tp_schooljw` VALUES ('2528', '珠晖区', '26.844311', '112.602116', '湖南财经工业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2529', '珠晖区', '26.883108677494', '112.64283972847', '中钢集团衡阳重机职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2530', '珠晖区', '26.876837', '112.650755', '衡阳工业职工大学');
INSERT INTO `tp_schooljw` VALUES ('2531', '珠晖区', '26.898163770989', '112.58381207342', '衡阳幼儿师范学院');
INSERT INTO `tp_schooljw` VALUES ('2532', '珠晖区', '26.879739', '112.676282', '衡阳师范学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2533', '蒸湘区', '26.902335984802', '112.59649614722', '南华大学（校本部）');
INSERT INTO `tp_schooljw` VALUES ('2534', '蒸湘区', '26.877963', '112.517043', '南华大学（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2535', '蒸湘区', '26.89689', '112.5906', '南华大学船山学院');
INSERT INTO `tp_schooljw` VALUES ('2536', '蒸湘区', '26.911783', '112.591702', '长沙医学院（衡阳校区）');
INSERT INTO `tp_schooljw` VALUES ('2537', '蒸湘区', '28.1407006', '112.9895174', '湖南交通工程学院');
INSERT INTO `tp_schooljw` VALUES ('2538', '蒸湘区', '26.878722', '112.602031', '湖南工业科技职工大学');
INSERT INTO `tp_schooljw` VALUES ('2539', '蒸湘区', '26.9119665', '112.5039042', '湖南科技经贸职业学院');
INSERT INTO `tp_schooljw` VALUES ('2540', '蒸湘区', '26.8972651', '112.6046261', '衡阳广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('2541', '衡阳县', '26.8940498', '112.6109128', '衡阳技师学院');
INSERT INTO `tp_schooljw` VALUES ('2542', '衡南县', '26.874018', '112.5595', '衡阳工业专修学院');
INSERT INTO `tp_schooljw` VALUES ('2543', '衡南县', '26.757587', '112.687366', '湖南南方专修学院');
INSERT INTO `tp_schooljw` VALUES ('2544', '龙岩市', '25.115041', '117.018623', '龙岩技师学院');
INSERT INTO `tp_schooljw` VALUES ('2545', '龙岩市', '25.029775', '117.023062', '龙岩学院');
INSERT INTO `tp_schooljw` VALUES ('2546', '龙岩市', '24.4880023', '118.1048839', '闽西职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2547', '三明市', '25.9365312', '117.3638626', '三明学院');
INSERT INTO `tp_schooljw` VALUES ('2548', '三明市', '24.9046507', '118.6093171', '三明职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2549', '三明市', '25.9712107', '117.3673174', '福建水利电力职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2550', '漳州市', '24.507481', '117.645361', '闽南师范大学');
INSERT INTO `tp_schooljw` VALUES ('2551', '漳州市', '24.5214149', '117.6382005', '漳州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2552', '漳州市', '24.527121', '117.636397', '漳州卫生职业学院');
INSERT INTO `tp_schooljw` VALUES ('2553', '漳州市', '24.366862', '118.048117', '厦门大学嘉庚学院');
INSERT INTO `tp_schooljw` VALUES ('2554', '漳州市', '24.517061738694', '117.67619821115', '漳州理工职业学院');
INSERT INTO `tp_schooljw` VALUES ('2555', '漳州市', '24.517061738694', '117.67619821115', '漳州科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('2556', '漳州市', '24.524726', '117.634874', '漳州城市职业学院');
INSERT INTO `tp_schooljw` VALUES ('2557', '宜昌市', '30.720482', '111.318127', '三峡大学');
INSERT INTO `tp_schooljw` VALUES ('2558', '宜昌市', '30.723859', '111.321201', '三峡大学科技学院');
INSERT INTO `tp_schooljw` VALUES ('2559', '宜昌市', '30.706229', '111.307181', '三峡电力职业学院');
INSERT INTO `tp_schooljw` VALUES ('2560', '宜昌市', '30.69254', '111.313096', '湖北三峡职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2561', '宜昌市', '30.7592201', '111.3083523', '宜昌教育学院');
INSERT INTO `tp_schooljw` VALUES ('2562', '黄冈市', '30.447561', '114.927401', '黄冈师范学院');
INSERT INTO `tp_schooljw` VALUES ('2563', '黄冈市', '30.1130006', '115.6025008', '黄冈职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2564', '黄冈市', '30.45191', '114.8940735', '黄冈科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('2565', '九江市', '29.682660663054', '116.01655183285', '九江学院（本部）');
INSERT INTO `tp_schooljw` VALUES ('2566', '九江市', '29.714561', '116.01457', '九江学院（浔东校区）');
INSERT INTO `tp_schooljw` VALUES ('2567', '九江市', '29.692214749524', '115.94875671603', '九江学院（八里湖校区）');
INSERT INTO `tp_schooljw` VALUES ('2568', '九江市', '29.720047', '115.998827', '九江学院（庐峰校区）');
INSERT INTO `tp_schooljw` VALUES ('2569', '九江市', '29.6806304', '115.9889842', '九江职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2570', '九江市', '29.703606', '115.963133', '九江职业大学');
INSERT INTO `tp_schooljw` VALUES ('2571', '九江市', '29.705434', '115.99344', '江西财经职业学院');
INSERT INTO `tp_schooljw` VALUES ('2572', '九江市', '29.709541', '115.986856', '九江广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('2573', '九江市', '29.707900914065', '115.96865418307', '九江职业大学（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2574', '景德镇市', '29.326727', '117.316276', '景德镇陶瓷学院（湘湖校区）');
INSERT INTO `tp_schooljw` VALUES ('2575', '景德镇市', '29.303557965205', '117.18651391171', '景德镇陶瓷科学技术学院');
INSERT INTO `tp_schooljw` VALUES ('2576', '景德镇市', '29.274271', '117.1849214', '景德镇学院');
INSERT INTO `tp_schooljw` VALUES ('2577', '景德镇市', '29.2945894', '117.2435311', '江西陶瓷工艺美术职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2578', '景德镇市', '29.360334', '117.234609', '景德镇陶瓷职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2579', '吉安市', '27.116061491765', '115.03817137003', '井冈山大学（校本部）');
INSERT INTO `tp_schooljw` VALUES ('2580', '吉安市', '27.1092665', '114.9574175', '吉安卫校');
INSERT INTO `tp_schooljw` VALUES ('2581', '吉安市', '27.11020905277', '114.983222022', '井冈山大学临床医学院');
INSERT INTO `tp_schooljw` VALUES ('2582', '吉安市', '27.160925265884', '114.96043201122', '吉安职业技术学院（吉州校区）');
INSERT INTO `tp_schooljw` VALUES ('2583', '固原市', '31.2344643', '121.4190552', '宁夏师范大学');
INSERT INTO `tp_schooljw` VALUES ('2584', '石嘴山市', '37.321317157424', '106.15547497692', '宁夏理工大学');
INSERT INTO `tp_schooljw` VALUES ('2585', '吴忠市', '37.321317157424', '106.15547497692', '宁夏民族职业技术学校');
INSERT INTO `tp_schooljw` VALUES ('2586', '大同市', '40.097291133284', '113.36152906602', '大同大学（御东校区）');
INSERT INTO `tp_schooljw` VALUES ('2587', '大同市', '40.0323501', '113.1735831', '大同大学煤炭工程学院');
INSERT INTO `tp_schooljw` VALUES ('2588', '大同市', '40.026057', '113.184305', '大同煤炭职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2589', '临汾市', '36.082848', '111.549935', '山西师范大学');
INSERT INTO `tp_schooljw` VALUES ('2590', '临汾市', '36.059461', '111.615744', '临汾职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2591', '临汾市', '36.082847', '111.549935', '山西师范大学现代文理学院');
INSERT INTO `tp_schooljw` VALUES ('2592', '临汾市', '36.084331', '111.581551', '山西师范大学体育学院');
INSERT INTO `tp_schooljw` VALUES ('2593', '临汾市', '36.080455', '111.512871', '山西师范大学临汾学院');
INSERT INTO `tp_schooljw` VALUES ('2594', '阳泉市', '37.869526715863', '113.56923526604', '山西工程技术学院（阳泉）');
INSERT INTO `tp_schooljw` VALUES ('2595', '通化市', '41.7470609', '125.9852628', '通化师范学院');
INSERT INTO `tp_schooljw` VALUES ('2596', '通化市', '41.75337381324', '125.99343826595', '通化师范学院分校');
INSERT INTO `tp_schooljw` VALUES ('2597', '通化市', '41.7208814', '125.9742904', '通化医药学院');
INSERT INTO `tp_schooljw` VALUES ('2598', '通化市', '41.720052', '125.970178', '通化高等职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2599', '大庆市', '46.589079', '125.151067', '东北石油大学');
INSERT INTO `tp_schooljw` VALUES ('2600', '大庆市', '46.58931', '125.103784', '黑龙江八一农垦大学');
INSERT INTO `tp_schooljw` VALUES ('2601', '大庆市', '46.6041182', '125.1678612', '哈尔滨医科大学（大庆校区）');
INSERT INTO `tp_schooljw` VALUES ('2602', '大庆市', '46.636802', '124.867249', '大庆师范学院');
INSERT INTO `tp_schooljw` VALUES ('2603', '大庆市', '46.661613', '125.139377', '大庆职业学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2604', '大庆市', '46.681749962891', '125.15560667319', '大庆职业学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('2605', '大庆市', '46.600133', '125.044', '大庆医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2606', '佳木斯市', '46.786082', '130.363318', '佳木斯大学');
INSERT INTO `tp_schooljw` VALUES ('2607', '佳木斯市', '45.7317014', '126.7138269', '黑龙江农业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2608', '佳木斯市', '46.796369', '130.325556', '佳木斯技师学院北校区');
INSERT INTO `tp_schooljw` VALUES ('2609', '佳木斯市', '46.813777261139', '130.28473350799', '黑龙江中医药大学（佳木斯校区）');
INSERT INTO `tp_schooljw` VALUES ('2610', '七星区', '25.265553', '110.326363', '广西师范大学(育才校区）');
INSERT INTO `tp_schooljw` VALUES ('2611', '七星区', '25.289478222484', '110.34352796283', '桂林电子科技大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('2612', '七星区', '25.283702', '110.367326', '桂林航天工业学院（北校区）');
INSERT INTO `tp_schooljw` VALUES ('2613', '七星区', '25.281871', '110.373391', '桂林航天工业学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2614', '七星区', '25.289478222484', '110.34352796283', '桂林电子科技大学（金鸡岭校区）');
INSERT INTO `tp_schooljw` VALUES ('2615', '七星区', '25.281191', '110.314147', '桂林理工大学（屏风校区）');
INSERT INTO `tp_schooljw` VALUES ('2616', '七星区', '39.938572786128', '116.42187627741', '桂林医学院（东城校区）');
INSERT INTO `tp_schooljw` VALUES ('2617', '秀峰区', '25.281973', '110.292932', '桂林医学院（乐群校区）');
INSERT INTO `tp_schooljw` VALUES ('2618', '秀峰区', '25.281236', '110.299207', '广西师范大学（王城校区）');
INSERT INTO `tp_schooljw` VALUES ('2619', '秀峰区', '25.276622', '110.285377', '桂林师范高等专科学校（信义校区）');
INSERT INTO `tp_schooljw` VALUES ('2620', '秀峰区', '25.285608', '110.257081', '桂林师范高等专科学校（甲山校区）');
INSERT INTO `tp_schooljw` VALUES ('2621', '灵川县', '25.312751', '110.419461', '桂林电子科技大学（花江校区）');
INSERT INTO `tp_schooljw` VALUES ('2622', '灵川县', '25.316326', '110.416706', '桂林电子科技大学信息科技学院');
INSERT INTO `tp_schooljw` VALUES ('2623', '雁山区', '25.098948', '110.287575', '广西师范大学(雁山校区）');
INSERT INTO `tp_schooljw` VALUES ('2624', '雁山区', '25.067073', '110.306451', '桂林理工大学（雁山校区）');
INSERT INTO `tp_schooljw` VALUES ('2625', '雁山区', '25.096899', '110.278454', '广西师范大学漓江学院');
INSERT INTO `tp_schooljw` VALUES ('2626', '雁山区', '25.112802469014', '110.37148323029', '桂林旅游学院（雁山校区）');
INSERT INTO `tp_schooljw` VALUES ('2627', '雁山区', '25.070221357189', '110.3134257452', '桂林理工大学博文管理学院（雁山区）');
INSERT INTO `tp_schooljw` VALUES ('2628', '临桂县', '25.280934', '110.290644', '桂林医学院');
INSERT INTO `tp_schooljw` VALUES ('2629', '临桂县', '25.240774436798', '110.19904450465', '桂林山水职业学院');
INSERT INTO `tp_schooljw` VALUES ('2630', '金华市', '29.133257', '119.641469', '浙江师范大学');
INSERT INTO `tp_schooljw` VALUES ('2631', '金华市', '29.063067', '119.636764', '金华职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2632', '金华市', '29.126124', '119.660636', '上海财经大学浙江学院');
INSERT INTO `tp_schooljw` VALUES ('2633', '金华市', '29.1266509', '119.6377614', '浙江师范大学成教学院');
INSERT INTO `tp_schooljw` VALUES ('2634', '牡丹江市', '44.586191', '129.564142', '牡丹江师范学院');
INSERT INTO `tp_schooljw` VALUES ('2635', '牡丹江市', '44.604548', '129.580171', '牡丹江医学院');
INSERT INTO `tp_schooljw` VALUES ('2636', '牡丹江市', '44.605427177841', '129.38210715818', '牡丹江大学(海林分校)');
INSERT INTO `tp_schooljw` VALUES ('2637', '牡丹江市', '44.591581', '129.591033', '黑龙江商业职业学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2638', '牡丹江市', '44.601095', '129.592859', '黑龙江幼儿师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2639', '牡丹江市', '44.6098124', '129.6221674', '牡丹江林区电视大学');
INSERT INTO `tp_schooljw` VALUES ('2640', '牡丹江市', '44.587623', '129.567794', '黑龙江林业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2641', '牡丹江市', '47.356590055953', '128.04740482177', '黑龙江农业经济学院');
INSERT INTO `tp_schooljw` VALUES ('2642', '牡丹江市', '44.5946488', '129.5782528', '牡丹江技师学院');
INSERT INTO `tp_schooljw` VALUES ('2643', '牡丹江市', '44.598392989594', '129.57800064074', '牡丹江大学（校本部）');
INSERT INTO `tp_schooljw` VALUES ('2644', '鸡西市', '45.707847', '126.606548', '黑龙江工业学院');
INSERT INTO `tp_schooljw` VALUES ('2645', '绥化市', '46.6259694', '126.9758345', '绥化学院');
INSERT INTO `tp_schooljw` VALUES ('2646', '绥化市', '46.6398333', '126.9777028', '绥化广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('2647', '绥化市', '45.6991288', '126.8399516', '黑龙江第二技师学院');
INSERT INTO `tp_schooljw` VALUES ('2648', '张家口市', '40.759951', '114.898931', '河北建筑工程学院');
INSERT INTO `tp_schooljw` VALUES ('2649', '张家口市', '40.771402', '114.881469', '河北北方学院');
INSERT INTO `tp_schooljw` VALUES ('2650', '张家口市', '40.7798741', '114.8782454', '张家口学院');
INSERT INTO `tp_schooljw` VALUES ('2651', '张家口市', '40.73488', '114.920157', '张家口职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2652', '唐山市', '39.664005309119', '118.17730897279', '唐山学院（大学道校区）');
INSERT INTO `tp_schooljw` VALUES ('2653', '唐山市', '39.664005309119', '118.17730897279', '唐山学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2654', '唐山市', '39.695343', '118.207688', '唐山学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2655', '唐山市', '39.679646301903', '118.18111778816', '唐山师范学院（大学道校区）');
INSERT INTO `tp_schooljw` VALUES ('2656', '唐山市', '39.6358413', '118.157936', '唐山师范学院（学院路校区）');
INSERT INTO `tp_schooljw` VALUES ('2657', '唐山市', '39.631399759994', '118.16969134207', '华北理工大学轻工学院（丰润校区）');
INSERT INTO `tp_schooljw` VALUES ('2658', '唐山市', '39.6220434', '118.1351491', '唐山职业技术学院（东院）');
INSERT INTO `tp_schooljw` VALUES ('2659', '唐山市', '39.627801435897', '118.2249640801', '河北科技大学唐山分校');
INSERT INTO `tp_schooljw` VALUES ('2660', '唐山市', '39.631399759994', '118.16969134207', '华北理工大学 （本部）');
INSERT INTO `tp_schooljw` VALUES ('2661', '唐山市', '39.632229', '118.128275', '河北能源职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2662', '唐山市', '39.668420970967', '118.21871187375', '唐山工业职业技术学院(南校区)');
INSERT INTO `tp_schooljw` VALUES ('2663', '唐山市', '39.631399759994', '118.16969134207', '华北理工大学冀唐学院');
INSERT INTO `tp_schooljw` VALUES ('2664', '唐山市', '39.668420970967', '118.21871187375', '唐山工业职业技术学院（曹妃甸区）');
INSERT INTO `tp_schooljw` VALUES ('2665', '唐山市', '39.631399759994', '118.16969134207', '华北理工大学（煤医校区）');
INSERT INTO `tp_schooljw` VALUES ('2666', '唐山市', '39.630003521498', '118.13986759914', '唐山职业技术学院（本部）');
INSERT INTO `tp_schooljw` VALUES ('2667', '唐山市', '39.5983597', '118.2379002', '唐山科技职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2668', '唐山市', '39.657839569563', '118.18506134934', '华北理工轻工学院（路北区）');
INSERT INTO `tp_schooljw` VALUES ('2669', '唐山市', '39.664005309119', '118.17730897279', '唐山学院（荷花坑校区）');
INSERT INTO `tp_schooljw` VALUES ('2670', '唐山市', '39.664005309119', '118.17730897279', '唐山学院（龙泽路校区）');
INSERT INTO `tp_schooljw` VALUES ('2671', '常德市', '29.02518', '111.720481', '湖南文理学院芙蓉学院');
INSERT INTO `tp_schooljw` VALUES ('2672', '常德市', '29.012141984985', '111.65371553176', '常德幼儿师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2673', '常德市', '29.0282742', '111.714882', '常德职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2674', '常德市', '29.0434112', '111.6719387', '湖南文理学院');
INSERT INTO `tp_schooljw` VALUES ('2675', '常德市', '32.0758947', '118.8111781', '湖南应用技术学院');
INSERT INTO `tp_schooljw` VALUES ('2676', '常德市', '28.81276', '111.943843', '湖南高尔夫旅游职业学院');
INSERT INTO `tp_schooljw` VALUES ('2677', '石峰区', '27.918085989379', '113.15782031106', '湖南铁路科技职业技术学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2678', '石峰区', '27.848701', '113.18178', '湖南职业化工技术学院');
INSERT INTO `tp_schooljw` VALUES ('2679', '石峰区', '27.695857415397', '111.72065725834', '湖南汽车工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2680', '石峰区', '27.851935', '113.165828', '湖南冶金职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2681', '石峰区', '27.89718479264', '113.10429028573', '湖南化工职业技术学院北院');
INSERT INTO `tp_schooljw` VALUES ('2682', '石峰区', '27.8870559411', '113.15047217199', '湖南汽车工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('2683', '石峰区', '27.877628', '113.13527', '湖南铁道职业技术学院（东院）');
INSERT INTO `tp_schooljw` VALUES ('2684', '石峰区', '27.886042205048', '113.13505724944', '湖南铁道职业技术学院（南院）');
INSERT INTO `tp_schooljw` VALUES ('2685', '天元区', '27.8714049', '113.1828903', '湖南工业大学');
INSERT INTO `tp_schooljw` VALUES ('2686', '天元区', '27.822772501089', '113.11578859626', '湖南工业大学（河西校区）');
INSERT INTO `tp_schooljw` VALUES ('2687', '芦淞区', '27.695857415397', '111.72065725834', '湖南中医药高等专科学院');
INSERT INTO `tp_schooljw` VALUES ('2688', '芦淞区', '27.847137830326', '113.15505353009', '湖南铁路科技职业技术学院（南院）');
INSERT INTO `tp_schooljw` VALUES ('2689', '云龙区', '0', '0', '湖南化工职业技术学院新校区');
INSERT INTO `tp_schooljw` VALUES ('2690', '荷塘区', '39.126619402125', '117.26169311564', '湖南工业大学（河东校区）');
INSERT INTO `tp_schooljw` VALUES ('2691', '荷塘区', '27.695857415397', '111.72065725834', '湖南铁路职业技术学院东院');
INSERT INTO `tp_schooljw` VALUES ('2692', '荷塘区', '28.0713596', '113.0453213', '湖南商业技师学院');
INSERT INTO `tp_schooljw` VALUES ('2693', '荷塘区', '27.907831425719', '113.17619065873', '湖南化工职业技术学院东院');
INSERT INTO `tp_schooljw` VALUES ('2694', '荷塘区', '27.9121', '113.151308', '湖南有色金属职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2695', '秦皇岛市', '39.8000156', '119.4218779', '河北外国语职业学院');
INSERT INTO `tp_schooljw` VALUES ('2696', '秦皇岛市', '39.8344903', '119.48136', '秦皇岛职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2697', '秦皇岛市', '37.550334076287', '104.11412062077', '中国环境干部管理学院');
INSERT INTO `tp_schooljw` VALUES ('2698', '秦皇岛市', '39.927959', '119.635826', '河北农业大学海洋学院');
INSERT INTO `tp_schooljw` VALUES ('2699', '秦皇岛市', '39.897069', '119.525337', '东北石油大学秦皇岛分校');
INSERT INTO `tp_schooljw` VALUES ('2700', '秦皇岛市', '39.912532067445', '119.53455876782', '燕山大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2701', '秦皇岛市', '39.9087602', '119.5194288', '燕山大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('2702', '秦皇岛市', '39.917768679168', '119.56604437594', '河北建材职业技术学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2703', '秦皇岛市', '39.917768679168', '119.56604437594', '河北建材职业技术学院（欧美校区）');
INSERT INTO `tp_schooljw` VALUES ('2704', '秦皇岛市', '39.945459975563', '119.604366089', '河北宣化职业技术学院秦皇岛分校');
INSERT INTO `tp_schooljw` VALUES ('2705', '秦皇岛市', '39.917768679168', '119.56604437594', '河北建材职业技术学院（主校区）');
INSERT INTO `tp_schooljw` VALUES ('2706', '秦皇岛市', '39.9233161', '119.5566247', '东北大学秦皇岛分校');
INSERT INTO `tp_schooljw` VALUES ('2707', '秦皇岛市', '39.937535498261', '119.53197164795', '河北科技师范学院（主校区）');
INSERT INTO `tp_schooljw` VALUES ('2708', '秦皇岛市', '39.937535498261', '119.53197164795', '河北科技师范学院（开发区校区）');
INSERT INTO `tp_schooljw` VALUES ('2709', '秦皇岛市', '39.716676152476', '119.18957351977', '河北科技师范学院（昌黎校区）');
INSERT INTO `tp_schooljw` VALUES ('2710', '新北市', '25.0338181', '121.4333791', '台湾辅仁大学');
INSERT INTO `tp_schooljw` VALUES ('2711', '岳阳市', '29.333303', '113.14848', '湖南理工学院（南院）');
INSERT INTO `tp_schooljw` VALUES ('2712', '岳阳市', '29.357379', '113.1219452', '湖南理工学院南湖学院');
INSERT INTO `tp_schooljw` VALUES ('2713', '岳阳市', '27.695857415397', '111.72065725834', '湖南民族职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2714', '岳阳市', '29.292385', '113.147113', '岳阳职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2715', '玉林市', '22.67656', '110.198917', '玉林师范学院（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2716', '玉林市', '22.658474368765', '110.21089315433', '玉林师范学院（西校区）');
INSERT INTO `tp_schooljw` VALUES ('2717', '东莞市', '22.903959', '113.876196', '东莞理工学院（松山湖校区）');
INSERT INTO `tp_schooljw` VALUES ('2718', '东莞市', '22.925123', '113.8655422', '广东医学院（东莞校区）');
INSERT INTO `tp_schooljw` VALUES ('2719', '东莞市', '23.05716', '113.768678', '东莞理工学院城市学院');
INSERT INTO `tp_schooljw` VALUES ('2720', '东莞市', '23.062269', '113.582322', '中山大学新华学院（东莞校区）');
INSERT INTO `tp_schooljw` VALUES ('2721', '东莞市', '22.918379', '113.860732', '东莞职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2722', '东莞市', '22.970343', '113.754053', '广东科技学院');
INSERT INTO `tp_schooljw` VALUES ('2723', '东莞市', '23.0532214', '113.7705808', '东莞理工学院（莞城校区）');
INSERT INTO `tp_schooljw` VALUES ('2724', '珠海市', '22.341292', '113.589776', '中山大学（珠海校区）');
INSERT INTO `tp_schooljw` VALUES ('2725', '珠海市', '22.248755', '113.534427', '暨南大学（珠海校区）');
INSERT INTO `tp_schooljw` VALUES ('2726', '珠海市', '22.364937', '113.546047', '北京理工大学珠海学院');
INSERT INTO `tp_schooljw` VALUES ('2727', '珠海市', '22.350705', '113.543509', '北京师范大学（珠海分校）');
INSERT INTO `tp_schooljw` VALUES ('2728', '珠海市', '22.048702', '113.404528', '吉林大学珠海学院');
INSERT INTO `tp_schooljw` VALUES ('2729', '珠海市', '22.07072', '113.402145', '遵义医学院（珠海校区）');
INSERT INTO `tp_schooljw` VALUES ('2730', '珠海市', '22.133643', '113.359554', '珠海城市职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2731', '珠海市', '22.134565823839', '113.35993006768', '广东科学技术职业学院（珠海分院）');
INSERT INTO `tp_schooljw` VALUES ('2732', '珠海市', '22.1345546', '113.3559407', '珠海艺术学院');
INSERT INTO `tp_schooljw` VALUES ('2733', '淮南市', '32.6532879', '117.0016647', '安徽理工大学(北校区)');
INSERT INTO `tp_schooljw` VALUES ('2734', '淮南市', '32.639632762166', '117.01724622026', '安徽理工大学（本部）');
INSERT INTO `tp_schooljw` VALUES ('2735', '淮南市', '32.623758', '116.990771', '安徽理工大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('2736', '武威市', '37.677303', '102.845711', '甘肃畜牧工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2737', '武威市', '37.9320482', '102.6062008', '武威职业学院');
INSERT INTO `tp_schooljw` VALUES ('2738', '天水市', '34.5715549', '105.7012699', '天水师范学院');
INSERT INTO `tp_schooljw` VALUES ('2739', '天水市', '34.482769', '105.912255', '甘肃林业职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2740', '天水市', '34.566413', '105.663947', '甘肃机电职业技术学院（秦州区）');
INSERT INTO `tp_schooljw` VALUES ('2741', '张掖市', '38.943854', '100.4447198', '河西学院');
INSERT INTO `tp_schooljw` VALUES ('2742', '白银市', '35.41799', '116.594923', '白银矿冶职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2743', '定西市', '35.561381', '104.5954079', '定西师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2744', '甘南州', '34.9599367', '102.8966942', '甘肃民族师范学院');
INSERT INTO `tp_schooljw` VALUES ('2745', '嘉峪关市', '39.7835056', '98.2858555', '甘肃钢铁职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2746', '金昌市', '38.55158', '102.179799', '甘肃有色冶金职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2747', '绍兴市', '30.035307054298', '120.58368078987', '浙江工业职业技术学院（镜湖校区）');
INSERT INTO `tp_schooljw` VALUES ('2748', '绍兴市', '29.975555129826', '120.6099562091', '浙江越秀外国语学院（镜湖校区）');
INSERT INTO `tp_schooljw` VALUES ('2749', '绍兴市', '30.035307054298', '120.58368078987', '浙江工业职业技术学院（梅山校区）');
INSERT INTO `tp_schooljw` VALUES ('2750', '绍兴市', '29.986317', '120.568067', '绍兴文理学院（河西校区）');
INSERT INTO `tp_schooljw` VALUES ('2751', '绍兴市', '29.9820049', '120.5710417', '绍兴文理学院（南山校区）');
INSERT INTO `tp_schooljw` VALUES ('2752', '绍兴市', '29.159492070564', '119.95719352744', '浙江农业商贸职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2753', '绍兴市', '29.9867517', '120.5616539', '浙江邮电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2754', '绍兴市', '30.0103109', '120.6666902', '绍兴职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2755', '绍兴市', '29.975555129826', '120.6099562091', '浙江越秀外国语学院（稽山校区）');
INSERT INTO `tp_schooljw` VALUES ('2756', '绍兴市', '29.9801999', '120.5712494', '绍兴文理学院元培学院');
INSERT INTO `tp_schooljw` VALUES ('2757', '绍兴市', '30.098654969863', '120.48980786407', '浙江工业大学之江学院（柯桥校区）');
INSERT INTO `tp_schooljw` VALUES ('2758', '邯郸市', '36.5766777', '114.4908668', '邯郸学院');
INSERT INTO `tp_schooljw` VALUES ('2759', '邯郸市', '36.577973146085', '114.50763215093', '河北工程大学（主校区）');
INSERT INTO `tp_schooljw` VALUES ('2760', '邯郸市', '36.569572', '114.495725', '河北工程大学科信学院');
INSERT INTO `tp_schooljw` VALUES ('2761', '邯郸市', '36.618081', '114.501954', '河北工程大学医学院');
INSERT INTO `tp_schooljw` VALUES ('2762', '邯郸市', '36.6006494', '114.4927668', '河北工程大学水电学院');
INSERT INTO `tp_schooljw` VALUES ('2763', '邯郸市', '36.583259', '114.512708', '邯郸大学');
INSERT INTO `tp_schooljw` VALUES ('2764', '邯郸市', '36.577973146085', '114.50763215093', '河北工程大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('2765', '邯郸市', '36.588301', '114.493438', '河北工程大学（中华南校区）');
INSERT INTO `tp_schooljw` VALUES ('2766', '邢台市', '37.059795', '114.4609323', '河北机电职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2767', '邢台市', '37.0889889', '114.4638737', '邢台医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2768', '邢台市', '37.084588', '114.464047', '邢台职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2769', '邢台市', '37.0918076', '114.5051998', '邢台学院');
INSERT INTO `tp_schooljw` VALUES ('2770', '邢台市', '37.095106053018', '114.46825942042', '邢台医学高等专科学校(皇寺校区)');
INSERT INTO `tp_schooljw` VALUES ('2771', '鄂州市', '30.384431612097', '114.89559233458', '鄂州职业学院');
INSERT INTO `tp_schooljw` VALUES ('2772', '百色市', '23.941860812831', '106.50558953716', '右江名族医学院');
INSERT INTO `tp_schooljw` VALUES ('2773', '百色市', '23.912064', '106.625602', '百色职业学院');
INSERT INTO `tp_schooljw` VALUES ('2774', '百色市', '23.890209', '106.606852', '百色学院');
INSERT INTO `tp_schooljw` VALUES ('2775', '百色市', '23.315346', '107.602548', '广西工程职业学院');
INSERT INTO `tp_schooljw` VALUES ('2776', '承德市', '40.961644', '117.936681', '承德石油高等专科学校（双桥区）');
INSERT INTO `tp_schooljw` VALUES ('2777', '承德市', '40.901762365286', '117.96560531326', '河北民族师范学院');
INSERT INTO `tp_schooljw` VALUES ('2778', '承德市', '40.899663', '117.948768', '河北旅游职业学院');
INSERT INTO `tp_schooljw` VALUES ('2779', '承德市', '41.028658', '117.952408', '承德医学院（双桥区）');
INSERT INTO `tp_schooljw` VALUES ('2780', '承德市', '40.971399815664', '117.94834886441', '承德卫校（双桥区）');
INSERT INTO `tp_schooljw` VALUES ('2781', '沧州市', '39.615682', '116.745291', '北京交通大学海滨学院');
INSERT INTO `tp_schooljw` VALUES ('2782', '沧州市', '38.395571134179', '117.32341568723', '渤海理工职业学院');
INSERT INTO `tp_schooljw` VALUES ('2783', '沧州市', '38.401516643175', '117.40021182528', '河北农业大学（黄骅校区）');
INSERT INTO `tp_schooljw` VALUES ('2784', '沧州市', '38.38635850981', '117.448423882', '北京中医药大学东方学院（渤海校区）');
INSERT INTO `tp_schooljw` VALUES ('2785', '沧州市', '38.2815763', '116.8223666', '沧州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2786', '沧州市', '38.282429', '116.804161', '沧州医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2787', '沧州市', '38.286846', '116.783583', '沧州师范学院');
INSERT INTO `tp_schooljw` VALUES ('2788', '沧州市', '38.310262', '116.843716', '河北工程技术高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2789', '淄博市', '36.810009', '117.999766', '山东理工大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('2790', '淄博市', '36.10626', '120.381977', '山东理工大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2791', '淄博市', '36.485651', '117.854497', '淄博职业学院');
INSERT INTO `tp_schooljw` VALUES ('2792', '淄博市', '36.8874393', '118.0804865', '山东工业职业学院');
INSERT INTO `tp_schooljw` VALUES ('2793', '淄博市', '36.651146', '117.892674', '山东水利技师学院');
INSERT INTO `tp_schooljw` VALUES ('2794', '淄博市', '36.818138718768', '118.06955722687', '齐鲁医药学院');
INSERT INTO `tp_schooljw` VALUES ('2795', '淄博市', '36.755604', '118.048395', '山东铝业职业学院 ');
INSERT INTO `tp_schooljw` VALUES ('2796', '淄博市', '36.775902', '117.860464', '山东轻工职业学院');
INSERT INTO `tp_schooljw` VALUES ('2797', '淄博市', '36.6620656', '117.908292', '淄博师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2798', '日照市', '35.460765902884', '119.54605707835', '济宁医学院（日照校区）');
INSERT INTO `tp_schooljw` VALUES ('2799', '日照市', '35.447718771585', '119.54585945113', '曲阜师范大学（日照校区）');
INSERT INTO `tp_schooljw` VALUES ('2800', '日照市', '35.4111528', '119.5372823', '日照职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2801', '日照市', '35.467031', '119.531636', '山东外国语职业学院');
INSERT INTO `tp_schooljw` VALUES ('2802', '日照市', '35.4522016', '119.5528471', '山东水利职业学院');
INSERT INTO `tp_schooljw` VALUES ('2803', '日照市', '35.442668407515', '119.54747640105', '山东体育学院（日照校区）');
INSERT INTO `tp_schooljw` VALUES ('2804', '丽水市', '28.4591229', '119.9035837', '丽水学院');
INSERT INTO `tp_schooljw` VALUES ('2805', '茂名市', '21.683435667534', '110.92938485013', '广东石油化工学院（官渡校区）');
INSERT INTO `tp_schooljw` VALUES ('2806', '茂名市', '21.6650969', '110.924142', '广东石油化工学院（光华校区）');
INSERT INTO `tp_schooljw` VALUES ('2807', '包头市', '40.654064', '109.886736', '内蒙古科技大学');
INSERT INTO `tp_schooljw` VALUES ('2808', '包头市', '40.662287', '109.825292', '包头钢铁职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2809', '包头市', '40.638126', '109.945261', '包头轻工职业技术学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2810', '包头市', '40.644314', '109.950968', '包头职业技术学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2811', '包头市', '40.64958767657', '109.958873557', '包头职业技术学院（旧校区）');
INSERT INTO `tp_schooljw` VALUES ('2812', '包头市', '40.650203', '109.885461', '包头市艺术学校');
INSERT INTO `tp_schooljw` VALUES ('2813', '包头市', '40.612540219207', '109.98895780853', '包头医学院（东河校区）');
INSERT INTO `tp_schooljw` VALUES ('2814', '包头市', '40.659713432265', '110.00896307223', '包头铁道职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2815', '包头市', '40.656015', '109.885784', '包头师范学院');
INSERT INTO `tp_schooljw` VALUES ('2816', '通辽市', '43.628868', '122.253961', '内蒙古民族大学(北区)');
INSERT INTO `tp_schooljw` VALUES ('2817', '通辽市', '43.6227727', '122.2617634', '内蒙古民族大学(东区)');
INSERT INTO `tp_schooljw` VALUES ('2818', '通辽市', '43.629148644051', '122.26661124753', '内蒙古民族大学(新区)');
INSERT INTO `tp_schooljw` VALUES ('2819', '通辽市', '43.680766', '122.251031', '通辽职业学院');
INSERT INTO `tp_schooljw` VALUES ('2820', '通辽市', '43.680181', '122.260922', '科尔沁艺术职业学院');
INSERT INTO `tp_schooljw` VALUES ('2821', '咸宁市', '29.831656215439', '114.32183560745', '咸宁职业技术学院（咸安校区）');
INSERT INTO `tp_schooljw` VALUES ('2822', '咸宁市', '29.8657114', '114.2716435', '湖北科技学院（咸安校区）');
INSERT INTO `tp_schooljw` VALUES ('2823', '咸宁市', '44.968818023835', '80.952148470108', '湖北科技学院（温泉校区）');
INSERT INTO `tp_schooljw` VALUES ('2824', '咸宁市', '44.968818023835', '80.952148470108', '咸宁职业技术学院（温泉校区）');
INSERT INTO `tp_schooljw` VALUES ('2825', '台州市', '28.6669699', '121.2653407', '台州科技职业学院');
INSERT INTO `tp_schooljw` VALUES ('2826', '台州市', '28.652332', '121.401725', '台州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2827', '台州市', '28.6558213', '121.4026911', '台州学院（椒江区）');
INSERT INTO `tp_schooljw` VALUES ('2828', '台州市', '28.6558213', '121.4026911', '台州学院（临海市）');
INSERT INTO `tp_schooljw` VALUES ('2829', '泰安市', '36.230534656487', '117.04282097813', '泰山学院（本部）');
INSERT INTO `tp_schooljw` VALUES ('2830', '泰安市', '36.131466', '117.079629', '泰山学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2831', '泰安市', '36.200703', '117.12867', '山东农业大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2832', '泰安市', '36.3194083', '120.3884727', '山东农业大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('2833', '泰安市', '36.165127', '117.1566429', '山东农业大学（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2834', '泰安市', '36.206876665246', '117.13904746436', '山东科技大学（东校区）');
INSERT INTO `tp_schooljw` VALUES ('2835', '泰安市', '36.206876665246', '117.13904746436', '山东科技大学（西校区）');
INSERT INTO `tp_schooljw` VALUES ('2836', '泰安市', '36.210014493958', '117.11535016501', '泰山医学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2837', '泰安市', '36.210014493958', '117.11535016501', '泰山医学院（本部）');
INSERT INTO `tp_schooljw` VALUES ('2838', '泰安市', '36.221568', '117.177034', '泰山职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2839', '泰安市', '36.1943262', '117.1769321', '山东服装职业学院');
INSERT INTO `tp_schooljw` VALUES ('2840', '泰安市', '36.188076156852', '117.08940710188', '山东交通职业学院（泰安校区）');
INSERT INTO `tp_schooljw` VALUES ('2841', '泰安市', '36.597261', '117.02655', '山东电力高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2842', '泰安市', '36.124855', '117.078931', '山东医药技师学院');
INSERT INTO `tp_schooljw` VALUES ('2843', '泰安市', '36.1220264', '117.0841681', '山东财经大学东方学院');
INSERT INTO `tp_schooljw` VALUES ('2844', '泰安市', '36.09928387855', '118.52765710474', '山东省交通运输学院');
INSERT INTO `tp_schooljw` VALUES ('2845', '枣庄市', '35.093484', '117.1043049', '枣庄学院');
INSERT INTO `tp_schooljw` VALUES ('2846', '济宁市', '35.412050625775', '116.56462600601', '济宁医学院（北湖校区）');
INSERT INTO `tp_schooljw` VALUES ('2847', '济宁市', '35.093484', '117.1043049', '济宁学院');
INSERT INTO `tp_schooljw` VALUES ('2848', '济宁市', '35.432055', '116.592351', '济宁职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2849', '济宁市', '35.780265', '117.111529', '曲阜远东职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2850', '济宁市', '35.355661', '116.579657', '山东理工职业学院');
INSERT INTO `tp_schooljw` VALUES ('2851', '济宁市', '35.4269967', '116.5810457', '山东济宁教育学院');
INSERT INTO `tp_schooljw` VALUES ('2852', '济宁市', '35.408079', '116.9575024', '兖州矿区职工大学');
INSERT INTO `tp_schooljw` VALUES ('2853', '济宁市', '35.601568168939', '116.97560975988', '曲阜师范大学（曲阜校区）');
INSERT INTO `tp_schooljw` VALUES ('2854', '衢州市', '28.974121', '118.86456', '衢州学院');
INSERT INTO `tp_schooljw` VALUES ('2855', '衢州市', '28.951896', '118.870003', '衢州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2856', '惠州市', '23.07611', '114.472589', '惠州经济职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2857', '惠州市', '23.0405812', '114.4131875', '惠州学院');
INSERT INTO `tp_schooljw` VALUES ('2858', '中山市', '22.477898', '113.4124929', '广东药学院（中山校区）');
INSERT INTO `tp_schooljw` VALUES ('2859', '中山市', '22.527037', '113.390434', '电子科技大学中山学院');
INSERT INTO `tp_schooljw` VALUES ('2860', '中山市', '22.5510883', '113.4576809', '火炬职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2861', '中山市', '22.429298', '113.391738', '广东理工职业学院（中山校区）');
INSERT INTO `tp_schooljw` VALUES ('2862', '中山市', '22.511394', '113.432607', '中山职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2863', '滨州市', '37.415564', '117.99935', '滨州职业学院');
INSERT INTO `tp_schooljw` VALUES ('2864', '滨州市', '37.386801', '117.986885', '滨州学院（滨城区）');
INSERT INTO `tp_schooljw` VALUES ('2865', '滨州市', '37.3740925', '118.0130629', '滨州医学院');
INSERT INTO `tp_schooljw` VALUES ('2866', '临沂市', '35.090785', '118.326879', '临沂大学');
INSERT INTO `tp_schooljw` VALUES ('2867', '临沂市', '35.261453012532', '118.03815246624', '青岛理工大学（临沂校区）');
INSERT INTO `tp_schooljw` VALUES ('2868', '临沂市', '35.070296', '118.316797', '山东医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2869', '池州市', '30.934009', '117.8309989', '池州学院');
INSERT INTO `tp_schooljw` VALUES ('2870', '遵义市', '27.713184085974', '106.92190922562', '遵义师范学院（本部）');
INSERT INTO `tp_schooljw` VALUES ('2871', '遵义市', '27.722913', '106.944352', '遵义师范学院（汇川分院）');
INSERT INTO `tp_schooljw` VALUES ('2872', '遵义市', '27.713184085974', '106.92190922562', '遵义师范学院（栋青分院）');
INSERT INTO `tp_schooljw` VALUES ('2873', '遵义市', '34.656795186953', '119.26056660422', '遵义师范学院（新浦校区）');
INSERT INTO `tp_schooljw` VALUES ('2874', '遵义市', '27.714423312095', '106.95149940911', '遵义医学院（本部）');
INSERT INTO `tp_schooljw` VALUES ('2875', '遵义市', '34.656795186953', '119.26056660422', '遵义医学院（新浦校区）');
INSERT INTO `tp_schooljw` VALUES ('2876', '遵义市', '27.708616', '107.045607', '遵义职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2877', '遵义市', '27.6662723', '106.889245', '遵义医药高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2878', '遵义市', '26.667392', '106.636335', '贵州航天职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2879', '安顺市', '26.2422681', '105.9031129', '安顺学院');
INSERT INTO `tp_schooljw` VALUES ('2880', '安顺市', '26.239667', '105.942954', '安顺职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2881', '安顺市', '26.244441', '105.940643', '安顺职业技术学院(北区)');
INSERT INTO `tp_schooljw` VALUES ('2882', '安顺市', '26.241921', '105.90352', '安顺广播电视大学');
INSERT INTO `tp_schooljw` VALUES ('2883', '安顺市', '26.247620757343', '105.90998603507', '安顺广播电视大学（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2884', '毕节市', '27.301458527443', '105.31894592498', '贵州工程应用技术学院');
INSERT INTO `tp_schooljw` VALUES ('2885', '毕节市', '27.298161', '105.317202', '毕节职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2886', '毕节市', '0', '0', '毕节医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2887', '都匀市', '0', '0', '黔南民族幼儿师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2888', '都匀市', '26.06833', '106.595811', '贵州盛华职业学院');
INSERT INTO `tp_schooljw` VALUES ('2889', '都匀市', '26.292871', '107.519662', '黔南民族师范学院');
INSERT INTO `tp_schooljw` VALUES ('2890', '都匀市', '26.23752', '107.525238', '黔南民族医学高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2891', '都匀市', '26.308227', '107.456891', '黔南民族职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2892', '凯里市', '26.52928', '107.891715', '凯里学院');
INSERT INTO `tp_schooljw` VALUES ('2893', '凯里市', '26.5836354', '107.9881921', '贵州电子信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2894', '凯里市', '26.56844', '107.9896301', '黔东南民族职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2895', '六盘水市', '26.608142', '104.793423', '六盘水职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2896', '六盘水市', '26.578892', '104.8205046', '六盘水师范学院');
INSERT INTO `tp_schooljw` VALUES ('2897', '兴义市', '25.0933014', '104.9002573', '兴义民族师范学院');
INSERT INTO `tp_schooljw` VALUES ('2898', '兴义市', '25.078572', '104.900784', '黔西南民族职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2899', '铜仁市', '27.694791', '108.842764', '铜仁学院');
INSERT INTO `tp_schooljw` VALUES ('2900', '铜仁市', '27.7356233', '109.2000232', '铜仁职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2901', '铜仁市', '27.674896984707', '109.16855333922', '铜仁幼儿师范高等专科学校');
INSERT INTO `tp_schooljw` VALUES ('2902', '达州市', '31.2364613', '107.4724', '四川文理学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2903', '达州市', '31.287162476768', '107.53769766512', '达州职业技术学院（A校区）');
INSERT INTO `tp_schooljw` VALUES ('2904', '遂宁市', '30.850018', '106.156555', '四川职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2905', '楚雄市', '25.024624', '101.555969', '楚雄师范学院');
INSERT INTO `tp_schooljw` VALUES ('2906', '曲靖市', '25.5023183', '103.7870198', '曲靖师范学院');
INSERT INTO `tp_schooljw` VALUES ('2907', '孝义市', '0', '0', '太原理工大学现代文理学院');
INSERT INTO `tp_schooljw` VALUES ('2908', '梅州市', '24.325387', '116.128732', '嘉应学院');
INSERT INTO `tp_schooljw` VALUES ('2909', '汕头市', '23.411124', '116.639943', '汕头大学');
INSERT INTO `tp_schooljw` VALUES ('2910', '汕尾市', '22.791877', '115.367885', '汕尾职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2911', '潮州市', '23.657869', '116.663859', '韩山师范学院');
INSERT INTO `tp_schooljw` VALUES ('2912', '崇左市', '22.390132458218', '107.40239487664', '广西民族师范学院（本部）');
INSERT INTO `tp_schooljw` VALUES ('2913', '崇左市', '22.806489937269', '108.29723292705', '桂林理工大学南宁分校(空港校区)');
INSERT INTO `tp_schooljw` VALUES ('2914', '崇左市', '22.435054147196', '107.35751553338', '广西理工职业技术学院（崇左校区）');
INSERT INTO `tp_schooljw` VALUES ('2915', '淮安市', '33.612965370572', '119.0149878439', '淮阴工学院（老校区）');
INSERT INTO `tp_schooljw` VALUES ('2916', '淮安市', '33.612965370572', '119.0149878439', '淮阴工学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2917', '淮安市', '33.609907', '119.007969', '淮安信息职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2918', '淮安市', '33.552760268019', '119.05304006531', '江苏食品药品职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2919', '淮安市', '33.606068', '119.016204', '江苏财经职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2920', '淮安市', '32.0775103', '118.8109732', '南京林业大学南方学院');
INSERT INTO `tp_schooljw` VALUES ('2921', '淮安市', '33.647563911762', '119.01361343647', '淮阴师范学院（新校区）');
INSERT INTO `tp_schooljw` VALUES ('2922', '淮安市', '33.647563911762', '119.01361343647', '淮阴师范学院（老校区）');
INSERT INTO `tp_schooljw` VALUES ('2923', '柳州市', '24.334205913891', '109.45514872903', '广西科技大学（东环校区）');
INSERT INTO `tp_schooljw` VALUES ('2924', '柳州市', '23.552247814152', '108.92426813892', '广西科技师范学院（分校区）');
INSERT INTO `tp_schooljw` VALUES ('2925', '柳州市', '24.465754', '109.37935', '广西生态工程职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2926', '柳州市', '24.322772136685', '109.37574750503', '柳州铁道职业技术学院（和平路校区）');
INSERT INTO `tp_schooljw` VALUES ('2927', '柳州市', '24.29658', '109.428271', '柳州职业技术学院（南校区）');
INSERT INTO `tp_schooljw` VALUES ('2928', '柳州市', '24.300429', '109.44466', '柳州职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2929', '柳州市', '24.329053023202', '109.42239651015', '柳州城市职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2930', '柳州市', '24.36812', '109.529796', '广西科技大学鹿山学院');
INSERT INTO `tp_schooljw` VALUES ('2931', '柳州市', '24.334205913891', '109.45514872903', '广西科技大学医学院（柳石校区）');
INSERT INTO `tp_schooljw` VALUES ('2932', '柳州市', '24.322772136685', '109.37574750503', '柳州铁道职业技术学院（官塘新校区）');
INSERT INTO `tp_schooljw` VALUES ('2933', '乐山市', '29.568325', '103.4521142', '西南交通大学(峨眉校区)');
INSERT INTO `tp_schooljw` VALUES ('2934', '乐山市', '29.576136', '103.46184', '成都中医药大学峨眉学院');
INSERT INTO `tp_schooljw` VALUES ('2935', '乐山市', '29.556832', '103.743564', '乐山职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2936', '乐山市', '29.554904', '103.752231', '乐山师范学院');
INSERT INTO `tp_schooljw` VALUES ('2937', '乐山市', '29.555768', '103.741353', '成都理工大学工程技术学院');
INSERT INTO `tp_schooljw` VALUES ('2938', '黑河市', '50.227365', '127.544234', '黑河学院');
INSERT INTO `tp_schooljw` VALUES ('2939', '延吉市', '42.934676', '129.47618', '延边大学');
INSERT INTO `tp_schooljw` VALUES ('2940', '眉山市', '30.061113751489', '103.8414220171', '四川城市职业学院（眉山校区）');
INSERT INTO `tp_schooljw` VALUES ('2941', '眉山市', '30.698048054932', '103.81028674813', '成都信息工程大学（天府校区）');
INSERT INTO `tp_schooljw` VALUES ('2942', '眉山市', '30.061113751489', '103.8414220171', '四川工商学院（眉山校区）');
INSERT INTO `tp_schooljw` VALUES ('2943', '眉山市', '30.213946', '103.873776', '四川大学锦江学院');
INSERT INTO `tp_schooljw` VALUES ('2944', '眉山市', '30.0358411', '103.8355718', '眉山职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2945', '江门市', '22.582338', '113.072756', '江门职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2946', '江门市', '28.148745', '112.904939', '南方职业学院');
INSERT INTO `tp_schooljw` VALUES ('2947', '江门市', '22.599248', '113.086634', '五邑大学');
INSERT INTO `tp_schooljw` VALUES ('2948', '雅安市', '29.978244', '103.010352', '雅安职业技术学院');
INSERT INTO `tp_schooljw` VALUES ('2949', '雅安市', '29.983876599293', '103.00130872695', '四川农业大学（雅安校区）');
INSERT INTO `tp_schooljw` VALUES ('2950', '宜宾市', '28.769669413772', '104.6330178039', '宜宾职业学院');
INSERT INTO `tp_schooljw` VALUES ('2951', '宜宾市', '28.7946881', '104.6099347', '宜宾学院');
INSERT INTO `tp_schooljw` VALUES ('2952', '黄石市', '30.1953733', '115.0690993', '湖北理工学院');
INSERT INTO `tp_schooljw` VALUES ('2953', '黄石市', '30.229419', '115.066482', '湖北师范学院');

-- ----------------------------
-- Table structure for `tp_sysinfo`
-- ----------------------------
DROP TABLE IF EXISTS `tp_sysinfo`;
CREATE TABLE `tp_sysinfo` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `webname` varchar(100) DEFAULT NULL COMMENT '网站名称',
  `title` varchar(100) DEFAULT NULL COMMENT '网站首页标题',
  `keyword` varchar(100) DEFAULT NULL COMMENT '网站关键词',
  `description` tinytext COMMENT '网站首页描述',
  `contact` varchar(20) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(30) DEFAULT NULL COMMENT '公司坐机',
  `salecall` varchar(30) DEFAULT NULL COMMENT '手机号码',
  `fax` varchar(20) DEFAULT NULL COMMENT '公司传真',
  `qq` varchar(22) DEFAULT NULL COMMENT '合作QQ',
  `address` varchar(50) DEFAULT NULL COMMENT '公司地址',
  `postcard` varchar(10) DEFAULT NULL COMMENT '邮编',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `dingyuehao` varchar(50) DEFAULT NULL COMMENT '订阅号',
  `website` varchar(50) DEFAULT NULL COMMENT '网址',
  `icp` varchar(100) DEFAULT NULL COMMENT '备案号',
  `copyright` varchar(100) DEFAULT NULL COMMENT '版权信息',
  `ekeyword` tinytext,
  `edescription` tinytext,
  `ewebname` varchar(100) DEFAULT NULL,
  `etitle` varchar(100) DEFAULT NULL,
  `eaddress` varchar(200) DEFAULT NULL,
  `intro` text COMMENT '企业简介',
  `servicecom` varchar(50) DEFAULT NULL COMMENT '服务多少家公司',
  `helpcom` varchar(50) DEFAULT NULL COMMENT '帮助多少家公司',
  `managecom` varchar(50) DEFAULT NULL COMMENT '管理多少家',
  `ecopyright` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_sysinfo
-- ----------------------------
INSERT INTO `tp_sysinfo` VALUES ('1', '江西国泰集团技术研究院', '江西国泰集团技术研究院', '国泰研究院,民爆器材,爆破工程,国泰集团技术研究院,国泰下载中心,研究院下载中心,国泰研究院下载中心,国泰集团技术研究院下载中心', '江西国泰民爆集团股份有限公司直属综合性研究机构，是国泰集团开启二次创业，提高科技创新能力，实现三个一流的重要保证', '黄先生', '0791-88111612', '15970465334', '0791-88115785 ', '549217991', '江西省南昌市高新一路89号', '330029', '283863258@qq.com', '', 'www.gtyjy.com', '赣ICP备12006135号-2', 'Copyright © 2018 江西国泰集团技术研究院 版权所有', '', null, '', '', '', '研究院整合了省民爆器材与爆破技术工程研究中心、省金属3D打印工程技术研究中心、省油相材料工程技术研究中心、博士后科研工作站等科技平台资源，拥有综合管理部、研发事业部、财务部三个职能部门，并在南昌、新余、抚州、吉安、宜春等地建有多个研发基地。\r\n', '120', '130', '140', '');
INSERT INTO `tp_sysinfo` VALUES ('2', '南昌雅腾', '', '', '', '', '', '', '', '', '', '', '', null, '', 'icp', '', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tp_users`
-- ----------------------------
DROP TABLE IF EXISTS `tp_users`;
CREATE TABLE `tp_users` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `userpwd` varchar(64) NOT NULL,
  `realname` varchar(30) DEFAULT NULL COMMENT '真实姓名',
  `sex` char(1) DEFAULT NULL,
  `addtime` varchar(12) DEFAULT NULL COMMENT '注册时间',
  `purview` varchar(200) DEFAULT NULL COMMENT '栏目权限',
  `tel` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `idcard` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=utf8 COMMENT='可登陆下载的用户';

-- ----------------------------
-- Records of tp_users
-- ----------------------------
INSERT INTO `tp_users` VALUES ('16', 'zhuangzi', '123456', '1', '男', '1516418930', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '', '', null);
INSERT INTO `tp_users` VALUES ('14', 'czm', '123456', '程忠明', '男', '1506380682', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '', '', null);
INSERT INTO `tp_users` VALUES ('20', '13879036520', '02181315', '罗怀财', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879036520', '宝象物流', '02181315');
INSERT INTO `tp_users` VALUES ('21', '15932957711', '04180010', '吴俊', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15932957711', '抚州国泰', '04180010');
INSERT INTO `tp_users` VALUES ('23', '13879428427', '12150020', '吴小珍', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879428427', '抚州国泰', '12150020');
INSERT INTO `tp_users` VALUES ('24', '18797845884', '05210032', '杨明', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18797845884', '抚州国泰', '05210032');
INSERT INTO `tp_users` VALUES ('25', '13970421146', '02256458', '郑小清', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13970421146', '抚州国泰', '02256458');
INSERT INTO `tp_users` VALUES ('26', '13879429158', '0828003X', '李毛仔', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879429158', '抚州国泰', '0828003X');
INSERT INTO `tp_users` VALUES ('27', '18879450709', '02297513', '许超', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18879450709', '抚州国泰', '02297513');
INSERT INTO `tp_users` VALUES ('28', '15946904710', '04050052', '王敏', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15946904710', '抚州国泰', '04050052');
INSERT INTO `tp_users` VALUES ('29', '13879427303', '1210001X', '邹华', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879427303', '抚州国泰', '1210001X');
INSERT INTO `tp_users` VALUES ('30', '13979443870', '11260014', '邓光庆', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979443870', '抚州国泰', '11260014');
INSERT INTO `tp_users` VALUES ('31', '13979603640', '12021951', '邹仁飞', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979603640', '抚州国泰', '12021951');
INSERT INTO `tp_users` VALUES ('32', '18279458311', '1107301X', '李宝林', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18279458311', '抚州国泰', '1107301X');
INSERT INTO `tp_users` VALUES ('33', '13970433346', '10170017', '朱修平', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13970433346', '抚州国泰', '10170017');
INSERT INTO `tp_users` VALUES ('34', '13970780720', '09261315', '罗俊', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13970780720', '赣州国泰', '09261315');
INSERT INTO `tp_users` VALUES ('35', '15170777468', '01281316', '王超', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15170777468', '赣州国泰', '01281316');
INSERT INTO `tp_users` VALUES ('36', '13970744649', '06041318', '李红平', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13970744649', '赣州国泰', '06041318');
INSERT INTO `tp_users` VALUES ('37', '13707070495', '05141358', '刘发祎', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13707070495', '赣州国泰', '05141358');
INSERT INTO `tp_users` VALUES ('38', '13879781779', '06170633', '裴晖', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879781779', '赣州国泰', '06170633');
INSERT INTO `tp_users` VALUES ('39', '13970744290', '04107015', '黄敬贵', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13970744290', '赣州国泰', '04107015');
INSERT INTO `tp_users` VALUES ('40', '13576737416', '12111346', '周传华', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13576737416', '赣州国泰', '12111346');
INSERT INTO `tp_users` VALUES ('41', '13607076780', '09111335', '李祖全', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13607076780', '赣州国泰', '09111335');
INSERT INTO `tp_users` VALUES ('42', '13907078975', '10316315', '廖永生', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13907078975', '赣州国泰', '10316315');
INSERT INTO `tp_users` VALUES ('43', '13979769224', '09041411', '罗新华', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979769224', '赣州国泰', '09041411');
INSERT INTO `tp_users` VALUES ('44', '15979079506', '11132816', '侯成举', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15979079506', '赣州国泰', '11132816');
INSERT INTO `tp_users` VALUES ('45', '13767716048', '09071318', '何厚金', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13767716048', '赣州国泰', '09071318');
INSERT INTO `tp_users` VALUES ('46', '13767783214', '03265671', '宋满根', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13767783214', '赣州国泰', '03265671');
INSERT INTO `tp_users` VALUES ('47', '15970071271', '07220036', '张勇', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15970071271', '赣州国泰', '07220036');
INSERT INTO `tp_users` VALUES ('48', '13979768490', '07232634', '丁志毅', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979768490', '赣州国泰', '07232634');
INSERT INTO `tp_users` VALUES ('49', '13667046987', '01211319', '李坚', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13667046987', '赣州国泰', '01211319');
INSERT INTO `tp_users` VALUES ('50', '13576683150', '09121954', '殷崇军', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13576683150', '赣州国泰', '09121954');
INSERT INTO `tp_users` VALUES ('51', '13879750758', '06091017', '焦起凡', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879750758', '赣州国泰', '06091017');
INSERT INTO `tp_users` VALUES ('52', '13767785928', '09251951', '彭伟平', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13767785928', '赣州国泰', '09251951');
INSERT INTO `tp_users` VALUES ('53', '13576675347', '06221356', '谢东', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13576675347', '赣州国泰', '06221356');
INSERT INTO `tp_users` VALUES ('188', '15979812090', '04111037', '卢志坚', null, '1541730581', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15979812090', '赣州国泰', null);
INSERT INTO `tp_users` VALUES ('55', '18679130029', '03291315', '邱子华', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18679130029', '赣州国泰', '03291315');
INSERT INTO `tp_users` VALUES ('56', '13766387264', '10131319', '胡晓斌', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13766387264', '赣州国泰', '10131319');
INSERT INTO `tp_users` VALUES ('57', '13607076652', '0916133X', '袁太裕', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13607076652', '赣州国泰', '0916133X');
INSERT INTO `tp_users` VALUES ('58', '13697092598', '10290691', '刘勇虎', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13697092598', '国泰集团', '10290691');
INSERT INTO `tp_users` VALUES ('59', '13184583056', '08101326', '李秋莲', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13184583056', '国泰集团', '08101326');
INSERT INTO `tp_users` VALUES ('60', '13979175650', '02103336', '王小龙', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979175650', '国泰集团', '02103336');
INSERT INTO `tp_users` VALUES ('61', '13576715814', '07201937', '欧阳润庆', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13576715814', '国泰集团', '07201937');
INSERT INTO `tp_users` VALUES ('62', '15979073915', '02091338', '李健', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15979073915', '国泰集团', '02091338');
INSERT INTO `tp_users` VALUES ('63', '15970465334', '07110034', '黄若辉', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15970465334', '国泰集团', '07110034');
INSERT INTO `tp_users` VALUES ('64', '13667091463', '0922241X', '夏良洪', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13667091463', '国泰集团', '0922241X');
INSERT INTO `tp_users` VALUES ('65', '13879173905', '10221314', '谢红卫', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879173905', '国泰集团', '10221314');
INSERT INTO `tp_users` VALUES ('66', '13979018381', '02265816', '刘文生', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979018381', '国泰集团', '02265816');
INSERT INTO `tp_users` VALUES ('67', '13879018808', '05031318', '付勇', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879018808', '国泰集团', '05031318');
INSERT INTO `tp_users` VALUES ('68', '13870635200', '11020071', '朱鹏', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13870635200', '国泰集团', '11020071');
INSERT INTO `tp_users` VALUES ('69', '18070099774', '11155918', '余幸', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18070099774', '国泰集团', '11155918');
INSERT INTO `tp_users` VALUES ('70', '13707062407', '09160037', '张军有', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13707062407', '国泰集团', '09160037');
INSERT INTO `tp_users` VALUES ('71', '15970076897', '11181337', '谢发根', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15970076897', '国泰五洲', '11181337');
INSERT INTO `tp_users` VALUES ('72', '13576705494', '06200012', '陈义平', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13576705494', '国泰五洲', '06200012');
INSERT INTO `tp_users` VALUES ('73', '18770133048', '08274310', '周国平', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18770133048', '国泰五洲', '08274310');
INSERT INTO `tp_users` VALUES ('74', '15935560791', '0716091X', '程三建', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15935560791', '国泰五洲', '0716091X');
INSERT INTO `tp_users` VALUES ('75', '15879156255', '01226114', '李斌', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15879156255', '国泰五洲', '01226114');
INSERT INTO `tp_users` VALUES ('76', '13970321675', '12290311', '程武', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13970321675', '国泰五洲', '12290311');
INSERT INTO `tp_users` VALUES ('77', '18270721081', '09130032', '杨明山', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18270721081', '国泰五洲', '09130032');
INSERT INTO `tp_users` VALUES ('78', '13732920686', '08085013', '胡海', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13732920686', '国泰五洲', '08085013');
INSERT INTO `tp_users` VALUES ('79', '15179098171', '11123613', '罗福友', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15179098171', '国泰五洲', '11123613');
INSERT INTO `tp_users` VALUES ('80', '15083784243', '12024214', '刘成敏', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15083784243', '国泰五洲', '12024214');
INSERT INTO `tp_users` VALUES ('81', '15083903433', '08052536', '陶明', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15083903433', '国泰五洲', '08052536');
INSERT INTO `tp_users` VALUES ('82', '15083782623', '03092718', '张鑫', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15083782623', '国泰五洲', '03092718');
INSERT INTO `tp_users` VALUES ('83', '13247809899', '06050011', '王云茂', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13247809899', '国泰五洲', '06050011');
INSERT INTO `tp_users` VALUES ('84', '18679135857', '12107279', '潘昌义', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18679135857', '国泰五洲', '12107279');
INSERT INTO `tp_users` VALUES ('85', '15570131683', '0219357X', '周浩仓', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15570131683', '国泰五洲', '0219357X');
INSERT INTO `tp_users` VALUES ('86', '15107957388', '10180019', '龙辉', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15107957388', '国泰五洲', '10180019');
INSERT INTO `tp_users` VALUES ('87', '15083906428', '02111339', '肖国喜', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15083906428', '国泰五洲', '02111339');
INSERT INTO `tp_users` VALUES ('88', '18270716913', '09135911', '黄洪涛', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18270716913', '国泰五洲', '09135911');
INSERT INTO `tp_users` VALUES ('89', '13879054028', '08191328', '李红君', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879054028', '恒合投资', '08191328');
INSERT INTO `tp_users` VALUES ('91', '18279671486', '11200018', '易晓昌', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18279671486', '吉安国泰', '11200018');
INSERT INTO `tp_users` VALUES ('92', '13879696436', '05155025', '朱慧琴', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879696436', '吉安国泰', '05155025');
INSERT INTO `tp_users` VALUES ('93', '13879673653', '1123505X', '刘小柏', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879673653', '吉安国泰', '1123505X');
INSERT INTO `tp_users` VALUES ('94', '13879673658', '10235010', '曾庆权', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879673658', '吉安国泰', '10235010');
INSERT INTO `tp_users` VALUES ('95', '13766200180', '11202516', '朱火平', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13766200180', '吉安国泰', '11202516');
INSERT INTO `tp_users` VALUES ('96', '15979659918', '09160051', '郭佳甲', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15979659918', '吉安国泰', '09160051');
INSERT INTO `tp_users` VALUES ('97', '13170962409', '0514001X', '王翰浡', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13170962409', '吉安国泰', '0514001X');
INSERT INTO `tp_users` VALUES ('98', '13576834580', '0318501X', '郭海南', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13576834580', '吉安国泰', '0318501X');
INSERT INTO `tp_users` VALUES ('99', '13970469103', '06160015', '罗彦舟', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13970469103', '吉安国泰', '06160015');
INSERT INTO `tp_users` VALUES ('100', '13970630362', '03115016', '魏一平', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13970630362', '吉安国泰', '03115016');
INSERT INTO `tp_users` VALUES ('101', '13970652906', '08245015', '吴辉东', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13970652906', '吉安国泰', '08245015');
INSERT INTO `tp_users` VALUES ('102', '13970661392', '12155011', '刘小平', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13970661392', '吉安国泰', '12155011');
INSERT INTO `tp_users` VALUES ('103', '13879662346', '07155010', '吴春云', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879662346', '吉安国泰', '07155010');
INSERT INTO `tp_users` VALUES ('104', '13979683005', '0913501X', '刘冬水', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979683005', '吉安国泰', '0913501X');
INSERT INTO `tp_users` VALUES ('105', '15970222828', '02025056', '吴军', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15970222828', '吉安国泰', '02025056');
INSERT INTO `tp_users` VALUES ('106', '18879626865', '06124030', '王志刚', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18879626865', '吉安国泰', '06124030');
INSERT INTO `tp_users` VALUES ('107', '13479623621', '04220612', '龙文军', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13479623621', '吉安国泰', '04220612');
INSERT INTO `tp_users` VALUES ('108', '15970222829', '11035022', '李晖', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15970222829', '吉安国泰', '11035022');
INSERT INTO `tp_users` VALUES ('109', '13766276351', '02155436', '梁聪', null, '1540654256', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13766276351', '吉安国泰', '02155436');
INSERT INTO `tp_users` VALUES ('110', '18779945515', '10081511', '戴才根', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18779945515', '吉安国泰', '10081511');
INSERT INTO `tp_users` VALUES ('111', '18170818710', '11046918', '万三明', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18170818710', '融思科技', '11046918');
INSERT INTO `tp_users` VALUES ('112', '15727660268', '10023333', '王涛', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15727660268', '融思科技', '10023333');
INSERT INTO `tp_users` VALUES ('113', '15840305806', '03240416', '谢玉江', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15840305806', '瑞曼增材', '03240416');
INSERT INTO `tp_users` VALUES ('114', '13879094227', '04030651', '黄洪川', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879094227', '销售分公司', '04030651');
INSERT INTO `tp_users` VALUES ('115', '15079405739', '11052014', '许乐', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15079405739', '销售分公司', '11052014');
INSERT INTO `tp_users` VALUES ('116', '13970123067', '06210716', '徐宏然', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13970123067', '销售分公司', '06210716');
INSERT INTO `tp_users` VALUES ('117', '13879699918', '5285030', '刘学词', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879699918', '销售分公司', '5285030');
INSERT INTO `tp_users` VALUES ('118', '13970792247', '10176810', '刘晓华', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13970792247', '销售分公司', '10176810');
INSERT INTO `tp_users` VALUES ('119', '13907900387', '02201317', '孙虎', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13907900387', '销售分公司', '02201317');
INSERT INTO `tp_users` VALUES ('120', '15979885876', '06291318', '杨强', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15979885876', '新余国泰', '06291318');
INSERT INTO `tp_users` VALUES ('121', '13879056355', '05121310', '肖林洲', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879056355', '新余国泰', '05121310');
INSERT INTO `tp_users` VALUES ('122', '13879008109', '11111338', '刘强伟', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879008109', '新余国泰', '11111338');
INSERT INTO `tp_users` VALUES ('123', '15717901079', '05171612', '朱方杰', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15717901079', '新余国泰', '05171612');
INSERT INTO `tp_users` VALUES ('124', '13879018177', '10121336', '吴建兴', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879018177', '新余国泰', '10121336');
INSERT INTO `tp_users` VALUES ('125', '13879068452', '10131312', '邱松', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879068452', '新余国泰', '10131312');
INSERT INTO `tp_users` VALUES ('126', '13979086495', '10065117', '刘会新', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979086495', '新余国泰', '10065117');
INSERT INTO `tp_users` VALUES ('127', '13879072722', '02226044', '张艳', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879072722', '新余国泰', '02226044');
INSERT INTO `tp_users` VALUES ('128', '13979053681', '09271317', '王仲智', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979053681', '新余国泰', '09271317');
INSERT INTO `tp_users` VALUES ('129', '18679010689', '0823003X', '李凯', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18679010689', '新余国泰', '0823003X');
INSERT INTO `tp_users` VALUES ('130', '13979066204', '06091313', '王征', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979066204', '新余国泰', '06091313');
INSERT INTO `tp_users` VALUES ('131', '15070128167', '0617001X', '郭晨', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15070128167', '新余国泰', '0617001X');
INSERT INTO `tp_users` VALUES ('132', '13755566956', '10102898', '吴平召', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13755566956', '新余国泰', '10102898');
INSERT INTO `tp_users` VALUES ('133', '13879084223', '11231325', '刘满珍', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879084223', '新余国泰', '11231325');
INSERT INTO `tp_users` VALUES ('134', '13879033471', '11064615', '钱小华', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879033471', '新余国泰', '11064615');
INSERT INTO `tp_users` VALUES ('135', '18870905269', '03198458', '任泰昌', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18870905269', '新余国泰', '03198458');
INSERT INTO `tp_users` VALUES ('136', '13879013462', '09281313', '汤进', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879013462', '新余国泰', '09281313');
INSERT INTO `tp_users` VALUES ('137', '13970494817', '10188030', '杨红旗', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13970494817', '新余国泰', '10188030');
INSERT INTO `tp_users` VALUES ('138', '13755702545', '09173735', '邹青如', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13755702545', '新余国泰', '09173735');
INSERT INTO `tp_users` VALUES ('139', '13879063389', '12081318', '邢军', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879063389', '新余国泰', '12081318');
INSERT INTO `tp_users` VALUES ('140', '13979086453', '0928137X', '谢强芝', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979086453', '新余国泰', '0928137X');
INSERT INTO `tp_users` VALUES ('141', '13879015426', '06130615', '张作生', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879015426', '新余国泰', '06130615');
INSERT INTO `tp_users` VALUES ('142', '18397906280', '1210342X', '许珠', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18397906280', '新余国泰', '1210342X');
INSERT INTO `tp_users` VALUES ('143', '15207904060', '0530521X', '梁居思', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15207904060', '新余国泰', '0530521X');
INSERT INTO `tp_users` VALUES ('144', '13979068469', '09061327', '刘晓娟', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979068469', '新余国泰', '09061327');
INSERT INTO `tp_users` VALUES ('145', '13576465633', '11021351', '叶峰', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13576465633', '新余国泰', '11021351');
INSERT INTO `tp_users` VALUES ('146', '13879015401', '12036376', '张东平', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879015401', '新余国泰', '12036376');
INSERT INTO `tp_users` VALUES ('147', '13767288384', '09101339', '廖小忠', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13767288384', '新余国泰', '09101339');
INSERT INTO `tp_users` VALUES ('148', '13979099830', '08256055', '邹志兵', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979099830', '新余国泰', '08256055');
INSERT INTO `tp_users` VALUES ('149', '13879048462', '04201330', '邓永宏', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879048462', '新余国泰', '04201330');
INSERT INTO `tp_users` VALUES ('150', '18870285843', '03150437', '巢光华', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18870285843', '新余国泰', '03150437');
INSERT INTO `tp_users` VALUES ('151', '13879062401', '11281310', '郭明辉', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879062401', '新余国泰', '11281310');
INSERT INTO `tp_users` VALUES ('152', '13507907812', '01051316', '李赣华', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13507907812', '新余国泰', '01051316');
INSERT INTO `tp_users` VALUES ('153', '13879004023', '07301357', '秦卫东', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879004023', '新余国泰', '07301357');
INSERT INTO `tp_users` VALUES ('154', '18279063569', '12260045', '黄周霞', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18279063569', '新余国泰', '12260045');
INSERT INTO `tp_users` VALUES ('155', '13879063843', '06301112', '王卫东', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879063843', '新余国泰', '06301112');
INSERT INTO `tp_users` VALUES ('156', '13979056219', '08031310', '魏春江', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979056219', '新余国泰', '08031310');
INSERT INTO `tp_users` VALUES ('157', '13979033959', '11011314', '林志文', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979033959', '新余国泰', '11011314');
INSERT INTO `tp_users` VALUES ('158', '13879036527', '0829245X', '吴周吕', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879036527', '新余国泰', '0829245X');
INSERT INTO `tp_users` VALUES ('159', '13879025368', '05060397', '郭刚', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879025368', '新余国泰', '05060397');
INSERT INTO `tp_users` VALUES ('160', '15180028852', '01225518', '吴建波', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15180028852', '新余国泰', '01225518');
INSERT INTO `tp_users` VALUES ('161', '13979087470', '08121312', '程洋', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979087470', '新余国泰', '08121312');
INSERT INTO `tp_users` VALUES ('162', '15979871578', '11268736', '张仁南', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15979871578', '新余国泰', '11268736');
INSERT INTO `tp_users` VALUES ('163', '15180006210', '11186377', '曹兴', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15180006210', '新余国泰', '11186377');
INSERT INTO `tp_users` VALUES ('164', '13879022761', '04191312', '王建', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879022761', '新余国泰', '04191312');
INSERT INTO `tp_users` VALUES ('165', '13879074405', '10021316', '朱新苗', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879074405', '新余国泰', '10021316');
INSERT INTO `tp_users` VALUES ('166', '13979073681', '07300021', '高文英', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13979073681', '新余国泰', '07300021');
INSERT INTO `tp_users` VALUES ('167', '13879056379', '03281310', '苏春龙', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13879056379', '新余国泰', '03281310');
INSERT INTO `tp_users` VALUES ('168', '18172956159', '06230013', '袁水林', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18172956159', '宜丰国泰', '06230013');
INSERT INTO `tp_users` VALUES ('169', '18172956062', '07272215', '漆良卿', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18172956062', '宜丰国泰', '07272215');
INSERT INTO `tp_users` VALUES ('170', '18379538740', '03141931', '孟祥良', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18379538740', '宜丰国泰', '03141931');
INSERT INTO `tp_users` VALUES ('171', '18172956157', '09163434', '胡文辉', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18172956157', '宜丰国泰', '09163434');
INSERT INTO `tp_users` VALUES ('172', '18172956099', '09235010', '李跃林', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18172956099', '宜丰国泰', '09235010');
INSERT INTO `tp_users` VALUES ('173', '18172956060', '0913251X', '李进', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18172956060', '宜丰国泰', '0913251X');
INSERT INTO `tp_users` VALUES ('174', '18296524866', '09290119', '唐炜', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18296524866', '宜丰国泰', '09290119');
INSERT INTO `tp_users` VALUES ('175', '18172956005', '09294032', '罗小庆', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18172956005', '宜丰国泰', '09294032');
INSERT INTO `tp_users` VALUES ('176', '18070151104', '12130610', '张恒', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18070151104', '宜丰国泰', '12130610');
INSERT INTO `tp_users` VALUES ('177', '18270956577', '10260816', '彭伟', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18270956577', '宜丰国泰', '10260816');
INSERT INTO `tp_users` VALUES ('178', '18172956007', '05100019', '严志轩', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18172956007', '宜丰国泰', '05100019');
INSERT INTO `tp_users` VALUES ('179', '13657955969', '08230015', '李欣', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13657955969', '宜丰国泰', '08230015');
INSERT INTO `tp_users` VALUES ('180', '18172956008', '10212619', '刘俊锋', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18172956008', '宜丰国泰', '10212619');
INSERT INTO `tp_users` VALUES ('181', '13970033572', '01090432', '芦双红', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13970033572', '宜丰国泰', '01090432');
INSERT INTO `tp_users` VALUES ('182', '13707055551', '09200513', '邵承勇', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13707055551', '永宁科技', '09200513');
INSERT INTO `tp_users` VALUES ('183', '13755828827', '10253318', '涂绪程', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '13755828827', '永宁科技', '10253318');
INSERT INTO `tp_users` VALUES ('184', '15972570495', '12130518', '刘丹', null, '1540654257', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '15972570495', '永宁科技', '12130518');
INSERT INTO `tp_users` VALUES ('187', '18434365200', 'zj110877', '周泽群', null, '1541588801', '8,20,21,22,7,23,24,6,63,58,57,56,25,29,62', '18434365200', '赣州国泰', null);

-- ----------------------------
-- Table structure for `yt_aboutus`
-- ----------------------------
DROP TABLE IF EXISTS `yt_aboutus`;
CREATE TABLE `yt_aboutus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `keyword` varchar(30) DEFAULT NULL COMMENT '关键词',
  `description` tinytext COMMENT '描述',
  `content` text COMMENT '详细内容',
  `views` int(11) unsigned DEFAULT '1' COMMENT '浏览量',
  `pic` varchar(60) DEFAULT NULL COMMENT '小图',
  `orders` int(11) DEFAULT '1',
  `isdel` tinyint(3) unsigned DEFAULT '1' COMMENT '1:显示;  2: 删除;',
  `uuid` varchar(32) DEFAULT NULL COMMENT '产生唯一值',
  `editor` varchar(20) DEFAULT NULL COMMENT '发布人',
  `addtime` varchar(11) DEFAULT NULL,
  `sortid` int(11) unsigned DEFAULT '0' COMMENT '类别ID',
  `sortpath` varchar(30) DEFAULT NULL COMMENT '类别路径',
  `istj` tinyint(1) unsigned DEFAULT '2' COMMENT '1: 推荐; 2: 不推荐;',
  `languageid` tinyint(1) unsigned DEFAULT '0' COMMENT '1: 中文, 2: 英文',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='资讯信息';

-- ----------------------------
-- Records of yt_aboutus
-- ----------------------------
INSERT INTO `yt_aboutus` VALUES ('30', '公司简介', '', '', '<p style=\"text-indent: 2em;\"><font face=\"宋体\" size=\"3\"><span style=\"color: red; font-family: 仿宋_GB2312; font-size: 11pt; mso-bidi-font-size: 14.0pt; mso-hansi-font-family: 仿宋_GB2312; mso-bidi-font-family: Tahoma; mso-bidi-font-weight: bold;\"><span style=\"color: rgb(0, 0, 0); font-family: FangSong_GB2312; font-size: 24px;\">&nbsp;&nbsp;江西国泰集团技术研究院于</span><span lang=\"EN-US\" style=\"color: rgb(0, 0, 0); font-family: FangSong_GB2312; font-size: 24px;\">2017</span><span style=\"color: rgb(0, 0, 0); font-family: FangSong_GB2312; font-size: 24px;\">年</span><span lang=\"EN-US\" style=\"color: rgb(0, 0, 0); font-family: FangSong_GB2312; font-size: 24px;\">6</span><span style=\"color: rgb(0, 0, 0); font-family: FangSong_GB2312; font-size: 24px;\">月正式成立。研究院是国有主板上市公司——江西国泰民爆集团股份有限公司直属综合性研究机构，是国泰集团开启二次创业，提高科技创新能力，实现三个一流的重要保证。主要承担民爆器材、工程爆破、精细化工、信息技术、绿色制造、消防装备等领域的新技术、新工艺和新产品研究。</span></span></font></p><p style=\"text-indent: 2em;\"><font face=\"宋体\" size=\"3\">\r\n</font></p><p style=\"margin: 0cm 0cm 0pt; text-indent: 2em; mso-char-indent-count: 2.0;\"><span style=\"color: red; font-family: 仿宋_GB2312; font-size: 11pt; mso-bidi-font-size: 14.0pt; mso-hansi-font-family: 仿宋_GB2312; mso-bidi-font-family: Tahoma; mso-bidi-font-weight: bold;\"><span style=\"color: rgb(0, 0, 0); font-size: 24px;\"><span style=\"font-family: FangSong_GB2312;\">&nbsp; 研究院整合了国家</span><font face=\"仿宋_GB2312\" size=\"5\"><span style=\"font-family: FangSong_GB2312;\">博士后科研工作站、</span></font><span style=\"font-family: FangSong_GB2312;\">省民爆器材与爆破技术工程研究中心、省金属</span></span><span lang=\"EN-US\" style=\"color: rgb(0, 0, 0); font-family: FangSong_GB2312; font-size: 24px;\">3D</span><span style=\"color: rgb(0, 0, 0); font-family: FangSong_GB2312; font-size: 24px;\">打印工程技术研究中心、省油相材料工程技术研究中心等科技平台资源，拥有综合管理部、研发事业部、财务部三个职能部门，并在南昌、新余、抚州、吉安、宜春等地建有多个研究中心和试验基地。</span></span></p><p style=\"text-indent: 2em;\"><font face=\"宋体\" size=\"3\">\r\n</font></p><p style=\"margin: 0cm 0cm 0pt; text-indent: 2em; mso-char-indent-count: 2.0;\"><span style=\"color: red; font-family: 仿宋_GB2312; font-size: 11pt; mso-bidi-font-size: 14.0pt; mso-hansi-font-family: 仿宋_GB2312; mso-bidi-font-family: Tahoma; mso-bidi-font-weight: bold;\"><span style=\"color: rgb(0, 0, 0); font-family: FangSong_GB2312; font-size: 24px;\">&nbsp; 随着国泰集团产业链的进一步延伸，研究院倡导“勇于创新、尊重创新、激励创新”的创新文化，将在五年之内逐步建成</span><span style=\"color: rgb(0, 0, 0); font-family: FangSong_GB2312; font-size: 24px;\">高层次科研队伍，努力打造行业优势突出、专业特色明显的省内一流综合性研究院，成为国内有重要影响力的科研平台。研究院诚挚邀请全国英才的加入！</span></span></p><p style=\"text-indent: 2em;\"><font face=\"宋体\" size=\"3\">\r\n</font></p><p style=\"text-indent: 2em;\"><br /></p><p style=\"text-indent: 2em;\"><br /></p><p style=\"text-indent: 2em;\"><br /></p><p style=\"text-indent: 2em;\"><br /></p><p style=\"text-indent: 2em;\"><br /></p>', '1', '', '1', '1', 'd30c5bb62319ecd48f1f56322416efb4', 'hrh', '1539268803', '12', '0,1,10,12,', '2', '1');
INSERT INTO `yt_aboutus` VALUES ('31', '机构设置', '', '', '<p><img width=\"1654\" height=\"771\" alt=\"\" src=\"/public/uploads/image/20181107/20181107110214_72520.png\"/>机构设置</p>', '1', '', '2', '1', 'b6c39d525cca78f2d7ce6150dc989c91', 'hrh', '1539481565', '11', '0,1,10,11,', '2', '1');
INSERT INTO `yt_aboutus` VALUES ('43', '', null, null, '<p>adsf</p>', '1', null, '1', '1', null, null, '1547440150', '65', '0,1,30,36,65,', '2', '0');

-- ----------------------------
-- Table structure for `yt_adminlogs`
-- ----------------------------
DROP TABLE IF EXISTS `yt_adminlogs`;
CREATE TABLE `yt_adminlogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` smallint(6) NOT NULL,
  `logtime` varchar(12) DEFAULT NULL COMMENT '登陆时间',
  `logip` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=291 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_adminlogs
-- ----------------------------
INSERT INTO `yt_adminlogs` VALUES ('262', '1', '1546335779', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('263', '1', '1546349793', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('264', '1', '1546349853', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('265', '1', '1546349874', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('266', '1', '1546349913', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('267', '1', '1546349944', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('268', '1', '1546349967', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('269', '1', '1546351661', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('270', '1', '1546352001', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('271', '1', '1546352012', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('272', '1', '1546352064', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('273', '1', '1546352122', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('274', '21', '1546843612', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('275', '21', '1546998043', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('276', '1', '1547429092', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('277', '1', '1547435568', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('278', '1', '1547645050', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('279', '1', '1547773892', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('280', '21', '1547797209', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('281', '1', '1547797233', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('282', '1', '1547797421', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('283', '1', '1547798142', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('284', '1', '1547802381', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('285', '1', '1547965631', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('286', '1', '1547974032', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('287', '1', '1547991722', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('288', '1', '1548034986', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('289', '1', '1548225647', '127.0.0.1');
INSERT INTO `yt_adminlogs` VALUES ('290', '1', '1548403712', '127.0.0.1');

-- ----------------------------
-- Table structure for `yt_admins`
-- ----------------------------
DROP TABLE IF EXISTS `yt_admins`;
CREATE TABLE `yt_admins` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `userpwd` varchar(64) NOT NULL,
  `realname` varchar(30) DEFAULT NULL COMMENT '真实姓名',
  `sex` char(1) DEFAULT NULL,
  `addtime` varchar(12) NOT NULL COMMENT '注册时间',
  `purview` varchar(200) DEFAULT NULL COMMENT '栏目权限',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_admins
-- ----------------------------
INSERT INTO `yt_admins` VALUES ('1', 'admin', '913fced1a662ec5f2a6c9d01873624dc', '超级管理员', '男', '1496214206', null);
INSERT INTO `yt_admins` VALUES ('21', 'zhuangzi', '913fced1a662ec5f2a6c9d01873624dc', '庄子', '男', '1546832161', '1,13,2,17,18,10,11,24,25,27,26');

-- ----------------------------
-- Table structure for `yt_ads`
-- ----------------------------
DROP TABLE IF EXISTS `yt_ads`;
CREATE TABLE `yt_ads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `remark` text COMMENT '说明',
  `pic` varchar(50) DEFAULT NULL,
  `ww` int(11) DEFAULT '0' COMMENT '图片、ｆｌａｓｈ宽度',
  `hh` int(11) DEFAULT '0' COMMENT '图片、ｆｌａｓｈ高度',
  `sortid` int(10) DEFAULT NULL,
  `sortpath` varchar(50) DEFAULT NULL,
  `orders` int(11) NOT NULL DEFAULT '0' COMMENT '广告排序',
  `starttime` varchar(50) DEFAULT NULL,
  `endtime` varchar(50) DEFAULT NULL,
  `online` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1.上线，2.下线',
  `adtype` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1.普通图片广告，2.flash广告，3.文字广告',
  `linkurl` varchar(100) NOT NULL,
  `addtime` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=343 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_ads
-- ----------------------------
INSERT INTO `yt_ads` VALUES ('333', '清朝美女', null, '20190118/ff4f9cd29a2fda4cd1a97c9f002e5113.jpeg', '0', '0', '2', '0,1,2,', '12', '2019-01-10', '2019-01-12', '1', '1', 'http://www.ncyateng.com', '1547776630');

-- ----------------------------
-- Table structure for `yt_adsortclass`
-- ----------------------------
DROP TABLE IF EXISTS `yt_adsortclass`;
CREATE TABLE `yt_adsortclass` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sortname` varchar(25) NOT NULL COMMENT '类别名称',
  `esortname` varchar(50) DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父类ID: 第一级的话为0',
  `sortpath` varchar(50) NOT NULL COMMENT '类别路径, 从顶级到当前级, 方便类别模糊查询',
  `level` tinyint(4) DEFAULT '0' COMMENT '级别:　第一级为０',
  `orders` smallint(6) DEFAULT '1' COMMENT '排序',
  `remark` tinytext COMMENT '广告位置大小说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_adsortclass
-- ----------------------------
INSERT INTO `yt_adsortclass` VALUES ('1', '广告位置', null, '0', '0,1,', '0', '2', '');
INSERT INTO `yt_adsortclass` VALUES ('2', '首页头部幻灯广告2', '', '1', '0,1,2,', '1', '2', '1920*600, 单位:像素');
INSERT INTO `yt_adsortclass` VALUES ('3', '南昌公司注册幻灯1', '', '1', '0,1,3,', '1', '3', '700*346(单位: 像素)');
INSERT INTO `yt_adsortclass` VALUES ('4', '测试一下', '', '1', '0,1,4,', '1', '4', '100*100');
INSERT INTO `yt_adsortclass` VALUES ('5', 'asdf', '', '1', '0,1,5,', '1', '1', 'asdf');

-- ----------------------------
-- Table structure for `yt_cases`
-- ----------------------------
DROP TABLE IF EXISTS `yt_cases`;
CREATE TABLE `yt_cases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `keyword` varchar(30) DEFAULT NULL COMMENT '关键词',
  `description` tinytext COMMENT '描述',
  `shows` text COMMENT '页面展示',
  `content` text COMMENT '详细内容',
  `views` int(11) unsigned DEFAULT '1' COMMENT '浏览量',
  `pic` varchar(60) DEFAULT NULL COMMENT '小图',
  `orders` int(11) DEFAULT '1',
  `isdel` tinyint(3) unsigned DEFAULT '1' COMMENT '1:显示;  2: 删除;',
  `uuid` varchar(32) DEFAULT NULL COMMENT '产生唯一值',
  `editor` varchar(20) DEFAULT NULL COMMENT '发布人',
  `addtime` varchar(11) DEFAULT NULL,
  `sortid` int(11) unsigned DEFAULT '0' COMMENT '类别ID',
  `sortpath` varchar(30) DEFAULT NULL COMMENT '类别路径',
  `istj` tinyint(1) unsigned DEFAULT '2' COMMENT '1: 推荐; 2: 不推荐;',
  `languageid` tinyint(1) unsigned DEFAULT '0' COMMENT '1: 中文, 2: 英文',
  `discountprice` varchar(10) DEFAULT '',
  `marketprice` varchar(10) DEFAULT '市场价格',
  `logo` varchar(60) DEFAULT NULL,
  `bigpic` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='资讯信息';

-- ----------------------------
-- Records of yt_cases
-- ----------------------------
INSERT INTO `yt_cases` VALUES ('48', '江西省创新创业大赛二等奖（GT-2型电子雷管）', '江西省创新创业大赛二等奖（GT-2型电子雷管）', '江西省创新创业大赛二等奖（GT-2型电子雷管）', '', '<p>江西省创新创业大赛二等奖（GT-2型电子雷管）江西省创新创业大赛二等奖（GT-2型电子雷管）江西省创新创业大赛二等奖（GT-2型电子雷管）江西省创新创业大赛二等奖（GT-2型电子雷管）江西省创新创业大赛二等奖（GT-2型电子雷管）江西省创新创业大赛二等奖（GT-2型电子雷管）</p>', '1', '20190118/7829a497a6533860772ec4f3d5a129a7.jpeg', '1', '1', '35017d5aaec0c2f79fca5f05d700413e', 'czm', '1539591320', '42', '0,1,39,42,', '2', '1', '1', '1', '', '');

-- ----------------------------
-- Table structure for `yt_column`
-- ----------------------------
DROP TABLE IF EXISTS `yt_column`;
CREATE TABLE `yt_column` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sortname` varchar(25) NOT NULL COMMENT '类别名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父类ID: 第一级的话为0',
  `sortpath` varchar(50) NOT NULL COMMENT '类别路径, 从顶级到当前级, 方便类别模糊查询',
  `level` tinyint(4) DEFAULT '0' COMMENT '级别:　第一级为０',
  `orders` smallint(6) DEFAULT '1' COMMENT '排序',
  `urls` varchar(255) DEFAULT NULL COMMENT '栏目链接',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_column
-- ----------------------------
INSERT INTO `yt_column` VALUES ('1', '信息管理', '0', '0,1,', '0', '1', '');
INSERT INTO `yt_column` VALUES ('2', '产品中心', '1', '0,1,2,', '1', '3', 'yteng/pro/index');
INSERT INTO `yt_column` VALUES ('22', '资讯管理', '1', '0,1,22,', '1', '1', 'yteng/newsdo/index');
INSERT INTO `yt_column` VALUES ('4', '设置', '0', '0,4,', '0', '4', '');
INSERT INTO `yt_column` VALUES ('5', '我的设置', '4', '0,4,5,', '1', '2', '');
INSERT INTO `yt_column` VALUES ('23', '案例中心', '1', '0,1,23,', '1', '2', 'yteng/casesdo/index');
INSERT INTO `yt_column` VALUES ('24', '管理栏目', '26', '0,4,26,24,', '2', '4', 'yteng/column/index');
INSERT INTO `yt_column` VALUES ('26', '系统设置', '4', '0,4,26,', '1', '1', '');
INSERT INTO `yt_column` VALUES ('10', '广告图片管理', '0', '0,10,', '0', '2', '');
INSERT INTO `yt_column` VALUES ('11', '广告位置', '10', '0,10,11,', '1', '2', 'yteng/adsort/index');
INSERT INTO `yt_column` VALUES ('12', '广告管理', '10', '0,10,12,', '1', '1', 'yteng/adsmanage/index');
INSERT INTO `yt_column` VALUES ('13', '关于我们', '1', '0,1,13,', '1', '5', 'yteng/about/index');
INSERT INTO `yt_column` VALUES ('17', '友情链接', '1', '0,1,17,', '1', '4', 'yteng/linksdo/index');
INSERT INTO `yt_column` VALUES ('18', '下载中心', '1', '0,1,18,', '1', '8', 'yteng/downs/index');
INSERT INTO `yt_column` VALUES ('25', '网站设置', '26', '0,4,26,25,', '2', '2', 'yteng/webset/index');
INSERT INTO `yt_column` VALUES ('27', '系统类别', '26', '0,4,26,27,', '2', '3', 'yteng/sort/index');
INSERT INTO `yt_column` VALUES ('29', '基本资料', '5', '0,4,5,29,', '2', '1', 'yteng/administrator/mybase');
INSERT INTO `yt_column` VALUES ('30', '修改密码', '5', '0,4,5,30,', '2', '1', 'yteng/administrator/editpwd');
INSERT INTO `yt_column` VALUES ('31', '用户管理', '26', '0,4,26,31,', '2', '1', 'yteng/administrator/index');

-- ----------------------------
-- Table structure for `yt_download`
-- ----------------------------
DROP TABLE IF EXISTS `yt_download`;
CREATE TABLE `yt_download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `info` text COMMENT '下载文件信息',
  `keyword` varchar(50) DEFAULT NULL COMMENT '关键词',
  `description` tinytext COMMENT '描述',
  `content` text COMMENT '详细内容',
  `views` int(11) unsigned DEFAULT '1' COMMENT '浏览量',
  `pic` varchar(60) DEFAULT NULL COMMENT '小图',
  `orders` int(11) DEFAULT '1',
  `isdel` tinyint(3) unsigned DEFAULT '1' COMMENT '1:显示;  2: 删除;',
  `uuid` varchar(32) DEFAULT NULL COMMENT '产生唯一值',
  `editor` varchar(20) DEFAULT NULL COMMENT '发布人',
  `addtime` varchar(11) DEFAULT NULL,
  `sortid` int(11) unsigned DEFAULT '0' COMMENT '类别ID',
  `sortpath` varchar(30) DEFAULT NULL COMMENT '类别路径',
  `istj` tinyint(1) unsigned DEFAULT '2' COMMENT '1: 推荐; 2: 不推荐;',
  `downnums` int(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COMMENT='资讯信息';

-- ----------------------------
-- Records of yt_download
-- ----------------------------
INSERT INTO `yt_download` VALUES ('92', 'Web Uploader', '[\"{\\\"md5\\\":\\\"bdf3bf1da3405725be763540d6601144\\\",\\\"source_name\\\":\\\"Hydrangeas.jpg\\\",\\\"size\\\":162991,\\\"save_name\\\":\\\"20190118\\/201901189463622238.jpg\\\"}\",\"{\\\"md5\\\":\\\"5a44c7ba5bbe4ec867233d67e4806848\\\",\\\"source_name\\\":\\\"Jellyfish.jpg\\\",\\\"size\\\":135486,\\\"save_name\\\":\\\"20190118\\/201901189463731300.jpg\\\"}\",\"{\\\"md5\\\":\\\"9d377b10ce778c4938b3c7e2c63a229a\\\",\\\"source_name\\\":\\\"Penguins.jpg\\\",\\\"size\\\":202248,\\\"save_name\\\":\\\"20190118\\/201901189465014682.jpg\\\"}\"]', '分片、并发', 'WebUploader是由Baidu WebFE(FEX)团队开发的一个简单的以HTML5为主，FLASH为辅的现代文件上传组件。在现代的浏览器里面能充分发挥HTML5的优势，同时又不摒弃主流IE浏览器，沿用原来的FLASH运行时，兼', '<p>asdf</p>', '1', '20190118/301bbc98d73ac0a011bbc7e9092d62d0.jpg', '2', '1', null, null, '1547776216', '40', '0,1,39,40,', '2', '0');
INSERT INTO `yt_download` VALUES ('93', 'sadf', '[\"{\\\"md5\\\":\\\"173dcf6f121b2b8f7626e56bd97727d8\\\",\\\"source_name\\\":\\\"8.jpg\\\",\\\"size\\\":40399,\\\"save_name\\\":\\\"20190123\\/201901232413016787.jpg\\\"}\"]', 'adsf', 'asdf', '<p>asdf</p>', '1', '', '1', '1', null, null, '1548225692', '59', '0,1,39,59,', '2', '0');

-- ----------------------------
-- Table structure for `yt_links`
-- ----------------------------
DROP TABLE IF EXISTS `yt_links`;
CREATE TABLE `yt_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `linkurl` varchar(100) DEFAULT NULL,
  `pic` varchar(60) DEFAULT NULL,
  `orders` int(11) DEFAULT '1',
  `isshow` tinyint(3) unsigned DEFAULT '1' COMMENT '1:显示;  2: 不显示;',
  `addtime` varchar(11) DEFAULT NULL,
  `sortid` int(11) DEFAULT NULL COMMENT '0',
  `sortpath` varchar(30) DEFAULT NULL,
  `isdel` tinyint(4) DEFAULT '1' COMMENT '1: 显示； 2： 回收站',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='友情链接,合作伙伴表';

-- ----------------------------
-- Records of yt_links
-- ----------------------------
INSERT INTO `yt_links` VALUES ('15', '中国爆破器材行业协会', 'http://www.cemta.cn/', '', '1', '1', '1539824415', '61', '0,1,2,61,', '1');
INSERT INTO `yt_links` VALUES ('13', '江西省工业和信息化厅', 'http://www.jxciit.gov.cn/', '', '3', '1', '1539761440', '4', '0,1,2,4,', '1');
INSERT INTO `yt_links` VALUES ('39', '南昌雅腾', 'http://www.ncyateng.com', '20190111/aab9fbdd7e22e2a1af5462423ccd44be.jpg', '2', '1', '1547216528', '4', '0,1,2,4,', '1');

-- ----------------------------
-- Table structure for `yt_news`
-- ----------------------------
DROP TABLE IF EXISTS `yt_news`;
CREATE TABLE `yt_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `keyword` varchar(30) DEFAULT NULL COMMENT '关键词',
  `description` tinytext COMMENT '描述',
  `content` text COMMENT '详细内容',
  `views` int(11) unsigned DEFAULT '1' COMMENT '浏览量',
  `pic` varchar(60) DEFAULT NULL COMMENT '小图',
  `orders` int(11) DEFAULT '1',
  `isdel` tinyint(3) unsigned DEFAULT '1' COMMENT '1:显示;  2: 删除;',
  `uuid` varchar(32) DEFAULT NULL COMMENT '产生唯一值',
  `editor` varchar(20) DEFAULT NULL COMMENT '发布人',
  `addtime` varchar(11) DEFAULT NULL,
  `sortid` int(11) unsigned DEFAULT '0' COMMENT '类别ID',
  `sortpath` varchar(30) DEFAULT NULL COMMENT '类别路径',
  `istj` tinyint(1) unsigned DEFAULT '2' COMMENT '1: 推荐; 2: 不推荐;',
  `languageid` tinyint(1) unsigned DEFAULT '0' COMMENT '1: 中文, 2: 英文',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='资讯信息';

-- ----------------------------
-- Records of yt_news
-- ----------------------------
INSERT INTO `yt_news` VALUES ('51', '热烈欢迎省工信委党组书记、主任杨贵平赴江西国泰民爆集团专题调研省委十四届六次全会精神学习贯彻情况', '江西国泰民爆集团', '省工信委党组书记、主任杨贵平来到国泰集团开展调研，了解企业改革发展情况特别是学习贯彻省委十四届六次全会精神情况，听取国泰集团的意见建议。省国资委党委委员、副主任郑高清，省', '<p><span style=\"font-size:14px;\">8月31日上午，省工信委党组书记、主任杨贵平来到国泰集团开展调研，了解企业改革发展情况特别是学习贯彻省委十四届六次全会精神情况，听取国泰集团的意见建议。省国资委党委委员、副主任郑高清，省工信委、省国资委有关处室负责人陪同调研。</span></p><p style=\"text-align: center;\"><span style=\"font-size:14px;\"><img src=\"/public/uploads/image/20181015/20181015151208_62337.jpg\" alt=\"\"/><br/></span></p><p style=\"text-align: center;\"><span style=\"font-size:14px;\">图为省工信委党组书记、主任杨贵平在国泰集团调研指导</span></p><p style=\"text-align: left;\"><span style=\"font-size:14px;\">座谈会上，国泰集团党委书记、董事长熊旭晴专题汇报了企业近年来在攻坚民爆主业和拓展多元化发展方面的情况，并就企业如何深入贯彻落实省委十四届六次全会精神提出了思路和务实举措。在听取汇报后，杨贵平主任充分肯定了国泰集团在改革重组、创新发展、业务经营、两化融合等方面取得的成绩，同时指出当务之急是如何做强做优做大、实现高质量跨越式发展。<br/><br/>杨贵平主任指出，省委十四届六次全会提出了“创新引领、改革攻坚、开放提升、绿色崛起、担当实干、兴赣富民”的工作方针，提出要“把高质量、跨越式发展作为江西的首要战略”，这对我省各行各业的发展都具有极强的指导性和针对性。<br/></span></p><p style=\"text-align: center;\"><img src=\"/public/uploads/image/20181015/20181015151334_38502.jpg\" alt=\"\"/></p><p style=\"text-align: center;\">图为省工信委党组书记、主任杨贵平一行在国泰集团调研座谈</p><p style=\"text-align: left;\">杨贵平主任强调，企业要认真贯彻落实省委十四届六次全会精神，努力在两个方面发力：一方面，要在业务经营上发力。要在巩固“老四化”（一体化、多元化、证券化、国际化）的基础上，积极探索“新四化”（高端化、智能化、服务化、绿色化），加快转型升级，努力实现质量提升、规模扩张。另一方面，要在加强党建上发力。要在中国特色现代企业制度实现路径上勇于探索，在提高企业党建质量上敢于创新，在党建推进经营上彰显成效，努力实现党建工作与业务经营良性互动、有机融合。</p><p></p>', '31', '20190118/20b0c1938e23d13e7193d06783227985.jpeg', '1', '1', '6b28d268f753711cab5d058be950c4d5', 'czm', '1539587890', '37', '0,1,30,36,37,', '2', '1');

-- ----------------------------
-- Table structure for `yt_photos`
-- ----------------------------
DROP TABLE IF EXISTS `yt_photos`;
CREATE TABLE `yt_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) DEFAULT NULL,
  `pic` varchar(60) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_photos
-- ----------------------------
INSERT INTO `yt_photos` VALUES ('67', '35017d5aaec0c2f79fca5f05d700413e', '20190118/9d086a3a115aa4385feb3dfe17cf844e.jpeg', '');
INSERT INTO `yt_photos` VALUES ('68', '35017d5aaec0c2f79fca5f05d700413e', '20190118/093f6956338b9ae985b793f476bdafd1.jpg', '');

-- ----------------------------
-- Table structure for `yt_product`
-- ----------------------------
DROP TABLE IF EXISTS `yt_product`;
CREATE TABLE `yt_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `keyword` varchar(30) DEFAULT NULL COMMENT '关键词',
  `description` tinytext COMMENT '描述',
  `content` text COMMENT '详细内容',
  `views` int(11) unsigned DEFAULT '1' COMMENT '浏览量',
  `pic` varchar(60) DEFAULT NULL COMMENT '小图',
  `orders` int(11) DEFAULT '1',
  `isdel` tinyint(3) unsigned DEFAULT '1' COMMENT '1:显示;  2: 删除;',
  `uuid` varchar(32) DEFAULT NULL COMMENT '产生唯一值',
  `editor` varchar(20) DEFAULT NULL COMMENT '发布人',
  `addtime` varchar(11) DEFAULT NULL,
  `sortid` int(11) unsigned DEFAULT '0' COMMENT '类别ID',
  `sortpath` varchar(30) DEFAULT NULL COMMENT '类别路径',
  `istj` tinyint(1) unsigned DEFAULT '2' COMMENT '1: 推荐; 2: 不推荐;',
  `languageid` tinyint(1) unsigned DEFAULT '0' COMMENT '1: 中文, 2: 英文',
  `discountprice` varchar(10) DEFAULT '',
  `marketprice` varchar(10) DEFAULT '市场价格',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='资讯信息';

-- ----------------------------
-- Records of yt_product
-- ----------------------------
INSERT INTO `yt_product` VALUES ('2', '小规模纳税人记账', '小规模纳税人记账', '小规模纳税人记账', '<p>&lt;span style=\\&quot;\\\\&quot;\\\\\\\\&quot;color:#595757;font-family:微软雅黑,\\\\&quot;\\&quot; 宋体,=\\&quot;\\\\&quot;\\\\&quot;\\&quot; arial,=\\&quot;\\\\&quot;\\\\&quot;\\&quot; helvetica,=\\&quot;\\\\&quot;\\\\&quot;\\&quot; sans-serif;line-height:30px;white-space:normal;background-color:#f7f8f8;\\\\\\\\\\\\\\&quot;=\\&quot;\\\\&quot;\\\\&quot;\\&quot;&gt;有中国注册会计师和注册税务师指导财税业务处理，由从业三年以上会计师专业打理你公司的账务，专业品质又贴心服务！ 南昌企业注册、公司注册、南昌企业变更、公司变更、南昌企业注销、公司注销、商标注册、南昌代理记账、代理记账、税务代理、会计培训、财务审计、税务审计、所得税汇算清缴、土地增值税清算、财务顾问、税务顾问、税务咨询、税收筹划</p>', '4', '20190118/87fafe6f7a991781afff0430b564cf51.jpg', '1', '1', 'cced36c732079c0e58f376657ed244af', 'admin', '1501251501', '42', '0,1,39,42,', '2', '1', '260', '350');
INSERT INTO `yt_product` VALUES ('7', '中国股权投资基金协会', '中国股权投资基金协会', '中国股权投资基金协会中国股权投资基金协会中国股权投资基金协会中国股权投资基金协会中国股权投资基金协会中国股权投资基金协会', '<p><span style=\"font-family:&#39;Helvetica Neue&#39;, Helvetica, Tahoma, Arial, &#39;Microsoft Yahei&#39;, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif, Arial;font-size:14px;line-height:28px;background-color:#F9F9F9;\">中国股权投资基金协会接受国家行业主管部门的工作指导和业务支持，服务于在全国注册的各类基金及管理、中介机构等，致力于建设行业自律监管机制，维护会员的合法权益，提高会员从业素质，加强会员与境内外股权投资基金界的合作与交流，促进我国股权投资基金产业健康发展中国股权投资基金协会接受国家行业主管部门的工作指导和业务支持，服务于在全国注册的各类基金及管理、中介机构等，致力于建设行业自律监管机制，维护会员的合法权益，提高会员从业素质，加强会员与境内外股权投资基金界的合作与交流，促进我国股权投资基金产业健康发展</span></p>', '1', '20190118/d462d05710735c2036d4358b53057b48.jpg', '1', '1', '0888be1ae81fb22bbafb3a30d25b8622', 'admin', '1506351659', '40', '0,1,39,40,', '2', '1', '1', '1');

-- ----------------------------
-- Table structure for `yt_sortclass`
-- ----------------------------
DROP TABLE IF EXISTS `yt_sortclass`;
CREATE TABLE `yt_sortclass` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sortname` varchar(25) NOT NULL COMMENT '类别名称',
  `esortname` varchar(50) DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父类ID: 第一级的话为0',
  `sortpath` varchar(50) DEFAULT NULL COMMENT '类别路径, 从顶级到当前级, 方便类别模糊查询',
  `level` tinyint(4) DEFAULT '0' COMMENT '级别:　第一级为０',
  `orders` smallint(6) DEFAULT '1' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yt_sortclass
-- ----------------------------
INSERT INTO `yt_sortclass` VALUES ('1', '信息分类', null, '0', '0,1,', '0', '1');
INSERT INTO `yt_sortclass` VALUES ('2', '友情链接', null, '1', '0,1,2,', '1', '12');
INSERT INTO `yt_sortclass` VALUES ('3', '友情链接', null, '2', '0,1,2,3,', '2', '3');
INSERT INTO `yt_sortclass` VALUES ('4', '科技链接', '', '2', '0,1,2,4,', '2', '2');
INSERT INTO `yt_sortclass` VALUES ('5', '下载中心', '', '1', '0,1,5,', '1', '9');
INSERT INTO `yt_sortclass` VALUES ('6', '科学书库', '', '5', '0,1,5,6,', '2', '5');
INSERT INTO `yt_sortclass` VALUES ('7', '教育培训', '', '5', '0,1,5,7,', '2', '4');
INSERT INTO `yt_sortclass` VALUES ('8', '标准规范', '', '5', '0,1,5,8,', '2', '3');
INSERT INTO `yt_sortclass` VALUES ('10', '关于我们', 'About Us', '1', '0,1,10,', '1', '6');
INSERT INTO `yt_sortclass` VALUES ('11', '机构设置', '', '10', '0,1,10,11,', '2', '4');
INSERT INTO `yt_sortclass` VALUES ('12', '研究院简介', '', '10', '0,1,10,12,', '2', '1');
INSERT INTO `yt_sortclass` VALUES ('41', '科技成果', '', '39', '0,1,39,41,', '2', '7');
INSERT INTO `yt_sortclass` VALUES ('20', '民爆行业标准', '', '8', '0,1,5,8,20,', '3', '1');
INSERT INTO `yt_sortclass` VALUES ('21', '爆破行业标准', '', '8', '0,1,5,8,21,', '3', '2');
INSERT INTO `yt_sortclass` VALUES ('22', '消防规范', '', '8', '0,1,5,8,22,', '3', '3');
INSERT INTO `yt_sortclass` VALUES ('23', '专业教程', '', '7', '0,1,5,7,23,', '3', '1');
INSERT INTO `yt_sortclass` VALUES ('18', '人才团队1', '', '36', '0,1,30,36,18,', '3', '6');
INSERT INTO `yt_sortclass` VALUES ('24', '科技管理', '', '7', '0,1,5,7,24,', '3', '2');
INSERT INTO `yt_sortclass` VALUES ('25', '环境安全', '', '6', '0,1,5,6,25,', '3', '6');
INSERT INTO `yt_sortclass` VALUES ('29', '消防技术', '', '6', '0,1,5,6,29,', '3', '7');
INSERT INTO `yt_sortclass` VALUES ('30', '资讯信息', '', '1', '0,1,30,', '1', '3');
INSERT INTO `yt_sortclass` VALUES ('39', '产品中心', '', '1', '0,1,39,', '1', '4');
INSERT INTO `yt_sortclass` VALUES ('40', '承担项目', '', '39', '0,1,39,40,', '2', '6');
INSERT INTO `yt_sortclass` VALUES ('36', '新闻资讯', '', '30', '0,1,30,36,', '2', '1');
INSERT INTO `yt_sortclass` VALUES ('37', '科技要闻', '', '36', '0,1,30,36,37,', '3', '2');
INSERT INTO `yt_sortclass` VALUES ('38', '行业快讯', '', '36', '0,1,30,36,38,', '3', '4');
INSERT INTO `yt_sortclass` VALUES ('42', '科技奖励', '', '39', '0,1,39,42,', '2', '5');
INSERT INTO `yt_sortclass` VALUES ('43', '知识产权', '', '39', '0,1,39,43,', '2', '1');
INSERT INTO `yt_sortclass` VALUES ('61', '行业链接', '', '2', '0,1,2,61,', '2', '1');
INSERT INTO `yt_sortclass` VALUES ('49', '平台建设', '', '10', '0,1,10,49,', '2', '10');
INSERT INTO `yt_sortclass` VALUES ('50', '民爆器材工程技术研究中心', '', '49', '0,1,10,49,50,', '3', '5');
INSERT INTO `yt_sortclass` VALUES ('51', '爆破工程技术研究中心', '', '49', '0,1,10,49,51,', '3', '6');
INSERT INTO `yt_sortclass` VALUES ('52', '油相材料工程技术研究中心', '', '49', '0,1,10,49,52,', '3', '7');
INSERT INTO `yt_sortclass` VALUES ('53', '民爆器材与爆破技术工程<br>研究中心', '', '49', '0,1,10,49,53,', '3', '2');
INSERT INTO `yt_sortclass` VALUES ('54', '金属3D打印工程研究中心', '', '49', '0,1,10,49,54,', '3', '3');
INSERT INTO `yt_sortclass` VALUES ('55', '博士后科研工作站', '', '49', '0,1,10,49,55,', '3', '1');
INSERT INTO `yt_sortclass` VALUES ('77', '大师傅', '', '5', '0,1,5,77,', '2', '2');
INSERT INTO `yt_sortclass` VALUES ('57', '民爆书籍', '', '6', '0,1,5,6,57,', '3', '5');
INSERT INTO `yt_sortclass` VALUES ('58', '火炸药书籍', '', '6', '0,1,5,6,58,', '3', '3');
INSERT INTO `yt_sortclass` VALUES ('59', '论文论著', '', '39', '0,1,39,59,', '2', '4');
INSERT INTO `yt_sortclass` VALUES ('78', '一级分类', '', '30', '0,1,30,78,', '2', '2');
INSERT INTO `yt_sortclass` VALUES ('63', '化工管理', '', '6', '0,1,5,6,63,', '3', '1');
INSERT INTO `yt_sortclass` VALUES ('64', '政策资讯', '', '36', '0,1,30,36,64,', '3', '3');
INSERT INTO `yt_sortclass` VALUES ('65', '通知公告', '', '36', '0,1,30,36,65,', '3', '1');
INSERT INTO `yt_sortclass` VALUES ('74', '3D打印技术团队', '', '18', '0,1,30,36,18,74,', '3', '8');
INSERT INTO `yt_sortclass` VALUES ('70', '起爆器材研究基地', '', '67', '0,1,10,67,70,', '3', '3');
INSERT INTO `yt_sortclass` VALUES ('67', '科研条件', '', '10', '0,1,10,67,', '2', '8');
INSERT INTO `yt_sortclass` VALUES ('68', '民爆器材与爆破技术团队', '', '18', '0,1,30,36,18,68,', '3', '9');
INSERT INTO `yt_sortclass` VALUES ('69', '学术带头人', '', '30', '0,1,30,69,', '2', '1');
INSERT INTO `yt_sortclass` VALUES ('71', '工业索类试验基地', '', '67', '0,1,10,67,71,', '3', '5');
INSERT INTO `yt_sortclass` VALUES ('72', '乳化炸药试验基地', '', '67', '0,1,10,67,72,', '3', '2');
INSERT INTO `yt_sortclass` VALUES ('73', '铵油炸药试验基地', '', '67', '0,1,10,67,73,', '3', '1');
INSERT INTO `yt_sortclass` VALUES ('75', '江西省油相材料技术团队', '', '18', '0,1,30,36,18,75,', '3', '3');
INSERT INTO `yt_sortclass` VALUES ('76', '论文文献', '', '5', '0,1,5,76,', '2', '1');
INSERT INTO `yt_sortclass` VALUES ('79', '001级', '', '0', '0,79,', '0', '1');
