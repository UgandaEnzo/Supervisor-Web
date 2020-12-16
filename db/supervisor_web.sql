-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2020 a las 01:38:53
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `supervisor web`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentes`
--

CREATE TABLE `componentes` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Cantidad` int(255) NOT NULL,
  `Codigo` int(20) NOT NULL,
  `Descripcion` text NOT NULL,
  `Tiempo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `componentes`
--

INSERT INTO `componentes` (`ID`, `Nombre`, `Cantidad`, `Codigo`, `Descripcion`, `Tiempo`) VALUES
(2, 'Ram', 10, 1243242354, 'Ram ddr4 para laptop', '2020-12-13 18:29:54'),
(3, 'Ram', 10, 1243242354, 'Ram ddr4 para Pc ', '2020-12-13 18:32:27'),
(4, 'GPU', 10, 51343254, 'GTX 3090', '2020-12-13 18:45:55'),
(5, 'Placa base', 5, 462345476, 'Placa base Asus', '2020-12-13 18:50:17'),
(6, 'Placa base', 5, 0, 'Placa Base de elgato', '2020-12-13 18:51:45');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `componentes`
--
ALTER TABLE `componentes`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `componentes`
--
ALTER TABLE `componentes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
