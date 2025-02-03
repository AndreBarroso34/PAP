-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pap
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `assistentes`
--

DROP TABLE IF EXISTS `assistentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assistentes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenomes` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `funcao` varchar(50) NOT NULL,
  `foto_perfil` varchar(255) DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistentes`
--

LOCK TABLES `assistentes` WRITE;
/*!40000 ALTER TABLE `assistentes` DISABLE KEYS */;
INSERT INTO `assistentes` VALUES (1,'Carol','Augusta','carol@welldentys.com','123456','9123476893','assistente',NULL,'1990-02-03','2025-01-01 20:20:10');
/*!40000 ALTER TABLE `assistentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horariomarcado`
--

DROP TABLE IF EXISTS `horariomarcado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horariomarcado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_paciente` varchar(255) NOT NULL,
  `tipo_consulta` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `seguro` varchar(255) NOT NULL,
  `marcadopor` varchar(255) NOT NULL,
  `data_consulta` date NOT NULL,
  `hora_consulta` time NOT NULL,
  `criado_em` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horariomarcado`
--

LOCK TABLES `horariomarcado` WRITE;
/*!40000 ALTER TABLE `horariomarcado` DISABLE KEYS */;
/*!40000 ALTER TABLE `horariomarcado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_paciente` varchar(255) NOT NULL,
  `tipo_consulta` varchar(255) NOT NULL,
  `nome_medico` varchar(250) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `seguro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (1,'João','Consulta geral','Joaquina','joao.silva@email.com','912345678','2025-01-12','11:30:00',NULL),(2,'João','Consulta geral','Joaquina','joao.silva@email.com','912345678','2025-01-23','11:00:00',NULL),(3,'dinis','Consulta geral','Joaquina','dinis.m.p.oliveira@gmail.com','928072014','2045-02-28','09:00:00',NULL),(4,'João','Consulta geral','Joaquina','joao.silva@email.com','912345678','2025-01-23','11:00:00',NULL),(5,'João','Consulta geral','Joaquina','joao.silva@email.com','912345678','2025-01-23','11:00:00',NULL),(6,'João','Consulta geral','Joaquina','joao.silva@email.com','912345678','2025-01-23','11:00:00',NULL),(7,'João','Consulta geral','Joaquina','joao.silva@email.com','912345678','2025-01-23','11:00:00',NULL),(8,'João','Consulta geral','Joaquina','joao.silva@email.com','912345678','2025-01-23','11:00:00',NULL),(9,'João','Consulta geral','Joaquina','joao.silva@email.com','912345678','2025-01-23','11:00:00',NULL),(10,'João','Consulta geral','Joaquina','joao.silva@email.com','912345678','2025-01-23','11:00:00',NULL),(11,'João','Consulta geral','Joaquina','joao.silva@email.com','912345678','2025-01-23','11:00:00',NULL),(12,'João','Consulta geral','Joaquina','joao.silva@email.com','912345678','2025-01-23','11:00:00',NULL),(13,'João','Consulta geral','Joaquina','joao.silva@email.com','912345678','2025-01-23','11:00:00',NULL),(14,'João','Consulta geral','Joaquina','joao.silva@email.com','912345678','2025-01-23','11:00:00',NULL),(15,'João','Consulta geral','Joaquina','joao.silva@email.com','912345678','2025-01-23','11:00:00',NULL),(16,'André Barroso','Consulta geral','Celia','valancelbar@gmail.com','null','2025-01-20','10:00:00',NULL),(17,'dinis','Consulta geral','Joaquina','dinis.m.p.oliveira@gmail.com','928072014','2045-02-28','09:00:00',NULL),(19,'André Barroso','Consulta geral','Joaquina','valancelbar@gmail.com','null','2025-01-25','19:30:00',NULL),(20,'André Barroso','Consulta geral','Joaquina','valancelbar@gmail.com','null','2025-01-27','10:00:00',NULL),(21,'André Barroso','Consulta geral','Joaquina','valancelbar@gmail.com','null','2025-01-28','11:30:00','Particular'),(22,'André Carneiro','Ortodontia','Celia','andrebarroso@icloud.com','910375774','2025-01-30','21:06:00','Particular'),(23,'André Barroso','Consulta geral','Joaquina','valancelbar@gmail.com','null','2025-04-01','15:30:00',''),(24,'André Barroso','Consulta geral','Joaquina','valancelbar@gmail.com','null','2025-04-02','11:00:00','Particular'),(27,'André Barroso','Consulta geral','','valancelbar@gmail.com','null','2025-02-07','11:00:00','Particular'),(28,'André Barroso','Consulta geral','','valancelbar@gmail.com','null','2025-01-31','09:00:00','Particular'),(29,'André Barroso','Consulta geral','','valancelbar@gmail.com','null','2025-02-01','09:00:00','Particular'),(30,'André Barroso','Consulta geral','Celia','valancelbar@gmail.com','null','2025-02-01','09:00:00','Particular'),(31,'César','Consulta geral','Celia','cesar1panzer@gmail.com','934678987','2025-01-31','14:00:00','Particular'),(34,'André Barroso','Consulta geral','Celia','valancelbar@gmail.com','910375774','2025-02-04','10:30:00','Particular');
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios_historico`
--

DROP TABLE IF EXISTS `horarios_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horarios_historico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_paciente` varchar(255) NOT NULL,
  `tipo_consulta` varchar(255) NOT NULL,
  `seguro` varchar(255) DEFAULT NULL,
  `nome_medico` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios_historico`
--

LOCK TABLES `horarios_historico` WRITE;
/*!40000 ALTER TABLE `horarios_historico` DISABLE KEYS */;
INSERT INTO `horarios_historico` VALUES (1,'André Barroso','Consulta geral','Particular','Celia','valancelbar@gmail.com','910375774','2025-02-04','10:30:00');
/*!40000 ALTER TABLE `horarios_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horariosapagados`
--

DROP TABLE IF EXISTS `horariosapagados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horariosapagados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_paciente` varchar(255) NOT NULL,
  `tipo_consulta` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `seguro` varchar(255) NOT NULL,
  `apagadopor` varchar(255) NOT NULL,
  `data_consulta` date NOT NULL,
  `hora_consulta` time NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horariosapagados`
--

LOCK TABLES `horariosapagados` WRITE;
/*!40000 ALTER TABLE `horariosapagados` DISABLE KEYS */;
/*!40000 ALTER TABLE `horariosapagados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenomes` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `especialidade` varchar(255) DEFAULT NULL,
  `foto_perfil` varchar(255) DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'Joaquina','Costa','medicajoaquina@welldentys.com','123456','912345678','Dentista','foto_perfil.png','1985-07-15','2024-12-17 19:31:18'),(2,'Celia','Carneiro','celiacarneiro@welldentys.com','123456','919261230','Medica Dentista','foto_perfil.png','1975-08-14','2024-12-17 20:12:37');
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_paciente` varchar(255) NOT NULL,
  `tipo_consulta` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `seguro` varchar(200) NOT NULL,
  `data_consulta` date NOT NULL,
  `hora_consulta` time NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_historico`
--

DROP TABLE IF EXISTS `pedidos_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_historico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_paciente` varchar(250) NOT NULL,
  `tipo_consulta` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `seguro` varchar(200) NOT NULL,
  `data_consulta` date NOT NULL,
  `hora_consulta` time NOT NULL,
  `criado_em` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_historico`
--

LOCK TABLES `pedidos_historico` WRITE;
/*!40000 ALTER TABLE `pedidos_historico` DISABLE KEYS */;
INSERT INTO `pedidos_historico` VALUES (1,'André Barroso','Consulta geral','valancelbar@gmail.com','null','Particular','2025-01-24','09:30:00','2025-01-18 17:19:53'),(2,'André Barroso','Consulta geral','valancelbar@gmail.com','null','Particular','2025-01-20','10:00:00','2025-01-19 10:15:55'),(3,'André Barroso','Consulta geral','valancelbar@gmail.com','null','Caixa deral depósito','2025-01-31','09:30:00','2025-01-20 21:17:37'),(4,'João','Consulta geral','a14387@oficina.pt','915389427','Particular','2025-01-23','10:30:00','2025-01-23 10:28:18'),(5,'André Barroso','Consulta geral','valancelbar@gmail.com','null','Particular','2025-01-25','19:30:00','2025-01-25 23:31:46'),(6,'André Barroso','Consulta geral','valancelbar@gmail.com','null','Particular','2025-01-27','10:00:00','2025-01-26 10:25:45'),(7,'André Barroso','Consulta geral','valancelbar@gmail.com','null','Particular','2025-01-28','11:30:00','2025-01-26 10:29:31'),(8,'André Barroso','Consulta geral','valancelbar@gmail.com','null','Particular','2025-01-30','10:30:00','2025-01-27 12:33:11'),(9,'André Barroso','Consulta geral','valancelbar@gmail.com','null','Particular','2025-04-01','15:30:00','2025-01-27 15:44:25'),(10,'André Barroso','Consulta geral','valancelbar@gmail.com','null','Particular','2025-04-02','11:00:00','2025-01-27 16:18:53'),(11,'João','Consulta geral','a14387@oficina.pt','915389427','Cheque dentista','2025-01-30','18:00:00','2025-01-30 09:02:44'),(12,'André Barroso','Consulta geral','valancelbar@gmail.com','null','Particular','2025-04-02','11:30:00','2025-01-30 10:35:28'),(13,'André Barroso','Consulta geral','valancelbar@gmail.com','null','Particular','2025-02-08','17:00:00','2025-01-30 14:15:28'),(14,'André Barroso','Consulta geral','valancelbar@gmail.com','null','Particular','2025-02-08','09:00:00','2025-01-30 14:19:32'),(15,'André Barroso','Consulta geral','valancelbar@gmail.com','null','Particular','2025-02-01','09:00:00','2025-01-31 10:32:30'),(16,'César','Consulta geral','cesar1panzer@gmail.com','934678987','Particular','2025-01-31','14:00:00','2025-01-31 15:12:25'),(17,'André Barroso','Consulta geral','valancelbar@gmail.com','910375774','Médis','2025-02-01','10:00:00','2025-02-01 21:00:19'),(18,'André Barroso','Consulta geral','valancelbar@gmail.com','910375774','Médis','2025-02-03','09:30:00','2025-02-01 21:01:39'),(19,'André Barroso','Consulta geral','valancelbar@gmail.com','910375774','Particular','2025-02-03','19:30:00','2025-02-01 21:03:47'),(20,'Valentim','Consulta geral','valentimbarroso@gmail.com','919233647','Particular','2025-02-08','16:30:00','2025-02-01 21:09:29'),(21,'André Barroso','Consulta geral','valancelbar@gmail.com','910375774','Particular','2025-02-04','10:30:00','2025-02-01 21:30:19');
/*!40000 ALTER TABLE `pedidos_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidosapagados`
--

DROP TABLE IF EXISTS `pedidosapagados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidosapagados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_paciente` varchar(255) NOT NULL,
  `tipo_consulta` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `seguro` varchar(255) NOT NULL,
  `apagadopor` varchar(255) NOT NULL,
  `data_consulta` date NOT NULL,
  `hora_consulta` time NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidosapagados`
--

LOCK TABLES `pedidosapagados` WRITE;
/*!40000 ALTER TABLE `pedidosapagados` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidosapagados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenomes` varchar(255) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `foto_perfil` varchar(255) DEFAULT NULL,
  `pass` varchar(255) NOT NULL,
  `data_nascimento` date NOT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'André Barroso',NULL,'valancelbar@gmail.com','910375774',NULL,'123456','2000-02-08',1,'2024-11-30 17:14:54'),(2,'Barrosinho',NULL,'barrosinho@gmail.com',NULL,NULL,'barroso34','2000-02-08',0,'2024-12-15 11:48:51'),(3,'João','Silva','joao.silva@email.com','912345678',NULL,'senha123','1990-01-01',0,'2024-12-15 17:30:06'),(4,'undefined','undefined','undefined','123456789',NULL,'pass123','2024-12-03',0,'2024-12-15 17:59:01'),(11,'algoooooo','asdasdadasd','algo@algo.com','123456789',NULL,'pass123','2024-12-03',0,'2024-12-17 14:51:41'),(12,'eder','Teixeira','eder@gmail.com','917478545',NULL,'123456','2005-11-23',0,'2024-12-17 14:54:15'),(13,'joaquim','silva','joaquimsilva@gmail.com','910344784',NULL,'joaquim','2014-06-17',0,'2024-12-17 20:16:04'),(14,'João','Martins','a14387@oficina.pt','915389427',NULL,'123456','2007-04-27',0,'2025-01-06 14:08:40'),(15,'dinis','oliveira','dinis.m.p.oliveira@gmail.com','928072014',NULL,'12345678910','2005-09-24',0,'2025-01-13 10:12:14'),(16,'alfredo','roscas','alfredoroscas31@gmail.com','91111111',NULL,'123456','2012-02-08',0,'2025-01-27 15:46:24'),(17,'César','Martins','cesar1panzer@gmail.com','934678987',NULL,'cabaço123','2007-01-17',0,'2025-01-31 15:11:21'),(18,'Valentim','Barroso','valentimbarroso@gmail.com','919233647',NULL,'123456','2024-12-06',0,'2025-02-01 21:07:57');
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

-- Dump completed on 2025-02-01 22:01:11
