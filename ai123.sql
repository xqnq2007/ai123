-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ai123
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,2,'add_permission','Can add permission'),(5,2,'change_permission','Can change permission'),(6,2,'delete_permission','Can delete permission'),(7,3,'add_group','Can add group'),(8,3,'change_group','Can change group'),(9,3,'delete_group','Can delete group'),(10,4,'add_user','Can add user'),(11,4,'change_user','Can change user'),(12,4,'delete_user','Can delete user'),(13,5,'add_contenttype','Can add content type'),(14,5,'change_contenttype','Can change content type'),(15,5,'delete_contenttype','Can delete content type'),(16,6,'add_session','Can add session'),(17,6,'change_session','Can change session'),(18,6,'delete_session','Can delete session'),(19,7,'add_article','Can add 文章'),(20,7,'change_article','Can change 文章'),(21,7,'delete_article','Can delete 文章'),(22,8,'add_comment','Can add 评论'),(23,8,'change_comment','Can change 评论'),(24,8,'delete_comment','Can delete 评论'),(25,9,'add_category','Can add 版块'),(26,9,'change_category','Can change 版块'),(27,9,'delete_category','Can delete 版块'),(28,10,'add_userprofile','Can add 用户'),(29,10,'change_userprofile','Can change 用户'),(30,10,'delete_userprofile','Can delete 用户');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$JEOAcB8sZ5MH$IP7wWKHCGBJNZcO0ebDSN4EG7+6qp/FWD0HZwtqIalo=','2016-06-10 11:12:03',1,'','','',1,1,'2016-06-10 10:46:14','admin'),(2,'pbkdf2_sha256$24000$C1IKJKB4gZzt$W1hNIKIyt8+X9lCn1d24xh8RgfCljh3jUfeO9PEa3GY=','2016-06-10 11:19:31',0,'','','',0,1,'2016-06-10 10:51:24','alex'),(3,'pbkdf2_sha256$24000$6WuN8wsVSF6w$WBXIfbXlvq0ao3XYv2FK/30Yw4iGr1tkwfPrHKDGocQ=','2016-06-10 11:20:40',0,'','','',0,1,'2016-06-10 10:51:45','eric'),(4,'pbkdf2_sha256$24000$c0b7GnXlzzrO$hcqSvoaUB8WmgV/b4y5xFvxR0CgOADkfh7RZCbkI8f0=','2016-06-10 11:21:39',0,'','','',0,1,'2016-06-10 10:57:47','zengchunyun');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_article`
--

