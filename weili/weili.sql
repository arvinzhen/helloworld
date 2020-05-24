/*
Navicat MySQL Data Transfer

Source Server         : arvin's DB
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : weili

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-10-14 17:51:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `abouts`
-- ----------------------------
DROP TABLE IF EXISTS `abouts`;
CREATE TABLE `abouts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tag` char(1) NOT NULL DEFAULT '0',
  `title` varchar(20) NOT NULL,
  `content` text,
  `imglist` varchar(50) DEFAULT NULL,
  `releasetime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of abouts
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `level` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '1:normal,9:topest',
  `username` varchar(20) NOT NULL,
  `userpwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `releasetime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', '测试员9', 'd93a5def7511da3d0f2d171d9c344e91', '1571038677');
INSERT INTO `users` VALUES ('2', '1', '测试员9', 'd93a5def7511da3d0f2d171d9c344e91', '1571038683');
