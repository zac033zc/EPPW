-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2022 a las 21:56:36
-- Versión del servidor: 10.4.21-MariaDB-log
-- Versión de PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eppw`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos1`
--

CREATE TABLE `productos1` (
  `idproductos` int(11) NOT NULL,
  `nombre_productos` varchar(100) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `tipo_producto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos1`
--

INSERT INTO `productos1` (`idproductos`, `nombre_productos`, `cantidad`, `tipo_producto`) VALUES
(1, 'Coca-cola 2.5lt', 8, 'Refrescos'),
(3, 'Coca-cola 600ml', 24, 'Refrescos'),
(4, 'Mantecadas', 8, 'Pan'),
(5, 'Donitas espolvoreadas', 6, 'Pan'),
(6, 'Colchones', 10, 'Pan'),
(7, 'Triki-trakes', 5, 'Galletas'),
(8, 'Polvorones', 7, 'Galletas'),
(9, 'Principe', 12, 'Galletas'),
(10, 'Roma 500gr', 6, 'Jabones'),
(11, 'Blanca nieves', 12, 'Jabones'),
(12, 'Ace 600gr', 10, 'Jabones'),
(13, 'Roma 1kg', 5, 'Jabones'),
(14, 'Blanca Nieves 1kg', 10, 'Jabones'),
(15, 'Gansito 50gr', 4, 'Pan');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos1`
--
ALTER TABLE `productos1`
  ADD PRIMARY KEY (`idproductos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos1`
--
ALTER TABLE `productos1`
  MODIFY `idproductos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
