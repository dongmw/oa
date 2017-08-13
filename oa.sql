/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : oa

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-08-13 19:29:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for depart
-- ----------------------------
DROP TABLE IF EXISTS `depart`;
CREATE TABLE `depart` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `parent_id` int(22) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `sort_order` int(22) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of depart
-- ----------------------------
INSERT INTO `depart` VALUES ('1', '0', '人事部', '公司人员的安排调动', '0');
INSERT INTO `depart` VALUES ('2', '0', '财务部', '公司财务管理的单位', '0');
INSERT INTO `depart` VALUES ('3', '0', '技术部', '公司技术存储单位', '0');
INSERT INTO `depart` VALUES ('4', '1', '招聘处', '负责人员的 招聘', '0');
INSERT INTO `depart` VALUES ('7', '3', 'PHP开发部', 'web端的开发', '0');
INSERT INTO `depart` VALUES ('8', '2', '出纳小分队', '员工工资的发放', '0');
INSERT INTO `depart` VALUES ('10', '7', 'phper', '3222121', '0');
INSERT INTO `depart` VALUES ('11', '7', 'phper', '3222121', '0');
INSERT INTO `depart` VALUES ('12', '7', 'phper', '3222121', '0');
INSERT INTO `depart` VALUES ('13', '11', 'women', 'zaiyiqi', '0');

