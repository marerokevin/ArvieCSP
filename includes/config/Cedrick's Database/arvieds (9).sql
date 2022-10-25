-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2022 at 01:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arvieds`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(60) NOT NULL,
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
  `referralLink` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `member_id`, `first_name`, `last_name`, `sponsor`, `sponsorName`, `email_address`, `pass`, `contact_number`, `date`, `access`, `permission`, `referralId`, `homeaddress`, `tin_acct`, `sss_num`, `number_basis`, `referralLink`) VALUES
(6, 'ADS22-10-6', 'Arvie', 'Admin', 'n/a', '', 'arvieadmin@gmail.com', '$2y$10$jTe3GMdGIMRgT1XLcBgjVe/2hw1FrmEwPhmkeHys9hw.vSqdR0wt2', 2147483647, '2022-10-17 21:36:49', 'approved', 'administ', 'asd12-12345', '3 Verder, Tanza, Cavite', 'n/a', 'n/a', 6, ''),
(9, 'ADS2022-10-7', 'Cedrick James ', 'Orozo', 'ADS22-10-6', 'Arvie Admin', 'cedrickorozo@gmail.com', '$2y$10$sEq4q5Q3jHghuY5dPQkAGOk/ax/4FCWlMvENASM3M5rjuCspZVboW', 2147483647, '2022-10-17 23:06:57', 'approved', 'userist', 'asd12-54321', '0233 Palangue 2 Naic Cavite', 'n/a', 'n/a', 7, ''),
(23, 'ADS2022-10-8', 'Kevin Roy', 'Marero', 'ADS2022-10-7', ' Cedrick James   Orozo', 'kevinroy@gmail.com', '$2y$10$i.5PGgbXq2aKFc1FaYzX2O/0IOZNH.L85fJBVZM3mJQ0qUJL6ej5.', 2147483647, '2022-10-18 07:55:25', 'approved', 'userist', 'asd12-54321', '0233 Tanza Cavite', 'na', 'na', 8, ''),
(24, '2329399823928', 'Nathan ', 'Nemedez', 'ADS2022-10-8', ' Kevin Roy  Marero', 'nathan@gmail.com', '$2y$10$hOI/3ZmG67rrbwvZiLEl.OPH62e6szMy0q1CHgufeu2u3d8aYRowW', 2147483647, '2022-10-20 22:04:48', 'approved', 'userist', 'ADS2022-10-9', 'DR-10-SDSDFG', '0233 Tanza, Cavite', '29389283928', 9, ''),
(26, 'ADS2022-10-10', 'Juan', 'Delacruz', 'ADS2022-10-7', 'Cedrick James   Orozo', 'juan@gmail.com', '$2y$10$YN56sLO4hw2dN0IzOaA06.bEQng/bXEsJLcV05DeFGE1xmFZXRYEu', 937568734, '0000-00-00 00:00:00', 'approved', 'userist', 'asd12-54321', '0233 Tanza Cavite', '098665', '09976', 10, ''),
(27, 'ADS2022-10-11', 'Maria', 'Clara', 'ADS2022-10-10', 'Juan  Delacruz', 'maria@gmail.com', '$2y$10$dcCcm6fUm2iRd3mbgJ2pHuTViMmKIAwmfJqKtBzef/p0qZQ9cK0Qm', 98172817, '0000-00-00 00:00:00', 'approved', 'userist', 'asd12-54389', 'Las Filipinas', '0192091', '09129819', 11, ''),
(29, 'ADS2022-10-12', 'Crisostomo', 'Ibarra', 'ADS2022-10-11', 'Maria  Clara', 'crisostomo@gmail.com', '$2y$10$OybcZOxlHRyiEzwf4gU/d.m0qB/fYFXg2N0wsEJRI78bXXdT7wCja', 912881928, '0000-00-00 00:00:00', 'approved', 'userist', 'asd12-54390', 'Las Filipinas', '90909', '09019989', 12, ''),
(30, 'ADS2022-10-13', 'Crispin', 'Langit', 'ADS2022-10-12', 'Crisostomo  Ibarra', 'crispin@gmail.com', '$2y$10$orwSxn0ycyW3Tgfza2jfK.7pxqsyRdjcLuY4TgG7wEEY7PiR/qzka', 98979, '0000-00-00 00:00:00', 'approved', 'userist', 'asd12-54366', 'Las Filipinas', '091298', '099279', 13, ''),
(31, 'ADS2022-10-14', 'Basillo', 'Langit', 'ADS2022-10-13', 'Crispin  Langit', 'basillo@gmail.com', '$2y$10$BsA9QPuSBwZY0YPPNjQWj.LOsxPwuK/PzdaaQzIj0e.D4dZTWKOWW', 912881928, '0000-00-00 00:00:00', 'approved', 'userist', 'asd12-54377', 'Las Filipinas', '0199289', '09891898', 14, ''),
(32, 'ADS2022-10-15', 'Padre', 'Damaso', 'ADS2022-10-14', 'Basillo  Langit', 'damaso@gmail.com', '$2y$10$Ss2VPNmG63yKLFKrNVNMLeNfPOCK7Dlc/5EhHZEEFv1JDxwCvJwbS', 919898, '0000-00-00 00:00:00', 'approved', 'userist', 'asd12-54377', 'Las Filipinas', '0909', '09080', 15, ''),
(33, 'ADS2022-10-16', 'Jose', 'Rizal', 'ADS2022-10-15', 'Padre  Damaso', 'rizal@gmail.com', '$2y$10$iNwEGwPICNbgzBEcaGa4Mek7bKJPiP8M7PYq9s3AfAHTya1aQ3vKi', 9978676, '0000-00-00 00:00:00', 'approved', 'userist', 'asd12-54377', 'Philippines', '9086754', '098786', 16, ''),
(34, 'ADS2022-10-17', 'Andres', 'Bonifacio', 'ADS2022-10-16', 'Jose  Rizal', 'bonifacio@gmail.com', '$2y$10$FCJZUpquaOT6UOIyUaq99OB5zVSkoMDES5VE/nM8AoONLhbDLILC6', 9978676, '0000-00-00 00:00:00', 'approved', 'userist', 'asd12-54377', 'Philippines', '9086754', '098786', 17, ''),
(35, 'ADS2022-10-18', 'Juan', 'Luna', 'ADS2022-10-17', 'Andres  Bonifacio', 'luna@gmail.com', '$2y$10$G6FD2Joo4BSF/z6aILrs.e4fEOuxgRKzOgUoflpD0T1lLEQn6urjG', 912881928, '0000-00-00 00:00:00', 'approved', 'userist', 'asd12-54377', 'Las Filipinas', '0199289', '09891898', 18, ''),
(36, 'ADS2022-10-19', 'Jose', 'Tacio', 'ADS2022-10-18', 'Juan  Luna', 'tacio@gmail.com', '$2y$10$RWxDphRdo3Q75yIMvIZnAethntFBEg/G5GsSY9rGEHixxs2v.75Xe', 9987654, '0000-00-00 00:00:00', 'approved', 'userist', 'asd12-54377', 'Las Filipinas', '98765', '098765', 19, ''),
(37, 'ADS2022-10-20', 'Aileen', 'Domo', 'ADS2022-10-19', 'Jose  Tacio', 'aileen@gmail.com', '$2y$10$O723n.ChSKY.Dhfkk1A1hOphTve.yNf6izvfVTz7Eh4nd8/kJFwSa', 987654, '0000-00-00 00:00:00', 'approved', 'userist', 'asd12-54377', 'Gentri', '098765', '0987', 20, ''),
(38, 'ADS2022-10-21', 'Spencer', 'Bonj', 'ADS2022-10-20', 'Aileen  Domo', 'spencer@gmail.com', '$2y$10$z2AocOR5dCt8r4Vqrk/vcOwAJ8Zi4Em3mXV/IRcDzI.dEdZXJeiUu', 9876543, '0000-00-00 00:00:00', 'approved', 'userist', 'asd12-54377', '0233 Tanza Cavite', '0987654', '0987654', 21, ''),
(39, 'ADS2022-10-22', 'Felmhar', 'Vivo', 'ADS2022-10-20', 'Aileen  Domo', 'vivo@gmail.com', '$2y$10$fbFiNkTyJ5mGebJEY6hPgOeB9L6wo86snClaY2z1bETCra6SdJoOK', 2147483647, '0000-00-00 00:00:00', 'approved', 'userist', 'asd12-54377', 'Rosario Cavite', '098765', '098765', 22, ''),
(40, 'ADS2022-10-23', 'Charisse', 'Mendoza', 'ADS2022-10-22', 'Felmhar  Vivo', 'chariz@gmail.com', '$2y$10$oqec3x33Ohkk7MUb.VMabOi6KC8X9Wy1hpkS9i11eUGQZVE3izgQy', 987654, '2022-10-25 22:24:47', 'approved', 'userist', 'asd12-54321', 'Tanza', '987', '09876', 23, '');

-- --------------------------------------------------------

--
-- Table structure for table `generated_code`
--

CREATE TABLE `generated_code` (
  `code_id` int(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `userNameOfSponsor` varchar(100) NOT NULL,
  `userIdOfSponsor` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `validity` date NOT NULL,
  `date_created` date NOT NULL,
  `userNameOfCodeOwner` varchar(100) NOT NULL,
  `userIdOfCodeOwner` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `generated_code`
--

INSERT INTO `generated_code` (`code_id`, `type`, `userNameOfSponsor`, `userIdOfSponsor`, `code`, `validity`, `date_created`, `userNameOfCodeOwner`, `userIdOfCodeOwner`) VALUES
(1, 'RA', 'James Orozo', '13', 'DR10SKDJFH498', '2022-11-01', '2022-10-01', 'marero@gmail.com', '11'),
(2, 'RA', 'James Orozo', '13', 'DR10DKFJS', '2022-11-10', '2022-10-10', 'marero@gmail.com', '11'),
(3, 'RA', '', '', 'RA10DKFJSLKJL', '2022-11-10', '2022-10-10', 'chariz@gmail.com', 'ADS2022-10-23');

-- --------------------------------------------------------

--
-- Table structure for table `invites`
--

CREATE TABLE `invites` (
  `invitesID` int(30) NOT NULL,
  `name` varchar(20) NOT NULL,
  `idOfInvite` int(30) NOT NULL,
  `invitee` varchar(20) NOT NULL,
  `inviteeID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invites`
--

INSERT INTO `invites` (`invitesID`, `name`, `idOfInvite`, `invitee`, `inviteeID`) VALUES
(46, 'Arian Nemedez', 0, 'Arvie Admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rebatesamount`
--

