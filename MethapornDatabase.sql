CREATE DATABASE  IF NOT EXISTS `methaporndatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `methaporndatabase`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: methaporndatabase
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `computers`
--

DROP TABLE IF EXISTS `computers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) NOT NULL,
  `modelName` varchar(255) NOT NULL,
  `serialNumber` varchar(255) NOT NULL,
  `stockQuantity` int NOT NULL,
  `price` varchar(255) NOT NULL,
  `cpuSpeed` varchar(255) DEFAULT NULL,
  `memoryCapacity` varchar(255) DEFAULT NULL,
  `hardDiskCapacity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serialNumber` (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computers`
--

LOCK TABLES `computers` WRITE;
/*!40000 ALTER TABLE `computers` DISABLE KEYS */;
INSERT INTO `computers` VALUES (1,'Asus','a-1605','12875',25,'4990.00 Baht','2.5 GHz','4888 GB','2 TB','1725297497321.jpg','2024-09-02 15:44:18','2024-09-02 17:18:17'),(5,'gdf555','dfg','dfg',555,'258 Baht','455 GHz','8822 GB','5588 TB','1726387311805.jpg','2024-09-02 17:14:49','2024-09-15 08:01:51'),(6,'hrt68','hrt','hrth',567,'567 Baht','567567 GHz','6767 GB','677 TB','1726387298357.jpg','2024-09-02 17:28:32','2024-09-15 08:01:38'),(7,'Ph','hth','htth',55558,'1422 Baht','55478 GHz','2255 GB','5447 TB','1726387286451.jpg','2024-09-02 20:13:27','2024-09-15 08:01:26'),(8,'sdfff','sdfsd','fsd',1355,'2577 Baht','288 GHz','55 GB','1455 TB','1725310343865.jpg','2024-09-02 20:52:23','2024-09-02 20:52:23'),(10,'adawd','dawd','dawd',244,'4353 Baht','453 GHz','453 GB','3453 TB','1725457937102.jpg','2024-09-04 13:52:17','2024-09-04 13:52:17'),(15,'dasdddfsdf','dawdadsdfffsdf','dawdfsdf',12,'3 Baht','3 GHz','2 GB','32 TB','1726388522666.jpg','2024-09-04 13:56:41','2024-09-15 08:22:02'),(16,'hhfgnvb','hghfgvb','nfgn26',12,'32 Baht','45 GHz','54 GB','45 TB','1726040259499.jpg','2024-09-04 13:59:12','2024-09-11 07:37:39'),(18,'Pakonchai47','sing55','app47',3434,'43434 Baht','434 GHz','434 GB','43434 TB','1726389620437.jpg','2024-09-11 07:31:48','2024-09-15 08:43:25');
/*!40000 ALTER TABLE `computers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `resetToken` varchar(255) DEFAULT NULL,
  `resetTokenExpiration` datetime DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'gregr','$2b$10$7k8dHcapvXCGeehVFCgzYeqET3cgrn6vME7dmzCcJLH7/XYoj8eMi','gfreg',NULL,NULL,NULL,NULL,NULL),(2,'ssd','$2b$10$eNkgAtpMh8WbdDmLgu2NXuFudp5IOyAMQWNfgkvdVOtMS5unC.etq','fd','Methaporn','Limrostham','Ant',NULL,NULL),(3,'th','$2b$10$pZiOcBQu6r5AnKvHuLdddewfYSDnwopnJxF86WjpKQO1mmFnI1KP.','th','th','tht','h',NULL,NULL),(4,'jtyj','$2b$10$ETCiC6EuDjeIHfDU4SH9y.I1tISw7boxrGq5Q.NfWhGRdNnVvYxKK','jtyj',NULL,NULL,NULL,NULL,NULL),(5,'dfgdfg','$2b$10$9LeGzN5O.hvJb1ONoGLBZuM4PyWOFrjoS.bYA73p3i2aJt0hTHOw.','gdfg','dfgdf','dfggdfg','dfgdfg',NULL,NULL),(6,'tt','$2b$10$imBmAo2vvdWMcor2Tt4sieiVPSXnlcd9VIHVFpSg6MdADfIL.SToy','tt','jhg','jhgj','ghj',NULL,NULL),(7,'hft','$2b$10$TJTui07EnREPgXqNxtgnh.E1t68g0mJo/iUq0qekH7i19ai4xREUa','hft','asdas','asddasd','asdasd',NULL,NULL),(8,'jgyj','$2b$10$EfLENq7YJh3/iCB4vDxjN.88fPAB8uRCHwAqb3.quMR9iBRG5UREq','jgyj','dawd','awddaw','dawd',NULL,NULL),(9,'fsd','$2b$10$IoR7YAe.O0.MvyJnds.74OvgLP7z46TFNxOF8S/BP9JOL27B9LbI.','rgd','sadsad','asdasd','dasdas',NULL,NULL),(10,'pod','$2b$10$KGVihxhs6hEx52VQCfqA7.p6z6XKPLkieZCscP6dsUTXEhWwyGnsG','fsd','dasd','asddas','dasds',NULL,NULL),(11,'fsdf','$2b$10$LmmY8ROLt3KAyUHo81iO.euurqE3uq0Qp03gJ5N7mema0vnyl2f4W','fsdf','dasdd','asd','asdasd',NULL,NULL),(12,'antsdfsd','$2b$10$MhtaUYuaLLnK1OWyVZ6BouGS6dLYzUrdJgHlxr1QxJzeuIE/dS9Wq','pedza5กดหกดs07@gmail.com','dawd','dawd','dawd',NULL,NULL),(13,'dfsdf','$2b$10$N3rntGR9BHc1iYE5A2osRutG93D4Lfc8ODCzxd.D34fuy4GSmTQ8u','sdf','dawd','dawdd','awdd',NULL,NULL),(14,'ant','$2b$10$Wi/43x4g4aBmWmOoOa3cuONN6d258GhkbnbE6m5C8exLFfe.Lft9i','pedza507@gmail.com','daw','daw','daw',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-15 15:47:21
