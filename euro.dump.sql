-- MySQL dump 10.13  Distrib 8.4.0, for Win64 (x86_64)
--
-- Host: localhost    Database: euro
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `calendario`
--

DROP TABLE IF EXISTS `calendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendario` (
  `id_jogo` int NOT NULL AUTO_INCREMENT,
  `data_hora` timestamp NULL DEFAULT NULL,
  `id_equipa_casa` int DEFAULT NULL,
  `id_equipa_fora` int DEFAULT NULL,
  PRIMARY KEY (`id_jogo`),
  KEY `id_equipa_casa` (`id_equipa_casa`),
  KEY `id_equipa_fora` (`id_equipa_fora`),
  CONSTRAINT `calendario_ibfk_2` FOREIGN KEY (`id_equipa_casa`) REFERENCES `equipa` (`id_equipa`),
  CONSTRAINT `calendario_ibfk_3` FOREIGN KEY (`id_equipa_fora`) REFERENCES `equipa` (`id_equipa`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendario`
--

LOCK TABLES `calendario` WRITE;
/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;
INSERT INTO `calendario` VALUES (284,'2024-07-01 15:00:26',9,13),(285,'2024-07-01 17:00:26',9,14),(286,'2024-07-01 19:00:26',9,1),(287,'2024-07-01 21:00:26',13,14),(288,'2024-07-01 23:00:26',13,1),(289,'2024-07-02 01:00:26',14,1),(290,'2024-07-02 15:00:26',7,10),(291,'2024-07-02 17:00:26',7,15),(292,'2024-07-02 19:00:26',7,16),(293,'2024-07-02 21:00:26',10,15),(294,'2024-07-02 23:00:26',10,16),(295,'2024-07-03 01:00:26',15,16),(296,'2024-07-03 15:00:26',11,5),(297,'2024-07-03 17:00:26',11,8),(298,'2024-07-03 19:00:26',11,4),(299,'2024-07-03 21:00:26',5,8),(300,'2024-07-03 23:00:26',5,4),(301,'2024-07-04 01:00:26',8,4),(302,'2024-07-04 15:00:26',12,2),(303,'2024-07-04 17:00:26',12,3),(304,'2024-07-04 19:00:26',12,6),(305,'2024-07-04 21:00:26',2,3),(306,'2024-07-04 23:00:26',2,6),(307,'2024-07-05 01:00:26',3,6);
/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `id_cidade` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `id_pais` int DEFAULT NULL,
  PRIMARY KEY (`id_cidade`),
  KEY `id_pais` (`id_pais`),
  CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Lyon',2),(2,'Kiev',15),(3,'Hamburg',10),(4,'Bourrusia',9),(5,'Lisboa',1),(6,'Londres',6),(7,'Amsterdã',7),(8,'Bruxelas',8),(9,'Zurique',9),(11,'Roma',17);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipa`
--

DROP TABLE IF EXISTS `equipa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipa` (
  `id_equipa` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `tecnico` varchar(100) DEFAULT NULL,
  `ranking_fifa` int DEFAULT NULL,
  `id_pais` int DEFAULT NULL,
  PRIMARY KEY (`id_equipa`),
  KEY `id_pais` (`id_pais`),
  CONSTRAINT `equipa_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipa`
--

LOCK TABLES `equipa` WRITE;
/*!40000 ALTER TABLE `equipa` DISABLE KEYS */;
INSERT INTO `equipa` VALUES (1,'FFF','Didier Deschamps',3,2),(2,'ALM','Julian Naguelsman',2,1),(3,'ESP','Luiz Enrique',1,3),(4,'POR','Roberto Martinez',18,5),(5,'ENG','Gareth Southgate',4,6),(6,'NLD','Frank de Boer',16,7),(7,'BEL','Roberto Martinez',1,8),(8,'CHE','Vladimir Petkovi?',13,9),(9,'SWE','Janne Andersson',18,10),(10,'DNK','Kasper Hjulmand',10,11),(11,'HRV','Zlatko Dali?',14,12),(12,'AUT','Franco Foda',23,13),(13,'POL','Paulo Sousa',21,14),(14,'UKR','Andriy Shevchenko',24,15),(15,'RUS','Stanislav Cherchesov',38,16),(16,'ITA','Roberto Mancini',7,4);
/*!40000 ALTER TABLE `equipa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipa_grupo`
--

DROP TABLE IF EXISTS `equipa_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipa_grupo` (
  `id_equipa_grupo` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `id_equipa` int NOT NULL,
  `vitorias` int DEFAULT '0',
  `empates` int DEFAULT '0',
  `derrotas` int DEFAULT '0',
  `gols_marcados` int DEFAULT '0',
  `gols_sofridos` int DEFAULT '0',
  `pontos` int DEFAULT '0',
  PRIMARY KEY (`id_equipa_grupo`),
  KEY `id_grupo` (`id_grupo`),
  KEY `id_equipa` (`id_equipa`),
  CONSTRAINT `equipa_grupo_ibfk_1` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`),
  CONSTRAINT `equipa_grupo_ibfk_2` FOREIGN KEY (`id_equipa`) REFERENCES `equipa` (`id_equipa`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipa_grupo`
--

LOCK TABLES `equipa_grupo` WRITE;
/*!40000 ALTER TABLE `equipa_grupo` DISABLE KEYS */;
INSERT INTO `equipa_grupo` VALUES (1,1,9,0,1,0,3,3,1),(2,1,13,0,1,0,3,3,1),(3,1,14,0,0,0,0,0,0),(4,1,1,0,0,0,0,0,0),(5,2,7,0,0,0,0,0,0),(6,2,10,0,0,0,0,0,0),(7,2,15,0,0,0,0,0,0),(8,2,16,0,0,0,0,0,0),(9,3,11,0,0,0,0,0,0),(10,3,5,0,0,0,0,0,0),(11,3,8,0,0,0,0,0,0),(12,3,4,0,0,0,0,0,0),(13,4,12,0,0,0,0,0,0),(14,4,2,0,0,0,0,0,0),(15,4,3,0,0,0,0,0,0),(16,4,6,0,0,0,0,0,0);
/*!40000 ALTER TABLE `equipa_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadio`
--

DROP TABLE IF EXISTS `estadio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadio` (
  `id_estadio` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `capacidade` int DEFAULT NULL,
  `id_cidade` int DEFAULT NULL,
  PRIMARY KEY (`id_estadio`),
  KEY `id_cidade` (`id_cidade`),
  CONSTRAINT `estadio_ibfk_1` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadio`
--

LOCK TABLES `estadio` WRITE;
/*!40000 ALTER TABLE `estadio` DISABLE KEYS */;
INSERT INTO `estadio` VALUES (1,'Parc-des-prince',2000,1),(2,'Arena-Kiev',5000,2),(5,'Allianz Arena',10000,5),(6,'Dragao',3000,5);
/*!40000 ALTER TABLE `estadio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatisticas_jogador`
--

DROP TABLE IF EXISTS `estatisticas_jogador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estatisticas_jogador` (
  `id_estatisticas` int NOT NULL AUTO_INCREMENT,
  `passes` int DEFAULT NULL,
  `assistencias` int DEFAULT NULL,
  `remates` int DEFAULT NULL,
  `cartoes_amarelos` int DEFAULT NULL,
  `cartoes_vermelhos` int DEFAULT NULL,
  `minutos_jogados` int DEFAULT NULL,
  `id_jogador` int DEFAULT NULL,
  `id_jogo` int DEFAULT NULL,
  `golos` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_estatisticas`),
  KEY `id_jogador` (`id_jogador`),
  KEY `id_jogo` (`id_jogo`),
  CONSTRAINT `estatisticas_jogador_ibfk_1` FOREIGN KEY (`id_jogador`) REFERENCES `jogador` (`id_jogador`),
  CONSTRAINT `estatisticas_jogador_ibfk_2` FOREIGN KEY (`id_jogo`) REFERENCES `calendario` (`id_jogo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatisticas_jogador`
--

LOCK TABLES `estatisticas_jogador` WRITE;
/*!40000 ALTER TABLE `estatisticas_jogador` DISABLE KEYS */;
INSERT INTO `estatisticas_jogador` VALUES (1,14,1,8,2,1,51,22,284,3),(2,3,0,6,2,1,25,29,284,2),(3,9,1,4,2,0,62,29,284,1);
/*!40000 ALTER TABLE `estatisticas_jogador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatisticas_jogo`
--

DROP TABLE IF EXISTS `estatisticas_jogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estatisticas_jogo` (
  `id_estatisticas` int NOT NULL AUTO_INCREMENT,
  `livres` int DEFAULT NULL,
  `fora_de_jogo` int DEFAULT NULL,
  `id_jogo` int NOT NULL,
  `id_equipa` int NOT NULL,
  PRIMARY KEY (`id_estatisticas`),
  KEY `id_jogo` (`id_jogo`),
  KEY `id_equipa` (`id_equipa`),
  CONSTRAINT `estatisticas_jogo_ibfk_1` FOREIGN KEY (`id_jogo`) REFERENCES `calendario` (`id_jogo`),
  CONSTRAINT `estatisticas_jogo_ibfk_2` FOREIGN KEY (`id_equipa`) REFERENCES `equipa` (`id_equipa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatisticas_jogo`
--

LOCK TABLES `estatisticas_jogo` WRITE;
/*!40000 ALTER TABLE `estatisticas_jogo` DISABLE KEYS */;
INSERT INTO `estatisticas_jogo` VALUES (1,4,0,284,9),(2,8,2,284,13);
/*!40000 ALTER TABLE `estatisticas_jogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `id_grupo` int NOT NULL AUTO_INCREMENT,
  `identificador` varchar(10) NOT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,'A'),(2,'B'),(3,'C'),(4,'D');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogador`
--

DROP TABLE IF EXISTS `jogador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogador` (
  `id_jogador` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `posicao` varchar(50) DEFAULT NULL,
  `id_equipa` int DEFAULT NULL,
  PRIMARY KEY (`id_jogador`),
  KEY `id_equipa` (`id_equipa`),
  CONSTRAINT `jogador_ibfk_1` FOREIGN KEY (`id_equipa`) REFERENCES `equipa` (`id_equipa`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogador`
--

LOCK TABLES `jogador` WRITE;
/*!40000 ALTER TABLE `jogador` DISABLE KEYS */;
INSERT INTO `jogador` VALUES (2,'Cristiano Ronaldo',NULL,'Forward',4),(3,'Kilian Mbappe','2000-03-12','Forward',1),(5,'Antoine Griezman','1980-05-02','Forward',1),(6,'Ngolo Kante','1988-05-02','Midle Field',1),(7,'Bruno Fernandes','1998-10-02','Midle Field',4),(8,'Rafael Leao','1998-10-02','Midle Field',4),(9,'Jamal Musiala','2002-10-02','Forward',2),(10,'Florian Wirtz','2002-10-02','Forward',2),(11,'Yamine Yamal','2004-10-02','Forward',3),(12,'Rodri Hernandez','1994-10-02','Midle Field',3),(13,'Jude Belligham','2000-10-02','Midle Field',5),(14,'Phil Foden','2000-10-02','Midle Field',5),(15,'Menphis Depay','1998-10-02','Forwward',6),(16,'Xavi Simons','2000-10-02','Forwward',6),(17,'Kevin De Bruyne','1997-10-02','Midle Field',7),(18,'Romelu Lukaku','1997-10-02','Forward',7),(19,'Patrick Chic','1996-10-02','Forward',8),(20,'Peter Check','1996-10-02','Gol Keeper',8),(21,'Zlatan Ibraimovic','1990-10-02','Forward',9),(22,'Kulusevski','1990-10-02','Forward',9),(23,'Ramus Hojlund','1990-10-02','Forward',10),(24,'Kasper Hjulmand','1990-10-02','Midle field',10),(25,'Sloboslai','1990-10-02','Midle field',11),(26,'Solomon','1990-10-02','Forward',11),(27,'David Alaba','1990-10-02','Midle Field',12),(28,'Cyril','1990-10-02','Midle Field',12),(29,'Lewandowski','1990-10-02','Forward',13),(30,'Maty Cash','1990-10-02','Defender',13),(31,'Zinchenko','1990-10-02','Defender',14),(32,'Yaren Chuck','1990-10-02','Forward',14),(33,'Vlamdimir','1990-10-02','Forward',15),(34,'Putin','1990-10-02','Forward',15),(35,'Nicolo Barela','1990-10-02','Midle Field',16),(36,'Moise Kean','1990-10-02','Foward',16);
/*!40000 ALTER TABLE `jogador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogo`
--

DROP TABLE IF EXISTS `jogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogo` (
  `id_jogo` int NOT NULL AUTO_INCREMENT,
  `id_estadio` int NOT NULL,
  `resultado_final` varchar(20) DEFAULT NULL,
  `id_calendario` int DEFAULT NULL,
  PRIMARY KEY (`id_jogo`),
  KEY `id_calendario` (`id_calendario`),
  CONSTRAINT `jogo_ibfk_1` FOREIGN KEY (`id_calendario`) REFERENCES `calendario` (`id_jogo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogo`
--

LOCK TABLES `jogo` WRITE;
/*!40000 ALTER TABLE `jogo` DISABLE KEYS */;
INSERT INTO `jogo` VALUES (1,1,'3-3',284);
/*!40000 ALTER TABLE `jogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `id_pais` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pais`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Alemanha'),(17,'Angola'),(13,'Áustria'),(8,'Bélgica'),(15,'Canada'),(12,'Croácia'),(11,'Dinamarca'),(3,'Espanha'),(2,'França'),(7,'Holanda'),(6,'Inglaterra'),(4,'Itália'),(14,'Polônia'),(5,'Portugal'),(16,'Rússia'),(10,'Suécia'),(9,'Suíça');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-11  7:41:42
