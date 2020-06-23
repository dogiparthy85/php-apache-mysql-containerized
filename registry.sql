-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: learningregistry
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Current Database: `learningregistry`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `learningregistry` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `learningregistry`;

--
-- Table structure for table `master_config`
--

DROP TABLE IF EXISTS `master_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_config` (
  `category` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_config`
--

LOCK TABLES `master_config` WRITE;
/*!40000 ALTER TABLE `master_config` DISABLE KEYS */;
INSERT INTO `master_config` VALUES ('system','name','Registry'),('system','footer','');
/*!40000 ALTER TABLE `master_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_link`
--

DROP TABLE IF EXISTS `system_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_link` (
  `id` char(36) NOT NULL,
  `set_value` varchar(255) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `serivce_logo_name` varchar(255) NOT NULL,
  `service_logo_type` varchar(50) NOT NULL,
  `service_logo_path` varchar(255) NOT NULL,
  `document_name` varchar(255) NOT NULL,
  `document_type` varchar(50) NOT NULL,
  `document_path` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `outer_link` tinyint(1) NOT NULL,
  `outer_link_username` varchar(100) NOT NULL,
  `outer_link_password` varchar(255) NOT NULL,
  `is_platform` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_link`
--

LOCK TABLES `system_link` WRITE;
/*!40000 ALTER TABLE `system_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_relation_link`
--

DROP TABLE IF EXISTS `system_relation_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_relation_link` (
  `id` char(36) NOT NULL,
  `master_service_id` char(36) NOT NULL,
  `child_service_id` char(36) NOT NULL,
  `date_modified` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_relation_link`
--

LOCK TABLES `system_relation_link` WRITE;
/*!40000 ALTER TABLE `system_relation_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_relation_link` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-19  2:00:36

