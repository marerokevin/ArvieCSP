-- MariaDB dump 10.19  Distrib 10.7.4-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ArvieDS
-- ------------------------------------------------------
-- Server version	10.7.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(60) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `contact_number` int(15) NOT NULL,
  `date` datetime NOT NULL,
  `access` varchar(8) NOT NULL,
  `permission` varchar(8) NOT NULL,
  `referralId` varchar(16) NOT NULL,
  `homeaddress` varchar(255) NOT NULL,
  `tin_acct` varchar(255) NOT NULL,
  `sss_num` varchar(255) NOT NULL,
  `member_id` varchar(100) NOT NULL,
  `number_basis` int(11) NOT NULL,
  `sponsorName` varchar(255) NOT NULL,
  `sponsor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES
(3,'Cedrick James','Orozo','orozo.cedrick@gmail.com','$2y$10$i083mDChjXJZmV5KCEeZiujDy37EKbACzkWVlV7biUTcxJfjG8q46',123123123,'2022-10-23 15:38:28','approved','administ','DI10-pIZm-Tubl','123, bahay kubo, na munti','1231231','123123132','ADS2022-10-2',2,' Kevin Roy  Marero',NULL),
(4,'John Arian','Malondras','malondras.arian@glory.hole','$2y$10$q5UytXeWlHjpGGMvS9CLWOn/B24HJDo2Zzmj.2pgLAFZjK2resGai',12312313,'2022-10-23 15:54:41','approved','userist','DI10-DW1d-RcbB','123, bahay kubo, na munti','123123123','123123123','ADS2022-10-3',3,' Cedrick James  Orozo','ADS2022-10-2'),
(5,'Annie','Batumbakal','cedrick.james@glory.hole','$2y$10$v0m6Cxoy5W/Yeg2p41VbZOzSzTF/E15Wlh9JAsQgZlj6Pw36GxfXi',123123132,'2022-10-23 16:17:57','approved','userist','DI10-VzqN-KYgR','123, bahay kubo, na munti','123123123','123123123','ADS2022-10-4',4,' Cedrick James  Orozo','ADS2022-10-2'),
(6,'Arvie','Admin','arvieadmin@gmail.com','$2y$10$jTe3GMdGIMRgT1XLcBgjVe/2hw1FrmEwPhmkeHys9hw.vSqdR0wt2',2147483647,'2022-10-17 21:36:49','approved','administ','asd12-12345','3 Verder, Tanza, Cavite','n/a','n/a','ADS22-10-6',6,'','n/a');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generated_code`
--

