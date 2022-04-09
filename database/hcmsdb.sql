-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2019 at 10:03 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hcmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appoint_id` int(10) NOT NULL,
  `app_from` int(30) NOT NULL,
  `app_to` int(25) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `app_date` varchar(25) NOT NULL,
  `app_time` varchar(25) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Pending'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appoint_id`, `app_from`, `app_to`, `phone`, `app_date`, `app_time`, `message`, `status`) VALUES
(17, 2, 13, '0777200300', '2018-06-20', '', 'na hapo je?', 'Accepted'),
(16, 7, 13, '0775467893', '2018-06-20', '', 'kazu ipo', 'Accepted'),
(22, 11, 13, '0776787665', '2018-06-08', '', 'This is test Appoitment', 'Declined'),
(23, 13, 31, '0678908765', '2018-06-28', '', 'This is another Appoitmnet\r\n', 'Pending'),
(41, 36, 34, '0777876540', '2018-08-15', '13:00', 'This is message', 'Accepted'),
(36, 31, 34, '0678565654', '2018-08-21', '08:45', 'g td rshegregrg g s gsd', 'Declined'),
(30, 21, 34, '0777543212', '2018-07-17', '00:34', 'Hi Dr Marya, John Doe need to meet you', 'Declined'),
(27, 24, 31, '0777543212', '2018-07-16', '15:02', 'For the testing purposes', 'Accepted'),
(34, 5, 34, '0778909090', '2018-08-17', '08:36', 'Here is appointment message', 'Accepted'),
(37, 33, 34, '0711787874', '2018-07-20', '13:00', 'This is some message to doctor Marya', 'Accepted'),
(38, 33, 34, '0711787874', '2018-07-20', '02:00', 'hhh', 'Pending'),
(39, 34, 34, '0711787872', '2018-07-20', '13:01', 'This is some message to doctor', 'Accepted'),
(40, 35, 33, '0777876540', '2018-07-25', '13:00', 'message', 'Accepted'),
(42, 32, 34, '0717676431', '2018-08-01', '01:00', 'Hey Please!', 'Pending'),
(43, 32, 31, '0717676431', '2018-08-07', '04:02', 'Hey please take this ', 'Accepted'),
(44, 37, 33, '0777543212', '2018-08-31', '13:00', 'this is some comments', 'Accepted'),
(45, 38, 34, '0776667778', '2018-11-02', '13:59', 'This is appointment message', 'Accepted'),
(46, 39, 41, '0717676430', '2019-02-27', '13:00', 'This is some message', 'Accepted'),
(47, 40, 33, '0717676431', '2019-03-28', '01:00', 'some comments', 'Accepted'),
(48, 41, 31, '0678578950', '2019-03-31', '00:12', 'Some comments', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `user_id`, `uname`, `email`, `position`) VALUES
(26, 38, 'John ', 'john@yahoo.com', 'Labe Technician'),
(28, 40, 'Hussein', 'husmukh123@gmail.com', 'Receptionist'),
(7, 13, 'Salum', 'bonano@gmail.com', 'Doctor'),
(25, 37, 'Maida', 'maydah@gmail.com', 'Receptionist'),
(9, 15, 'Mkarafuu', 'Mkarafuu@yahoo.com', 'Labe Technician'),
(10, 16, 'Khadija', 'dida@hotmail.com', 'Pharmasist'),
(21, 33, 'Fatma ', 'fatmasahim@yahoo.com', 'Doctor'),
(27, 39, 'Halima', 'halima@hotmail.com', 'Pharmasist'),
(19, 31, 'Abuu', 'cash@gmail.com', 'Doctor'),
(22, 34, 'Marya', 'mary@gmail.com', 'Doctor'),
(29, 41, 'Fahad', 'fahad@gmail.com', 'Doctor'),
(24, 36, 'Aisha', 'aisha@gmail.com', 'Receiptionist'),
(30, 42, 'John', 'jsmith@gmail.com', 'Lab Technician');

-- --------------------------------------------------------

--
-- Table structure for table `lab_appoint`
--

CREATE TABLE `lab_appoint` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `req_test` text NOT NULL,
  `e_date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_appoint`
--

