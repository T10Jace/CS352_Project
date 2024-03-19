# LoadDB.sql

-- XAMPP Control Panel
-- Version 3.3.0
-- https://www.apachefriends.org/download.html


# DATABASE SERVER INFORMATION
-- Server Host: localhost (127.0.0.1)
-- Generation Date: Mar 16, 2024
-- Server version: 10.4.32 - MariaDB
-- User: root@localhost

# WEB SERVER INFORMATION
-- phpMyAdmin
	-- version 5.2.1
	-- https://www.phpmyadmin.net/
-- PHP 
	-- Version: 8.2.12
-- MySQL Workbech
	-- Server Version: 8.3.0
-- Apache 
	-- Version: 2.4.58


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mediquestdb`
--

-- -----------------------------------------------------------------------------------------------------


-- CREATE TABLE `admintb`

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -----------------------------------------------------------------------------------------------------


-- CREATE TABLE `appointmenttb`

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) PRIMARY KEY AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -----------------------------------------------------------------------------------------------------


-- CREATE TABLE `contact`

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -----------------------------------------------------------------------------------------------------


-- CREATE TABLE `doctb`

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) UNIQUE NOT NULL,
  `email` varchar(50) UNIQUE NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- -----------------------------------------------------------------------------------------------------


-- CREATE TABLE `patreg`

CREATE TABLE `patreg` (
  `pid` int(11) PRIMARY KEY AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) UNIQUE NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- INSERT DATA INTO TABLE `patreg`

-- -----------------------------------------------------------------------------------------------------


-- CREATE TABLE `prestb`

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `illness` varchar(250) NOT NULL,
  `notes` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;