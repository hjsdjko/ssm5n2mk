/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm5n2mk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm5n2mk` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm5n2mk`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611546786897 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-01-25 11:42:19',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-01-25 11:42:19',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-25 11:42:19',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-25 11:42:19',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-25 11:42:19',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-25 11:42:19',6,'宇宙银河系月球1号','月某','13823888886','是'),(1611546786896,'2021-01-25 11:53:06',1611546730956,'广东省梅州市梅县区新城街道丽景湾(嘉应西二巷)','1','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'xianhuaxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611546903462 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611547021005 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-01-25 11:42:19',1,1,'提问1','回复1',1),(62,'2021-01-25 11:42:19',2,2,'提问2','回复2',2),(63,'2021-01-25 11:42:19',3,3,'提问3','回复3',3),(64,'2021-01-25 11:42:19',4,4,'提问4','回复4',4),(65,'2021-01-25 11:42:19',5,5,'提问5','回复5',5),(66,'2021-01-25 11:42:19',6,6,'提问6','回复6',6),(1611546951493,'2021-01-25 11:55:51',1611546730956,NULL,'在吗',NULL,0),(1611546961573,'2021-01-25 11:56:01',1611546730956,NULL,'优惠券怎么领',NULL,0),(1611547021004,'2021-01-25 11:57:00',1611546730956,1,NULL,'HJRTRY',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm5n2mk/upload/1611546428898.jpg'),(2,'picture2','http://localhost:8080/ssm5n2mk/upload/1611546438599.jpg'),(3,'picture3','http://localhost:8080/ssm5n2mk/upload/1611546701884.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussxianhuaxinxi` */

DROP TABLE IF EXISTS `discussxianhuaxinxi`;

CREATE TABLE `discussxianhuaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611547054321 DEFAULT CHARSET=utf8 COMMENT='鲜花信息评论表';

/*Data for the table `discussxianhuaxinxi` */

insert  into `discussxianhuaxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (121,'2021-01-25 11:42:20',1,1,'评论内容1','回复内容1'),(122,'2021-01-25 11:42:20',2,2,'评论内容2','回复内容2'),(123,'2021-01-25 11:42:20',3,3,'评论内容3','回复内容3'),(124,'2021-01-25 11:42:20',4,4,'评论内容4','回复内容4'),(125,'2021-01-25 11:42:20',5,5,'评论内容5','回复内容5'),(126,'2021-01-25 11:42:20',6,6,'评论内容6','回复内容6'),(1611547054320,'2021-01-25 11:57:34',1611546568410,1611546730956,'很不错的花',NULL);

/*Table structure for table `huacaixuanze` */

DROP TABLE IF EXISTS `huacaixuanze`;

CREATE TABLE `huacaixuanze` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huacaixuanze` varchar(200) NOT NULL COMMENT '花材选择',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huacaixuanze` (`huacaixuanze`)
) ENGINE=InnoDB AUTO_INCREMENT=1611546509818 DEFAULT CHARSET=utf8 COMMENT='花材选择';

/*Data for the table `huacaixuanze` */

insert  into `huacaixuanze`(`id`,`addtime`,`huacaixuanze`) values (21,'2021-01-25 11:42:19','花材选择1'),(22,'2021-01-25 11:42:19','花材选择2'),(23,'2021-01-25 11:42:19','花材选择3'),(24,'2021-01-25 11:42:19','花材选择4'),(26,'2021-01-25 11:42:19','蓝色妖姬'),(1611546509817,'2021-01-25 11:48:28','白玫瑰');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611546692085 DEFAULT CHARSET=utf8 COMMENT='鲜花资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-01-25 11:42:19','标题1','简介1','http://localhost:8080/ssm5n2mk/upload/1611546379920.jpg','<p>内容1</p>'),(112,'2021-01-25 11:42:19','标题2','简介2','http://localhost:8080/ssm5n2mk/upload/1611546390190.jpg','<p>内容2</p>'),(113,'2021-01-25 11:42:19','标题3','简介3','http://localhost:8080/ssm5n2mk/upload/news_picture3.jpg','内容3'),(114,'2021-01-25 11:42:19','标题4','简介4','http://localhost:8080/ssm5n2mk/upload/1611546402088.jpg','<p>内容4</p>'),(115,'2021-01-25 11:42:19','标题5','简介5','http://localhost:8080/ssm5n2mk/upload/1611546418617.jpg','<p>内容5</p>'),(116,'2021-01-25 11:42:19','标题6','简介6','http://localhost:8080/ssm5n2mk/upload/news_picture6.jpg','内容6'),(1611546692084,'2021-01-25 11:51:31','优惠资讯','优惠活动','http://localhost:8080/ssm5n2mk/upload/1611546678641.jpg','<p>活动内容</p><p><img src=\"http://localhost:8080/ssm5n2mk/upload/1611546690489.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'xianhuaxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1611546932996 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1611546932995,'2021-01-25 11:55:32','20211251155275163926','xianhuaxinxi',1611546730956,1611546568410,'白玫瑰花束','http://localhost:8080/ssm5n2mk/upload/1611546536278.jpg',1,520,520,520,520,1,'已完成','广东省梅州市梅县区新城街道丽景湾(嘉应西二巷)');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611546915119 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1611546871926,'2021-01-25 11:54:31',1611546730956,1611546568410,'xianhuaxinxi','白玫瑰花束','http://localhost:8080/ssm5n2mk/upload/1611546536278.jpg'),(1611546915118,'2021-01-25 11:55:14',1611546730956,36,'xianhuaxinxi','鲜花名称6','http://localhost:8080/ssm5n2mk/upload/1611546364108.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','28d1e6lymklwwdglv7r3rgckkormj6c2','2021-01-25 11:44:06','2021-01-25 12:56:13'),(2,1611546730956,'1','yonghu','用户','ccbp71gdyn9y2unb0yj8338zspj3duqk','2021-01-25 11:52:16','2021-01-25 12:57:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','aboo','管理员','2021-01-25 11:42:20');

