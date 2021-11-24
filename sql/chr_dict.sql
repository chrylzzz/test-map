/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : testmap

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 24/11/2021 19:54:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chr_dict
-- ----------------------------
DROP TABLE IF EXISTS `chr_dict`;
CREATE TABLE `chr_dict` (
  `dict_id` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `dict_code` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dict_name` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_code` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of chr_dict
-- ----------------------------
BEGIN;
INSERT INTO `chr_dict` VALUES ('1', '01', '一级', '00');
INSERT INTO `chr_dict` VALUES ('2', '0101', '二级', '01');
INSERT INTO `chr_dict` VALUES ('3', '0102', '二级', '01');
INSERT INTO `chr_dict` VALUES ('4', '010101', '三级', '0101');
INSERT INTO `chr_dict` VALUES ('5', '010102', '三级', '0101');
INSERT INTO `chr_dict` VALUES ('6', '010103', '三级', '0102');
INSERT INTO `chr_dict` VALUES ('7', '02', '一级', '00');
INSERT INTO `chr_dict` VALUES ('8', '0201', '二级', '02');
INSERT INTO `chr_dict` VALUES ('9', '020101', '三级', '02011');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