INSERT INTO `lab_appoint` (`id`, `patient_id`, `doc_id`, `req_test`, `e_date`, `status`) VALUES
(1, 24, 15, '', '2018-07-17', 1),
(2, 30, 38, '', '2018-07-20', 1),
(5, 34, 15, '', '2018-07-20', 1),
(6, 35, 15, '', '2018-07-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lab_results`
--

CREATE TABLE `lab_results` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `UTI` varchar(100) NOT NULL,
  `UTP` varchar(100) NOT NULL,
  `blood_pressure` varchar(100) NOT NULL,
  `weight` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_results`
--

INSERT INTO `lab_results` (`id`, `patient_id`, `malaria`, `typhoid`, `HIV/AIDs`, `blood_group`, `UTI`, `UTP`, `blood_pressure`, `weight`, `height`, `allergy`, `checked_by`, `status`) VALUES
(1, 2, 'No', 'No', 'No', 'A', 'No', 'No', 'No', 67, 59, 'No', 'Fatma ALi', 1),
(2, 24, 'Yes', 'Yes', 'No', 'B', 'Yes', 'No', 'Yes', 50, 70, 'No', 'Mkarafuu Mkavu', 0),
(4, 29, 'No', 'No', 'No', 'A', 'No', 'No', 'No', 50, 50, 'No', 'Mkarafuu Mkavu', 1),
(5, 2, 'Yes', 'No', 'No', '0', 'No', 'Yes', 'No', 67, 70, 'No', 'John  Doe', 1),
(6, 30, 'Yes', 'No', 'Positive', '0', 'Yes', 'Yes', 'No', 80, 90, 'No', 'John  Doe', 1),
(7, 31, 'Yes', 'No', 'No', '0', 'Yes', 'No', 'Yes', 78, 77, 'Yes', 'Mkarafuu Mkavu', 1),
(8, 33, 'Yes', 'Yes', 'No', 'B', 'Yes', 'No', 'No', 50, 50, 'No', 'Mkarafuu Mkavu', 1),
(9, 34, 'Yes', 'No', 'No', 'B', 'No', 'No', 'No', 67, 78, 'No', 'Mkarafuu Mkavu', 1),
(10, 35, 'No', 'No', 'No', 'B', 'No', 'No', 'No', 76, 78, 'No', 'Mkarafuu Mkavu', 1),
(11, 36, 'Yes', 'No', 'Negative', 'A', 'No', 'No', 'No', 90, 50, 'No', 'Mkarafuu Mkavu', 1),
(12, 34, 'Yes', 'No', 'Negative', 'n/a', 'n/a', 'n/a', 'n/a', 0, 0, 'n/a', 'Mkarafuu Mkavu', 1),
(13, 32, 'Yes', 'n/a', 'n/a', 'n/a', 'No', 'n/a', 'No', 0, 0, 'n/a', 'John  Doe', 1),
(14, 37, 'No', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'No', 0, 0, 'n/a', 'Mkarafuu Mkavu', 1),
(15, 39, 'No', 'n/a', 'n/a', 'B', 'n/a', 'n/a', 'n/a', 69, 0, 'n/a', 'Mkarafuu Mkavu', 1),
(16, 40, 'No', 'No', 'n/a', 'B', 'n/a', 'n/a', 'n/a', 0, 0, 'n/a', 'Mkarafuu Mkavu', 1),
(17, 41, 'No', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 0, 0, 'n/a', 'John  Doe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `malipo`
--

CREATE TABLE `malipo` (
  `malipo_id` int(10) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `amount` int(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `malipo`
--

INSERT INTO `malipo` (`malipo_id`, `patient_id`, `amount`, `status`) VALUES
(9, 34, 201600, 'Paid'),
(8, 30, 61000, 'Paid'),
(7, 29, 3000, 'Paid'),
(10, 30, 45750, 'Paid'),
(11, 35, 61800, 'Paid'),
(12, 2, 0, 'Paid'),
(13, 34, 151200, 'Paid'),
(14, 34, 151200, 'Paid'),
(15, 36, 3600, 'Paid'),
(16, 34, 375, 'Paid'),
(17, 34, 375, 'Paid'),
(18, 34, 375, 'Paid'),
(19, 32, 2213, 'Paid'),
(20, 32, 2213, 'Paid'),
(21, 32, 2213, 'Paid'),
(22, 37, 1500, 'Paid'),
(23, 39, 900, 'Paid'),
(24, 40, 159563, 'Paid'),
(25, 41, 4875, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `id` int(10) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `med_name` varchar(100) NOT NULL,
  `med_qty` int(11) NOT NULL,
  `dosage` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `comments` text NOT NULL,
  `md_date` date NOT NULL,
  `status` varchar(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`id`, `patient_id`, `med_name`, `med_qty`, `dosage`, `cost`, `comments`, `md_date`, `status`) VALUES
(2, 2, 'Panadol', 10, 2, 0, '', '2018-07-15', '1'),
(5, 2, 'Delpa', 5, 1, 0, '', '2018-07-16', '1'),
(6, 2, 'Cofta', 10, 3, 0, '', '2018-07-16', '1'),
(7, 3, 'Panadol', 20, 2, 0, 'moja mara 3', '2018-07-16', '1'),
(8, 3, 'Action', 10, 2, 0, '2 mara 4', '2018-07-16', '1'),
(9, 2, 'Panadol', 10, 2, 0, '2 kwa siku', '2018-07-17', '1'),
(10, 2, 'Delpa', 5, 1, 0, '1 mara 3', '2018-07-17', '1'),
(30, 29, 'Colgate', 1, 1, 2000, '1', '2018-07-18', '1'),
(29, 29, 'Panadol', 20, 1, 1000, '1 ma 4', '2018-07-18', '1'),
(28, 24, 'Cogate', 2, 1, 0, '1 per week', '2018-07-17', '1'),
(27, 24, 'Panadol', 30, 2, 0, '2 mara 3', '2018-07-17', '1'),
(43, 30, 'Panadol', 5, 2, 500, 'dsfs fsd sdfds sdfsd fsd', '2018-07-20', '1'),
(42, 30, 'Panadol', 5, 1, 500, 'Â dfsefsd fsd sdf sdfs d', '2018-07-20', '1'),
(44, 30, 'CoolMax', 6, 2, 60000, 'sdfsd fsd fsdf sfsd fsd s', '2018-07-20', '1'),
(45, 31, 'Panadol', 12, 2, 1200, '2 mara 3', '2018-07-20', '1'),
(46, 31, 'CoolMax', 6, 2, 60000, '2 mara 1', '2018-07-20', '1'),
(47, 34, 'Panadol', 10, 2, 1000, 'ule 2 mara 3', '2018-07-20', '1'),
(48, 34, 'CoolMax', 20, 3, 200000, '3 mara 3', '2018-07-20', '1'),
(49, 34, 'Headaxe', 3, 4, 600, '6 mara 5 ', '2018-07-20', '1'),
(50, 35, 'Panadol', 10, 2, 1000, 'jahus adnjsnajdsna', '2018-07-25', '1'),
(51, 35, 'CoolMax', 2, 3, 20000, 'sjbdajs', '2018-07-25', '1'),
(52, 35, 'Mettacofline', 34, 3, 40800, 'jabsdbaj', '2018-07-25', '1'),
(53, 36, 'Panadol', 10, 2, 1000, 'This is comment 1', '2018-08-15', '1'),
(54, 36, 'Action', 8, 3, 1600, 'This is comment 2', '2018-08-15', '1'),
(55, 36, 'Headaxe', 5, 3, 1000, 'This is comment 3', '2018-08-15', '1'),
(56, 34, 'Panadol', 5, 5, 500, 'dgdf dfg dfgd gdf gdfgÂ ', '2018-08-31', '1'),
(57, 32, 'Panadol', 10, 2, 1000, 'coment 1', '2018-08-31', '1'),
(58, 32, 'Cofta', 5, 4, 750, 'coment 2', '2018-08-31', '1'),
(59, 32, 'Headaxe', 6, 3, 1200, 'coment 3', '2018-08-31', '1'),
(60, 37, 'Panadol', 20, 2, 2000, 'comment 2', '2018-08-31', '1'),
(61, 0, 'Panadol', 121, 0, 12100, 'e1231', '2018-09-26', '0'),
(62, 0, 'Mettacofline', 1231, 31, 1477200, 'xzx', '2018-09-26', '0'),
(63, 39, 'Cofta', 4, 4, 600, 'thus sus usisiÂ ', '2019-02-27', '1'),
(64, 39, 'Action', 3, 2, 600, 'thasu asua ia', '2019-02-27', '1'),
(65, 40, 'CoolMax', 20, 6, 200000, 'hhhhhj', '2019-03-28', '1'),
(66, 40, 'Mettacofline', 10, 7, 12000, 'hhhh', '2019-03-28', '1'),
(67, 40, 'Cofta', 5, 5, 750, 'ggghgd', '2019-03-28', '1'),
(68, 41, 'Panadol', 5, 2, 500, 'some comments', '2019-03-31', '1'),
(69, 41, 'Mettacofline', 5, 2, 6000, 'some comments', '2019-03-31', '1');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `p_price` int(11) NOT NULL,
  `s_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `added_by` varchar(100) NOT NULL,
  `added_at` date NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `m_name`, `p_price`, `s_price`, `qty`, `added_by`, `added_at`, `status`) VALUES
