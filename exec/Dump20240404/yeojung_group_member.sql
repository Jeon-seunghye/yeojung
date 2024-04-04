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
-- Table structure for table `group_member`
--

DROP TABLE IF EXISTS `group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_member` (
  `fist_call_done` tinyint(1) NOT NULL,
  `second_call_done` tinyint(1) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `group_id` int(11) NOT NULL,
  `kakao_id` varchar(255) NOT NULL,
  PRIMARY KEY (`group_id`,`kakao_id`),
  KEY `FKd46h5c3vs65ugj335tfi2f7m9` (`kakao_id`),
  CONSTRAINT `FK363rem397l8c20gbr1ajwwq0c` FOREIGN KEY (`group_id`) REFERENCES `trip_group` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `FKd46h5c3vs65ugj335tfi2f7m9` FOREIGN KEY (`kakao_id`) REFERENCES `member` (`kakao_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_member`
--

LOCK TABLES `group_member` WRITE;
/*!40000 ALTER TABLE `group_member` DISABLE KEYS */;
INSERT INTO `group_member` VALUES (0,0,1,3,'3386029769'),(1,0,1,3,'3388366548'),(0,0,1,3,'3389826401'),(0,0,1,3,'3394990331'),(1,1,1,7,'3394990331'),(1,1,1,8,'3388366548'),(1,1,1,8,'3394990331'),(1,1,1,8,'3415903293'),(1,1,1,11,'3394990331'),(0,0,1,11,'3411453115'),(1,1,1,12,'3394990331'),(1,1,1,12,'3415903293'),(0,0,0,13,'3389826401'),(1,1,1,14,'3394990331'),(1,1,1,14,'3415903293'),(0,0,1,15,'3388366548'),(0,0,1,15,'3389826401'),(1,0,1,15,'3394990331'),(0,0,1,17,'3388366548'),(1,1,1,22,'3386029769'),(1,1,1,22,'3389826401'),(1,0,1,23,'3389826401'),(1,0,1,24,'3389826401'),(1,0,1,25,'3389826401'),(0,0,1,26,'3388366548'),(1,0,1,35,'3386029769'),(1,1,1,35,'3388366548'),(1,1,1,35,'3411453115'),(1,1,1,40,'3386029769'),(1,1,1,40,'3389826401'),(1,1,1,40,'3394990331'),(0,0,1,42,'3394990331'),(1,0,1,42,'3415903293'),(1,1,1,43,'3394990331'),(1,1,1,43,'3415903293'),(1,1,1,44,'3394990331'),(1,1,1,44,'3415903293'),(1,1,1,45,'3394990331'),(1,1,1,45,'3415903293'),(0,0,1,46,'3414662693'),(1,1,1,47,'3394990331'),(1,1,1,47,'3415903293'),(1,1,1,48,'3394990331'),(1,1,1,48,'3415903293'),(1,1,1,49,'3386029769'),(1,1,1,49,'3389826401'),(0,0,1,50,'3386029769'),(0,1,1,50,'3388366548'),(0,0,1,50,'3389826401'),(0,0,1,50,'3394990331'),(0,0,1,51,'3388366548'),(0,0,0,52,'3389826401'),(1,1,1,55,'3394990331'),(1,1,1,55,'3412806386'),(1,1,1,56,'3386029769'),(1,1,1,57,'3394990331'),(1,1,1,57,'3412806386'),(0,0,1,58,'3386029769'),(0,0,1,59,'3386029769'),(0,0,1,59,'3389826401'),(1,1,1,60,'3386029769'),(0,0,1,60,'3389826401'),(1,1,1,61,'3394990331'),(1,1,1,61,'3415903293'),(0,0,1,62,'3389826401'),(0,0,1,64,'3388366548'),(1,1,1,65,'3394990331'),(1,1,1,65,'3415903293'),(1,1,1,67,'3386029769'),(1,1,1,67,'3394990331'),(1,1,1,67,'3411453115'),(1,1,1,67,'3412806386'),(1,1,1,68,'3394990331'),(1,1,1,68,'3412806386'),(1,0,1,70,'3389826401'),(0,0,1,70,'3394990331'),(1,0,1,70,'3412806386'),(0,0,1,71,'3389826401'),(0,0,0,72,'3411453115'),(1,1,1,74,'3388366548'),(1,1,1,74,'3394990331'),(1,1,1,75,'3394990331'),(1,1,1,75,'3412806386'),(1,1,1,76,'3386029769'),(1,1,1,76,'3394990331'),(1,1,1,76,'3411453115'),(1,1,1,77,'3394990331'),(1,0,1,77,'3415903293'),(1,1,1,78,'3386029769'),(1,1,1,78,'3388366548'),(1,1,1,78,'3389826401'),(1,1,1,78,'3394990331'),(1,1,1,78,'3411453115'),(1,1,1,78,'3412806386'),(1,1,1,79,'3394990331'),(1,1,1,79,'3411453115'),(1,1,1,79,'3412806386'),(1,1,1,80,'3386029769'),(1,1,1,80,'3388366548'),(1,1,1,80,'3389826401'),(1,1,1,80,'3411453115'),(1,1,1,81,'3394990331'),(1,1,1,81,'3411453115'),(1,1,1,82,'3394990331'),(1,1,1,82,'3411453115'),(0,0,1,83,'3394990331'),(0,0,1,83,'3411453115'),(0,0,1,84,'3386029769'),(0,0,1,84,'3388366548'),(0,0,1,84,'3389826401'),(0,0,1,84,'3394990331'),(0,0,1,84,'3411453115'),(0,0,1,84,'3412806386'),(0,0,1,85,'3386029769'),(0,0,1,85,'3388366548'),(0,0,1,85,'3389826401'),(0,0,1,85,'3394990331'),(0,0,1,85,'3411453115'),(0,0,1,85,'3412806386'),(1,0,1,86,'3386029769'),(1,1,1,86,'3388366548'),(1,1,1,86,'3389826401'),(1,1,1,86,'3394990331'),(1,1,1,86,'3411453115'),(1,1,1,86,'3412806386'),(1,1,1,87,'3394990331'),(1,1,1,87,'3411453115'),(1,1,1,87,'3412806386'),(1,1,1,88,'3394990331'),(1,1,1,88,'3411453115'),(1,1,1,88,'3412806386'),(1,1,1,89,'3386029769'),(1,1,1,89,'3394990331'),(1,1,1,89,'3411453115'),(1,1,1,89,'3412806386'),(1,1,1,90,'3394990331'),(1,1,1,90,'3415903293'),(1,1,1,91,'3394990331'),(1,1,1,91,'3415903293'),(0,0,1,92,'3386029769'),(1,0,1,92,'3388366548'),(0,0,1,92,'3389826401'),(0,0,1,92,'3394990331'),(0,0,1,92,'3411453115'),(0,0,1,92,'3412806386');
/*!40000 ALTER TABLE `group_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-04  9:00:20