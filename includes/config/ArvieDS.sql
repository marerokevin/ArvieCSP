-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 02, 2022 at 05:31 PM
-- Server version: 10.6.7-MariaDB-2ubuntu1.1
-- PHP Version: 8.1.2

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
  `admin` tinyint(1) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `access` tinyint(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `admin`, `first_name`, `last_name`, `email_address`, `pass`, `contact_number`, `access`, `date`) VALUES
(1, 0, 'test', 'test', 'test@glory.com.ph', '$2y$10$sEWksoBuM7DPCeHAZywmo.pIyU6qGfRufSF/28lPniQBm.W6FveS.', '123123123', 0, '2022-09-18 15:04:41'),
(2, 0, 'Cedrick James', 'Domo', 'test@glory.com', '$2y$10$X9GEBKzy1YYUq5K010m.M.k7NdLUCn57X6bPVX1E0baev7s5MvDh6', '123123123', 0, '2022-09-18 15:17:13'),
(3, 0, 'read', 'me', 'readme@gmail.com', '$2y$10$zZJRgeINR/yYpXgI5O9skONZou79fYF96Nf5cP/uJv2ICFMgrNrry', '123123123', 0, '2022-09-18 22:35:05'),
(4, 0, 'Marero', '123', 'marerokevin@gmail.com', '$2y$10$MgbnTX/izVUCpeldQyhnceKlm9GLjWfzoefbO6cs4Jdqu46b2oqQu', '123123', 0, '2022-09-18 22:49:40'),
(5, 0, 'test', 'test', 'test@gmail.com.ph', '$2y$10$Xks2lk2/VZAoMWautPTKB.aAJODfpYqil9nLe3.MjakZLQUW1nqPq', '123123123', 0, '2022-09-18 23:15:57'),
(6, 0, 'kevin', 'marero', 'test@tmail.com', '$2y$10$5CJfQLwRqp.PD3ClnQkFJuV893QopQet7t.txh6YAW/vAsN3fsML6', '123123123', 0, '2022-09-18 23:19:36'),
(7, 0, 'toys', 'lol', 'latoy@gmail.com', '$2y$10$7R.bKBPMqK2GlsvQ464GVu52uyFZzCPU8pDANZ5geh5m9nhdfNlkS', '123123132', 0, '2022-09-18 23:20:48'),
(8, 0, 'test', 'sdaasd', 'rwqer@gmail.com', '$2y$10$46uNbWFECLnPmngFX0jFD.hI2bV96OdqNCSYw6ALqkdPOwL3EVk12', '123123123', 0, '2022-09-18 23:30:43'),
(9, 0, 'test123', 'test123', 'lalisa@glory.com.ph', '$2y$10$S2.vwY8Dc6OOPEVYpKdV6uCJKrac1TU46lkGnzlBPK3Otb/fXggDO', '123123345', 0, '2022-09-19 23:15:26'),
(10, 0, 'asd123', 'asd123', 'waiting@glory.com.ph', '$2y$10$yP8UwkcmHJrIj4rdJ4OZZO5mjb9n5eT3TEl7QZQ4anD01gAWiDOvu', '123456', 0, '2022-09-19 23:16:41'),
(11, 0, 'Kevin Roy', 'Marero', 'marero@gmail.com', '$2y$10$h9N1Pq5NjngPUJL5.CT44.JonR/DOwh14zbsT3rQBEMFJ/K4auvw2', '2147483647', 1, '2022-09-26 15:13:24'),
(12, 0, 'Cedrick James', 'Orozo', 'cedrickorozo@gmail.com', '$2y$10$fJguCo4NFfG4T3xV7fGK9uLfl1x3jrHheJXjZPlQcH1KZwJZqR7qq', '2147483647', 1, '2022-09-26 10:13:59'),
(13, 0, 'James', 'Orozo', 'cedrickjames.orozo@cvsu.edu.ph', '$2y$10$UCMEIDIHAa4/2.Wwp40Tse/8LzgFLj5sxoavK.q0jgrNguSFNZWTm', '2147483647', 1, '2022-09-26 12:23:49'),
(14, 0, 'Kevin Roy', 'marero', 'marero1@gmail.com', '$2y$10$wX0.cTEeBO1P/wujdA6gtu5cchj.7WD9S7J1qS1oYg7kGTK.VD3yO', '123123', 1, '2022-09-20 00:16:50'),
(16, 1, 'Admin', '', 'admin@gmail.com', '$2y$10$.rSW0AyrT0p8aTs/pBbMKOFt6zBTh1t795Z4hHTO/5g.f77yQmkmC', '2147483647', 1, '2022-09-26 15:33:00'),
(17, 0, 'q', 'e', 'arian@gmail.com', '$2y$10$e3Go65.GCz/besoqqKJiC.t9D48okn5sxjNGP2D1MuOGdVoNx.Oi.', '09123456789', 1, '2022-10-01 21:56:29');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `invites`
--

INSERT INTO `invites` (`invitesID`, `name`, `idOfInvite`, `invitee`, `inviteeID`) VALUES
(32, 'James Orozo', 13, 'Kevin Roy marero', 11),
(41, 'Cedrick James Orozo', 12, 'James Orozo', 13),
(43, 'q e', 17, 'James Orozo', 13);

-- --------------------------------------------------------

--
-- Table structure for table `totalbalance`
--

CREATE TABLE `totalbalance` (
  `totalBalanceId` int(20) NOT NULL,
  `userID` int(30) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `totalBalance` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `totalbalance`
--

INSERT INTO `totalbalance` (`totalBalanceId`, `userID`, `userName`, `totalBalance`) VALUES
(27, 13, 'cedrickjames.orozo@cvsu.edu.ph', 1000),
(28, 11, 'marero@gmail.com', 520),
(39, 12, 'cedrickorozo@gmail.com', 0),
(40, 17, 'arian@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userId` int(50) NOT NULL,
  `inviteName` varchar(50) NOT NULL,
  `inviteeName` varchar(50) NOT NULL,
  `addedAmount` int(50) NOT NULL,
  `TotalBalance` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `type`, `userName`, `userId`, `inviteName`, `inviteeName`, `addedAmount`, `TotalBalance`) VALUES
(69, 'Direct Referral', 'cedrickjames.orozo@cvsu.edu.ph', 13, 'Cedrick James Orozo', 'James Orozo', 500, 500),
(70, 'Indirect Referral', 'Kevin Roy marero', 11, 'Cedrick James Orozo', 'James Orozo', 10, 510),
(73, 'Direct Referral', 'cedrickjames.orozo@cvsu.edu.ph', 13, 'q e', 'James Orozo', 500, 1000),
(74, 'Indirect Referral', 'Kevin Roy marero', 11, 'q e', 'James Orozo', 10, 520);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invites`
--
ALTER TABLE `invites`
  ADD PRIMARY KEY (`invitesID`);

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
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `invites`
--
ALTER TABLE `invites`
  MODIFY `invitesID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `totalbalance`
--
ALTER TABLE `totalbalance`
  MODIFY `totalBalanceId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;