/*
Navicat MySQL Data Transfer

Source Server         : localhostconnect
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : associate

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-08-22 21:07:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(36) NOT NULL COMMENT '国家或地区名',
  `location_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL COMMENT '父地区',
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=668 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '中国', '0', '0');
INSERT INTO `area` VALUES ('2', '阿尔巴尼亚', '0', '0');
INSERT INTO `area` VALUES ('3', '阿尔及利亚', '0', '0');
INSERT INTO `area` VALUES ('4', '阿富汗', '0', '0');
INSERT INTO `area` VALUES ('5', '阿根廷', '0', '0');
INSERT INTO `area` VALUES ('6', '阿拉伯联合酋长国', '0', '0');
INSERT INTO `area` VALUES ('7', '阿鲁巴', '0', '0');
INSERT INTO `area` VALUES ('8', '阿曼', '0', '0');
INSERT INTO `area` VALUES ('9', '阿塞拜疆', '0', '0');
INSERT INTO `area` VALUES ('10', '阿森松岛', '0', '0');
INSERT INTO `area` VALUES ('11', '埃及', '0', '0');
INSERT INTO `area` VALUES ('12', '埃塞俄比亚', '0', '0');
INSERT INTO `area` VALUES ('13', '爱尔兰', '0', '0');
INSERT INTO `area` VALUES ('14', '爱沙尼亚', '0', '0');
INSERT INTO `area` VALUES ('15', '安道尔', '0', '0');
INSERT INTO `area` VALUES ('16', '安哥拉', '0', '0');
INSERT INTO `area` VALUES ('17', '安圭拉', '0', '0');
INSERT INTO `area` VALUES ('18', '安提瓜岛和巴布达', '0', '0');
INSERT INTO `area` VALUES ('19', '澳大利亚', '0', '0');
INSERT INTO `area` VALUES ('20', '奥地利', '0', '0');
INSERT INTO `area` VALUES ('21', '奥兰群岛', '0', '0');
INSERT INTO `area` VALUES ('22', '巴巴多斯岛', '0', '0');
INSERT INTO `area` VALUES ('23', '巴布亚新几内亚', '0', '0');
INSERT INTO `area` VALUES ('24', '巴哈马', '0', '0');
INSERT INTO `area` VALUES ('25', '巴基斯坦', '0', '0');
INSERT INTO `area` VALUES ('26', '巴拉圭', '0', '0');
INSERT INTO `area` VALUES ('27', '巴勒斯坦', '0', '0');
INSERT INTO `area` VALUES ('28', '巴林', '0', '0');
INSERT INTO `area` VALUES ('29', '巴拿马', '0', '0');
INSERT INTO `area` VALUES ('30', '巴西', '0', '0');
INSERT INTO `area` VALUES ('31', '白俄罗斯', '0', '0');
INSERT INTO `area` VALUES ('32', '百慕大', '0', '0');
INSERT INTO `area` VALUES ('33', '保加利亚', '0', '0');
INSERT INTO `area` VALUES ('34', '北马里亚纳群岛', '0', '0');
INSERT INTO `area` VALUES ('35', '贝宁', '0', '0');
INSERT INTO `area` VALUES ('36', '比利时', '0', '0');
INSERT INTO `area` VALUES ('37', '冰岛', '0', '0');
INSERT INTO `area` VALUES ('38', '波多黎各', '0', '0');
INSERT INTO `area` VALUES ('39', '波兰', '0', '0');
INSERT INTO `area` VALUES ('40', '玻利维亚', '0', '0');
INSERT INTO `area` VALUES ('41', '波斯尼亚和黑塞哥维那', '0', '0');
INSERT INTO `area` VALUES ('42', '博茨瓦纳', '0', '0');
INSERT INTO `area` VALUES ('43', '伯利兹', '0', '0');
INSERT INTO `area` VALUES ('44', '不丹', '0', '0');
INSERT INTO `area` VALUES ('45', '布基纳法索', '0', '0');
INSERT INTO `area` VALUES ('46', '布隆迪', '0', '0');
INSERT INTO `area` VALUES ('47', '布韦岛', '0', '0');
INSERT INTO `area` VALUES ('48', '朝鲜', '0', '0');
INSERT INTO `area` VALUES ('49', '丹麦', '0', '0');
INSERT INTO `area` VALUES ('50', '德国', '0', '0');
INSERT INTO `area` VALUES ('51', '东帝汶', '0', '0');
INSERT INTO `area` VALUES ('52', '多哥', '0', '0');
INSERT INTO `area` VALUES ('53', '多米尼加', '0', '0');
INSERT INTO `area` VALUES ('54', '多米尼加共和国', '0', '0');
INSERT INTO `area` VALUES ('55', '俄罗斯', '0', '0');
INSERT INTO `area` VALUES ('56', '厄瓜多尔', '0', '0');
INSERT INTO `area` VALUES ('57', '厄立特里亚', '0', '0');
INSERT INTO `area` VALUES ('58', '法国', '0', '0');
INSERT INTO `area` VALUES ('59', '法罗群岛', '0', '0');
INSERT INTO `area` VALUES ('60', '法属波利尼西亚', '0', '0');
INSERT INTO `area` VALUES ('61', '法属圭亚那', '0', '0');
INSERT INTO `area` VALUES ('62', '法属南部领地', '0', '0');
INSERT INTO `area` VALUES ('63', '梵蒂冈', '0', '0');
INSERT INTO `area` VALUES ('64', '菲律宾', '0', '0');
INSERT INTO `area` VALUES ('65', '斐济', '0', '0');
INSERT INTO `area` VALUES ('66', '芬兰', '0', '0');
INSERT INTO `area` VALUES ('67', '佛得角', '0', '0');
INSERT INTO `area` VALUES ('68', '弗兰克群岛', '0', '0');
INSERT INTO `area` VALUES ('69', '冈比亚', '0', '0');
INSERT INTO `area` VALUES ('70', '刚果', '0', '0');
INSERT INTO `area` VALUES ('71', '刚果民主共和国', '0', '0');
INSERT INTO `area` VALUES ('73', '哥斯达黎加', '0', '0');
INSERT INTO `area` VALUES ('74', '格恩西岛', '0', '0');
INSERT INTO `area` VALUES ('75', '格林纳达', '0', '0');
INSERT INTO `area` VALUES ('76', '格陵兰', '0', '0');
INSERT INTO `area` VALUES ('77', '古巴', '0', '0');
INSERT INTO `area` VALUES ('78', '瓜德罗普', '0', '0');
INSERT INTO `area` VALUES ('79', '关岛', '0', '0');
INSERT INTO `area` VALUES ('80', '圭亚那', '0', '0');
INSERT INTO `area` VALUES ('81', '哈萨克斯坦', '0', '0');
INSERT INTO `area` VALUES ('82', '海地', '0', '0');
INSERT INTO `area` VALUES ('83', '韩国', '0', '0');
INSERT INTO `area` VALUES ('84', '荷兰', '0', '0');
INSERT INTO `area` VALUES ('85', '荷属安地列斯', '0', '0');
INSERT INTO `area` VALUES ('86', '赫德和麦克唐纳群岛', '0', '0');
INSERT INTO `area` VALUES ('87', '洪都拉斯', '0', '0');
INSERT INTO `area` VALUES ('88', '基里巴斯', '0', '0');
INSERT INTO `area` VALUES ('89', '吉布提', '0', '0');
INSERT INTO `area` VALUES ('90', '吉尔吉斯斯坦', '0', '0');
INSERT INTO `area` VALUES ('91', '几内亚', '0', '0');
INSERT INTO `area` VALUES ('92', '几内亚比绍', '0', '0');
INSERT INTO `area` VALUES ('93', '加拿大', '0', '0');
INSERT INTO `area` VALUES ('94', '加纳', '0', '0');
INSERT INTO `area` VALUES ('95', '加蓬', '0', '0');
INSERT INTO `area` VALUES ('96', '柬埔寨', '0', '0');
INSERT INTO `area` VALUES ('97', '捷克共和国', '0', '0');
INSERT INTO `area` VALUES ('98', '津巴布韦', '0', '0');
INSERT INTO `area` VALUES ('99', '喀麦隆', '0', '0');
INSERT INTO `area` VALUES ('100', '卡塔尔', '0', '0');
INSERT INTO `area` VALUES ('101', '开曼群岛', '0', '0');
INSERT INTO `area` VALUES ('102', '科科斯群岛', '0', '0');
INSERT INTO `area` VALUES ('103', '科摩罗', '0', '0');
INSERT INTO `area` VALUES ('104', '科特迪瓦', '0', '0');
INSERT INTO `area` VALUES ('105', '科威特', '0', '0');
INSERT INTO `area` VALUES ('106', '克罗地亚', '0', '0');
INSERT INTO `area` VALUES ('107', '肯尼亚', '0', '0');
INSERT INTO `area` VALUES ('108', '库克群岛', '0', '0');
INSERT INTO `area` VALUES ('109', '拉脱维亚', '0', '0');
INSERT INTO `area` VALUES ('110', '莱索托', '0', '0');
INSERT INTO `area` VALUES ('111', '老挝', '0', '0');
INSERT INTO `area` VALUES ('112', '黎巴嫩', '0', '0');
INSERT INTO `area` VALUES ('113', '利比里亚', '0', '0');
INSERT INTO `area` VALUES ('114', '利比亚', '0', '0');
INSERT INTO `area` VALUES ('115', '立陶宛', '0', '0');
INSERT INTO `area` VALUES ('116', '列支敦士登', '0', '0');
INSERT INTO `area` VALUES ('117', '留尼旺岛', '0', '0');
INSERT INTO `area` VALUES ('118', '卢森堡', '0', '0');
INSERT INTO `area` VALUES ('119', '卢旺达', '0', '0');
INSERT INTO `area` VALUES ('120', '罗马尼亚', '0', '0');
INSERT INTO `area` VALUES ('121', '马达加斯加', '0', '0');
INSERT INTO `area` VALUES ('122', '马尔代夫', '0', '0');
INSERT INTO `area` VALUES ('123', '马耳他', '0', '0');
INSERT INTO `area` VALUES ('124', '马拉维', '0', '0');
INSERT INTO `area` VALUES ('125', '马来西亚', '0', '0');
INSERT INTO `area` VALUES ('126', '马里', '0', '0');
INSERT INTO `area` VALUES ('127', '马其顿', '0', '0');
INSERT INTO `area` VALUES ('128', '马绍尔群岛', '0', '0');
INSERT INTO `area` VALUES ('129', '马提尼克', '0', '0');
INSERT INTO `area` VALUES ('130', '马约特岛', '0', '0');
INSERT INTO `area` VALUES ('131', '曼岛', '0', '0');
INSERT INTO `area` VALUES ('132', '毛里求斯', '0', '0');
INSERT INTO `area` VALUES ('133', '毛里塔尼亚', '0', '0');
INSERT INTO `area` VALUES ('134', '美国', '0', '0');
INSERT INTO `area` VALUES ('135', '美属萨摩亚', '0', '0');
INSERT INTO `area` VALUES ('136', '美属外岛', '0', '0');
INSERT INTO `area` VALUES ('137', '蒙古', '0', '0');
INSERT INTO `area` VALUES ('138', '蒙特塞拉特', '0', '0');
INSERT INTO `area` VALUES ('139', '孟加拉', '0', '0');
INSERT INTO `area` VALUES ('140', '密克罗尼西亚', '0', '0');
INSERT INTO `area` VALUES ('141', '秘鲁', '0', '0');
INSERT INTO `area` VALUES ('142', '缅甸', '0', '0');
INSERT INTO `area` VALUES ('143', '摩尔多瓦', '0', '0');
INSERT INTO `area` VALUES ('144', '摩洛哥', '0', '0');
INSERT INTO `area` VALUES ('145', '摩纳哥', '0', '0');
INSERT INTO `area` VALUES ('146', '莫桑比克', '0', '0');
INSERT INTO `area` VALUES ('147', '墨西哥', '0', '0');
INSERT INTO `area` VALUES ('148', '纳米比亚', '0', '0');
INSERT INTO `area` VALUES ('149', '南非', '0', '0');
INSERT INTO `area` VALUES ('150', '南极洲', '0', '0');
INSERT INTO `area` VALUES ('151', '南乔治亚和南桑德威奇群岛', '0', '0');
INSERT INTO `area` VALUES ('152', '瑙鲁', '0', '0');
INSERT INTO `area` VALUES ('153', '尼泊尔', '0', '0');
INSERT INTO `area` VALUES ('154', '尼加拉瓜', '0', '0');
INSERT INTO `area` VALUES ('155', '尼日尔', '0', '0');
INSERT INTO `area` VALUES ('156', '尼日利亚', '0', '0');
INSERT INTO `area` VALUES ('157', '纽埃', '0', '0');
INSERT INTO `area` VALUES ('158', '挪威', '0', '0');
INSERT INTO `area` VALUES ('159', '诺福克', '0', '0');
INSERT INTO `area` VALUES ('160', '帕劳群岛', '0', '0');
INSERT INTO `area` VALUES ('161', '皮特凯恩', '0', '0');
INSERT INTO `area` VALUES ('162', '葡萄牙', '0', '0');
INSERT INTO `area` VALUES ('163', '乔治亚', '0', '0');
INSERT INTO `area` VALUES ('164', '日本', '0', '0');
INSERT INTO `area` VALUES ('165', '瑞典', '0', '0');
INSERT INTO `area` VALUES ('166', '瑞士', '0', '0');
INSERT INTO `area` VALUES ('167', '萨尔瓦多', '0', '0');
INSERT INTO `area` VALUES ('168', '萨摩亚', '0', '0');
INSERT INTO `area` VALUES ('169', '塞尔维亚,黑山', '0', '0');
INSERT INTO `area` VALUES ('170', '塞拉利昂', '0', '0');
INSERT INTO `area` VALUES ('171', '塞内加尔', '0', '0');
INSERT INTO `area` VALUES ('172', '塞浦路斯', '0', '0');
INSERT INTO `area` VALUES ('173', '塞舌尔', '0', '0');
INSERT INTO `area` VALUES ('174', '沙特阿拉伯', '0', '0');
INSERT INTO `area` VALUES ('175', '圣诞岛', '0', '0');
INSERT INTO `area` VALUES ('176', '圣多美和普林西比', '0', '0');
INSERT INTO `area` VALUES ('177', '圣赫勒拿', '0', '0');
INSERT INTO `area` VALUES ('178', '圣基茨和尼维斯', '0', '0');
INSERT INTO `area` VALUES ('179', '圣卢西亚', '0', '0');
INSERT INTO `area` VALUES ('180', '圣马力诺', '0', '0');
INSERT INTO `area` VALUES ('181', '圣皮埃尔和米克隆群岛', '0', '0');
INSERT INTO `area` VALUES ('182', '圣文森特和格林纳丁斯', '0', '0');
INSERT INTO `area` VALUES ('183', '斯里兰卡', '0', '0');
INSERT INTO `area` VALUES ('184', '斯洛伐克', '0', '0');
INSERT INTO `area` VALUES ('185', '斯洛文尼亚', '0', '0');
INSERT INTO `area` VALUES ('186', '斯瓦尔巴和扬马廷', '0', '0');
INSERT INTO `area` VALUES ('187', '斯威士兰', '0', '0');
INSERT INTO `area` VALUES ('188', '苏丹', '0', '0');
INSERT INTO `area` VALUES ('189', '苏里南', '0', '0');
INSERT INTO `area` VALUES ('190', '所罗门群岛', '0', '0');
INSERT INTO `area` VALUES ('191', '索马里', '0', '0');
INSERT INTO `area` VALUES ('192', '塔吉克斯坦', '0', '0');
INSERT INTO `area` VALUES ('193', '泰国', '0', '0');
INSERT INTO `area` VALUES ('194', '坦桑尼亚', '0', '0');
INSERT INTO `area` VALUES ('195', '汤加', '0', '0');
INSERT INTO `area` VALUES ('196', '特克斯和凯克特斯群岛', '0', '0');
INSERT INTO `area` VALUES ('197', '特里斯坦达昆哈', '0', '0');
INSERT INTO `area` VALUES ('198', '特立尼达和多巴哥', '0', '0');
INSERT INTO `area` VALUES ('199', '突尼斯', '0', '0');
INSERT INTO `area` VALUES ('200', '图瓦卢', '0', '0');
INSERT INTO `area` VALUES ('201', '土耳其', '0', '0');
INSERT INTO `area` VALUES ('202', '土库曼斯坦', '0', '0');
INSERT INTO `area` VALUES ('203', '托克劳', '0', '0');
INSERT INTO `area` VALUES ('204', '瓦利斯和福图纳', '0', '0');
INSERT INTO `area` VALUES ('205', '瓦努阿图', '0', '0');
INSERT INTO `area` VALUES ('206', '危地马拉', '0', '0');
INSERT INTO `area` VALUES ('207', '维尔京群岛，美属', '0', '0');
INSERT INTO `area` VALUES ('208', '维尔京群岛，英属', '0', '0');
INSERT INTO `area` VALUES ('209', '委内瑞拉', '0', '0');
INSERT INTO `area` VALUES ('210', '文莱', '0', '0');
INSERT INTO `area` VALUES ('211', '乌干达', '0', '0');
INSERT INTO `area` VALUES ('212', '乌克兰', '0', '0');
INSERT INTO `area` VALUES ('213', '乌拉圭', '0', '0');
INSERT INTO `area` VALUES ('214', '乌兹别克斯坦', '0', '0');
INSERT INTO `area` VALUES ('215', '西班牙', '0', '0');
INSERT INTO `area` VALUES ('216', '希腊', '0', '0');
INSERT INTO `area` VALUES ('217', '新加坡', '0', '0');
INSERT INTO `area` VALUES ('218', '新喀里多尼亚', '0', '0');
INSERT INTO `area` VALUES ('219', '新西兰', '0', '0');
INSERT INTO `area` VALUES ('220', '匈牙利', '0', '0');
INSERT INTO `area` VALUES ('221', '叙利亚', '0', '0');
INSERT INTO `area` VALUES ('222', '牙买加', '0', '0');
INSERT INTO `area` VALUES ('223', '亚美尼亚', '0', '0');
INSERT INTO `area` VALUES ('224', '也门', '0', '0');
INSERT INTO `area` VALUES ('225', '伊拉克', '0', '0');
INSERT INTO `area` VALUES ('226', '伊朗', '0', '0');
INSERT INTO `area` VALUES ('227', '以色列', '0', '0');
INSERT INTO `area` VALUES ('228', '意大利', '0', '0');
INSERT INTO `area` VALUES ('229', '印度', '0', '0');
INSERT INTO `area` VALUES ('230', '印度尼西亚', '0', '0');
INSERT INTO `area` VALUES ('231', '英国', '0', '0');
INSERT INTO `area` VALUES ('232', '英属印度洋领地', '0', '0');
INSERT INTO `area` VALUES ('233', '约旦', '0', '0');
INSERT INTO `area` VALUES ('234', '越南', '0', '0');
INSERT INTO `area` VALUES ('235', '赞比亚', '0', '0');
INSERT INTO `area` VALUES ('236', '泽西岛', '0', '0');
INSERT INTO `area` VALUES ('237', '乍得', '0', '0');
INSERT INTO `area` VALUES ('238', '直布罗陀', '0', '0');
INSERT INTO `area` VALUES ('239', '智利', '0', '0');
INSERT INTO `area` VALUES ('240', '中非共和国', '0', '0');
INSERT INTO `area` VALUES ('241', '北京市', '2', '1');
INSERT INTO `area` VALUES ('242', '天津市', '2', '1');
INSERT INTO `area` VALUES ('243', '重庆市', '7', '1');
INSERT INTO `area` VALUES ('244', '上海市', '3', '1');
INSERT INTO `area` VALUES ('245', '河北省', '2', '1');
INSERT INTO `area` VALUES ('246', '山西省', '2', '1');
INSERT INTO `area` VALUES ('247', '台湾省', '3', '1');
INSERT INTO `area` VALUES ('248', '辽宁省', '6', '1');
INSERT INTO `area` VALUES ('249', '吉林省', '6', '1');
INSERT INTO `area` VALUES ('250', '黑龙江省', '6', '1');
INSERT INTO `area` VALUES ('251', '江苏省', '3', '1');
INSERT INTO `area` VALUES ('252', '浙江省', '3', '1');
INSERT INTO `area` VALUES ('253', '安徽省', '3', '1');
INSERT INTO `area` VALUES ('254', '福建省 ', '3', '1');
INSERT INTO `area` VALUES ('255', '江西省', '3', '1');
INSERT INTO `area` VALUES ('256', '山东省', '3', '1');
INSERT INTO `area` VALUES ('257', '河南省', '1', '1');
INSERT INTO `area` VALUES ('258', '湖北省', '1', '1');
INSERT INTO `area` VALUES ('259', '湖南省', '1', '1');
INSERT INTO `area` VALUES ('260', '广东省', '4', '1');
INSERT INTO `area` VALUES ('261', '甘肃省', '5', '1');
INSERT INTO `area` VALUES ('262', '四川省', '7', '1');
INSERT INTO `area` VALUES ('263', '贵州省', '7', '1');
INSERT INTO `area` VALUES ('264', '海南省', '4', '1');
INSERT INTO `area` VALUES ('265', '云南省', '7', '1');
INSERT INTO `area` VALUES ('266', '青海省', '5', '1');
INSERT INTO `area` VALUES ('267', '陕西省', '5', '1');
INSERT INTO `area` VALUES ('268', '广西壮族自治区', '4', '1');
INSERT INTO `area` VALUES ('269', '西藏自治区', '7', '1');
INSERT INTO `area` VALUES ('270', '宁夏回族自治区', '5', '1');
INSERT INTO `area` VALUES ('271', '新疆维吾尔自治区', '5', '1');
INSERT INTO `area` VALUES ('272', '内蒙古自治区', '2', '1');
INSERT INTO `area` VALUES ('273', '澳门特别行政区', '4', '1');
INSERT INTO `area` VALUES ('274', '香港特别行政区', '4', '1');
INSERT INTO `area` VALUES ('275', '石家庄市', '2', '245');
INSERT INTO `area` VALUES ('276', '唐山市', '2', '245');
INSERT INTO `area` VALUES ('277', '秦皇岛市', '2', '245');
INSERT INTO `area` VALUES ('278', '邯郸市', '2', '245');
INSERT INTO `area` VALUES ('279', '邢台市', '2', '245');
INSERT INTO `area` VALUES ('280', '保定市', '2', '245');
INSERT INTO `area` VALUES ('281', '张家口市', '2', '245');
INSERT INTO `area` VALUES ('282', '承德市', '2', '245');
INSERT INTO `area` VALUES ('283', '沧州市', '2', '245');
INSERT INTO `area` VALUES ('284', '廊坊市', '2', '245');
INSERT INTO `area` VALUES ('285', '衡水市', '2', '245');
INSERT INTO `area` VALUES ('286', '太原市', '2', '246');
INSERT INTO `area` VALUES ('287', '大同市', '2', '246');
INSERT INTO `area` VALUES ('288', '阳泉市', '2', '246');
INSERT INTO `area` VALUES ('289', '长治市', '2', '246');
INSERT INTO `area` VALUES ('290', '晋城市', '2', '246');
INSERT INTO `area` VALUES ('291', '朔州市', '2', '246');
INSERT INTO `area` VALUES ('292', '晋中市', '2', '246');
INSERT INTO `area` VALUES ('293', '运城市', '2', '246');
INSERT INTO `area` VALUES ('294', '忻州市', '2', '246');
INSERT INTO `area` VALUES ('295', '临汾市', '2', '246');
INSERT INTO `area` VALUES ('296', '吕梁市', '2', '246');
INSERT INTO `area` VALUES ('304', '台北市', '3', '247');
INSERT INTO `area` VALUES ('305', '高雄市', '3', '247');
INSERT INTO `area` VALUES ('306', '基隆市', '3', '247');
INSERT INTO `area` VALUES ('307', '台中市', '3', '247');
INSERT INTO `area` VALUES ('308', '台南市', '3', '247');
INSERT INTO `area` VALUES ('309', '新竹市', '3', '247');
INSERT INTO `area` VALUES ('310', '嘉义市', '3', '247');
INSERT INTO `area` VALUES ('311', '台北县', '3', '247');
INSERT INTO `area` VALUES ('312', '宜兰县', '3', '247');
INSERT INTO `area` VALUES ('313', '桃园县', '3', '247');
INSERT INTO `area` VALUES ('314', '新竹县', '3', '247');
INSERT INTO `area` VALUES ('315', '苗栗县', '3', '247');
INSERT INTO `area` VALUES ('316', '台中县', '3', '247');
INSERT INTO `area` VALUES ('317', '彰化县', '3', '247');
INSERT INTO `area` VALUES ('318', '南投县', '3', '247');
INSERT INTO `area` VALUES ('319', '云林县', '3', '247');
INSERT INTO `area` VALUES ('320', '嘉义县', '3', '247');
INSERT INTO `area` VALUES ('321', '台南县', '3', '247');
INSERT INTO `area` VALUES ('322', '高雄县', '3', '247');
INSERT INTO `area` VALUES ('323', '屏东县', '3', '247');
INSERT INTO `area` VALUES ('324', '澎湖县', '3', '247');
INSERT INTO `area` VALUES ('325', '台东县', '3', '247');
INSERT INTO `area` VALUES ('326', '花莲县', '3', '247');
INSERT INTO `area` VALUES ('327', '沈阳市', '6', '248');
INSERT INTO `area` VALUES ('328', '大连市', '6', '248');
INSERT INTO `area` VALUES ('329', '鞍山市', '6', '248');
INSERT INTO `area` VALUES ('330', '抚顺市', '6', '248');
INSERT INTO `area` VALUES ('331', '本溪市', '6', '248');
INSERT INTO `area` VALUES ('332', '丹东市', '6', '248');
INSERT INTO `area` VALUES ('333', '锦州市', '6', '248');
INSERT INTO `area` VALUES ('334', '营口市', '6', '248');
INSERT INTO `area` VALUES ('335', '阜新市', '6', '248');
INSERT INTO `area` VALUES ('336', '辽阳市', '6', '248');
INSERT INTO `area` VALUES ('337', '盘锦市', '6', '248');
INSERT INTO `area` VALUES ('338', '铁岭市', '6', '248');
INSERT INTO `area` VALUES ('339', '朝阳市', '6', '248');
INSERT INTO `area` VALUES ('340', '葫芦岛市', '6', '248');
INSERT INTO `area` VALUES ('341', '长春市', '6', '249');
INSERT INTO `area` VALUES ('342', '长春市', '6', '249');
INSERT INTO `area` VALUES ('343', '吉林市', '6', '249');
INSERT INTO `area` VALUES ('344', '四平市', '6', '249');
INSERT INTO `area` VALUES ('345', '辽源市', '6', '249');
INSERT INTO `area` VALUES ('346', '通化市', '6', '249');
INSERT INTO `area` VALUES ('347', '白山市', '6', '249');
INSERT INTO `area` VALUES ('348', '松原市', '6', '249');
INSERT INTO `area` VALUES ('349', '白城市', '6', '249');
INSERT INTO `area` VALUES ('350', '延边朝鲜族自治州', '6', '249');
INSERT INTO `area` VALUES ('351', '哈尔滨市', '6', '250');
INSERT INTO `area` VALUES ('352', '齐齐哈尔市', '6', '250');
INSERT INTO `area` VALUES ('353', '鹤岗市', '6', '250');
INSERT INTO `area` VALUES ('354', '双鸭山市', '6', '250');
INSERT INTO `area` VALUES ('355', '鸡西市', '6', '250');
INSERT INTO `area` VALUES ('356', '大庆市', '6', '250');
INSERT INTO `area` VALUES ('357', '伊春市', '6', '250');
INSERT INTO `area` VALUES ('358', '牡丹江市', '6', '250');
INSERT INTO `area` VALUES ('359', '佳木斯市', '6', '250');
INSERT INTO `area` VALUES ('360', '七台河市', '6', '250');
INSERT INTO `area` VALUES ('361', '黑河市', '6', '250');
INSERT INTO `area` VALUES ('362', '绥化市', '6', '250');
INSERT INTO `area` VALUES ('363', '大兴安岭地区', '6', '250');
INSERT INTO `area` VALUES ('364', '南京市', '3', '251');
INSERT INTO `area` VALUES ('365', '无锡市', '3', '251');
INSERT INTO `area` VALUES ('366', '徐州市', '3', '251');
INSERT INTO `area` VALUES ('367', '常州市', '3', '251');
INSERT INTO `area` VALUES ('368', '苏州市', '3', '251');
INSERT INTO `area` VALUES ('369', '南通市', '3', '251');
INSERT INTO `area` VALUES ('370', '连云港市', '3', '251');
INSERT INTO `area` VALUES ('371', '淮安市', '3', '251');
INSERT INTO `area` VALUES ('372', '盐城市', '3', '251');
INSERT INTO `area` VALUES ('373', '扬州市', '3', '251');
INSERT INTO `area` VALUES ('374', '镇江市', '3', '251');
INSERT INTO `area` VALUES ('375', '泰州市', '3', '251');
INSERT INTO `area` VALUES ('376', '宿迁市', '3', '251');
INSERT INTO `area` VALUES ('377', '杭州市', '3', '252');
INSERT INTO `area` VALUES ('378', '宁波市', '3', '252');
INSERT INTO `area` VALUES ('379', '温州市', '3', '252');
INSERT INTO `area` VALUES ('380', '嘉兴市', '3', '252');
INSERT INTO `area` VALUES ('381', '湖州市', '3', '252');
INSERT INTO `area` VALUES ('382', '绍兴市', '3', '252');
INSERT INTO `area` VALUES ('383', '金华市', '3', '252');
INSERT INTO `area` VALUES ('384', '衢州市', '3', '252');
INSERT INTO `area` VALUES ('385', '舟山市', '3', '252');
INSERT INTO `area` VALUES ('386', '台州市', '3', '252');
INSERT INTO `area` VALUES ('387', '丽水市', '3', '252');
INSERT INTO `area` VALUES ('388', '合肥市', '3', '253');
INSERT INTO `area` VALUES ('389', '芜湖市', '3', '253');
INSERT INTO `area` VALUES ('390', '蚌埠市', '3', '253');
INSERT INTO `area` VALUES ('391', '淮南市', '3', '253');
INSERT INTO `area` VALUES ('392', '马鞍山市', '3', '253');
INSERT INTO `area` VALUES ('393', '淮北市', '3', '253');
INSERT INTO `area` VALUES ('394', '铜陵市', '3', '253');
INSERT INTO `area` VALUES ('395', '安庆市', '3', '253');
INSERT INTO `area` VALUES ('396', '黄山市', '3', '253');
INSERT INTO `area` VALUES ('397', '滁州市', '3', '253');
INSERT INTO `area` VALUES ('398', '阜阳市', '3', '253');
INSERT INTO `area` VALUES ('399', '宿州市', '3', '253');
INSERT INTO `area` VALUES ('400', '巢湖市', '3', '253');
INSERT INTO `area` VALUES ('401', '六安市', '3', '253');
INSERT INTO `area` VALUES ('402', '亳州市', '3', '253');
INSERT INTO `area` VALUES ('403', '池州市', '3', '253');
INSERT INTO `area` VALUES ('404', '宣城市', '3', '253');
INSERT INTO `area` VALUES ('405', '福州市', '3', '254');
INSERT INTO `area` VALUES ('406', '厦门市', '3', '254');
INSERT INTO `area` VALUES ('407', '莆田市', '3', '254');
INSERT INTO `area` VALUES ('408', '三明市', '3', '254');
INSERT INTO `area` VALUES ('409', '泉州市', '3', '254');
INSERT INTO `area` VALUES ('410', '漳州市', '3', '254');
INSERT INTO `area` VALUES ('411', '南平市', '3', '254');
INSERT INTO `area` VALUES ('412', '龙岩市', '3', '254');
INSERT INTO `area` VALUES ('413', '宁德市', '3', '254');
INSERT INTO `area` VALUES ('414', '南昌市', '3', '255');
INSERT INTO `area` VALUES ('415', '景德镇市', '3', '255');
INSERT INTO `area` VALUES ('416', '萍乡市', '3', '255');
INSERT INTO `area` VALUES ('417', '九江市', '3', '255');
INSERT INTO `area` VALUES ('418', '新余市', '3', '255');
INSERT INTO `area` VALUES ('419', '鹰潭市', '3', '255');
INSERT INTO `area` VALUES ('420', '赣州市', '3', '255');
INSERT INTO `area` VALUES ('421', '吉安市', '3', '255');
INSERT INTO `area` VALUES ('422', '宜春市', '3', '255');
INSERT INTO `area` VALUES ('423', '抚州市', '3', '255');
INSERT INTO `area` VALUES ('424', '上饶市', '3', '255');
INSERT INTO `area` VALUES ('425', '济南市', '3', '256');
INSERT INTO `area` VALUES ('426', '青岛市', '3', '256');
INSERT INTO `area` VALUES ('427', '淄博市', '3', '256');
INSERT INTO `area` VALUES ('428', '枣庄市', '3', '256');
INSERT INTO `area` VALUES ('429', '东营市', '3', '256');
INSERT INTO `area` VALUES ('430', '烟台市', '3', '256');
INSERT INTO `area` VALUES ('431', '潍坊市', '3', '256');
INSERT INTO `area` VALUES ('432', '济宁市', '3', '256');
INSERT INTO `area` VALUES ('433', '泰安市', '3', '256');
INSERT INTO `area` VALUES ('434', '威海市', '3', '256');
INSERT INTO `area` VALUES ('435', '日照市', '3', '256');
INSERT INTO `area` VALUES ('436', '莱芜市', '3', '256');
INSERT INTO `area` VALUES ('437', '临沂市', '3', '256');
INSERT INTO `area` VALUES ('438', '德州市', '3', '256');
INSERT INTO `area` VALUES ('439', '聊城市', '3', '256');
INSERT INTO `area` VALUES ('440', '滨州市', '3', '256');
INSERT INTO `area` VALUES ('441', '菏泽市', '3', '256');
INSERT INTO `area` VALUES ('442', '郑州市', '1', '257');
INSERT INTO `area` VALUES ('443', '开封市', '1', '257');
INSERT INTO `area` VALUES ('444', '洛阳市', '1', '257');
INSERT INTO `area` VALUES ('445', '平顶山市', '1', '257');
INSERT INTO `area` VALUES ('446', '安阳市', '1', '257');
INSERT INTO `area` VALUES ('447', '鹤壁市', '1', '257');
INSERT INTO `area` VALUES ('448', '新乡市', '1', '257');
INSERT INTO `area` VALUES ('449', '焦作市', '1', '257');
INSERT INTO `area` VALUES ('450', '濮阳市', '1', '257');
INSERT INTO `area` VALUES ('451', '许昌市', '1', '257');
INSERT INTO `area` VALUES ('452', '漯河市', '1', '257');
INSERT INTO `area` VALUES ('453', '三门峡市', '1', '257');
INSERT INTO `area` VALUES ('454', '南阳市', '1', '257');
INSERT INTO `area` VALUES ('455', '商丘市', '1', '257');
INSERT INTO `area` VALUES ('456', '信阳市', '1', '257');
INSERT INTO `area` VALUES ('457', '周口市', '1', '257');
INSERT INTO `area` VALUES ('458', '驻马店市', '1', '257');
INSERT INTO `area` VALUES ('459', '济源市', '1', '257');
INSERT INTO `area` VALUES ('460', '武汉市', '1', '258');
INSERT INTO `area` VALUES ('461', '黄石市', '1', '258');
INSERT INTO `area` VALUES ('462', '十堰市', '1', '258');
INSERT INTO `area` VALUES ('463', '荆州市', '1', '258');
INSERT INTO `area` VALUES ('464', '宜昌市', '1', '258');
INSERT INTO `area` VALUES ('465', '襄樊市', '1', '258');
INSERT INTO `area` VALUES ('466', '鄂州市', '1', '258');
INSERT INTO `area` VALUES ('467', '荆门市', '1', '258');
INSERT INTO `area` VALUES ('468', '孝感市', '1', '258');
INSERT INTO `area` VALUES ('469', '黄冈市', '1', '258');
INSERT INTO `area` VALUES ('470', '咸宁市', '1', '258');
INSERT INTO `area` VALUES ('471', '随州市', '1', '258');
INSERT INTO `area` VALUES ('472', '仙桃市', '1', '258');
INSERT INTO `area` VALUES ('473', '天门市', '1', '258');
INSERT INTO `area` VALUES ('474', '潜江市', '1', '258');
INSERT INTO `area` VALUES ('475', '神农架林区', '1', '258');
INSERT INTO `area` VALUES ('476', '恩施土家族苗族自治州', '1', '258');
INSERT INTO `area` VALUES ('477', '长沙市', '1', '259');
INSERT INTO `area` VALUES ('478', '株洲市', '1', '259');
INSERT INTO `area` VALUES ('479', '湘潭市', '1', '259');
INSERT INTO `area` VALUES ('480', '衡阳市', '1', '259');
INSERT INTO `area` VALUES ('481', '邵阳市', '1', '259');
INSERT INTO `area` VALUES ('482', '岳阳市', '1', '259');
INSERT INTO `area` VALUES ('483', '常德市', '1', '259');
INSERT INTO `area` VALUES ('484', '张家界市', '1', '259');
INSERT INTO `area` VALUES ('485', '益阳市', '1', '259');
INSERT INTO `area` VALUES ('486', '郴州市', '1', '259');
INSERT INTO `area` VALUES ('487', '永州市', '1', '259');
INSERT INTO `area` VALUES ('488', '怀化市', '1', '259');
INSERT INTO `area` VALUES ('489', '娄底市', '1', '259');
INSERT INTO `area` VALUES ('490', '湘西土家族苗族自治州', '1', '259');
INSERT INTO `area` VALUES ('491', '广州市', '4', '260');
INSERT INTO `area` VALUES ('492', '深圳市', '4', '260');
INSERT INTO `area` VALUES ('493', '珠海市', '4', '260');
INSERT INTO `area` VALUES ('494', '汕头市', '4', '260');
INSERT INTO `area` VALUES ('495', '韶关市', '4', '260');
INSERT INTO `area` VALUES ('496', '佛山市', '4', '260');
INSERT INTO `area` VALUES ('497', '江门市', '4', '260');
INSERT INTO `area` VALUES ('498', '湛江市', '4', '260');
INSERT INTO `area` VALUES ('499', '茂名市', '4', '260');
INSERT INTO `area` VALUES ('500', '肇庆市', '4', '260');
INSERT INTO `area` VALUES ('501', '惠州市', '4', '260');
INSERT INTO `area` VALUES ('502', '梅州市', '4', '260');
INSERT INTO `area` VALUES ('503', '汕尾市', '4', '260');
INSERT INTO `area` VALUES ('504', '河源市', '4', '260');
INSERT INTO `area` VALUES ('505', '阳江市', '4', '260');
INSERT INTO `area` VALUES ('506', '清远市', '4', '260');
INSERT INTO `area` VALUES ('507', '东莞市', '4', '260');
INSERT INTO `area` VALUES ('508', '中山市', '4', '260');
INSERT INTO `area` VALUES ('509', '潮州市', '4', '260');
INSERT INTO `area` VALUES ('510', '揭阳市', '4', '260');
INSERT INTO `area` VALUES ('511', '云浮市', '4', '260');
INSERT INTO `area` VALUES ('512', '兰州市', '5', '261');
INSERT INTO `area` VALUES ('513', '金昌市', '5', '261');
INSERT INTO `area` VALUES ('514', '白银市', '5', '261');
INSERT INTO `area` VALUES ('515', '天水市', '5', '261');
INSERT INTO `area` VALUES ('516', '嘉峪关市', '5', '261');
INSERT INTO `area` VALUES ('517', '武威市', '5', '261');
INSERT INTO `area` VALUES ('518', '张掖市', '5', '261');
INSERT INTO `area` VALUES ('519', '平凉市', '5', '261');
INSERT INTO `area` VALUES ('520', '酒泉市', '5', '261');
INSERT INTO `area` VALUES ('521', '庆阳市', '5', '261');
INSERT INTO `area` VALUES ('522', '定西市', '5', '261');
INSERT INTO `area` VALUES ('523', '陇南市', '5', '261');
INSERT INTO `area` VALUES ('524', '临夏回族自治州', '5', '261');
INSERT INTO `area` VALUES ('525', '甘南藏族自治州', '5', '261');
INSERT INTO `area` VALUES ('526', '成都市', '7', '262');
INSERT INTO `area` VALUES ('527', '自贡市', '7', '262');
INSERT INTO `area` VALUES ('528', '攀枝花市', '7', '262');
INSERT INTO `area` VALUES ('529', '泸州市', '7', '262');
INSERT INTO `area` VALUES ('530', '德阳市', '7', '262');
INSERT INTO `area` VALUES ('531', '绵阳市', '7', '262');
INSERT INTO `area` VALUES ('532', '广元市', '7', '262');
INSERT INTO `area` VALUES ('533', '遂宁市', '7', '262');
INSERT INTO `area` VALUES ('534', '内江市', '7', '262');
INSERT INTO `area` VALUES ('535', '乐山市', '7', '262');
INSERT INTO `area` VALUES ('536', '南充市', '7', '262');
INSERT INTO `area` VALUES ('537', '眉山市', '7', '262');
INSERT INTO `area` VALUES ('538', '宜宾市', '7', '262');
INSERT INTO `area` VALUES ('539', '广安市', '7', '262');
INSERT INTO `area` VALUES ('540', '达州市', '7', '262');
INSERT INTO `area` VALUES ('541', '雅安市', '7', '262');
INSERT INTO `area` VALUES ('542', '巴中市', '7', '262');
INSERT INTO `area` VALUES ('543', '资阳市', '7', '262');
INSERT INTO `area` VALUES ('544', '阿坝藏族羌族自治州', '7', '262');
INSERT INTO `area` VALUES ('545', '甘孜藏族自治州', '7', '262');
INSERT INTO `area` VALUES ('546', '凉山彝族自治州', '7', '262');
INSERT INTO `area` VALUES ('547', '贵阳市', '7', '263');
INSERT INTO `area` VALUES ('548', '六盘水市', '7', '263');
INSERT INTO `area` VALUES ('549', '遵义市', '7', '263');
INSERT INTO `area` VALUES ('550', '安顺市', '7', '263');
INSERT INTO `area` VALUES ('551', '铜仁地区', '7', '263');
INSERT INTO `area` VALUES ('552', '毕节地区', '7', '263');
INSERT INTO `area` VALUES ('553', '黔西南布依族苗族自治州', '7', '263');
INSERT INTO `area` VALUES ('554', '黔东南苗族侗族自治州', '7', '263');
INSERT INTO `area` VALUES ('555', '黔南布依族苗族自治州', '7', '263');
INSERT INTO `area` VALUES ('556', '海口市', '4', '264');
INSERT INTO `area` VALUES ('557', '三亚市', '4', '264');
INSERT INTO `area` VALUES ('558', '五指山市', '4', '264');
INSERT INTO `area` VALUES ('559', '琼海市', '4', '264');
INSERT INTO `area` VALUES ('560', '儋州市', '4', '264');
INSERT INTO `area` VALUES ('561', '文昌市', '4', '264');
INSERT INTO `area` VALUES ('562', '万宁市', '4', '264');
INSERT INTO `area` VALUES ('563', '东方市', '4', '264');
INSERT INTO `area` VALUES ('564', '澄迈县', '4', '264');
INSERT INTO `area` VALUES ('565', '定安县', '4', '264');
INSERT INTO `area` VALUES ('566', '屯昌县', '4', '264');
INSERT INTO `area` VALUES ('567', '临高县', '4', '264');
INSERT INTO `area` VALUES ('568', '白沙黎族自治县', '4', '264');
INSERT INTO `area` VALUES ('569', '昌江黎族自治县', '4', '264');
INSERT INTO `area` VALUES ('570', '乐东黎族自治县', '4', '264');
INSERT INTO `area` VALUES ('571', '陵水黎族自治县', '4', '264');
INSERT INTO `area` VALUES ('572', '保亭黎族苗族自治县', '4', '264');
INSERT INTO `area` VALUES ('573', '琼中黎族苗族自治县', '4', '264');
INSERT INTO `area` VALUES ('574', '昆明市', '7', '265');
INSERT INTO `area` VALUES ('575', '曲靖市', '7', '265');
INSERT INTO `area` VALUES ('576', '玉溪市', '7', '265');
INSERT INTO `area` VALUES ('577', '保山市', '7', '265');
INSERT INTO `area` VALUES ('578', '昭通市', '7', '265');
INSERT INTO `area` VALUES ('579', '丽江市', '7', '265');
INSERT INTO `area` VALUES ('580', '思茅市', '7', '265');
INSERT INTO `area` VALUES ('581', '临沧市', '7', '265');
INSERT INTO `area` VALUES ('582', '文山壮族苗族自治州', '7', '265');
INSERT INTO `area` VALUES ('583', '红河哈尼族彝族自治州', '7', '265');
INSERT INTO `area` VALUES ('584', '西双版纳傣族自治州', '7', '265');
INSERT INTO `area` VALUES ('585', '楚雄彝族自治州', '7', '265');
INSERT INTO `area` VALUES ('586', '大理白族自治州', '7', '265');
INSERT INTO `area` VALUES ('587', '德宏傣族景颇族自治州', '7', '265');
INSERT INTO `area` VALUES ('588', '怒江傈傈族自治州', '7', '265');
INSERT INTO `area` VALUES ('589', '迪庆藏族自治州', '7', '265');
INSERT INTO `area` VALUES ('590', '西宁市', '5', '266');
INSERT INTO `area` VALUES ('591', '海东地区', '5', '266');
INSERT INTO `area` VALUES ('592', '海北藏族自治州', '5', '266');
INSERT INTO `area` VALUES ('593', '黄南藏族自治州', '5', '266');
INSERT INTO `area` VALUES ('594', '海南藏族自治州', '5', '266');
INSERT INTO `area` VALUES ('595', '果洛藏族自治州', '5', '266');
INSERT INTO `area` VALUES ('596', '玉树藏族自治州', '5', '266');
INSERT INTO `area` VALUES ('597', '海西蒙古族藏族自治州', '5', '266');
INSERT INTO `area` VALUES ('598', '西安市', '5', '267');
INSERT INTO `area` VALUES ('599', '铜川市', '5', '267');
INSERT INTO `area` VALUES ('600', '宝鸡市', '5', '267');
INSERT INTO `area` VALUES ('601', '咸阳市', '5', '267');
INSERT INTO `area` VALUES ('602', '渭南市', '5', '267');
INSERT INTO `area` VALUES ('603', '延安市', '5', '267');
INSERT INTO `area` VALUES ('604', '汉中市', '5', '267');
INSERT INTO `area` VALUES ('605', '榆林市', '5', '267');
INSERT INTO `area` VALUES ('606', '安康市', '5', '267');
INSERT INTO `area` VALUES ('607', '商洛市', '5', '267');
INSERT INTO `area` VALUES ('608', '南宁市', '4', '268');
INSERT INTO `area` VALUES ('609', '柳州市', '4', '268');
INSERT INTO `area` VALUES ('610', '桂林市', '4', '268');
INSERT INTO `area` VALUES ('611', '梧州市', '4', '268');
INSERT INTO `area` VALUES ('612', '北海市', '4', '268');
INSERT INTO `area` VALUES ('613', '防城港市', '4', '268');
INSERT INTO `area` VALUES ('614', '钦州市', '4', '268');
INSERT INTO `area` VALUES ('615', '贵港市', '4', '268');
INSERT INTO `area` VALUES ('616', '玉林市', '4', '268');
INSERT INTO `area` VALUES ('617', '百色市', '4', '268');
INSERT INTO `area` VALUES ('618', '贺州市', '4', '268');
INSERT INTO `area` VALUES ('619', '河池市', '4', '268');
INSERT INTO `area` VALUES ('620', '来宾市', '4', '268');
INSERT INTO `area` VALUES ('621', '崇左市', '4', '268');
INSERT INTO `area` VALUES ('622', '拉萨市', '7', '269');
INSERT INTO `area` VALUES ('623', '那曲地区', '7', '269');
INSERT INTO `area` VALUES ('624', '昌都地区', '7', '269');
INSERT INTO `area` VALUES ('625', '山南地区', '7', '269');
INSERT INTO `area` VALUES ('626', '日喀则地区', '7', '269');
INSERT INTO `area` VALUES ('627', '阿里地区', '7', '269');
INSERT INTO `area` VALUES ('628', '林芝地区', '7', '269');
INSERT INTO `area` VALUES ('629', '银川市', '5', '270');
INSERT INTO `area` VALUES ('630', '石嘴山市', '5', '270');
INSERT INTO `area` VALUES ('631', '吴忠市', '5', '270');
INSERT INTO `area` VALUES ('632', '固原市', '5', '270');
INSERT INTO `area` VALUES ('633', '中卫市', '5', '270');
INSERT INTO `area` VALUES ('634', '乌鲁木齐市', '5', '271');
INSERT INTO `area` VALUES ('635', '克拉玛依市', '5', '271');
INSERT INTO `area` VALUES ('636', '石河子市', '5', '271');
INSERT INTO `area` VALUES ('637', '阿拉尔市', '5', '271');
INSERT INTO `area` VALUES ('638', '图木舒克市', '5', '271');
INSERT INTO `area` VALUES ('639', '五家渠市', '5', '271');
INSERT INTO `area` VALUES ('640', '吐鲁番市', '5', '271');
INSERT INTO `area` VALUES ('641', '阿克苏市', '5', '271');
INSERT INTO `area` VALUES ('642', '喀什市', '5', '271');
INSERT INTO `area` VALUES ('643', '哈密市', '5', '271');
INSERT INTO `area` VALUES ('644', '和田市', '5', '271');
INSERT INTO `area` VALUES ('645', '阿图什市', '5', '271');
INSERT INTO `area` VALUES ('646', '库尔勒市', '5', '271');
INSERT INTO `area` VALUES ('647', '昌吉市　', '5', '271');
INSERT INTO `area` VALUES ('648', '阜康市', '5', '271');
INSERT INTO `area` VALUES ('649', '米泉市', '5', '271');
INSERT INTO `area` VALUES ('650', '博乐市', '5', '271');
INSERT INTO `area` VALUES ('651', '伊宁市', '5', '271');
INSERT INTO `area` VALUES ('652', '奎屯市', '5', '271');
INSERT INTO `area` VALUES ('653', '塔城市', '5', '271');
INSERT INTO `area` VALUES ('654', '乌苏市', '5', '271');
INSERT INTO `area` VALUES ('655', '阿勒泰市', '5', '271');
INSERT INTO `area` VALUES ('656', '呼和浩特市', '2', '272');
INSERT INTO `area` VALUES ('657', '包头市', '2', '272');
INSERT INTO `area` VALUES ('658', '乌海市', '2', '272');
INSERT INTO `area` VALUES ('659', '赤峰市', '2', '272');
INSERT INTO `area` VALUES ('660', '通辽市', '2', '272');
INSERT INTO `area` VALUES ('661', '鄂尔多斯市', '2', '272');
INSERT INTO `area` VALUES ('662', '呼伦贝尔市', '2', '272');
INSERT INTO `area` VALUES ('663', '巴彦淖尔市', '2', '272');
INSERT INTO `area` VALUES ('664', '乌兰察布市', '2', '272');
INSERT INTO `area` VALUES ('665', '锡林郭勒盟', '2', '272');
INSERT INTO `area` VALUES ('666', '兴安盟', '2', '272');
INSERT INTO `area` VALUES ('667', '阿拉善盟', '2', '272');

-- ----------------------------
-- Table structure for associate
-- ----------------------------
DROP TABLE IF EXISTS `associate`;
CREATE TABLE `associate` (
  `associate_id` int(11) NOT NULL AUTO_INCREMENT,
  `associate_word` varchar(30) NOT NULL COMMENT '联想词',
  `reaction_word` varchar(50) DEFAULT NULL COMMENT '反应词',
  `school_name` varchar(40) NOT NULL COMMENT '学校名称',
  `job_id` int(11) NOT NULL COMMENT '学科id',
  `profession_id` int(11) NOT NULL COMMENT '专业id',
  `grade_id` int(11) NOT NULL COMMENT '年级id',
  `sex` tinyint(4) NOT NULL,
  `age` float NOT NULL DEFAULT '0' COMMENT '年龄',
  `nation_id` int(11) NOT NULL COMMENT '名族id',
  `origin_area_id` int(11) NOT NULL COMMENT '生源地，国家地区id',
  `present_area_id` int(11) NOT NULL COMMENT '现居地，国家地区id',
  `associate_pos` varchar(20) DEFAULT NULL COMMENT '联想词词性',
  `reaction_pos` varchar(20) DEFAULT NULL COMMENT '反应词词性',
  `psq_id` int(11) NOT NULL COMMENT '问卷id',
  `answer_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '答题时间',
  PRIMARY KEY (`associate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of associate
-- ----------------------------
INSERT INTO `associate` VALUES ('1', '被子', '褥子', '哈师大', '1', '7558', '1', '1', '19', '1', '251', '241', '名词', '名词', '1', '2019-08-21 12:24:39');
INSERT INTO `associate` VALUES ('2', '被子', '床单', '徐工', '2', '7188', '1', '0', '18', '2', '251', '242', '名词', '动词', '1', '2019-08-21 12:24:13');
INSERT INTO `associate` VALUES ('3', '笔', '橡皮', '复旦', '3', '7190', '8', '0', '18', '2', '256', '245', '名词', '名词', '2', '2019-08-21 12:24:05');
INSERT INTO `associate` VALUES ('4', '被子', '被套', '清华', '3', '7188', '7', '1', '23', '4', '245', '278', '名词', '名词', '1', '2019-08-21 12:23:55');
INSERT INTO `associate` VALUES ('5', '被子', '褥子', '徐工', '9', '7189', '22', '1', '26', '1', '598', '598', '名词', '名词', '1', '2019-08-21 12:23:57');
INSERT INTO `associate` VALUES ('6', '笔', '哥哥', '哈师大', '21', '7558', '21', '0', '22', '1', '597', '597', '名词', '名称', '1', '2019-08-20 12:26:13');
INSERT INTO `associate` VALUES ('7', '哥哥', '翎儿', '徐工', '19', '7559', '7', '0', '19', '2', '598', '598', '名词', '动词', '2', '2019-08-21 12:33:35');
INSERT INTO `associate` VALUES ('8', '哥哥', '成成', '复旦', '21', '7558', '21', '1', '22', '1', '588', '588', '名词', '名词', '2', '2019-08-21 12:28:50');
INSERT INTO `associate` VALUES ('9', '笔', '哥哥', '清华', '3', '7555', '7', '1', '23', '4', '251', '278', '名词', '名词', '1', '2019-08-12 12:31:39');
INSERT INTO `associate` VALUES ('10', '翎儿', '宝宝', '北大', '5', '7190', '1', '1', '5', '1', '588', '588', '动词', '动词', '1', '2019-08-20 12:33:10');
INSERT INTO `associate` VALUES ('11', '宝宝', '翎儿', '复旦', '19', '7559', '7', '0', '19', '1', '598', '598', '名称', '动词', '2', '2019-08-20 12:34:51');
INSERT INTO `associate` VALUES ('12', '哥哥', '成成', '哈师大', '3', '7188', '8', '0', '18', '2', '256', '256', '名词', '名词', '1', '2019-08-19 12:36:55');
INSERT INTO `associate` VALUES ('13', '哥哥', '笔', '清华', '21', '7558', '21', '0', '18', '1', '588', '588', '名词', '名词', '1', '2019-08-21 12:39:01');

-- ----------------------------
-- Table structure for associate_word
-- ----------------------------
DROP TABLE IF EXISTS `associate_word`;
CREATE TABLE `associate_word` (
  `associate_word_id` int(11) NOT NULL AUTO_INCREMENT,
  `associate_word` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `associate_pos_id` int(11) DEFAULT NULL COMMENT '联想词词性',
  PRIMARY KEY (`associate_word_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of associate_word
-- ----------------------------
INSERT INTO `associate_word` VALUES ('2', '非常好\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1');
INSERT INTO `associate_word` VALUES ('3', '美丽\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1');
INSERT INTO `associate_word` VALUES ('4', '丑陋\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1');
INSERT INTO `associate_word` VALUES ('5', '书\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2');
INSERT INTO `associate_word` VALUES ('6', '笔\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2');
INSERT INTO `associate_word` VALUES ('8', '被子\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2');
INSERT INTO `associate_word` VALUES ('9', '杯子\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2');
INSERT INTO `associate_word` VALUES ('10', '画\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2');
INSERT INTO `associate_word` VALUES ('11', '杨翎\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3');
INSERT INTO `associate_word` VALUES ('20', '哪吒\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2');
INSERT INTO `associate_word` VALUES ('26', '大家好\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1');
INSERT INTO `associate_word` VALUES ('27', '啊子', '1');
INSERT INTO `associate_word` VALUES ('28', '哥哥', '2');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(20) NOT NULL COMMENT '年级名称',
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', '一年级');
INSERT INTO `grade` VALUES ('2', '二年级');
INSERT INTO `grade` VALUES ('3', '三年级');
INSERT INTO `grade` VALUES ('4', '四年级');
INSERT INTO `grade` VALUES ('5', '五年级');
INSERT INTO `grade` VALUES ('6', '六年级');
INSERT INTO `grade` VALUES ('7', '初一');
INSERT INTO `grade` VALUES ('8', '初二');
INSERT INTO `grade` VALUES ('9', '初三');
INSERT INTO `grade` VALUES ('10', '初四');
INSERT INTO `grade` VALUES ('11', '高一');
INSERT INTO `grade` VALUES ('12', '高二');
INSERT INTO `grade` VALUES ('13', '高三');
INSERT INTO `grade` VALUES ('14', '高四');
INSERT INTO `grade` VALUES ('15', '大一');
INSERT INTO `grade` VALUES ('16', '大二');
INSERT INTO `grade` VALUES ('17', '大三');
INSERT INTO `grade` VALUES ('18', '大四');
INSERT INTO `grade` VALUES ('19', '研一');
INSERT INTO `grade` VALUES ('20', '研二');
INSERT INTO `grade` VALUES ('21', '研三');
INSERT INTO `grade` VALUES ('22', '博士');
INSERT INTO `grade` VALUES ('23', '其他年级');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `job_name` varchar(30) NOT NULL COMMENT '职业名',
  `parent_id` int(11) DEFAULT NULL COMMENT '父学科',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('1', '农、林、牧、渔业', null);
INSERT INTO `job` VALUES ('2', '采矿业', null);
INSERT INTO `job` VALUES ('3', '制造业', null);
INSERT INTO `job` VALUES ('4', '电力、热力、燃气及水生产和供应业', null);
INSERT INTO `job` VALUES ('5', '建筑业', null);
INSERT INTO `job` VALUES ('6', '批发和零售业', null);
INSERT INTO `job` VALUES ('7', '交通运输、仓储和邮政业', null);
INSERT INTO `job` VALUES ('8', '住宿和餐饮业', null);
INSERT INTO `job` VALUES ('9', '信息传输、软件和信息技术服务业', null);
INSERT INTO `job` VALUES ('10', '金融业', null);
INSERT INTO `job` VALUES ('11', '房产产业', null);
INSERT INTO `job` VALUES ('12', '租赁和商务服务业', null);
INSERT INTO `job` VALUES ('13', '科学研究和技术服务业', null);
INSERT INTO `job` VALUES ('14', '水利、环境和公共设施管理业', null);
INSERT INTO `job` VALUES ('15', '居民服务、修理和其他服务业', null);
INSERT INTO `job` VALUES ('16', '教育', null);
INSERT INTO `job` VALUES ('17', '卫生和社会工作', null);
INSERT INTO `job` VALUES ('18', '文化、体育和娱乐业', null);
INSERT INTO `job` VALUES ('19', '公共管理、社会保障和社会组织', null);
INSERT INTO `job` VALUES ('20', '国际组织', null);
INSERT INTO `job` VALUES ('21', '其他', null);

-- ----------------------------
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_name` varchar(30) NOT NULL COMMENT '语言名称',
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES ('1', '汉语');
INSERT INTO `language` VALUES ('2', '俄语');

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(30) DEFAULT NULL COMMENT '地区',
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES ('1', '华中');
INSERT INTO `location` VALUES ('2', '华北');
INSERT INTO `location` VALUES ('3', '华东');
INSERT INTO `location` VALUES ('4', '华南');
INSERT INTO `location` VALUES ('5', '西北');
INSERT INTO `location` VALUES ('6', '东北');
INSERT INTO `location` VALUES ('7', '西南');

-- ----------------------------
-- Table structure for nation
-- ----------------------------
DROP TABLE IF EXISTS `nation`;
CREATE TABLE `nation` (
  `nation_id` int(11) NOT NULL AUTO_INCREMENT,
  `nation_name` varchar(30) NOT NULL COMMENT '名族',
  PRIMARY KEY (`nation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nation
-- ----------------------------
INSERT INTO `nation` VALUES ('1', '汉族');
INSERT INTO `nation` VALUES ('2', '蒙古族');
INSERT INTO `nation` VALUES ('3', '回族');
INSERT INTO `nation` VALUES ('4', '藏族');
INSERT INTO `nation` VALUES ('5', '维吾尔族');
INSERT INTO `nation` VALUES ('6', '苗族');
INSERT INTO `nation` VALUES ('7', '彝族');
INSERT INTO `nation` VALUES ('8', '壮族');
INSERT INTO `nation` VALUES ('9', '布依族');
INSERT INTO `nation` VALUES ('10', '朝鲜族');
INSERT INTO `nation` VALUES ('11', '满族');
INSERT INTO `nation` VALUES ('12', '侗族');
INSERT INTO `nation` VALUES ('13', '瑶族');
INSERT INTO `nation` VALUES ('14', '白族');
INSERT INTO `nation` VALUES ('15', '土家族');
INSERT INTO `nation` VALUES ('16', '哈尼族');
INSERT INTO `nation` VALUES ('17', '哈萨克族');
INSERT INTO `nation` VALUES ('18', '傣族');
INSERT INTO `nation` VALUES ('19', '黎族');
INSERT INTO `nation` VALUES ('20', '傈僳族');
INSERT INTO `nation` VALUES ('21', '佤族');
INSERT INTO `nation` VALUES ('22', '畲族');
INSERT INTO `nation` VALUES ('23', '高山族');
INSERT INTO `nation` VALUES ('24', '拉祜族');
INSERT INTO `nation` VALUES ('25', '水族');
INSERT INTO `nation` VALUES ('26', '东乡族');
INSERT INTO `nation` VALUES ('27', '纳西族');
INSERT INTO `nation` VALUES ('28', '景颇族');
INSERT INTO `nation` VALUES ('29', '柯尔克孜族');
INSERT INTO `nation` VALUES ('30', '土族');
INSERT INTO `nation` VALUES ('31', '达斡尔族');
INSERT INTO `nation` VALUES ('32', '仫佬族');
INSERT INTO `nation` VALUES ('33', '羌族');
INSERT INTO `nation` VALUES ('34', '布朗族');
INSERT INTO `nation` VALUES ('35', '撒拉族');
INSERT INTO `nation` VALUES ('36', '毛难族');
INSERT INTO `nation` VALUES ('37', '仡佬族');
INSERT INTO `nation` VALUES ('38', '锡伯族');
INSERT INTO `nation` VALUES ('39', '阿昌族');
INSERT INTO `nation` VALUES ('40', '普米族');
INSERT INTO `nation` VALUES ('41', '塔吉克族');
INSERT INTO `nation` VALUES ('42', '怒族');
INSERT INTO `nation` VALUES ('43', '乌孜别克族');
INSERT INTO `nation` VALUES ('44', '俄罗斯族');
INSERT INTO `nation` VALUES ('45', '鄂温克族');
INSERT INTO `nation` VALUES ('46', '崩龙族');
INSERT INTO `nation` VALUES ('47', '保安族');
INSERT INTO `nation` VALUES ('48', '裕固族');
INSERT INTO `nation` VALUES ('49', '京族');
INSERT INTO `nation` VALUES ('50', '塔塔尔族');
INSERT INTO `nation` VALUES ('51', '独龙族');
INSERT INTO `nation` VALUES ('52', '鄂伦春族');
INSERT INTO `nation` VALUES ('53', '赫哲族');
INSERT INTO `nation` VALUES ('54', '门巴族');
INSERT INTO `nation` VALUES ('55', '珞巴族');
INSERT INTO `nation` VALUES ('56', '基诺族');
INSERT INTO `nation` VALUES ('57', '其他');

-- ----------------------------
-- Table structure for pos
-- ----------------------------
DROP TABLE IF EXISTS `pos`;
CREATE TABLE `pos` (
  `pos_id` int(11) NOT NULL COMMENT '词性表id',
  `pos_name` varchar(16) DEFAULT NULL COMMENT '词性名称',
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pos
-- ----------------------------
INSERT INTO `pos` VALUES ('1', '形容词');
INSERT INTO `pos` VALUES ('2', '名词');
INSERT INTO `pos` VALUES ('3', '动词');
INSERT INTO `pos` VALUES ('4', '主谓短语');

-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession` (
  `profession_id` int(11) NOT NULL AUTO_INCREMENT,
  `profession_no` char(12) DEFAULT NULL,
  `profession_name` varchar(50) DEFAULT NULL COMMENT '专业名',
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`profession_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10330 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES ('7184', '110', '数学', '0');
INSERT INTO `profession` VALUES ('7186', '110.14', '数理逻辑与数学基础', '7184');
INSERT INTO `profession` VALUES ('7194', '110.17', '数理', '7184');
INSERT INTO `profession` VALUES ('7204', '110.21', '代数学', '7184');
INSERT INTO `profession` VALUES ('7221', '110.24', '代数几何学', '7184');
INSERT INTO `profession` VALUES ('7222', '110.27', '几何学', '7184');
INSERT INTO `profession` VALUES ('7234', '110.31', '拓扑学', '7184');
INSERT INTO `profession` VALUES ('7247', '110.34', '数学分析', '7184');
INSERT INTO `profession` VALUES ('7252', '110.37', '非标准分析', '7184');
INSERT INTO `profession` VALUES ('7253', '110.41', '函数论', '7184');
INSERT INTO `profession` VALUES ('7262', '110.44', '常微分方程', '7184');
INSERT INTO `profession` VALUES ('7267', '110.47', '偏微分方程', '7184');
INSERT INTO `profession` VALUES ('7273', '110.51', '动力系统', '7184');
INSERT INTO `profession` VALUES ('7278', '110.54', '积分方程', '7184');
INSERT INTO `profession` VALUES ('7279', '110.57', '泛函分析', '7184');
INSERT INTO `profession` VALUES ('7291', '110.61', '计算数学', '7184');
INSERT INTO `profession` VALUES ('7301', '110.64', '概率论', '7184');
INSERT INTO `profession` VALUES ('7311', '110.67', '数理统计学', '7184');
INSERT INTO `profession` VALUES ('7324', '110.71', '应用统计数学', '7184');
INSERT INTO `profession` VALUES ('7330', '110.74', '运筹学', '7184');
INSERT INTO `profession` VALUES ('7347', '110.77', '组合数学', '7184');
INSERT INTO `profession` VALUES ('7348', '110.81', '离散数学', '7184');
INSERT INTO `profession` VALUES ('7349', '110.84', '模糊数学', '7184');
INSERT INTO `profession` VALUES ('7350', '110.87', '应用数学', '7184');
INSERT INTO `profession` VALUES ('7351', '110.99', '数学其他学科', '7184');
INSERT INTO `profession` VALUES ('7352', '120', '信息科学与系统科学', '0');
INSERT INTO `profession` VALUES ('7353', '120.10', '信息科学与系统科学基础学科', '7352');
INSERT INTO `profession` VALUES ('7358', '120.20', '系统学', '7352');
INSERT INTO `profession` VALUES ('7366', '120.30', '控制理论', '7352');
INSERT INTO `profession` VALUES ('7372', '120.40', '系统评估与可行性分析', '7352');
INSERT INTO `profession` VALUES ('7373', '120.50', '系统工程方法论', '7352');
INSERT INTO `profession` VALUES ('7376', '120.60', '系统工程', '7352');
INSERT INTO `profession` VALUES ('7377', '120.99', '信息科学与系统科学其他学科', '7352');
INSERT INTO `profession` VALUES ('7378', '130', '力学', '0');
INSERT INTO `profession` VALUES ('7379', '130.10', '基础力学', '7378');
INSERT INTO `profession` VALUES ('7389', '130.15', '固体力学', '7378');
INSERT INTO `profession` VALUES ('7405', '130.20', '振动与波', '7378');
INSERT INTO `profession` VALUES ('7414', '130.25', '流体力学', '7378');
INSERT INTO `profession` VALUES ('7435', '130.30', '流变学', '7378');
INSERT INTO `profession` VALUES ('7436', '130.35', '爆炸力学', '7378');
INSERT INTO `profession` VALUES ('7441', '130.40', '物理力学', '7378');
INSERT INTO `profession` VALUES ('7449', '130.45', '统计力学', '7378');
INSERT INTO `profession` VALUES ('7450', '130.50', '应用力学', '7378');
INSERT INTO `profession` VALUES ('7451', '130.99', '力学其他学科', '7378');
INSERT INTO `profession` VALUES ('7452', '140', '物理学', '0');
INSERT INTO `profession` VALUES ('7453', '140.10', '物理学史', '7452');
INSERT INTO `profession` VALUES ('7454', '140.15', '理论物理学', '7452');
INSERT INTO `profession` VALUES ('7462', '140.20', '声学', '7452');
INSERT INTO `profession` VALUES ('7470', '140.25', '热学', '7452');
INSERT INTO `profession` VALUES ('7475', '140.30', '光学', '7452');
INSERT INTO `profession` VALUES ('7488', '140.35', '电磁学', '7452');
INSERT INTO `profession` VALUES ('7494', '140.40', '无线电物理', '7452');
INSERT INTO `profession` VALUES ('7501', '140.45', '电子物理学', '7452');
INSERT INTO `profession` VALUES ('7506', '140.50', '凝聚态物理学', '7452');
INSERT INTO `profession` VALUES ('7523', '140.55', '等离子体物理学', '7452');
INSERT INTO `profession` VALUES ('7530', '140.60', '原子分子物理学', '7452');
INSERT INTO `profession` VALUES ('7537', '140.65', '原子核物理学', '7452');
INSERT INTO `profession` VALUES ('7548', '140.70', '高能物理学', '7452');
INSERT INTO `profession` VALUES ('7554', '140.75', '计算物理学', '7452');
INSERT INTO `profession` VALUES ('7555', '140.80', '应用物理学', '7452');
INSERT INTO `profession` VALUES ('7556', '140.99', '物理学其他学科', '7452');
INSERT INTO `profession` VALUES ('7557', '150', '化学', '0');
INSERT INTO `profession` VALUES ('7558', '150.10', '化学史', '7557');
INSERT INTO `profession` VALUES ('7559', '150.15', '无机化学', '7557');
INSERT INTO `profession` VALUES ('7569', '150.20', '有机化学', '7557');
INSERT INTO `profession` VALUES ('7578', '150.25', '分析化学', '7557');
INSERT INTO `profession` VALUES ('7591', '150.30', '物理化学', '7557');
INSERT INTO `profession` VALUES ('7605', '150.35', '化学物理学', '7557');
INSERT INTO `profession` VALUES ('7606', '150.40', '高分子物理', '7557');
INSERT INTO `profession` VALUES ('7607', '150.45', '高分子化学', '7557');
INSERT INTO `profession` VALUES ('7615', '150.50', '核化学', '7557');
INSERT INTO `profession` VALUES ('7624', '150.55', '应用化学', '7557');
INSERT INTO `profession` VALUES ('7625', '150.99', '化学其他学科', '7557');
INSERT INTO `profession` VALUES ('7626', '160', '天文学', '0');
INSERT INTO `profession` VALUES ('7627', '160.10', '天文学史', '7626');
INSERT INTO `profession` VALUES ('7628', '160.15', '天体力学', '7626');
INSERT INTO `profession` VALUES ('7636', '160.20', '天体物理学', '7626');
INSERT INTO `profession` VALUES ('7643', '160.25', '天体化学', '7626');
INSERT INTO `profession` VALUES ('7644', '160.30', '天体测量学', '7626');
INSERT INTO `profession` VALUES ('7653', '160.35', '射电天文学', '7626');
INSERT INTO `profession` VALUES ('7657', '160.40', '空间天文学', '7626');
INSERT INTO `profession` VALUES ('7664', '160.45', '天体演化学(各层次天体形成与演化入各学科)', '7626');
INSERT INTO `profession` VALUES ('7665', '160.50', '星系与宇宙学', '7626');
INSERT INTO `profession` VALUES ('7674', '160.55', '恒星与银河系', '7626');
INSERT INTO `profession` VALUES ('7681', '160.60', '太阳与太阳系', '7626');
INSERT INTO `profession` VALUES ('7689', '160.65', '天体生物学', '7626');
INSERT INTO `profession` VALUES ('7690', '160.99', '天文学其他学科', '7626');
INSERT INTO `profession` VALUES ('7692', '170', '地球科学', '0');
INSERT INTO `profession` VALUES ('7693', '170.10', '地球科学史', '7692');
INSERT INTO `profession` VALUES ('7694', '170.15', '大气科学', '7692');
INSERT INTO `profession` VALUES ('7704', '170.20', '固体地球物理学', '7692');
INSERT INTO `profession` VALUES ('7720', '170.25', '空间物理学', '7692');
INSERT INTO `profession` VALUES ('7727', '170.30', '地球化学', '7692');
INSERT INTO `profession` VALUES ('7739', '170.35', '大地测量学', '7692');
INSERT INTO `profession` VALUES ('7747', '170.40', '地图学', '7692');
INSERT INTO `profession` VALUES ('7748', '170.45', '地理学', '7692');
INSERT INTO `profession` VALUES ('7752', '170.50', '地质学', '7692');
INSERT INTO `profession` VALUES ('7777', '170.55', '水文学', '7692');
INSERT INTO `profession` VALUES ('7787', '170.60', '海洋科学', '7692');
INSERT INTO `profession` VALUES ('7798', '170.99', '地球科学其他学科', '7692');
INSERT INTO `profession` VALUES ('7799', '180', '生物学', '0');
INSERT INTO `profession` VALUES ('7800', '180.11', '生物数学(包括生物统计学等)', '7799');
INSERT INTO `profession` VALUES ('7801', '180.14', '生物物理学', '7799');
INSERT INTO `profession` VALUES ('7815', '180.17', '生物化学', '7799');
INSERT INTO `profession` VALUES ('7829', '180.21', '细胞生物学', '7799');
INSERT INTO `profession` VALUES ('7837', '180.24', '生理学', '7799');
INSERT INTO `profession` VALUES ('7857', '180.27', '发育生物学', '7799');
INSERT INTO `profession` VALUES ('7858', '180.31', '遗传学', '7799');
INSERT INTO `profession` VALUES ('7873', '180.34', '放射生物学', '7799');
INSERT INTO `profession` VALUES ('7881', '180.37', '分子生物学', '7799');
INSERT INTO `profession` VALUES ('7882', '180.41', '生物进化论', '7799');
INSERT INTO `profession` VALUES ('7883', '180.44', '生态学', '7799');
INSERT INTO `profession` VALUES ('7894', '180.47', '神经生物学', '7799');
INSERT INTO `profession` VALUES ('7905', '180.51', '植物学', '7799');
INSERT INTO `profession` VALUES ('7923', '180.54', '昆虫学', '7799');
INSERT INTO `profession` VALUES ('7936', '180.57', '动物学', '7799');
INSERT INTO `profession` VALUES ('7956', '180.61', '微生物学', '7799');
INSERT INTO `profession` VALUES ('7967', '180.64', '病毒学', '7799');
INSERT INTO `profession` VALUES ('7973', '180.67', '人类学', '7799');
INSERT INTO `profession` VALUES ('7984', '180.71', '生物工程(亦称生物技术)', '7799');
INSERT INTO `profession` VALUES ('7991', '180.74', '心理学', '7799');
INSERT INTO `profession` VALUES ('8003', '180.99', '生物学其他学科', '7799');
INSERT INTO `profession` VALUES ('8004', '210', '农学', '0');
INSERT INTO `profession` VALUES ('8005', '210.10', '农业史', '8004');
INSERT INTO `profession` VALUES ('8006', '210.20', '农业基础学科', '8004');
INSERT INTO `profession` VALUES ('8016', '210.30', '农艺学', '8004');
INSERT INTO `profession` VALUES ('8028', '210.40', '园艺学', '8004');
INSERT INTO `profession` VALUES ('8036', '210.50', '土壤学', '8004');
INSERT INTO `profession` VALUES ('8048', '210.60', '植物保护学', '8004');
INSERT INTO `profession` VALUES ('8064', '210.70', '农业工程', '8004');
INSERT INTO `profession` VALUES ('8075', '210.99', '农学其他学科', '8004');
INSERT INTO `profession` VALUES ('8076', '220', '林学', '0');
INSERT INTO `profession` VALUES ('8077', '220.10', '林业基础学科', '8076');
INSERT INTO `profession` VALUES ('8086', '220.15', '林木遗传育种学', '8076');
INSERT INTO `profession` VALUES ('8090', '220.20', '森林培育学(亦称造林学)', '8076');
INSERT INTO `profession` VALUES ('8091', '220.25', '森林经理学', '8076');
INSERT INTO `profession` VALUES ('8098', '220.30', '森林保护学', '8076');
INSERT INTO `profession` VALUES ('8103', '220.35', '野生动物保护与管理', '8076');
INSERT INTO `profession` VALUES ('8104', '220.40', '防护林学', '8076');
INSERT INTO `profession` VALUES ('8105', '220.45', '经济林学', '8076');
INSERT INTO `profession` VALUES ('8106', '220.50', '园林学', '8076');
INSERT INTO `profession` VALUES ('8111', '220.55', '林业工程', '8076');
INSERT INTO `profession` VALUES ('8120', '220.60', '森林统计学', '8076');
INSERT INTO `profession` VALUES ('8121', '220.65', '林业经济学', '8076');
INSERT INTO `profession` VALUES ('8122', '220.99', '林学其他学科', '8076');
INSERT INTO `profession` VALUES ('8123', '230', '畜牧、兽医科学', '0');
INSERT INTO `profession` VALUES ('8124', '230.10', '畜牧、兽医科学基础学科', '8123');
INSERT INTO `profession` VALUES ('8131', '230.20', '畜牧学', '8123');
INSERT INTO `profession` VALUES ('8148', '230.30', '兽医学', '8123');
INSERT INTO `profession` VALUES ('8162', '230.99', '畜牧、兽医科学其他学科', '8123');
INSERT INTO `profession` VALUES ('8163', '240', '水产学', '0');
INSERT INTO `profession` VALUES ('8164', '240.10', '水产学基础学科', '8163');
INSERT INTO `profession` VALUES ('8170', '240.15', '水产增殖学', '8163');
INSERT INTO `profession` VALUES ('8171', '240.20', '水产养殖学', '8163');
INSERT INTO `profession` VALUES ('8172', '240.25', '水产饲料学', '8163');
INSERT INTO `profession` VALUES ('8173', '240.30', '水产保护学', '8163');
INSERT INTO `profession` VALUES ('8174', '240.35', '捕捞学', '8163');
INSERT INTO `profession` VALUES ('8175', '240.40', '水产品贮藏与加工', '8163');
INSERT INTO `profession` VALUES ('8176', '240.45', '水产工程学', '8163');
INSERT INTO `profession` VALUES ('8177', '240.50', '水产资源学', '8163');
INSERT INTO `profession` VALUES ('8178', '240.55', '水产经济学', '8163');
INSERT INTO `profession` VALUES ('8179', '240.99', '水产学其他学科', '8163');
INSERT INTO `profession` VALUES ('8180', '310', '基础医学', '0');
INSERT INTO `profession` VALUES ('8181', '310.11', '医学生物化学', '8180');
INSERT INTO `profession` VALUES ('8182', '310.14', '人体解剖学', '8180');
INSERT INTO `profession` VALUES ('8186', '310.17', '医学细胞生物学', '8180');
INSERT INTO `profession` VALUES ('8187', '310.21', '人体生理学', '8180');
INSERT INTO `profession` VALUES ('8188', '310.24', '人体组织胚胎学', '8180');
INSERT INTO `profession` VALUES ('8189', '310.27', '医学遗传学', '8180');
INSERT INTO `profession` VALUES ('8190', '310.31', '放射医学', '8180');
INSERT INTO `profession` VALUES ('8191', '310.34', '人体免疫学', '8180');
INSERT INTO `profession` VALUES ('8192', '310.37', '医学寄生虫学', '8180');
INSERT INTO `profession` VALUES ('8198', '310.41', '医学微生物学(包括医学病毒学等)', '8180');
INSERT INTO `profession` VALUES ('8199', '310.44', '病理学', '8180');
INSERT INTO `profession` VALUES ('8209', '310.47', '药理学', '8180');
INSERT INTO `profession` VALUES ('8216', '310.51', '医学实验动物学', '8180');
INSERT INTO `profession` VALUES ('8217', '310.54', '医学心理学', '8180');
INSERT INTO `profession` VALUES ('8218', '310.57', '医学统计学', '8180');
INSERT INTO `profession` VALUES ('8219', '310.61', '生物医学工程学', '8180');
INSERT INTO `profession` VALUES ('8226', '310.99', '基础医学其他学科', '8180');
INSERT INTO `profession` VALUES ('8227', '320', '临床医学', '0');
INSERT INTO `profession` VALUES ('8228', '320.11', '临床诊断学', '8227');
INSERT INTO `profession` VALUES ('8236', '320.14', '保健医学', '8227');
INSERT INTO `profession` VALUES ('8241', '320.17', '理疗学', '8227');
INSERT INTO `profession` VALUES ('8242', '320.21', '麻醉学', '8227');
INSERT INTO `profession` VALUES ('8247', '320.24', '内科学', '8227');
INSERT INTO `profession` VALUES ('8259', '320.27', '外科学', '8227');
INSERT INTO `profession` VALUES ('8273', '320.31', '妇产科学', '8227');
INSERT INTO `profession` VALUES ('8281', '320.34', '儿科学', '8227');
INSERT INTO `profession` VALUES ('8282', '320.37', '眼科学', '8227');
INSERT INTO `profession` VALUES ('8283', '320.41', '耳鼻咽喉科学', '8227');
INSERT INTO `profession` VALUES ('8284', '320.44', '口腔医学', '8227');
INSERT INTO `profession` VALUES ('8295', '320.47', '皮肤病学', '8227');
INSERT INTO `profession` VALUES ('8296', '320.51', '性医学', '8227');
INSERT INTO `profession` VALUES ('8297', '320.54', '神经病学', '8227');
INSERT INTO `profession` VALUES ('8298', '320.57', '精神病学(包括精神卫生及行为医学等)', '8227');
INSERT INTO `profession` VALUES ('8299', '320.61', '急诊医学', '8227');
INSERT INTO `profession` VALUES ('8300', '320.64', '核医学', '8227');
INSERT INTO `profession` VALUES ('8301', '320.67', '肿瘤学', '8227');
INSERT INTO `profession` VALUES ('8310', '320.71', '护理学', '8227');
INSERT INTO `profession` VALUES ('8318', '320.99', '临床医学其他学科', '8227');
INSERT INTO `profession` VALUES ('8319', '330', '预防医学与卫生学', '0');
INSERT INTO `profession` VALUES ('8320', '330.11', '营养学', '8319');
INSERT INTO `profession` VALUES ('8321', '330.14', '毒理学', '8319');
INSERT INTO `profession` VALUES ('8322', '330.17', '消毒学', '8319');
INSERT INTO `profession` VALUES ('8323', '330.21', '流行病学', '8319');
INSERT INTO `profession` VALUES ('8324', '330.24', '传染病学', '8319');
INSERT INTO `profession` VALUES ('8325', '330.27', '媒介生物控制学', '8319');
INSERT INTO `profession` VALUES ('8326', '330.31', '环境医学', '8319');
INSERT INTO `profession` VALUES ('8327', '330.34', '职业病学', '8319');
INSERT INTO `profession` VALUES ('8328', '330.37', '地方病学', '8319');
INSERT INTO `profession` VALUES ('8329', '330.41', '社会医学', '8319');
INSERT INTO `profession` VALUES ('8330', '330.44', '卫生检验学', '8319');
INSERT INTO `profession` VALUES ('8331', '330.47', '食品卫生学', '8319');
INSERT INTO `profession` VALUES ('8332', '330.51', '儿少卫生学', '8319');
INSERT INTO `profession` VALUES ('8333', '330.54', '妇幼卫生学', '8319');
INSERT INTO `profession` VALUES ('8334', '330.57', '环境卫生学', '8319');
INSERT INTO `profession` VALUES ('8335', '330.61', '劳动卫生学', '8319');
INSERT INTO `profession` VALUES ('8336', '330.64', '放射卫生学', '8319');
INSERT INTO `profession` VALUES ('8337', '330.67', '卫生工程学', '8319');
INSERT INTO `profession` VALUES ('8338', '330.71', '卫生经济学', '8319');
INSERT INTO `profession` VALUES ('8339', '330.74', '优生学', '8319');
INSERT INTO `profession` VALUES ('8340', '330.77', '健康教育学', '8319');
INSERT INTO `profession` VALUES ('8341', '330.81', '卫生管理学', '8319');
INSERT INTO `profession` VALUES ('8342', '330.99', '预防医学与卫生学其他学科', '8319');
INSERT INTO `profession` VALUES ('8343', '340', '军事医学与特种医学', '0');
INSERT INTO `profession` VALUES ('8344', '340.10', '军事医学', '8343');
INSERT INTO `profession` VALUES ('8356', '340.20', '特种医学', '8343');
INSERT INTO `profession` VALUES ('8362', '340.99', '军事医学与特种医学其他学科', '8343');
INSERT INTO `profession` VALUES ('8363', '350', '药学', '0');
INSERT INTO `profession` VALUES ('8364', '350.10', '药物化学(包括天然药物化学等)', '8363');
INSERT INTO `profession` VALUES ('8365', '350.20', '生物药物学', '8363');
INSERT INTO `profession` VALUES ('8366', '350.25', '微生物药物学', '8363');
INSERT INTO `profession` VALUES ('8367', '350.30', '放射性药物学', '8363');
INSERT INTO `profession` VALUES ('8368', '350.35', '药剂学', '8363');
INSERT INTO `profession` VALUES ('8369', '350.40', '药效学', '8363');
INSERT INTO `profession` VALUES ('8370', '350.45', '药物管理学', '8363');
INSERT INTO `profession` VALUES ('8371', '350.50', '药物统计学', '8363');
INSERT INTO `profession` VALUES ('8372', '350.99', '药学其他学科', '8363');
INSERT INTO `profession` VALUES ('8373', '360', '中医学与中药学', '0');
INSERT INTO `profession` VALUES ('8374', '360.10', '中医学', '8373');
INSERT INTO `profession` VALUES ('8394', '360.20', '民族医学', '8373');
INSERT INTO `profession` VALUES ('8395', '360.30', '中西医结合医学', '8373');
INSERT INTO `profession` VALUES ('8396', '360.40', '中药学', '8373');
INSERT INTO `profession` VALUES ('8407', '360.99', '中医学与中药学其他学科', '8373');
INSERT INTO `profession` VALUES ('8408', '410', '工程与技术科学基础学科', '0');
INSERT INTO `profession` VALUES ('8409', '410.10', '工程数学', '8408');
INSERT INTO `profession` VALUES ('8410', '410.15', '工程控制论', '8408');
INSERT INTO `profession` VALUES ('8411', '410.20', '工程力学', '8408');
INSERT INTO `profession` VALUES ('8412', '410.25', '工程物理学', '8408');
INSERT INTO `profession` VALUES ('8413', '410.30', '工程地质学', '8408');
INSERT INTO `profession` VALUES ('8414', '410.35', '工程水文学', '8408');
INSERT INTO `profession` VALUES ('8415', '410.40', '工程仿生学', '8408');
INSERT INTO `profession` VALUES ('8416', '410.45', '工程心理学', '8408');
INSERT INTO `profession` VALUES ('8417', '410.50', '标准化科学技术(亦称标准化学)', '8408');
INSERT INTO `profession` VALUES ('8418', '410.55', '计量学', '8408');
INSERT INTO `profession` VALUES ('8419', '410.60', '工程图学', '8408');
INSERT INTO `profession` VALUES ('8420', '410.65', '勘查技术', '8408');
INSERT INTO `profession` VALUES ('8421', '410.70', '工程通用技术', '8408');
INSERT INTO `profession` VALUES ('8431', '410.75', '工业工程学(亦称工程系统工程)', '8408');
INSERT INTO `profession` VALUES ('8432', '410.99', '工程与技术科学基础学科其他学科', '8408');
INSERT INTO `profession` VALUES ('8433', '420', '测绘科学技术', '0');
INSERT INTO `profession` VALUES ('8434', '420.10', '大地测量技术', '8433');
INSERT INTO `profession` VALUES ('8439', '420.20', '摄影测量与遥感技术', '8433');
INSERT INTO `profession` VALUES ('8445', '420.30', '地图制图技术', '8433');
INSERT INTO `profession` VALUES ('8451', '420.40', '工程测量技术', '8433');
INSERT INTO `profession` VALUES ('8455', '420.50', '海洋测绘', '8433');
INSERT INTO `profession` VALUES ('8466', '420.60', '测绘仪器', '8433');
INSERT INTO `profession` VALUES ('8467', '420.99', '测绘科学技术其他学科', '8433');
INSERT INTO `profession` VALUES ('8468', '430', '材料科学', '0');
INSERT INTO `profession` VALUES ('8469', '430.10', '材料科学基础学科', '8468');
INSERT INTO `profession` VALUES ('8477', '430.15', '材料表面与界面(包括表面优化技术)', '8468');
INSERT INTO `profession` VALUES ('8478', '430.20', '材料失效与保护(包括材料腐蚀、磨损、老化、断裂及其控制等)', '8468');
INSERT INTO `profession` VALUES ('8479', '430.25', '材料检测与分析技术', '8468');
INSERT INTO `profession` VALUES ('8480', '430.30', '材料实验', '8468');
INSERT INTO `profession` VALUES ('8481', '430.35', '材料合成与加工工艺', '8468');
INSERT INTO `profession` VALUES ('8482', '430.40', '金属材料', '8468');
INSERT INTO `profession` VALUES ('8489', '430.45', '无机非金属材料', '8468');
INSERT INTO `profession` VALUES ('8496', '430.50', '有机高分子材料', '8468');
INSERT INTO `profession` VALUES ('8502', '430.55', '复合材料', '8468');
INSERT INTO `profession` VALUES ('8507', '430.99', '材料科学其他学科', '8468');
INSERT INTO `profession` VALUES ('8508', '440', '矿山工程技术', '0');
INSERT INTO `profession` VALUES ('8509', '440.10', '矿山地质学', '8508');
INSERT INTO `profession` VALUES ('8510', '440.15', '矿山测量', '8508');
INSERT INTO `profession` VALUES ('8511', '440.20', '矿山设计', '8508');
INSERT INTO `profession` VALUES ('8515', '440.25', '矿山地面工程', '8508');
INSERT INTO `profession` VALUES ('8516', '440.30', '井巷工程', '8508');
INSERT INTO `profession` VALUES ('8520', '440.35', '采矿工程', '8508');
INSERT INTO `profession` VALUES ('8526', '440.40', '选矿工程', '8508');
INSERT INTO `profession` VALUES ('8531', '440.45', '钻井工程', '8508');
INSERT INTO `profession` VALUES ('8532', '440.50', '油气田井开发工程', '8508');
INSERT INTO `profession` VALUES ('8533', '440.55', '石油、天然气储存与运输工程', '8508');
INSERT INTO `profession` VALUES ('8534', '440.60', '矿山机械工程', '8508');
INSERT INTO `profession` VALUES ('8539', '440.65', '矿山电气工程', '8508');
INSERT INTO `profession` VALUES ('8540', '440.70', '采矿环境工程', '8508');
INSERT INTO `profession` VALUES ('8541', '440.75', '矿山安全', '8508');
INSERT INTO `profession` VALUES ('8542', '440.80', '矿山综合利用工程', '8508');
INSERT INTO `profession` VALUES ('8543', '440.99', '矿山工程技术其他学科', '8508');
INSERT INTO `profession` VALUES ('8544', '450', '冶金工程技术', '0');
INSERT INTO `profession` VALUES ('8545', '450.10', '冶金物理化学', '8544');
INSERT INTO `profession` VALUES ('8546', '450.15', '冶金反应工程', '8544');
INSERT INTO `profession` VALUES ('8547', '450.20', '冶金原料与预处理', '8544');
INSERT INTO `profession` VALUES ('8548', '450.25', '冶金热能工程', '8544');
INSERT INTO `profession` VALUES ('8554', '450.30', '冶金技术', '8544');
INSERT INTO `profession` VALUES ('8565', '450.35', '钢铁冶金', '8544');
INSERT INTO `profession` VALUES ('8570', '450.40', '有色金属冶金', '8544');
INSERT INTO `profession` VALUES ('8571', '450.45', '轧制', '8544');
INSERT INTO `profession` VALUES ('8572', '450.50', '冶金机械及自动化', '8544');
INSERT INTO `profession` VALUES ('8573', '450.99', '冶金工程技术其他学科', '8544');
INSERT INTO `profession` VALUES ('8574', '460', '机械工程', '0');
INSERT INTO `profession` VALUES ('8575', '460.10', '机械史', '8574');
INSERT INTO `profession` VALUES ('8576', '460.15', '机械学', '8574');
INSERT INTO `profession` VALUES ('8582', '460.20', '机械设计', '8574');
INSERT INTO `profession` VALUES ('8588', '460.25', '机械制造工艺与设备', '8574');
INSERT INTO `profession` VALUES ('8598', '460.30', '刀具技术', '8574');
INSERT INTO `profession` VALUES ('8603', '460.35', '机床技术', '8574');
INSERT INTO `profession` VALUES ('8609', '460.40', '仪器仪表技术', '8574');
INSERT INTO `profession` VALUES ('8620', '460.45', '流体传动与控制(包括气动液压控制技术等)', '8574');
INSERT INTO `profession` VALUES ('8621', '460.50', '机械制造自动化', '8574');
INSERT INTO `profession` VALUES ('8627', '460.55', '专用机械工程', '8574');
INSERT INTO `profession` VALUES ('8630', '460.99', '机械工程其他学科', '8574');
INSERT INTO `profession` VALUES ('8631', '470', '动力与电气工程', '0');
INSERT INTO `profession` VALUES ('8632', '470.10', '工程热物理', '8631');
INSERT INTO `profession` VALUES ('8638', '470.20', '热工学', '8631');
INSERT INTO `profession` VALUES ('8644', '470.30', '动力机械工程', '8631');
INSERT INTO `profession` VALUES ('8650', '470.40', '电气工程', '8631');
INSERT INTO `profession` VALUES ('8669', '470.99', '动力与电气工程其他学科', '8631');
INSERT INTO `profession` VALUES ('8670', '480', '能源科学技术', '0');
INSERT INTO `profession` VALUES ('8671', '480.10', '能源化学', '8670');
INSERT INTO `profession` VALUES ('8672', '480.20', '能源地理学', '8670');
INSERT INTO `profession` VALUES ('8673', '480.30', '能源计算与测量', '8670');
INSERT INTO `profession` VALUES ('8674', '480.40', '储能技术', '8670');
INSERT INTO `profession` VALUES ('8675', '480.50', '节能技术', '8670');
INSERT INTO `profession` VALUES ('8676', '480.60', '一次能源', '8670');
INSERT INTO `profession` VALUES ('8686', '480.70', '二次能源', '8670');
INSERT INTO `profession` VALUES ('8693', '480.80', '能源系统工程', '8670');
INSERT INTO `profession` VALUES ('8694', '480.99', '能源科学技术其他学科', '8670');
INSERT INTO `profession` VALUES ('8695', '490', '核科学技术', '0');
INSERT INTO `profession` VALUES ('8696', '490.10', '辐射物理与技术', '8695');
INSERT INTO `profession` VALUES ('8697', '490.15', '核探测技术与核电子学', '8695');
INSERT INTO `profession` VALUES ('8698', '490.20', '放射性计量学', '8695');
INSERT INTO `profession` VALUES ('8699', '490.25', '核仪器、仪表', '8695');
INSERT INTO `profession` VALUES ('8700', '490.30', '核材料与工艺技术', '8695');
INSERT INTO `profession` VALUES ('8703', '490.35', '粒子加速器', '8695');
INSERT INTO `profession` VALUES ('8707', '490.40', '裂变堆工程技术', '8695');
INSERT INTO `profession` VALUES ('8715', '490.45', '核聚变工程技术', '8695');
INSERT INTO `profession` VALUES ('8721', '490.50', '核动力工程技术', '8695');
INSERT INTO `profession` VALUES ('8727', '490.55', '同位素技术', '8695');
INSERT INTO `profession` VALUES ('8732', '490.60', '核爆炸工程', '8695');
INSERT INTO `profession` VALUES ('8733', '490.65', '核安全(包括核电站安全)', '8695');
INSERT INTO `profession` VALUES ('8734', '490.70', '乏燃料后处理技术', '8695');
INSERT INTO `profession` VALUES ('8735', '490.75', '辐射防护技术', '8695');
INSERT INTO `profession` VALUES ('8736', '490.80', '核设施退役技术', '8695');
INSERT INTO `profession` VALUES ('8737', '490.85', '放射性三废处理、处置技术', '8695');
INSERT INTO `profession` VALUES ('8738', '490.99', '核科学技术其他学科', '8695');
INSERT INTO `profession` VALUES ('8739', '510', '电子、通信与自动控制技术', '0');
INSERT INTO `profession` VALUES ('8740', '510.10', '电子技术', '8739');
INSERT INTO `profession` VALUES ('8753', '510.20', '光电子学与激光技术', '8739');
INSERT INTO `profession` VALUES ('8754', '510.30', '半导体技术', '8739');
INSERT INTO `profession` VALUES ('8761', '510.40', '信息处理技术', '8739');
INSERT INTO `profession` VALUES ('8768', '510.50', '通信技术', '8739');
INSERT INTO `profession` VALUES ('8779', '510.60', '广播与电视工程技术', '8739');
INSERT INTO `profession` VALUES ('8780', '510.70', '雷达工程', '8739');
INSERT INTO `profession` VALUES ('8781', '510.80', '自动控制技术', '8739');
INSERT INTO `profession` VALUES ('8789', '510.99', '电子、通信与自动控制技术其他学科', '8739');
INSERT INTO `profession` VALUES ('8790', '520', '计算机科学技术', '0');
INSERT INTO `profession` VALUES ('8791', '520.10', '计算机科学技术基础学科', '8790');
INSERT INTO `profession` VALUES ('8799', '520.20', '人工智能', '8790');
INSERT INTO `profession` VALUES ('8808', '520.30', '计算机系统结构', '8790');
INSERT INTO `profession` VALUES ('8815', '520.40', '计算机软件', '8790');
INSERT INTO `profession` VALUES ('8824', '520.50', '计算机工程', '8790');
INSERT INTO `profession` VALUES ('8832', '520.60', '计算机应用', '8790');
INSERT INTO `profession` VALUES ('8842', '520.99', '计算机科学技术其他学科', '8790');
INSERT INTO `profession` VALUES ('8843', null, '', null);
INSERT INTO `profession` VALUES ('8844', '530', '化学工程', '0');
INSERT INTO `profession` VALUES ('8845', '530.11', '化学工程基础学科', '8844');
INSERT INTO `profession` VALUES ('8851', '530.14', '化工测量技术与仪器仪表', '8844');
INSERT INTO `profession` VALUES ('8852', '530.17', '化工传递过程', '8844');
INSERT INTO `profession` VALUES ('8853', '530.21', '化学分离工程', '8844');
INSERT INTO `profession` VALUES ('8862', '530.24', '化学反应工程', '8844');
INSERT INTO `profession` VALUES ('8871', '530.27', '化工系统工程', '8844');
INSERT INTO `profession` VALUES ('8876', '530.31', '化工机械与设备', '8844');
INSERT INTO `profession` VALUES ('8877', '530.34', '无机化学工程', '8844');
INSERT INTO `profession` VALUES ('8884', '530.37', '有机化学工程', '8844');
INSERT INTO `profession` VALUES ('8885', '530.41', '电化学工程', '8844');
INSERT INTO `profession` VALUES ('8891', '530.44', '高聚物工程', '8844');
INSERT INTO `profession` VALUES ('8892', '530.47', '煤化学工程', '8844');
INSERT INTO `profession` VALUES ('8893', '530.51', '石油化学工程', '8844');
INSERT INTO `profession` VALUES ('8894', '530.54', '精细化学工程', '8844');
INSERT INTO `profession` VALUES ('8902', '530.57', '造纸技术', '8844');
INSERT INTO `profession` VALUES ('8903', '530.61', '毛皮与制革工程', '8844');
INSERT INTO `profession` VALUES ('8904', '530.64', '制药工程', '8844');
INSERT INTO `profession` VALUES ('8909', '530.67', '生物化学工程', '8844');
INSERT INTO `profession` VALUES ('8910', '530.99', '化学工程其他学科', '8844');
INSERT INTO `profession` VALUES ('8911', '540', '纺织科学技术', '0');
INSERT INTO `profession` VALUES ('8912', '540.10', '纺织科学技术基础学科', '8911');
INSERT INTO `profession` VALUES ('8916', '540.20', '纺织材料', '8911');
INSERT INTO `profession` VALUES ('8917', '540.30', '纤维制造技术', '8911');
INSERT INTO `profession` VALUES ('8918', '540.40', '纺织技术', '8911');
INSERT INTO `profession` VALUES ('8929', '540.50', '染整技术', '8911');
INSERT INTO `profession` VALUES ('8935', '540.60', '服装技术', '8911');
INSERT INTO `profession` VALUES ('8939', '540.70', '纺织机械与设备', '8911');
INSERT INTO `profession` VALUES ('8943', '540.99', '纺织科学技术其他学科', '8911');
INSERT INTO `profession` VALUES ('8944', '550', '食品科学技术', '0');
INSERT INTO `profession` VALUES ('8945', '550.10', '食品科学技术基础学科', '8944');
INSERT INTO `profession` VALUES ('8950', '550.20', '食品加工技术', '8944');
INSERT INTO `profession` VALUES ('8964', '550.30', '食品包装与储藏', '8944');
INSERT INTO `profession` VALUES ('8965', '550.40', '食品机械', '8944');
INSERT INTO `profession` VALUES ('8966', '550.50', '食品加工的副产品加工与利用', '8944');
INSERT INTO `profession` VALUES ('8967', '550.60', '食品工业企业管理学', '8944');
INSERT INTO `profession` VALUES ('8968', '550.99', '食品科学技术其他学科', '8944');
INSERT INTO `profession` VALUES ('8969', '560', '土木建筑工程', '0');
INSERT INTO `profession` VALUES ('8970', '560.10', '建筑史', '8969');
INSERT INTO `profession` VALUES ('8971', '560.15', '土木建筑工程基础学科', '8969');
INSERT INTO `profession` VALUES ('8976', '560.20', '土木建筑工程测量', '8969');
INSERT INTO `profession` VALUES ('8977', '560.25', '建筑材料', '8969');
INSERT INTO `profession` VALUES ('8983', '560.30', '工程结构', '8969');
INSERT INTO `profession` VALUES ('8990', '560.35', '土木建筑结构', '8969');
INSERT INTO `profession` VALUES ('8999', '560.40', '土木建筑工程设计', '8969');
INSERT INTO `profession` VALUES ('9007', '560.45', '土木建筑工程施工', '8969');
INSERT INTO `profession` VALUES ('9015', '560.50', '土木工程机械与设备', '8969');
INSERT INTO `profession` VALUES ('9024', '560.55', '市政工程', '8969');
INSERT INTO `profession` VALUES ('9031', '560.60', '建筑经济学', '8969');
INSERT INTO `profession` VALUES ('9032', '560.99', '土木建筑工程其他学科', '8969');
INSERT INTO `profession` VALUES ('9033', '570', '水利工程', '0');
INSERT INTO `profession` VALUES ('9034', '570.10', '水利工程基础学科', '9033');
INSERT INTO `profession` VALUES ('9038', '570.15', '水利工程测量', '9033');
INSERT INTO `profession` VALUES ('9039', '570.20', '水工材料', '9033');
INSERT INTO `profession` VALUES ('9040', '570.25', '水工结构(亦称水工建筑物)', '9033');
INSERT INTO `profession` VALUES ('9044', '570.30', '水力机械', '9033');
INSERT INTO `profession` VALUES ('9045', '570.35', '水利工程施工', '9033');
INSERT INTO `profession` VALUES ('9049', '570.40', '水处理(不包括废水处理)', '9033');
INSERT INTO `profession` VALUES ('9052', '570.45', '河流泥沙工程学', '9033');
INSERT INTO `profession` VALUES ('9056', '570.50', '海洋工程', '9033');
INSERT INTO `profession` VALUES ('9062', '570.55', '环境水利', '9033');
INSERT INTO `profession` VALUES ('9067', '570.60', '水利管理', '9033');
INSERT INTO `profession` VALUES ('9072', '570.65', '防洪工程', '9033');
INSERT INTO `profession` VALUES ('9077', '570.70', '水利经济学', '9033');
INSERT INTO `profession` VALUES ('9078', '570.99', '水利工程其他学科', '9033');
INSERT INTO `profession` VALUES ('9079', '580', '交通运输工程', '0');
INSERT INTO `profession` VALUES ('9080', '580.10', '道路工程', '9079');
INSERT INTO `profession` VALUES ('9085', '580.20', '公路运输', '9079');
INSERT INTO `profession` VALUES ('9090', '580.30', '铁路运输', '9079');
INSERT INTO `profession` VALUES ('9096', '580.40', '水路运输', '9079');
INSERT INTO `profession` VALUES ('9104', '580.50', '船舶、舰船工程', '9079');
INSERT INTO `profession` VALUES ('9105', '580.60', '航空运输', '9079');
INSERT INTO `profession` VALUES ('9109', '580.70', '交通运输系统工程', '9079');
INSERT INTO `profession` VALUES ('9110', '580.80', '交通运输安全工程', '9079');
INSERT INTO `profession` VALUES ('9111', '580.99', '交通运输工程其他学科', '9079');
INSERT INTO `profession` VALUES ('9112', '590', '航空、航天科学技术', '0');
INSERT INTO `profession` VALUES ('9113', '590.10', '航空、航天科学技术基础学科', '9112');
INSERT INTO `profession` VALUES ('9119', '590.15', '航空器结构与设计', '9112');
INSERT INTO `profession` VALUES ('9124', '590.20', '航天器结构与设计', '9112');
INSERT INTO `profession` VALUES ('9132', '590.25', '航空、航天推进系统', '9112');
INSERT INTO `profession` VALUES ('9133', '590.30', '飞行器仪表、设备', '9112');
INSERT INTO `profession` VALUES ('9134', '590.35', '飞行器控制、导航技术', '9112');
INSERT INTO `profession` VALUES ('9135', '590.40', '航空、航天材料', '9112');
INSERT INTO `profession` VALUES ('9141', '590.45', '飞行器制造技术', '9112');
INSERT INTO `profession` VALUES ('9145', '590.50', '飞行器试验技术', '9112');
INSERT INTO `profession` VALUES ('9151', '590.55', '飞行器发射、飞行技术', '9112');
INSERT INTO `profession` VALUES ('9155', '590.60', '航天地面设施、技术保障', '9112');
INSERT INTO `profession` VALUES ('9159', '590.65', '航空、航天系统工程', '9112');
INSERT INTO `profession` VALUES ('9164', '590.99', '航空、航天科学技术其他学科', '9112');
INSERT INTO `profession` VALUES ('9165', '610', '环境科学技术', '0');
INSERT INTO `profession` VALUES ('9166', '610.10', '环境科学技术基础学科', '9165');
INSERT INTO `profession` VALUES ('9177', '610.20', '环境学', '9165');
INSERT INTO `profession` VALUES ('9183', '610.30', '环境工程学', '9165');
INSERT INTO `profession` VALUES ('9194', '610.99', '环境科学技术其他学科', '9165');
INSERT INTO `profession` VALUES ('9195', '620', '安全科学技术', '0');
INSERT INTO `profession` VALUES ('9196', '620.10', '安全科学技术基础学科', '9195');
INSERT INTO `profession` VALUES ('9202', '620.20', '安全学', '9195');
INSERT INTO `profession` VALUES ('9211', '620.30', '安全工程', '9195');
INSERT INTO `profession` VALUES ('9218', '620.40', '职业卫生工程', '9195');
INSERT INTO `profession` VALUES ('9224', '620.50', '安全管理工程', '9195');
INSERT INTO `profession` VALUES ('9230', '620.99', '安全科学技术其他学科', '9195');
INSERT INTO `profession` VALUES ('9231', '630', '管理学', '0');
INSERT INTO `profession` VALUES ('9232', '630.10', '管理思想史', '9231');
INSERT INTO `profession` VALUES ('9233', '630.15', '管理理论', '9231');
INSERT INTO `profession` VALUES ('9240', '630.20', '管理心理学', '9231');
INSERT INTO `profession` VALUES ('9241', '630.25', '管理计量学', '9231');
INSERT INTO `profession` VALUES ('9242', '630.30', '部门经济管理', '9231');
INSERT INTO `profession` VALUES ('9243', '630.35', '科学学与科技管理', '9231');
INSERT INTO `profession` VALUES ('9250', '630.40', '企业管理', '9231');
INSERT INTO `profession` VALUES ('9262', '630.45', '行政管理', '9231');
INSERT INTO `profession` VALUES ('9263', '630.50', '管理工程', '9231');
INSERT INTO `profession` VALUES ('9276', '630.55', '人力资源开发与管理', '9231');
INSERT INTO `profession` VALUES ('9280', '630.60', '未来学', '9231');
INSERT INTO `profession` VALUES ('9286', '630.99', '管理学其他学科', '9231');
INSERT INTO `profession` VALUES ('9287', '710', '马克思主义', '0');
INSERT INTO `profession` VALUES ('9288', '710.10', '马、恩、列、斯思想研究', '9287');
INSERT INTO `profession` VALUES ('9289', '710.20', '毛泽东思想研究', '9287');
INSERT INTO `profession` VALUES ('9290', '710.30', '马克思主义思想史', '9287');
INSERT INTO `profession` VALUES ('9291', '710.40', '科学社会主义', '9287');
INSERT INTO `profession` VALUES ('9292', '710.50', '社会主义运动史(包括国际共产主义运动)', '9287');
INSERT INTO `profession` VALUES ('9293', '710.60', '国外马克思主义研究', '9287');
INSERT INTO `profession` VALUES ('9294', '710.99', '马克思主义其他学科', '9287');
INSERT INTO `profession` VALUES ('9295', '720', '哲学', '0');
INSERT INTO `profession` VALUES ('9296', '720.10', '马克思主义哲学', '9295');
INSERT INTO `profession` VALUES ('9301', '720.15', '自然辩证法(亦称科学技术哲学)', '9295');
INSERT INTO `profession` VALUES ('9307', '720.20', '中国哲学史', '9295');
INSERT INTO `profession` VALUES ('9317', '720.25', '东方哲学史', '9295');
INSERT INTO `profession` VALUES ('9322', '720.30', '西方哲学史', '9295');
INSERT INTO `profession` VALUES ('9330', '720.35', '现代外国哲学', '9295');
INSERT INTO `profession` VALUES ('9338', '720.40', '逻辑学', '9295');
INSERT INTO `profession` VALUES ('9346', '720.45', '伦理学', '9295');
INSERT INTO `profession` VALUES ('9360', '720.50', '美学', '9295');
INSERT INTO `profession` VALUES ('9370', '720.99', '哲学其他学科', '9295');
INSERT INTO `profession` VALUES ('9371', '730', '宗教学', '0');
INSERT INTO `profession` VALUES ('9372', '730.11', '宗教学理论', '9371');
INSERT INTO `profession` VALUES ('9384', '730.14', '无神论', '9371');
INSERT INTO `profession` VALUES ('9389', '730.17', '原始宗教', '9371');
INSERT INTO `profession` VALUES ('9390', '730.21', '古代宗教', '9371');
INSERT INTO `profession` VALUES ('9394', '730.24', '佛教', '9371');
INSERT INTO `profession` VALUES ('9401', '730.27', '基督教', '9371');
INSERT INTO `profession` VALUES ('9408', '730.31', '伊斯兰教', '9371');
INSERT INTO `profession` VALUES ('9417', '730.34', '道教', '9371');
INSERT INTO `profession` VALUES ('9423', '730.37', '印度教', '9371');
INSERT INTO `profession` VALUES ('9424', '730.41', '犹太教', '9371');
INSERT INTO `profession` VALUES ('9425', '730.44', '袄教', '9371');
INSERT INTO `profession` VALUES ('9426', '730.47', '摩尼教', '9371');
INSERT INTO `profession` VALUES ('9427', '730.51', '锡克教', '9371');
INSERT INTO `profession` VALUES ('9428', '730.54', '耆那教', '9371');
INSERT INTO `profession` VALUES ('9429', '730.57', '神道教', '9371');
INSERT INTO `profession` VALUES ('9430', '730.61', '中国民间宗教与民间信仰', '9371');
INSERT INTO `profession` VALUES ('9431', '730.64', '中国少数民族宗教', '9371');
INSERT INTO `profession` VALUES ('9432', '730.67', '当代宗教', '9371');
INSERT INTO `profession` VALUES ('9437', '730.99', '宗教学其他学科', '9371');
INSERT INTO `profession` VALUES ('9438', '740', '语言学', '0');
INSERT INTO `profession` VALUES ('9439', '740.10', '普通语言学', '9438');
INSERT INTO `profession` VALUES ('9450', '740.15', '比较语言学', '9438');
INSERT INTO `profession` VALUES ('9455', '740.20', '语言地理学', '9438');
INSERT INTO `profession` VALUES ('9456', '740.25', '社会语言学', '9438');
INSERT INTO `profession` VALUES ('9457', '740.30', '心理语言学', '9438');
INSERT INTO `profession` VALUES ('9458', '740.35', '应用语言学', '9438');
INSERT INTO `profession` VALUES ('9466', '740.40', '汉语研究', '9438');
INSERT INTO `profession` VALUES ('9478', '740.45', '中国少数民族语言文字', '9438');
INSERT INTO `profession` VALUES ('9493', '740.50', '外国语言', '9438');
INSERT INTO `profession` VALUES ('9521', '740.99', '语言学其他学科', '9438');
INSERT INTO `profession` VALUES ('9522', '750', '文学', '0');
INSERT INTO `profession` VALUES ('9523', '750.11', '文学理论', '9522');
INSERT INTO `profession` VALUES ('9524', '750.14', '文艺美学', '9522');
INSERT INTO `profession` VALUES ('9525', '750.17', '文学批评', '9522');
INSERT INTO `profession` VALUES ('9526', '750.21', '比较文学', '9522');
INSERT INTO `profession` VALUES ('9527', '750.24', '中国古代文学史', '9522');
INSERT INTO `profession` VALUES ('9538', '750.27', '中国近代文学史', '9522');
INSERT INTO `profession` VALUES ('9539', '750.31', '中国现代文学史(包括当代文学史)', '9522');
INSERT INTO `profession` VALUES ('9540', '750.34', '中国各体文学', '9522');
INSERT INTO `profession` VALUES ('9546', '750.37', '中国民间文学', '9522');
INSERT INTO `profession` VALUES ('9547', '750.41', '中国儿童文学', '9522');
INSERT INTO `profession` VALUES ('9548', '750.44', '中国少数民族文学', '9522');
INSERT INTO `profession` VALUES ('9555', '750.47', '世界文学史', '9522');
INSERT INTO `profession` VALUES ('9561', '750.51', '东方文学', '9522');
INSERT INTO `profession` VALUES ('9565', '750.54', '俄国文学(包括原苏联文学)', '9522');
INSERT INTO `profession` VALUES ('9566', '750.57', '英国文学', '9522');
INSERT INTO `profession` VALUES ('9567', '750.61', '法国文学', '9522');
INSERT INTO `profession` VALUES ('9568', '750.64', '德国文学', '9522');
INSERT INTO `profession` VALUES ('9569', '750.67', '意大利文学', '9522');
INSERT INTO `profession` VALUES ('9570', '750.71', '美国文学', '9522');
INSERT INTO `profession` VALUES ('9571', '750.74', '北欧文学', '9522');
INSERT INTO `profession` VALUES ('9572', '750.77', '东欧文学', '9522');
INSERT INTO `profession` VALUES ('9573', '750.81', '拉美文学', '9522');
INSERT INTO `profession` VALUES ('9574', '750.84', '非洲文学', '9522');
INSERT INTO `profession` VALUES ('9575', '750.87', '大洋洲文学', '9522');
INSERT INTO `profession` VALUES ('9576', '750.99', '文学其他学科', '9522');
INSERT INTO `profession` VALUES ('9577', '760', '艺术学', '0');
INSERT INTO `profession` VALUES ('9578', '760.10', '艺术心理学', '9577');
INSERT INTO `profession` VALUES ('9579', '760.15', '音乐', '9577');
INSERT INTO `profession` VALUES ('9584', '760.20', '戏剧', '9577');
INSERT INTO `profession` VALUES ('9588', '760.25', '戏曲', '9577');
INSERT INTO `profession` VALUES ('9593', '760.30', '舞蹈', '9577');
INSERT INTO `profession` VALUES ('9599', '760.35', '电影', '9577');
INSERT INTO `profession` VALUES ('9604', '760.40', '广播电视文艺', '9577');
INSERT INTO `profession` VALUES ('9605', '760.45', '美术', '9577');
INSERT INTO `profession` VALUES ('9611', '760.50', '工艺美术', '9577');
INSERT INTO `profession` VALUES ('9616', '760.55', '书法', '9577');
INSERT INTO `profession` VALUES ('9620', '760.60', '摄影', '9577');
INSERT INTO `profession` VALUES ('9624', '760.99', '艺术学其他学科', '9577');
INSERT INTO `profession` VALUES ('9625', '770', '历史学', '0');
INSERT INTO `profession` VALUES ('9626', '770.10', '史学史', '9625');
INSERT INTO `profession` VALUES ('9627', '770.15', '史学理论', '9625');
INSERT INTO `profession` VALUES ('9628', '770.20', '历史文献学', '9625');
INSERT INTO `profession` VALUES ('9629', '770.25', '中国通史', '9625');
INSERT INTO `profession` VALUES ('9630', '770.30', '中国古代史', '9625');
INSERT INTO `profession` VALUES ('9643', '770.35', '中国近代史、现代史', '9625');
INSERT INTO `profession` VALUES ('9658', '770.40', '世界通史', '9625');
INSERT INTO `profession` VALUES ('9665', '770.45', '亚洲史', '9625');
INSERT INTO `profession` VALUES ('9673', '770.50', '非洲史', '9625');
INSERT INTO `profession` VALUES ('9679', '770.55', '美洲史', '9625');
INSERT INTO `profession` VALUES ('9685', '770.60', '欧洲史', '9625');
INSERT INTO `profession` VALUES ('9695', '770.65', '澳洲、大洋洲史', '9625');
INSERT INTO `profession` VALUES ('9696', '770.70', '专门史', '9625');
INSERT INTO `profession` VALUES ('9709', '770.99', '历史学其他学科', '9625');
INSERT INTO `profession` VALUES ('9710', '780', '考古学', '0');
INSERT INTO `profession` VALUES ('9711', '780.10', '考古理论', '9710');
INSERT INTO `profession` VALUES ('9712', '780.20', '考古学史', '9710');
INSERT INTO `profession` VALUES ('9713', '780.30', '考古技术', '9710');
INSERT INTO `profession` VALUES ('9718', '780.40', '中国考古', '9710');
INSERT INTO `profession` VALUES ('9726', '780.50', '外国考古', '9710');
INSERT INTO `profession` VALUES ('9733', '780.60', '专门考古', '9710');
INSERT INTO `profession` VALUES ('9742', '780.99', '考古学其他学科', '9710');
INSERT INTO `profession` VALUES ('9743', '790', '经济学', '0');
INSERT INTO `profession` VALUES ('9744', '790.11', '政治经济学', '9743');
INSERT INTO `profession` VALUES ('9748', '790.13', '宏观经济学', '9743');
INSERT INTO `profession` VALUES ('9749', '790.15', '微观经济学', '9743');
INSERT INTO `profession` VALUES ('9750', '790.17', '比较经济学', '9743');
INSERT INTO `profession` VALUES ('9751', '790.19', '经济地理学(包括工业地理学、农业地理学等)', '9743');
INSERT INTO `profession` VALUES ('9752', '790.21', '发展经济学', '9743');
INSERT INTO `profession` VALUES ('9753', '790.23', '生产力经济学', '9743');
INSERT INTO `profession` VALUES ('9754', '790.25', '经济思想史', '9743');
INSERT INTO `profession` VALUES ('9759', '790.27', '经济史', '9743');
INSERT INTO `profession` VALUES ('9763', '790.29', '世界经济学(亦称国际经济学)', '9743');
INSERT INTO `profession` VALUES ('9784', '790.31', '国民经济学', '9743');
INSERT INTO `profession` VALUES ('9790', '790.33', '管理经济学', '9743');
INSERT INTO `profession` VALUES ('9791', '790.35', '数量经济学', '9743');
INSERT INTO `profession` VALUES ('9795', '790.37', '会计学', '9743');
INSERT INTO `profession` VALUES ('9802', '790.39', '审计学', '9743');
INSERT INTO `profession` VALUES ('9803', '790.41', '技术经济学', '9743');
INSERT INTO `profession` VALUES ('9817', '790.43', '生态经济学', '9743');
INSERT INTO `profession` VALUES ('9824', '790.45', '劳动经济学', '9743');
INSERT INTO `profession` VALUES ('9832', '790.47', '城市经济学', '9743');
INSERT INTO `profession` VALUES ('9839', '790.49', '资源经济学', '9743');
INSERT INTO `profession` VALUES ('9846', '790.51', '环境经济学', '9743');
INSERT INTO `profession` VALUES ('9847', '790.53', '物资经济学', '9743');
INSERT INTO `profession` VALUES ('9851', '790.55', '工业经济学', '9743');
INSERT INTO `profession` VALUES ('9858', '790.57', '农村经济学', '9743');
INSERT INTO `profession` VALUES ('9863', '790.59', '农业经济学', '9743');
INSERT INTO `profession` VALUES ('9873', '790.61', '交通运输经济学', '9743');
INSERT INTO `profession` VALUES ('9881', '790.63', '商业经济学', '9743');
INSERT INTO `profession` VALUES ('9894', '790.65', '价格学', '9743');
INSERT INTO `profession` VALUES ('9902', '790.67', '旅游经济学', '9743');
INSERT INTO `profession` VALUES ('9908', '790.69', '信息经济学', '9743');
INSERT INTO `profession` VALUES ('9909', '790.71', '财政学', '9743');
INSERT INTO `profession` VALUES ('9919', '790.73', '货币银行学', '9743');
INSERT INTO `profession` VALUES ('9930', '790.75', '保险学', '9743');
INSERT INTO `profession` VALUES ('9933', '790.77', '国防经济学', '9743');
INSERT INTO `profession` VALUES ('9934', '790.99', '经济学其他学科', '9743');
INSERT INTO `profession` VALUES ('9935', '810', '政治学', '0');
INSERT INTO `profession` VALUES ('9936', '810.10', '政治学理论', '9935');
INSERT INTO `profession` VALUES ('9943', '810.20', '政治制度', '9935');
INSERT INTO `profession` VALUES ('9956', '810.30', '行政学', '9935');
INSERT INTO `profession` VALUES ('9963', '810.40', '国际政治学', '9935');
INSERT INTO `profession` VALUES ('9983', '810.99', '政治学其他学科', '9935');
INSERT INTO `profession` VALUES ('9984', '820', '法学', '0');
INSERT INTO `profession` VALUES ('9985', '820.10', '理论法学', '9984');
INSERT INTO `profession` VALUES ('9995', '820.20', '法律史学', '9984');
INSERT INTO `profession` VALUES ('10000', '820.30', '部门法学', '9984');
INSERT INTO `profession` VALUES ('10018', '820.40', '国际法学', '9984');
INSERT INTO `profession` VALUES ('10026', '820.99', '法学其他学科', '9984');
INSERT INTO `profession` VALUES ('10027', '830', '军事学', '0');
INSERT INTO `profession` VALUES ('10028', '830.10', '军事理论', '10027');
INSERT INTO `profession` VALUES ('10032', '830.15', '军事史', '10027');
INSERT INTO `profession` VALUES ('10040', '830.20', '军事心理学', '10027');
INSERT INTO `profession` VALUES ('10041', '830.25', '战略学', '10027');
INSERT INTO `profession` VALUES ('10045', '830.30', '战役学', '10027');
INSERT INTO `profession` VALUES ('10052', '830.35', '战术学', '10027');
INSERT INTO `profession` VALUES ('10059', '830.40', '军队指挥学', '10027');
INSERT INTO `profession` VALUES ('10066', '830.45', '军制学', '10027');
INSERT INTO `profession` VALUES ('10071', '830.50', '军队政治工作学', '10027');
INSERT INTO `profession` VALUES ('10075', '830.55', '军事后勤学', '10027');
INSERT INTO `profession` VALUES ('10079', '830.60', '军事地学', '10027');
INSERT INTO `profession` VALUES ('10087', '830.65', '军事技术', '10027');
INSERT INTO `profession` VALUES ('10088', '830.99', '军事学其他学科', '10027');
INSERT INTO `profession` VALUES ('10089', '840', '社会学', '0');
INSERT INTO `profession` VALUES ('10090', '840.11', '社会学史', '10089');
INSERT INTO `profession` VALUES ('10094', '840.14', '社会学理论', '10089');
INSERT INTO `profession` VALUES ('10098', '840.17', '社会学方法', '10089');
INSERT INTO `profession` VALUES ('10101', '840.21', '实验社会学', '10089');
INSERT INTO `profession` VALUES ('10102', '840.24', '数理社会学', '10089');
INSERT INTO `profession` VALUES ('10103', '840.27', '应用社会学', '10089');
INSERT INTO `profession` VALUES ('10123', '840.31', '比较社会学', '10089');
INSERT INTO `profession` VALUES ('10124', '840.34', '社会地理学', '10089');
INSERT INTO `profession` VALUES ('10125', '840.37', '文化社会学', '10089');
INSERT INTO `profession` VALUES ('10130', '840.41', '历史社会学', '10089');
INSERT INTO `profession` VALUES ('10131', '840.44', '经济社会学', '10089');
INSERT INTO `profession` VALUES ('10132', '840.47', '军事社会学', '10089');
INSERT INTO `profession` VALUES ('10133', '840.51', '社会心理学', '10089');
INSERT INTO `profession` VALUES ('10138', '840.54', '公共关系学', '10089');
INSERT INTO `profession` VALUES ('10139', '840.57', '社会人类学', '10089');
INSERT INTO `profession` VALUES ('10140', '840.61', '组织社会学', '10089');
INSERT INTO `profession` VALUES ('10141', '840.64', '发展社会学', '10089');
INSERT INTO `profession` VALUES ('10142', '840.67', '福利社会学', '10089');
INSERT INTO `profession` VALUES ('10143', '840.71', '人口学', '10089');
INSERT INTO `profession` VALUES ('10158', '840.99', '社会学其他学科', '10089');
INSERT INTO `profession` VALUES ('10159', '850', '民族学', '0');
INSERT INTO `profession` VALUES ('10160', '850.10', '民族问题理论', '10159');
INSERT INTO `profession` VALUES ('10169', '850.20', '民族史学', '10159');
INSERT INTO `profession` VALUES ('10173', '850.30', '蒙古学', '10159');
INSERT INTO `profession` VALUES ('10174', '850.40', '藏学', '10159');
INSERT INTO `profession` VALUES ('10175', '850.50', '文化人类学与民俗学', '10159');
INSERT INTO `profession` VALUES ('10176', '850.60', '世界民族研究', '10159');
INSERT INTO `profession` VALUES ('10177', '850.99', '民族学其他学科', '10159');
INSERT INTO `profession` VALUES ('10178', '860', '新闻学与传播学', '0');
INSERT INTO `profession` VALUES ('10179', '860.10', '新闻理论', '10178');
INSERT INTO `profession` VALUES ('10190', '860.20', '新闻史', '10178');
INSERT INTO `profession` VALUES ('10195', '860.30', '新闻业务', '10178');
INSERT INTO `profession` VALUES ('10202', '860.40', '新闻事业经营管理', '10178');
INSERT INTO `profession` VALUES ('10203', '860.50', '广播与电视', '10178');
INSERT INTO `profession` VALUES ('10209', '860.60', '传播学', '10178');
INSERT INTO `profession` VALUES ('10215', '860.99', '新闻学与传播学其他学科', '10178');
INSERT INTO `profession` VALUES ('10216', '870', '图书馆、情报与文献学', '0');
INSERT INTO `profession` VALUES ('10217', '870.10', '图书馆学', '10216');
INSERT INTO `profession` VALUES ('10229', '870.20', '文献学', '10216');
INSERT INTO `profession` VALUES ('10237', '870.30', '情报学', '10216');
INSERT INTO `profession` VALUES ('10252', '870.40', '档案学', '10216');
INSERT INTO `profession` VALUES ('10258', '870.50', '博物馆学', '10216');
INSERT INTO `profession` VALUES ('10259', '870.99', '图书馆、情报与文献学其他', '10216');
INSERT INTO `profession` VALUES ('10260', '学科', null, '10260');
INSERT INTO `profession` VALUES ('10261', '880', '教育学', '0');
INSERT INTO `profession` VALUES ('10262', '880.11', '教育史(包括中国教育史、外国教育史等)', '10261');
INSERT INTO `profession` VALUES ('10263', '880.14', '教育学原理', '10261');
INSERT INTO `profession` VALUES ('10264', '880.17', '教学论', '10261');
INSERT INTO `profession` VALUES ('10265', '880.21', '德育原理', '10261');
INSERT INTO `profession` VALUES ('10266', '880.24', '教育社会学', '10261');
INSERT INTO `profession` VALUES ('10267', '880.27', '教育心理学', '10261');
INSERT INTO `profession` VALUES ('10268', '880.31', '教育经济学', '10261');
INSERT INTO `profession` VALUES ('10269', '880.34', '教育管理学', '10261');
INSERT INTO `profession` VALUES ('10270', '880.37', '比较教育学', '10261');
INSERT INTO `profession` VALUES ('10271', '880.41', '教育技术学', '10261');
INSERT INTO `profession` VALUES ('10272', '880.44', '军事教育学', '10261');
INSERT INTO `profession` VALUES ('10273', '880.47', '学前教育学', '10261');
INSERT INTO `profession` VALUES ('10274', '880.51', '普通教育学(包括初等教育学、中等教育学等)', '10261');
INSERT INTO `profession` VALUES ('10275', '880.54', '高等教育学', '10261');
INSERT INTO `profession` VALUES ('10276', '880.57', '成人教育学', '10261');
INSERT INTO `profession` VALUES ('10277', '880.61', '职业技术教育学', '10261');
INSERT INTO `profession` VALUES ('10278', '880.64', '特殊教育学', '10261');
INSERT INTO `profession` VALUES ('10279', '880.99', '教育学其他学科', '10261');
INSERT INTO `profession` VALUES ('10280', '890', '体育科学', '0');
INSERT INTO `profession` VALUES ('10281', '890.10', '体育史', '10280');
INSERT INTO `profession` VALUES ('10282', '890.15', '体育理论', '10280');
INSERT INTO `profession` VALUES ('10283', '890.20', '运动生物力学(包括运动解剖学等)', '10280');
INSERT INTO `profession` VALUES ('10284', '890.25', '运动生理学', '10280');
INSERT INTO `profession` VALUES ('10285', '890.30', '运动心理学', '10280');
INSERT INTO `profession` VALUES ('10286', '890.35', '运动生物化学', '10280');
INSERT INTO `profession` VALUES ('10287', '890.40', '体育保健学', '10280');
INSERT INTO `profession` VALUES ('10288', '890.45', '运动训练学', '10280');
INSERT INTO `profession` VALUES ('10289', '890.50', '体育教育学', '10280');
INSERT INTO `profession` VALUES ('10290', '890.55', '武术理论与方法', '10280');
INSERT INTO `profession` VALUES ('10291', '890.60', '体育管理学', '10280');
INSERT INTO `profession` VALUES ('10292', '890.65', '体育经济学', '10280');
INSERT INTO `profession` VALUES ('10293', '890.99', '体育科学其他学科', '10280');
INSERT INTO `profession` VALUES ('10294', '910', '统计学', '0');
INSERT INTO `profession` VALUES ('10295', '910.10', '统计学史', '10294');
INSERT INTO `profession` VALUES ('10296', '910.15', '理论统计学', '10294');
INSERT INTO `profession` VALUES ('10303', '910.20', '统计法学', '10294');
INSERT INTO `profession` VALUES ('10304', '910.25', '描述统计学', '10294');
INSERT INTO `profession` VALUES ('10305', '910.30', '经济统计学', '10294');
INSERT INTO `profession` VALUES ('10309', '910.35', '科学技术统计学', '10294');
INSERT INTO `profession` VALUES ('10310', '910.40', '社会统计学', '10294');
INSERT INTO `profession` VALUES ('10318', '910.45', '人口统计学', '10294');
INSERT INTO `profession` VALUES ('10319', '910.50', '环境与生态统计学', '10294');
INSERT INTO `profession` VALUES ('10324', '910.55', '国际统计学', '10294');
INSERT INTO `profession` VALUES ('10329', '910.99', '统计学其他学科', '10294');

-- ----------------------------
-- Table structure for psq
-- ----------------------------
DROP TABLE IF EXISTS `psq`;
CREATE TABLE `psq` (
  `psq_id` int(11) NOT NULL AUTO_INCREMENT,
  `psq_name` varchar(30) NOT NULL COMMENT '问卷名',
  `psq_content` text COMMENT '问卷内容',
  `psqtype_id` int(11) NOT NULL COMMENT '问卷类型',
  `psq_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '问卷状态（0，不发布，1，发布）',
  `language_id` int(11) NOT NULL COMMENT '语言id',
  `release_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  PRIMARY KEY (`psq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of psq
-- ----------------------------
INSERT INTO `psq` VALUES ('31', '随机出题', '1', '1', '1', '1', '2019-08-20 19:30:00');
INSERT INTO `psq` VALUES ('32', '问卷1', '非常好\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0-美丽\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0-书\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0-笔\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0-2', '2', '0', '1', '2019-08-20 19:31:59');

-- ----------------------------
-- Table structure for psqtype
-- ----------------------------
DROP TABLE IF EXISTS `psqtype`;
CREATE TABLE `psqtype` (
  `psqtype_id` int(11) NOT NULL AUTO_INCREMENT,
  `psqtype_name` varchar(20) NOT NULL COMMENT '问卷类型',
  PRIMARY KEY (`psqtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of psqtype
-- ----------------------------
INSERT INTO `psqtype` VALUES ('1', '随机出题');
INSERT INTO `psqtype` VALUES ('2', '类型2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `role` tinyint(4) NOT NULL DEFAULT '0' COMMENT '角色',
  `phone` varchar(15) DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
