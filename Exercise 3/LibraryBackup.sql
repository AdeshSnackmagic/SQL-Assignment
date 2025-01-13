-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: Library
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BRANCH`
--

DROP TABLE IF EXISTS `BRANCH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BRANCH` (
  `BCode` varchar(5) NOT NULL,
  `Librarian` varchar(32) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`BCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BRANCH`
--

LOCK TABLES `BRANCH` WRITE;
/*!40000 ALTER TABLE `BRANCH` DISABLE KEYS */;
INSERT INTO `BRANCH` VALUES ('B1','John Smith','2 Anglesea Rd'),('B2','Mary Jones','34 Pearse St'),('B3','Francis Qwens','Grange X');
/*!40000 ALTER TABLE `BRANCH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HOLDINGS`
--

DROP TABLE IF EXISTS `HOLDINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HOLDINGS` (
  `Branch` varchar(5) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Copies` smallint DEFAULT NULL,
  PRIMARY KEY (`Branch`,`Title`),
  KEY `Title` (`Title`),
  CONSTRAINT `HOLDINGS_ibfk_1` FOREIGN KEY (`Branch`) REFERENCES `BRANCH` (`BCode`),
  CONSTRAINT `HOLDINGS_ibfk_2` FOREIGN KEY (`Title`) REFERENCES `TITLES` (`Title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HOLDINGS`
--

LOCK TABLES `HOLDINGS` WRITE;
/*!40000 ALTER TABLE `HOLDINGS` DISABLE KEYS */;
INSERT INTO `HOLDINGS` VALUES ('B1','A History of Dublin',1),('B1','How to Fish',2),('B1','Susannah',3),('B2','Computers',2),('B2','How to Fish',4),('B2','The Wife',3),('B3','A History of Dublin',1),('B3','Computers',4),('B3','Susannah',1),('B3','The Wife',1);
/*!40000 ALTER TABLE `HOLDINGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TITLES`
--

DROP TABLE IF EXISTS `TITLES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TITLES` (
  `Title` varchar(50) NOT NULL,
  `Author` varchar(50) DEFAULT NULL,
  `Publisher` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TITLES`
--

LOCK TABLES `TITLES` WRITE;
/*!40000 ALTER TABLE `TITLES` DISABLE KEYS */;
INSERT INTO `TITLES` VALUES ('A History of Dublin','David Little','Wiley'),('Computers','Blaise Pascal','Applewoods'),('How to Fish','Amy Fly','Stop Press'),('Susannah','Anne Brown','Macimillan'),('The Wife','Anne Brown','Macimillan');
/*!40000 ALTER TABLE `TITLES` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-13 15:16:12
