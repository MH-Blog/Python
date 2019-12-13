-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: mxshop
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add 短信验证',6,'add_verifycode'),(22,'Can change 短信验证',6,'change_verifycode'),(23,'Can delete 短信验证',6,'delete_verifycode'),(24,'Can view 短信验证',6,'view_verifycode'),(25,'Can add 用户信息',7,'add_userprofile'),(26,'Can change 用户信息',7,'change_userprofile'),(27,'Can delete 用户信息',7,'delete_userprofile'),(28,'Can view 用户信息',7,'view_userprofile'),(29,'Can add 商品信息',8,'add_goods'),(30,'Can change 商品信息',8,'change_goods'),(31,'Can delete 商品信息',8,'delete_goods'),(32,'Can view 商品信息',8,'view_goods'),(33,'Can add 商品类别',9,'add_goodscategory'),(34,'Can change 商品类别',9,'change_goodscategory'),(35,'Can delete 商品类别',9,'delete_goodscategory'),(36,'Can view 商品类别',9,'view_goodscategory'),(37,'Can add 热搜排行',10,'add_hotsearchwords'),(38,'Can change 热搜排行',10,'change_hotsearchwords'),(39,'Can delete 热搜排行',10,'delete_hotsearchwords'),(40,'Can view 热搜排行',10,'view_hotsearchwords'),(41,'Can add 首页广告',11,'add_indexad'),(42,'Can change 首页广告',11,'change_indexad'),(43,'Can delete 首页广告',11,'delete_indexad'),(44,'Can view 首页广告',11,'view_indexad'),(45,'Can add 商品轮播',12,'add_goodsimage'),(46,'Can change 商品轮播',12,'change_goodsimage'),(47,'Can delete 商品轮播',12,'delete_goodsimage'),(48,'Can view 商品轮播',12,'view_goodsimage'),(49,'Can add 宣传品牌',13,'add_goodscategorybrand'),(50,'Can change 宣传品牌',13,'change_goodscategorybrand'),(51,'Can delete 宣传品牌',13,'delete_goodscategorybrand'),(52,'Can view 宣传品牌',13,'view_goodscategorybrand'),(53,'Can add 首页轮播',14,'add_banner'),(54,'Can change 首页轮播',14,'change_banner'),(55,'Can delete 首页轮播',14,'delete_banner'),(56,'Can view 首页轮播',14,'view_banner'),(57,'Can add 订单商品',15,'add_ordergoods'),(58,'Can change 订单商品',15,'change_ordergoods'),(59,'Can delete 订单商品',15,'delete_ordergoods'),(60,'Can view 订单商品',15,'view_ordergoods'),(61,'Can add 订单信息',16,'add_orderinfo'),(62,'Can change 订单信息',16,'change_orderinfo'),(63,'Can delete 订单信息',16,'delete_orderinfo'),(64,'Can view 订单信息',16,'view_orderinfo'),(65,'Can add 购物车喵',17,'add_shoppingcart'),(66,'Can change 购物车喵',17,'change_shoppingcart'),(67,'Can delete 购物车喵',17,'delete_shoppingcart'),(68,'Can view 购物车喵',17,'view_shoppingcart'),(69,'Can add 收货地址',18,'add_useraddress'),(70,'Can change 收货地址',18,'change_useraddress'),(71,'Can delete 收货地址',18,'delete_useraddress'),(72,'Can view 收货地址',18,'view_useraddress'),(73,'Can add 用户收藏',19,'add_userfav'),(74,'Can change 用户收藏',19,'change_userfav'),(75,'Can delete 用户收藏',19,'delete_userfav'),(76,'Can view 用户收藏',19,'view_userfav'),(77,'Can add 用户留言',20,'add_userleavingmessage'),(78,'Can change 用户留言',20,'change_userleavingmessage'),(79,'Can delete 用户留言',20,'delete_userleavingmessage'),(80,'Can view 用户留言',20,'view_userleavingmessage'),(81,'Can add User Widget',21,'add_userwidget'),(82,'Can change User Widget',21,'change_userwidget'),(83,'Can delete User Widget',21,'delete_userwidget'),(84,'Can view User Widget',21,'view_userwidget'),(85,'Can add User Setting',22,'add_usersettings'),(86,'Can change User Setting',22,'change_usersettings'),(87,'Can delete User Setting',22,'delete_usersettings'),(88,'Can view User Setting',22,'view_usersettings'),(89,'Can add log entry',23,'add_log'),(90,'Can change log entry',23,'change_log'),(91,'Can delete log entry',23,'delete_log'),(92,'Can view log entry',23,'view_log'),(93,'Can add Bookmark',24,'add_bookmark'),(94,'Can change Bookmark',24,'change_bookmark'),(95,'Can delete Bookmark',24,'delete_bookmark'),(96,'Can view Bookmark',24,'view_bookmark');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(14,'goods','banner'),(8,'goods','goods'),(9,'goods','goodscategory'),(13,'goods','goodscategorybrand'),(12,'goods','goodsimage'),(10,'goods','hotsearchwords'),(11,'goods','indexad'),(5,'sessions','session'),(15,'trade','ordergoods'),(16,'trade','orderinfo'),(17,'trade','shoppingcart'),(7,'users','userprofile'),(6,'users','verifycode'),(18,'user_operation','useraddress'),(19,'user_operation','userfav'),(20,'user_operation','userleavingmessage'),(24,'xadmin','bookmark'),(23,'xadmin','log'),(22,'xadmin','usersettings'),(21,'xadmin','userwidget');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-12-11 16:22:34.887861'),(2,'contenttypes','0002_remove_content_type_name','2019-12-11 16:22:36.166892'),(3,'auth','0001_initial','2019-12-11 16:22:37.702441'),(4,'auth','0002_alter_permission_name_max_length','2019-12-11 16:22:42.705060'),(5,'auth','0003_alter_user_email_max_length','2019-12-11 16:22:42.760307'),(6,'auth','0004_alter_user_username_opts','2019-12-11 16:22:42.818718'),(7,'auth','0005_alter_user_last_login_null','2019-12-11 16:22:42.880469'),(8,'auth','0006_require_contenttypes_0002','2019-12-11 16:22:42.930685'),(9,'auth','0007_alter_validators_add_error_messages','2019-12-11 16:22:43.021659'),(10,'auth','0008_alter_user_username_max_length','2019-12-11 16:22:43.081480'),(11,'auth','0009_alter_user_last_name_max_length','2019-12-11 16:22:43.135915'),(12,'auth','0010_alter_group_name_max_length','2019-12-11 16:22:44.116188'),(13,'auth','0011_update_proxy_permissions','2019-12-11 16:22:44.165262'),(14,'users','0001_initial','2019-12-11 16:22:45.572376'),(15,'admin','0001_initial','2019-12-11 16:22:50.638436'),(16,'admin','0002_logentry_remove_auto_add','2019-12-11 16:22:52.986500'),(17,'admin','0003_logentry_add_action_flag_choices','2019-12-11 16:22:53.037120'),(18,'goods','0001_initial','2019-12-11 16:22:56.482731'),(19,'goods','0002_auto_20191211_1622','2019-12-11 16:23:05.504073'),(20,'sessions','0001_initial','2019-12-11 16:23:06.003105'),(21,'trade','0001_initial','2019-12-11 16:23:09.281109'),(22,'trade','0002_auto_20191211_0645','2019-12-11 16:23:15.805940'),(23,'user_operation','0001_initial','2019-12-11 16:23:21.333441'),(24,'user_operation','0002_auto_20191211_0645','2019-12-11 16:23:24.817548'),(25,'users','0002_remove_userprofile_name','2019-12-11 16:23:30.931873'),(26,'xadmin','0001_initial','2019-12-11 16:23:32.682921');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('r83ijufol8pfy1xfgcwk9bjw6xel50y7','YTEwNWQzNDI4Yzk4YTE3ZWNhNzljMWY4OTg1ODI5MTZmZjE4NWZiNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmODJhMmNiZDQxZWQzYzY5ZjRmMzQ0YzU0ZTc1NzIyYjc3M2Q2ZGM4IiwiTElTVF9RVUVSWSI6W1siZ29vZHMiLCJnb29kcyJdLCIiXX0=','2019-12-27 15:32:35.682426');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_banner`
--

DROP TABLE IF EXISTS `goods_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_banner_goods_id_99e23129_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_banner_goods_id_99e23129_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_banner`
--

LOCK TABLES `goods_banner` WRITE;
/*!40000 ALTER TABLE `goods_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_goods`
--

DROP TABLE IF EXISTS `goods_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `click_num` int(11) NOT NULL,
  `sold_num` int(11) NOT NULL,
  `fav_num` int(11) NOT NULL,
  `goods_num` int(11) NOT NULL,
  `market_price` double NOT NULL,
  `shop_price` double NOT NULL,
  `goods_brief` longtext NOT NULL,
  `goods_desc` longtext NOT NULL,
  `ship_free` tinyint(1) NOT NULL,
  `goods_front_image` varchar(100) DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` (`category_id`),
  CONSTRAINT `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_goods`
--

LOCK TABLES `goods_goods` WRITE;
/*!40000 ALTER TABLE `goods_goods` DISABLE KEYS */;
INSERT INTO `goods_goods` VALUES (1,'','新鲜水果甜蜜香脆单果约800克',0,0,0,0,232,156,'食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/1_P_1449024889889.jpg',0,0,'2019-12-11 17:51:31.373979',20),(2,'','田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛',0,0,0,0,106,88,'前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/2_P_1448945810202.jpg',0,0,'2019-12-11 17:51:31.722319',7),(3,'','酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐',0,0,0,0,286,238,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/7_P_1448945104883.jpg',0,0,'2019-12-11 17:51:31.847601',15),(4,'','日本蒜蓉粉丝扇贝270克6只装',0,0,0,0,156,108,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/47_P_1448946213263.jpg',0,0,'2019-12-11 17:51:31.972658',20),(5,'','内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材',0,0,0,0,106,88,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/10_P_1448944572085.jpg',0,0,'2019-12-11 17:51:32.097850',7),(6,'','乌拉圭进口牛肉卷特级肥牛卷',0,0,0,0,90,75,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/4_P_1448945381985.jpg',0,0,'2019-12-11 17:51:32.264895',21),(7,'','五星眼肉牛排套餐8片装原味原切生鲜牛肉',0,0,0,0,150,125,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/8_P_1448945032810.jpg',0,0,'2019-12-11 17:51:32.398409',23),(8,'','澳洲进口120天谷饲牛仔骨4份原味生鲜',0,0,0,0,31,26,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/11_P_1448944388277.jpg',0,0,'2019-12-11 17:51:32.523553',7),(9,'','潮香村澳洲进口牛排家庭团购套餐20片',0,0,0,0,239,199,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/6_P_1448945167279.jpg',0,0,'2019-12-11 17:51:32.715370',22),(10,'','爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g',0,0,0,0,202,168,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/9_P_1448944791617.jpg',0,0,'2019-12-11 17:51:32.882202',20),(11,'','澳洲进口牛尾巴300g新鲜肥牛肉',0,0,0,0,306,255,'新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/3_P_1448945490837.jpg',0,0,'2019-12-11 17:51:33.132648',2),(12,'','新疆巴尔鲁克生鲜牛排眼肉牛扒1200g',0,0,0,0,126,88,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/48_P_1448943988970.jpg',0,0,'2019-12-11 17:51:33.324425',7),(13,'','澳洲进口安格斯牛切片上脑牛排1000g',0,0,0,0,144,120,'澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/5_P_1448945270390.jpg',0,0,'2019-12-11 17:51:33.541379',12),(14,'','帐篷出租',0,0,0,0,120,100,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'images/201705/goods_img/53_P_1495068879687.jpg',0,0,'2019-12-11 17:51:33.741656',21),(15,'','52度茅台集团国隆双喜酒500mlx6',0,0,0,0,23,19,'贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/16_P_1448947194687.jpg',0,0,'2019-12-11 17:51:33.841759',37),(16,'','52度水井坊臻酿八號500ml',0,0,0,0,43,36,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/14_P_1448947354031.jpg',0,0,'2019-12-11 17:51:33.950337',36),(17,'','53度茅台仁酒500ml',0,0,0,0,190,158,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/12_P_1448947547989.jpg',0,0,'2019-12-11 17:51:34.108659',32),(18,'','双响炮洋酒JimBeamwhiskey美国白占边',0,0,0,0,38,28,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/46_P_1448946598711.jpg',0,0,'2019-12-11 17:51:34.225600',29),(19,'','西夫拉姆进口洋酒小酒版',0,0,0,0,55,46,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/21_P_1448946793276.jpg',0,0,'2019-12-11 17:51:34.375620',36),(20,'','茅台53度飞天茅台500ml',0,0,0,0,22,18,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/15_P_1448947257324.jpg',0,0,'2019-12-11 17:51:34.543158',30),(21,'','52度兰陵·紫气东来1600mL山东名酒',0,0,0,0,42,35,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/13_P_1448947460386.jpg',0,0,'2019-12-11 17:51:34.743458',29),(22,'','JohnnieWalker尊尼获加黑牌威士忌',0,0,0,0,24,20,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/50_P_1448946543091.jpg',0,0,'2019-12-11 17:51:34.960301',36),(23,'','人头马CLUB特优香槟干邑350ml',0,0,0,0,31,26,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/51_P_1448946466595.jpg',0,0,'2019-12-11 17:51:35.110514',30),(24,'','张裕干红葡萄酒750ml*6支',0,0,0,0,54,45,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/17_P_1448947102246.jpg',0,0,'2019-12-11 17:51:35.310753',31),(25,'','原瓶原装进口洋酒烈酒法国云鹿XO白兰地',0,0,0,0,46,38,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/20_P_1448946850602.jpg',0,0,'2019-12-11 17:51:35.410770',29),(26,'','法国原装进口圣贝克干红葡萄酒750ml',0,0,0,0,82,68,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/19_P_1448946951581.jpg',0,0,'2019-12-11 17:51:35.510863',25),(27,'','法国百利威干红葡萄酒AOP级6支装',0,0,0,0,67,56,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/18_P_1448947011435.jpg',0,0,'2019-12-11 17:51:35.661015',25),(28,'','芝华士12年苏格兰威士忌700ml',0,0,0,0,71,59,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/22_P_1448946729629.jpg',0,0,'2019-12-11 17:51:35.761160',30),(29,'','深蓝伏特加巴维兰利口酒送预调酒',0,0,0,0,31,18,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/45_P_1448946661303.jpg',0,0,'2019-12-11 17:51:35.861496',36),(30,'','赣南脐橙特级果10斤装',0,0,0,0,43,36,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/32_P_1448948525620.jpg',0,0,'2019-12-11 17:51:36.070249',62),(31,'','泰国菠萝蜜16-18斤1个装',0,0,0,0,11,9,'【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/30_P_1448948663450.jpg',0,0,'2019-12-11 17:51:36.186905',66),(32,'','四川双流草莓新鲜水果礼盒2盒',0,0,0,0,22,18,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/31_P_1448948598947.jpg',0,0,'2019-12-11 17:51:36.395645',70),(33,'','新鲜头茬非洲冰草冰菜',0,0,0,0,67,56,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/35_P_1448948333610.jpg',0,0,'2019-12-11 17:51:36.562698',58),(34,'','仿真蔬菜水果果蔬菜模型',0,0,0,0,6,5,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/36_P_1448948234405.jpg',0,0,'2019-12-11 17:51:36.737715',58),(35,'','现摘芭乐番石榴台湾珍珠芭乐',0,0,0,0,28,23,'海南产精品释迦果,\n        释迦是水果中的贵族,\n        产量少,\n        味道很甜,\n        奶香十足,\n        非常可口,\n        果裹果园顺丰空运,\n        保证新鲜.果子个大,\n        一斤1-2个左右,\n        大个头的果子更尽兴!\n        ','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/33_P_1448948479966.jpg',0,0,'2019-12-11 17:51:36.896255',62),(36,'','潍坊萝卜5斤/箱礼盒',0,0,0,0,46,38,'脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/34_P_1448948399009.jpg',0,0,'2019-12-11 17:51:37.088156',70),(37,'','休闲零食膨化食品焦糖/奶油/椒麻味',0,0,0,0,154,99,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/43_P_1448948762645.jpg',0,0,'2019-12-11 17:51:37.213371',74),(38,'','蒙牛未来星儿童成长牛奶骨力型190ml*15盒',0,0,0,0,84,70,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/38_P_1448949220255.jpg',0,0,'2019-12-11 17:51:37.296724',105),(39,'','蒙牛特仑苏有机奶250ml×12盒',0,0,0,0,70,32,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/44_P_1448948850187.jpg',0,0,'2019-12-11 17:51:37.396873',103),(40,'','1元支付测试商品',0,0,0,0,1,1,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'images/201511/goods_img/49_P_1448162819889.jpg',0,0,'2019-12-11 17:51:37.480360',102),(41,'','德运全脂新鲜纯牛奶1L*10盒装整箱',0,0,0,0,70,58,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/40_P_1448949038702.jpg',0,0,'2019-12-11 17:51:37.580348',103),(42,'','木糖醇红枣早餐奶即食豆奶粉538g',0,0,0,0,38,32,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/39_P_1448949115481.jpg',0,0,'2019-12-11 17:51:37.663883',106),(43,'','高钙液体奶200ml*24盒',0,0,0,0,26,22,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/41_P_1448948980358.jpg',0,0,'2019-12-11 17:51:37.747306',107),(44,'','新西兰进口全脂奶粉900g',0,0,0,0,720,600,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/37_P_1448949284365.jpg',0,0,'2019-12-11 17:51:37.855817',104),(45,'','伊利官方直营全脂营养舒化奶250ml*12盒*2提',0,0,0,0,43,36,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/42_P_1448948895193.jpg',0,0,'2019-12-11 17:51:37.939251',103),(46,'','维纳斯橄榄菜籽油5L/桶',0,0,0,0,187,156,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/27_P_1448947771805.jpg',0,0,'2019-12-11 17:51:38.022673',51),(47,'','糙米450gx3包粮油米面',0,0,0,0,18,15,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/23_P_1448948070348.jpg',0,0,'2019-12-11 17:51:38.114504',41),(48,'','精炼一级大豆油5L色拉油粮油食用油',0,0,0,0,54,45,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/26_P_1448947825754.jpg',0,0,'2019-12-11 17:51:38.222895',56),(49,'','橄榄玉米油5L*2桶',0,0,0,0,31,26,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/28_P_1448947699948.jpg',0,0,'2019-12-11 17:51:38.314749',54),(50,'','山西黑米农家黑米4斤',0,0,0,0,11,9,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/24_P_1448948023823.jpg',0,0,'2019-12-11 17:51:38.439851',55),(51,'','稻园牌稻米油粮油米糠油绿色植物油',0,0,0,0,14,12,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/25_P_1448947875346.jpg',0,0,'2019-12-11 17:51:38.573491',47),(52,'','融氏纯玉米胚芽油5l桶',0,0,0,0,14,12,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/29_P_1448947631994.jpg',0,0,'2019-12-11 17:51:38.656916',41);
/*!40000 ALTER TABLE `goods_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_goodsbrand`
--

DROP TABLE IF EXISTS `goods_goodsbrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_goodsbrand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `desc` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` (`category_id`),
  CONSTRAINT `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_goodsbrand`
--

LOCK TABLES `goods_goodsbrand` WRITE;
/*!40000 ALTER TABLE `goods_goodsbrand` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_goodsbrand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_goodscategory`
--

