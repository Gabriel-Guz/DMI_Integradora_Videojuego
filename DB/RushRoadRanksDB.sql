CREATE DATABASE  IF NOT EXISTS `rush_road_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rush_road_db`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: rush_road_db
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `tbb_persona`
--

DROP TABLE IF EXISTS `tbb_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_persona` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `apellido1` varchar(40) NOT NULL,
  `apellido2` varchar(40) NOT NULL,
  `genero` enum('m','f') NOT NULL,
  `stado` tinyint NOT NULL,
  `f_nacimiento` date NOT NULL,
  `f_registro` datetime NOT NULL,
  `f_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_persona`
--

LOCK TABLES `tbb_persona` WRITE;
/*!40000 ALTER TABLE `tbb_persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_usuario`
--

DROP TABLE IF EXISTS `tbb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_usuario` (
  `username` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `contrasena` varchar(30) NOT NULL,
  `stado` tinyint NOT NULL,
  `f_registro` datetime NOT NULL,
  `f_actualizacion` datetime DEFAULT NULL,
  `persona_Id` int NOT NULL,
  `rol_Id` int NOT NULL,
  PRIMARY KEY (`username`),
  KEY `rol_Id_idx` (`rol_Id`),
  KEY `persona_Id_idx` (`persona_Id`),
  CONSTRAINT `persona_Id` FOREIGN KEY (`persona_Id`) REFERENCES `tbb_persona` (`Id`),
  CONSTRAINT `rol_Id` FOREIGN KEY (`rol_Id`) REFERENCES `tbc_rol` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_usuario`
--

LOCK TABLES `tbb_usuario` WRITE;
/*!40000 ALTER TABLE `tbb_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_rol`
--

DROP TABLE IF EXISTS `tbc_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_rol` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `stado` tinyint NOT NULL,
  `f_registro` datetime NOT NULL,
  `f_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_rol`
--

LOCK TABLES `tbc_rol` WRITE;
/*!40000 ALTER TABLE `tbc_rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_comentario`
--

DROP TABLE IF EXISTS `tbd_comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_comentario` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `username_Id` varchar(40) NOT NULL,
  `comentario` varchar(200) NOT NULL,
  `stado` tinyint NOT NULL,
  `f_registro` datetime NOT NULL,
  `f_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `comentario_username_Id_idx` (`username_Id`),
  CONSTRAINT `comentario_username_Id` FOREIGN KEY (`username_Id`) REFERENCES `tbb_usuario` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_comentario`
--

LOCK TABLES `tbd_comentario` WRITE;
/*!40000 ALTER TABLE `tbd_comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_estadisticas`
--

DROP TABLE IF EXISTS `tbd_estadisticas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_estadisticas` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `username_Id` varchar(40) NOT NULL,
  `puntaje` int NOT NULL,
  `carreras` int NOT NULL,
  `victorias` int NOT NULL,
  `derrotas` int NOT NULL,
  `stado` tinyint NOT NULL,
  `f_registro` datetime NOT NULL,
  `f_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `estadisticas_username_Id_idx` (`username_Id`),
  CONSTRAINT `estadisticas_username_Id` FOREIGN KEY (`username_Id`) REFERENCES `tbb_usuario` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_estadisticas`
--

LOCK TABLES `tbd_estadisticas` WRITE;
/*!40000 ALTER TABLE `tbd_estadisticas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_estadisticas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_valoracion`
--

DROP TABLE IF EXISTS `tbd_valoracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_valoracion` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `puntuacion` int NOT NULL,
  `username_Id` varchar(40) NOT NULL,
  `stado` tinyint NOT NULL,
  `f_registro` datetime NOT NULL,
  `f_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `username_Id_idx` (`username_Id`),
  CONSTRAINT `valoracion_username_Id` FOREIGN KEY (`username_Id`) REFERENCES `tbb_usuario` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_valoracion`
--

LOCK TABLES `tbd_valoracion` WRITE;
/*!40000 ALTER TABLE `tbd_valoracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_valoracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_ranked`
--

DROP TABLE IF EXISTS `vw_ranked`;
/*!50001 DROP VIEW IF EXISTS `vw_ranked`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_ranked` AS SELECT 
 1 AS `Id`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'rush_road_db'
--

--
-- Dumping routines for database 'rush_road_db'
--

--
-- Final view structure for view `vw_ranked`
--

/*!50001 DROP VIEW IF EXISTS `vw_ranked`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_ranked` AS select `tbd_estadisticas`.`Id` AS `Id` from `tbd_estadisticas` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-08 11:30:20
