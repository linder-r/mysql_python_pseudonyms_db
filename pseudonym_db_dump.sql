CREATE DATABASE  IF NOT EXISTS `pseudonym_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pseudonym_db`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pseudonym_db
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category` text,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Architecture'),(2,'Espionage '),(3,'Literature'),(4,'Medicine'),(5,'Film'),(6,'Music'),(7,'Painting'),(8,'Philosophy'),(9,'Politics'),(10,'Statistics');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `names`
--

DROP TABLE IF EXISTS `names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `names` (
  `name_id` int NOT NULL,
  `name` text,
  `date_of_birth` int DEFAULT NULL,
  PRIMARY KEY (`name_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `names`
--

LOCK TABLES `names` WRITE;
/*!40000 ALTER TABLE `names` DISABLE KEYS */;
INSERT INTO `names` VALUES (1,'Alexander Hamilton',1755),(2,'Anne Brontë',1820),(3,'Antonio Rodolfo Quinn Oaxaca',1915),(4,'Charles-Édouard Jeanneret',1887),(5,'Charlotte Brontë',1816),(6,'Emily Brontë',1818),(7,'Erich Kästner',1899),(8,'Farrokh Bulsara',1946),(9,'François-Marie Arouet',1694),(10,'Giacomo Casanova',1725),(11,'Giovanni di Niccolò de Luteri',1469),(12,'Herbert Frahm',1913),(13,'Italo Svevo',1861),(14,'Jacopo Robusti',1518),(15,'James Madison',1751),(16,'John Jay',1745),(17,'Lew Dawidowitsch Bronstein',1879),(18,'Marie-Henri Beyle',1783),(19,'Norma Jeane Mortenson',1926),(20,'Ricardo Eliezer Neftalí Reyes Basoalto',1904),(21,'Samuel Langhorne Clemens',1835),(22,'Søren Kierkegaard',1813),(23,'Theophrastus Bombastus von Hohenheim',1493),(24,'William Sealy Gosset',1876),(25,'Jorge Luis Borges',1899);
/*!40000 ALTER TABLE `names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pseudonyms`
--

DROP TABLE IF EXISTS `pseudonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pseudonyms` (
  `pseudonym_id` int NOT NULL,
  `pseudonym` text,
  PRIMARY KEY (`pseudonym_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pseudonyms`
--

LOCK TABLES `pseudonyms` WRITE;
/*!40000 ALTER TABLE `pseudonyms` DISABLE KEYS */;
INSERT INTO `pseudonyms` VALUES (1,'Acton Bell'),(2,'Anthony Quinn'),(3,'Antonio Pratolini'),(4,'Aron Hector Schmitz'),(5,'Berthold Bürger'),(6,'Constantin Constantius'),(7,'Currer Bell'),(8,'Dosso Dossi'),(9,'Ellis Bell'),(10,'Freddie Mercury'),(11,'Johannes de Silentio'),(12,'Le Corbusier'),(13,'Leo Trotzki'),(14,'Marilyn Monroe'),(15,'Mark Twain'),(16,'Melchior Kurtz'),(17,'Pablo Neruda'),(18,'Paracelsus'),(19,'Peter Flint'),(20,'Publius'),(21,'Robert Neuner'),(22,'Stendahl'),(23,'Student'),(24,'Tintoretto'),(25,'Voltaire'),(26,'Willy Brandt'),(27,'H. Bustos Domecq');
/*!40000 ALTER TABLE `pseudonyms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationship`
--

DROP TABLE IF EXISTS `relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relationship` (
  `relationship_id` int NOT NULL AUTO_INCREMENT,
  `name_id` int NOT NULL,
  `pseudonym_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`relationship_id`),
  KEY `name_id` (`name_id`),
  KEY `pseudonym_id` (`pseudonym_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `relationship_ibfk_1` FOREIGN KEY (`name_id`) REFERENCES `names` (`name_id`),
  CONSTRAINT `relationship_ibfk_2` FOREIGN KEY (`pseudonym_id`) REFERENCES `pseudonyms` (`pseudonym_id`),
  CONSTRAINT `relationship_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationship`
--

LOCK TABLES `relationship` WRITE;
/*!40000 ALTER TABLE `relationship` DISABLE KEYS */;
INSERT INTO `relationship` VALUES (1,25,27,3),(2,12,26,9),(3,9,25,8),(4,14,24,7),(5,24,23,10),(6,18,22,3),(7,7,21,3),(8,1,20,9),(9,15,20,9),(10,16,20,9),(11,7,19,3),(12,23,18,4),(13,20,17,3),(14,7,16,3),(15,21,15,3),(16,19,14,5),(17,17,13,9),(18,4,12,1),(19,22,11,8),(20,8,10,6),(21,6,9,3),(22,11,8,7),(23,5,7,3),(24,22,6,8),(25,7,5,3),(26,13,4,3),(27,10,3,2),(28,3,2,5),(29,2,1,3);
/*!40000 ALTER TABLE `relationship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-15 17:38:35
