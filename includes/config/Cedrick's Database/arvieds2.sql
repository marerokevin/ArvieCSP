-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2022 at 08:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arvieds2`
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
(41, 'ADS2022-10-7', 'One', 'Uno', 'n/a', '', 'one@gmail.com', '$2y$10$jTe3GMdGIMRgT1XLcBgjVe/2hw1FrmEwPhmkeHys9hw.vSqdR0wt2', 955535367, '2022-10-17 21:36:49', 'approved', 'userist', '', '3 Verder, Tanza, Cavite', 'n/a', 'n/a', 7, ''),
(49, 'ADS2022-10-8', 'Two', 'Dos', 'ADS2022-10-7', 'One  Uno', 'two@gmail.com', '$2y$10$taZzO8lxr8syiG0oEVpysOeO0m.qjG8A/PZn3dfg34gfoweUy.x5C', 987654, '2022-10-29 12:48:56', 'approved', 'userist', 'RA10-CKzZ-yzTS', 'Palangue', '789987', '09876', 8, '');

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
  `userIdOfCodeOwner` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `generated_code`
--

INSERT INTO `generated_code` (`code_id`, `type`, `userNameOfSponsor`, `userIdOfSponsor`, `code`, `validity`, `date_created`, `userNameOfCodeOwner`, `userIdOfCodeOwner`) VALUES
(1, 'RA', 'James Orozo', '13', 'DR10SKDJFH498', '2022-11-01', '2022-10-01', 'marero@gmail.com', 11),
(2, 'RA', 'James Orozo', '13', 'DR10DKFJS', '2022-11-10', '2022-10-10', 'marero@gmail.com', 11),
(3, 'RA', 'James Orozo', '13', 'RA10DKFJSLKJL', '2022-11-10', '2022-10-10', 'marero@gmail.com', 11);

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
(32, 'James Orozo', 13, 'Kevin Roy marero', 11),
(41, 'Cedrick James Orozo', 12, 'James Orozo', 13),
(43, 'q e', 17, 'James Orozo', 13),
(44, 'ChrisostomoIbarra', 0, 'Kevin Roy Marero', 0);

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
(3, 'ADS2022-10-8', 'two@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `referral_codes`
--

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
  `transaction_id` int(255) NOT NULL,
  `codetype` varchar(2) NOT NULL,
  `counter` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referral_codes`
--

