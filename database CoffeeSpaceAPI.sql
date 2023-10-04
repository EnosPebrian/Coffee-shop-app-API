-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: crystalux.site    Database: coffee-shop-api
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

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
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (1,'Coffee','2023-09-21 19:31:22','2023-09-21 19:31:22'),(4,'Food','2023-09-22 16:21:05','2023-09-22 16:21:05'),(5,'Snack','2023-09-22 16:21:09','2023-09-22 16:21:09'),(6,'Tea','2023-09-24 17:44:28','2023-09-24 17:44:28'),(7,'Juice','2023-09-24 17:44:35','2023-09-24 17:46:58');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) NOT NULL,
  `imageName` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `stock` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `categoryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `productName` (`productName`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `Products_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `Categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,'Kopi Tubruk','productImage_2023-09-22-15-04-57.jpeg','Cap Jagung',16000,979,'2023-09-21 19:31:22','2023-09-27 09:04:03',1),(2,'Tea','productImage_2023-09-22-15-12-09.jpeg','Hot',7000,94,'2023-09-15 13:08:25','2023-09-27 12:53:13',6),(3,'Iced Matcha Fusion','productImage_2023-09-22-15-14-02.jpeg','Ice',28000,97,'2023-09-15 13:10:40','2023-09-27 09:05:09',1),(4,'Vietnam drip','productImage_2023-09-23-09-00-40.jpeg','Traditional Vietnamese coffee recipe, using coffee roasted between medium and dark',13000,73,'2023-09-23 09:00:40','2023-09-27 12:53:13',1),(5,'Caramel Macchiato','productImage_2023-09-24-14-22-41.jpeg','coffee, vanilla, milk, and caramel',30000,119,'2023-09-24 14:22:41','2023-09-27 09:04:25',1),(6,'Nasi Goreng Special','productImage_2023-09-24-18-00-08.jpeg','with egg, chicken, and meat ball',25000,4,'2023-09-24 18:00:08','2023-09-27 09:04:25',4),(7,'Chocolate Cake','productImage_2023-09-26-12-26-14.jpeg','rich chocolate flavor and creamy cake',10000,14,'2023-09-26 12:26:14','2023-09-26 12:39:11',5),(8,'Avocado Juice','productImage_2023-09-26-12-28-50.jpeg','Avocado juice / Jus Alpukat',25000,8,'2023-09-26 12:28:50','2023-09-26 12:29:29',7);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaction_detail_statuses`
--

DROP TABLE IF EXISTS `Transaction_detail_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transaction_detail_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction_detail_statuses`
--

