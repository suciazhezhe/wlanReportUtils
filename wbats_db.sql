/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : wbats_db

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2021-03-12 12:26:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bt_cft
-- ----------------------------
DROP TABLE IF EXISTS `bt_cft`;
CREATE TABLE `bt_cft` (
  `bt_cft_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `bt_cft_classic_lowenergy` tinyint(1) NOT NULL,
  `bt_cft_count` int(11) NOT NULL,
  `bt_cft_freq` double NOT NULL,
  `bt_cft_result` double NOT NULL,
  `bt_cft_judgement` tinyint(1) NOT NULL,
  `bt_cft_time` datetime NOT NULL,
  `bt_cft_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`bt_cft_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bt_cft
-- ----------------------------
INSERT INTO `bt_cft` VALUES ('3F526A3F-BFB7-447C-8D5D-D067F60B4FAD', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '2402000000', '9.117402', '0', '2020-09-21 13:34:35', '0');
INSERT INTO `bt_cft` VALUES ('9C161AA6-C4A2-423F-BF52-3300AE730ECA', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '2480000000', '12.298387', '0', '2020-09-21 13:46:09', '0');
INSERT INTO `bt_cft` VALUES ('DAE6AEE5-783D-4023-973B-8E35BFFA7791', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '2480000000', '0.483871', '0', '2020-09-21 13:21:29', '0');

-- ----------------------------
-- Table structure for bt_eirp
-- ----------------------------
DROP TABLE IF EXISTS `bt_eirp`;
CREATE TABLE `bt_eirp` (
  `bt_eirp_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `bt_eirp_classic_lowenergy` tinyint(1) NOT NULL,
  `bt_eirp_rate` double NOT NULL,
  `bt_eirp_count` int(1) NOT NULL,
  `bt_eirp_freq` double NOT NULL,
  `bt_eirp_result` double NOT NULL,
  `bt_eirp_judgement` tinyint(1) NOT NULL,
  `bt_eirp_time` datetime NOT NULL,
  `bt_eirp_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`bt_eirp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bt_eirp
-- ----------------------------
INSERT INTO `bt_eirp` VALUES ('147F7986-9C55-4674-A569-D16752982EDA', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '1', '2402000000', '6.087916', '0', '2020-09-21 13:28:28', '0');
INSERT INTO `bt_eirp` VALUES ('2884D2FC-9C6D-46A5-BFB8-AD65A9A98B78', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2402000000', '6.152663', '0', '2020-09-21 13:31:42', '0');
INSERT INTO `bt_eirp` VALUES ('3143121B-8839-45A0-A9E5-8A9E3F953C02', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2480000000', '-34.055121', '0', '2020-09-21 11:50:54', '1');
INSERT INTO `bt_eirp` VALUES ('538DA679-7389-4027-9F4C-A01371B6F428', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2480000000', '11.237628', '0', '2020-09-21 11:56:23', '0');
INSERT INTO `bt_eirp` VALUES ('62F66A3B-C251-4450-92DE-034107ADA9BC', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2402000000', '-42.630245', '0', '2020-09-21 11:10:19', '1');
INSERT INTO `bt_eirp` VALUES ('AD8C2A29-D1DE-441C-8989-C215444BBA0E', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2402000000', '13.518933', '0', '2020-09-21 11:08:12', '1');
INSERT INTO `bt_eirp` VALUES ('C60C9E9C-45DC-4F25-8690-10E9A8827C93', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2402000000', '13.504309', '0', '2020-09-21 11:14:32', '0');
INSERT INTO `bt_eirp` VALUES ('D8D2EC74-C618-46FE-94D7-80FFD7074CEB', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2480000000', '6.331705', '0', '2020-09-21 13:40:48', '0');
INSERT INTO `bt_eirp` VALUES ('DD08196C-AF97-41D8-AAFE-5849774B16AE', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '3', '1', '2480000000', '12.319702', '0', '2020-09-21 13:17:55', '0');

-- ----------------------------
-- Table structure for bt_freq
-- ----------------------------
DROP TABLE IF EXISTS `bt_freq`;
CREATE TABLE `bt_freq` (
  `bt_freq_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `bt_freq_classic_lowenergy` tinyint(1) NOT NULL,
  `bt_freq_rate` double NOT NULL,
  `bt_freq_count` int(11) NOT NULL,
  `bt_freq_freq` double NOT NULL,
  `bt_freq_result` double NOT NULL,
  `bt_freq_judgement` tinyint(1) NOT NULL,
  `bt_freq_time` datetime NOT NULL,
  `bt_freq_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`bt_freq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bt_freq
-- ----------------------------
INSERT INTO `bt_freq` VALUES ('017B70F5-A182-457D-808E-A4B319603181', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2480000000', '2481266000', '0', '2020-09-21 13:41:49', '0');
INSERT INTO `bt_freq` VALUES ('4BDC5CC8-BBE9-4D5D-8FD9-F2766F1179E5', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '1', '2402000000', '2401310000', '0', '2020-09-21 13:29:28', '0');
INSERT INTO `bt_freq` VALUES ('680F7B4D-6003-45AA-AA21-602BF05B3ECE', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2480000000', '0', '0', '2020-09-21 11:57:23', '0');
INSERT INTO `bt_freq` VALUES ('997C1853-833F-40DB-92C2-99E171F4FC43', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2402000000', '2400776000', '0', '2020-09-21 13:32:44', '0');
INSERT INTO `bt_freq` VALUES ('B303E9A2-CE8F-4752-816C-1627B4D37B44', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '3', '1', '2480000000', '2481377000', '0', '2020-09-21 13:18:55', '0');
INSERT INTO `bt_freq` VALUES ('DA8A8003-9800-4782-8753-322018A77D84', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2402000000', '2401262000', '0', '2020-09-21 11:23:12', '0');

-- ----------------------------
-- Table structure for bt_maxpow
-- ----------------------------
DROP TABLE IF EXISTS `bt_maxpow`;
CREATE TABLE `bt_maxpow` (
  `bt_maxpow_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `bt_maxpow_classic_lowenergy` tinyint(1) NOT NULL,
  `bt_maxpow_rate` double NOT NULL,
  `bt_maxpow_count` int(11) NOT NULL,
  `bt_maxpow_freq` double NOT NULL,
  `bt_maxpow_result` double NOT NULL,
  `bt_maxpow_judgement` tinyint(1) NOT NULL,
  `bt_maxpow_time` datetime NOT NULL,
  `bt_maxpow_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`bt_maxpow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bt_maxpow
-- ----------------------------
INSERT INTO `bt_maxpow` VALUES ('0920018D-76C8-478A-BFC2-6B87D16BCE07', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2402000000', '9.118', '0', '2020-09-21 11:19:33', '0');
INSERT INTO `bt_maxpow` VALUES ('47AF9A13-6F32-4091-920E-DBE3103EC703', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '1', '2402000000', '4.318', '0', '2020-09-21 13:28:46', '0');
INSERT INTO `bt_maxpow` VALUES ('AB8E9379-85D5-43C6-9418-5123EF6AFCC8', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2480000000', '7.841', '0', '2020-09-21 11:56:41', '0');
INSERT INTO `bt_maxpow` VALUES ('D9339868-10F8-4019-BCAC-754B780F21AF', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2402000000', '0.648', '0', '2020-09-21 13:32:00', '0');
INSERT INTO `bt_maxpow` VALUES ('F481F938-187B-4C89-96EA-7297F770CDA3', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2480000000', '0.902', '0', '2020-09-21 13:41:06', '0');
INSERT INTO `bt_maxpow` VALUES ('F9F5C67F-DFDA-45D5-94F8-3B833D4025D6', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '3', '1', '2480000000', '9.534', '0', '2020-09-21 13:18:12', '0');

-- ----------------------------
-- Table structure for bt_obw
-- ----------------------------
DROP TABLE IF EXISTS `bt_obw`;
CREATE TABLE `bt_obw` (
  `bt_obw_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `bt_obw_classic_lowenergy` tinyint(1) NOT NULL,
  `bt_obw_rate` double NOT NULL,
  `bt_obw_count` int(11) NOT NULL,
  `bt_obw_freq` double NOT NULL,
  `bt_obw_result` double NOT NULL,
  `bt_obw_judgement` tinyint(1) NOT NULL,
  `bt_obw_time` datetime NOT NULL,
  `bt_obw_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`bt_obw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bt_obw
-- ----------------------------
INSERT INTO `bt_obw` VALUES ('10B737B2-D925-48F3-9192-886DC8869B4F', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2402000000', '837091.64', '0', '2020-09-21 11:23:39', '0');
INSERT INTO `bt_obw` VALUES ('43B3FCDD-FB18-4518-B903-B199C7D99916', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '3', '1', '2480000000', '1216261.4', '0', '2020-09-21 13:19:14', '0');
INSERT INTO `bt_obw` VALUES ('451FFD23-2F9A-464F-BE86-F0498297E8F9', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '3', '1', '2402000000', '1242248.75', '0', '2020-09-21 11:28:43', '0');
INSERT INTO `bt_obw` VALUES ('4FA5B7D7-3A92-4749-8C21-96A0856A1A49', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2480000000', '2050385.76', '0', '2020-09-21 13:42:07', '0');
INSERT INTO `bt_obw` VALUES ('6383FF58-04F8-4371-BDA1-EE1043CA5C07', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2480000000', '805781.304', '0', '2020-09-21 11:57:42', '0');
INSERT INTO `bt_obw` VALUES ('A99B7A86-46D7-4E91-8542-C999BFD14B29', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2402000000', '2049039.25', '0', '2020-09-21 13:33:02', '0');
INSERT INTO `bt_obw` VALUES ('BDD3877F-F039-47F9-9202-8DF00F458B9B', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '3', '1', '2402000000', '857757.055', '0', '2020-09-21 11:26:07', '1');
INSERT INTO `bt_obw` VALUES ('CBE2633A-A536-4D97-AD23-161C6EDD4530', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '1', '2402000000', '1033998.55', '0', '2020-09-21 13:29:45', '0');

-- ----------------------------
-- Table structure for bt_oob
-- ----------------------------
DROP TABLE IF EXISTS `bt_oob`;
CREATE TABLE `bt_oob` (
  `bt_oob_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `bt_oob_classic_lowenergy` tinyint(1) NOT NULL,
  `bt_oob_rate` double NOT NULL,
  `bt_oob_count` int(11) NOT NULL,
  `bt_oob_freq` double NOT NULL,
  `bt_oob_result` double NOT NULL,
  `bt_oob_judgement` tinyint(1) NOT NULL,
  `bt_oob_time` datetime NOT NULL,
  `bt_oob_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`bt_oob_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bt_oob
-- ----------------------------
INSERT INTO `bt_oob` VALUES ('2388DE6F-8704-47B3-A83B-004E37860CF4', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '1', '2402000000', '-111.228256', '0', '2020-09-21 13:29:07', '0');
INSERT INTO `bt_oob` VALUES ('2F8DF0F8-266C-4114-AD68-AE12EEC0751B', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2402000000', '-107.60157', '0', '2020-09-21 11:22:44', '0');
INSERT INTO `bt_oob` VALUES ('37443FBA-A7CF-4A4C-914F-B93A03DE4D59', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2402000000', '-97.521881', '0', '2020-09-21 13:32:22', '0');
INSERT INTO `bt_oob` VALUES ('3DDCB1B7-FC8F-4694-B54F-25094209F823', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2480000000', '-113.168495', '0', '2020-09-21 11:57:01', '0');
INSERT INTO `bt_oob` VALUES ('5FD435E8-8E10-4FD5-8F30-FA7ABBAD2371', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2402000000', '-89.297741', '0', '2020-09-21 11:20:24', '1');
INSERT INTO `bt_oob` VALUES ('79C7C711-92A6-4275-8FD1-9EC929D07E5E', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '3', '1', '2480000000', '-113.066399', '0', '2020-09-21 13:18:33', '0');
INSERT INTO `bt_oob` VALUES ('DB99195B-16C2-432B-AB17-6409A2065476', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2480000000', '-112.473114', '0', '2020-09-21 13:41:28', '0');

-- ----------------------------
-- Table structure for bt_se
-- ----------------------------
DROP TABLE IF EXISTS `bt_se`;
CREATE TABLE `bt_se` (
  `bt_se_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `bt_se_classic_lowenergy` tinyint(1) NOT NULL,
  `bt_se_rate` double NOT NULL,
  `bt_se_count` int(11) NOT NULL,
  `bt_se_freq` double NOT NULL,
  `bt_se_band` varchar(20) NOT NULL,
  `bt_se_bandfreq` double NOT NULL,
  `bt_se_bandresult` double NOT NULL,
  `bt_se_bandpicture` varchar(255) NOT NULL,
  `bt_se_bandjudgement` tinyint(1) NOT NULL,
  `bt_se_time` datetime NOT NULL,
  `bt_se_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`bt_se_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of bt_se
-- ----------------------------
INSERT INTO `bt_se` VALUES ('079EA2FE-18B8-4E44-8883-89596B096E71', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '1', '2402000000', '1GHz~12.75GHz', '2962250000', '-41.654', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\1Mbps\\20200921-133115_1GHz~12.75GHz.png', '0', '2020-09-21 13:31:20', '1');
INSERT INTO `bt_se` VALUES ('07FFBE2E-FA6A-43A3-88EF-1BD64873C4A1', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2402000000', '2.4GHz~2.4835GHz', '2454442000', '-53.482', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\2Mbps\\20200921-133325_2.4GHz~2.4835GHz.png', '0', '2020-09-21 13:33:47', '1');
INSERT INTO `bt_se` VALUES ('13DCEAF7-71AD-432F-BF58-978C6EAD50B8', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2402000000', '30MHz~1000MHz', '964110000', '-54.219994', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\2Mbps\\20200921-133653_30MHz~1000MHz.png', '0', '2020-09-21 13:37:43', '0');
INSERT INTO `bt_se` VALUES ('18B9B93D-E85E-469E-8F2B-132E7C559DED', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '1', '2402000000', '2.4GHz~2.4835GHz', '2461456000', '-53.299', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\1Mbps\\20200921-133842_2.4GHz~2.4835GHz.png', '0', '2020-09-21 13:39:17', '0');
INSERT INTO `bt_se` VALUES ('1D093514-87B0-497B-869C-0067523592A7', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '1', '2402000000', '3.4GHz~3.53GHz', '3416770000', '-44.227241', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\1Mbps\\20200921-133038_3.4GHz~3.53GHz.png', '1', '2020-09-21 13:31:18', '1');
INSERT INTO `bt_se` VALUES ('22638A17-1E32-4F8B-B0A5-1141D123DA72', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '3', '1', '2480000000', '1GHz~12.75GHz', '10024000000', '-46.5', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Classic\\2.48GHz\\3Mbps\\20200921-132012_1GHz~12.75GHz.png', '0', '2020-09-21 13:20:16', '0');
INSERT INTO `bt_se` VALUES ('2795771C-7BAA-4723-A1E9-CBFD55AA5937', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2402000000', '1GHz~12.75GHz', '6076000000', '-46.388', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Classic\\2.402GHz\\1Mbps\\20200921-112446_1GHz~12.75GHz.png', '0', '2020-09-21 11:24:51', '0');
INSERT INTO `bt_se` VALUES ('2B48E511-EF30-445B-AF5C-35F4A740D257', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2480000000', '30MHz~1000MHz', '943740000', '-55.157822', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.48GHz\\2Mbps\\20200921-134218_30MHz~1000MHz.png', '0', '2020-09-21 13:43:30', '1');
INSERT INTO `bt_se` VALUES ('32436C46-96F4-4EEF-9AE6-C2CB793045EC', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2402000000', '5.725GHz~5.85GHz', '5729125000', '-45.139435', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\2Mbps\\20200921-133722_5.725GHz~5.85GHz.png', '0', '2020-09-21 13:37:46', '0');
INSERT INTO `bt_se` VALUES ('43F87606-AF7E-489C-AB4D-FB4794AD021C', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2402000000', '30MHz~1000MHz', '662440000', '-57.04995', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Classic\\2.402GHz\\1Mbps\\20200921-112403_30MHz~1000MHz.png', '0', '2020-09-21 11:24:47', '0');
INSERT INTO `bt_se` VALUES ('446F65E8-253F-46AB-81DF-F6B7C05DDE23', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '1', '2402000000', '30MHz~1000MHz', '968960000', '-54.429237', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\1Mbps\\20200921-132958_30MHz~1000MHz.png', '0', '2020-09-21 13:31:16', '1');
INSERT INTO `bt_se` VALUES ('4574103B-5D88-49E1-BE9A-7075186C6C69', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '1', '2402000000', '1GHz~12.75GHz', '7051250000', '-43.211', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\1Mbps\\20200921-133915_1GHz~12.75GHz.png', '0', '2020-09-21 13:39:20', '0');
INSERT INTO `bt_se` VALUES ('73D05E64-DB78-4DCF-9A31-C76E87444303', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '1', '2402000000', '5.725GHz~5.85GHz', '5841000000', '-45.383247', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\1Mbps\\20200921-133045_5.725GHz~5.85GHz.png', '1', '2020-09-21 13:31:19', '1');
INSERT INTO `bt_se` VALUES ('78E6129E-71FA-447A-83BB-4426F0B8BC96', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2480000000', '1GHz~12.75GHz', '9695000000', '-43.807', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.48GHz\\2Mbps\\20200921-134330_1GHz~12.75GHz.png', '0', '2020-09-21 13:43:34', '1');
INSERT INTO `bt_se` VALUES ('80B43819-758A-4E7E-9171-825248291EA8', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2402000000', '1GHz~12.75GHz', '7121750000', '-42.4', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\2Mbps\\20200921-133345_1GHz~12.75GHz.png', '0', '2020-09-21 13:33:50', '1');
INSERT INTO `bt_se` VALUES ('8136D84B-5E46-44C2-B8F1-9EEA277C347A', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '3', '1', '2480000000', '2.4GHz~2.4835GHz', '2474732500', '-54.544', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Classic\\2.48GHz\\3Mbps\\20200921-131936_2.4GHz~2.4835GHz.png', '0', '2020-09-21 13:20:13', '0');
INSERT INTO `bt_se` VALUES ('878F8E04-DA34-40C9-BEF6-7C3CE78CDE4E', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2480000000', '5.725GHz~5.85GHz', '5801750000', '-45.817924', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.48GHz\\2Mbps\\20200921-135105_5.725GHz~5.85GHz.png', '0', '2020-09-21 13:51:34', '0');
INSERT INTO `bt_se` VALUES ('881D5F3B-FA4F-43B8-8C32-6896E91D2BB9', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2480000000', '3.4GHz~3.53GHz', '3417810000', '-44.25396', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.48GHz\\2Mbps\\20200921-135058_3.4GHz~3.53GHz.png', '0', '2020-09-21 13:51:33', '0');
INSERT INTO `bt_se` VALUES ('8877716C-F636-4F94-B15F-3DB310D0378D', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2402000000', '3.4GHz~3.53GHz', '3513100000', '-43.931099', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\2Mbps\\20200921-133716_3.4GHz~3.53GHz.png', '0', '2020-09-21 13:37:45', '0');
INSERT INTO `bt_se` VALUES ('8EF1C4FF-3E52-4CE3-90F9-527178A74DDA', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2480000000', '3.4GHz~3.53GHz', '3407800000', '-44.870293', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.48GHz\\2Mbps\\20200921-134251_3.4GHz~3.53GHz.png', '0', '2020-09-21 13:43:32', '1');
INSERT INTO `bt_se` VALUES ('9CCB1576-625E-4611-8D9A-DC9CD1B63572', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2480000000', '5.725GHz~5.85GHz', '5738750000', '-45.449432', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.48GHz\\2Mbps\\20200921-134258_5.725GHz~5.85GHz.png', '0', '2020-09-21 13:43:33', '1');
INSERT INTO `bt_se` VALUES ('9EB870F3-9067-4A55-A85F-3FFF270FE465', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '1', '2402000000', '5.725GHz~5.85GHz', '5781750000', '-45.504402', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\1Mbps\\20200921-133854_5.725GHz~5.85GHz.png', '0', '2020-09-21 13:39:19', '0');
INSERT INTO `bt_se` VALUES ('9F225BE5-822F-46E7-9453-A6756A6892C8', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '3', '1', '2480000000', '3.4GHz~3.53GHz', '3469290000', '-46.186394', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Classic\\2.48GHz\\3Mbps\\20200921-131941_3.4GHz~3.53GHz.png', '0', '2020-09-21 13:20:14', '0');
INSERT INTO `bt_se` VALUES ('A8F04ECA-F305-494F-A9F7-009FE79D3ADF', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '1', '2402000000', '2.4GHz~2.4835GHz', '2472144000', '-53.047', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\1Mbps\\20200921-133033_2.4GHz~2.4835GHz.png', '0', '2020-09-21 13:31:17', '1');
INSERT INTO `bt_se` VALUES ('AA7A8AE0-E8DD-4E7B-9D4F-9637132DDD5D', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2402000000', '2.4GHz~2.4835GHz', '2439328500', '-56.467', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Classic\\2.402GHz\\1Mbps\\20200921-112425_2.4GHz~2.4835GHz.png', '0', '2020-09-21 11:24:48', '0');
INSERT INTO `bt_se` VALUES ('AD02B3E2-C4ED-4FBC-888C-D330CAA8E93F', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2402000000', '30MHz~1000MHz', '838010000', '-54.512611', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\2Mbps\\20200921-133315_30MHz~1000MHz.png', '0', '2020-09-21 13:33:46', '1');
INSERT INTO `bt_se` VALUES ('AF5F35C8-C077-4D2B-B0DA-6BDE270F185D', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2480000000', '30MHz~1000MHz', '808910000', '-53.990189', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.48GHz\\2Mbps\\20200921-135025_30MHz~1000MHz.png', '0', '2020-09-21 13:51:31', '0');
INSERT INTO `bt_se` VALUES ('B43B78DC-C640-439A-B0C6-2AEFA4A3B10F', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '1', '2402000000', '3.4GHz~3.53GHz', '3501010000', '-44.72139', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\1Mbps\\20200921-133848_3.4GHz~3.53GHz.png', '0', '2020-09-21 13:39:18', '0');
INSERT INTO `bt_se` VALUES ('B9FA5F76-4787-4D1F-A75E-F1925BEF593D', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2402000000', '2.4GHz~2.4835GHz', '2443503500', '-52.888', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\2Mbps\\20200921-133711_2.4GHz~2.4835GHz.png', '0', '2020-09-21 13:37:44', '0');
INSERT INTO `bt_se` VALUES ('C0851F5D-5648-4710-AF0E-65DDEBF59426', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2480000000', '2.4GHz~2.4835GHz', '2422211000', '-53.594', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.48GHz\\2Mbps\\20200921-135053_2.4GHz~2.4835GHz.png', '0', '2020-09-21 13:51:32', '0');
INSERT INTO `bt_se` VALUES ('C83FCF38-F24C-4C15-9C4F-2A107D323745', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '3', '1', '2480000000', '5.725GHz~5.85GHz', '5762750000', '-48.497498', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Classic\\2.48GHz\\3Mbps\\20200921-131948_5.725GHz~5.85GHz.png', '0', '2020-09-21 13:20:15', '0');
INSERT INTO `bt_se` VALUES ('CB48A5C7-BDD1-43F3-8D74-72A958BFDC9A', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '1', '1', '2402000000', '30MHz~1000MHz', '319060000', '-55.079254', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\1Mbps\\20200921-133819_30MHz~1000MHz.png', '0', '2020-09-21 13:39:16', '0');
INSERT INTO `bt_se` VALUES ('DDE8B387-7F01-45D8-B5E4-D7CD2AEA31A8', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2402000000', '1GHz~12.75GHz', '6980750000', '-43.269', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\2Mbps\\20200921-133742_1GHz~12.75GHz.png', '0', '2020-09-21 13:37:47', '0');
INSERT INTO `bt_se` VALUES ('E02708D0-90C9-4CE5-B2F0-C851DF062319', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2402000000', '5.725GHz~5.85GHz', '5742375000', '-45.79731', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\2Mbps\\20200921-133337_5.725GHz~5.85GHz.png', '1', '2020-09-21 13:33:49', '1');
INSERT INTO `bt_se` VALUES ('E87F7372-268C-4CB3-B7F7-25614A2B9874', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2480000000', '2.4GHz~2.4835GHz', '2435237000', '-52.978', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.48GHz\\2Mbps\\20200921-134246_2.4GHz~2.4835GHz.png', '0', '2020-09-21 13:43:31', '1');
INSERT INTO `bt_se` VALUES ('F13A8727-D46F-4962-9403-551296E55D2E', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2480000000', '1GHz~12.75GHz', '12585500000', '-42.272', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.48GHz\\2Mbps\\20200921-135130_1GHz~12.75GHz.png', '0', '2020-09-21 13:51:35', '0');
INSERT INTO `bt_se` VALUES ('F43EC2D2-2411-4DA9-B953-FD308FB5A5E3', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2402000000', '3.4GHz~3.53GHz', '3463700000', '-47.684929', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Classic\\2.402GHz\\1Mbps\\20200921-112430_3.4GHz~3.53GHz.png', '0', '2020-09-21 11:24:49', '0');
INSERT INTO `bt_se` VALUES ('F4EEF91B-D4D1-4E4B-8904-66379F44A056', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '3', '1', '2480000000', '30MHz~1000MHz', '835100000', '-58.023888', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Classic\\2.48GHz\\3Mbps\\20200921-131924_30MHz~1000MHz.png', '0', '2020-09-21 13:20:12', '0');
INSERT INTO `bt_se` VALUES ('F764388C-8B4E-4139-8958-7B26F02F8612', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '1', '2', '1', '2402000000', '3.4GHz~3.53GHz', '3483070000', '-43.986977', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Low Energy\\2.402GHz\\2Mbps\\20200921-133330_3.4GHz~3.53GHz.png', '1', '2020-09-21 13:33:48', '1');
INSERT INTO `bt_se` VALUES ('F87C8AF3-66B9-4806-A2F0-BB4759CD62E5', 'F7B081EC-8163-4E4E-A6E7-50F0308384DC', '0', '1', '1', '2402000000', '5.725GHz~5.85GHz', '5771625000', '-49.018997', 'Task\\E201\\蓝牙设备\\CaptureScreen\\被测设备1\\Classic\\2.402GHz\\1Mbps\\20200921-112437_5.725GHz~5.85GHz.png', '0', '2020-09-21 11:24:50', '0');

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `info_id` varchar(255) NOT NULL,
  `info_et` varchar(100) NOT NULL,
  `info_model` varchar(100) NOT NULL,
  `info_wb` varchar(100) NOT NULL,
  `info_producer` varchar(100) NOT NULL,
  `info_address` varchar(100) NOT NULL,
  `info_postcode` varchar(100) NOT NULL,
  `info_phone` varchar(100) NOT NULL,
  `info_name` varchar(100) NOT NULL,
  `info_email` varchar(100) NOT NULL,
  `info_serialone` varchar(100) NOT NULL,
  `info_serialtwo` varchar(100) NOT NULL,
  `info_serialthree` varchar(100) NOT NULL,
  `info_clamp` int(1) NOT NULL,
  `info_temp` double NOT NULL,
  `info_hum` double NOT NULL,
  `info_atmos` double NOT NULL,
  `info_accepttime` datetime NOT NULL,
  `info_receivetime` datetime NOT NULL,
  `info_testtime` datetime NOT NULL,
  `info_time` datetime NOT NULL,
  `info_delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES ('144B7531-4C86-4F80-A7F2-ADC722FDF746', 'TA-GZTD2021-0310-1111', '1', '2.4GHz无线局域网设备', 'LinkWAN', '广州市黄埔区科学城', '51000', '88888888', '王', 'wang@gdrtc.org', 'xlh1', '222', '333ww', '4', '24', '56', '101', '1904-01-01 08:00:00', '1904-01-01 08:00:00', '2021-01-06 10:17:28', '2021-01-06 10:17:55', '0');
INSERT INTO `info` VALUES ('15E54AC9-2788-4E31-97AA-5F6CDFC94E66', 'TA-GZTD2020-0310-0000', 'Test1', '2.4GHz无线局域网设备', 'LinkWAN', '广州市黄埔区科学城', '51000', '88888888', '王', 'wang@gdrtc.org', '1', '1', '1', '4', '24', '56', '101', '2020-09-22 15:52:00', '2020-09-22 15:52:02', '2020-09-22 15:51:52', '2020-09-22 15:52:08', '0');
INSERT INTO `info` VALUES ('2E104E97-319B-4BF0-9975-277256CEF003', 'TA-GZTD2020-0102-0098', 'E201', '5.8GHz无线局域网设备', 'LinkWAN', '广州市黄埔区科学城', '51000', '88888888', '王', 'wang@gdrtc.org', '1', '2', '3', '4', '24', '56', '101', '2020-09-07 20:48:48', '2020-09-08 20:48:51', '2020-09-11 20:48:30', '2020-09-20 20:49:00', '0');
INSERT INTO `info` VALUES ('84FFA7E5-A883-4A70-9240-BD2707D5D06E', 'TA-GZTD2021-0310-0000', '12', '5.8GHz无线局域网设备', 'LinkWAN', '广州市黄埔区科学城', '51000', '88888888', '王', 'wang@gdrtc.org', '1', '2', '3', '4', '24', '56', '101', '1904-01-01 08:00:00', '1904-01-01 08:00:00', '2021-01-06 10:25:08', '2021-01-06 10:26:15', '0');
INSERT INTO `info` VALUES ('D9BF1116-93A4-4A96-B0B0-8790B1F965D9', 'TA-GZTD2020-0102-0098', 'E201', '2.4GHz无线局域网设备', 'LinkWAN', '广州市黄埔区科学城', '51000', '88888888', '王', 'wang@gdrtc.org', '1', '2', '3', '4', '24', '56', '101', '2020-09-07 18:31:38', '2020-09-08 18:31:43', '2020-09-08 18:27:23', '2020-09-19 18:31:53', '0');
INSERT INTO `info` VALUES ('DCF445B9-9413-41E3-B714-62385A9A51BC', 'TA-GZTD2020-0102-0098', 'E201', '5.1GHz无线局域网设备', 'LinkWAN', '广州市黄埔区科学城', '51000', '88888888', '王', 'wang@gdrtc.org', '1', '2', '3', '4', '24', '56', '101', '2020-09-07 18:31:38', '2020-09-08 18:31:43', '2020-09-10 15:33:35', '2020-09-20 15:34:12', '0');
INSERT INTO `info` VALUES ('F7B081EC-8163-4E4E-A6E7-50F0308384DC', 'TA-GZTD2020-0310-0098', 'E201', '蓝牙设备', 'LinkWAN', '广州市黄埔区科学城', '51000', '88888888', '王', 'wang@gdrtc.org', '1', '2', '3', '4', '24', '56', '101', '2020-09-07 10:44:24', '2020-09-08 10:44:28', '2020-09-08 10:52:42', '2020-09-21 10:53:02', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` varchar(255) NOT NULL,
  `ut_id` varchar(255) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_password` varchar(255) NOT NULL,
  `u_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('185C6469-8961-474F-955E-1197A1ACF673', 'E1A1FB57-2091-4C31-8410-45A831F33863', 'hjh', 'hjh450084773', '0');
INSERT INTO `user` VALUES ('1AD71846-7841-40C2-815A-A6DB4AC05AC1', 'C6150250-C2D8-4A41-B1E1-743FD4A928BA', 'root', '450084773', '0');
INSERT INTO `user` VALUES ('F920A046-58E4-4C84-9B4A-D4EFE6866C91', 'B33C813E-6801-4656-8F4C-DD45D88DB27E', 'admin', '123456', '0');

-- ----------------------------
-- Table structure for usertype
-- ----------------------------
DROP TABLE IF EXISTS `usertype`;
CREATE TABLE `usertype` (
  `ut_id` varchar(255) NOT NULL,
  `ut_type` varchar(255) NOT NULL,
  `ut_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`ut_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of usertype
-- ----------------------------
INSERT INTO `usertype` VALUES ('B33C813E-6801-4656-8F4C-DD45D88DB27E', '测试人员', '0');
INSERT INTO `usertype` VALUES ('C6150250-C2D8-4A41-B1E1-743FD4A928BA', '测试主管', '0');
INSERT INTO `usertype` VALUES ('E1A1FB57-2091-4C31-8410-45A831F33863', '系统管理员', '0');

-- ----------------------------
-- Table structure for wlan_cft
-- ----------------------------
DROP TABLE IF EXISTS `wlan_cft`;
CREATE TABLE `wlan_cft` (
  `wlan_cft_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `wlan_cft_count` int(1) NOT NULL,
  `wlan_cft_ant` varchar(255) NOT NULL,
  `wlan_cft_model` varchar(255) NOT NULL,
  `wlan_cft_freq` varchar(255) NOT NULL,
  `wlan_cft_result` double NOT NULL,
  `wlan_cft_judgement` tinyint(1) NOT NULL,
  `wlan_cft_time` datetime NOT NULL,
  `wlan_cft_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`wlan_cft_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wlan_cft
-- ----------------------------
INSERT INTO `wlan_cft` VALUES ('056A336C-733B-40C5-A2E3-7E6DCA80DA17', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', '2.422GHz', '3.179191', '0', '2020-09-20 15:16:53', '0');
INSERT INTO `wlan_cft` VALUES ('1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(40MHz)', '2.422GHz', '3.179191', '0', '2020-09-20 15:16:53', '0');
INSERT INTO `wlan_cft` VALUES ('10', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', '2.472GHz', '2.224919', '0', '2020-09-20 14:16:03', '1');
INSERT INTO `wlan_cft` VALUES ('11', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', '2.422GHz', '3.179191', '0', '2020-09-20 15:16:52', '0');
INSERT INTO `wlan_cft` VALUES ('12', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', '2.412GHz', '2.114428', '0', '2020-09-20 14:12:15', '1');
INSERT INTO `wlan_cft` VALUES ('13', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', '2.462GHz', '3.127539', '0', '2020-09-20 15:18:00', '0');
INSERT INTO `wlan_cft` VALUES ('14', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', '2.412GHz', '3.067993', '0', '2020-09-20 15:19:12', '0');
INSERT INTO `wlan_cft` VALUES ('15', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(40MHz)', '2.462GHz', '3.127539', '0', '2020-09-20 15:18:00', '0');
INSERT INTO `wlan_cft` VALUES ('1F1D89A6-75C2-4177-8E00-7E5E6B871706', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11ax(80MHz)', '5.775GHz', '2.753247', '0', '2020-09-20 21:10:14', '0');
INSERT INTO `wlan_cft` VALUES ('2', '2E104E97-319B-4BF0-9975-277256CEF003', '2', '1', '802.11ax(80MHz)', '5.775GHz', '2.753247', '0', '2020-09-20 21:10:14', '0');
INSERT INTO `wlan_cft` VALUES ('23C6BDD1-806E-4BE3-B38F-3A19E6150DFF', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', '2.412GHz', '4.51907', '0', '2020-09-20 11:49:01', '0');
INSERT INTO `wlan_cft` VALUES ('3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(20MHz)', '2.412GHz', '4.51907', '0', '2020-09-20 11:49:01', '0');
INSERT INTO `wlan_cft` VALUES ('4', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(20MHz)', '2.472GHz', '2.346278', '0', '2020-09-20 12:14:25', '0');
INSERT INTO `wlan_cft` VALUES ('424BA018-1F38-4B74-AFA1-4BC2F70E6B1F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', '2.472GHz', '2.346278', '0', '2020-09-20 12:14:25', '0');
INSERT INTO `wlan_cft` VALUES ('5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', '2.462GHz', '2.518278', '0', '2020-09-20 12:24:01', '0');
INSERT INTO `wlan_cft` VALUES ('537461F3-336B-485C-A0FB-BE854477E2D0', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', '2.462GHz', '2.518278', '0', '2020-09-20 12:24:01', '0');
INSERT INTO `wlan_cft` VALUES ('6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', '2.422GHz', '2.559868', '0', '2020-09-20 12:20:19', '0');
INSERT INTO `wlan_cft` VALUES ('6238AE02-71FC-41AC-AFDC-033ED7E46C5F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', '2.422GHz', '2.559868', '0', '2020-09-20 12:20:19', '0');
INSERT INTO `wlan_cft` VALUES ('62F1935F-6E45-4543-8A42-AECC40B8750E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', '2.472GHz', '3.074434', '0', '2020-09-20 15:19:50', '0');
INSERT INTO `wlan_cft` VALUES ('7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(20MHz)', '2.472GHz', '3.074434', '0', '2020-09-20 15:19:50', '0');
INSERT INTO `wlan_cft` VALUES ('8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', '2.412GHz', '4.51907', '0', '2020-09-20 15:19:12', '0');
INSERT INTO `wlan_cft` VALUES ('895282EF-DEA9-496E-8845-EDCD746C89B3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', '2.412GHz', '4.51907', '0', '2020-09-20 15:19:12', '0');
INSERT INTO `wlan_cft` VALUES ('89DC7C9E-22D8-4BD2-A16E-3CB8A7F754E5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', '2.472GHz', '3.074434', '0', '2020-09-20 15:19:50', '0');
INSERT INTO `wlan_cft` VALUES ('8A184C93-03AA-403C-944E-F0039E43DF78', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', '2.472GHz', '2.224919', '0', '2020-09-20 14:16:03', '1');
INSERT INTO `wlan_cft` VALUES ('9', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', '2.472GHz', '3.074434', '0', '2020-09-20 15:19:50', '0');
INSERT INTO `wlan_cft` VALUES ('A67C73AD-BFEF-4D29-A66A-EEB730C33C03', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', '2.422GHz', '3.179191', '0', '2020-09-20 15:16:52', '0');
INSERT INTO `wlan_cft` VALUES ('B03F9614-424A-4F4F-BBBD-51EE64ACDBA5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', '2.412GHz', '2.114428', '0', '2020-09-20 14:12:15', '1');
INSERT INTO `wlan_cft` VALUES ('E86C4176-C49B-414E-97C9-A16E1DFBBDD8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', '2.462GHz', '3.127539', '0', '2020-09-20 15:18:00', '0');
INSERT INTO `wlan_cft` VALUES ('F0BBCD5A-CFBB-4614-BA2D-4D615E40F485', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', '2.412GHz', '3.067993', '0', '2020-09-20 15:19:12', '0');
INSERT INTO `wlan_cft` VALUES ('FECEBB48-A4F7-49B0-98EA-79263BDF587A', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', '2.462GHz', '3.127539', '0', '2020-09-20 15:18:00', '0');

-- ----------------------------
-- Table structure for wlan_eirp
-- ----------------------------
DROP TABLE IF EXISTS `wlan_eirp`;
CREATE TABLE `wlan_eirp` (
  `wlan_eirp_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `wlan_eirp_count` int(1) NOT NULL,
  `wlan_eirp_ant` varchar(255) NOT NULL,
  `wlan_eirp_model` varchar(255) NOT NULL,
  `wlan_eirp_rate` varchar(255) NOT NULL,
  `wlan_eirp_freq` varchar(255) NOT NULL,
  `wlan_eirp_result` double NOT NULL,
  `wlan_eirp_judgement` tinyint(1) NOT NULL,
  `wlan_eirp_time` datetime NOT NULL,
  `wlan_eirp_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`wlan_eirp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wlan_eirp
-- ----------------------------
INSERT INTO `wlan_eirp` VALUES ('0', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '5.47534', '0', '2020-09-20 20:03:26', '0');
INSERT INTO `wlan_eirp` VALUES ('000', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '19.378923', '0', '2020-09-21 09:21:56', '1');
INSERT INTO `wlan_eirp` VALUES ('01480CA6-2CFF-4ACF-AB84-ED4BC42316AF', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.462GHz', '-2.183626', '0', '2020-09-20 12:21:01', '0');
INSERT INTO `wlan_eirp` VALUES ('01DC82D7-AD60-425F-BA1F-56BD3EEFC4F6', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'P', '802.11n(20MHz)', 'MCS15', '2.412GHz', '16.843704', '0', '2020-09-20 14:08:29', '0');
INSERT INTO `wlan_eirp` VALUES ('038B057F-6AF2-4A70-B502-CD38FF3661E3', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.472GHz', '15.695297', '0', '2020-09-20 10:52:32', '0');
INSERT INTO `wlan_eirp` VALUES ('04243330-98B2-450A-8DAA-AFF94569B621', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '18.617388', '0', '2020-09-20 20:23:37', '0');
INSERT INTO `wlan_eirp` VALUES ('04243330-98B2-450A-8DAA-AFF94569B628', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '18.617388', '0', '2020-09-20 20:23:37', '0');
INSERT INTO `wlan_eirp` VALUES ('066846FC-5279-47B8-8B24-9DAD4236D681', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '5.858526', '0', '2020-09-20 19:54:58', '0');
INSERT INTO `wlan_eirp` VALUES ('066846FC-5279-47B8-8B24-9DAD4236D686', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '5.858526', '0', '2020-09-20 19:54:58', '0');
INSERT INTO `wlan_eirp` VALUES ('1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '54Mbps', '5.180GHz', '17.060631', '0', '2020-09-20 19:21:13', '0');
INSERT INTO `wlan_eirp` VALUES ('10', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '21.147513', '0', '2020-09-21 09:21:57', '1');
INSERT INTO `wlan_eirp` VALUES ('10301075-F198-4B2D-AFEE-D86106062AF1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '18.381979', '0', '2020-09-20 20:32:07', '0');
INSERT INTO `wlan_eirp` VALUES ('10301075-F198-4B2D-AFEE-D86106062AFA', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '18.381979', '0', '2020-09-20 20:32:07', '0');
INSERT INTO `wlan_eirp` VALUES ('11', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '9.014071', '0', '2020-09-21 10:02:40', '1');
INSERT INTO `wlan_eirp` VALUES ('111', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '16.391615', '0', '2020-09-20 19:47:05', '0');
INSERT INTO `wlan_eirp` VALUES ('1111', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '10.616358', '0', '2020-09-20 20:22:01', '1');
INSERT INTO `wlan_eirp` VALUES ('12', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '20.138996', '0', '2020-09-20 20:32:09', '0');
INSERT INTO `wlan_eirp` VALUES ('13', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'P', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '11.041337', '0', '2020-09-20 20:44:03', '0');
INSERT INTO `wlan_eirp` VALUES ('14', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '21.169095', '0', '2020-09-20 20:14:55', '1');
INSERT INTO `wlan_eirp` VALUES ('15', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '8.470639', '0', '2020-09-20 20:30:29', '0');
INSERT INTO `wlan_eirp` VALUES ('16', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '21.138996', '0', '2020-09-20 20:32:10', '0');
INSERT INTO `wlan_eirp` VALUES ('17', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11n(20MHz)', 'MCS15', '5.180GHz', '22.14502', '0', '2020-09-21 09:35:17', '0');
INSERT INTO `wlan_eirp` VALUES ('19', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '14.916576', '0', '2020-09-20 20:08:56', '0');
INSERT INTO `wlan_eirp` VALUES ('1ED5FE25-9EEB-4B78-9825-CDD218DF5511', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '20.301021', '0', '2020-09-20 20:18:20', '0');
INSERT INTO `wlan_eirp` VALUES ('1ED5FE25-9EEB-4B78-9825-CDD218DF551C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '20.301021', '0', '2020-09-20 20:18:20', '0');
INSERT INTO `wlan_eirp` VALUES ('2', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'P', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '11.750629', '0', '2020-09-21 10:10:13', '0');
INSERT INTO `wlan_eirp` VALUES ('20', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '17.999462', '0', '2020-09-20 20:27:05', '0');
INSERT INTO `wlan_eirp` VALUES ('20996C77-51D4-4A44-980F-DF9CA090DFB7', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.462GHz', '0.912388', '0', '2020-09-20 15:04:21', '0');
INSERT INTO `wlan_eirp` VALUES ('21', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.320GHz(TPC)', '16.626291', '0', '2020-09-20 18:24:56', '1');
INSERT INTO `wlan_eirp` VALUES ('2178C211-0566-4D1B-9BDD-1AA2A2CD67C0', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.825GHz', '16.230476', '0', '2020-09-20 21:02:14', '0');
INSERT INTO `wlan_eirp` VALUES ('22', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '10.750629', '0', '2020-09-21 10:10:12', '0');
INSERT INTO `wlan_eirp` VALUES ('222', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '20.631411', '0', '2020-09-20 20:40:33', '0');
INSERT INTO `wlan_eirp` VALUES ('2222', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11n(20MHz)', 'MCS15', '5.180GHz', '22.147513', '0', '2020-09-21 09:21:58', '1');
INSERT INTO `wlan_eirp` VALUES ('23', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '10.236558', '0', '2020-09-20 20:30:30', '0');
INSERT INTO `wlan_eirp` VALUES ('24', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '11.616358', '0', '2020-09-20 20:22:02', '1');
INSERT INTO `wlan_eirp` VALUES ('25', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11n(40MHz)', 'MCS15', '5.310GHz', '20.767924', '0', '2020-09-20 20:27:08', '0');
INSERT INTO `wlan_eirp` VALUES ('26', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.320GHz(TPC)', '16.627872', '0', '2020-09-20 18:20:32', '1');
INSERT INTO `wlan_eirp` VALUES ('27', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.320GHz(TPC)', '16.676071', '0', '2020-09-20 17:30:56', '1');
INSERT INTO `wlan_eirp` VALUES ('27357776-30F0-49CD-8786-950D528A4EDF', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.472GHz', '2.108733', '0', '2020-09-20 14:12:52', '0');
INSERT INTO `wlan_eirp` VALUES ('27C1CF49-68D5-4351-8383-C4F7D42FCF50', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '17.842033', '0', '2020-09-20 20:40:31', '0');
INSERT INTO `wlan_eirp` VALUES ('27C1CF49-68D5-4351-8383-C4F7D42FCF51', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '17.842033', '0', '2020-09-20 20:40:31', '0');
INSERT INTO `wlan_eirp` VALUES ('28', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '15.607082', '0', '2020-09-20 19:56:39', '0');
INSERT INTO `wlan_eirp` VALUES ('281', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '18.543747', '0', '2020-09-20 20:18:18', '0');
INSERT INTO `wlan_eirp` VALUES ('2AAF67EC-621C-4302-8478-1017885F28B1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '9.048923', '0', '2020-09-21 10:10:11', '0');
INSERT INTO `wlan_eirp` VALUES ('2AAF67EC-621C-4302-8478-1017885F28BA', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '9.048923', '0', '2020-09-21 10:10:11', '0');
INSERT INTO `wlan_eirp` VALUES ('3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '8.848739', '0', '2020-09-20 20:21:59', '1');
INSERT INTO `wlan_eirp` VALUES ('321612A9-6AB5-41CF-8766-EA7FAE51E381', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'P', '802.11n(40MHz)', 'MCS15', '2.422GHz', '4.436614', '0', '2020-09-20 14:59:43', '0');
INSERT INTO `wlan_eirp` VALUES ('333', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '21.14502', '0', '2020-09-21 09:35:16', '0');
INSERT INTO `wlan_eirp` VALUES ('3333', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11n(40MHz)', 'MCS15', '5.190GHz', '21.378299', '0', '2020-09-20 20:23:39', '0');
INSERT INTO `wlan_eirp` VALUES ('34E1F930-D2AF-4ACF-BF41-B60AD0550B11', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '19.375176', '0', '2020-09-21 09:33:03', '0');
INSERT INTO `wlan_eirp` VALUES ('34E1F930-D2AF-4ACF-BF41-B60AD0550B1A', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '19.375176', '0', '2020-09-21 09:33:03', '0');
INSERT INTO `wlan_eirp` VALUES ('38193EC6-29F8-40D4-9042-A4657628DA21', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '11.236558', '0', '2020-09-20 20:30:31', '0');
INSERT INTO `wlan_eirp` VALUES ('3A349839-517F-4AF0-BB45-1D5732693063', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '20.378299', '0', '2020-09-20 20:23:38', '0');
INSERT INTO `wlan_eirp` VALUES ('3FA60C96-154B-489A-A746-1F3D853B423B', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.745GHz', '16.239967', '0', '2020-09-20 20:58:59', '0');
INSERT INTO `wlan_eirp` VALUES ('4', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '15.802828', '1', '2020-09-21 09:59:50', '1');
INSERT INTO `wlan_eirp` VALUES ('424C85FE-6F2E-4EF8-AA4F-86D9854964D1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '10.727106', '0', '2020-09-21 10:02:41', '1');
INSERT INTO `wlan_eirp` VALUES ('4320AC95-B0CE-4A45-8845-FCEA4F0D920C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz(TPC)', '6.591227', '0', '2020-09-20 19:44:48', '0');
INSERT INTO `wlan_eirp` VALUES ('43576149-6FF1-4183-AA36-04181D679D3D', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '15.522522', '0', '2020-09-20 19:50:51', '0');
INSERT INTO `wlan_eirp` VALUES ('437ED095-7A69-4502-8FBA-59954464DCAB', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz', '16.680756', '0', '2020-09-20 17:25:53', '0');
INSERT INTO `wlan_eirp` VALUES ('439BB812-6FFC-4781-B570-CA1EE5C8FF3E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.180GHz', '17.060631', '0', '2020-09-20 19:21:13', '0');
INSERT INTO `wlan_eirp` VALUES ('44', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.320GHz', '16.253916', '0', '2020-09-20 19:27:39', '0');
INSERT INTO `wlan_eirp` VALUES ('444', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.320GHz(TPC)', '16.172266', '1', '2020-09-20 19:43:44', '1');
INSERT INTO `wlan_eirp` VALUES ('4444', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '15.359981', '0', '2020-09-20 20:05:10', '0');
INSERT INTO `wlan_eirp` VALUES ('45', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11n(20MHz)', 'MCS15', '5.180GHz', '22.169095', '0', '2020-09-20 20:14:56', '1');
INSERT INTO `wlan_eirp` VALUES ('46', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11n(20MHz)', 'MCS15', '5.320GHz', '21.301021', '0', '2020-09-20 20:18:21', '0');
INSERT INTO `wlan_eirp` VALUES ('461C3419-3ED9-4C34-8300-045725FAB16E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '11.750629', '0', '2020-09-21 10:10:13', '0');
INSERT INTO `wlan_eirp` VALUES ('47', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.180GHz', '17.610926', '0', '2020-09-20 17:21:58', '0');
INSERT INTO `wlan_eirp` VALUES ('48', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'P', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '11.236558', '0', '2020-09-20 20:30:31', '0');
INSERT INTO `wlan_eirp` VALUES ('482FA095-EF5C-43F4-AD84-409FA205E578', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.472GHz', '16.157474', '0', '2020-09-20 10:14:31', '0');
INSERT INTO `wlan_eirp` VALUES ('4833B10C-354A-4143-B223-3A04653D137A', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.422GHz', '1.703516', '0', '2020-09-20 14:59:42', '0');
INSERT INTO `wlan_eirp` VALUES ('49', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '20.378299', '0', '2020-09-20 20:23:38', '0');
INSERT INTO `wlan_eirp` VALUES ('4E7EFB4D-8A85-48ED-85A6-0DE9B24AB828', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '8.848739', '0', '2020-09-20 20:21:59', '1');
INSERT INTO `wlan_eirp` VALUES ('5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '6Mbps', '5.320GHz(TPC)', '6.073594', '0', '2020-09-21 10:22:22', '0');
INSERT INTO `wlan_eirp` VALUES ('50', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '10.727106', '0', '2020-09-21 10:02:41', '1');
INSERT INTO `wlan_eirp` VALUES ('50318313-E3F3-4487-8091-499239D537F0', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '15.275289', '0', '2020-09-19 19:40:01', '0');
INSERT INTO `wlan_eirp` VALUES ('5066BB89-5875-4481-977F-43822DD67EBE', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '15.802828', '1', '2020-09-21 09:59:50', '1');
INSERT INTO `wlan_eirp` VALUES ('50F842FD-8E66-4B5F-8505-FCB934269CB6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz(TPC)', '6.073594', '0', '2020-09-21 10:22:22', '0');
INSERT INTO `wlan_eirp` VALUES ('51', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '54Mbps', '5.320GHz(TPC)', '6.591227', '0', '2020-09-20 19:44:48', '0');
INSERT INTO `wlan_eirp` VALUES ('52', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '15.522522', '0', '2020-09-20 19:50:51', '0');
INSERT INTO `wlan_eirp` VALUES ('53', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '6Mbps', '5.320GHz', '16.680756', '0', '2020-09-20 17:25:53', '0');
INSERT INTO `wlan_eirp` VALUES ('53FAF8D7-12F0-4F9E-BFF2-6FBEFEF957D9', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '19.767924', '0', '2020-09-20 20:27:06', '0');
INSERT INTO `wlan_eirp` VALUES ('54C283EA-49EA-4B68-B933-8A035CED36B8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '15.011772', '0', '2020-09-20 20:00:02', '0');
INSERT INTO `wlan_eirp` VALUES ('555', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '11.727106', '0', '2020-09-21 10:02:42', '1');
INSERT INTO `wlan_eirp` VALUES ('5555', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '16.802828', '1', '2020-09-21 10:00:40', '1');
INSERT INTO `wlan_eirp` VALUES ('56398535-13B9-47C3-8F8D-029957CD96F4', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.422GHz', '-1.390767', '0', '2020-09-20 12:17:08', '0');
INSERT INTO `wlan_eirp` VALUES ('579152AA-D24F-42F1-A661-7D349FB2F229', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '8.271978', '0', '2020-09-20 20:44:01', '0');
INSERT INTO `wlan_eirp` VALUES ('57F34710-B141-48B6-A18A-17ECEA85E09F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '15.33902', '1', '2020-09-21 09:58:54', '1');
INSERT INTO `wlan_eirp` VALUES ('5B01216B-9EBC-43C2-ADCB-C07C7D7425BF', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '5.47534', '0', '2020-09-20 20:03:26', '0');
INSERT INTO `wlan_eirp` VALUES ('5B1DE96D-D076-4C0B-90D2-84014CA30339', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '9.014071', '0', '2020-09-21 10:02:40', '1');
INSERT INTO `wlan_eirp` VALUES ('6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '19.767924', '0', '2020-09-20 20:27:06', '0');
INSERT INTO `wlan_eirp` VALUES ('666', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '19.631411', '0', '2020-09-20 20:40:32', '0');
INSERT INTO `wlan_eirp` VALUES ('6A3A41D0-062C-4BAC-AF0E-D4A226191911', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '21.147513', '0', '2020-09-21 09:21:57', '1');
INSERT INTO `wlan_eirp` VALUES ('6A605D73-1F3A-42BB-B858-931C2ED952C4', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '20.138996', '0', '2020-09-20 20:32:09', '0');
INSERT INTO `wlan_eirp` VALUES ('6C03D64E-B411-4439-99E2-66CB82AE25C3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '11.041337', '0', '2020-09-20 20:44:03', '0');
INSERT INTO `wlan_eirp` VALUES ('7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '15.011772', '0', '2020-09-20 20:00:02', '0');
INSERT INTO `wlan_eirp` VALUES ('7350C726-FD52-4B41-9D63-514923CD1C87', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '21.169095', '0', '2020-09-20 20:14:55', '1');
INSERT INTO `wlan_eirp` VALUES ('755B590D-964B-4CD3-9B6F-F9A224C56A84', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '8.470639', '0', '2020-09-20 20:30:29', '0');
INSERT INTO `wlan_eirp` VALUES ('777', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '19.411312', '0', '2020-09-20 20:14:53', '1');
INSERT INTO `wlan_eirp` VALUES ('7A427D83-F6BE-4BF9-B7D1-E19AE1630FDE', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.412GHz', '15.013421', '0', '2020-09-20 10:09:23', '0');
INSERT INTO `wlan_eirp` VALUES ('7E794DDA-0894-4860-BE86-B9B001681808', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '13.468769', '0', '2020-09-19 19:38:33', '1');
INSERT INTO `wlan_eirp` VALUES ('7EF72B0E-5C6C-47D4-B995-B5D550A8B4A8', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(20MHz)', 'MCS15', '2.472GHz', '2.306258', '0', '2020-09-20 14:12:52', '0');
INSERT INTO `wlan_eirp` VALUES ('8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '8.271978', '0', '2020-09-20 20:44:01', '0');
INSERT INTO `wlan_eirp` VALUES ('8299D37E-2C6A-4804-997E-1C6A6D94DEF9', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '21.138996', '0', '2020-09-20 20:32:10', '0');
INSERT INTO `wlan_eirp` VALUES ('83BE0049-9C80-4003-A6A3-CCC5C393A8CF', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(20MHz)', 'MCS15', '5.180GHz', '22.14502', '0', '2020-09-21 09:35:17', '0');
INSERT INTO `wlan_eirp` VALUES ('845694EC-B37E-4348-B513-01E1C0165FD7', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.412GHz', '15.633399', '0', '2020-09-20 11:20:02', '0');
INSERT INTO `wlan_eirp` VALUES ('852904C8-96DE-4AF4-85D1-392F02ADA033', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '15.607082', '0', '2020-09-20 19:56:39', '0');
INSERT INTO `wlan_eirp` VALUES ('888', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '10.041337', '0', '2020-09-20 20:44:02', '0');
INSERT INTO `wlan_eirp` VALUES ('88C7AAEB-3ADA-4299-8658-7627BA097072', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '14.916576', '0', '2020-09-20 20:08:56', '0');
INSERT INTO `wlan_eirp` VALUES ('8919F818-3393-4E1A-BEC4-3D1BD25D3E3D', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(40MHz)', 'MCS15', '2.422GHz', '3.436614', '0', '2020-09-20 14:59:42', '0');
INSERT INTO `wlan_eirp` VALUES ('8C3EB1FC-AC6C-46C6-A714-536BF3D6C86C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '17.999462', '0', '2020-09-20 20:27:05', '0');
INSERT INTO `wlan_eirp` VALUES ('8FBA8A3E-79FE-452B-B481-0171170E5614', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz(TPC)', '16.626291', '0', '2020-09-20 18:24:56', '1');
INSERT INTO `wlan_eirp` VALUES ('9', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '15.33902', '1', '2020-09-21 09:58:54', '1');
INSERT INTO `wlan_eirp` VALUES ('933088F8-5A48-45DA-9497-4A2495FE1F6C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '10.750629', '0', '2020-09-21 10:10:12', '0');
INSERT INTO `wlan_eirp` VALUES ('94878438-35AA-4EFB-9F90-81A9A5A8868D', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '10.236558', '0', '2020-09-20 20:30:30', '0');
INSERT INTO `wlan_eirp` VALUES ('94DCE52A-A5B7-4F79-A2AE-B946C851B094', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.412GHz', '2.589622', '0', '2020-09-20 14:08:28', '0');
INSERT INTO `wlan_eirp` VALUES ('98D52DEB-906F-4C66-98E5-37D653876829', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '11.616358', '0', '2020-09-20 20:22:02', '1');
INSERT INTO `wlan_eirp` VALUES ('999', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '5.286969', '0', '2020-09-20 20:13:11', '0');
INSERT INTO `wlan_eirp` VALUES ('A18DF629-5859-40FF-ACA8-9DD65DBFC5ED', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(40MHz)', 'MCS15', '5.310GHz', '20.767924', '0', '2020-09-20 20:27:08', '0');
INSERT INTO `wlan_eirp` VALUES ('A830F4DE-C48C-40CB-BEC7-844F0CD6BB10', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz(TPC)', '16.627872', '0', '2020-09-20 18:20:32', '1');
INSERT INTO `wlan_eirp` VALUES ('AC5C3E9B-165B-42FE-9888-1876BB153639', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz(TPC)', '16.676071', '0', '2020-09-20 17:30:56', '1');
INSERT INTO `wlan_eirp` VALUES ('AD7E196F-431A-4AB2-8D65-DEC36DDC1D59', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '18.543747', '0', '2020-09-20 20:18:18', '0');
INSERT INTO `wlan_eirp` VALUES ('AF0578FA-DC55-4A8E-916A-92C38FCC6669', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.472GHz', '16.333588', '0', '2020-09-20 09:44:44', '0');
INSERT INTO `wlan_eirp` VALUES ('AF26F747-4DF8-4137-8992-CD4ED40C4D9B', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '16.391615', '0', '2020-09-20 19:47:05', '0');
INSERT INTO `wlan_eirp` VALUES ('B95B659E-0052-4C3B-BF66-1EC4DA3DF0F1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '20.631411', '0', '2020-09-20 20:40:33', '0');
INSERT INTO `wlan_eirp` VALUES ('BA4DB62D-E4AA-4F20-9AF9-C4CD5BBC56A6', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(20MHz)', 'MCS15', '2.412GHz', '15.843704', '0', '2020-09-20 14:08:29', '0');
INSERT INTO `wlan_eirp` VALUES ('C1913F3F-E551-44A5-A183-7FE2BFD44494', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(40MHz)', 'MCS15', '2.462GHz', '2.644917', '0', '2020-09-20 15:04:21', '0');
INSERT INTO `wlan_eirp` VALUES ('C28AA449-4FE1-4D2B-8A23-6249A524269F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '21.14502', '0', '2020-09-21 09:35:16', '0');
INSERT INTO `wlan_eirp` VALUES ('C3D3789A-46F4-4F06-88AC-6BDE7FF65C97', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz(TPC)', '16.172266', '1', '2020-09-20 19:43:44', '1');
INSERT INTO `wlan_eirp` VALUES ('C43F5146-4DCC-4E13-ADF2-04679E2212BD', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '11.727106', '0', '2020-09-21 10:02:42', '1');
INSERT INTO `wlan_eirp` VALUES ('C51F0E79-2992-4E3C-99A7-592D0D6B1CAC', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '19.631411', '0', '2020-09-20 20:40:32', '0');
INSERT INTO `wlan_eirp` VALUES ('C6F12C58-F06A-405F-BEE9-39BEA1323BC1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '19.411312', '0', '2020-09-20 20:14:53', '1');
INSERT INTO `wlan_eirp` VALUES ('C81C861D-CD94-4A87-A126-0E1B5F62F94F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '10.041337', '0', '2020-09-20 20:44:02', '0');
INSERT INTO `wlan_eirp` VALUES ('C839983F-844F-4438-9717-36026AE66B4B', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'P', '802.11n(40MHz)', 'MCS15', '2.462GHz', '3.644917', '0', '2020-09-20 15:04:23', '0');
INSERT INTO `wlan_eirp` VALUES ('CCF9C1CA-D775-4EB5-B691-1152993E2DF8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '5.286969', '0', '2020-09-20 20:13:11', '0');
INSERT INTO `wlan_eirp` VALUES ('D1E61223-4253-4222-915B-2900BFD2607E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '19.378923', '0', '2020-09-21 09:21:56', '1');
INSERT INTO `wlan_eirp` VALUES ('D2C00B1A-DDE5-44A5-A897-A70C87CB1884', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.472GHz', '16.814148', '0', '2020-09-20 10:25:16', '0');
INSERT INTO `wlan_eirp` VALUES ('D375BBE4-B093-4F6D-A439-E13583282282', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '10.616358', '0', '2020-09-20 20:22:01', '1');
INSERT INTO `wlan_eirp` VALUES ('D6701500-DB04-48A1-BAAB-32223AB8B759', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(20MHz)', 'MCS15', '5.180GHz', '22.147513', '0', '2020-09-21 09:21:58', '1');
INSERT INTO `wlan_eirp` VALUES ('D709DBCC-C047-4D73-B5D9-7586E3EBEFA0', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.462GHz', '-32.682728', '0', '2020-09-20 15:03:46', '1');
INSERT INTO `wlan_eirp` VALUES ('D77FC118-88E1-4496-8739-6CD683488981', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11ax(80MHz)', 'MCS11', '5.775GHz', '15.058826', '0', '2020-09-20 21:06:45', '0');
INSERT INTO `wlan_eirp` VALUES ('D86413E9-CED4-4D6C-AC7A-1EC55C0CEF76', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.412GHz', '15.743903', '0', '2020-09-20 10:21:03', '0');
INSERT INTO `wlan_eirp` VALUES ('DE217AC9-088F-4AF6-AF14-2EBDDF202692', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(40MHz)', 'MCS15', '5.190GHz', '21.378299', '0', '2020-09-20 20:23:39', '0');
INSERT INTO `wlan_eirp` VALUES ('E1C9F7C3-C650-43E2-841D-C3DFB980A1DD', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '15.359981', '0', '2020-09-20 20:05:10', '0');
INSERT INTO `wlan_eirp` VALUES ('E45DBCF0-08FA-4324-BADE-5145BD74CFE7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '16.802828', '1', '2020-09-21 10:00:40', '1');
INSERT INTO `wlan_eirp` VALUES ('E5E47585-7F1C-4C8B-B6E0-9E96C3F7AB8F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz', '16.253916', '0', '2020-09-20 19:27:39', '0');
INSERT INTO `wlan_eirp` VALUES ('E85DA3B4-22D3-4860-94A9-C4962F093D8D', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.472GHz', '-11.21376', '0', '2020-09-20 12:10:04', '0');
INSERT INTO `wlan_eirp` VALUES ('ECCCAA6D-F450-4040-BBD4-0ABA33241D5C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(20MHz)', 'MCS15', '5.180GHz', '22.169095', '0', '2020-09-20 20:14:56', '1');
INSERT INTO `wlan_eirp` VALUES ('ED9BD3DA-AAAD-4006-89B7-7A1475E7887B', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(40MHz)', 'MCS15', '2.462GHz', '-2.179756', '0', '2020-09-20 15:03:46', '1');
INSERT INTO `wlan_eirp` VALUES ('EFF4B345-405E-4942-BDFA-F0BD2F6E6BC8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(20MHz)', 'MCS15', '5.320GHz', '21.301021', '0', '2020-09-20 20:18:21', '0');
INSERT INTO `wlan_eirp` VALUES ('F0402DBF-4E93-4252-A319-304B960A0EA5', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.412GHz', '14.678723', '0', '2020-09-20 10:48:41', '0');
INSERT INTO `wlan_eirp` VALUES ('F0E98B40-43F6-4842-BAA3-944B3793518C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.180GHz', '17.610926', '0', '2020-09-20 17:21:58', '0');
INSERT INTO `wlan_eirp` VALUES ('F7140A83-663B-48FC-A526-01281B4A5416', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'P', '802.11n(20MHz)', 'MCS15', '2.472GHz', '3.306258', '0', '2020-09-20 14:12:53', '0');
INSERT INTO `wlan_eirp` VALUES ('FD04AB6D-F62E-48B2-9DF5-CC42689B233F', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '15.282761', '0', '2020-09-19 19:39:14', '1');

-- ----------------------------
-- Table structure for wlan_freq
-- ----------------------------
DROP TABLE IF EXISTS `wlan_freq`;
CREATE TABLE `wlan_freq` (
  `wlan_freq_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `wlan_freq_count` int(1) NOT NULL,
  `wlan_freq_ant` varchar(255) NOT NULL,
  `wlan_freq_model` varchar(255) NOT NULL,
  `wlan_freq_rate` varchar(255) NOT NULL,
  `wlan_freq_freq` varchar(255) NOT NULL,
  `wlan_freq_result` double NOT NULL,
  `wlan_freq_judgement` tinyint(1) NOT NULL,
  `wlan_freq_time` datetime NOT NULL,
  `wlan_freq_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`wlan_freq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wlan_freq
-- ----------------------------
INSERT INTO `wlan_freq` VALUES ('010CBF64-8964-4F35-9DA2-6E3381FDF1A2', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', 'fH', '2482280000', '0', '2020-09-20 10:46:25', '0');
INSERT INTO `wlan_freq` VALUES ('099A43A9-1BEA-4346-8643-77C95DDB2C55', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', 'fH', '5329480000', '0', '2020-09-20 20:41:50', '0');
INSERT INTO `wlan_freq` VALUES ('0BFE6EFD-3CAF-45CE-8627-F54CCF71325A', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', 'fL', '5170500000', '0', '2020-09-20 19:57:50', '0');
INSERT INTO `wlan_freq` VALUES ('0C3187F1-5174-4D59-B459-BC2FBEE898DA', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', 'fL', '5168080000', '0', '2020-09-20 17:23:11', '0');
INSERT INTO `wlan_freq` VALUES ('1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11ac(80MHz)', 'MCS9', 'fH', '5329480000', '0', '2020-09-20 20:41:50', '0');
INSERT INTO `wlan_freq` VALUES ('10', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', 'fL', '5168040000', '0', '2020-09-20 20:24:53', '0');
INSERT INTO `wlan_freq` VALUES ('11', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', 'fL', '5171120000', '0', '2020-09-20 20:06:21', '0');
INSERT INTO `wlan_freq` VALUES ('12', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', 'fL', '5169280000', '0', '2020-09-20 19:48:17', '0');
INSERT INTO `wlan_freq` VALUES ('13', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11ac(80MHz)', 'MCS9', 'fH', '5329000000', '0', '2020-09-20 20:41:51', '0');
INSERT INTO `wlan_freq` VALUES ('1309E22C-46F9-44CE-B397-6715CAE11787', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', 'fH', '2479520000', '0', '2020-09-20 12:11:14', '1');
INSERT INTO `wlan_freq` VALUES ('132B1409-5FEF-4CF3-99F9-D21F4FF96194', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', 'fH', '5330400000', '0', '2020-09-20 20:19:34', '0');
INSERT INTO `wlan_freq` VALUES ('14', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', 'fL', '5168360000', '0', '2020-09-20 20:16:10', '0');
INSERT INTO `wlan_freq` VALUES ('15', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(40MHz)', 'MCS15', 'fL', '5168040000', '0', '2020-09-20 20:24:54', '0');
INSERT INTO `wlan_freq` VALUES ('16', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(40MHz)', 'MCS15', 'fH', '5329500000', '0', '2020-09-20 20:28:22', '0');
INSERT INTO `wlan_freq` VALUES ('17', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '6Mbps', 'fH', '5331920000', '0', '2020-09-20 17:27:08', '0');
INSERT INTO `wlan_freq` VALUES ('18', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', 'fL', '5168360000', '0', '2020-09-20 20:16:11', '0');
INSERT INTO `wlan_freq` VALUES ('19', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', 'fH', '5330280000', '0', '2020-09-20 19:28:50', '0');
INSERT INTO `wlan_freq` VALUES ('1D30319C-CA69-4C94-8512-1237B4BF5AEA', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', 'fH', '5329500000', '0', '2020-09-20 20:01:16', '0');
INSERT INTO `wlan_freq` VALUES ('2', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', 'MCS15', 'fL', '5170500000', '0', '2020-09-20 19:57:50', '0');
INSERT INTO `wlan_freq` VALUES ('20', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', 'fH', '5329000000', '0', '2020-09-20 20:10:10', '0');
INSERT INTO `wlan_freq` VALUES ('21', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', 'fL', '5170640000', '0', '2020-09-20 20:33:25', '0');
INSERT INTO `wlan_freq` VALUES ('22', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', 'fH', '5331320000', '0', '2020-09-20 20:19:33', '0');
INSERT INTO `wlan_freq` VALUES ('2793C18B-446F-4E96-AAED-64EDEAFE7627', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', 'fL', '5169320000', '0', '2020-09-20 19:22:26', '0');
INSERT INTO `wlan_freq` VALUES ('2ACE5F08-0485-4D6C-8057-79C2FC817434', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(40MHz)', 'MCS15', 'fH', '2480240000', '0', '2020-09-20 15:05:36', '0');
INSERT INTO `wlan_freq` VALUES ('3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '6Mbps', 'fL', '5168080000', '0', '2020-09-20 17:23:11', '0');
INSERT INTO `wlan_freq` VALUES ('353859D2-055B-4DE2-A347-E28C20134B11', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', 'fH', '2480240000', '0', '2020-09-20 12:22:10', '0');
INSERT INTO `wlan_freq` VALUES ('3A29F7AA-0C73-4773-BEB4-2FDDECE85B4F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', 'fL', '5170640000', '0', '2020-09-20 20:33:26', '0');
INSERT INTO `wlan_freq` VALUES ('4', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(20MHz)', 'MCS15', 'fH', '5330400000', '0', '2020-09-20 20:19:34', '0');
INSERT INTO `wlan_freq` VALUES ('4267A674-D516-44B3-8532-1C13665E2F25', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', 'fH', '5330400000', '0', '2020-09-20 19:52:02', '0');
INSERT INTO `wlan_freq` VALUES ('46DF602B-048B-48C9-BA61-6348F6A4E368', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', 'fH', '5330460000', '0', '2020-09-20 20:28:21', '0');
INSERT INTO `wlan_freq` VALUES ('4854F940-244D-4D14-A538-F38BECB2B7E8', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', 'fH', '2480960000', '0', '2020-09-20 12:15:27', '0');
INSERT INTO `wlan_freq` VALUES ('4FF90A5B-C74B-4BA2-BD0E-A79A4244EF6B', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', 'fL', '5168040000', '0', '2020-09-20 20:24:53', '0');
INSERT INTO `wlan_freq` VALUES ('5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', 'MCS15', 'fH', '5329500000', '0', '2020-09-20 20:01:16', '0');
INSERT INTO `wlan_freq` VALUES ('59098F79-4997-49D1-AA1C-F2EE66A22432', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', 'fL', '2399600000', '1', '2020-09-20 10:22:13', '1');
INSERT INTO `wlan_freq` VALUES ('5E743518-AD3A-4ACA-AFF2-4940C36666A0', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', 'fL', '2403640000', '0', '2020-09-20 15:00:56', '0');
INSERT INTO `wlan_freq` VALUES ('6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '54Mbps', 'fL', '5169320000', '0', '2020-09-20 19:22:26', '0');
INSERT INTO `wlan_freq` VALUES ('678E980F-D31E-4BD1-92B8-EF23F5A9EA8A', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11ax(80MHz)', 'MCS11', 'fH', '5813880000', '0', '2020-09-20 21:07:59', '0');
INSERT INTO `wlan_freq` VALUES ('6BAB286D-D32D-48F2-861A-4391356236E1', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', 'fL', '5733640000', '0', '2020-09-20 21:00:11', '0');
INSERT INTO `wlan_freq` VALUES ('6E7E822F-5B33-4F0C-B197-7760E4992B4D', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', 'fL', '2403700000', '0', '2020-09-20 12:18:19', '0');
INSERT INTO `wlan_freq` VALUES ('6FC28677-A610-4DC4-98B4-0077F5D8BA98', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', 'fL', '2403000000', '0', '2020-09-20 14:09:42', '0');
INSERT INTO `wlan_freq` VALUES ('7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11ac(80MHz)', 'MCS9', 'fL', '5170640000', '0', '2020-09-20 20:33:26', '0');
INSERT INTO `wlan_freq` VALUES ('70904769-07C1-4150-9DA9-B5302170D404', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', 'fL', '5171120000', '0', '2020-09-20 20:06:21', '0');
INSERT INTO `wlan_freq` VALUES ('71498706-1688-40A8-82BE-11259FBE73C1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', 'fL', '5169280000', '0', '2020-09-20 19:48:17', '0');
INSERT INTO `wlan_freq` VALUES ('72426F8C-E991-458D-9B63-4AA6759D6520', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', 'fH', '5836000000', '0', '2020-09-20 21:03:26', '0');
INSERT INTO `wlan_freq` VALUES ('78E3A49A-4C1A-4CFB-9A21-E72AF9B652DD', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', 'fL', '2402240000', '0', '2020-09-19 19:41:15', '0');
INSERT INTO `wlan_freq` VALUES ('8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(20MHz)', 'MCS15', 'fH', '5330400000', '0', '2020-09-20 19:52:02', '0');
INSERT INTO `wlan_freq` VALUES ('81824808-EEDC-4C9D-990E-7DEB7292F018', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', 'fH', '5329000000', '0', '2020-09-20 20:41:51', '0');
INSERT INTO `wlan_freq` VALUES ('822153D9-A777-4FC9-A84D-796A814CD526', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', 'fL', '5168360000', '0', '2020-09-20 20:16:10', '0');
INSERT INTO `wlan_freq` VALUES ('8A271A78-270F-4889-AA11-E403D6835BC5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', 'fL', '5168040000', '0', '2020-09-20 20:24:54', '0');
INSERT INTO `wlan_freq` VALUES ('9', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(40MHz)', 'MCS15', 'fH', '5330460000', '0', '2020-09-20 20:28:21', '0');
INSERT INTO `wlan_freq` VALUES ('90C3518B-08DE-48DA-9B3F-F6FE50C00AF8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', 'fH', '5329500000', '0', '2020-09-20 20:28:22', '0');
INSERT INTO `wlan_freq` VALUES ('97F0DD81-31A2-4B7F-AE60-AAC5CD18735C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', 'fH', '5331920000', '0', '2020-09-20 17:27:08', '0');
INSERT INTO `wlan_freq` VALUES ('9F063BEA-C05F-4C9F-B997-B22C3F29DD74', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', 'fL', '5168360000', '0', '2020-09-20 20:16:11', '0');
INSERT INTO `wlan_freq` VALUES ('A028B276-831D-40FF-85CB-F26ADB45B180', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', 'fL', '2402240000', '0', '2020-09-20 10:49:52', '0');
INSERT INTO `wlan_freq` VALUES ('A378D76B-1A9D-457D-912D-9100BAAE2F75', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', 'fH', '2482040000', '0', '2020-09-20 10:53:44', '0');
INSERT INTO `wlan_freq` VALUES ('A38251EB-AA5F-4F8E-9CC4-31B20AFC8482', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', 'fH', '2484920000', '1', '2020-09-20 10:26:26', '1');
INSERT INTO `wlan_freq` VALUES ('B50C0687-BDF0-45B9-B0FE-23DC09669FF2', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', 'fH', '5330280000', '0', '2020-09-20 19:28:50', '0');
INSERT INTO `wlan_freq` VALUES ('B62C9D16-01B4-498E-ADB9-9AEF61400B13', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(20MHz)', 'MCS15', 'fH', '2480960000', '0', '2020-09-20 14:14:05', '0');
INSERT INTO `wlan_freq` VALUES ('B71A5DB1-4E8B-4B1A-8B3D-BD5FAF8B078E', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', 'fL', '2401840000', '0', '2020-09-20 11:21:12', '0');
INSERT INTO `wlan_freq` VALUES ('B9D1FFA5-2413-41D8-BA51-9A87AEB5B011', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', 'fH', '2481880000', '0', '2020-09-20 10:15:43', '0');
INSERT INTO `wlan_freq` VALUES ('BF18D77D-6C89-49F0-A101-C6A40E4190CE', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', 'fH', '5329000000', '0', '2020-09-20 20:10:10', '0');
INSERT INTO `wlan_freq` VALUES ('CA8CEDCF-1216-4F3B-8656-FB0D6CFF6AC9', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', 'fH', '2481920000', '0', '2020-09-20 09:45:57', '0');
INSERT INTO `wlan_freq` VALUES ('CA9BC1E4-8D5D-4FB0-8ACC-28D2F9B3EFCA', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', 'fL', '2402200000', '0', '2020-09-20 10:45:16', '0');
INSERT INTO `wlan_freq` VALUES ('CC64D811-16B2-463B-9A85-B14ED6B51836', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(20MHz)', 'MCS15', 'fL', '2401840000', '0', '2020-09-20 14:09:44', '0');
INSERT INTO `wlan_freq` VALUES ('CDF43CAF-398D-497A-A880-8A2353818532', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', 'fH', '2480960000', '0', '2020-09-20 14:14:04', '0');
INSERT INTO `wlan_freq` VALUES ('D42AB05E-9D78-4FB7-9F20-0012C45EB95A', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11ax(80MHz)', 'MCS11', 'fL', '5736120000', '0', '2020-09-20 21:07:59', '0');
INSERT INTO `wlan_freq` VALUES ('D7325330-8356-4A29-B9DD-39007A9DD40B', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', 'fH', '2480300000', '0', '2020-09-20 15:05:35', '0');
INSERT INTO `wlan_freq` VALUES ('E38B6BD6-C747-4CF7-B442-AA1AB8760542', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', 'fL', '5170640000', '0', '2020-09-20 20:33:25', '0');
INSERT INTO `wlan_freq` VALUES ('EE2941C9-8128-4C61-BF51-9A2B375C06D9', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(40MHz)', 'MCS15', 'fL', '2403640000', '0', '2020-09-20 15:00:57', '0');
INSERT INTO `wlan_freq` VALUES ('F09EBC72-CFBE-47DC-8581-397FE699B7D6', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', 'fL', '2402320000', '0', '2020-09-20 10:10:33', '0');
INSERT INTO `wlan_freq` VALUES ('F34C7C97-1F1B-491E-BD13-D62F290F6EED', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', 'fH', '5331320000', '0', '2020-09-20 20:19:33', '0');

-- ----------------------------
-- Table structure for wlan_maxpow
-- ----------------------------
DROP TABLE IF EXISTS `wlan_maxpow`;
CREATE TABLE `wlan_maxpow` (
  `wlan_maxpow_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `wlan_maxpow_count` int(1) NOT NULL,
  `wlan_maxpow_ant` varchar(255) NOT NULL,
  `wlan_maxpow_model` varchar(255) NOT NULL,
  `wlan_maxpow_rate` varchar(255) NOT NULL,
  `wlan_maxpow_freq` varchar(255) NOT NULL,
  `wlan_maxpow_result` double NOT NULL,
  `wlan_maxpow_judgement` tinyint(1) NOT NULL,
  `wlan_maxpow_time` datetime NOT NULL,
  `wlan_maxpow_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`wlan_maxpow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wlan_maxpow
-- ----------------------------
INSERT INTO `wlan_maxpow` VALUES ('1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '9.713144', '0', '2020-09-20 20:15:18', '1');
INSERT INTO `wlan_maxpow` VALUES ('10', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.320GHz(TPC)', '6.062', '1', '2020-09-20 18:44:29', '0');
INSERT INTO `wlan_maxpow` VALUES ('11', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '7.976', '0', '2020-09-20 20:15:17', '1');
INSERT INTO `wlan_maxpow` VALUES ('12', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '4.172', '0', '2020-09-20 20:24:00', '0');
INSERT INTO `wlan_maxpow` VALUES ('13', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '-5.591', '0', '2020-09-20 19:55:20', '0');
INSERT INTO `wlan_maxpow` VALUES ('13EC381F-DD22-4CE2-922F-42BD904F5525', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.472GHz', '8.446', '0', '2020-09-20 09:45:08', '0');
INSERT INTO `wlan_maxpow` VALUES ('14', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '2.89035', '0', '2020-09-20 20:32:33', '0');
INSERT INTO `wlan_maxpow` VALUES ('14FDE30D-F1E7-4CAC-B018-8C35C48A6399', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz', '4.751', '0', '2020-09-20 19:28:00', '0');
INSERT INTO `wlan_maxpow` VALUES ('15', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '8.825686', '0', '2020-09-20 20:18:43', '0');
INSERT INTO `wlan_maxpow` VALUES ('15CE9D18-0160-4914-9242-E82E47C231AA', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.412GHz', '4.415', '0', '2020-09-20 10:21:24', '0');
INSERT INTO `wlan_maxpow` VALUES ('16', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '-3.117867', '0', '2020-09-20 20:30:56', '0');
INSERT INTO `wlan_maxpow` VALUES ('17', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.320GHz(TPC)', '-4.902', '0', '2020-09-20 19:45:10', '0');
INSERT INTO `wlan_maxpow` VALUES ('18', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '5.345371', '0', '2020-09-20 20:27:30', '0');
INSERT INTO `wlan_maxpow` VALUES ('19', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11n(40MHz)', 'MCS15', '5.190GHz', '6.936015', '0', '2020-09-20 20:24:02', '0');
INSERT INTO `wlan_maxpow` VALUES ('1976F7DF-FBDA-47FA-BF2A-8F59E8063C4A', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '-7.417986', '0', '2020-09-20 20:44:25', '0');
INSERT INTO `wlan_maxpow` VALUES ('1D75765C-BB77-4158-9886-2158A19FD675', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '-2.615', '0', '2020-09-20 20:22:23', '0');
INSERT INTO `wlan_maxpow` VALUES ('1FD8FFAE-ACC1-4ED8-A9DE-0601D4ED04D8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '5.936015', '0', '2020-09-20 20:24:01', '0');
INSERT INTO `wlan_maxpow` VALUES ('2', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '7.88', '0', '2020-09-21 09:22:20', '0');
INSERT INTO `wlan_maxpow` VALUES ('20', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '1.125', '0', '2020-09-20 20:32:32', '0');
INSERT INTO `wlan_maxpow` VALUES ('21', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '0.539', '0', '2020-09-20 20:40:56', '0');
INSERT INTO `wlan_maxpow` VALUES ('22', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '-4.117867', '0', '2020-09-20 20:30:54', '0');
INSERT INTO `wlan_maxpow` VALUES ('23', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'P', '802.11n(20MHz)', 'MCS15', '5.320GHz', '9.825686', '0', '2020-09-20 20:18:44', '0');
INSERT INTO `wlan_maxpow` VALUES ('23B6DCAD-01EC-4A5B-A049-2D5CED6B344A', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.412GHz', '4.209', '0', '2020-09-20 11:20:23', '0');
INSERT INTO `wlan_maxpow` VALUES ('24', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '6Mbps', '5.180GHz', '7.038', '0', '2020-09-20 17:22:20', '0');
INSERT INTO `wlan_maxpow` VALUES ('25', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '-5.856', '0', '2020-09-20 20:30:53', '0');
INSERT INTO `wlan_maxpow` VALUES ('26', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '-8.935', '0', '2020-09-20 20:03:48', '0');
INSERT INTO `wlan_maxpow` VALUES ('27', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '6Mbps', '5.320GHz', '6.107', '0', '2020-09-20 17:26:17', '0');
INSERT INTO `wlan_maxpow` VALUES ('28', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '9.649028', '0', '2020-09-21 09:22:37', '0');
INSERT INTO `wlan_maxpow` VALUES ('29', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '0.595', '0', '2020-09-20 20:00:24', '0');
INSERT INTO `wlan_maxpow` VALUES ('2F254309-25FF-48E0-97AB-740A02416F96', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.462GHz', '-13.34', '0', '2020-09-20 15:04:44', '0');
INSERT INTO `wlan_maxpow` VALUES ('3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '-0.842624', '0', '2020-09-20 20:22:24', '0');
INSERT INTO `wlan_maxpow` VALUES ('30', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '-9.181', '0', '2020-09-20 20:44:24', '0');
INSERT INTO `wlan_maxpow` VALUES ('31', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '-12.185', '0', '2020-09-20 20:13:32', '0');
INSERT INTO `wlan_maxpow` VALUES ('32', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '4.894', '0', '2020-09-20 19:47:26', '0');
INSERT INTO `wlan_maxpow` VALUES ('33', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'P', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '3.339366', '0', '2020-09-20 20:40:58', '0');
INSERT INTO `wlan_maxpow` VALUES ('34', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'P', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '0.157376', '0', '2020-09-20 20:22:26', '0');
INSERT INTO `wlan_maxpow` VALUES ('349D5025-F78A-43E9-8898-7CF504590D8F', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.472GHz', '9.817', '0', '2020-09-20 10:14:52', '0');
INSERT INTO `wlan_maxpow` VALUES ('35', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '-1.872', '0', '2020-09-20 20:05:31', '0');
INSERT INTO `wlan_maxpow` VALUES ('36', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'P', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '-6.417986', '0', '2020-09-20 20:44:26', '0');
INSERT INTO `wlan_maxpow` VALUES ('36944E10-B986-4609-B341-0490B1DA360F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.180GHz', '5.591', '0', '2020-09-20 19:21:36', '0');
INSERT INTO `wlan_maxpow` VALUES ('37', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'P', '802.11n(20MHz)', 'MCS15', '5.180GHz', '10.649028', '1', '2020-09-21 09:22:39', '0');
INSERT INTO `wlan_maxpow` VALUES ('38', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '4.044', '0', '2020-09-20 19:51:12', '0');
INSERT INTO `wlan_maxpow` VALUES ('39', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '7.07', '0', '2020-09-20 20:18:42', '0');
INSERT INTO `wlan_maxpow` VALUES ('3AC4B34B-5DDA-41A4-9CC0-2D834B06DB4E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '3.574', '0', '2020-09-20 20:27:29', '0');
INSERT INTO `wlan_maxpow` VALUES ('3C54F5CD-C2E4-4FE5-88CB-92393DDDC94A', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.472GHz', '-9.38', '0', '2020-09-20 14:49:14', '0');
INSERT INTO `wlan_maxpow` VALUES ('3FCD0D2C-86E0-49E1-A9CE-9060E0B17042', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '1.171', '0', '2020-09-20 19:57:00', '0');
INSERT INTO `wlan_maxpow` VALUES ('4', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11n(40MHz)', 'MCS15', '5.310GHz', '6.345371', '0', '2020-09-20 20:27:31', '0');
INSERT INTO `wlan_maxpow` VALUES ('40', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '2.339366', '0', '2020-09-20 20:40:57', '0');
INSERT INTO `wlan_maxpow` VALUES ('41', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '1.171', '0', '2020-09-20 19:57:00', '0');
INSERT INTO `wlan_maxpow` VALUES ('42', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '3.574', '0', '2020-09-20 20:27:29', '0');
INSERT INTO `wlan_maxpow` VALUES ('43', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '54Mbps', '5.180GHz', '5.591', '0', '2020-09-20 19:21:36', '0');
INSERT INTO `wlan_maxpow` VALUES ('44', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '5.936015', '0', '2020-09-20 20:24:01', '0');
INSERT INTO `wlan_maxpow` VALUES ('45', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '-2.615', '0', '2020-09-20 20:22:23', '0');
INSERT INTO `wlan_maxpow` VALUES ('457FE7F9-9F4B-4C9A-B7C7-B9FF7418198D', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.412GHz', '-8.729', '0', '2020-09-20 14:08:50', '1');
INSERT INTO `wlan_maxpow` VALUES ('46', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '-7.417986', '0', '2020-09-20 20:44:25', '0');
INSERT INTO `wlan_maxpow` VALUES ('47', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '54Mbps', '5.320GHz', '4.751', '0', '2020-09-20 19:28:00', '0');
INSERT INTO `wlan_maxpow` VALUES ('48', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '9.713144', '0', '2020-09-20 20:15:18', '1');
INSERT INTO `wlan_maxpow` VALUES ('4E55B7CA-A523-4694-AB0F-47C8790FAD02', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '2.339366', '0', '2020-09-20 20:40:57', '0');
INSERT INTO `wlan_maxpow` VALUES ('4F0B5B09-1815-4384-848B-56F59A56D91E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '7.07', '0', '2020-09-20 20:18:42', '0');
INSERT INTO `wlan_maxpow` VALUES ('5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11n(20MHz)', 'MCS15', '5.180GHz', '10.713144', '1', '2020-09-20 20:15:19', '1');
INSERT INTO `wlan_maxpow` VALUES ('54008933-CBE0-4BAA-9999-89EBAE624A80', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '7.369', '0', '2020-09-19 19:40:24', '0');
INSERT INTO `wlan_maxpow` VALUES ('55F99B49-D5A0-4D3D-8991-5559F51C73D3', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.745GHz', '5.692', '0', '2020-09-20 20:59:20', '0');
INSERT INTO `wlan_maxpow` VALUES ('57975F06-DF00-4C24-8190-826A0997C74E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '4.044', '0', '2020-09-20 19:51:12', '0');
INSERT INTO `wlan_maxpow` VALUES ('5BFA92DE-5EB0-4D35-8066-95A126D0E0F5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(20MHz)', 'MCS15', '5.180GHz', '10.649028', '1', '2020-09-21 09:22:39', '0');
INSERT INTO `wlan_maxpow` VALUES ('5FBAF44D-B297-46FB-BC99-7FD1CB85B041', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(20MHz)', 'MCS15', '2.472GHz', '-9.184577', '0', '2020-09-20 14:49:15', '0');
INSERT INTO `wlan_maxpow` VALUES ('6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.320GHz(TPC)', '6.088', '1', '2020-09-20 17:31:17', '1');
INSERT INTO `wlan_maxpow` VALUES ('60AF88D7-13BA-493D-9E64-630385739588', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.412GHz', '8.57', '0', '2020-09-20 10:09:43', '0');
INSERT INTO `wlan_maxpow` VALUES ('6B4FB9C6-4D6B-4BB1-B110-D629CBA3E158', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '-6.417986', '0', '2020-09-20 20:44:26', '0');
INSERT INTO `wlan_maxpow` VALUES ('6C347637-10D7-43FE-9638-719E6E2341A2', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '-1.872', '0', '2020-09-20 20:05:31', '0');
INSERT INTO `wlan_maxpow` VALUES ('6D1EFD5C-CE92-450E-B569-5D19A6D97662', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '0.157376', '0', '2020-09-20 20:22:26', '0');
INSERT INTO `wlan_maxpow` VALUES ('7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'P', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '3.89035', '0', '2020-09-20 20:32:34', '0');
INSERT INTO `wlan_maxpow` VALUES ('726F87DC-7A27-4B37-B42E-E6B576D4BAA7', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.422GHz', '-12.08', '0', '2020-09-20 15:00:06', '0');
INSERT INTO `wlan_maxpow` VALUES ('74991BFD-C70D-4C35-8090-A8979429A2CC', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.422GHz', '-15.144', '0', '2020-09-20 12:17:29', '0');
INSERT INTO `wlan_maxpow` VALUES ('780B395B-5C22-4369-91A1-FDD9D25AD9D7', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'P', '802.11n(20MHz)', 'MCS15', '2.472GHz', '-8.184577', '0', '2020-09-20 14:49:15', '0');
INSERT INTO `wlan_maxpow` VALUES ('7C3941D8-8B80-4D2C-8F77-9447AD2FFD96', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.412GHz', '3.316', '0', '2020-09-20 10:49:02', '0');
INSERT INTO `wlan_maxpow` VALUES ('7D3CA4D7-60D1-4446-8889-E69AC574B1D3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '3.339366', '0', '2020-09-20 20:40:58', '0');
INSERT INTO `wlan_maxpow` VALUES ('7DB9DC3F-D9A0-46A6-8DE5-5F6785D136AD', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '4.894', '0', '2020-09-20 19:47:26', '0');
INSERT INTO `wlan_maxpow` VALUES ('8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '-2.354', '0', '2020-09-20 20:09:17', '0');
INSERT INTO `wlan_maxpow` VALUES ('80462719-7377-4C9B-9246-49BB190DA33C', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.472GHz', '-22.75', '0', '2020-09-20 12:10:26', '0');
INSERT INTO `wlan_maxpow` VALUES ('80B54C92-7681-4D1F-B390-88597080E418', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '-12.185', '0', '2020-09-20 20:13:32', '0');
INSERT INTO `wlan_maxpow` VALUES ('87D76332-0E2D-472F-BB1E-AC546757CDF3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz(TPC)', '-9.181', '0', '2020-09-20 20:44:24', '0');
INSERT INTO `wlan_maxpow` VALUES ('8E253978-45BF-4293-99FD-C1DAE5DF071D', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '0.595', '0', '2020-09-20 20:00:24', '0');
INSERT INTO `wlan_maxpow` VALUES ('9', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.320GHz(TPC)', '4.731', '1', '2020-09-20 19:44:06', '1');
INSERT INTO `wlan_maxpow` VALUES ('92F12609-EBD1-4FE4-8AE5-5FA9163EAC96', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(40MHz)', 'MCS15', '2.422GHz', '-10.336914', '0', '2020-09-20 15:00:06', '0');
INSERT INTO `wlan_maxpow` VALUES ('94051758-3F5D-47A5-8F3E-971695BCC88F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '9.649028', '0', '2020-09-21 09:22:37', '0');
INSERT INTO `wlan_maxpow` VALUES ('946A2DAB-235D-4D18-A429-278A286241E1', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'P', '802.11n(40MHz)', 'MCS15', '2.422GHz', '-9.336914', '0', '2020-09-20 15:00:07', '0');
INSERT INTO `wlan_maxpow` VALUES ('97E16281-7806-451B-8C87-C9CCDC7DAA40', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11ax(80MHz)', 'MCS11', '5.775GHz', '-1.704', '0', '2020-09-20 21:07:06', '0');
INSERT INTO `wlan_maxpow` VALUES ('98E717A4-2684-44C8-99C8-E2A96B3AC1FA', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz', '6.107', '0', '2020-09-20 17:26:17', '0');
INSERT INTO `wlan_maxpow` VALUES ('9A7CE8F5-1279-4787-A369-79D49DC0C69F', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(40MHz)', 'MCS15', '2.462GHz', '-11.584979', '0', '2020-09-20 15:04:44', '0');
INSERT INTO `wlan_maxpow` VALUES ('9AB87A58-2492-4455-8E34-CE73A559132E', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.472GHz', '4.294', '0', '2020-09-20 10:52:53', '0');
INSERT INTO `wlan_maxpow` VALUES ('9AE3200F-8AFF-464C-AAC3-219CD299DD19', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '-8.935', '0', '2020-09-20 20:03:48', '0');
INSERT INTO `wlan_maxpow` VALUES ('9B9080E8-64DA-4963-B305-D241435F1566', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.412GHz', '-8.587', '0', '2020-09-20 14:54:23', '0');
INSERT INTO `wlan_maxpow` VALUES ('9DC48F10-E7F5-4074-89F8-A96516AEB162', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.462GHz', '-16.368', '0', '2020-09-20 12:21:22', '0');
INSERT INTO `wlan_maxpow` VALUES ('9EA087EE-2560-414D-AE23-CDE10313FFB7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '-5.856', '0', '2020-09-20 20:30:53', '0');
INSERT INTO `wlan_maxpow` VALUES ('9FAA69C4-FE2F-4454-842A-AEDBBB335615', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.180GHz', '7.038', '0', '2020-09-20 17:22:20', '0');
INSERT INTO `wlan_maxpow` VALUES ('A10F53D4-DA40-4666-B4B0-74BF2DC8CE77', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(20MHz)', 'MCS15', '5.320GHz', '9.825686', '0', '2020-09-20 20:18:44', '0');
INSERT INTO `wlan_maxpow` VALUES ('A5865793-2F21-4E21-82CE-D626FACF9F20', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '-4.117867', '0', '2020-09-20 20:30:54', '0');
INSERT INTO `wlan_maxpow` VALUES ('A6BD06FB-8ADB-4FCD-992A-89A3A2201E30', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'P', '802.11n(20MHz)', 'MCS15', '2.412GHz', '5.431341', '0', '2020-09-20 14:54:24', '0');
INSERT INTO `wlan_maxpow` VALUES ('A77CBC32-D2EC-4D20-A4C7-41F2CACFBB3A', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '0.539', '0', '2020-09-20 20:40:56', '0');
INSERT INTO `wlan_maxpow` VALUES ('ADBF48EC-0D38-42B6-BEC2-D6FEF36CCF56', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '1.125', '0', '2020-09-20 20:32:32', '0');
INSERT INTO `wlan_maxpow` VALUES ('B1F5FE9D-0291-4FA5-A4E6-442B6EE5364D', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(40MHz)', 'MCS15', '5.190GHz', '6.936015', '0', '2020-09-20 20:24:02', '0');
INSERT INTO `wlan_maxpow` VALUES ('B58561D9-95E1-43CF-8045-A34528B8812C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '5.345371', '0', '2020-09-20 20:27:30', '0');
INSERT INTO `wlan_maxpow` VALUES ('B5DC7D9B-BE17-4307-977D-8F8E76AB67C7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz(TPC)', '-4.902', '0', '2020-09-20 19:45:10', '0');
INSERT INTO `wlan_maxpow` VALUES ('BDDF8ECC-75B7-490E-9AA5-B9C0C3A22C23', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(40MHz)', 'MCS15', '5.310GHz(TPC)', '-3.117867', '0', '2020-09-20 20:30:56', '0');
INSERT INTO `wlan_maxpow` VALUES ('C9FAA6A2-900C-4275-8A47-510C9087D341', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '8.825686', '0', '2020-09-20 20:18:43', '0');
INSERT INTO `wlan_maxpow` VALUES ('CC40D85D-1A0C-4173-A555-299380C5EFE6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '2.89035', '0', '2020-09-20 20:32:33', '0');
INSERT INTO `wlan_maxpow` VALUES ('CC808AB2-E780-464C-B351-7DDF7714A43A', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '-5.591', '0', '2020-09-20 19:55:20', '0');
INSERT INTO `wlan_maxpow` VALUES ('CD0E40C9-A0EF-4CA8-BC4B-F13330D689BE', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(20MHz)', 'MCS15', '2.412GHz', '4.431341', '0', '2020-09-20 14:54:24', '0');
INSERT INTO `wlan_maxpow` VALUES ('CDECEE49-313B-4752-B3C4-0FB7F1572725', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '4.172', '0', '2020-09-20 20:24:00', '0');
INSERT INTO `wlan_maxpow` VALUES ('CE44E5DF-729E-476B-A0CF-3C91BD1E4584', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '7.976', '0', '2020-09-20 20:15:17', '1');
INSERT INTO `wlan_maxpow` VALUES ('D2A7C883-A10C-487B-83FE-CB171AE97726', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz(TPC)', '6.062', '1', '2020-09-20 18:44:29', '0');
INSERT INTO `wlan_maxpow` VALUES ('D826F3A0-CDCA-4632-ADE1-0DEEC5244F98', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'P', '802.11n(40MHz)', 'MCS15', '2.462GHz', '-10.584979', '0', '2020-09-20 15:04:45', '0');
INSERT INTO `wlan_maxpow` VALUES ('DEA6A3A7-C81B-4C6A-B652-4AB448CE0C8D', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz(TPC)', '4.731', '1', '2020-09-20 19:44:06', '1');
INSERT INTO `wlan_maxpow` VALUES ('E035253D-1BC3-4363-8415-41608EE89656', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.825GHz', '5.643', '0', '2020-09-20 21:02:35', '0');
INSERT INTO `wlan_maxpow` VALUES ('E19C753B-C6AC-4D04-97A6-996B8DCA8FC9', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.472GHz', '-9.298', '0', '2020-09-20 14:44:18', '1');
INSERT INTO `wlan_maxpow` VALUES ('E23C8F6E-4A30-4255-815F-9E7B56AF66BC', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '-2.354', '0', '2020-09-20 20:09:17', '0');
INSERT INTO `wlan_maxpow` VALUES ('E68F4E6C-A652-4A1F-84C4-A47068328DC3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '3.89035', '0', '2020-09-20 20:32:34', '0');
INSERT INTO `wlan_maxpow` VALUES ('E7EEFF58-8762-4EE0-A494-10E7EC6AA7C5', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.472GHz', '5.395', '0', '2020-09-20 10:25:37', '0');
INSERT INTO `wlan_maxpow` VALUES ('E86F432A-C4FE-4424-A9BD-2C00ED031C54', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz(TPC)', '6.088', '1', '2020-09-20 17:31:17', '1');
INSERT INTO `wlan_maxpow` VALUES ('EA860694-065E-420F-9DF6-7250D25DDE35', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(20MHz)', 'MCS15', '5.180GHz', '10.713144', '1', '2020-09-20 20:15:19', '1');
INSERT INTO `wlan_maxpow` VALUES ('EE0D10B1-3E30-4DBE-81C4-D0497B4DD717', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'P', '802.11n(40MHz)', 'MCS15', '5.310GHz', '6.345371', '0', '2020-09-20 20:27:31', '0');
INSERT INTO `wlan_maxpow` VALUES ('F385A622-E307-4977-83C8-47CCE3B03B1B', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz(TPC)', '-0.842624', '0', '2020-09-20 20:22:24', '0');
INSERT INTO `wlan_maxpow` VALUES ('F9C44ADE-8DD0-4065-81E9-F0BD0885D84F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '7.88', '0', '2020-09-21 09:22:20', '0');

-- ----------------------------
-- Table structure for wlan_maxpower
-- ----------------------------
DROP TABLE IF EXISTS `wlan_maxpower`;
CREATE TABLE `wlan_maxpower` (
  `wlan_maxpower_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `wlan_maxpower_count` int(1) NOT NULL,
  `wlan_maxpower_ant` varchar(255) NOT NULL,
  `wlan_maxpower_model` varchar(255) NOT NULL,
  `wlan_maxpower_rate` varchar(255) NOT NULL,
  `wlan_maxpower_freq` varchar(255) NOT NULL,
  `wlan_maxpower_result` double NOT NULL,
  `wlan_maxpower_judgement` tinyint(1) NOT NULL,
  `wlan_maxpower_time` datetime NOT NULL,
  `wlan_maxpower_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`wlan_maxpower_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wlan_maxpower
-- ----------------------------
INSERT INTO `wlan_maxpower` VALUES ('06F369B0-35CC-4778-8D3B-6B8F02890758', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.745GHz', '4.692', '0', '2020-09-20 21:01:29', '0');
INSERT INTO `wlan_maxpower` VALUES ('1', '2E104E97-319B-4BF0-9975-277256CEF003', '2', '1', '802.11a', '6Mbps', '5.745GHz', '4.692', '0', '2020-09-20 21:01:29', '0');
INSERT INTO `wlan_maxpower` VALUES ('2', '2E104E97-319B-4BF0-9975-277256CEF003', '2', '1', '802.11ax(80MHz)', 'MCS11', '5.775GHz', '-2.704', '0', '2020-09-20 21:09:34', '0');
INSERT INTO `wlan_maxpower` VALUES ('3', '2E104E97-319B-4BF0-9975-277256CEF003', '3', '1', '802.11a', '6Mbps', '5.825GHz', '4.643', '0', '2020-09-20 21:04:45', '0');
INSERT INTO `wlan_maxpower` VALUES ('988BFD8C-ACA6-4D04-873D-17F3112154F1', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11ax(80MHz)', 'MCS11', '5.775GHz', '-2.704', '0', '2020-09-20 21:09:34', '0');
INSERT INTO `wlan_maxpower` VALUES ('B15E5DBD-C531-4EAF-B11F-2F4E5207D10F', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.825GHz', '4.643', '0', '2020-09-20 21:04:45', '0');

-- ----------------------------
-- Table structure for wlan_obw
-- ----------------------------
DROP TABLE IF EXISTS `wlan_obw`;
CREATE TABLE `wlan_obw` (
  `wlan_obw_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `wlan_obw_count` int(1) NOT NULL,
  `wlan_obw_ant` varchar(255) NOT NULL,
  `wlan_obw_model` varchar(255) NOT NULL,
  `wlan_obw_rate` varchar(255) NOT NULL,
  `wlan_obw_freq` varchar(255) NOT NULL,
  `wlan_obw_result` double NOT NULL,
  `wlan_obw_judgement` tinyint(1) NOT NULL,
  `wlan_obw_time` datetime NOT NULL,
  `wlan_obw_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`wlan_obw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wlan_obw
-- ----------------------------
INSERT INTO `wlan_obw` VALUES ('02AA6BEF-4391-4C1D-AF60-562BAC6FCA95', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '12854976.3', '0', '2020-09-19 21:08:39', '1');
INSERT INTO `wlan_obw` VALUES ('0562FB91-68C9-46E2-B937-04789E82DCA8', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.472GHz', '16573060.8', '0', '2020-09-20 10:26:45', '0');
INSERT INTO `wlan_obw` VALUES ('05942D25-A1A8-494E-9080-D37564B71C7B', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.422GHz', '36286458', '0', '2020-09-20 15:01:19', '0');
INSERT INTO `wlan_obw` VALUES ('1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '6Mbps', '5.180GHz', '16574536.9', '0', '2020-09-20 17:23:31', '0');
INSERT INTO `wlan_obw` VALUES ('10', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '54Mbps', '5.180GHz', '16638019', '0', '2020-09-20 19:22:47', '0');
INSERT INTO `wlan_obw` VALUES ('11', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '76140363.6', '0', '2020-09-20 20:06:42', '0');
INSERT INTO `wlan_obw` VALUES ('12', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '36363169.9', '0', '2020-09-20 20:25:16', '0');
INSERT INTO `wlan_obw` VALUES ('13', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '76140363.6', '0', '2020-09-20 20:33:47', '0');
INSERT INTO `wlan_obw` VALUES ('14', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '76097315.8', '0', '2020-09-20 20:42:11', '0');
INSERT INTO `wlan_obw` VALUES ('15', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.320GHz', '16613798.7', '0', '2020-09-20 19:29:11', '0');
INSERT INTO `wlan_obw` VALUES ('16', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '36332515.8', '0', '2020-09-20 20:28:43', '0');
INSERT INTO `wlan_obw` VALUES ('17', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '76094963', '0', '2020-09-20 20:10:31', '0');
INSERT INTO `wlan_obw` VALUES ('18', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '76138309.1', '0', '2020-09-20 20:33:46', '1');
INSERT INTO `wlan_obw` VALUES ('19', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '36363169.9', '0', '2020-09-20 20:25:15', '1');
INSERT INTO `wlan_obw` VALUES ('2', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '6Mbps', '5.320GHz', '16571122.9', '0', '2020-09-20 17:27:29', '0');
INSERT INTO `wlan_obw` VALUES ('20', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '17745110.9', '0', '2020-09-20 19:48:38', '0');
INSERT INTO `wlan_obw` VALUES ('21', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '36332515.8', '0', '2020-09-20 20:28:42', '1');
INSERT INTO `wlan_obw` VALUES ('22', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '36361214.3', '0', '2020-09-20 19:58:10', '0');
INSERT INTO `wlan_obw` VALUES ('2428AD2C-C3DB-448C-8285-AEC3E70A9F4F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.180GHz', '16574536.9', '0', '2020-09-20 17:23:31', '0');
INSERT INTO `wlan_obw` VALUES ('2990C5C5-A090-4765-8811-15DF20B14DB7', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.825GHz', '16568386.7', '0', '2020-09-20 21:03:47', '0');
INSERT INTO `wlan_obw` VALUES ('2B81BD58-2233-4408-843A-FB415CCF95B1', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.422GHz', '36286458', '0', '2020-09-20 12:18:40', '0');
INSERT INTO `wlan_obw` VALUES ('2CDA0BA9-7800-4025-ABBB-7BDAB40720DD', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz', '16571122.9', '0', '2020-09-20 17:27:29', '0');
INSERT INTO `wlan_obw` VALUES ('3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '36321388.7', '0', '2020-09-20 20:01:36', '0');
INSERT INTO `wlan_obw` VALUES ('320B9CCA-2605-41D3-96D7-BB987FFD6603', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '36321388.7', '0', '2020-09-20 20:01:36', '0');
INSERT INTO `wlan_obw` VALUES ('35D8E3F1-A810-46E1-8B4F-826377288510', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '17729619.4', '0', '2020-09-20 20:19:54', '1');
INSERT INTO `wlan_obw` VALUES ('35FA1C62-E0A1-4D7B-9A4B-9E666AA7C225', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '76097315.8', '0', '2020-09-20 20:42:10', '1');
INSERT INTO `wlan_obw` VALUES ('3DC5BFD8-3335-49A4-A7A1-DD550E6B77A6', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '12841333.9', '0', '2020-09-19 21:10:17', '1');
INSERT INTO `wlan_obw` VALUES ('4', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '17729619.4', '0', '2020-09-20 20:19:54', '1');
INSERT INTO `wlan_obw` VALUES ('406249B3-E864-448B-936D-F2C436616B3F', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.412GHz', '16569922.1', '0', '2020-09-20 10:22:34', '0');
INSERT INTO `wlan_obw` VALUES ('5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '76097315.8', '0', '2020-09-20 20:42:10', '1');
INSERT INTO `wlan_obw` VALUES ('57DD55DD-7CD5-47B3-9507-A2C77D230956', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '13080101.5', '0', '2020-09-19 21:08:03', '1');
INSERT INTO `wlan_obw` VALUES ('59FD6668-7828-4CF1-B0A1-6A0CB31E06A1', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.472GHz', '17707151.6', '0', '2020-09-20 14:14:24', '1');
INSERT INTO `wlan_obw` VALUES ('6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '17732038.1', '0', '2020-09-20 20:19:55', '0');
INSERT INTO `wlan_obw` VALUES ('604E94F8-B73C-44E8-ACD6-77A885D57FB9', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '17732038.1', '0', '2020-09-20 20:19:55', '0');
INSERT INTO `wlan_obw` VALUES ('61785392-BD99-4F11-BF6C-97E642D6E0C1', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.412GHz', '17773383.6', '0', '2020-09-20 14:10:04', '0');
INSERT INTO `wlan_obw` VALUES ('6D623264-DDEC-4E37-BAB4-3EA0C541F54D', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '17747909', '0', '2020-09-20 20:16:31', '1');
INSERT INTO `wlan_obw` VALUES ('6E0F0CCF-D52B-4D21-9D18-40C7F327ACD7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '17747909', '0', '2020-09-20 20:16:32', '0');
INSERT INTO `wlan_obw` VALUES ('7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '17747909', '0', '2020-09-20 20:16:31', '1');
INSERT INTO `wlan_obw` VALUES ('73770924-2785-47BA-A97F-E49E487F45B2', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '12817346.2', '0', '2020-09-19 21:12:02', '0');
INSERT INTO `wlan_obw` VALUES ('7C23CDEB-B1AC-4859-8054-55A7E8F3B87F', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.472GHz', '17726091.6', '0', '2020-09-20 12:11:36', '0');
INSERT INTO `wlan_obw` VALUES ('7DF11103-91E2-486C-8AD5-4E1595BB0B40', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '17732038.1', '0', '2020-09-20 19:52:24', '0');
INSERT INTO `wlan_obw` VALUES ('7F270CCF-A325-4AAE-B242-557BC81CB79C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.180GHz', '16638019', '0', '2020-09-20 19:22:47', '0');
INSERT INTO `wlan_obw` VALUES ('8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '17747909', '0', '2020-09-20 20:16:32', '0');
INSERT INTO `wlan_obw` VALUES ('8439C51D-89C5-4C06-A1B4-7906465ECEF9', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.745GHz', '16569611.2', '0', '2020-09-20 21:00:32', '0');
INSERT INTO `wlan_obw` VALUES ('84960C5A-1699-40F8-98F1-CD9ACC13A2E1', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.472GHz', '12715032.3', '0', '2020-09-20 10:16:02', '0');
INSERT INTO `wlan_obw` VALUES ('86B9B4DA-316F-43B4-B1AF-1C11DA038FA3', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.462GHz', '36273593.4', '0', '2020-09-20 15:05:57', '1');
INSERT INTO `wlan_obw` VALUES ('8840CCFC-C2E8-4CB7-BC19-99C9FB6829E2', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.412GHz', '17720242.6', '0', '2020-09-20 14:10:03', '1');
INSERT INTO `wlan_obw` VALUES ('8F9A47C5-5926-4628-A2FC-1764270A1BE2', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '76140363.6', '0', '2020-09-20 20:06:42', '0');
INSERT INTO `wlan_obw` VALUES ('9', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '17732038.1', '0', '2020-09-20 19:52:24', '0');
INSERT INTO `wlan_obw` VALUES ('933D4B75-91A7-4D58-8A93-D0F6C7D6C6DE', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '36363169.9', '0', '2020-09-20 20:25:16', '0');
INSERT INTO `wlan_obw` VALUES ('93E912D8-1F4A-408E-A8EA-3138DA661003', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '76140363.6', '0', '2020-09-20 20:33:47', '0');
INSERT INTO `wlan_obw` VALUES ('957A87C1-4648-4BAF-AB0C-2FD61789FBC1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '76097315.8', '0', '2020-09-20 20:42:11', '0');
INSERT INTO `wlan_obw` VALUES ('B6035CF2-2C7C-4BB7-9ECB-64E229120A7F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz', '16613798.7', '0', '2020-09-20 19:29:11', '0');
INSERT INTO `wlan_obw` VALUES ('B7C8B31C-9AB2-4A8E-9BF0-F9E81A9E8765', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '36332515.8', '0', '2020-09-20 20:28:43', '0');
INSERT INTO `wlan_obw` VALUES ('BF3C3D2B-54B5-47D3-AFC6-075F07C25ED0', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11ax(80MHz)', 'MCS11', '5.775GHz', '75772932.2', '0', '2020-09-20 21:08:21', '0');
INSERT INTO `wlan_obw` VALUES ('C47E3162-3254-454A-95E5-A39A36122316', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.472GHz', '12832125.5', '0', '2020-09-20 09:46:16', '0');
INSERT INTO `wlan_obw` VALUES ('C893D293-2F8A-481E-BBA2-3E6FC333B910', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.412GHz', '12744394.6', '0', '2020-09-20 10:10:53', '0');
INSERT INTO `wlan_obw` VALUES ('C9DE8519-2FFA-46C5-B3B8-E54DF7405A15', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.412GHz', '16566097.6', '0', '2020-09-20 10:55:42', '0');
INSERT INTO `wlan_obw` VALUES ('CE5AD6AA-7768-443F-A3D7-BB1BEF0212F8', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.462GHz', '36276075.3', '0', '2020-09-20 15:05:57', '0');
INSERT INTO `wlan_obw` VALUES ('D1624094-8595-4CC3-A7B2-1D6FB1C4D4E0', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '39636809.3', '0', '2020-09-19 20:32:33', '1');
INSERT INTO `wlan_obw` VALUES ('DC24A25A-A308-45CA-9BA9-D473FE5C1100', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.472GHz', '16569078.8', '0', '2020-09-20 11:01:42', '0');
INSERT INTO `wlan_obw` VALUES ('DD670CA1-D310-4DD1-90D1-FADE7568784E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '76094963', '0', '2020-09-20 20:10:31', '0');
INSERT INTO `wlan_obw` VALUES ('DE33E321-9947-44B7-A1A3-36A4426530DC', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.462GHz', '36276075.3', '0', '2020-09-20 12:22:30', '0');
INSERT INTO `wlan_obw` VALUES ('DE35A3C7-E5ED-47BD-B0F5-554BAA5E8445', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.472GHz', '17726091.6', '0', '2020-09-20 14:14:24', '0');
INSERT INTO `wlan_obw` VALUES ('E0475F09-1895-4BD9-B7EE-77CA6831943D', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '76138309.1', '0', '2020-09-20 20:33:46', '1');
INSERT INTO `wlan_obw` VALUES ('E2E5649A-A66B-4C92-83F9-D4EEF473FFC1', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.412GHz', '17773383.6', '0', '2020-09-20 11:21:33', '0');
INSERT INTO `wlan_obw` VALUES ('EA576AA2-F18E-4B02-B82F-148E1095F4A0', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '36363169.9', '0', '2020-09-20 20:25:15', '1');
INSERT INTO `wlan_obw` VALUES ('EADF955C-3940-4F35-936D-0DF0D3EB37D4', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '17745110.9', '0', '2020-09-20 19:48:38', '0');
INSERT INTO `wlan_obw` VALUES ('EE5F4113-C75D-451F-8DFA-48DF6B267D29', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '36332515.8', '0', '2020-09-20 20:28:42', '1');
INSERT INTO `wlan_obw` VALUES ('F67D4356-B677-4F06-BC7B-CCBE9710274F', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.422GHz', '36283929.4', '0', '2020-09-20 15:01:18', '1');
INSERT INTO `wlan_obw` VALUES ('F94F0255-2BCF-41FA-9ACA-596FA440DD6C', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.472GHz', '16566947.2', '0', '2020-09-20 10:54:04', '1');
INSERT INTO `wlan_obw` VALUES ('F9E192F6-3FF8-4503-9161-FCC23882822E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '36361214.3', '0', '2020-09-20 19:58:10', '0');

-- ----------------------------
-- Table structure for wlan_oob
-- ----------------------------
DROP TABLE IF EXISTS `wlan_oob`;
CREATE TABLE `wlan_oob` (
  `wlan_oob_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `wlan_oob_count` int(1) NOT NULL,
  `wlan_oob_ant` varchar(255) NOT NULL,
  `wlan_oob_model` varchar(255) NOT NULL,
  `wlan_oob_rate` varchar(255) NOT NULL,
  `wlan_oob_freq` varchar(255) NOT NULL,
  `wlan_oob_result` double NOT NULL,
  `wlan_oob_judgement` tinyint(1) NOT NULL,
  `wlan_oob_time` datetime NOT NULL,
  `wlan_oob_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`wlan_oob_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wlan_oob
-- ----------------------------
INSERT INTO `wlan_oob` VALUES ('0A9D6C16-5A63-49A2-8B60-9A84145F8D15', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', 'fL', '-89.491219', '0', '2020-09-20 20:24:26', '0');
INSERT INTO `wlan_oob` VALUES ('0EC9C13D-6DB3-4ADF-8E17-D906D9C51D03', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11ax(80MHz)', 'MCS11', 'fL', '-91.417976', '0', '2020-09-20 21:07:30', '0');
INSERT INTO `wlan_oob` VALUES ('0F53686C-BB30-4CFF-BAF2-4D3924B6B5D1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', 'fL', '-104.659958', '0', '2020-09-20 17:22:44', '0');
INSERT INTO `wlan_oob` VALUES ('1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(40MHz)', 'MCS15', 'fL', '-89.491219', '0', '2020-09-20 20:24:26', '0');
INSERT INTO `wlan_oob` VALUES ('10', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '6Mbps', 'fH', '-108.027863', '0', '2020-09-20 17:26:41', '0');
INSERT INTO `wlan_oob` VALUES ('11', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11ac(80MHz)', 'MCS9', 'fL', '-94.019775', '0', '2020-09-20 20:05:55', '0');
INSERT INTO `wlan_oob` VALUES ('12', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(20MHz)', 'MCS15', 'fH', '-101.930473', '0', '2020-09-20 20:19:09', '0');
INSERT INTO `wlan_oob` VALUES ('126B964C-AB57-4A7C-8286-646761DE550E', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', 'fL', '-87.625362', '0', '2020-09-20 11:20:47', '0');
INSERT INTO `wlan_oob` VALUES ('13', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', 'fL', '-100.946648', '0', '2020-09-20 19:22:00', '0');
INSERT INTO `wlan_oob` VALUES ('14', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', 'fH', '-95.406807', '0', '2020-09-20 20:09:42', '0');
INSERT INTO `wlan_oob` VALUES ('15', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', 'fH', '-91.96434', '0', '2020-09-20 20:41:24', '0');
INSERT INTO `wlan_oob` VALUES ('16', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', 'fH', '-106.831902', '0', '2020-09-20 19:28:24', '0');
INSERT INTO `wlan_oob` VALUES ('17', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', 'fH', '-101.930473', '0', '2020-09-20 20:19:07', '0');
INSERT INTO `wlan_oob` VALUES ('18', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(40MHz)', 'MCS15', 'fH', '-91.469032', '0', '2020-09-20 20:27:56', '0');
INSERT INTO `wlan_oob` VALUES ('19', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', 'fL', '-96.884651', '0', '2020-09-20 20:15:44', '0');
INSERT INTO `wlan_oob` VALUES ('1EE216AD-7363-435D-A98C-E621FF5A02FD', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', 'fH', '-74.792206', '1', '2020-09-20 10:26:01', '1');
INSERT INTO `wlan_oob` VALUES ('2', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '6Mbps', 'fL', '-104.659958', '0', '2020-09-20 17:22:44', '0');
INSERT INTO `wlan_oob` VALUES ('20', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11ac(80MHz)', 'MCS9', 'fL', '-90.751129', '0', '2020-09-20 20:32:59', '0');
INSERT INTO `wlan_oob` VALUES ('20186C2F-2590-4C78-A283-F967BD81C64F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', 'fH', '-91.96434', '0', '2020-09-20 20:41:26', '0');
INSERT INTO `wlan_oob` VALUES ('21', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', 'fH', '-105.222465', '0', '2020-09-20 19:51:35', '0');
INSERT INTO `wlan_oob` VALUES ('22', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', 'fL', '-96.884651', '0', '2020-09-20 20:15:45', '0');
INSERT INTO `wlan_oob` VALUES ('2E1D1CDF-EC5A-450E-850C-045FA9F55E69', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', 'fL', '-89.491219', '0', '2020-09-20 20:24:27', '0');
INSERT INTO `wlan_oob` VALUES ('3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11ac(80MHz)', 'MCS9', 'fH', '-91.96434', '0', '2020-09-20 20:41:26', '0');
INSERT INTO `wlan_oob` VALUES ('383C925E-7BD1-4F26-ABE7-F401A6F06C3B', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', 'fL', '-99.720451', '0', '2020-09-20 19:47:51', '0');
INSERT INTO `wlan_oob` VALUES ('39C8CACD-2C59-4228-A464-3CF97122D42A', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', 'fH', '-93.947334', '0', '2020-09-20 20:00:49', '0');
INSERT INTO `wlan_oob` VALUES ('4', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(40MHz)', 'MCS15', 'fL', '-89.491219', '0', '2020-09-20 20:24:27', '0');
INSERT INTO `wlan_oob` VALUES ('45DD2D2A-D379-4F57-96BD-73868FA4CAB5', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', 'fH', '-101.956749', '0', '2020-09-20 15:05:09', '0');
INSERT INTO `wlan_oob` VALUES ('4A5BC835-5770-4E9A-A170-F18682909A20', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(40MHz)', 'MCS15', 'fH', '-101.956749', '0', '2020-09-20 15:05:10', '0');
INSERT INTO `wlan_oob` VALUES ('4CD16B0D-B883-4BA5-A0E3-C4C49D83CCD4', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', 'fH', '-106.063705', '0', '2020-09-20 12:21:45', '0');
INSERT INTO `wlan_oob` VALUES ('5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(20MHz)', 'MCS15', 'fL', '-99.720451', '0', '2020-09-20 19:47:51', '0');
INSERT INTO `wlan_oob` VALUES ('6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', 'MCS15', 'fH', '-93.947334', '0', '2020-09-20 20:00:49', '0');
INSERT INTO `wlan_oob` VALUES ('64848605-E16F-4F4D-B35D-D9AE541A77F8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', 'fH', '-91.469032', '0', '2020-09-20 20:27:55', '0');
INSERT INTO `wlan_oob` VALUES ('6BE07DB5-B6F3-45D0-A015-9E8408E9E824', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', 'fL', '-88.493977', '0', '2020-09-20 10:44:50', '0');
INSERT INTO `wlan_oob` VALUES ('6CE6078D-1BE4-452F-887D-7145DD5EF0EF', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', 'fL', '-89.38586', '0', '2020-09-20 10:49:26', '0');
INSERT INTO `wlan_oob` VALUES ('6F198F61-377C-495F-AF7E-B5ECECD870FC', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', 'fH', '-100.132599', '0', '2020-09-20 14:13:39', '0');
INSERT INTO `wlan_oob` VALUES ('7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(40MHz)', 'MCS15', 'fH', '-91.469032', '0', '2020-09-20 20:27:55', '0');
INSERT INTO `wlan_oob` VALUES ('77BDD54E-D346-4612-B001-A6F2A025EAF5', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', 'fH', '-100.793617', '0', '2020-09-20 09:45:32', '0');
INSERT INTO `wlan_oob` VALUES ('7D109F32-D0A0-4F14-AA02-A5D2B8A26C24', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', 'fL', '-90.751129', '0', '2020-09-20 20:32:58', '0');
INSERT INTO `wlan_oob` VALUES ('8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11ac(80MHz)', 'MCS9', 'fL', '-90.751129', '0', '2020-09-20 20:32:58', '0');
INSERT INTO `wlan_oob` VALUES ('80364C28-A78C-4AD8-93E8-EC5B5B68EE5E', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(40MHz)', 'MCS15', 'fL', '-103.906113', '0', '2020-09-20 15:00:32', '0');
INSERT INTO `wlan_oob` VALUES ('82864949-5323-4ED9-9338-BD6FF61D6819', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', 'fL', '-101.253845', '0', '2020-09-20 14:09:14', '0');
INSERT INTO `wlan_oob` VALUES ('87E891B8-B705-4C24-AE4D-81D158EFD21F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', 'fL', '-92.858047', '0', '2020-09-20 19:57:23', '0');
INSERT INTO `wlan_oob` VALUES ('8B838A33-812D-4B95-A5DE-44FA42BE3296', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', 'fH', '-108.027863', '0', '2020-09-20 17:26:41', '0');
INSERT INTO `wlan_oob` VALUES ('8C31CDD6-A506-4B02-A05C-CBE25746E93B', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', 'fL', '-94.019775', '0', '2020-09-20 20:05:55', '0');
INSERT INTO `wlan_oob` VALUES ('9', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', 'MCS15', 'fL', '-92.858047', '0', '2020-09-20 19:57:23', '0');
INSERT INTO `wlan_oob` VALUES ('9315DE65-E93B-41B8-931C-BB5518969335', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', 'fH', '-101.930473', '0', '2020-09-20 20:19:09', '0');
INSERT INTO `wlan_oob` VALUES ('9AAC8CC4-DF40-450C-AC3B-5B23FBA65AB5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', 'fL', '-100.946648', '0', '2020-09-20 19:22:00', '0');
INSERT INTO `wlan_oob` VALUES ('9C4F1E8D-83BD-4339-A4B9-5237C9562C5A', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', 'fH', '-84.771076', '0', '2020-09-20 10:45:59', '0');
INSERT INTO `wlan_oob` VALUES ('9F1A2E63-FD1E-46D6-A99A-47797A602889', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', 'fH', '-95.406807', '0', '2020-09-20 20:09:42', '0');
INSERT INTO `wlan_oob` VALUES ('B3867473-8AE0-47F2-89D8-62BD07F626C7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', 'fH', '-91.96434', '0', '2020-09-20 20:41:24', '0');
INSERT INTO `wlan_oob` VALUES ('BB9899F7-5592-48D7-AFA6-D09BE3011FF6', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', 'fL', '-102.729011', '0', '2020-09-19 19:40:49', '0');
INSERT INTO `wlan_oob` VALUES ('BD5807FC-7FEB-4292-B0C3-99A6F3E98F1F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', 'fH', '-106.831902', '0', '2020-09-20 19:28:24', '0');
INSERT INTO `wlan_oob` VALUES ('C164D26E-083F-4671-9813-A6C701E08C64', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11ax(80MHz)', 'MCS11', 'fH', '-97.125595', '0', '2020-09-20 21:07:30', '0');
INSERT INTO `wlan_oob` VALUES ('C554051C-D33D-46B9-ACB6-70D9D04D58CD', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', 'fH', '-101.930473', '0', '2020-09-20 20:19:07', '0');
INSERT INTO `wlan_oob` VALUES ('C9E4ADA2-5519-4405-BE06-188FABAE4A88', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(20MHz)', 'MCS15', 'fL', '-87.625362', '0', '2020-09-20 14:09:16', '0');
INSERT INTO `wlan_oob` VALUES ('CB22D485-8CC0-4B24-8EC9-9DA82E4E2A5E', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', 'fL', '-95.24411', '0', '2020-09-20 20:59:44', '0');
INSERT INTO `wlan_oob` VALUES ('CC9BB2EB-F98E-49BB-B7CC-93CFC7A18B4F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', 'fH', '-91.469032', '0', '2020-09-20 20:27:56', '0');
INSERT INTO `wlan_oob` VALUES ('E4E3BDEA-EE01-46CD-847F-985DBD1E6A61', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', 'fL', '-78.631561', '1', '2020-09-20 10:21:48', '1');
INSERT INTO `wlan_oob` VALUES ('E70CA4D9-7D1E-4FB9-AB2E-6E7DE38FE486', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', 'fH', '-111.493385', '0', '2020-09-20 12:10:49', '0');
INSERT INTO `wlan_oob` VALUES ('E9626DD8-3251-4FBD-B73E-4D381788CA56', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', 'fL', '-96.884651', '0', '2020-09-20 20:15:44', '0');
INSERT INTO `wlan_oob` VALUES ('F249D6B5-2E5F-41E6-99E4-B5EB670DBB64', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', 'Z', '802.11n(20MHz)', 'MCS15', 'fH', '-100.132599', '0', '2020-09-20 14:13:40', '0');
INSERT INTO `wlan_oob` VALUES ('F38C7630-00B6-44D9-B478-B174222FBCA1', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', 'fL', '-103.20385', '0', '2020-09-20 10:10:07', '0');
INSERT INTO `wlan_oob` VALUES ('F3A101C6-B354-498D-84F0-0A3450EC39AD', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', 'fL', '-90.751129', '0', '2020-09-20 20:32:59', '0');
INSERT INTO `wlan_oob` VALUES ('F4EC43B3-E9FD-441C-80C5-6D6995AB05CA', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', 'fL', '-106.805931', '0', '2020-09-20 12:17:53', '0');
INSERT INTO `wlan_oob` VALUES ('F7C088C4-D25C-4E7C-BBE2-03BBFC744292', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', 'fH', '-85.485973', '0', '2020-09-20 10:53:17', '0');
INSERT INTO `wlan_oob` VALUES ('F9870048-49B5-465D-8696-6DA3EE699E90', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', 'fH', '-106.833939', '0', '2020-09-20 21:03:00', '0');
INSERT INTO `wlan_oob` VALUES ('FA593219-2018-4FA8-8F84-8AEF98076420', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', 'fH', '-105.222465', '0', '2020-09-20 19:51:35', '0');
INSERT INTO `wlan_oob` VALUES ('FE157E5B-452E-4411-A05A-A571FFF74CCE', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', 'fL', '-103.906113', '0', '2020-09-20 15:00:31', '0');
INSERT INTO `wlan_oob` VALUES ('FF83CFFF-23BE-46A4-8D0D-5094C3A6D417', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', 'fH', '-100.364525', '0', '2020-09-20 10:15:16', '0');
INSERT INTO `wlan_oob` VALUES ('FFC19C1F-93AE-484C-AA95-FB463C7829E2', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', 'fL', '-96.884651', '0', '2020-09-20 20:15:45', '0');

-- ----------------------------
-- Table structure for wlan_power
-- ----------------------------
DROP TABLE IF EXISTS `wlan_power`;
CREATE TABLE `wlan_power` (
  `wlan_power_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `wlan_power_count` int(1) NOT NULL,
  `wlan_power_ant` varchar(255) NOT NULL,
  `wlan_power_model` varchar(255) NOT NULL,
  `wlan_power_rate` varchar(255) NOT NULL,
  `wlan_power_freq` varchar(255) NOT NULL,
  `wlan_power_result` double NOT NULL,
  `wlan_power_judgement` tinyint(1) NOT NULL,
  `wlan_power_time` datetime NOT NULL,
  `wlan_power_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`wlan_power_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wlan_power
-- ----------------------------
INSERT INTO `wlan_power` VALUES ('0D37F017-CB21-43DD-BAF0-FE42994FAF8D', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.745GHz', '15.239967', '0', '2020-09-20 21:01:26', '0');
INSERT INTO `wlan_power` VALUES ('1', '2E104E97-319B-4BF0-9975-277256CEF003', '2', '1', '802.11a', '6Mbps', '5.745GHz', '15.239967', '0', '2020-09-20 21:01:26', '0');
INSERT INTO `wlan_power` VALUES ('2', '2E104E97-319B-4BF0-9975-277256CEF003', '3', '1', '802.11a', '6Mbps', '5.825GHz', '15.230476', '0', '2020-09-20 21:04:43', '0');
INSERT INTO `wlan_power` VALUES ('3', '2E104E97-319B-4BF0-9975-277256CEF003', '3', '1', '802.11ax(80MHz)', 'MCS11', '5.775GHz', '14.058826', '0', '2020-09-20 21:09:32', '0');
INSERT INTO `wlan_power` VALUES ('7839533F-7FD3-4252-BBE2-06A53FA61523', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.825GHz', '15.230476', '0', '2020-09-20 21:04:43', '0');
INSERT INTO `wlan_power` VALUES ('929E7B0E-C9F9-409B-9960-A3E6A4543B6D', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11ax(80MHz)', 'MCS11', '5.775GHz', '14.058826', '0', '2020-09-20 21:09:32', '0');

-- ----------------------------
-- Table structure for wlan_se
-- ----------------------------
DROP TABLE IF EXISTS `wlan_se`;
CREATE TABLE `wlan_se` (
  `wlan_se_id` varchar(255) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `wlan_se_count` int(1) NOT NULL,
  `wlan_se_ant` varchar(255) NOT NULL,
  `wlan_se_model` varchar(255) NOT NULL,
  `wlan_se_rate` varchar(255) NOT NULL,
  `wlan_se_freq` varchar(255) NOT NULL,
  `wlan_se_band` varchar(255) NOT NULL,
  `wlan_se_bandfreq` double NOT NULL,
  `wlan_se_bandresult` double NOT NULL,
  `wlan_se_bandpicture` varchar(255) NOT NULL,
  `wlan_se_bandjudgement` tinyint(1) NOT NULL,
  `wlan_se_time` datetime NOT NULL,
  `wlan_se_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`wlan_se_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wlan_se
-- ----------------------------
INSERT INTO `wlan_se` VALUES ('0192F6D7-926C-4C9B-909D-0EFF93190154', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '167MHz~223MHz', '181952000', '-61.630936', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195253_167MHz~223MHz.png', '0', '2020-09-20 19:53:41', '0');
INSERT INTO `wlan_se` VALUES ('0271B854-6C41-4CF6-A825-59A1E9FAA077', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '167MHz~223MHz', '207264000', '-62.110481', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200711_167MHz~223MHz.png', '0', '2020-09-20 20:08:04', '0');
INSERT INTO `wlan_se` VALUES ('067BA0C3-6D35-415B-BE74-C06B1D99121C', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.825GHz', '1GHz~40GHz', '3880000000', '-52.338', 'Task\\E201\\5.8GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.825GHz\\20200920-210434_1GHz~40GHz.png', '0', '2020-09-20 21:04:39', '0');
INSERT INTO `wlan_se` VALUES ('06A7D57C-69DB-40D4-A638-51C4C6CA9C33', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.462GHz', '30MHz~1000MHz', '880690000', '-62.949501', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\2.462GHz\\20200920-150610_30MHz~1000MHz.png', '0', '2020-09-20 15:06:47', '0');
INSERT INTO `wlan_se` VALUES ('075D2C14-3447-413D-873F-BB5B94C12290', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz', '470MHz~798MHz', '784880000', '-63.796303', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194211_470MHz~798MHz.png', '0', '2020-09-20 19:43:03', '0');
INSERT INTO `wlan_se` VALUES ('07B7F06E-F5AC-4F11-A543-A85033833E1D', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.422GHz', '3.4GHz~3.53GHz', '3434970000', '-50.224808', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\2.422GHz\\20200920-121914_3.4GHz~3.53GHz.png', '0', '2020-09-20 12:19:37', '0');
INSERT INTO `wlan_se` VALUES ('08BFEAA2-07EA-46BD-BF7C-54A2CD7E7F3D', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '1GHz~12.75GHz', '5958500000', '-55.046', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\1Mbps\\2.412GHz\\20200919-211332_1GHz~12.75GHz.png', '0', '2020-09-19 21:13:37', '1');
INSERT INTO `wlan_se` VALUES ('08E574DD-E086-492D-BF2C-CAF7AC060175', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.745GHz', '5.725GHz~5.85GHz', '5803000000', '-57.24', 'Task\\E201\\5.8GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.745GHz\\20200920-210108_5.725GHz~5.85GHz.png', '0', '2020-09-20 21:01:22', '0');
INSERT INTO `wlan_se` VALUES ('0AF9FA74-5216-44D8-95A8-18C20000B0A5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '5.47GHz~5.85GHz', '5637580000', '-47.492836', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202620_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:26:40', '0');
INSERT INTO `wlan_se` VALUES ('0E04A78B-E78A-4D28-A4C6-714EBBF2F749', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.825GHz', '2.4GHz~2.4835GHz', '2428056000', '-47.983078', 'Task\\E201\\5.8GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.825GHz\\20200920-210405_2.4GHz~2.4835GHz.png', '0', '2020-09-20 21:04:36', '0');
INSERT INTO `wlan_se` VALUES ('0F73D925-72E2-45A7-8F9F-B13CC31C9B85', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '30MHz~1000MHz', '755560000', '-65.913109', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194850_30MHz~1000MHz.png', '0', '2020-09-20 19:49:56', '0');
INSERT INTO `wlan_se` VALUES ('1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '30MHz~1000MHz', '489780000', '-62.320152', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202529_30MHz~1000MHz.png', '0', '2020-09-20 20:26:33', '0');
INSERT INTO `wlan_se` VALUES ('10', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '1GHz~40GHz', '10382400000', '-41.482', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202632_1GHz~40GHz.png', '0', '2020-09-20 20:26:41', '0');
INSERT INTO `wlan_se` VALUES ('102EC5E2-81B1-4B6C-AC7D-6A35AA88FAB7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '1GHz~40GHz', '10356800000', '-39.611', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201744_1GHz~40GHz.png', '0', '2020-09-20 20:17:52', '0');
INSERT INTO `wlan_se` VALUES ('11', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '76MHz~118MHz', '113926000', '-58.749077', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203606_76MHz~118MHz.png', '0', '2020-09-20 20:37:10', '0');
INSERT INTO `wlan_se` VALUES ('115639B3-2217-4959-B7D5-8E80C13826F5', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.472GHz', '2.4GHz~2.4835GHz', '2418787500', '-55.071', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\2.472GHz\\20200920-141459_2.4GHz~2.4835GHz.png', '0', '2020-09-20 14:15:28', '0');
INSERT INTO `wlan_se` VALUES ('12', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '30MHz~1000MHz', '892330000', '-62.255768', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202856_30MHz~1000MHz.png', '0', '2020-09-20 20:29:56', '0');
INSERT INTO `wlan_se` VALUES ('13', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '2.4GHz~2.4835GHz', '2479408500', '-45.51342', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203625_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:37:13', '0');
INSERT INTO `wlan_se` VALUES ('1349BD9A-0BE7-402A-9902-4ACAFC28A154', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.462GHz', '3.4GHz~3.53GHz', '3506340000', '-46.257103', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\2.462GHz\\20200920-150631_3.4GHz~3.53GHz.png', '0', '2020-09-20 15:06:49', '0');
INSERT INTO `wlan_se` VALUES ('13834603-E14D-4B74-92BB-3F41F394D119', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '1GHz~40GHz', '10638400000', '-42.298', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195338_1GHz~40GHz.png', '0', '2020-09-20 19:53:46', '0');
INSERT INTO `wlan_se` VALUES ('13AA08A6-A43A-4D4E-9B45-A3A4A86A54BA', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '2.4GHz~2.4835GHz', '2454275000', '-45.504875', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202037_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:21:19', '0');
INSERT INTO `wlan_se` VALUES ('13D1899D-1179-4DD5-A4DB-525EE2CDB11B', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.472GHz', '3.4GHz~3.53GHz', '3415730000', '-49.658585', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\6Mbps\\2.472GHz\\20200920-102725_3.4GHz~3.53GHz.png', '0', '2020-09-20 10:27:45', '0');
INSERT INTO `wlan_se` VALUES ('14', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '48.5MHz~72.5MHz', '49868000', '-58.57785', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203600_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:37:10', '0');
INSERT INTO `wlan_se` VALUES ('14E4D548-AB7C-4AC1-9B17-F0EA0CB4C1B8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '76MHz~118MHz', '81670000', '-58.541542', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202019_76MHz~118MHz.png', '0', '2020-09-20 20:21:16', '0');
INSERT INTO `wlan_se` VALUES ('15', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '76MHz~118MHz', '90280000', '-57.17839', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204235_76MHz~118MHz.png', '0', '2020-09-20 20:43:25', '0');
INSERT INTO `wlan_se` VALUES ('155C7705-D108-4910-AD71-744DDA7F3DF2', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '167MHz~223MHz', '196680000', '-61.665955', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200206_167MHz~223MHz.png', '0', '2020-09-20 20:02:56', '0');
INSERT INTO `wlan_se` VALUES ('16', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '5.47GHz~5.85GHz', '5728780000', '-47.834831', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203650_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:37:15', '0');
INSERT INTO `wlan_se` VALUES ('17', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '5.15GHz~5.35GHz', '5287000000', '-56.671', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201729_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:17:50', '0');
INSERT INTO `wlan_se` VALUES ('17586A63-6546-4B68-AD4A-C4FE87BA6C40', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.462GHz', '2.4GHz~2.4835GHz', '2428974500', '-56.073', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\2.462GHz\\20200920-122304_2.4GHz~2.4835GHz.png', '0', '2020-09-20 12:23:27', '0');
INSERT INTO `wlan_se` VALUES ('17A4D994-759A-4DB9-B9F1-6CEDA7221262', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.180GHz', '2.4GHz~2.4835GHz', '2458199500', '-49.609764', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192337_2.4GHz~2.4835GHz.png', '0', '2020-09-20 19:24:30', '0');
INSERT INTO `wlan_se` VALUES ('17BBE38C-EE1F-4B24-8275-ADE5EE4CE271', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '470MHz~798MHz', '795704000', '-64.118019', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201159_470MHz~798MHz.png', '0', '2020-09-20 20:12:40', '0');
INSERT INTO `wlan_se` VALUES ('18', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '48.5MHz~72.5MHz', '57380000', '-58.214622', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202013_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:21:15', '0');
INSERT INTO `wlan_se` VALUES ('19', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '48.5MHz~72.5MHz', '52388000', '-57.469421', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204229_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:43:24', '0');
INSERT INTO `wlan_se` VALUES ('19C6290B-F55A-417B-9942-54C32965EE87', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '470MHz~798MHz', '764872000', '-64.218544', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195848_470MHz~798MHz.png', '0', '2020-09-20 19:59:28', '0');
INSERT INTO `wlan_se` VALUES ('1A1B7A9F-89B8-4755-8487-1AC715885646', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '48.5MHz~72.5MHz', '51068000', '-58.658722', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201651_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:17:45', '0');
INSERT INTO `wlan_se` VALUES ('1AB2A876-16FD-4C88-925A-2D2A8689268C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '30MHz~1000MHz', '870020000', '-62.807854', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204223_30MHz~1000MHz.png', '0', '2020-09-20 20:43:23', '0');
INSERT INTO `wlan_se` VALUES ('1B5EC186-9F75-4DF0-B5B2-21747BA4C521', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '30MHz~1000MHz', '499480000', '-66.101891', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\1Mbps\\2.412GHz\\20200919-213357_30MHz~1000MHz.png', '0', '2020-09-19 21:34:49', '0');
INSERT INTO `wlan_se` VALUES ('1CAA8C55-D294-4553-94DD-9FDEC0C371DA', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '1GHz~40GHz', '10625600000', '-44.706', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200252_1GHz~40GHz.png', '0', '2020-09-20 20:03:01', '0');
INSERT INTO `wlan_se` VALUES ('1CF14DB3-30D9-4ACB-B0D8-203AF261A663', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.825GHz', '5.725GHz~5.85GHz', '5789000000', '-52.683', 'Task\\E201\\5.8GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.825GHz\\20200920-210423_5.725GHz~5.85GHz.png', '0', '2020-09-20 21:04:38', '0');
INSERT INTO `wlan_se` VALUES ('1D751DD2-C8BF-40F5-A648-B6155C71E79E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.180GHz', '76MHz~118MHz', '105232000', '-60.945648', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192318_76MHz~118MHz.png', '0', '2020-09-20 19:24:27', '0');
INSERT INTO `wlan_se` VALUES ('1DA2DBED-CDE8-47E4-88E9-C091CFCDF6F4', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '5.15GHz~5.35GHz', '5205600000', '-58.94', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200237_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:02:59', '0');
INSERT INTO `wlan_se` VALUES ('1E105C8D-688E-4C61-9EF1-80C97DE96F53', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.472GHz', '30MHz~1000MHz', '887480000', '-62.803696', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\2.472GHz\\20200920-141437_30MHz~1000MHz.png', '0', '2020-09-20 14:15:27', '0');
INSERT INTO `wlan_se` VALUES ('1E2BBE8A-8AD1-48DD-A5BE-8A536E79A56F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz', '30MHz~1000MHz', '916580000', '-65.668442', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194147_30MHz~1000MHz.png', '0', '2020-09-20 19:42:59', '0');
INSERT INTO `wlan_se` VALUES ('2', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '167MHz~223MHz', '179600000', '-58.698212', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203612_167MHz~223MHz.png', '0', '2020-09-20 20:37:11', '0');
INSERT INTO `wlan_se` VALUES ('20', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '5.47GHz~5.85GHz', '5488240000', '-46.868004', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204310_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:43:30', '0');
INSERT INTO `wlan_se` VALUES ('201F55D1-E4E5-4E1C-9CED-317DE742EC47', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.472GHz', '1GHz~12.75GHz', '3044500000', '-24.056', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\2.472GHz\\20200920-121255_1GHz~12.75GHz.png', '1', '2020-09-20 12:13:00', '0');
INSERT INTO `wlan_se` VALUES ('21', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '470MHz~798MHz', '486400000', '-61.672104', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202554_470MHz~798MHz.png', '0', '2020-09-20 20:26:37', '0');
INSERT INTO `wlan_se` VALUES ('21D49DBC-AA7A-4637-8FD3-8BAE1545E730', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.412GHz', '3.4GHz~3.53GHz', '3440560000', '-46.525322', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\2.412GHz\\20200920-141037_3.4GHz~3.53GHz.png', '0', '2020-09-20 14:11:36', '0');
INSERT INTO `wlan_se` VALUES ('22', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '167MHz~223MHz', '220928000', '-58.426209', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202547_167MHz~223MHz.png', '0', '2020-09-20 20:26:36', '0');
INSERT INTO `wlan_se` VALUES ('22045100-F106-4228-952F-27A3214CFE55', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '470MHz~798MHz', '780288000', '-61.07711', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202920_470MHz~798MHz.png', '0', '2020-09-20 20:30:00', '0');
INSERT INTO `wlan_se` VALUES ('222C2731-D5EB-4A66-A63D-6DE0403B85E6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '2.4GHz~2.4835GHz', '2444672500', '-45.670418', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201715_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:17:49', '0');
INSERT INTO `wlan_se` VALUES ('22D66DD8-5792-4ADC-9D20-8E363747CB51', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.180GHz', '48.5MHz~72.5MHz', '55748000', '-59.493408', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192313_48.5MHz~72.5MHz.png', '0', '2020-09-20 19:24:26', '0');
INSERT INTO `wlan_se` VALUES ('23', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '2.4GHz~2.4835GHz', '2455861500', '-46.045067', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202926_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:30:01', '0');
INSERT INTO `wlan_se` VALUES ('24', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '5.15GHz~5.35GHz', '5337400000', '-50.887', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203645_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:37:14', '0');
INSERT INTO `wlan_se` VALUES ('2403D46B-17E4-4484-B686-7323D18F1777', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.180GHz', '2.4GHz~2.4835GHz', '2430644500', '-48.215378', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172413_2.4GHz~2.4835GHz.png', '0', '2020-09-20 17:25:01', '0');
INSERT INTO `wlan_se` VALUES ('244EF66C-FAFD-4A59-BB3C-C71AEA271EF1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '5.15GHz~5.35GHz', '5220800000', '-57.05', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202056_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:21:20', '0');
INSERT INTO `wlan_se` VALUES ('247DE4D7-ADE4-4D6C-92C3-DE21A1BB0509', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '2.4GHz~2.4835GHz', '2475651000', '-47.980514', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201205_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:12:41', '0');
INSERT INTO `wlan_se` VALUES ('249121FA-8D6C-4C6D-A502-1F30729BEADF', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.180GHz', '30MHz~1000MHz', '945680000', '-66.056259', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192307_30MHz~1000MHz.png', '0', '2020-09-20 19:24:25', '0');
INSERT INTO `wlan_se` VALUES ('24BAB14F-1EE0-476C-88A2-128FF1DEAADD', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '1GHz~40GHz', '10612800000', '-41.894', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202955_1GHz~40GHz.png', '0', '2020-09-20 20:30:04', '0');
INSERT INTO `wlan_se` VALUES ('25', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '2.4GHz~2.4835GHz', '2422294500', '-45.077637', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204253_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:43:28', '0');
INSERT INTO `wlan_se` VALUES ('252762D4-508D-4C2C-AC93-328694DE071A', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.472GHz', '1GHz~12.75GHz', '6123000000', '-54.236', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\1Mbps\\2.472GHz\\20200920-094720_1GHz~12.75GHz.png', '0', '2020-09-20 09:47:25', '0');
INSERT INTO `wlan_se` VALUES ('26', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '167MHz~223MHz', '183072000', '-58.672134', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202025_167MHz~223MHz.png', '0', '2020-09-20 20:21:17', '0');
INSERT INTO `wlan_se` VALUES ('2619203C-8B87-4A1E-92D7-63B705EB6D02', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '76MHz~118MHz', '78646000', '-58.998497', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202541_76MHz~118MHz.png', '0', '2020-09-20 20:26:35', '0');
INSERT INTO `wlan_se` VALUES ('26DE1B00-B8B7-4C76-9222-9862FD0C96F7', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '2.4GHz~2.4835GHz', '2468971000', '-56.325', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\1Mbps\\2.412GHz\\20200919-213412_2.4GHz~2.4835GHz.png', '0', '2020-09-19 21:34:50', '0');
INSERT INTO `wlan_se` VALUES ('26F1E924-33DD-46D9-AF4D-AE1DF5FFA25F', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.472GHz', '5.725GHz~5.85GHz', '5772500000', '-49.812118', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\1Mbps\\2.472GHz\\20200920-094703_5.725GHz~5.85GHz.png', '0', '2020-09-20 09:47:24', '0');
INSERT INTO `wlan_se` VALUES ('27', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '76MHz~118MHz', '88096000', '-57.553413', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202907_76MHz~118MHz.png', '0', '2020-09-20 20:29:58', '0');
INSERT INTO `wlan_se` VALUES ('274D9ABF-0DE0-4083-823C-2EE778B4F9BE', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '3.4GHz~3.53GHz', '3500750000', '-49.607811', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\1Mbps\\2.412GHz\\20200919-213418_3.4GHz~3.53GHz.png', '0', '2020-09-19 21:34:51', '0');
INSERT INTO `wlan_se` VALUES ('28', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '5.47GHz~5.85GHz', '5506480000', '-46.788872', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202101_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:21:21', '0');
INSERT INTO `wlan_se` VALUES ('28099B96-73DF-480E-95C1-A34EE8CE9A70', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.180GHz', '167MHz~223MHz', '207600000', '-61.401749', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172401_167MHz~223MHz.png', '0', '2020-09-20 17:24:59', '0');
INSERT INTO `wlan_se` VALUES ('28BCE739-3AC1-40BA-8D04-60951CF42621', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.472GHz', '3.4GHz~3.53GHz', '3420150000', '-49.612419', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\2.472GHz\\20200920-121229_3.4GHz~3.53GHz.png', '0', '2020-09-20 12:12:58', '0');
INSERT INTO `wlan_se` VALUES ('29', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '76MHz~118MHz', '83560000', '-58.707649', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201656_76MHz~118MHz.png', '0', '2020-09-20 20:17:46', '0');
INSERT INTO `wlan_se` VALUES ('2A25F964-1C52-4A29-B65B-0AC5C54E730D', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '48.5MHz~72.5MHz', '61700000', '-61.790665', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194856_48.5MHz~72.5MHz.png', '0', '2020-09-20 19:49:57', '0');
INSERT INTO `wlan_se` VALUES ('2A487F0C-5190-4059-8771-4676703DFA57', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '5.15GHz~5.35GHz', '5193800000', '-56', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202939_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:30:02', '0');
INSERT INTO `wlan_se` VALUES ('2BDA9BC2-D42A-4DE2-8108-96EA5ED3E3DF', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '2.4GHz~2.4835GHz', '2431145500', '-46.590683', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202559_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:26:38', '0');
INSERT INTO `wlan_se` VALUES ('3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '1GHz~40GHz', '10433600000', '-42.672', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203707_1GHz~40GHz.png', '0', '2020-09-20 20:37:16', '0');
INSERT INTO `wlan_se` VALUES ('30', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '5.47GHz~5.85GHz', '5518640000', '-47.277519', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201735_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:17:52', '0');
INSERT INTO `wlan_se` VALUES ('31', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '5.15GHz~5.35GHz', '5287400000', '-51.217', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202615_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:26:39', '0');
INSERT INTO `wlan_se` VALUES ('3141D38E-923B-455F-8F21-19D405C90797', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '1GHz~40GHz', '10638400000', '-39.642', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202113_1GHz~40GHz.png', '0', '2020-09-20 20:21:22', '0');
INSERT INTO `wlan_se` VALUES ('32', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '167MHz~223MHz', '205640000', '-59.011711', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201702_167MHz~223MHz.png', '0', '2020-09-20 20:17:47', '0');
INSERT INTO `wlan_se` VALUES ('3249685B-3C38-4865-B75F-AFC1A44DE105', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.472GHz', '2.4GHz~2.4835GHz', '2419789500', '-56.416', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\54Mbps\\2.472GHz\\20200920-105435_2.4GHz~2.4835GHz.png', '0', '2020-09-20 10:55:00', '0');
INSERT INTO `wlan_se` VALUES ('32BA5082-0C81-48B4-B0F0-89AB08629B30', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.412GHz', '1GHz~12.75GHz', '3044500000', '-20.093', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\2.412GHz\\20200920-141133_1GHz~12.75GHz.png', '1', '2020-09-20 14:11:38', '0');
INSERT INTO `wlan_se` VALUES ('33', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '470MHz~798MHz', '737976000', '-61.883553', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201709_470MHz~798MHz.png', '0', '2020-09-20 20:17:48', '0');
INSERT INTO `wlan_se` VALUES ('34', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '470MHz~798MHz', '783896000', '-61.024406', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204248_470MHz~798MHz.png', '0', '2020-09-20 20:43:27', '0');
INSERT INTO `wlan_se` VALUES ('35', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '30MHz~1000MHz', '856440000', '-62.981163', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203555_30MHz~1000MHz.png', '0', '2020-09-20 20:37:08', '0');
INSERT INTO `wlan_se` VALUES ('35050D74-B84C-4CD3-83FA-E21D9B3CA0BA', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.422GHz', '2.4GHz~2.4835GHz', '2474148000', '-48.601', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\2.422GHz\\20200920-121909_2.4GHz~2.4835GHz.png', '0', '2020-09-20 12:19:36', '0');
INSERT INTO `wlan_se` VALUES ('36', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '470MHz~798MHz', '766840000', '-61.799057', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203619_470MHz~798MHz.png', '0', '2020-09-20 20:37:12', '0');
INSERT INTO `wlan_se` VALUES ('36177C78-82E9-41EF-B291-891692CB68F4', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11ax(80MHz)', 'MCS11', '5.775GHz', '5.725GHz~5.85GHz', '5820000000', '-34.015', 'Task\\E201\\5.8GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ax(80MHz)\\MCS11\\5.775GHz\\20200920-210859_5.725GHz~5.85GHz.png', '0', '2020-09-20 21:09:27', '0');
INSERT INTO `wlan_se` VALUES ('3630752E-7A93-470E-8185-C029E39EA191', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.422GHz', '5.725GHz~5.85GHz', '5847875000', '-50.771469', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\2.422GHz\\20200920-121920_5.725GHz~5.85GHz.png', '0', '2020-09-20 12:19:38', '0');
INSERT INTO `wlan_se` VALUES ('37', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '48.5MHz~72.5MHz', '51092000', '-57.741234', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202535_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:26:34', '0');
INSERT INTO `wlan_se` VALUES ('37008BAE-5EB1-497A-BF52-346CBC0875DD', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.472GHz', '30MHz~1000MHz', '737130000', '-65.551949', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\11Mbps\\2.472GHz\\20200920-101615_30MHz~1000MHz.png', '0', '2020-09-20 10:17:22', '0');
INSERT INTO `wlan_se` VALUES ('38', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '470MHz~798MHz', '536912000', '-61.472694', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202032_470MHz~798MHz.png', '0', '2020-09-20 20:21:18', '0');
INSERT INTO `wlan_se` VALUES ('39', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '30MHz~1000MHz', '973810000', '-62.926285', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201645_30MHz~1000MHz.png', '0', '2020-09-20 20:17:44', '0');
INSERT INTO `wlan_se` VALUES ('3AA68CE6-3B4B-4F83-84E3-3E790BBE4FCA', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.180GHz', '470MHz~798MHz', '736992000', '-64.886253', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192331_470MHz~798MHz.png', '0', '2020-09-20 19:24:29', '0');
INSERT INTO `wlan_se` VALUES ('3C8A18E4-4929-4035-BF0B-8222BBA351A0', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '167MHz~223MHz', '217960000', '-57.507172', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204240_167MHz~223MHz.png', '0', '2020-09-20 20:43:26', '0');
INSERT INTO `wlan_se` VALUES ('3ECC002E-E765-4568-9D36-5D6A65FDD512', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.472GHz', '30MHz~1000MHz', '971870000', '-65.955666', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\6Mbps\\2.472GHz\\20200920-102659_30MHz~1000MHz.png', '0', '2020-09-20 10:27:43', '0');
INSERT INTO `wlan_se` VALUES ('3EF04161-AD9C-4579-90E5-1B9C7C6B96A6', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.412GHz', '3.4GHz~3.53GHz', '3443160000', '-50.038712', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\54Mbps\\2.412GHz\\20200920-105120_3.4GHz~3.53GHz.png', '0', '2020-09-20 10:51:49', '0');
INSERT INTO `wlan_se` VALUES ('3F1765EE-FB6A-410B-BDCE-08FE47962354', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '1GHz~40GHz', '10382400000', '-44.438', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195923_1GHz~40GHz.png', '0', '2020-09-20 19:59:32', '0');
INSERT INTO `wlan_se` VALUES ('4', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '167MHz~223MHz', '207096000', '-58.872284', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202913_167MHz~223MHz.png', '0', '2020-09-20 20:29:59', '0');
INSERT INTO `wlan_se` VALUES ('40', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '167MHz~223MHz', '217960000', '-57.507172', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204240_167MHz~223MHz.png', '0', '2020-09-20 20:43:26', '0');
INSERT INTO `wlan_se` VALUES ('41', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '1GHz~40GHz', '10638400000', '-39.642', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202113_1GHz~40GHz.png', '0', '2020-09-20 20:21:22', '0');
INSERT INTO `wlan_se` VALUES ('412F73EC-FA95-4232-B02C-5DDCF608DE04', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '30MHz~1000MHz', '973810000', '-62.926285', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201645_30MHz~1000MHz.png', '0', '2020-09-20 20:17:44', '0');
INSERT INTO `wlan_se` VALUES ('42', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '2.4GHz~2.4835GHz', '2431145500', '-46.590683', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202559_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:26:38', '0');
INSERT INTO `wlan_se` VALUES ('4243B057-40D8-45A5-A3EA-3E0FA6E9EC5B', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.412GHz', '30MHz~1000MHz', '475230000', '-65.458511', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\6Mbps\\2.412GHz\\20200920-102251_30MHz~1000MHz.png', '0', '2020-09-20 10:23:37', '0');
INSERT INTO `wlan_se` VALUES ('43', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '5.15GHz~5.35GHz', '5193800000', '-56', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202939_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:30:02', '0');
INSERT INTO `wlan_se` VALUES ('43616C80-AF73-4CB5-B18B-481AED11A80A', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz', '167MHz~223MHz', '174616000', '-61.381264', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194204_167MHz~223MHz.png', '0', '2020-09-20 19:43:02', '0');
INSERT INTO `wlan_se` VALUES ('44', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '76MHz~118MHz', '78646000', '-58.998497', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202541_76MHz~118MHz.png', '0', '2020-09-20 20:26:35', '0');
INSERT INTO `wlan_se` VALUES ('45', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '1GHz~40GHz', '10612800000', '-41.894', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202955_1GHz~40GHz.png', '0', '2020-09-20 20:30:04', '0');
INSERT INTO `wlan_se` VALUES ('46', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '5.15GHz~5.35GHz', '5220800000', '-57.05', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202056_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:21:20', '0');
INSERT INTO `wlan_se` VALUES ('47', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '2.4GHz~2.4835GHz', '2444672500', '-45.670418', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201715_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:17:49', '0');
INSERT INTO `wlan_se` VALUES ('48', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '470MHz~798MHz', '780288000', '-61.07711', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202920_470MHz~798MHz.png', '0', '2020-09-20 20:30:00', '0');
INSERT INTO `wlan_se` VALUES ('482915E8-2E0E-40B1-AE14-3EBCD77521F2', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.412GHz', '2.4GHz~2.4835GHz', '2463042500', '-54.666', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\6Mbps\\2.412GHz\\20200920-102309_2.4GHz~2.4835GHz.png', '0', '2020-09-20 10:23:38', '0');
INSERT INTO `wlan_se` VALUES ('49', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '30MHz~1000MHz', '870020000', '-62.807854', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204223_30MHz~1000MHz.png', '0', '2020-09-20 20:43:23', '0');
INSERT INTO `wlan_se` VALUES ('49238FAE-38BC-4D0F-B9DE-A7A6880E0A02', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '2.4GHz~2.4835GHz', '2442919000', '-48.689858', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195306_2.4GHz~2.4835GHz.png', '0', '2020-09-20 19:53:43', '0');
INSERT INTO `wlan_se` VALUES ('4BA300FA-4D0E-470D-9DC9-543291E9E22D', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.422GHz', '5.725GHz~5.85GHz', '5767875000', '-47.653526', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\2.422GHz\\20200920-150157_5.725GHz~5.85GHz.png', '0', '2020-09-20 15:02:18', '0');
INSERT INTO `wlan_se` VALUES ('4DD168EC-CD29-4E7C-A71F-FAFFFF5A3CCC', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '470MHz~798MHz', '536912000', '-61.472694', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202032_470MHz~798MHz.png', '0', '2020-09-20 20:21:18', '0');
INSERT INTO `wlan_se` VALUES ('4EDABE29-08A4-4473-9EF5-672F83E525FA', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.412GHz', '3.4GHz~3.53GHz', '3445110000', '-49.116051', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\11Mbps\\2.412GHz\\20200920-101215_3.4GHz~3.53GHz.png', '0', '2020-09-20 10:13:15', '0');
INSERT INTO `wlan_se` VALUES ('4FD02D72-7A40-4D1E-807F-9EEAB9F8FBF0', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.462GHz', '1GHz~12.75GHz', '3044500000', '-24.428', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\2.462GHz\\20200920-122326_1GHz~12.75GHz.png', '1', '2020-09-20 12:23:30', '0');
INSERT INTO `wlan_se` VALUES ('4FDFBF25-D4C3-4CC6-9832-477AA13F9498', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '48.5MHz~72.5MHz', '51092000', '-57.741234', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202535_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:26:34', '0');
INSERT INTO `wlan_se` VALUES ('5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '5.15GHz~5.35GHz', '5182400000', '-41.948', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204304_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:43:29', '0');
INSERT INTO `wlan_se` VALUES ('50', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '48.5MHz~72.5MHz', '51068000', '-58.658722', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201651_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:17:45', '0');
INSERT INTO `wlan_se` VALUES ('50B718C4-CF81-41D7-861F-03A0FB7FC57B', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.472GHz', '5.725GHz~5.85GHz', '5794375000', '-51.349022', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\6Mbps\\2.472GHz\\20200920-102730_5.725GHz~5.85GHz.png', '0', '2020-09-20 10:27:46', '0');
INSERT INTO `wlan_se` VALUES ('50DF4BF2-2ED5-4811-9569-7F1635DC8A3E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '1GHz~40GHz', '10433600000', '-46.269', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200801_1GHz~40GHz.png', '0', '2020-09-20 20:08:09', '0');
INSERT INTO `wlan_se` VALUES ('51', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '76MHz~118MHz', '81670000', '-58.541542', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202019_76MHz~118MHz.png', '0', '2020-09-20 20:21:16', '0');
INSERT INTO `wlan_se` VALUES ('52', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '2.4GHz~2.4835GHz', '2454275000', '-45.504875', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202037_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:21:19', '0');
INSERT INTO `wlan_se` VALUES ('52F42804-CB3E-41F8-B8D5-6B1E0B2F6F42', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.472GHz', '5.725GHz~5.85GHz', '5729125000', '-48.434685', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\2.472GHz\\20200920-141510_5.725GHz~5.85GHz.png', '0', '2020-09-20 14:15:30', '0');
INSERT INTO `wlan_se` VALUES ('53', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '1GHz~40GHz', '10356800000', '-39.611', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201744_1GHz~40GHz.png', '0', '2020-09-20 20:17:52', '0');
INSERT INTO `wlan_se` VALUES ('54', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '5.47GHz~5.85GHz', '5637580000', '-47.492836', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202620_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:26:40', '0');
INSERT INTO `wlan_se` VALUES ('5714D87C-CEED-40FD-BCDA-A955946A35BF', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.462GHz', '1GHz~12.75GHz', '3044500000', '-19.72', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\2.462GHz\\20200920-150647_1GHz~12.75GHz.png', '1', '2020-09-20 15:06:51', '0');
INSERT INTO `wlan_se` VALUES ('58E1C4A3-0374-4440-9E39-5C27019FB698', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '470MHz~798MHz', '766840000', '-61.799057', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203619_470MHz~798MHz.png', '0', '2020-09-20 20:37:12', '0');
INSERT INTO `wlan_se` VALUES ('5D05576E-F38D-4C00-B371-BE960FDD6EA5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '30MHz~1000MHz', '856440000', '-62.981163', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203555_30MHz~1000MHz.png', '0', '2020-09-20 20:37:08', '0');
INSERT INTO `wlan_se` VALUES ('5D80ECDC-4568-461B-AEA5-C0FB0843BAA1', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '3.4GHz~3.53GHz', '3523630000', '-49.648048', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\1Mbps\\2.412GHz\\20200919-211255_3.4GHz~3.53GHz.png', '0', '2020-09-19 21:13:35', '1');
INSERT INTO `wlan_se` VALUES ('5E080818-8EA5-4420-8DF7-EEE620121B8B', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '470MHz~798MHz', '783896000', '-61.024406', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204248_470MHz~798MHz.png', '0', '2020-09-20 20:43:27', '0');
INSERT INTO `wlan_se` VALUES ('5F6AFF27-746E-4D57-8041-FA3B65E1427B', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '470MHz~798MHz', '737976000', '-61.883553', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201709_470MHz~798MHz.png', '0', '2020-09-20 20:17:48', '0');
INSERT INTO `wlan_se` VALUES ('6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '5.47GHz~5.85GHz', '5620480000', '-47.348473', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202944_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:30:03', '0');
INSERT INTO `wlan_se` VALUES ('6177E7A1-6121-4977-B315-677669D9CF93', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.180GHz', '5.15GHz~5.35GHz', '5233600000', '-55.81', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172429_5.15GHz~5.35GHz.png', '0', '2020-09-20 17:25:02', '0');
INSERT INTO `wlan_se` VALUES ('625912AD-E04B-49AB-A0BF-31D12F781CA0', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '5.725GHz~5.85GHz', '5726625000', '-51.326767', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\1Mbps\\2.412GHz\\20200919-211301_5.725GHz~5.85GHz.png', '0', '2020-09-19 21:13:36', '1');
INSERT INTO `wlan_se` VALUES ('6344CA82-784A-4548-A43E-E1B7AA97D277', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.412GHz', '5.725GHz~5.85GHz', '5766500000', '-48.054108', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\2.412GHz\\20200920-141042_5.725GHz~5.85GHz.png', '0', '2020-09-20 14:11:37', '0');
INSERT INTO `wlan_se` VALUES ('6481F433-F9BA-418F-9FA8-8F030D97C372', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '167MHz~223MHz', '205640000', '-59.011711', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201702_167MHz~223MHz.png', '0', '2020-09-20 20:17:47', '0');
INSERT INTO `wlan_se` VALUES ('655DFEAA-127A-4715-99A6-29483F6ABC2B', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '5.15GHz~5.35GHz', '5287400000', '-51.217', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202615_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:26:39', '0');
INSERT INTO `wlan_se` VALUES ('65B7DAF1-65CB-45CC-A439-8D6F3BD22E61', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.825GHz', '30MHz~1000MHz', '745860000', '-65.638145', 'Task\\E201\\5.8GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.825GHz\\20200920-210359_30MHz~1000MHz.png', '0', '2020-09-20 21:04:35', '0');
INSERT INTO `wlan_se` VALUES ('67F8FC8F-9B22-4830-803C-13C6DF8AB43B', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.412GHz', '3.4GHz~3.53GHz', '3456810000', '-48.969048', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\2.412GHz\\20200920-112212_3.4GHz~3.53GHz.png', '0', '2020-09-20 11:22:37', '0');
INSERT INTO `wlan_se` VALUES ('68606275-FC1B-4D77-8ADD-265ADAFEC673', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '5.47GHz~5.85GHz', '5585140000', '-50.707603', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200243_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:03:00', '0');
INSERT INTO `wlan_se` VALUES ('69CB1083-0F93-4F6B-8BE7-4D7E167F3626', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '30MHz~1000MHz', '538280000', '-66.359451', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\1Mbps\\2.412GHz\\20200919-211231_30MHz~1000MHz.png', '0', '2020-09-19 21:13:33', '1');
INSERT INTO `wlan_se` VALUES ('6A07C47F-5E5E-4873-BBF2-D48C1582654D', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11ax(80MHz)', 'MCS11', '5.775GHz', '2.4GHz~2.4835GHz', '2402755500', '-48.617462', 'Task\\E201\\5.8GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ax(80MHz)\\MCS11\\5.775GHz\\20200920-210840_2.4GHz~2.4835GHz.png', '0', '2020-09-20 21:09:25', '0');
INSERT INTO `wlan_se` VALUES ('6A48AA2C-06C2-4138-9220-1E177379434B', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '5.47GHz~5.85GHz', '5518640000', '-47.277519', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201735_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:17:52', '0');
INSERT INTO `wlan_se` VALUES ('6B7721F3-E2B9-4FEB-B0CD-B14BB0A21591', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.412GHz', '30MHz~1000MHz', '725490000', '-65.551209', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\11Mbps\\2.412GHz\\20200920-101153_30MHz~1000MHz.png', '0', '2020-09-20 10:13:13', '0');
INSERT INTO `wlan_se` VALUES ('6BF5D15E-1642-4151-B127-590541FEFE57', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.422GHz', '1GHz~12.75GHz', '3044500000', '-19.833', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\2.422GHz\\20200920-150214_1GHz~12.75GHz.png', '1', '2020-09-20 15:02:19', '0');
INSERT INTO `wlan_se` VALUES ('6CD14FBB-E1C0-45FF-91D2-B584B30DEA9F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '76MHz~118MHz', '83560000', '-58.707649', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201656_76MHz~118MHz.png', '0', '2020-09-20 20:17:46', '0');
INSERT INTO `wlan_se` VALUES ('6D612414-0DB1-4FC8-95CB-A8947C33D257', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '5.47GHz~5.85GHz', '5607180000', '-50.158287', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195914_5.47GHz~5.85GHz.png', '0', '2020-09-20 19:59:31', '0');
INSERT INTO `wlan_se` VALUES ('6D7E10E1-02A3-4A8F-A05C-8E5F29D98DE7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz', '76MHz~118MHz', '116950000', '-61.582893', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194158_76MHz~118MHz.png', '0', '2020-09-20 19:43:01', '0');
INSERT INTO `wlan_se` VALUES ('6DFAE9CA-86DD-4CCB-B8E6-0807757EBCB1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.180GHz', '5.47GHz~5.85GHz', '5626940000', '-49.402412', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192403_5.47GHz~5.85GHz.png', '0', '2020-09-20 19:24:32', '0');
INSERT INTO `wlan_se` VALUES ('6E66D7C0-89DE-4B15-8CD5-DE38568B9099', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.745GHz', '3.4GHz~3.53GHz', '3518950000', '-49.644913', 'Task\\E201\\5.8GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.745GHz\\20200920-210055_3.4GHz~3.53GHz.png', '0', '2020-09-20 21:01:21', '0');
INSERT INTO `wlan_se` VALUES ('6ED7BA66-E743-4C8C-B416-1216C6C67D61', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '48.5MHz~72.5MHz', '59588000', '-61.477188', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195242_48.5MHz~72.5MHz.png', '0', '2020-09-20 19:53:39', '0');
INSERT INTO `wlan_se` VALUES ('6EDFEED2-57A3-41A3-8E0E-5FA6669537EA', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '5.47GHz~5.85GHz', '5506480000', '-46.788872', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202101_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:21:21', '0');
INSERT INTO `wlan_se` VALUES ('6FF89CD3-B278-46C8-B18D-F4EBD5D82864', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.412GHz', '30MHz~1000MHz', '970900000', '-62.390861', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\2.412GHz\\20200920-141018_30MHz~1000MHz.png', '0', '2020-09-20 14:11:34', '0');
INSERT INTO `wlan_se` VALUES ('7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '1GHz~40GHz', '10600000000', '-44.493', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204322_1GHz~40GHz.png', '0', '2020-09-20 20:43:31', '0');
INSERT INTO `wlan_se` VALUES ('700A0CD8-A919-487E-BCB6-398954F7193F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '76MHz~118MHz', '88096000', '-57.553413', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202907_76MHz~118MHz.png', '0', '2020-09-20 20:29:58', '0');
INSERT INTO `wlan_se` VALUES ('71629C00-0533-4849-B9CC-E1F889F26DF7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '48.5MHz~72.5MHz', '67076000', '-60.280502', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201140_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:12:37', '0');
INSERT INTO `wlan_se` VALUES ('718A61AD-4415-4D9B-8EF2-14BCC3B8D95A', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.472GHz', '30MHz~1000MHz', '875840000', '-65.210014', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\1Mbps\\2.472GHz\\20200920-094629_30MHz~1000MHz.png', '0', '2020-09-20 09:47:21', '0');
INSERT INTO `wlan_se` VALUES ('729964C0-4D65-4E15-9F51-F6E8A2C9774E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz', '76MHz~118MHz', '76210000', '-61.896584', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172753_76MHz~118MHz.png', '0', '2020-09-20 17:28:56', '0');
INSERT INTO `wlan_se` VALUES ('72CCB7A9-95B0-4C73-85B1-CE467114A62D', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '167MHz~223MHz', '183072000', '-58.672134', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202025_167MHz~223MHz.png', '0', '2020-09-20 20:21:17', '0');
INSERT INTO `wlan_se` VALUES ('738E6F76-8BE6-4A63-9DEC-195FE05B3E14', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.180GHz', '470MHz~798MHz', '796032000', '-64.175049', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172408_470MHz~798MHz.png', '0', '2020-09-20 17:25:00', '0');
INSERT INTO `wlan_se` VALUES ('74520751-66EA-4A87-B42D-DAC916953C7B', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11ax(80MHz)', 'MCS11', '5.775GHz', '30MHz~1000MHz', '722580000', '-65.456329', 'Task\\E201\\5.8GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ax(80MHz)\\MCS11\\5.775GHz\\20200920-210834_30MHz~1000MHz.png', '0', '2020-09-20 21:09:24', '0');
INSERT INTO `wlan_se` VALUES ('74A49F1F-9A78-4677-BB88-BFD61911E852', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '2.4GHz~2.4835GHz', '2422294500', '-45.077637', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204253_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:43:28', '0');
INSERT INTO `wlan_se` VALUES ('74ABE3B8-A845-4A53-B4D3-A2537C7E4443', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '30MHz~1000MHz', '958290000', '-65.869118', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195236_30MHz~1000MHz.png', '0', '2020-09-20 19:53:38', '0');
INSERT INTO `wlan_se` VALUES ('763F080B-86E4-4F00-BDE7-3E66825CEDF1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '76MHz~118MHz', '87004000', '-61.717804', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200200_76MHz~118MHz.png', '0', '2020-09-20 20:02:55', '0');
INSERT INTO `wlan_se` VALUES ('768DE730-DCF0-47E6-9760-CBB60A55E6DD', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.472GHz', '2.4GHz~2.4835GHz', '2442919000', '-56.953', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\1Mbps\\2.472GHz\\20200920-094652_2.4GHz~2.4835GHz.png', '0', '2020-09-20 09:47:22', '0');
INSERT INTO `wlan_se` VALUES ('779074A1-410E-4923-B111-1ECBA8B4891C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '48.5MHz~72.5MHz', '61676000', '-61.878616', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200155_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:02:54', '0');
INSERT INTO `wlan_se` VALUES ('77CCB483-DC12-4CB9-82E7-18217EED56D1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '5.15GHz~5.35GHz', '5337400000', '-50.887', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203645_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:37:14', '0');
INSERT INTO `wlan_se` VALUES ('799403DA-8F0D-4435-900C-66D475F9C487', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '2.4GHz~2.4835GHz', '2447929000', '-57.335', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\1Mbps\\2.412GHz\\20200919-211250_2.4GHz~2.4835GHz.png', '0', '2020-09-19 21:13:34', '1');
INSERT INTO `wlan_se` VALUES ('7B71CBCA-408B-498B-A65B-8DD2A5A87E31', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '2.4GHz~2.4835GHz', '2421376000', '-49.125771', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200219_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:02:58', '0');
INSERT INTO `wlan_se` VALUES ('7C059B68-81BF-45DD-8112-960E89DBBB9C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '2.4GHz~2.4835GHz', '2455861500', '-46.045067', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202926_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:30:01', '0');
INSERT INTO `wlan_se` VALUES ('7CB5773A-9068-41CF-9009-82BB2A9CB9C7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.180GHz', '167MHz~223MHz', '186824000', '-60.899383', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192324_167MHz~223MHz.png', '0', '2020-09-20 19:24:28', '0');
INSERT INTO `wlan_se` VALUES ('7D0824ED-00D2-4D12-A851-485B13B83E32', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '167MHz~223MHz', '220928000', '-58.426209', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202547_167MHz~223MHz.png', '0', '2020-09-20 20:26:36', '0');
INSERT INTO `wlan_se` VALUES ('7E0D0249-D8DF-4EB5-A217-BD4AA5C34105', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.462GHz', '30MHz~1000MHz', '881660000', '-65.783768', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\2.462GHz\\20200920-122243_30MHz~1000MHz.png', '0', '2020-09-20 12:23:26', '0');
INSERT INTO `wlan_se` VALUES ('7EB02DD2-9D91-468E-9E28-3DAE5BC04F43', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11ax(80MHz)', 'MCS11', '5.775GHz', '3.4GHz~3.53GHz', '3410270000', '-48.989189', 'Task\\E201\\5.8GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ax(80MHz)\\MCS11\\5.775GHz\\20200920-210845_3.4GHz~3.53GHz.png', '0', '2020-09-20 21:09:26', '0');
INSERT INTO `wlan_se` VALUES ('7F0FE175-D59F-468B-B76B-F8A84705E130', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '1GHz~12.75GHz', '6087750000', '-54.725', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\1Mbps\\2.412GHz\\20200919-213449_1GHz~12.75GHz.png', '0', '2020-09-19 21:34:53', '0');
INSERT INTO `wlan_se` VALUES ('8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '48.5MHz~72.5MHz', '58076000', '-58.492516', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202901_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:29:57', '0');
INSERT INTO `wlan_se` VALUES ('82C41038-66F6-4F8D-8907-C2FF9415B590', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '470MHz~798MHz', '486400000', '-61.672104', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202554_470MHz~798MHz.png', '0', '2020-09-20 20:26:37', '0');
INSERT INTO `wlan_se` VALUES ('83A878CD-8ADF-49AB-A0B3-6C3E9EBA7888', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.412GHz', '2.4GHz~2.4835GHz', '2431563000', '-56.976', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\11Mbps\\2.412GHz\\20200920-101209_2.4GHz~2.4835GHz.png', '0', '2020-09-20 10:13:14', '0');
INSERT INTO `wlan_se` VALUES ('86C77A16-B1B7-4C13-BE33-989D84F01374', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz', '48.5MHz~72.5MHz', '69548000', '-60.666649', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172747_48.5MHz~72.5MHz.png', '0', '2020-09-20 17:28:55', '0');
INSERT INTO `wlan_se` VALUES ('879CA822-DA5A-42F9-9721-8E5FAEFFDB0B', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.180GHz', '1GHz~40GHz', '10356800000', '-42.456', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192424_1GHz~40GHz.png', '0', '2020-09-20 19:24:33', '0');
INSERT INTO `wlan_se` VALUES ('88BA5B39-DDD6-4921-8487-C5B82A6A6663', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '5.47GHz~5.85GHz', '5488240000', '-46.868004', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204310_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:43:30', '0');
INSERT INTO `wlan_se` VALUES ('88F2B6D1-F298-427B-8CA4-D4180FAB42BA', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.462GHz', '5.725GHz~5.85GHz', '5812875000', '-50.878891', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\2.462GHz\\20200920-122315_5.725GHz~5.85GHz.png', '0', '2020-09-20 12:23:29', '0');
INSERT INTO `wlan_se` VALUES ('8944B437-D0D2-4446-9225-35CA09CD1881', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '48.5MHz~72.5MHz', '52388000', '-57.469421', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204229_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:43:24', '0');
INSERT INTO `wlan_se` VALUES ('8B82BE0A-8095-4C6B-BE78-076C2F2B994C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz', '5.15GHz~5.35GHz', '5247200000', '-58.437', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172835_5.15GHz~5.35GHz.png', '0', '2020-09-20 17:29:00', '0');
INSERT INTO `wlan_se` VALUES ('8CC7FA48-7E09-42B7-BC30-41DA766EF168', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.412GHz', '1GHz~12.75GHz', '10094500000', '-55.453', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\54Mbps\\2.412GHz\\20200920-105147_1GHz~12.75GHz.png', '0', '2020-09-20 10:51:51', '0');
INSERT INTO `wlan_se` VALUES ('8D1E768A-807F-4058-9DB8-4C4AEB8E8060', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '48.5MHz~72.5MHz', '57380000', '-58.214622', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202013_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:21:15', '0');
INSERT INTO `wlan_se` VALUES ('8DF96C20-50BC-45DC-AC6D-365023811EA4', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz', '1GHz~40GHz', '10638400000', '-41.956', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194258_1GHz~40GHz.png', '0', '2020-09-20 19:43:07', '0');
INSERT INTO `wlan_se` VALUES ('8E8AE0DC-6F98-4D23-BC9A-EB588A24D0D2', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.472GHz', '1GHz~12.75GHz', '6029000000', '-54.865', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\54Mbps\\2.472GHz\\20200920-105459_1GHz~12.75GHz.png', '0', '2020-09-20 10:55:03', '0');
INSERT INTO `wlan_se` VALUES ('9', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '30MHz~1000MHz', '752650000', '-62.498955', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202007_30MHz~1000MHz.png', '0', '2020-09-20 20:21:14', '0');
INSERT INTO `wlan_se` VALUES ('917F99D4-DC68-4559-8A92-3D777F9E1625', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.472GHz', '3.4GHz~3.53GHz', '3419110000', '-49.480293', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\1Mbps\\2.472GHz\\20200920-094658_3.4GHz~3.53GHz.png', '0', '2020-09-20 09:47:23', '0');
INSERT INTO `wlan_se` VALUES ('919661B4-2BDC-4421-8BF2-475AFC737CE9', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.462GHz', '5.725GHz~5.85GHz', '5841500000', '-47.905121', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\2.462GHz\\20200920-150636_5.725GHz~5.85GHz.png', '0', '2020-09-20 15:06:50', '0');
INSERT INTO `wlan_se` VALUES ('92298D44-EE04-4BEE-9304-CE944C6208FE', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '76MHz~118MHz', '86248000', '-61.872467', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194902_76MHz~118MHz.png', '0', '2020-09-20 19:49:58', '0');
INSERT INTO `wlan_se` VALUES ('93AB4EF8-7DC4-49D9-A0A0-CA4FD3C7B8EA', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '30MHz~1000MHz', '906880000', '-65.859657', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195823_30MHz~1000MHz.png', '0', '2020-09-20 19:59:24', '0');
INSERT INTO `wlan_se` VALUES ('945975F9-3481-4FA9-BA26-D1BE655A8C9E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '5.15GHz~5.35GHz', '5287000000', '-56.671', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201729_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:17:50', '0');
INSERT INTO `wlan_se` VALUES ('954C8E03-A862-411A-8D4A-1D0700B9AF68', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '5.15GHz~5.35GHz', '5288000000', '-55.464', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195908_5.15GHz~5.35GHz.png', '0', '2020-09-20 19:59:30', '0');
INSERT INTO `wlan_se` VALUES ('9577F843-AFB6-49D5-846E-6A74DD5B2C32', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '167MHz~223MHz', '222664000', '-61.275093', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194907_167MHz~223MHz.png', '0', '2020-09-20 19:49:59', '0');
INSERT INTO `wlan_se` VALUES ('9680EEE4-DCF5-412A-A020-31F9381D5BC7', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.412GHz', '2.4GHz~2.4835GHz', '2452605000', '-55.147', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\54Mbps\\2.412GHz\\20200920-105115_2.4GHz~2.4835GHz.png', '0', '2020-09-20 10:51:48', '0');
INSERT INTO `wlan_se` VALUES ('96C6E14C-CF00-4402-9F10-022730B640A7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '5.47GHz~5.85GHz', '5735620000', '-49.547623', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200750_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:08:08', '0');
INSERT INTO `wlan_se` VALUES ('96CC84ED-F822-4726-903B-DAC5EEDC75B2', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.472GHz', '5.725GHz~5.85GHz', '5824375000', '-50.545746', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\54Mbps\\2.472GHz\\20200920-105446_5.725GHz~5.85GHz.png', '0', '2020-09-20 10:55:02', '0');
INSERT INTO `wlan_se` VALUES ('99077B30-083B-4F7E-BD8F-891825E197D5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz', '5.47GHz~5.85GHz', '5573740000', '-49.708145', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194245_5.47GHz~5.85GHz.png', '0', '2020-09-20 19:43:06', '0');
INSERT INTO `wlan_se` VALUES ('997A6873-B3C0-4138-A39C-7D4CBDBD97FC', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.745GHz', '1GHz~40GHz', '11496000000', '-51.363', 'Task\\E201\\5.8GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.745GHz\\20200920-210118_1GHz~40GHz.png', '0', '2020-09-20 21:01:23', '0');
INSERT INTO `wlan_se` VALUES ('99C3EDE7-9469-4851-BB9A-99CF9C33C659', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.180GHz', '48.5MHz~72.5MHz', '60380000', '-61.144623', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172349_48.5MHz~72.5MHz.png', '0', '2020-09-20 17:24:57', '0');
INSERT INTO `wlan_se` VALUES ('9A1193F3-CC01-4E81-8E61-CDA197EE405F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '5.47GHz~5.85GHz', '5687360000', '-50.407784', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195328_5.47GHz~5.85GHz.png', '0', '2020-09-20 19:53:45', '0');
INSERT INTO `wlan_se` VALUES ('9CD4C59D-417C-44AE-AE30-211017CE52A3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '167MHz~223MHz', '188896000', '-61.75914', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201152_167MHz~223MHz.png', '0', '2020-09-20 20:12:39', '0');
INSERT INTO `wlan_se` VALUES ('9DAC6B7C-DA13-4681-977C-6E7B919799D2', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.472GHz', '1GHz~12.75GHz', '5958500000', '-54.485', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\6Mbps\\2.472GHz\\20200920-102742_1GHz~12.75GHz.png', '0', '2020-09-20 10:27:47', '0');
INSERT INTO `wlan_se` VALUES ('9E7D8555-B362-4CEE-9F28-3E0239F9217D', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.472GHz', '5.725GHz~5.85GHz', '5812500000', '-51.386742', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\11Mbps\\2.472GHz\\20200920-101704_5.725GHz~5.85GHz.png', '0', '2020-09-20 10:17:25', '0');
INSERT INTO `wlan_se` VALUES ('9FC7B910-825D-47F2-A9F3-DF72410E6E78', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '30MHz~1000MHz', '792420000', '-65.456787', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201134_30MHz~1000MHz.png', '0', '2020-09-20 20:12:36', '0');
INSERT INTO `wlan_se` VALUES ('A13BD1E8-49C7-494C-A985-BC7996BFC65B', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.422GHz', '1GHz~12.75GHz', '3044500000', '-24.016', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\2.422GHz\\20200920-121935_1GHz~12.75GHz.png', '1', '2020-09-20 12:19:39', '0');
INSERT INTO `wlan_se` VALUES ('A45ECC46-4B3C-49C2-BFE2-B0CE0B9EDC11', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '5.15GHz~5.35GHz', '5248000000', '-57.43', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195323_5.15GHz~5.35GHz.png', '0', '2020-09-20 19:53:44', '0');
INSERT INTO `wlan_se` VALUES ('A7268554-59B4-4DE8-8890-64781DC033E0', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.412GHz', '5.725GHz~5.85GHz', '5729250000', '-51.29113', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\2.412GHz\\20200920-112217_5.725GHz~5.85GHz.png', '0', '2020-09-20 11:22:37', '0');
INSERT INTO `wlan_se` VALUES ('A88F3D8D-2909-4318-8DDA-A00A6A705BBC', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '2.4GHz~2.4835GHz', '2459869500', '-48.678963', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195853_2.4GHz~2.4835GHz.png', '0', '2020-09-20 19:59:29', '0');
INSERT INTO `wlan_se` VALUES ('AA52D776-40EC-4989-AC2A-54B3013D2CE1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz', '5.47GHz~5.85GHz', '5722700000', '-50.232071', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172840_5.47GHz~5.85GHz.png', '0', '2020-09-20 17:29:01', '0');
INSERT INTO `wlan_se` VALUES ('AA619B0B-52E1-4B44-ABEC-E732C7B19847', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.412GHz', '2.4GHz~2.4835GHz', '2435487500', '-53.193', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\2.412GHz\\20200920-141031_2.4GHz~2.4835GHz.png', '0', '2020-09-20 14:11:35', '0');
INSERT INTO `wlan_se` VALUES ('AA8C1EFD-C5C2-47E6-815C-628AB5B53696', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.180GHz', '1GHz~40GHz', '10356800000', '-44.245', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172456_1GHz~40GHz.png', '0', '2020-09-20 17:25:04', '0');
INSERT INTO `wlan_se` VALUES ('AA8D2EB5-EE62-4041-BF46-3E64A493A8E6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '76MHz~118MHz', '82804000', '-62.28447', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201146_76MHz~118MHz.png', '0', '2020-09-20 20:12:38', '0');
INSERT INTO `wlan_se` VALUES ('AAB96B1D-D450-424F-B472-106950BFD803', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.412GHz', '1GHz~12.75GHz', '10646750000', '-55.136', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\11Mbps\\2.412GHz\\20200920-101312_1GHz~12.75GHz.png', '0', '2020-09-20 10:13:17', '0');
INSERT INTO `wlan_se` VALUES ('ABEF4DAA-7ABA-4D9F-9536-DD68FBCEB96D', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.412GHz', '30MHz~1000MHz', '471350000', '-65.981766', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\2.412GHz\\20200920-112146_30MHz~1000MHz.png', '0', '2020-09-20 11:22:34', '0');
INSERT INTO `wlan_se` VALUES ('AC2877B0-08B1-4159-8275-E888684DBB7C', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.472GHz', '1GHz~12.75GHz', '3044500000', '-20.386', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\2.472GHz\\20200920-141526_1GHz~12.75GHz.png', '1', '2020-09-20 14:15:31', '0');
INSERT INTO `wlan_se` VALUES ('AE058491-5DA9-4407-9F46-A6CA88E2B52C', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.412GHz', '2.4GHz~2.4835GHz', '2473814000', '-55.737', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\2.412GHz\\20200920-112206_2.4GHz~2.4835GHz.png', '0', '2020-09-20 11:22:35', '0');
INSERT INTO `wlan_se` VALUES ('AE13E943-1175-4EC1-810C-D271DBF6D415', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '5.47GHz~5.85GHz', '5728780000', '-47.834831', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203650_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:37:15', '0');
INSERT INTO `wlan_se` VALUES ('AE7DF003-C8B1-4DA5-A65F-0F8CEA2080FF', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.412GHz', '30MHz~1000MHz', '882630000', '-66.087547', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\54Mbps\\2.412GHz\\20200920-105051_30MHz~1000MHz.png', '0', '2020-09-20 10:51:47', '0');
INSERT INTO `wlan_se` VALUES ('AEF8C28C-1388-4CA0-909D-5CF12A061066', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '470MHz~798MHz', '748144000', '-64.979668', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200213_470MHz~798MHz.png', '0', '2020-09-20 20:02:57', '0');
INSERT INTO `wlan_se` VALUES ('B09B00B3-7B4C-4D52-AADC-26042100C40D', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '1Mbps', '2.412GHz', '5.725GHz~5.85GHz', '5831625000', '-51.141602', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\1Mbps\\2.412GHz\\20200919-213423_5.725GHz~5.85GHz.png', '0', '2020-09-19 21:34:52', '0');
INSERT INTO `wlan_se` VALUES ('B2A233C7-0626-48BE-A962-9BB83D30E4CE', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.412GHz', '5.725GHz~5.85GHz', '5736000000', '-50.427826', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\54Mbps\\2.412GHz\\20200920-105126_5.725GHz~5.85GHz.png', '0', '2020-09-20 10:51:50', '0');
INSERT INTO `wlan_se` VALUES ('B361BB73-04C6-400F-A00F-CE85313879F5', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.412GHz', '1GHz~12.75GHz', '7168750000', '-55.537', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\2.412GHz\\20200920-112234_1GHz~12.75GHz.png', '0', '2020-09-20 11:22:38', '0');
INSERT INTO `wlan_se` VALUES ('B481A9E8-3D05-43AC-A7D8-4ED2D7C5B8D6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz', '48.5MHz~72.5MHz', '65300000', '-61.435852', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194152_48.5MHz~72.5MHz.png', '0', '2020-09-20 19:43:00', '0');
INSERT INTO `wlan_se` VALUES ('B55CB499-FC35-462D-A6BD-960AEFA1EF2E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '30MHz~1000MHz', '691540000', '-65.528091', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200149_30MHz~1000MHz.png', '0', '2020-09-20 20:02:53', '0');
INSERT INTO `wlan_se` VALUES ('B861B68B-165F-4875-BABB-8746C091B6FA', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '76MHz~118MHz', '90280000', '-57.17839', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204235_76MHz~118MHz.png', '0', '2020-09-20 20:43:25', '0');
INSERT INTO `wlan_se` VALUES ('B9AF9789-C3A0-4E8E-A869-BA87DFA03A74', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz', '167MHz~223MHz', '206424000', '-61.740181', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172759_167MHz~223MHz.png', '0', '2020-09-20 17:28:57', '0');
INSERT INTO `wlan_se` VALUES ('B9E4906E-9F64-477C-9F1A-6980512C7657', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '76MHz~118MHz', '116614000', '-60.865883', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195835_76MHz~118MHz.png', '0', '2020-09-20 19:59:26', '0');
INSERT INTO `wlan_se` VALUES ('BA396630-308D-4561-8F36-226C4527BCC6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '1GHz~40GHz', '10356800000', '-42.92', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194955_1GHz~40GHz.png', '0', '2020-09-20 19:50:04', '0');
INSERT INTO `wlan_se` VALUES ('BA53C247-75B7-4B1B-96CB-33188301DFFA', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz', '5.15GHz~5.35GHz', '5256200000', '-54.111', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194240_5.15GHz~5.35GHz.png', '0', '2020-09-20 19:43:05', '0');
INSERT INTO `wlan_se` VALUES ('BB3D4EDF-8CA7-4E78-B99D-066B34752033', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '48.5MHz~72.5MHz', '49868000', '-58.57785', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203600_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:37:10', '0');
INSERT INTO `wlan_se` VALUES ('BC5EEB34-6195-455B-9FF7-C2402508FA32', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.825GHz', '3.4GHz~3.53GHz', '3473450000', '-49.924461', 'Task\\E201\\5.8GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.825GHz\\20200920-210410_3.4GHz~3.53GHz.png', '0', '2020-09-20 21:04:37', '0');
INSERT INTO `wlan_se` VALUES ('BC82FCA2-C24C-4D92-AB7A-F67E1FBCE633', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz', '30MHz~1000MHz', '909790000', '-65.540337', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172741_30MHz~1000MHz.png', '0', '2020-09-20 17:28:54', '0');
INSERT INTO `wlan_se` VALUES ('BCEAC898-821F-4E59-A9DA-ED80F259F4B1', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.472GHz', '1GHz~12.75GHz', '11551500000', '-55.168', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\11Mbps\\2.472GHz\\20200920-101721_1GHz~12.75GHz.png', '0', '2020-09-20 10:17:26', '0');
INSERT INTO `wlan_se` VALUES ('BD8F0452-252E-45EA-8C6E-88FF250D6F68', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.412GHz', '3.4GHz~3.53GHz', '3487490000', '-49.970345', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\6Mbps\\2.412GHz\\20200920-102314_3.4GHz~3.53GHz.png', '0', '2020-09-20 10:23:39', '0');
INSERT INTO `wlan_se` VALUES ('BFAF72C2-E640-46A0-B319-15C301E4DB19', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '1GHz~40GHz', '10612800000', '-47.494', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201236_1GHz~40GHz.png', '0', '2020-09-20 20:12:44', '0');
INSERT INTO `wlan_se` VALUES ('BFDFC206-BFE3-4F17-9D3F-9142973908DD', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '76MHz~118MHz', '82468000', '-61.615669', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195248_76MHz~118MHz.png', '0', '2020-09-20 19:53:40', '0');
INSERT INTO `wlan_se` VALUES ('C043D199-16C9-4352-A4EB-F0FEA64B3406', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '2.4GHz~2.4835GHz', '2479408500', '-45.51342', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203625_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:37:13', '0');
INSERT INTO `wlan_se` VALUES ('C1628231-A1FE-438C-87A5-C5DFB8E904CE', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.412GHz', '5.725GHz~5.85GHz', '5835250000', '-49.527939', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\6Mbps\\2.412GHz\\20200920-102320_5.725GHz~5.85GHz.png', '0', '2020-09-20 10:23:40', '0');
INSERT INTO `wlan_se` VALUES ('C1877CF3-1349-40FA-8D16-517B14ABDA0B', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.472GHz', '3.4GHz~3.53GHz', '3404550000', '-49.683731', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\54Mbps\\2.472GHz\\20200920-105440_3.4GHz~3.53GHz.png', '0', '2020-09-20 10:55:01', '0');
INSERT INTO `wlan_se` VALUES ('C2B4C7D8-5D19-49A0-B678-4BEFA32357B8', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.472GHz', '2.4GHz~2.4835GHz', '2423881000', '-57.221', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\11Mbps\\2.472GHz\\20200920-101653_2.4GHz~2.4835GHz.png', '0', '2020-09-20 10:17:23', '0');
INSERT INTO `wlan_se` VALUES ('C3C7398F-7219-4504-90A5-FE202221EC69', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '470MHz~798MHz', '732728000', '-64.543037', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194915_470MHz~798MHz.png', '0', '2020-09-20 19:50:00', '0');
INSERT INTO `wlan_se` VALUES ('C4F2FD6C-2E62-4C2E-AF65-AB88BABC9B90', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '30MHz~1000MHz', '892330000', '-62.255768', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202856_30MHz~1000MHz.png', '0', '2020-09-20 20:29:56', '0');
INSERT INTO `wlan_se` VALUES ('C68BE0E5-58E2-44B9-AE04-6A1C96B2BFEF', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '76MHz~118MHz', '81376000', '-61.269463', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200705_76MHz~118MHz.png', '0', '2020-09-20 20:08:03', '0');
INSERT INTO `wlan_se` VALUES ('C75DB7CC-BA58-4F56-A14C-FC90F31A09E9', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '54Mbps', '2.472GHz', '30MHz~1000MHz', '786600000', '-65.716263', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\54Mbps\\2.472GHz\\20200920-105418_30MHz~1000MHz.png', '0', '2020-09-20 10:54:59', '0');
INSERT INTO `wlan_se` VALUES ('C94205B9-CD23-414B-B00E-1D8B6339EB86', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '76MHz~118MHz', '113926000', '-58.749077', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203606_76MHz~118MHz.png', '0', '2020-09-20 20:37:10', '0');
INSERT INTO `wlan_se` VALUES ('C9A82973-9BA0-4C5C-91D1-0D1DE507D5AD', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.422GHz', '3.4GHz~3.53GHz', '3447060000', '-46.942223', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\2.422GHz\\20200920-150152_3.4GHz~3.53GHz.png', '0', '2020-09-20 15:02:17', '0');
INSERT INTO `wlan_se` VALUES ('CAC0BF86-8737-4045-8E81-82CAEE1CB06D', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.472GHz', '5.725GHz~5.85GHz', '5781625000', '-50.607376', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\2.472GHz\\20200920-121234_5.725GHz~5.85GHz.png', '0', '2020-09-20 12:12:59', '0');
INSERT INTO `wlan_se` VALUES ('CD69FDEA-8985-45D5-A964-21EF51B7B47F', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '5.15GHz~5.35GHz', '5249200000', '-55.787', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194940_5.15GHz~5.35GHz.png', '0', '2020-09-20 19:50:02', '0');
INSERT INTO `wlan_se` VALUES ('COUNT1', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '167MHz~223MHz', '181952000', '-61.630936', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195253_167MHz~223MHz.png', '0', '2020-09-20 19:53:41', '0');
INSERT INTO `wlan_se` VALUES ('COUNT10', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '30MHz~1000MHz', '892330000', '-62.255768', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202856_30MHz~1000MHz.png', '0', '2020-09-20 20:29:56', '0');
INSERT INTO `wlan_se` VALUES ('COUNT100', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '5.15GHz~5.35GHz', '183072000', '-51.217', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202615_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:26:39', '0');
INSERT INTO `wlan_se` VALUES ('COUNT101', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '5.47GHz~5.85GHz', '217960000', '-50.707603', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200243_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:03:00', '0');
INSERT INTO `wlan_se` VALUES ('COUNT102', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '5.47GHz~5.85GHz', '207264000', '-47.277519', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201735_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:17:52', '0');
INSERT INTO `wlan_se` VALUES ('COUNT103', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '76MHz~118MHz', '83560000', '-58.707649', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201656_76MHz~118MHz.png', '0', '2020-09-20 20:17:46', '0');
INSERT INTO `wlan_se` VALUES ('COUNT104', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '5.47GHz~5.85GHz', '220928000', '-50.158287', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195914_5.47GHz~5.85GHz.png', '0', '2020-09-20 19:59:31', '0');
INSERT INTO `wlan_se` VALUES ('COUNT105', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.320GHz', '76MHz~118MHz', '116950000', '-61.582893', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194158_76MHz~118MHz.png', '0', '2020-09-20 19:43:01', '0');
INSERT INTO `wlan_se` VALUES ('COUNT106', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.180GHz', '5.47GHz~5.85GHz', '486400000', '-49.402412', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192403_5.47GHz~5.85GHz.png', '0', '2020-09-20 19:24:32', '0');
INSERT INTO `wlan_se` VALUES ('COUNT107', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '48.5MHz~72.5MHz', '59588000', '-61.477188', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195242_48.5MHz~72.5MHz.png', '0', '2020-09-20 19:53:39', '0');
INSERT INTO `wlan_se` VALUES ('COUNT108', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '5.47GHz~5.85GHz', '207096000', '-46.788872', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202101_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:21:21', '0');
INSERT INTO `wlan_se` VALUES ('COUNT109', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '1GHz~40GHz', '53300000', '-44.493', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204322_1GHz~40GHz.png', '0', '2020-09-20 20:43:31', '0');
INSERT INTO `wlan_se` VALUES ('COUNT11', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '2.4GHz~2.4835GHz', '82804000', '-45.51342', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203625_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:37:13', '0');
INSERT INTO `wlan_se` VALUES ('COUNT110', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '76MHz~118MHz', '88096000', '-57.553413', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202907_76MHz~118MHz.png', '0', '2020-09-20 20:29:58', '0');
INSERT INTO `wlan_se` VALUES ('COUNT111', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '48.5MHz~72.5MHz', '67076000', '-60.280502', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201140_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:12:37', '0');
INSERT INTO `wlan_se` VALUES ('COUNT112', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.320GHz', '76MHz~118MHz', '76210000', '-61.896584', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172753_76MHz~118MHz.png', '0', '2020-09-20 17:28:56', '0');
INSERT INTO `wlan_se` VALUES ('COUNT113', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '167MHz~223MHz', '183072000', '-58.672134', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202025_167MHz~223MHz.png', '0', '2020-09-20 20:21:17', '0');
INSERT INTO `wlan_se` VALUES ('COUNT114', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.180GHz', '470MHz~798MHz', '796032000', '-64.175049', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172408_470MHz~798MHz.png', '0', '2020-09-20 17:25:00', '0');
INSERT INTO `wlan_se` VALUES ('COUNT115', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '2.4GHz~2.4835GHz', '57380000', '-45.077637', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204253_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:43:28', '0');
INSERT INTO `wlan_se` VALUES ('COUNT116', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '30MHz~1000MHz', '52388000', '-65.869118', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195236_30MHz~1000MHz.png', '0', '2020-09-20 19:53:38', '0');
INSERT INTO `wlan_se` VALUES ('COUNT117', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '76MHz~118MHz', '87004000', '-61.717804', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200200_76MHz~118MHz.png', '0', '2020-09-20 20:02:55', '0');
INSERT INTO `wlan_se` VALUES ('COUNT118', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '48.5MHz~72.5MHz', '61676000', '-61.878616', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200155_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:02:54', '0');
INSERT INTO `wlan_se` VALUES ('COUNT119', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '5.15GHz~5.35GHz', '192984000', '-50.887', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203645_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:37:14', '0');
INSERT INTO `wlan_se` VALUES ('COUNT12', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '1GHz~40GHz', '59588000', '-42.298', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195338_1GHz~40GHz.png', '0', '2020-09-20 19:53:46', '0');
INSERT INTO `wlan_se` VALUES ('COUNT120', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '2.4GHz~2.4835GHz', '55748000', '-49.125771', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200219_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:02:58', '0');
INSERT INTO `wlan_se` VALUES ('COUNT121', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '2.4GHz~2.4835GHz', '76210000', '-46.045067', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202926_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:30:01', '0');
INSERT INTO `wlan_se` VALUES ('COUNT122', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.180GHz', '167MHz~223MHz', '186824000', '-60.899383', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192324_167MHz~223MHz.png', '0', '2020-09-20 19:24:28', '0');
INSERT INTO `wlan_se` VALUES ('COUNT123', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '167MHz~223MHz', '220928000', '-58.426209', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202547_167MHz~223MHz.png', '0', '2020-09-20 20:26:36', '0');
INSERT INTO `wlan_se` VALUES ('COUNT124', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '48.5MHz~72.5MHz', '58076000', '-58.492516', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202901_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:29:57', '0');
INSERT INTO `wlan_se` VALUES ('COUNT125', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '470MHz~798MHz', '486400000', '-61.672104', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202554_470MHz~798MHz.png', '0', '2020-09-20 20:26:37', '0');
INSERT INTO `wlan_se` VALUES ('COUNT126', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.320GHz', '48.5MHz~72.5MHz', '69548000', '-60.666649', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172747_48.5MHz~72.5MHz.png', '0', '2020-09-20 17:28:55', '0');
INSERT INTO `wlan_se` VALUES ('COUNT127', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.180GHz', '1GHz~40GHz', '736992000', '-42.456', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192424_1GHz~40GHz.png', '0', '2020-09-20 19:24:33', '0');
INSERT INTO `wlan_se` VALUES ('COUNT128', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '5.47GHz~5.85GHz', '205640000', '-46.868004', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204310_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:43:30', '0');
INSERT INTO `wlan_se` VALUES ('COUNT129', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '48.5MHz~72.5MHz', '52388000', '-57.469421', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204229_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:43:24', '0');
INSERT INTO `wlan_se` VALUES ('COUNT13', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '2.4GHz~2.4835GHz', '65660000', '-45.504875', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202037_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:21:19', '0');
INSERT INTO `wlan_se` VALUES ('COUNT130', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.320GHz', '5.15GHz~5.35GHz', '113926000', '-58.437', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172835_5.15GHz~5.35GHz.png', '0', '2020-09-20 17:29:00', '0');
INSERT INTO `wlan_se` VALUES ('COUNT131', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '48.5MHz~72.5MHz', '57380000', '-58.214622', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202013_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:21:15', '0');
INSERT INTO `wlan_se` VALUES ('COUNT132', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.320GHz', '1GHz~40GHz', '61700000', '-41.956', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194258_1GHz~40GHz.png', '0', '2020-09-20 19:43:07', '0');
INSERT INTO `wlan_se` VALUES ('COUNT133', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '30MHz~1000MHz', '752650000', '-62.498955', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202007_30MHz~1000MHz.png', '0', '2020-09-20 20:21:14', '0');
INSERT INTO `wlan_se` VALUES ('COUNT134', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '76MHz~118MHz', '86248000', '-61.872467', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194902_76MHz~118MHz.png', '0', '2020-09-20 19:49:58', '0');
INSERT INTO `wlan_se` VALUES ('COUNT135', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '30MHz~1000MHz', '49868000', '-65.859657', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195823_30MHz~1000MHz.png', '0', '2020-09-20 19:59:24', '0');
INSERT INTO `wlan_se` VALUES ('COUNT136', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '5.15GHz~5.35GHz', '179600000', '-56.671', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201729_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:17:50', '0');
INSERT INTO `wlan_se` VALUES ('COUNT137', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '5.15GHz~5.35GHz', '183072000', '-55.464', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195908_5.15GHz~5.35GHz.png', '0', '2020-09-20 19:59:30', '0');
INSERT INTO `wlan_se` VALUES ('COUNT138', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '167MHz~223MHz', '222664000', '-61.275093', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194907_167MHz~223MHz.png', '0', '2020-09-20 19:49:59', '0');
INSERT INTO `wlan_se` VALUES ('COUNT139', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '5.47GHz~5.85GHz', '700256000', '-49.547623', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200750_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:08:08', '0');
INSERT INTO `wlan_se` VALUES ('COUNT14', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '48.5MHz~72.5MHz', '49868000', '-58.57785', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203600_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:37:10', '0');
INSERT INTO `wlan_se` VALUES ('COUNT140', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.320GHz', '5.47GHz~5.85GHz', '207600000', '-49.708145', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194245_5.47GHz~5.85GHz.png', '0', '2020-09-20 19:43:06', '0');
INSERT INTO `wlan_se` VALUES ('COUNT141', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.180GHz', '48.5MHz~72.5MHz', '60380000', '-61.144623', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172349_48.5MHz~72.5MHz.png', '0', '2020-09-20 17:24:57', '0');
INSERT INTO `wlan_se` VALUES ('COUNT142', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '5.47GHz~5.85GHz', '489780000', '-50.407784', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195328_5.47GHz~5.85GHz.png', '0', '2020-09-20 19:53:45', '0');
INSERT INTO `wlan_se` VALUES ('COUNT143', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '167MHz~223MHz', '188896000', '-61.75914', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201152_167MHz~223MHz.png', '0', '2020-09-20 20:12:39', '0');
INSERT INTO `wlan_se` VALUES ('COUNT144', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '30MHz~1000MHz', '792420000', '-65.456787', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201134_30MHz~1000MHz.png', '0', '2020-09-20 20:12:36', '0');
INSERT INTO `wlan_se` VALUES ('COUNT145', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '5.15GHz~5.35GHz', '116614000', '-57.43', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195323_5.15GHz~5.35GHz.png', '0', '2020-09-20 19:53:44', '0');
INSERT INTO `wlan_se` VALUES ('COUNT146', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '2.4GHz~2.4835GHz', '78646000', '-48.678963', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195853_2.4GHz~2.4835GHz.png', '0', '2020-09-20 19:59:29', '0');
INSERT INTO `wlan_se` VALUES ('COUNT147', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.320GHz', '5.47GHz~5.85GHz', '536912000', '-50.232071', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172840_5.47GHz~5.85GHz.png', '0', '2020-09-20 17:29:01', '0');
INSERT INTO `wlan_se` VALUES ('COUNT148', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.180GHz', '1GHz~40GHz', '49868000', '-44.245', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172456_1GHz~40GHz.png', '0', '2020-09-20 17:25:04', '0');
INSERT INTO `wlan_se` VALUES ('COUNT149', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '76MHz~118MHz', '82804000', '-62.28447', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201146_76MHz~118MHz.png', '0', '2020-09-20 20:12:38', '0');
INSERT INTO `wlan_se` VALUES ('COUNT15', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '76MHz~118MHz', '81670000', '-58.541542', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202019_76MHz~118MHz.png', '0', '2020-09-20 20:21:16', '0');
INSERT INTO `wlan_se` VALUES ('COUNT150', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '5.47GHz~5.85GHz', '691540000', '-47.834831', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203650_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:37:15', '0');
INSERT INTO `wlan_se` VALUES ('COUNT151', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '470MHz~798MHz', '748144000', '-64.979668', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200213_470MHz~798MHz.png', '0', '2020-09-20 20:02:57', '0');
INSERT INTO `wlan_se` VALUES ('COUNT152', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.320GHz', '48.5MHz~72.5MHz', '65300000', '-61.435852', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194152_48.5MHz~72.5MHz.png', '0', '2020-09-20 19:43:00', '0');
INSERT INTO `wlan_se` VALUES ('COUNT153', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '30MHz~1000MHz', '691540000', '-65.528091', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200149_30MHz~1000MHz.png', '0', '2020-09-20 20:02:53', '0');
INSERT INTO `wlan_se` VALUES ('COUNT154', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '76MHz~118MHz', '90280000', '-57.17839', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204235_76MHz~118MHz.png', '0', '2020-09-20 20:43:25', '0');
INSERT INTO `wlan_se` VALUES ('COUNT155', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.320GHz', '167MHz~223MHz', '206424000', '-61.740181', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172759_167MHz~223MHz.png', '0', '2020-09-20 17:28:57', '0');
INSERT INTO `wlan_se` VALUES ('COUNT156', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '76MHz~118MHz', '116614000', '-60.865883', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195835_76MHz~118MHz.png', '0', '2020-09-20 19:59:26', '0');
INSERT INTO `wlan_se` VALUES ('COUNT157', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '1GHz~40GHz', '49868000', '-42.92', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194955_1GHz~40GHz.png', '0', '2020-09-20 19:50:04', '0');
INSERT INTO `wlan_se` VALUES ('COUNT158', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.320GHz', '5.15GHz~5.35GHz', '174616000', '-54.111', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194240_5.15GHz~5.35GHz.png', '0', '2020-09-20 19:43:05', '0');
INSERT INTO `wlan_se` VALUES ('COUNT159', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '48.5MHz~72.5MHz', '49868000', '-58.57785', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203600_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:37:10', '0');
INSERT INTO `wlan_se` VALUES ('COUNT16', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '76MHz~118MHz', '90280000', '-57.17839', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204235_76MHz~118MHz.png', '0', '2020-09-20 20:43:25', '0');
INSERT INTO `wlan_se` VALUES ('COUNT160', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.320GHz', '30MHz~1000MHz', '51068000', '-65.540337', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172741_30MHz~1000MHz.png', '0', '2020-09-20 17:28:54', '0');
INSERT INTO `wlan_se` VALUES ('COUNT161', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '1GHz~40GHz', '58076000', '-47.494', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201236_1GHz~40GHz.png', '0', '2020-09-20 20:12:44', '0');
INSERT INTO `wlan_se` VALUES ('COUNT162', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '76MHz~118MHz', '82468000', '-61.615669', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195248_76MHz~118MHz.png', '0', '2020-09-20 19:53:40', '0');
INSERT INTO `wlan_se` VALUES ('COUNT163', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '2.4GHz~2.4835GHz', '83140000', '-45.51342', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203625_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:37:13', '0');
INSERT INTO `wlan_se` VALUES ('COUNT164', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '470MHz~798MHz', '732728000', '-64.543037', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194915_470MHz~798MHz.png', '0', '2020-09-20 19:50:00', '0');
INSERT INTO `wlan_se` VALUES ('COUNT165', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '30MHz~1000MHz', '49868000', '-62.255768', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202856_30MHz~1000MHz.png', '0', '2020-09-20 20:29:56', '0');
INSERT INTO `wlan_se` VALUES ('COUNT166', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '76MHz~118MHz', '81376000', '-61.269463', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200705_76MHz~118MHz.png', '0', '2020-09-20 20:08:03', '0');
INSERT INTO `wlan_se` VALUES ('COUNT167', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '76MHz~118MHz', '113926000', '-58.749077', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203606_76MHz~118MHz.png', '0', '2020-09-20 20:37:10', '0');
INSERT INTO `wlan_se` VALUES ('COUNT168', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '5.15GHz~5.35GHz', '116950000', '-55.787', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194940_5.15GHz~5.35GHz.png', '0', '2020-09-20 19:50:02', '0');
INSERT INTO `wlan_se` VALUES ('COUNT169', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.320GHz', '1GHz~40GHz', '65300000', '-44.803', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172853_1GHz~40GHz.png', '0', '2020-09-20 17:29:02', '0');
INSERT INTO `wlan_se` VALUES ('COUNT17', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '167MHz~223MHz', '196680000', '-61.665955', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200206_167MHz~223MHz.png', '0', '2020-09-20 20:02:56', '0');
INSERT INTO `wlan_se` VALUES ('COUNT170', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '1GHz~40GHz', '51092000', '-41.482', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202632_1GHz~40GHz.png', '0', '2020-09-20 20:26:41', '0');
INSERT INTO `wlan_se` VALUES ('COUNT171', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '48.5MHz~72.5MHz', '53300000', '-61.246368', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200659_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:08:02', '0');
INSERT INTO `wlan_se` VALUES ('COUNT172', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '5.15GHz~5.35GHz', '186824000', '-33.684', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200744_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:08:07', '0');
INSERT INTO `wlan_se` VALUES ('COUNT173', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '30MHz~1000MHz', '752650000', '-62.498955', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202007_30MHz~1000MHz.png', '0', '2020-09-20 20:21:14', '0');
INSERT INTO `wlan_se` VALUES ('COUNT174', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.180GHz', '76MHz~118MHz', '83140000', '-61.180946', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172355_76MHz~118MHz.png', '0', '2020-09-20 17:24:58', '0');
INSERT INTO `wlan_se` VALUES ('COUNT175', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.320GHz', '2.4GHz~2.4835GHz', '60380000', '-49.388138', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172811_2.4GHz~2.4835GHz.png', '0', '2020-09-20 17:28:59', '0');
INSERT INTO `wlan_se` VALUES ('COUNT176', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '470MHz~798MHz', '793736000', '-64.447594', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200718_470MHz~798MHz.png', '0', '2020-09-20 20:08:05', '0');
INSERT INTO `wlan_se` VALUES ('COUNT177', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.180GHz', '5.15GHz~5.35GHz', '113926000', '-53.674', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192357_5.15GHz~5.35GHz.png', '0', '2020-09-20 19:24:31', '0');
INSERT INTO `wlan_se` VALUES ('COUNT178', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.320GHz', '2.4GHz~2.4835GHz', '81670000', '-49.179932', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194216_2.4GHz~2.4835GHz.png', '0', '2020-09-20 19:43:04', '0');
INSERT INTO `wlan_se` VALUES ('COUNT179', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '48.5MHz~72.5MHz', '58076000', '-58.492516', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202901_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:29:57', '0');
INSERT INTO `wlan_se` VALUES ('COUNT18', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '5.47GHz~5.85GHz', '536912000', '-47.834831', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203650_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:37:15', '0');
INSERT INTO `wlan_se` VALUES ('COUNT180', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.180GHz', '30MHz~1000MHz', '732280000', '-65.890465', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172344_30MHz~1000MHz.png', '0', '2020-09-20 17:24:56', '0');
INSERT INTO `wlan_se` VALUES ('COUNT181', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.320GHz', '470MHz~798MHz', '700256000', '-64.652252', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172806_470MHz~798MHz.png', '0', '2020-09-20 17:28:58', '0');
INSERT INTO `wlan_se` VALUES ('COUNT182', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '5.47GHz~5.85GHz', '196680000', '-51.153862', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194946_5.47GHz~5.85GHz.png', '0', '2020-09-20 19:50:03', '0');
INSERT INTO `wlan_se` VALUES ('COUNT183', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '30MHz~1000MHz', '51092000', '-65.436714', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200654_30MHz~1000MHz.png', '0', '2020-09-20 20:08:01', '0');
INSERT INTO `wlan_se` VALUES ('COUNT184', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '1GHz~40GHz', '55748000', '-44.493', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204322_1GHz~40GHz.png', '0', '2020-09-20 20:43:31', '0');
INSERT INTO `wlan_se` VALUES ('COUNT185', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '5.47GHz~5.85GHz', '222664000', '-47.348473', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202944_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:30:03', '0');
INSERT INTO `wlan_se` VALUES ('COUNT186', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '5.15GHz~5.35GHz', '83560000', '-41.948', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204304_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:43:29', '0');
INSERT INTO `wlan_se` VALUES ('COUNT187', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '48.5MHz~72.5MHz', '65660000', '-60.731606', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195829_48.5MHz~72.5MHz.png', '0', '2020-09-20 19:59:25', '0');
INSERT INTO `wlan_se` VALUES ('COUNT188', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '5.47GHz~5.85GHz', '217960000', '-49.893272', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201227_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:12:43', '0');
INSERT INTO `wlan_se` VALUES ('COUNT189', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.180GHz', '5.47GHz~5.85GHz', '725512000', '-51.160088', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172434_5.47GHz~5.85GHz.png', '0', '2020-09-20 17:25:03', '0');
INSERT INTO `wlan_se` VALUES ('COUNT19', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '5.15GHz~5.35GHz', '179600000', '-56.671', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201729_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:17:50', '0');
INSERT INTO `wlan_se` VALUES ('COUNT190', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '167MHz~223MHz', '207096000', '-58.872284', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202913_167MHz~223MHz.png', '0', '2020-09-20 20:29:59', '0');
INSERT INTO `wlan_se` VALUES ('COUNT191', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '5.15GHz~5.35GHz', '90280000', '-35.436', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201221_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:12:42', '0');
INSERT INTO `wlan_se` VALUES ('COUNT192', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '2.4GHz~2.4835GHz', '81376000', '-48.835945', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194920_2.4GHz~2.4835GHz.png', '0', '2020-09-20 19:50:01', '0');
INSERT INTO `wlan_se` VALUES ('COUNT193', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '167MHz~223MHz', '192984000', '-62.131302', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195840_167MHz~223MHz.png', '0', '2020-09-20 19:59:27', '0');
INSERT INTO `wlan_se` VALUES ('COUNT194', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '1GHz~40GHz', '52388000', '-42.672', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203707_1GHz~40GHz.png', '0', '2020-09-20 20:37:16', '0');
INSERT INTO `wlan_se` VALUES ('COUNT195', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '167MHz~223MHz', '179600000', '-58.698212', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203612_167MHz~223MHz.png', '0', '2020-09-20 20:37:11', '0');
INSERT INTO `wlan_se` VALUES ('COUNT196', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '2.4GHz~2.4835GHz', '81670000', '-49.351357', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200723_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:08:06', '0');
INSERT INTO `wlan_se` VALUES ('COUNT197', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '470MHz~798MHz', '725512000', '-64.592461', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195300_470MHz~798MHz.png', '0', '2020-09-20 19:53:42', '0');
INSERT INTO `wlan_se` VALUES ('COUNT198', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '30MHz~1000MHz', '489780000', '-62.320152', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202529_30MHz~1000MHz.png', '0', '2020-09-20 20:26:33', '0');
INSERT INTO `wlan_se` VALUES ('COUNT2', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '167MHz~223MHz', '207264000', '-62.110481', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200711_167MHz~223MHz.png', '0', '2020-09-20 20:08:04', '0');
INSERT INTO `wlan_se` VALUES ('COUNT20', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '54Mbps', '5.180GHz', '2.4GHz~2.4835GHz', '78646000', '-49.609764', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192337_2.4GHz~2.4835GHz.png', '0', '2020-09-20 19:24:30', '0');
INSERT INTO `wlan_se` VALUES ('COUNT21', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '470MHz~798MHz', '795704000', '-64.118019', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201159_470MHz~798MHz.png', '0', '2020-09-20 20:12:40', '0');
INSERT INTO `wlan_se` VALUES ('COUNT22', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '48.5MHz~72.5MHz', '57380000', '-58.214622', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202013_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:21:15', '0');
INSERT INTO `wlan_se` VALUES ('COUNT23', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '48.5MHz~72.5MHz', '52388000', '-57.469421', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204229_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:43:24', '0');
INSERT INTO `wlan_se` VALUES ('COUNT24', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '470MHz~798MHz', '764872000', '-64.218544', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195848_470MHz~798MHz.png', '0', '2020-09-20 19:59:28', '0');
INSERT INTO `wlan_se` VALUES ('COUNT25', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '48.5MHz~72.5MHz', '51068000', '-58.658722', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201651_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:17:45', '0');
INSERT INTO `wlan_se` VALUES ('COUNT26', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '30MHz~1000MHz', '870020000', '-62.807854', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204223_30MHz~1000MHz.png', '0', '2020-09-20 20:43:23', '0');
INSERT INTO `wlan_se` VALUES ('COUNT27', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '1GHz~40GHz', '58076000', '-44.706', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200252_1GHz~40GHz.png', '0', '2020-09-20 20:03:01', '0');
INSERT INTO `wlan_se` VALUES ('COUNT28', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '54Mbps', '5.180GHz', '76MHz~118MHz', '105232000', '-60.945648', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192318_76MHz~118MHz.png', '0', '2020-09-20 19:24:27', '0');
INSERT INTO `wlan_se` VALUES ('COUNT29', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(40MHz)', 'MCS15', '5.310GHz', '5.15GHz~5.35GHz', '88096000', '-58.94', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-200237_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:02:59', '0');
INSERT INTO `wlan_se` VALUES ('COUNT3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '54Mbps', '5.320GHz', '470MHz~798MHz', '784880000', '-63.796303', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194211_470MHz~798MHz.png', '0', '2020-09-20 19:43:03', '0');
INSERT INTO `wlan_se` VALUES ('COUNT30', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '54Mbps', '5.320GHz', '30MHz~1000MHz', '51068000', '-65.668442', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194147_30MHz~1000MHz.png', '0', '2020-09-20 19:42:59', '0');
INSERT INTO `wlan_se` VALUES ('COUNT31', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '167MHz~223MHz', '179600000', '-58.698212', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203612_167MHz~223MHz.png', '0', '2020-09-20 20:37:11', '0');
INSERT INTO `wlan_se` VALUES ('COUNT32', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '5.47GHz~5.85GHz', '205640000', '-46.868004', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204310_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:43:30', '0');
INSERT INTO `wlan_se` VALUES ('COUNT33', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '470MHz~798MHz', '486400000', '-61.672104', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202554_470MHz~798MHz.png', '0', '2020-09-20 20:26:37', '0');
INSERT INTO `wlan_se` VALUES ('COUNT34', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '167MHz~223MHz', '220928000', '-58.426209', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202547_167MHz~223MHz.png', '0', '2020-09-20 20:26:36', '0');
INSERT INTO `wlan_se` VALUES ('COUNT35', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '470MHz~798MHz', '780288000', '-61.07711', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202920_470MHz~798MHz.png', '0', '2020-09-20 20:30:00', '0');
INSERT INTO `wlan_se` VALUES ('COUNT36', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '2.4GHz~2.4835GHz', '61700000', '-45.670418', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201715_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:17:49', '0');
INSERT INTO `wlan_se` VALUES ('COUNT37', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '54Mbps', '5.180GHz', '48.5MHz~72.5MHz', '55748000', '-59.493408', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192313_48.5MHz~72.5MHz.png', '0', '2020-09-20 19:24:26', '0');
INSERT INTO `wlan_se` VALUES ('COUNT38', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '2.4GHz~2.4835GHz', '69548000', '-46.045067', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202926_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:30:01', '0');
INSERT INTO `wlan_se` VALUES ('COUNT39', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '5.15GHz~5.35GHz', '188896000', '-50.887', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203645_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:37:14', '0');
INSERT INTO `wlan_se` VALUES ('COUNT4', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '5.47GHz~5.85GHz', '486400000', '-47.492836', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202620_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:26:40', '0');
INSERT INTO `wlan_se` VALUES ('COUNT40', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '6Mbps', '5.180GHz', '2.4GHz~2.4835GHz', '58076000', '-48.215378', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172413_2.4GHz~2.4835GHz.png', '0', '2020-09-20 17:25:01', '0');
INSERT INTO `wlan_se` VALUES ('COUNT41', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '5.15GHz~5.35GHz', '88096000', '-57.05', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202056_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:21:20', '0');
INSERT INTO `wlan_se` VALUES ('COUNT42', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '2.4GHz~2.4835GHz', '82468000', '-47.980514', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201205_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:12:41', '0');
INSERT INTO `wlan_se` VALUES ('COUNT43', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11a', '54Mbps', '5.180GHz', '30MHz~1000MHz', '51092000', '-66.056259', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192307_30MHz~1000MHz.png', '0', '2020-09-20 19:24:25', '0');
INSERT INTO `wlan_se` VALUES ('COUNT44', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '1GHz~40GHz', '57380000', '-41.894', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202955_1GHz~40GHz.png', '0', '2020-09-20 20:30:04', '0');
INSERT INTO `wlan_se` VALUES ('COUNT45', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '2.4GHz~2.4835GHz', '57380000', '-45.077637', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204253_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:43:28', '0');
INSERT INTO `wlan_se` VALUES ('COUNT46', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '167MHz~223MHz', '183072000', '-58.672134', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202025_167MHz~223MHz.png', '0', '2020-09-20 20:21:17', '0');
INSERT INTO `wlan_se` VALUES ('COUNT47', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '76MHz~118MHz', '78646000', '-58.998497', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202541_76MHz~118MHz.png', '0', '2020-09-20 20:26:35', '0');
INSERT INTO `wlan_se` VALUES ('COUNT48', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '76MHz~118MHz', '88096000', '-57.553413', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202907_76MHz~118MHz.png', '0', '2020-09-20 20:29:58', '0');
INSERT INTO `wlan_se` VALUES ('COUNT49', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '5.47GHz~5.85GHz', '206424000', '-46.788872', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202101_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:21:21', '0');
INSERT INTO `wlan_se` VALUES ('COUNT5', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '30MHz~1000MHz', '755560000', '-65.913109', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194850_30MHz~1000MHz.png', '0', '2020-09-20 19:49:56', '0');
INSERT INTO `wlan_se` VALUES ('COUNT50', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.180GHz', '167MHz~223MHz', '207600000', '-61.401749', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172401_167MHz~223MHz.png', '0', '2020-09-20 17:24:59', '0');
INSERT INTO `wlan_se` VALUES ('COUNT51', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '76MHz~118MHz', '83560000', '-58.707649', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201656_76MHz~118MHz.png', '0', '2020-09-20 20:17:46', '0');
INSERT INTO `wlan_se` VALUES ('COUNT52', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '48.5MHz~72.5MHz', '61700000', '-61.790665', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194856_48.5MHz~72.5MHz.png', '0', '2020-09-20 19:49:57', '0');
INSERT INTO `wlan_se` VALUES ('COUNT53', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '5.15GHz~5.35GHz', '86248000', '-56', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202939_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:30:02', '0');
INSERT INTO `wlan_se` VALUES ('COUNT54', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '2.4GHz~2.4835GHz', '58076000', '-46.590683', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202559_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:26:38', '0');
INSERT INTO `wlan_se` VALUES ('COUNT55', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '1GHz~40GHz', '51092000', '-42.672', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203707_1GHz~40GHz.png', '0', '2020-09-20 20:37:16', '0');
INSERT INTO `wlan_se` VALUES ('COUNT56', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '5.47GHz~5.85GHz', '207096000', '-47.277519', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201735_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:17:52', '0');
INSERT INTO `wlan_se` VALUES ('COUNT57', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '5.15GHz~5.35GHz', '181952000', '-51.217', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202615_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:26:39', '0');
INSERT INTO `wlan_se` VALUES ('COUNT58', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '1GHz~40GHz', '60380000', '-39.642', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202113_1GHz~40GHz.png', '0', '2020-09-20 20:21:22', '0');
INSERT INTO `wlan_se` VALUES ('COUNT59', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '167MHz~223MHz', '205640000', '-59.011711', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201702_167MHz~223MHz.png', '0', '2020-09-20 20:17:47', '0');
INSERT INTO `wlan_se` VALUES ('COUNT6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '30MHz~1000MHz', '489780000', '-62.320152', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202529_30MHz~1000MHz.png', '0', '2020-09-20 20:26:33', '0');
INSERT INTO `wlan_se` VALUES ('COUNT60', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '470MHz~798MHz', '737976000', '-61.883553', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201709_470MHz~798MHz.png', '0', '2020-09-20 20:17:48', '0');
INSERT INTO `wlan_se` VALUES ('COUNT61', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '470MHz~798MHz', '783896000', '-61.024406', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204248_470MHz~798MHz.png', '0', '2020-09-20 20:43:27', '0');
INSERT INTO `wlan_se` VALUES ('COUNT62', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '30MHz~1000MHz', '856440000', '-62.981163', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203555_30MHz~1000MHz.png', '0', '2020-09-20 20:37:08', '0');
INSERT INTO `wlan_se` VALUES ('COUNT63', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '470MHz~798MHz', '766840000', '-61.799057', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203619_470MHz~798MHz.png', '0', '2020-09-20 20:37:12', '0');
INSERT INTO `wlan_se` VALUES ('COUNT64', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '48.5MHz~72.5MHz', '51092000', '-57.741234', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202535_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:26:34', '0');
INSERT INTO `wlan_se` VALUES ('COUNT65', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '470MHz~798MHz', '536912000', '-61.472694', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202032_470MHz~798MHz.png', '0', '2020-09-20 20:21:18', '0');
INSERT INTO `wlan_se` VALUES ('COUNT66', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '30MHz~1000MHz', '52388000', '-62.926285', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201645_30MHz~1000MHz.png', '0', '2020-09-20 20:17:44', '0');
INSERT INTO `wlan_se` VALUES ('COUNT67', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.180GHz', '470MHz~798MHz', '736992000', '-64.886253', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192331_470MHz~798MHz.png', '0', '2020-09-20 19:24:29', '0');
INSERT INTO `wlan_se` VALUES ('COUNT68', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '167MHz~223MHz', '217960000', '-57.507172', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204240_167MHz~223MHz.png', '0', '2020-09-20 20:43:26', '0');
INSERT INTO `wlan_se` VALUES ('COUNT69', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '1GHz~40GHz', '51068000', '-44.438', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195923_1GHz~40GHz.png', '0', '2020-09-20 19:59:32', '0');
INSERT INTO `wlan_se` VALUES ('COUNT7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '1GHz~40GHz', '51068000', '-41.482', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202632_1GHz~40GHz.png', '0', '2020-09-20 20:26:41', '0');
INSERT INTO `wlan_se` VALUES ('COUNT70', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '167MHz~223MHz', '207096000', '-58.872284', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202913_167MHz~223MHz.png', '0', '2020-09-20 20:29:59', '0');
INSERT INTO `wlan_se` VALUES ('COUNT71', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '167MHz~223MHz', '217960000', '-57.507172', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204240_167MHz~223MHz.png', '0', '2020-09-20 20:43:26', '0');
INSERT INTO `wlan_se` VALUES ('COUNT72', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '1GHz~40GHz', '61676000', '-39.642', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202113_1GHz~40GHz.png', '0', '2020-09-20 20:21:22', '0');
INSERT INTO `wlan_se` VALUES ('COUNT73', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '30MHz~1000MHz', '53300000', '-62.926285', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201645_30MHz~1000MHz.png', '0', '2020-09-20 20:17:44', '0');
INSERT INTO `wlan_se` VALUES ('COUNT74', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '2.4GHz~2.4835GHz', '59588000', '-46.590683', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202559_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:26:38', '0');
INSERT INTO `wlan_se` VALUES ('COUNT75', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '5.15GHz~5.35GHz', '87004000', '-56', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202939_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:30:02', '0');
INSERT INTO `wlan_se` VALUES ('COUNT76', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '54Mbps', '5.320GHz', '167MHz~223MHz', '174616000', '-61.381264', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194204_167MHz~223MHz.png', '0', '2020-09-20 19:43:02', '0');
INSERT INTO `wlan_se` VALUES ('COUNT77', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '76MHz~118MHz', '78646000', '-58.998497', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202541_76MHz~118MHz.png', '0', '2020-09-20 20:26:35', '0');
INSERT INTO `wlan_se` VALUES ('COUNT78', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '1GHz~40GHz', '57380000', '-41.894', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202955_1GHz~40GHz.png', '0', '2020-09-20 20:30:04', '0');
INSERT INTO `wlan_se` VALUES ('COUNT79', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '5.15GHz~5.35GHz', '90280000', '-57.05', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202056_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:21:20', '0');
INSERT INTO `wlan_se` VALUES ('COUNT8', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '1GHz~40GHz', '732280000', '-39.611', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201744_1GHz~40GHz.png', '0', '2020-09-20 20:17:52', '0');
INSERT INTO `wlan_se` VALUES ('COUNT80', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '2.4GHz~2.4835GHz', '65300000', '-45.670418', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201715_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:17:49', '0');
INSERT INTO `wlan_se` VALUES ('COUNT81', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '470MHz~798MHz', '780288000', '-61.07711', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202920_470MHz~798MHz.png', '0', '2020-09-20 20:30:00', '0');
INSERT INTO `wlan_se` VALUES ('COUNT82', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '30MHz~1000MHz', '870020000', '-62.807854', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204223_30MHz~1000MHz.png', '0', '2020-09-20 20:43:23', '0');
INSERT INTO `wlan_se` VALUES ('COUNT83', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '2.4GHz~2.4835GHz', '61676000', '-48.689858', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195306_2.4GHz~2.4835GHz.png', '0', '2020-09-20 19:53:43', '0');
INSERT INTO `wlan_se` VALUES ('COUNT84', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '470MHz~798MHz', '536912000', '-61.472694', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202032_470MHz~798MHz.png', '0', '2020-09-20 20:21:18', '0');
INSERT INTO `wlan_se` VALUES ('COUNT85', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '48.5MHz~72.5MHz', '51092000', '-57.741234', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202535_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:26:34', '0');
INSERT INTO `wlan_se` VALUES ('COUNT86', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '5.15GHz~5.35GHz', '83560000', '-41.948', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204304_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:43:29', '0');
INSERT INTO `wlan_se` VALUES ('COUNT87', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '48.5MHz~72.5MHz', '51068000', '-58.658722', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201651_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:17:45', '0');
INSERT INTO `wlan_se` VALUES ('COUNT88', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '1GHz~40GHz', '52388000', '-46.269', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200801_1GHz~40GHz.png', '0', '2020-09-20 20:08:09', '0');
INSERT INTO `wlan_se` VALUES ('COUNT89', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '76MHz~118MHz', '81670000', '-58.541542', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202019_76MHz~118MHz.png', '0', '2020-09-20 20:21:16', '0');
INSERT INTO `wlan_se` VALUES ('COUNT9', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '2', 'Z', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '76MHz~118MHz', '113926000', '-58.749077', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203606_76MHz~118MHz.png', '0', '2020-09-20 20:37:10', '0');
INSERT INTO `wlan_se` VALUES ('COUNT90', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.320GHz', '2.4GHz~2.4835GHz', '67076000', '-45.504875', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202037_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:21:19', '0');
INSERT INTO `wlan_se` VALUES ('COUNT91', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(20MHz)', 'MCS15', '5.180GHz', '1GHz~40GHz', '732728000', '-39.611', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201744_1GHz~40GHz.png', '0', '2020-09-20 20:17:52', '0');
INSERT INTO `wlan_se` VALUES ('COUNT92', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(40MHz)', 'MCS15', '5.190GHz', '5.47GHz~5.85GHz', '489780000', '-47.492836', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202620_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:26:40', '0');
INSERT INTO `wlan_se` VALUES ('COUNT93', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '470MHz~798MHz', '766840000', '-61.799057', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203619_470MHz~798MHz.png', '0', '2020-09-20 20:37:12', '0');
INSERT INTO `wlan_se` VALUES ('COUNT94', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '30MHz~1000MHz', '856440000', '-62.981163', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203555_30MHz~1000MHz.png', '0', '2020-09-20 20:37:08', '0');
INSERT INTO `wlan_se` VALUES ('COUNT95', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '470MHz~798MHz', '783896000', '-61.024406', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204248_470MHz~798MHz.png', '0', '2020-09-20 20:43:27', '0');
INSERT INTO `wlan_se` VALUES ('COUNT96', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '470MHz~798MHz', '737976000', '-61.883553', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201709_470MHz~798MHz.png', '0', '2020-09-20 20:17:48', '0');
INSERT INTO `wlan_se` VALUES ('COUNT97', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', 'Z', '802.11n(40MHz)', 'MCS15', '5.310GHz', '5.47GHz~5.85GHz', '220928000', '-47.348473', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202944_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:30:03', '0');
INSERT INTO `wlan_se` VALUES ('COUNT98', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '1', '802.11a', '6Mbps', '5.180GHz', '5.15GHz~5.35GHz', '105232000', '-55.81', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172429_5.15GHz~5.35GHz.png', '0', '2020-09-20 17:25:02', '0');
INSERT INTO `wlan_se` VALUES ('COUNT99', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '3', '2', '802.11n(20MHz)', 'MCS15', '5.180GHz', '167MHz~223MHz', '205640000', '-59.011711', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-201702_167MHz~223MHz.png', '0', '2020-09-20 20:17:47', '0');
INSERT INTO `wlan_se` VALUES ('D02F2266-5B99-49B2-911F-65F8DF1BE9D7', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz', '1GHz~40GHz', '10638400000', '-44.803', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172853_1GHz~40GHz.png', '0', '2020-09-20 17:29:02', '0');
INSERT INTO `wlan_se` VALUES ('D2C46C3C-9522-4478-9FCE-BEF849783EBC', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '1GHz~40GHz', '10382400000', '-41.482', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202632_1GHz~40GHz.png', '0', '2020-09-20 20:26:41', '0');
INSERT INTO `wlan_se` VALUES ('D2D1CF1E-01C3-474A-9055-C9DFD14C8926', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.745GHz', '30MHz~1000MHz', '890390000', '-65.553505', 'Task\\E201\\5.8GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.745GHz\\20200920-210044_30MHz~1000MHz.png', '0', '2020-09-20 21:01:19', '0');
INSERT INTO `wlan_se` VALUES ('D37D50BD-592E-45A0-9308-0BA4B1F89983', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '48.5MHz~72.5MHz', '53300000', '-61.246368', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200659_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:08:02', '0');
INSERT INTO `wlan_se` VALUES ('D4BE2F94-C164-48FB-9BB7-FFA713F44073', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '5.15GHz~5.35GHz', '5296800000', '-33.684', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200744_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:08:07', '0');
INSERT INTO `wlan_se` VALUES ('D50EA649-1CE0-4BB0-AD03-22FF8188A093', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.422GHz', '2.4GHz~2.4835GHz', '2453857500', '-54.086', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\2.422GHz\\20200920-150146_2.4GHz~2.4835GHz.png', '0', '2020-09-20 15:02:16', '0');
INSERT INTO `wlan_se` VALUES ('D526A493-2F2F-4668-8F58-58CBD594DA9C', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.472GHz', '30MHz~1000MHz', '789510000', '-65.379616', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\2.472GHz\\20200920-121149_30MHz~1000MHz.png', '0', '2020-09-20 12:12:56', '0');
INSERT INTO `wlan_se` VALUES ('D5A231A1-ED33-4449-A357-E48E7A3A6020', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.422GHz', '30MHz~1000MHz', '757500000', '-63.038444', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\2.422GHz\\20200920-150133_30MHz~1000MHz.png', '0', '2020-09-20 15:02:15', '0');
INSERT INTO `wlan_se` VALUES ('D63AF63C-48CC-4881-898F-AC7FE5A970BD', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(20MHz)', 'MCS15', '5.320GHz', '30MHz~1000MHz', '752650000', '-62.498955', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-202007_30MHz~1000MHz.png', '0', '2020-09-20 20:21:14', '0');
INSERT INTO `wlan_se` VALUES ('D749BB99-EF06-4938-A2A9-AE2FBFF40515', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.180GHz', '76MHz~118MHz', '83140000', '-61.180946', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172355_76MHz~118MHz.png', '0', '2020-09-20 17:24:58', '0');
INSERT INTO `wlan_se` VALUES ('D8669D70-8CAD-42F4-8971-B7E8EE20066E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz', '2.4GHz~2.4835GHz', '2433400000', '-49.388138', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172811_2.4GHz~2.4835GHz.png', '0', '2020-09-20 17:28:59', '0');
INSERT INTO `wlan_se` VALUES ('D99D2BDB-3315-4D3F-9A24-8C4EDD8AA66A', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.422GHz', '30MHz~1000MHz', '852560000', '-65.832962', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\2.422GHz\\20200920-121853_30MHz~1000MHz.png', '0', '2020-09-20 12:19:35', '0');
INSERT INTO `wlan_se` VALUES ('DB9897B4-1CCF-496A-8721-85C3167F326C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '470MHz~798MHz', '793736000', '-64.447594', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200718_470MHz~798MHz.png', '0', '2020-09-20 20:08:05', '0');
INSERT INTO `wlan_se` VALUES ('DBA44C54-D2A2-45D3-ABFB-7F1F8CF5206C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.180GHz', '5.15GHz~5.35GHz', '5235800000', '-53.674', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.180GHz\\20200920-192357_5.15GHz~5.35GHz.png', '0', '2020-09-20 19:24:31', '0');
INSERT INTO `wlan_se` VALUES ('DD314DFF-3B1A-401B-B54A-27286507E756', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '54Mbps', '5.320GHz', '2.4GHz~2.4835GHz', '2464712500', '-49.179932', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\54Mbps\\5.320GHz\\20200920-194216_2.4GHz~2.4835GHz.png', '0', '2020-09-20 19:43:04', '0');
INSERT INTO `wlan_se` VALUES ('DE824034-DB7E-424A-9699-DCB73844F693', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '48.5MHz~72.5MHz', '58076000', '-58.492516', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202901_48.5MHz~72.5MHz.png', '0', '2020-09-20 20:29:57', '0');
INSERT INTO `wlan_se` VALUES ('DEDFA366-F0EE-44DD-845A-C63EE186630C', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(40MHz)', 'MCS15', '2.462GHz', '2.4GHz~2.4835GHz', '2413443500', '-54.753', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\2.462GHz\\20200920-150625_2.4GHz~2.4835GHz.png', '0', '2020-09-20 15:06:48', '0');
INSERT INTO `wlan_se` VALUES ('DF6EBABD-1BB8-4363-9C15-350BAC74CCD2', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11a', '6Mbps', '5.745GHz', '2.4GHz~2.4835GHz', '2433984500', '-49.244515', 'Task\\E201\\5.8GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.745GHz\\20200920-210050_2.4GHz~2.4835GHz.png', '0', '2020-09-20 21:01:20', '0');
INSERT INTO `wlan_se` VALUES ('E1B20C2F-0D8F-497C-829D-7C63C2F7FB3E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.180GHz', '30MHz~1000MHz', '732280000', '-65.890465', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172344_30MHz~1000MHz.png', '0', '2020-09-20 17:24:56', '0');
INSERT INTO `wlan_se` VALUES ('E212D962-029E-44F4-A911-735A030299C7', '2E104E97-319B-4BF0-9975-277256CEF003', '1', '1', '802.11ax(80MHz)', 'MCS11', '5.775GHz', '1GHz~40GHz', '3854400000', '-53.087', 'Task\\E201\\5.8GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ax(80MHz)\\MCS11\\5.775GHz\\20200920-210923_1GHz~40GHz.png', '0', '2020-09-20 21:09:28', '0');
INSERT INTO `wlan_se` VALUES ('E2D05B8A-D9B6-4028-B900-7600C14E60E3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.320GHz', '470MHz~798MHz', '700256000', '-64.652252', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.320GHz\\20200920-172806_470MHz~798MHz.png', '0', '2020-09-20 17:28:58', '0');
INSERT INTO `wlan_se` VALUES ('E37F84D0-DC9D-4B09-A422-A2A36461882B', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '5.47GHz~5.85GHz', '5471140000', '-51.153862', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194946_5.47GHz~5.85GHz.png', '0', '2020-09-20 19:50:03', '0');
INSERT INTO `wlan_se` VALUES ('E61E2C66-6475-4447-9C24-54A11BEF50D6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '30MHz~1000MHz', '923370000', '-65.436714', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200654_30MHz~1000MHz.png', '0', '2020-09-20 20:08:01', '0');
INSERT INTO `wlan_se` VALUES ('E8418153-304F-4C80-8FD8-576EBAACB93A', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '1GHz~40GHz', '10600000000', '-44.493', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204322_1GHz~40GHz.png', '0', '2020-09-20 20:43:31', '0');
INSERT INTO `wlan_se` VALUES ('EAA2ABC2-50B7-4178-97B9-D1E4ABE63749', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '5.47GHz~5.85GHz', '5620480000', '-47.348473', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202944_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:30:03', '0');
INSERT INTO `wlan_se` VALUES ('EC16E908-7B0D-42D6-8773-E5681E6BEB5B', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '5.15GHz~5.35GHz', '5182400000', '-41.948', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-204304_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:43:29', '0');
INSERT INTO `wlan_se` VALUES ('EC4DCDEF-665F-4427-B686-3FE070F26814', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.412GHz', '5.725GHz~5.85GHz', '5744500000', '-50.812164', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\11Mbps\\2.412GHz\\20200920-101220_5.725GHz~5.85GHz.png', '0', '2020-09-20 10:13:16', '0');
INSERT INTO `wlan_se` VALUES ('EEFD17E9-105C-4AF3-A536-7C84F242A975', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '48.5MHz~72.5MHz', '65660000', '-60.731606', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195829_48.5MHz~72.5MHz.png', '0', '2020-09-20 19:59:25', '0');
INSERT INTO `wlan_se` VALUES ('EF7A0373-4EB8-4B30-A9D0-095617319847', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '5.47GHz~5.85GHz', '5591980000', '-49.893272', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201227_5.47GHz~5.85GHz.png', '0', '2020-09-20 20:12:43', '0');
INSERT INTO `wlan_se` VALUES ('F1B4975E-230E-48B6-A689-43D5B59C53D3', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11a', '6Mbps', '5.180GHz', '5.47GHz~5.85GHz', '5784260000', '-51.160088', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11a\\6Mbps\\5.180GHz\\20200920-172434_5.47GHz~5.85GHz.png', '0', '2020-09-20 17:25:03', '0');
INSERT INTO `wlan_se` VALUES ('F2DE9AD1-831F-4BF4-8510-E8B86A9B8A8C', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '2', '802.11n(20MHz)', 'MCS15', '2.472GHz', '3.4GHz~3.53GHz', '3416120000', '-46.591736', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(20MHz)\\MCS15\\2.472GHz\\20200920-141504_3.4GHz~3.53GHz.png', '0', '2020-09-20 14:15:29', '0');
INSERT INTO `wlan_se` VALUES ('F512FE75-B0FA-4D9D-866D-11C6F5E04549', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.310GHz', '167MHz~223MHz', '207096000', '-58.872284', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.310GHz\\20200920-202913_167MHz~223MHz.png', '0', '2020-09-20 20:29:59', '0');
INSERT INTO `wlan_se` VALUES ('F547C3AC-24A2-4D0B-83DF-AB4A321B20F1', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(40MHz)', 'MCS15', '2.462GHz', '3.4GHz~3.53GHz', '3418460000', '-49.198128', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\2.462GHz\\20200920-122309_3.4GHz~3.53GHz.png', '0', '2020-09-20 12:23:28', '0');
INSERT INTO `wlan_se` VALUES ('F582DB9C-09C9-4A28-876F-A75942C0472D', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11b', '11Mbps', '2.472GHz', '3.4GHz~3.53GHz', '3493210000', '-49.795883', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11b\\11Mbps\\2.472GHz\\20200920-101658_3.4GHz~3.53GHz.png', '0', '2020-09-20 10:17:24', '0');
INSERT INTO `wlan_se` VALUES ('F6BABD8A-0511-4071-8247-001A93B5CCD6', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.290GHz', '5.15GHz~5.35GHz', '5225200000', '-35.436', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.290GHz\\20200920-201221_5.15GHz~5.35GHz.png', '0', '2020-09-20 20:12:42', '0');
INSERT INTO `wlan_se` VALUES ('F6ECF091-5A36-4AF6-B57F-BAAE5767A3FE', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.180GHz', '2.4GHz~2.4835GHz', '2461539500', '-48.835945', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.180GHz\\20200920-194920_2.4GHz~2.4835GHz.png', '0', '2020-09-20 19:50:01', '0');
INSERT INTO `wlan_se` VALUES ('F7B49EB6-C85C-438F-9FEA-DF92B1C424C9', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.412GHz', '1GHz~12.75GHz', '7885500000', '-57.209', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\6Mbps\\2.412GHz\\20200920-102337_1GHz~12.75GHz.png', '0', '2020-09-20 10:23:41', '0');
INSERT INTO `wlan_se` VALUES ('F869147A-8FA1-4792-A373-549F771A1F99', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(40MHz)', 'MCS15', '5.190GHz', '167MHz~223MHz', '192984000', '-62.131302', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-195840_167MHz~223MHz.png', '0', '2020-09-20 19:59:27', '0');
INSERT INTO `wlan_se` VALUES ('FB41E0FE-D7F2-41C2-8EEA-66F34FE4827C', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '1GHz~40GHz', '10433600000', '-42.672', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203707_1GHz~40GHz.png', '0', '2020-09-20 20:37:16', '0');
INSERT INTO `wlan_se` VALUES ('FD35C942-9DA2-4797-9FA0-8BE8E358D34E', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '167MHz~223MHz', '179600000', '-58.698212', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-203612_167MHz~223MHz.png', '0', '2020-09-20 20:37:11', '0');
INSERT INTO `wlan_se` VALUES ('FD6B1B3C-E676-424A-8ED0-8CF414698443', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11ac(80MHz)', 'MCS9', '5.210GHz', '2.4GHz~2.4835GHz', '2464462000', '-49.351357', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11ac(80MHz)\\MCS9\\5.210GHz\\20200920-200723_2.4GHz~2.4835GHz.png', '0', '2020-09-20 20:08:06', '0');
INSERT INTO `wlan_se` VALUES ('FDF61F67-6D48-46F7-8D72-9A079FFB0C3B', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '1', '802.11n(20MHz)', 'MCS15', '5.320GHz', '470MHz~798MHz', '725512000', '-64.592461', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\5.320GHz\\20200920-195300_470MHz~798MHz.png', '0', '2020-09-20 19:53:42', '0');
INSERT INTO `wlan_se` VALUES ('FE2C1D88-20A6-445D-87CE-04AC1B6C52DA', 'DCF445B9-9413-41E3-B714-62385A9A51BC', '1', '2', '802.11n(40MHz)', 'MCS15', '5.190GHz', '30MHz~1000MHz', '489780000', '-62.320152', 'Task\\E201\\5.1GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线2\\802.11n(40MHz)\\MCS15\\5.190GHz\\20200920-202529_30MHz~1000MHz.png', '0', '2020-09-20 20:26:33', '0');
INSERT INTO `wlan_se` VALUES ('FECBB3F2-5621-407D-976B-17BBC4276CE5', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11g', '6Mbps', '2.472GHz', '2.4GHz~2.4835GHz', '2424632500', '-55.93', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11g\\6Mbps\\2.472GHz\\20200920-102719_2.4GHz~2.4835GHz.png', '0', '2020-09-20 10:27:44', '0');
INSERT INTO `wlan_se` VALUES ('FFBE6C53-D9BD-40B5-923E-F019399E4211', 'D9BF1116-93A4-4A96-B0B0-8790B1F965D9', '1', '1', '802.11n(20MHz)', 'MCS15', '2.472GHz', '2.4GHz~2.4835GHz', '2424048000', '-57.184', 'Task\\E201\\2.4GHz无线局域网设备\\CaptureScreen\\被测设备1\\天线1\\802.11n(20MHz)\\MCS15\\2.472GHz\\20200920-121223_2.4GHz~2.4835GHz.png', '0', '2020-09-20 12:12:57', '0');
