-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: nodeform
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `form`
--

DROP TABLE IF EXISTS `form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form` (
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `age` int NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form`
--

LOCK TABLES `form` WRITE;
/*!40000 ALTER TABLE `form` DISABLE KEYS */;
/*!40000 ALTER TABLE `form` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-07  0:46:58

CREATE TABLE products (
    productID    INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    productCode  CHAR(3)       NOT NULL DEFAULT '',
    name         VARCHAR(30)   NOT NULL DEFAULT '',
    supplierID   INT UNSIGNED  NOT NULL,
    quantity     INT UNSIGNED  NOT NULL DEFAULT 0,
    price        DECIMAL(7,2)  NOT NULL DEFAULT 99999.99,
    PRIMARY KEY  (productID)
);

INSERT INTO products (productCode, name, supplierID, quantity, price) VALUES
    ('PEC', 'Pencil 2B', 1, 10000, 0.48),
    ('PEC', 'Pencil 2H', 1, 8000, 0.49),
    ('PEN', 'Pen Red', 1, 12000, 1.20),
    ('PEN', 'Pen Blue', 2, 12500, 1.15),
    ('PEN', 'Pen Black', 2, 13000, 1.00),
    ('PPR', 'A4', 4, 500, 4.50),
    ('PPR', 'A5', 4, 800, 5.50),
    ('PPR', 'A3', 2, 740, 8.00),
    ('PPR', 'A2', 2, 250, 10.00),
    ('PEC', 'Pencil Color Set N50', 3, 1000, 25.50),
    ('PEC', 'Pencil Color Set N25', 1, 1100, 20.50),
    ('PEC', 'Pencil Color Set N10', 1, 700, 10.00),
    ('BLK', 'Blackboard 2 x 1.5', 2, 210, 20.00),
    ('BLK', 'Blackboard 1 x 0.5', 3, 200, 12.00),
    ('BLK', 'Blackboard 0.5 x 0.2', 2, 400, 6.00);