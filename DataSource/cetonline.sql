/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : cetonline

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2016-04-24 12:20:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `administor`
-- ----------------------------
DROP TABLE IF EXISTS `administor`;
CREATE TABLE `administor` (
  `id` int(20) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administor
-- ----------------------------
INSERT INTO `administor` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for `composition`
-- ----------------------------
DROP TABLE IF EXISTS `composition`;
CREATE TABLE `composition` (
  `id` int(20) NOT NULL auto_increment,
  `title` text,
  `testid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `composition_id` (`testid`),
  CONSTRAINT `composition_id` FOREIGN KEY (`testid`) REFERENCES `testname` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of composition
-- ----------------------------
INSERT INTO `composition` VALUES ('1', '  1. 目前许多商品存在过度包装的现象\r\n   2. 出现这一现象的原因\r\n   3. 我对这一现象的看法和建议\r\n                                   On Excessive Packaging\r\n                                                                                         ', '1');
INSERT INTO `composition` VALUES ('2', '', '2');
INSERT INTO `composition` VALUES ('3', '', '3');
INSERT INTO `composition` VALUES ('4', '', '4');
INSERT INTO `composition` VALUES ('5', '', '5');
INSERT INTO `composition` VALUES ('6', '', '6');

-- ----------------------------
-- Table structure for `compoundchoosewords`
-- ----------------------------
DROP TABLE IF EXISTS `compoundchoosewords`;
CREATE TABLE `compoundchoosewords` (
  `id` int(20) NOT NULL auto_increment,
  `answer` varchar(300) default NULL,
  `testid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `compoundchoosewords_id` (`testid`),
  CONSTRAINT `compoundchoosewords_id` FOREIGN KEY (`testid`) REFERENCES `testname` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of compoundchoosewords
-- ----------------------------
INSERT INTO `compoundchoosewords` VALUES ('1', 'calculators', '1');
INSERT INTO `compoundchoosewords` VALUES ('2', 'handle', '1');
INSERT INTO `compoundchoosewords` VALUES ('3', 'items', '1');
INSERT INTO `compoundchoosewords` VALUES ('4', 'Responding', '1');
INSERT INTO `compoundchoosewords` VALUES ('5', 'emergencies', '1');
INSERT INTO `compoundchoosewords` VALUES ('6', 'rarely', '1');
INSERT INTO `compoundchoosewords` VALUES ('7', 'occur', '1');
INSERT INTO `compoundchoosewords` VALUES ('8', 'murders', '1');
INSERT INTO `compoundchoosewords` VALUES ('9', 'there have been hundreds of thefts and cases of deliberate damaging of public property', '1');
INSERT INTO `compoundchoosewords` VALUES ('10', 'Things get stolen when it is easy to steal them because they are left lying around unwatched', '1');
INSERT INTO `compoundchoosewords` VALUES ('11', 'A better way to solve this problem might be for all of us to be more careful with our things', '1');
INSERT INTO `compoundchoosewords` VALUES ('12', 'K', '1');
INSERT INTO `compoundchoosewords` VALUES ('13', 'M', '1');
INSERT INTO `compoundchoosewords` VALUES ('14', 'A', '1');
INSERT INTO `compoundchoosewords` VALUES ('15', 'H', '1');
INSERT INTO `compoundchoosewords` VALUES ('16', 'C', '1');
INSERT INTO `compoundchoosewords` VALUES ('17', 'B', '1');
INSERT INTO `compoundchoosewords` VALUES ('18', 'F', '1');
INSERT INTO `compoundchoosewords` VALUES ('19', 'E', '1');
INSERT INTO `compoundchoosewords` VALUES ('20', 'G', '1');
INSERT INTO `compoundchoosewords` VALUES ('21', 'J', '1');
INSERT INTO `compoundchoosewords` VALUES ('22', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('23', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('24', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('25', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('26', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('27', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('28', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('29', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('30', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('31', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('32', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('33', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('34', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('35', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('36', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('37', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('38', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('39', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('40', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('41', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('42', '', '2');
INSERT INTO `compoundchoosewords` VALUES ('43', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('44', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('45', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('46', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('47', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('48', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('49', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('50', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('51', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('52', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('53', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('54', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('55', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('56', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('57', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('58', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('59', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('60', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('61', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('62', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('63', '', '3');
INSERT INTO `compoundchoosewords` VALUES ('64', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('65', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('66', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('67', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('68', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('69', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('70', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('71', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('72', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('73', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('74', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('75', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('76', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('77', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('78', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('79', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('80', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('81', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('82', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('83', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('84', '', '4');
INSERT INTO `compoundchoosewords` VALUES ('85', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('86', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('87', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('88', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('89', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('90', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('91', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('92', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('93', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('94', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('95', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('96', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('97', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('98', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('99', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('100', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('101', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('102', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('103', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('104', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('105', '', '5');
INSERT INTO `compoundchoosewords` VALUES ('106', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('107', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('108', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('109', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('110', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('111', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('112', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('113', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('114', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('115', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('116', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('117', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('118', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('119', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('120', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('121', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('122', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('123', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('124', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('125', '', '6');
INSERT INTO `compoundchoosewords` VALUES ('126', '', '6');

-- ----------------------------
-- Table structure for `examinee`
-- ----------------------------
DROP TABLE IF EXISTS `examinee`;
CREATE TABLE `examinee` (
  `candidateNo` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` varchar(10) default NULL,
  `examineeOfSchool` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `writingGrade` double(20,0) default '511130131101003',
  `listeningGrade` double(20,0) default '0',
  `readingGrade` double(20,0) default '0',
  `comprehensivingGrade` double(20,0) default '0',
  `total` double(20,0) default '0',
  PRIMARY KEY  (`candidateNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of examinee
-- ----------------------------
INSERT INTO `examinee` VALUES ('511130131101001', '杜友', '男', '四川文理学院', 'images/examinee/duyou.jpg', '100', '50', '206', '55', '411');
INSERT INTO `examinee` VALUES ('5111301311010010', '韩雪', '女', '四川文理学院', 'images/examinee/hanxue.jpg', '0', '0', '0', '0', '0');
INSERT INTO `examinee` VALUES ('5111301311010011', '吴美丽', '女', '四川文理学院', 'images/examinee/wumeili.jpg', '0', '0', '0', '0', '0');
INSERT INTO `examinee` VALUES ('5111301311010012', '李楠', '女', '四川文理学院', 'images/examinee/linan.jpg', '0', '0', '0', '0', '0');
INSERT INTO `examinee` VALUES ('511130131101002', '吴光锴', '男', '重庆邮电大学', 'images/examinee/wuguangkai.jpg', '0', '64', '234', '53', '0');
INSERT INTO `examinee` VALUES ('511130131101003', '熊明鳞', '男', '重庆邮电大学', 'images/examinee/xiongminglin.jpg', '0', '53', '106', '18', '0');
INSERT INTO `examinee` VALUES ('511130131101004', '王东', '男', '四川文理学院', 'images/examinee/wangdong.jpg', '0', '85', '134', '11', '0');
INSERT INTO `examinee` VALUES ('511130131101005', '林梅', '女', '四川文理学院', 'images/examinee/linmei.jpg', '0', '78', '263', '60', '0');
INSERT INTO `examinee` VALUES ('511130131101006', '周一阳', '女', '四川文理学院', 'images/examinee/zhouyiyang.jpg', '0', '35', '142', '4', '0');
INSERT INTO `examinee` VALUES ('511130131101007', '何平', '男', '四川文理学院', 'images/examinee/heping.jpg', '0', '35', '42', '0', '0');
INSERT INTO `examinee` VALUES ('511130131101008', '黄英', '女', '四川文理学院', 'images/examinee/huangying.jpg', '0', '0', '0', '0', '0');
INSERT INTO `examinee` VALUES ('511130131101009', '谢依琳', '女', '四川文理学院', 'images/examinee/xieyilin.jpg', '0', '0', '0', '0', '0');
INSERT INTO `examinee` VALUES ('511130131101014', '李红', '女', '四川文理学院', 'images/examinee/399de46d9178c7f3a34afa324724cc31.jpg', '0', '0', '0', '0', '0');
INSERT INTO `examinee` VALUES ('511130131101015', '张三', '男', '文理学院', 'images/examinee/399de46d9178c7f3a34afa324724cc31.jpg', '0', '0', '0', '0', '0');
INSERT INTO `examinee` VALUES ('511130131101016', '李四', '男', '四川文理', 's', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `listeningmaterial`
-- ----------------------------
DROP TABLE IF EXISTS `listeningmaterial`;
CREATE TABLE `listeningmaterial` (
  `id` int(10) NOT NULL auto_increment,
  `material` varchar(100) default NULL,
  `testid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `listeningmaterial_id` (`testid`),
  CONSTRAINT `listeningmaterial_id` FOREIGN KEY (`testid`) REFERENCES `testname` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of listeningmaterial
-- ----------------------------
INSERT INTO `listeningmaterial` VALUES ('1', 'listening/201206cet4.mp3', '1');
INSERT INTO `listeningmaterial` VALUES ('2', '', '2');
INSERT INTO `listeningmaterial` VALUES ('3', '', '3');
INSERT INTO `listeningmaterial` VALUES ('4', '', '4');
INSERT INTO `listeningmaterial` VALUES ('5', '', '5');
INSERT INTO `listeningmaterial` VALUES ('6', '', '6');

-- ----------------------------
-- Table structure for `needmarking`
-- ----------------------------
DROP TABLE IF EXISTS `needmarking`;
CREATE TABLE `needmarking` (
  `candidateNo` varchar(20) NOT NULL,
  `answerOfcomprehensive` text,
  `answerOftranslate` text,
  `status` varchar(10) default '未改',
  `time` varchar(30) default NULL,
  `testid` int(11) default NULL,
  PRIMARY KEY  (`candidateNo`),
  KEY `needmarking_id` (`testid`),
  CONSTRAINT `needmarking_id` FOREIGN KEY (`testid`) REFERENCES `testname` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of needmarking
-- ----------------------------
INSERT INTO `needmarking` VALUES ('511130131101001', '    In recent years we can see quite a lot of products are excessively packaged. My newly bought shirt come swathed in tissue paper, placed in a cardboard box and then finished off in wrapping paper. Why do people have a liking for excessive packaging?\r\n    There are many reasons that contribute to this phenomenon. Firstly, producers are profit-driven and they can raise the prices of their products by delicate packaging so as to make much more profit. Secondly, consumers tend to think it more decent to purchase well-packaged products, especially when they want to buy gifts for their friends. The last but not the least, imperfect taws and regulations make it not possible to completely ban excessive packaging.', '1.hadn\'t been watered for a long time<br>2.one thousand pound cheaper than mine<br>3.as well listen to the music<br>4.lights on and doors open<br>5.have been translated into multiple languages', '已改', '2013-12-25 12:28:49', '1');
INSERT INTO `needmarking` VALUES ('511130131101002', '      In recent years we can see quite a lot of products are excessively packaged. My newly bought shirt come swathed in tissue paper, placed in a cardboard box and then finished off in wrapping paper. Why do people have a liking for excessive packaging?\r\n      There are many reasons that contribute to this phenomenon. Firstly, producers are profit-driven and they can raise the prices of their products by delicate packaging so as to make much more profit. Secondly, consumers tend to think it more decent to purchase well-packaged products, especially when they want to buy gifts for their friends. The last but not the least, imperfect taws and regulations make it not possible to completely ban excessive packaging.', '1.hadn\'t been watered for a long time<br>2.one thousand pound cheaper than mine<br>3.as well listen to the music<br>4.lights on and doors open<br>5.have been translated into multiple languages', '未改', null, '1');
INSERT INTO `needmarking` VALUES ('511130131101003', '    In recent years we can see quite a lot of products are excessively packaged. My newly bought shirt come swathed in tissue paper, placed in a cardboard box and then finished off in wrapping paper. Why do people have a liking for excessive packaging?\r\n    There are many reasons that contribute to this phenomenon. Firstly, producers are profit-driven and they can raise the prices of their products by delicate packaging so as to make much more profit. Secondly, consumers tend to think it more decent to purchase well-packaged products, especially when they want to buy gifts for their friends. The last but not the least, imperfect taws and regulations make it not possible to completely ban excessive packaging.', '1.hadn\'t been watered for a long time<br>2.one thousand pound cheaper than mine<br>3.as well listen to the music<br>4.lights on and doors open<br>5.have been translated into multiple languages', '未改', null, '1');
INSERT INTO `needmarking` VALUES ('511130131101004', '    In recent years we can see quite a lot of products are excessively packaged. My newly bought shirt come swathed in tissue paper, placed in a cardboard box and then finished off in wrapping paper. Why do people have a liking for excessive packaging?\r\n      There are many reasons that contribute to this phenomenon. Firstly, producers are profit-driven and they can raise the prices of their products by delicate packaging so as to make much more profit. Secondly, consumers tend to think it more decent to purchase well-packaged products, especially when they want to buy gifts for their friends. The last but not the least, imperfect taws and regulations make it not possible to completely ban excessive packaging.', '1.hadn\'t been watered for a long time<br>2.one thousand pound cheaper than mine<br>3.as well listen to the music<br>4.lights on and doors open<br>5.have been translated into multiple languages', '未改', null, '1');
INSERT INTO `needmarking` VALUES ('511130131101005', '    In recent years we can see quite a lot of products are excessively packaged. My newly bought shirt come swathed in tissue paper, placed in a cardboard box and then finished off in wrapping paper. Why do people have a liking for excessive packaging?\r\n      There are many reasons that contribute to this phenomenon. Firstly, producers are profit-driven and they can raise the prices of their products by delicate packaging so as to make much more profit. Secondly, consumers tend to think it more decent to purchase well-packaged products, especially when they want to buy gifts for their friends. The last but not the least, imperfect taws and regulations make it not possible to completely ban excessive packaging.', '1.hadn\'t been watered for a long time<br>2.one thousand pound cheaper than mine<br>3.as well listen to the music<br>4.lights on and doors open<br>5.have been translated into multiple languages', '未改', null, '1');
INSERT INTO `needmarking` VALUES ('511130131101006', 'In recent years we can see quite a lot of products are excessively packaged. My newly bought shirt come swathed in tissue paper, placed in a cardboard box and then finished off in wrapping paper. Why do people have a liking for excessive packaging?      There are many reasons that contribute to this phenomenon. Firstly, producers are profit-driven and they can raise the prices of their products by delicate packaging so as to make much more profit. Secondly, consumers tend to think it more decent to purchase well-packaged products, especially when they want to buy gifts for their friends. The last but not the least, imperfect taws and regulations make it not possible to completely ban excessive packaging.', '1.hadn\'t been watered for a long time<br>2.one thousand pound cheaper than mine<br>3.as well listen to the music<br>4.lights on and doors open<br>5.have been translated into multiple languages', '未改', null, '1');
INSERT INTO `needmarking` VALUES ('511130131101007', '    In recent years we can see quite a lot of products are excessively packaged. My newly bought shirt come swathed in tissue paper, placed in a cardboard box and then finished off in wrapping paper. Why do people have a liking for excessive packaging?      There are many reasons that contribute to this phenomenon. Firstly, producers are profit-driven and they can raise the prices of their products by delicate packaging so as to make much more profit. Secondly, consumers tend to think it more decent to purchase well-packaged products, especially when they want to buy gifts for their friends. The last but not the least, imperfect taws and regulations make it not possible to completely ban excessive packaging.', '1.hadn\'t been watered for a long time<br>2.one thousand pound cheaper than mine<br>3.as well listen to the music<br>4.lights on and doors open<br>5.have been translated into multiple languages', '未改', null, '1');

-- ----------------------------
-- Table structure for `optionoflistening`
-- ----------------------------
DROP TABLE IF EXISTS `optionoflistening`;
CREATE TABLE `optionoflistening` (
  `id` int(11) NOT NULL auto_increment,
  `optionA` varchar(255) default NULL,
  `optionB` varchar(255) default NULL,
  `optionC` varchar(255) default NULL,
  `optionD` varchar(255) default NULL,
  `answer` varchar(255) default NULL,
  `testid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `optionoflistening_id` (`testid`),
  CONSTRAINT `optionoflistening_id` FOREIGN KEY (`testid`) REFERENCES `testname` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of optionoflistening
-- ----------------------------
INSERT INTO `optionoflistening` VALUES ('1', 'Trying to sketch a map.', 'Painting the dining room.', 'Discussing a house plan.', 'Cleaning the kitchen.', 'C', '1');
INSERT INTO `optionoflistening` VALUES ('2', 'She is tired of the food in the canteen.  ', ' She often eats in a French restaurant.', 'She usually takes a snack in the KFC.  ', ' She is very fussy about what she eats.', 'A', '1');
INSERT INTO `optionoflistening` VALUES ('3', 'Listening to some loud music.    ', 'Talking loudly on the telephone.', 'Preparing for an oral examination.  ', 'Practicing for a speech contest.', 'A', '1');
INSERT INTO `optionoflistening` VALUES ('4', 'The man has left a good impression on her family. ', 'The man can dress casually for the occasion.', 'The man should buy himself a new suit.   ', ' The man\'s jeans and T-shirts are stylish.', 'B', '1');
INSERT INTO `optionoflistening` VALUES ('5', 'Grey pants made from pure cotton.   ', 'Fashionable pants in bright colors.', '100% cotton pants in dark blue.   ', 'Something to match her brown pants.', 'A', '1');
INSERT INTO `optionoflistening` VALUES ('6', 'Its price. ', 'Its location.  ', 'Its comfort.          ', ' Its facilities.', 'B', '1');
INSERT INTO `optionoflistening` VALUES ('7', 'Travel overseas. ', 'Look for a new job. ', 'Take a photo.        ', 'Adopt a child.', 'A', '1');
INSERT INTO `optionoflistening` VALUES ('8', 'It is a routine offer.           ', 'It is new on the menu.', 'It is quite healthy.              ', ' It is a good bargain.', 'D', '1');
INSERT INTO `optionoflistening` VALUES ('9', 'Hosting an evening TV program.  ', ' Having her bicycle repaired.', 'Lecturing on business management.     ', ' Conducting a market survey.', 'A', '1');
INSERT INTO `optionoflistening` VALUES ('10', 'He repaired bicycles.            ', ' He served as a consultant.', 'He worked as a salesman.    ', 'He coached in a racing club.', 'C', '1');
INSERT INTO `optionoflistening` VALUES ('11', 'He wanted to be his own boss.  ', ' He found it more profitable.', 'He didn\'t want to start from scratch.   ', 'He didn\'t want to be in too much debt.', 'A', '1');
INSERT INTO `optionoflistening` VALUES ('12', 'They work five days a week. ', 'They are all the man\'s friends.', 'They are paid by the hour.    ', 'They all enjoy gambling.', 'B', '1');
INSERT INTO `optionoflistening` VALUES ('13', 'It has gradually given way to service industry.   ', 'It remains a major part of industrial activity.', 'It has a history as long as paper processing.  ', 'It accounts for 80 percent of the region\'s GDR', 'B', '1');
INSERT INTO `optionoflistening` VALUES ('14', ' Transport problems.            ', 'Shortage of funding. ', 'Lack of resources.    ', 'Poor management.', 'A', '1');
INSERT INTO `optionoflistening` VALUES ('15', 'Competition from rival companies.         ', ' Product promotion campaigns.', ' Possible locations for a new factory.   ', 'Measures to create job opportunities.', 'D', '1');
INSERT INTO `optionoflistening` VALUES ('16', 'A. They shared mutual friends in school.   ', 'They had known each other since childhood.  ', 'They shared many extracurricular activities.', 'They had many interests in common.', 'B', '1');
INSERT INTO `optionoflistening` VALUES ('17', 'At a local club.      ', 'At Joe\'s house. ', 'At the sports centre.   ', ' At the boarding school.', 'B', '1');
INSERT INTO `optionoflistening` VALUES ('18', ' Durable friendships can be very difficult to maintain. ', ' One has to be respectful of other people in order to win respect.   ', ' It is hard for people from different backgrounds to become friends.   ', 'Social divisions will break down if people get to know each other.', 'D', '1');
INSERT INTO `optionoflistening` VALUES ('19', 'Near the entrance of a park.                                 ', 'In his building\'s parking lot.   ', 'At a parking meter. ', 'At a street comer.', 'B', '1');
INSERT INTO `optionoflistening` VALUES ('20', 'It had been taken by the police.            ', 'It had been moved to the next block.', 'It had been stolen by someone.              ', 'It had been parked at a wrong place.', 'C', '1');
INSERT INTO `optionoflistening` VALUES ('21', 'At the Greenville center.                                       ', ' At a public parking lot.', 'In a neighboring town.', 'In the city garage.', 'D', '1');
INSERT INTO `optionoflistening` VALUES ('22', 'Famous creative individuals.   ', 'The mysteriousness of creativity.', ' A major scientific discovery.             ', 'Creativity as shown in arts.', 'B', '1');
INSERT INTO `optionoflistening` VALUES ('23', 'It is something people all engage in.      ', 'It helps people acquire knowledge.  ', 'It starts soon after we are born.           ', ' It is the source of all artistic work.', 'D', '1');
INSERT INTO `optionoflistening` VALUES ('24', ' Creative imagination.                  ', ' Logical reasoning.', 'Natural curiosity.                     ', ' Critical thinking.', 'A', '1');
INSERT INTO `optionoflistening` VALUES ('25', 'It is beyond ordinary people.                               ', 'It is yet to be fully understood.', 'It is part of everyday life.   ', 'It is unique human trait.', 'C', '1');
INSERT INTO `optionoflistening` VALUES ('26', 'resolve', 'regret', 'abandon', 'avoid', 'D', '1');
INSERT INTO `optionoflistening` VALUES ('27', 'Besides', 'Therefore', 'Moreover', 'However', 'D', '1');
INSERT INTO `optionoflistening` VALUES ('28', 'trying', 'declining', 'failing', 'striving', 'C', '1');
INSERT INTO `optionoflistening` VALUES ('29', 'ages', 'years', 'stages', 'intervals', 'C', '1');
INSERT INTO `optionoflistening` VALUES ('30', 'on', 'by', 'off', 'away', 'A', '1');
INSERT INTO `optionoflistening` VALUES ('31', 'prescribes', 'protests', 'proves', 'predicts', 'D', '1');
INSERT INTO `optionoflistening` VALUES ('32', 'round', 'amid', 'among', 'through', 'D', '1');
INSERT INTO `optionoflistening` VALUES ('33', 'so', 'while', 'but', 'and', 'D', '1');
INSERT INTO `optionoflistening` VALUES ('34', 'sensitive', 'superior', 'exclusive', 'efficident', 'A', '1');
INSERT INTO `optionoflistening` VALUES ('35', 'expose', 'experience', 'explore', 'exploit', 'B', '1');
INSERT INTO `optionoflistening` VALUES ('36', 'as long as', 'as far as', 'as well as', 'as soon as', 'C', '1');
INSERT INTO `optionoflistening` VALUES ('37', 'minds', 'emotions', 'psychology', 'affection', 'B', '1');
INSERT INTO `optionoflistening` VALUES ('38', 'to', 'against', 'at', 'toward', 'A', '1');
INSERT INTO `optionoflistening` VALUES ('39', 'absolute', 'inevitable', 'essential', 'obvious', 'B', '1');
INSERT INTO `optionoflistening` VALUES ('40', 'require', 'inquire', 'receive', 'achieve', 'C', '1');
INSERT INTO `optionoflistening` VALUES ('41', 'over', 'with', 'up', 'of', 'B', '1');
INSERT INTO `optionoflistening` VALUES ('42', 'quality', 'identity', 'charity', 'capability', 'A', '1');
INSERT INTO `optionoflistening` VALUES ('43', 'creative', 'positive', 'objective', 'competitive', 'B', '1');
INSERT INTO `optionoflistening` VALUES ('44', 'prospects', 'concepts', 'memories', 'outlooks', 'C', '1');
INSERT INTO `optionoflistening` VALUES ('45', 'added', 'toughened', 'strengthened', 'increased', 'D', '1');
INSERT INTO `optionoflistening` VALUES ('46', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('47', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('48', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('49', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('50', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('51', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('52', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('53', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('54', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('55', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('56', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('57', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('58', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('59', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('60', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('61', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('62', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('63', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('64', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('65', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('66', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('67', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('68', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('69', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('70', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('71', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('72', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('73', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('74', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('75', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('76', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('77', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('78', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('79', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('80', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('81', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('82', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('83', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('84', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('85', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('86', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('87', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('88', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('89', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('90', '', '', '', '', '', '2');
INSERT INTO `optionoflistening` VALUES ('91', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('92', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('93', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('94', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('95', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('96', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('97', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('98', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('99', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('100', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('101', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('102', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('103', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('104', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('105', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('106', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('107', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('108', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('109', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('110', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('111', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('112', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('113', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('114', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('115', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('116', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('117', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('118', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('119', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('120', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('121', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('122', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('123', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('124', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('125', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('126', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('127', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('128', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('129', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('130', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('131', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('132', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('133', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('134', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('135', '', '', '', '', '', '3');
INSERT INTO `optionoflistening` VALUES ('136', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('137', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('138', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('139', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('140', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('141', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('142', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('143', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('144', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('145', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('146', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('147', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('148', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('149', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('150', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('151', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('152', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('153', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('154', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('155', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('156', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('157', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('158', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('159', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('160', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('161', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('162', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('163', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('164', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('165', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('166', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('167', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('168', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('169', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('170', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('171', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('172', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('173', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('174', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('175', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('176', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('177', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('178', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('179', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('180', '', '', '', '', '', '4');
INSERT INTO `optionoflistening` VALUES ('181', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('182', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('183', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('184', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('185', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('186', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('187', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('188', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('189', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('190', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('191', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('192', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('193', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('194', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('195', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('196', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('197', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('198', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('199', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('200', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('201', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('202', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('203', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('204', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('205', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('206', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('207', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('208', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('209', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('210', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('211', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('212', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('213', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('214', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('215', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('216', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('217', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('218', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('219', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('220', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('221', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('222', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('223', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('224', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('225', '', '', '', '', '', '5');
INSERT INTO `optionoflistening` VALUES ('226', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('227', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('228', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('229', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('230', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('231', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('232', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('233', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('234', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('235', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('236', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('237', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('238', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('239', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('240', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('241', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('242', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('243', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('244', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('245', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('246', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('247', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('248', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('249', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('250', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('251', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('252', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('253', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('254', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('255', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('256', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('257', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('258', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('259', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('260', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('261', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('262', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('263', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('264', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('265', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('266', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('267', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('268', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('269', '', '', '', '', '', '6');
INSERT INTO `optionoflistening` VALUES ('270', '', '', '', '', '', '6');

-- ----------------------------
-- Table structure for `optionsofreading`
-- ----------------------------
DROP TABLE IF EXISTS `optionsofreading`;
CREATE TABLE `optionsofreading` (
  `id` int(20) NOT NULL auto_increment,
  `title` varchar(300) default NULL,
  `optionA` varchar(300) default NULL,
  `optionB` varchar(300) default NULL,
  `optionC` varchar(300) default NULL,
  `optionD` varchar(300) default NULL,
  `answer` varchar(100) default NULL,
  `testid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `optionsofreading_id` (`testid`),
  CONSTRAINT `optionsofreading_id` FOREIGN KEY (`testid`) REFERENCES `testname` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of optionsofreading
-- ----------------------------
INSERT INTO `optionsofreading` VALUES ('1', ' Fifty years ago, big, modem, suburban high schools were established in the hope of ______.', 'ensuring no child is left behind', 'increasing economic efficiency', 'improving students\' performance on SAT', 'providing good education for baby boomers', 'A', '1');
INSERT INTO `optionsofreading` VALUES ('2', 'What happened as a result of setting up big schools?', 'Teachers\' workload increased.', 'Students\' performance declined.', 'Administration became centralized.  ', 'Students focused more on test scores.', 'B', '1');
INSERT INTO `optionsofreading` VALUES ('3', 'What is said about the schools funded by the Bill and Melinda Gates Foundation?', 'They are usually magnet schools.', 'They are often located in poor neighborhoods.', 'They are popular with high-achieving students.', 'They are mostly small in size.', 'D', '1');
INSERT INTO `optionsofreading` VALUES ('4', 'What is most noticeable about the current trend in high school education?', 'Some large schools have split up into smaller ones.', 'A great variety of schools have sprung up in urban and suburban areas.', 'Many schools compete for the Bill and Melinda Gates Foundation funds.', 'Students have to meet higher academic standards.', 'A', '1');
INSERT INTO `optionsofreading` VALUES ('5', 'Newsweek ranked high schools according to ______.', 'their students\' academic achievement', 'the number of their students admitted to college', 'the size and number of their graduating classes', 'their college-level test participation', 'D', '1');
INSERT INTO `optionsofreading` VALUES ('6', 'What can we learn about Hillsdale\'s students in the late 1990s?', 'They were made to study hard like prisoners.', 'They called each other by unaffectionate nicknames.', 'Most of them did not have any sense of discipline.', 'Their school performance was getting worse.', 'D', '1');
INSERT INTO `optionsofreading` VALUES ('7', 'According to Jeff Gilbert, the \"advisory\" classes at Hillsdale were set up so that students could______.', 'tell their teachers what they did on weekends', 'experience a great deal of pleasure in learning', 'maintain closer relationship with their teachers', 'tackle the demanding biology and physics courses', 'C', '1');
INSERT INTO `optionsofreading` VALUES ('8', '______is still considered a strength of Newsweek\'s school ranking system in spite of the criticism it receives.', null, null, null, null, 'Simplicity', '1');
INSERT INTO `optionsofreading` VALUES ('9', 'According to the 38 superintendents, to rank schools scientifically, it is necessary to use______.', null, null, null, null, 'a look at many different measures', '1');
INSERT INTO `optionsofreading` VALUES ('10', 'To better serve the children and our nation, schools should hire gifted teachers and encourage students to take______.\r\n\r\n', null, null, null, null, 'tough subjects', '1');
INSERT INTO `optionsofreading` VALUES ('11', ' In the initial stage, the current economic crisis is likely to______.', 'tear many troubled families apart         ', 'contribute to enduring family ties', 'they wanted to better protect their kids      ', 'living separately would be too costly', 'C', '1');
INSERT INTO `optionsofreading` VALUES ('12', 'In the Great Depression many unhappy couples chose to stick together because______.', 'starting a new family would be hard        ', 'they expected things would turn better', 'they wanted to better protect their kids     \r\n\r\n', 'living separately would be too costly', 'D', '1');
INSERT INTO `optionsofreading` VALUES ('13', 'In addition to job losses, what stands in the way of unhappy couples getting a divorce?', 'Mounting family debts.                    ', 'A Sense of insecurity.', ' Difficulty in getting a loan.               ', 'Falling housing prices.', 'D', '1');
INSERT INTO `optionsofreading` VALUES ('14', 'What will the current economic crisis eventually do to some married couples?', 'It will force them to pull their efforts together.', 'It will undermine their mutual understanding.', 'It will help strengthen their emotional bonds.', 'It will irreparably damage their relationship.', 'D', '1');
INSERT INTO `optionsofreading` VALUES ('15', 'What can be inferred from the last paragraph?', 'The economic recovery will see a higher divorce rate.\r\n', 'Few couples can stand the test of economic hardships.', 'A stable family is the best protection against poverty.\r\n', 'Money is the foundation of many a happy marriage.', 'A', '1');
INSERT INTO `optionsofreading` VALUES ('16', 'What do we learn about Facebook from the first paragraph?', 'It is a website that sends messages to targeted users.\r\n', 'It makes money by putting on advertisements.', ' It profits by selling its users\' personal data.\r\n', 'It provides loads of information to its users.', 'C', '1');
INSERT INTO `optionsofreading` VALUES ('17', 'What does the author say about most Facebook users?', 'They are reluctant to give up personal information.', 'They don\'t know their personal data enriches Facebook.\r\n', 'They don\'t identify themselves when using the website.\r\n', 'They care very little about their personal information.', 'B', '1');
INSERT INTO `optionsofreading` VALUES ('18', ' Why does Facebook make changes to its rules according to Elliot Schrage?', 'To render better service to its users.', 'To conform to the Federal guidelines.\r\n', 'To improve its users\' connectivity.\r\n', 'To expand its scope of business.', 'A', '1');
INSERT INTO `optionsofreading` VALUES ('19', 'What does Senator Charles Schumer advocate?', 'Setting guidelines for advertising on websites.\r\n', 'Banning the sharing of users\' personal information.', 'Formulating regulations for social-networking sites.', 'Removing ads from all social-networking sites.', 'C', '1');
INSERT INTO `optionsofreading` VALUES ('20', 'Why does the author plan to cancel his Facebook account?', 'He is dissatisfied with its current service.', 'He finds many of its users untrustworthy.', 'He doesn’t want his personal data abused. ', 'He is upset by its frequent rule changes. ', 'C', '1');
INSERT INTO `optionsofreading` VALUES ('21', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('22', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('23', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('24', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('25', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('26', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('27', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('28', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('29', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('30', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('31', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('32', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('33', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('34', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('35', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('36', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('37', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('38', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('39', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('40', '', '', '', '', '', '', '2');
INSERT INTO `optionsofreading` VALUES ('41', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('42', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('43', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('44', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('45', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('46', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('47', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('48', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('49', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('50', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('51', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('52', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('53', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('54', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('55', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('56', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('57', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('58', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('59', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('60', '', '', '', '', '', '', '3');
INSERT INTO `optionsofreading` VALUES ('61', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('62', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('63', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('64', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('65', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('66', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('67', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('68', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('69', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('70', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('71', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('72', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('73', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('74', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('75', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('76', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('77', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('78', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('79', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('80', '', '', '', '', '', '', '4');
INSERT INTO `optionsofreading` VALUES ('81', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('82', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('83', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('84', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('85', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('86', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('87', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('88', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('89', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('90', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('91', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('92', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('93', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('94', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('95', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('96', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('97', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('98', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('99', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('100', '', '', '', '', '', '', '5');
INSERT INTO `optionsofreading` VALUES ('101', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('102', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('103', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('104', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('105', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('106', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('107', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('108', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('109', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('110', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('111', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('112', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('113', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('114', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('115', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('116', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('117', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('118', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('119', '', '', '', '', '', '', '6');
INSERT INTO `optionsofreading` VALUES ('120', '', '', '', '', '', '', '6');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(20) NOT NULL auto_increment,
  `teacherName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `teacherOfSchool` varchar(20) NOT NULL,
  `teacherImage` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '韦庆杰', '123456', '重庆邮电大学', 'images/teachers/weiqingjie.jpg');
INSERT INTO `teacher` VALUES ('2', '将溢', '123456', '电子科技大学', 'images/teachers/jiangyi.jpg');
INSERT INTO `teacher` VALUES ('3', '刘群', '111111', '四川大学', 'images/teachers/liuqun.jpg');
INSERT INTO `teacher` VALUES ('4', '侯林', '123456', '四川文理学院', 'images/teachers/2fc9019b2638a4aeff225e9753586a4b.jpg');
INSERT INTO `teacher` VALUES ('5', '王宏', '1234567', '四川文理学院', 'images/teachers/f956a7e0fa9f2f1449d9112cb2edb7d5.jpg');

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(10) NOT NULL auto_increment,
  `testname` varchar(255) NOT NULL,
  `time` text,
  `numarea` text,
  `testteachers` text,
  `position` text,
  `testid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `test_id` (`testid`),
  CONSTRAINT `test_id` FOREIGN KEY (`testid`) REFERENCES `testname` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for `testname`
-- ----------------------------
DROP TABLE IF EXISTS `testname`;
CREATE TABLE `testname` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testname
-- ----------------------------
INSERT INTO `testname` VALUES ('1', ' 大学英语四级真题2012年06月');
INSERT INTO `testname` VALUES ('2', 'null');
INSERT INTO `testname` VALUES ('3', 'null');
INSERT INTO `testname` VALUES ('4', 'null');
INSERT INTO `testname` VALUES ('5', 's');
INSERT INTO `testname` VALUES ('6', 'dsf');

-- ----------------------------
-- Table structure for `titlesofreading`
-- ----------------------------
DROP TABLE IF EXISTS `titlesofreading`;
CREATE TABLE `titlesofreading` (
  `id` int(11) NOT NULL auto_increment,
  `title` text,
  `testid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `titlesofreading_id` (`testid`),
  CONSTRAINT `titlesofreading_id` FOREIGN KEY (`testid`) REFERENCES `testname` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of titlesofreading
-- ----------------------------
INSERT INTO `titlesofreading` VALUES ('1', '                                 Small Schools Rising\r\n\r\n   This year\'s list of the top 100 high schools shows that today, those with fewer students are flourishing.\r\n   Fifty years ago, they were the latest thing in educational reform: big, modem, suburban high schools with students counted in the thousands. As baby boomers (二战后婴儿潮时期出生的人) came of high-school age, big schools promised economic efficiency, a greater choice of courses, and, of course, better football teams. Only years later did we understand the trade-offs this involved: the creation of excessive bureaucracies (官僚机构), the difficulty of forging personal connections between teachers and students. SAT scores began dropping in 1963; today, on average, 30% of students do not complete high school in four years, a figure that rises to 50% in poor urban neighborhoods. While the emphasis on teaching to higher, test-driven standards as set in No Child Left Behind resulted in significantly better performance in elementary (and some middle) schools, high schools for a variety of reasons seemed to have made little progress.\r\n   Size isn\'t everything, but it does matter, and the past decade has seen a noticeable countertrend toward smaller schools. This has been due, in part, to the Bill and Melinda Gates Foundation, which has invested $1.8 billion in American high schools, helping to open about 1,000 small schools—most of them with about 400 kids each, with an average enrollment of only 150 per grade. About 500 more are on the drawing board. Districts all over the country are taking notice, along with mayors in cities like New York, Chicago and San Diego. The movement includes independent public charter schools, such as No.1 BASIS in Tucson, with only 120 high-schoolers and 18 graduates this year. It embraces district- sanctioned magnet schools, such as the Talented and Gifted School, with 198 students, and the Science and Engineering Magnet, with 383, which share a building in Dallas, as well as the City Honors School in Buffalo, N.Y., which grew out of volunteer evening seminars for students. And it includes alternative schools with students selected by lottery (抽签), such as H-B Woodlawn in Arlington, Va.And most noticeable of all, there is the phenomenon of large urban and suburban high schools that have split up into smaller units of a few hundred, generally housed in the same grounds that once boasted thousands of students all marching to the same band.\r\n   Hillsdale High School in San Mateo, Calif., is one of those, ranking No.423—among the top 2% in the country—on Newsweek\'s annual ranking of America\'s top high schools. The success of small schools is apparent in the listings. Ten years ago, when the first Newsweek list based on college-level test participation was published, only three of the top 100 schools had graduating classes smaller than 100 students. This year there are 22. Nearly 250 schools on the full Newsweek list of the top 5% of schools nationally had fewer than 200 graduates in 2007.\r\n   Although many of Hillsdale\'s students came from wealthy households, by the late 1990s average  test scores were sliding and it had earned the unaffectionate nickname (绰号) \"Hillsjail\". Jeff Gilbert, a Hillsdale teacher who became principal last year, remembers sitting with other teachers watching students file out a graduation ceremony and asking one another in astonishment, \"How did that student graduate?\"\r\n   So in 2003 Hillsdale remade itself into three \"houses\", romantically named Florence, Marrakech and Kyoto. Each of the 300 arriving ninth grades are randomly (随机地) assigned to one of the houses, where they will keep the same four core subject teachers for two years, before moving on to another for 11th and 12th grades. The closeness this system cultivates is reinforced by the institution of \"advisory\" classes. Teachers meet with students in groups of 25, five mornings a week, for open-ended discussions of everything from homework problems to bad Saturday-night dates. The advisers also meet with students privately and stay in touch with parents, so they are deeply invested in the students\' success. \"We\'re constantly talking about one another\'s advisees,\" says English Teacher Chris Crockett. \"If you hear that yours isn\'t doing well in math, or see them sitting outside the dean\'s office, it\'s like a personal failure.\" Along with the new structure came a more demanding academic program; the percentage of freshmen taking biology jumped from 17 to 95. \"It was rough for some, but by senior year, two-thirds have moved up to physics,\" says Gilbert. \"Our kids are coming to school in part because they know there are adults here who know them and care for them.\" But not all schools show advances after downsizing, and it remains to be seen whether smaller schools will be a cure-all solution.\r\n   The Newsweek list of top U.S. high schools was made this year, as in years past, according to a  single metric, the proportion of students taking college-level exams. Over the years this system has come in for its share of criticism for its simplicity. But that is also its strength: it\'s easy for readers to understand, and to do the arithmetic for their own schools if they\'d like.\r\n   Ranking schools is always controversial, and this year a group of 38 superintendents (地区教育主管) from five states wrote to ask that their schools be excluded from the calculation. \"It is impossible to know which high schools are \'the best \'in the nation,\" their letter read, in part. \"Determining whether different schools do or don\'t offer a high quality of education requires a look at many different measures, including students\' overall academic accomplishments and their subsequent performance in college, and taking into consideration the unique needs of their communities.\"\r\n   In the end, the superintendents agreed to provide the data we sought, which is, after all, public information. There is, in our view, no real dispute here; we are all seeking the same thing, which is schools that better serve our children and our nation by encouraging students to tackle tough subjects under the guidance of gifted teachers. And if we keep working toward that goal, someday, perhaps, a list won\'t be necessary.\r\n\r\n\r\n', '1');
INSERT INTO `titlesofreading` VALUES ('2', '    Directions:In this section, there is a passage with ten blanks. You are required to select one word for each blank from a list of choices given in a word bank following the passage. Read the passage through carefully before making your choices. Each choice in the bank is identified by a letter. Please mark the corresponding letter for each item on Answer Sheet 2 with a single line through the centre. You may not use any of the words in the bank more than once.    One in six. Believe it or not, that\'s the number of Americans who struggle with hunger. To make tomorrow a little better, Feeding America, the nation\'s largest  (47)  hunger-relief organization, has chosen September as Hunger Action Month. As part of its 30 Ways in 30 Days program, it\'s asking  (48)  across the country to help the more than 200 food banks and 61,000 agencies in its network provide low-income individuals and families with the fuel they need to  (49)  .    It\'s the kind of work that\'s done every day at St. Andrew\'s Episcopal Church in San Antonio. People who  (50)  at its front door on the first and third Thursdays of each month aren\'t looking for God— they\'re there for something to eat. St. Andrew\'s runs a food pantry (食品室) that  (51)  the city and several of the  (52)  towns. Janet Drane is its manager.    In the wake of the  (53)  , the number of families in need of food assistance began to grow. It is  (54)  that  49 million Americans are unsure of where they will find their next meal. What\'s most surprising is that 36% of them live in  (55)  where at least one adult is working. \"It used to be that one job was all you needed,\" says St. Andrew\'s Drane. \"The people we see now have three or four part-time jobs and they\'re still fight on the edge  (56)  .\"  \r\n  A. survive  B. surrounding  C. serves  D. reviewed  E. reported   \r\n  F. recession  G. households  H. gather  I.formally  J.financially  \r\n  K. domestic  L.competition  M.communities  N.circling  O.accumulate', '1');
INSERT INTO `titlesofreading` VALUES ('3', '   In times of economic crisis, Americans turn to their families for support. If the Great Depression is any guide, we may see a drop in our skyhigh divorce rate. But this won\'t necessarily represent an increase in happy marriages. In the long run, the Depression weakened American families, and the current crisis will probably do the same.\r\n   We tend to think of the Depression as a time when families pulled together to survive huge job losses. By 1932, when nearly one-quarter of the workforce was unemployed, the divorce rate had declined by around 25% from 1929. But this doesn\'t mean people were suddenly happier with their marriages. Rather, with incomes decreasing and insecure jobs, unhappy couples often couldn\'t afford to divorce. They feared neither spouse could manage alone.\r\n   Today, given the job losses of the past year, fewer unhappy couples will risk starting separate households. Furthermore, the housing market meltdown will make it more difficult for them to finance their separations by selling their homes.\r\n   After financial disasters family members also tend to do whatever they can to help each other and their communities. A 1940 book, The Unemployed Man and His Family, described a family in which the husband initially reacted to losing his job \"with tireless search for work.\" He was always active, looking for odd jobs to do.\r\n   The problem is that such an impulse is hard to sustain. Across the country, many similar families  were unable to maintain the initial boost in morale (士气) . For some, the hardships of life without steady work eventually overwhelmed their attempts to keep their families together. The divorce rate rose again during the rest of the decade as the recovery took hold.\r\n   Millions of American families may now be in the initial stage of their responses to the current crisis, working together and supporting one another through the early months of unemployment.\r\n   Today\'s economic crisis could well generate a similar number of couples whose relationships have  been irreparably (无法弥补地) ruined. So it\'s only when the economy is healthy again that we\'ll begin to see just how many broken families have been created.\r\n', '1');
INSERT INTO `titlesofreading` VALUES ('4', '   People are being lured (引诱) onto Facebook with the promise of a fun, free service, without  realizing that they\'re paying for it by giving up loads of personal information. Facebook then attempts to make money by selling their data to advertisers that want to send targeted messages.\r\n   Most Facebook users don\'t realize this is happening. Even if they know what the company is up to, they still have no idea what they\'re paying for Facebook, because people don\'t really know what their personal data is worth.\r\n   The biggest problem, however, is that the company keeps changing the rules. Early on, you could keep everything private. That was the great thing about Facebook -- you could create your own little private network. Last year, the company changed its privacy rules so that many things -- your city, your photo, your friends\' names—were set, by default (默认) , to be shared with everyone on the Internet.\r\n   According to Facebook\'s vice president Elliot Schrage, the company is simply making changes to improve its service, and if people don\'t share information, they have a \"less satisfying experience.\"\r\n   Some critics think this is more about Facebook looking to make more money. Its original business model, which involved selling ads and putting them at the side of the page, totally flopped. Who wants to look at ads when they\'re online connecting with their friends?\r\n   The privacy issue has already landed Facebook in hot water in Washington. In April, Senator Charles Schumer called on Facebook to change its privacy policy. He also urged the Federal Trade Commission to set guidelines for social-networking sites. \"I think the senator rightly communicated that we had not been clear about what the new products were and how people could choose to use them or not to use them,\" Schrage admits.\r\n   I suspect that whatever Facebook has done so far to invade our privacy, it\'s only the beginning. Which is why I\'m considering deactivating (撤销) my account. Facebook is a handy site, but I\'m upset by the idea that my information is in the hands of people I don\'t trust. That is too high a price to pay.\r\n', '1');
INSERT INTO `titlesofreading` VALUES ('5', '   Because conflicts and disagreements are part of all close relationships, couples need to learn strategies for managing conflict in a healthy and constructive way. Some couples just  (67)  and deny the presence of any conflict in a relationship.  (68)  , denying the existence of conflict results in couples  (69)  to solve their problems at early  (70)  , which can then lead to even greater problems later  (71)  . Not surprisingly, expressing anger and disagreement leads to lower marital ( 婚姻的) satisfaction at the beginning. However, this pattern of behavior  (72)  increases in martial satisfaction over time. Research suggests that working  (73)  conflicts is an important predictor of marital satisfaction.\r\n   So, what can you do to manage conflict in your own relationships? First, try to understand the other person\'s point of view  (74)  put yourself in his or her place. People who are  (75)  to what their partner thinks and feels  (76)  greater relationship satisfaction. For example, researchers found that among people in dating relationships  (77)  marriages, those who can adopt their partner\'s perspective shows more positive  (78)  , more relationship-enhancing attributes, and more constructive responses  (79)  conflict.\r\n   Second, because conflict and disagreements are  an  (80)  . part of close relationships, people need to be able to apologize to their partner for wrongdoings and  (81)  forgiveness from their partner for their own acts. Apologies minimize conflicts, lead to forgiveness, and serve to restore relationship closeness. In line  (82)  this view, spouses who are more forgiving show higher marital  (83)  over time. Interestingly, apologizing can even have  (84)   health benefits. For example, when people reflect on hurtful  (85)  and grudges (怨恨), they show negative physiological (生理的) effects, including  (86)  heart rate and blood pressure, compared to when they reflect on sympathetic perspective-taking and forgiving.\r\n', '1');
INSERT INTO `titlesofreading` VALUES ('6', '    Students have been complaining more and more about stolen property. Radios, cell phones, bicycles, pocket  (36)  , and books have all been reported stolen. Are these enough campus police to do the job?\r\n    There are 20 officers in the Campus Security Division. Their job is to  (37)  crime, accidents, lost and found  (38)  , and traffic problems on campus. More than half of their time is spent directing traffic and writing parking tickets.  (39)  promptly to accidents and other  (40)   is important, but it is their smallest job.\r\n    Dealing with crime takes up the rest of their time. Very  (41)  do any violent crimes actually    (42)  . In the last five years there have been no  (43)  , seven robberies and about 60 other violent attacks, most of these involving fights at parties. On the other hand,  (44)   , which usually involves breaking windows or lights or writing on walls. The thefts are not the carefully planned burglaries (入室盗窃) that you see in movies.  (45)  .\r\n    Do we really need more police? Hiring more campus police would cost money, possibly marking our tuition go up again.  (46)  .', '1');
INSERT INTO `titlesofreading` VALUES ('7', '', '2');
INSERT INTO `titlesofreading` VALUES ('8', '', '2');
INSERT INTO `titlesofreading` VALUES ('9', '', '2');
INSERT INTO `titlesofreading` VALUES ('10', '', '2');
INSERT INTO `titlesofreading` VALUES ('11', '', '2');
INSERT INTO `titlesofreading` VALUES ('12', '', '2');
INSERT INTO `titlesofreading` VALUES ('13', '', '3');
INSERT INTO `titlesofreading` VALUES ('14', '', '3');
INSERT INTO `titlesofreading` VALUES ('15', '', '3');
INSERT INTO `titlesofreading` VALUES ('16', '', '3');
INSERT INTO `titlesofreading` VALUES ('17', '', '3');
INSERT INTO `titlesofreading` VALUES ('18', '', '3');
INSERT INTO `titlesofreading` VALUES ('19', '', '4');
INSERT INTO `titlesofreading` VALUES ('20', '', '4');
INSERT INTO `titlesofreading` VALUES ('21', '', '4');
INSERT INTO `titlesofreading` VALUES ('22', '', '4');
INSERT INTO `titlesofreading` VALUES ('23', '', '4');
INSERT INTO `titlesofreading` VALUES ('24', '', '4');
INSERT INTO `titlesofreading` VALUES ('25', '', '5');
INSERT INTO `titlesofreading` VALUES ('26', '', '5');
INSERT INTO `titlesofreading` VALUES ('27', '', '5');
INSERT INTO `titlesofreading` VALUES ('28', '', '5');
INSERT INTO `titlesofreading` VALUES ('29', '', '5');
INSERT INTO `titlesofreading` VALUES ('30', '', '5');
INSERT INTO `titlesofreading` VALUES ('31', '', '6');
INSERT INTO `titlesofreading` VALUES ('32', '', '6');
INSERT INTO `titlesofreading` VALUES ('33', '', '6');
INSERT INTO `titlesofreading` VALUES ('34', '', '6');
INSERT INTO `titlesofreading` VALUES ('35', '', '6');
INSERT INTO `titlesofreading` VALUES ('36', '', '6');

-- ----------------------------
-- Table structure for `translate`
-- ----------------------------
DROP TABLE IF EXISTS `translate`;
CREATE TABLE `translate` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(400) default NULL,
  `testid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `translate_id` (`testid`),
  CONSTRAINT `translate_id` FOREIGN KEY (`testid`) REFERENCES `testname` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of translate
-- ----------------------------
INSERT INTO `translate` VALUES ('1', 'These flowers looked as if they______(好长时间没有浇水了).', '1');
INSERT INTO `translate` VALUES ('2', 'Fred bought a car last week. It is______(比我的车便宜一千英镑).', '1');
INSERT INTO `translate` VALUES ('3', 'This TV program is quite boring. We might______(不妨听听音乐).', '1');
INSERT INTO `translate` VALUES ('4', 'He left his office in a hurry, with______(灯亮着，门开着).', '1');
INSERT INTO `translate` VALUES ('5', 'The famous novel is said to______(已经被译成多种语言).', '1');
INSERT INTO `translate` VALUES ('6', '', '2');
INSERT INTO `translate` VALUES ('7', '', '2');
INSERT INTO `translate` VALUES ('8', '', '2');
INSERT INTO `translate` VALUES ('9', '', '2');
INSERT INTO `translate` VALUES ('10', '', '2');
INSERT INTO `translate` VALUES ('11', '', '3');
INSERT INTO `translate` VALUES ('12', '', '3');
INSERT INTO `translate` VALUES ('13', '', '3');
INSERT INTO `translate` VALUES ('14', '', '3');
INSERT INTO `translate` VALUES ('15', '', '3');
INSERT INTO `translate` VALUES ('16', '', '4');
INSERT INTO `translate` VALUES ('17', '', '4');
INSERT INTO `translate` VALUES ('18', '', '4');
INSERT INTO `translate` VALUES ('19', '', '4');
INSERT INTO `translate` VALUES ('20', '', '4');
INSERT INTO `translate` VALUES ('21', '', '5');
INSERT INTO `translate` VALUES ('22', '', '5');
INSERT INTO `translate` VALUES ('23', '', '5');
INSERT INTO `translate` VALUES ('24', '', '5');
INSERT INTO `translate` VALUES ('25', '', '5');
INSERT INTO `translate` VALUES ('26', '', '6');
INSERT INTO `translate` VALUES ('27', '', '6');
INSERT INTO `translate` VALUES ('28', '', '6');
INSERT INTO `translate` VALUES ('29', '', '6');
INSERT INTO `translate` VALUES ('30', '', '6');
DROP TRIGGER IF EXISTS `InsertAfterTestname`;
DELIMITER ;;
CREATE TRIGGER `InsertAfterTestname` AFTER INSERT ON `testname` FOR EACH ROW begin
  DECLARE t_id int;
select max(id) into t_id from testname;
-- ----------------------------
-- Records of composition
-- ----------------------------
INSERT INTO `composition`(title,testid) VALUES ('',t_id);

-- ----------------------------
-- Records of compoundchoosewords
-- ----------------------------
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);
INSERT INTO `compoundchoosewords`(answer,testid) VALUES ('',t_id);

-- ----------------------------
-- Records of listeningmaterial
-- ----------------------------
INSERT INTO `listeningmaterial`(material,testid) VALUES ('',t_id);

-- ----------------------------
-- Records of optionoflistening
-- ----------------------------
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);
INSERT INTO `optionoflistening`(optionA,optionB,optionC,optionD,answer,testid) VALUES ('', '','','','',t_id);

-- ----------------------------
-- Records of optionsofreading
-- ----------------------------
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
INSERT INTO `optionsofreading`(title,optionA,optionB,optionC,optionD,answer,testid) VALUES ('','', '','','','',t_id);
-- ----------------------------
-- Records of titlesofreading
-- ----------------------------
INSERT INTO `titlesofreading`(title,testid) VALUES ('',t_id);
INSERT INTO `titlesofreading`(title,testid) VALUES ('',t_id);
INSERT INTO `titlesofreading`(title,testid) VALUES ('',t_id);
INSERT INTO `titlesofreading`(title,testid) VALUES ('',t_id);
INSERT INTO `titlesofreading`(title,testid) VALUES ('',t_id);
INSERT INTO `titlesofreading`(title,testid) VALUES ('',t_id);

-- ----------------------------
-- Records of translate
-- ----------------------------
INSERT INTO `translate`(title,testid) VALUES ('',t_id);
INSERT INTO `translate`(title,testid) VALUES ('',t_id);
INSERT INTO `translate`(title,testid) VALUES ('',t_id);
INSERT INTO `translate`(title,testid) VALUES ('',t_id);

INSERT INTO `translate`(title,testid) VALUES ('',t_id);
end
;;
DELIMITER ;