INSERT INTO `referral_codes` (`gen_date`, `referrer`, `transfer_date`, `referee`, `userNameOfCodeOwner`, `transact_date`, `status`, `ref_code`, `generation_batch`, `transaction_id`, `codetype`, `counter`) VALUES
('2022-10-29 11:42:15', 'waiting', '2022-10-29 11:42:15', 'ADS2022-10-8', '', '2022-10-29 11:42:15', 'used', 'RB10-M1JV-nPpi', 'AT10-ijYdIh9LMoW4Vc5u', 57, 'RB', '3'),
('2022-10-29 11:42:16', 'waiting', '2022-10-29 11:42:16', 'ADS2022-10-8', '', '2022-10-29 11:42:16', 'used', 'RB10-AHh5-bU6C', 'AT10-ijYdIh9LMoW4Vc5u', 58, 'RB', '3'),
('2022-10-29 11:42:16', 'waiting', '2022-10-29 11:42:16', 'ADS2022-10-8', '', '2022-10-29 11:42:16', 'used', 'RB10-OTXa-hwLN', 'AT10-ijYdIh9LMoW4Vc5u', 59, 'RB', '3'),
('2022-10-29 11:42:31', 'waiting', '2022-10-29 11:42:31', 'ADS2022-10-8', '', '2022-10-29 11:42:31', 'used', 'RA10-TJWf-xi0k', 'AT10-M3ATVxbD4sPuRowz', 60, 'RA', '3'),
('2022-10-29 11:42:31', 'waiting', '2022-10-29 11:42:31', 'ADS2022-10-8', '', '2022-10-29 11:42:31', 'used', 'RA10-CKzZ-yzTS', 'AT10-M3ATVxbD4sPuRowz', 61, 'RA', '3'),
('2022-10-29 11:42:32', 'waiting', '2022-10-29 11:42:32', 'ADS2022-10-8', 'two@gmail.com', '2022-10-29 11:42:32', 'to_redeem', 'RA10-Upwo-c5Ej', 'AT10-M3ATVxbD4sPuRowz', 62, 'RA', '3'),
('2022-10-29 11:50:53', 'waiting', '2022-10-29 11:50:53', 'ADS2022-10-8', 'two@gmail.com', '2022-10-29 11:50:53', 'to_redeem', 'RA10-xBhy-djwO', 'AT10-NMezK9mf2JU10X4y', 63, 'RA', '4'),
('2022-10-29 11:50:53', 'waiting', '2022-10-29 11:50:53', NULL, '', '2022-10-29 11:50:53', 'to_redeem', 'RA10-WR8T-yrRu', 'AT10-NMezK9mf2JU10X4y', 64, 'RA', '4'),
('2022-10-29 11:50:53', 'waiting', '2022-10-29 11:50:53', NULL, '', '2022-10-29 11:50:53', 'to_redeem', 'RA10-XG21-3wnF', 'AT10-NMezK9mf2JU10X4y', 65, 'RA', '4'),
('2022-10-29 11:50:53', 'waiting', '2022-10-29 11:50:53', NULL, '', '2022-10-29 11:50:53', 'to_redeem', 'RA10-nVit-kwlE', 'AT10-NMezK9mf2JU10X4y', 66, 'RA', '4'),
('2022-10-29 13:20:38', 'waiting', '2022-10-29 13:20:38', NULL, '', '2022-10-29 13:20:38', 'to_redeem', 'DI10-eFWz-Jckw', 'AT10-kI71Y5CXTWvtdcl0', 67, 'DI', '4'),
('2022-10-29 13:20:39', 'waiting', '2022-10-29 13:20:39', NULL, '', '2022-10-29 13:20:39', 'to_redeem', 'DI10-zwkC-bsrv', 'AT10-kI71Y5CXTWvtdcl0', 68, 'DI', '4'),
('2022-10-29 13:20:39', 'waiting', '2022-10-29 13:20:39', NULL, '', '2022-10-29 13:20:39', 'to_redeem', 'DI10-EZP0-jTNp', 'AT10-kI71Y5CXTWvtdcl0', 69, 'DI', '4'),
('2022-10-29 13:20:39', 'waiting', '2022-10-29 13:20:39', NULL, '', '2022-10-29 13:20:39', 'to_redeem', 'DI10-IMYf-yKEI', 'AT10-kI71Y5CXTWvtdcl0', 70, 'DI', '4'),
('2022-10-29 14:00:20', 'waiting', '2022-10-29 14:00:20', 'ADS2022-10-8', 'two@gmail.com', '2022-10-29 14:00:20', 'to_redeem', 'RB10-CBgx-Tv8s', 'AT10-BEHRNbc5qXYVDT6J', 71, 'RB', '10'),
('2022-10-29 14:00:20', 'waiting', '2022-10-29 14:00:20', NULL, '', '2022-10-29 14:00:20', 'to_redeem', 'RB10-spSF-5N01', 'AT10-BEHRNbc5qXYVDT6J', 72, 'RB', '10'),
('2022-10-29 14:00:21', 'waiting', '2022-10-29 14:00:21', NULL, '', '2022-10-29 14:00:21', 'to_redeem', 'RB10-lgGC-CcvY', 'AT10-BEHRNbc5qXYVDT6J', 73, 'RB', '10'),
('2022-10-29 14:00:21', 'waiting', '2022-10-29 14:00:21', NULL, '', '2022-10-29 14:00:21', 'to_redeem', 'RB10-0Ov2-7NvE', 'AT10-BEHRNbc5qXYVDT6J', 74, 'RB', '10'),
('2022-10-29 14:00:22', 'waiting', '2022-10-29 14:00:22', NULL, '', '2022-10-29 14:00:22', 'to_redeem', 'RB10-9DMF-3Yl5', 'AT10-BEHRNbc5qXYVDT6J', 75, 'RB', '10'),
('2022-10-29 14:00:22', 'waiting', '2022-10-29 14:00:22', NULL, '', '2022-10-29 14:00:22', 'to_redeem', 'RB10-WMTh-zqy9', 'AT10-BEHRNbc5qXYVDT6J', 76, 'RB', '10'),
('2022-10-29 14:00:22', 'waiting', '2022-10-29 14:00:22', NULL, '', '2022-10-29 14:00:22', 'to_redeem', 'RB10-MiYa-dAje', 'AT10-BEHRNbc5qXYVDT6J', 77, 'RB', '10'),
('2022-10-29 14:00:22', 'waiting', '2022-10-29 14:00:22', NULL, '', '2022-10-29 14:00:22', 'to_redeem', 'RB10-DLV0-viWo', 'AT10-BEHRNbc5qXYVDT6J', 78, 'RB', '10'),
('2022-10-29 14:00:22', 'waiting', '2022-10-29 14:00:22', NULL, '', '2022-10-29 14:00:22', 'to_redeem', 'RB10-6xou-79zA', 'AT10-BEHRNbc5qXYVDT6J', 79, 'RB', '10'),
('2022-10-29 14:00:22', 'waiting', '2022-10-29 14:00:22', NULL, '', '2022-10-29 14:00:22', 'to_redeem', 'RB10-5Guw-lKGc', 'AT10-BEHRNbc5qXYVDT6J', 80, 'RB', '10');

