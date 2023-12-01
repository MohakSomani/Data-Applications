-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: spiderverse
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

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
-- Table structure for table `AbilitiesSideChar`
--

DROP TABLE IF EXISTS `AbilitiesSideChar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AbilitiesSideChar` (
  `CharacterIdentifier` int NOT NULL,
  `Ability` varchar(255) NOT NULL,
  PRIMARY KEY (`CharacterIdentifier`,`Ability`),
  CONSTRAINT `AbilitiesSideChar_ibfk_1` FOREIGN KEY (`CharacterIdentifier`) REFERENCES `SideCharacter` (`CharacterIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AbilitiesSideChar`
--

LOCK TABLES `AbilitiesSideChar` WRITE;
/*!40000 ALTER TABLE `AbilitiesSideChar` DISABLE KEYS */;
/*!40000 ALTER TABLE `AbilitiesSideChar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AbilitiesSpiderPerson`
--

DROP TABLE IF EXISTS `AbilitiesSpiderPerson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AbilitiesSpiderPerson` (
  `SpiderPersonSpiderIdentifier` int NOT NULL,
  `Ability` varchar(255) NOT NULL,
  PRIMARY KEY (`SpiderPersonSpiderIdentifier`,`Ability`),
  CONSTRAINT `AbilitiesSpiderPerson_ibfk_1` FOREIGN KEY (`SpiderPersonSpiderIdentifier`) REFERENCES `SpiderPerson` (`SpiderIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AbilitiesSpiderPerson`
--

LOCK TABLES `AbilitiesSpiderPerson` WRITE;
/*!40000 ALTER TABLE `AbilitiesSpiderPerson` DISABLE KEYS */;
/*!40000 ALTER TABLE `AbilitiesSpiderPerson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AbilitiesVillain`
--

DROP TABLE IF EXISTS `AbilitiesVillain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AbilitiesVillain` (
  `VillainIdentifier` int NOT NULL,
  `Ability` varchar(255) NOT NULL,
  PRIMARY KEY (`VillainIdentifier`,`Ability`),
  CONSTRAINT `AbilitiesVillain_ibfk_1` FOREIGN KEY (`VillainIdentifier`) REFERENCES `Villain` (`VillainIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AbilitiesVillain`
--

LOCK TABLES `AbilitiesVillain` WRITE;
/*!40000 ALTER TABLE `AbilitiesVillain` DISABLE KEYS */;
/*!40000 ALTER TABLE `AbilitiesVillain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssociatesWith`
--

DROP TABLE IF EXISTS `AssociatesWith`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AssociatesWith` (
  `SpiderPersonSpiderIdentifier` int NOT NULL,
  `SideCharacterCharacterIdentifier` int NOT NULL,
  PRIMARY KEY (`SpiderPersonSpiderIdentifier`,`SideCharacterCharacterIdentifier`),
  KEY `SideCharacterCharacterIdentifier` (`SideCharacterCharacterIdentifier`),
  CONSTRAINT `AssociatesWith_ibfk_1` FOREIGN KEY (`SpiderPersonSpiderIdentifier`) REFERENCES `SpiderPerson` (`SpiderIdentifier`),
  CONSTRAINT `AssociatesWith_ibfk_2` FOREIGN KEY (`SideCharacterCharacterIdentifier`) REFERENCES `SideCharacter` (`CharacterIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssociatesWith`
--

LOCK TABLES `AssociatesWith` WRITE;
/*!40000 ALTER TABLE `AssociatesWith` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssociatesWith` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Equipment`
--

DROP TABLE IF EXISTS `Equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Equipment` (
  `Name` varchar(255) NOT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipment`
--

LOCK TABLES `Equipment` WRITE;
/*!40000 ALTER TABLE `Equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FacesOffAgainst`
--

DROP TABLE IF EXISTS `FacesOffAgainst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FacesOffAgainst` (
  `SpiderPersonSpiderIdentifier` int NOT NULL,
  `VillainVillainIdentifier` int NOT NULL,
  PRIMARY KEY (`SpiderPersonSpiderIdentifier`,`VillainVillainIdentifier`),
  KEY `VillainVillainIdentifier` (`VillainVillainIdentifier`),
  CONSTRAINT `FacesOffAgainst_ibfk_1` FOREIGN KEY (`SpiderPersonSpiderIdentifier`) REFERENCES `SpiderPerson` (`SpiderIdentifier`),
  CONSTRAINT `FacesOffAgainst_ibfk_2` FOREIGN KEY (`VillainVillainIdentifier`) REFERENCES `Villain` (`VillainIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FacesOffAgainst`
--

LOCK TABLES `FacesOffAgainst` WRITE;
/*!40000 ALTER TABLE `FacesOffAgainst` DISABLE KEYS */;
/*!40000 ALTER TABLE `FacesOffAgainst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HeadsMission`
--

DROP TABLE IF EXISTS `HeadsMission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HeadsMission` (
  `SpiderPersonSpiderIdentifier` int NOT NULL,
  `MissionTitle` varchar(255) NOT NULL,
  PRIMARY KEY (`SpiderPersonSpiderIdentifier`,`MissionTitle`),
  KEY `MissionTitle` (`MissionTitle`),
  CONSTRAINT `HeadsMission_ibfk_1` FOREIGN KEY (`SpiderPersonSpiderIdentifier`) REFERENCES `SpiderPerson` (`SpiderIdentifier`),
  CONSTRAINT `HeadsMission_ibfk_2` FOREIGN KEY (`MissionTitle`) REFERENCES `Mission` (`Title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HeadsMission`
--

LOCK TABLES `HeadsMission` WRITE;
/*!40000 ALTER TABLE `HeadsMission` DISABLE KEYS */;
/*!40000 ALTER TABLE `HeadsMission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hypothesis`
--

DROP TABLE IF EXISTS `Hypothesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hypothesis` (
  `SpiderIdentifier` int NOT NULL,
  `ResearchNote` varchar(255) NOT NULL,
  PRIMARY KEY (`SpiderIdentifier`,`ResearchNote`),
  KEY `ResearchNote` (`ResearchNote`),
  CONSTRAINT `Hypothesis_ibfk_1` FOREIGN KEY (`SpiderIdentifier`) REFERENCES `SpiderPerson` (`SpiderIdentifier`),
  CONSTRAINT `Hypothesis_ibfk_2` FOREIGN KEY (`ResearchNote`) REFERENCES `ResearchNotes` (`Topic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hypothesis`
--

LOCK TABLES `Hypothesis` WRITE;
/*!40000 ALTER TABLE `Hypothesis` DISABLE KEYS */;
/*!40000 ALTER TABLE `Hypothesis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MemberOf`
--

DROP TABLE IF EXISTS `MemberOf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MemberOf` (
  `SpiderPersonSpiderIdentifier` int NOT NULL,
  `OrganizationOrganizationIdentifier` int NOT NULL,
  PRIMARY KEY (`SpiderPersonSpiderIdentifier`,`OrganizationOrganizationIdentifier`),
  KEY `OrganizationOrganizationIdentifier` (`OrganizationOrganizationIdentifier`),
  CONSTRAINT `MemberOf_ibfk_1` FOREIGN KEY (`SpiderPersonSpiderIdentifier`) REFERENCES `SpiderPerson` (`SpiderIdentifier`),
  CONSTRAINT `MemberOf_ibfk_2` FOREIGN KEY (`OrganizationOrganizationIdentifier`) REFERENCES `Organization` (`OrganizationIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemberOf`
--

LOCK TABLES `MemberOf` WRITE;
/*!40000 ALTER TABLE `MemberOf` DISABLE KEYS */;
/*!40000 ALTER TABLE `MemberOf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mentors`
--

DROP TABLE IF EXISTS `Mentors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mentors` (
  `SpiderPersonSpiderIdentifier` int NOT NULL,
  `MentorSpiderIdentifier` int NOT NULL,
  PRIMARY KEY (`SpiderPersonSpiderIdentifier`,`MentorSpiderIdentifier`),
  KEY `MentorSpiderIdentifier` (`MentorSpiderIdentifier`),
  CONSTRAINT `Mentors_ibfk_1` FOREIGN KEY (`SpiderPersonSpiderIdentifier`) REFERENCES `SpiderPerson` (`SpiderIdentifier`),
  CONSTRAINT `Mentors_ibfk_2` FOREIGN KEY (`MentorSpiderIdentifier`) REFERENCES `SpiderPerson` (`SpiderIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentors`
--

LOCK TABLES `Mentors` WRITE;
/*!40000 ALTER TABLE `Mentors` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mentors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mission`
--

DROP TABLE IF EXISTS `Mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mission` (
  `Title` varchar(255) NOT NULL,
  `Objectives` text,
  `ResourcesUsed` text,
  `Outcome` text,
  `DimensionID` int DEFAULT NULL,
  PRIMARY KEY (`Title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mission`
--

LOCK TABLES `Mission` WRITE;
/*!40000 ALTER TABLE `Mission` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Organization`
--

DROP TABLE IF EXISTS `Organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Organization` (
  `OrganizationIdentifier` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `DimensionID` int DEFAULT NULL,
  `TimeOfEstablishment` date DEFAULT NULL,
  `Objectives` text,
  `HeadquartersLocation` varchar(255) DEFAULT NULL,
  `Logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`OrganizationIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organization`
--

LOCK TABLES `Organization` WRITE;
/*!40000 ALTER TABLE `Organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `Organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Owns`
--

DROP TABLE IF EXISTS `Owns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Owns` (
  `SpiderPersonSpiderIdentifier` int NOT NULL,
  `Equipment` varchar(255) NOT NULL,
  PRIMARY KEY (`SpiderPersonSpiderIdentifier`,`Equipment`),
  KEY `Equipment` (`Equipment`),
  CONSTRAINT `Owns_ibfk_1` FOREIGN KEY (`SpiderPersonSpiderIdentifier`) REFERENCES `SpiderPerson` (`SpiderIdentifier`),
  CONSTRAINT `Owns_ibfk_2` FOREIGN KEY (`Equipment`) REFERENCES `Equipment` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Owns`
--

LOCK TABLES `Owns` WRITE;
/*!40000 ALTER TABLE `Owns` DISABLE KEYS */;
/*!40000 ALTER TABLE `Owns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participant`
--

DROP TABLE IF EXISTS `Participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Participant` (
  `MissionTitle` varchar(255) NOT NULL,
  `Participant` varchar(255) NOT NULL,
  PRIMARY KEY (`MissionTitle`,`Participant`),
  CONSTRAINT `Participant_ibfk_1` FOREIGN KEY (`MissionTitle`) REFERENCES `Mission` (`Title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participant`
--

LOCK TABLES `Participant` WRITE;
/*!40000 ALTER TABLE `Participant` DISABLE KEYS */;
/*!40000 ALTER TABLE `Participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResearchNotes`
--

DROP TABLE IF EXISTS `ResearchNotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ResearchNotes` (
  `Content` text,
  `Date` date DEFAULT NULL,
  `Topic` varchar(255) NOT NULL,
  PRIMARY KEY (`Topic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResearchNotes`
--

LOCK TABLES `ResearchNotes` WRITE;
/*!40000 ALTER TABLE `ResearchNotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResearchNotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SideCharacter`
--

DROP TABLE IF EXISTS `SideCharacter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SideCharacter` (
  `CharacterIdentifier` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `DimensionID` int DEFAULT NULL,
  `Abilities` varchar(255) DEFAULT NULL,
  `MaskName` varchar(255) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CharacterIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SideCharacter`
--

LOCK TABLES `SideCharacter` WRITE;
/*!40000 ALTER TABLE `SideCharacter` DISABLE KEYS */;
/*!40000 ALTER TABLE `SideCharacter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SpiderPerson`
--

DROP TABLE IF EXISTS `SpiderPerson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SpiderPerson` (
  `SpiderIdentifier` int NOT NULL AUTO_INCREMENT,
  `RealName` varchar(255) DEFAULT NULL,
  `DimensionID` int DEFAULT NULL,
  `HeroName` varchar(255) DEFAULT NULL,
  `MissionLogs` text,
  `Gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SpiderIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SpiderPerson`
--

LOCK TABLES `SpiderPerson` WRITE;
/*!40000 ALTER TABLE `SpiderPerson` DISABLE KEYS */;
/*!40000 ALTER TABLE `SpiderPerson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Villain`
--

DROP TABLE IF EXISTS `Villain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Villain` (
  `VillainIdentifier` int NOT NULL AUTO_INCREMENT,
  `RealName` varchar(255) DEFAULT NULL,
  `DimensionID` int DEFAULT NULL,
  `VillainName` varchar(255) DEFAULT NULL,
  `Abilities` varchar(255) DEFAULT NULL,
  `ThreatLevel` int DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`VillainIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Villain`
--

LOCK TABLES `Villain` WRITE;
/*!40000 ALTER TABLE `Villain` DISABLE KEYS */;
/*!40000 ALTER TABLE `Villain` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-02  3:58:21
