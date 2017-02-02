/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : myssh

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2017-01-05 15:38:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`postid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('37', '搞技术的不要有手艺人思维！', '什么叫做手艺人思维？就是我会技术我靠技术赚钱。作为一个三流程序员，曾经觉得自己的技术可以吃好多年了，觉得自己屌屌的谁都不放眼里，我就是技术好怎么滴啦。想想天旱都饿不死手艺人，我等技术大拿会屌尔等甲方？你身边是不是存在这样的技术大拿，小人物都不正眼瞧人家，一交流觉得对方说的不专业马上鄙视之，立即觉得高出众人之上，优越感马上充满体内。不管你是不是程序员，这都叫手艺人思维。\r\n', '2017-01-05 10:38:00', '1411010208');
INSERT INTO `post` VALUES ('38', '艺术馆与软件', '让我印象深刻的固然是那些美轮美奂充满神秘气息的艺术品，但井然有序的作品成列，精心挑选的作品，有意识用小字表明的作品介绍，以及与作品相应成趣的环境，让人欣赏的过程始终充满愉悦。欧洲油画的展厅有粗大的柱子，不时有雕塑；中国瓷器的展厅，白色的现代墙则被红木板细心的盖住，灯光也暗了下来；原住民艺术展厅则整个变得更加粗放，空荡荡的大厅没有任何额外的装饰，所有的艺术品都在四周的墙上。', '2017-01-05 10:45:00', '1411010212');
INSERT INTO `post` VALUES ('39', '2017年程序员必看的纪录片', '这是在简书发的第一篇文章，可以从这篇文章介绍的影片中看到各式各样的程序员。他们有的才华横溢，14岁就创造了RSS1.0规格，足迹遍及整个互联网，但英年早逝；有的活在自己世界并坚守着自己的理想，想法不为他人而决定；有的在尽自己最大的努力来挽救公司，永不言弃的精神在影片中体现的淋漓尽致；有的置生死于度外，揭露出鲜为人知的真相', '2017-01-05 10:45:00', '1411010212');
INSERT INTO `post` VALUES ('40', '我最喜欢的前端工具', '又是一年即将过去，正如我们所预期的一样，随着大量涌入的创新、刺激、令人兴奋的新工具和技术，Web 平台正呈现着爆炸式的发展态势继续前进。同时，我们的生活也变得如同开发人员一样，更加得简单。', '2017-01-05 10:46:00', '1411010212');
INSERT INTO `post` VALUES ('41', '项目中怎么支持https自建证书', '项目中怎么支持https自建证书项目中怎么支持https自建证书项目中怎么支持https自建证书项目中怎么支持https自建证书项目中怎么支持https自建证书项目中怎么支持https自建证书项目中怎么支持https自建证书', '2017-01-05 10:47:00', '1411010212');
INSERT INTO `post` VALUES ('42', '学习是困难的', '许多人离开校园停止了学习。这个社会给人提供了更多出口，并狡猾的以各种方式掩藏。享乐主义替代了艰苦奋斗。每天刷知乎却发现自己并没有变得更有智慧一些。读着逻辑思维的各种大命题演说，自己也充满悲天悯人的大情怀，真的检视自己的生活，却也没有发现变化多一些；知乎Live也常常参见，别人的世界也开阔了不少，自己呢？\r\n\r\n', '2017-01-05 10:47:00', '1411010212');
INSERT INTO `post` VALUES ('48', '搞技术的不要有手艺人思维！', '什么叫做手艺人思维？就是我会技术我靠技术赚钱。作为一个三流程序员，曾经觉得自己的技术可以吃好多年了，觉得自己屌屌的谁都不放眼里，我就是技术好怎么滴啦。想想天旱都饿不死手艺人，我等技术大拿会屌尔等甲方？你身边是不是存在这样的技术大拿，小人物都不正眼瞧人家，一交流觉得对方说的不专业马上鄙视之，立即觉得高出众人之上，优越感马上充满体内。不管你是不是程序员，这都叫手艺人思维。\r\n', '2017-01-05 10:38:00', '1411010229');
INSERT INTO `post` VALUES ('49', '年终的第一篇总结　', '初来深圳进入了O2O初创公司，因为自己想看看公司是怎么从小到大成长的，也想进入互联网公司学习先进的东西（并不排除碰运气也许大发了呢，哈哈），产品不停的换代终于逐步完善成型，公司规模不断扩大，业务也在不停的转型，但很遗憾，风险总在风雨后，遇到了最坏的情况 你们知道的。 后来竟然又经历了人生一辈子第一次的劳动法 为了工资走上了诉讼（说多了都是泪 ，关键是快到年末 ，尴尬的时期）。', '2017-01-05 12:28:00', '1411010202');
INSERT INTO `post` VALUES ('50', '大学生互联网就业现状', '在我们收集到的2275份有效调查问卷中，应届大学生占比四分之一，非应届大学生占比四分之三，其中，应届生和非应届生对于“进入互联网行业工作”这件事的态度差异不大。总体来说，大家对于互联网行业还是比较有好感和热情的，无论是否应届，60%以上的大学生表示对毕业后进入互联网行业有极大的兴趣。', '2017-01-05 12:29:00', '1411010202');
INSERT INTO `post` VALUES ('51', '666666666', '666666666666666666666666666666666666666666', '2017-01-05 02:43:00', '1411010206');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `photoPath` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`productid`),
  KEY `uid` (`uid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('25', '亚马逊Kindle Paperwhite3', '客家话客家话可降低首付款的角色', '558.00', '23.jpg', '1411010212', '2017-01-05 10:49:00');
