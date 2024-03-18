-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: myqueries
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int NOT NULL,
  `First name` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `Last name` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `Royal customer` varchar(45) COLLATE utf8mb3_romanian_ci NOT NULL,
  PRIMARY KEY (`CustomerID`,`First name`,`Last name`,`Email`,`Royal customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Alfreds','Futterkiste','Alfreds35224@gamil.com','Y'),(2,'Maria','Ander','Maria25142@gamil.com','Y'),(3,'Ana','Truillo','Ana7423@gamil.com','Y'),(4,'Tom','Hcnso','Tom85463@gamil.com','N'),(5,'Antonio','Moreno','Antonio3734@gamil.com','Y');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `Delivery ID` int NOT NULL,
  `Estimated Date` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `Status` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `Post Date` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `Track Date` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  PRIMARY KEY (`Delivery ID`,`Estimated Date`,`Status`,`Post Date`,`Track Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,'11/6/2023','shipped','7/6/2023','8/6/2023'),(2,'12/3/2023','finished','8/3/2023','9/3/2023'),(3,'5/4/2023','finished','1/4/2023','2/4/2023'),(4,'7/1/2023','finished','3/1/2023','4/1/2023'),(5,'5/5/2023','finished','2/5/2023','3/5/2023');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `Order ID` int NOT NULL,
  `Order Date` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Total Amoumt` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Order ID`,`Order Date`,`Total Amoumt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'5/6/2023','$64'),(2,'7/3/2023','$57'),(3,'29/3/2023','$785'),(4,'1/1/2023','$94'),(5,'1/5/2023','$576');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order item`
--

DROP TABLE IF EXISTS `order item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order item` (
  `productid` int NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order item`
--

LOCK TABLES `order item` WRITE;
/*!40000 ALTER TABLE `order item` DISABLE KEYS */;
INSERT INTO `order item` VALUES (23532),(234213),(365334),(523267),(632367);
/*!40000 ALTER TABLE `order item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Product id` int NOT NULL,
  `Name` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `Pirce` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `Quantityinstock` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `Category` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  PRIMARY KEY (`Product id`,`Name`,`Quantityinstock`,`Pirce`,`Category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Seeds and plants','$22','500','Seeds'),(2,'Soil and fertilizer','$40','1000','Soil'),(3,'garden tool sets','$300','40','tool'),(4,'Garden decoration','$500','30','decoration'),(5,' flowerpots','$2','5000','pots');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `Staff id` int NOT NULL,
  `First name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `Last name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `Email` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `Contact number` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`Staff id`,`First name`,`Last name`,`Contact number`,`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Aija','Anneli','Aija352@gamil.com','2151346343'),(2,'Bayly','Deklyn','Bayly63424@gmail.com','2323213135'),(3,'Caswell','Brandina','Caswell34545@gamil.com','6246867933'),(4,'Garnet','Florance','Garnet543643@gmail.com','6584674338'),(5,'Keshawnna','Jayleene','Keshawnna3524@gamil.com','6243657657');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `Supplier id` int NOT NULL,
  `First name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `Last name` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `Email` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `Contact number` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`Supplier id`,`First name`,`Last name`,`Email`,`Contact number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Kiomy','Janara','Kiomy6345@gamil.com','362431546'),(2,'Natacha','Makyah','Natacha254634@gmail.com','252657453'),(3,'Rohini','Quannisha','Rohini52653@gamil.com','526376438'),(4,'Taahirah','Rena','Taahirah6743@gmail.com','768237084'),(5,'Urooj','Rosel','Urooj352524@gamil.com','247898373');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier product`
--

DROP TABLE IF EXISTS `supplier product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier product` (
  `Product ID` int NOT NULL,
  `Supplier ID` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `Purchase Price` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  `Shipping Duration` varchar(255) COLLATE utf8mb3_romanian_ci NOT NULL,
  PRIMARY KEY (`Product ID`,`Supplier ID`,`Purchase Price`,`Shipping Duration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier product`
--

LOCK TABLES `supplier product` WRITE;
/*!40000 ALTER TABLE `supplier product` DISABLE KEYS */;
INSERT INTO `supplier product` VALUES (234,'1','$622','2h'),(342,'2','$63','7h'),(754,'3','$27','3h'),(1234,'4','$234','7h'),(23677,'5','$85','3h');
/*!40000 ALTER TABLE `supplier product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-11 11:44:26
