-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nhmdb
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `audit_trail`
--

DROP TABLE IF EXISTS `audit_trail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_trail` (
  `id` bigint(20) NOT NULL,
  `user_action` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `ip_add` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkf99mxg5hu416okcm3hi4n84jd` (`status_id`),
  KEY `fks35gjghym245e7olvfhiitry7` (`user_id`),
  CONSTRAINT `fkf99mxg5hu416okcm3hi4n84jd` FOREIGN KEY (`status_id`) REFERENCES `master_status` (`status_id`),
  CONSTRAINT `fks35gjghym245e7olvfhiitry7` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_trail`
--

LOCK TABLES `audit_trail` WRITE;
/*!40000 ALTER TABLE `audit_trail` DISABLE KEYS */;
INSERT INTO `audit_trail` VALUES (1,'LOGIN','2021-10-26 15:22:35','0:0:0:0:0:0:0:1','admin',NULL,101),(2,'LOGOUT','2021-10-26 15:28:55','0:0:0:0:0:0:0:1','admin',NULL,103),(3,'LOGIN','2021-10-26 15:29:15','0:0:0:0:0:0:0:1','admin',NULL,101),(4,'LOGIN','2021-10-26 16:02:15','0:0:0:0:0:0:0:1','admin',NULL,101),(5,'LOGOUT','2021-10-26 16:03:32','0:0:0:0:0:0:0:1','admin',NULL,103),(6,'LOGIN','2021-10-26 16:03:50','0:0:0:0:0:0:0:1','admin',NULL,101),(7,'LOGIN','2021-10-26 16:46:34','0:0:0:0:0:0:0:1','admin',NULL,101),(8,'LOGOUT','2021-10-26 16:49:26','0:0:0:0:0:0:0:1','admin',NULL,103),(9,'LOGIN','2021-10-27 14:30:40','0:0:0:0:0:0:0:1','admin',NULL,101),(10,'LOGOUT','2021-10-27 14:37:57','0:0:0:0:0:0:0:1','admin',NULL,103),(11,'LOGIN','2021-10-27 14:38:11','0:0:0:0:0:0:0:1','admin',NULL,101),(12,'LOGOUT','2021-10-27 14:52:04','0:0:0:0:0:0:0:1','admin',NULL,103),(13,'LOGIN','2021-10-27 14:52:16','0:0:0:0:0:0:0:1','admin',NULL,101),(14,'LOGOUT','2021-10-27 14:54:25','0:0:0:0:0:0:0:1','admin',NULL,103),(15,'LOGIN','2021-10-27 14:54:38','0:0:0:0:0:0:0:1','admin',NULL,101),(16,'LOGIN','2021-10-27 15:07:13','0:0:0:0:0:0:0:1','admin',NULL,101),(17,'LOGOUT','2021-10-27 15:21:49','0:0:0:0:0:0:0:1','admin',NULL,103),(18,'LOGIN','2021-10-27 15:22:01','0:0:0:0:0:0:0:1','admin',NULL,101),(19,'LOGOUT','2021-10-27 15:22:46','0:0:0:0:0:0:0:1','admin',NULL,103),(20,'LOGIN','2021-10-27 15:22:57','0:0:0:0:0:0:0:1','admin',NULL,101),(21,'LOGOUT','2021-10-27 15:24:10','0:0:0:0:0:0:0:1','admin',NULL,103),(22,'LOGIN','2021-10-27 15:24:21','0:0:0:0:0:0:0:1','admin',NULL,101),(23,'LOGOUT','2021-10-27 15:37:43','0:0:0:0:0:0:0:1','admin',NULL,103),(24,'LOGIN','2021-10-27 15:37:58','0:0:0:0:0:0:0:1','admin',NULL,101);
/*!40000 ALTER TABLE `audit_trail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientdetails`
--

DROP TABLE IF EXISTS `clientdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientdetails` (
  `appId` varchar(255) NOT NULL,
  `resourceIds` varchar(255) DEFAULT NULL,
  `appSecret` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `grantTypes` varchar(255) DEFAULT NULL,
  `redirectUrl` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additionalInformation` varchar(2000) DEFAULT NULL,
  `autoApproveScopes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientdetails`
--

LOCK TABLES `clientdetails` WRITE;
/*!40000 ALTER TABLE `clientdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_status`
--

DROP TABLE IF EXISTS `master_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_status` (
  `status_id` int(11) NOT NULL,
  `status_code` varchar(15) DEFAULT NULL,
  `status_description` varchar(25) DEFAULT NULL,
  `updated_by` varchar(25) DEFAULT NULL,
  `updated_dt` timestamp NULL DEFAULT NULL,
  `created_by` varchar(25) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_status`
--

LOCK TABLES `master_status` WRITE;
/*!40000 ALTER TABLE `master_status` DISABLE KEYS */;
INSERT INTO `master_status` VALUES (100,'PENDING','Status Pending','system','2020-11-24 11:09:17','system','2020-11-24 11:09:17'),(101,'ACTIVE','Status Active','system','2020-11-24 11:09:17','system','2020-11-24 11:09:17'),(102,'INACTIVE','Status Inactive','system','2020-11-24 11:09:17','system','2020-11-24 11:09:17'),(103,'SUCCESS','Status Success','system','2020-11-24 11:09:17','system','2020-11-24 11:09:17'),(104,'FAILURE','Status Failure','system','2020-11-24 11:09:17','system','2020-11-24 11:09:17');
/*!40000 ALTER TABLE `master_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_city`
--

DROP TABLE IF EXISTS `mst_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mst_city` (
  `city_id` decimal(10,0) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_desc` varchar(50) DEFAULT NULL,
  `city_code` varchar(20) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `created_by` varchar(20) NOT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `mst_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `mst_city_country_id_fkey` (`country_id`),
  KEY `mst_city_mst_status_fkey` (`mst_status`),
  CONSTRAINT `fkc7px4atu4jcw8amv61chec0ny` FOREIGN KEY (`country_id`) REFERENCES `mst_country` (`country_id`),
  CONSTRAINT `fkt97cng24xxe8og98yk0f92k1t` FOREIGN KEY (`mst_status`) REFERENCES `master_status` (`status_id`),
  CONSTRAINT `mst_city_country_id_fkey` FOREIGN KEY (`country_id`) REFERENCES `mst_country` (`country_id`),
  CONSTRAINT `mst_city_mst_status_fkey` FOREIGN KEY (`mst_status`) REFERENCES `master_status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_city`
--

LOCK TABLES `mst_city` WRITE;
/*!40000 ALTER TABLE `mst_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_country`
--

DROP TABLE IF EXISTS `mst_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mst_country` (
  `country_id` int(11) NOT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `mst_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`country_id`),
  KEY `fkfdu9nrq4r59o4tgkg1075ogo4` (`mst_status`),
  CONSTRAINT `fkfdu9nrq4r59o4tgkg1075ogo4` FOREIGN KEY (`mst_status`) REFERENCES `master_status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_country`
--

LOCK TABLES `mst_country` WRITE;
/*!40000 ALTER TABLE `mst_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(256) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
INSERT INTO `oauth_access_token` VALUES ('4848fd5e2327cfbc8d17adb58375c366',_binary '¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0x\0sr\0java.util.DatehjÅKYt\0\0xpw\0\0x˛\È%\»xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valueq\0~\0xpt\0$97eeb467-7d9b-45a8-ac0d-7159b53b87cfsq\0~\0\nw\0\0yÉÚ\√\«xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0trustt\0readt\0writext\0bearert\0$bf29efd8-47d5-44f6-9b21-301cfbc7461c','3529c2a1b29c9f39d8bc2a36c491d548','admin','my-trusted-client',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0Admin Ombadcxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0my-trusted-clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0saltt\0+SV/dnIraaGzUIcva9EnIMC2vBVBrK5nz2SkfpaFgPeet\0userNamet\0admin1t\0\ngrant_typet\0customt\0_methodt\0POSTt\0ipt\0157.40.226.204xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0trustt\0readt\0writexsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\Z?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\05sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0\Z?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0q\0~\0 q\0~\0!q\0~\0\"q\0~\0#q\0~\0$q\0~\0%q\0~\0q\0~\0x\0psr\0\"com.web.gov.ombadc.config.UserAuth\0\0\0\0\0\0\0\0Z\0isActiveZ\0isNotBlockedJ\0user_idL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xp\0\0\0\0\0\0\'sq\0~\0\0\0\0w\0\0\0q\0~\0xt\0Ä695126f75168d9ea74ad1826ed30bcc41dfd93c53e7f11a5a471cfe62661b47e97467f779ea1152071b4e7e7332dcd5a67767b3228d3f80d28fb6fd777dffb3at\0admin1','5fb6b808914e67cbe5e0a7d2fd9ac6cc'),('5d1abc5c9ba7e0ef707543c865819798',_binary '¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0organizationt\0STLt\0landingPaget\0\Zdashboard/landingDashboardt\0userNamet\0admint\0authoritiest\0\nROLE_ADMINx\0sr\0java.util.DatehjÅKYt\0\0xpw\0\0|÷≠®wxsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valueq\0~\0xpt\0$0c7ae270-c915-4b13-9149-c13975592e16sq\0~\0w\0\0}[∑Fvxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0trustt\0readt\0writext\0bearert\0$0c72bbcb-82b2-40ae-9cf1-cb55973697fc','5c875fbe59fd3c452c3f4ee4b526233d','admin','my-trusted-client',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_ADMINxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0my-trusted-clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0saltt\0+Bst7m0lb1BxMuJZoN6D4Cn7SJhzKZgT996W2Sg4L4Jmt\0\ngrant_typet\0customt\0_methodt\0POSTt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0trustt\0readt\0writexsq\0~\0\'w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\Z?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0\'w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\'w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\03sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0\Z?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0 q\0~\0!q\0~\0\"q\0~\0#x\0psr\0com.stl.nhmservapi.config.User\0\0\0\0\0\0\0\0Z\0isActiveZ\0isNotBlockedL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0\0\0\0w\0\0\0q\0~\0xt\0Ä328f63e2e1497229033c9b3f6917471314cf621c5939915b0169afe8b86b1b5955225f3949bb16fddfa5f4bbc3617f10e7adbbdea95fa59f64aa454e5cdb6f58t\0admin','cfe6d49e9336e85a98d9ae9fa211f268');
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_approvals`
--

DROP TABLE IF EXISTS `oauth_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) DEFAULT NULL,
  `clientId` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifiedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_approvals`
--

LOCK TABLES `oauth_approvals` WRITE;
/*!40000 ALTER TABLE `oauth_approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(256) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(2000) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
INSERT INTO `oauth_client_details` VALUES ('my-trusted-client',NULL,'secret','trust,read,write','custom,authorization_code,refresh_token,implicit',NULL,NULL,360000,NULL,NULL,'true');
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_token`
--

DROP TABLE IF EXISTS `oauth_client_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(256) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_token`
--

LOCK TABLES `oauth_client_token` WRITE;
/*!40000 ALTER TABLE `oauth_client_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_code`
--

DROP TABLE IF EXISTS `oauth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_code`
--

LOCK TABLES `oauth_code` WRITE;
/*!40000 ALTER TABLE `oauth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
INSERT INTO `oauth_refresh_token` VALUES ('cfe6d49e9336e85a98d9ae9fa211f268',_binary '¨\Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valuet\0Ljava/lang/String;xpt\0$0c7ae270-c915-4b13-9149-c13975592e16sr\0java.util.DatehjÅKYt\0\0xpw\0\0}[∑Fvx',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_ADMINxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0my-trusted-clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0saltt\0+Bst7m0lb1BxMuJZoN6D4Cn7SJhzKZgT996W2Sg4L4Jmt\0\ngrant_typet\0customt\0_methodt\0POSTt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0trustt\0readt\0writexsq\0~\0\'w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\Z?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0\'w\0\0\0?@\0\0\0\0\0\0xsq\0~\0\'w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\03sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0\Z?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0 q\0~\0!q\0~\0\"q\0~\0#x\0psr\0com.stl.nhmservapi.config.User\0\0\0\0\0\0\0\0Z\0isActiveZ\0isNotBlockedL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~\0\0\0\0w\0\0\0q\0~\0xt\0Ä328f63e2e1497229033c9b3f6917471314cf621c5939915b0169afe8b86b1b5955225f3949bb16fddfa5f4bbc3617f10e7adbbdea95fa59f64aa454e5cdb6f58t\0admin');
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp` (
  `id` bigint(20) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp`
--

LOCK TABLES `otp` WRITE;
/*!40000 ALTER TABLE `otp` DISABLE KEYS */;
/*!40000 ALTER TABLE `otp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp_id_seq`
--

DROP TABLE IF EXISTS `otp_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp_id_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_id_seq`
--

LOCK TABLES `otp_id_seq` WRITE;
/*!40000 ALTER TABLE `otp_id_seq` DISABLE KEYS */;
INSERT INTO `otp_id_seq` VALUES (1);
/*!40000 ALTER TABLE `otp_id_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource` (
  `resource_id` int(11) NOT NULL,
  `resource_name` varchar(25) DEFAULT NULL,
  `parent_resource_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `resource_description` varchar(255) DEFAULT NULL,
  `resource_type` varchar(15) DEFAULT NULL,
  `resource_icon` varchar(255) DEFAULT NULL,
  `resource_url` varchar(255) DEFAULT NULL,
  `updated_by` varchar(25) DEFAULT NULL,
  `updated_dt` timestamp NULL DEFAULT NULL,
  `created_by` varchar(25) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `has_sub_menu` tinyint(1) DEFAULT NULL,
  `router_link` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`resource_id`),
  KEY `fkdr2h4c4hjjoclae15c1lkel3` (`parent_resource_id`),
  KEY `fkqorbq7mdmphvj9ly09ry5lbbj` (`status_id`),
  CONSTRAINT `fkdr2h4c4hjjoclae15c1lkel3` FOREIGN KEY (`parent_resource_id`) REFERENCES `resource` (`resource_id`),
  CONSTRAINT `fkqorbq7mdmphvj9ly09ry5lbbj` FOREIGN KEY (`status_id`) REFERENCES `master_status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,'Notification',NULL,NULL,NULL,NULL,'fa fa-plus','admin/master-setup/notification',NULL,NULL,NULL,NULL,0,NULL,NULL),(2,'Report',NULL,NULL,NULL,NULL,'fa fa-dashboard','pages/report',NULL,NULL,NULL,NULL,0,NULL,NULL),(3,'Master Report',NULL,NULL,NULL,NULL,'fa fa-plus',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(4,'User Access Control',NULL,NULL,NULL,NULL,'fa fa-plus',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL),(5,'fa fa-plus',2,NULL,NULL,NULL,'fa fa-user','admin/master-report/feedback-report',NULL,NULL,NULL,NULL,0,NULL,NULL),(6,'Dashboard',NULL,NULL,NULL,NULL,'fa fa-home','admin/dashboard',NULL,NULL,NULL,NULL,0,NULL,NULL),(7,'User',4,NULL,NULL,NULL,'fa fa-user','uac/users',NULL,NULL,NULL,NULL,0,NULL,NULL),(8,'Role',4,NULL,NULL,NULL,'fa fa-gavel','uac/roles',NULL,NULL,NULL,NULL,0,NULL,NULL),(9,'User Role',4,NULL,NULL,NULL,'fa fa-tasks','uac/userRole',NULL,NULL,NULL,NULL,0,NULL,NULL),(10,'Resource',4,NULL,NULL,NULL,'fa fa-tasks','uac/resources',NULL,NULL,NULL,NULL,0,NULL,NULL),(11,'Role Resource',4,NULL,NULL,NULL,'fa fa-tasks','uac/roleResource',NULL,NULL,NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(25) DEFAULT NULL,
  `role_description` varchar(35) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `updated_by` varchar(25) DEFAULT NULL,
  `updated_dt` timestamp NULL DEFAULT NULL,
  `created_by` varchar(25) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `fktsag5lcv8cmxr6pl9ahqco34` (`status_id`),
  CONSTRAINT `fktsag5lcv8cmxr6pl9ahqco34` FOREIGN KEY (`status_id`) REFERENCES `master_status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_SUPERADMIN','assign roles to Super Admin',101,'DEV_ADMIN','2020-11-24 11:09:17','DEV_ADMIN','2020-11-24 11:09:17'),(2,'ROLE_ADMIN','Admin role',101,'DEV_ADMIN','2020-11-24 11:09:17','DEV_ADMIN','2020-11-24 11:09:17'),(3,'ROLE_USER','General User Role',101,'DEV_ADMIN','2020-11-24 11:09:17','DEV_ADMIN','2020-11-24 11:09:17');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_resource`
--

DROP TABLE IF EXISTS `role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_resource` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `udated_dt` timestamp NULL DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `primary_resource` tinyint(1) DEFAULT '0',
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkj1plg7hh546a95jsr4e8n0rie` (`role_id`),
  KEY `fkk7ub2rgt5sdgw2gtvxghcxg8k` (`status_id`),
  KEY `fkr2orp5em3dob6f299ra9oyexr` (`resource_id`),
  CONSTRAINT `fkc52sc8b6myxucoo4gjmmac6it` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`resource_id`),
  CONSTRAINT `fkh8lunkrwoyio367ec8y12bis1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `fkj1plg7hh546a95jsr4e8n0rie` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `fkk7ub2rgt5sdgw2gtvxghcxg8k` FOREIGN KEY (`status_id`) REFERENCES `master_status` (`status_id`),
  CONSTRAINT `fkr2orp5em3dob6f299ra9oyexr` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_resource`
--

LOCK TABLES `role_resource` WRITE;
/*!40000 ALTER TABLE `role_resource` DISABLE KEYS */;
INSERT INTO `role_resource` VALUES (1,2,1,NULL,NULL,'admin','2020-11-24 11:09:17',1,0,101),(2,2,2,NULL,NULL,'admin','2020-11-24 11:09:17',1,0,101),(3,2,3,NULL,NULL,'admin','2020-11-24 11:09:17',1,0,101),(4,2,4,NULL,NULL,'admin','2020-11-24 11:09:17',1,0,101),(5,2,5,NULL,NULL,'admin','2020-11-24 11:09:17',1,0,101),(6,2,6,NULL,NULL,'admin','2020-11-24 11:09:17',1,0,101),(7,2,7,NULL,NULL,'admin','2020-11-24 11:09:17',1,0,101),(8,2,8,NULL,NULL,'admin','2020-11-24 11:09:17',1,0,101),(9,2,9,NULL,NULL,'admin','2020-11-24 11:09:17',1,0,101),(10,2,10,NULL,NULL,'admin','2020-11-24 11:09:17',1,0,101),(11,2,11,NULL,NULL,'admin','2020-11-24 11:09:17',1,0,101);
/*!40000 ALTER TABLE `role_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `email_id` varchar(64) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `title` varchar(4) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `change_pwd_flag` tinyint(1) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `updated_by` varchar(25) DEFAULT NULL,
  `updated_dt` timestamp NULL DEFAULT NULL,
  `created_by` varchar(25) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fkckj8l43x0udru7w2hrk3no9mv` (`type_id`),
  KEY `fkcqyammf2m7l9ogldtye1kjm8m` (`status_id`),
  CONSTRAINT `fkckj8l43x0udru7w2hrk3no9mv` FOREIGN KEY (`type_id`) REFERENCES `user_type` (`type_id`),
  CONSTRAINT `fkcqyammf2m7l9ogldtye1kjm8m` FOREIGN KEY (`status_id`) REFERENCES `master_status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1001,'admin','birenkrv@gmail.com','9040145016','6bfcc4026b5f162799a6dc8305c09db9c1674ac616bd5c7422a45fbb6d0816ac163047c47a1f426f4f4c6b5b5042c671eabc4fdc7310fd5b183eef59dc274604','Mr.','Biren','Kumar','2020-11-24 11:09:17',1,101,'admin','2020-11-24 11:09:17','admin','2020-11-24 11:09:17',NULL,1),(1002,'admin1','birengate@gmail.com','6207973270','6bfcc4026b5f162799a6dc8305c09db9c1674ac616bd5c7422a45fbb6d0816ac163047c47a1f426f4f4c6b5b5042c671eabc4fdc7310fd5b183eef59dc274604','Mr','Birendra k','Verma','2021-10-27 09:55:46',0,101,'admin','2021-10-27 09:56:08','admin','2021-10-27 09:55:46',NULL,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `updated_by` varchar(25) DEFAULT NULL,
  `udated_dt` timestamp NULL DEFAULT NULL,
  `created_by` varchar(25) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk859n2jvi8ivhui0rl0esws6o` (`user_id`),
  KEY `fka68196081fvovjhkek5m97n3y` (`role_id`),
  KEY `fkj4rotccilm76mn8qla7jj83pv` (`status_id`),
  CONSTRAINT `fk859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fka68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `fkj4rotccilm76mn8qla7jj83pv` FOREIGN KEY (`status_id`) REFERENCES `master_status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,2,1001,NULL,NULL,'admin','2020-11-24 11:09:17',101,'admin');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type` (
  `type_id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `type_desc` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_dt` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`type_id`),
  KEY `fkcjq7axnsihssk7nqyycmpfddx` (`status_id`),
  CONSTRAINT `fkcjq7axnsihssk7nqyycmpfddx` FOREIGN KEY (`status_id`) REFERENCES `master_status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES (1,NULL,NULL,NULL,'admin',NULL,NULL,101);
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-28 10:23:54
