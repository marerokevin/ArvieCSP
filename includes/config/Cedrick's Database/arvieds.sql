-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2022 at 12:31 PM
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
(52, 'ADS2022-10-8', 'Two', 'Dos', 'ADS2022-10-7', 'One  Uno', 'two@gmail.com', '$2y$10$FWDCxHsp4dbGdMKWgb1eQO8iqeQBTuWFaPnMpLHduKigqr8Q2eLvy', 987654, '2022-10-29 19:46:13', 'approved', 'userist', 'DI10-UgF7-m67V', 'Palangue 2', '890987', '0987', 8, ''),
(53, 'ADS2022-10-9', 'Three', 'Tres', '', '  ', 'three@gmail.com', '$2y$10$8Vfz.IozNOoOdG./Dm6I7.mdIoX4QGEpeEgrxoQeczukfoctbbEES', 987654, '2022-10-29 19:48:48', 'approved', 'userist', 'DI10-QFfB-4j06', 'Palangue 2', '34234', '2563523', 9, ''),
(54, 'ADS2022-10-10', 'Four', 'Kwatro', 'ADS2022-10-8', 'Two  Dos', 'four@gmail.com', '$2y$10$9s5XFt/cbRNUUh.hUTByv.V/ZOMcXXj/gOS1DbxEuJEPYfBLRk4l2', 987654, '2022-10-29 19:52:37', 'approved', 'userist', 'DI10-728Z-rpK2', 'Palangue 2', '4234', '434523', 10, '');

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
-- Table structure for table `payout_request`
--

