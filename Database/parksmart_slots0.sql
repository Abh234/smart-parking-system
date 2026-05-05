-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: parksmart
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `slots`
--

DROP TABLE IF EXISTS `slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slots` (
  `slot_id` int NOT NULL AUTO_INCREMENT,
  `parking_id` int DEFAULT NULL,
  `slot_name` varchar(20) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'available',
  `price` int DEFAULT '50',
  PRIMARY KEY (`slot_id`),
  KEY `parking_id` (`parking_id`),
  CONSTRAINT `slots_ibfk_1` FOREIGN KEY (`parking_id`) REFERENCES `parking` (`parking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slots`
--

LOCK TABLES `slots` WRITE;
/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
INSERT INTO `slots` VALUES (1,1,'A1','booked',50),(2,1,'A2','booked',50),(3,1,'A3','booked',50),(4,1,'B1','booked',60),(5,1,'B2','booked',60),(6,1,'B3','booked',60),(7,1,'C1','booked',70),(8,1,'C2','booked',70),(9,1,'C3','booked',70),(10,NULL,'Slot D1','booked',50),(11,NULL,'Slot D2','available',50),(12,NULL,'Slot D3','available',50),(13,NULL,'Slot E1','available',60),(14,NULL,'Slot E2','available',60),(15,NULL,'Slot E3','available',60),(16,NULL,'Slot F1','available',70),(17,NULL,'Slot F2','available',70),(18,NULL,'Slot F3','available',70),(19,NULL,'Slot G1','available',80),(20,NULL,'Slot G2','available',80),(21,NULL,'Slot G3','available',80),(22,NULL,'Slot H1','available',90),(23,NULL,'Slot H2','available',90),(24,NULL,'Slot H3','available',90),(25,NULL,'Slot G1','available',100),(26,NULL,'Slot G2','available',120),(27,NULL,'Slot G3','available',140),(28,1,'Slot H1','available',10),(29,1,'Slot H2','available',120),(30,1,'Slot H3','available',100);
/*!40000 ALTER TABLE `slots` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-05  9:50:33