/*Table structure for table `xianhuachuku` */

DROP TABLE IF EXISTS `xianhuachuku`;

CREATE TABLE `xianhuachuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianhuamingcheng` varchar(200) DEFAULT NULL COMMENT '鲜花名称',
  `huacaixuanze` varchar(200) DEFAULT NULL COMMENT '花材选择',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611546996676 DEFAULT CHARSET=utf8 COMMENT='鲜花出库';

/*Data for the table `xianhuachuku` */

insert  into `xianhuachuku`(`id`,`addtime`,`xianhuamingcheng`,`huacaixuanze`,`shuliang`,`dengjishijian`,`beizhu`) values (51,'2021-01-25 11:42:19','鲜花名称1','花材选择1',1,'2021-01-25','备注1'),(52,'2021-01-25 11:42:19','鲜花名称2','花材选择2',2,'2021-01-25','备注2'),(53,'2021-01-25 11:42:19','鲜花名称3','花材选择3',3,'2021-01-25','备注3'),(54,'2021-01-25 11:42:19','鲜花名称4','花材选择4',4,'2021-01-25','备注4'),(55,'2021-01-25 11:42:19','鲜花名称5','花材选择5',5,'2021-01-25','备注5'),(56,'2021-01-25 11:42:19','鲜花名称6','花材选择6',6,'2021-01-25','备注6'),(1611546590764,'2021-01-25 11:49:50','白玫瑰花束','白玫瑰',2,'2021-01-25','销售出库gfr'),(1611546996675,'2021-01-25 11:56:36','白玫瑰花束','白玫瑰',1,'2021-01-30','');

/*Table structure for table `xianhuaruku` */

DROP TABLE IF EXISTS `xianhuaruku`;

CREATE TABLE `xianhuaruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianhuamingcheng` varchar(200) DEFAULT NULL COMMENT '鲜花名称',
  `huacaixuanze` varchar(200) DEFAULT NULL COMMENT '花材选择',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611546579672 DEFAULT CHARSET=utf8 COMMENT='鲜花入库';

/*Data for the table `xianhuaruku` */

insert  into `xianhuaruku`(`id`,`addtime`,`xianhuamingcheng`,`huacaixuanze`,`shuliang`,`dengjishijian`,`beizhu`) values (41,'2021-01-25 11:42:19','鲜花名称1','花材选择1',1,'2021-01-25','备注1'),(42,'2021-01-25 11:42:19','鲜花名称2','花材选择2',2,'2021-01-25','备注2'),(43,'2021-01-25 11:42:19','鲜花名称3','花材选择3',3,'2021-01-25','备注3'),(44,'2021-01-25 11:42:19','鲜花名称4','花材选择4',4,'2021-01-25','备注4'),(45,'2021-01-25 11:42:19','鲜花名称5','花材选择5',5,'2021-01-25','备注5'),(46,'2021-01-25 11:42:19','鲜花名称6','花材选择6',6,'2021-01-25','备注6'),(1611546579671,'2021-01-25 11:49:38','白玫瑰花束','白玫瑰',50,'2021-01-25','');

/*Table structure for table `xianhuaxinxi` */

DROP TABLE IF EXISTS `xianhuaxinxi`;

