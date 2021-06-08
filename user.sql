/*
 Navicat Premium Data Transfer

 Source Server         : 本地连接
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : 127.0.0.1:3306
 Source Schema         : fdsx3

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 21/05/2021 14:43:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '男' COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updatetime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '222222', '2222222', '王小男', '女', '18305958725', '449086945@qq.com', '2021-05-19 15:22:57', '2021-05-19 15:33:54');
INSERT INTO `user` VALUES (2, '111111', '2222222', '王111', '女', '18305958725', '449086945@qq.com', '2021-05-19 15:22:57', '2021-05-19 16:47:09');
INSERT INTO `user` VALUES (3, '222222', '2222222', '王小男', '女', '18305958725', '449086945@qq.com', '2021-05-19 15:22:57', '2021-05-19 15:33:54');
INSERT INTO `user` VALUES (5, '333333', '33333312', '33333312', '男', '33333312', '33333312', '2021-05-19 17:16:16', '2021-05-19 17:27:52');
INSERT INTO `user` VALUES (6, '444444', '444444', '444444', '男', '444444666', '444444555', '2021-05-19 17:16:37', '2021-05-19 17:26:33');

SET FOREIGN_KEY_CHECKS = 1;
