CREATE DATABASE  IF NOT EXISTS `FoodPreference` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `FoodPreference`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: FoodPreference
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.22.04.1

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
-- Table structure for table `LOCATIONS`
--

DROP TABLE IF EXISTS `LOCATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOCATIONS` (
  `LName` varchar(50) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`LName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOCATIONS`
--

LOCK TABLES `LOCATIONS` WRITE;
/*!40000 ALTER TABLE `LOCATIONS` DISABLE KEYS */;
INSERT INTO `LOCATIONS` VALUES ('Buttery','7023421','College St'),('Lincoln','6834523','Lincoln Place'),('O\'Neill\'s','6742134','Pearse St'),('Old Nag','7678132','Dame St');
/*!40000 ALTER TABLE `LOCATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SANDWICHES`
--

DROP TABLE IF EXISTS `SANDWICHES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SANDWICHES` (
  `Location` varchar(50) NOT NULL,
  `BREAD` varchar(10) NOT NULL,
  `Filling` varchar(32) NOT NULL,
  `Price` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`Location`,`BREAD`,`Filling`),
  CONSTRAINT `SANDWICHES_ibfk_1` FOREIGN KEY (`Location`) REFERENCES `LOCATIONS` (`LName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SANDWICHES`
--

LOCK TABLES `SANDWICHES` WRITE;
/*!40000 ALTER TABLE `SANDWICHES` DISABLE KEYS */;
INSERT INTO `SANDWICHES` VALUES ('Buttery','White','Cheese',1.00),('Buttery','White','Ham',1.10),('Lincoln','Rye','Beef',1.35),('Lincoln','Rye','Ham',1.25),('Lincoln','White','Ham',1.30),('O\'Neill\'s','White','Cheese',1.20),('O\'Neill\'s','White','Turkey',1.35),('O\'Neill\'s','Whole','Ham',1.25),('Old Nag','Rye','Beef',1.35),('Old Nag','Rye','Ham',1.40);
/*!40000 ALTER TABLE `SANDWICHES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TASTES`
--

DROP TABLE IF EXISTS `TASTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TASTES` (
  `Name` varchar(32) NOT NULL,
  `Filling` varchar(32) NOT NULL,
  PRIMARY KEY (`Name`,`Filling`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TASTES`
--

LOCK TABLES `TASTES` WRITE;
/*!40000 ALTER TABLE `TASTES` DISABLE KEYS */;
INSERT INTO `TASTES` VALUES ('Brown','Beef'),('Brown','Ham'),('Brown','Turkey'),('Green','Beef'),('Green','Cheese'),('Green','Turkey'),('Jones','Cheese');
/*!40000 ALTER TABLE `TASTES` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-13 13:31:54
