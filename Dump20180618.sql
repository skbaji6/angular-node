-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: sample
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bank_details`
--

DROP TABLE IF EXISTS `bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `formula` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_details`
--

LOCK TABLES `bank_details` WRITE;
/*!40000 ALTER TABLE `bank_details` DISABLE KEYS */;
INSERT INTO `bank_details` VALUES (9001,'Actual 300','(1+(((1+r/360)-1))+1)'),(9002,'Actual 300','(1+(((1+r/366)-1))+1)'),(9003,'Actual 325','((1+((1+r/325)-1)/325))+1)');
/*!40000 ALTER TABLE `bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `groupid` int(11) NOT NULL,
  `groupname` varchar(45) DEFAULT NULL,
  `status` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (101,'Novantas 2','ACT'),(102,'Saving Rate','INA'),(103,'Checking Rate','FUT'),(104,'Internal Use only','APP'),(105,'Business Rate','ACT'),(106,'Commerical Rate','INA'),(107,'Novantas 1','APP'),(108,'Novantas',NULL);
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `productname` varchar(45) DEFAULT NULL,
  `status` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1001,'first Choice Plus','ACT'),(1002,'CPI','INA'),(1003,'CPI EMP','APP'),(1004,'Prime Club Account','FUT'),(1005,'CPI EMP 203','ACT'),(1006,'CPI EMP 323','ACT'),(1007,'CPI EMP 657','ACT');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productgroup`
--

DROP TABLE IF EXISTS `productgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productgroup` (
  `productgroupid` int(11) NOT NULL,
  `productgroupname` varchar(45) DEFAULT NULL,
  `product` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`productgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productgroup`
--

LOCK TABLES `productgroup` WRITE;
/*!40000 ALTER TABLE `productgroup` DISABLE KEYS */;
INSERT INTO `productgroup` VALUES (2001,'CPI EMP GROUP','EMI'),(2002,'CPI GROUP','EMT'),(2003,'EMI GROUP','ST'),(2004,'BUSINESS GROUP','XX'),(2005,'SAVING GROUP','IM'),(2006,'COMMERICAL GROUP','ALL');
/*!40000 ALTER TABLE `productgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productheader`
--

DROP TABLE IF EXISTS `productheader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productheader` (
  `productheaderid` int(11) NOT NULL,
  `productheadername` varchar(45) DEFAULT NULL,
  `status` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`productheaderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productheader`
--

LOCK TABLES `productheader` WRITE;
/*!40000 ALTER TABLE `productheader` DISABLE KEYS */;
INSERT INTO `productheader` VALUES (7001,'Novantas Header','ACT'),(7002,'Bank of the West Header','INA'),(7003,'IM Header','FUT'),(7004,'ST Header','APP'),(7005,'XX Header','REJ'),(7006,'Comerical Header',NULL);
/*!40000 ALTER TABLE `productheader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productkeyregion`
--

DROP TABLE IF EXISTS `productkeyregion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productkeyregion` (
  `productkeyregionid` int(11) NOT NULL,
  `productkeyregion` varchar(45) DEFAULT NULL,
  `prodkey` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`productkeyregionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productkeyregion`
--

LOCK TABLES `productkeyregion` WRITE;
/*!40000 ALTER TABLE `productkeyregion` DISABLE KEYS */;
INSERT INTO `productkeyregion` VALUES (1020,'California','IM'),(1021,'Arizona','ST'),(1022,'Arkanasas','XX'),(1023,'Ohio','IM'),(1024,'Connecticut',NULL);
/*!40000 ALTER TABLE `productkeyregion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratesheet`
--

DROP TABLE IF EXISTS `ratesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratesheet` (
  `ratesheetid` int(11) NOT NULL,
  `ratesheetname` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `status` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`ratesheetid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratesheet`
--

LOCK TABLES `ratesheet` WRITE;
/*!40000 ALTER TABLE `ratesheet` DISABLE KEYS */;
INSERT INTO `ratesheet` VALUES (501,'Novantas','IM region','ACT'),(502,'Internal Use only',NULL,'INA'),(503,'Novantas 2',NULL,'FUT'),(504,'bank of the west',NULL,'APP'),(505,'Novantas 3',NULL,'ACT');
/*!40000 ALTER TABLE `ratesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `regionid` int(11) NOT NULL,
  `state` varchar(2) NOT NULL,
  `regioncode` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`state`,`regionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (20001,'AZ','000002'),(20002,'CA','000001'),(20003,'CT','000009'),(20004,'ND','000006'),(20005,'NJ','000004'),(20006,'NY','000003'),(20007,'OH','000005'),(20008,'SA','000008'),(20009,'SD','000007');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Abhishek','D'),(2,'Rahul','K'),(3,'Sam','R'),(4,'Achul','W'),(5,'Ram','B'),(6,'Vinay','S');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-18 12:19:38
