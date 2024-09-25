-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: horse_stable_management
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `Employee_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(255) DEFAULT NULL,
  `Last_Name` varchar(255) DEFAULT NULL,
  `Contact_Info` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `Work_Schedule` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Anna','Lee','anna.lee@example.com','Trainer','Mon-Fri'),(2,'Mark','Rogers','mark.rogers@example.com','Veterinarian','Mon-Wed-Fri'),(3,'Anna','Lee','anna.lee@example.com','Trainer','Mon-Fri'),(4,'Mark','Rogers','mark.rogers@example.com','Veterinarian','Mon-Wed-Fri');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `Equipment_ID` int NOT NULL AUTO_INCREMENT,
  `Equipment_Name` varchar(255) DEFAULT NULL,
  `Equipment_Value` decimal(10,2) DEFAULT NULL,
  `Stable_ID` int DEFAULT NULL,
  PRIMARY KEY (`Equipment_ID`),
  KEY `Stable_ID` (`Stable_ID`),
  CONSTRAINT `equipment_ibfk_1` FOREIGN KEY (`Stable_ID`) REFERENCES `stables` (`Stable_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'Saddle',250.00,1),(2,'Bridle',100.00,2),(3,'Saddle',250.00,1),(4,'Bridle',100.00,2);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horses`
--

DROP TABLE IF EXISTS `horses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horses` (
  `Horse_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Health_Status` varchar(255) DEFAULT NULL,
  `Stall_Number` int DEFAULT NULL,
  `Training_Schedule` varchar(255) DEFAULT NULL,
  `Owner_ID` int DEFAULT NULL,
  PRIMARY KEY (`Horse_ID`),
  KEY `Owner_ID` (`Owner_ID`),
  CONSTRAINT `horses_ibfk_1` FOREIGN KEY (`Owner_ID`) REFERENCES `owners` (`Owner_ID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horses`
--

LOCK TABLES `horses` WRITE;
/*!40000 ALTER TABLE `horses` DISABLE KEYS */;
INSERT INTO `horses` VALUES (27,'Lightning',5,'Healthy',101,'Mon-Wed-Fri',1),(28,'Thunder',7,'Injured',102,'Tue-Thu-Sat',2),(29,'Lightning',5,'Healthy',101,'Mon-Wed-Fri',1),(30,'Thunder',7,'Injured',102,'Tue-Thu-Sat',2),(31,'Lightning',5,'Healthy',101,'Mon-Wed-Fri',1),(32,'Thunder',7,'Injured',102,'Tue-Thu-Sat',2);
/*!40000 ALTER TABLE `horses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owners` (
  `Owner_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(255) DEFAULT NULL,
  `Last_Name` varchar(255) DEFAULT NULL,
  `Contact_Info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Owner_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owners`
--

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` VALUES (1,'John','Doe','john.doe@example.com'),(2,'Jane','Smith','jane.smith@example.com'),(3,'John','Doe','john.doe@example.com'),(4,'Jane','Smith','jane.smith@example.com');
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stables`
--

DROP TABLE IF EXISTS `stables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stables` (
  `Stable_ID` int NOT NULL AUTO_INCREMENT,
  `Stable_Name` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Stable_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stables`
--

LOCK TABLES `stables` WRITE;
/*!40000 ALTER TABLE `stables` DISABLE KEYS */;
INSERT INTO `stables` VALUES (1,'Sunny Stable','Tallinn'),(2,'Moonlight Stable','Tartu'),(3,'Sunny Stable','Tallinn'),(4,'Moonlight Stable','Tartu'),(5,'Sunny Stable','Tallinn'),(6,'Moonlight Stable','Tartu'),(7,'Sunny Stable','Tallinn'),(8,'Moonlight Stable','Tartu'),(9,'Sunny Stable','Tallinn'),(10,'Moonlight Stable','Tartu'),(11,'Sunny Stable','Tallinn'),(12,'Moonlight Stable','Tartu'),(13,'Sunny Stable','Tallinn'),(14,'Moonlight Stable','Tartu'),(15,'Sunny Stable','Tallinn'),(16,'Moonlight Stable','Tartu');
/*!40000 ALTER TABLE `stables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `User_ID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','adminpassword','admin'),(2,'johndoe','ownerpassword','owner'),(3,'annalee','employeepassword','employee'),(4,'admin','adminpassword','admin'),(5,'johndoe','ownerpassword','owner'),(6,'annalee','employeepassword','employee'),(7,'admin','adminpassword','admin'),(8,'johndoe','ownerpassword','owner'),(9,'annalee','employeepassword','employee');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veterinary_procedures`
--

DROP TABLE IF EXISTS `veterinary_procedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veterinary_procedures` (
  `Procedure_ID` int NOT NULL AUTO_INCREMENT,
  `Procedure_Type` varchar(255) DEFAULT NULL,
  `Procedure_Date` date DEFAULT NULL,
  `Horse_ID` int DEFAULT NULL,
  PRIMARY KEY (`Procedure_ID`),
  KEY `Horse_ID` (`Horse_ID`),
  CONSTRAINT `veterinary_procedures_ibfk_1` FOREIGN KEY (`Horse_ID`) REFERENCES `horses` (`Horse_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinary_procedures`
--

LOCK TABLES `veterinary_procedures` WRITE;
/*!40000 ALTER TABLE `veterinary_procedures` DISABLE KEYS */;
/*!40000 ALTER TABLE `veterinary_procedures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-25  9:41:08
