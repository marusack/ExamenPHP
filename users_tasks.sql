-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2014 a las 03:33:35
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `users_tasks`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `user_id` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login_attempts`
--

INSERT INTO `login_attempts` (`user_id`, `name`, `time`) VALUES
('5', '', '1412988258'),
('5', '', '1412988264'),
('5', '', '1412988270'),
('5', '', '1412988276'),
('5', '', '1412988284'),
('5', '', '1412988562'),
('5', '', '1412989241'),
('5', '', '1412989266'),
('5', '', '1412989513'),
('5', '', '1412989599'),
('5', '', '1412989708'),
('5', '', '1412989761'),
('5', '', '1412989792'),
('5', '', '1412990168'),
('5', '', '1412990257');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `taskid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `estimated_time` int(11) NOT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`taskid`),
  KEY `Ref11` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`taskid`, `user_id`, `name`, `estimated_time`, `status`) VALUES
(1, 2, 'Analizar', 2, b'1'),
(2, 2, 'Morfar la galle', 3, b'0'),
(3, 5, 'nueva tarea 1', 0, b'0'),
(4, 5, 'prueba2', 0, b'0'),
(5, 5, 'prueba3', 0, b'0'),
(7, 5, 'prueba4', 0, b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `estado` enum('true','false','','') NOT NULL DEFAULT 'false',
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `name`, `estado`, `password`) VALUES
(2, 'Mariel', 'false', ''),
(3, 'Josie', 'false', ''),
(4, 'Laura', 'false', ''),
(5, 'maru', 'true', '8d57dfe7398336d6b9164b4d62b6b42b'),
(6, 'otro', 'false', '1c6bcd4e2b7bd75973d52207f63dbaa2');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `Refusers1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