DROP TABLE IF EXISTS `goods_goodscategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_goodscategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `code` varchar(30) NOT NULL,
  `desc` longtext NOT NULL,
  `category_type` int(11) NOT NULL,
  `is_tab` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` (`parent_category_id`),
  CONSTRAINT `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` FOREIGN KEY (`parent_category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_goodscategory`
--

LOCK TABLES `goods_goodscategory` WRITE;
/*!40000 ALTER TABLE `goods_goodscategory` DISABLE KEYS */;
INSERT INTO `goods_goodscategory` VALUES (1,'生鲜食品','sxsp','',1,0,'2019-12-11 16:32:33.170740',NULL),(2,'精品肉类','jprl','',2,0,'2019-12-11 16:32:33.230999',1),(3,'羊肉','yr','',3,0,'2019-12-11 16:32:33.272904',2),(4,'禽类','ql','',3,0,'2019-12-11 16:32:33.397878',2),(5,'猪肉','zr','',3,0,'2019-12-11 16:32:33.440159',2),(6,'牛肉','nr','',3,0,'2019-12-11 16:32:33.490396',2),(7,'海鲜水产','hxsc','',2,0,'2019-12-11 16:32:33.531934',1),(8,'参鲍','cb','',3,0,'2019-12-11 16:32:33.573842',7),(9,'鱼','yu','',3,0,'2019-12-11 16:32:33.615564',7),(10,'虾','xia','',3,0,'2019-12-11 16:32:33.657281',7),(11,'蟹/贝','xb','',3,0,'2019-12-11 16:32:33.699139',7),(12,'蛋制品','dzp','',2,0,'2019-12-11 16:32:33.799272',1),(13,'松花蛋/咸鸭蛋','xhd_xyd','',3,0,'2019-12-11 16:32:33.840987',12),(14,'鸡蛋','jd','',3,0,'2019-12-11 16:32:33.882710',12),(15,'叶菜类','ycl','',2,0,'2019-12-11 16:32:33.924610',1),(16,'生菜','sc','',3,0,'2019-12-11 16:32:33.966228',15),(17,'菠菜','bc','',3,0,'2019-12-11 16:32:34.007997',15),(18,'圆椒','yj','',3,0,'2019-12-11 16:32:34.049802',15),(19,'西兰花','xlh','',3,0,'2019-12-11 16:32:34.091445',15),(20,'根茎类','gjl','',2,0,'2019-12-11 16:32:34.133254',1),(21,'茄果类','qgl','',2,0,'2019-12-11 16:32:34.191659',1),(22,'菌菇类','jgl','',2,0,'2019-12-11 16:32:34.250055',1),(23,'进口生鲜','jksx','',2,0,'2019-12-11 16:32:34.300088',1),(24,'酒水饮料','jsyl','',1,0,'2019-12-11 16:32:34.350209',NULL),(25,'白酒','bk','',2,0,'2019-12-11 16:32:34.400130',24),(26,'五粮液','wly','',3,0,'2019-12-11 16:32:34.450202',25),(27,'泸州老窖','lzlj','',3,0,'2019-12-11 16:32:34.516972',25),(28,'茅台','mt','',3,0,'2019-12-11 16:32:34.566921',25),(29,'葡萄酒','ptj','',2,0,'2019-12-11 16:32:34.617171',24),(30,'洋酒','yj','',2,0,'2019-12-11 16:32:34.667247',24),(31,'啤酒','pj','',2,0,'2019-12-11 16:32:34.717392',24),(32,'其他酒品','qtjp','',2,0,'2019-12-11 16:32:34.817684',24),(33,'其他品牌','qtpp','',3,0,'2019-12-11 16:32:34.900913',32),(34,'黄酒','hj','',3,0,'2019-12-11 16:32:34.951024',32),(35,'养生酒','ysj','',3,0,'2019-12-11 16:32:35.001051',32),(36,'饮料/水','yls','',2,0,'2019-12-11 16:32:35.051173',24),(37,'红酒','hj','',2,0,'2019-12-11 16:32:35.101124',24),(38,'白兰地','bld','',3,0,'2019-12-11 16:32:35.151292',37),(39,'威士忌','wsj','',3,0,'2019-12-11 16:32:35.201380',37),(40,'粮油副食','粮油副食','',1,0,'2019-12-11 16:32:35.251433',NULL),(41,'食用油','食用油','',2,0,'2019-12-11 16:32:35.301428',40),(42,'其他食用油','其他食用油','',3,0,'2019-12-11 16:32:35.351581',41),(43,'菜仔油','菜仔油','',3,0,'2019-12-11 16:32:35.401512',41),(44,'花生油','花生油','',3,0,'2019-12-11 16:32:35.451647',41),(45,'橄榄油','橄榄油','',3,0,'2019-12-11 16:32:35.501603',41),(46,'礼盒','礼盒','',3,0,'2019-12-11 16:32:35.551773',41),(47,'米面杂粮','米面杂粮','',2,0,'2019-12-11 16:32:35.601685',40),(48,'面粉/面条','面粉/面条','',3,0,'2019-12-11 16:32:35.651925',47),(49,'大米','大米','',3,0,'2019-12-11 16:32:35.701872',47),(50,'意大利面','意大利面','',3,0,'2019-12-11 16:32:35.827173',47),(51,'厨房调料','厨房调料','',2,0,'2019-12-11 16:32:35.952231',40),(52,'调味油/汁','调味油/汁','',3,0,'2019-12-11 16:32:36.052442',51),(53,'酱油/醋','酱油/醋','',3,0,'2019-12-11 16:32:36.169318',51),(54,'南北干货','南北干货','',2,0,'2019-12-11 16:32:36.294242',40),(55,'方便速食','方便速食','',2,0,'2019-12-11 16:32:36.486192',40),(56,'调味品','调味品','',2,0,'2019-12-11 16:32:36.619634',40),(57,'蔬菜水果','蔬菜水果','',1,0,'2019-12-11 16:32:36.719780',NULL),(58,'有机蔬菜','有机蔬菜','',2,0,'2019-12-11 16:32:36.845314',57),(59,'西红柿','西红柿','',3,0,'2019-12-11 16:32:36.962060',58),(60,'韭菜','韭菜','',3,0,'2019-12-11 16:32:37.012158',58),(61,'青菜','青菜','',3,0,'2019-12-11 16:32:37.078950',58),(62,'精选蔬菜','精选蔬菜','',2,0,'2019-12-11 16:32:37.129010',57),(63,'甘蓝','甘蓝','',3,0,'2019-12-11 16:32:37.179323',62),(64,'胡萝卜','胡萝卜','',3,0,'2019-12-11 16:32:37.237523',62),(65,'黄瓜','黄瓜','',3,0,'2019-12-11 16:32:37.329461',62),(66,'进口水果','进口水果','',2,0,'2019-12-11 16:32:37.404549',57),(67,'火龙果','火龙果','',3,0,'2019-12-11 16:32:37.470895',66),(68,'菠萝蜜','菠萝蜜','',3,0,'2019-12-11 16:32:37.521018',66),(69,'奇异果','奇异果','',3,0,'2019-12-11 16:32:37.571046',66),(70,'国产水果','国产水果','',2,0,'2019-12-11 16:32:37.621278',57),(71,'水果礼盒','水果礼盒','',3,0,'2019-12-11 16:32:37.671330',70),(72,'苹果','苹果','',3,0,'2019-12-11 16:32:37.721317',70),(73,'雪梨','雪梨','',3,0,'2019-12-11 16:32:37.813166',70),(74,'休闲食品','休闲食品','',1,0,'2019-12-11 16:32:37.863262',NULL),(75,'休闲零食','休闲零食','',2,0,'2019-12-11 16:32:37.913269',74),(76,'果冻','果冻','',3,0,'2019-12-11 16:32:37.963548',75),(77,'枣类','枣类','',3,0,'2019-12-11 16:32:38.030290',75),(78,'蜜饯','蜜饯','',3,0,'2019-12-11 16:32:38.096812',75),(79,'肉类零食','肉类零食','',3,0,'2019-12-11 16:32:38.146767',75),(80,'坚果炒货','坚果炒货','',3,0,'2019-12-11 16:32:38.197065',75),(81,'糖果','糖果','',2,0,'2019-12-11 16:32:38.246992',74),(82,'创意喜糖','创意喜糖','',3,0,'2019-12-11 16:32:38.297034',81),(83,'口香糖','口香糖','',3,0,'2019-12-11 16:32:38.347040',81),(84,'软糖','软糖','',3,0,'2019-12-11 16:32:38.397222',81),(85,'棒棒糖','棒棒糖','',3,0,'2019-12-11 16:32:38.447269',81),(86,'巧克力','巧克力','',2,0,'2019-12-11 16:32:38.590378',74),(87,'夹心巧克力','夹心巧克力','',3,0,'2019-12-11 16:32:38.622496',86),(88,'白巧克力','白巧克力','',3,0,'2019-12-11 16:32:38.680807',86),(89,'松露巧克力','松露巧克力','',3,0,'2019-12-11 16:32:38.739344',86),(90,'黑巧克力','黑巧克力','',3,0,'2019-12-11 16:32:38.814217',86),(91,'肉干肉脯/豆干','肉干肉脯/豆干','',2,0,'2019-12-11 16:32:38.856207',74),(92,'牛肉干','牛肉干','',3,0,'2019-12-11 16:32:38.914455',91),(93,'猪肉脯','猪肉脯','',3,0,'2019-12-11 16:32:38.956155',91),(94,'牛肉粒','牛肉粒','',3,0,'2019-12-11 16:32:38.997991',91),(95,'猪肉干','猪肉干','',3,0,'2019-12-11 16:32:39.039705',91),(96,'鱿鱼丝/鱼干','鱿鱼丝/鱼干','',2,0,'2019-12-11 16:32:39.081372',74),(97,'鱿鱼足','鱿鱼足','',3,0,'2019-12-11 16:32:39.123064',96),(98,'鱿鱼丝','鱿鱼丝','',3,0,'2019-12-11 16:32:39.164835',96),(99,'墨鱼/乌贼','墨鱼/乌贼','',3,0,'2019-12-11 16:32:39.206630',96),(100,'鱿鱼仔','鱿鱼仔','',3,0,'2019-12-11 16:32:39.248245',96),(101,'鱿鱼片','鱿鱼片','',3,0,'2019-12-11 16:32:39.290684',96),(102,'奶类食品','奶类食品','',1,0,'2019-12-11 16:32:39.331674',NULL),(103,'进口奶品','进口奶品','',2,0,'2019-12-11 16:32:39.373447',102),(104,'国产奶品','国产奶品','',2,0,'2019-12-11 16:32:39.415233',102),(105,'奶粉','奶粉','',2,0,'2019-12-11 16:32:39.456943',102),(106,'有机奶','有机奶','',2,0,'2019-12-11 16:32:39.498643',102),(107,'原料奶','原料奶','',2,0,'2019-12-11 16:32:39.540325',102),(108,'天然干货','天然干货','',1,0,'2019-12-11 16:32:39.582101',NULL),(109,'菌菇类','菌菇类','',2,0,'2019-12-11 16:32:39.623840',108),(110,'腌干海产','腌干海产','',2,0,'2019-12-11 16:32:39.665492',108),(111,'汤料','汤料','',2,0,'2019-12-11 16:32:39.707289',108),(112,'豆类','豆类','',2,0,'2019-12-11 16:32:39.799287',108),(113,'干菜/菜干','干菜/菜干','',2,0,'2019-12-11 16:32:39.857598',108),(114,'干果/果干','干果/果干','',2,0,'2019-12-11 16:32:39.899665',108),(115,'豆制品','豆制品','',2,0,'2019-12-11 16:32:39.941211',108),(116,'腊味','腊味','',2,0,'2019-12-11 16:32:39.999394',108),(117,'精选茗茶','精选茗茶','',1,0,'2019-12-11 16:32:40.041164',NULL),(118,'白茶','白茶','',2,0,'2019-12-11 16:32:40.082834',117),(119,'红茶','红茶','',2,0,'2019-12-11 16:32:40.141432',117),(120,'绿茶','绿茶','',2,0,'2019-12-11 16:32:40.199868',117);
/*!40000 ALTER TABLE `goods_goodscategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_goodsimage`
--

DROP TABLE IF EXISTS `goods_goodsimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_goodsimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_goodsimage`
--

LOCK TABLES `goods_goodsimage` WRITE;
/*!40000 ALTER TABLE `goods_goodsimage` DISABLE KEYS */;
INSERT INTO `goods_goodsimage` VALUES (1,'goods/images/1_P_1449024889889.jpg','2019-12-11 17:51:31.430492',1),(2,'goods/images/1_P_1449024889264.jpg','2019-12-11 17:51:31.472028',1),(3,'goods/images/1_P_1449024889726.jpg','2019-12-11 17:51:31.513785',1),(4,'goods/images/1_P_1449024889018.jpg','2019-12-11 17:51:31.638765',1),(5,'goods/images/1_P_1449024889287.jpg','2019-12-11 17:51:31.681398',1),(6,'goods/images/2_P_1448945810202.jpg','2019-12-11 17:51:31.764135',2),(7,'goods/images/2_P_1448945810814.jpg','2019-12-11 17:51:31.806016',2),(8,'goods/images/7_P_1448945104883.jpg','2019-12-11 17:51:31.889197',3),(9,'goods/images/7_P_1448945104734.jpg','2019-12-11 17:51:31.930803',3),(10,'goods/images/47_P_1448946213263.jpg','2019-12-11 17:51:32.014317',4),(11,'goods/images/47_P_1448946213157.jpg','2019-12-11 17:51:32.056124',4),(12,'goods/images/10_P_1448944572085.jpg','2019-12-11 17:51:32.139603',5),(13,'goods/images/10_P_1448944572532.jpg','2019-12-11 17:51:32.181288',5),(14,'goods/images/10_P_1448944572872.jpg','2019-12-11 17:51:32.223096',5),(15,'goods/images/4_P_1448945381985.jpg','2019-12-11 17:51:32.306557',6),(16,'goods/images/4_P_1448945381013.jpg','2019-12-11 17:51:32.348545',6),(17,'goods/images/8_P_1448945032810.jpg','2019-12-11 17:51:32.440100',7),(18,'goods/images/8_P_1448945032646.jpg','2019-12-11 17:51:32.481770',7),(19,'goods/images/11_P_1448944388277.jpg','2019-12-11 17:51:32.565129',8),(20,'goods/images/11_P_1448944388034.jpg','2019-12-11 17:51:32.623632',8),(21,'goods/images/11_P_1448944388201.jpg','2019-12-11 17:51:32.665284',8),(22,'goods/images/6_P_1448945167279.jpg','2019-12-11 17:51:32.782142',9),(23,'goods/images/6_P_1448945167015.jpg','2019-12-11 17:51:32.832329',9),(24,'goods/images/9_P_1448944791617.jpg','2019-12-11 17:51:32.932297',10),(25,'goods/images/9_P_1448944791129.jpg','2019-12-11 17:51:32.982429',10),(26,'goods/images/9_P_1448944791077.jpg','2019-12-11 17:51:33.032412',10),(27,'goods/images/9_P_1448944791229.jpg','2019-12-11 17:51:33.082554',10),(28,'goods/images/3_P_1448945490837.jpg','2019-12-11 17:51:33.182645',11),(29,'goods/images/3_P_1448945490084.jpg','2019-12-11 17:51:33.274437',11),(30,'goods/images/48_P_1448943988970.jpg','2019-12-11 17:51:33.374546',12),(31,'goods/images/48_P_1448943988898.jpg','2019-12-11 17:51:33.441317',12),(32,'goods/images/48_P_1448943988439.jpg','2019-12-11 17:51:33.491297',12),(33,'goods/images/5_P_1448945270390.jpg','2019-12-11 17:51:33.591542',13),(34,'goods/images/5_P_1448945270067.jpg','2019-12-11 17:51:33.641483',13),(35,'goods/images/5_P_1448945270432.jpg','2019-12-11 17:51:33.691496',13),(36,'images/201705/goods_img/53_P_1495068879687.jpg','2019-12-11 17:51:33.791604',14),(37,'goods/images/16_P_1448947194687.jpg','2019-12-11 17:51:33.902419',15),(38,'goods/images/14_P_1448947354031.jpg','2019-12-11 17:51:34.008547',16),(39,'goods/images/14_P_1448947354433.jpg','2019-12-11 17:51:34.058604',16),(40,'goods/images/12_P_1448947547989.jpg','2019-12-11 17:51:34.175502',17),(41,'goods/images/46_P_1448946598711.jpg','2019-12-11 17:51:34.275637',18),(42,'goods/images/46_P_1448946598301.jpg','2019-12-11 17:51:34.325550',18),(43,'goods/images/21_P_1448946793276.jpg','2019-12-11 17:51:34.442437',19),(44,'goods/images/21_P_1448946793153.jpg','2019-12-11 17:51:34.493182',19),(45,'goods/images/15_P_1448947257324.jpg','2019-12-11 17:51:34.626613',20),(46,'goods/images/15_P_1448947257580.jpg','2019-12-11 17:51:34.693429',20),(47,'goods/images/13_P_1448947460386.jpg','2019-12-11 17:51:34.793468',21),(48,'goods/images/13_P_1448947460276.jpg','2019-12-11 17:51:34.843702',21),(49,'goods/images/13_P_1448947460353.jpg','2019-12-11 17:51:34.902016',21),(50,'goods/images/50_P_1448946543091.jpg','2019-12-11 17:51:35.010384',22),(51,'goods/images/50_P_1448946542182.jpg','2019-12-11 17:51:35.060390',22),(52,'goods/images/51_P_1448946466595.jpg','2019-12-11 17:51:35.160511',23),(53,'goods/images/51_P_1448946466208.jpg','2019-12-11 17:51:35.260580',23),(54,'goods/images/17_P_1448947102246.jpg','2019-12-11 17:51:35.361051',24),(55,'goods/images/20_P_1448946850602.jpg','2019-12-11 17:51:35.460802',25),(56,'goods/images/19_P_1448946951581.jpg','2019-12-11 17:51:35.560862',26),(57,'goods/images/19_P_1448946951726.jpg','2019-12-11 17:51:35.610942',26),(58,'goods/images/18_P_1448947011435.jpg','2019-12-11 17:51:35.711081',27),(59,'goods/images/22_P_1448946729629.jpg','2019-12-11 17:51:35.811247',28),(60,'goods/images/45_P_1448946661303.jpg','2019-12-11 17:51:35.961623',29),(61,'goods/images/32_P_1448948525620.jpg','2019-12-11 17:51:36.136719',30),(62,'goods/images/30_P_1448948663450.jpg','2019-12-11 17:51:36.245348',31),(63,'goods/images/30_P_1448948662571.jpg','2019-12-11 17:51:36.295315',31),(64,'goods/images/30_P_1448948663221.jpg','2019-12-11 17:51:36.345444',31),(65,'goods/images/31_P_1448948598947.jpg','2019-12-11 17:51:36.453890',32),(66,'goods/images/31_P_1448948598475.jpg','2019-12-11 17:51:36.503952',32),(67,'goods/images/35_P_1448948333610.jpg','2019-12-11 17:51:36.620761',33),(68,'goods/images/35_P_1448948333313.jpg','2019-12-11 17:51:36.679395',33),(69,'goods/images/36_P_1448948234405.jpg','2019-12-11 17:51:36.804324',34),(70,'goods/images/36_P_1448948234250.jpg','2019-12-11 17:51:36.846142',34),(71,'goods/images/33_P_1448948479966.jpg','2019-12-11 17:51:36.979572',35),(72,'goods/images/33_P_1448948479886.jpg','2019-12-11 17:51:37.021214',35),(73,'goods/images/34_P_1448948399009.jpg','2019-12-11 17:51:37.171568',36),(74,'goods/images/43_P_1448948762645.jpg','2019-12-11 17:51:37.254922',37),(75,'goods/images/38_P_1448949220255.jpg','2019-12-11 17:51:37.338566',38),(76,'goods/images/44_P_1448948850187.jpg','2019-12-11 17:51:37.438518',39),(77,'images/201511/goods_img/49_P_1448162819889.jpg','2019-12-11 17:51:37.538645',40),(78,'goods/images/40_P_1448949038702.jpg','2019-12-11 17:51:37.623135',41),(79,'goods/images/39_P_1448949115481.jpg','2019-12-11 17:51:37.705548',42),(80,'goods/images/41_P_1448948980358.jpg','2019-12-11 17:51:37.797599',43),(81,'goods/images/37_P_1448949284365.jpg','2019-12-11 17:51:37.897523',44),(82,'goods/images/42_P_1448948895193.jpg','2019-12-11 17:51:37.980915',45),(83,'goods/images/27_P_1448947771805.jpg','2019-12-11 17:51:38.064447',46),(84,'goods/images/23_P_1448948070348.jpg','2019-12-11 17:51:38.164548',47),(85,'goods/images/26_P_1448947825754.jpg','2019-12-11 17:51:38.264611',48),(86,'goods/images/28_P_1448947699948.jpg','2019-12-11 17:51:38.356567',49),(87,'goods/images/28_P_1448947699777.jpg','2019-12-11 17:51:38.398083',49),(88,'goods/images/24_P_1448948023823.jpg','2019-12-11 17:51:38.489889',50),(89,'goods/images/24_P_1448948023977.jpg','2019-12-11 17:51:38.531613',50),(90,'goods/images/25_P_1448947875346.jpg','2019-12-11 17:51:38.615240',51),(91,'goods/images/29_P_1448947631994.jpg','2019-12-11 17:51:38.698594',52);
/*!40000 ALTER TABLE `goods_goodsimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_hotsearchwords`
--

DROP TABLE IF EXISTS `goods_hotsearchwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_hotsearchwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(20) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_hotsearchwords`
--

LOCK TABLES `goods_hotsearchwords` WRITE;
/*!40000 ALTER TABLE `goods_hotsearchwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_hotsearchwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_indexad`
--

DROP TABLE IF EXISTS `goods_indexad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_indexad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` (`category_id`),
  KEY `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`),
  CONSTRAINT `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_indexad`
--

LOCK TABLES `goods_indexad` WRITE;
/*!40000 ALTER TABLE `goods_indexad` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_indexad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_ordergoods`
--

DROP TABLE IF EXISTS `trade_ordergoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_ordergoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id` (`goods_id`),
  KEY `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` (`order_id`),
  CONSTRAINT `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` FOREIGN KEY (`order_id`) REFERENCES `trade_orderinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_ordergoods`
--

LOCK TABLES `trade_ordergoods` WRITE;
/*!40000 ALTER TABLE `trade_ordergoods` DISABLE KEYS */;
/*!40000 ALTER TABLE `trade_ordergoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_orderinfo`
--

DROP TABLE IF EXISTS `trade_orderinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_orderinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(30) DEFAULT NULL,
  `nonce_str` varchar(50) DEFAULT NULL,
  `trade_no` varchar(100) DEFAULT NULL,
  `pay_status` varchar(30) NOT NULL,
  `pay_type` varchar(10) NOT NULL,
  `post_script` varchar(200) NOT NULL,
  `order_mount` double NOT NULL,
  `pay_time` datetime(6) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `signer_name` varchar(20) NOT NULL,
  `singer_mobile` varchar(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  UNIQUE KEY `nonce_str` (`nonce_str`),
  UNIQUE KEY `trade_no` (`trade_no`),
  KEY `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_orderinfo`
--

LOCK TABLES `trade_orderinfo` WRITE;
/*!40000 ALTER TABLE `trade_orderinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `trade_orderinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_shoppingcart`
--

DROP TABLE IF EXISTS `trade_shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_shoppingcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_shoppingcart_user_id_goods_id_92225e66_uniq` (`user_id`,`goods_id`),
  KEY `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `trade_shoppingcart_user_id_da423c9c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_shoppingcart`
--

LOCK TABLES `trade_shoppingcart` WRITE;
/*!40000 ALTER TABLE `trade_shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `trade_shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_operation_useraddress`
--

DROP TABLE IF EXISTS `user_operation_useraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_operation_useraddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `signer_name` varchar(100) NOT NULL,
  `signer_mobile` varchar(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_operation_usera_user_id_fe128593_fk_users_use` (`user_id`),
  CONSTRAINT `user_operation_usera_user_id_fe128593_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_operation_useraddress`
--

LOCK TABLES `user_operation_useraddress` WRITE;
/*!40000 ALTER TABLE `user_operation_useraddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_operation_useraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_operation_userfav`
--

DROP TABLE IF EXISTS `user_operation_userfav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_operation_userfav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_operation_userfav_user_id_goods_id_2dbadda7_uniq` (`user_id`,`goods_id`),
  KEY `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `user_operation_userfav_user_id_4e4de070_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_operation_userfav`
--

LOCK TABLES `user_operation_userfav` WRITE;
/*!40000 ALTER TABLE `user_operation_userfav` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_operation_userfav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_operation_userleavingmessage`
--

DROP TABLE IF EXISTS `user_operation_userleavingmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_operation_userleavingmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `file` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_operation_userl_user_id_70d909d6_fk_users_use` (`user_id`),
  CONSTRAINT `user_operation_userl_user_id_70d909d6_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_operation_userleavingmessage`
--

LOCK TABLES `user_operation_userleavingmessage` WRITE;
/*!40000 ALTER TABLE `user_operation_userleavingmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_operation_userleavingmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES (1,'pbkdf2_sha256$150000$irKRccgYT35O$koc+clUeBbZ6oboXOLGZt5u0B7EVvWq6VNr+FdF3rgE=','2019-12-11 16:33:28.625644',1,'admin','','',1,1,'2019-12-11 16:32:59.664077',NULL,'female',NULL,'admin@qq.com');
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_groups`
--

DROP TABLE IF EXISTS `users_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_groups`
--

LOCK TABLES `users_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `users_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_user_permissions`
--

LOCK TABLES `users_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_verifycode`
--

DROP TABLE IF EXISTS `users_verifycode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_verifycode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_verifycode`
--

LOCK TABLES `users_verifycode` WRITE;
/*!40000 ALTER TABLE `users_verifycode` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_verifycode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',1),(2,'site-theme','https://bootswatch.com/3/spacelab/bootstrap.min.css',1);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-13 18:59:23
