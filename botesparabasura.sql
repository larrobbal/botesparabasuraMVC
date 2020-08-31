-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-08-2020 a las 14:13:23
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
-- Base de datos: `botesparabasura`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `idCategoria` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nombreCategoria` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controlador_categoria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagenCategoria` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `idCategoria`, `nombreCategoria`, `controlador_categoria`, `imagenCategoria`) VALUES
(1, '10001', 'Botes para basura de plástico', 'botes-para-basura-de-plastico', 'thumbnail1'),
(2, '20001', 'Botes para basura de metal', 'botes-para-basura-de-metal', 'thumbnail2'),
(3, '30001', 'Botes de fibra de vidrio', 'botes-de-fibra-de-vidrio', 'thumbnail3'),
(4, '40001', 'Otros productos', 'otros-productos', 'thumbnail4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descripcion_producto`
--

CREATE TABLE `descripcion_producto` (
  `id` int(11) NOT NULL,
  `id_descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fk_idProducto` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linea` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acabado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calibre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capacidad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `colores` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anclaje` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaciado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `largoTotal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anchoTotal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `altoTotal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diametroTotal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `largoCont` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anchoCont` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `altoCont` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diametroCont` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `largoLetrero` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `altoLetrero` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adicional` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `descripcion_producto`
--

INSERT INTO `descripcion_producto` (`id`, `id_descripcion`, `fk_idProducto`, `descripcion`, `linea`, `acabado`, `material`, `calibre`, `capacidad`, `colores`, `anclaje`, `vaciado`, `largoTotal`, `anchoTotal`, `altoTotal`, `diametroTotal`, `largoCont`, `anchoCont`, `altoCont`, `diametroCont`, `largoLetrero`, `altoLetrero`, `adicional`, `imagen`) VALUES
(1, '﻿D00001', '18-UREC1M-AV', 'Los tablones de madera y polietileno reciclados le dan una apariencia natural, así como una dureza muy similar a la madera, pero con mayor duración y cero mantenimientos.', 'BMTEX', 'Acero: pintura electrostática con pretratamiento de fosfato de zinc. Madera y polietileno: apariencia madera natural.', 'Estructura y tapa en acero. Cuerpo en mezcla de madera y polietileno.', '16', '140.00', 'Amplia Variedad\r\n', 'Atornillar o anclar en cemento.', 'Tapa retirable y trampa para bolsas de plástico o colocar bote interior.', '68.5', '', '87', '', '', '', '', '', '', '', '', '18-UREC1M-AV'),
(2, 'D00002', '19-UREC2M-AV', 'Los tablones de madera y polietileno reciclados le dan una apariencia natural, así como una dureza muy similar a la madera, pero con mayor duración y cero mantenimientos.', 'BMTEX', 'Acero: pintura electrostática con pretratamiento de fosfato de zinc. Madera y polietileno: apariencia madera natural', 'Estructura y tapa en acero. Cuerpo en mezcla de madera y polietileno.', '16', '70.00', 'Amplia Variedad\r\n', 'Atornillar o anclar en cemento.', 'Cuenta con trampa para colocar bolsa de plástico.', '47', '25.6', '100', '', '41.5', '', '60.0', '', '', '', '', '19-UREC2M-AV'),
(3, 'D00003', '20-BSDTECM-AV', 'Los tablones de madera y polietileno reciclados le dan una apariencia natural, así como una dureza muy similar a la madera, pero con mayor duración y cero mantenimientos.', 'BMTEX', 'Acero: pintura electrostática con pretratamiento de fosfato de zinc. Madera y polietileno: apariencia madera natural', 'Estructura y tapa en acero. Cuerpo en mezcla de madera y polietileno.', '16', '260.00', 'Amplia Variedad\r\n', 'Atornillar o anclar en cemento.', 'Cada bote viene con trampa para bolsa de plástico.', '120', '', '160', '', '', '', '65.0', '49.0', '', '', '', '20-BSDTECM-AV'),
(4, 'D00004', '21-BUREC3M-AV', 'Los tablones de madera y polietileno reciclados le dan una apariencia natural, así como una dureza muy similar a la madera, pero con mayor duración y cero mantenimientos.', 'BMTEX', 'Acero: pintura electrostática con pretratamiento de fosfato de zinc. Madera y polietileno: apariencia madera natural', 'Estructura y tapa en acero. Cuerpo en mezcla de madera y polietileno.', '16', '80.00 ', 'Amplia Variedad\r\n', 'Atornillar o anclar en cemento.', '', '', '', '86', '49.0', '', '', '', '', '', '', '', '21-BUREC3M-AV'),
(5, 'D00005', '22-BML2C1-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '31.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento.', '', '38.5', '24.5', '84', '', '', '', '', '', '', '', '', '22-BML2C1-AV'),
(6, 'D00006', '23-BML2C2-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '62.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento.', '', '38.5', '44', '84', '', '', '', '', '', '', '', '', '23-BML2C2-AV'),
(7, 'D00007', '24-BML2C3-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '93.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento', '', '', '', '100', '', '', '24.5', '60.0', '', '', '', '', '24-BML2C3-AV'),
(8, 'D00008', '25-BML2G1-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '65.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento', '', '49', '30.5', '92.5', '', '', '', '', '', '', '', '', '25-BML2G1-AV'),
(9, 'D00009', '26-BML2G2-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '130.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento', '', '49', '54.5', '92.5', '', '', '', '', '', '', '', '', '26-BML2G2-AV'),
(10, 'D00010', '27-BML2G3-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '195.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento', '', '', '79', '100', '', '', '30.5', '60.0', '', '', '', '', '27-BML2G3-AV'),
(11, 'D00011', '28-BOUR15-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '94.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento', '', '55', '30', '100', '', '', '', '70.0', '', '', '', '', '28-BOUR15-AV'),
(12, 'D00012', '29-BURB14-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '60.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento', '', '42', '42', '135', '', '', '', '60.0', '', '', '', '', '29-BURB14-AV'),
(13, 'D00013', '30-BURB13-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '192.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento', '', '82.5', '', '85', '', '40.0', '', '60.0', '', '', '', '', '30-BURB13-AV'),
(14, 'D00014', '31-BAMAL2-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero al carbón y tubo', '16', '164.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento', '', '', '', '97', '43.0', '', '92.5', '60.0', '', '', '', '', '31-BAMAL2-AV'),
(15, 'D00015', '32-BAMAL1-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero al carbón y tubo', '16', '82.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento', '', '', '', '97', '43.0', '', '', '60.0', '', '', '', '', '32-BAMAL1-AV'),
(16, 'D00016', '33-MLTRGD-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '195.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento', '', '', '', '100', '', '', '', '60.0', '', '', '', '', '33-MLTRGD-AV'),
(17, 'D00017', '34-MLTRCH-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '93.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento', '', '', '', '100', '', '', '', '60.0', '', '', '', '', '34-MLTRCH-AV'),
(18, 'D00018', '35-MILTRI-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '183.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento.', '', '', '', '59', '36.0', '', '', '', '', '', '', '', '35-MILTRI-AV'),
(19, 'D00019', '36-NAPTRI-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '390.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento.', '', '177', '', '95', '', '', '', '65.0', '49.0', '', '', '', '36-NAPTRI-AV'),
(20, 'D00020', '37-SQUADR-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '130.00', 'Amplia Variedad\r\n', 'Atornillar, anclar en cemento o movible.', 'Trampa para colocar bolsa plástica o colocar interno.', '42', '42', '81', '', '', '', '', '', '', '', '', '37-SQUADR-AV'),
(21, 'D00021', '38-GRILLO-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '40.00', 'Amplia Variedad\r\n', 'Atornillar, anclar en cemento.', 'Tapa superior abatible, con trampa para bolsa.', '34', '47', '106', '', '', '', '', '', '', '', '', '38-GRILLO-AV'),
(22, 'D00022', '39-LINEA-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '80.00', 'Amplia Variedad\r\n', 'Atornillar, ahogar en cemento o movible.', 'Tapa superior abatible, con trampa para bolsa.', '', '', '80.5', '36.0', '', '', '', '', '', '', '', '39-LINEA-AV'),
(23, 'D00023', '40-SORREN-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '110.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento.', 'El bote cuenta con puerta con jaladera para sacar la basura (dentro del bote se puede colocar un bote de plástico o bolsa para contener residuos).', '47', '51', '100', '', '', '', '', '', '', '', '', '40-SORREN-AV'),
(24, 'D00024', '41-RVELLO-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '140.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento.', '', '', '', '91', '84.0', '', '', '', '51.0', '', '', '', '41-RVELLO-AV'),
(25, 'D00025', '42-BURANO-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento.', '', '51', '', '98', '', '', '', '59.0', '36.0', '', '', '', '42-BURANO-AV'),
(26, 'D00026', '43-BURDOB-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '122.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento', '', '97', '', '98', '', '', '', '59.0', '36.0', '', '', '', '43-BURDOB-AV'),
(27, 'D00027', '44-LIMA30-AV', 'Papelera metálica con doble protección contra óxido y corrosión.  Empotrable en pared con llave de acceso.', 'BMTEX', '', 'Metálico', '16', '30.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '', '', '', '', '', '', '47.5', '29.5', '', '', '', '44-LIMA30-AV'),
(28, 'D00028', '45-LIMADOB-AV', 'Papelera metálica con doble protección contra óxido y corrosión.  Empotrable en pared con llave de acceso.', 'BMTEX', '', 'Metálico', '16', '60.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '', '', '', '', '', '', '47.5', '29.5', '', '', '', '45-LIMADOB-AV'),
(29, 'D00029', '46-CAPRI-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', 'Tapa fija con bote abatible o tapa abatible con bote fijo.', '51', '', '111.2', '', '', '', '59.0', '36.0', '', '', '', '46-CAPRI-AV'),
(30, 'D00030', '47-CAPRIDB-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '122.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', 'Tapa fija con bote abatible o tapa abatible con bote fijo.', '100', '', '111.2', '', '', '', '59.0', '36.0', '', '', '', '47-CAPRIDB-AV'),
(31, 'D00031', '48-MURANO-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '50', '', '160', '', '', '', '59.0', '36.0', '42.0', '22.0', '', '48-MURANO-AV'),
(32, 'D00032', '49-MURADB-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '122.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '97', '', '160', '', '', '', '59.0', '36.0', '42.0', '22.0', '', '49-MURADB-AV'),
(33, 'D00033', '50-MILAN-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento. No incluye tubo.', '', '', '', '59', '36.0', '', '', '', '', '', '', '', '50-MILAN-AV'),
(34, 'D00034', '51-SIENA-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', 'Se recomienda abatible.', '45', '', '160', '', '', '', '59.0', '36.0', '42.0', '24.5', '', '51-SIENA-AV'),
(35, 'D00035', '52-SIENDB-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '122.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', 'Se recomienda abatible.', '97', '', '160', '', '', '', '59.0', '36.0', '42.0', '24.5', '', '52-SIENDB-AV'),
(36, 'D00036', '53-NAPOLI-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '130.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '64', '', '132', '', '', '', '65.0', '51.0', '', '', '', '53-NAPOLI-AV'),
(37, 'D00037', '54-NAPODB-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '260.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '123', '', '95', '', '', '', '65.0', '51.0', '', '', '', '54-NAPODB-AV'),
(38, 'D00038', '55- RIMINI-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '53', '', '135', '', '', '', '59.0', '36.0', '', '', '', '55- RIMINI-AV'),
(39, 'D00039', '56-PARMA-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '51', '', '98', '', '', '', '59.0', '36.0', '', '', '', '56-PARMA-AV'),
(40, 'D00040', '57-PLRMO-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '130.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '60', '', '92', '', '', '', '65.0', '51.0', '', '', '', '57-PLRMO-AV'),
(41, 'D00041', '58-SLRNO-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '130.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '64', '', '180', '', '', '', '65.0', '51.0', '54.0', '40.0', '', '58-SLRNO-AV'),
(42, 'D00042', '59-SLCIA-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '130.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '63', '', '160', '', '', '', '65.0', '51.0', '50.0', '20.0', '', '59-SLCIA-AV'),
(43, 'D00043', '60-SLCADB-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '260.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '121', '', '160', '', '', '', '65.0', '51.0', '50.0', '20.0', '', '60-SLCADB-AV'),
(44, 'D00044', '61-SLCTAP-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '130.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '63', '', '160', '', '', '', '65.0', '51.0', '50.0', '20.0', '', '61-SLCTAP-AV'),
(45, 'D00045', '62-SLDBTP-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '260.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '121', '', '160', '', '', '', '65.0', '51.0', '50.0', '20.0', '', '62-SLDBTP-AV'),
(46, 'D00046', '63-MDLUGD-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '65.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '49', '30.5', '92.5', '', '', '', '', '', '', '', '', '63-MDLUGD-AV'),
(47, 'D00047', '64-MDLUCH-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '31.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '38.5', '24.5', '84', '', '', '', '', '', '', '', '', '64-MDLUCH-AV'),
(48, 'D00048', '65-MLDBGD-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '130.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '49', '', '92.5', '54.5', '', '', '', '', '', '', '', '65-MLDBGD-AV'),
(49, 'D00049', '66-MLNDBCH-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '38.5', '', '84', '44.0', '', '', '', '', '', '', '', '66-MLNDBCH-AV'),
(50, 'D00050', '67-URBAN12-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '45', '', '112', '38.0', '', '', '', '', '', '', '', '67-URBAN12-AV'),
(51, 'D00051', '68-URBANI3-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'atornillar, ahogar en cemento o movible.', '', '', '', '61', '36.0', '', '', '', '37.5', '', '', 'Cenicero de 33.0 cm de diámetro', '68-URBANI3-AV'),
(52, 'D00052', '69-URBANI1-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'atornillar, ahogar en cemento o movible.', '', '', '', '61', '36.0', '', '', '', '', '', '', '', '69-URBANI1-AV'),
(53, 'D00053', '70-URBANI2-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '40', '', '100', '', '', '', '61.0', '36.0', '', '', '', '70-URBANI2-AV'),
(54, 'D00054', '71-LISBOA-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '51', '', '98', '', '', '', '59.0', '36.0', '', '', '', '71-LISBOA-AV'),
(55, 'D00055', '72-PISA1-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '130.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', 'tapa fija con bote abatible o tapa abatible con bote fijo.', '62', '', '110', '', '', '', '65.0', '51.0', '', '', '', '72-PISA1-AV'),
(56, 'D00056', '73-PIISADB-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '130.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', 'tapa fija con bote abatible o tapa abatible con bote fijo.', '120', '', '100', '', '', '', '65.9', '51.0', '', '', '', '73-PIISADB-AV'),
(57, 'D00057', '74-URBANI5-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '210.00', 'Amplia Variedad\r\n', 'atornillar, ahogar en cemento o movible.', '', '', '', '85.5', '56.0', '', '', '', '', '', '', '', '74-URBANI5-AV'),
(58, 'D00058', '75-URBANI6-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'atornillar, ahogar en cemento o movible.', '', '52', '', '135', '', '', '', '58.5', '36.0', '', '', '', '75-URBANI6-AV'),
(59, 'D00059', '76-BTINON1-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '42.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '', '', '127', '', '', '', '39.0', '37.0', '', '', '', '76-BTINON1-AV'),
(60, 'D00060', '77-BTINON2-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '84.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '', '', '127', '', '', '', '59.0', '49.0', '', '', '', '77-BTINON2-AV'),
(61, 'D00061', '78-URBANI7-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '40', '50', '120', '', '', '', '60.0', '36.0', '', '', '', '78-URBANI7-AV'),
(62, 'D00062', '79-URBANI8-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '100.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '46', '45', '90', '', '', '', '', '', '', '', '', '79-URBANI8-AV'),
(63, 'D00063', '80-URBANI9-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '70.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '61', '37', '100', '', '46.0', '35.0', '60.0', '', '', '', '', '80-URBANI9-AV'),
(64, 'D00064', '81-URBAN10-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '30.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '', '30', '80', '', '', '', '', '', '', '', '', '81-URBAN10-AV'),
(65, 'D00065', '82-URBAN11-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '140.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '83', '44', '90', '', '42.0', '', '60.0', '', '', '', '', '82-URBAN11-AV'),
(66, 'D00066', '83-RVLLO2-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '100.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '', '', '90', '60.0', '', '', '75.0', '42.0', '', '', '', '83-RVLLO2-AV'),
(67, 'D00067', '84-VIA1-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '85.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '72.9', '', '150', '', '57.0', '30.0', '50.0', '', '', '', '', '84-VIA1-AV'),
(68, 'D00068', '85-DB3660-AV', 'Con doble cilindro ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '', 'Amplia Variedad\r\n', 'Poste para anclaje o atornillar al piso', '', '', '', '', '', '', '', '60.0', '36.0', '', '', '\"Poste de 2\"\" de diámetro y 120.0 cm de alto\"', '85-DB3660-AV'),
(69, 'D00069', '86-S3660-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '', 'Amplia Variedad\r\n', 'Poste para anclaje o atornillar al piso', '', '', '', '', '', '', '', '60.0', '36.0', '', '', '\"Poste de 2\"\" de diámetro y 120.0 cm de alto\"', '86-S3660-AV'),
(70, 'D00070', '87-PACHDB-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '122.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '', '', '120', '', '', '', '60.0', '36.0', '', '', '', '87-PACHDB-AV'),
(71, 'D00071', '88-PACHSN-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'atornillar o ahogar en cemento.', '', '', '', '120', '', '', '', '60.0', '36.0', '', '', '', '88-PACHSN-AV'),
(72, 'D00072', '89-BRCNAR-AV', 'Papelera metálica con doble protección contra óxido y corrosión.  Con llave de acceso con area para letrero.', 'BMTEX', '', 'Metálico', '16', '80.00', 'Amplia Variedad\r\n', 'Al piso ', '', '66', '45', '188', '', '', '', '', '', '', '', '', '89-BRCNAR-AV'),
(73, 'D00073', '90-BRCNRC-AV', 'Juego de papeleras metálicas con protección contra óxido y corrosión. Con llave de acceso con area para letrero.', 'BMTEX', '', 'Metálico', '16', '160.00', 'Amplia Variedad\r\n', 'Al piso ', '', '119', '46', '173.5', '', '', '', '', '', '', '', 'Con contenedor de Polietileno', '90-BRCNRC-AV'),
(74, 'D00074', '91-BRC80CL-AV', 'Papelera metálica con protección contra óxido y corrosión. Con llave de acceso con area para letrero.', 'BMTEX', '', 'Metálico', '16', '80.00', 'Amplia Variedad\r\n', 'Al piso ', '', '61.7', '46', '180', '', '', '', '', '', '46.0', '48.6', 'Con contenedor de Polietileno', '91-BRC80CL-AV'),
(75, 'D00075', '92-BRCNA80-AV', 'Papelera metálica con protección contra óxido y corrosión. Con llave de acceso.', 'BMTEX', '', 'Metálico', '16', '80.00', 'Amplia Variedad\r\n', '', '', '61.7', '46', '180', '', '', '', '', '', '', '', 'Con contenedor de Polietileno', '92-BRCNA80-AV'),
(76, 'D00076', '93-MRCNDIS-AV', ' ', 'BMTEX', 'Pintura electrostática con pretratamiento de fosfato de zinc.', 'Acero', '16', '61.00', 'Amplia Variedad\r\n', 'Atornillar o ahogar en cemento.', '', '50', '', '210', '', '', '', '59.0', '36.0', '42.0', '22.0', 'Con disco de 38.0 cm de diámetro', '93-MRCNDIS-AV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `idProducto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fk_idSubcategoria` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nombreProducto` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagenProducto` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `idProducto`, `fk_idSubcategoria`, `nombreProducto`, `imagenProducto`) VALUES
(1, '18-UREC1M-AV', '205', 'BOTE DE BASURA CON MADERA URBANI ECO 1M', '18-UREC1M-AV'),
(2, '19-UREC2M-AV', '205', 'BOTE PARA BASURA CON PLASTIMADERA URBANI ECO 2M', '19-UREC2M-AV'),
(3, '20-BSDTECM-AV', '205', 'BOTE PARA BASURA CON MADERA SILICIA DOBLE CON TAPA ECO M', '20-BSDTECM-AV'),
(4, '21-BUREC3M-AV', '205', 'BOTE PARA BASURA CON PLASTIMADERA URBANI ECO 3M', '21-BUREC3M-AV'),
(5, '22-BML2C1-AV', '205', 'BOTE PARA BASURA METALICO MEDIA LUNE 2 CHICO SENCILLO', '22-BML2C1-AV'),
(6, '23-BML2C2-AV', '205', 'BOTE PARA BASURA METALICO MEDIA LUNE 2 CHICO DOBLE', '23-BML2C2-AV'),
(7, '24-BML2C3-AV', '205', 'BOTE PARA BASURA METALICO MEDIA LUNE 2 CHICO TRIPLE', '24-BML2C3-AV'),
(8, '25-BML2G1-AV', '205', 'BOTE PARA BASURA METALICO MEDIA LUNE 2 GRANDE SENCILLO', '25-BML2G1-AV'),
(9, '26-BML2G2-AV', '205', 'BOTE PARA BASURA METALICO MEDIA LUNE 2 GRANDE DOBLE', '26-BML2G2-AV'),
(10, '27-BML2G3-AV', '205', 'BOTE PARA BASURA METALICO MEDIA LUNE 2 GRANDE TRIPLE', '27-BML2G3-AV'),
(11, '28-BOUR15-AV', '205', 'BOTE PARA BASURA METALICO URBANI 15', '28-BOUR15-AV'),
(12, '29-BURB14-AV', '205', 'BOTE PARA BASURA METALICO URBANI 14', '29-BURB14-AV'),
(13, '30-BURB13-AV', '205', 'BOTE PARA BASURA METALICO URBANI 13', '30-BURB13-AV'),
(14, '31-BAMAL2-AV', '205', 'CONTENEDOR PARA BASURA ORGANICO E INORGANICO AMALFI DOBLE', '31-BAMAL2-AV'),
(15, '32-BAMAL1-AV', '205', 'CONTENEDOR PARA BASURA PARA EXTERIOR AMALFI', '32-BAMAL1-AV'),
(16, '33-MLTRGD-AV', '205', 'CONTENEDOR PARA EXTERIOR METALICO MEDIA LUNE TRIPLE GRANDE', '33-MLTRGD-AV'),
(17, '34-MLTRCH-AV', '205', 'CONTENEDOR PARA EXTERIOR METALICO MEDIA LUNE TRIPLE CHICO', '34-MLTRCH-AV'),
(18, '35-MILTRI-AV', '205', 'CONTENEDOR PARA EXTERIOR METALICO MILAN TRIPLE', '35-MILTRI-AV'),
(19, '36-NAPTRI-AV', '205', 'CONTENEDOR PARA EXTERIOR METALICO NAPOLI TRIPLE', '36-NAPTRI-AV'),
(20, '37-SQUADR-AV', '205', 'CONTENEDOR PARA EXTERIOR METALICO SQUADRA', '37-SQUADR-AV'),
(21, '38-GRILLO-AV', '205', 'CONTENEDOR DE BASURA METALICO GRILLO', '38-GRILLO-AV'),
(22, '39-LINEA-AV', '205', 'CONTENEDOR PARA DESECHOS METALICO LINEA', '39-LINEA-AV'),
(23, '40-SORREN-AV', '205', 'BOTE DE BASURA METALICO SORRETO', '40-SORREN-AV'),
(24, '41-RVELLO-AV', '205', 'BOTE DE BASURA METALICO RAVELLO', '41-RVELLO-AV'),
(25, '42-BURANO-AV', '205', 'BOTE DE BASURA EN ACERO BURANO', '42-BURANO-AV'),
(26, '43-BURDOB-AV', '205', 'BOTES PARA EXTERIOR METALICO BURANO DOBLE', '43-BURDOB-AV'),
(27, '44-LIMA30-AV', '205', 'BOTE PARA EXTERIOR METALICO LIMA-30', '44-LIMA30-AV'),
(28, '45-LIMADOB-AV', '205', 'BOTE PARA BASURA DE ACERO LIMA-30 DOBLE', '45-LIMADOB-AV'),
(29, '46-CAPRI-AV', '205', 'BOTE PARA EXTERIOR METALICO CAPRI', '46-CAPRI-AV'),
(30, '47-CAPRIDB-AV', '205', 'BOTES PARA EXTERIOR METALICO CAPRI DOBLE', '47-CAPRIDB-AV'),
(31, '48-MURANO-AV', '205', 'BOTE DE BASURA PARA PARQUE MURANO', '48-MURANO-AV'),
(32, '49-MURADB-AV', '205', 'BOTE PARA PARQUE METALICO MURANO DOBLE', '49-MURADB-AV'),
(33, '50-MILAN-AV', '205', 'BOTE PARA BASURA DE ACERO MILAN', '50-MILAN-AV'),
(34, '51-SIENA-AV', '205', 'BOTE PARA BASURA DE ACERO SIENA', '51-SIENA-AV'),
(35, '52-SIENDB-AV', '205', 'BOTES DE BASURA PARA PARQUES SIENA DOBLE', '52-SIENDB-AV'),
(36, '53-NAPOLI-AV', '205', 'BOTE DE BASURA PARA JARDIN NAPOLI', '53-NAPOLI-AV'),
(37, '54-NAPODB-AV', '205', 'BOTES PARA BASURA DE ACERO NAPOLI DOBLE', '54-NAPODB-AV'),
(38, '55- RIMINI-AV', '205', 'BOTE PARA BASURA DE METAL RIMINI', '55- RIMINI-AV'),
(39, '56-PARMA-AV', '205', 'CONTENEDOR DE BASURA DE METAL PARMA', '56-PARMA-AV'),
(40, '57-PLRMO-AV', '205', 'CONTENEDOR DE BASURA DE ACERO PALERMO', '57-PLRMO-AV'),
(41, '58-SLRNO-AV', '205', 'CONTENEDOR DE BAURA PARA PARQUE SALERNO', '58-SLRNO-AV'),
(42, '59-SLCIA-AV', '205', 'CONTENEDOR PARA BASURA DE PARQUES SILICIA', '59-SLCIA-AV'),
(43, '60-SLCADB-AV', '205', 'CONTENEDORES PARA BASURA SILICIA DOBLE', '60-SLCADB-AV'),
(44, '61-SLCTAP-AV', '205', 'CONTENEDOR PARA BASURA DE METAL SILICIA CON TAPA', '61-SLCTAP-AV'),
(45, '62-SLDBTP-AV', '205', 'CONTENEDORES DE ACERO SILICIA DOBLE CON TAPA', '62-SLDBTP-AV'),
(46, '63-MDLUGD-AV', '205', 'CONTENEDOR PARA BASURA MEDIA LUNE GRANDE', '63-MDLUGD-AV'),
(47, '64-MDLUCH-AV', '205', 'CONTENEDOR PARA BASURA MEDIA LUNE CHICO', '64-MDLUCH-AV'),
(48, '65-MLDBGD-AV', '205', 'CONTENEDORES DE METAL PARA BASURA MEDIA LUNE DOBLE GRANDE', '65-MLDBGD-AV'),
(49, '66-MLNDBCH-AV', '205', 'CONTENEDORES PARA BASURA PARA JARDIN MEDIA LUNE DOBLE CHICO', '66-MLNDBCH-AV'),
(50, '67-URBAN12-AV', '205', 'CONTENEDOR DE BASURA PARA PARQUE URBANI 12', '67-URBAN12-AV'),
(51, '68-URBANI3-AV', '205', 'CONTENEDOR CON CENICERO PARA PARQUE URBANI 3', '68-URBANI3-AV'),
(52, '69-URBANI1-AV', '205', 'CONTENEDOR METALICO PARA EXTERIOR URBANI 1', '69-URBANI1-AV'),
(53, '70-URBANI2-AV', '205', 'CONTENEDOR DE ACERO PARA BASURA URBANI 2', '70-URBANI2-AV'),
(54, '71-LISBOA-AV', '205', 'CONTENEDOR PARA BASURA DE PARQUES LISBOA', '71-LISBOA-AV'),
(55, '72-PISA1-AV', '205', 'CONTENEDOR DE BASURA DE ACERO PISA', '72-PISA1-AV'),
(56, '73-PIISADB-AV', '205', 'CONTENEDORES PARA EXTERIOR PISA DOBLE', '73-PIISADB-AV'),
(57, '74-URBANI5-AV', '205', 'CONTENEDOR PARA EXTERIOR URBANI 5', '74-URBANI5-AV'),
(58, '75-URBANI6-AV', '205', 'BOTE PARA BASURA DE ACERO URBANI 6', '75-URBANI6-AV'),
(59, '76-BTINON1-AV', '205', 'BOTE DE METAL PARA BASURA IN-ON 1', '76-BTINON1-AV'),
(60, '77-BTINON2-AV', '205', 'BOTE PARA BASURA DE MUNICIPIOS IN-ON 2', '77-BTINON2-AV'),
(61, '78-URBANI7-AV', '205', 'CONTENEDOR PARA BASURA DE ACERO URBANI 7', '78-URBANI7-AV'),
(62, '79-URBANI8-AV', '205', 'CONTENEDOR DE BASURA URBANI 8', '79-URBANI8-AV'),
(63, '80-URBANI9-AV', '205', 'CONTENEDOR DE BASURA METALICO URBANI 9', '80-URBANI9-AV'),
(64, '81-URBAN10-AV', '205', 'CONTENEDOR DE ACERO PARA BASURA URBANI 10', '81-URBAN10-AV'),
(65, '82-URBAN11-AV', '205', 'CONTENEDORES DE BASURA DE ACERO URBANI 11', '82-URBAN11-AV'),
(66, '83-RVLLO2-AV', '205', 'BOTE PARA BASURA DE METAL RAVELLO 2', '83-RVLLO2-AV'),
(67, '84-VIA1-AV', '205', 'CONTENEDOR METALICO PARA EXTERIOR VIA ', '84-VIA1-AV'),
(68, '85-DB3660-AV', '205', 'CONTENEDORES PARA EXTERIOR PARQUE DOBLE', '85-DB3660-AV'),
(69, '86-S3660-AV', '205', 'CONTENEDOR DE ACERO PARQUE SENCILLO', '86-S3660-AV'),
(70, '87-PACHDB-AV', '205', 'CONTENEDOR PARA EXTERIOR PACHUCA DOBLE', '87-PACHDB-AV'),
(71, '88-PACHSN-AV', '205', 'CONTENEDOR METALICO PACHUCA SENCILLO', '88-PACHSN-AV'),
(72, '89-BRCNAR-AV', '205', 'BOTE PARA BASURA DE METAL BARCELONA SENCILLO CON ARCO', '89-BRCNAR-AV'),
(73, '90-BRCNRC-AV', '205', 'BOTE PARA BASURA DE METAL BARCELONA DOBLE ORGANICO E INORGANICO', '90-BRCNRC-AV'),
(74, '91-BRC80CL-AV', '205', 'BOTE PARA BASURA DE METAL BARCELONA 80 LT CON SE?ALIZACI?N', '91-BRC80CL-AV'),
(75, '92-BRCNA80-AV', '205', 'BOTE PARA BASURA DE METAL BARCELONA 80 LT', '92-BRCNA80-AV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoria`
--

CREATE TABLE `subcategoria` (
  `id` int(11) NOT NULL,
  `idSubcategoria` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fk_idCategoria` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nombreSubcategoria` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controlador_subcategoria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagenSubcategoria` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `subcategoria`
--

INSERT INTO `subcategoria` (`id`, `idSubcategoria`, `fk_idCategoria`, `nombreSubcategoria`, `controlador_subcategoria`, `imagenSubcategoria`) VALUES
(1, '101', '10001', 'Contenedores de plástico grandes', 'contenedores-de-plastico-grandes', '10001101'),
(2, '102', '10001', 'Botes de plástico chicos', 'botes-de-plastico-chicos', '10001102'),
(3, '103', '10001', 'Botes ecológicos', 'botes-ecologicos', '10001103'),
(4, '104', '10001', 'Botes para residuos biológicos', 'botes-para-residuos-biologicos', '10001104'),
(5, '105', '10001', 'Botes para basura con pedal', 'botes-para-basura-con-pedal', '10001105'),
(6, '106', '10001', 'Carros barrenderos', 'carros-barrenderos', '10001106'),
(7, '107', '10001', 'Contenedores para pilas', 'contenedores-para-pilas', '10001107'),
(8, '108', '10001', 'Estaciones de reciclaje', 'estaciones-de-reciclaje', '10001108'),
(9, '109', '10001', 'Contenedores para desechos caninos', 'contenedores-para-desechos-caninos', '10001109'),
(10, '201', '20001', 'Cestos chicos de acero inoxidable', 'cestos-chicos-de-acero-inoxidable', '20001201'),
(11, '202', '20001', 'Botes de acero inoxidable', 'botes-de-acero-inoxidable', '20001202'),
(12, '203', '20001', 'Botes ecológicos en acero inoxidable', 'botes-ecologicos-en-acero-inoxidable', '20001203'),
(13, '204', '20001', 'Botes con pedal en acero inoxidable', 'botes-con-pedal-en-acero-inoxidable', '20001204'),
(14, '205', '20001', 'Contenedores metálicos para exterior', 'contenedores-metalicos-para-exterior', '20001205'),
(15, '206', '20001', 'Contenedore metálicos grandes', 'contenedores-metalicos-grandes', '20001206'),
(16, '207', '20001', 'Contenedores para Fast Food', 'contenedores-para-fast-food', '20001207'),
(17, '208', '20001', 'Ceniceros y portaextintores', 'ceniceros-portaextintores', '20001208'),
(18, '401', '40001', 'Mobiliario urbano', 'mobiliario-urbano', '40001401'),
(19, '402', '40001', 'Señalamiento vial', 'señalamiento-vial', '40001402'),
(20, '403', '40001', 'Productos de contingencia', 'productos-contingencia', '40001403'),
(21, '404', '40001', 'Pallets y tarimas', 'pallets-tarimas', '40001404'),
(22, '301', '30001', 'Botes de fibra de vidrio', 'botes-fibra-de-vidrio', '30001301');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`,`idCategoria`),
  ADD UNIQUE KEY `idCategoria` (`idCategoria`);

--
-- Indices de la tabla `descripcion_producto`
--
ALTER TABLE `descripcion_producto`
  ADD PRIMARY KEY (`id`,`id_descripcion`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`,`idProducto`),
  ADD UNIQUE KEY `idProducto` (`idProducto`),
  ADD KEY `fk_subcategoria` (`fk_idSubcategoria`);

--
-- Indices de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD PRIMARY KEY (`id`,`idSubcategoria`),
  ADD UNIQUE KEY `idSubcategoria` (`idSubcategoria`),
  ADD KEY `fk_categoria` (`fk_idCategoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `descripcion_producto`
--
ALTER TABLE `descripcion_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_subcategoria` FOREIGN KEY (`fk_idSubcategoria`) REFERENCES `subcategoria` (`idSubcategoria`);

--
-- Filtros para la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD CONSTRAINT `fk_categoria` FOREIGN KEY (`fk_idCategoria`) REFERENCES `categoria` (`idCategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