CREATE TABLE `rebatesamount` (
  `id` int(10) NOT NULL,
  `rebatesA` int(10) NOT NULL,
  `rebatesB` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rebatesamount`
--

INSERT INTO `rebatesamount` (`id`, `rebatesA`, `rebatesB`) VALUES
(1, 80, 70),
(2, 30, 30),
(3, 30, 30),
(4, 30, 30),
(5, 30, 20),
(6, 30, 20),
(7, 20, 20),
(8, 20, 20),
(9, 20, 10),
(10, 20, 10);

-- --------------------------------------------------------

--
-- Table structure for table `rebates_points`
--

CREATE TABLE `rebates_points` (
  `rebates_points_id` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `pointsEarned` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rebates_points`
--

INSERT INTO `rebates_points` (`rebates_points_id`, `user_id`, `email_address`, `pointsEarned`) VALUES
(1, '11', 'marero@gmail.com', 7),
(4, '3', 'tacio@gmail.com', 4),
(6, 'ADS2022-10-23', 'chariz@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `referral_codes`
--

CREATE TABLE `referral_codes` (
  `gen_date` datetime NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `transfer_date` datetime NOT NULL,
  `referee` varchar(255) DEFAULT NULL,
  `transact_date` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `generation_batch` varchar(255) NOT NULL,
  `ref_code` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referral_codes`
--

INSERT INTO `referral_codes` (`gen_date`, `referrer`, `transfer_date`, `referee`, `transact_date`, `status`, `generation_batch`, `ref_code`) VALUES
('2022-10-11 22:44:25', 'n/a', '2022-10-11 22:44:25', '', '2022-10-11 22:44:25', 'used', '', 'asd12-12345'),
('2022-10-11 22:44:25', '', '2022-10-11 22:44:25', 'ADS2022-10-23', '2022-10-11 22:44:25', 'used', '1', 'asd12-54321'),
('2022-10-11 22:44:25', 'ADS2022-10-20', '2022-10-11 22:44:25', 'ADS2022-10-22', '2022-10-11 22:44:25', 'used', '10', 'asd12-54377'),
('2022-10-11 22:44:25', 'ADS2022-10-10', '2022-10-11 22:44:25', 'ADS2022-10-11', '2022-10-11 22:44:25', 'used', '4', 'asd12-54389'),
('2022-10-11 22:44:25', 'ADS2022-10-11', '2022-10-11 22:44:25', 'ADS2022-10-12', '2022-10-11 22:44:25', 'used', '5', 'asd12-54390'),
('2022-10-11 22:44:25', 'ADS2022-10-12', '2022-10-11 22:44:25', 'ADS2022-10-13', '2022-10-11 22:44:25', 'used', '9', 'asd12-54366');

-- --------------------------------------------------------

--
-- Table structure for table `relationship`
--

CREATE TABLE `relationship` (
  `level` int(7) NOT NULL,
  `dl` int(10) NOT NULL,
  `rbt` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relationship`
--

INSERT INTO `relationship` (`level`, `dl`, `rbt`) VALUES
(1, 10, 500),
(2, 100, 10),
(3, 1000, 10),
(4, 10000, 10),
(5, 100000, 10),
(6, 500000, 10),
(7, 500000, 10),
(8, 500000, 10),
(9, 500000, 10),
(10, 500000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `totalbalance`
--

CREATE TABLE `totalbalance` (
  `totalBalanceId` int(20) NOT NULL,
  `userID` varchar(65) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `totalBalance` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `totalbalance`
--

INSERT INTO `totalbalance` (`totalBalanceId`, `userID`, `userName`, `totalBalance`) VALUES
(49, 'ADS22-10-6', 'arvieadmin@gmail.com', 160),
(53, 'ADS2022-10-7', 'cedrickorozo@gmail.com', 150),
(59, 'ADS2022-10-8', 'kevinroy@gmail.com', 500),
(60, 'ADS2022-10-9', 'nathan@gmail.com', 0),
(61, 'ADS2022-10-10', 'juan@gmail.com', 691),
(63, 'ADS2022-10-11', 'maria@gmail.com', 620),
(65, 'ADS2022-10-12', 'crisostomo@gmail.com', 660),
(66, 'ADS2022-10-13', 'crispin@gmail.com', 650),
(67, 'ADS2022-10-14', 'basillo@gmail.com', 650),
(68, 'ADS2022-10-15', 'damaso@gmail.com', 640),
(69, 'ADS2022-10-16', 'rizal@gmail.com', 630),
(70, 'ADS2022-10-17', 'bonifacio@gmail.com', 640),
(71, 'ADS2022-10-18', 'luna@gmail.com', 680),
(72, 'ADS2022-10-19', 'tacio@gmail.com', 590),
(73, 'ADS2022-10-20', 'aileen@gmail.com', 1070),
(74, 'ADS2022-10-21', 'spencer@gmail.com', 0),
(75, 'ADS2022-10-22', 'vivo@gmail.com', 660),
(76, 'ADS2022-10-23', 'chariz@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(50) NOT NULL,
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
  `totalPoints` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `type`, `userName`, `userId`, `inviteName`, `inviteeName`, `packageType`, `codeOwner`, `codeOwnerId`, `addedAmount`, `TotalBalance`, `addedPoints`, `totalPoints`) VALUES
(158, 'Direct Referral', 'cedrickorozo@gmail.com', 'ADS2022-10-7', 'Kevin Roy Marero', 'Cedrick James  Orozo', '', '', '', 500, 500, 0, 0),
(159, 'Indirect Referral', 'Arvie Admin', 'ADS22-10-6', 'Kevin Roy Marero', 'Cedrick James  Orozo', '', '', '', 10, 10, 0, 0),
(160, 'Indirect Referral', '', 'n/a', 'Kevin Roy Marero', 'Cedrick James  Orozo', '', '', '', 10, 10, 0, 0),
(161, 'Direct Referral', 'kevinroy@gmail.com', 'ADS2022-10-8', 'Nathan  Nemedez', 'Kevin Roy Marero', '', '', '', 500, 500, 0, 0),
(162, 'Indirect Referral', ' Cedrick James   Orozo', 'ADS2022-10-7', 'Nathan  Nemedez', 'Kevin Roy Marero', '', '', '', 10, 510, 0, 0),
(163, 'Indirect Referral', 'Arvie Admin', 'ADS22-10-6', 'Nathan  Nemedez', 'Kevin Roy Marero', '', '', '', 10, 20, 0, 0),
(164, 'Indirect Referral', '', 'n/a', 'Nathan  Nemedez', 'Kevin Roy Marero', '', '', '', 10, 10, 0, 0),
(168, 'Direct Referral', 'cedrickorozo@gmail.com', 'ADS2022-10-7', 'Juan Delacruz', 'Cedrick James  Orozo', '', '', '', 500, 1510, 0, 0),
(169, 'Indirect Referral', 'Arvie Admin', 'ADS22-10-6', 'Juan Delacruz', 'Cedrick James  Orozo', '', '', '', 10, 40, 0, 0),
(170, 'Indirect Referral', '', 'n/a', 'Juan Delacruz', 'Cedrick James  Orozo', '', '', '', 10, 10, 0, 0),
(171, 'Direct Referral', 'juan@gmail.com', 'ADS2022-10-10', 'Maria Clara', 'Juan Delacruz', '', '', '', 500, 501, 0, 0),
(172, 'Indirect Referral', 'Cedrick James   Orozo', 'ADS2022-10-7', 'Maria Clara', 'Juan Delacruz', '', '', '', 10, 10, 0, 0),
(173, 'Indirect Referral', 'Arvie Admin', 'ADS22-10-6', 'Maria Clara', 'Juan Delacruz', '', '', '', 10, 50, 0, 0),
(174, 'Indirect Referral', '', 'n/a', 'Maria Clara', 'Juan Delacruz', '', '', '', 10, 10, 0, 0),
(176, 'Direct Referral', 'maria@gmail.com', 'ADS2022-10-11', 'Crisostomo Ibarra', 'Maria Clara', '', '', '', 500, 500, 0, 0),
(177, 'Indirect Referral', 'Juan  Delacruz', 'ADS2022-10-10', 'Crisostomo Ibarra', 'Maria Clara', '', '', '', 10, 511, 0, 0),
(178, 'Indirect Referral', 'Cedrick James   Orozo', 'ADS2022-10-7', 'Crisostomo Ibarra', 'Maria Clara', '', '', '', 10, 20, 0, 0),
(179, 'Indirect Referral', 'Arvie Admin', 'ADS22-10-6', 'Crisostomo Ibarra', 'Maria Clara', '', '', '', 10, 60, 0, 0),
(180, 'Indirect Referral', '', 'n/a', 'Crisostomo Ibarra', 'Maria Clara', '', '', '', 10, 10, 0, 0),
(181, 'Direct Referral', 'crisostomo@gmail.com', 'ADS2022-10-12', 'Crispin Langit', 'Crisostomo Ibarra', '', '', '', 500, 500, 0, 0),
(182, 'Indirect Referral', 'Maria  Clara', 'ADS2022-10-11', 'Crispin Langit', 'Crisostomo Ibarra', '', '', '', 10, 510, 0, 0),
(183, 'Indirect Referral', 'Juan  Delacruz', 'ADS2022-10-10', 'Crispin Langit', 'Crisostomo Ibarra', '', '', '', 10, 521, 0, 0),
(184, 'Indirect Referral', 'Cedrick James   Orozo', 'ADS2022-10-7', 'Crispin Langit', 'Crisostomo Ibarra', '', '', '', 10, 30, 0, 0),
(185, 'Indirect Referral', 'Arvie Admin', 'ADS22-10-6', 'Crispin Langit', 'Crisostomo Ibarra', '', '', '', 10, 70, 0, 0),
(186, 'Indirect Referral', '', 'n/a', 'Crispin Langit', 'Crisostomo Ibarra', '', '', '', 10, 10, 0, 0),
(187, 'Direct Referral', 'crispin@gmail.com', 'ADS2022-10-13', 'Basillo Langit', 'Crispin Langit', '', '', '', 500, 500, 0, 0),
(188, 'Indirect Referral', 'Crisostomo  Ibarra', 'ADS2022-10-12', 'Basillo Langit', 'Crispin Langit', '', '', '', 10, 510, 0, 0),
(189, 'Indirect Referral', 'Maria  Clara', 'ADS2022-10-11', 'Basillo Langit', 'Crispin Langit', '', '', '', 10, 520, 0, 0),
(190, 'Indirect Referral', 'Juan  Delacruz', 'ADS2022-10-10', 'Basillo Langit', 'Crispin Langit', '', '', '', 10, 531, 0, 0),
(191, 'Indirect Referral', 'Cedrick James   Orozo', 'ADS2022-10-7', 'Basillo Langit', 'Crispin Langit', '', '', '', 10, 40, 0, 0),
(192, 'Indirect Referral', 'Arvie Admin', 'ADS22-10-6', 'Basillo Langit', 'Crispin Langit', '', '', '', 10, 80, 0, 0),
(193, 'Indirect Referral', '', 'n/a', 'Basillo Langit', 'Crispin Langit', '', '', '', 10, 10, 0, 0),
(194, 'Direct Referral', 'basillo@gmail.com', 'ADS2022-10-14', 'Padre Damaso', 'Basillo Langit', '', '', '', 500, 500, 0, 0),
(195, 'Indirect Referral', 'Crispin  Langit', 'ADS2022-10-13', 'Padre Damaso', 'Basillo Langit', '', '', '', 10, 510, 0, 0),
(196, 'Indirect Referral', 'Crisostomo  Ibarra', 'ADS2022-10-12', 'Padre Damaso', 'Basillo Langit', '', '', '', 10, 520, 0, 0),
(197, 'Indirect Referral', 'Maria  Clara', 'ADS2022-10-11', 'Padre Damaso', 'Basillo Langit', '', '', '', 10, 530, 0, 0),
(198, 'Indirect Referral', 'Juan  Delacruz', 'ADS2022-10-10', 'Padre Damaso', 'Basillo Langit', '', '', '', 10, 541, 0, 0),
(199, 'Indirect Referral', 'Cedrick James   Orozo', 'ADS2022-10-7', 'Padre Damaso', 'Basillo Langit', '', '', '', 10, 50, 0, 0),
(200, 'Indirect Referral', 'Arvie Admin', 'ADS22-10-6', 'Padre Damaso', 'Basillo Langit', '', '', '', 10, 90, 0, 0),
(201, 'Indirect Referral', '', 'n/a', 'Padre Damaso', 'Basillo Langit', '', '', '', 10, 10, 0, 0),
(202, 'Direct Referral', 'damaso@gmail.com', 'ADS2022-10-15', 'Jose Rizal', 'Padre Damaso', '', '', '', 500, 500, 0, 0),
(203, 'Indirect Referral', 'Basillo  Langit', 'ADS2022-10-14', 'Jose Rizal', 'Padre Damaso', '', '', '', 10, 510, 0, 0),
(204, 'Indirect Referral', 'Crispin  Langit', 'ADS2022-10-13', 'Jose Rizal', 'Padre Damaso', '', '', '', 10, 520, 0, 0),
(205, 'Indirect Referral', 'Crisostomo  Ibarra', 'ADS2022-10-12', 'Jose Rizal', 'Padre Damaso', '', '', '', 10, 530, 0, 0),
(206, 'Indirect Referral', 'Maria  Clara', 'ADS2022-10-11', 'Jose Rizal', 'Padre Damaso', '', '', '', 10, 540, 0, 0),
(207, 'Indirect Referral', 'Juan  Delacruz', 'ADS2022-10-10', 'Jose Rizal', 'Padre Damaso', '', '', '', 10, 551, 0, 0),
(208, 'Indirect Referral', 'Cedrick James   Orozo', 'ADS2022-10-7', 'Jose Rizal', 'Padre Damaso', '', '', '', 10, 60, 0, 0),
(209, 'Indirect Referral', 'Arvie Admin', 'ADS22-10-6', 'Jose Rizal', 'Padre Damaso', '', '', '', 10, 100, 0, 0),
(210, 'Indirect Referral', '', 'n/a', 'Jose Rizal', 'Padre Damaso', '', '', '', 10, 10, 0, 0),
(211, 'Direct Referral', 'rizal@gmail.com', 'ADS2022-10-16', 'Andres Bonifacio', 'Jose Rizal', '', '', '', 500, 500, 0, 0),
(212, 'Indirect Referral', 'Padre  Damaso', 'ADS2022-10-15', 'Andres Bonifacio', 'Jose Rizal', '', '', '', 10, 510, 0, 0),
(213, 'Indirect Referral', 'Basillo  Langit', 'ADS2022-10-14', 'Andres Bonifacio', 'Jose Rizal', '', '', '', 10, 520, 0, 0),
(214, 'Indirect Referral', 'Crispin  Langit', 'ADS2022-10-13', 'Andres Bonifacio', 'Jose Rizal', '', '', '', 10, 530, 0, 0),
(215, 'Indirect Referral', 'Crisostomo  Ibarra', 'ADS2022-10-12', 'Andres Bonifacio', 'Jose Rizal', '', '', '', 10, 540, 0, 0),
(216, 'Indirect Referral', 'Maria  Clara', 'ADS2022-10-11', 'Andres Bonifacio', 'Jose Rizal', '', '', '', 10, 550, 0, 0),
(217, 'Indirect Referral', 'Juan  Delacruz', 'ADS2022-10-10', 'Andres Bonifacio', 'Jose Rizal', '', '', '', 10, 561, 0, 0),
(218, 'Indirect Referral', 'Cedrick James   Orozo', 'ADS2022-10-7', 'Andres Bonifacio', 'Jose Rizal', '', '', '', 10, 70, 0, 0),
(219, 'Indirect Referral', 'Arvie Admin', 'ADS22-10-6', 'Andres Bonifacio', 'Jose Rizal', '', '', '', 10, 110, 0, 0),
(220, 'Indirect Referral', '', 'n/a', 'Andres Bonifacio', 'Jose Rizal', '', '', '', 10, 10, 0, 0),
(221, 'Direct Referral', 'bonifacio@gmail.com', 'ADS2022-10-17', 'Juan Luna', 'Andres Bonifacio', '', '', '', 500, 500, 0, 0),
(222, 'Indirect Referral', 'Jose  Rizal', 'ADS2022-10-16', 'Juan Luna', 'Andres Bonifacio', '', '', '', 10, 510, 0, 0),
(223, 'Indirect Referral', 'Padre  Damaso', 'ADS2022-10-15', 'Juan Luna', 'Andres Bonifacio', '', '', '', 10, 520, 0, 0),
(224, 'Indirect Referral', 'Basillo  Langit', 'ADS2022-10-14', 'Juan Luna', 'Andres Bonifacio', '', '', '', 10, 530, 0, 0),
(225, 'Indirect Referral', 'Crispin  Langit', 'ADS2022-10-13', 'Juan Luna', 'Andres Bonifacio', '', '', '', 10, 540, 0, 0),
(226, 'Indirect Referral', 'Crisostomo  Ibarra', 'ADS2022-10-12', 'Juan Luna', 'Andres Bonifacio', '', '', '', 10, 550, 0, 0),
(227, 'Indirect Referral', 'Maria  Clara', 'ADS2022-10-11', 'Juan Luna', 'Andres Bonifacio', '', '', '', 10, 560, 0, 0),
(228, 'Indirect Referral', 'Juan  Delacruz', 'ADS2022-10-10', 'Juan Luna', 'Andres Bonifacio', '', '', '', 10, 571, 0, 0),
(229, 'Indirect Referral', 'Cedrick James   Orozo', 'ADS2022-10-7', 'Juan Luna', 'Andres Bonifacio', '', '', '', 10, 80, 0, 0),
(230, 'Indirect Referral', 'Arvie Admin', 'ADS22-10-6', 'Juan Luna', 'Andres Bonifacio', '', '', '', 10, 120, 0, 0),
(231, 'Indirect Referral', '', 'n/a', 'Juan Luna', 'Andres Bonifacio', '', '', '', 10, 10, 0, 0),
(232, 'Direct Referral', 'luna@gmail.com', 'ADS2022-10-18', 'Jose Tacio', 'Juan Luna', '', '', '', 500, 500, 0, 0),
(233, 'Indirect Referral', 'Andres  Bonifacio', 'ADS2022-10-17', 'Jose Tacio', 'Juan Luna', '', '', '', 10, 510, 0, 0),
(234, 'Indirect Referral', 'Jose  Rizal', 'ADS2022-10-16', 'Jose Tacio', 'Juan Luna', '', '', '', 10, 520, 0, 0),
(235, 'Indirect Referral', 'Padre  Damaso', 'ADS2022-10-15', 'Jose Tacio', 'Juan Luna', '', '', '', 10, 530, 0, 0),
(236, 'Indirect Referral', 'Basillo  Langit', 'ADS2022-10-14', 'Jose Tacio', 'Juan Luna', '', '', '', 10, 540, 0, 0),
(237, 'Indirect Referral', 'Crispin  Langit', 'ADS2022-10-13', 'Jose Tacio', 'Juan Luna', '', '', '', 10, 550, 0, 0),
(238, 'Indirect Referral', 'Crisostomo  Ibarra', 'ADS2022-10-12', 'Jose Tacio', 'Juan Luna', '', '', '', 10, 560, 0, 0),
(239, 'Indirect Referral', 'Maria  Clara', 'ADS2022-10-11', 'Jose Tacio', 'Juan Luna', '', '', '', 10, 570, 0, 0),
(240, 'Indirect Referral', 'Juan  Delacruz', 'ADS2022-10-10', 'Jose Tacio', 'Juan Luna', '', '', '', 10, 581, 0, 0),
(241, 'Indirect Referral', 'Cedrick James   Orozo', 'ADS2022-10-7', 'Jose Tacio', 'Juan Luna', '', '', '', 10, 90, 0, 0),
(242, 'Indirect Referral', 'Arvie Admin', 'ADS22-10-6', 'Jose Tacio', 'Juan Luna', '', '', '', 10, 130, 0, 0),
(243, 'Direct Referral', 'tacio@gmail.com', 'ADS2022-10-19', 'Aileen Domo', 'Jose Tacio', '', '', '', 500, 500, 0, 0),
(244, 'Indirect Referral', 'Juan  Luna', 'ADS2022-10-18', 'Aileen Domo', 'Jose Tacio', '', '', '', 10, 510, 0, 0),
(245, 'Indirect Referral', 'Andres  Bonifacio', 'ADS2022-10-17', 'Aileen Domo', 'Jose Tacio', '', '', '', 10, 520, 0, 0),
(246, 'Indirect Referral', 'Jose  Rizal', 'ADS2022-10-16', 'Aileen Domo', 'Jose Tacio', '', '', '', 10, 530, 0, 0),
(247, 'Indirect Referral', 'Padre  Damaso', 'ADS2022-10-15', 'Aileen Domo', 'Jose Tacio', '', '', '', 10, 540, 0, 0),
(248, 'Indirect Referral', 'Basillo  Langit', 'ADS2022-10-14', 'Aileen Domo', 'Jose Tacio', '', '', '', 10, 550, 0, 0),
(249, 'Indirect Referral', 'Crispin  Langit', 'ADS2022-10-13', 'Aileen Domo', 'Jose Tacio', '', '', '', 10, 560, 0, 0),
(250, 'Indirect Referral', 'Crisostomo  Ibarra', 'ADS2022-10-12', 'Aileen Domo', 'Jose Tacio', '', '', '', 10, 570, 0, 0),
(251, 'Indirect Referral', 'Maria  Clara', 'ADS2022-10-11', 'Aileen Domo', 'Jose Tacio', '', '', '', 10, 580, 0, 0),
(252, 'Indirect Referral', 'Juan  Delacruz', 'ADS2022-10-10', 'Aileen Domo', 'Jose Tacio', '', '', '', 10, 591, 0, 0),
(253, 'Indirect Referral', 'Cedrick James   Orozo', 'ADS2022-10-7', 'Aileen Domo', 'Jose Tacio', '', '', '', 10, 100, 0, 0),
(254, 'Direct Referral', 'aileen@gmail.com', 'ADS2022-10-20', 'Spencer Bonj', 'Aileen Domo', '', '', '', 500, 500, 0, 0),
(255, 'Indirect Referral', 'Jose  Tacio', 'ADS2022-10-19', 'Spencer Bonj', 'Aileen Domo', '', '', '', 10, 510, 0, 0),
(256, 'Indirect Referral', 'Juan  Luna', 'ADS2022-10-18', 'Spencer Bonj', 'Aileen Domo', '', '', '', 10, 520, 0, 0),
(257, 'Indirect Referral', 'Andres  Bonifacio', 'ADS2022-10-17', 'Spencer Bonj', 'Aileen Domo', '', '', '', 10, 530, 0, 0),
(258, 'Indirect Referral', 'Jose  Rizal', 'ADS2022-10-16', 'Spencer Bonj', 'Aileen Domo', '', '', '', 10, 540, 0, 0),
(259, 'Indirect Referral', 'Padre  Damaso', 'ADS2022-10-15', 'Spencer Bonj', 'Aileen Domo', '', '', '', 10, 550, 0, 0),
(260, 'Indirect Referral', 'Basillo  Langit', 'ADS2022-10-14', 'Spencer Bonj', 'Aileen Domo', '', '', '', 10, 560, 0, 0),
(261, 'Indirect Referral', 'Crispin  Langit', 'ADS2022-10-13', 'Spencer Bonj', 'Aileen Domo', '', '', '', 10, 570, 0, 0),
(262, 'Indirect Referral', 'Crisostomo  Ibarra', 'ADS2022-10-12', 'Spencer Bonj', 'Aileen Domo', '', '', '', 10, 580, 0, 0),
(263, 'Indirect Referral', 'Maria  Clara', 'ADS2022-10-11', 'Spencer Bonj', 'Aileen Domo', '', '', '', 10, 590, 0, 0),
(264, 'Direct Referral', 'aileen@gmail.com', 'ADS2022-10-20', 'Felmhar Vivo', 'Aileen Domo', '', '', '', 500, 1000, 0, 0),
(265, 'Indirect Referral', 'Jose  Tacio', 'ADS2022-10-19', 'Felmhar Vivo', 'Aileen Domo', '', '', '', 10, 520, 0, 0),
(266, 'Indirect Referral', 'Juan  Luna', 'ADS2022-10-18', 'Felmhar Vivo', 'Aileen Domo', '', '', '', 10, 530, 0, 0),
(267, 'Indirect Referral', 'Andres  Bonifacio', 'ADS2022-10-17', 'Felmhar Vivo', 'Aileen Domo', '', '', '', 10, 540, 0, 0),
(268, 'Indirect Referral', 'Jose  Rizal', 'ADS2022-10-16', 'Felmhar Vivo', 'Aileen Domo', '', '', '', 10, 550, 0, 0),
(269, 'Indirect Referral', 'Padre  Damaso', 'ADS2022-10-15', 'Felmhar Vivo', 'Aileen Domo', '', '', '', 10, 560, 0, 0),
(270, 'Indirect Referral', 'Basillo  Langit', 'ADS2022-10-14', 'Felmhar Vivo', 'Aileen Domo', '', '', '', 10, 570, 0, 0),
(271, 'Indirect Referral', 'Crispin  Langit', 'ADS2022-10-13', 'Felmhar Vivo', 'Aileen Domo', '', '', '', 10, 580, 0, 0),
(272, 'Indirect Referral', 'Crisostomo  Ibarra', 'ADS2022-10-12', 'Felmhar Vivo', 'Aileen Domo', '', '', '', 10, 590, 0, 0),
(273, 'Indirect Referral', 'Maria  Clara', 'ADS2022-10-11', 'Felmhar Vivo', 'Aileen Domo', '', '', '', 10, 600, 0, 0),
(287, 'Points', 'maria@gmail.com', 'ADS2022-10-11', '', '', 'RA', '', '', 0, 0, 1, 2),
(288, 'Rebates', 'juan@gmail.com', 'ADS2022-10-10', '', '', 'RA', 'maria@gmail.com', 'ADS2022-10-11', 80, 671, 0, 0),
(289, 'Rebates', 'cedrickorozo@gmail.com', 'ADS2022-10-7', '', '', 'RA', 'maria@gmail.com', 'ADS2022-10-11', 30, 130, 0, 0),
(290, 'Rebates', 'arvieadmin@gmail.com', 'ADS22-10-6', '', '', 'RA', 'maria@gmail.com', 'ADS2022-10-11', 30, 160, 0, 0),
(291, 'Rebates', 'arvieadmin@gmail.com', 'n/a', '', '', 'RA', 'maria@gmail.com', 'ADS2022-10-11', 30, 30, 0, 0),
(292, 'Points', 'tacio@gmail.com', 'ADS2022-10-19', '', '', 'RA', '', '', 0, 0, 1, 1),
(293, 'Rebates', 'luna@gmail.com', 'ADS2022-10-18', '', '', 'RA', 'tacio@gmail.com', 'ADS2022-10-19', 80, 610, 0, 0),
(294, 'Rebates', 'bonifacio@gmail.com', 'ADS2022-10-17', '', '', 'RA', 'tacio@gmail.com', 'ADS2022-10-19', 30, 570, 0, 0),
(295, 'Rebates', 'rizal@gmail.com', 'ADS2022-10-16', '', '', 'RA', 'tacio@gmail.com', 'ADS2022-10-19', 30, 580, 0, 0),
(296, 'Rebates', 'damaso@gmail.com', 'ADS2022-10-15', '', '', 'RA', 'tacio@gmail.com', 'ADS2022-10-19', 30, 590, 0, 0),
(297, 'Rebates', 'basillo@gmail.com', 'ADS2022-10-14', '', '', 'RA', 'tacio@gmail.com', 'ADS2022-10-19', 30, 600, 0, 0),
(298, 'Rebates', 'crispin@gmail.com', 'ADS2022-10-13', '', '', 'RA', 'tacio@gmail.com', 'ADS2022-10-19', 20, 600, 0, 0),
(299, 'Rebates', 'crisostomo@gmail.com', 'ADS2022-10-12', '', '', 'RA', 'tacio@gmail.com', 'ADS2022-10-19', 20, 610, 0, 0),
(300, 'Rebates', 'maria@gmail.com', 'ADS2022-10-11', '', '', 'RA', 'tacio@gmail.com', 'ADS2022-10-19', 20, 620, 0, 0),
(301, 'Rebates', 'juan@gmail.com', 'ADS2022-10-10', '', '', 'RA', 'tacio@gmail.com', 'ADS2022-10-19', 20, 691, 0, 0),
(302, 'Rebates', 'cedrickorozo@gmail.com', 'ADS2022-10-7', '', '', 'RA', 'tacio@gmail.com', 'ADS2022-10-19', 20, 150, 0, 0),
(303, 'Direct Referral', 'vivo@gmail.com', 'ADS2022-10-22', 'Charisse Mendoza', 'Felmhar Vivo', '', '', '', 500, 500, 0, 0),
(304, 'Indirect Referral', 'Aileen  Domo', 'ADS2022-10-20', 'Charisse Mendoza', 'Felmhar Vivo', '', '', '', 10, 1010, 0, 0),
(305, 'Indirect Referral', 'Jose  Tacio', 'ADS2022-10-19', 'Charisse Mendoza', 'Felmhar Vivo', '', '', '', 10, 530, 0, 0),
(306, 'Indirect Referral', 'Juan  Luna', 'ADS2022-10-18', 'Charisse Mendoza', 'Felmhar Vivo', '', '', '', 10, 620, 0, 0),
(307, 'Indirect Referral', 'Andres  Bonifacio', 'ADS2022-10-17', 'Charisse Mendoza', 'Felmhar Vivo', '', '', '', 10, 580, 0, 0),
(308, 'Indirect Referral', 'Jose  Rizal', 'ADS2022-10-16', 'Charisse Mendoza', 'Felmhar Vivo', '', '', '', 10, 590, 0, 0),
(309, 'Indirect Referral', 'Padre  Damaso', 'ADS2022-10-15', 'Charisse Mendoza', 'Felmhar Vivo', '', '', '', 10, 600, 0, 0),
(310, 'Indirect Referral', 'Basillo  Langit', 'ADS2022-10-14', 'Charisse Mendoza', 'Felmhar Vivo', '', '', '', 10, 610, 0, 0),
(311, 'Indirect Referral', 'Crispin  Langit', 'ADS2022-10-13', 'Charisse Mendoza', 'Felmhar Vivo', '', '', '', 10, 610, 0, 0),
(312, 'Indirect Referral', 'Crisostomo  Ibarra', 'ADS2022-10-12', 'Charisse Mendoza', 'Felmhar Vivo', '', '', '', 10, 620, 0, 0),
(313, 'Points', 'chariz@gmail.com', 'ADS2022-10-23', '', '', 'RA', '', '', 0, 0, 1, 1),
(314, 'Rebates', 'vivo@gmail.com', 'ADS2022-10-22', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 80, 580, 0, 0),
(315, 'Rebates', 'aileen@gmail.com', 'ADS2022-10-20', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 30, 1040, 0, 0),
(316, 'Rebates', 'tacio@gmail.com', 'ADS2022-10-19', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 30, 560, 0, 0),
(317, 'Rebates', 'luna@gmail.com', 'ADS2022-10-18', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 30, 650, 0, 0),
(318, 'Rebates', 'bonifacio@gmail.com', 'ADS2022-10-17', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 30, 610, 0, 0),
(319, 'Rebates', 'rizal@gmail.com', 'ADS2022-10-16', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 20, 610, 0, 0),
(320, 'Rebates', 'damaso@gmail.com', 'ADS2022-10-15', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 20, 620, 0, 0),
(321, 'Rebates', 'basillo@gmail.com', 'ADS2022-10-14', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 20, 630, 0, 0),
(322, 'Rebates', 'crispin@gmail.com', 'ADS2022-10-13', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 20, 630, 0, 0),
(323, 'Rebates', 'crisostomo@gmail.com', 'ADS2022-10-12', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 20, 640, 0, 0),
(324, 'Points', 'chariz@gmail.com', 'ADS2022-10-23', '', '', 'RA', '', '', 0, 0, 1, 1),
(325, 'Rebates', 'vivo@gmail.com', 'ADS2022-10-22', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 80, 660, 0, 0),
(326, 'Rebates', 'aileen@gmail.com', 'ADS2022-10-20', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 30, 1070, 0, 0),
(327, 'Rebates', 'tacio@gmail.com', 'ADS2022-10-19', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 30, 590, 0, 0),
(328, 'Rebates', 'luna@gmail.com', 'ADS2022-10-18', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 30, 680, 0, 0),
(329, 'Rebates', 'bonifacio@gmail.com', 'ADS2022-10-17', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 30, 640, 0, 0),
(330, 'Rebates', 'rizal@gmail.com', 'ADS2022-10-16', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 20, 630, 0, 0),
(331, 'Rebates', 'damaso@gmail.com', 'ADS2022-10-15', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 20, 640, 0, 0),
(332, 'Rebates', 'basillo@gmail.com', 'ADS2022-10-14', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 20, 650, 0, 0),
(333, 'Rebates', 'crispin@gmail.com', 'ADS2022-10-13', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 20, 650, 0, 0),
(334, 'Rebates', 'crisostomo@gmail.com', 'ADS2022-10-12', '', '', 'RA', 'chariz@gmail.com', 'ADS2022-10-23', 20, 660, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generated_code`
--
ALTER TABLE `generated_code`
  ADD PRIMARY KEY (`code_id`),
  ADD UNIQUE KEY `uniqueCode` (`code`);

--
-- Indexes for table `invites`
--
ALTER TABLE `invites`
  ADD PRIMARY KEY (`invitesID`);

--
-- Indexes for table `rebatesamount`
--
ALTER TABLE `rebatesamount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rebates_points`
--
ALTER TABLE `rebates_points`
  ADD PRIMARY KEY (`rebates_points_id`);

--
-- Indexes for table `referral_codes`
--
ALTER TABLE `referral_codes`
  ADD PRIMARY KEY (`generation_batch`);

--
-- Indexes for table `totalbalance`
--
ALTER TABLE `totalbalance`
  ADD PRIMARY KEY (`totalBalanceId`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `generated_code`
--
ALTER TABLE `generated_code`
  MODIFY `code_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invites`
--
ALTER TABLE `invites`
  MODIFY `invitesID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `rebatesamount`
--
ALTER TABLE `rebatesamount`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rebates_points`
--
ALTER TABLE `rebates_points`
  MODIFY `rebates_points_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `totalbalance`
--
ALTER TABLE `totalbalance`
  MODIFY `totalBalanceId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
