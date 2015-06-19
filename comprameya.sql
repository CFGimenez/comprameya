-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 12-06-2015 a las 18:44:26
-- Versión del servidor: 5.5.43
-- Versión de PHP: 5.4.39-0+deb7u2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `comprameya`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `descripcion`) VALUES
(1, 'vaqueros'),
(2, 'remeras'),
(3, 'chombas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto` varchar(250) NOT NULL,
  `cantidad` int(7) NOT NULL,
  `precio` decimal(7,2) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categoria` (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `producto`, `cantidad`, `precio`, `imagen`, `id_categoria`) VALUES
(1, 'Pepito, color: azul, talle: X/XL/L/M', 12, 200.00, 'imagen1.jpg', 1),
(2, 'Corte en V, color: negro, talle: X/L', 19, 50.00, 'imagen2.jpg', 2),
(3, 'Producto 3, color: negro, talle: X/L/M', 12, 330.00, 'imagen1.jpg', 1),
(7, 'modificado', 12, 123.00, 'imagen1.jpg', 1),
(8, 'prueba', 12, 123.00, 'imagen1.jpg', 1),
(13, 'aaaaaaaaa', 0, 1.00, 'imagen1.jpg', 1),
(14, 'aaaaaa', 1, 1.00, 'imagen1.jpg', 1),
(17, 'pepepepepepepepe1		', 123, 123.00, 'tito.jpg', 1),
(20, '												\r\n			pepe argento				\r\n			', 23, 234.00, 'wer', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `clave` varchar(120) NOT NULL,
  `privilegio` int(2) NOT NULL,
  `token` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`, `privilegio`, `token`) VALUES
(1, 'lodeale', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'alsndhifi94385o23khj4o38iu4o'),
(2, 'tito', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'aksuyf8a7dfwh89as7yd9w'),
(3, 'vane', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'asku68a7sda8gh3k23sf');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
