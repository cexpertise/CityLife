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
-- Table structure for table `paymentdetails`
--

DROP TABLE IF EXISTS `paymentdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymentdetails` (
  `cardnumber` varchar(50) NOT NULL,
  `secure` varchar(45) DEFAULT NULL,
  `namecard` varchar(45) DEFAULT NULL,
  `TranscationID` varchar(45) GENERATED ALWAYS AS (((`cardnumber` * 2) - 10000000)) STORED,
  `amount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cardnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentdetails`
--

LOCK TABLES `paymentdetails` WRITE;
/*!40000 ALTER TABLE `paymentdetails` DISABLE KEYS */;
INSERT INTO `paymentdetails` (`cardnumber`, `secure`, `namecard`, `amount`) VALUES ('019134201291342','123','verma','3000'),('1112312123','121','Amar','1000'),('1121212121212','123','Manik Chawla',NULL),('112412142142','121','bally','1000'),('121212121','12','adada',NULL),('1212132132','1321','Akshay Kumar','3000'),('12121454666','123','bottle2','1000'),('1212312131','121','hanuman','2000'),('1212312132','1231','adsasd','1000'),('12132123','112','assd',NULL),('1214214142','123','Amardeep Singh','1000'),('122112121','312','Akhsay','2000'),('123132132132','132','asdas',NULL),('12321213','12321','arsda','3000'),('1232132132132132','12213','fuddu','1000'),('123445576665','123','Lazar','1000'),('1234567891011123','123','Amar',NULL),('1234567891012114','121','Katrina Kaif',NULL),('1234567891212','123','Kapil Dev','2000'),('13122123112','1212','raa','1000'),('13231212312132','112','ra','1000'),('13421221','12','pari','1000'),('142121241','12','sergi','2000'),('321443211','123','GOD','1000'),('5555','55','SSS','1000');
/*!40000 ALTER TABLE `paymentdetails` ENABLE KEYS */;
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