(1, 'Panadol', 90, 100, 1000, 'Khadija Khamis', '2018-07-15', 'active'),
(2, 'CoolMax', 9000, 10000, 90, 'Khadija Khamis', '2018-07-15', 'active'),
(3, 'Mettacofline', 1000, 1200, 100, 'Khadija Khamis', '2018-07-15', 'active'),
(4, 'Cofta', 100, 150, 90, 'Khadija Khamis', '2018-07-15', 'active'),
(5, 'Action', 180, 200, 200, 'Khadija Khamis', '2018-07-15', 'active'),
(6, 'Headaxe', 140, 200, 120, 'Khadija Khamis', '2018-07-15', 'active'),
(7, 'Colgate', 1800, 2000, 100, 'Khadija Khamis', '2018-07-15', 'active'),
(8, 'Whitedent', 2500, 3000, 150, 'Khadija Khamis', '2018-07-15', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `status` varchar(100) NOT NULL,
  `regNumber` varchar(100) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `regDate` date NOT NULL,
  `code` int(15) NOT NULL,
  `treated` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `fname`, `lname`, `status`, `regNumber`, `address`, `phone`, `email`, `dob`, `gender`, `regDate`, `code`, `treated`) VALUES
(2, 'Aisha', 'Deo', 'non student', '-', 'Kibonde mzungu', '773545566', 'abass@hotmail.com', '1995-05-15', 'male', '2018-05-15', 15271, 1),
(37, 'Abdi', 'Kassim', 'student', '17/BFA/002', 'Kwahani', '0777543212', 'babi@gmail.com', '1999-06-17', 'male', '2018-08-31', 0, 1),
(38, 'Ismail', 'Abdallah', 'student', '15/OIA/032', 'Kizimbani Wete Pemba', '0776667778', 'suma@gmail.com', '1995-12-30', 'male', '2018-11-07', 0, 0),
(39, 'Amria', 'Ali', 'student', 'BFAA/2/18/001', 'Mikocheni', '0717676430', '-', '2013-02-01', 'female', '2019-02-27', 0, 1),
(40, 'Lee', 'Sao', 'student', '15/BIA/090', 'Kizimbani', '0717676431', 'lee@gmail.com', '2012-05-14', 'male', '2019-03-28', 0, 1),
(41, 'Ester', 'Kombo', 'student', 'BITA/123/2019', 'Kwahani', '0678578950', 'ester@gmail.com', '2008-03-05', 'female', '2019-03-31', 0, 1),
(24, 'Fatma', 'Rashid', 'non student', '-', 'Mikocheni', '0776565643', 'fatma@hotmail.com', '1999-05-30', 'female', '2018-07-25', 0, 1),
(29, 'Abass', 'Hassan', 'non student', '17/OIA/001', 'Kibonde mzungu', '773545566', 'abass@hotmail.com', '1997-05-30', 'male', '2018-07-16', 0, 1),
(32, 'Jamila', 'Rajab', 'student', '17/OFA/008', 'Bububu', '0717676431', 'jamila@gmail.com', '1996-01-04', 'female', '2018-07-16', 0, 1),
(34, 'Hussein', 'Khamis', 'student', '16/OIA/012', 'Kizimbani', '0711787872', 'hussein@gmail.com', '1973-06-13', 'male', '2018-07-20', 0, 1),
(35, 'Juma', 'Ali', 'non student', '-', 'Kizimbani', '0777876540', 'juma@gmail.com', '1995-11-05', 'male', '2018-07-25', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `presc_id` int(10) NOT NULL,
  `pid` varchar(50) NOT NULL,
  `prescription` text NOT NULL,
  `Email` varchar(30) NOT NULL,
  `userread` varchar(6) NOT NULL,
  `period` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `rep_id` int(10) NOT NULL,
  `patient_id` int(10) NOT NULL,
  `LTT` text NOT NULL,
  `Result` text NOT NULL,
  `Labtech` varchar(40) NOT NULL,
  `File` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`rep_id`, `patient_id`, `LTT`, `Result`, `Labtech`, `File`) VALUES
