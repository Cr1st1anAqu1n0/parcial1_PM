-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-07-2020 a las 23:05:18
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_academico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `Nombre`) VALUES
(1, 'FISICA'),
(2, 'INFORMATICA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificador`
--

CREATE TABLE `identificador` (
  `id` int(11) NOT NULL,
  `ci` int(11) NOT NULL,
  `nombrecompleto` varchar(500) NOT NULL,
  `fechanac` date NOT NULL,
  `lugarrec` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `identificador`
--

INSERT INTO `identificador` (`id`, `ci`, `nombrecompleto`, `fechanac`, `lugarrec`) VALUES
(1, 8377413, 'AQUINO APAZA CRISTIAN HENRRY', '1996-12-03', 120),
(2, 8377412, 'AQUINO APAZA MILENKA CECILIA', '1994-11-28', 120),
(4, 9241044, 'ROJAS CANDELA ALEX ALBERTO', '1997-05-25', 508),
(5, 9286947, 'MATEU LUCENA NOEL CELSO', '1995-09-10', 629),
(6, 9471680, 'GUERRA PEIRO CIPRIANO HILARIO', '1997-04-27', 329),
(7, 8609464, 'APAZA ACEBO CARLOS ALBERTO', '1998-04-22', 784),
(8, 8591515, 'TICONA PEREZ MIGUEL', '1996-12-28', 713),
(9, 9166267, 'QUIROZ LOZA GIOVANNI', '1996-03-18', 958),
(10, 9135809, 'ORIHUELA TARQUINO RICHARD', '1995-02-12', 1488),
(11, 8501578, 'VILLCA TICONA RICHARD', '1997-05-12', 1517),
(12, 9328653, 'MONRROY LEMA DAYNOR', '1995-12-22', 1120),
(13, 9355083, 'MARTINEZ HERNANDEZ ALVARO', '1998-05-29', 1022),
(14, 8486269, 'IZURIETA ILLIMANI JUAN', '1997-09-24', 1673),
(15, 9397570, 'CASTAÑO FRIAS GLORIA RUFINA', '1997-11-08', 1849),
(16, 9863712, 'MONTOYA VEIGA ELENA JENIFER', '1995-09-07', 121);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `sigla` varchar(50) NOT NULL,
  `departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `nombre`, `sigla`, `departamento`) VALUES
(1, 'INTRODUCCION A FISICA', 'FIS-132', 1),
(2, 'INTRODUCCION A INFORMATICA', 'INF-111', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_identificador` int(11) NOT NULL,
  `nota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id`, `id_materia`, `id_identificador`, `nota`) VALUES
(1, 1, 1, 60),
(2, 1, 2, 42),
(3, 1, 3, 65),
(4, 1, 4, 45),
(5, 2, 5, 52),
(6, 2, 6, 80),
(7, 1, 9, 70),
(8, 2, 10, 51),
(9, 2, 11, 45),
(10, 1, 12, 76),
(11, 1, 13, 78),
(12, 2, 14, 67),
(13, 2, 15, 51),
(14, 1, 16, 54),
(15, 1, 7, 50),
(16, 2, 8, 80);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `ci` int(11) NOT NULL,
  `clave` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `ci`, `clave`) VALUES
(1, 8377413, 'abc123'),
(2, 9241044, 'abc123'),
(3, 9286947, 'abc123'),
(4, 8377412, 'abc123'),
(5, 9863712, 'abc123'),
(6, 9397570, 'abc123'),
(7, 8486269, 'abc123'),
(8, 9355083, 'abc123'),
(9, 9328653, 'abc123'),
(10, 8501578, 'abc123'),
(11, 9135809, 'abc123'),
(12, 9166267, 'abc123'),
(13, 8591515, 'abc123'),
(14, 8609464, 'abc123'),
(15, 9471680, 'abc123'),
(16, 9286947, 'abc123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `identificador`
--
ALTER TABLE `identificador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `identificador`
--
ALTER TABLE `identificador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
