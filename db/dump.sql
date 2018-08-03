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
-- Table structure for table `items`
--

CREATE DATABASE `expressel`;

USE `expressel`;

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
INSERT INTO `items` VALUES (1,9.36,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 10, 2018'),(2,11.99,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 6, 2018'),(3,15.19,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 9, 2018'),(4,4.92,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 4, 2018'),(5,31.31,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 6, 2018'),(6,48.84,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 6, 2018'),(7,18.62,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 3, 2018'),(8,38.13,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 8, 2018'),(9,40.01,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 8, 2018'),(10,15.21,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 13, 2018'),(11,13.59,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 3, 2018'),(12,39.83,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 7, 2018'),(13,2.7,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 5, 2018'),(14,13.35,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 13, 2018'),(15,25.91,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 13, 2018'),(16,11.78,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 8, 2018'),(17,26.09,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 6, 2018'),(18,18.44,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 7, 2018'),(19,39.86,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 7, 2018'),(20,24.27,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 5, 2018'),(21,47.79,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 2, 2018'),(22,1,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 13, 2018'),(23,20.34,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 5, 2018'),(24,33.88,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 4, 2018'),(25,8.22,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 3, 2018'),(26,2.54,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 7, 2018'),(27,9.56,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 1, 2018'),(28,22.14,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 7, 2018'),(29,21.68,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 9, 2018'),(30,30.82,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 5, 2018'),(31,49.5,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 4, 2018'),(32,48.49,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 2, 2018'),(33,14.3,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 9, 2018'),(34,5.8,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 7, 2018'),(35,30.67,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 12, 2018'),(36,3.42,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 6, 2018'),(37,14.75,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 7, 2018'),(38,26.05,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 5, 2018'),(39,38.09,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 10, 2018'),(40,49.31,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 2, 2018'),(41,34.17,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 5, 2018'),(42,36.05,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 2, 2018'),(43,31.77,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 9, 2018'),(44,35.95,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 8, 2018'),(45,36.58,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 3, 2018'),(46,21.71,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 10, 2018'),(47,1.31,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 6, 2018'),(48,38.61,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 2, 2018'),(49,21.77,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 9, 2018'),(50,32.71,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 9, 2018'),(51,20.29,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 6, 2018'),(52,36.2,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 4, 2018'),(53,5.25,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 9, 2018'),(54,41.76,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 1, 2018'),(55,44.83,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 2, 2018'),(56,31,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 7, 2018'),(57,24.65,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 3, 2018'),(58,28.97,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 12, 2018'),(59,47.19,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 12, 2018'),(60,38.45,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 5, 2018'),(61,27.66,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 10, 2018'),(62,2.55,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 2, 2018'),(63,46.09,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 4, 2018'),(64,29.88,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 5, 2018'),(65,9.48,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 12, 2018'),(66,24.69,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 11, 2018'),(67,7.43,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 10, 2018'),(68,20.69,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 10, 2018'),(69,16.97,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 10, 2018'),(70,14.4,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 9, 2018'),(71,22.73,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 5, 2018'),(72,1.96,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 6, 2018'),(73,48.85,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 7, 2018'),(74,18.17,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 10, 2018'),(75,12.59,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 9, 2018'),(76,38.77,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 10, 2018'),(77,42.5,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 5, 2018'),(78,33.44,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 12, 2018'),(79,26.18,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 8, 2018'),(80,19.34,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 13, 2018'),(81,34.29,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 3, 2018'),(82,28.91,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 10, 2018'),(83,44.44,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 5, 2018'),(84,19.86,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 7, 2018'),(85,22.35,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 11, 2018'),(86,24.48,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 1, 2018'),(87,28.53,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 5, 2018'),(88,12.7,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 7, 2018'),(89,21.06,4,'Costco','https://i.imgur.com/bmUF7yq.png',35,'August 9, 2018'),(90,14.2,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 7, 2018'),(91,3.92,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 9, 2018'),(92,12.89,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 1, 2018'),(93,13.03,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 1, 2018'),(94,20.85,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 11, 2018'),(95,21.93,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 2, 2018'),(96,46.51,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 6, 2018'),(97,36.95,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 8, 2018'),(98,19.12,3,'Walgreens','https://i.imgur.com/Etj1ibh.jpg',15,'August 10, 2018'),(99,46.96,2,'Walmart','https://i.imgur.com/LC42zSP.png',35,'August 9, 2018'),(100,12.89,1,'Target','https://i.imgur.com/nAsg0XT.png',15,'August 3, 2018');
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

-- Dump completed on 2018-08-02 16:45:57
