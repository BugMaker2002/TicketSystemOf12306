/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50642
Source Host           : localhost:3306
Source Database       : hhsx

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2023-05-11 10:35:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `order_list`
-- ----------------------------
DROP TABLE IF EXISTS `order_list`;
CREATE TABLE `order_list` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passenger_phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passenger_id_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_station_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_station_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_station_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_station_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carriage_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_money` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_create_time` datetime DEFAULT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_start_date` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `upn` (`user_phone_number`),
  KEY `tn` (`train_no`),
  KEY `passenger_phone_number` (`passenger_phone_number`),
  CONSTRAINT `passenger_phone_number` FOREIGN KEY (`passenger_phone_number`) REFERENCES `passenger` (`passenger_phone_number`),
  CONSTRAINT `tn` FOREIGN KEY (`train_no`) REFERENCES `train_info` (`train_no`),
  CONSTRAINT `upn` FOREIGN KEY (`user_phone_number`) REFERENCES `user` (`user_phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order_list
-- ----------------------------
INSERT INTO `order_list` VALUES ('1', 'admin', '13385823709', '123456', '1001', '46 ', '兰州', '21 ', '三亚', '1145 ', '1215', '25', '2022-03-12 00:00:00', '未支付', '2022-03-19 00:00:00');
INSERT INTO `order_list` VALUES ('2', 'admin', '15349816070', '340825', '1002', '49 ', '西宁', '22 ', '齐齐哈尔南', '1451 ', '1034', '35', '2022-03-13 00:00:00', '已支付', '2022-03-24 00:00:00');
INSERT INTO `order_list` VALUES ('3', 'admin', '13385823709', '123456', '1003', '50 ', '九江', '23 ', '珲春', '1324 ', '125', '25', '2022-03-11 00:00:00', '未支付', '2022-03-22 00:00:00');
INSERT INTO `order_list` VALUES ('4', 'admin', '15349816070', '340825', '1004', '39 ', '上海南', '16 ', '哈尔滨西', '1145 ', '694', '35', '2022-04-08 00:00:00', '未支付', '2022-04-19 00:00:00');
INSERT INTO `order_list` VALUES ('5', 'admin', '13385823709', '123456', '1005', '52 ', '西安', '25 ', '牡丹江', '1451 ', '453', '35', '2022-05-04 00:00:00', '已支付', '2022-05-24 00:00:00');
INSERT INTO `order_list` VALUES ('6', 'admin', '15349816070', '340825', '1006', '53 ', '鄂尔多斯', '26 ', '长春', '1324 ', '452', '55', '2022-08-11 00:00:00', '已支付', '2022-08-22 00:00:00');
INSERT INTO `order_list` VALUES ('7', 'admin', '13385823709', '123456', '1007', '54 ', '通海', '13 ', '吉林', '1451 ', '453', '25', '2022-03-10 00:00:00', '已支付', '2022-03-22 00:00:00');
INSERT INTO `order_list` VALUES ('8', 'admin', '15349816070', '340825', '1008', '55 ', '玉溪', '28 ', '广州南', '1324 ', '523', '35', '2022-04-06 00:00:00', '已支付', '2022-04-19 00:00:00');
INSERT INTO `order_list` VALUES ('9', 'admin', '13385823709', '123456', '1009', '56 ', '攀枝花南', '29 ', '贵阳北', '1145 ', '896', '25', '2022-05-12 00:00:00', '已支付', '2022-05-24 00:00:00');
INSERT INTO `order_list` VALUES ('10', 'admin', '15349816070', '340825', '1010', '56 ', '攀枝花南', '30 ', '南宁东', '1451 ', '432', '35', '2022-08-17 00:00:00', '已支付', '2022-08-22 00:00:00');
INSERT INTO `order_list` VALUES ('11', 'admin', '13385823709', '123456', '1011', '58 ', '兰州', '31 ', '上海虹桥', '1324 ', '123', '55', '2022-03-11 00:00:00', '未支付', '2022-03-22 00:00:00');
INSERT INTO `order_list` VALUES ('12', 'admin', '13385823709', '123456', '1012', '59 ', '张家界西', '32 ', '宁波', '1388 ', '543', '65', '2022-04-07 00:00:00', '未支付', '2022-04-19 00:00:00');
INSERT INTO `order_list` VALUES ('13', 'admin', '13385823709', '123456', '1013', '47 ', '重庆北', '33 ', '深圳北', '1418 ', '245', '25', '2022-05-17 00:00:00', '未支付', '2022-05-24 00:00:00');
INSERT INTO `order_list` VALUES ('14', 'admin', '15349816070', '340825', '1014', '59 ', '张家界西', '6 ', '深圳', '1449 ', '876', '35', '2022-08-13 00:00:00', '已支付', '2022-08-22 00:00:00');
INSERT INTO `order_list` VALUES ('15', 'admin', '15349816070', '340825', '1015', '62 ', '成都东', '35 ', '厦门', '1479 ', '567', '45', '2022-03-12 00:00:00', '未支付', '2022-03-22 00:00:00');
INSERT INTO `order_list` VALUES ('16', 'admin', '13385823709', '123456', '1016', '62 ', '成都东', '36 ', '福州', '1510 ', '687', '35', '2022-04-04 00:00:00', '已支付', '2022-04-19 00:00:00');
INSERT INTO `order_list` VALUES ('17', 'admin', '13385823709', '123456', '1017', '9 ', '上海', '37 ', '深圳', '1541 ', '354', '52', '2022-05-15 00:00:00', '已支付', '2022-05-24 00:00:00');
INSERT INTO `order_list` VALUES ('18', 'admin', '15349816070', '340825', '1018', '65 ', '济南西', '5 ', '北京', '1451 ', '487', '25', '2022-08-13 00:00:00', '已支付', '2022-08-22 00:00:00');
INSERT INTO `order_list` VALUES ('19', 'admin', '15349816070', '340825', '1019', '66 ', '青岛北', '39 ', '上海南', '1324 ', '534', '35', '2022-03-03 00:00:00', '已支付', '2022-03-22 00:00:00');