LOCK TABLES `Transaction_detail_statuses` WRITE;
/*!40000 ALTER TABLE `Transaction_detail_statuses` DISABLE KEYS */;
INSERT INTO `Transaction_detail_statuses` VALUES (1,'Preparing','2023-09-21 19:31:23','2023-09-21 19:31:23'),(2,'Cooking','2023-09-21 19:31:23','2023-09-21 19:31:23'),(3,'Serving','2023-09-21 19:31:23','2023-09-21 19:31:23'),(4,'Done','2023-09-21 19:31:23','2023-09-21 19:31:23');
/*!40000 ALTER TABLE `Transaction_detail_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaction_details`
--

DROP TABLE IF EXISTS `Transaction_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transaction_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transactionId` int NOT NULL,
  `productId` int NOT NULL,
  `price` int NOT NULL,
  `qty` int DEFAULT NULL,
  `discount` int DEFAULT '0',
  `status` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `transactionId` (`transactionId`),
  KEY `productId` (`productId`),
  KEY `status` (`status`),
  CONSTRAINT `Transaction_details_ibfk_1` FOREIGN KEY (`transactionId`) REFERENCES `Transactions` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `Transaction_details_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `Products` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `Transaction_details_ibfk_3` FOREIGN KEY (`status`) REFERENCES `Transaction_detail_statuses` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction_details`
--

LOCK TABLES `Transaction_details` WRITE;
/*!40000 ALTER TABLE `Transaction_details` DISABLE KEYS */;
INSERT INTO `Transaction_details` VALUES (7,1,4,13000,2,0,1,'2023-09-24 16:41:50','2023-09-24 16:41:50'),(8,2,2,7000,2,0,1,'2023-09-24 19:02:57','2023-09-24 19:02:57'),(9,3,6,25000,2,0,1,'2023-09-24 19:03:17','2023-09-24 19:03:17'),(10,4,6,25000,1,0,1,'2023-09-25 22:28:29','2023-09-25 22:28:29'),(11,5,4,13000,1,0,1,'2023-09-26 12:39:11','2023-09-26 12:39:11'),(12,5,6,25000,1,0,1,'2023-09-26 12:39:11','2023-09-26 12:39:11'),(13,5,7,10000,1,0,1,'2023-09-26 12:39:11','2023-09-26 12:39:11'),(14,6,4,13000,20,0,1,'2023-09-26 14:13:21','2023-09-26 14:13:21'),(15,6,1,16000,20,0,1,'2023-09-26 14:13:21','2023-09-26 14:13:21'),(16,7,3,28000,1,0,1,'2023-09-27 09:03:45','2023-09-27 09:03:45'),(17,7,2,7000,1,0,1,'2023-09-27 09:03:45','2023-09-27 09:03:45'),(18,8,4,13000,2,0,1,'2023-09-27 09:04:03','2023-09-27 09:04:03'),(19,8,1,16000,1,0,1,'2023-09-27 09:04:03','2023-09-27 09:04:03'),(20,9,6,25000,2,0,1,'2023-09-27 09:04:25','2023-09-27 09:04:25'),(21,9,5,30000,1,0,1,'2023-09-27 09:04:25','2023-09-27 09:04:25'),(22,10,3,28000,2,0,1,'2023-09-27 09:05:09','2023-09-27 09:05:09'),(23,12,2,7000,3,0,1,'2023-09-27 12:53:10','2023-09-27 12:53:10'),(24,12,4,13000,2,0,1,'2023-09-27 12:53:10','2023-09-27 12:53:10');
/*!40000 ALTER TABLE `Transaction_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaction_order_types`
--

DROP TABLE IF EXISTS `Transaction_order_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transaction_order_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_type` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction_order_types`
--

LOCK TABLES `Transaction_order_types` WRITE;
/*!40000 ALTER TABLE `Transaction_order_types` DISABLE KEYS */;
INSERT INTO `Transaction_order_types` VALUES (1,'Dine In','2023-09-21 19:31:22','2023-09-21 19:31:22'),(2,'Take Away','2023-09-21 19:31:22','2023-09-21 19:31:22'),(3,'Catering','2023-09-21 19:31:22','2023-09-21 19:31:22');
/*!40000 ALTER TABLE `Transaction_order_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transactions`
--

DROP TABLE IF EXISTS `Transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `total` int DEFAULT '0',
  `order_type` int NOT NULL,
  `isPaid` tinyint(1) DEFAULT '0',
  `staff` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_type` (`order_type`),
  KEY `staff` (`staff`),
  CONSTRAINT `Transactions_ibfk_1` FOREIGN KEY (`order_type`) REFERENCES `Transaction_order_types` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `Transactions_ibfk_2` FOREIGN KEY (`staff`) REFERENCES `Users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transactions`
--

LOCK TABLES `Transactions` WRITE;
/*!40000 ALTER TABLE `Transactions` DISABLE KEYS */;
INSERT INTO `Transactions` VALUES (1,NULL,28860,1,1,1,'2023-09-21 19:31:22','2023-09-24 16:41:50'),(2,NULL,15540,1,1,1,'2023-09-24 19:02:43','2023-09-24 19:03:00'),(3,NULL,55500,2,1,1,'2023-09-24 19:03:04','2023-09-24 19:03:17'),(4,NULL,27750,2,1,17,'2023-09-25 22:28:24','2023-09-25 22:33:46'),(5,'Sony',53280,1,1,1,'2023-09-26 12:38:46','2023-09-26 12:39:11'),(6,NULL,643800,3,1,1,'2023-09-26 14:12:55','2023-09-26 14:13:21'),(7,NULL,38850,1,1,1,'2023-09-27 09:03:32','2023-09-27 09:03:45'),(8,NULL,46620,1,1,1,'2023-09-27 09:03:48','2023-09-27 09:04:03'),(9,NULL,88800,2,1,1,'2023-09-27 09:04:09','2023-09-27 09:04:26'),(10,NULL,62160,2,1,1,'2023-09-27 09:05:01','2023-09-27 09:05:09'),(12,NULL,52170,1,1,1,'2023-09-27 12:53:01','2023-09-27 12:53:14');
/*!40000 ALTER TABLE `Transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_roles`
--

DROP TABLE IF EXISTS `User_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_roles`
--

LOCK TABLES `User_roles` WRITE;
/*!40000 ALTER TABLE `User_roles` DISABLE KEYS */;
INSERT INTO `User_roles` VALUES (1,'Admin','2023-09-21 19:31:22','2023-09-21 19:31:22'),(2,'Cashier','2023-09-21 19:31:22','2023-09-21 19:31:22');
/*!40000 ALTER TABLE `User_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` int DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`),
  KEY `role` (`role`),
  CONSTRAINT `Users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `User_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,1,'admin',NULL,'$2b$12$kw3WxwLEniVLifJIBk.q/edmvpn5ZlbbX7JaOXeqBZGVw9fhuVIim',NULL,'admin',NULL,'male',1,'2023-09-12 11:45:08','2023-09-12 20:44:43'),(15,2,'CSH-Bante',NULL,'$2b$12$2kcgWT.o/Uok8VziqTW/.eWUnWrXKnDDbHhbdQzqCtU0nHW0oyfei',NULL,'Bante',NULL,'male',0,'2023-09-12 17:59:40','2023-09-13 11:18:13'),(17,2,'CSH-Gaje',NULL,'$2b$12$3f6fHV6z9R3tTh6w1UZxGuJPi9hiwpUctPeHvX1Bx1GTdnQ8/2M/K',NULL,'Gaje',NULL,'male',1,'2023-09-12 18:02:46','2023-09-13 14:09:33'),(18,2,'CSH-Coco',NULL,'$2b$12$B7cDVfLqmnvaZGULNOkkRe79MVOPLR/kJHJqkXfLYpPxdx0541sH2',NULL,'Coco',NULL,'male',1,'2023-09-12 18:03:49','2023-09-12 18:03:49'),(19,2,'CSH-Monte',NULL,'$2b$12$XmwfoUQNQoLCw9AzHxtMbOMT2RxOE8i7eYsfBufTu7915c5cTPwTS',NULL,'Monte',NULL,'male',1,'2023-09-12 18:04:42','2023-09-14 09:09:42'),(61,2,'CSH-Mane',NULL,'$2b$12$Y7UavUiK9nbPk9Mx8ikwg.vdDjgUOoEQj/2ljOb74Qli3T5dDSgQ6',NULL,'CSH-Mane',NULL,'male',1,'2023-09-23 10:24:37','2023-09-23 10:24:37'),(62,2,'CSH-Mano',NULL,'$2b$12$/jMM3tp7H97HdYJ/ZDJBXOuJoKtMZeISfDzI9.KIqHOjllQvth2/e',NULL,'CSH-Mano',NULL,'male',1,'2023-09-23 10:27:33','2023-09-23 10:27:33'),(64,2,'CSH-Bento',NULL,'$2b$12$JMZIvCt.yDYsf55E9e7QyOBY8fdTXDvpCf485TxyNDOM396ZF5FL.',NULL,'CSH-Bento',NULL,'male',1,'2023-09-23 10:27:46','2023-09-23 10:27:46'),(65,2,'CSH-Fore',NULL,'$2b$12$8wzHultCryDKC1WSKx3WYODYhWtxtb5mxmTQAPjibuL5pWftOwGvq',NULL,'CSH-Fore',NULL,'male',1,'2023-09-23 10:27:58','2023-09-23 10:27:58'),(66,2,'CSH-Ramzi',NULL,'$2b$12$k2SsQlmGjtA/YnP2kqWkg.nDBYhzl8OdtIXRJamyPIlmSvG41OKhS',NULL,'CSH-Ramzi',NULL,'male',1,'2023-09-23 10:28:21','2023-09-23 10:28:21'),(67,2,'CSH-Reva',NULL,'$2b$12$hANv/h/7UNPPJXLdlmMFhO6h6q.sRQ.CJxuAz10KLSM.7RgcyCa4G',NULL,'CSH-Reva',NULL,'male',1,'2023-09-23 10:28:35','2023-09-23 10:28:35'),(68,2,'CSH-Gina',NULL,'$2b$12$UbudLZUNgu66knNwCNq5wu2KWJ6TMz3Z.HouXUA8iiDExlS7V1tcG',NULL,'CSH-Gina',NULL,'male',1,'2023-09-23 10:28:53','2023-09-23 10:28:53'),(69,2,'CSH-Mina',NULL,'$2b$12$IDcxCS3.A6Vn2y99nJxhA.iyoEBWIqbA0ugVYrQJubK/ci34u39l6',NULL,'CSH-Mina',NULL,'male',1,'2023-09-23 10:29:16','2023-09-23 10:29:16'),(70,2,'CSH-Fira',NULL,'$2b$12$bfjFXsIHXw/7XqipD/Ud/OJ6N/iqH7P.NpTZWxjfOG/fu8gDkBobu',NULL,'CSH-Fira',NULL,'male',1,'2023-09-23 10:29:29','2023-09-23 10:29:29');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-27 14:41:00
