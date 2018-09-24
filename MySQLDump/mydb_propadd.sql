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
-- Table structure for table `propadd`
--

DROP TABLE IF EXISTS `propadd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propadd` (
  `propid` int(11) NOT NULL AUTO_INCREMENT,
  `hno` varchar(45) DEFAULT NULL,
  `locality` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `pin` varchar(45) DEFAULT NULL,
  `builder` varchar(45) DEFAULT NULL,
  `ptype` varchar(45) DEFAULT NULL,
  `features` varchar(45) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `rentsell` varchar(45) DEFAULT NULL,
  `currentstatus` varchar(45) DEFAULT NULL,
  `uemail` varchar(45) DEFAULT NULL,
  `bhk` varchar(45) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`propid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propadd`
--

LOCK TABLES `propadd` WRITE;
/*!40000 ALTER TABLE `propadd` DISABLE KEYS */;
INSERT INTO `propadd` VALUES (1,'wz','46/3A','New Delhi','India','110018','ME','Multistorey Apartment','Fully Furnished','Amardeep Singh','1121','500000','','On Rent','bottle@gmail.com',NULL,'5177D494-29B4-4966-A6DC-4157975626EF-5526-0000042BFADBBCF2_tmp.png'),(2,'jaa na','dont know','New Delhi - Central','India','110018','Jadoo ji','Residential House','Semi Furnished','Jadoo','1200','5000','PG','On Rent',NULL,NULL,'5177D494-29B4-4966-A6DC-4157975626EF-5526-0000042BFADBBCF2_tmp.png'),(3,'11','dcf','New Delhi','India','13234','dscsd','Multistorey Apartment','Fully Furnished','cdsdc','300','300000000','','On Rent','amardeep@gmail.com',NULL,'5177D494-29B4-4966-A6DC-4157975626EF-5526-0000042BFADBBCF2_tmp.png'),(4,'121','bank street','New Delhi','India','1323411','sp singh','Multistorey Apartment','Fully Furnished','papa','300','300000000','','On Rent','amardeep@gmail.com',NULL,'5177D494-29B4-4966-A6DC-4157975626EF-5526-0000042BFADBBCF2_tmp.png'),(5,'20','B block','New Delhi','India','110018','Mahesh','Multistorey Apartment','Fully Furnished','Mahesha yadav','100000','10000000','','Occupied','amardeep@gmail.com','2 BHK','5177D494-29B4-4966-A6DC-4157975626EF-5526-0000042BFADBBCF2_tmp.png'),(6,'Dora city','Dora bhawan','New Delhi','India','121','Dora bhaiya','Villa','Fully Furnished','Doraemon','399','1212','','Occupied','dora@gmail.com','4 BHK','IMG_0285.PNG'),(7,'1111','fgbdf','New Delhi','India','3413','xvfd','Penthouse','Semi Furnished','fgdfgs','200','230492','Sale','Vacant','as@gmail.com','3 BHK',NULL),(8,'231','dfs','New Delhi','India','12312','dfvdv','Multistorey Apartment','Fully Furnished','dv','453','3563','Rent','On Rent','dora@gmail.com',NULL,'IMG_0285.PNG');
/*!40000 ALTER TABLE `propadd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-24 11:16:02
