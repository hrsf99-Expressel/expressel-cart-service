-- MySQL dump 10.13  Distrib 8.0.11, for osx10.13 (x86_64)
--
-- Host: localhost    Database: expressel
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `expressel`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `expressel` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `expressel`;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float NOT NULL,
  `storeID` int(11) NOT NULL,
  `storeName` varchar(100) NOT NULL,
  `storeLogo` varchar(1000) NOT NULL,
  `storeMinimumFreeShipping` int(11) NOT NULL,
  `itemDeliveryTime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,18.26,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 3, 2018'),(2,49.08,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 13, 2018'),(3,10.19,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 6, 2018'),(4,21.12,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 9, 2018'),(5,44.52,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 1, 2018'),(6,25.84,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 12, 2018'),(7,31.85,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 6, 2018'),(8,29.01,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 2, 2018'),(9,7.94,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 13, 2018'),(10,26.02,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 5, 2018'),(11,17.29,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 6, 2018'),(12,4.04,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 9, 2018'),(13,1.14,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 3, 2018'),(14,35.02,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 4, 2018'),(15,3.05,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 9, 2018'),(16,21.13,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 4, 2018'),(17,24.04,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 3, 2018'),(18,1.16,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 3, 2018'),(19,21.11,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 11, 2018'),(20,1.54,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 9, 2018'),(21,34.89,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 13, 2018'),(22,38.23,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 4, 2018'),(23,3.78,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 5, 2018'),(24,27.77,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 1, 2018'),(25,43.47,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 3, 2018'),(26,40.17,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 2, 2018'),(27,7.99,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 3, 2018'),(28,43.27,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 13, 2018'),(29,28.92,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 1, 2018'),(30,12.02,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 1, 2018'),(31,42.87,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 9, 2018'),(32,42.8,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 2, 2018'),(33,36.54,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 8, 2018'),(34,24.41,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 13, 2018'),(35,11.67,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 12, 2018'),(36,15.83,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 13, 2018'),(37,21.19,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 8, 2018'),(38,42.49,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 9, 2018'),(39,33.66,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 6, 2018'),(40,9.47,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 7, 2018'),(41,42.81,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 11, 2018'),(42,11.48,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 2, 2018'),(43,42.34,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 10, 2018'),(44,36.55,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 10, 2018'),(45,48.43,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 8, 2018'),(46,36.56,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 12, 2018'),(47,5.76,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 9, 2018'),(48,34.91,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 4, 2018'),(49,17.22,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 4, 2018'),(50,24.08,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 7, 2018'),(51,20.56,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 7, 2018'),(52,24.42,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 12, 2018'),(53,20.67,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 4, 2018'),(54,3.88,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 12, 2018'),(55,3.45,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 5, 2018'),(56,5.91,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 8, 2018'),(57,48.58,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 1, 2018'),(58,44.19,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 8, 2018'),(59,12.19,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 13, 2018'),(60,34.7,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 4, 2018'),(61,11.54,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 7, 2018'),(62,2.63,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 10, 2018'),(63,49.49,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 3, 2018'),(64,29.37,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 10, 2018'),(65,36.15,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 10, 2018'),(66,15.37,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 9, 2018'),(67,26.67,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 11, 2018'),(68,24.67,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 4, 2018'),(69,17.99,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 2, 2018'),(70,25.66,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 6, 2018'),(71,21.16,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 4, 2018'),(72,48.7,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 7, 2018'),(73,12.84,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 1, 2018'),(74,42.94,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 9, 2018'),(75,23.36,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 5, 2018'),(76,39.38,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 9, 2018'),(77,17.02,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 8, 2018'),(78,47.65,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 1, 2018'),(79,33.14,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 4, 2018'),(80,45.09,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 5, 2018'),(81,30.27,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 13, 2018'),(82,39.49,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 6, 2018'),(83,9.65,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 1, 2018'),(84,18.67,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 12, 2018'),(85,29.18,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 11, 2018'),(86,37.37,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 2, 2018'),(87,23.8,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 4, 2018'),(88,25.65,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 6, 2018'),(89,18.77,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 10, 2018'),(90,28.12,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 11, 2018'),(91,37.55,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 10, 2018'),(92,43.06,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 8, 2018'),(93,38.85,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 10, 2018'),(94,5.12,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 4, 2018'),(95,36.26,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 13, 2018'),(96,44.93,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 12, 2018'),(97,16.61,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 8, 2018'),(98,2.07,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 9, 2018'),(99,48.78,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 4, 2018'),(100,2.15,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 4, 2018');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-03 18:59:43
