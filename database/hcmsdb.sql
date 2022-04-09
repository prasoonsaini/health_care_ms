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

INSERT INTO `lab_results` (`id`, `patient_id`, `blood_group`, `UTI`, `UTP`, `blood_pressure`, `weight`, `height`, `allergy`, `checked_by`, `status`) VALUES
(1, 2, 'No', 'No', 'No', 'A', 'No', 'No', 'No', 67, 59, 'No', 'Fatma ALi', 1),
(2, 24, 'Yes', 'Yes', 'No', 'B', 'Yes', 'No', 'Yes', 50, 70, 'No', 'Mkarafuu Mkavu', 0),
(4, 29, 'No', 'No', 'No', 'A', 'No', 'No', 'No', 50, 50, 'No', 'Mkarafuu Mkavu', 1),


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
(2, 'Abhinav', 'Pundir', 'non student', '-', 'Jalandhar', '773545566', 'ab@hotmail.com', '1995-05-15', 'male', '2018-05-15', 15271, 1),
(37, 'Tushar', 'Agg', 'student', '17/BFA/002', 'UP', '0777543212', 'tushar@gmail.com', '1999-06-17', 'male', '2018-08-31', 0, 1),
(38, 'Isha', 'Singh', 'student', '15/OIA/032', 'Mumbai', '0776667778', 'isha@gmail.com', '1995-12-30', 'female', '2018-11-07', 0, 0);

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
