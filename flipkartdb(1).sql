-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2022 at 05:55 AM
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
-- Database: `flipkartdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `flip_city`
--

CREATE TABLE `flip_city` (
  `ctid` int(11) NOT NULL,
  `ctname` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flip_city`
--

INSERT INTO `flip_city` (`ctid`, `ctname`, `cid`, `sid`) VALUES
(1, 'rajkot', 1, 1),
(2, 'ahemdabad', 1, 1),
(3, 'surat', 1, 1),
(4, 'navada', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `flip_country`
--

CREATE TABLE `flip_country` (
  `cid` int(11) NOT NULL,
  `cname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flip_country`
--

INSERT INTO `flip_country` (`cid`, `cname`) VALUES
(1, 'india'),
(2, 'usa');

-- --------------------------------------------------------

--
-- Table structure for table `flip_state`
--

CREATE TABLE `flip_state` (
  `sid` int(11) NOT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flip_state`
--

INSERT INTO `flip_state` (`sid`, `sname`, `cid`) VALUES
(1, 'gujrat', 1),
(2, 'california', 2);

-- --------------------------------------------------------

--
-- Table structure for table `flip_users`
--

CREATE TABLE `flip_users` (
  `uid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `ctid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flip_users`
--

INSERT INTO `flip_users` (`uid`, `name`, `email`, `address`, `salary`, `cid`, `sid`, `ctid`) VALUES
(1, 'ajaysingh', 'ajaysingh@gmail.com', 'california street 101', 7898580, 2, 2, 4),
(2, 'meet', 'meet@gmail.com', 'surat varcha', 4502, 1, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flip_city`
--
ALTER TABLE `flip_city`
  ADD PRIMARY KEY (`ctid`);

--
-- Indexes for table `flip_country`
--
ALTER TABLE `flip_country`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `flip_state`
--
ALTER TABLE `flip_state`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `flip_users`
--
ALTER TABLE `flip_users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flip_city`
--
ALTER TABLE `flip_city`
  MODIFY `ctid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `flip_country`
--
ALTER TABLE `flip_country`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flip_state`
--
ALTER TABLE `flip_state`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flip_users`
--
ALTER TABLE `flip_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
