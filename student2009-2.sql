/*
Navicat MySQL Data Transfer

Source Server         : 我的本地数据库连接
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : zhichengdatatest

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2021-04-16 17:11:47
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `class`
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '班级id',
  `name` varchar(20) DEFAULT NULL COMMENT '班级名称',
  `teacher_id` int(11) DEFAULT NULL COMMENT '班主任id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='班级';

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO class VALUES ('1', '数学系一班', '1');
INSERT INTO class VALUES ('2', '语文系二班', '2');
INSERT INTO class VALUES ('3', '英语系三班 ', '3');
INSERT INTO class VALUES ('4', '体育系', '4');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '科目id',
  `cNo` varchar(20) DEFAULT NULL COMMENT '课程编码',
  `name` varchar(20) DEFAULT NULL COMMENT '科目名称',
  `teacher_id` int(11) DEFAULT NULL COMMENT '科目教师id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='科目';

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO course VALUES ('1', 'C01', '数学', '1');
INSERT INTO course VALUES ('2', 'C02', 'C语言', '2');
INSERT INTO course VALUES ('3', 'C03', '数据结构', '3');
INSERT INTO course VALUES ('4', 'C04', '英语', '4');

-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系id',
  `name` varchar(20) DEFAULT NULL COMMENT '系名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系别';

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO dept VALUES ('1', '数学系');
INSERT INTO dept VALUES ('2', '计算机系');
INSERT INTO dept VALUES ('3', '信息化');
INSERT INTO dept VALUES ('4', '生物');
INSERT INTO dept VALUES ('5', '英语系');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '成绩id',
  `stu_id` int(20) DEFAULT NULL COMMENT '学生id',
  `course_id` int(11) DEFAULT NULL COMMENT '科目id',
  `score` double(4,2) DEFAULT NULL COMMENT '成绩',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='成绩';

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO score VALUES ('1', '1', '1', '88.00');
INSERT INTO score VALUES ('2', '2', '1', '60.00');
INSERT INTO score VALUES ('3', '3', '1', '70.00');
INSERT INTO score VALUES ('4', '4', '1', '88.00');
INSERT INTO score VALUES ('5', '5', '1', '90.00');
INSERT INTO score VALUES ('6', '6', '1', '99.00');
INSERT INTO score VALUES ('7', '7', '1', '45.00');
INSERT INTO score VALUES ('8', '8', '1', '91.00');
INSERT INTO score VALUES ('9', '9', '1', '60.00');
INSERT INTO score VALUES ('10', '10', '1', '70.00');
INSERT INTO score VALUES ('11', '11', '1', '80.00');
INSERT INTO score VALUES ('12', null, '1', '66.00');
INSERT INTO score VALUES ('13', null, '1', '66.00');
INSERT INTO score VALUES ('14', null, '1', '80.00');
INSERT INTO score VALUES ('15', null, '1', '90.00');
INSERT INTO score VALUES ('16', '1', '2', '50.00');
INSERT INTO score VALUES ('17', '2', '2', '60.00');
INSERT INTO score VALUES ('18', '3', '2', '70.00');
INSERT INTO score VALUES ('19', '4', '2', '88.00');
INSERT INTO score VALUES ('20', '5', '2', '90.00');
INSERT INTO score VALUES ('21', '6', '2', '99.00');
INSERT INTO score VALUES ('22', '7', '2', '45.00');
INSERT INTO score VALUES ('23', '8', '2', '45.00');
INSERT INTO score VALUES ('24', '9', '2', '60.00');
INSERT INTO score VALUES ('25', '10', '2', '70.00');
INSERT INTO score VALUES ('26', '11', '2', '80.00');
INSERT INTO score VALUES ('27', null, '2', '66.00');
INSERT INTO score VALUES ('28', null, '2', '96.00');
INSERT INTO score VALUES ('29', null, '2', '80.00');
INSERT INTO score VALUES ('30', null, '2', '90.00');
INSERT INTO score VALUES ('35', '5', '3', '90.00');
INSERT INTO score VALUES ('36', '6', '3', '99.00');
INSERT INTO score VALUES ('37', '7', '3', '45.00');
INSERT INTO score VALUES ('38', '8', '3', '45.00');
INSERT INTO score VALUES ('39', '9', '3', '60.00');
INSERT INTO score VALUES ('40', '10', '3', '70.00');
INSERT INTO score VALUES ('41', null, '3', '80.00');
INSERT INTO score VALUES ('42', null, '3', '66.00');
INSERT INTO score VALUES ('43', null, '3', '66.00');
INSERT INTO score VALUES ('44', null, '3', '80.00');
INSERT INTO score VALUES ('45', null, '3', '90.00');
INSERT INTO score VALUES ('46', '1', '4', '70.00');
INSERT INTO score VALUES ('47', '2', '4', '80.00');
INSERT INTO score VALUES ('48', '3', '4', '66.00');
INSERT INTO score VALUES ('49', '4', '4', '96.00');
INSERT INTO score VALUES ('50', '5', '4', '80.00');
INSERT INTO score VALUES ('51', '6', '4', '90.00');
INSERT INTO score VALUES ('52', '7', '4', '90.00');
INSERT INTO score VALUES ('53', '8', '4', '99.00');
INSERT INTO score VALUES ('54', '9', '4', '45.00');
INSERT INTO score VALUES ('55', '8', '4', '45.00');
INSERT INTO score VALUES ('56', '9', '4', '60.00');
INSERT INTO score VALUES ('57', '10', '4', '70.00');
INSERT INTO score VALUES ('58', null, '4', '80.00');
INSERT INTO score VALUES ('59', null, '4', '66.00');
INSERT INTO score VALUES ('60', null, '4', '66.00');
INSERT INTO score VALUES ('61', null, '4', '80.00');
INSERT INTO score VALUES ('62', null, '4', '90.00');

-- ----------------------------
-- Table structure for `stu`
-- ----------------------------
DROP TABLE IF EXISTS `stu`;
CREATE TABLE `stu` (
  `id` int(11) NOT NULL COMMENT '主键',
  `name` varchar(20) DEFAULT NULL COMMENT '学生名称',
  `gender` varchar(4) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `e_mail` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `class_id` int(11) DEFAULT NULL COMMENT '班级id',
  `dept_id` int(11) DEFAULT NULL COMMENT '系id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='学生';

-- ----------------------------
-- Records of stu
-- ----------------------------
INSERT INTO stu VALUES ('1', '张一', '男', '21', '18967656545', '449086935@qq.com', '1', '1');
INSERT INTO stu VALUES ('2', '张二', '男', '21', '18967656545', '449086935@qq.com', '1', '1');
INSERT INTO stu VALUES ('3', '张三', '女', '21', '18967656545', '449086935@qq.com', '1', '1');
INSERT INTO stu VALUES ('4', '汪雪', '女', '19', '18967656545', '449086935@qq.com', '1', '1');
INSERT INTO stu VALUES ('5', '五yiyi', '男', '21', '18967656545', '449086935@qq.com', '1', '1');
INSERT INTO stu VALUES ('6', '李一', '男', '18', '18967656545', '449086935@qq.com', '2', '2');
INSERT INTO stu VALUES ('7', '李二', '男', '21', '18967656545', '449086935@qq.com', '2', '2');
INSERT INTO stu VALUES ('8', '李三', '女', '21', '18967656545', '449086935@qq.com', '2', '2');
INSERT INTO stu VALUES ('9', '李四', '女', '17', '18967656545', '449086935@qq.com', '2', '2');
INSERT INTO stu VALUES ('10', '李五123132', '男', '21', '18967656545', '449086935@qq.com', '2', '2');
INSERT INTO stu VALUES ('11', '李小波', '男', '21', '18967656545', '449086935@qq.com', '3', '3');
INSERT INTO stu VALUES ('12', '王二', '男', '18', '18967656545', '449086935@qq.com', '3', '3');
INSERT INTO stu VALUES ('13', '王三', '女', '21', '18967656545', '449086935@qq.com', '3', '3');
INSERT INTO stu VALUES ('14', '王四', '女', null, '18967656545', '449086935@qq.com', '5', '3');
INSERT INTO stu VALUES ('15', '王五', '女', '23', '18967656545', '449086935@qq.com', '5', '3');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '老师id',
  `name` varchar(20) DEFAULT NULL COMMENT '老师名称',
  `gender` varchar(4) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `e_mail` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `dept_id` int(11) DEFAULT NULL COMMENT '系id',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='教师';

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO teacher VALUES ('1', '王大海', '男', '23', '449086935@qq.com', '1', '18305958724');
INSERT INTO teacher VALUES ('2', '王发', '女', '30', '449086935@lang.com', '2', '18305958724');
INSERT INTO teacher VALUES ('3', '王小丫', '女', '35', '449086935@qq.com', '3', '15905958724');
INSERT INTO teacher VALUES ('4', '李大难', '男', '23', '449086935@qq.com', '1', '18305958724');
INSERT INTO teacher VALUES ('5', '刘云生', '男', '44', '449086935@qq.com', '1', '18305958724');
INSERT INTO teacher VALUES ('6', '刘海华', '男', '44', '449086935@qq.com', null, '18305958724');
INSERT INTO teacher VALUES ('15', '王海峰', '男', '33', '4489786@qq.com', '3', '17689876545');
INSERT INTO teacher VALUES ('16', '王海峰', '男', '33', '4489786@qq.com', '3', '17689876545');
INSERT INTO teacher VALUES ('17', '王海峰', '男', '33', '4489786@qq.com', '3', '17689876545');
INSERT INTO teacher VALUES ('18', '王海峰', '男', '33', '4489786@qq.com', '3', '17689876545');
INSERT INTO teacher VALUES ('19', '王海峰', '男', '33', '4489786@qq.com', '3', '17689876545');
INSERT INTO teacher VALUES ('20', '王海峰', '男', '33', '4489786@qq.com', '3', '17689876545');

-- ----------------------------
-- Procedure structure for `changeSelect`
-- ----------------------------
DROP PROCEDURE IF EXISTS `changeSelect`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `changeSelect`(in vara int)
BEGIN 

if vara=0 THEN
SELECT * FROM stu;
ELSE
SELECT * FROM teacher;
end if;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `ifElse`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ifElse`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ifElse`(in vara int)
BEGIN
if vara=0 then
SELECT * from stu;
else
SELECT * FROM teacher;
end if;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `inout_param`
-- ----------------------------
DROP PROCEDURE IF EXISTS `inout_param`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inout_param`(INOUT `first` int)
BEGIN
	#Routine body goes here...
	
	set `first`=12;
	

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `proc1`
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc1`(OUT s int)
BEGIN 
SELECT COUNT(*) INTO s FROM stu; 
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `proc2`
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc2`(OUT s int)
BEGIN 
SELECT COUNT(*) INTO s FROM stu; 
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `repeatDo`
-- ----------------------------
DROP PROCEDURE IF EXISTS `repeatDo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `repeatDo`(in varb int)
BEGIN
REPEAT
	INSERT INTO dept(`name`) VALUES (CONCAT("班级",varb));
set 	varb=varb-1;
UNTIL varb>0 END REPEAT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `stucount`
-- ----------------------------
DROP PROCEDURE IF EXISTS `stucount`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `stucount`(OUT s int)
BEGIN 
SELECT COUNT(*) INTO s FROM stu; 
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `test`
-- ----------------------------
DROP PROCEDURE IF EXISTS `test`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test`(in p_in int)
BEGIN
 SELECT p_in;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `whileChange`
-- ----------------------------
DROP PROCEDURE IF EXISTS `whileChange`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `whileChange`(in varb int)
BEGIN
WHILE varb>0 DO
INSERT INTO dept(`name`) VALUES (CONCAT("班级",varb));
SET varb=varb-1;
END WHILE;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `whileDo`
-- ----------------------------
DROP PROCEDURE IF EXISTS `whileDo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `whileDo`(in vara int)
BEGIN
while vara>0 DO
INSERT INTO dept(`name`) VALUES (CONCAT("系别",vara));
set vara=vara-1;

END WHILE;

END
;;
DELIMITER ;
