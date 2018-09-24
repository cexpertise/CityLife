CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Uname` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `msg` varchar(45) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (1,'Amardeep Singh ji','amardeep@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'vasu','vasu','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'deepak','deepak@gmail.com','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'asdsad','as@gmail.com','asdas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Doraemon','dora@gmail.com','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'spradha','spradha@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Golu','golu@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'gta','gta@gamil.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Vasundhra','vasund@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Deepika','deepu@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Salman','bhai@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Salman','bhai@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Akshay','kumar@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'mcdelivery','mcd@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Katrina','katrina@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'ballu','ballu@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'shakti','shakti@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Manik','chawla@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Manik','chawla@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'ramjas','ramjas@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'babloo','','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'iphone','iphone@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,' fuddu','fuddu@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'verma','verma@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'pari','pari@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'shikha','shikha@gmail.com','12344',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'lazar','lazar@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'Sergi','sergi@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'god','god@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'hanuman','hanu@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'Kapil','dev@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'rohit','rohit@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'Jatt','jatt@gmail.com','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'jaat','jaat@gmail.com','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'jaat','jaat@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'wd','wd@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'wdd','wd@gmail.com','1234',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'bnta','bottle@gmail.com','12345','1099-11-11','on','DELHI','hlo',NULL,NULL,NULL,NULL),(43,'amardeepji','amardeepsinghdell@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'ironman','iron@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'superman','super@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'ninja','ninja@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'krishna','krishna@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'hero','hero@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'moto','motorola@gmail.com','12345','2222-12-12','on','DELHI','Mote bhaiya',NULL,NULL,NULL,'5177D494-29B4-4966-A6DC-4157975626EF-5526-0000042BFADBBCF2_tmp.png'),(50,'spardha didi','spardha@gmail.com','12345','1904-12-12','on','DELHI','Mai hu mast',NULL,NULL,NULL,NULL),(51,'vishal','vishal@gmail.com','12345','1994-11-11','on','DELHI','I am cool',NULL,NULL,NULL,NULL),(52,'meet','meet@gmail.com','12345','1991-05-02','on','DELHI','Hi',NULL,NULL,NULL,NULL),(53,'Shaktimaan','shaktimaan@gmail.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-24 11:16:01