(1, 2, 'Some default panel content here. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. ', 'Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'This is LabTech', 'This is File');

-- --------------------------------------------------------

--
-- Table structure for table `sick_description`
--

CREATE TABLE `sick_description` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `problem` varchar(100) NOT NULL,
  `since` date NOT NULL,
  `nature` varchar(100) NOT NULL,
  `checked_by` varchar(100) NOT NULL,
  `checked_date` date NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sick_description`
--

INSERT INTO `sick_description` (`id`, `patient_id`, `problem`, `since`, `nature`, `checked_by`, `checked_date`, `comment`) VALUES
(4, 27, 'Typhoid', '2018-07-03', 'Sijui', 'Salum Rajab', '2018-07-07', 'This is some comment'),
(5, 7, 'Kichwa', '2018-07-18', 'Sijui', 'Salum Bonano', '2018-07-15', 'Some comments'),
(6, 7, 'Typhoid', '2018-07-19', 'Sijui', 'Salum Bonano', '2018-07-15', 'This is some comments'),
(7, 32, 'Malaria', '2018-07-14', 'Kulala bila net', 'Salum Bonano', '2018-07-16', 'this is some doctor comment'),
(8, 29, 'Homa', '2018-07-25', 'Sijui', 'Salum Bonano', '2018-07-16', 'Comment'),
(9, 31, 'Kichwa', '2018-07-16', 'Sijui', 'Salum Bonano', '2018-07-17', 'Utumiaji mwingi wa kio'),
(10, 2, 'Kichwa', '2018-07-16', 'Sijui', 'Salum Bonano', '2018-07-17', 'Comment comment'),
(11, 24, 'Typhoid', '2018-07-11', 'Kulala bila net', 'Salum Bonano', '2018-07-17', 'some comments'),
(12, 29, 'Tumbo', '2018-07-17', 'Sijui', 'Salum Bonano', '2018-07-18', 'some commentcsasa asda aahap hapa'),
(14, 30, 'Homa', '2018-07-19', 'Kulala bila net', 'Marya Doe', '2018-07-20', 'asdas sadsad asdasd asdasd asdsadsa sads af a fafa fsa'),
(15, 31, 'Homa', '2018-07-19', 'I dont know', 'Marya Doe', '2018-07-20', 'This is some comment about this patient'),
(16, 33, 'Homa', '2018-07-19', 'I dont know', 'Marya Doe', '2018-07-20', 'gs fsdfsd'),
(17, 34, 'Homa', '2018-07-19', 'I dont know', 'Marya Doe', '2018-07-20', 'This is some comment to this patient'),
(18, 35, 'Homa', '2018-07-24', 'Sijui', 'Fatma  Sahim', '2018-07-25', 'haksd akdsaknak '),
(22, 34, 'Homa', '2018-08-04', 'Sijui', 'Marya Doe', '2018-08-30', 'huhuhuhu'),
(24, 34, 'Homa', '2018-08-11', 'Kulala bila net', 'Marya Doe', '2018-08-30', 'decgvgv vgvrft'),
(25, 34, 'Homa', '2018-08-01', 'Sijui', 'Marya Doe', '2018-08-31', 'this is some comments'),
(26, 32, 'Homa', '2018-08-09', 'Kulala bila net', 'Abuu Juma', '2018-08-31', 'this is is is'),
(27, 37, 'Homa', '2018-08-30', 'Sijui', 'Fatma  Sahim', '2018-08-31', 'hey thusadsc ascas'),
(28, 24, 'Kichwa', '2018-12-05', 'Sijui', 'Abuu Juma', '2018-12-05', 'test'),
(29, 39, 'Kichwa', '2019-02-25', 'Sijui', 'Fahad Juma', '2019-02-27', 'this is doctors comment'),
(30, 40, 'Homa', '2019-03-27', 'Sijui', 'Fatma  Sahim', '2019-03-28', 'homessad '),
(31, 41, 'Fever', '2019-03-29', 'dont know', 'Abuu Juma', '2019-03-31', 'some comments');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `date_reg` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `position` int(10) NOT NULL,
  `last_login` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fname`, `lname`, `phone`, `email`, `password`, `status`, `date_reg`, `position`, `last_login`) VALUES