DROP TABLE IF EXISTS `generated_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generated_code` (
  `code_id` int(100) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `userNameOfSponsor` varchar(100) NOT NULL,
  `userIdOfSponsor` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `validity` date NOT NULL,
  `date_created` date NOT NULL,
  `userNameOfCodeOwner` varchar(100) NOT NULL,
  `userIdOfCodeOwner` int(11) DEFAULT NULL,
  PRIMARY KEY (`code_id`),
  UNIQUE KEY `uniqueCode` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generated_code`
--

LOCK TABLES `generated_code` WRITE;
/*!40000 ALTER TABLE `generated_code` DISABLE KEYS */;
INSERT INTO `generated_code` VALUES
(1,'RA','James Orozo','13','DR10SKDJFH498','2022-11-01','2022-10-01','marero@gmail.com',11),
(2,'RA','James Orozo','13','DR10DKFJS','2022-11-10','2022-10-10','marero@gmail.com',11),
(3,'RA','James Orozo','13','RA10DKFJSLKJL','2022-11-10','2022-10-10','marero@gmail.com',11);
/*!40000 ALTER TABLE `generated_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invites`
--

DROP TABLE IF EXISTS `invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invites` (
  `invitesID` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `idOfInvite` int(30) NOT NULL,
  `invitee` varchar(20) NOT NULL,
  `inviteeID` int(30) NOT NULL,
  PRIMARY KEY (`invitesID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invites`
--

LOCK TABLES `invites` WRITE;
/*!40000 ALTER TABLE `invites` DISABLE KEYS */;
INSERT INTO `invites` VALUES
(32,'James Orozo',13,'Kevin Roy marero',11),
(41,'Cedrick James Orozo',12,'James Orozo',13),
(43,'q e',17,'James Orozo',13),
(44,'ChrisostomoIbarra',0,'Kevin Roy Marero',0);
/*!40000 ALTER TABLE `invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rebates_points`
--

DROP TABLE IF EXISTS `rebates_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rebates_points` (
  `rebates_points_id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `pointsEarned` int(50) NOT NULL,
  PRIMARY KEY (`rebates_points_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rebates_points`
--

LOCK TABLES `rebates_points` WRITE;
/*!40000 ALTER TABLE `rebates_points` DISABLE KEYS */;
INSERT INTO `rebates_points` VALUES
(1,11,'marero@gmail.com',7);
/*!40000 ALTER TABLE `rebates_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referral_codes`
--

DROP TABLE IF EXISTS `referral_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referral_codes` (
  `gen_date` datetime NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `transfer_date` datetime NOT NULL,
  `referee` varchar(255) DEFAULT NULL,
  `transact_date` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `ref_code` varchar(14) NOT NULL,
  `generation_batch` varchar(255) NOT NULL,
  `transaction_id` int(255) NOT NULL AUTO_INCREMENT,
  `codetype` varchar(2) NOT NULL,
  `count` int(2) NOT NULL,
  `referrer_name` varchar(255) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral_codes`
--

LOCK TABLES `referral_codes` WRITE;
/*!40000 ALTER TABLE `referral_codes` DISABLE KEYS */;
INSERT INTO `referral_codes` VALUES
('2022-10-23 15:23:20','ADS10-1','2022-10-23 15:23:20','ADS2022-10-1','2022-10-23 15:23:20','used','DI10-YWzh-fWwv','AT10-KG3FIf79XSl4gUhy',1,'DI',10,'Kevin Roy Marero'),
('2022-10-23 15:23:20','ADS10-1','2022-10-23 15:23:20','ADS2022-10-2','2022-10-23 15:23:20','used','DI10-pIZm-Tubl','AT10-KG3FIf79XSl4gUhy',2,'DI',10,'Kevin Roy Marero'),
('2022-10-23 15:23:20','ADS10-1','2022-10-23 15:23:20',NULL,'2022-10-23 15:23:20','to_redeem','DI10-9v8L-dCwx','AT10-KG3FIf79XSl4gUhy',3,'DI',10,'Kevin Roy Marero'),
('2022-10-23 15:23:20','ADS10-1','2022-10-23 15:23:20',NULL,'2022-10-23 15:23:20','to_redeem','DI10-dP7a-pRjB','AT10-KG3FIf79XSl4gUhy',4,'DI',10,'Kevin Roy Marero'),
('2022-10-23 15:23:20','ADS10-1','2022-10-23 15:23:20',NULL,'2022-10-23 15:23:20','to_redeem','DI10-vNJ4-MDmw','AT10-KG3FIf79XSl4gUhy',5,'DI',10,'Kevin Roy Marero'),
('2022-10-23 15:23:20','ADS10-1','2022-10-23 15:23:20',NULL,'2022-10-23 15:23:20','to_redeem','DI10-H6v9-L9uv','AT10-KG3FIf79XSl4gUhy',6,'DI',10,'Kevin Roy Marero'),
('2022-10-23 15:23:20','ADS10-1','2022-10-23 15:23:20',NULL,'2022-10-23 15:23:20','to_redeem','DI10-gaHd-F0Eg','AT10-KG3FIf79XSl4gUhy',7,'DI',10,'Kevin Roy Marero'),
('2022-10-23 15:23:20','ADS10-1','2022-10-23 15:23:20',NULL,'2022-10-23 15:23:20','to_redeem','DI10-Suja-NMGv','AT10-KG3FIf79XSl4gUhy',8,'DI',10,'Kevin Roy Marero'),
('2022-10-23 15:23:20','ADS10-1','2022-10-23 15:23:20',NULL,'2022-10-23 15:23:20','to_redeem','DI10-E3Vn-5J8U','AT10-KG3FIf79XSl4gUhy',9,'DI',10,'Kevin Roy Marero'),
('2022-10-23 15:23:20','ADS10-1','2022-10-23 15:23:20',NULL,'2022-10-23 15:23:20','to_redeem','DI10-5xn6-IB9a','AT10-KG3FIf79XSl4gUhy',10,'DI',10,'Kevin Roy Marero'),
('2022-10-23 15:52:29','ADS2022-10-2','2022-10-23 15:52:29','ADS2022-10-3','2022-10-23 15:52:29','used','DI10-DW1d-RcbB','AT10-gyhc9EzlK0PFU6vt',11,'DI',10,'Cedrick James Orozo'),
('2022-10-23 15:52:29','ADS2022-10-2','2022-10-23 15:52:29','ADS2022-10-4','2022-10-23 15:52:29','used','DI10-VzqN-KYgR','AT10-gyhc9EzlK0PFU6vt',12,'DI',10,'Cedrick James Orozo'),
('2022-10-23 15:52:29','ADS2022-10-2','2022-10-23 15:52:29',NULL,'2022-10-23 15:52:29','to_redeem','DI10-5E6j-VDkz','AT10-gyhc9EzlK0PFU6vt',13,'DI',10,'Cedrick James Orozo'),
('2022-10-23 15:52:29','ADS2022-10-2','2022-10-23 15:52:29',NULL,'2022-10-23 15:52:29','to_redeem','DI10-seYX-k0BC','AT10-gyhc9EzlK0PFU6vt',14,'DI',10,'Cedrick James Orozo'),
('2022-10-23 15:52:29','ADS2022-10-2','2022-10-23 15:52:29',NULL,'2022-10-23 15:52:29','to_redeem','DI10-WQYX-IUa5','AT10-gyhc9EzlK0PFU6vt',15,'DI',10,'Cedrick James Orozo'),
('2022-10-23 15:52:29','ADS2022-10-2','2022-10-23 15:52:29',NULL,'2022-10-23 15:52:29','to_redeem','DI10-Kjtr-keoE','AT10-gyhc9EzlK0PFU6vt',16,'DI',10,'Cedrick James Orozo'),
('2022-10-23 15:52:29','ADS2022-10-2','2022-10-23 15:52:29',NULL,'2022-10-23 15:52:29','to_redeem','DI10-a0Lt-mPVv','AT10-gyhc9EzlK0PFU6vt',17,'DI',10,'Cedrick James Orozo'),
('2022-10-23 15:52:29','ADS2022-10-2','2022-10-23 15:52:29',NULL,'2022-10-23 15:52:29','to_redeem','DI10-sJdr-IxiG','AT10-gyhc9EzlK0PFU6vt',18,'DI',10,'Cedrick James Orozo'),
('2022-10-23 15:52:29','ADS2022-10-2','2022-10-23 15:52:29',NULL,'2022-10-23 15:52:29','to_redeem','DI10-xqGr-2vFZ','AT10-gyhc9EzlK0PFU6vt',19,'DI',10,'Cedrick James Orozo'),
('2022-10-23 15:52:29','ADS2022-10-2','2022-10-23 15:52:29',NULL,'2022-10-23 15:52:29','to_redeem','DI10-d1s5-XOAF','AT10-gyhc9EzlK0PFU6vt',20,'DI',10,'Cedrick James Orozo');
/*!40000 ALTER TABLE `referral_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `totalbalance`
--

DROP TABLE IF EXISTS `totalbalance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `totalbalance` (
  `totalBalanceId` int(20) NOT NULL,
  `userID` varchar(65) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `totalBalance` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totalbalance`
--

LOCK TABLES `totalbalance` WRITE;
/*!40000 ALTER TABLE `totalbalance` DISABLE KEYS */;
/*!40000 ALTER TABLE `totalbalance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `transactionId` int(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `inviteName` varchar(50) NOT NULL,
  `inviteeName` varchar(50) NOT NULL,
  `packageType` varchar(200) NOT NULL,
  `codeOwner` varchar(200) NOT NULL,
  `codeOwnerId` varchar(200) NOT NULL,
  `addedAmount` int(50) NOT NULL,
  `TotalBalance` int(50) NOT NULL,
  `addedPoints` int(50) NOT NULL,
  `totalPoints` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-23 23:21:51