DROP TABLE IF EXISTS `bbs_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brief` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `pub_date` datetime DEFAULT NULL,
  `last_modify` datetime NOT NULL,
  `priority` int(11) NOT NULL,
  `head_img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bbs_article_4f331e2f` (`author_id`),
  KEY `bbs_article_b583a629` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_article`
--

LOCK TABLES `bbs_article` WRITE;
/*!40000 ALTER TABLE `bbs_article` DISABLE KEYS */;
INSERT INTO `bbs_article` VALUES (1,'分答的世界尽头与冷酷仙境','这才一个月，分答团队也许该开始考虑取舍了','有段时间没出现这样的现象级产品了。就分答的现状，分析已经很多，颇有一些共识。老问题也被重新提起：共享经济怎么搞，知识该不该收费等等。\n\n\n\n知识论斤卖还是论个卖\n\n\n\n分答一开张就收费，尤为引人注目，甚至被笑吃相难看。但吃相不重要，重要的是安利什么内容。如同给年轻人做职业咨询，总是建议先想清楚五年十年后的规划，再反推现在的抉择。分答的愿景也要放在更大的趋势中讨论。\n\n\n\n互联网发展至今，貌似免费是趋势。其实只是信息的复制成本趋近于零，而知识的生产成本更高了好嘛，创新就更稀缺。要覆盖成本、创造营收，目前主流模式是第三方付费，所谓“羊毛出在猪身上”。这种模式的关键在于，获得足够多的免费受众，用数量的微利变现，来覆盖知识生产的高额成本。','2016-06-10 10:55:00','2016-06-10 10:55:54',1000,'uploads/101547843513_1.jpg','published',1,2),(2,'《大圣归来》之后为何没再出动画爆款？细数中国动画产业背后的尴尬','原创动画公司生存压力大，投入高、变现能力差','近期，米粒影业爆出C轮40亿估值，树立了中国动画公司估值的新标杆。算的上是自去年的《大圣归来》以来中国动画产业的又一小高潮。借着IP热、二次元热、VR热等东风，动画这个之前不怎么受待见的行业就逐渐变得热闹起来。\n\n\n\n背靠资本市场弹药库的上市公司、拥有丰厚现金流的游戏公司开始在动漫领域接连发力，投资案例此起彼伏。而动画电影的立项备案也开始大干快上。仅今年至3月底即有75部动画电影备案。\n\n\n\n不过扭头看了看三板挂牌的三十余家动画企业的报表，画风有点不对。14年收入破亿的有四家，收入小于50万占近三分之一。利润破亿的仅一家，一半亏损。当然三板鱼龙混杂不能代表全部，但我们拜访的不少动画行业佼佼者中也鲜见盈利者。\n\n\n\n那么问题来了，中国动画产业到底是个什么情况？产业链是怎样划分的？具体的变现模式如何？','2016-06-10 10:56:00','2016-06-10 10:57:14',1000,'uploads/102624642790_1.jpg','published',2,2),(3,'考拉FM大裁员，印证了移动电台的寒冬？','裁员40人，上午通知，下午办手续，这么大动作不过是两个星期前的决定','考拉FM，这个曾被誉为“音频七雄”之一的移动电台，几乎只用了一上午的时间，就完成了成立以来最大规模的一次裁员。\n\n\n\n今天，小娱偶然发现一位考拉FM的编辑在朋友圈发了离职的消息。后来一打听才知道，这并不是一次主动离职，而是考拉裁员，“整个考拉音娱中心全被撤掉”。\n\n\n\n分析这次人事变动背后的原因，其实逻辑并不难理解。一方面是音乐版权费用高，跟移动音乐APP相比，移动网络电台的音乐并不具备更大的优势。\n\n\n\n另一方面，在考拉FM营收有限的情况下，砍掉占成本比重达9%的音娱板块，可以把更大的精力和资金，重点用在发展车载音频的研发和实验上。\n\n对于考拉来说，整个车联网上考拉算较有先发优势的，比如其上游端背靠的是车语传媒，有交通电台广告代理、整频运营两项业务（据悉已是传统广播的前三）；下游端在车联网中（消费场景端），又与十几家汽车厂商达成了合作。\n\n\n\n但是，目前车联网的盈利前景，受制于硬件条件，仍遥遥无期。','2016-06-10 10:59:00','2016-06-10 10:59:53',1000,'uploads/105744052646_1.jpg','published',4,3),(4,'在微信朋友圈看不到真诚？这些社交App让你不用装','试图拯救现代社会不得不装的装逼犯们','前几天发布的《鸡汤刷屏，成员混杂，主流社交媒体正遭遇用户逃离危机》这篇文章里，我们说到用户正在逃离微信、微博、知乎之类的主流社交媒体。在主流社交媒体上，有关无关的人都在围观，要塑造完美形象，要在意别人的情绪，实在是装够了！下面这些小众社交软件的出现，完全是为了直击虚伪朋友圈的痛点，也顺便拯救了现代社会不得不装的装逼犯们。\n\n\n\n放下滤镜，我们来交个吃友\n\n\n\n说是吃货最容易成为朋友，但朋友圈里的美食，都是经过精心剪裁又加过好几层滤镜的，它掀起的不是吃喝乐趣，而只是攀比。为此我们差点忘了生活中真正的食物长什么样子，也差点忘了世界上还有很多人饿着肚子，而全球40%的食物是被完好倒进垃圾桶里的。\n\n\n\n为了提醒人们食物不能被浪费，也顺便为了让人们在“吃”这件事情上交到真朋友，美国的程序员Summersett 和企业家Newman开发了吃货交友软件Leftover Swap。\n\n\n\n“分享经济”已经成为一个人人都在提起的热词，其实除了车子、知识、住处这些看起来高大上的物件，你还可以通过Leftover Swap来跟陌生人分享食物。只要把想分享的食物和地点加入列表，一旦有人对你的食物动心，就可以通过APP来跟你取得联系。','2016-06-10 11:00:00','2016-06-10 11:00:40',1000,'uploads/072113810284_2.jpeg','published',1,4),(5,'为什么看好直播+电商？这里有两大理由，以及四个技术难题','离开秀场模式，电商的直播会颠覆现有场景和关系','如日中天的直播业务，正在与不同互联网行业结合起来，形成“直播+”经济。\n\n\n\n直播+娱乐已很成熟，PC时代的9158做到上市，移动端的陌陌直播业务上线一年不到，已成主要营收来源，直播+娱乐吸金能力可见一斑。直播+营销被许多综合类直播平台所看重，越来越多的品牌开始在美拍等平台砸钱做营销，取得不错效果。还有一个正在崛起的则是“直播+电商”，通过直播卖东西被坊间热议，前几天看到虎嗅上有一篇文章说，直播+电商是绕过BAT的另一个机会，有人对此不以为然，认为直播+电商是一个伪命题，更别说要绕过BAT了。\n\n\n\n不看好直播电商的大抵有两种逻辑：\n\n\n\n一是直播+电商效果不好。直播+电商，本质就是电视+电商，即所谓的T2O模式（TV to Online）模式，连电视这么强势的媒体都玩不转，更别说直播。眼下直播+电商带来销量很困难，销量是电商的终极目标。\n\n\n\n二是直播只是宣传方式，跟文字、图片等没有本质区别，而电商的商业本质并没有变化，过去并不存在着文字+电商，图片+电商的说法，“直播+电商”只是一个伪概念。\n\n\n\n对于上述两种逻辑，笔者均不以为然。\n\n\n\n电视媒体做电商不成功，与直播+电商能否成功并无必然联系，直播看上去确实就是“互联网电视台”，但移动互联网让它又完全不同于传统电视，还有关键要看谁来做这个事情。认为直播是宣传方式的，说的其实是直播+营销。如果阿里巴巴等巨头接受了直播+电商，就完全不一样了，直播不是宣传方式，而是电商的基础设施，如同购物车、商品图片一样，不可或缺。','2016-06-10 11:01:00','2016-06-10 11:01:44',1000,'uploads/185202536951_1.jpg','published',3,5),(6,'我们迎来了不仅答案不对，连问题都不对的时代','问题都由别人来提出，答案就不要试图自己想了','两天前的晚上，我与朋友们展开了一场讨论。这场讨论很快激烈起来，并很快扩散到各自的朋友圈，引来了一些同行的围观。\n\n\n\n我们争论的问题很简单——我们要不要代替读者提出问题？说得简单一些，在读者点击一篇文章之前，他看到的首先是文章的标题。在这个标题里，我们需要把文章的矛盾集中体现，用一个问句带出来吗？\n\n\n\n比如这样：《黑人在 Airbnb 上租不到房？房东：没那么严重》\n\n\n\n有人认为，在标题提出问题，会明确告知读者文章在讲什么事情，从而吸引他们的兴趣。但也有人认为，这种标题只能让读者记住内容，却无法让人记住文章本身。\n\n\n\n无可争辩的是，提问式的标题是一个保险，是保证点击的一种主流方法。一个精雕细琢，结合文章内容「总结」「凝练」乃至「升华」出来的标题，十分适合看完正文以后令人回味，对根本连正文也不看的人却毫无意义。大家都那么忙，利用碎片时间读些可看可不看的文章，标题的首要目的应该是激发读者兴趣、让他点进来再说，而非怀着「你既然看到这篇文就一定会认真阅读」的天真期待。\n\n\n\n不过，值得顾虑之处在于，代替读者提问、代替读者思考，写作者自身将会逐渐扮演一个「重要而非必要」的角色——他可以展示自己的价值，却无法凸显自己的存在。假如通过模式化、套路化的标题就可树立形象吸引粉丝，那么任何出产内容的人，通过套路都可吸引粉丝了。粉丝最终会流向何方，答案也显而易见——谁也无法留住这么轻易就得来的东西。','2016-06-10 11:02:00','2016-06-10 11:02:45',1000,'uploads/215705606997_1.jpg','published',1,6),(7,'开课 | 链家副总陶红兵：我来揭示「购房雷区及资产增值的秘密」','买房知道这些就“购”了','房产购置是一个复杂且极需专业性的事情，购房过程中暗涌四伏，很多人因此深陷泥潭。购房不单纯的是购买商品那么简单，大宗交易的本身性质就赋予了房产不一样的意义。其考量标准也不同于其他，并不能仅仅依靠简单的市场认知便能实现资产的增值，而是需要对市场多年的研判，对政策信息的正确解读、产品信息、区域位置等多维度的考量。\n\n\n\n我该怎么去买房？在什么时间节点下买房？\n\n买房的都有哪些雷区？哪些区域及产品更能实现资产增值？\n\n购房过程中都有哪些复杂流程？\n\n如何在繁杂的产品类型中甄选出最优质的产品类型？\n\n……\n\n\n\n房地产激荡十年，我总结了下过往的经验与思考。如果你有上述这些疑问，不如6月5日来怒马听一听“购房雷区、资产增值大揭秘”，与正在为购房而挠头的你一起分享我十多年来的成功购房经验。','2016-06-10 11:03:00','2016-06-10 11:04:17',1000,'uploads/104149108315_1.jpg','published',2,4),(8,'《魔兽》之后或许是《英雄联盟》','试水成功后，腾讯表示“不排除”将《英雄联盟》影视化','在《魔兽》取得首日大捷后，不禁让业界思考谁会成为下一个影游联动的主角？腾讯给出的一种可能的答案是：《英雄联盟》。\n\n\n\n“为了部落”，“为了联盟”是最近朋友圈等社交网络中，被刷屏频率最高的词汇。根据6月8日的最新数据统计，《魔兽》凭借1.3万场的排片量，零点场票房达到了5540万元，超越《速激7》5247万元的新纪录。目前，豆瓣上的《魔兽》评分也被粉丝们刷到了8.9分的高分。\n\n\n\n《魔兽》是腾讯影业参与投资的第二部作品，相比于参与投资的首部作品《火影忍者》，《魔兽》无论是在大众影响力、票房规模上都更具规模，案例也更具说服力。\n\n\n\n在完成《魔兽》电影项目的积累后，腾讯方面表示，不排除将《英雄联盟》进行影视化改编的可能性，但要尊重游戏IP开发运营的规律，目前还没到释放影视价值的阶段，而在整个开发运营的过程中更要尊重拳头的意见。','2016-06-10 11:05:00','2016-06-10 11:05:28',1000,'uploads/111749379200.jpg','published',3,5),(9,'暴雪的秘密','除了“暴雪出品必属精品”，暴雪的秘密还有更多','“美国进口礼盒装大菠萝3个，精装典藏你懂的！”淘宝上，标价2488元的一个菠萝图片旁边这样写道。5月，淘宝页面上突然多了一溜奇怪的菠萝图片，配上一句心照不宣的神秘暗语。大菠萝3，是电子游戏开发商暴雪娱乐公司5月15日新发售的RPG游戏《暗黑破坏神3》（Diablo III）的谐音。\n\n\n\n在《暗黑3》上市前就有分析师就预测，这游戏在今年年内将售出350万份。\n\n\n\n年内？你太天真了少年。《暗黑3》发售首日销量就突破了350万份，首周销量超过630万，成为PC游戏史上首日和首周销量最高的游戏。这些统计里，还没包括参与暴雪另一促销活动中中奖的120多万名玩家。\n\n\n\n过去20年里，全球游戏业经历了从最初的任天堂红白机的风靡到Westwood、3DO等单机游戏工作室辉煌一时又逐渐没落，再到网络游戏时代EA、维旺迪等游戏巨头们逐鹿江湖。风云变幻中无数曾经伟大的工作室和他们的经典作品都成为了历史。唯有暴雪公司，在20年里从最初只有3个人的工作室成长为全球游戏业的巨人，依靠《魔兽争霸》、《暗黑破坏神》、《星际争霸》、《魔兽世界》等一系列经典作品，在全球游戏玩家当中赢得“暴雪出品，必属精品”的口碑，把自己推上了游戏帝国的地位。','2016-06-10 11:06:00','2016-06-10 11:06:33',1000,'uploads/0718054mpmhljbzlcjxvjb.jpg','published',4,6),(10,'把人脑比做计算机，让意识永生？半个世纪我们都错了？','这是一个我们都在讲的故事。','无论他们怎样努力，大脑科学家和认知心理学家永远没办法在人脑里找到贝多芬第五交响曲的拷贝文件――单词、图像、语法规则或其他任何的环境感知也是如此。当然，人脑并不是空空荡荡的。但是人脑并不包含大部分人们认为它含有的东西――甚至简单如“内存”都没有。\n\n\n\n我们关于人脑的粗略理解，有着悠久的历史根源，但是1940年代计算机的发明让我们变得尤其疑惑。在超过一个半世纪的时间里，心理学家、语言学家、神经科学家和其他人类行为的学者专家认为，人脑像计算机一样工作。\n\n\n\n这种说法欠缺考虑，我们来试想一下婴儿的大脑。因为进化的关系，人类新生儿，和任何哺乳动物的新生婴儿一样，在来到这个世界的时候已经准备好有效地与之互动。婴儿的视觉是模糊的，但是对人脸会有特别的注意力，而且能够很快地分辨自己的母亲，更倾向语言的声音，而不是语言之外的声音，能够将一个基本的有语义的声音，从其他的声音中区别出来。我们人类，毫无疑问，生来就要建立社会连接。\n\n\n\n一个健康的新生儿，也具有其他许多的感知能力——对于生存来说十分重要的、与生俱来的某些反应。比如会把头转向抚摸脸部的方向，吮吸进到嘴里的任何东西，浸入水中的时候则憋住呼吸，紧紧攥住手里的东西，握力几乎能够支持自己的体重。最重要的是，新生儿都具有强大的学习机制，能够让他们很快地做出改变，与周围的世界有效互动。尽管和人类祖先所面对的环境相比，这个世界已经非常不同了。','2016-06-10 11:07:00','2016-06-10 11:07:27',1000,'uploads/064903700884.jpg','published',1,2),(11,'分答对标的不是知乎也不是微博，而是电竞主播们的肉松饼','如果有人巴望着靠分答这个新平台起飞的话，该冷静冷静了','<p style=margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Arial, 微软雅黑, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif; font-size: 16px; line-height: 30px;>剩下的就是站内流量，目前看，<span style=font-weight: 700;>分答在站内为不同答主提供的流量，与这些答主从站外带来的流量相比，几乎可以忽略不计。</span></p><p style=margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Arial, 微软雅黑, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif; font-size: 16px; line-height: 30px;><br></p><p style=margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Arial, 微软雅黑, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif; font-size: 16px; line-height: 30px;>我统计了一下，这些分答红人的流量“来源”大概有那么几类<span class=text-remarks label=备注 style=color: rgb(153, 153, 153);>（详细排名和统计附在文章后）</span>：</p><p style=margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Arial, 微软雅黑, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif; font-size: 16px; line-height: 30px;><br></p><ul class= list-paddingleft-2 style=margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 15px; list-style-type: none; color: rgb(51, 51, 51); font-family: Arial, 微软雅黑, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif; font-size: 16px; line-height: 30px;><li><p style=margin-bottom: 0px;><span style=font-weight: 700;>社会地位</span><span class=text-remarks label=备注 style=color: rgb(153, 153, 153);>（代表如王思聪、章子怡）</span></p></li><li><p style=margin-bottom: 0px;><span style=font-weight: 700;>专业身份</span><span class=text-remarks label=备注 style=color: rgb(153, 153, 153);>（如医生属于这一类，能够解决刚需的）</span></p></li><li><p style=margin-bottom: 0px;><span style=font-weight: 700;>其他平台的KOL</span><span class=text-remarks label=备注 style=color: rgb(153, 153, 153);>（知乎、微信公众号、微博……）</span></p></li></ul><p style=margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Arial, 微软雅黑, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif; font-size: 16px; line-height: 30px;><br></p><p style=margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Arial, 微软雅黑, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif; font-size: 16px; line-height: 30px;>至少目前来看，还没有人能真正依靠“知识”或者说“内容”在分答取得可观流量，要靠自身向分答导入流量。</p>','2016-02-15 00:00:00','2016-06-10 11:46:10',1000,'uploads/1141199257.jpg','published',4,2),(12,'小鱼多莉能为皮克斯扳回一局吗？数据说话，也许可以','映前的统计数据与《疯狂动物城》接近','<p style=margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Arial, 微软雅黑, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif; font-size: 16px; line-height: 30px;>时隔4年，皮克斯再度驾临暑期档：《海底总动员2：寻找多莉》将成为今年第4部中美同步公映的动画电影，稍早则是《功夫熊猫3》、《疯狂动物城》和《愤怒的小鸟》；而打入寸土寸金的6月也是自《勇敢传说》以来所仅见，彼时正是初次“国产保护月”大幕拉开的前夜。</p><p style=margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Arial, 微软雅黑, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif; font-size: 16px; line-height: 30px;><img src=data:image/jpeg;base64,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 data-filename=142304146323.jpg style=width: 666px;><br></p><p style=margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Arial, 微软雅黑, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif; font-size: 16px; line-height: 30px;>作为世界上最为知名的动画厂牌之一，成立30年的皮克斯迄今共出品了16部长片作品，全球票房累计已达96.995亿美元，市场影响力毋庸置疑。不过在和迪斯尼联姻10年之后，<span style=font-weight: 700;>皮克斯为人称道的“原创”标签正在逐渐剥落，取而代之的是经典作品“系列化”的路线</span>，而《海底总动员2：寻找多莉》便是这波续集大潮中的开山之作。关于皮克斯未来的制作计划，可点击文末“阅读原文”了解。<br></p><p style=margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Arial, 微软雅黑, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif; font-size: 16px; line-height: 30px;><br></p><p style=margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Arial, 微软雅黑, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif; font-size: 16px; line-height: 30px;>但在国内，皮克斯却一直困于停滞不前的票房怪圈中：截至目前，2013年上映的《怪兽大学》依旧以20967.42万人民币位居皮克斯内部首位，<span style=font-weight: 700;>这一成绩在当时尚且能排在动画序列的第6位，但现在已经被甩出前20名了</span>。</p><p style=margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Arial, 微软雅黑, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif; font-size: 16px; line-height: 30px;><br></p><p style=margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Arial, 微软雅黑, \'Microsoft yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', \'Microsoft Yahei\', \'Hiragino Sans GB\', \'冬青黑体简体中文 w3\', STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif; font-size: 16px; line-height: 30px;>可堪比较的是，师出同门迪斯尼的《疯狂动物城》已将类型标杆提升至15亿的高位，而去年延后3个半月上映的《头脑特工队》却连破亿的目标都未能达成，沦为“叫好不叫座”现象的又一牺牲品。</p><div><br></div>','2016-02-15 00:00:00','2016-06-10 11:55:26',1000,'uploads/093837004854.jpg','published',4,5);
/*!40000 ALTER TABLE `bbs_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_category`
--

DROP TABLE IF EXISTS `bbs_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `brief` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_as_top_menu` tinyint(1) NOT NULL,
  `position_index` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_category`