CREATE TABLE `payout_request` (
  `payout_request_id` int(10) NOT NULL,
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
  `transactionIdBasis` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payout_request`
--

INSERT INTO `payout_request` (`payout_request_id`, `date`, `transaction_id`, `member_id`, `member_name`, `amount`, `mode_of_payment`, `status`, `receipt`, `date_released`, `time_released`, `transactionIdBasis`) VALUES
(1, '2022-10-30', 'PR-10050003', 'ADS2022-10-7', 'One Uno', '650', 'Cash', 'released', '../images/001bfe4d0d8f3f5c635b1cf139946d74.jpeg', '', '', 1),
(2, '2022-10-30', 'PR2022-10-2', 'ADS2022-10-7', 'One Uno', '650', 'Cash', 'released', '', '', '', 2),
(3, '2022-10-30', 'PR-202230103', 'ADS2022-10-7', 'One Uno', '1000', 'Cash', 'released', '../images/ccba8c2432597a18fb0e0d6991059366.jpeg', '', '', 3),
(4, '2022-10-30', 'PR-202230104', 'ADS2022-10-7', 'One Uno', '650', 'Cash', 'released', '../images/6e8b187e0c4b16780d1c7ce5e23e3adc.jpeg', '2022-10-30', '07:01 pm', 4),
(5, '2022-10-30', 'PR-202230105', 'ADS2022-10-7', 'One Uno', '1000', 'Gcash', 'released', '../images/d0d48ae50229f17dadfb270eb6314bfd.jpeg', '', '', 5);

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
(1, 70, 70),
(2, 30, 20),
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
(4, 'ADS2022-10-7', 'one@gmail.com', 2),
(7, 'ADS2022-10-8', 'two@gmail.com', 1),
(8, 'ADS2022-10-9', 'three@gmail.com', 0),
(9, 'ADS2022-10-10', 'four@gmail.com', 2);

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
('2022-10-29 19:41:03', 'waiting', '2022-10-29 19:41:03', 'ADS2022-10-8', '', '2022-10-29 19:41:03', 'used', 'DI10-UgF7-m67V', 'AT10-Tnm3jgOrWBG89hfM', 102, 'DI', '5'),
('2022-10-29 19:41:04', 'waiting', '2022-10-29 19:41:04', 'ADS2022-10-9', '', '2022-10-29 19:41:04', 'used', 'DI10-QFfB-4j06', 'AT10-Tnm3jgOrWBG89hfM', 103, 'DI', '5'),
('2022-10-29 19:41:04', 'waiting', '2022-10-29 19:41:04', 'ADS2022-10-10', '', '2022-10-29 19:41:04', 'used', 'DI10-728Z-rpK2', 'AT10-Tnm3jgOrWBG89hfM', 104, 'DI', '5'),
('2022-10-29 19:41:04', 'waiting', '2022-10-29 19:41:04', NULL, '', '2022-10-29 19:41:04', 'to_redeem', 'DI10-CqBj-Jfie', 'AT10-Tnm3jgOrWBG89hfM', 105, 'DI', '5'),
('2022-10-29 19:41:04', 'waiting', '2022-10-29 19:41:04', NULL, '', '2022-10-29 19:41:04', 'to_redeem', 'DI10-3irV-6bQj', 'AT10-Tnm3jgOrWBG89hfM', 106, 'DI', '5'),
('2022-10-29 19:55:30', 'waiting', '2022-10-29 19:55:30', 'ADS2022-10-8', 'two@gmail.com', '2022-10-29 19:55:30', 'used', 'RA10-atFA-9vub', 'AT10-pwvrKYzfdRUN8lPD', 107, 'RA', '5'),
('2022-10-29 19:55:31', 'waiting', '2022-10-29 19:55:31', 'ADS2022-10-10', 'four@gmail.com', '2022-10-29 19:55:31', 'used', 'RA10-WIB8-zWb0', 'AT10-pwvrKYzfdRUN8lPD', 108, 'RA', '5'),
('2022-10-29 19:55:31', 'waiting', '2022-10-29 19:55:31', 'ADS2022-10-7', 'one@gmail.com', '2022-10-29 19:55:31', 'used', 'RA10-T4z8-bXB2', 'AT10-pwvrKYzfdRUN8lPD', 109, 'RA', '5'),
('2022-10-29 19:55:32', 'waiting', '2022-10-29 19:55:32', 'ADS2022-10-10', 'four@gmail.com', '2022-10-29 19:55:32', 'used', 'RA10-TEU6-T2Jo', 'AT10-pwvrKYzfdRUN8lPD', 110, 'RA', '5'),
('2022-10-29 19:55:32', 'waiting', '2022-10-29 19:55:32', 'ADS2022-10-7', 'one@gmail.com', '2022-10-29 19:55:32', 'used', 'RA10-Y1IB-rQzU', 'AT10-pwvrKYzfdRUN8lPD', 111, 'RA', '5');

-- --------------------------------------------------------

--
-- Table structure for table `totalbalance`
--

CREATE TABLE `totalbalance` (
  `totalBalanceId` int(20) NOT NULL,
  `userID` varchar(30) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `totalBalance` int(20) NOT NULL,
  `unclaimable` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `totalbalance`
--

INSERT INTO `totalbalance` (`totalBalanceId`, `userID`, `userName`, `totalBalance`, `unclaimable`) VALUES
(77, 'ADS2022-10-7', 'one@gmail.com', 17700, 0),
(83, 'ADS2022-10-8', 'two@gmail.com', 650, 0),
(84, 'ADS2022-10-9', 'three@gmail.com', 0, 0),
(85, 'ADS2022-10-10', 'four@gmail.com', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(50) NOT NULL,
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
  `totalPoints` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `Date`, `time`, `type`, `userName`, `userId`, `inviteName`, `inviteeName`, `packageType`, `codeOwner`, `codeOwnerId`, `addedAmount`, `TotalBalance`, `addedPoints`, `totalPoints`) VALUES
(191, '', '', 'Direct Referral', 'one@gmail.com', 'ADS2022-10-7', 'Two Dos', 'One Uno', '', '', '', 500, 500, 0, 0),
(192, '', '', 'Indirect Referral', '', 'n/a', 'Two Dos', 'One Uno', '', '', '', 10, 10, 0, 0),
(193, '', '', 'Direct Referral', '', '', 'Three Tres', ' ', '', '', '', 500, 500, 0, 0),
(194, '', '', 'Direct Referral', 'two@gmail.com', 'ADS2022-10-8', 'Four Kwatro', 'Two Dos', '', '', '', 500, 500, 0, 0),
(195, '', '', 'Indirect Referral', 'One  Uno', 'ADS2022-10-7', 'Four Kwatro', 'Two Dos', '', '', '', 10, 510, 0, 0),
(196, '', '', 'Indirect Referral', '', 'n/a', 'Four Kwatro', 'Two Dos', '', '', '', 10, 10, 0, 0),
(197, '', '', 'Points', 'two@gmail.com', 'ADS2022-10-8', '', '', 'RA', '', '', 0, 0, 1, 1),
(198, '', '', 'Unclaimable Rebates', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RA', 'two@gmail.com', 'ADS2022-10-8', 80, 80, 0, 0),
(199, '', '', 'Unclaimable Rebates', '', 'n/a', '', '', 'RA', 'two@gmail.com', 'ADS2022-10-8', 30, 30, 0, 0),
(200, '', '', 'Points', 'four@gmail.com', 'ADS2022-10-10', '', '', 'RA', '', '', 0, 0, 1, 1),
(201, '', '', 'Rebates', 'two@gmail.com', 'ADS2022-10-8', '', '', 'RA', 'four@gmail.com', 'ADS2022-10-10', 80, 580, 0, 0),
(202, '', '', 'Unclaimable Rebates', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RA', 'four@gmail.com', 'ADS2022-10-10', 30, 110, 0, 0),
(203, '', '', 'Unclaimable Rebates', '', 'n/a', '', '', 'RA', 'four@gmail.com', 'ADS2022-10-10', 30, 30, 0, 0),
(204, '', '', 'Points', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RA', '', '', 0, 0, 1, 1),
(205, '', '', 'Unclaimable Rebates', '', 'n/a', '', '', 'RA', 'one@gmail.com', 'ADS2022-10-7', 80, 80, 0, 0),
(206, '', '', 'Points', 'four@gmail.com', 'ADS2022-10-10', '', '', 'RA', '', '', 0, 0, 1, 2),
(207, '', '', 'Rebates', 'two@gmail.com', 'ADS2022-10-8', '', '', 'RA', 'four@gmail.com', 'ADS2022-10-10', 70, 650, 0, 0),
(208, '', '', 'Rebates', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RA', 'four@gmail.com', 'ADS2022-10-10', 30, 540, 0, 0),
(209, '', '', 'Unclaimable Rebates', '', 'n/a', '', '', 'RA', 'four@gmail.com', 'ADS2022-10-10', 30, 30, 0, 0),
(210, '', '', 'Claimed Rebates', 'one@gmail.com', 'ADS2022-10-7', '', '', '', '', '', 110, 650, 0, 0),
(211, '', '', 'Points', 'one@gmail.com', 'ADS2022-10-7', '', '', 'RA', '', '', 0, 0, 1, 2),
(212, '', '', 'Unclaimable Rebates', '', 'n/a', '', '', 'RA', 'one@gmail.com', 'ADS2022-10-7', 70, 70, 0, 0),
(213, '', '', 'Withdrawal', '', 'One Uno', '', '', '', '', '', 0, 0, 0, 0),
(214, '', '', 'Withdrawal', '', 'ADS2022-10-7', '', '', '', '', '', 650, 0, 0, 0),
(215, '', '', 'Withdrawal', '', 'ADS2022-10-7', '', '', '', '', '', 1000, -1000, 0, 0),
(216, '', '', 'Withdrawal', '', 'ADS2022-10-7', '', '', '', '', '', 1000, 19000, 0, 0),
(217, '2022-10-30', '06:47 pm', 'Withdrawal', '', 'ADS2022-10-7', '', '', '', '', '', 650, 18350, 0, 0),
(218, '2022-10-30', '07:01 pm', 'Withdrawal', '', 'ADS2022-10-7', '', '', '', '', '', 650, 17700, 0, 0);

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
-- Indexes for table `payout_request`
--
ALTER TABLE `payout_request`
  ADD PRIMARY KEY (`payout_request_id`);

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
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
-- AUTO_INCREMENT for table `payout_request`
--
ALTER TABLE `payout_request`
  MODIFY `payout_request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rebatesamount`
--
ALTER TABLE `rebatesamount`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rebates_points`
--
ALTER TABLE `rebates_points`
  MODIFY `rebates_points_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `referral_codes`
--
ALTER TABLE `referral_codes`
  MODIFY `transaction_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `totalbalance`
--
ALTER TABLE `totalbalance`
  MODIFY `totalBalanceId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
