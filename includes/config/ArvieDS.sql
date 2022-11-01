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
  `member_id` varchar(100) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `sponsor` varchar(100) NOT NULL,
  `sponsorName` varchar(65) NOT NULL,
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
  `number_basis` int(11) NOT NULL COMMENT 'for idnumber purposes only',
  `referralLink` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES
(6,'ADS22-10-6','Arvie','Admin','n/a','','arvieadmin@gmail.com','$2y$10$jTe3GMdGIMRgT1XLcBgjVe/2hw1FrmEwPhmkeHys9hw.vSqdR0wt2',2147483647,'2022-10-17 21:36:49','approved','administ','asd12-12345','3 Verder, Tanza, Cavite','n/a','n/a',6,''),
(41,'ADS2022-10-7','One','Uno','n/a','','one@gmail.com','$2y$10$jTe3GMdGIMRgT1XLcBgjVe/2hw1FrmEwPhmkeHys9hw.vSqdR0wt2',955535367,'2022-10-17 21:36:49','approved','userist','','3 Verder, Tanza, Cavite','n/a','n/a',7,''),
(52,'ADS2022-10-8','Two','Dos','ADS2022-10-7','One  Uno','two@gmail.com','$2y$10$FWDCxHsp4dbGdMKWgb1eQO8iqeQBTuWFaPnMpLHduKigqr8Q2eLvy',987654,'2022-10-29 19:46:13','approved','userist','DI10-UgF7-m67V','Palangue 2','890987','0987',8,''),
(53,'ADS2022-10-9','Three','Tres','','  ','three@gmail.com','$2y$10$8Vfz.IozNOoOdG./Dm6I7.mdIoX4QGEpeEgrxoQeczukfoctbbEES',987654,'2022-10-29 19:48:48','approved','userist','DI10-QFfB-4j06','Palangue 2','34234','2563523',9,''),
(54,'ADS2022-10-10','Four','Kwatro','ADS2022-10-8','Two  Dos','four@gmail.com','$2y$10$9s5XFt/cbRNUUh.hUTByv.V/ZOMcXXj/gOS1DbxEuJEPYfBLRk4l2',987654,'2022-10-29 19:52:37','approved','userist','DI10-728Z-rpK2','Palangue 2','4234','434523',10,''),
(55,'ADS2022-10-11','Kevin Roy','Marero','','  ','marerokevin@gmail.com','$2y$10$3Zx7H9e/NJDaqAN1iBq6NOoyfsgO87Abq9R6pxJdA9UqFOJeGRDo.',123,'2022-10-31 22:35:25','approved','userist','DI10-3irV-6bQj','Blk 6, Lt5 , Villa Monteverde Mulawin, Tanza, Cavite','123','123',11,'http://localhost/ArvieCSP/signup.php?ref=ADS2022-10-11'),
(56,'ADS2022-10-12','Kevin Roy','Marero','','  ','makeitrain@gmail.com','$2y$10$M4MWGfQwPWgDGnvlHgm2LO5v8OwXF7W/d9P7yrRYF4SWXpkDa3eLy',123,'2022-10-31 23:33:17','approved','userist','DI10-CqBj-Jfie','123, bahay kubo, na munti','123','123',12,'http://localhost/ArvieCSP/signup.php?ref=ADS2022-10-12'),
(57,'ADS2022-11-13','Kevin','123','','  ','happykidd0@gmail.com','$2y$10$Ng8/zkEBQLkptwvbvYkmQu/5REpHot8qx53S/1PqBuyvhkpBkdq3m',123123123,'2022-11-01 13:54:53','approved','userist','DI11-SXM7-JEXs','123, bahay kubo, na munti','123','123',13,'http://localhost/ArvieCSP/signup.php?ref=ADS2022-11-13'),
(58,'ADS2022-11-14','titi','mo','','  ','titimo@gmail.com','$2y$10$Xw./w0EPJ1avnX7oebsWS.8M94.T7xeHcMl3g.xcetyD.RSref3Qi',123,'2022-11-01 13:57:23','approved','userist','DI11-CEil-8l4d','Blk 6, Lt5 , Villa Monteverde Mulawin, Tanza, Cavite','123','123',14,'http://localhost/ArvieCSP/signup.php?ref=ADS2022-11-14'),
(59,'ADS2022-11-15','123','123','','  ','ma12@gmail.com','$2y$10$g9zKqMmsgBRjZEVqRGChl.JGM74v4d/1FiXcOCnVgpB79Np6qYgsS',123,'2022-11-01 14:23:28','approved','userist','DI11-H6yC-6Q7N','123','123','1231',15,'http://localhost/ArvieCSP/signup.php?ref=ADS2022-11-15'),
(60,'ADS2022-11-16','Kevin','Marero','','  ','marero123@gmail.com','$2y$10$2Bz2IF6pbI3gisBeDnN6EOCup7KY/MoPjPYUDuWUsN6Rew3YwTnPq',132,'2022-11-01 14:43:49','approved','userist','DI11-c4Yb-rnOG','123','123','123',16,'http://localhost/ArvieCSP/signup.php?ref=ADS2022-11-16'),
(61,'ADS2022-11-17','asd','asd','0','  ','happy123@gmail.com.ph','$2y$10$llQHN/RkiCLk7R9ZqQnHa.9uQvpuE/tT.G3e1u2zwsuZzmOE7a8W6',123123,'2022-11-01 15:28:43','approved','userist','DI11-SLIA-3OV6','asd','123','123',17,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v4v'),
(62,'ADS2022-11-18','test','123','0','  ','tanginaaaa@gmail.com','$2y$10$7E3W5rqSeCodps56Krk3LOYC2g5KE500Df0.oeECvhb8T6mtVnVES',123123,'2022-11-01 15:32:56','approved','userist','DI11-FpLB-jvLW','hap','123','123',18,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v4w'),
(63,'ADS2022-11-19','123','123','0','  ','123123@gmail.com123','$2y$10$/nL057rkrLYnSIhD6/E/xunKpCsOn2VqKJNTx1S0zfcf0SQ0was.G',123,'2022-11-01 15:47:26','approved','userist','DI11-fPX7-NYQH','123','123','123',19,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v4x'),
(64,'ADS2022-11-20','kevin','marero','0','  ','hahahahahan@gmail.na','$2y$10$Ev6v8VXMflPaOxc7G4RVz.yyKaWSJbqLR923NdvNCaZ5hMIFzDN2G',1231231,'2022-11-01 16:13:09','approved','userist','DI11-Eiok-Mc1d','123','123','123',20,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v5c'),
(65,'ADS2022-11-21','tasfq','sodnfgowi','0','  ','haya@gmail.com','$2y$10$QIhakEmcMURpO83hOXEYbubJn2aSNUk7MzkfLOl.pcAtlcCoDuYA6',120841204,'2022-11-01 16:24:06','approved','userist','DI11-JwrO-mzDn','1209j1','123','123',21,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v5d'),
(66,'ADS2022-11-22','asd','asd','0','  ','1212414@gmail.fwe','$2y$10$eqVk5.VnMd2tUqCx9rPpZeDkvrFRtn72QcKuORcv4EE1RyZbSJjXu',123,'2022-11-01 16:28:36','approved','userist','DI11-ui2Z-im1y','sd','123','123',22,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v5e'),
(67,'ADS20221123','asd','asd','0','  ','1212414@gmail.fwee','$2y$10$vLw9ZWRyk2Ax1qq7BhnLL.0zKm8ZTIOOF7BXcbAiHki0E3YcNQMXq',123,'2022-11-01 16:29:39','approved','userist','DI11-wDJh-YVD7','sd','123','123',23,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v5f'),
(68,'ADS20221124','asd','asd','f7jlien4','  ','1212414@gmail.fweee','$2y$10$z4MsioGwfNSxdS1T6MC7RORFQk12riNDphOUdDS5/pv3B//UCZXty',123,'2022-11-01 16:30:46','approved','userist','DI11-CFAk-UEr7','sd','123','123',24,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v5g'),
(69,'ADS20221125','123','123','f7jlien4','  ','gagaga123123123123@gmail.com','$2y$10$cYzW3t2JsPt.en3efucJ8OAeUZSD..hX1i3JUQy9HPD1u61UvGqYm',123,'2022-11-01 16:32:55','approved','userist','DI11-qpPf-m1t9','123','123','123',25,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v5h'),
(70,'AD20221126','123','123','f7jlien4','  ','gagaga123123123123@gmail.comaa','$2y$10$sUXY70HM7LSm4H5Gk9BLlOpa5pymMiRJzFcog7Z7e57nLmHz.BP0S',123,'2022-11-01 16:33:44','approved','userist','DI11-CBPd-Bx3C','123','123','123',26,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v5i'),
(71,'AD20221127','123','123','f7jlien4','  ','gagaga123123123123@gmail.comaaa','$2y$10$D8EpnXk3913ineHcFbetxOCEnHjHOAxdsQb2PFgCoS81KK59WaXLe',123,'2022-11-01 16:35:07','approved','userist','DI11-Bc76-u0qh','123','123','123',27,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v5j'),
(72,'AD20221128','123','123','f7jlien4','  ','gagaga123123123123@gmail.comaaax','$2y$10$kxdIHVayyMG2xmKSNHHoK.iAYOL/EIooSkoMs72i97ji7jugZEHme',123,'2022-11-01 16:35:38','approved','userist','DI11-AxUm-3QY9','123','123','123',28,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v5k'),
(73,'AD20221129','123','123','0','  ','gagaga123123123123@gmail.comaaaxxx','$2y$10$LsGidTObaWcOC1yIhMx23.LfDjNjxUuvOJfvcNcACiftolYYpNPMG',123,'2022-11-01 16:38:00','approved','userist','DI11-yOdr-sMLT','123','123','123',29,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v5l'),
(74,'AD20221130','123','123','0','  ','aaagagaga123123123123@gmail.comaaaxxx','$2y$10$BXmfxqeslc8z66CfG0LofeJwf1RzxmJ.BjNUF2TrQT8cAsI2waUd.',123,'2022-11-01 16:38:48','approved','userist','DI11-cP4X-rSnk','123','123','123',30,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v60'),
(75,'AD20221131','123','123','0','  ','aaagagaga123123123123@gmai21l.comaaaxxx','$2y$10$d4tV/2xnGUKL8bBffGTEju5TcGyyxLQvm3420fB0ate7wcdkkUljy',123,'2022-11-01 16:39:28','approved','userist','DI11-1e8s-tTfu','123','123','123',31,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v61'),
(76,'AD20221132','123','123','0','  ','aaagagaga12312312sdasd3123@gmai21l.comaaaxxx','$2y$10$ZBPyo3xJFzz0tF95jaiYBuQmuzw.vNFOuqYjOrVGjJYEAbI05tCla',123,'2022-11-01 16:40:39','approved','userist','DI11-RCG3-JMYN','123','123','123',32,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v62'),
(77,'AD20221133','123','123','0','  ','aaagagaga12312312sdasd3123asd@gmai21l.comaaaxxx','$2y$10$CUG/SjN/UAHB97CTfmDi2ejC9QVTSp9VlisA8Ok64ihq58AsBlckG',123,'2022-11-01 16:41:12','approved','userist','DI11-yIgq-t9h6','123','123','123',33,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v63'),
(78,'AD20221134','123','123','0','  ','yu@gmail.com','$2y$10$5VbXOBvte2Hne4AWU2HAVelkiO6mAd4ZroJwrXtiuMElKosk6dSym',123,'2022-11-01 16:42:11','approved','userist','DI11-e2Ux-WwAq','123','123','123',34,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v64'),
(79,'AD20221135','123','123','0','  ','yu@gmail.com1','$2y$10$BFr9tMYnPn7rh4Rxlo9m7.2rJJWe.506zTRF9rIY.HJCN.UFh51PG',123,'2022-11-01 16:45:37','approved','userist','DI11-eZAM-gw4B','123','123','123',35,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v65'),
(80,'AD20221136','123','123','0','  ','yu@gmail.com2','$2y$10$vL2k35Zrf/MHf9PaZg1rq.zdzPh2knyueanQK8F4TLjsW.CbfAQFu',123,'2022-11-01 16:47:10','approved','userist','DI11-NfuC-RB9q','123','123','123',36,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v66'),
(81,'AD20221137','123','123','0','  ','yu@gmail.com3','$2y$10$E9MCEeCWxPYJBFdX3md8V.jKwj5JZEgtnPJWkhHXQ4daVkoGUtX5C',123,'2022-11-01 16:49:39','approved','userist','DI11-E0QA-eLmr','123','123','123',37,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v67'),
(82,'AD20221138','123','123','0','  ','yu@gmail.com4','$2y$10$HRc5zxZDts0RMjtOGi8KY.11CM0O/NxvUIyFBL70jDqho/9u/Trqe',123,'2022-11-01 16:54:28','approved','userist','DI11-XMbG-DKM1','123','123','123',38,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v68'),
(83,'AD20221139','123','123','0','  ','yu@gmail.com5','$2y$10$TAJ4EGKqV.2/BTJPap6MOOGSZeZSLhniBwnf8rFu5EYGxnMAj32Me',123,'2022-11-01 16:55:18','approved','userist','DI11-I0iN-4gW7','123','123','123',39,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v69'),
(84,'AD20221140','123','123','0','  ','yu@gmail.com6','$2y$10$HSef.u/Nm1ooPyQKmGjFbuG3GNPNQHNg3sQmYxhNckmXt9261Kg2G',123,'2022-11-01 16:56:30','approved','userist','DI11-bHUx-qgki','123','123','123',40,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v6o'),
(85,'AD20221141','123','123','0','  ','yu@gmail.com7','$2y$10$Edoi4/y3zbyYOjdKIVhZKOl60ccic3MZ4RFClnvblaUhMtsrkM9ka',123,'2022-11-01 16:56:58','approved','userist','DI11-ufaY-LtSA','123','123','123',41,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v6p'),
(86,'AD20221142','123','123','0','  ','yu@gmail.com8','$2y$10$CLvM8M2qMK.u3Cu6cLY05O7zsLuSsUQ7.aQnmV1Zebkqx2AanTpsG',123,'2022-11-01 16:57:21','approved','userist','DI11-Nstc-edIE','123','123','123',42,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v6q'),
(87,'AD20221143','asd','asd','0','  ','TITI@GMAIL.COM1','$2y$10$W8JkDXPIhTbmV21NVNDlFeRq7B8OPfUX7lzz7JEpeoo1mZKKOxjXq',123123,'2022-11-01 17:00:07','approved','userist','DI11-1mJi-a9VO','asd','123','123',43,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v6r'),
(88,'AD20221144','tang','frank','0','  ','frankie@gmail.com','$2y$10$5yaGQUbELaXgKyC5/yQT9eaYWLLzQYQPqkBu60y8bdF6N5o2iKriO',123,'2022-11-01 17:09:45','approved','userist','DI11-SxPl-g26P','123','123','123',44,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v6s'),
(89,'AD20221145','tang','frank','0','  ','frankie@gmail.com1','$2y$10$c5MjiuHsOKSpCyOoyV6N1eZQdRK8kFeR6fbJt31W.CRuROYM5w7e.',123,'2022-11-01 17:11:06','approved','userist','DI11-6f0d-KXl4','123','123','123',45,'http://localhost/ArvieCSP/signup.php?ref=9vhwf7v6t');
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
-- Table structure for table `payout_request`
--

DROP TABLE IF EXISTS `payout_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payout_request` (
  `payout_request_id` int(10) NOT NULL AUTO_INCREMENT,
  `date` varchar(20) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `member_id` varchar(50) NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `mode_of_payment` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `receipt` varchar(100) NOT NULL,
  `date_released` varchar(15) NOT NULL,
  `time_released` varchar(15) NOT NULL,
  `transactionIdBasis` int(10) NOT NULL,
  PRIMARY KEY (`payout_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payout_request`
--

LOCK TABLES `payout_request` WRITE;
/*!40000 ALTER TABLE `payout_request` DISABLE KEYS */;
INSERT INTO `payout_request` VALUES
(1,'2022-10-30','PR-10050003','ADS2022-10-7','One Uno','650','Cash','released','../images/001bfe4d0d8f3f5c635b1cf139946d74.jpeg','','',1),
(2,'2022-10-30','PR2022-10-2','ADS2022-10-7','One Uno','650','Cash','released','','','',2),
(3,'2022-10-30','PR-202230103','ADS2022-10-7','One Uno','1000','Cash','released','../images/ccba8c2432597a18fb0e0d6991059366.jpeg','','',3),
(4,'2022-10-30','PR-202230104','ADS2022-10-7','One Uno','650','Cash','released','../images/6e8b187e0c4b16780d1c7ce5e23e3adc.jpeg','2022-10-30','07:01 pm',4),
(5,'2022-10-30','PR-202230105','ADS2022-10-7','One Uno','1000','Gcash','released','../images/d0d48ae50229f17dadfb270eb6314bfd.jpeg','','',5);
/*!40000 ALTER TABLE `payout_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rebates_points`
--

DROP TABLE IF EXISTS `rebates_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rebates_points` (
  `rebates_points_id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `pointsEarned` int(50) NOT NULL,
  PRIMARY KEY (`rebates_points_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rebates_points`
--

LOCK TABLES `rebates_points` WRITE;
/*!40000 ALTER TABLE `rebates_points` DISABLE KEYS */;
INSERT INTO `rebates_points` VALUES
(4,'ADS2022-10-7','one@gmail.com',2),
(7,'ADS2022-10-8','two@gmail.com',1),
(8,'ADS2022-10-9','three@gmail.com',0),
(9,'ADS2022-10-10','four@gmail.com',2),
(10,'ADS2022-10-11','marerokevin@gmail.com',0),
(11,'ADS2022-10-12','makeitrain@gmail.com',0),
(12,'ADS2022-11-13','happykidd0@gmail.com',0),
(13,'ADS2022-11-14','titimo@gmail.com',0),
(14,'ADS2022-11-15','ma12@gmail.com',0),
(15,'ADS2022-11-16','marero123@gmail.com',0),
(16,'ADS2022-11-17','happy123@gmail.com.ph',0),
(17,'ADS2022-11-18','tanginaaaa@gmail.com',0),
(18,'ADS2022-11-19','123123@gmail.com123',0),
(19,'ADS2022-11-20','hahahahahan@gmail.na',0),
(20,'ADS2022-11-21','haya@gmail.com',0),
(21,'ADS2022-11-22','1212414@gmail.fwe',0),
(22,'ADS20221123','1212414@gmail.fwee',0),
(23,'ADS20221124','1212414@gmail.fweee',0),
(24,'ADS20221125','gagaga123123123123@gmail.com',0),
(25,'AD20221126','gagaga123123123123@gmail.comaa',0),
(26,'AD20221127','gagaga123123123123@gmail.comaaa',0),
(27,'AD20221128','gagaga123123123123@gmail.comaaax',0),
(28,'AD20221129','gagaga123123123123@gmail.comaaaxxx',0),
(29,'AD20221130','aaagagaga123123123123@gmail.comaaaxxx',0),
(30,'AD20221131','aaagagaga123123123123@gmai21l.comaaaxxx',0),
(31,'AD20221132','aaagagaga12312312sdasd3123@gmai21l.comaaaxxx',0),
(32,'AD20221133','aaagagaga12312312sdasd3123asd@gmai21l.comaaaxxx',0),
(33,'AD20221134','yu@gmail.com',0),
(34,'AD20221135','yu@gmail.com1',0),
(35,'AD20221136','yu@gmail.com2',0),
(36,'AD20221137','yu@gmail.com3',0),
(37,'AD20221138','yu@gmail.com4',0),
(38,'AD20221139','yu@gmail.com5',0),
(39,'AD20221140','yu@gmail.com6',0),
(40,'AD20221141','yu@gmail.com7',0),
(41,'AD20221142','yu@gmail.com8',0),
(42,'AD20221143','TITI@GMAIL.COM1',0),
(43,'AD20221144','frankie@gmail.com',0),
(44,'AD20221145','frankie@gmail.com1',0);
/*!40000 ALTER TABLE `rebates_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rebatesamount`
--

DROP TABLE IF EXISTS `rebatesamount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rebatesamount` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rebatesA` int(10) NOT NULL,
  `rebatesB` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rebatesamount`
--

LOCK TABLES `rebatesamount` WRITE;
/*!40000 ALTER TABLE `rebatesamount` DISABLE KEYS */;
INSERT INTO `rebatesamount` VALUES
(1,70,70),
(2,30,20),
(3,30,30),
(4,30,30),
(5,30,20),
(6,30,20),
(7,20,20),
(8,20,20),
(9,20,10),
(10,20,10);
/*!40000 ALTER TABLE `rebatesamount` ENABLE KEYS */;
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
  `userNameOfCodeOwner` varchar(50) NOT NULL,
  `transact_date` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `ref_code` varchar(14) NOT NULL,
  `generation_batch` varchar(255) NOT NULL,
  `transaction_id` int(255) NOT NULL AUTO_INCREMENT,
  `codetype` varchar(2) NOT NULL,
  `counter` int(2) NOT NULL,
  `referrer_name` varchar(255) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral_codes`
--

LOCK TABLES `referral_codes` WRITE;
/*!40000 ALTER TABLE `referral_codes` DISABLE KEYS */;
INSERT INTO `referral_codes` VALUES
('2022-10-29 19:41:03','waiting','2022-10-29 19:41:03','ADS2022-10-8','','2022-10-29 19:41:03','used','DI10-UgF7-m67V','AT10-Tnm3jgOrWBG89hfM',102,'DI',0,''),
('2022-10-29 19:41:04','waiting','2022-10-29 19:41:04','ADS2022-10-9','','2022-10-29 19:41:04','used','DI10-QFfB-4j06','AT10-Tnm3jgOrWBG89hfM',103,'DI',0,''),
('2022-10-29 19:41:04','waiting','2022-10-29 19:41:04','ADS2022-10-10','','2022-10-29 19:41:04','used','DI10-728Z-rpK2','AT10-Tnm3jgOrWBG89hfM',104,'DI',0,''),
('2022-10-29 19:41:04','waiting','2022-10-29 19:41:04','ADS2022-10-12','','2022-10-29 19:41:04','used','DI10-CqBj-Jfie','AT10-Tnm3jgOrWBG89hfM',105,'DI',0,''),
('2022-10-29 19:41:04','waiting','2022-10-29 19:41:04','ADS2022-10-11','','2022-10-29 19:41:04','used','DI10-3irV-6bQj','AT10-Tnm3jgOrWBG89hfM',106,'DI',0,''),
('2022-10-29 19:55:30','waiting','2022-10-29 19:55:30','ADS2022-10-8','two@gmail.com','2022-10-29 19:55:30','used','RA10-atFA-9vub','AT10-pwvrKYzfdRUN8lPD',107,'RA',0,''),
('2022-10-29 19:55:31','waiting','2022-10-29 19:55:31','ADS2022-10-10','four@gmail.com','2022-10-29 19:55:31','used','RA10-WIB8-zWb0','AT10-pwvrKYzfdRUN8lPD',108,'RA',0,''),
('2022-10-29 19:55:31','waiting','2022-10-29 19:55:31','ADS2022-10-7','one@gmail.com','2022-10-29 19:55:31','used','RA10-T4z8-bXB2','AT10-pwvrKYzfdRUN8lPD',109,'RA',0,''),
('2022-10-29 19:55:32','waiting','2022-10-29 19:55:32','ADS2022-10-10','four@gmail.com','2022-10-29 19:55:32','used','RA10-TEU6-T2Jo','AT10-pwvrKYzfdRUN8lPD',110,'RA',0,''),
('2022-10-29 19:55:32','waiting','2022-10-29 19:55:32','ADS2022-10-7','one@gmail.com','2022-10-29 19:55:32','used','RA10-Y1IB-rQzU','AT10-pwvrKYzfdRUN8lPD',111,'RA',0,''),
('2022-11-01 08:37:30','waiting','2022-11-01 08:37:30','ADS2022-11-13','n/a','2022-11-01 08:37:30','used','DI11-SXM7-JEXs','AT11-Slswz6JTO0pXZixK',112,'DI',1,'n/a'),
('2022-11-01 13:56:04','waiting','2022-11-01 13:56:04','ADS2022-11-14','n/a','2022-11-01 13:56:04','used','DI11-CEil-8l4d','AT11-ByjWOLgqKAHdxRlo',113,'DI',4,'n/a'),
('2022-11-01 13:56:04','waiting','2022-11-01 13:56:04','ADS2022-11-15','n/a','2022-11-01 13:56:04','used','DI11-H6yC-6Q7N','AT11-ByjWOLgqKAHdxRlo',114,'DI',4,'n/a'),
('2022-11-01 13:56:04','waiting','2022-11-01 13:56:04','ADS2022-11-16','n/a','2022-11-01 13:56:04','used','DI11-c4Yb-rnOG','AT11-ByjWOLgqKAHdxRlo',115,'DI',4,'n/a'),
('2022-11-01 13:56:04','waiting','2022-11-01 13:56:04','ADS2022-11-17','n/a','2022-11-01 13:56:04','used','DI11-SLIA-3OV6','AT11-ByjWOLgqKAHdxRlo',116,'DI',4,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-Iya3-y8cU','AT11-FhkxcaLR2pMsrV71',117,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-cx5M-02Ra','AT11-FhkxcaLR2pMsrV71',118,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-VlAH-PjQn','AT11-FhkxcaLR2pMsrV71',119,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-vRVy-Q2ub','AT11-FhkxcaLR2pMsrV71',120,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-GY7c-rb0z','AT11-FhkxcaLR2pMsrV71',121,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-MA4T-sSK2','AT11-FhkxcaLR2pMsrV71',122,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-hA9y-w3xz','AT11-FhkxcaLR2pMsrV71',123,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-hREp-o0cY','AT11-FhkxcaLR2pMsrV71',124,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-KTML-Fk2r','AT11-FhkxcaLR2pMsrV71',125,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-4EUM-5l0b','AT11-FhkxcaLR2pMsrV71',126,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-aqYQ-si5f','AT11-FhkxcaLR2pMsrV71',127,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-QOGb-oiyj','AT11-FhkxcaLR2pMsrV71',128,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-V60I-4MSQ','AT11-FhkxcaLR2pMsrV71',129,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-FzDa-ndCv','AT11-FhkxcaLR2pMsrV71',130,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-Vx6M-mGc5','AT11-FhkxcaLR2pMsrV71',131,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-tsh0-qLkr','AT11-FhkxcaLR2pMsrV71',132,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-Sh2g-S4fp','AT11-FhkxcaLR2pMsrV71',133,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-0qhf-YgFt','AT11-FhkxcaLR2pMsrV71',134,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-ZrEA-0y5s','AT11-FhkxcaLR2pMsrV71',135,'RB',20,'n/a'),
('2022-11-01 15:32:14','waiting','2022-11-01 15:32:14',NULL,'n/a','2022-11-01 15:32:14','to_redeem','RB11-wIEz-dEMm','AT11-FhkxcaLR2pMsrV71',136,'RB',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','ADS2022-11-18','n/a','2022-11-01 15:32:21','used','DI11-FpLB-jvLW','AT11-IzOYEeNiqLTDF1hw',137,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','ADS2022-11-19','n/a','2022-11-01 15:32:21','used','DI11-fPX7-NYQH','AT11-IzOYEeNiqLTDF1hw',138,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','AD20221137','n/a','2022-11-01 15:32:21','used','DI11-E0QA-eLmr','AT11-IzOYEeNiqLTDF1hw',139,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','AD20221136','n/a','2022-11-01 15:32:21','used','DI11-NfuC-RB9q','AT11-IzOYEeNiqLTDF1hw',140,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','AD20221135','n/a','2022-11-01 15:32:21','used','DI11-eZAM-gw4B','AT11-IzOYEeNiqLTDF1hw',141,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','AD20221134','n/a','2022-11-01 15:32:21','used','DI11-e2Ux-WwAq','AT11-IzOYEeNiqLTDF1hw',142,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','AD20221133','n/a','2022-11-01 15:32:21','used','DI11-yIgq-t9h6','AT11-IzOYEeNiqLTDF1hw',143,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','AD20221132','n/a','2022-11-01 15:32:21','used','DI11-RCG3-JMYN','AT11-IzOYEeNiqLTDF1hw',144,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','AD20221131','n/a','2022-11-01 15:32:21','used','DI11-1e8s-tTfu','AT11-IzOYEeNiqLTDF1hw',145,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','AD20221130','n/a','2022-11-01 15:32:21','used','DI11-cP4X-rSnk','AT11-IzOYEeNiqLTDF1hw',146,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','AD20221129','n/a','2022-11-01 15:32:21','used','DI11-yOdr-sMLT','AT11-IzOYEeNiqLTDF1hw',147,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','AD20221128','n/a','2022-11-01 15:32:21','used','DI11-AxUm-3QY9','AT11-IzOYEeNiqLTDF1hw',148,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','AD20221127','n/a','2022-11-01 15:32:21','used','DI11-Bc76-u0qh','AT11-IzOYEeNiqLTDF1hw',149,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','AD20221126','n/a','2022-11-01 15:32:21','used','DI11-CBPd-Bx3C','AT11-IzOYEeNiqLTDF1hw',150,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','ADS20221125','n/a','2022-11-01 15:32:21','used','DI11-qpPf-m1t9','AT11-IzOYEeNiqLTDF1hw',151,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','ADS20221124','n/a','2022-11-01 15:32:21','used','DI11-CFAk-UEr7','AT11-IzOYEeNiqLTDF1hw',152,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','ADS20221123','n/a','2022-11-01 15:32:21','used','DI11-wDJh-YVD7','AT11-IzOYEeNiqLTDF1hw',153,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','ADS2022-11-22','n/a','2022-11-01 15:32:21','used','DI11-ui2Z-im1y','AT11-IzOYEeNiqLTDF1hw',154,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','ADS2022-11-21','n/a','2022-11-01 15:32:21','used','DI11-JwrO-mzDn','AT11-IzOYEeNiqLTDF1hw',155,'DI',20,'n/a'),
('2022-11-01 15:32:21','waiting','2022-11-01 15:32:21','ADS2022-11-20','n/a','2022-11-01 15:32:21','used','DI11-Eiok-Mc1d','AT11-IzOYEeNiqLTDF1hw',156,'DI',20,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-amlS-6ELY','AT11-vBO5FojPeWYf0ZaC',157,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-FZX1-w1HC','AT11-vBO5FojPeWYf0ZaC',158,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-2Rxb-Wynj','AT11-vBO5FojPeWYf0ZaC',159,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-LxXC-GByl','AT11-vBO5FojPeWYf0ZaC',160,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-bWyJ-ju4Q','AT11-vBO5FojPeWYf0ZaC',161,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-gEVi-q3sI','AT11-vBO5FojPeWYf0ZaC',162,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-27H8-EsH4','AT11-vBO5FojPeWYf0ZaC',163,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-7FYm-rqHe','AT11-vBO5FojPeWYf0ZaC',164,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-3fJI-2MQG','AT11-vBO5FojPeWYf0ZaC',165,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-wMJn-a2LG','AT11-vBO5FojPeWYf0ZaC',166,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-AGsM-26Fn','AT11-vBO5FojPeWYf0ZaC',167,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-Dgep-CdKm','AT11-vBO5FojPeWYf0ZaC',168,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-NgiF-DLCK','AT11-vBO5FojPeWYf0ZaC',169,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-mFDX-yd4N','AT11-vBO5FojPeWYf0ZaC',170,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-UcaF-MESf','AT11-vBO5FojPeWYf0ZaC',171,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-VSeI-fbYx','AT11-vBO5FojPeWYf0ZaC',172,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-nZG0-Qedn','AT11-vBO5FojPeWYf0ZaC',173,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-XVvB-eYmK','AT11-vBO5FojPeWYf0ZaC',174,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-YTy6-Vsky','AT11-vBO5FojPeWYf0ZaC',175,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-oTjY-jTYm','AT11-vBO5FojPeWYf0ZaC',176,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-KjDx-GF3c','AT11-vBO5FojPeWYf0ZaC',177,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-vGXx-sObR','AT11-vBO5FojPeWYf0ZaC',178,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-WDCE-S5Xg','AT11-vBO5FojPeWYf0ZaC',179,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-GqsJ-ZVeb','AT11-vBO5FojPeWYf0ZaC',180,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-df8Z-NiSE','AT11-vBO5FojPeWYf0ZaC',181,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-3hXJ-P3aI','AT11-vBO5FojPeWYf0ZaC',182,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-0mzG-ORPq','AT11-vBO5FojPeWYf0ZaC',183,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-ydGB-TDnh','AT11-vBO5FojPeWYf0ZaC',184,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-Bv8F-kBGf','AT11-vBO5FojPeWYf0ZaC',185,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-61mj-mbQs','AT11-vBO5FojPeWYf0ZaC',186,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-AlkF-tSs7','AT11-vBO5FojPeWYf0ZaC',187,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-PKzT-Zld8','AT11-vBO5FojPeWYf0ZaC',188,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-UQeF-vHLK','AT11-vBO5FojPeWYf0ZaC',189,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-n7c9-P1mq','AT11-vBO5FojPeWYf0ZaC',190,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-Baly-umxa','AT11-vBO5FojPeWYf0ZaC',191,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-EauQ-e4oz','AT11-vBO5FojPeWYf0ZaC',192,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-GRXv-qR1I','AT11-vBO5FojPeWYf0ZaC',193,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-xfkh-3BLx','AT11-vBO5FojPeWYf0ZaC',194,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-6mb4-6EAu','AT11-vBO5FojPeWYf0ZaC',195,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-bGY3-YcfM','AT11-vBO5FojPeWYf0ZaC',196,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-JIvz-DK83','AT11-vBO5FojPeWYf0ZaC',197,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-L8o0-gdCR','AT11-vBO5FojPeWYf0ZaC',198,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-ML75-Chxd','AT11-vBO5FojPeWYf0ZaC',199,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-xw7E-68fK','AT11-vBO5FojPeWYf0ZaC',200,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-6vpM-ibNG','AT11-vBO5FojPeWYf0ZaC',201,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-kMH2-OEwm','AT11-vBO5FojPeWYf0ZaC',202,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-FtML-EOue','AT11-vBO5FojPeWYf0ZaC',203,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-yjpD-niJv','AT11-vBO5FojPeWYf0ZaC',204,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-6Ik9-TOPV','AT11-vBO5FojPeWYf0ZaC',205,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-IXkC-ZcTl','AT11-vBO5FojPeWYf0ZaC',206,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-GRse-lhTX','AT11-vBO5FojPeWYf0ZaC',207,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-1Hxr-eZc3','AT11-vBO5FojPeWYf0ZaC',208,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-lqZM-BTEg','AT11-vBO5FojPeWYf0ZaC',209,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-iCWV-QXvW','AT11-vBO5FojPeWYf0ZaC',210,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-xN6j-Ko9r','AT11-vBO5FojPeWYf0ZaC',211,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-istb-dQmV','AT11-vBO5FojPeWYf0ZaC',212,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-aUXF-6Emb','AT11-vBO5FojPeWYf0ZaC',213,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-4SQZ-F9fm','AT11-vBO5FojPeWYf0ZaC',214,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-3rkd-NocD','AT11-vBO5FojPeWYf0ZaC',215,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-IdMA-ObiE','AT11-vBO5FojPeWYf0ZaC',216,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-Qekw-LmnJ','AT11-vBO5FojPeWYf0ZaC',217,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-QKS2-BqbV','AT11-vBO5FojPeWYf0ZaC',218,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-HGXE-tYCP','AT11-vBO5FojPeWYf0ZaC',219,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-gJSU-mSnK','AT11-vBO5FojPeWYf0ZaC',220,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-EX18-0BIh','AT11-vBO5FojPeWYf0ZaC',221,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-Gsn4-Bxl7','AT11-vBO5FojPeWYf0ZaC',222,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-OeQ1-R2nK','AT11-vBO5FojPeWYf0ZaC',223,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-KhAU-dAZh','AT11-vBO5FojPeWYf0ZaC',224,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-XcK3-90pA','AT11-vBO5FojPeWYf0ZaC',225,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-FPG7-Cn8z','AT11-vBO5FojPeWYf0ZaC',226,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-OL6k-9bPZ','AT11-vBO5FojPeWYf0ZaC',227,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-8aTk-yeQY','AT11-vBO5FojPeWYf0ZaC',228,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-6eLc-iUCz','AT11-vBO5FojPeWYf0ZaC',229,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-XZtJ-ycrw','AT11-vBO5FojPeWYf0ZaC',230,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-oWFP-cwis','AT11-vBO5FojPeWYf0ZaC',231,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-udCg-xY06','AT11-vBO5FojPeWYf0ZaC',232,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-y7cq-c1FN','AT11-vBO5FojPeWYf0ZaC',233,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-pe8H-hl3w','AT11-vBO5FojPeWYf0ZaC',234,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-VYXC-3t2B','AT11-vBO5FojPeWYf0ZaC',235,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-8EZW-A7Zx','AT11-vBO5FojPeWYf0ZaC',236,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-tPqX-cJrY','AT11-vBO5FojPeWYf0ZaC',237,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-0Jaf-idjZ','AT11-vBO5FojPeWYf0ZaC',238,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-DTEB-Y15W','AT11-vBO5FojPeWYf0ZaC',239,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-Usb2-Vp58','AT11-vBO5FojPeWYf0ZaC',240,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-HvOw-yW0P','AT11-vBO5FojPeWYf0ZaC',241,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-Ot1S-SyTY','AT11-vBO5FojPeWYf0ZaC',242,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-7mYz-hjba','AT11-vBO5FojPeWYf0ZaC',243,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-haqM-M7bJ','AT11-vBO5FojPeWYf0ZaC',244,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-K89Z-YEs9','AT11-vBO5FojPeWYf0ZaC',245,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-uB1b-mZiC','AT11-vBO5FojPeWYf0ZaC',246,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27',NULL,'n/a','2022-11-01 16:53:27','to_redeem','DI11-fpeP-R5Db','AT11-vBO5FojPeWYf0ZaC',247,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27','AD20221145','n/a','2022-11-01 16:53:27','used','DI11-6f0d-KXl4','AT11-vBO5FojPeWYf0ZaC',248,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27','AD20221144','n/a','2022-11-01 16:53:27','used','DI11-SxPl-g26P','AT11-vBO5FojPeWYf0ZaC',249,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27','AD20221143','n/a','2022-11-01 16:53:27','used','DI11-1mJi-a9VO','AT11-vBO5FojPeWYf0ZaC',250,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27','AD20221142','n/a','2022-11-01 16:53:27','used','DI11-Nstc-edIE','AT11-vBO5FojPeWYf0ZaC',251,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27','AD20221141','n/a','2022-11-01 16:53:27','used','DI11-ufaY-LtSA','AT11-vBO5FojPeWYf0ZaC',252,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27','AD20221140','n/a','2022-11-01 16:53:27','used','DI11-bHUx-qgki','AT11-vBO5FojPeWYf0ZaC',253,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27','AD20221139','n/a','2022-11-01 16:53:27','used','DI11-I0iN-4gW7','AT11-vBO5FojPeWYf0ZaC',254,'DI',99,'n/a'),
('2022-11-01 16:53:27','waiting','2022-11-01 16:53:27','AD20221138','n/a','2022-11-01 16:53:27','used','DI11-XMbG-DKM1','AT11-vBO5FojPeWYf0ZaC',255,'DI',99,'n/a');
/*!40000 ALTER TABLE `referral_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `totalbalance`
--

DROP TABLE IF EXISTS `totalbalance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `totalbalance` (
  `totalBalanceId` int(20) NOT NULL AUTO_INCREMENT,
  `userID` varchar(30) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `totalBalance` int(20) NOT NULL,
  `unclaimable` int(50) NOT NULL,
  PRIMARY KEY (`totalBalanceId`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totalbalance`
--

LOCK TABLES `totalbalance` WRITE;
/*!40000 ALTER TABLE `totalbalance` DISABLE KEYS */;
INSERT INTO `totalbalance` VALUES
(77,'ADS2022-10-7','one@gmail.com',17700,0),
(83,'ADS2022-10-8','two@gmail.com',650,0),
(84,'ADS2022-10-9','three@gmail.com',0,0),
(85,'ADS2022-10-10','four@gmail.com',0,0);
/*!40000 ALTER TABLE `totalbalance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `transactionId` int(50) NOT NULL AUTO_INCREMENT,
  `Date` varchar(100) NOT NULL,
  `time` varchar(15) NOT NULL,
  `type` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `inviteName` varchar(50) NOT NULL,
  `inviteeName` varchar(50) NOT NULL,
  `packageType` varchar(200) NOT NULL,
  `codeOwner` varchar(200) NOT NULL COMMENT 'indicates the user of the code',
  `codeOwnerId` varchar(200) NOT NULL COMMENT 'this indicates the id of the code user',
  `addedAmount` int(50) NOT NULL,
  `TotalBalance` int(50) NOT NULL,
  `addedPoints` int(50) NOT NULL,
  `totalPoints` int(50) NOT NULL,
  PRIMARY KEY (`transactionId`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES
(191,'','','Direct Referral','one@gmail.com','ADS2022-10-7','Two Dos','One Uno','','','',500,500,0,0),
(192,'','','Indirect Referral','','n/a','Two Dos','One Uno','','','',10,10,0,0),
(193,'','','Direct Referral','','','Three Tres',' ','','','',500,500,0,0),
(194,'','','Direct Referral','two@gmail.com','ADS2022-10-8','Four Kwatro','Two Dos','','','',500,500,0,0),
(195,'','','Indirect Referral','One  Uno','ADS2022-10-7','Four Kwatro','Two Dos','','','',10,510,0,0),
(196,'','','Indirect Referral','','n/a','Four Kwatro','Two Dos','','','',10,10,0,0),
(197,'','','Points','two@gmail.com','ADS2022-10-8','','','RA','','',0,0,1,1),
(198,'','','Unclaimable Rebates','one@gmail.com','ADS2022-10-7','','','RA','two@gmail.com','ADS2022-10-8',80,80,0,0),
(199,'','','Unclaimable Rebates','','n/a','','','RA','two@gmail.com','ADS2022-10-8',30,30,0,0),
(200,'','','Points','four@gmail.com','ADS2022-10-10','','','RA','','',0,0,1,1),
(201,'','','Rebates','two@gmail.com','ADS2022-10-8','','','RA','four@gmail.com','ADS2022-10-10',80,580,0,0),
(202,'','','Unclaimable Rebates','one@gmail.com','ADS2022-10-7','','','RA','four@gmail.com','ADS2022-10-10',30,110,0,0),
(203,'','','Unclaimable Rebates','','n/a','','','RA','four@gmail.com','ADS2022-10-10',30,30,0,0),
(204,'','','Points','one@gmail.com','ADS2022-10-7','','','RA','','',0,0,1,1),
(205,'','','Unclaimable Rebates','','n/a','','','RA','one@gmail.com','ADS2022-10-7',80,80,0,0),
(206,'','','Points','four@gmail.com','ADS2022-10-10','','','RA','','',0,0,1,2),
(207,'','','Rebates','two@gmail.com','ADS2022-10-8','','','RA','four@gmail.com','ADS2022-10-10',70,650,0,0),
(208,'','','Rebates','one@gmail.com','ADS2022-10-7','','','RA','four@gmail.com','ADS2022-10-10',30,540,0,0),
(209,'','','Unclaimable Rebates','','n/a','','','RA','four@gmail.com','ADS2022-10-10',30,30,0,0),
(210,'','','Claimed Rebates','one@gmail.com','ADS2022-10-7','','','','','',110,650,0,0),
(211,'','','Points','one@gmail.com','ADS2022-10-7','','','RA','','',0,0,1,2),
(212,'','','Unclaimable Rebates','','n/a','','','RA','one@gmail.com','ADS2022-10-7',70,70,0,0),
(213,'','','Withdrawal','','One Uno','','','','','',0,0,0,0),
(214,'','','Withdrawal','','ADS2022-10-7','','','','','',650,0,0,0),
(215,'','','Withdrawal','','ADS2022-10-7','','','','','',1000,-1000,0,0),
(216,'','','Withdrawal','','ADS2022-10-7','','','','','',1000,19000,0,0),
(217,'2022-10-30','06:47 pm','Withdrawal','','ADS2022-10-7','','','','','',650,18350,0,0),
(218,'2022-10-30','07:01 pm','Withdrawal','','ADS2022-10-7','','','','','',650,17700,0,0);
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

-- Dump completed on 2022-11-01 22:40:58
