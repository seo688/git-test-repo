CREATE DATABASE  IF NOT EXISTS `simple_board` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `simple_board`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: simple_board
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `board_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'QnA 게시판','REGISTERED'),(2,'QnA 게시판','REGISTERED');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `board_id` bigint NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `posted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,1,'홍길동','1234','hong@gmail.com','UNREGISTERD','문의드립니다','문의드립니다','2023-12-29 16:12:14'),(2,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 18:31:48'),(3,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:43:58'),(4,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:43:58'),(5,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:43:58'),(6,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:43:59'),(7,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:43:59'),(8,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:43:59'),(9,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:43:59'),(10,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:00'),(11,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:00'),(12,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:00'),(13,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:00'),(14,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:00'),(15,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:01'),(16,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:01'),(17,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:01'),(18,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:01'),(19,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:02'),(20,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:02'),(21,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:02'),(22,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:02'),(23,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:02'),(24,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:03'),(25,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:03'),(26,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:03'),(27,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:03'),(28,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:04'),(29,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:04'),(30,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:04'),(31,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:04'),(32,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:04'),(33,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:05'),(34,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:05'),(35,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:05'),(36,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:05'),(37,1,'강감찬','1111','kang@gmail.com','REGISTERED','문의드립니다2','문의드립니다2의 내용입니다.','2023-12-29 23:44:05');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `replied_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (1,1,'관리자','1111','REGISTERED','답변 드립니다','답변 드립니다의 내용입니다.','2023-12-29 18:03:35'),(2,2,'관리자','1111','REGISTERED','답변 드립니다','답변 드립니다의 내용입니다.','2023-12-29 18:32:39'),(3,2,'관리자','1111','REGISTERED','답변 드립니다22','답변 드립니다22의 내용입니다.','2023-12-29 22:43:29'),(4,2,'관리자','1111','REGISTERED','답변 드립니다33','답변 드립니다33의 내용입니다.','2023-12-29 22:43:43');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-31 11:10:20