(12, 'John ', 'Doe', '0678578950', 'admin@gmail.com', 'admin', 'Admin', '2019-03-31 07:35:48.841127', 2, '31st March, 2019 09:35:48 AM'),
(13, 'Salum', 'Bonano', '0777876543', 'bonano@gmail.com', '12345', 'Doctor', '2018-07-20 04:38:27.932649', 1, '20th July, 2018 06:38:27 AM'),
(15, 'Harris', 'Joe', '0778909090', 'mkarafuu@yahoo.com', 'test123', 'Lab Technician', '2019-03-31 07:23:47.800656', 1, '28th March, 2019 09:51:03 AM'),
(16, 'Khadija', 'Khamis', '0711787876', 'dida@hotmail.com', '12345', 'Pharmasist', '2019-03-31 07:42:35.526285', 1, '31st March, 2019 09:42:35 AM'),
(31, 'Abuu', 'Juma', '0779876543', 'cash@gmail.com', 'test123', 'Doctor', '2019-03-31 07:39:17.277682', 1, '31st March, 2019 09:39:17 AM'),
(33, 'Fatma ', 'Sahim', '0777213121', 'fatmasahim@yahoo.com', 'HCMS123', 'Doctor', '2019-03-28 08:52:28.593662', 1, '28th March, 2019 09:52:28 AM'),
(34, 'Marya', 'Doe', '0655431234', 'mary@gmail.com', 'HCMS123', 'Doctor', '2018-11-07 14:27:29.700913', 1, '7th November, 2018 03:27:29 PM'),
(36, 'Aisha', 'Deo', '0799909090', 'aisha@gmail.com', 'HCMS123', 'Receptionist', '2019-03-31 07:40:43.568206', 1, '31st March, 2019 09:40:43 AM'),
(37, 'Maida', 'Al-Farsy', '0776678950', 'maydah@gmail.com', 'HCMS123', 'Receptionist', '2018-07-20 09:50:18.683140', 1, '20th July, 2018 11:50:18 AM'),
(38, 'John ', 'Doe', '0711565656', 'john@yahoo.com', 'HCMS123', 'Lab Technician', '2019-03-31 07:40:57.126982', 1, '31st March, 2019 09:40:57 AM'),
(41, 'Fahad', 'Juma', '0777656765', 'fahad@gmail.com', 'HCMS123', 'Doctor', '2019-02-27 09:50:09.927782', 1, '27th February, 2019 12:50:09 PM'),
(42, 'John', 'Smith', '+2314897689', 'jsmith@gmail.com', 'HCMS123', 'Lab Technician', '2019-03-31 07:32:42.000000', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appoint_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `lab_appoint`
--
ALTER TABLE `lab_appoint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_results`
--
ALTER TABLE `lab_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `malipo`
--
ALTER TABLE `malipo`
  ADD PRIMARY KEY (`malipo_id`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`presc_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`rep_id`);

--
-- Indexes for table `sick_description`
--
ALTER TABLE `sick_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appoint_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `lab_appoint`
--
ALTER TABLE `lab_appoint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lab_results`
--
ALTER TABLE `lab_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `malipo`
--
ALTER TABLE `malipo`
  MODIFY `malipo_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `presc_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `rep_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sick_description`
--
ALTER TABLE `sick_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
