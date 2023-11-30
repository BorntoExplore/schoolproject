-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2023 at 08:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mybank`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(111) NOT NULL,
  `branchName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(1, '100101', 'Yangon (Myanmar)'),
(2, '100102', 'Dawei (Myanmar)'),
(3, '100103', 'London (United Kingdom)');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackId`, `message`, `userId`, `date`) VALUES
(1, 'This message is from jack\r\n', 1, '2023-11-21 16:41:24'),
(2, 'This message is from miko\r\n', 2, '2023-11-21 16:42:20'),
(3, 'This message is from zayn\r\n', 3, '2023-11-21 16:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(225) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `type`, `date`) VALUES
(1, 'manager', 'manager@manager.com', 'manager', 'manager', '2023-11-20 08:08:00'),
(2, 'cashier1', 'cashier1@cashier.com', '$2y$10$OTdwggZdktunffcFlx94Xus6sSc5TYJKxor5HCgX0Qkwxs7LtxNim', 'cashier', '2023-11-21 16:47:17'),
(3, 'cashier2', 'cashier2@cashier.com', '$2y$10$GMbVHMPk/ASlx1YoWU3V8eByMMyopNJsQ4hCwhq.ZL.LKEd.ejRBW', 'cashier', '2023-11-21 16:47:39'),
(4, 'cashier3', 'cashier3@casher.com', '$2y$10$cx/6DEthvf93U.S6RNRzkOxpObLbymFQIDm5GkzLIAbhxbj3CACOu', 'cashier', '2023-11-21 16:47:49'),
(5, 'cashier4', 'cashier4@cashier.com', '$2y$10$Vc5QSyi3ZTCPt6fwwll0C.Sc6cqmJ8/NlhdJXiirC1o7EmyMZyb2S', 'cashier', '2023-11-21 17:00:02'),
(30, 'cashier', 'cashier@cashier.com', '$2y$10$JJXK9LPV1ZjrR1rtm0pcxes038j5M6CJuQysCwPC4Upb2k74PFKt6', 'cashier', '2023-11-21 17:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(1, '3', 'This message is from manager\r\n', '2023-11-21 16:56:57'),
(2, '2', 'This message is from manager', '2023-11-21 16:57:15'),
(3, '1', 'This message is from manager', '2023-11-21 16:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `otheraccounts`
--

CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `otheraccounts`
--

INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '12001122', 'PSK', 'Jack', '40800', '2023-08-14 11:55:07'),
(2, '12001123', 'GG', 'Mili', '71000', '2023-08-14 11:55:07'),
(3, '12001124', 'HBL', 'Htoi', '71000', '2023-08-14 11:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `other`, `userId`, `date`) VALUES
(1, 'transfer', '', '150000', '1700584685', 3, '2023-11-21 17:27:05'),
(2, 'transfer', '', '50000', '1700584630', 3, '2023-11-21 17:29:45'),
(3, 'transfer', '', '50000', '1700584685', 2, '2023-11-21 17:30:24'),
(4, 'transfer', '', '50000', '1700584550', 2, '2023-11-21 17:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `is_first_login` tinyint(1) NOT NULL DEFAULT 1,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `nic` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `is_first_login`, `email`, `password`, `name`, `balance`, `nic`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 0, 'jack@jack.com', '$2y$10$tmMs15.qxwWoot8xB173UuqxXhmrfdSy81jN5clmyRyydbOUSDoDq', 'jack', '100000', '829281', '097895839', 'London', 'London', 'manager', '1700584550', '3', 'saving', '2023-11-21 16:37:10'),
(2, 0, 'miko@miko.com', '$2y$10$l17k7Wmox97CnefZzc0Ao.JwhNXxG6ZNzpNJJMZMAPVw2Pkvt.CUq', 'Miko', '150000', '849586', '09586938593', 'Dawei', 'Dawei', 'Accounting', '1700584630', '2', 'saving', '2023-11-21 16:38:05'),
(3, 0, 'zayn@zayn.com', '$2y$10$XlGJHDtTpYltxhFMDARYJOkW739oJaZ5CJphWT6ZOOvLI.8qaKbVO', 'Zayn', '200000', '627361', '09586837482', 'Yangon', 'Yangon', 'Engineer', '1700584685', '1', 'saving', '2023-11-21 16:38:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
