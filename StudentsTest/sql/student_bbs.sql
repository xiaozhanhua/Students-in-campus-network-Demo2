/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : student_bbs

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2017-02-02 23:18:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `postid` int(4) NOT NULL AUTO_INCREMENT COMMENT '帖子ID',
  `title` char(40) NOT NULL COMMENT '帖子名',
  `content` text NOT NULL COMMENT '帖子内容',
  `publishTime` datetime NOT NULL COMMENT '发帖时间',
  `uid` int(4) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`postid`),
  KEY `userid` (`uid`),
  CONSTRAINT `userid` FOREIGN KEY (`uid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('38', '我是阿三', '阿三在这里', '2016-05-28 01:45:46', '10');
INSERT INTO `post` VALUES ('49', 'sdf', 'dsf ', '2016-05-28 09:44:43', '1');
INSERT INTO `post` VALUES ('50', '2111111111111', '1231312', '2016-05-30 06:47:00', '14');
INSERT INTO `post` VALUES ('53', '【速进】即将高考的学子们，跟你们聊聊分数线的问题。', '现在，现在我要说的是，【分数线在高考录取结束之前，没有谁可以给你答案的】，就算给你的也只是他们猜的，根据去年或者往年的录取分数线猜的。 猜的分数线太不靠谱，而且很容易造成“吓死胆小的，乐死胆大”的这种现象，就像去年我校的文科分数线简直\"惨不忍睹\"，造成了一些学子的损失，也造成了学校的损失', '2016-05-30 01:26:00', '1');
INSERT INTO `post` VALUES ('54', '我是朱文强', '哈哈哈哈哈哈哈', '2016-05-30 09:03:00', '18');
INSERT INTO `post` VALUES ('55', '我是发哥', '哈哈', '2016-05-31 03:13:00', '4');
INSERT INTO `post` VALUES ('56', '1', '1', '2016-06-05 09:04:00', '1');
INSERT INTO `post` VALUES ('57', '【转卖】包邮达尔优机械师合金版2代游戏背光机械键盘青黑轴', '【转卖】包邮达尔优机械师合金版2代游戏背光机械键盘青黑轴【转卖】包邮达尔优机械师合金版2代游戏背光机械键盘青黑轴【转卖】包邮达尔优机械师合金版2代游戏背光机械键盘青黑轴', '2016-06-14 08:54:00', '23');
INSERT INTO `post` VALUES ('58', '深圳大学', '该报什么专业好呢', '2016-06-27 11:17:00', '1');
INSERT INTO `post` VALUES ('59', '今天', '大', '2016-06-27 06:59:00', '27');
INSERT INTO `post` VALUES ('60', '4234', '43124231', '2016-06-27 07:29:00', '1');
INSERT INTO `post` VALUES ('61', '66666666666', '666666666666666666666666666666666', '2016-06-27 09:36:00', '30');
INSERT INTO `post` VALUES ('62', '12321', '321312', '2016-07-01 03:09:00', '1');
INSERT INTO `post` VALUES ('63', '11111111', '11111111', '2016-07-01 03:55:00', '10');
INSERT INTO `post` VALUES ('64', 'xxxxxxxxxx', 'xxxxxxx', '2016-12-20 09:57:00', '1');
INSERT INTO `post` VALUES ('65', 'zzzzzzzzzzzzzzzz', '啧啧啧啧啧啧啧啧啧啧啧', '2016-12-20 09:29:00', '1');
INSERT INTO `post` VALUES ('67', '0000000000000000000', '0000000000000000000', '2016-12-20 09:36:00', '1');
INSERT INTO `post` VALUES ('68', '闷闷闷闷闷闷闷闷', '简介就', '2016-12-21 10:09:00', '1');
INSERT INTO `post` VALUES ('69', 'ggg', 'ggg', '2016-12-21 10:55:00', '33');
INSERT INTO `post` VALUES ('70', '动态规划是一种算法思想', '动态规划是一种算法思想，刚入门的时候可能感觉十分难以掌握，总是会有看了题不知道怎么做，但是一看答案就恍然大悟的感觉。结合这一段时间的学习，在这里做一下总结。解题思路在解题的过程中，首先可以主动寻找递推关系，比如对当前数组进行逐步拉伸，看新的元素和已有结果是否存在某种关系。', '2016-12-21 07:56:00', '23');
INSERT INTO `post` VALUES ('71', '3333', '33333333333333333333333333333333333333333333333333333', '2016-12-21 08:25:00', '35');
INSERT INTO `post` VALUES ('72', '国家宏观环境更加', '海关监管好几个好几个钢结构接口', '2016-12-21 09:09:00', '36');
INSERT INTO `post` VALUES ('73', 'aaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaa', '2016-12-22 08:02:00', '37');
INSERT INTO `post` VALUES ('74', '111', '111', '2016-12-28 03:57:00', '42');
INSERT INTO `post` VALUES ('75', 'fdsaf', 'fadsf', '2017-01-04 12:52:00', '43');
INSERT INTO `post` VALUES ('76', '555', '5555', '2017-01-04 08:01:00', '23');
INSERT INTO `post` VALUES ('77', '士大夫发多少', '爱的色放阿斯蒂芬打发啊额分', '2017-01-05 01:31:00', '46');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` int(4) NOT NULL AUTO_INCREMENT COMMENT '产品ID',
  `productTitle` varchar(40) NOT NULL COMMENT '产品名',
  `productContent` varchar(255) NOT NULL COMMENT '产品描述',
  `price` decimal(10,2) NOT NULL COMMENT '产品价格',
  `photoPath` varchar(100) NOT NULL COMMENT '图像路径',
  `publishTime` datetime NOT NULL COMMENT '发布时间',
  `uid` int(4) NOT NULL,
  PRIMARY KEY (`productid`),
  KEY `product_id` (`uid`),
  CONSTRAINT `product_id` FOREIGN KEY (`uid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('59', 'javascriptjavascriptjavascript', 'scriptjavascriptjavascriptjavascript', '123.00', 'book.jpg', '2016-12-21 07:56:00', '23');
INSERT INTO `product` VALUES ('60', '地方', '2131212312312312312312', '123.00', 'book.jpg', '2016-12-21 08:26:00', '35');
INSERT INTO `product` VALUES ('63', '1111', '113212143243', '100.00', 'book.jpg', '2016-12-21 09:09:00', '36');
INSERT INTO `product` VALUES ('64', 'aaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '100.00', 'book.jpg', '2016-12-22 08:02:00', '37');
INSERT INTO `product` VALUES ('65', 'kindle', 'fadfadfasdfadfadfasdfadfadfasdfasdfa', '200.00', 'book.jpg', '2017-01-04 12:53:00', '43');
INSERT INTO `product` VALUES ('66', 'kindle', 'fadfadfasdfadfadfasdfadfadfasdfasdfa', '200.00', 'book.jpg', '2017-01-04 12:55:00', '43');
INSERT INTO `product` VALUES ('67', 'kindle414', 'fdsfaadadfafafasdfsd', '55.00', 'book.jpg', '2017-01-04 08:02:00', '23');
INSERT INTO `product` VALUES ('68', '434324', '4324324324324', '23.00', 'book.jpg', '2017-01-04 08:05:00', '23');
INSERT INTO `product` VALUES ('69', 'gg', 'fdsafdasfafadfa', '53.00', 'book.jpg', '2017-01-04 09:16:00', '45');
INSERT INTO `product` VALUES ('70', '314', '231312312312', '321.00', '12342412412.jpg', '2017-01-05 01:31:00', '46');
INSERT INTO `product` VALUES ('71', '314', '231312312312', '321.00', '12342412412.jpg', '2017-01-05 01:31:00', '46');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `replyid` int(4) NOT NULL AUTO_INCREMENT COMMENT '回帖id',
  `content` text NOT NULL COMMENT '回帖内容',
  `uid` int(4) NOT NULL COMMENT '用户ID',
  `pid` int(4) NOT NULL COMMENT '帖子ID',
  `publishTime` datetime NOT NULL,
  PRIMARY KEY (`replyid`),
  KEY `reply_uid` (`uid`),
  KEY `reply_pid` (`pid`),
  CONSTRAINT `reply_pid` FOREIGN KEY (`pid`) REFERENCES `post` (`postid`),
  CONSTRAINT `reply_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('8', '学校投档线、学校最低录取分数线是在录取过程中投档产生，因目前考生尚未填报志愿，无法知道多少考生报考我校，学校没有划定分数线的权力。具体录取分数根据考生报考人数多少决定，我校再由高到低择优录取。录取结束后，所有录取考生中分数最低的那考生的分数就是学校当年的最低录取分数。', '2', '53', '2016-05-30 13:34:04');
INSERT INTO `reply` VALUES ('9', '★我校2015年预计录取分数线★\r\n预计2015年录取分数线为该广东省公布的第三批A类控制分数线，文科类403分、理科类407分、美术类文化科总分285分/术科195分起。\r\n学校投档线、学校最低录取分数线是在录取过程中投档产生，因目前考生尚未填报志愿，无法知道多少考生报考我校，学校没有划定分数线的权力。具体录取分数根据考生报考人数多少决定，我校再由高到低择优录取。录取结束后，所有录取考生中分数最低的那考生的分数就是学校当年的最低录取分数。\r\n欢迎广大考生第一志愿报考我校，同时为了减少退档情况，建议考生在填报专业时选择服从专业调剂。', '14', '53', '2016-05-30 13:39:16');
INSERT INTO `reply` VALUES ('19', 'afdadfadfafa', '10', '53', '2016-05-30 20:57:59');
INSERT INTO `reply` VALUES ('20', 'sdafasdfadsfadsfafaf', '10', '53', '2016-05-30 20:58:03');
INSERT INTO `reply` VALUES ('39', '印度阿三', '10', '55', '2016-05-31 03:27:00');
INSERT INTO `reply` VALUES ('40', 'ggg', '10', '55', '2016-05-31 03:31:00');
INSERT INTO `reply` VALUES ('41', '123123123123123', '1', '55', '2016-06-01 07:23:00');
INSERT INTO `reply` VALUES ('42', 'nihao', '19', '38', '2016-06-03 12:45:00');
INSERT INTO `reply` VALUES ('43', '哈哈', '1', '54', '2016-06-04 02:25:00');
INSERT INTO `reply` VALUES ('44', '123', '1', '54', '2016-06-05 08:14:00');
INSERT INTO `reply` VALUES ('45', '132', '1', '54', '2016-06-05 09:01:00');
INSERT INTO `reply` VALUES ('46', '123', '1', '54', '2016-06-05 09:03:00');
INSERT INTO `reply` VALUES ('47', '2323323', '1', '56', '2016-06-05 11:20:00');
INSERT INTO `reply` VALUES ('48', '123', '1', '56', '2016-06-06 01:16:00');
INSERT INTO `reply` VALUES ('49', '4', '1', '56', '2016-06-06 01:18:00');
INSERT INTO `reply` VALUES ('50', '123213213', '23', '57', '2016-06-14 08:55:00');
INSERT INTO `reply` VALUES ('51', '我要你', '1', '57', '2016-06-27 10:58:00');
INSERT INTO `reply` VALUES ('52', '白痴', '1', '56', '2016-06-27 11:00:00');
INSERT INTO `reply` VALUES ('53', '我不要你', '1', '57', '2016-06-27 11:03:00');
INSERT INTO `reply` VALUES ('54', '123', '1', '57', '2016-06-27 11:04:00');
INSERT INTO `reply` VALUES ('55', '321', '1', '57', '2016-06-27 11:05:00');
INSERT INTO `reply` VALUES ('56', '321', '1', '57', '2016-06-27 11:05:00');
INSERT INTO `reply` VALUES ('57', '321', '1', '57', '2016-06-27 11:05:00');
INSERT INTO `reply` VALUES ('58', '321', '1', '57', '2016-06-27 11:06:00');
INSERT INTO `reply` VALUES ('59', '21341', '1', '58', '2016-06-27 11:17:00');
INSERT INTO `reply` VALUES ('60', '123', '1', '53', '2016-06-27 05:07:00');
INSERT INTO `reply` VALUES ('61', '啊短发阿发发', '27', '59', '2016-06-27 06:59:00');
INSERT INTO `reply` VALUES ('62', '123', '30', '61', '2016-06-27 09:36:00');
INSERT INTO `reply` VALUES ('63', '哈哈哈', '1', '62', '2016-07-01 03:10:00');
INSERT INTO `reply` VALUES ('64', '23', '1', '62', '2016-07-01 03:23:00');
INSERT INTO `reply` VALUES ('65', '2222', '10', '63', '2016-07-01 03:58:00');
INSERT INTO `reply` VALUES ('66', '我是肖占华的芭比', '32', '58', '2016-07-01 04:38:00');
INSERT INTO `reply` VALUES ('67', 'xxxx', '1', '64', '2016-12-20 09:57:00');
INSERT INTO `reply` VALUES ('68', '11111', '1', '68', '2016-12-21 10:13:00');
INSERT INTO `reply` VALUES ('69', '啊等方式购房价款', '1', '68', '2016-12-21 10:14:00');
INSERT INTO `reply` VALUES ('70', '22222', '1', '68', '2016-12-21 10:16:00');
INSERT INTO `reply` VALUES ('71', '33333', '1', '68', '2016-12-21 10:18:00');
INSERT INTO `reply` VALUES ('72', '123', '1', '68', '2016-12-21 10:18:00');
INSERT INTO `reply` VALUES ('73', '6', '1', '68', '2016-12-21 10:19:00');
INSERT INTO `reply` VALUES ('74', '1', '1', '67', '2016-12-21 10:22:00');
INSERT INTO `reply` VALUES ('75', 'ggggg', '33', '69', '2016-12-21 10:55:00');
INSERT INTO `reply` VALUES ('76', '141234123123', '35', '70', '2016-12-21 08:24:00');
INSERT INTO `reply` VALUES ('77', '唐功红分公司股份公司分管', '35', '70', '2016-12-21 08:25:00');
INSERT INTO `reply` VALUES ('78', '11111111111111', '35', '71', '2016-12-21 08:25:00');
INSERT INTO `reply` VALUES ('79', '1111111111111', '36', '72', '2016-12-21 09:09:00');
INSERT INTO `reply` VALUES ('80', 'aaaaaaaaaaabbbbbbbbbbbbbbbb', '37', '73', '2016-12-22 08:02:00');
INSERT INTO `reply` VALUES ('81', '[][][][', '37', '72', '2016-12-22 08:04:00');
INSERT INTO `reply` VALUES ('82', 'hkjefhjhdskfjhdsjkafasfadsfasdfasdfdsa', '42', '74', '2016-12-28 03:59:00');
INSERT INTO `reply` VALUES ('83', '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '42', '74', '2016-12-28 04:00:00');
INSERT INTO `reply` VALUES ('84', 'afdafdasfadsf', '43', '75', '2017-01-04 12:52:00');
INSERT INTO `reply` VALUES ('85', '5555', '23', '76', '2017-01-04 08:01:00');
INSERT INTO `reply` VALUES ('86', '13213213', '23', '57', '2017-01-04 08:04:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(4) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(10) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '登录密码',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '利伟', '199512');
INSERT INTO `user` VALUES ('2', '圣东', '123');
INSERT INTO `user` VALUES ('3', 'ylw', '199512');
INSERT INTO `user` VALUES ('4', '发哥', '123456');
INSERT INTO `user` VALUES ('5', 'lxs', '123');
INSERT INTO `user` VALUES ('6', 'zh', '199512');
INSERT INTO `user` VALUES ('9', '猴哥', '123');
INSERT INTO `user` VALUES ('10', '宇轩', '123');
INSERT INTO `user` VALUES ('11', 'Andr', '123456');
INSERT INTO `user` VALUES ('12', '第十', '123');
INSERT INTO `user` VALUES ('13', '123', '123');
INSERT INTO `user` VALUES ('14', '13', '123');
INSERT INTO `user` VALUES ('18', '555', '123456');
INSERT INTO `user` VALUES ('19', '123a', '123');
INSERT INTO `user` VALUES ('21', 'a', '123');
INSERT INTO `user` VALUES ('22', '屈原', '123');
INSERT INTO `user` VALUES ('23', 'pyp', '123');
INSERT INTO `user` VALUES ('24', '红茶', '123');
INSERT INTO `user` VALUES ('25', '绿茶', '123');
INSERT INTO `user` VALUES ('26', '白茶12', '123');
INSERT INTO `user` VALUES ('27', '白痴', '123');
INSERT INTO `user` VALUES ('28', '快乐', '123');
INSERT INTO `user` VALUES ('29', '321', '123');
INSERT INTO `user` VALUES ('30', '666', '123');
INSERT INTO `user` VALUES ('31', '嚣', '123');
INSERT INTO `user` VALUES ('32', '我', '123321');
INSERT INTO `user` VALUES ('33', 'fdf', '123');
INSERT INTO `user` VALUES ('34', '5678', '5678');
INSERT INTO `user` VALUES ('35', '333', '333');
INSERT INTO `user` VALUES ('36', 'bbb', '123');
INSERT INTO `user` VALUES ('37', 'aaa', '123');
INSERT INTO `user` VALUES ('38', '1232', '1');
INSERT INTO `user` VALUES ('39', 'ggg', 'ggg');
INSERT INTO `user` VALUES ('40', '哈哈哈', '123');
INSERT INTO `user` VALUES ('41', 'jjj', 'jjj');
INSERT INTO `user` VALUES ('42', 'jjj', 'jjj');
INSERT INTO `user` VALUES ('43', 'hello', '123');
INSERT INTO `user` VALUES ('44', 'pypy', '123');
INSERT INTO `user` VALUES ('45', 'kkk', '123');
INSERT INTO `user` VALUES ('46', '12345', '123');
INSERT INTO `user` VALUES ('47', '8888', '123');
