-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2022 at 03:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `COMPANY`
--

-- --------------------------------------------------------

--
-- Table structure for table `DEPARTMENT`
--

CREATE TABLE `DEPARTMENT` (
  `DNUMBER` int(10) UNSIGNED NOT NULL,
  `DNAME` varchar(100) NOT NULL,
  `MRGSTARTDATE` date NOT NULL,
  `MRGSSN` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `DEPARTMENT`
--

INSERT INTO `DEPARTMENT` (`DNUMBER`, `DNAME`, `MRGSTARTDATE`, `MRGSSN`) VALUES
(1, 'Human Resources', '2021-12-01', 590511980),
(2, 'Direction', '2021-08-02', 146060130),
(3, 'Finance', '2021-10-18', 565858746),
(4, 'Marketing', '2022-01-18', 543967264),
(5, 'Sales', '2022-02-03', 267671992),
(6, 'Finances', '2021-11-16', 674164257),
(7, 'Production', '2021-12-05', 664941885),
(8, 'Storage', '2021-09-03', 458872023),
(9, 'Client Attention', '2021-05-31', 547817137),
(10, 'Logistic', '2021-05-07', 239173213);

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

CREATE TABLE `EMPLOYEE` (
  `SSN` int(10) UNSIGNED NOT NULL,
  `DNUMBER` int(10) UNSIGNED NOT NULL,
  `POSNUMBER` int(10) UNSIGNED NOT NULL,
  `SUPERSSN` int(10) UNSIGNED NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `BDATE` date NOT NULL,
  `ADDRES` varchar(100) NOT NULL,
  `SEX` varchar(10) NOT NULL,
  `SALARY` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`SSN`, `DNUMBER`, `POSNUMBER`, `SUPERSSN`, `FNAME`, `LNAME`, `BDATE`, `ADDRES`, `SEX`, `SALARY`) VALUES
(321181740, 3, 3, 379324141, 'Marna', 'Alcide', '2022-02-23', '75 Corry Lane', 'Female', 50968),
(367552089, 9, 9, 205263537, 'Michail', 'Suche', '2021-11-28', '36 Vera Parkway', 'Male', 13013),
(392554698, 4, 4, 432080009, 'Johnny', 'Vanyakin', '2022-01-17', '586 Judy Alley', 'Male', 6637),
(477987417, 5, 5, 211819768, 'Imojean', 'Elmer', '2021-10-06', '75 Dryden Street', 'Female', 17216),
(521656838, 6, 6, 808512114, 'Terri-jo', 'Donke', '2021-05-16', '0794 Delaware Parkway', 'Female', 71766),
(551950014, 10, 10, 761658097, 'Lowell', 'Careswell', '2021-05-07', '4 Green Ridge Lane', 'Male', 93088),
(557836492, 1, 1, 690019680, 'Morissa', 'Fair', '2022-02-23', '0 Ramsey Court', 'Female', 70988),
(658388045, 2, 2, 852241168, 'Hanan', 'Simonds', '2022-04-14', '0998 Memorial Junction', 'Male', 51473),
(818050951, 7, 7, 682572159, 'Inesita', 'Tunnow', '2021-09-04', '82 Norway Maple Drive', 'Female', 21855),
(865480809, 8, 8, 481703903, 'Maryann', 'Sampey', '2021-11-19', '394 Surrey Trail', 'Female', 59927);

-- --------------------------------------------------------

--
-- Table structure for table `POSITION`
--

CREATE TABLE `POSITION` (
  `POSNUMBER` int(10) UNSIGNED NOT NULL,
  `POSNAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `POSITION`
--

INSERT INTO `POSITION` (`POSNUMBER`, `POSNAME`) VALUES
(1, 'President -CEO'),
(2, 'Vice President of Marketing'),
(3, 'Vice President of Finances'),
(4, 'Treasurer'),
(5, 'Controller'),
(6, 'Cash Manager'),
(7, 'Credit Manager'),
(8, 'Tax Manager'),
(9, 'Programer'),
(10, 'DB Designer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DEPARTMENT`
--
ALTER TABLE `DEPARTMENT`
  ADD PRIMARY KEY (`DNUMBER`);

--
-- Indexes for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD PRIMARY KEY (`SSN`),
  ADD KEY `EMPLOYEE_FKIndex1` (`POSNUMBER`),
  ADD KEY `EMPLOYEE_FKIndex2` (`DNUMBER`);

--
-- Indexes for table `POSITION`
--
ALTER TABLE `POSITION`
  ADD PRIMARY KEY (`POSNUMBER`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD CONSTRAINT `EMPLOYEE_ibfk_1` FOREIGN KEY (`POSNUMBER`) REFERENCES `POSITION` (`POSNUMBER`) ON UPDATE CASCADE,
  ADD CONSTRAINT `EMPLOYEE_ibfk_2` FOREIGN KEY (`DNUMBER`) REFERENCES `DEPARTMENT` (`DNUMBER`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
