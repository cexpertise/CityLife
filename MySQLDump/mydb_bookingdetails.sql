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
-- Table structure for table `bookingdetails`
--

DROP TABLE IF EXISTS `bookingdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookingdetails` (
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `HotelName` varchar(45) DEFAULT NULL,
  `NoofGuests` varchar(45) DEFAULT NULL,
  `MobileNo` varchar(45) DEFAULT NULL,
  `Checkintime` varchar(45) DEFAULT NULL,
  `Checkindate` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `pic` varchar(200) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookingdetails`
--

LOCK TABLES `bookingdetails` WRITE;
/*!40000 ALTER TABLE `bookingdetails` DISABLE KEYS */;
INSERT INTO `bookingdetails` VALUES ('amardeep','Singh','HotelD\'Presidnte','2','112121212','14:11','0312-12-12','amardeep@gmail.com','IMG_7069.jpg','1000'),('Ballu','bhaiya','TheAshokHotel','1','11111111','00:12','2012-12-12','ballu@gmail.com','IMG_0152.JPG','4000'),('Bholu','Singh','Skpremiumpark','2','1321321321','01:23','0032-12-31','bholu@gmail.com','D77E6047-38D3-4B88-B629-CCB0EF2A172B-9000-0000071D0DFE3300_tmp.png','3000'),('bottle','singh','HotelD\'Presidnte','2','9787979879','00:12','12122-11-11','bottle@gmail.com','1B48B0DC-64EB-4443-8B56-66364B5DE1F3-1939-000000FF40CC685F_tmp.png','1000'),('Manik','Chawla','TheAshokHotel','1','1231312','00:12','0001-12-12','chawla@gmail.com','13A9B0C3-9D69-4990-AACB-B82A07B2D917-5526-0000042BC69B2A2E_tmp.png','4000'),('Deepika','Padukone','Skpremiumpark','12','123132132','12:31','2017-11-12','deepu@gmail.com','13A9B0C3-9D69-4990-AACB-B82A07B2D917-5526-0000042BC69B2A2E_tmp.png','3000'),('Kapil','Dev','HotelSignatureGrand','2','9871100100','00:12','2017-12-12','dev@gmail.com','13A9B0C3-9D69-4990-AACB-B82A07B2D917-5526-0000042BC69B2A2E_tmp.png','2000'),('DORADORA','MON','HotelD\'Presidnte','2','132123321','13:21','2016-12-12','dora@gmail.com','DoraemonOfficial.png',NULL),('fuddu','bhaiya','HotelD\'Presidnte','1','121323','00:01','21212-12-11','fuddu@gmail.com','IMG_0024.PNG','1000'),('god','ji','HotelD\'Presidnte','123','12132321','02:13','0232-12-31','god@gmail.com','1479225266525.jpeg','1000'),('hanu','ji','HotelSignatureGrand','1','31132','00:12','0001-12-12','hanu@gmail.com','IMG_5135.JPG','2000'),('Iphone','a','Skpremiumpark','1','12312','00:12','0003-12-12','iphone@gmail.com','47AF6167-ED6D-4216-B2E7-53A239D05960-5526-0000042C09F6848A_tmp.png','3000'),('Katrina','Kaif','Skpremiumpark','2','13132132','00:31','2132-12-13','katrina@gmail.com','IMG_0301.JPG','3000'),('lazar','angelov','HotelD\'Presidnte','1','1','00:31','132123-03-21','lazar@gmail.com','1CCCE1BD-F632-4436-B03A-2FF945AB7590-9000-0000071D029DD883_tmp.png','1000'),('mcd','as','Skpremiumpark','2','112314','00:32','1212-12-12','mcd@gmail.com','47AF6167-ED6D-4216-B2E7-53A239D05960-5526-0000042C09F6848A_tmp.png','3000'),('pari','ji','HotelD\'Presidnte','1','21312','13:21','0003-12-31','pari@gmail.com','8573A919-DEF6-472D-85B2-D5987FA60753-2611-000001FB95E95766_tmp.png','1000'),('Ramjas','School','HotelD\'Presidnte','2','123131','00:11','2017-12-12','ramjas@gmail.com','47AF6167-ED6D-4216-B2E7-53A239D05960-5526-0000042C09F6848A_tmp.png','1000'),('Sergi','conts','HotelSignatureGrand','12','12','00:12','0023-12-31','sergi@gmail.com','IMG_0096.JPG','2000'),('Shakti','Sing','HotelSignatureGrand','2','12312312','00:12','2017-12-12','shakti@gmail.com','IMG_0200.JPG','2000'),('Spradha','Sharma','HotelD\'Presidnte','2','1342142142','01:12','2017-04-04','spradha@gmail.com','8573A919-DEF6-472D-85B2-D5987FA60753-2611-000001FB95E95766_tmp.png',NULL),('VasundhraS','Sharma','Skpremiumpark','2','132132132','12:13','20187-12-12','vasund@gmail.com','13A9B0C3-9D69-4990-AACB-B82A07B2D917-5526-0000042BC69B2A2E_tmp.png','3000');
/*!40000 ALTER TABLE `bookingdetails` ENABLE KEYS */;
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
