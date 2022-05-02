-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2022 a las 04:34:08
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda;
USE tienda;

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `rut` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `comuna` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`rut`, `nombre`, `comuna`) VALUES
(110, 'JHON', 'LAS CONDES'),
(220, 'FANNYS', 'EL POBLADO'),
(330, 'MAIRA', 'PROVINCIA'),
(440, 'JOHAN', 'LA CASTELLANA'),
(550, 'NELSON', 'LOS PINOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `numdep` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`numdep`, `nombre`, `ciudad`) VALUES
(111, 'SALES', 'BARRANQUILLA'),
(222, 'COMERCIAL', 'MEDELLIN'),
(333, 'DIRECCIÓN', 'BOGOTA'),
(444, 'MARKETING', 'CALI'),
(555, 'LOGISTICA Y OPERACIONES', 'MONTERÍA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `rut` varchar(50) NOT NULL,
  `num_dep` int(10) UNSIGNED NOT NULL,
  `Grados_grado` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `sueldo` int(10) UNSIGNED DEFAULT NULL,
  `comision` float DEFAULT NULL,
  `rut_jefe` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`rut`, `num_dep`, `Grados_grado`, `nombre`, `cargo`, `sueldo`, `comision`, `rut_jefe`) VALUES
('1100', 333, 103, 'WARD', 'CEO', 3500000, 150000, NULL),
('1200', 444, 105, 'TURNER', 'DIRECTOR DE MARKETING', 1500000, 100000, '1400'),
('1300', 222, 101, 'MARTIN', 'CUSTOMER SUCCESS', 1200000, 120000, '1100'),
('1400', 222, 102, 'CLARK', 'DIRECTOR FINANCIERO', 2000000, 110000, '1300'),
('1500', 111, 104, 'SCOTT', 'DIRECTOR COMERCIAL', 1850000, 80000, '1200');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `grado` int(10) UNSIGNED NOT NULL,
  `sueldo_inf` int(10) UNSIGNED NOT NULL,
  `sueldo_sup` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`grado`, `sueldo_inf`, `sueldo_sup`) VALUES
(101, 1500000, 2500000),
(102, 1800000, 3500000),
(103, 2500000, 4500000),
(104, 1750000, 2200000),
(105, 1200000, 1850000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `nombre`, `precio`) VALUES
(1, 'PROYECTOR', 1400000),
(2, 'PORTATIL', 2000000),
(3, 'TELEVISOR', 1200000),
(4, 'MICROONDAS', 560000),
(5, 'CELULAR', 784000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `num_venta` int(10) UNSIGNED NOT NULL,
  `Clientes_rut` int(10) UNSIGNED NOT NULL,
  `Empleados_rut` varchar(50) NOT NULL,
  `monto` int(10) UNSIGNED DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`num_venta`, `Clientes_rut`, `Empleados_rut`, `monto`, `fecha`) VALUES
(11, 550, '1300', 450000, '2022-04-29'),
(22, 330, '1100', 1000000, '2022-05-01'),
(33, 110, '1100', 550000, '2022-04-27'),
(44, 220, '1200', 780000, '2022-05-03'),
(55, 440, '1500', 950000, '2022-04-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_detalle`
--

CREATE TABLE `ventas_detalle` (
  `Productos_codigo` int(10) UNSIGNED NOT NULL,
  `num_ventas` int(10) UNSIGNED NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas_detalle`
--

INSERT INTO `ventas_detalle` (`Productos_codigo`, `num_ventas`, `cantidad`) VALUES
(1, 44, 3),
(2, 33, 5),
(3, 55, 6),
(4, 11, 4),
(4, 55, 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`rut`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`numdep`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`rut`),
  ADD KEY `Empleados_FKIndex2` (`Grados_grado`),
  ADD KEY `Empleados_FKIndex1` (`num_dep`) USING BTREE;

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`grado`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`num_venta`),
  ADD KEY `Ventas_FKIndex1` (`Empleados_rut`),
  ADD KEY `Ventas_FKIndex2` (`Clientes_rut`);

--
-- Indices de la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  ADD PRIMARY KEY (`Productos_codigo`,`num_ventas`),
  ADD KEY `Ventas_has_ventas_detalle_FKIndex1` (`num_ventas`),
  ADD KEY `Ventas_has_ventas_detalle_FKIndex2` (`Productos_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