-- --------------------------------------------------------

--
-- Table structure for table `totalbalance`
--

CREATE TABLE `totalbalance` (
  `totalBalanceId` int(20) NOT NULL,
  `userID` varchar(30) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `totalBalance` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `totalbalance`
--

INSERT INTO `totalbalance` (`totalBalanceId`, `userID`, `userName`, `totalBalance`) VALUES
(77, 'ADS2022-10-7', 'one@gmail.com', 650),
(80, 'ADS2022-10-8', 'two@gmail.com', 0);

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
(142, 'Direct Referral', 'one@gmail.com', 'ADS2022-10-7', 'Two Dos', 'One Uno', '', '', '', 500, 500, 0, 0),
(145, 'Points', 'two@gmail.com', 'ADS2022-10-8', '', '', 'RA', '', '', 0, 0, 1, 1),
(146, 'Rebates', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RA', 'two@gmail.com', 'ADS2022-10-8', 80, 580, 0, 0),
(147, 'Rebates', 'one@gmail.com', 'n/a', '', '', 'RA', 'two@gmail.com', 'ADS2022-10-8', 30, 30, 0, 0),
(148, 'Points', 'two@gmail.com', 'ADS2022-10-8', '', '', 'RB', '', '', 0, 0, 1, 2),
(149, 'Rebates', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RB', 'two@gmail.com', 'ADS2022-10-8', 70, 650, 0, 0),
(150, 'Rebates', 'one@gmail.com', 'n/a', '', '', 'RB', 'two@gmail.com', 'ADS2022-10-8', 30, 30, 0, 0);

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
  ADD PRIMARY KEY (`transaction_id`);

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
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `generated_code`
--
ALTER TABLE `generated_code`
  MODIFY `code_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invites`
--
ALTER TABLE `invites`
  MODIFY `invitesID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `rebatesamount`
--
ALTER TABLE `rebatesamount`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rebates_points`
--
ALTER TABLE `rebates_points`
  MODIFY `rebates_points_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `referral_codes`
--
ALTER TABLE `referral_codes`
  MODIFY `transaction_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `totalbalance`
--
ALTER TABLE `totalbalance`
  MODIFY `totalBalanceId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
