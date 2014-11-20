-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.0.45-community-nt - MySQL Community Edition (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para concesionario
DROP DATABASE IF EXISTS `concesionario`;
CREATE DATABASE IF NOT EXISTS `concesionario` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `concesionario`;


-- Volcando estructura para tabla concesionario.coche
DROP TABLE IF EXISTS `coche`;
CREATE TABLE IF NOT EXISTS `coche` (
  `id` int(4) NOT NULL auto_increment,
  `matricula` varchar(8) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(4) NOT NULL,
  `color` varchar(20) NOT NULL,
  `numCaballos` int(4) NOT NULL,
  `marchas` tinyint(4) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `matricula` (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla concesionario.coche: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `coche` DISABLE KEYS */;
INSERT INTO `coche` (`id`, `matricula`, `marca`, `modelo`, `color`, `numCaballos`, `marchas`) VALUES
	(1, 'zsc', 'zsc', 'asd', 'd', 3, 0),
	(2, 'AAA', 'ASDF', 'A', 'A', 12, 0),
	(3, 'NAHN', 'jkd', 'ksks', 'KDK', 4, 0),
	(4, ' vb', 'xv', 'vv', 'vv', 3, 0),
	(5, 'XYZ', 'FIAT', '2014', 'AMARILLO', 100, 0),
	(6, 'hahah', 'mamamam', '5606', 'VERDE', 23, 0);
/*!40000 ALTER TABLE `coche` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
