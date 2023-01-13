-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2022 at 04:52 PM
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
-- Database: `sql_database_edoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aemail` varchar(255) NOT NULL,
  `apassword` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aemail`, `apassword`) VALUES
('admin@edoc.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appoid` int(11) NOT NULL,
  `pid` int(10) DEFAULT NULL,
  `apponum` int(3) DEFAULT NULL,
  `scheduleid` int(10) DEFAULT NULL,
  `appodate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appoid`, `pid`, `apponum`, `scheduleid`, `appodate`) VALUES
(41, 8, 6, 30, '2022-10-29'),
(35, 3, 3, 30, '2022-10-29'),
(32, 1, 1, 26, '2022-10-29'),
(33, 5, 1, 30, '2022-10-25'),
(36, 6, 4, 30, '2022-10-29'),
(37, 7, 5, 30, '2022-10-29'),
(38, 6, 2, 26, '2022-10-29'),
(39, 5, 1, 29, '2022-10-29'),
(40, 5, 1, 25, '2022-10-29'),
(42, 8, 2, 25, '2022-10-29'),
(43, 9, 7, 30, '2022-10-29'),
(44, 9, 3, 25, '2022-10-29'),
(46, 10, 2, 23, '2022-10-29'),
(47, 10, 1, 28, '2022-10-29');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `docid` int(11) NOT NULL,
  `docemail` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`docid`, `docemail`, `docname`) VALUES
(1, 'Test Course', 'Test Module'),
(2, 'Programming for the Internet ', 'CSE391'),
(3, 'Software Engineering', 'CSE470'),
(4, 'Programming Language I [ Python ]', 'CSE110'),
(5, 'Programming Language II [ Python ]', 'CSE111'),
(6, 'Demo Course Title ', 'Demo Module Name ');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pid` int(11) NOT NULL,
  `pemail` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `ppassword` varchar(255) DEFAULT NULL,
  `pnic` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `pemail`, `pname`, `ppassword`, `pnic`) VALUES
(1, 'maruf@gmail.com', 'Abdullah Maruf', '123', '19101487'),
(2, 'hasan@gmail.com', 'Hashen Udara', '123', '22101526'),
(3, 'sadia@gmail.com', 'Sadia Tasnim', '123', '19101526'),
(5, 'tahsin@gmail.com', 'Tahsin Abid', '123', '19108827'),
(6, 'fresherboy1@gmail.com', 'Fresher Boy 01', '123', '22000001'),
(7, 'freshergirl1@gmail.com', 'Fresher Girl 01', '123', '22000002'),
(8, 'anika@gmail.com', 'Anika Islam', '123', '12546586'),
(9, 'labib@gmail.com', 'Labib Hasan', '123', '19154565'),
(10, 'fariha@gmail.com', 'Fariha Zaman', '123', '18263746');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `scheduleid` int(11) NOT NULL,
  `docid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scheduledate` date DEFAULT NULL,
  `scheduletime` time DEFAULT NULL,
  `nop` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheduleid`, `docid`, `title`, `scheduledate`, `scheduletime`, `nop`) VALUES
(30, '4', 'Batch 001', '2022-11-04', '08:00:00', 2),
(31, '4', 'Batch 002', '2022-11-04', '08:00:00', 8),
(26, '2', 'Section 01', '2022-11-01', '14:00:00', 6),
(27, '2', 'Section 02', '2022-11-01', '14:00:00', 8),
(28, '2', 'Section 03', '2022-11-03', '14:00:00', 7),
(29, '2', 'Section 04', '2022-11-02', '14:00:00', 7),
(25, '1', 'Test Section 02', '2022-11-03', '20:00:00', 5),
(35, '6', 'Demo Section', '2022-11-04', '13:10:00', 7),
(32, '4', 'Batch 003', '2022-11-04', '10:00:00', 8),
(23, '1', 'Test Section 01', '2022-11-05', '14:00:00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `webuser`
--

CREATE TABLE `webuser` (
  `email` varchar(255) NOT NULL,
  `usertype` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webuser`
--

INSERT INTO `webuser` (`email`, `usertype`) VALUES
('admin@edoc.com', 'a'),
('Test Course', 'd'),
('maruf@gmail.com', 'p'),
('emhashenudara@gmail.com', 'p'),
('Programming for the Internet ', 'd'),
('Software Engineering', 'd'),
('sadia@gmail.com', 'p'),
('tahsin@gmail.com', 'p'),
('fresherboy1@gmail.com', 'p'),
('freshergirl1@gmail.com', 'p'),
('anika@gmail.com', 'p'),
('labib@gmail.com', 'p'),
('fariha@gmail.com', 'p');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aemail`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appoid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `scheduleid` (`scheduleid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`docid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`scheduleid`),
  ADD KEY `docid` (`docid`);

--
-- Indexes for table `webuser`
--
ALTER TABLE `webuser`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `docid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `scheduleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
