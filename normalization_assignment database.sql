-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: normalizationassignment
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitems` (
  `OrderID` int DEFAULT NULL,
  `Product` varchar(100) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
INSERT INTO `orderitems` VALUES (101,'Laptop',2),(101,'Mouse',1),(102,'Tablet',3),(102,'Keyboard',1),(102,'Mouse',2),(103,'Phone',1);
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL,
  `CustomerName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (101,'John Doe'),(102,'Jane Smith'),(103,'Emily Clark');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productdetail_1nf`
--

DROP TABLE IF EXISTS `productdetail_1nf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productdetail_1nf` (
  `OrderID` int DEFAULT NULL,
  `CustomerName` varchar(100) DEFAULT NULL,
  `Product` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productdetail_1nf`
--

LOCK TABLES `productdetail_1nf` WRITE;
/*!40000 ALTER TABLE `productdetail_1nf` DISABLE KEYS */;
INSERT INTO `productdetail_1nf` VALUES (101,'John Doe','Laptop'),(101,'John Doe','Mouse'),(102,'Jane Smith','Tablet'),(102,'Jane Smith','Keyboard'),(102,'Jane Smith','Mouse'),(103,'Emily Clark','Phone'),(101,'John Doe','Laptop'),(101,'John Doe','Mouse'),(102,'Jane Smith','Tablet'),(102,'Jane Smith','Keyboard'),(102,'Jane Smith','Mouse'),(103,'Emily Clark','Phone'),(101,'John Doe','Laptop'),(101,'John Doe','Mouse'),(102,'Jane Smith','Tablet'),(102,'Jane Smith','Keyboard'),(102,'Jane Smith','Mouse'),(103,'Emily Clark','Phone'),(101,'John Doe','Laptop'),(101,'John Doe','Mouse'),(102,'Jane Smith','Tablet'),(102,'Jane Smith','Keyboard'),(102,'Jane Smith','Mouse'),(103,'Emily Clark','Phone'),(101,'John Doe','Laptop'),(101,'John Doe','Mouse'),(102,'Jane Smith','Tablet'),(102,'Jane Smith','Keyboard'),(102,'Jane Smith','Mouse'),(103,'Emily Clark','Phone'),(101,'John Doe','Laptop'),(101,'John Doe','Mouse'),(102,'Jane Smith','Tablet'),(102,'Jane Smith','Keyboard'),(102,'Jane Smith','Mouse'),(103,'Emily Clark','Phone');
/*!40000 ALTER TABLE `productdetail_1nf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-08 20:24:57
