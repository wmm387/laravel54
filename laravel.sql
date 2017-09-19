-- MySQL dump 10.16  Distrib 10.1.10-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	10.1.10-MariaDB

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
-- Table structure for table `admin_permission_role`
--

DROP TABLE IF EXISTS `admin_permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permission_role`
--

LOCK TABLES `admin_permission_role` WRITE;
/*!40000 ALTER TABLE `admin_permission_role` DISABLE KEYS */;
INSERT INTO `admin_permission_role` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,2);
/*!40000 ALTER TABLE `admin_permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'system','系统管理','2017-08-29 03:23:41','2017-08-29 03:23:41'),(2,'post','文章管理','2017-08-29 03:25:02','2017-08-29 03:25:02'),(3,'topic','专题管理','2017-08-29 03:25:16','2017-08-29 03:25:16'),(4,'notice','通知管理','2017-08-29 03:25:33','2017-08-29 03:25:33');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_user`
--

DROP TABLE IF EXISTS `admin_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_user`
--

LOCK TABLES `admin_role_user` WRITE;
/*!40000 ALTER TABLE `admin_role_user` DISABLE KEYS */;
INSERT INTO `admin_role_user` VALUES (1,2,2),(2,1,1),(3,2,3),(4,1,3);
/*!40000 ALTER TABLE `admin_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'sys-manager','系统管理员','2017-08-29 03:26:13','2017-08-29 03:26:13'),(2,'post-manager','文章管理员','2017-08-29 03:28:07','2017-08-29 03:28:07');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$qcHBog36uglVoscVrw5yHOnnZSfRKmuelwvgjfODLPyJDnJ7Fy7x6','2017-08-28 06:46:29','2017-08-28 06:46:29'),(2,'root','$2y$10$l5x5O4jRUiIzIl3V1mTHJ.V/S7Qy9jlhy6tq/VCkX9tGf0JuFAvZy','2017-08-28 07:49:09','2017-08-28 07:49:09'),(3,'wmm','$2y$10$gG.gjq8TNfzCfFrZod4fwekcSeuLBUtMae3ej7AYJ1iQptvbVi0nS','2017-08-29 11:03:18','2017-08-29 11:03:18'),(4,'wmm3','$2y$10$tG/oHNuN6nqLw23tUI4xbuOeqVaDBLKuP1WjvULfcjH3hWk0Zluc2','2017-08-29 11:04:57','2017-08-29 11:04:57');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,2,22,'阿萨德','2017-08-24 08:10:32','2017-08-24 08:10:32'),(2,2,22,'奥术大师多','2017-08-24 08:11:40','2017-08-24 08:11:40'),(3,2,18,'啥地方撒','2017-08-24 08:11:55','2017-08-24 08:11:55'),(4,1,1,'阿斯蒂芬','2017-08-24 08:12:17','2017-08-24 08:12:17'),(5,1,22,'adsfsdfs','2017-08-24 08:26:32','2017-08-24 08:26:32'),(6,2,16,'asfsdfs','2017-08-29 09:14:09','2017-08-29 09:14:09');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fans`
--

DROP TABLE IF EXISTS `fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fan_id` int(11) NOT NULL DEFAULT '0',
  `star_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fans`
--

LOCK TABLES `fans` WRITE;
/*!40000 ALTER TABLE `fans` DISABLE KEYS */;
INSERT INTO `fans` VALUES (1,1,2,'2017-08-29 09:26:00','2017-08-29 09:26:00');
/*!40000 ALTER TABLE `fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_08_22_093818_create_posts_table',1),(4,'2017_08_24_140311_create_coments_table',2),(5,'2017_08_24_141502_create_comments_table',3),(6,'2017_08_24_163555_create_zans_table',4),(7,'2017_08_25_111514_create_fans_table',5),(8,'2017_08_25_171832_create_topics_table',6),(9,'2017_08_25_171924_create_post_topic_table',6),(10,'2017_08_28_142059_create_admin_users_table',7),(11,'2017_08_28_161936_alter_posts_table',8),(12,'2017_08_28_175740_create_permission_and_roles',9),(13,'2017_08_29_144034_create_notice_table',10),(14,'2017_08_29_152402_create_jobs_table',11);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` VALUES (1,'测试通知','这是通知','2017-08-29 07:08:37','2017-08-29 07:08:37'),(2,'测试通知','这是第一条测试通知,希望能成功','2017-08-29 07:31:51','2017-08-29 07:31:51');
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_topics`
--

DROP TABLE IF EXISTS `post_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_topics`
--

LOCK TABLES `post_topics` WRITE;
/*!40000 ALTER TABLE `post_topics` DISABLE KEYS */;
INSERT INTO `post_topics` VALUES (1,37,1,'2017-08-28 03:17:30','2017-08-28 03:17:30');
/*!40000 ALTER TABLE `post_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Illum modi dolorem id quam facere eos tenetur.','Cum nemo qui fugit velit repellendus. Autem expedita aut ullam similique impedit iste et. Beatae deserunt quibusdam aliquid commodi. Aut provident deleniti totam dolorum sed aliquam. Nulla dolor recusandae molestias exercitationem. Quia esse quasi non. Minima suscipit nisi ratione labore aut doloribus commodi nulla. Placeat eum commodi adipisci neque fuga. Cupiditate reprehenderit consequatur molestiae aperiam optio labore. Itaque tempore velit in aut numquam nisi.',1,'2017-08-22 01:54:59','2017-08-22 01:54:59',0),(2,'Rerum et autem facere ex tempore.','Ipsum molestiae sit quis fugiat mollitia aut. In ab nisi ad ut ab consectetur. Aperiam illo quis distinctio dolor esse architecto officia. Officia ad qui quisquam et nihil. Quod voluptatibus ut corporis eaque est officiis commodi. Vel enim dolorem quo modi ut harum. Hic maxime inventore quae iste assumenda minus in. Corrupti earum doloribus laborum maiores pariatur corrupti mollitia impedit. Aliquid necessitatibus dolorem rerum harum rem dignissimos. Maiores ut necessitatibus pariatur ea. Est exercitationem non hic est. Corporis quo commodi asperiores quia quo voluptatum est consequatur.',1,'2017-08-22 01:57:29','2017-08-22 01:57:29',0),(3,'Accusamus laborum voluptatibus facere sit.','Fugit eos ea facilis cum dolorem perferendis architecto illum. Incidunt minima quos sed. Labore impedit deleniti iure adipisci harum dolor mollitia. Facilis voluptatum non eius ex dolores quo voluptatem voluptatum. Porro rerum autem illum voluptas est. Quo non odit suscipit dolorum qui omnis. Dolor omnis ipsa quasi nobis omnis iste qui. Quia qui architecto iste fuga. Veniam eum totam quasi suscipit tenetur animi. Cupiditate tenetur debitis ut sunt. Velit animi necessitatibus et aliquam suscipit culpa qui. Adipisci corporis aut dolore asperiores ut porro consequuntur.',1,'2017-08-22 09:59:06','2017-08-22 09:59:06',0),(4,'Eveniet voluptatum est alias reiciendis quam consequatur quidem.','Ea qui explicabo magnam quia. Placeat sit in qui impedit ad quam. Voluptates cumque praesentium quam occaecati quam ea. Et repudiandae perferendis consequatur dicta et. Quis voluptatum quia mollitia et illum quos. Reiciendis doloremque maxime nam suscipit et. Aut placeat quos iure sint sapiente. Quidem a ut dolorum natus magnam quo iste. In qui soluta rem recusandae. Et soluta reprehenderit itaque. Enim ad asperiores vero nihil ipsa impedit. Inventore libero adipisci minima exercitationem est.',1,'2017-08-23 01:54:54','2017-08-23 01:54:54',0),(5,'Illum vel in sed id ullam tempore fuga.','Dolores sit saepe accusantium quasi alias fuga natus. Aut reprehenderit non delectus sed neque nesciunt architecto. Soluta voluptas distinctio recusandae. Totam aliquam qui debitis doloremque. Est error mollitia ipsam voluptate eligendi sint quia. Aut omnis mollitia est nulla aut aut qui. Vel nesciunt et ut maiores quia praesentium. Impedit ducimus et ut ut esse.',1,'2017-08-23 01:54:56','2017-08-23 01:54:56',0),(6,'Sit praesentium corrupti accusantium.','Minus neque quis ex quia. Vel asperiores quia doloribus ut doloremque consequatur. Consequatur magnam corrupti quia. Non eos laudantium voluptatem modi aut alias pariatur. At dolore ut consequatur aut ea sed. Eos sint occaecati sequi veniam modi voluptatibus. Suscipit sed sunt ex dolores molestias vero. Est neque sint voluptatem nesciunt quo. Quo non qui vero iusto neque optio sit. Doloremque quod dolorem deserunt autem atque quae repudiandae. Aut autem et tempora sint ipsa expedita. Et quo aut delectus qui. Ducimus dolore et sit vel velit non. Nam sunt expedita aliquam molestiae nulla quis totam.',1,'2017-08-23 01:54:56','2017-08-23 01:54:56',0),(7,'Nihil rerum illum rerum in mollitia error.','Consequatur nesciunt odit odit eius autem praesentium similique nisi. Rerum sapiente nihil et ut perferendis vitae. Dolores ducimus sequi eius error aut vitae. Aliquam ipsa et atque ab. Laborum sint nostrum eaque ut aliquid. Dignissimos quam recusandae veniam sint. Et ratione non saepe ad quae fugiat temporibus. Aperiam omnis et laborum consectetur. Id illum sunt nobis dignissimos. Praesentium iusto ea aliquam veritatis eum.',1,'2017-08-23 01:54:56','2017-08-23 01:54:56',0),(8,'Eum optio quidem ea et.','Illo magni ea fugit veritatis omnis. Quia et numquam ex laborum voluptatibus. Dolore enim rerum sunt ut doloribus aut. Sunt cupiditate neque molestiae dolores ducimus autem facere. Iure at accusantium eaque rerum quae. Ex occaecati ea voluptatibus perspiciatis. Similique quasi et est omnis autem sint. Amet quos veritatis sit nostrum perferendis debitis veniam nostrum. Earum rem ut quia rerum eius. Est quam enim excepturi alias accusantium qui. Aliquam quasi molestiae quia illum minus nobis dolor possimus. Aut temporibus iure et sed sunt. Eum cum ea eos perferendis placeat vero velit et. Exercitationem aut excepturi odit et esse quas laudantium.',1,'2017-08-23 01:54:56','2017-08-23 01:54:56',0),(9,'Ipsam eius soluta placeat maiores est sequi.','Facilis illum consequuntur quaerat. In repudiandae rerum quod sed. Facilis dolor deserunt ut commodi reprehenderit nesciunt. Dolor repellendus quo recusandae aut. Porro et non porro at. Sint labore consequatur nam maxime. Sit soluta ut quis beatae reprehenderit molestiae odio iste. Impedit quia quia commodi vero saepe et. Amet laboriosam non sit aut optio sequi.',1,'2017-08-23 01:54:56','2017-08-23 01:54:56',0),(10,'Minima omnis ut laudantium sapiente autem aut.','Et unde molestiae fugiat autem autem aut quidem. Sint adipisci sed rerum a assumenda quod rerum officia. Accusantium facilis tempore et quis eum maxime. Ipsa nisi quia officiis nihil soluta. Odio eum aut et quasi. Consequuntur perferendis eos qui laborum non occaecati est incidunt. Id veniam sed dolores maiores. Beatae eos cum vel consequuntur expedita. Deleniti nulla quae omnis laudantium adipisci sint possimus. Dolores voluptas velit rerum ad natus consectetur voluptas.',1,'2017-08-23 01:54:56','2017-08-23 01:54:56',0),(11,'Quia inventore laudantium maxime ipsa sit.','Dolore ex eos eveniet distinctio nulla. Qui odio vel velit vel ut aut. Ut nihil maiores quibusdam consequatur cupiditate. Eius voluptatem rerum autem earum quis accusamus. Consequatur quis delectus ab sunt. Voluptas consequatur quidem sit hic non ut nemo. Placeat delectus cumque numquam commodi ratione maxime adipisci. Consequuntur sunt ut facere repellat. Excepturi qui sequi sed ut omnis sapiente illo. Rem et sequi laborum est et alias voluptatem. Impedit est amet ut sunt quasi. Fuga error hic accusantium et maiores. Sequi nesciunt non sed qui deserunt at aut aperiam.',1,'2017-08-23 01:54:57','2017-08-23 01:54:57',0),(12,'Nemo iusto placeat autem reprehenderit aut magnam.','Et et quis et amet consequatur doloremque. Sunt est quae voluptatibus hic incidunt. Dolorem pariatur voluptatem atque dolores animi ut et voluptatum. Consequatur dolores excepturi sequi harum nobis. Recusandae delectus id reiciendis voluptates ipsa quam dolorum. Non consectetur sunt ut modi. Pariatur illo magni quibusdam quas.',1,'2017-08-23 01:54:57','2017-08-23 01:54:57',0),(13,'Nostrum tenetur dolor aliquam ut distinctio.','Modi dolores quo quibusdam et enim officiis voluptatem. Qui sapiente et omnis omnis tempora officia voluptates autem. Doloribus voluptatibus delectus voluptatem corrupti facilis nesciunt enim rerum. Vero nemo ab deleniti. Doloribus asperiores repellendus nulla dolorem. Non minus saepe ratione et. Aliquam necessitatibus sint quia optio sint tenetur occaecati. Doloribus minus deserunt aliquid et enim ea nemo. Possimus commodi sed tenetur aperiam sint et. Voluptas impedit qui ex at. Voluptatem fugit nesciunt suscipit architecto. Nobis odit deserunt asperiores provident dolorem numquam. Cumque at quos qui et voluptatem quae aut.',1,'2017-08-23 01:54:57','2017-08-23 01:54:57',0),(14,'Ex tempore voluptas sequi similique rerum aut dolore reprehenderit.','Voluptas ut quasi ipsa magnam voluptas. Corrupti fugit enim eveniet ut. Quia nihil tempora corporis a sit voluptate. Laborum vel dolores saepe suscipit officia omnis. Provident non voluptatibus non est et libero eaque. Amet quisquam totam reiciendis eos eaque quo. Omnis optio rem officia debitis minima rem qui. Modi natus reprehenderit dolores delectus rem repellat id. Tempora accusantium dolorem magnam esse quidem praesentium autem voluptatem. Quae rerum tenetur et. Distinctio quo corrupti nostrum. Sit accusamus tempore ipsam magnam quod maiores et et. Quod qui amet ex magnam.',1,'2017-08-23 01:54:57','2017-08-23 01:54:57',0),(15,'Maiores dolorem aspernatur quia quod id.','Fugiat provident pariatur debitis reiciendis. Veritatis ut quaerat est est voluptatem dolores ut nam. Id omnis aut porro laboriosam culpa laborum doloremque veritatis. A nisi non neque. Ut magnam et aut. Et sit consequuntur sed excepturi porro optio rerum. Totam consequatur et explicabo sunt et enim. Nobis nisi sit nostrum voluptatem ratione. At cumque magni quis autem. Ducimus voluptate sunt sapiente commodi. Qui sed aspernatur placeat inventore. Aliquid alias totam blanditiis voluptatem earum vel. Ea dicta aut labore quaerat quos. Quod laboriosam non ut et ipsum.',1,'2017-08-23 01:54:58','2017-08-28 09:24:35',0),(16,'Veniam mollitia aliquid sed assumenda.','Quod quisquam vitae ut libero ratione suscipit. Doloremque porro ducimus velit non. Consequatur aut voluptatem nulla delectus unde vel. Suscipit voluptatem nulla autem aut et. Repudiandae architecto mollitia ad placeat explicabo eum facilis quia. Iste aut debitis laudantium. Soluta itaque et et non minus. Totam aut voluptatem deleniti. Delectus harum necessitatibus accusamus recusandae. Et et nostrum ipsa sit ea sapiente deleniti. Unde ut ad nostrum officiis omnis et. Quo inventore in numquam.',1,'2017-08-23 01:54:58','2017-08-23 01:54:58',0),(17,'Similique itaque laudantium facilis vel sunt unde sit.','Doloribus qui nihil optio error ratione illo. Rem ex quam exercitationem sit accusantium porro. Eum incidunt aperiam fuga numquam odio accusantium porro deserunt. Rem repudiandae veniam ea architecto sit. Quia provident et maiores sequi. Quasi soluta temporibus officiis quaerat suscipit quis. Cum sit soluta voluptatibus mollitia vel est corporis. Qui quia perferendis numquam adipisci. Iure quo porro impedit dicta fuga. Esse labore perspiciatis aperiam aut tenetur. Atque unde illo expedita. Laboriosam dolorem aliquam sit veritatis suscipit. Veritatis iusto cumque numquam ea unde. Eligendi voluptate odio occaecati velit laboriosam totam quod quam.',1,'2017-08-23 01:54:58','2017-08-23 01:54:58',0),(18,'Voluptates quae aut totam consequatur non non non.','Et dolor dolore debitis consectetur commodi dolorem quia. Quibusdam qui doloremque velit velit quia accusantium ea mollitia. Veritatis ad accusamus maiores quia et. Consequatur error dolorum earum pariatur. Voluptas rerum sit et molestias eum assumenda. Neque minus fuga porro facere fugit non. Perspiciatis praesentium aliquid id voluptas quo itaque odio.',1,'2017-08-23 01:54:58','2017-08-23 01:54:58',0),(19,'Ut corporis debitis cupiditate velit velit dignissimos ut.','Aspernatur modi sunt vero earum. Sapiente qui fugiat qui nemo. Deserunt ut est quia voluptas tempora. Aut magni quae facilis excepturi iste aliquid. Voluptatem at laborum et ex voluptas. Ullam et quas consequuntur illo in delectus laborum nobis. A aut facilis corporis omnis sint hic quia. Officia harum sed asperiores quis. Voluptas neque quo commodi ut est vero rem ipsum. Possimus atque autem quia. Hic molestiae at sit non dolorem odit. Minus aspernatur numquam est repudiandae tenetur id quam. Voluptates optio omnis architecto non id. Aperiam aut id doloribus tempora ea voluptates cumque aliquam.',1,'2017-08-23 01:54:58','2017-08-23 01:54:58',0),(20,'Et repudiandae esse qui non architecto.','Quis provident aspernatur tempora a. Quasi sequi non animi officiis quisquam. Sed dolorem nostrum incidunt rem sequi enim. Aut sequi ut sequi soluta et. Asperiores consequuntur dolores ab quia et minima quidem. Praesentium id enim est dolorem a sapiente. Ratione sed quasi consequuntur nulla. Placeat iusto inventore sint sed distinctio quos.',1,'2017-08-23 01:54:58','2017-08-23 01:54:58',0),(22,'Inventore et inventore quis.','Minus quam architecto ipsum et. Vero laboriosam asperiores quis consequatur facere quia et. Officiis soluta ut placeat odit. Illo id ex eveniet non eveniet pariatur. Assumenda assumenda est repellat. Quod accusamus ullam fuga nihil qui. Id corporis earum consequuntur molestiae inventore exercitationem sint.',1,'2017-08-23 01:54:59','2017-08-28 09:24:11',0),(36,'123124','<p>12414124</p>',1,'2017-08-24 08:56:58','2017-08-28 09:27:47',-1),(37,'阅读量从200+到20000+，我经历了什么改变?','<p>1</p><p>一开始，在简书上写作，我也是三分钟热度。注册帐号当晚睡不着，想到哪里写到哪里，捧着手机半夜敲完了千字文，稍微检查一下语句是否通顺，便迫不及待地发布了。这些文章你已经看不到了，因为已经被我设置为私密。</p><p>那时，写文只是一个表达自己的出口。零零星星的关注和个位数的喜欢，却也着实让我兴奋了几天。</p><p>然而，经过了短暂惊喜之后，突然有一天，觉得每天刷屏的强迫症连我自己都讨厌。</p><p>于是，一天不写，二天不写，三天不写……终于渐渐淡忘了还有一个帐号可以写。</p><p>这一停，不知不觉四个月就过去了。</p><p>2</p><p>今年4月，因为参加行动派的个人品牌训练营，写的作业要发布在简书上，我才想起自己这个停更多时的简书帐号。</p><p>虽然还是断断续续地写，但好歹开始写了。文章平均阅读量基本不超过200+，直到有一天心理专题主编邀请我入群。</p><p>在爱主编的鼓励下，我参加专题征文获奖，而后绝大部分文章被推荐上首页，慢慢地我找回了一点写作的感觉。</p><p>这之后发生的一切，就像开了挂，有几篇文章阅读量开始突破1000+。阅读量比以前稳步增长，但是突破步子不大。</p><p>7月，我挑战自己，又参加了无戒日更训练营，硬着头皮坚持日更了26天。（<a href=\"http://www.jianshu.com/p/ea43e407cd82\" target=\"_blank\">《都一把年纪了，我要不要重新开始日更?》）</a></p><p>虽然阅读量也就停摆在300-500左右，但因为一直在写，所以对自身的写作有了丰富的体验和相对深入的觉察。</p><p>日更结束的时候，有两个好消息接踵而来。一是我也被评为心理专题上半年度的推荐作者；二是有编辑向我约稿。﻿</p><p>每一个阶段会有一个契机，学习是前进的推动力。我开始思考简书写作之路，便有了那篇<a href=\"http://www.jianshu.com/p/bcecf58fca8f\" target=\"_blank\">《成为推荐作者后，迭代自我认知》</a><a href=\"http://www.jianshu.com/p/e514d922a7b7\" target=\"_blank\">《在日更的日子里，我成了自由撰稿人》。</a></p><p>3</p><p>爱因斯坦说，我们一直在以平庸的方式做平庸的事情，而我们一直在期待和别人不一样的结果的话，我们就是精神错乱了。</p><p>这句话虽然不中听，却一针见血。</p><p>我们明明知道陷入写作的迷局，却为什么还在老路上继续写?﻿﻿</p><p>我反思自己的心理，发现主要有以下几点﻿﻿:</p><p>第一，不愿意面对现实，用阿Q精神自我安慰。这是一种自我认知的逃避。其实，﻿﻿如果努力收益不高，就要找方法；如果方法论太多，学不过</p><br><br><p>作者：Jk不二子</p><br><p>链接：http://www.jianshu.com/p/ea0e5331ffe2</p><br><p>來源：简书</p><br><p>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</p><p>来，就要重新设定目标。</p><p>第二，不愿意改变，没有勇气。因为改变意味着归零，否定自己的价值。﻿﻿</p><p>第三，﻿﻿不愿脱离舒适圈，因为突破需要投入更多的时间和精力去刻意练习。</p><p>4</p><p>人生是一次次破局，写作亦如此。</p><p>与其把时间和精力都消耗在一个水平面的轮回中，不如退后一步，站到高处看整个系统，找到破局之处。﻿﻿</p><p>斯坦福大学精神科教授保罗•瓦茨拉维克在《改变》一书中提出，事情有两种改变的形式:一种是状态改变；另一种是模式改变。前者是第一序，后者是第二序。</p><p>如果说，加入社群，参加各种写作训练营，是第一序改变，系统内的改变，只能改变状态和体验；而真正起决定性作用的是第二序改变，就是要改变写作的模式，从根本上迭代更新，才会改变结果。</p><p>带着诸多思考，我尝试了新的写作思路。于是<a href=\"http://www.jianshu.com/p/1a81f945bc41\" target=\"_blank\">《你一定要努力，但千万别着急》</a>至今阅读量破新高，突破20000+，另一篇<a href=\"http://www.jianshu.com/p/6ffea3fc20b6\" target=\"_blank\">《你喜欢自己现在的状态吗？</a>》阅读量也近20000。</p><p>5</p><p>在出现20000+阅读量之前，我还做了些什么?﻿﻿</p><p>一、了解自己的现状，找到定位，刻意练习，强化优势，有的放矢。</p><p>•&nbsp; 通过设置文集，整理归类自己的文章，理清自己的思路。</p><p>•&nbsp; 写文章质量调查报告。研究自己哪些文章阅读量高，喜欢数较多，从内容和形式上来确定自己的长处。</p><p>•&nbsp; 制定个人写作计划，以出书的态度来对待写作。（<a href=\"http://www.jianshu.com/p/444d429ed44f\" target=\"_blank\">《你不做自己，太可惜了！——提高自我认知的心理写作（序）》</a>）</p><p>二、写作时，找到﻿﻿“我”和“你”的视角交集</p><p>这里所说的“我”就是作者视角，“你”就是读者视角。一篇阅读量高的文章一定是“我和你”的交集。</p><p>这一写作理念，在我参加了行动派的Super Writer国际写作课程之后，有了进一步的深刻认识。</p><p>即使是我喜欢和擅长的题材，也还是要考虑读者的角度来阐述。﻿﻿﻿﻿﻿</p><p>如果一边写着完全自嗨文章，一边又梦想实现存在感，过不了多久写作就会变成痛苦和焦虑。﻿﻿</p><p>同样的内容，面对不同的受众是可以用完全不同的语言来表达的。一篇文章，可能在公众号上反映强烈，可放到简书上不一定有很好的回应，反之亦然。因为每个平台面对读者不一样，你心中无读者，读者自然也无你。﻿﻿</p><p>我们真正要提高的是按要求写作文的能力。如果你写文字是想变现，或者提高阅读量，那么，读者思维是非常重要的。﻿﻿﻿﻿</p><p>当然，对于一个写作者来说，只考虑读者视角而完全忽略自己的感受，内心不合一，就无法享受写作带给你的乐趣。</p><p>个性是一定要有的。你的思考力，你看问题的角度是文章的核心，但是你可以掌握各种不同的表达方式来达成你的各种写作的目的。﻿﻿</p><p>6</p><p>著名人本主义心理学家罗杰斯说：好的人生，是一个过程，而不是一个状态；是一个方向，而不是终点。</p><p>我想说，写作也是如此。</p><p>谨以此文，写给想在写作迷局中突围的你！</p><p>我们一起加油向前！</p><p><br><br></p><p>作者：Jk不二子</p><p><br></p><p>链接：http://www.jianshu.com/p/ea0e5331ffe2</p><p><br></p><p>來源：简书</p><p><br></p><p>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</p><p><br></p>',2,'2017-08-25 02:27:08','2017-08-28 09:27:46',1),(38,'123123','<p>123123123123123123</p>',2,'2017-08-25 02:52:04','2017-08-28 09:27:44',-1),(39,'1231231231231223','<p>12321312312312313231313</p>',2,'2017-08-25 02:52:15','2017-08-28 09:27:42',-1);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `age` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '年龄',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '10' COMMENT '性别',
  `created_at` varchar(128) NOT NULL DEFAULT '0' COMMENT '新增时间',
  `updated_at` varchar(128) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1031 DEFAULT CHARSET=utf8 COMMENT='学生表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1015,'sean',18,20,'1500518345','1502785535'),(1016,'wangyu',12,10,'1500518345','1500518345'),(1017,'wangyuan',23,20,'1500518345','1502785539'),(1019,'buhaoi',34,30,'1502777725','1502785543'),(1021,'qwe',45,20,'1502777899','1502777899'),(1023,'we',14,20,'1502778283','1502778283'),(1024,'qweee',23,30,'1502778445','1502778445'),(1025,'wyy',35,30,'1502778752','1502778752'),(1027,'lala',15,30,'1502778899','1502778899'),(1028,'wmm',255,20,'1502780758','1502780758'),(1029,'sea',13,20,'1502781923','1502781923'),(1030,'特色团',18,30,'1502782654','1502782654');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'旅行','2017-08-24 16:00:00','2017-08-24 16:00:00'),(2,'读书','2017-08-24 16:00:00','2017-08-24 16:00:00');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notice`
--

DROP TABLE IF EXISTS `user_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notice_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notice`
--

LOCK TABLES `user_notice` WRITE;
/*!40000 ALTER TABLE `user_notice` DISABLE KEYS */;
INSERT INTO `user_notice` VALUES (1,1,2),(2,2,2);
/*!40000 ALTER TABLE `user_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'root','root@root.com','$2y$10$NxWGUV.1R8J5ROqFlJXMn.ibgwhyKLap7/Mkqc760/sRsEt0i423a','vJVbStWKFlMjKDMV1m24L8KxpjaU0R4TsAEmkDvvGcKlvv4mNKOzdXpERtMa','2017-08-24 01:54:06','2017-08-24 01:54:06'),(2,'admin','admin@root.com','$2y$10$uHHL9Th7TJrZruBpl2bToejGUbq7EF5woF4TtP97aVChi3UQXogZq','J4lsCsFTzuDzcs6LTcY97x0Vgn0y7WaERGhffF4gqRYwvhtsMcV8ha7j0Ejb','2017-08-24 03:28:34','2017-08-24 03:28:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zans`
--

DROP TABLE IF EXISTS `zans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zans`
--

LOCK TABLES `zans` WRITE;
/*!40000 ALTER TABLE `zans` DISABLE KEYS */;
INSERT INTO `zans` VALUES (6,1,22,'2017-08-24 08:58:51','2017-08-24 08:58:51'),(7,1,36,'2017-08-24 09:01:46','2017-08-24 09:01:46'),(8,2,36,'2017-08-24 09:02:17','2017-08-24 09:02:17');
/*!40000 ALTER TABLE `zans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-13 13:47:23
