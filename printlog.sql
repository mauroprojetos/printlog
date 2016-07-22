-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: printlog
-- ------------------------------------------------------
-- Server version	5.5.43-0+deb7u1

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
-- Current Database: `printlog`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `printlog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `printlog`;

--
-- Table structure for table `printlog`
--

DROP TABLE IF EXISTS `printlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `printlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eventid` int(10) NOT NULL,
  `jobid` int(10) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `client` varchar(100) DEFAULT NULL,
  `timecreated` datetime NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `printer` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `jobbytes` int(10) DEFAULT NULL,
  `pagecount` int(10) DEFAULT NULL,
  `numberofcopies` int(10) DEFAULT '1',
  `totalpages` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`eventid`,`jobid`,`timecreated`),
  KEY `idx_timecreated` (`timecreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printlog`
--

LOCK TABLES `printlog` WRITE;
/*!40000 ALTER TABLE `printlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `printlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'printlog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-18 11:20:51