-- ----------------------------
-- Table structure for email
-- ----------------------------
DROP TABLE IF EXISTS `email`;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=444 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of email
-- ----------------------------
INSERT INTO `email` VALUES ('1', '15057518924@163.com', '1490106279');
INSERT INTO `email` VALUES ('2', 'dongmw1991@aliyun.com', '1490106279');
INSERT INTO `email` VALUES ('3', 'dongmw91@126.com', '1490106279');
INSERT INTO `email` VALUES ('4', '15057518924@163.com', '1490106339');
INSERT INTO `email` VALUES ('5', 'dongmw1991@aliyun.com', '1490106339');
INSERT INTO `email` VALUES ('6', 'dongmw91@126.com', '1490106339');
INSERT INTO `email` VALUES ('7', '15057518924@163.com', '1490106399');
INSERT INTO `email` VALUES ('8', 'dongmw1991@aliyun.com', '1490106399');
INSERT INTO `email` VALUES ('9', 'dongmw91@126.com', '1490106399');
INSERT INTO `email` VALUES ('10', '15057518924@163.com', '1490106459');
INSERT INTO `email` VALUES ('11', 'dongmw1991@aliyun.com', '1490106459');
INSERT INTO `email` VALUES ('12', 'dongmw91@126.com', '1490106459');
INSERT INTO `email` VALUES ('13', '15057518924@163.com', '1490106519');
INSERT INTO `email` VALUES ('14', 'dongmw1991@aliyun.com', '1490106519');
INSERT INTO `email` VALUES ('15', 'dongmw91@126.com', '1490106519');
INSERT INTO `email` VALUES ('16', '15057518924@163.com', '1490106579');
INSERT INTO `email` VALUES ('17', 'dongmw1991@aliyun.com', '1490106579');
INSERT INTO `email` VALUES ('18', 'dongmw91@126.com', '1490106579');
INSERT INTO `email` VALUES ('19', '15057518924@163.com', '1490106639');
INSERT INTO `email` VALUES ('20', 'dongmw1991@aliyun.com', '1490106639');
INSERT INTO `email` VALUES ('21', 'dongmw91@126.com', '1490106639');
INSERT INTO `email` VALUES ('22', '15057518924@163.com', '1490106699');
INSERT INTO `email` VALUES ('23', 'dongmw1991@aliyun.com', '1490106699');
INSERT INTO `email` VALUES ('24', 'dongmw91@126.com', '1490106699');
INSERT INTO `email` VALUES ('25', '15057518924@163.com', '1490106759');
INSERT INTO `email` VALUES ('26', 'dongmw1991@aliyun.com', '1490106759');
INSERT INTO `email` VALUES ('27', 'dongmw91@126.com', '1490106759');
INSERT INTO `email` VALUES ('28', '15057518924@163.com', '1490106819');
INSERT INTO `email` VALUES ('29', 'dongmw1991@aliyun.com', '1490106819');
INSERT INTO `email` VALUES ('30', 'dongmw91@126.com', '1490106819');
INSERT INTO `email` VALUES ('31', '15057518924@163.com', '1490106879');
INSERT INTO `email` VALUES ('32', 'dongmw1991@aliyun.com', '1490106879');
INSERT INTO `email` VALUES ('33', 'dongmw91@126.com', '1490106879');
INSERT INTO `email` VALUES ('34', '15057518924@163.com', '1490106939');
INSERT INTO `email` VALUES ('35', 'dongmw1991@aliyun.com', '1490106939');
INSERT INTO `email` VALUES ('36', 'dongmw91@126.com', '1490106939');
INSERT INTO `email` VALUES ('37', '15057518924@163.com', '1490106999');
INSERT INTO `email` VALUES ('38', 'dongmw1991@aliyun.com', '1490106999');
INSERT INTO `email` VALUES ('39', 'dongmw91@126.com', '1490106999');
INSERT INTO `email` VALUES ('40', '15057518924@163.com', '1490107059');
INSERT INTO `email` VALUES ('41', 'dongmw1991@aliyun.com', '1490107059');
INSERT INTO `email` VALUES ('42', 'dongmw91@126.com', '1490107059');
INSERT INTO `email` VALUES ('43', '15057518924@163.com', '1490107119');
INSERT INTO `email` VALUES ('44', 'dongmw1991@aliyun.com', '1490107119');
INSERT INTO `email` VALUES ('45', 'dongmw91@126.com', '1490107119');
INSERT INTO `email` VALUES ('46', '15057518924@163.com', '1490107179');
INSERT INTO `email` VALUES ('47', 'dongmw1991@aliyun.com', '1490107179');
INSERT INTO `email` VALUES ('48', 'dongmw91@126.com', '1490107179');
INSERT INTO `email` VALUES ('49', '15057518924@163.com', '1490107239');
INSERT INTO `email` VALUES ('50', 'dongmw1991@aliyun.com', '1490107239');
INSERT INTO `email` VALUES ('51', 'dongmw91@126.com', '1490107239');
INSERT INTO `email` VALUES ('52', '15057518924@163.com', '1490107299');
INSERT INTO `email` VALUES ('53', 'dongmw1991@aliyun.com', '1490107299');
INSERT INTO `email` VALUES ('54', 'dongmw91@126.com', '1490107299');
INSERT INTO `email` VALUES ('55', '15057518924@163.com', '1490107359');
INSERT INTO `email` VALUES ('56', 'dongmw1991@aliyun.com', '1490107359');
INSERT INTO `email` VALUES ('57', 'dongmw91@126.com', '1490107359');
INSERT INTO `email` VALUES ('58', '15057518924@163.com', '1490107419');
INSERT INTO `email` VALUES ('59', 'dongmw1991@aliyun.com', '1490107419');
INSERT INTO `email` VALUES ('60', 'dongmw91@126.com', '1490107419');
INSERT INTO `email` VALUES ('61', '15057518924@163.com', '1490107479');
INSERT INTO `email` VALUES ('62', 'dongmw1991@aliyun.com', '1490107479');
INSERT INTO `email` VALUES ('63', 'dongmw91@126.com', '1490107479');
INSERT INTO `email` VALUES ('64', '15057518924@163.com', '1490107539');
INSERT INTO `email` VALUES ('65', 'dongmw1991@aliyun.com', '1490107539');
INSERT INTO `email` VALUES ('66', 'dongmw91@126.com', '1490107539');
INSERT INTO `email` VALUES ('67', '15057518924@163.com', '1490107599');
INSERT INTO `email` VALUES ('68', 'dongmw1991@aliyun.com', '1490107599');
INSERT INTO `email` VALUES ('69', 'dongmw91@126.com', '1490107599');
INSERT INTO `email` VALUES ('70', '15057518924@163.com', '1490107659');
INSERT INTO `email` VALUES ('71', 'dongmw1991@aliyun.com', '1490107660');
INSERT INTO `email` VALUES ('72', 'dongmw91@126.com', '1490107660');
INSERT INTO `email` VALUES ('73', '15057518924@163.com', '1490107720');
INSERT INTO `email` VALUES ('74', 'dongmw1991@aliyun.com', '1490107720');
INSERT INTO `email` VALUES ('75', 'dongmw91@126.com', '1490107720');
INSERT INTO `email` VALUES ('76', '15057518924@163.com', '1490107780');
INSERT INTO `email` VALUES ('77', 'dongmw1991@aliyun.com', '1490107780');
INSERT INTO `email` VALUES ('78', 'dongmw91@126.com', '1490107780');
INSERT INTO `email` VALUES ('79', '15057518924@163.com', '1490107840');
INSERT INTO `email` VALUES ('80', 'dongmw1991@aliyun.com', '1490107840');
INSERT INTO `email` VALUES ('81', 'dongmw91@126.com', '1490107840');
INSERT INTO `email` VALUES ('82', '15057518924@163.com', '1490107900');
INSERT INTO `email` VALUES ('83', 'dongmw1991@aliyun.com', '1490107901');
INSERT INTO `email` VALUES ('84', 'dongmw91@126.com', '1490107901');
INSERT INTO `email` VALUES ('85', '15057518924@163.com', '1490107961');
INSERT INTO `email` VALUES ('86', 'dongmw1991@aliyun.com', '1490107961');
INSERT INTO `email` VALUES ('87', 'dongmw91@126.com', '1490107961');
INSERT INTO `email` VALUES ('88', '15057518924@163.com', '1490108021');
INSERT INTO `email` VALUES ('89', 'dongmw1991@aliyun.com', '1490108021');
INSERT INTO `email` VALUES ('90', 'dongmw91@126.com', '1490108021');
INSERT INTO `email` VALUES ('91', '15057518924@163.com', '1490108081');
INSERT INTO `email` VALUES ('92', 'dongmw1991@aliyun.com', '1490108081');
INSERT INTO `email` VALUES ('93', 'dongmw91@126.com', '1490108082');
INSERT INTO `email` VALUES ('94', '15057518924@163.com', '1490108142');
INSERT INTO `email` VALUES ('95', 'dongmw1991@aliyun.com', '1490108142');
INSERT INTO `email` VALUES ('96', 'dongmw91@126.com', '1490108142');
INSERT INTO `email` VALUES ('97', '15057518924@163.com', '1490108202');
INSERT INTO `email` VALUES ('98', 'dongmw1991@aliyun.com', '1490108202');
INSERT INTO `email` VALUES ('99', 'dongmw91@126.com', '1490108202');
INSERT INTO `email` VALUES ('100', '15057518924@163.com', '1490108262');
INSERT INTO `email` VALUES ('101', 'dongmw1991@aliyun.com', '1490108262');
INSERT INTO `email` VALUES ('102', 'dongmw91@126.com', '1490108262');
INSERT INTO `email` VALUES ('103', '15057518924@163.com', '1490108322');
INSERT INTO `email` VALUES ('104', 'dongmw1991@aliyun.com', '1490108322');
INSERT INTO `email` VALUES ('105', 'dongmw91@126.com', '1490108322');
INSERT INTO `email` VALUES ('106', '15057518924@163.com', '1490108382');
INSERT INTO `email` VALUES ('107', 'dongmw1991@aliyun.com', '1490108382');
INSERT INTO `email` VALUES ('108', 'dongmw91@126.com', '1490108382');
INSERT INTO `email` VALUES ('109', '15057518924@163.com', '1490108442');
INSERT INTO `email` VALUES ('110', 'dongmw1991@aliyun.com', '1490108442');
INSERT INTO `email` VALUES ('111', 'dongmw91@126.com', '1490108442');
INSERT INTO `email` VALUES ('112', '15057518924@163.com', '1490108502');
INSERT INTO `email` VALUES ('113', 'dongmw1991@aliyun.com', '1490108502');
INSERT INTO `email` VALUES ('114', 'dongmw91@126.com', '1490108502');
INSERT INTO `email` VALUES ('115', '15057518924@163.com', '1490108562');
INSERT INTO `email` VALUES ('116', 'dongmw1991@aliyun.com', '1490108562');
INSERT INTO `email` VALUES ('117', 'dongmw91@126.com', '1490108562');
INSERT INTO `email` VALUES ('118', '15057518924@163.com', '1490108622');
INSERT INTO `email` VALUES ('119', 'dongmw1991@aliyun.com', '1490108622');
INSERT INTO `email` VALUES ('120', 'dongmw91@126.com', '1490108622');
INSERT INTO `email` VALUES ('121', '15057518924@163.com', '1490108682');
INSERT INTO `email` VALUES ('122', 'dongmw1991@aliyun.com', '1490108682');
INSERT INTO `email` VALUES ('123', 'dongmw91@126.com', '1490108682');
INSERT INTO `email` VALUES ('124', '15057518924@163.com', '1490108742');
INSERT INTO `email` VALUES ('125', 'dongmw1991@aliyun.com', '1490108742');
INSERT INTO `email` VALUES ('126', 'dongmw91@126.com', '1490108742');
INSERT INTO `email` VALUES ('127', '15057518924@163.com', '1490108802');
INSERT INTO `email` VALUES ('128', 'dongmw1991@aliyun.com', '1490108802');
INSERT INTO `email` VALUES ('129', 'dongmw91@126.com', '1490108802');
INSERT INTO `email` VALUES ('130', '15057518924@163.com', '1490108862');
INSERT INTO `email` VALUES ('131', 'dongmw1991@aliyun.com', '1490108862');
INSERT INTO `email` VALUES ('132', 'dongmw91@126.com', '1490108862');
INSERT INTO `email` VALUES ('133', '15057518924@163.com', '1490108922');
INSERT INTO `email` VALUES ('134', 'dongmw1991@aliyun.com', '1490108922');
INSERT INTO `email` VALUES ('135', 'dongmw91@126.com', '1490108922');
INSERT INTO `email` VALUES ('136', '15057518924@163.com', '1490108982');
INSERT INTO `email` VALUES ('137', 'dongmw1991@aliyun.com', '1490108982');
INSERT INTO `email` VALUES ('138', 'dongmw91@126.com', '1490108982');
INSERT INTO `email` VALUES ('139', '15057518924@163.com', '1490109042');
INSERT INTO `email` VALUES ('140', 'dongmw1991@aliyun.com', '1490109042');
INSERT INTO `email` VALUES ('141', 'dongmw91@126.com', '1490109042');
INSERT INTO `email` VALUES ('142', '15057518924@163.com', '1490109102');
INSERT INTO `email` VALUES ('143', 'dongmw1991@aliyun.com', '1490109102');
INSERT INTO `email` VALUES ('144', 'dongmw91@126.com', '1490109102');
INSERT INTO `email` VALUES ('145', '15057518924@163.com', '1490109163');
INSERT INTO `email` VALUES ('146', 'dongmw1991@aliyun.com', '1490109163');
INSERT INTO `email` VALUES ('147', 'dongmw91@126.com', '1490109163');
INSERT INTO `email` VALUES ('148', '15057518924@163.com', '1490109223');
INSERT INTO `email` VALUES ('149', 'dongmw1991@aliyun.com', '1490109223');
INSERT INTO `email` VALUES ('150', 'dongmw91@126.com', '1490109223');
INSERT INTO `email` VALUES ('151', '15057518924@163.com', '1490109283');
INSERT INTO `email` VALUES ('152', 'dongmw1991@aliyun.com', '1490109283');
INSERT INTO `email` VALUES ('153', 'dongmw91@126.com', '1490109283');
INSERT INTO `email` VALUES ('154', '15057518924@163.com', '1490109343');
INSERT INTO `email` VALUES ('155', 'dongmw1991@aliyun.com', '1490109343');
INSERT INTO `email` VALUES ('156', 'dongmw91@126.com', '1490109343');
INSERT INTO `email` VALUES ('157', '15057518924@163.com', '1490109403');
INSERT INTO `email` VALUES ('158', 'dongmw1991@aliyun.com', '1490109403');
INSERT INTO `email` VALUES ('159', 'dongmw91@126.com', '1490109403');
INSERT INTO `email` VALUES ('160', '15057518924@163.com', '1490109463');
INSERT INTO `email` VALUES ('161', 'dongmw1991@aliyun.com', '1490109463');
INSERT INTO `email` VALUES ('162', 'dongmw91@126.com', '1490109463');
INSERT INTO `email` VALUES ('163', '15057518924@163.com', '1490109523');
INSERT INTO `email` VALUES ('164', 'dongmw1991@aliyun.com', '1490109523');
INSERT INTO `email` VALUES ('165', 'dongmw91@126.com', '1490109523');
INSERT INTO `email` VALUES ('166', '15057518924@163.com', '1490109583');
INSERT INTO `email` VALUES ('167', 'dongmw1991@aliyun.com', '1490109583');
INSERT INTO `email` VALUES ('168', 'dongmw91@126.com', '1490109583');
INSERT INTO `email` VALUES ('169', '15057518924@163.com', '1490109643');
INSERT INTO `email` VALUES ('170', 'dongmw1991@aliyun.com', '1490109643');
INSERT INTO `email` VALUES ('171', 'dongmw91@126.com', '1490109643');
INSERT INTO `email` VALUES ('172', '15057518924@163.com', '1490109703');
INSERT INTO `email` VALUES ('173', 'dongmw1991@aliyun.com', '1490109703');
INSERT INTO `email` VALUES ('174', 'dongmw91@126.com', '1490109703');
INSERT INTO `email` VALUES ('175', '15057518924@163.com', '1490109763');
INSERT INTO `email` VALUES ('176', 'dongmw1991@aliyun.com', '1490109763');
INSERT INTO `email` VALUES ('177', 'dongmw91@126.com', '1490109763');
INSERT INTO `email` VALUES ('178', '15057518924@163.com', '1490109823');
INSERT INTO `email` VALUES ('179', 'dongmw1991@aliyun.com', '1490109823');
INSERT INTO `email` VALUES ('180', 'dongmw91@126.com', '1490109823');
INSERT INTO `email` VALUES ('181', '15057518924@163.com', '1490109883');
INSERT INTO `email` VALUES ('182', 'dongmw1991@aliyun.com', '1490109883');
INSERT INTO `email` VALUES ('183', 'dongmw91@126.com', '1490109883');
INSERT INTO `email` VALUES ('184', '15057518924@163.com', '1490109943');
INSERT INTO `email` VALUES ('185', 'dongmw1991@aliyun.com', '1490109943');
INSERT INTO `email` VALUES ('186', 'dongmw91@126.com', '1490109943');
INSERT INTO `email` VALUES ('187', '15057518924@163.com', '1490110003');
INSERT INTO `email` VALUES ('188', 'dongmw1991@aliyun.com', '1490110003');
INSERT INTO `email` VALUES ('189', 'dongmw91@126.com', '1490110003');
INSERT INTO `email` VALUES ('190', '15057518924@163.com', '1490110063');
INSERT INTO `email` VALUES ('191', 'dongmw1991@aliyun.com', '1490110063');
INSERT INTO `email` VALUES ('192', 'dongmw91@126.com', '1490110063');
INSERT INTO `email` VALUES ('193', '15057518924@163.com', '1490110123');
INSERT INTO `email` VALUES ('194', 'dongmw1991@aliyun.com', '1490110123');
INSERT INTO `email` VALUES ('195', 'dongmw91@126.com', '1490110123');
INSERT INTO `email` VALUES ('196', '15057518924@163.com', '1490110183');
INSERT INTO `email` VALUES ('197', 'dongmw1991@aliyun.com', '1490110183');
INSERT INTO `email` VALUES ('198', 'dongmw91@126.com', '1490110183');
INSERT INTO `email` VALUES ('199', '15057518924@163.com', '1490110243');
INSERT INTO `email` VALUES ('200', 'dongmw1991@aliyun.com', '1490110243');
INSERT INTO `email` VALUES ('201', 'dongmw91@126.com', '1490110243');
INSERT INTO `email` VALUES ('202', '15057518924@163.com', '1490110303');
INSERT INTO `email` VALUES ('203', 'dongmw1991@aliyun.com', '1490110303');
INSERT INTO `email` VALUES ('204', 'dongmw91@126.com', '1490110303');
INSERT INTO `email` VALUES ('205', '15057518924@163.com', '1490110363');
INSERT INTO `email` VALUES ('206', 'dongmw1991@aliyun.com', '1490110363');
INSERT INTO `email` VALUES ('207', 'dongmw91@126.com', '1490110363');
INSERT INTO `email` VALUES ('208', '15057518924@163.com', '1490110423');
INSERT INTO `email` VALUES ('209', 'dongmw1991@aliyun.com', '1490110423');
INSERT INTO `email` VALUES ('210', 'dongmw91@126.com', '1490110423');
INSERT INTO `email` VALUES ('211', '15057518924@163.com', '1490110483');
INSERT INTO `email` VALUES ('212', 'dongmw1991@aliyun.com', '1490110483');
INSERT INTO `email` VALUES ('213', 'dongmw91@126.com', '1490110483');
INSERT INTO `email` VALUES ('214', '15057518924@163.com', '1490110543');
INSERT INTO `email` VALUES ('215', 'dongmw1991@aliyun.com', '1490110543');
INSERT INTO `email` VALUES ('216', 'dongmw91@126.com', '1490110543');
INSERT INTO `email` VALUES ('217', '15057518924@163.com', '1490110603');
INSERT INTO `email` VALUES ('218', 'dongmw1991@aliyun.com', '1490110603');
INSERT INTO `email` VALUES ('219', 'dongmw91@126.com', '1490110603');
INSERT INTO `email` VALUES ('220', '15057518924@163.com', '1490110663');
INSERT INTO `email` VALUES ('221', 'dongmw1991@aliyun.com', '1490110663');
INSERT INTO `email` VALUES ('222', 'dongmw91@126.com', '1490110663');
INSERT INTO `email` VALUES ('223', '15057518924@163.com', '1490110723');
INSERT INTO `email` VALUES ('224', 'dongmw1991@aliyun.com', '1490110723');
INSERT INTO `email` VALUES ('225', 'dongmw91@126.com', '1490110723');
INSERT INTO `email` VALUES ('226', '15057518924@163.com', '1490110783');
INSERT INTO `email` VALUES ('227', 'dongmw1991@aliyun.com', '1490110783');
INSERT INTO `email` VALUES ('228', 'dongmw91@126.com', '1490110783');
INSERT INTO `email` VALUES ('229', '15057518924@163.com', '1490110843');
INSERT INTO `email` VALUES ('230', 'dongmw1991@aliyun.com', '1490110843');
INSERT INTO `email` VALUES ('231', 'dongmw91@126.com', '1490110843');
INSERT INTO `email` VALUES ('232', '15057518924@163.com', '1490110903');
INSERT INTO `email` VALUES ('233', 'dongmw1991@aliyun.com', '1490110903');
INSERT INTO `email` VALUES ('234', 'dongmw91@126.com', '1490110903');
INSERT INTO `email` VALUES ('235', '15057518924@163.com', '1490110963');
INSERT INTO `email` VALUES ('236', 'dongmw1991@aliyun.com', '1490110963');
INSERT INTO `email` VALUES ('237', 'dongmw91@126.com', '1490110963');
INSERT INTO `email` VALUES ('238', '15057518924@163.com', '1490111023');
INSERT INTO `email` VALUES ('239', 'dongmw1991@aliyun.com', '1490111023');
INSERT INTO `email` VALUES ('240', 'dongmw91@126.com', '1490111023');
INSERT INTO `email` VALUES ('241', '15057518924@163.com', '1490111083');
INSERT INTO `email` VALUES ('242', 'dongmw1991@aliyun.com', '1490111083');
INSERT INTO `email` VALUES ('243', 'dongmw91@126.com', '1490111083');
INSERT INTO `email` VALUES ('244', '15057518924@163.com', '1490111143');
INSERT INTO `email` VALUES ('245', 'dongmw1991@aliyun.com', '1490111143');
INSERT INTO `email` VALUES ('246', 'dongmw91@126.com', '1490111143');
INSERT INTO `email` VALUES ('247', '15057518924@163.com', '1490111203');
INSERT INTO `email` VALUES ('248', 'dongmw1991@aliyun.com', '1490111203');
INSERT INTO `email` VALUES ('249', 'dongmw91@126.com', '1490111203');
INSERT INTO `email` VALUES ('250', '15057518924@163.com', '1490111264');
INSERT INTO `email` VALUES ('251', 'dongmw1991@aliyun.com', '1490111264');
INSERT INTO `email` VALUES ('252', 'dongmw91@126.com', '1490111264');
INSERT INTO `email` VALUES ('253', '15057518924@163.com', '1490111324');
INSERT INTO `email` VALUES ('254', 'dongmw1991@aliyun.com', '1490111324');
INSERT INTO `email` VALUES ('255', 'dongmw91@126.com', '1490111324');
INSERT INTO `email` VALUES ('256', '15057518924@163.com', '1490111384');
INSERT INTO `email` VALUES ('257', 'dongmw1991@aliyun.com', '1490111384');
INSERT INTO `email` VALUES ('258', 'dongmw91@126.com', '1490111384');
INSERT INTO `email` VALUES ('259', '15057518924@163.com', '1490111444');
INSERT INTO `email` VALUES ('260', 'dongmw1991@aliyun.com', '1490111444');
INSERT INTO `email` VALUES ('261', 'dongmw91@126.com', '1490111444');
INSERT INTO `email` VALUES ('262', '15057518924@163.com', '1490111504');
INSERT INTO `email` VALUES ('263', 'dongmw1991@aliyun.com', '1490111504');
INSERT INTO `email` VALUES ('264', 'dongmw91@126.com', '1490111504');
INSERT INTO `email` VALUES ('265', '15057518924@163.com', '1490111564');
INSERT INTO `email` VALUES ('266', 'dongmw1991@aliyun.com', '1490111564');
INSERT INTO `email` VALUES ('267', 'dongmw91@126.com', '1490111564');
INSERT INTO `email` VALUES ('268', '15057518924@163.com', '1490111624');
INSERT INTO `email` VALUES ('269', 'dongmw1991@aliyun.com', '1490111624');
INSERT INTO `email` VALUES ('270', 'dongmw91@126.com', '1490111624');
INSERT INTO `email` VALUES ('271', '15057518924@163.com', '1490111684');
INSERT INTO `email` VALUES ('272', 'dongmw1991@aliyun.com', '1490111684');
INSERT INTO `email` VALUES ('273', 'dongmw91@126.com', '1490111684');
INSERT INTO `email` VALUES ('274', '15057518924@163.com', '1490111744');
INSERT INTO `email` VALUES ('275', 'dongmw1991@aliyun.com', '1490111744');
INSERT INTO `email` VALUES ('276', 'dongmw91@126.com', '1490111744');
INSERT INTO `email` VALUES ('277', '15057518924@163.com', '1490111804');
INSERT INTO `email` VALUES ('278', 'dongmw1991@aliyun.com', '1490111804');
INSERT INTO `email` VALUES ('279', 'dongmw91@126.com', '1490111804');
INSERT INTO `email` VALUES ('280', '15057518924@163.com', '1490111864');
INSERT INTO `email` VALUES ('281', 'dongmw1991@aliyun.com', '1490111864');
INSERT INTO `email` VALUES ('282', 'dongmw91@126.com', '1490111864');
INSERT INTO `email` VALUES ('283', '15057518924@163.com', '1490111924');
INSERT INTO `email` VALUES ('284', 'dongmw1991@aliyun.com', '1490111924');
INSERT INTO `email` VALUES ('285', 'dongmw91@126.com', '1490111924');
INSERT INTO `email` VALUES ('286', '15057518924@163.com', '1490111985');
INSERT INTO `email` VALUES ('287', 'dongmw1991@aliyun.com', '1490111985');
INSERT INTO `email` VALUES ('288', 'dongmw91@126.com', '1490111985');
INSERT INTO `email` VALUES ('289', '15057518924@163.com', '1490112045');
INSERT INTO `email` VALUES ('290', 'dongmw1991@aliyun.com', '1490112045');
INSERT INTO `email` VALUES ('291', 'dongmw91@126.com', '1490112045');
INSERT INTO `email` VALUES ('292', '15057518924@163.com', '1490112105');
INSERT INTO `email` VALUES ('293', 'dongmw1991@aliyun.com', '1490112105');
INSERT INTO `email` VALUES ('294', 'dongmw91@126.com', '1490112105');
INSERT INTO `email` VALUES ('295', '15057518924@163.com', '1490112165');
INSERT INTO `email` VALUES ('296', 'dongmw1991@aliyun.com', '1490112165');
INSERT INTO `email` VALUES ('297', 'dongmw91@126.com', '1490112165');
INSERT INTO `email` VALUES ('298', '15057518924@163.com', '1490112225');
INSERT INTO `email` VALUES ('299', 'dongmw1991@aliyun.com', '1490112225');
INSERT INTO `email` VALUES ('300', 'dongmw91@126.com', '1490112225');
INSERT INTO `email` VALUES ('301', '15057518924@163.com', '1490112285');
INSERT INTO `email` VALUES ('302', 'dongmw1991@aliyun.com', '1490112285');
INSERT INTO `email` VALUES ('303', 'dongmw91@126.com', '1490112285');
INSERT INTO `email` VALUES ('304', '15057518924@163.com', '1490112345');
INSERT INTO `email` VALUES ('305', 'dongmw1991@aliyun.com', '1490112345');
INSERT INTO `email` VALUES ('306', 'dongmw91@126.com', '1490112345');
INSERT INTO `email` VALUES ('307', '15057518924@163.com', '1490112405');
INSERT INTO `email` VALUES ('308', 'dongmw1991@aliyun.com', '1490112405');
INSERT INTO `email` VALUES ('309', 'dongmw91@126.com', '1490112405');
INSERT INTO `email` VALUES ('310', '15057518924@163.com', '1490112465');
INSERT INTO `email` VALUES ('311', 'dongmw1991@aliyun.com', '1490112465');
INSERT INTO `email` VALUES ('312', 'dongmw91@126.com', '1490112465');
INSERT INTO `email` VALUES ('313', '15057518924@163.com', '1490112525');
INSERT INTO `email` VALUES ('314', 'dongmw1991@aliyun.com', '1490112525');
INSERT INTO `email` VALUES ('315', 'dongmw91@126.com', '1490112525');
INSERT INTO `email` VALUES ('316', '15057518924@163.com', '1490112585');
INSERT INTO `email` VALUES ('317', 'dongmw1991@aliyun.com', '1490112585');
INSERT INTO `email` VALUES ('318', 'dongmw91@126.com', '1490112585');
INSERT INTO `email` VALUES ('319', '15057518924@163.com', '1490112645');
INSERT INTO `email` VALUES ('320', 'dongmw1991@aliyun.com', '1490112645');
INSERT INTO `email` VALUES ('321', 'dongmw91@126.com', '1490112645');
INSERT INTO `email` VALUES ('322', '15057518924@163.com', '1490112705');
INSERT INTO `email` VALUES ('323', 'dongmw1991@aliyun.com', '1490112705');
INSERT INTO `email` VALUES ('324', 'dongmw91@126.com', '1490112705');
INSERT INTO `email` VALUES ('325', '15057518924@163.com', '1490112765');
INSERT INTO `email` VALUES ('326', 'dongmw1991@aliyun.com', '1490112765');
INSERT INTO `email` VALUES ('327', 'dongmw91@126.com', '1490112765');
INSERT INTO `email` VALUES ('328', '15057518924@163.com', '1490112825');
INSERT INTO `email` VALUES ('329', 'dongmw1991@aliyun.com', '1490112825');
INSERT INTO `email` VALUES ('330', 'dongmw91@126.com', '1490112825');
INSERT INTO `email` VALUES ('331', '15057518924@163.com', '1490112885');
INSERT INTO `email` VALUES ('332', 'dongmw1991@aliyun.com', '1490112885');
INSERT INTO `email` VALUES ('333', 'dongmw91@126.com', '1490112885');
INSERT INTO `email` VALUES ('334', '15057518924@163.com', '1490112945');
INSERT INTO `email` VALUES ('335', 'dongmw1991@aliyun.com', '1490112945');
INSERT INTO `email` VALUES ('336', 'dongmw91@126.com', '1490112945');
INSERT INTO `email` VALUES ('337', '15057518924@163.com', '1490113005');
INSERT INTO `email` VALUES ('338', 'dongmw1991@aliyun.com', '1490113005');
INSERT INTO `email` VALUES ('339', 'dongmw91@126.com', '1490113005');
INSERT INTO `email` VALUES ('340', '15057518924@163.com', '1490113065');
INSERT INTO `email` VALUES ('341', 'dongmw1991@aliyun.com', '1490113065');
INSERT INTO `email` VALUES ('342', 'dongmw91@126.com', '1490113065');
INSERT INTO `email` VALUES ('343', '15057518924@163.com', '1490113125');
INSERT INTO `email` VALUES ('344', 'dongmw1991@aliyun.com', '1490113125');
INSERT INTO `email` VALUES ('345', 'dongmw91@126.com', '1490113125');
INSERT INTO `email` VALUES ('346', '15057518924@163.com', '1490113185');
INSERT INTO `email` VALUES ('347', 'dongmw1991@aliyun.com', '1490113185');
INSERT INTO `email` VALUES ('348', 'dongmw91@126.com', '1490113185');
INSERT INTO `email` VALUES ('349', '15057518924@163.com', '1490113245');
INSERT INTO `email` VALUES ('350', 'dongmw1991@aliyun.com', '1490113245');
INSERT INTO `email` VALUES ('351', 'dongmw91@126.com', '1490113245');
INSERT INTO `email` VALUES ('352', '15057518924@163.com', '1490113305');
INSERT INTO `email` VALUES ('353', 'dongmw1991@aliyun.com', '1490113305');
INSERT INTO `email` VALUES ('354', 'dongmw91@126.com', '1490113305');
INSERT INTO `email` VALUES ('355', '15057518924@163.com', '1490113365');
INSERT INTO `email` VALUES ('356', 'dongmw1991@aliyun.com', '1490113365');
INSERT INTO `email` VALUES ('357', 'dongmw91@126.com', '1490113365');
INSERT INTO `email` VALUES ('358', '15057518924@163.com', '1490113425');
INSERT INTO `email` VALUES ('359', 'dongmw1991@aliyun.com', '1490113425');
INSERT INTO `email` VALUES ('360', 'dongmw91@126.com', '1490113425');
INSERT INTO `email` VALUES ('361', '15057518924@163.com', '1490113485');
INSERT INTO `email` VALUES ('362', 'dongmw1991@aliyun.com', '1490113485');
INSERT INTO `email` VALUES ('363', 'dongmw91@126.com', '1490113485');
INSERT INTO `email` VALUES ('364', '15057518924@163.com', '1490113546');
INSERT INTO `email` VALUES ('365', 'dongmw1991@aliyun.com', '1490113546');
INSERT INTO `email` VALUES ('366', 'dongmw91@126.com', '1490113546');
INSERT INTO `email` VALUES ('367', '15057518924@163.com', '1490113606');
INSERT INTO `email` VALUES ('368', 'dongmw1991@aliyun.com', '1490113606');
INSERT INTO `email` VALUES ('369', 'dongmw91@126.com', '1490113606');
INSERT INTO `email` VALUES ('370', '15057518924@163.com', '1490113666');
INSERT INTO `email` VALUES ('371', 'dongmw1991@aliyun.com', '1490113666');
INSERT INTO `email` VALUES ('372', 'dongmw91@126.com', '1490113666');
INSERT INTO `email` VALUES ('373', '15057518924@163.com', '1490113726');
INSERT INTO `email` VALUES ('374', 'dongmw1991@aliyun.com', '1490113726');
INSERT INTO `email` VALUES ('375', 'dongmw91@126.com', '1490113726');
INSERT INTO `email` VALUES ('376', '15057518924@163.com', '1490113786');
INSERT INTO `email` VALUES ('377', 'dongmw1991@aliyun.com', '1490113786');
INSERT INTO `email` VALUES ('378', 'dongmw91@126.com', '1490113786');
INSERT INTO `email` VALUES ('379', '15057518924@163.com', '1490113847');
INSERT INTO `email` VALUES ('380', 'dongmw1991@aliyun.com', '1490113847');
INSERT INTO `email` VALUES ('381', 'dongmw91@126.com', '1490113847');
INSERT INTO `email` VALUES ('382', '15057518924@163.com', '1490113907');
INSERT INTO `email` VALUES ('383', 'dongmw1991@aliyun.com', '1490113907');
INSERT INTO `email` VALUES ('384', 'dongmw91@126.com', '1490113907');
INSERT INTO `email` VALUES ('385', '15057518924@163.com', '1490113967');
INSERT INTO `email` VALUES ('386', 'dongmw1991@aliyun.com', '1490113967');
INSERT INTO `email` VALUES ('387', 'dongmw91@126.com', '1490113967');
INSERT INTO `email` VALUES ('388', '15057518924@163.com', '1490114027');
INSERT INTO `email` VALUES ('389', 'dongmw1991@aliyun.com', '1490114027');
INSERT INTO `email` VALUES ('390', 'dongmw91@126.com', '1490114027');
INSERT INTO `email` VALUES ('391', '15057518924@163.com', '1490114087');
INSERT INTO `email` VALUES ('392', 'dongmw1991@aliyun.com', '1490114087');
INSERT INTO `email` VALUES ('393', 'dongmw91@126.com', '1490114087');
INSERT INTO `email` VALUES ('394', '15057518924@163.com', '1490114147');
INSERT INTO `email` VALUES ('395', 'dongmw1991@aliyun.com', '1490114147');
INSERT INTO `email` VALUES ('396', 'dongmw91@126.com', '1490114147');
INSERT INTO `email` VALUES ('397', '15057518924@163.com', '1490114207');
INSERT INTO `email` VALUES ('398', 'dongmw1991@aliyun.com', '1490114207');
INSERT INTO `email` VALUES ('399', 'dongmw91@126.com', '1490114207');
INSERT INTO `email` VALUES ('400', '15057518924@163.com', '1490114267');
INSERT INTO `email` VALUES ('401', 'dongmw1991@aliyun.com', '1490114267');
INSERT INTO `email` VALUES ('402', 'dongmw91@126.com', '1490114267');
INSERT INTO `email` VALUES ('403', '15057518924@163.com', '1490114327');
INSERT INTO `email` VALUES ('404', 'dongmw1991@aliyun.com', '1490114327');
INSERT INTO `email` VALUES ('405', 'dongmw91@126.com', '1490114327');
INSERT INTO `email` VALUES ('406', '15057518924@163.com', '1490114387');
INSERT INTO `email` VALUES ('407', 'dongmw1991@aliyun.com', '1490114387');
INSERT INTO `email` VALUES ('408', 'dongmw91@126.com', '1490114387');
INSERT INTO `email` VALUES ('409', '15057518924@163.com', '1490114447');
INSERT INTO `email` VALUES ('410', 'dongmw1991@aliyun.com', '1490114447');
INSERT INTO `email` VALUES ('411', 'dongmw91@126.com', '1490114447');
INSERT INTO `email` VALUES ('412', '15057518924@163.com', '1490114507');
INSERT INTO `email` VALUES ('413', 'dongmw1991@aliyun.com', '1490114507');
INSERT INTO `email` VALUES ('414', 'dongmw91@126.com', '1490114507');
INSERT INTO `email` VALUES ('415', '15057518924@163.com', '1490114567');
INSERT INTO `email` VALUES ('416', 'dongmw1991@aliyun.com', '1490114567');
INSERT INTO `email` VALUES ('417', 'dongmw91@126.com', '1490114567');
INSERT INTO `email` VALUES ('418', '15057518924@163.com', '1490114627');
INSERT INTO `email` VALUES ('419', 'dongmw1991@aliyun.com', '1490114627');
INSERT INTO `email` VALUES ('420', 'dongmw91@126.com', '1490114627');
INSERT INTO `email` VALUES ('421', '15057518924@163.com', '1490114687');
INSERT INTO `email` VALUES ('422', 'dongmw1991@aliyun.com', '1490114687');
INSERT INTO `email` VALUES ('423', 'dongmw91@126.com', '1490114687');
INSERT INTO `email` VALUES ('424', '15057518924@163.com', '1490114748');
INSERT INTO `email` VALUES ('425', 'dongmw1991@aliyun.com', '1490114748');
INSERT INTO `email` VALUES ('426', '15057518924@163.com', '1490154468');
INSERT INTO `email` VALUES ('427', 'dongmw1991@aliyun.com', '1490154468');
INSERT INTO `email` VALUES ('428', 'dongmw91@126.com', '1490154468');
INSERT INTO `email` VALUES ('429', '15057518924@163.com', '1490154640');
INSERT INTO `email` VALUES ('430', 'dongmw1991@aliyun.com', '1490154640');
INSERT INTO `email` VALUES ('431', 'dongmw91@126.com', '1490154640');
INSERT INTO `email` VALUES ('432', '15057518924@163.com', '1490154696');
INSERT INTO `email` VALUES ('433', 'dongmw1991@aliyun.com', '1490154696');
INSERT INTO `email` VALUES ('434', 'dongmw91@126.com', '1490154696');
INSERT INTO `email` VALUES ('435', '15057518924@163.com', '1490154903');
INSERT INTO `email` VALUES ('436', 'dongmw1991@aliyun.com', '1490154903');
INSERT INTO `email` VALUES ('437', 'dongmw91@126.com', '1490154903');
INSERT INTO `email` VALUES ('438', '15057518924@163.com', '1490155755');
INSERT INTO `email` VALUES ('439', 'dongmw1991@aliyun.com', '1490155755');
INSERT INTO `email` VALUES ('440', 'dongmw91@126.com', '1490155755');
INSERT INTO `email` VALUES ('441', '15057518924@163.com', '1490155935');
INSERT INTO `email` VALUES ('442', 'dongmw1991@aliyun.com', '1490155935');
INSERT INTO `email` VALUES ('443', 'dongmw91@126.com', '1490155935');

