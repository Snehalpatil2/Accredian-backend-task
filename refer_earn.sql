-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: refer_earn
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.04.1

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
-- Table structure for table `Referral`
--

DROP TABLE IF EXISTS `Referral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Referral` (
  `id` int NOT NULL AUTO_INCREMENT,
  `referrerName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrerEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refereeName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refereeEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Referral`
--

LOCK TABLES `Referral` WRITE;
/*!40000 ALTER TABLE `Referral` DISABLE KEYS */;
INSERT INTO `Referral` VALUES (1,'Snehal ','snehaljpatil.2801@gmail.com','Nandini','nandini@gmail.com','2025-02-14 10:02:52.081'),(4,'Test User','testuser@gmail.com','Friend','friend@gmail.com','2025-02-14 10:10:34.012'),(7,'Snehal','snehaljpatil.2801@gmail.com','Nandini','patiljsnehal28@gmail.com','2025-02-14 10:24:57.206'),(8,'Snehal','snehaljpatil.2801@gmail.com','Nandini','patiljsnehal28@gmail.com','2025-02-14 10:25:01.209'),(9,'Test User','testuser@gmail.com','Friend','friend@gmail.com','2025-02-14 10:25:18.065'),(10,'Snehal','snehaljpatil.2801@gmailcom','Nandini','patiljsnehal28@gmail.com','2025-02-14 13:05:47.122'),(11,'Snehal','snehaljpatil.2801@gmailcom','Nandini','patiljsnehal28@gmail.com','2025-02-14 13:05:51.454'),(12,'Snehal','snehaljpatil.2801@gmail.com','Kunal','kunal@123.com','2025-02-14 13:35:00.100'),(13,'John Doe','john@example.com','Jane Smith','jane@example.com','2025-02-14 13:37:02.538'),(14,'Snehal','snehaljpatil.2801@gmail.com','Kunal','kunal@12.com','2025-02-14 13:41:45.860'),(15,'Snehal','snehaljpatil.2801@gmail.com','Sneha','test123412345678956789@gmail.com','2025-02-14 13:46:08.728'),(16,'Snehal','snehaljpatil.2801@gmail.com','Kunal','kua@12.com','2025-02-14 13:57:17.918');
/*!40000 ALTER TABLE `Referral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('09cc4141-1763-4022-ae1d-4ade4bb91774','bcfaa7984d29e742b5b0ed4de0fc01e9afe09245038864998e4b54c855f9f250','2025-02-14 08:59:24.218','20250214085924_init',NULL,NULL,'2025-02-14 08:59:24.094',1),('566c5d6e-2287-4714-8a6b-34415e64bf7b','cc7f5aa5cca3f7bcde0a5f400bf92f92adade4cdca1af5e0ccfa047d3d7b30b7','2025-02-14 10:24:00.621','20250214102400_remove_unique_constraints',NULL,NULL,'2025-02-14 10:24:00.487',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-15 14:48:20
