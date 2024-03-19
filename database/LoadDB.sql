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


-- INSERT DATA INTO TABLE `admintb`

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

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


-- INSERT DATA INTO TABLE `appointmenttb`

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Sheryl Dickson', 550, '2023-02-14', '10:00:00', 1, 0),
(4, 2, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ruby Hughes', 700, '2023-02-28', '10:00:00', 0, 1),
(4, 3, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Zachary Vazquez', 1000, '2023-02-19', '03:00:00', 0, 1),
(11, 4, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'Rebbecca Cotton', 500, '2023-02-29', '20:00:00', 1, 1),
(4, 5, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Bryan Estes', 1200, '2023-02-28', '12:00:00', 1, 1),
(4, 6, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Sheryl Dickson', 550, '2023-02-26', '15:00:00', 0, 1),
(2, 8, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'Sheryl Dickson', 550, '2024-03-21', '10:00:00', 1, 1),
(5, 9, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', 'Brooke Sims', 700, '2023-03-19', '20:00:00', 1, 0),
(4, 10, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Sheryl Dickson', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ruby Hughes', 700, '2023-03-27', '15:00:00', 1, 1),
(9, 12, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Katherine Moreno', 800, '2023-03-26', '12:00:00', 1, 1),
(9, 13, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Martin Hoffman', 450, '2023-03-26', '14:00:00', 1, 1);

-- -----------------------------------------------------------------------------------------------------


-- CREATE TABLE `contact`

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- INSERT DATA INTO TABLE `contact`

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anu', 'anu@gmail.com', '7896677554', 'Hey Admin'),
(' Viki', 'viki@gmail.com', '9899778865', 'Good Job, Pal'),
('Ananya', 'ananya@gmail.com', '9997888879', 'How can I reach you?'),
('Aakash', 'aakash@gmail.com', '8788979967', 'Love your site'),
('Mani', 'mani@gmail.com', '8977768978', 'Want some coffee?'),
('Karthick', 'karthi@gmail.com', '9898989898', 'Good service'),
('Abbis', 'abbis@gmail.com', '8979776868', 'Love your service'),
('Asiq', 'asiq@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '7869869757', 'I love your service!');

-- -----------------------------------------------------------------------------------------------------


-- CREATE TABLE `doctb`

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) UNIQUE NOT NULL,
  `email` varchar(50) UNIQUE NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- INSERT DATA INTO TABLE `doctb`

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('Rebbecca Cotton', 'rcotton123', 'rcotton@gmail.com', 'Breast Cancer', 500),
('Thomas Carter', 'tcarter123', 'tcarter@gmail.com', 'Lung Cancer', 600),
('Ruby Hughes', 'rhughes123', 'rhughes@gmail.com', 'Thyroid Cancer', 700),
('Sheryl Dickson', 'sdickson123', 'sdickson@gmail.com', 'Colon Cancer', 550),
('Katherine Moreno', 'kmoreno123', 'kmoreno@gmail.com', 'Pancreatic Cancer', 800),
('Zachary Vazquez', 'zvazquez123', 'zvazquez@gmail.com', 'Melanoma', 1000),
('Jane Estrada', 'jestrada123', 'jestrada@gmail.com', 'Bladder Cancer', 1500),
('Martin Hoffman', 'mhoffman123', 'mhoffman@gmail.com', 'Leukemia', 450),
('Brooke Sims', 'bsims123', 'bsims@gmail.com', 'Kidney Cancer', 700),
('Wade Hampton', 'whampton123', 'whampton@gmail.com', 'Non-Hodgkins Lymphoma', 850),
('Tim Daniel', 'tdaniel123', 'tdaniel@gmail.com', 'Liver Cancer', 600),
('Brian Thompson', 'bthompson123', 'bthompson@gmail.com', 'Endometrial Cancer', 900),
('Bryan Estes', 'bestes123', 'bestes@gmail.com', 'Prostate Cancer', 1200);

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

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'ram123', 'ram123'),
(2, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'alia123', 'alia123'),
(3, 'Shahrukh', 'khan', 'Male', 'shahrukh@gmail.com', '8976898463', 'shahrukh123', 'shahrukh123'),
(4, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'kishan123', 'kishan123'),
(5, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', 'gautam123', 'gautam123'),
(6, 'Sushant', 'Singh', 'Male', 'sushant@gmail.com', '9059986865', 'sushant123', 'sushant123'),
(7, 'Nancy', 'Deborah', 'Female', 'nancy@gmail.com', '9128972454', 'nancy123', 'nancy123'),
(8, 'Kenny', 'Sebastian', 'Male', 'kenny@gmail.com', '9809879868', 'kenny123', 'kenny123'),
(9, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'william123', 'william123'),
(10, 'Peter', 'Norvig', 'Male', 'peter@gmail.com', '9609362815', 'peter123', 'peter123'),
(11, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'shraddha123', 'shraddha123');

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
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- INSERT DATA INTO TABLE `prestb`

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Ruby Hughes', 4, 11, 'Kishan', 'Lal', '2020-03-27', '15:00:00', 'Thyroid', 'Nothing', 'Yearly Check-up, everything looks good'),
('Sheryl Dickson', 2, 8, 'Alia', 'Bhatt', '2020-03-21', '10:00:00', 'Colon', 'Nothing', 'Take bed rest'),
('Katherine Moreno', 9, 12, 'William', 'Blake', '2020-03-26', '12:00:00', 'Pancreas', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Martin Hoffman', 9, 13, 'William', 'Blake', '2020-03-26', '14:00:00', 'Leukemia', 'Skin dryness', 'Drink more water daily');



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;