-- ----------------------------
-- Table structure for go_category
-- ----------------------------
DROP TABLE IF EXISTS `go_category`;
CREATE TABLE `go_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `model_id` int(10) NOT NULL COMMENT '模型id',
  `model_flag` varchar(20) NOT NULL COMMENT '模型标示符',
  `title` varchar(45) NOT NULL COMMENT '分类名称',
  `flag` varchar(255) NOT NULL COMMENT '栏目标示符，必须为字母或数字',
  `content` mediumtext NOT NULL COMMENT '内容，仅用于单页内容',
  `has_cover` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启封面',
  `cover` varchar(255) NOT NULL COMMENT '分类封面图',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `sort` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '显示顺序',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示，1：显示，0：不显示，默认1',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `add_time` datetime NOT NULL COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `flag` (`flag`) COMMENT '标示符'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of go_category
-- ----------------------------

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `work` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location
-- ----------------------------

-- ----------------------------
-- Table structure for reset_password
-- ----------------------------
DROP TABLE IF EXISTS `reset_password`;
CREATE TABLE `reset_password` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reset_password
-- ----------------------------
INSERT INTO `reset_password` VALUES ('5', '15057518924@163.com', '1dd4800219ef1b22923d998beffa8e3a');
INSERT INTO `reset_password` VALUES ('6', '15057518924@163.com', '1dd4800219ef1b22923d998beffa8e3a');
INSERT INTO `reset_password` VALUES ('4', '15057518924@163.com', '1dd4800219ef1b22923d998beffa8e3a');
INSERT INTO `reset_password` VALUES ('7', '15057518924@163.com', '1dd4800219ef1b22923d998beffa8e3a');
INSERT INTO `reset_password` VALUES ('8', '15057518924@163.com', '7b6fd504354c0d869b55aa67f492df69');
INSERT INTO `reset_password` VALUES ('9', '15057518924@163.com', '7b6fd504354c0d869b55aa67f492df69');
INSERT INTO `reset_password` VALUES ('10', '15057518924@163.com', 'fdbf1ead74e5e1e6ba2aea6efdbb23a0');
INSERT INTO `reset_password` VALUES ('11', '15057518924@163.com', 'fdbf1ead74e5e1e6ba2aea6efdbb23a0');
INSERT INTO `reset_password` VALUES ('12', '15057518924@163.com', 'fdbf1ead74e5e1e6ba2aea6efdbb23a0');
INSERT INTO `reset_password` VALUES ('13', '15057518924@163.com', 'fdbf1ead74e5e1e6ba2aea6efdbb23a0');

-- ----------------------------
-- Table structure for tp_admin_access
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_access`;
CREATE TABLE `tp_admin_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_access
-- ----------------------------

-- ----------------------------
-- Table structure for tp_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_group`;
CREATE TABLE `tp_admin_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'icon小图标',
  `sort` int(11) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_group
-- ----------------------------
INSERT INTO `tp_admin_group` VALUES ('1', '系统管理', '&#xe61d;', '2', '1', '', '0', '1450752856', '1481180175');
INSERT INTO `tp_admin_group` VALUES ('2', '工具', '&#xe616;', '3', '1', '', '0', '1476016712', '1481180175');

-- ----------------------------
-- Table structure for tp_admin_node
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_node`;
CREATE TABLE `tp_admin_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '节点类型，1-控制器 | 0-方法',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`),
  KEY `isdelete` (`isdelete`),
  KEY `sort` (`sort`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_node
-- ----------------------------
INSERT INTO `tp_admin_node` VALUES ('1', '0', '1', 'Admin', '后台管理', '后台管理，不可更改', '1', '1', '1', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('2', '1', '1', 'AdminGroup', '分组管理', ' ', '2', '1', '1', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('3', '1', '1', 'AdminNode', '节点管理', ' ', '2', '1', '2', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('4', '1', '1', 'AdminRole', '角色管理', ' ', '2', '1', '3', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('5', '1', '1', 'AdminUser', '用户管理', '', '2', '1', '4', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('6', '1', '0', 'Index', '首页', '', '2', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('7', '6', '0', 'welcome', '欢迎页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('8', '6', '0', 'index', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('9', '1', '2', 'Generate', '代码自动生成', '', '2', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('10', '1', '2', 'Demo/excel', 'Excel一键导出', '', '2', '0', '2', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('11', '1', '2', 'Demo/download', '下载', '', '2', '0', '3', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('12', '1', '2', 'Demo/downloadImage', '远程图片下载', '', '2', '0', '4', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('13', '1', '2', 'Demo/mail', '邮件发送', '', '2', '0', '5', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('14', '1', '2', 'Demo/qiniu', '七牛上传', '', '2', '0', '6', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('15', '1', '2', 'Demo/hashids', 'ID加密', '', '2', '0', '7', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('16', '1', '2', 'Demo/layer', '丰富弹层', '', '2', '0', '8', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('17', '1', '2', 'Demo/tableFixed', '表格溢出', '', '2', '0', '9', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('18', '1', '2', 'Demo/ueditor', '百度编辑器', '', '2', '0', '10', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('19', '1', '2', 'Demo/imageUpload', '图片上传', '', '2', '0', '11', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('20', '1', '2', 'Demo/qrcode', '二维码生成', '', '2', '0', '12', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('21', '1', '1', 'NodeMap', '节点图', '', '2', '1', '5', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('22', '1', '1', 'WebLog', '操作日志', '', '2', '1', '6', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('23', '1', '1', 'LoginLog', '登录日志', '', '2', '1', '7', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('59', '1', '2', 'one.two.three.Four/index', '多级节点', '', '2', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('24', '23', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('25', '22', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('26', '22', '0', 'detail', '详情', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('27', '21', '0', 'load', '自动导入', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('28', '21', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('29', '5', '0', 'add', '添加', '', '3', '0', '51', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('30', '21', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('31', '21', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('32', '9', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('33', '9', '0', 'generate', '生成方法', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('34', '5', '0', 'password', '修改密码', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('35', '5', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('36', '5', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('37', '5', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('38', '4', '0', 'user', '用户列表', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('39', '4', '0', 'access', '授权', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('40', '4', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('41', '4', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('42', '4', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('43', '4', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('44', '4', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('45', '3', '0', 'load', '节点快速导入测试', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('46', '3', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('47', '3', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('48', '3', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('49', '3', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('50', '3', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('51', '2', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('52', '2', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('53', '2', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('54', '2', '0', 'forbid', '默认禁用操作', '', '3', '0', '51', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('55', '2', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('56', '1', '2', 'one', '一级菜单', '', '2', '1', '13', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('60', '56', '2', 'two', '二级', '', '3', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('61', '60', '2', 'three', '三级菜单', '', '4', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('62', '61', '2', 'Four', '四级菜单', '', '5', '1', '50', '1', '0');

-- ----------------------------
-- Table structure for tp_admin_node_load
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_node_load`;
CREATE TABLE `tp_admin_node_load` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='节点快速导入';

-- ----------------------------
-- Records of tp_admin_node_load
-- ----------------------------
INSERT INTO `tp_admin_node_load` VALUES ('4', '编辑', 'edit', '1');
INSERT INTO `tp_admin_node_load` VALUES ('5', '添加', 'add', '1');
INSERT INTO `tp_admin_node_load` VALUES ('6', '首页', 'index', '1');
INSERT INTO `tp_admin_node_load` VALUES ('7', '删除', 'delete', '1');

-- ----------------------------
-- Table structure for tp_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_role`;
CREATE TABLE `tp_admin_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`),
  KEY `isdelete` (`isdelete`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_role
-- ----------------------------
INSERT INTO `tp_admin_role` VALUES ('1', '0', '领导组', ' ', '1', '0', '1208784792', '1254325558');
INSERT INTO `tp_admin_role` VALUES ('2', '0', '网编组', ' ', '0', '0', '1215496283', '1454049929');

-- ----------------------------
-- Table structure for tp_admin_role_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_role_user`;
CREATE TABLE `tp_admin_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of tp_admin_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for tp_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_user`;
CREATE TABLE `tp_admin_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(32) NOT NULL DEFAULT '',
  `realname` varchar(255) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` char(15) NOT NULL DEFAULT '',
  `login_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `accountpassword` (`account`,`password`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_user
-- ----------------------------
INSERT INTO `tp_admin_user` VALUES ('1', 'admin', '超级管理员', 'e10adc3949ba59abbe56e057f20f883e', '1481333646', '127.0.0.1', '385', 'tianpian0805@gmail.com', '13121126169', '我是超级管理员', '1', '0', '1222907803', '1451033528');
INSERT INTO `tp_admin_user` VALUES ('2', 'demo', '测试', 'e10adc3949ba59abbe56e057f20f883e', '1481206367', '127.0.0.1', '5', '', '', '', '1', '0', '1476777133', '1477399793');

-- ----------------------------
-- Table structure for tp_file
-- ----------------------------
DROP TABLE IF EXISTS `tp_file`;
CREATE TABLE `tp_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '文件类型，1-image | 2-file',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `original` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_file
-- ----------------------------

-- ----------------------------
-- Table structure for tp_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tp_login_log`;
CREATE TABLE `tp_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `login_ip` char(15) NOT NULL DEFAULT '',
  `login_location` varchar(255) NOT NULL DEFAULT '',
  `login_browser` varchar(255) NOT NULL DEFAULT '',
  `login_os` varchar(255) NOT NULL DEFAULT '',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for tp_node_map
-- ----------------------------
DROP TABLE IF EXISTS `tp_node_map`;
CREATE TABLE `tp_node_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '节点图描述',
  PRIMARY KEY (`id`),
  KEY `map` (`method`,`module`,`controller`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点图';

-- ----------------------------
-- Records of tp_node_map
-- ----------------------------

-- ----------------------------
-- Table structure for tp_one_two_three_four
-- ----------------------------
DROP TABLE IF EXISTS `tp_one_two_three_four`;
CREATE TABLE `tp_one_two_three_four` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '四级控制器主键',
  `field1` varchar(255) DEFAULT NULL COMMENT '字段一',
  `option` varchar(255) DEFAULT NULL COMMENT '选填',
  `select` varchar(255) DEFAULT NULL COMMENT '下拉框',
  `radio` varchar(255) DEFAULT NULL COMMENT '单选',
  `checkbox` varchar(255) DEFAULT NULL COMMENT '复选框',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `textarea` varchar(255) DEFAULT NULL COMMENT '文本域',
  `date` varchar(255) DEFAULT NULL COMMENT '日期',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `sort` smallint(5) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态，1-删除 | 0-正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='四级控制器';

-- ----------------------------
-- Records of tp_one_two_three_four
-- ----------------------------
INSERT INTO `tp_one_two_three_four` VALUES ('1', 'yuan1994', 'tpadmin', '2', '1', null, '2222', 'https://github.com/yuan1994/tpadmin', '2016-12-07', '13012345678', 'tianpian0805@gmail.com', '50', '1', '0', '1481947278', '1481947353');

-- ----------------------------
-- Table structure for tp_web_log_001
-- ----------------------------
DROP TABLE IF EXISTS `tp_web_log_001`;
CREATE TABLE `tp_web_log_001` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '访客ip',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '访客地址',
  `os` varchar(255) NOT NULL DEFAULT '' COMMENT '操作系统',
  `browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览器',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `data` text COMMENT '请求的param数据，serialize后的',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `ip` (`ip`),
  KEY `create_at` (`create_at`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站日志';

-- ----------------------------
-- Records of tp_web_log_001
-- ----------------------------

-- ----------------------------
-- Table structure for tp_web_log_all
-- ----------------------------
DROP TABLE IF EXISTS `tp_web_log_all`;
CREATE TABLE `tp_web_log_all` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '访客ip',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '访客地址',
  `os` varchar(255) NOT NULL DEFAULT '' COMMENT '操作系统',
  `browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览器',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `data` text COMMENT '请求的param数据，serialize后的',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE,
  KEY `create_at` (`create_at`) USING BTREE
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC INSERT_METHOD=LAST UNION=(`tp_web_log_001`) COMMENT='网站日志';

-- ----------------------------
-- Records of tp_web_log_all
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(22) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `sex` varchar(22) NOT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `age` int(22) NOT NULL,
  `time` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `file` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'HYAC', 'e10adc3949ba59abbe56e057f20f883e', 'cda1be6b6c9d7c88439e2426bee1ad6e', '0', '', '0', '', '', '1', '', '15057518924@163.com');
INSERT INTO `user` VALUES ('24', 'dongmw1991', null, null, '男', './Uploads/2017-03-14/58c8020f3d90b.jpg', '11', '2017-04-07', '身兼数职', '1', './Uploads/', 'dongmw1991@aliyun.com');
INSERT INTO `user` VALUES ('27', 'Hisy', null, null, '男', './Uploads/2017-03-15/58c8c33b64fbd.jpg', '11', '2017-04-05', '身兼数职', '1', './Uploads/2017-03-15/58c8c33b676ce.jpg', 'dongmw91@126.com');

-- ----------------------------
-- Table structure for user_depart
-- ----------------------------
DROP TABLE IF EXISTS `user_depart`;
CREATE TABLE `user_depart` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `user_id` int(22) NOT NULL,
  `depart_id` int(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_depart
-- ----------------------------
INSERT INTO `user_depart` VALUES ('1', '6', '4');
INSERT INTO `user_depart` VALUES ('2', '6', '7');
INSERT INTO `user_depart` VALUES ('3', '6', '8');
INSERT INTO `user_depart` VALUES ('4', '7', '4');
INSERT INTO `user_depart` VALUES ('5', '7', '7');
INSERT INTO `user_depart` VALUES ('6', '7', '8');
INSERT INTO `user_depart` VALUES ('7', '8', '4');
INSERT INTO `user_depart` VALUES ('8', '9', '4');
INSERT INTO `user_depart` VALUES ('9', '10', '8');
INSERT INTO `user_depart` VALUES ('10', '11', '7');
INSERT INTO `user_depart` VALUES ('11', '12', '4');
INSERT INTO `user_depart` VALUES ('12', '13', '8');
INSERT INTO `user_depart` VALUES ('13', '14', '8');
INSERT INTO `user_depart` VALUES ('14', '15', '4');
INSERT INTO `user_depart` VALUES ('15', '15', '7');
INSERT INTO `user_depart` VALUES ('16', '15', '8');
INSERT INTO `user_depart` VALUES ('17', '16', '4');
INSERT INTO `user_depart` VALUES ('18', '17', '8');
INSERT INTO `user_depart` VALUES ('19', '18', '7');
INSERT INTO `user_depart` VALUES ('20', '19', '8');
INSERT INTO `user_depart` VALUES ('21', '20', '4');
INSERT INTO `user_depart` VALUES ('22', '21', '8');
INSERT INTO `user_depart` VALUES ('23', '22', '4');
INSERT INTO `user_depart` VALUES ('24', '23', '4');
INSERT INTO `user_depart` VALUES ('25', '24', '4');
INSERT INTO `user_depart` VALUES ('26', '25', '4');
INSERT INTO `user_depart` VALUES ('27', '26', '4');
INSERT INTO `user_depart` VALUES ('28', '27', '4');
INSERT INTO `user_depart` VALUES ('29', '27', '7');
INSERT INTO `user_depart` VALUES ('30', '27', '8');
SET FOREIGN_KEY_CHECKS=1;