--

LOCK TABLES `bbs_category` WRITE;
/*!40000 ALTER TABLE `bbs_category` DISABLE KEYS */;
INSERT INTO `bbs_category` VALUES (1,'全部','',1,1),(2,'42区','',1,2),(3,'段子','',1,3),(4,'图片','',1,4),(5,'挨踢1024','',1,5),(6,'你问我答','',1,6);
/*!40000 ALTER TABLE `bbs_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_category_admins`
--

DROP TABLE IF EXISTS `bbs_category_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_category_admins` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `userprofile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bbs_category_admins_category_id_bfda4129_uniq` (`category_id`,`userprofile_id`),
  KEY `bbs_category_admins_9c2a73e9` (`userprofile_id`),
  KEY `bbs_category_admins_b583a629` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_category_admins`
--

LOCK TABLES `bbs_category_admins` WRITE;
/*!40000 ALTER TABLE `bbs_category_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs_category_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_comment`
--

DROP TABLE IF EXISTS `bbs_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_comment` (
  `id` int(11) NOT NULL,
  `comment_type` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `date` datetime NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bbs_comment_3a87a439` (`parent_comment_id`),
  KEY `bbs_comment_a00c1b00` (`article_id`),
  KEY `bbs_comment_e8701ad4` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_comment`
--

LOCK TABLES `bbs_comment` WRITE;
/*!40000 ALTER TABLE `bbs_comment` DISABLE KEYS */;
INSERT INTO `bbs_comment` VALUES (1,2,'','2016-06-10 11:10:12',1,2,NULL),(2,2,'','2016-06-10 11:10:14',2,2,NULL),(3,2,'','2016-06-10 11:10:15',3,2,NULL),(4,2,'','2016-06-10 11:10:16',4,2,NULL),(5,2,'','2016-06-10 11:10:17',5,2,NULL),(6,2,'','2016-06-10 11:10:19',6,2,NULL),(7,2,'','2016-06-10 11:10:20',7,2,NULL),(8,2,'','2016-06-10 11:10:22',8,2,NULL),(9,2,'','2016-06-10 11:10:23',9,2,NULL),(10,2,'','2016-06-10 11:10:23',9,2,NULL),(11,2,'','2016-06-10 11:10:23',9,2,NULL),(12,2,'','2016-06-10 11:10:24',10,2,NULL),(13,2,'','2016-06-10 11:10:25',10,2,NULL),(14,2,'','2016-06-10 11:10:25',10,2,NULL),(15,2,'','2016-06-10 11:10:25',10,2,NULL),(16,2,'','2016-06-10 11:10:25',10,2,NULL),(17,2,'','2016-06-10 11:10:25',10,2,NULL),(18,2,'','2016-06-10 11:10:26',9,2,NULL),(19,2,'','2016-06-10 11:10:26',9,2,NULL),(20,2,'','2016-06-10 11:10:28',8,2,NULL),(21,2,'','2016-06-10 11:10:28',8,2,NULL),(22,2,'','2016-06-10 11:10:28',8,2,NULL),(23,2,'','2016-06-10 11:10:29',7,2,NULL),(24,2,'','2016-06-10 11:10:29',7,2,NULL),(25,2,'','2016-06-10 11:10:29',7,2,NULL),(26,2,'','2016-06-10 11:10:29',7,2,NULL),(27,2,'','2016-06-10 11:10:31',6,2,NULL),(28,2,'','2016-06-10 11:10:31',6,2,NULL),(29,2,'','2016-06-10 11:10:31',6,2,NULL),(30,2,'','2016-06-10 11:10:32',5,2,NULL),(31,2,'','2016-06-10 11:10:32',5,2,NULL),(32,2,'','2016-06-10 11:10:33',5,2,NULL),(33,2,'','2016-06-10 11:10:33',5,2,NULL),(34,2,'','2016-06-10 11:10:33',5,2,NULL),(35,2,'','2016-06-10 11:10:34',1,2,NULL),(36,2,'','2016-06-10 11:10:34',1,2,NULL),(37,2,'','2016-06-10 11:10:35',1,2,NULL),(38,2,'','2016-06-10 11:10:35',1,2,NULL),(39,2,'','2016-06-10 11:10:35',1,2,NULL),(40,2,'','2016-06-10 11:10:36',2,2,NULL),(41,2,'','2016-06-10 11:10:36',2,2,NULL),(42,2,'','2016-06-10 11:10:36',2,2,NULL),(43,2,'','2016-06-10 11:10:36',2,2,NULL),(44,2,'','2016-06-10 11:10:37',2,2,NULL),(45,2,'','2016-06-10 11:10:37',2,2,NULL),(46,2,'','2016-06-10 11:10:37',2,2,NULL),(47,2,'','2016-06-10 11:10:38',3,2,NULL),(48,2,'','2016-06-10 11:10:38',3,2,NULL),(49,2,'','2016-06-10 11:10:38',3,2,NULL),(50,2,'','2016-06-10 11:10:39',3,2,NULL),(51,2,'','2016-06-10 11:10:39',3,2,NULL),(52,2,'','2016-06-10 11:10:39',3,2,NULL),(53,2,'','2016-06-10 11:10:39',3,2,NULL),(54,2,'','2016-06-10 11:10:40',4,2,NULL),(55,2,'','2016-06-10 11:10:40',4,2,NULL),(56,2,'','2016-06-10 11:10:40',4,2,NULL),(57,2,'','2016-06-10 11:10:41',4,2,NULL),(58,2,'','2016-06-10 11:10:41',4,2,NULL),(59,1,'是吗颠三倒四','2016-06-10 11:11:00',1,2,NULL),(60,1,'第三方地方地方','2016-06-10 11:11:31',1,1,NULL),(61,1,'附近的妇科地方','2016-06-10 11:13:39',2,2,NULL),(62,1,'的纷纷扰扰','2016-06-10 11:13:50',2,2,NULL),(63,1,'房东夫妇地方','2016-06-10 11:14:22',2,2,NULL),(64,1,'颠三倒四舒服','2016-06-10 11:15:18',2,2,NULL),(65,1,'会更好更好','2016-06-10 11:16:53',2,2,NULL),(66,1,'ok了吧是当时的时代','2016-06-10 11:18:49',2,2,61),(67,1,'可以第三季度结束的','2016-06-10 11:19:44',1,1,59),(68,1,'顺便带上圣诞节咖啡','2016-06-10 11:19:52',1,1,60),(69,1,'大是大非没得放假诶哦热热','2016-06-10 11:19:59',1,1,68),(70,1,'都开始了热熔胶哦儿','2016-06-10 11:20:04',1,1,69),(71,1,'拉达梅斯柳德米拉时代','2016-06-10 11:20:12',1,1,68),(72,1,'电脑上看电脑看斯诺克','2016-06-10 11:20:23',1,1,60),(73,1,'今年可能看见吃的饭','2016-06-10 11:20:52',1,3,NULL),(74,1,'嗯我肯看见我呢我','2016-06-10 11:20:58',1,3,71),(75,1,'哦交融而哦儿','2016-06-10 11:21:06',1,3,NULL),(76,1,'那是你的可能我就饿北京','2016-06-10 11:21:11',1,3,60),(77,1,'上电脑课上你的课','2016-06-10 11:21:18',1,3,59),(78,1,'可牛屙 hi 次代表乌俄吧','2016-06-10 11:21:24',1,3,67),(79,1,'可我呢为全额我','2016-06-10 11:21:50',1,4,76),(80,1,'京东问 i 我呢哦为','2016-06-10 11:21:55',1,4,70),(81,1,'in 单位 i 俄拟对你的呢人','2016-06-10 11:22:07',2,4,62),(82,1,'大模 is 你都 i 而您如同认同','2016-06-10 11:22:13',2,4,63),(83,1,'皇帝是男的你嗯热','2016-06-10 11:22:17',2,4,82),(84,1,'你不低浓度年历史的饭','2016-06-10 11:22:22',2,4,64),(85,1,'谁能懂儿聊天没有人讨厌','2016-06-10 11:22:27',2,4,65),(86,1,'纳斯达克都能发光','2016-06-10 11:22:37',3,4,NULL),(87,1,'美佛儿就哦儿儿女','2016-06-10 11:22:43',3,4,86),(88,1,'默契农委哦嗯为','2016-06-10 11:22:47',3,4,86),(89,1,'男的哦是弄嗯日日天','2016-06-10 11:22:52',3,4,88),(90,1,'那我弄内容儿','2016-06-10 11:22:57',3,4,86),(91,1,'当你 i 热闹嗯突然标题日本','2016-06-10 11:23:04',3,4,NULL);
/*!40000 ALTER TABLE `bbs_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_userprofile`
--

DROP TABLE IF EXISTS `bbs_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_userprofile` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `head_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_userprofile`
--

LOCK TABLES `bbs_userprofile` WRITE;
/*!40000 ALTER TABLE `bbs_userprofile` DISABLE KEYS */;
INSERT INTO `bbs_userprofile` VALUES (1,'Alex Li','','uploads/head1_M6phtgg.jpg',2),(2,'管理员','','uploads/head2_5dMmZtG.jpg',1),(3,'Eric Wang','','uploads/head6.jpg',3),(4,'曾春云','','uploads/head8.jpg',4);
/*!40000 ALTER TABLE `bbs_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `object_id` text COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` text COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'1','全部',1,'已添加。',9,1,'2016-06-10 10:49:26'),(2,'2','42区',1,'已添加。',9,1,'2016-06-10 10:49:59'),(3,'3','段子',1,'已添加。',9,1,'2016-06-10 10:50:09'),(4,'4','图片',1,'已添加。',9,1,'2016-06-10 10:50:19'),(5,'5','挨踢1024',1,'已添加。',9,1,'2016-06-10 10:50:34'),(6,'6','你问我答',1,'已添加。',9,1,'2016-06-10 10:50:44'),(7,'2','alex',1,'已添加。',4,1,'2016-06-10 10:51:24'),(8,'3','eric',1,'已添加。',4,1,'2016-06-10 10:51:45'),(9,'1','Alex Li',1,'已添加。',10,1,'2016-06-10 10:52:36'),(10,'2','管理员',1,'已添加。',10,1,'2016-06-10 10:52:52'),(11,'3','Eric Wang',1,'已添加。',10,1,'2016-06-10 10:53:26'),(12,'1','分答的世界尽头与冷酷仙境',1,'已添加。',7,1,'2016-06-10 10:55:54'),(13,'2','《大圣归来》之后为何没再出动画爆款？细数中国动画产业背后的尴尬',1,'已添加。',7,1,'2016-06-10 10:57:14'),(14,'4','zengchunyun',1,'已添加。',4,1,'2016-06-10 10:57:47'),(15,'4','曾春云',1,'已添加。',10,1,'2016-06-10 10:58:31'),(16,'3','考拉FM大裁员，印证了移动电台的寒冬？',1,'已添加。',7,1,'2016-06-10 10:59:53'),(17,'4','在微信朋友圈看不到真诚？这些社交App让你不用装',1,'已添加。',7,1,'2016-06-10 11:00:40'),(18,'5','为什么看好直播+电商？这里有两大理由，以及四个技术难题',1,'已添加。',7,1,'2016-06-10 11:01:44'),(19,'6','我们迎来了不仅答案不对，连问题都不对的时代',1,'已添加。',7,1,'2016-06-10 11:02:45'),(20,'7','开课 | 链家副总陶红兵：我来揭示「购房雷区及资产增值的秘密」',1,'已添加。',7,1,'2016-06-10 11:04:17'),(21,'8','《魔兽》之后或许是《英雄联盟》',1,'已添加。',7,1,'2016-06-10 11:05:28'),(22,'9','暴雪的秘密',1,'已添加。',7,1,'2016-06-10 11:06:33'),(23,'10','把人脑比做计算机，让意识永生？半个世纪我们都错了？',1,'已添加。',7,1,'2016-06-10 11:07:27');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'bbs','article'),(9,'bbs','category'),(8,'bbs','comment'),(10,'bbs','userprofile'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-06-10 10:45:57'),(2,'auth','0001_initial','2016-06-10 10:45:57'),(3,'admin','0001_initial','2016-06-10 10:45:57'),(4,'admin','0002_logentry_remove_auto_add','2016-06-10 10:45:57'),(5,'contenttypes','0002_remove_content_type_name','2016-06-10 10:45:57'),(6,'auth','0002_alter_permission_name_max_length','2016-06-10 10:45:57'),(7,'auth','0003_alter_user_email_max_length','2016-06-10 10:45:57'),(8,'auth','0004_alter_user_username_opts','2016-06-10 10:45:57'),(9,'auth','0005_alter_user_last_login_null','2016-06-10 10:45:57'),(10,'auth','0006_require_contenttypes_0002','2016-06-10 10:45:57'),(11,'auth','0007_alter_validators_add_error_messages','2016-06-10 10:45:57'),(12,'bbs','0001_initial','2016-06-10 10:45:57'),(13,'sessions','0001_initial','2016-06-10 10:45:57');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` text COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5amttw38p7gtm8mm3s9onok2b9gb6009','MmIzZjhmYTk3OTUyMDkwNTBmMmE2MDZkZjY5MWFkNTJjNzAyZWZkYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDAzNzY4ODgyM2EyYmI2N2E4NWEyN2Y3MmUyMjEzYTFjYjU5YzY2YyIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2016-06-24 11:21:39');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-16 12:21:41
