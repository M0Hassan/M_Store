-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: m_store
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'mohamed','hassan','aminmohamedadan@gmail.com','070774396357','Nairobi','$5$rounds=535000$HIBwVK2WzMSwtluG$GdUVm9d/9QbD2y/Y8qulJxkTDgGQz.BUT7.jQPVeJC/','manager','0');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `ofname` text NOT NULL,
  `pid` int NOT NULL,
  `quantity` int NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ddate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (11,NULL,'Mohamed Hassan',5,1,'Nairobi','0707743963','no','2022-02-26 16:45:16','2022-03-05'),(12,16,'hassan',17,3,'Nairobi','0707743963','no','2022-02-27 14:03:44','2022-03-06'),(13,20,'Mohamed Hassan',19,1,'Nairobi','0707743963','no','2022-03-01 13:45:10','2022-03-08');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_level`
--

DROP TABLE IF EXISTS `product_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_level` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `v_shape` varchar(10) NOT NULL DEFAULT 'no',
  `polo` varchar(10) NOT NULL DEFAULT 'no',
  `clean_text` varchar(10) NOT NULL DEFAULT 'no',
  `design` varchar(10) NOT NULL DEFAULT 'no',
  `chain` varchar(10) NOT NULL DEFAULT 'no',
  `leather` varchar(10) NOT NULL DEFAULT 'no',
  `hook` varchar(10) NOT NULL DEFAULT 'no',
  `color` varchar(10) NOT NULL DEFAULT 'no',
  `formal` varchar(10) NOT NULL DEFAULT 'no',
  `converse` varchar(10) NOT NULL DEFAULT 'no',
  `loafer` varchar(10) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_level`
--

