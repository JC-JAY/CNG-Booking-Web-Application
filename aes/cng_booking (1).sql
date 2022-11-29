-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 12:12 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cng_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `email` varchar(111) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Approve_CNGPump` varchar(70) NOT NULL,
  `View_CNGPump` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `Password`, `Approve_CNGPump`, `View_CNGPump`) VALUES
('jayeshchavan@gmail.com', '12345', '', ''),
('jayeshchavan@gmail.com', '12345', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bookinng`
--

CREATE TABLE IF NOT EXISTS `bookinng` (
  `u_id` int(40) NOT NULL,
  `Pump_id` int(60) NOT NULL,
  `u_mobile` varchar(70) NOT NULL,
  `CNG_kg` int(90) NOT NULL,
  `u_name` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookinng`
--

INSERT INTO `bookinng` (`u_id`, `Pump_id`, `u_mobile`, `CNG_kg`, `u_name`) VALUES
(1, 12, '86247581325', 100, 'PQR'),
(1, 12, '86247581325', 100, 'PQR');

-- --------------------------------------------------------

--
-- Table structure for table `cngpump`
--

CREATE TABLE IF NOT EXISTS `cngpump` (
`id` int(10) NOT NULL,
  `Pump_Name` varchar(20) DEFAULT NULL,
  `Address` varchar(30) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Taluka` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `OpenTime` varchar(20) NOT NULL,
  `CloseTime` varchar(20) NOT NULL,
  `Latitude` float NOT NULL,
  `Longitude` float NOT NULL,
  `CNG_KG` varchar(111) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cngpump`
--

INSERT INTO `cngpump` (`id`, `Pump_Name`, `Address`, `City`, `Taluka`, `District`, `mobile_number`, `Password`, `OpenTime`, `CloseTime`, `Latitude`, `Longitude`, `CNG_KG`, `Status`) VALUES
(1, 'ABC pumps', 'nimzari nka,shirpur', 'shirpur', 'shirpur', 'Dhule', '8624081325', '00', '07:16', '06:16', 0, 0, '800', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `MobileNumber` varchar(30) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `City` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `MobileNumber`, `Password`, `City`) VALUES
('jayesh', '1@gmail.com', '8624081325', 'WDWD', 'shirpur'),
('jayesh', 'jayesh.chavan2792001@gmail.com', '8624081325', '12345', 'shirpur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cngpump`
--
ALTER TABLE `cngpump`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cngpump`
--
ALTER TABLE `cngpump`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