CREATE TABLE `xianhuaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianhuamingcheng` varchar(200) NOT NULL COMMENT '鲜花名称',
  `huacaixuanze` varchar(200) NOT NULL COMMENT '花材选择',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `cailiao` varchar(200) DEFAULT NULL COMMENT '材料',
  `huayu` varchar(200) DEFAULT NULL COMMENT '花语',
  `xianhuayongtu` varchar(200) DEFAULT NULL COMMENT '鲜花用途',
  `zengsongduixiang` varchar(200) DEFAULT NULL COMMENT '赠送对象',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `xianhuaxiangqing` longtext COMMENT '鲜花详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611546568411 DEFAULT CHARSET=utf8 COMMENT='鲜花信息';

/*Data for the table `xianhuaxinxi` */

insert  into `xianhuaxinxi`(`id`,`addtime`,`xianhuamingcheng`,`huacaixuanze`,`tupian`,`cailiao`,`huayu`,`xianhuayongtu`,`zengsongduixiang`,`shuliang`,`xianhuaxiangqing`,`clicktime`,`clicknum`,`price`) values (31,'2021-01-25 11:42:19','鲜花名称1','花材选择1','http://localhost:8080/ssm5n2mk/upload/xianhuaxinxi_tupian1.jpg','材料1','花语1','爱情','恋人',1,'鲜花详情1','2021-01-25 11:44:11',2,99.9),(32,'2021-01-25 11:42:19','鲜花名称2','花材选择2','http://localhost:8080/ssm5n2mk/upload/1611546319379.jpg','材料2','花语2','爱情','恋人',2,'<p>鲜花详情2</p>','2021-01-25 11:47:40',4,99.9),(33,'2021-01-25 11:42:19','鲜花名称3','花材选择3','http://localhost:8080/ssm5n2mk/upload/1611546329249.jpg','材料3','花语3','爱情','恋人',3,'<p>鲜花详情3</p>','2021-01-25 11:45:23',4,99.9),(34,'2021-01-25 11:42:19','鲜花名称4','花材选择4','http://localhost:8080/ssm5n2mk/upload/1611546340405.jpg','材料4','花语4','爱情','恋人',4,'<p>鲜花详情4</p>','2021-01-25 11:45:34',5,99.9),(35,'2021-01-25 11:42:19','鲜花名称5','花材选择5','http://localhost:8080/ssm5n2mk/upload/1611546351657.jpg','材料5','花语5','爱情','恋人',5,'<p>鲜花详情5</p>','2021-01-25 11:53:47',10,99.9),(36,'2021-01-25 11:42:19','鲜花名称6','花材选择6','http://localhost:8080/ssm5n2mk/upload/1611546364108.jpg','材料6','花语6','爱情','恋人',6,'<p>鲜花详情6</p>','2021-01-25 11:55:13',9,99.9),(1611546568410,'2021-01-25 11:49:28','白玫瑰花束','白玫瑰','http://localhost:8080/ssm5n2mk/upload/1611546536278.jpg','白玫瑰33支，尤加利点缀','相恋一生','爱情','恋人',147,'<p>鲜花详情</p><p><img src=\"http://localhost:8080/ssm5n2mk/upload/1611546566625.jpg\"></p>','2021-01-25 13:14:48',6,520);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1611546730957 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`dizhi`,`money`) values (11,'2021-01-25 11:42:19','用户1','123456','姓名1','男','http://localhost:8080/ssm5n2mk/upload/yonghu_touxiang1.jpg','13823888881','地址1',100),(12,'2021-01-25 11:42:19','用户2','123456','姓名2','男','http://localhost:8080/ssm5n2mk/upload/yonghu_touxiang2.jpg','13823888882','地址2',100),(13,'2021-01-25 11:42:19','用户3','123456','姓名3','男','http://localhost:8080/ssm5n2mk/upload/yonghu_touxiang3.jpg','13823888883','地址3',100),(14,'2021-01-25 11:42:19','用户4','123456','姓名4','男','http://localhost:8080/ssm5n2mk/upload/yonghu_touxiang4.jpg','13823888884','地址4',100),(15,'2021-01-25 11:42:19','用户5','123456','姓名5','男','http://localhost:8080/ssm5n2mk/upload/yonghu_touxiang5.jpg','13823888885','地址5',100),(16,'2021-01-25 11:42:19','用户6','123456','姓名6','男','http://localhost:8080/ssm5n2mk/upload/yonghu_touxiang6.jpg','13823888886','地址6',100),(1611546730956,'2021-01-25 11:52:10','1','1','陈一','男','http://localhost:8080/ssm5n2mk/upload/1611546753317.jpg','12312312312','HJFHDJTFYG',1480);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