LOCK TABLES `product_level` WRITE;
/*!40000 ALTER TABLE `product_level` DISABLE KEYS */;
INSERT INTO `product_level` VALUES (1,1,'no','no','yes','no','no','no','no','no','no','no','no'),(2,2,'no','no','no','no','yes','yes','no','no','no','no','no'),(3,3,'no','no','no','no','no','yes','no','no','no','no','yes'),(4,4,'no','no','no','no','no','yes','yes','no','no','no','no'),(5,5,'no','yes','yes','no','no','no','no','no','no','no','no'),(6,6,'no','yes','yes','no','no','no','no','no','no','no','no'),(7,7,'yes','no','no','yes','no','no','no','no','no','no','no'),(8,8,'no','no','yes','no','no','no','no','no','no','no','no'),(9,9,'yes','no','no','yes','no','no','no','no','no','no','no'),(10,10,'yes','no','yes','no','no','no','no','no','no','no','no'),(14,14,'no','no','no','no','no','yes','yes','no','no','no','no'),(12,12,'yes','no','no','yes','no','no','no','no','no','no','no'),(13,13,'no','no','no','no','no','yes','no','no','no','no','yes'),(15,15,'no','no','no','no','no','yes','no','yes','no','no','no'),(16,16,'no','no','no','no','no','yes','yes','yes','no','no','no'),(17,17,'no','no','no','no','yes','yes','no','no','no','no','no'),(18,18,'no','no','no','no','yes','yes','no','no','no','no','no'),(19,19,'no','no','no','yes','yes','yes','no','no','no','no','no'),(20,20,'no','no','no','no','no','yes','no','no','no','yes','no'),(21,21,'no','no','no','no','no','yes','no','no','yes','no','no');
/*!40000 ALTER TABLE `product_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_view`
--

DROP TABLE IF EXISTS `product_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_view` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_view`
--

LOCK TABLES `product_view` WRITE;
/*!40000 ALTER TABLE `product_view` DISABLE KEYS */;
INSERT INTO `product_view` VALUES (1,9,9,'2018-09-22 02:19:30'),(2,9,7,'2018-09-27 02:47:43'),(3,9,12,'2018-09-22 03:20:59'),(4,9,10,'2018-09-29 03:07:11'),(5,9,5,'2018-09-22 03:19:19'),(6,9,8,'2018-09-21 15:57:50'),(7,9,6,'2018-09-22 02:12:54'),(8,9,1,'2018-09-22 03:03:36'),(9,20,12,'2022-03-01 11:37:31'),(10,20,7,'2022-03-01 11:37:49'),(11,20,9,'2022-03-01 11:37:46');
/*!40000 ALTER TABLE `product_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pName` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `description` text NOT NULL,
  `available` int NOT NULL,
  `category` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'T-Shirt',120,'T-Shirt',4,'tshirt','t-shirt','t-007','MSTS14738.jpg','2018-09-20 07:10:40'),(2,'Baborry wallet',6000,'Baborry-Double-Zipper-Coin-Bag-RFID-Blocking-Men-Wallets-New-Brand-PU-Leather-Wallet-Money-Purses',3,'wallet','wallet','w-004','IMG_1212.jpg','2018-09-20 07:40:28'),(3,'Loafer Shoes',2000,'Loafer black shoes',8,'shoes','shoes','s-001','8544789_5_.jpg','2018-09-20 08:33:57'),(4,'Artificial Belt',1200,'Black artificial belt',9,'belt','belt','b-001','0283BLT.jpg','2018-09-20 08:35:44'),(5,'Polo T-shirt',500,'Polo t-shirt',10,'tshirt','t-shirt','s-002','lp00-2.jpg','2018-09-20 08:40:06'),(6,'T-shirt',300,'Polo colorful t-shirt',12,'tshirt','t-shirt','t-003','yellow_2_.jpg','2018-09-20 08:41:18'),(7,'Tshirt',200,'Design t-shirt',10,'tshirt','t-shirt','t-004','MSTSV14042.jpg','2018-09-20 08:42:11'),(8,'T-shirt',200,'Color t-shirt',20,'tshirt','t-shirt','t-005','MSTS14759.jpg','2018-09-20 08:45:39'),(9,'Men\'s Tshirt',500,'Colorful men\'s t-shirt',20,'tshirt','t-shirt','t-006','MSTSV14046.jpg','2018-09-20 08:57:07'),(10,'Sports tshirt',1000,'Real madrid t-shirt',5,'tshirt','t-shirt','t-007','MSTSV14039.jpg','2018-09-20 08:58:38'),(12,'T-shirt',300,'Design t-shirt',10,'tshirt','t-shirt','t-010','MSTSV14049.jpg','2018-09-20 09:02:04'),(13,'Leather Shoes',2000,'Best leather shoes',10,'shoes','shoes','s-002','8546789_5_.jpg','2018-09-21 10:39:32'),(14,'Belt',2000,'Nice belt',20,'belt','belt','b-003','gbdl18_1.png','2018-10-01 03:47:08'),(15,'Belt',300,'Nice one belt',20,'belt','belt','b-004','101010_1_.jpg','2018-10-01 03:48:09'),(16,'Mens Belt',300,'Mens belt',15,'belt','belt','b-005','image4_2.jpg','2018-10-01 03:49:08'),(17,'Leather Wallet',100,'Leather wallet',10,'wallet','wallet','w-005','Baborry-Double-Zipper-Coin-Bag-RFID-Blocking-Men-Wallets-New-Brand-PU-Leather-Wallet-Money-Purses.jpg_640x640.jpg','2018-10-01 03:51:52'),(18,'Wallet',300,'Wallet',20,'wallet','wallet','w-007','1881_G.jpg','2018-10-01 03:52:43'),(19,'Black walllet',300,'Black mens wallet',20,'wallet','wallet','w-009','image5_1_2.jpg','2018-10-01 03:53:37'),(20,'Men\'s Shoes',1200,'Men\'s shoes',23,'shoes','shoes','s-003','IMG_2429.jpg','2018-10-01 03:56:41'),(21,'Shoes',2000,'Formal Shoes',12,'shoes','shoes','s-004','G51A7054.jpg','2018-10-01 03:57:24');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `online` varchar(1) NOT NULL DEFAULT '0',
  `activation` varchar(3) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (21,'abc','abc@gmail.com','abc','$5$rounds=535000$uzkeYWrJXWjkKeKe$Wq1fbttrn5Bg1OJDjzSzUjfojKTnxU.kQpBCy1eCSFC','+254123457689','2022-03-01 13:49:32','1','yes'),(20,'Mohamed Hassan','aminmohamedadan@gmail.com','Mohamed','$5$rounds=535000$BQGV8Qf/B85cWVie$bF1EMPuBtcP9b1g.K3MfRaPzffKRpnsJYaANdZfi8H6','+254707743963','2022-02-28 13:07:34','0','yes');
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

-- Dump completed on 2022-03-01 17:56:03
