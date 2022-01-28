-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: evaluacion_practica
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `Id` int unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` tinytext NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Categoria random 1'),(2,'Categoria random 2'),(3,'Categoria random 3'),(4,'Categoria random 4'),(5,'Categoria random 5'),(6,'Categoria random 6'),(7,'Categoria random 7'),(8,'Categoria random 8'),(9,'Categoria random 9'),(10,'Categoria random 10');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias/notas`
--

DROP TABLE IF EXISTS `categorias/notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias/notas` (
  `Id` int unsigned NOT NULL AUTO_INCREMENT,
  `notas_id` int unsigned NOT NULL,
  `categorias_id` int unsigned NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`),
  KEY `notas_id_idx` (`notas_id`),
  KEY `categorias_id_idx` (`categorias_id`),
  CONSTRAINT `categorias_id` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`Id`),
  CONSTRAINT `notas_id` FOREIGN KEY (`notas_id`) REFERENCES `notas` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='muchas a muchas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias/notas`
--

LOCK TABLES `categorias/notas` WRITE;
/*!40000 ALTER TABLE `categorias/notas` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias/notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `Id` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `descripcion` tinytext NOT NULL,
  `usuarios_id` int unsigned NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`),
  UNIQUE KEY `usuarios_id_UNIQUE` (`usuarios_id`),
  CONSTRAINT `usuarios_id` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'Titulo1','2022-01-28','2022-01-28','Hola Mundo',1),(2,'Titulo2','2022-01-28','2022-01-28','Hola Mundo',5),(3,'Titulo3','2022-01-28','2022-01-28','Hola Mundo',9),(4,'Titulo4','2022-01-28','2022-01-28','Hola Mundo',8),(5,'Titulo5','2022-01-28','2022-01-28','Hola Mundo',2),(6,'Titulo6','2022-01-28','2022-01-28','Hola Mundo',10),(7,'Titulo7','2022-01-28','2022-01-28','Hola Mundo',3),(8,'Titulo8','2022-01-28','2022-01-28','Hola Mundo',4),(9,'Titulo9','2022-01-28','2022-01-28','Hola Mundo',7),(10,'Titulo10','2022-01-28','2022-01-28','Hola Mundo',6);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `Id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `e_mail` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Homero','Homero@Simpson'),(2,'Juanito','Juanito@Potter'),(3,'Monito','Monito@123'),(4,'Cuck','Cuck@Norris'),(5,'Winnie','Winnie@Poo'),(6,'Rick','Rick@Sanchez'),(7,'DeadPool','Deadpool@Srpool'),(8,'Norman','Norman@SefuedeSabaticoCarino'),(9,'Ositos','Ositos@deGomita'),(10,'Tacos','Tacos@deGerber');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-28 15:11:36
