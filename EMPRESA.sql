-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2022 at 07:21 AM
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
-- Database: `EMPRESA`
--

-- --------------------------------------------------------

--
-- Table structure for table `ENVIO`
--

CREATE TABLE `ENVIO` (
  `PROVEEDOR_SNUM` varchar(10) NOT NULL,
  `PIEZA_PNUM` varchar(10) NOT NULL,
  `CANTIDAD` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ENVIO`
--

INSERT INTO `ENVIO` (`PROVEEDOR_SNUM`, `PIEZA_PNUM`, `CANTIDAD`) VALUES
('S1', 'P1', 11),
('S10', 'P10', 10),
('S2', 'P2', 12),
('S1', 'P1', 11),
('S10', 'P10', 10),
('S2', 'P2', 12),
('S3', 'P3', 13),
('S4', 'P4', 14),
('S5', 'P5', 15),
('S6', 'P6', 16),
('S7', 'P7', 17),
('S8', 'P8', 18),
('S9', 'P9', 19);

-- --------------------------------------------------------

--
-- Table structure for table `PIEZA`
--

CREATE TABLE `PIEZA` (
  `PNUM` varchar(10) NOT NULL,
  `PNOMBRE` varchar(100) NOT NULL,
  `COLOR` varchar(100) NOT NULL,
  `PESO` int(10) UNSIGNED NOT NULL,
  `CIUDADPIEZA` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PIEZA`
--

INSERT INTO `PIEZA` (`PNUM`, `PNOMBRE`, `COLOR`, `PESO`, `CIUDADPIEZA`) VALUES
('P1', 'Tuerca', 'Azul', 11, 'Londres'),
('P10', 'bastidor', 'Naranja', 10, 'Londes'),
('P2', 'Tornillo', 'Verde', 12, 'Lorica'),
('P3', 'Engranaje', 'Amarillo', 13, 'Bogota'),
('P4', 'Brilo', 'Cafe', 14, 'Londres'),
('P5', 'Piston', 'Negro', 15, 'Lorica'),
('P6', 'Tornillo', 'Gris', 16, 'Medellin'),
('P7', 'Birlo', 'Azul', 17, 'Monteria'),
('P8', 'pasador', 'Rojo', 18, 'Monteria'),
('P9', 'soporte', 'Esmeralda', 19, 'Lorica');

-- --------------------------------------------------------

--
-- Table structure for table `PROVEEDOR`
--

CREATE TABLE `PROVEEDOR` (
  `SNUM` varchar(10) NOT NULL,
  `SNOMBRE` varchar(100) NOT NULL,
  `ESTADO` int(10) UNSIGNED NOT NULL,
  `CIUDADPROVEEDOR` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PROVEEDOR`
--

INSERT INTO `PROVEEDOR` (`SNUM`, `SNOMBRE`, `ESTADO`, `CIUDADPROVEEDOR`) VALUES
('S1', 'Cosmo', 10, 'Londres'),
('S10', 'Debby', 100, 'Londres'),
('S2', 'Elisha', 20, 'Lorica'),
('S3', 'Eleanora', 30, 'Bogota'),
('S4', 'Karney', 40, 'Londres'),
('S5', 'Georgianne', 50, 'Lorica'),
('S6', 'Madonna', 60, 'Medellin'),
('S7', 'Wendell', 70, 'Monteria'),
('S8', 'Betsy', 80, 'Monteria'),
('S9', 'Nowell', 90, 'Lorica');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ENVIO`
--
ALTER TABLE `ENVIO`
  ADD KEY `ENVIO_FKIndex1` (`PIEZA_PNUM`),
  ADD KEY `ENVIO_FKIndex2` (`PROVEEDOR_SNUM`);

--
-- Indexes for table `PIEZA`
--
ALTER TABLE `PIEZA`
  ADD PRIMARY KEY (`PNUM`);

--
-- Indexes for table `PROVEEDOR`
--
ALTER TABLE `PROVEEDOR`
  ADD PRIMARY KEY (`SNUM`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ENVIO`
--
ALTER TABLE `ENVIO`
  ADD CONSTRAINT `ENVIO_ibfk_1` FOREIGN KEY (`PIEZA_PNUM`) REFERENCES `PIEZA` (`PNUM`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ENVIO_ibfk_2` FOREIGN KEY (`PROVEEDOR_SNUM`) REFERENCES `PROVEEDOR` (`SNUM`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
