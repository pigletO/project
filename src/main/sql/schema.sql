-- 创建图书表
CREATE TABLE `book` (
	`book_id` BIGINT (20) NOT NULL AUTO_INCREMENT COMMENT '图书ID',
	`name` VARCHAR (100) NOT NULL COMMENT '图书名称',
	`number` INT (11) NOT NULL COMMENT '馆藏数量',
	PRIMARY KEY (`book_id`)
) ENGINE = INNODB AUTO_INCREMENT = 1000 DEFAULT CHARSET = utf8 COMMENT = '图书表';

-- 初始化图书数据
INSERT INTO `book` (`book_id`, `name`, `number`)
VALUES
	(1000, 'Java程序设计', 10),
	(1001, '数据结构', 10),
	(1002, '设计模式', 10),
	(1003, '编译原理', 10);

-- 创建预约图书表
CREATE TABLE `appointment` (
	`book_id` BIGINT (20) NOT NULL COMMENT '图书ID',
	`student_id` BIGINT (20) NOT NULL COMMENT '学号',
	`appoint_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约时间',
	PRIMARY KEY (`book_id`, `student_id`),
	INDEX `idx_appoint_time` (`appoint_time`)
) ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '预约图书表';

-- 创建登录用户表
DROP TABLE IF EXISTS `t_loginuser`;
CREATE TABLE `t_loginuser` (
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `login_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 初始化登录用户数据
INSERT INTO `t_loginuser` VALUES ('hxszd', '123', null);

-- 商品基本信息表
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品编号 商品编号 主键自增',
  `goods_location` varchar(255) DEFAULT NULL COMMENT '商品位置',
  `goods_name` varchar(255) NOT NULL COMMENT '商品名称',
  `goods_size` varchar(255) NOT NULL COMMENT '商品型号 S M L XL XXL XXXL XXXXL',
  `goods_imgID` varchar(255) DEFAULT NULL COMMENT '商品图片ID 关联商品图片表',
  `create_user` varchar(255) DEFAULT NULL COMMENT '商品信息录入者',
  `create_date` datetime DEFAULT NULL COMMENT '商品信息录入时间',
  `modified_uer` varchar(255) DEFAULT NULL COMMENT '商品信息修改者',
  `modified_date` datetime DEFAULT NULL COMMENT '商品信息修改时间',
  `Memo` longblob COMMENT '备注 备注',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品基本信息表 存储商品基本信息';

--商品图片信息表
DROP TABLE IF EXISTS `t_imges`;
CREATE TABLE `t_imges` (
  `goods_imgID` int(11) DEFAULT NULL COMMENT '商品图片编号',
  `img_location` varchar(255) DEFAULT NULL COMMENT '商品图片路径',
  `img_name` varchar(255) DEFAULT NULL COMMENT '图片文件名 包含图片后缀名',
  `create_user` varchar(255) DEFAULT NULL COMMENT '图片创建者',
  `create_date` datetime DEFAULT NULL COMMENT '图片创建时间',
  `modified_user` varchar(255) DEFAULT NULL COMMENT '图片修改者',
  `modified_date` datetime DEFAULT NULL COMMENT '图片修改时间',
  `Memo` longblob COMMENT '注释'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品图片表 存储商品图片';

