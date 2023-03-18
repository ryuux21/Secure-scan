-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnueabihf (armv8l)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Info`
--

DROP TABLE IF EXISTS `Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Info` (
  `Studname` varchar(30) DEFAULT NULL,
  `StudID` varchar(9) DEFAULT NULL,
  `StudClass` int(2) DEFAULT NULL,
  `StudSection` char(10) DEFAULT NULL,
  `RFID` varchar(15) NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 0,
  `Time` time DEFAULT NULL,
  PRIMARY KEY (`RFID`),
  UNIQUE KEY `StudID` (`StudID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Info`
--

LOCK TABLES `Info` WRITE;
/*!40000 ALTER TABLE `Info` DISABLE KEYS */;
INSERT INTO `Info` VALUES ('Harshith Reddy','21M010135',12,'A','0F0051160F47',0,NULL),('Jiaa Suthar','21M010021',12,'A','0F0052486772',0,NULL),('Sambridhi Sinha','21M010153',12,'A','0F00530DBCED',0,NULL),('Shabad Akhil','21M010310',12,'A','0F0053677E45',0,NULL),('Dhruv Nair','22M010003',12,'A','130059744A74',0,NULL),('Srikashyap Sagar','21M010049',12,'A','130059ABE607',0,NULL),('Alle Sai Lohith Reddy','21M010125',12,'A','130059E88E2C',0,NULL),('Pruthvi Narayana','21M010279',12,'A','13005A4EFDFA',0,NULL),('Rishi Vhavle','21M010018',12,'A','6400DD702EE7',1,NULL),('Venkat Saahit Kamu','21M010081',12,'A','67004A65470F',1,NULL),('Abhishek Karnati','21M010040',12,'A','67004A7F3260',0,NULL),('N Shashank Reddy','21M010063',12,'A','67004AAE5EDD',1,NULL),('S Shivaramakrishna','21M010245',12,'A','67004B05C6EF',0,NULL),('Namburi Sidhu','21M010142',12,'A','6700543CF5FA',0,NULL),('Venkat Samhit Kamu','21M010102',9,'A','670054A277E6',0,NULL);
/*!40000 ALTER TABLE `Info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `position` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1001,'saahit','admin','saahit','power'),(1002,'rishi','admin','rishi','logitech'),(1003,'shiva','admin','shiva','selva'),(1004,'admin','admin','admin','rootkit');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-08 13:50:38