INSERT INTO `product` VALUES ('26', '大眼萌小黄人消防队玩具包', '大眼萌小黄人消防队玩具包大眼萌小黄人消防队玩具包大眼萌小黄人消防队玩具包大眼萌小黄人消防队玩具包', '220.00', '12321313.jpg', '1411010212', '2017-01-05 10:51:00');
INSERT INTO `product` VALUES ('27', '锋利的jQuery(第2版)', '正版包邮 锋利的jQuery(第2版)单东林网站设计实战规划畅销书webhtml设计教程书jquery从入门到精通基础教程实战书籍', '59.00', '7756.jpg', '1411010212', '2017-01-05 10:52:00');
INSERT INTO `product` VALUES ('28', '游戏键盘', '游戏键盘游戏键盘游戏键盘游戏键盘游戏键盘游戏键盘游戏键盘游戏键盘', '36.00', '12342412412.jpg', '1411010212', '2017-01-05 10:53:00');
INSERT INTO `product` VALUES ('29', '5555', '5555555555555555555555555', '55.00', '7756.jpg', '1411010212', '2017-01-05 11:50:00');
INSERT INTO `product` VALUES ('30', '55', '123', '455.00', '23123123213.jpg', '1411010229', '2017-01-05 12:12:00');
INSERT INTO `product` VALUES ('31', '6666', '123123132132132123123', '123.00', '23123123213.jpg', '1411010206', '2017-01-05 02:44:00');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `replyid` int(4) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `pid` int(4) DEFAULT NULL,
  `time` datetime NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`replyid`),
  KEY `postid` (`pid`),
  KEY `userid` (`uid`),
  CONSTRAINT `postid` FOREIGN KEY (`pid`) REFERENCES `post` (`postid`),
  CONSTRAINT `userid` FOREIGN KEY (`uid`) REFERENCES `userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('6', '55555555', '42', '2017-01-05 10:53:00', '1411010212');
INSERT INTO `reply` VALUES ('7', '12214341424', '37', '2017-01-05 11:42:00', '1411010208');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uname` (`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=1411010230 DEFAULT CHARSET=utf8 COMMENT='用户信息';

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1411010202', '1411010202', '123');
INSERT INTO `userinfo` VALUES ('1411010206', '1411010206', '123');
INSERT INTO `userinfo` VALUES ('1411010208', '1411010208', '123');
INSERT INTO `userinfo` VALUES ('1411010212', '1411010212', '123');
INSERT INTO `userinfo` VALUES ('1411010229', '1411010229', '123');
