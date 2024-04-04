-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: j10c203.p.ssafy.io    Database: yeojung
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.17-MariaDB-1:10.6.17+maria~ubu2004

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
-- Table structure for table `calculate_result`
--

DROP TABLE IF EXISTS `calculate_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calculate_result` (
  `calculate_result_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` bigint(20) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `receive_kakao_id` varchar(255) DEFAULT NULL,
  `send_kakao_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`calculate_result_id`),
  KEY `FKkx0gfsy0cfoasbx83hmc3nq7l` (`group_id`),
  KEY `FKdjs5qdhng3lake6gaim3s42up` (`receive_kakao_id`),
  KEY `FKma7alkvso8ik33ykj28kmmrpd` (`send_kakao_id`),
  CONSTRAINT `FKdjs5qdhng3lake6gaim3s42up` FOREIGN KEY (`receive_kakao_id`) REFERENCES `member` (`kakao_id`),
  CONSTRAINT `FKkx0gfsy0cfoasbx83hmc3nq7l` FOREIGN KEY (`group_id`) REFERENCES `trip_group` (`group_id`),
  CONSTRAINT `FKma7alkvso8ik33ykj28kmmrpd` FOREIGN KEY (`send_kakao_id`) REFERENCES `member` (`kakao_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calculate_result`
--

LOCK TABLES `calculate_result` WRITE;
/*!40000 ALTER TABLE `calculate_result` DISABLE KEYS */;
INSERT INTO `calculate_result` VALUES (1,4848,35,'3386029769','3388366548'),(2,9576,35,'3386029769','3411453115'),(3,11750,14,'3394990331','3415903293'),(4,10000,42,'3394990331','3415903293'),(5,86500,44,'3394990331','3415903293'),(6,11750,45,'3394990331','3415903293'),(7,10000,12,'3394990331','3415903293'),(8,7833,8,'3394990331','3388366548'),(9,7833,8,'3394990331','3415903293'),(10,41500,43,'3394990331','3415903293'),(13,4250,49,'3386029769','3389826401'),(14,2500,47,'3394990331','3415903293'),(15,10000,48,'3394990331','3415903293'),(16,146831,15,'3394990331','3388366548'),(17,167831,15,'3394990331','3389826401'),(20,2500,57,'3394990331','3412806386'),(21,10000,55,'3412806386','3394990331'),(22,10000,68,'3412806386','3394990331'),(23,49750,70,'3412806386','3389826401'),(26,3000,61,'3394990331','3415903293'),(27,48600,74,'3394990331','3388366548'),(28,7350,75,'3394990331','3412806386'),(40,36302,76,'3411453115','3386029769'),(41,19899,76,'3411453115','3394990331'),(42,16175,40,'3386029769','3389826401'),(43,1175,40,'3386029769','3394990331'),(44,16600,79,'3394990331','3411453115'),(45,64600,79,'3394990331','3412806386'),(46,26000,22,'3386029769','3389826401'),(47,168962,81,'3394990331','3411453115'),(48,2450,82,'3394990331','3411453115'),(49,28032,79,'3411453115','3394990331'),(50,5732,79,'3411453115','3412806386'),(51,53659,87,'3394990331','3411453115'),(52,52506,87,'3412806386','3411453115'),(53,92930,65,'3394990331','3415903293'),(54,22822,88,'3412806386','3394990331'),(55,145488,88,'3412806386','3411453115'),(56,201032,89,'3386029769','3394990331'),(57,160900,89,'3386029769','3411453115'),(58,388636,89,'3386029769','3412806386'),(59,45140,78,'3388366548','3386029769'),(60,150140,78,'3388366548','3389826401'),(61,132476,78,'3388366548','3411453115'),(62,85636,78,'3388366548','3412806386'),(63,64528,78,'3394990331','3412806386'),(64,23420,80,'3389826401','3386029769'),(65,16840,80,'3411453115','3386029769'),(66,62260,80,'3411453115','3388366548'),(67,107600,90,'3394990331','3415903293'),(68,60100,91,'3394990331','3415903293'),(69,160567,86,'3386029769','3394990331'),(70,251464,86,'3386029769','3411453115'),(71,90707,86,'3388366548','3411453115'),(72,123990,86,'3388366548','3412806386'),(73,31735,86,'3389826401','3412806386');
/*!40000 ALTER TABLE `calculate_result` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-04  9:00:22