-- ----------------------------
-- Table structure for `passenger`
-- ----------------------------
DROP TABLE IF EXISTS `passenger`;
CREATE TABLE `passenger` (
  `user_phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passenger_phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passenger_real_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passenger_id_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passenger_type` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `passenger_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`passenger_phone_number`,`user_phone_number`),
  KEY `user_phone_number` (`user_phone_number`),
  CONSTRAINT `user_phone_number` FOREIGN KEY (`user_phone_number`) REFERENCES `user` (`user_phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of passenger
-- ----------------------------
INSERT INTO `passenger` VALUES ('admin', '13385823709', '奇迹', '123456', '0', '太湖');
INSERT INTO `passenger` VALUES ('admin', '15349816070', '丁真', '340825', '0', '理塘');

-- ----------------------------
-- Table structure for `seat`
-- ----------------------------
DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat` (
  `train_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carriage_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat_count` int(11) NOT NULL,
  PRIMARY KEY (`train_no`,`carriage_no`),
  CONSTRAINT `train_no` FOREIGN KEY (`train_no`) REFERENCES `train_info` (`train_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of seat
-- ----------------------------
INSERT INTO `seat` VALUES ('1001', '15 ', '0', '1145');
INSERT INTO `seat` VALUES ('1002', '16 ', '1', '1451');
INSERT INTO `seat` VALUES ('1003', '13 ', '2', '1324');
INSERT INTO `seat` VALUES ('1004', '12 ', '1', '1145');
INSERT INTO `seat` VALUES ('1005', '17 ', '2', '1451');
INSERT INTO `seat` VALUES ('1006', '24 ', '0', '1324');
INSERT INTO `seat` VALUES ('1007', '19 ', '1', '1451');
INSERT INTO `seat` VALUES ('1008', '27 ', '1', '1324');
INSERT INTO `seat` VALUES ('1009', '23 ', '2', '1145');
INSERT INTO `seat` VALUES ('1010', '21 ', '0', '1451');
INSERT INTO `seat` VALUES ('1011', '14 ', '1', '1324');
INSERT INTO `seat` VALUES ('1012', '12 ', '2', '1388');
INSERT INTO `seat` VALUES ('1013', '17 ', '1', '1418');
INSERT INTO `seat` VALUES ('1014', '24 ', '2', '1449');
INSERT INTO `seat` VALUES ('1015', '19 ', '0', '1479');
INSERT INTO `seat` VALUES ('1016', '23 ', '1', '1510');
INSERT INTO `seat` VALUES ('1017', '21 ', '1', '1541');
INSERT INTO `seat` VALUES ('1018', '14 ', '1', '1451');
INSERT INTO `seat` VALUES ('1019', '12 ', '1', '1324');
INSERT INTO `seat` VALUES ('1020', '17 ', '2', '1451');
INSERT INTO `seat` VALUES ('1021', '24 ', '0', '1324');
INSERT INTO `seat` VALUES ('1022', '15 ', '1', '1449');
INSERT INTO `seat` VALUES ('1023', '16 ', '2', '1479');
INSERT INTO `seat` VALUES ('1024', '13 ', '1', '1510');
INSERT INTO `seat` VALUES ('1025', '12 ', '2', '1541');
INSERT INTO `seat` VALUES ('1026', '17 ', '0', '1451');
INSERT INTO `seat` VALUES ('1027', '24 ', '1', '1324');
INSERT INTO `seat` VALUES ('1028', '19 ', '1', '1451');
INSERT INTO `seat` VALUES ('1029', '27 ', '2', '1406');
INSERT INTO `seat` VALUES ('1030', '21 ', '0', '1393');
INSERT INTO `seat` VALUES ('1031', '14 ', '1', '1380');
INSERT INTO `seat` VALUES ('1032', '12 ', '2', '1367');
INSERT INTO `seat` VALUES ('1033', '17 ', '1', '1354');
INSERT INTO `seat` VALUES ('1034', '24 ', '2', '1341');
INSERT INTO `seat` VALUES ('1035', '19 ', '1', '1328');
INSERT INTO `seat` VALUES ('1036', '23 ', '2', '1315');
INSERT INTO `seat` VALUES ('1037', '21 ', '1', '1302');
INSERT INTO `seat` VALUES ('1038', '12 ', '2', '1451');
INSERT INTO `seat` VALUES ('1039', '17 ', '0', '1324');
INSERT INTO `seat` VALUES ('1040', '24 ', '1', '1451');
INSERT INTO `seat` VALUES ('1041', '19 ', '1', '1406');
INSERT INTO `seat` VALUES ('1042', '27 ', '2', '1393');
INSERT INTO `seat` VALUES ('1043', '21 ', '0', '1380');
INSERT INTO `seat` VALUES ('1044', '22 ', '2', '1367');
INSERT INTO `seat` VALUES ('1045', '23 ', '0', '1354');
INSERT INTO `seat` VALUES ('1046', '28 ', '1', '1341');
INSERT INTO `seat` VALUES ('1047', '26 ', '2', '1315');
INSERT INTO `seat` VALUES ('1048', '18 ', '1', '1302');
INSERT INTO `seat` VALUES ('1049', '26 ', '2', '1451');
INSERT INTO `seat` VALUES ('1050', '18 ', '1', '1324');
INSERT INTO `seat` VALUES ('1051', '21 ', '2', '1451');
INSERT INTO `seat` VALUES ('1052', '22 ', '1', '1406');
INSERT INTO `seat` VALUES ('1053', '23 ', '1', '1452');
INSERT INTO `seat` VALUES ('1054', '28 ', '1', '1474');
INSERT INTO `seat` VALUES ('1055', '26 ', '2', '1496');
INSERT INTO `seat` VALUES ('1056', '18 ', '0', '1518');
INSERT INTO `seat` VALUES ('1057', '23 ', '2', '1540');
INSERT INTO `seat` VALUES ('1058', '28 ', '0', '1562');
INSERT INTO `seat` VALUES ('1059', '15 ', '1', '1585');
INSERT INTO `seat` VALUES ('1060', '16 ', '2', '1607');
INSERT INTO `seat` VALUES ('1061', '13 ', '1', '1629');
INSERT INTO `seat` VALUES ('1062', '12 ', '2', '1651');
INSERT INTO `seat` VALUES ('1063', '17 ', '1', '1673');
INSERT INTO `seat` VALUES ('1064', '24 ', '2', '1695');
INSERT INTO `seat` VALUES ('1065', '19 ', '1', '1717');
INSERT INTO `seat` VALUES ('1066', '27 ', '1', '1739');
INSERT INTO `seat` VALUES ('1067', '21 ', '1', '1761');
INSERT INTO `seat` VALUES ('1068', '14 ', '2', '1783');
INSERT INTO `seat` VALUES ('1069', '26 ', '0', '1805');
INSERT INTO `seat` VALUES ('1070', '18 ', '2', '1827');
INSERT INTO `seat` VALUES ('1071', '26 ', '0', '1849');
INSERT INTO `seat` VALUES ('1072', '18 ', '1', '1871');
INSERT INTO `seat` VALUES ('1073', '21 ', '2', '1893');
INSERT INTO `seat` VALUES ('1074', '22 ', '1', '1607');
INSERT INTO `seat` VALUES ('1075', '23 ', '2', '1629');
INSERT INTO `seat` VALUES ('1076', '28 ', '1', '1651');
INSERT INTO `seat` VALUES ('1077', '26 ', '2', '1673');
INSERT INTO `seat` VALUES ('1078', '18 ', '1', '1695');
INSERT INTO `seat` VALUES ('1079', '23 ', '2', '1717');
INSERT INTO `seat` VALUES ('1080', '28 ', '0', '1739');
INSERT INTO `seat` VALUES ('1081', '15 ', '2', '1761');
INSERT INTO `seat` VALUES ('1082', '16 ', '0', '1380');
INSERT INTO `seat` VALUES ('1083', '13 ', '2', '1367');
INSERT INTO `seat` VALUES ('1084', '12 ', '0', '1354');
INSERT INTO `seat` VALUES ('1085', '17 ', '1', '1341');
INSERT INTO `seat` VALUES ('1086', '27 ', '2', '1315');
INSERT INTO `seat` VALUES ('1087', '21 ', '1', '1302');
INSERT INTO `seat` VALUES ('1088', '14 ', '2', '1451');
INSERT INTO `seat` VALUES ('1089', '12 ', '1', '1324');
INSERT INTO `seat` VALUES ('1090', '17 ', '2', '1451');
INSERT INTO `seat` VALUES ('1091', '24 ', '1', '1406');
INSERT INTO `seat` VALUES ('1092', '19 ', '2', '1452');
INSERT INTO `seat` VALUES ('1093', '23 ', '1', '1474');
INSERT INTO `seat` VALUES ('1094', '21 ', '2', '1496');
INSERT INTO `seat` VALUES ('1095', '12 ', '0', '1475');
INSERT INTO `seat` VALUES ('1096', '17 ', '2', '1486');
INSERT INTO `seat` VALUES ('1097', '24 ', '0', '1498');
INSERT INTO `seat` VALUES ('1098', '23 ', '2', '1509');
INSERT INTO `seat` VALUES ('1099', '21 ', '0', '1521');
INSERT INTO `seat` VALUES ('1100', '12 ', '1', '1533');

-- ----------------------------
-- Table structure for `train_info`
-- ----------------------------
DROP TABLE IF EXISTS `train_info`;
CREATE TABLE `train_info` (
  `train_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_carriages` int(10) unsigned NOT NULL,
  `train_start_station` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_end_station` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_start_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_end_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_arrive_day` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_running_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_running_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`train_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of train_info
-- ----------------------------
INSERT INTO `train_info` VALUES ('1001', '1001', '火车', '12', '广州站', '杭州站', '12：00', '18：00', '2022-3-18', '一天6小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1002', '1002', '高铁', '13', '合肥站', '海口站', '13：00', '18：00', '2022-3-18', '5小时', '高铁');
INSERT INTO `train_info` VALUES ('1003', '1003', '火车', '12', '深圳站', '肇庆站', '2：00', '5：00', '2022-3-18', '3小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1004', '1004', '火车', '12', '广州南站', '杭州南站', '6：00', '21：00', '2022-3-18', '15小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1005', '1005', '高铁', '12', '成都站', '北京站', '1：00', '8：00', '2022-3-18', '7小时', '高铁');
INSERT INTO `train_info` VALUES ('1006', '1006', '火车', '12', '杭州站', '深圳站', '7：00', '5：00', '2022-3-18', '一天2小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1007', '1007', '高铁', '12', '广州站', '合肥站', '14：00', '15：00', '2022-3-18', '1小时', '高铁');
INSERT INTO `train_info` VALUES ('1008', '1008', '火车', '12', '广州站', '杭州站', '12：00', '18：00', '2022-3-18', '一天6小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1009', '1009', '火车', '12', '杭州站', '上海站', '19:00', '21:00', '2022-3-18', '一天7小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1010', '1010', '高铁', '12', '海口站', '长沙站', '18:30', '23:00', '2022-3-18', '5小时', '高铁');
INSERT INTO `train_info` VALUES ('1011', '1011', '火车', '12', '肇庆站', '肇庆西站', '5:15', '8:45', '2022-3-18', '3小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1012', '1012', '火车', '12', '杭州南站', '黑龙江站', '21:00', '12:00', '2022-3-18', '15小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1013', '1013', '高铁', '12', '北京站', '吉林站', '8:30', '15:30', '2022-3-18', '7小时', '高铁');
INSERT INTO `train_info` VALUES ('1014', '1014', '火车', '12', '深圳站', '南昌站', '5:00', '8:00', '2022-3-18', '一天3小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1015', '1015', '高铁', '12', '合肥站', '杭州南站', '15:00', '18:00', '2022-3-18', '2小时', '高铁');
INSERT INTO `train_info` VALUES ('1016', '1016', '火车', '11', '天津西', '哈尔滨西', '12:00', '18:00', '2022-3-18', '一天6小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1017', '1017', '火车', '11', '天津西', '齐齐哈尔', '13:00', '18:00', '2022-3-18', '5小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1018', '1018', '高铁', '11', '齐齐哈尔南', '天津西', '2:00', '5:00', '2022-3-18', '3小时', '高铁');
INSERT INTO `train_info` VALUES ('1019', '1019', '火车', '11', '兰州西', '乌鲁木齐', '6:00', '21:00', '2022-3-18', '15小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1020', '1020', '火车', '11', '乌鲁木齐', '哈尔滨', '1:00', '8:00', '2022-3-18', '7小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1021', '1021', '高铁', '11', '海口', '三亚', '7:00', '5:00', '2022-3-18', '一天2小时', '高铁');
INSERT INTO `train_info` VALUES ('1022', '1022', '火车', '11', '珲春', '齐齐哈尔南', '14:00', '15:00', '2022-3-18', '1小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1023', '1023', '高铁', '11', '齐齐哈尔南', '珲春', '12:00', '18:00', '2022-3-18', '一天6小时', '高铁');
INSERT INTO `train_info` VALUES ('1024', '1024', '火车', '11', '延吉西', '哈尔滨西', '19:00', '21:00', '2022-3-18', '一天7小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1025', '1025', '火车', '11', '长春', '牡丹江', '18:30', '23:00', '2022-3-18', '5小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1026', '1026', '高铁', '11', '佳木斯', '长春', '5:15', '8:45', '2022-3-18', '3小时', '高铁');
INSERT INTO `train_info` VALUES ('1027', '1027', '火车', '11', '牡丹江', '吉林', '21:00', '12:00', '2022-3-18', '15小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1028', '1028', '火车', '11', '南宁东', '广州南', '8:30', '15:30', '2022-3-18', '7小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1029', '1029', '高铁', '11', '广州南', '贵阳北', '5:00', '8:00', '2022-3-18', '一天3小时', '高铁');
INSERT INTO `train_info` VALUES ('1030', '1030', '火车', '11', '贵阳北', '南宁东', '15:00', '18:00', '2022-3-18', '2小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1031', '1031', '高铁', '11', '成都东', '上海虹桥', '12:00', '18:00', '2022-3-18', '一天6小时', '高铁');
INSERT INTO `train_info` VALUES ('1032', '1032', '火车', '10', '重庆北', '宁波', '13:00', '18:00', '2022-3-18', '5小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1033', '1033', '火车', '10', '宁波', '深圳北', '2:00', '5:00', '2022-3-18', '3小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1034', '1034', '高铁', '10', '厦门北', '深圳', '6:00', '21:00', '2022-3-18', '15小时', '高铁');
INSERT INTO `train_info` VALUES ('1035', '1035', '火车', '10', '深圳北', '厦门', '1:00', '8:00', '2022-3-18', '7小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1036', '1036', '火车', '10', '深圳北', '福州', '7:00', '5:00', '2022-3-18', '一天2小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1037', '1037', '高铁', '10', '厦门', '深圳', '14:00', '15:00', '2022-3-18', '1小时', '高铁');
INSERT INTO `train_info` VALUES ('1038', '1038', '火车', '10', '深圳北', '北京', '12:00', '18:00', '2022-3-18', '一天6小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1039', '1039', '高铁', '10', '北京南', '上海南', '19:00', '21:00', '2022-3-18', '一天7小时', '高铁');
INSERT INTO `train_info` VALUES ('1040', '1040', '火车', '10', '上海', '北京', '18:30', '23:00', '2022-3-18', '5小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1041', '1041', '火车', '10', '杭州', '北京', '5:15', '8:45', '2022-3-18', '3小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1042', '1042', '高铁', '10', '井冈山', '北京西', '21:00', '12:00', '2022-3-18', '15小时', '高铁');
INSERT INTO `train_info` VALUES ('1043', '1043', '火车', '10', '北京西', '南昌', '8:30', '15:30', '2022-3-18', '7小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1044', '1044', '火车', '10', '三明北', '北京西', '5:00', '8:00', '2022-3-18', '一天3小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1045', '1045', '高铁', '10', '厦门北', '北京西', '15:00', '18:00', '2022-3-18', '2小时', '高铁');
INSERT INTO `train_info` VALUES ('1046', '1046', '火车', '10', '重庆北', '兰州', '12:00', '18:00', '2022-3-18', '一天6小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1047', '1047', '高铁', '10', '兰州西', '重庆北', '13:00', '18:00', '2022-3-18', '5小时', '高铁');
INSERT INTO `train_info` VALUES ('1048', '1048', '火车', '10', '成都东', '兰州', '2:00', '5:00', '2022-3-18', '3小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1049', '1049', '火车', '9', '成都东', '西宁', '6:00', '21:00', '2022-3-18', '15小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1050', '1050', '高铁', '9', '上海南', '九江', '1:00', '8:00', '2022-3-18', '7小时', '高铁');
INSERT INTO `train_info` VALUES ('1051', '1051', '火车', '9', '九江', '上海南', '7:00', '5:00', '2022-3-18', '一天2小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1052', '1052', '火车', '9', '鄂尔多斯', '西安', '14:00', '15:00', '2022-3-18', '1小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1053', '1053', '高铁', '9', '西安', '鄂尔多斯', '12:00', '18:00', '2022-3-18', '一天6小时', '高铁');
INSERT INTO `train_info` VALUES ('1054', '1054', '火车', '9', '攀枝花南', '通海', '19:00', '21:00', '2022-3-18', '一天7小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1055', '1055', '高铁', '9', '攀枝花南', '玉溪', '18:30', '23:00', '2022-3-18', '5小时', '高铁');
INSERT INTO `train_info` VALUES ('1056', '1056', '火车', '9', '昆明', '攀枝花南', '5:15', '8:45', '2022-3-18', '3小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1057', '1057', '火车', '9', '玉溪', '攀枝花南', '21:00', '12:00', '2022-3-18', '15小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1058', '1058', '高铁', '9', '贵阳北', '兰州', '8:30', '15:30', '2022-3-18', '7小时', '高铁');
INSERT INTO `train_info` VALUES ('1059', '1059', '火车', '9', '重庆北', '张家界西', '5:00', '8:00', '2022-3-18', '一天3小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1060', '1060', '火车', '9', '张家界西', '重庆北', '15:00', '18:00', '2022-3-18', '2小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1061', '1061', '高铁', '9', '成都东', '张家界西', '12:00', '18:00', '2022-3-18', '一天6小时', '高铁');
INSERT INTO `train_info` VALUES ('1062', '1062', '火车', '9', '张家界西', '成都东', '13:00', '18:00', '2022-3-18', '5小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1063', '1063', '高铁', '9', '上海', '成都东', '2:00', '5:00', '2022-3-18', '3小时', '高铁');
INSERT INTO `train_info` VALUES ('1064', '1064', '火车', '9', '成都东', '上海', '6:00', '21:00', '2022-3-18', '15小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1065', '1065', '火车', '9', '石家庄', '济南西', '1:00', '8:00', '2022-3-18', '7小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1066', '1066', '高铁', '8', '石家庄', '青岛北', '7:00', '5:00', '2022-3-18', '一天2小时', '高铁');
INSERT INTO `train_info` VALUES ('1067', '1067', '火车', '8', '青岛北', '石家庄', '14:00', '15:00', '2022-3-18', '1小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1068', '1068', '火车', '8', '石家庄', '威海', '12:00', '18:00', '2022-3-18', '一天6小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1069', '1069', '高铁', '8', '石家庄', '荣成', '19:00', '21:00', '2022-3-18', '一天7小时', '高铁');
INSERT INTO `train_info` VALUES ('1070', '1070', '火车', '8', '威海', '石家庄', '18:30', '23:00', '2022-3-18', '5小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1071', '1071', '高铁', '8', '太原南', '青岛北', '5:15', '8:45', '2022-3-18', '3小时', '高铁');
INSERT INTO `train_info` VALUES ('1072', '1072', '火车', '8', '石家庄', '烟台', '21:00', '12:00', '2022-3-18', '15小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1073', '1073', '火车', '8', '青岛北', '太原南', '8:30', '15:30', '2022-3-18', '7小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1074', '1074', '高铁', '8', '太原南', '运城北', '5:00', '8:00', '2022-3-18', '一天3小时', '高铁');
INSERT INTO `train_info` VALUES ('1075', '1075', '火车', '8', '青岛', '运城北', '15:00', '18:00', '2022-3-18', '2小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1076', '1076', '火车', '8', '运城北', '济南', '12:00', '18:00', '2022-3-18', '一天6小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1077', '1077', '高铁', '8', '济南西', '运城', '13:00', '18:00', '2022-3-18', '5小时', '高铁');
INSERT INTO `train_info` VALUES ('1078', '1078', '火车', '8', '运城北', '威海', '2:00', '5:00', '2022-3-18', '3小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1079', '1079', '高铁', '8', '太原南', '荣成', '6:00', '21:00', '2022-3-18', '15小时', '高铁');
INSERT INTO `train_info` VALUES ('1080', '1080', '火车', '8', '石家庄', '盐城', '1:00', '8:00', '2022-3-18', '7小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1081', '1081', '火车', '8', '太原南', '南通', '7:00', '5:00', '2022-3-18', '一天2小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1082', '1082', '高铁', '8', '盐城', '苏州', '14:00', '15:00', '2022-3-18', '1小时', '高铁');
INSERT INTO `train_info` VALUES ('1083', '1083', '火车', '7', '苏州', '太原南', '12:00', '18:00', '2022-3-18', '一天6小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1084', '1084', '火车', '7', '西安北', '贵阳北', '19:00', '21:00', '2022-3-18', '一天7小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1085', '1085', '高铁', '7', '贵阳北', '西安北', '18:30', '23:00', '2022-3-18', '5小时', '高铁');
INSERT INTO `train_info` VALUES ('1086', '1086', '火车', '7', '成都东', '广州南', '5:15', '8:45', '2022-3-18', '3小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1087', '1087', '高铁', '7', '泸州', '广州南', '21:00', '12:00', '2022-3-18', '15小时', '高铁');
INSERT INTO `train_info` VALUES ('1088', '1088', '火车', '7', '广州南', '泸州', '8:30', '15:30', '2022-3-18', '7小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1089', '1089', '火车', '7', '成都东', '广州南', '5:00', '8:00', '2022-3-18', '一天3小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1090', '1090', '高铁', '7', '绵阳', '北海', '15:00', '18:00', '2022-3-18', '2小时', '高铁');
INSERT INTO `train_info` VALUES ('1091', '1091', '火车', '7', '北海', '绵阳', '12:00', '18:00', '2022-3-18', '一天6小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1092', '1092', '火车', '7', '南宁东', '成都东', '13:00', '18:00', '2022-3-18', '5小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1093', '1093', '高铁', '7', '柳州', '成都东', '2:00', '5:00', '2022-3-18', '3小时', '高铁');
INSERT INTO `train_info` VALUES ('1094', '1094', '火车', '7', '重庆西', '北海', '6:00', '21:00', '2022-3-18', '15小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1095', '1095', '高铁', '7', '珠海', '成都东', '1:00', '8:00', '2022-3-18', '7小时', '高铁');
INSERT INTO `train_info` VALUES ('1096', '1096', '火车', '7', '广元', '广州', '7:00', '5:00', '2022-3-18', '一天2小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1097', '1097', '火车', '7', '绵阳', '广州', '14:00', '15:00', '2022-3-18', '1小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1098', '1098', '高铁', '7', '德阳', '广州', '12:00', '18:00', '2022-3-18', '一天6小时', '高铁');
INSERT INTO `train_info` VALUES ('1099', '1099', '火车', '7', '广州', '重庆西', '19:00', '21:00', '2022-3-18', '一天7小时', '绿皮火车');
INSERT INTO `train_info` VALUES ('1100', '1100', '火车', '6', '万州北', '广州南', '18:30', '23:00', '2022-3-18', '5小时', '绿皮火车');

-- ----------------------------
-- Table structure for `train_parking_station`
-- ----------------------------
DROP TABLE IF EXISTS `train_parking_station`;
CREATE TABLE `train_parking_station` (
  `train_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `train_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrive_day_str` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrive_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `running_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `station_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `station_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`train_no`,`station_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of train_parking_station
-- ----------------------------
INSERT INTO `train_parking_station` VALUES ('1001', '1001', '2022-3-18', '18:00', '12:00', '一天6小时', '1 ', '杭州站');
INSERT INTO `train_parking_station` VALUES ('1001', '1001', '2023年5月10号', '18:00', '21:00', '3:45', '1000', '广州站');
INSERT INTO `train_parking_station` VALUES ('1001', '1008', '2023年5月10号', '16:00', '18:00', '4:50', '1008', '合肥站');
INSERT INTO `train_parking_station` VALUES ('1002', '1002', '2023年5月10号', '21:00', '22:00', '2:40', '1002', '杭州站');
INSERT INTO `train_parking_station` VALUES ('1002', '1002', '2022-3-18', '18:00', '13:00', '5小时', '2 ', '海口站');
INSERT INTO `train_parking_station` VALUES ('1003', '1003', '2023年5月10号', '21:00', '22:00', '3:50', '1003', '海口站');
INSERT INTO `train_parking_station` VALUES ('1003', '1003', '2022-3-18', '5:00', '2:00', '3小时', '3 ', '肇庆站');
INSERT INTO `train_parking_station` VALUES ('1004', '1004', '2023年5月10号', '21:00', '23:00', '4:21', '1004', '肇庆站');
INSERT INTO `train_parking_station` VALUES ('1004', '1004', '2022-3-18', '21:00', '6:00', '15小时', '4 ', '杭州南站');
INSERT INTO `train_parking_station` VALUES ('1005', '1005', '2023年5月10号', '6:00', '7:00', '1:32', '1005', '杭州南站');
INSERT INTO `train_parking_station` VALUES ('1005', '1005', '2022-3-18', '8:00', '1:00', '7小时', '5 ', '北京站');
INSERT INTO `train_parking_station` VALUES ('1006', '1006', '2023年5月10号', '22:00', '22:10', '1:12', '1006', '北京站');
INSERT INTO `train_parking_station` VALUES ('1006', '1006', '2022-3-18', '5:00', '7:00', '一天2小时', '6 ', '深圳站');
INSERT INTO `train_parking_station` VALUES ('1007', '1007', '2023年5月10号', '9:00', '10:00', '3:38', '1007', '深圳站');
INSERT INTO `train_parking_station` VALUES ('1007', '1007', '2022-3-18', '15:00', '14:00', '1小时', '7 ', '合肥站');
INSERT INTO `train_parking_station` VALUES ('1008', '1008', '2022-3-18', '18:00', '12:00', '一天6小时', '1 ', '杭州站');
INSERT INTO `train_parking_station` VALUES ('1009', '1009', '2022-3-18', '21:00', '19:00', '一天7小时', '9 ', '上海站');
INSERT INTO `train_parking_station` VALUES ('1010', '1010', '2022-3-18', '23:00', '18:30', '5小时', '10 ', '长沙站');
INSERT INTO `train_parking_station` VALUES ('1011', '1011', '2022-3-18', '8:45', '5:15', '3小时', '11 ', '肇庆西站');
INSERT INTO `train_parking_station` VALUES ('1012', '1012', '2022-3-18', '12:00', '21:00', '15小时', '12 ', '黑龙江站');
INSERT INTO `train_parking_station` VALUES ('1013', '1013', '2022-3-18', '15:30', '8:30', '7小时', '13 ', '吉林站');
INSERT INTO `train_parking_station` VALUES ('1014', '1014', '2022-3-18', '8:00', '5:00', '一天3小时', '14 ', '南昌站');
INSERT INTO `train_parking_station` VALUES ('1015', '1015', '2022-3-18', '18:00', '15:00', '2小时', '4 ', '杭州南站');
INSERT INTO `train_parking_station` VALUES ('1016', '1016', '2022-3-18', '18:00', '12:00', '一天6小时', '16 ', '哈尔滨西');
INSERT INTO `train_parking_station` VALUES ('1017', '1017', '2022-3-18', '18:00', '13:00', '5小时', '17 ', '齐齐哈尔');
INSERT INTO `train_parking_station` VALUES ('1018', '1018', '2022-3-18', '5:00', '2:00', '3小时', '18 ', '天津西');
INSERT INTO `train_parking_station` VALUES ('1019', '1019', '2022-3-18', '21:00', '6:00', '15小时', '19 ', '乌鲁木齐');
INSERT INTO `train_parking_station` VALUES ('1020', '1020', '2022-3-18', '8:00', '1:00', '7小时', '20 ', '哈尔滨');
INSERT INTO `train_parking_station` VALUES ('1021', '1021', '2022-3-18', '5:00', '7:00', '一天2小时', '21 ', '三亚');
INSERT INTO `train_parking_station` VALUES ('1022', '1022', '2022-3-18', '15:00', '14:00', '1小时', '22 ', '齐齐哈尔南');
INSERT INTO `train_parking_station` VALUES ('1023', '1023', '2022-3-18', '18:00', '12:00', '一天6小时', '23 ', '珲春');
INSERT INTO `train_parking_station` VALUES ('1024', '1024', '2022-3-18', '21:00', '19:00', '一天7小时', '16 ', '哈尔滨西');
INSERT INTO `train_parking_station` VALUES ('1025', '1025', '2022-3-18', '23:00', '18:30', '5小时', '25 ', '牡丹江');
INSERT INTO `train_parking_station` VALUES ('1026', '1026', '2022-3-18', '8:45', '5:15', '3小时', '26 ', '长春');
INSERT INTO `train_parking_station` VALUES ('1027', '1027', '2022-3-18', '12:00', '21:00', '15小时', '13 ', '吉林');
INSERT INTO `train_parking_station` VALUES ('1028', '1028', '2022-3-18', '15:30', '8:30', '7小时', '28 ', '广州南');
INSERT INTO `train_parking_station` VALUES ('1029', '1029', '2022-3-18', '8:00', '5:00', '一天3小时', '29 ', '贵阳北');
INSERT INTO `train_parking_station` VALUES ('1030', '1030', '2022-3-18', '18:00', '15:00', '2小时', '30 ', '南宁东');
INSERT INTO `train_parking_station` VALUES ('1031', '1031', '2022-3-18', '18:00', '12:00', '一天6小时', '31 ', '上海虹桥');
INSERT INTO `train_parking_station` VALUES ('1032', '1032', '2022-3-18', '18:00', '13:00', '5小时', '32 ', '宁波');
INSERT INTO `train_parking_station` VALUES ('1033', '1033', '2022-3-18', '5:00', '2:00', '3小时', '33 ', '深圳北');
INSERT INTO `train_parking_station` VALUES ('1034', '1034', '2022-3-18', '21:00', '6:00', '15小时', '6 ', '深圳');
INSERT INTO `train_parking_station` VALUES ('1035', '1035', '2022-3-18', '8:00', '1:00', '7小时', '35 ', '厦门');
INSERT INTO `train_parking_station` VALUES ('1036', '1036', '2022-3-18', '5:00', '7:00', '一天2小时', '36 ', '福州');
INSERT INTO `train_parking_station` VALUES ('1037', '1037', '2022-3-18', '15:00', '14:00', '1小时', '37 ', '深圳');
INSERT INTO `train_parking_station` VALUES ('1038', '1038', '2022-3-18', '18:00', '12:00', '一天6小时', '5 ', '北京');
INSERT INTO `train_parking_station` VALUES ('1039', '1039', '2022-3-18', '21:00', '19:00', '一天7小时', '39 ', '上海南');
INSERT INTO `train_parking_station` VALUES ('1040', '1040', '2022-3-18', '23:00', '18:30', '5小时', '5 ', '北京');
INSERT INTO `train_parking_station` VALUES ('1041', '1041', '2022-3-18', '8:45', '5:15', '3小时', '5 ', '北京');
INSERT INTO `train_parking_station` VALUES ('1042', '1042', '2022-3-18', '12:00', '21:00', '15小时', '42 ', '北京西');
INSERT INTO `train_parking_station` VALUES ('1043', '1043', '2022-3-18', '15:30', '8:30', '7小时', '14 ', '南昌');
INSERT INTO `train_parking_station` VALUES ('1044', '1044', '2022-3-18', '8:00', '5:00', '一天3小时', '42 ', '北京西');
INSERT INTO `train_parking_station` VALUES ('1045', '1045', '2022-3-18', '18:00', '15:00', '2小时', '42 ', '北京西');
INSERT INTO `train_parking_station` VALUES ('1046', '1046', '2022-3-18', '18:00', '12:00', '一天6小时', '46 ', '兰州');
INSERT INTO `train_parking_station` VALUES ('1047', '1047', '2022-3-18', '18:00', '13:00', '5小时', '47 ', '重庆北');
INSERT INTO `train_parking_station` VALUES ('1048', '1048', '2022-3-18', '5:00', '2:00', '3小时', '46 ', '兰州');
INSERT INTO `train_parking_station` VALUES ('1049', '1049', '2022-3-18', '21:00', '6:00', '15小时', '49 ', '西宁');
INSERT INTO `train_parking_station` VALUES ('1050', '1050', '2022-3-18', '8:00', '1:00', '7小时', '50 ', '九江');
INSERT INTO `train_parking_station` VALUES ('1051', '1051', '2022-3-18', '5:00', '7:00', '一天2小时', '39 ', '上海南');
INSERT INTO `train_parking_station` VALUES ('1052', '1052', '2022-3-18', '15:00', '14:00', '1小时', '52 ', '西安');
INSERT INTO `train_parking_station` VALUES ('1053', '1053', '2022-3-18', '18:00', '12:00', '一天6小时', '53 ', '鄂尔多斯');
INSERT INTO `train_parking_station` VALUES ('1054', '1054', '2022-3-18', '21:00', '19:00', '一天7小时', '54 ', '通海');
INSERT INTO `train_parking_station` VALUES ('1055', '1055', '2022-3-18', '23:00', '18:30', '5小时', '55 ', '玉溪');
INSERT INTO `train_parking_station` VALUES ('1056', '1056', '2022-3-18', '8:45', '5:15', '3小时', '56 ', '攀枝花南');
INSERT INTO `train_parking_station` VALUES ('1057', '1057', '2022-3-18', '12:00', '21:00', '15小时', '56 ', '攀枝花南');
INSERT INTO `train_parking_station` VALUES ('1058', '1058', '2022-3-18', '15:30', '8:30', '7小时', '58 ', '兰州');
INSERT INTO `train_parking_station` VALUES ('1059', '1059', '2022-3-18', '8:00', '5:00', '一天3小时', '59 ', '张家界西');
INSERT INTO `train_parking_station` VALUES ('1060', '1060', '2022-3-18', '18:00', '15:00', '2小时', '47 ', '重庆北');
INSERT INTO `train_parking_station` VALUES ('1061', '1061', '2022-3-18', '18:00', '12:00', '一天6小时', '59 ', '张家界西');
INSERT INTO `train_parking_station` VALUES ('1062', '1062', '2022-3-18', '18:00', '13:00', '5小时', '62 ', '成都东');
INSERT INTO `train_parking_station` VALUES ('1063', '1063', '2022-3-18', '5:00', '2:00', '3小时', '62 ', '成都东');
INSERT INTO `train_parking_station` VALUES ('1064', '1064', '2022-3-18', '21:00', '6:00', '15小时', '9 ', '上海');
INSERT INTO `train_parking_station` VALUES ('1065', '1065', '2022-3-18', '8:00', '1:00', '7小时', '65 ', '济南西');
INSERT INTO `train_parking_station` VALUES ('1066', '1066', '2022-3-18', '5:00', '7:00', '一天2小时', '66 ', '青岛北');
INSERT INTO `train_parking_station` VALUES ('1067', '1067', '2022-3-18', '15:00', '14:00', '1小时', '67 ', '石家庄');
INSERT INTO `train_parking_station` VALUES ('1068', '1068', '2022-3-18', '18:00', '12:00', '一天6小时', '68 ', '威海');
INSERT INTO `train_parking_station` VALUES ('1069', '1069', '2022-3-18', '21:00', '19:00', '一天7小时', '69 ', '荣成');
INSERT INTO `train_parking_station` VALUES ('1070', '1070', '2022-3-18', '23:00', '18:30', '5小时', '67 ', '石家庄');
INSERT INTO `train_parking_station` VALUES ('1071', '1071', '2022-3-18', '8:45', '5:15', '3小时', '66 ', '青岛北');
INSERT INTO `train_parking_station` VALUES ('1072', '1072', '2022-3-18', '12:00', '21:00', '15小时', '72 ', '烟台');
INSERT INTO `train_parking_station` VALUES ('1073', '1073', '2022-3-18', '15:30', '8:30', '7小时', '73 ', '太原南');
INSERT INTO `train_parking_station` VALUES ('1074', '1074', '2022-3-18', '8:00', '5:00', '一天3小时', '74 ', '运城北');
INSERT INTO `train_parking_station` VALUES ('1075', '1075', '2022-3-18', '18:00', '15:00', '2小时', '74 ', '运城北');
INSERT INTO `train_parking_station` VALUES ('1076', '1076', '2022-3-18', '18:00', '12:00', '一天6小时', '76 ', '济南');
INSERT INTO `train_parking_station` VALUES ('1077', '1077', '2022-3-18', '18:00', '13:00', '5小时', '77 ', '运城');
INSERT INTO `train_parking_station` VALUES ('1078', '1078', '2022-3-18', '5:00', '2:00', '3小时', '68 ', '威海');
INSERT INTO `train_parking_station` VALUES ('1079', '1079', '2022-3-18', '21:00', '6:00', '15小时', '69 ', '荣成');
INSERT INTO `train_parking_station` VALUES ('1080', '1080', '2022-3-18', '8:00', '1:00', '7小时', '80 ', '盐城');
INSERT INTO `train_parking_station` VALUES ('1081', '1081', '2022-3-18', '5:00', '7:00', '一天2小时', '81 ', '南通');
INSERT INTO `train_parking_station` VALUES ('1082', '1082', '2022-3-18', '15:00', '14:00', '1小时', '82 ', '苏州');
INSERT INTO `train_parking_station` VALUES ('1083', '1083', '2022-3-18', '18:00', '12:00', '一天6小时', '83 ', '太原南');
INSERT INTO `train_parking_station` VALUES ('1084', '1084', '2022-3-18', '21:00', '19:00', '一天7小时', '29 ', '贵阳北');
INSERT INTO `train_parking_station` VALUES ('1085', '1085', '2022-3-18', '23:00', '18:30', '5小时', '85 ', '西安北');
INSERT INTO `train_parking_station` VALUES ('1086', '1086', '2022-3-18', '8:45', '5:15', '3小时', '28 ', '广州南');
INSERT INTO `train_parking_station` VALUES ('1087', '1087', '2022-3-18', '12:00', '21:00', '15小时', '28 ', '广州南');
INSERT INTO `train_parking_station` VALUES ('1088', '1088', '2022-3-18', '15:30', '8:30', '7小时', '88 ', '泸州');
INSERT INTO `train_parking_station` VALUES ('1089', '1089', '2022-3-18', '8:00', '5:00', '一天3小时', '28 ', '广州南');
INSERT INTO `train_parking_station` VALUES ('1090', '1090', '2022-3-18', '18:00', '15:00', '2小时', '90 ', '北海');
INSERT INTO `train_parking_station` VALUES ('1091', '1091', '2022-3-18', '18:00', '12:00', '一天6小时', '91 ', '绵阳');
INSERT INTO `train_parking_station` VALUES ('1092', '1092', '2022-3-18', '18:00', '13:00', '5小时', '62 ', '成都东');
INSERT INTO `train_parking_station` VALUES ('1093', '1093', '2022-3-18', '5:00', '2:00', '3小时', '62 ', '成都东');
INSERT INTO `train_parking_station` VALUES ('1094', '1094', '2022-3-18', '21:00', '6:00', '15小时', '90 ', '北海');
INSERT INTO `train_parking_station` VALUES ('1095', '1095', '2022-3-18', '8:00', '1:00', '7小时', '62 ', '成都东');
INSERT INTO `train_parking_station` VALUES ('1096', '1096', '2022-3-18', '5:00', '7:00', '一天2小时', '96 ', '广州');
INSERT INTO `train_parking_station` VALUES ('1097', '1097', '2022-3-18', '15:00', '14:00', '1小时', '96 ', '广州');
INSERT INTO `train_parking_station` VALUES ('1098', '1098', '2022-3-18', '18:00', '12:00', '一天6小时', '96 ', '广州');
INSERT INTO `train_parking_station` VALUES ('1099', '1099', '2022-3-18', '21:00', '19:00', '一天7小时', '99 ', '重庆西');
INSERT INTO `train_parking_station` VALUES ('1100', '1100', '2022-3-18', '23:00', '18:30', '5小时', '28 ', '广州南');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_phone_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_real_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` int(11) NOT NULL,
  `user_id_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_gender` int(11) NOT NULL,
  `user_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '1', '1', '0', '1', '-1', '1');
INSERT INTO `user` VALUES ('admin', '123456', 'jntm@qq.com', '蔡徐坤', '1', '340825', '1', '太湖县同兴村坝上组042号');
INSERT INTO `user` VALUES ('user', '123456', 'xiaohu@qq.com', '小胡', '2', '44528154321', '1', '华南理工大学');
