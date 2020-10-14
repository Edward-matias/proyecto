-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-10-2020 a las 04:52:23
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buff`
--

CREATE TABLE `buff` (
  `id` int(11) NOT NULL,
  `marca` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `foto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `buff`
--

INSERT INTO `buff` (`id`, `marca`, `nombre`, `precio`, `foto`) VALUES
(1, 'SubliRoss', 'Guason', 5, 'http://localhost/pro/Saved%20Pictures/buff/1.jpg'),
(2, 'SubliRoss', 'Wanted', 5, 'http://localhost/pro/Saved%20Pictures/buff/2.jpg'),
(3, 'SubliRoss', 'Homero S.', 5, 'http://localhost/pro/Saved%20Pictures/buff/3.jpg'),
(4, 'SubliRoss', 'Duende Verde', 5, 'http://localhost/pro/Saved%20Pictures/buff/4.jpg'),
(5, 'SubliRoss', 'Hulk', 5, 'http://localhost/pro/Saved%20Pictures/buff/5.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `nombre` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellido` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ciudad` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pago` varchar(5) COLLATE utf8mb4_spanish_ci NOT NULL,
  `longitudToma` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `latitudToma` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`nombre`, `apellido`, `ciudad`, `telefono`, `pago`, `longitudToma`, `latitudToma`) VALUES
('aaaa', 'aaa', 'aaa', '0000', '26', '-80.97246069654052', '-2.2094520536336195'),
('EDWARD', 'MATIAS', 'SALINAS', '0993725689', '26', '-80.97246069654052', '-2.2094536429068956'),
('sadfasdfa', 'dfasdf', 'asdfasdf', '654', '26', '-80.97246060102174', '-2.2094517720124207'),
('asdf', 'asdfas', 'sadfs', '23432', '26', '-80.97246069654052', '-2.2094536429068956');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gorras`
--

CREATE TABLE `gorras` (
  `id` int(11) NOT NULL,
  `marca` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `foto` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `gorras`
--

INSERT INTO `gorras` (`id`, `marca`, `nombre`, `precio`, `foto`) VALUES
(1, 'SubliRoss', 'Free Fire', 8, 'http://localhost/pro/Saved%20Pictures/gorra/1.jpg'),
(2, 'SubliRoss', 'Free kill', 7, 'http://localhost/pro/Saved%20Pictures/gorra/2.jpg'),
(3, 'SubliRoss', 'League of Legen', 7, 'http://localhost/pro/Saved%20Pictures/gorra/3.jpg'),
(4, 'SubliRoss', 'Barcelona', 8, 'http://localhost/pro/Saved%20Pictures/gorra/4.jpg'),
(5, 'SubliRoss', 'Emelec', 8, 'http://localhost/pro/Saved%20Pictures/gorra/5.jpg'),
(6, 'SubliRoss', 'Mario Bros', 7, 'http://localhost/pro/Saved%20Pictures/gorra/6.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taza`
--

CREATE TABLE `taza` (
  `id` int(11) NOT NULL,
  `marca` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `taza`
--

INSERT INTO `taza` (`id`, `marca`, `nombre`, `precio`, `foto`) VALUES
(1, 'SubliRoss', 'Bob S.', 6, 'http://localhost/pro/Saved%20Pictures/taza/1.jpg'),
(2, 'SubliRoss', 'Goku', 6, 'http://localhost/pro/Saved%20Pictures/taza/2.jpg'),
(3, 'SubliRoss', 'Mikey', 6, 'http://localhost/pro/Saved%20Pictures/taza/3.jpg'),
(4, 'SubliRoss', 'Amor', 6, 'http://localhost/pro/Saved%20Pictures/taza/4.jpg'),
(5, 'SubliRoss', 'Cap America', 5, 'http://localhost/pro/Saved%20Pictures/taza/5.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `buff`
--
ALTER TABLE `buff`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gorras`
--
ALTER TABLE `gorras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `taza`
--
ALTER TABLE `taza`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `buff`
--
ALTER TABLE `buff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `gorras`
--
ALTER TABLE `gorras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `taza`
--
ALTER TABLE `taza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
