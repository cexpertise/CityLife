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
-- Table structure for table `cabbookingdetails`
--

DROP TABLE IF EXISTS `cabbookingdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cabbookingdetails` (
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `cabname` varchar(45) DEFAULT NULL,
  `mobileno` varchar(45) DEFAULT NULL,
  `noofmembers` varchar(45) DEFAULT NULL,
  `pick` varchar(45) DEFAULT NULL,
  `dropoff` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `pickuptime` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabbookingdetails`
--

LOCK TABLES `cabbookingdetails` WRITE;
/*!40000 ALTER TABLE `cabbookingdetails` DISABLE KEYS */;
INSERT INTO `cabbookingdetails` VALUES ('amardeep','singhj','WagonR','211212','2','balab','delhi','amardeepsinghdell@gmail.com',NULL),('aishwarya','rai','BMW','12121','2','TILAKQ','RAJORI','ASH@GMAIL.COM',NULL),('Manik','Chawla','WagonR','9686654','21','Ravinder nagar','Rajori gardemn','chawla@gmail.com','05:55'),('Fuddu','mai','Eeco','121121212','2','Ghar','Bada ghar','fuddu@gmail.com','18:06'),('Iron','Man','WagonR','1212','2','pta ni','dekh lo ','iron@gmail.com',NULL),('aamir','bhaiya','WagonR','12211212','2','sarrai','kalu','kala@gmail.com',NULL),('Katrina','Kaif','Eeco','100100100','2','Salman ka ghar','Ranbir ka ghar','katrina@gmail.com','00:00'),('Deeepak bhai ji','bhaiyya','SUV','1221212','1','najafgarh','Rajendra place ','lala2@gmail.com',NULL),('Deeepak bhai ','baniya','BMW','1221212','2','Badarpur','Rajendra place ','lala@gmail.com',NULL),('paplju','singh','WagonR','211212','q2','assdasd','wqwdad','lalu@gmail.com',NULL),('Lazar','angelvo','Eeco','12121212','2','gHAR','GHAR','lazar@gmail.com','15:33'),('Shakti','Singbh','Eeco','1121212','2','IP ESTATE','GHAR','shakti@gmail.com','00:12'),('Spardha','ji','WagonR','121121','2','Ghar','Dusra ghar','spardha@gmail.com','10:10'),('Vishjal','cool','BMW','12121211','1','Rajendra place','Cool place','vishal@gmail.com','00:12');
/*!40000 ALTER TABLE `cabbookingdetails` ENABLE KEYS */;
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
