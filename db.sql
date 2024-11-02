/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - cangkuguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cangkuguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cangkuguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-15 10:54:03'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-15 10:54:03'),(3,'goods_types','物资类型名称',1,'生产用物资',NULL,'2021-04-15 10:54:03'),(4,'goods_types','物资类型名称',2,'维修技措用物资',NULL,'2021-04-15 10:54:03'),(5,'goods_types','物资类型名称',3,'基本建设用物资',NULL,'2021-04-15 10:54:03'),(6,'goods_types','物资类型名称',4,'科学研究用物资',NULL,'2021-04-15 10:54:03'),(7,'goods_types','物资类型名称',5,'工艺装备用物资',NULL,'2021-04-15 10:54:03'),(8,'goods_types','物资类型名称',6,'其他',NULL,'2021-04-15 10:54:03'),(9,'order_types','订单类型名称',1,'出库',NULL,'2021-04-15 10:54:03'),(10,'order_types','订单类型名称',2,'入库',NULL,'2021-04-15 10:54:03'),(11,'goods_types','物资类型名称',8,'物资类型8',NULL,'2021-04-15 11:42:40');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '物品名字 Search111 ',
  `goods_types` int(11) DEFAULT NULL COMMENT '物品种类  Search111 ',
  `goods_number` int(11) DEFAULT NULL COMMENT '物资数量  Search111 ',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `danjia` decimal(10,2) DEFAULT NULL COMMENT '单价 Search111 ',
  `goods_content` varchar(200) DEFAULT NULL COMMENT '物资详情',
  `flag` int(11) DEFAULT NULL COMMENT '是否删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='物资';

/*Data for the table `goods` */

insert  into `goods`(`id`,`goods_name`,`goods_types`,`goods_number`,`goods_photo`,`danwei`,`danjia`,`goods_content`,`flag`,`create_time`) values (1,'物资1',1,10,'http://localhost:8080/cangkuguanlixitong/file/download?fileName=1618455813854.jpg','个','10.00','橘子的详情\r\n',1,'2021-04-15 11:08:33'),(2,'小米',5,90,'http://localhost:8080/cangkuguanlixitong/file/download?fileName=1618456650506.jpg','袋','40.00','小米的详情\r\n',1,'2021-04-15 11:17:56'),(3,'食用油',3,87,'http://localhost:8080/cangkuguanlixitong/file/download?fileName=1618456684307.jpg','桶','10.00','食用油的详情\r\n',1,'2021-04-15 11:18:51'),(4,'冷冻鱼',2,997,'http://localhost:8080/cangkuguanlixitong/file/download?fileName=1618456903166.jpg','条','20.00','冷冻鱼的详情\r\n',1,'2021-04-15 11:22:27'),(5,'五花肉',2,995,'http://localhost:8080/cangkuguanlixitong/file/download?fileName=1618457913205.jpg','块','15.00','五花肉的详情11111111112323232321313\r\n',1,'2021-04-15 11:38:59');

/*Table structure for table `in_out_order` */

DROP TABLE IF EXISTS `in_out_order`;

CREATE TABLE `in_out_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_name` varchar(200) DEFAULT NULL COMMENT '订单名  Search111 ',
  `caozuo_name` varchar(200) DEFAULT NULL COMMENT '操作人姓名  Search111 ',
  `caozuo_table` varchar(200) DEFAULT NULL COMMENT '操作人所在表名',
  `order_types` int(11) DEFAULT NULL COMMENT '类型  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '出入库时间  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='出入库订单';

/*Data for the table `in_out_order` */

insert  into `in_out_order`(`id`,`order_name`,`caozuo_name`,`caozuo_table`,`order_types`,`insert_time`,`create_time`) values (1,'入库1','admin','users',2,'2021-04-15 11:23:37','2021-04-15 11:23:37'),(2,'出库1','admin','users',1,'2021-04-15 11:25:31','2021-04-15 11:25:31'),(3,'入库2','admin','users',2,'2021-04-15 11:31:15','2021-04-15 11:31:15'),(4,'入库3','admin','users',2,'2021-04-15 11:39:35','2021-04-15 11:39:35'),(5,'2222','admin','users',2,'2021-04-15 11:40:21','2021-04-15 11:40:21'),(6,'出库9','admin','users',1,'2021-04-15 11:40:49','2021-04-15 11:40:49');

/*Table structure for table `in_out_order_list` */

DROP TABLE IF EXISTS `in_out_order_list`;

CREATE TABLE `in_out_order_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `in_out_order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `goods_id` int(11) DEFAULT NULL COMMENT '物资表id',
  `order_number` int(11) DEFAULT NULL COMMENT '数量  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='出入库订单详情';

/*Data for the table `in_out_order_list` */

insert  into `in_out_order_list`(`id`,`in_out_order_id`,`goods_id`,`order_number`,`create_time`) values (1,1,3,1,'2021-04-15 11:23:37'),(2,1,4,1,'2021-04-15 11:23:37'),(3,2,2,13,'2021-04-15 11:25:31'),(4,2,3,14,'2021-04-15 11:25:31'),(5,2,4,15,'2021-04-15 11:25:31'),(6,3,2,3,'2021-04-15 11:31:15'),(7,3,4,2,'2021-04-15 11:31:15'),(8,4,4,3,'2021-04-15 11:39:35'),(9,4,5,2,'2021-04-15 11:39:35'),(10,5,4,6,'2021-04-15 11:40:21'),(11,6,5,7,'2021-04-15 11:40:49');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','nj5kmgip25fkrgk33hbarp4vgbvbub3q','2021-04-15 11:02:57','2021-04-15 12:36:34'),(2,3,'a3','yonghu','用户','3qqtdn9uajkm5ujkanvs1ai9j8y0yvis','2021-04-15 11:44:24','2021-04-15 12:44:59');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-04-15 10:54:03','日常公告','日常公告','公告信息','2021-04-15 10:54:03'),(2,'2021-04-15 10:54:03','紧急公告','紧急公告','公告信息','2021-04-15 10:54:03'),(3,'2021-04-15 10:54:03','其他公告','其他公告','公告信息','2021-04-15 10:54:03'),(4,'2021-04-15 11:42:00','公告1','日常公告','公告内容1问我','2021-04-15 11:42:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/cangkuguanlixitong/file/download?fileName=1618457827328.jpg',2,'2021-04-15 11:37:08'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/cangkuguanlixitong/file/download?fileName=1618457845695.jpg',2,'2021-04-15 11:37:33'),(3,'a3','123456','张3222','17703786903','410224199610232003','http://localhost:8080/cangkuguanlixitong/file/download?fileName=1618458244349.jpg',1,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
