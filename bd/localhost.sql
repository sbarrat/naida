-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 05-04-2013 a las 11:35:57
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `naida`
-- 
CREATE DATABASE `naida` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `naida`;

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `bajas`
-- 

CREATE TABLE `bajas` (
  `id` int(11) NOT NULL auto_increment,
  `idproducto` int(11) NOT NULL default '0',
  `motivo` varchar(50) NOT NULL default '',
  `referencia` varchar(20) NOT NULL default '',
  `descripcion` varchar(100) NOT NULL default '',
  `fecha` date NOT NULL default '0000-00-00',
  `unidades` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Bajas de productos y su motivo' AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `bajas`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `clientes`
-- 

CREATE TABLE `clientes` (
  `id` int(5) NOT NULL auto_increment,
  `Nombre` varchar(255) NOT NULL default '',
  `Apellidos` varchar(255) NOT NULL default '',
  `Direccion` varchar(255) NOT NULL default '',
  `cp` varchar(6) NOT NULL default '',
  `telefono` varchar(20) NOT NULL default '',
  `movil` varchar(20) NOT NULL default '',
  `web` varchar(50) NOT NULL default '',
  `mail` varchar(50) NOT NULL default '',
  `ciudad` varchar(50) NOT NULL default '',
  `provincia` varchar(200) NOT NULL default '',
  `fax` varchar(50) NOT NULL default '',
  `nif` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1105 ;

-- 
-- Volcar la base de datos para la tabla `clientes`
-- 

INSERT INTO `clientes` VALUES (1, 'Carmen', 'Abad', 'P° Sagasta, 72-7° Dcha.', '50006', '976 370 663', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (2, 'María Jesús', 'Abad', 'Pablo Ruiz Picasso, 35- 8° Dcha.', '50018', '', '620 229 156', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (3, 'Mirian', 'Abad', 'P° Damas, 17 -3° Dcha.', '50006', '976 227 356', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (4, 'Rosario', 'Abadia', 'C/ Lepanto, 22 -1°', '44570', '978 846 643', '', '', '', 'CALANDA', '(Teruel)', '', '');
INSERT INTO `clientes` VALUES (5, 'Teresa', 'Abadia', 'c/ Ramón y Cajal, 1', '50678', '', '', '', '', 'UNCASTILLO', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (6, 'Esperanza', 'Abadia', 'P° María Agustín., 39-7°C', '50004', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (7, 'María', 'Abizanda Faijes', 'C/ Arzobispo Morcillo, 31 Casa 58', '50006', '976 380 510', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (8, 'Ma. Carmen', 'Abos', 'Rosalia de Castro, 15- 1°C', '50018', '976 524 392', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (9, 'Cristina', 'Acedo', 'Residencial Paraiso, 2 Escl. D- 5° D', '50008', '976 215 853', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (10, 'Begoña', 'Agón', 'Avda. Gómez Laguna, 19-9° A', '50009', '976 566 456', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (11, 'Silvia', 'Agorreta', 'Condes de Gabarda, 5', '31512', '948 82 62 87', '', '', '', 'FONTELLAS', '(Navarra)', '', '');
INSERT INTO `clientes` VALUES (12, 'Maria Teresa', 'Aguerri', 'Cereros, 43 - 4° B', '50003', '976 43 79 18', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (13, 'Marina', 'Alaguero Hernández', 'C/ Monreal, 24 -3° D', '50002', '976 201 278', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (14, 'María Jesús', 'Alastuey', 'Avda. Gómez Laguna, 5- 1° A', '50009', '976 354944', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (15, 'Beatriz', 'Alastuey', 'C/ Santa Teresa, 29-35, Escl. 1a - 5°C', '50006', '976 351 393', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (16, 'Pilar', 'Albas', 'Condes de Aragón, 11 Puerta A 3° Izda.', '50009', '976 55 69 48', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (17, 'Ana Isabel', 'Albericio', 'c/ Cortes de Aragón, 1-4°', '50500', '976 643 035', '', '', '', 'TARAZONA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (18, 'Mayte', 'Albert', 'Avda. Juan Pablo II, 7- 3° A', '50009', '976 758 351', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (19, 'Angelines', 'Alcoceba', 'P° Teruel, 26-28 Casa 3, 1° A', '50004', '976 225 577', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (20, 'Begoña', 'Alda', 'Matilde Sangüesa, 1- 4°-A', '50014', '976 390 416', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (21, 'Mabel', 'Aldea', 'Av. Gómez Laguna, 22 -10 H, 1° Escl.', '50009', '976 751 587', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (22, 'María Asunción', 'Alfaro', 'Menendez Pidal, 7-7°', '50009', '976 357 169', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (23, 'María Pilar', 'Aliaga', 'Sta. Barbara, 5- 1a Escl. 2° B', '50430', '976 123 038', '', '', '', 'MARIA DE HUERVA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (839, 'Mª PILAR', 'SARROCA', 'AVDA. CESAREO ALIERTA Nº 6-7º DC HA.', '50008', '', '676-637907', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (25, 'María Pilar', 'Almenara', 'C/ Sagrada Familia, 3 - Escl. 3- 4° A', '50012', '976 565 983', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (26, 'María Angeles', 'Alonso', 'Av. Cesario Alierta, 15- 5° E', '50008', '976 493 272', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (27, 'María Jesús', 'Altaba', 'c/ Pedro María Ric, 6 -1° B', '50008', '976 212 625', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (28, 'Pilar', 'Alvarez', 'Avda. Clave, 29- Bloque 7- 3° Dcha.', '50004', '976 283 574', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (29, 'Carmen', 'Amigot', 'Parque Roma, D-2-6° B', '50010', '976 322 331', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (30, 'María Luisa', 'Amorós Cortés', 'c/ Hernán Cortés, 10- 7° Dcha.', '50004', '976 226 527', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (31, 'Lourdes', 'Andres', 'C/. Gran Vía, 22 - 4° B', '50005', '976 237   442', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (32, 'María', 'Andreu', 'C/ Coso, 140- 4° B', '50002', '976 392 335', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (33, 'Marisa', 'Aparicio', 'Rafael Alberti, 11-7°C', '50015', '976 516 872', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (34, 'María Angeles', 'Aparicio', 'C/. Alfonso I, 23- 2° Izda.', '50003', '976 39 71 37', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (35, 'Olga', 'Aragües Giménez', 'Eugenio Lucas, 40-7° A "Parque Goya"', '50015', '', '600441650', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (36, 'Ma. Carmen', 'Aranda', 'Gran Vía, 35- 6° Izda.', '50006', '976 220 713', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (37, 'María Pilar', 'Aranda', 'C/ La Salina, 1 -1° B', '50003', '976 434 949', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (38, 'Arancha', 'Arbeloa', 'C/ Maestre Racional, 13 -Casa 7', '50009', '976 562 800', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (39, 'Conchita', 'Arego', 'C/ Francisco Vitoria, 19-3°A', '50008', '976 213 476', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (40, 'María Pilar', 'Arenaz', 'c/ Madre Vedruna, 11- 4° Izda.', '50008', '976 218 389', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (41, 'Covadonga', 'Arralde', 'C/ Padre Claret, 20 -5° D', '26004', '941 251 958', '', '', '', 'LOGROÑO', '', '', '');
INSERT INTO `clientes` VALUES (888, 'CARMEN', 'LOZANO', 'C/ JUAN CABEZA. PARCELA Nº 8', '50400', '976- 620964', '', '', '', 'CARIÑENA', '( ZARAGOZA )', '', '');
INSERT INTO `clientes` VALUES (43, 'Celia', 'Arraz', 'Avda. de Madrid 285- 4°B', '50017', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (44, 'Ana', 'Arrieta', 'Rafael Alberti, 12- 3° B', '50018', '976 527 283', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (45, 'Reyes', 'Arrondo', 'Avda. Alcalde Saiz de Varanda, 24 -12° A', '50009', '976 756 469', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (46, 'Belen', 'Arroyo', 'Ibón de Trigoniero, 10 Casa 25 Urb. La Robleda', '50011', '976 30 70 60', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (47, 'María', 'Arteabaro', 'C/ Infantes de España, 8 Casa 37', '50012', '976 350 484', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (49, 'Beatriz', 'Artiaga', 'C/ Ramón y Cajal 36,3º B', '50004', '976 205 051', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (50, 'María Angeles', 'Artigas', 'P° Constitución, 18 -3° B', '50008', '976 235 969', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (51, 'María Carmen', 'Artígas', 'Pl. de Roma, F1- 5° J', '50010', '976 32 41 19', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (52, 'Begoña', 'Asensio', 'Avda. Juan Pablo II, 68-2° A', '50008', '976 750 161', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1072, 'Adela', 'Navarro', 'Fernando el Catolico Nº 64- 3º Dcha.', '50009', '976- 559871', '661- 382866', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (54, 'Nieves', 'Asín', 'San Juan de la Cruz, 2 -5° Izda.', '50006', '976 552 664', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (55, 'María Luisa', 'Ayerbe', 'P° Pamplona, 2 -8° C', '50004', '976 232 935', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (56, 'Gemma', 'Azaceta', 'Avda.  La Ilustración, 25 Casa 126 C', '50012', '976 756 325', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (57, 'Mercedes', 'Aznar', 'Gran Vía, 32 Pral. Izda.', '50005', '976 215 546', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (58, 'María José', 'Aznar', 'c/ Canfranc, 22 -11°', '50004', '976 226 348', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (59, 'Amparo', 'Azuara', 'C/ Santa Teresa, 19- 3° C', '50006', '976 352 101', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (60, 'Ana', 'Bailo Nuez', 'San Ignacio de Loyola, 6- 3° Dcha.', '50008', '976 21 24 50', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (61, 'Elena', 'Bara', 'c/ Laguna de Rins, 3 -6° Dcha.', '50005', '976 219 875', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (62, 'Blanca', 'Bascuas', 'C°  De Las Torres, 19 -3° C', '50008', '976 419 374', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (63, 'Lorena', 'Basols', 'Residencial Paraiso, 3-Escl. F 1°B', '50008', '976 210 115', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (64, 'María Carmen', 'Bautista', 'C/.Río Guadalquivir, 5- 4° G', '44003', '978 61 23 68', '', '', '', 'TERUEL', '', '', '');
INSERT INTO `clientes` VALUES (65, 'Nieves', 'Bayona', 'Vía Hispanidad, 106 -2° C', '50017', '976 31 49 01', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (66, 'Teresa', 'Bayona', 'Franco y López, 5', '50005', '976 55 89 76', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (67, 'María José', 'Beamonte', 'Andador de Luis Puentes, 4 -6° C', '50008', '976 596 274', '606 320 205', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (68, 'María José', 'Becana', 'C/ San Ignacio de Loyola, 9-6° D', '50008', '976 228 141', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (69, 'María Pilar', 'Beisti', 'Dato, 13-15- 5º izda.', '50005', '976-234500', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (70, 'María Pilar', 'Bellod', 'P° de la Constitución, 11- 4° C', '50001', '976 218 087', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (71, 'Inmaculada', 'Bellod', 'Avda. Cesar Augusto, 5 Escl. 1a - 2° B', '50004', '', '636 360 023', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (72, 'Primi', 'Bellosta', 'Parque Roma, Bloque I, 1-3°B', '50010', '976 328 888', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (73, 'Pilar', 'Benito', ' Alcalde Sainz de Varanda, 28 -4°B', '50009', '976 755 822', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1049, 'Rosa', 'Chueca', 'Lagos de Coronas Nº 47 Esca. 3- 6º C', '50011', '', '655- 771346', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (75, 'Encarna', 'Berbegal', 'Avda. Saiz de Varanda, 26-7°B', '50009', '976 758 061', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (76, 'Ana', 'Berdala', 'C/ Goya, 1- 5° Izda.', '50006', '976 254 595', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (77, 'Maria Eugenia', 'Berganzo García', 'Almagro, 11-13 - 3° C', '50004', '976 22 90 44', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (967, 'Mª Pilar', 'Villalba', 'Avda. de Navarra Nº 40- 3º A', '50010', '976- 330193', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (79, 'Pilar', 'Berna', 'Vía Hispanidad, 30 -8° A', '50008', '976 750 313', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (80, 'Silvia', 'Bernabe', 'C/ Luis Pomarón, 15- 4° C', '50008', '976 486 212', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (81, 'Juana', 'Bernad', 'Dr. Aznar Molina, 19- 3° E', '50002', '976 293 778', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (82, 'Matilde', 'Bernal', 'c/ Asín y Palacios, 30- 2° B', '50009', '976 566 164', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (83, 'Carmen', 'Bernal', 'c/. Fco. Vitoria, 27 -5° B', '50008', '976 219 590', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (84, 'María Jesús', 'Bernal Mainar', 'Avda. Gomez Laguna,32-12B', '50009', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (85, 'Teresa', 'Bernar', 'Ntra. Sra. del Pilar, 38 Dpld.', '50720', '', '680 442 937', '', '', 'LA CARTUJA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (86, 'Marta', 'Bertol', 'C/Barrionuevo, 5', '50639', '976 656 146', '', '', '', 'FIGUERUELAS', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (87, 'Teresa', 'Bespin', 'Tenor Fleta, 60- 9° D', '50007', '976 251532', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (88, 'María Andresa', 'Biesa Garde', 'C/. Del Rosario, 14', '50294', '976 607 806', '', '', '', 'LUCENA DE JALON', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (90, 'Marta', 'Biota Pérez', 'c/ Fuenterravía, 3-6° D', '50004', '976 438 340', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (91, 'Rosa Isabel', 'Bisbal Felez', 'c/ Carlos Saura, 11- 3° C', '50018', '976 741 973', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (92, 'Elena', 'Biscarri', 'Casa Jiménez, 8 -4° Izda.', '50004', '976 211 651', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (93, 'Rosaura', 'Blanc', 'P° Longares, 1 - 5° B', '50014', '976 47 48 52', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (94, 'Rosa', 'Blanca Antas', 'Monasterio de Samos, 31 - 6° L', '50013', '976 598 974', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (95, 'Gloria', 'Blanco', 'Jardines de Lisboa, 4- 8° A', '50003', '976 43 10 92', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (96, 'Begoña', 'Blas', 'C/ Luis Buñuel, 29 Casa', '50830', '976 18 60 50', '', '', '', 'VILLANUEVA DE GALLEGO', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (97, 'Maribel', 'Blasco', 'C/ Utrilla, 14- 3° D', '50013', '976 59 13 51', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (98, 'Alicia', 'Blasco', 'c/ Madre Vedruna, 4 -Prl. Izda.', '50008', '976 214 350', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (99, 'Rosa', 'Blasco', 'Dr. Cerrada, 14-18, 3° B', '50005', '976 215 063', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (100, 'María Carmen', 'Blasco', 'C/ Capitán Oroquieta, 6 -Escl.Dcha. 4° B', '50007', '976 270 421', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (101, 'Elena', 'Blázquez', 'Avda. Academia Gral. Militar, 53 (CAMP)', '50015', '976 524 333', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (824, 'ADELAIDA', 'LAGUNA RIVED', 'P/ TERUEL Nº 38- 10º- B', '50004', '976-238702', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (103, 'Ana María', 'Bolea', 'Avda. San José, 50- 5° A', '50008', '976 495 546', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (104, 'Elen', 'Bolsa Calvo', 'Verónica,1-Escl. 2a-2°B', '50001', '976 399 660', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (105, 'Charo', 'Bonafonte', 'c/ La Paz, 10 -3° B', '50008', '976 218 793', '665- 895555', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (106, 'Marta', 'Bornao', 'Francisco Casamajo, 27', '50120', '', '', '', '', 'MONZALBARBA', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (107, 'Celia', 'Borobia Blasco', 'C/ Pedro María Ric, 8-10 Pral. 1a', '50008', '976 235 271', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (108, 'Puri', 'Bosqued', 'P° Teruel, 26-28 Casa 9 - 6° B', '50004', '976 22 33 52', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (109, 'Marta', 'Brell Doval', 'C/ Islas Baleares, Nº 18 "chalet"', '07014', '', '639 339 664', '', '', 'PALMA DE MALLORCA', '', '', '');
INSERT INTO `clientes` VALUES (110, 'Consuelo', 'Bueno', 'Pl. Marcial, 7 -6° Izda.', '50300', '976 887 649', '', '', '', 'CALATAYUD', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (916, 'Pilar', 'Baselga', 'C/ Rosalia de Castro Nº 25-4º C', '50018', '976- 512186', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (112, 'Laura', 'Buesa', 'Parque Roma, B-1-3°B', '50010', '976 335 858', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (113, 'Pili', 'Buey Frago', 'P° de Calanda, 37- 5° B', '50010', '976 334 691', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (114, 'Pili', 'Buey Pemán', 'Avda. de Madrid, 32- 2° A', '50010', '976 338680', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (115, 'María Carmen', 'Buil', 'C/ Mariano Malandia, 3 -6° F', '50014', '976 476 269', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (116, 'María Jesús', 'Buisán', 'c/ Cantín y Gamboa, 35 -6° B', '50002', '976 392 414', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (117, 'Gloria', 'Burbano', 'P° Pamplona, 25 -2° Dcha.', '50004', '976 23 42 86', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (118, 'Julia', 'Burgos', 'Avda.  Zaragoza, 23', '31500', '948 410 446', '', '', '', 'TUDELA', '(Navarra)', '', '');
INSERT INTO `clientes` VALUES (120, 'Elena', 'Cabrerizo', 'C/ Maestro Estremiana, 1 Bis - 1° C', '50006', '976 253 553', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (121, 'Carmen', 'Callén', 'Avda.  de Huesca, 15', '22200', '974 57 00 89', '', '', '', 'SARIÑENA', '(Huesca)', '', '');
INSERT INTO `clientes` VALUES (122, 'Esther', 'Callén', 'C/ Cortes de Aragón, 62-1° Izda.', '50005', '976 556 926', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (123, 'María Dolores', 'Calvo', 'c/ Serrablo, 42 -4° Izda.', '22600', '974 481 503', '', '', '', 'SABIÑANIGO', '(Huesca)', '', '');
INSERT INTO `clientes` VALUES (124, 'Conchita', 'Calvo', 'Cipriano Gutierrez Tapia, 15-3° B', '50500', '976 644 047', '', '', '', 'TARAZONA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (125, 'María Carmen', 'Calvo Guillén', 'José Antonio Duce, 2 - 6° B', '50015', '976 526 061', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (126, 'Teresa', 'Camacho', 'c/ Sagitario, 8 Casa 80 "Torre Pajaritos" Fase 3', '50012', '976 754 149', '655- 455331', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (127, 'Catalina', 'Camara', 'P° Pamplona, 12-14', '50004', '', '617 305 875', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (128, 'Isabel', 'Cantín', 'Capitán Esponera, 7 -5° A', '50004', '976 21 01 11', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (130, 'Lourdes', 'Carballal', 'C/ Roger de Flor, 5-1°G', '50017', '976 338 823', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (131, 'Maribel', 'Cardona', 'C/ Cervantes, 26 - 4° E', '50006', '976 211 994', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (132, 'Ana María', 'Cartiel', 'Avda. Anselmo Clave, 49-1° A', '50004', '976 282 173', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (133, 'Montse', 'Casamayor', 'C/ María Auxiliadora, 7', '22400', '974 400 266', '', '', '', 'MONZON', 'Huesca', '', '');
INSERT INTO `clientes` VALUES (1065, 'Esther', 'Mir', 'C/ Ramòn J. Sender Nº 16- 1º- A', '22005', '', '615- 551114', '', '', 'Huesca', '', '', '');
INSERT INTO `clientes` VALUES (135, 'María Pilar', 'Casanovas', 'Condes de Aragón, 12- 5° D', '50009', '976 561 906', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (136, 'María Dolores', 'Casas', 'Avda. Diputación, 21', '50638', '976 611 826', '', '', '', 'CABAÑAS DE EBRO', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (137, 'Carmen', 'Casas', 'C/. Cerro San Gines, 5', '44002', '978 61 07 86', '', '', '', 'TERUEL', '', '', '');
INSERT INTO `clientes` VALUES (777, 'MAYTE', 'ASIN LABAT', 'C/ SANTA LUISA DE MARILLAC Nº 4', '50678', '976679082', '', '', '', 'UNCASTILLO', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (139, 'Angelines', 'Casbas', 'c/ Manifestación, 5- 3° Izda.', '50003', '976 201 038', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1093, 'Natividad', 'Asín', 'C/ Salvador Allende Nº 16- 2º D', '50015', '', '686- 312696', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (141, 'Aurelia', 'Casero', 'c/ Dr. Palomar, 36 -1° 4', '50001', '976 391 010', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (142, 'María Luisa', 'Castel', 'Pablo Casals, 2-9° A y B', '50018', '976 516 465', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (143, 'Carmen', 'Castellot', 'Parque Roma, C-1-1° 4a', '50010', '976 324 546', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (144, 'Olga', 'Castro', 'Ciudad de Ponce, 8- Escl. 1a. 2° B', '50180', '976 77 42 81', '', '', '', 'UTEBO', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (145, 'Margarita', 'Cebrian', 'Cl. Oceano Atlántico, 19 Resid. Altamira Casa 46', '50012', '976 317 899', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (701, 'Natividad', 'Bascon', 'C/ Longares Nº 1 Chalet', '50420', '606951350', '', '', '', 'SANTA FE- CADRETE', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (147, 'Carmen', 'Cebrián', 'P° Ruiseñores, 53 Casa 38', '50006', '976 370 424', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (148, 'Carmen', 'Celimendiz', 'C/ Calvario, 3', '50250', '976 822 695', '', '', '', 'ILLUECA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (149, 'Isabel', 'Centeno', 'c/ Menéndez Pidal, 1- 5° Dcha.', '50009', '976 357 322', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (150, 'Gloria', 'Ceña', 'Vía Universitas, 13- 3° C', '50011', '976 551 645', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (151, 'Lourdes', 'Cerezo', 'Mariana Pineda, 14 -4° E', '50018', '976 515 041', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (152, 'María Luisa', 'Chacón De Antonio', 'Plaza Los Sitios, 9- 4° B', '50001', '976 217 813', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (153, 'Pepa', 'Chamorro', 'C/. Pico Balaitus, 9', '50196', '', '620 862 624', '', '', 'LA MUELA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (154, 'Ana', 'Charro', 'Pl. Mariano Arregui, 16-2° A', '50005', '976 233 591', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (771, 'Mª ASUNCION', 'BUÑUEL', 'AVD.ZARAGOZA 41, 7º-B', '31500', '948-826630', '', '', '', 'TUDELA', '(NAVARRA)', '', '');
INSERT INTO `clientes` VALUES (156, 'Nieves', 'Claver', 'Carretera de Arguis,  s/ n Km, 1,5', '22006', '974 225 839', '', '', '', 'HUESCA', '', '', '');
INSERT INTO `clientes` VALUES (157, 'Sara', 'Claveras', 'C/ Tiermas, 22 -3° A', '50002', '976 297 503', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (158, 'Pilar', 'Claveria', 'P° Sagasta, 40 -2° G', '50006', '976 224 596', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (159, 'María Luisa', 'Coarasa', 'c/ Joaquín Costa, 3- 4° Izda.', '50001', '976 221 083', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (160, 'Ramos', 'Combalía', 'Cineasta Adolfo Aznar, 31-4° 2', '50018', '976 51 30 24', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (161, 'María Carmen', 'Compes', 'C/ Cervantes, 14- 3° Dcha.', '50006', '976 219 264', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (162, 'María Gloria', 'Conde', 'P° Sagasta, 12 -3° C', '50006', '976 225 133', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (163, 'Pepa', 'Conesa', 'c/ Fco. Vitoria, 32- 7° -4A', '50008', '976 225 246', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (164, 'María Pilar', 'Coronas', 'C/ Zaragoza, 20', '50830', '976 185 978', '', '', '', 'VILLANUEVA DE GALLEGO', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (165, 'Inma', 'Coronas Redon', 'Avda. Madrid, 117 -4° B', '50010', '', '619 266 570', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (166, 'Pilar', 'Corvinos', 'Avda. de Goya, 47 -6° - 2a Puerta', '50006', '976 159 470', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (168, 'María José', 'Crespo', 'c/ Rosalia de Castro, 20-2° B', '50018', '976 737 490', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (169, 'Teresa', 'Crespo', 'Madre Vedruna, 9 -5° Dcha.', '50008', '976 235 587', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (170, 'Celia', 'Cristobal', 'Urb. Los Olmos/ Pablo Serrano,17 casa 8', '50180', '976 774 344', '', '', '', 'UTEBO', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (171, 'Isabel', 'Cucalón Arenal', 'C/ Doctor Casas, 11 -2° Izda.', '50008', '976 225 531', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (172, 'María Dolores', 'Cuevas', 'Vía Hispanidad, 67 Casa 3-4°A', '50012', '976 324 425', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (173, 'Ivana', 'Cuomo González', 'Cl. Sagitario, 8 Fase 2 Casa 8', '50012', '976 458 390', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (174, 'Marisol', 'Cutillas', 'c/ Cañamar, 13', '50640', '976 652 575', '', '', '', 'LUCENI', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (175, 'Rita', 'Dauden', 'Torres Morales, 1- 7° B', '50006', '976 273 468', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (176, 'Ana Isabel', 'De La Calle', 'Avda. Juan Pablo II, 40 -3° A', '50009', '976 388 396', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (177, 'Paloma', 'De Miguel Labisbal', 'Plaza de Salamero, 5- 4° A', '50004', '976 23 15 62', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (178, 'Inés', 'De Sus', 'C/ General Sueiro, 23 Entrlo. Centro', '50008', '976 219 126', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (179, 'María Pilar', 'De Sus Garcia', 'Fco. Vitoria, 25-6°H', '50008', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (180, 'Inmaculada', 'Del Hoyo', 'Via Pignatelli, 7- 2° C', '50007', '976 38 70 94', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (181, 'Alicia', 'Del Portillo', 'Manuel Lasala, 38-8°B', '50006', '976 351 829', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (965, 'Laura', 'Baiges', 'Camino de las  TorresNº 35- Esca. Dcha. 3º Dcha.', '50008', '976- 420326', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (183, 'Angeles', 'Dena', 'Avda. Perimetral, 37', '22700', '', '676 423 677', '', '', 'JACA', '(Huesca)', '', '');
INSERT INTO `clientes` VALUES (184, 'Angelines', 'Dieste', 'C/ Joaquín Costa, 15', '50830', '976 180 555', '', '', '', 'VILLANUEVA DE GALLEGO', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (185, 'Teresa', 'Díez', 'Avda. Gómez Laguna, 37 - 5° C', '50009', '976 750 297', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (945, 'Pilar', 'Alcober', 'C/ Milagrosa Nº 5- 6º C', '50009', '', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (187, 'María Carmen', 'Díez Latorre', 'Lagos de Coronas 39,3º A', '50011', '', '636 482 744', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (188, 'Elena', 'Dobon', 'Avda. Gómez Laguna, 22-Escl.-2a -12,I', '50009', '976 754 427', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (189, 'Isabel', 'Domingo', 'Comuneros de Castilla, 3-7° B', '50002', '976 399 821', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (190, 'Lucia', 'Dominguez', 'Torres de San Lamberto, 16 -C', '50011', '976 347 425', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (191, 'Almudena', 'Dominguez', 'Avda. Ilustración, 11 Casa 43', '50012', '', '646 278 811', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (192, 'Asunción', 'Dosset Rodriguez', 'Santa Rosa, 13', '44530', '978 821 092', '', '', '', 'HIJAR', '(Teruel)', '', '');
INSERT INTO `clientes` VALUES (193, 'Inés', 'Ducar', 'C° de Las Torres, 36 -2° Dcha.', '50008', '976 226 793', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (194, 'Pilar', 'Duque', 'Supervia, 56- 7° B', '50006', '', '616 452 502', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1000, 'Begoña', 'Diaz', 'Plaza Aragón Nº 11- 4º Dcha.', '50004', '976- 216374', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (196, 'Isabel', 'Elhombre', 'Condes de Aragón, 12-7° A', '50009', '976 56 99 97', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (198, 'Miren', 'Erdozain', ' Fray Luis Amigo, 8-11° B "Ef. Zafiro"', '50006', '976 379 616', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (199, 'Asunción', 'Escanilla', 'c/ Hnos. Gambra, 12- 9° A', '50010', '976 322 773', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (200, 'Isabel', 'Escartín Martín', 'C/ Fray Luis Amigo, 2 -6° D', '50006', '976 378 119', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (201, 'María Victoria', 'Escribano', 'c/ Cortes de Aragón, 61 -3° Izda.', '50005', '976 553 685', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (202, 'Concepción', 'Escuer', 'c/ General Sueiro, 46- 5° 8a', '50008', '', '639 08 47 55', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (957, 'Milagros', 'Echarri', 'Cesareo Alierta Nº 9- 8º- 6ª', '50008', '976- 591785', '615- 666665', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (204, 'Carmen', 'Eseverri', 'Pl. Mariano Arregui, 16 -8° B', '50005', '976 215 672', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (205, 'Begoña', 'Español', 'Los Olivos, 9-3° D', '22005', '974 228 432', '', '', '', 'HUESCA', '', '', '');
INSERT INTO `clientes` VALUES (206, 'Tere', 'Espiga', 'Bonifacio Olleta Martinez,2-3° B', '31500', '948 827 289', '', '', '', 'TUDELA', '(Navarra)', '', '');
INSERT INTO `clientes` VALUES (207, 'Marta', 'Espinosa', 'C/ Monasterio de Samos, 5- 6° B', '50013', '976 594 885', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (208, 'Esther', 'Esteban', 'C/ Baja, 3-3°', '44600', '978 870 180', '', '', '', 'ALCAÑIZ', '(Teruel)', '', '');
INSERT INTO `clientes` VALUES (209, 'Celia', 'Esteban', 'c/ Fco. Vitoria, 25 -2° F', '50008', '976 237 575', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (210, 'María Esperanza', 'Estevan', 'Plaza de los Sitios, 11 Pral. Dcha.', '50001', '976 219 344', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1104, 'Virginia', 'Ezpeleta', 'Vía Iberica Nº 2-Bloque5-casa3- 4º A', '50009', '976- 551188', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (212, 'Marisol', 'Ezcurdia', 'c/ Vicente Campo, 9 -2° A', '22002', '974 211 914', '', '', '', 'HUESCA', '', '', '');
INSERT INTO `clientes` VALUES (213, 'Laura', 'Ezquerra', 'C/. Marquesado, 1- 2° A', '31570', '948 672 060', '', '', '', 'SAN ADRIAN', 'Navarra', '', '');
INSERT INTO `clientes` VALUES (214, 'Maribel y Teresa', 'Ezquerra', 'Cortés de Aragón, 38-Escl. 2a-3°B', '50005', '976 56 55 95', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (215, 'Maria', 'Ezquerra', 'Flora Tristan, 5-7° B', '50015', '976 73 40 71', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (216, 'María Jesús', 'Fatás', 'C° de Las Torres, 39- Casa 1-6°C', '50008', '976 597 748', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (217, 'Marisa', 'Felez', 'C/ Zurita, 14 -6° Dcha.', '50001', '976 237 010', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (218, 'María Jesús', 'Felipe', 'Pl. Mar del Plata, 1-  Bajo 1ª', '50012', '616 430 837', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (219, 'María Pilar', 'Feringan', 'And. Palacio Larrinaga, Bl. 6-5°B', '50013', '976 494 681', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (220, 'Maria Carmen', 'Fernandez', 'c/ Alvira Lasierra,12 -10 F', '50002', '976 75 37 00', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (222, 'Angelines', 'Fernández', 'c/ Lechuguilla, 19', '50678', '', '', '', '', 'UNCASTILLO', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (223, 'Carmen', 'Fernández', 'Vía San Fernando, 11 Escl. 3a-5°F', '50007', '976 277 657', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (224, 'María José', 'Fernández', 'Pedro Cerbuna,, 2 -4° D', '50009', '976 553 010', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (225, 'María Pilar', 'Fernández', 'C/ Parque Roma, Bloque E 4-9° C', '50010', '976 347 870', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (226, 'Yolanda', 'Fernández', 'C/ Pedro Arnal Cavero, 15 -6° Dcha.', '50014', '976 476 088', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (227, 'María Esther', 'Fernández', 'P° Pamplona, 8-10 Escl. Dcha. 7° Dcha.', '50004', '976 233 577', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (228, 'Isabel', 'Fernández Cuevas', 'P° Sagasta, 39 -8° Dcha.', '50007', '976 377 092', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (229, 'Irene', 'Fernández Del Rio', 'P°  Isabel La Católica, 7 -13 Izda.', '50009', '976 359 693', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (778, 'ESTHER', 'BELLOC', 'PºCONSTITUCIÓN  Nº 28-3º IZDA.', '50008', '976-236050', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (231, 'Anabel', 'Flores', 'Cesario Alierta, 4 Escl. Dcha. 6° Dcha.', '50008', '976 218 085', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (947, 'Pilar', 'Mulet', 'Avda. Gomez Laguna Nº16-7ºB', '50009', '976-555348', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (233, 'Luisa', 'Fontella', 'Centro de Salud de Movera', '50194', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (234, 'Esther', 'Forcada', 'P° Conde Aranda, 38-40, 3° Izda.', '50003', '976 440 787', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (235, 'Susana', 'Forniés Cardiel', 'C/ Ezmundo D´Amicis, 2- 5° B', '50018', '976 064 797', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (236, 'Conchita', 'Frago', 'C/. Lorente, 45-47 - 7°', '50005', '976 351 372', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (237, 'Pilar', 'Franco', 'Gómez Laguna, 55- 1° B', '50009', '976 756 068', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (238, 'Mercedes', 'Fuertes', 'Avda. Gómez Laguna, 1- 2°A', '50009', '976 563 839', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (239, 'Silvia', 'Gabasa', 'Miguel Servet, 17 -2a Escl. 6° C', '50002', '', '605 500 670', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (240, 'Cristina', 'Galbán', 'Sanclemente Nº 23-2º Izda.', '50001', '', '678 079925', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (241, 'María Carmen', 'Gale', 'Miguel Servet, 18', '50660', '976 855 220', '', '', '', 'TAUSTE', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (242, 'Esther', 'Gallardo', 'C/ Hermano Adolfo, 6 -3° B', '50013', '976 415 278', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (243, 'Irene', 'Gallego', 'P° María Agustín, 4-6, Casa 3- 10° C', '50004', '976 441 392', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (244, 'María Jesús', 'Gallego', 'Gran Vía, 33 Dpldo. Pral A', '50006', '976 234 765', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (245, 'Paloma', 'Galtier', 'c/ La Ripa, 15-2 Bloque 1° C', '50006', '976 569 381', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (246, 'Pilar', 'Galve', 'Bretón, 7 - 3° C', '50005', '976 563938', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (247, 'María Antonia', 'Garcés', 'Avda. Ilustración, 11 casa 30 Montecanal', '50012', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (248, 'Inmaculada', 'Garcia', 'P° de Teruel, 10- 7° Dcha.', '50004', '976 23 05 54', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (249, 'Gloria', 'Garcia', 'Duquesa Villahermosa, 129-7° I', '50010', '976 569 797', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (855, 'ELENA', 'PALACIO PORTA', 'C/ TOMAS ALVIRA Nº 24', '50830', '976- 186716', '653- 038551', '', '', 'VILLANUEVA DE GALLEGO', '(ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (788, 'Mª Pilar', 'Corthay', 'Pº Sagasta 58 4º Izda', '50006', '976272890', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (251, 'Elena', 'Garcia', 'C/ Moncayo, 2 -3° A', '50010', '', '656 34 89 47', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1048, 'Carmen', 'Gallego', 'San Jorge Nº 6- E 2- 2º B', '50600', '', '', '', '', 'Ejea de los Caballeros', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (253, 'Mercedes', 'García', 'Avda. Independencia, 10- 1° C', '50250', '976 822 242', '', '', '', 'ILLUECA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (254, 'Adela', 'García', 'Canfranc, 3- 3° C', '50004', '976 221 734', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (255, 'Elena', 'García', 'c/ León XIII, 8 -2° C', '50008', '976 227 875', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (256, 'María Sagrado', 'García', ' Marina Española, 12 Edif. Azabache, 2° A', '50006', '976 372 902', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (258, 'María Pilar', 'Garcia Loscertales', 'Manuel Lasala, 36 Escl. 1a -4° B', '50006', '976 358 172', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (259, 'Carmen', 'García Pinilla', 'Avda. Cesareo Alierta Nº 35- Esca. Dcha. 1ºA', '50008', '', '655 133 148', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1100, 'Elena', 'Garcia', 'C/ Menendez Pidal  Nº 7- 8º', '50009', '', '676- 709965', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (261, 'Eva', 'Garza Blas', 'c/ Nicolas Guillén, 8-7°B-Escl.1a', '50018', '976 529 008', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (262, 'Carmina', 'Gascón', 'Gran Vía, 26-5° B', '50008', '976 235 234', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (263, 'Teresa', 'Gerez', 'Urb. La Chimenea, 9', '50280', '976 607 850', '', '', '', 'CALATORAO', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (264, 'Amaya', 'Gil', 'Avda. Ilustración, 11 casa 25 Montecanal', '50012', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (265, 'María', 'Gil', 'Miguel Sevet, 46-48, 8°  E', '50008', '976 494 137', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (266, 'Berta', 'Gil Beltrán', 'Olorón Sta. María, 22 -2° Izda.', '22700', '974 361 037', '', '', '', 'JACA', '(Huesca)', '', '');
INSERT INTO `clientes` VALUES (267, 'Berta', 'Gil Vallejo', 'c/ Enrique Val, 4 Portal 9- 3° B', '50011', '976 751 573', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (268, 'María Carmen', 'Giménez Pemán', 'Mediavillla, 17', '50678', '976 679 188', '', '', '', 'UNCASTILLO', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (269, 'Esther', 'Gimeno', 'C/ Cuesta de la Camara Nº 31- pral. B', '50660', '976 855 267', '', '', '', 'TAUSTE', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (270, 'María Jesús', 'Gómez', 'P° Fernando El Católico, 65 - Escl. Dcha. 4° A', '50006', '976 35 66 63', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (271, 'María', 'Gómez', 'Fco. Vitoria, 23- 5° A', '50008', '976 225 956', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (272, 'Ana María', 'Gómez Anderiz', 'C/ Duquesa Villahermosa, 52 -5° B', '50010', '976 530 330', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (913, 'Alicia', 'LLeyda', 'Plaza Basilio Paraiso Nº 1- 5º Dcha.', '50004', '976- 216785', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (274, 'Ana Belén', 'González', 'Avda. Gómez Laguna, 18- 9° B', '50009', '976 352 445', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (275, 'Pilar', 'González', 'Avda. Ilustración, 11 Casa 84', '50012', '976 750 993', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (276, 'Carmen', 'Gonzalo', 'Cl. Maestro Tremps, 2', '50014', '976 47 07 97', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (277, 'Kati', 'Gonzalo', 'c/ Luis Vives, 4- Escl. Izda. 2° B', '50006', '976 563 530', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (278, 'Victoria', 'Goñi Tiraplegui', 'C/ Madre Puig, 9 Escl. 1a A', '50300', '', '', '', '', 'CALATAYUD', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (279, 'Ana', 'Gorriz', 'Palacio de Larrainaga, 7-3° A', '50013', '976 59 30 57', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (280, 'María José', 'Gracia', 'Urbanización La Cubilla, 19', '50540', '976 852 782', '', '', '', 'BORJA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (281, 'Alicia', 'Gracia', 'c/ Hernán Cortés, 10 -Dpldo. Escl. Izda- 4° DCHA.', '50004', '976 216 772', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1102, 'Mª Eugenia', 'Marco', 'C/ Pablo Ruiz Picasso Nº28- 8º Izda.', '50018', '', '651- 852640', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (283, 'Ana', 'Gracia Gracia', 'Pablo Serrano, 17 Casa 8-1° B', '50180', '976 784 284', '', '', '', 'UTEBO', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (284, 'Pilar', 'Gracia Yela', 'P° Constitución, 19- 5° B', '50001', '976 274 759', '667 422 713', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (285, 'Carmen', 'Grima', 'Urb. Las Lomas, Valle de Broto,42', '50830', '976 186 089', '', '', '', 'ZUERA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (1001, 'Susana', 'Martinez', 'C/ Pilar Miro Nº 6- 5º A', '50011', '', '679- 338517', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (772, 'Mª JOSE', 'ZAPATERO', 'PARQUE ROMA B 1- 1º A', '50010', '976-333802', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (288, 'Carmina', 'Gurria', 'Aznar Molina, 1 Casa 8 - 7° Izda.', '50002', '976 29 15 54', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (823, 'Mª JESÚS', 'ROMERO', 'C/ SAN BLAS Nº 50-58- 4º C', '50003', '976- 439823', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1062, 'Isabel', 'Salvador', 'C/ Santa Clara Nº 8- casa-', '50786', '976- 176458', '', '', '', 'Gelsa', '( Zaragoza )', '', '');
INSERT INTO `clientes` VALUES (291, 'Nuria', 'Hernández', 'Hernán Cortés, 8- 7° C', '50004', '976 215 705', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (292, 'Cristina', 'Hernández Montero', 'c/ Costa, 8 -2° Izda.', '50001', '976 236 305', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (293, 'Mercedes', 'Hernando', 'c/ Miguel Servet, 63-65 Escl. 1a- 2° A', '50013', '976 497 684', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (294, 'Begoña', 'Hernandorena', 'Pl. Valle de Tena, s/n.', '22640', '974 488 251', '', '', '', 'SALLENT DE GALLEGO', '(Huesca)', '', '');
INSERT INTO `clientes` VALUES (295, 'Carlota', 'Herrando', 'C/. Juan II de Aragón, 9- A - 7° B', '50008', '976 55 09 30', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (296, 'Esther', 'Herranz Cabrejas', 'C/ Oviedo, 29 -31 Bajo A', '50007', '976 252 959', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (297, 'Maria Victoria', 'Herrero', 'Ecuador, 3 - 1° - 2a', '50012', '976 33 44 40', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (922, 'Marisa', 'Gandia', 'Vía Hispanidad Nº 25- casa 3', '50012', '976- 758156', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (299, 'María Pilar', 'Herrero', 'P° Constitución, 16 -5° C', '50008', '976 228 070', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (300, 'Teresa', 'Hidalgo', 'Av. Los Alamos, 5- 3° B', '50012', '976 758 086', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (301, 'Enma', 'Huanes', 'C/ Océano Atlántico,19 Casa 53', '50012', '976 336  649', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (302, 'Tere', 'Huerta', 'Avda. de Tudela', '31523', '948 813 358', '', '', '', 'ABLITAS', '(Navarra)', '', '');
INSERT INTO `clientes` VALUES (303, 'Begoña', 'Ibañez', 'Avda. Sainz de Varanda, 28- 9° D', '50009', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (304, 'Conchita', 'Ibañez', 'Avda. Gómez Laguna, 49 -4° D', '50009', '976 754 395', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (305, 'Merche', 'Iguacel', 'c/Almonacid de La Sierra, 4-4° C', '50002', '', '676 697 620', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (306, 'Marta', 'Illa', 'Avda. Ilustración, 21 -Casa 104', '50012', '976 755 829', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (307, 'Ros', 'Inaraja Alcorta', 'c/ San Antón, 19-4°', '26002', '941 248 459', '', '', '', 'LOGROÑO', '', '', '');
INSERT INTO `clientes` VALUES (308, 'Virginia', 'Iparraguirre', 'C/ Matilde Sangüesa, 19 -1° B', '50015', '976 201 704', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (309, 'Reyes', 'Iranzo', 'Vía Universitas, 64- Escl. 4a - 9° K', '50017', '976 324 046', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (310, 'María Sol', 'Iribarren Berrade', 'P° Sagasta, 40 -3° A y B', '50006', '976 235 433', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (311, 'Beatriz', 'Isiegas', 'C/ Tomás Pelayo, 21-35, Escl. 1a Bajo C', '50009', '976 567 764', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (312, 'María Luz', 'Izquierdo', 'c/ Bretón, 38 Escl. Izda.-3° A', '50005', '976 357 568', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (313, 'Rosa', 'Izquierdo', 'Avda. Cesario Alierta, 115 -2° A', '50013', '', '607 118 091', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (314, 'María Teresa', 'Jadraque', 'C/. Abedul, 18', '50012', '976 75 16 69', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (315, 'Lourdes', 'Jarauta Sanchez', 'C/ San Francisco de Borja, 5 -5° C', '50009', '976 353 098', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (316, 'Palmira', 'Jerez Sastro', 'Avda. Ilustración, 11 casa 54 Montecanal', '50012', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (317, 'María Jesús', 'Jimenez', 'C/ Gay Sangros, 3- 3° A', '50009', '976 750 555', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (318, 'María Paz', 'Jiménez', 'C/ Centro Nº 71', '44366', '978 714 043', '', '', '', 'Orihuela del Tremedal', '(Teruel)', '', '');
INSERT INTO `clientes` VALUES (319, 'Conchita', 'Jiménez', 'Vía Ibérica, 2 Bloque 6 Puerta 2- 4° D', '50009', '976 562 191', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (320, 'Mercedes', 'Jodra', 'Parque Roma I-5-10° A', '50010', '976 317 299', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (321, 'Rosario', 'Jurado', 'P° Echegaray y Caballero, 10- 3° B', '50003', '976 439 996', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (322, 'Pilar', 'Juste', 'Andador Luis Puntes, 4 - 1° D', '50008', '976 49 40 02', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (323, 'Pilar', 'Labat', 'C/ Luesia Nº 15- 4º A', '50014', '976- 478497', '615- 303830', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (324, 'Gloria', 'Lagunas', 'c/ Mayor, 8', '50639', '976 656 109', '', '', '', 'FIGUERUELAS', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (325, 'María Pilar', 'Laiglesia', 'c/ Horno Nuevo, 35', '50678', '', '', '', '', 'UNCASTILLO', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (326, 'Conchita', 'Lamarca', 'P° Constitución, 6- 7° B', '50008', '976 231 209', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (327, 'María Angeles', 'Lanuza', 'Avda. Cesario Alierta, 52 -4° C', '50008', '976 410 519', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (328, 'Josefina', 'Lanzuela', 'Avda. Clave, 57 - 1° A', '50004', '976 229315', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (329, 'María José', 'Lardiez', 'C/ Del Mediano, 1- 1° C', '50120', '976 787 578', '', '', '', 'MONZALBARBA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (330, 'Isabel', 'Larrauri', 'C/ Padre Consolación, 2 -6° 1', '50003', '976 446 334', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (331, 'María Antonia', 'Larraz Sierra', 'Marina Española, 2 -1° D', '50006', '976 250 200', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (332, 'María Pilar', 'Lasala', 'Tenor Fleta, 3 Pral.', '50007', '976 23 12 24', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (333, 'Concha', 'Latorre', 'Avda. Clave, 37-45 Bloque 2- 3° C', '50004', '976 435 570', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (334, 'Alicia', 'Latorre Ariño', 'Fco. Vitoria, 23-2°C', '50008', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (335, 'María Isabel', 'Lavilla', 'Avda. Clave, 37-41, Bloque 5, 1°B', '50004', '976 284 428', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (336, 'Lidia', 'Lázaro', 'Condes de Aragón, 8 -12 D', '50009', '976 56 49 42', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (337, 'Herminia', 'León', 'Celso Emilio Ferreiro, 15- 3° A Dcha.', '50017', '976 332 896', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (338, 'Teresa', 'Liaño', 'P° Profesor Tierno Galván, 3 -6° A', '50007', '976 389 030', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (339, 'Fanny', 'Llantada', 'San Antonio María Claret, 63- 4° C', '50005', '976 350 135', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (340, 'Gema', 'Llera', 'La Rosa, 7', '50660', '976 855 218', '', '', '', 'TAUSTE', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (341, 'Charo', 'Llorens', 'P° Sagasta, 47- 1° C', '50007', '976 277 878', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (342, 'Julia', 'Llorente', 'Av. Juan Carlos I, 55 -8° B', '50009', '976 569 996', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (343, 'María Esther', 'Llorente', 'Av. Juan Carlos I, 57- 10° A', '50009', '976 569 002', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (344, 'Cristina', 'Lobera', 'Ibón de Trigoniero, 10 Casa- 3', '50011', '976 537 585', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (345, 'Teresa', 'Lopez', 'Josefa Amar y Borbón, 57-2° B', '50001', '976 218 456', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (346, 'Paquita', 'López', 'C/. Travesía Dula, 18', '50131', '976 83 52 98', '', '', '', 'LECERA', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (347, 'Mº Pilar', 'López', 'Avda. Goya, 1-7° Dcha.', '50006', '976 379 518', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (892, 'Carmen', 'Benito', 'Parque Roma  B-2-8º D', '50010', '976- 233323', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (349, 'Adela', 'Lopez Cuesta', 'Suiza, 25-3°A', '50007', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (350, 'Concesa', 'Lopez Cuesta', 'Suiza, 25-2°A', '50007', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (351, 'Pilar', 'López Lahoz', 'C/ Condes de Aragón, 16 -8° C', '50009', '976 560 728', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1099, 'Lourdes', 'Bolea', 'C/ Espronceda Nº59 casa ( Miralbueno )', '50014', '', '620- 214929', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (353, 'Elena', 'Lorenzo', 'CAMINO DE LAS TORRES Nº 35-ESCA.DCHA. 9º PUERTA 6', '50008', '976- 599328', '626 992 021', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (354, 'Juana', 'Loscos', 'P° Constitución, 6 -3° D', '50008', '976 236 903', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (355, 'Carmen', 'Lozano', 'Avda. de La Ilustración,4 Escl. 3a 2° Izda.', '50012', '976 754 826', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (356, 'María Jesús', 'Lázaro  Oliván', 'C/ Coso, 126 - 2° A', '50001', '976 396 668', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (843, 'ESTHER', 'GONZALEZ ARA', 'C/ ENRIQUE VAL Nº4-ESCA.6-4ºC', '50011', '976- 508548', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (358, 'Guadalupe', 'Machín', 'Comuneros de Castilla, 5-8° H Escl. Dcha.', '50002', '976 299 425', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (359, 'Marisa', 'Machín', 'c/ María Lostal, 25 -4° -4a', '50008', '976 214 140', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (747, 'MARINA', 'ARTIGAS', 'C/ MAYOR Nº 83', '50720', '630734402', '', '', '', 'LA CARTUJA BAJA', 'ZARAGOZA', '', '');
INSERT INTO `clientes` VALUES (361, 'Merche', 'Madinabeitia', 'Andador Luis Puntes, 10 -6° B', '50008', '976 598 140', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (362, 'Marilo', 'Madrid', 'C/ San Adrián de Sasabe, 4- 1° B', '50002', '976 592 702', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (363, 'Carmen', 'Magan Calvo', 'c/ Arzobispo Morcillo, 12-14, 3° A', '50006', '976 271 621', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1015, 'Mª Gloria', 'Segura', 'Pº Damas Nº 11- 5º Izq.', '50008', '976- 239732', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (365, 'Maite', 'Mainar', 'c/ San Ignacio de Loyola, 7- 5° C', '50008', '976 212 084 (Despach', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (366, 'Pilar', 'Mallén', 'Avda. El Jalón, 34', '50300', '', '629 853 354', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (367, 'María Teresa', 'Marco', 'P° Del Muro, 39- 4° B', '50600', '976 664 152', '', '', '', 'EJEA DE LOS CABALLEROS', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (368, 'Nieves', 'Marco', 'C/ Mediodía, 14- 3° B', '50014', '976 39 47 05', '696- 018963', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (369, 'Gloria', 'Marco', 'c/ Maestro Marquina, 17- 3° Izda.', '50006', '976 378 158', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (370, 'Pilar', 'Marco Alvarez', 'Genoveva Torres Morales,4 Escl. Dcha. 5°B', '50006', '976 27 52 60', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (371, 'Pilar', 'Marco Sanz', 'Victor Jara,8 -1°A', '50058', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (372, 'Beatriz', 'Marcuello', 'C/ Zumalacárregui, 38-40 Atico', '50006', '976 227 482', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (374, 'Clara', 'Marin', 'Vía Hispanidad, 35 Bloque 3-2° C', '50012', '976 75 14 07', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1037, 'Mª Jose', 'Used', 'Andador Reina Esther Nº 3- 1º D', '50002', '', '608- 460664', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (376, 'Soledad', 'Martí', 'San Francisco Nº 6- 4º G', '22400', '974 400 802', '', '', '', 'MONZÓN', '(Huesca)', '', '');
INSERT INTO `clientes` VALUES (377, 'Nuria', 'Martí', 'C/ Martín Cortes, 20- 6° A', '50005', '976 561 534', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (378, 'Josefina', 'Martín', 'Avda. Valencia, 27- Esca. 2ª- 1º A', '50005', '976 350 887', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (379, 'Teresa', 'Martín', 'Vía Hispanidad, 37 Dupl. Casa 5 -1°B', '50012', '976 568 295', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (380, 'Jovita', 'Martín', 'Avda. Juan Carlos I, 57-6° A', '50009', '976 560 480', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (381, 'Clara', 'Martín', 'Cuesta de La Cámara, 14 - 1° B', '50660', '976 855 193', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (382, 'Blanca', 'Martín', 'C/ Fco. de Vitoria, 20-22, Escl. Izda. 6° A', '50008', '976 226 161', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (383, 'NIEVES', 'MARTINEZ', 'C/ JUAN PABLO II, Nº 30 -  12', '50009', '', '676005324', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (384, 'Carmina', 'Martinez', 'Felipe V, 80', '50100', '976 600 957', '', '', '', 'LA ALMUNIA DE DOÑA GODINA', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (385, 'Isabel', 'Martinez', 'P° Constitución, 37-7° Dcha.', '50001', '976 235 163', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (386, 'Elena', 'Martinez', 'Tenor Fleta, 17-5° A', '50008', '976 222 673', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1024, 'Marisol', 'Cabrera', 'Ramon y Cajal Nº 2- 2º B', '22520', '974- 453983', '', '', '', 'Fraga', '( Huesca )', '', '');
INSERT INTO `clientes` VALUES (388, 'Rosana', 'Martinez', 'Cesario Alierta, 38-40- 9°B', '50008', '976 49 90 65', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (389, 'Laura', 'Martinez', 'C/. San Vicente de Paul, 5 - 5°', '50002', '976 29 59 86', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (390, 'Gloria', 'Martínez', 'Gomez Laguna Nº 48-9º A', '50009', '', '639 701 199', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (391, 'M. Carmen', 'Martínez', 'C/ Francisco de Vitoria, 17 -7° D', '50008', '', '609 657 655', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (709, 'URSULA', 'BUENO', 'C/ ALFONSO SOLANS Nº 20,1º E', '50014', '976-398100', '', '', '', '', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (393, 'Isabel', 'Martínez', 'Avda. Juan Pablo II, 8 -11° B', '50009', '976 751 544', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (914, 'Cristina', 'Fauquie', 'Sagasta Nº 10- 6º A', '50006', '976- 238114', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (396, 'Marisa', 'Mateo', 'Carretera de Estella, 22- 2° Dcha.', '31570', '948 670 126', '', '', '', 'SAN ADRIAN', '(Navarra)', '', '');
INSERT INTO `clientes` VALUES (397, 'Merche y Teresa', 'Mateo Bernal', 'C/ Asín y Palacios, 8 -4° B', '50009', '976 559 222', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (699, 'Carmen', 'Sorrosal', 'Don Jaime Casasus- Nº 74', '50750', '976-165110', '', '', '', 'PINA DE EBRO', '( Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (399, 'Aurelia', 'Mateos', 'Fco. Vitoria, 28 -30, 4° C', '50008', '976 229 088', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (400, 'María José', 'Mayor Rubio', 'Avda. Juan Carlos I, 10 -6° B Escl. 3', '50009', '976 758 452', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (401, 'Ascensión', 'Mayormolla', 'Av. San José, 122 -2° G', '50008', '976 591 698', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (402, 'Lourdes', 'Mena', 'Almozara, 3 Escl. Izda. 4° A', '50003', '976 445 082', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (403, 'Mamen', 'Mendiara', 'Dr. Casas, 11 -4° Izda.', '50008', '976 222 543', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (405, 'María José', 'Menjón', 'La Rosa, 13 -1° Izda.', '50660', '976 85 91 16', '', '', '', 'TAUSTE', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (1078, 'Carmen', 'Naval Subias', 'Pº Tierno Galvan Nº 8- 9º B', '50007', '', '690- 024243', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (407, 'Esther', 'Millan', 'Gutierrez Mellado, 45-2° B', '50009', '976 750 745', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (408, 'Pilar', 'Miro', 'c/  José Luis Pomarón, 15-5° B', '50008', '976 495 478', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (409, 'Ruth', 'Moliner', 'P° Reyes de Aragón, 15 Casa 2', '50012', '', '659 327 295', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (410, 'María Carmen', 'Moncín', 'c/ Alfonso I,  63- 1° Izda.', '50660', '976 859 200', '', '', '', 'TAUSTE', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (411, 'Flor', 'Mondeló', 'Gran Vía, 11 Escl.A-7° Dcha.', '50005', '', '647 621 294', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (412, 'María del Carmen', 'Montalvo', 'Avda. Cesario Alierta, 4- Escl. Izda. 2° D', '50008', '976222 909', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (413, 'María Mar', 'Montón', 'C/ Menéndez Pelayo, 6- 1° D', '50009', '976 569 511', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (414, 'Carmen', 'Morales', 'C/ Hecho,4-Casa 6 ( SANTA FE )', '50410', '976 507 425', '606 360 950', '', '', 'CUARTE DE HUERVA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (415, 'Inmaculada', 'Morales', 'Avda. Juan Carlos I, 37-4° B', '50009', '976 566 935', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (837, 'ELENA', 'LACASA SERRANO', 'C/ CALVO SOTELO Nº 23', '', '976- 185731', '', '', '', 'VILLANUEVA DE GÁLLEGO', '(ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (773, 'BEATRIZ', 'CINCA', 'SAN MIGUEL, 6', '50120', '976-771867', '', '', '', 'MONZALBARBA', '(ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (1092, 'Maribel', 'Lahoz', 'C/ Veracruz Nº 18- 4º A', '50019', '', '690- 265031', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (419, 'Amelia', 'Moreno', ' Pl. Mariano Arregui, 11- 2° B', '50004', '976 22 28 16', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (420, 'María Jesús', 'Moreno', 'C/. Laguna de Rins, Nº 1- Pral. Derecha', '50005', '976 22 04 71', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (421, 'Julia', 'Moreno Antón', 'C/ San Antonio, 34', '50600', '976 859 249', '', '', '', 'TAUSTE', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (422, 'Elena', 'Moro', 'C/ Academia, 8 -6° C', '28014', '91 369 1578', '', '', '', 'MADRID', '', '', '');
INSERT INTO `clientes` VALUES (1019, 'Aurora', 'Prieto', 'Pº los Tilos Nº 5- 2º D', '50012', '976- 754724', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (424, 'María Luisa', 'Mugica', 'C/ Salvador Allende, 10 -Casa  4', '50015', '976 236 003', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (425, 'María Luisa', 'Muniesa', 'Constitución, 16 - 5° A', '50008', '976 233 601', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (426, 'Lorena', 'Muñoz', 'c/ Almunia, 20 -3° Izda.', '50003', '976 446 150', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (427, 'Pilar', 'Muñoz Delgado', 'P° Sagasta, 50, 1a Escl. 2° A', '50006', '976 272 301', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (428, 'Emilia', 'Murillo', 'C/ Belgica, 1 -1° Dcha.', '50180', '976 774 946', '', '', '', 'UTEBO', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (429, 'Carmen', 'Murillo', 'Cesario Alierta, 10 -6° Izda. 1a Escl.', '50008', '976 235 890', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (430, 'Carmen', 'Muro', 'Avda. Valencia, 27- Escl. 2a-6° B', '50005', '976 56 60 78', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (431, 'Charo', 'Muro', 'Parque Roma F 3- 8° C', '50010', '976 323 735', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (432, 'Isabel', 'Muruzabal', 'C/ María Moliner 65, esc. dcha, 4º izq.', '50007', '', '690 361 147', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (433, 'María Asunción', 'Naudín Carroez', 'C/ Berna, 3 -3° C', '50003', '976 280 707', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (434, 'Carmina', 'Naval', 'Avda. Goya, 72- 4° A', '50005', '', '696 665 548', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (435, 'Rosa', 'Navaridas', 'c/ Supervía, 42 Bajo', '50006', '976 357 621', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (436, 'Rosa', 'Navarro', 'C/. Ruiz Lasala, 40-3° D', '50016', '976 57 41 04', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (437, 'Carmen', 'Navarro', 'Monasterio de La Oliva, 1- 3° D', '50002', '976 39 71 89', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (438, 'Lucrecia', 'Navarro', 'P° Ruiseñores, 53 -Chalet n° 14', '50006', '976 254 717', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (439, 'María Angeles', 'Navarro', 'C/ Duquesa Villahermosa, 153 -2° D', '50009', '', '637 448 846', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (440, 'Pilar', 'Noriega', 'C/ Madre Sacramento, 33, 2º izq.', '50004', '976 28 51 48', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (441, 'Isabel', 'Nosmuro', 'Pl. Aragón, 4-5° A', '50001', '976 219 277', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (748, 'Isabel', 'Ortigosa', 'Avda. Alcalde Sainz de Varanda Nº22-10º-B', '50009', '976-754340', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (774, 'PILAR', 'TEJEL GARCIA', 'AVDA. CONSTITUCION  11- CASA 4', '50720', '976-500513', '', '', '', 'LA CARTUJA', '(ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (444, 'Maritina', 'Ochoa', 'Via Universitas Nº 10- 3ª Escal. 4º A', '50009', '976- 319671', '647- 669009', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (445, 'Amparo', 'Olivan', 'P°. Rosales, 28- 9° D', '50008', '976 236 765', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (446, 'Pilar', 'Olloqui', 'P° Constitución, 26 - 2° B', '50008', '976 22 66 08', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (447, 'María Victoria', 'Onde Ferrer', 'Padre Consolación, 17 - Escalera Izda. 2 Centro', '50003', '976 43 83 26', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (448, 'Marina', 'Ordin', 'Laguna de Rins, 5- 4| Dcha.', '50005', '976 23 06 38', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (449, 'María Angeles', 'Orea Concha', 'Avda. Real Zaragoza, 2 - 1° C', '50058', '976 574 319', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (450, 'Yolanda', 'Ortega', 'San Vicente Martir, 30- 6° B', '50008', '976 23 62 27', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (451, 'María Asunción', 'Ortigosa', 'Vírgen del Castillo, 3- A', '44700', '978 750 211', '', '', '', 'MONTALBAN', '(Teruel)', '', '');
INSERT INTO `clientes` VALUES (452, 'Rosaura', 'Ortiz', 'Avda. Teruel, 31', '44500', '978 843 620', '', '', '', 'ANDORRA', '(Teruel)', '', '');
INSERT INTO `clientes` VALUES (453, 'Marta', 'Ortiz', 'c/ Clara Campoamor, 30 -2° C', '50018', '976 738 523', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (454, 'María Pilar', 'Ortíz Tomey', 'C/ José María Contín, 21', '50100', '976 600 443', '', '', '', 'LA ALMUNIA DE DOÑA GODINA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (455, 'María Angeles', 'Otal', 'P° De La Ribera, 5° 1° B Esl. Dcha.', '50015', '976 514 670', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (456, 'María Carmen', 'Pablo', 'Avda. Puerta Sancho, 22 -4° B', '50003', '976 284 014', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (457, 'María Victoria', 'Pablo', 'Avda. De Los Alamos, 11 Urb. La Florista', '50012', '976 755 770', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (458, 'Arancha', 'Palacios', 'Avda. Ilustración, 18 Casa 34', '50012', '976 75 53 61', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (459, 'Isabel', 'Pallares', 'c/ Condes de Aragón, 20- 11° D', '50009', '976 353 854', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (460, 'Berta', 'Pallarés', 'C/ Mefisto, 9 -5° Izda.', '50006', '976 236 985', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (461, 'Paquita', 'Palmero', 'c/ Sanclemente, 7 y 9- 1° Dcha.', '50001', '976 235 615', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (462, 'Isabel', 'Pañar', 'c/ Fanlo, 8 Casa 8', '50012', '976 756 224', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (464, 'Marta', 'Paricio', 'C/ San Luis de Francia,22-3°B Dcha.', '50013', '976 487 182', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (465, 'Begoña', 'Parlange', 'Pl. San Francisco, 14-3° E', '50006', '976 568 568', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (466, 'María Carmen', 'Parras', 'P° Del Justicia, 32', '50740', '976 160 351', '', '', '', 'FUENTES DE EBRO', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (467, 'María Teresa', 'Pasamar', 'P° Rosales, 36-2° D', '50008', '976 499 603', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (468, 'Ma Angeles', 'Pasamar', ' Gran Vía, 50- 5° Izda.', '50005', '976 236 563', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (469, 'Pilar', 'Pascual', 'C/ Principado de Morea, 12 -1° A', '50013', '976 417 801', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (470, 'Carmen', 'Pastor', 'Gran Vía, 5- Entrlo. Izda.', '50006', '609 847 662', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (471, 'Ana', 'Payrós', 'Plaza Aragón, 6-3°B', '50004', '976 222 528', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (472, 'Anabella', 'Peinado', 'Martín Diez de Aux, 4 Casa 50', '50012', '', '600 586 495', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (473, 'Montse', 'Pelay', 'Cesario Alierta, 11-5°-5a', '50008', '976 595 896', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (474, 'Cristina', 'Pelegrin', 'C/ Pedro IV El Ceremonioso, 10 -3° D', '50009', '976 564 906', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (475, 'Adela', 'Pellicena', 'Pedro María Ric, 6 - 2° B', '50008', '976 22 40 31', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (476, 'Lola', 'Pemán', 'Vía Pignatelli, 65 -2° B', '50007', '976 388 002', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1080, 'Mercedes', 'Felipe', 'Ilustración Nº 21- casa 64', '50012', '', '660- 345326', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (479, 'Almudena', 'Pérez', 'Avda. Ilustración, 11 casa 39 Montecanal', '50012', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (480, 'Sara', 'Pérez', 'Avda. Gómez Laguna, 18-11° B', '50009', '976 353 553', '976-654 258', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (481, 'Elena', 'Pérez', 'Cesario Alierta, 34 Escl. 2 -1° B', '50008', '976 59 09 61', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (482, 'Susana', 'Pérez', 'Avda. Ramón Saiz de Varanda, 28-9° C', '50009', '976 75 57 62', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (483, 'Mercedes', 'Pérez', 'León Felipe, 29- 5° A', '50018', '976 518 047', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1076, 'Rosa', 'Lumbreras', 'Condes de Aragón Nº 16- 10º D', '50009', '', '661- 892377', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (485, 'María José', 'Pérez', 'P° Infantes de España, 8 Casa 34', '50012', '976 562 440', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (486, 'Arancha', 'Pérez', 'Avda. Anselmo Clave, 29-35, Casa 1-9° Dcha.', '50004', '', '679 732 896', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (487, 'Carmen', 'Pérez', 'Av. Tenor Fleta, 57 -C - 4° - 2a', '50008', '976 596 424', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (488, 'Beler', 'Pérez Artigas', 'Pl. Los Sitios, 1- Dpldo. 2° A', '50001', '976 233 280', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (994, 'Maria Soledad', 'Navarro Jarauta', 'C/ Pedro María Ric, 3- 2º A', '50008', '976225175', '651380743', '', '', 'Zaragoza', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (490, 'Ana', 'Pérez Palomares', 'Avda. Juan Pablo II, 40 -2° B', '50009', '', '600 570 528', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (958, 'Teresa', 'Gonzalez', 'Plaza Mariano Arregui Nº 15- 6º B', '50005', '976- 214644', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (492, 'Belén', 'Pina', 'Cesario Alierta, 20 Escl. A - 4°B', '50008', '976 215 729', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (493, 'Cristina', 'Plaza', 'P° Las Damas, 3-6° A', '50008', '976 22 04 88', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (494, 'María Jesús', 'Plou', 'Avda. Pablo Gargallo, 21- 2°B', '50003', '976 430 123', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (495, 'María Teresa', 'Polo', 'Cesario Alierta, 99 -8° A Escl. Izda.', '50013', '976 830 955', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (496, 'Pilar', 'Portoles', 'Torres de San Lamberto, Chalet 12- B', '50011', '976 33 95 35', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (497, 'Mirian', 'Pueyo', 'Cesario Alierta, 47 - 4° D', '50008', '976 59 47 81', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (498, 'Blanca', 'Pueyo', 'Juan Pablo II, 64- 1° B', '50009', '976 754 614', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (499, 'Mercedes', 'Pueyo', 'Pl. San Francisco, 13 -3° A', '50006', '976 353 930', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (500, 'Mercedes', 'Quintanilla', 'Duquesa Villahermosa, 42 - 6° B', '50010', '976 53 15 72', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (501, 'Caritina', 'Rabinad', 'c/ Andrés Gúrpide, 7-3° E', '50008', '976 598 771', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (502, 'Pilar', 'Ramón y Cajal', 'C° de Las Torres, 42 -3° Dcha.', '50008', '976 212 296', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (503, 'María Pilar', 'Rayado', 'Plaza España, 2 - 1° F', '50660', '976 854 887', '', '', '', 'TAUSTE', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (504, 'Ana', 'Recaj', 'Avda. Gómez Laguna, 43- 9° E', '50009', '976 07 56 32', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (505, 'Angélica', 'Rigopoulou', 'San Ignacio de Loyola,  6-5° Izda.', '50008', '976 224 441', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (506, 'Pilar', 'Rillo', 'P° Isabel La Católica, 5- 9° Izda.', '50009', '976 566 673', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (507, 'Ana', 'Rios', 'c/ La Almunia de D. Godina, 26-5° Dcha.', '50003', '976 437 344', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (508, 'María José', 'Rios Mitchell', 'Doctor Cerrada, 24 "Los Abetos", 5° Dcha.', '50005', '976 226 331', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (509, 'Paloma', 'Rivas', 'Condes de Aragón, 16-5° B', '50009', '976 55 00 70', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (776, 'MAR', 'MARTINEZ GAMARRA', 'ZURITA 13,2º C', '50001', '976-222209', '679967306', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (511, 'Elaine', 'Robinson', 'Apartado de Correos, 786', '50080', '976 752 994', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (512, ' María Asunción', 'Rodrigo', 'Santander, 23 - 8° I', '50010', '976 565581', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (513, 'María Jesús', 'Rodrigo', 'Avda. Ilustración, 24- P.102B.C.4', '50012', '976 750 753', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (514, 'María', 'Rodriguez', 'López de Luna, 33- 2°', '50009', '976 551 935', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (515, 'Virginia', 'Román', 'Calvo Sotelo, 38', '50637', '976 618 113', '', '', '', 'REMOLINOS', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (516, 'Nieves', 'Romanos', 'c/ San Antonio Ma. Claret, 39-41, 4° Izda.', '50004', '976 556 776', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (517, 'Esther', 'Romea', 'C/ Pedro María Ric, 13- Pral. Dcha.', '50008', '976 229 113', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (518, 'Merche', 'Romeo', 'Residencial Paraiso, 11- 9° C', '50008', '', '616 414 746', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (519, 'María Angeles', 'Romo  Argota', 'C/ Carmelo Betoré, 2 Casa 4 - 9° A', '50014', '', '699 478 723', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (917, 'Amelia', 'Pelaez', 'C/ Allue Salvador nº 11- 3º B', '50001', '976- 227589', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (521, 'Isabel', 'Ros', 'Cardenal Goma, 3-3°B', '50009', '976 565 196', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (522, 'Asunción', 'Rosel', 'c/ Fanlo, 8 Casa 1', '50012', '976 458 750', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (523, 'Eva', 'Royo', 'Camino Del Regadio, 2', '44593', '978 820 507', '', '', '', 'URREA DE GAEN', '(Teruel)', '', '');
INSERT INTO `clientes` VALUES (525, 'Ana', 'Royo', 'Camino de Las Torres, 23- 3° E', '50008', '976 41 59 88', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (526, 'Pilar', 'Royo', 'Gran Vía, 17 Dpldo. 2° Izda.', '50008', '976 237 617', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (527, 'María Jesús', 'Royo Domínguez', 'AVDA. DE LA ILUSTRACIÓN Nº 3 CASA 67', '50012', '976 754 641', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (528, 'María Jesús', 'Rubio', 'C/ Salvador Allende, 9 -2° C', '50015', '976 521 414', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (529, 'Pilar', 'Rubio Loren', 'C/ Cortes de Aragón, 24- 3° C', '50005', '976 217 952', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (530, 'Clara', 'Ruiz', 'Francisco Vitoria, 27 - 3° A', '50008', '976 232 821', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (531, 'Carmen', 'Ruiz de la Cuesta', 'Pedro IV,   4-4° Dcha. A', '50009', '976 558295', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (532, 'María Angeles', 'Ruiz de la Cuesta', 'c/ Santa Teresa, 53- 3° A', '50006', '976 558295', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (533, 'María Pilar', 'Ruiz de Temiño', 'Pl. San Francisco, 7- 2° Izda.', '50006', '', '669 903 037', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (534, 'Virginia', 'Ruiz Lahoz', 'C° Las Torres, 15-9°A', '50008', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (535, 'Lucía', 'Sabalza', 'c/ Valle de Broto, 18 Escl. Izda. 5° E', '50015', '976 741 159', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (536, 'Begoña', 'Sáiz', 'Nuestra Sra. de Monlora, 1- 1° B', '50007', '976 250 354', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (537, 'Inmaculada', 'Salazar', 'P° Constitución, 13 -7° A', '50001', '976 211 089', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (538, 'Carmen', 'Salcedo', 'Hernán Cortés, 34-Farmacia', '50004', '976 22 55 76', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1077, 'Mª Pilar', 'Montañes', 'C/ San Ignacio de Loyola Nº 6 Pral. Centro', '50008', '976- 223038', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (540, 'Sara', 'Sanchez', 'Plaza España, 11', '50461', '976 628 334', '', '', '', 'ALFAMEN', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (541, 'Belén', 'Sanchez', 'Felipe V, 40', '50100', '976 601 151', '', '', '', 'LA ALMUNIA D. GODINA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (543, 'Pili', 'Sanchez', 'Asalto, 55 Casa 3 -3° A', '50002', '976 390 747', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (544, 'Pilar', 'Sanchez', 'Avda. Compromiso de Caspe, 13 -5°  1a', '50002', '976 429 268', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (545, 'Amparo', 'Sanchez Lafuente', 'C/. Almagro, 11-13-6° C', '50004', '976 21 26 27', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (546, 'Cristina', 'Sanchez Zapater', 'Cesario Alierta, 22-3° D', '50008', '976 21 98 45', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (547, 'Isabel', 'Sancho', 'c/ Pablo Gargallo, 23-6° D', '50003', '976 444 967', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (548, 'Luisa', 'Sancho Salas', 'Avda. Sancho Abarca, 66-Escl. 2a-3° A', '50660', '', '677 974 502', '', '', 'TAUSTE', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (549, 'Mariana', 'Sanguesa', 'Predicadores, 121- 4° C', '50003', '976 28 00 75', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (713, 'Mº ANGELES', 'JAVIERRE LORIS', 'MONASTERIO DEOBARRA Nº 1-3ºA-DCHA.', '50002', '', '659358170', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (551, 'Silvia', 'Santamaría', 'P° Constitución, 13 - 3° A', '50001', '976 211 053', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (552, 'Pilar', 'Santiago', 'Andador Luis Puentes, 10- 5° B', '50008', '976 41 02 24', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (553, 'Laura', 'Santolaria', 'C/ Cesario Alierta, 38-40 Escl. 1a-1°C', '50008', '976 419726', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (554, 'Sara', 'Santos', 'Francisco de Vitoria, 13- 3° C', '50008', '976 223 784', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (557, 'Eva', 'Sanz', 'Avda. Cesario Alierta, 52- 6° A', '50008', '976 498 864', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (558, 'Rosa María', 'Sasal Ascaso', 'Avda. Juan CarlosI, 57-1°C', '50009', '', '609 351 960', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (825, 'CRISTINA', 'RAMIREZ', 'C/ PABLO GARGALLO Nº 13- 3º- A- ESC.DCHA.', '50003', '', '616-947242', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (560, 'María Jesús', 'Sau', 'C/ Canfranc, 9', '50004', '976 230 734', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (561, 'Teresa', 'Saura', 'Pedro María Ric, 9- 4° C', '50008', '976 238 874', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (562, 'Concha', 'Seguer', 'C/ Costa, 12- 3° Izda.', '50001', '976 238 871', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (563, 'María Luz', 'Segura', 'P° Reyes de Aragón, 18 Casa D, 3° Izda.', '50012', '976 567 756', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (564, 'Rosa María', 'Senra', 'Avda. Goya, 86 -7° A', '50005', '976 22 66 26', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (565, 'Inmaculada', 'Serichol', 'Avda. Tenor Fleta, 26 Escl. Izda. 3° Dcha.', '50007', '976 277 874', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (566, 'Olga', 'Serrano', 'Santa Teresa, 49-51- 6° Izda.', '50006', '976 353 006', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (567, 'Angeles', 'Serrano', 'Avda. Valencia, 41- 4° A', '50005', '976 223 790', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (568, 'Conchita', 'Serrano', 'Ponzano, 8- 3° Izda.', '50004', '976 211 403', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (569, 'María Angeles', 'Serrano Coyo', 'Avda. de La Rioja, 59- 3°', '26520', '941 177 373', '', '', '', 'CERVERA DEL RIO ALHAMA', '( La Rioja )', '', '');
INSERT INTO `clientes` VALUES (570, 'Ana', 'Sese', 'Melchor Gaspar de Jovellanos,3 Casa 50', '50012', '', '607 250 401', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (571, 'Lourdes', 'Sesma', 'Pl. del Pilar, 14 -2°', '50014', '', '629 455 501', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (572, 'Lilia', 'Severin', 'Cmno. Estación, 42 Casa 23', '50180', '', '607 987 073', '', '', 'UTEBO', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (573, 'Teresa', 'Sevilla', 'P° Ruiseñores, 26 casa, 6-3° A', '50006', '976 254 078', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (574, 'Lola', 'Sierra', 'Pl. Emilio Alfaro, 2 - 9° E', '50003', '976 28 53 85', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (575, 'Elena', 'Sin Imaz', 'C/ Madre Vedruna, 31-4° Izda.', '50008', '976 221 222', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (576, 'María Jesús', 'Solán', 'Doctor Alcay, 10- 6° Dcha.', '50006', '976 252 950', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (577, 'María Angeles', 'Solana', 'Farmacia', '50250', '976 820 264', '', '', '', 'ILLUECA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (578, 'Emilia', 'Solana', 'c/ Río Martín, 1 -1° B', '50014', '976 573 243', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (579, 'María Luisa', 'Solanas', 'Av. Anselmo Clave,37-45 Bl-5 Escl. Izd. 9°B', '50004', '976 283 642-976-2198', '649- 307453', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (580, 'Maria Pilar', 'Solans', 'Josefa Amar y Borbón, 5 y 7- 4° C', '50001', '976 22 63 84', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (581, 'Fina', 'Soria', 'c/ Felipe V, 42', '50100', '976 812 724', '', '', '', 'LA ALMUNIA DE DOÑA GODINA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (582, 'Isabel', 'Soria', 'P° Constitución, 13- 3°B', '50008', '', '616 939 854', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (583, 'María Angeles', 'Soto', 'P° Constitución, 10- 4° Izda.', '50008', '976 220 626', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (584, 'María Fernanda', 'Sotomayor', 'Gómez Laguna, 16 - 12° B', '50009', '976 55 08 23', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (585, 'Carmen', 'Puertas', 'P° Rosales, 30 -6° A', '50008', '976 495 791', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (586, '', 'Sra. De Canales', 'C° Las Torres, 35 Escl. Izda. 6° 1a', '50008', '976  497 218', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (587, '', 'Sra. de Duque', 'Felipe Sanclemente, 13-3° Izda.', '50001', '', '661 764 661', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (700, 'Mª Luisa', 'de la Tajada', 'Fernando el Catolico-Nº61-Esca.Izda.4º-B', '50006', '976-558288', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (589, '', 'Sra. de Franco', 'P° Constitución, 18- 4° A', '50008', '976 238 745', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (590, '', 'Sra. de Garcia Sanchez', 'Plaza de Aragón, 4- 6° B', '50004', '976 23 87 25', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (591, '', 'Sra. de las Heras', 'Pl. Aragón, 4- 4° C', '50001', '976 220 066', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (715, 'Mª LUISA', 'SANCHEZ LANUZA', 'C/ JUAN II DE ARAGÓN Nº 4, 1º B', '50009', '976-565329', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (593, '', 'Sra. de Martínez Albornoz', 'P° Constitución, 23 -6° Dcha.', '50001', '976 216 723', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (594, '', 'Sra. de Miguel', 'Andador Luis Puentes, 6 - 4° C', '50008', '976 59 55 54', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (595, '', 'Sra. de Tena', 'C/. Gran Vía, 11- Escl. B-6° 4a.', '50006', '976 22 10 92', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (596, '', 'Sra. Milagros Cabanero', 'c/ Tenor Fleta, 57- A -1° A4', '50008', '976 497 334', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (597, '', 'Sra. Pilar Tomás', 'Avda. Cesareo Alierta, 18 Escl. 1a-2° Izda.', '50008', '976 217 946', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (598, 'Amparo', 'Susan', 'Residencial Paraiso, 5 Escl. G-8° B', '50008', '976 22 83 33', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (599, 'María Angeles', 'Taboada', 'Pl. Salamero, 14- 6° B', '50004', '976 211 478', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (600, 'Beatriz', 'Tarín', 'Pl. Utrillas, 3-8°A', '50013', '976 49 07 14', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (601, 'Mari Luz', 'Tejada', 'Juan Carlos I, 55 -10° A', '50009', '976 553 940', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (602, 'Carmen', 'Tejero', 'Avda.Zaragoza, 3- 1° Dcha.', '50630', '976 610 252', '', '', '', 'ALAGON', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (603, 'Mercedes', 'Tejero Antoñanzas', 'C/ Bielsa, 19 -5° B', '50014', '976 512 066', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (604, 'Cristina', 'Tejero Higueras', 'P° de la Azucarera,26', '50630', ' Casa 976 61 08 45', '', '', '', 'ALAGON', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (605, 'Esperanza', 'Tella', 'Avda. Puerta de Sancho, 25 -Escl. Izda. 1° D', '50003', '976 280 798', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (606, 'Maria Carmen', 'Teller', 'Pamplona Escudero, 19 - 1° A', '50005', '976 35 90 13', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (607, 'Pilar', 'Tirado Angles', 'Urbanización Britania, casa 102', '50410', '976 504 578', '649-155767', '', '', 'CUARTE DE HUERVA', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (608, 'Gloria', 'Toledo', ' Compromiso de Caspe, 1-7° B-Escl. Izda.', '50002', '976 594 993', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (609, 'Pilar', 'Torralba', 'San Vicente Martir, 26 - 1° Izda.', '50008', '976 226 288', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (610, 'María Luisa', 'Torre Mañas', 'C/ García Galdeano, 22 -1° Izda.', '50004', '976 230 297', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (611, 'Ana Belén', 'Torrero', 'Avda. de Madrid, 62-4°', '50010', '976 531 981', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (612, 'María Angeles', 'Torres', 'Sancho Ramírez, 13- 9° C', '50007', '976 254 365', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (613, 'Carmen', 'Torres Solanot', 'c/ Fanlo, 8- Casa-9', '50012', '976 756 842', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (614, 'Asun', 'Trasobares', 'Pradilla, 32 -2° Izda.', '50007', '630 610 203', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (915, 'Conchita', 'Chacón', 'Cesareo Alierta Nº 8- Escal.Izda. 4º D', '50008', '', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1095, 'Mª Antonia', 'Bona', 'Avda. Pablo Gargallo Nº 47- 4º A', '50003', '976- 433113', '658- 362010', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (617, 'Consuelo', 'Tutor', 'C/. Diaz de Mendozano, 20-22 - 4° B.', '50009', '', '639 52 11 58', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (618, 'Inés', 'Uguet', 'c/ Canfranc, 3-6° A', '50004', '976 222 171', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (619, 'Ana', 'Urbano', 'c/ Gallarre, 7', '31512', '948 826 232', '', '', '', 'FONTELLAS', '(Navarra)', '', '');
INSERT INTO `clientes` VALUES (620, 'Ascensión', 'Uriel', 'C° de Las Torres, 39 - Casa 2 - 8° A', '50008', '976 42 27 19', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (621, 'Natalia', 'Urigoitia', 'Santa Barbara, 2', '50410', '976 50 42 28', '', '', '', 'CUARTE DE HUERVA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (622, 'Carmen', 'Urtubia', 'Avda. Ilustración, 24 Casa 79', '50012', '976 755 495', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (623, 'María Pilar', 'Usan', 'c/ Ramón J. Sender, 1- 2° Dcha.', '50660', '976 855 289', '', '', '', 'TAUSTE', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (624, 'Delia', 'Utrilla', 'Duquesa Villahermosa, 143-1° A', '50009', '976 204 350', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (625, 'Natalia', 'Utrilla La Cruz', 'c/ José Nebra, 3 -6° D', '50007', '', '626 180 443', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (626, 'María Esther', 'Vacas', 'C/ Juan Carlos I, 57-7°A', '50009', '976 568 368', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (627, 'Laura', 'Vallejo', 'Mediodía, 14 - 4° B', '50014', '976 29 76 62', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (993, 'Elzbieta', 'Pietrzkiewicz', 'Cl. San Vicente Martir, 18- 4º- 1ª', '50008', '976 224 132', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (660, 'Mª Luz', 'Abian', 'VIA IBERICA 17-23-CASA 2- 2º A', '50009', '976 56 55 19', '', '', '', 'ZARAGOZA', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (630, 'Rosa', 'Varona', 'P° Reyes de Aragón, 23-2° A', '50012', '976 569 761', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (631, 'Concha', 'Vega', 'C/ Juan de Lanuza, 10- 4°', '22300', '974 31 07 28', '', '', '', 'BARBASTRO', '(Huesca)', '', '');
INSERT INTO `clientes` VALUES (632, 'Carmen', 'Vela', 'Avda. Juan Pablo II, 40 -8° A', '50009', '', '607 860 405', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (633, 'Pilar', 'Velasco', 'P° Reyes de Aragón, 23 Casa 1- 3° D', '50009', '976 56 83 76', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1066, 'Marta', 'Trasobares', 'C/ Leòn Felipe Nº 8- 3º D', '50018', '', '606- 980466', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (635, 'Maria José', 'Vidorreta', 'PL. Albert Schweitzer, 2- 9° A', '50008', '976 219 889', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (636, 'Pilar', 'Vigil', 'c/ Fco. Vitoria, 30 -2° A', '50008', '976 213 650', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (637, 'Berta', 'Vilellas', 'C/ Ejea, 18- B', '50660', '976 859 444', '', '', '', 'TAUSTE', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (638, 'Pilar', 'Villafranca', 'P° María Agustín, 86-Escl. Izda. 1°B', '50003', '976 446 004', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (639, 'Mayte', 'Villagrasa', 'c/ Zaragoza La Vieja,6 -3° D', '50007', '976 255 346', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (640, 'Maribel', 'Villalba', 'Pl. Aragón, 12 - 1°', '50004', '976 223 539', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (641, 'Amelia', 'Villanueva Carela', 'Justo Dorado,19 Montañana', '50016', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (642, 'Verónica', 'Villarroya', 'Vía Hispanidad, 71 -Portal, 7-1° A', '50012', '976 324 241', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (644, 'Blanca', 'Villaverde', 'c/ Río Esera, 9- 3° B', '50003', '976 283 222', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (645, 'María', 'Vinué', 'C° Fuente de La Junquera, 100 Casa 7', '50012', '976 561 806', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (646, 'Mayte', 'Viruete', 'c/Barrichuelo, 1', '50290', '976 604 377', '', '', '', 'EPILA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (647, 'María Pilar', 'Viruete', 'Andres Ruiz Castillo, 4- 4° B', '50015', '976 29 04 03', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (648, 'María Pilar', 'Viscasillas', 'Cesario Alierta, 22-7° A', '50008', '976 239 189', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (826, 'ALICIA', 'LANA ALDEA', 'C/ FELISA GALE Nº 28', '50014', '976- 470277', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (650, 'Cristina', 'Ximénez Embun', 'Avda. César Augusto, 20- 9° A', '50004', '976 226 440', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (651, 'Laura', 'Yago Abril', 'Ramiro II - casa 7', '50410', '976 207 330', '', '', '', 'Cuarte de Huerva', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (652, 'Pilar', 'Yagüe', 'Vía Pignatelli, 7 -8° D', '50007', '976 385 497', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (653, 'Pilar', 'Yus', 'c/ Illueca, 3- Escla. 2a-10° C', '50008', '976 593 735', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (654, 'Cristina', 'Zapater', 'Miguel Servet, 34-36 Casa 6- 6°B', '50008', '976 42 34 17', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (655, 'María Pía', 'Zazu', 'Camino de Las Torres,41-2° C', '50008', '976 424 471', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (853, 'ROSALINDA', 'ROCHE', 'C/ SANTIAGO GUALLAR Nº 2', '50006', '976- 383394', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (657, 'Pilar', 'Zuferri', 'Dr. Horno, 26- 6° G', '50004', '976 28 50 76', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (658, 'Esperanza', 'Zurdo', 'Sta. Lucia, 11- 1°-E-Escl. Izda.', '50003', '976 436 171', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (659, 'Sra.', 'Blasa Suñer', 'Val de Zafan, 4', '44511', '978 826 506', '', '', '', 'LA PUEBLA DE HIJAR', '(Teruel)', '', '');
INSERT INTO `clientes` VALUES (661, 'Joan', 'Esteruelas', 'C/ MANUEL LASALA Nº 38-9º B', '50006', '976566340', '', '', '', 'ZARAGOZA', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (662, 'MATILDE', 'GARCIA', 'AVDA. GOYA 21,9º IZQ.', '50006', '670538338', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (663, 'ROSINA', 'IRANZO', 'PASEO TERUEL 26,CASA 11,1º B', '50004', '976214508', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1043, 'Isabel', 'Garcia', 'Via Chiprana Nº 60 casa', '50002', '', '649- 926945', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (666, 'Mª PILAR', 'PALOS', 'AVDA. JUAN PABLO II,68,7ºB', '50009', '976-754435', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (667, 'ARACELI', 'EISMAN', 'C/ RIO AGUAS LIMPIAS Nº 1', '50196', '639313067', '', '', '', 'LA MUELA', ' ( ZARAGOZA )', '', '');
INSERT INTO `clientes` VALUES (668, 'ELENA', 'REGODÓN', 'C/ MIGUEL DE UNAMUNO 21,7º C', '50018', '976-525462', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (669, 'ROSA', 'CAÑÓN', 'C/ MIGUEL SERVET 29,3º B', '50002', '976-499067', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (670, 'MARIA JESUS', 'MIRAMÒN', 'C/ AGUSTINA  SIMÒN Nº 2-2º D', '50004', '976215882', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (671, 'LUCIA', 'HIGUERAS', 'AVDA. ZARAGOZA 132', '50630', '976-610446', '', '', '', 'ALAGON', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (672, 'ANGELES', 'SANCHO', 'C/ LORENZO PARDO 8, 2º IZQ.', '50008', '976-490572', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (673, 'Mª PILAR', 'ORTE', 'PASEO REYES DE ARAGÓN 18 B,4º IZQ.', '50009', '976-569080', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (674, 'BERTA', 'MARIN', 'MARIA LOSTAL Nº 9- 2º B', '50008', '976221164', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (675, 'ESTELA', 'IBAÑEZ', 'C/  ROYO 23- 5º', '50006', '976227222', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (676, 'ISABEL', 'ALADRÉN', 'C/ CERVANTES 41,2º B', '50006', '976-225119', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (677, 'Mº LUZ', 'GOMARA', 'Pº ROSALES   Nº 26 Escal.2ª 7º A', '50008', '976591837', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (678, 'IMMACULADA', 'ESTEVAN', 'MADRE VEDRUNA Nº 9 - 2º DCHA', '50008', '976228066', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (679, 'Mª PILAR', 'POLA', 'SAN CRISTOBAL Nº 10,1º', '50660', '976-859063', '', '', '', 'TAUSTE (ZARAGOZA)', '', '', '');
INSERT INTO `clientes` VALUES (680, 'Mª CARMEN', 'LARRODE', 'C/ ALFONSO 1,Nº 55', '50660', '976-855545', '', '', '', 'TAUSTE', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (681, 'CAREN', 'TELLO', 'C/ VALLE DE BROTO Nº 3,6º DCHA.', '50015', '976-518282', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (682, 'Mª CARMEN', 'HERNANDEZ CALANDIN', 'AVDA. GOYA Nº 47,6º,4ª', '50006', '976-557144', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (683, 'ISABEL', 'LOZANO', 'TENOR FLETA 53-6º 4ª puerta', '50008', '976412660', '', '', '', 'zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (684, 'MARIA', 'AZCOITI', 'C/ JOSE LUIS POMARÓN 3,4ºB', '50008', '629099140', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (685, 'Mª ISABEL', 'GIMENEZ BALLESTEROS', 'C/ CAMINO DE LAS TORRES 16,1º B', '50008', '976-591595', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (686, 'MARTA', 'GRACIA LATORRE', 'C/ CERVANTES 32- 3º D.', '50006', '699916433', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (687, 'LOLI', 'GUILLEN', 'ANDADOR DE LOS HUDIES Nº-8- 6º- DCHA', '50009', '976559957', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (688, 'ARRATE', 'MARCOS PEREZ', 'C/ ENRIQUE VAL Nº 4, ESC, 1,1º C', '50011', '667733937', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (689, 'ALICIA', 'PONZAN', 'MIGUEL SERVET  Nº 174 PORTAL 2-3º-C', '50013', '976429351', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (690, 'LOURDES', 'PEREZ VISCASILLAS', 'C/ MONCAYO Nº 8 -1º B', '50010', '976292243', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (691, 'NURIA', 'RODRIGUEZ CANO', 'PARQUE ROMA D2-9ºA', '50010', '976340768', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (692, 'FLORA', 'MESA TORRES', 'C/ JACINTO BENAVENTE1-5-CASA 1-4º-D', '50006', '976274174', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (693, 'AURORA', 'LUENGO', 'C/   INDEPENDENCIA 30-4º B', '50004', '976229302', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (694, 'Carmen', 'Laborda', 'C/ Ibon de la Solana Nº 20- casa  nº 5', '50011', '976- 324540', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (695, 'ISABEL', 'PEREZ', 'AVDA. GOYA Nº 3 -1ª ESCALERA-3º DCHA', '50006', '976256390', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (696, 'PILAR', 'IBARZ', 'C/ SOLIDARIDAD 30,2º A', '50016', '976-573645', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (697, 'PILAR', 'GONZALEZ', 'AVDA. ILUSTRACIÒN Nº 11-CASA 84', '50012', '976-750993', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (698, 'Mª ANGELES', 'MARTINEZ', 'C/ PILAR Nº 26', '50195', '976-586671', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (702, 'Ana', 'Artigas', 'Camino de las Torres Nº 35-Esca.Dcha.4º-2ª', '50008', '976-494971', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (703, 'Pilar', 'Gaimon', 'c/ Alfonso Solans Nº 3- Casa 5- 4º-B', '50014', '976-394238', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (725, 'Mª  Paz', 'Miranda', 'Ave. Alcalde Sainz de Varanda, 20 - 6º B', '50009', '976-330658', '609-314273', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (707, 'Pilar', 'Fuertes Aguilar', 'Urbanizacion Torres  San Lamberto,chalet Nº 29-D', '50011', '976-538884', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (708, 'SRA.', 'DE BAZTÁN', 'PASEO CONSTITUCIÓN 26, 7º B', '50008', '646983155', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (710, 'Mª PILAR', 'ARREGUI MORENO', 'C/ CESAREO ALIERTA 15, 2º B', '50008', '976-590180', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (711, 'SARA', 'ASO PUERTOLAS', 'C/ MONCASI Nº 4,PRAL DCHA', '50006', '976-276539', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (712, 'MERCEDES', 'ESTEVE', 'PASEO SAGASTA 56,3º', '50006', '976-251853', '619746485', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (716, 'TERESA', 'VELILLA VALERO', 'C/ SALVADOR  ALLENDE 27', '50461', '976-626287', '675268730', '', '', 'ALFAMEN ( ZARAGOZA)', '', '', '');
INSERT INTO `clientes` VALUES (717, 'TERESA', 'COLAS', 'Vía Hispanidad Nº 67-Casa 4- 1º B', '50012', '976-323244', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (718, 'Mª ANGEL', 'SANCHO CASTELLÓ', 'AVDA. GOYA 49, 2º', '50006', '976-557096', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (719, 'MARIA', 'ESTRAMPES', 'Pº INDEPENDENCIA Nº30 - 3º C.', '50004', '976-224912', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (721, 'Mª VICTORIA', 'HERNANDEZ MARCO', 'AVDA. ILUSTRACIÓN Nº 11- CASA 7', '50012', '976-756666', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (722, 'AGUSTINA', 'LAZARO LAZARO', 'GOMEZ LAGUNA Nº 1- 2º D', '50009', '', '', '', '', '', 'ZARAGOZA', '', '');
INSERT INTO `clientes` VALUES (723, 'CARMINA', 'MAESTRO ZALDIVAR', 'GRAN VIA Nº 11,ESC. C,6º, PUERTA 39', '50006', '617767744', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (724, 'Mª PILAR', 'BOLOIS LATORRE', 'Pº ROSALES Nº 22-7º C.', '50008', '976-591374', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (726, 'MERCEDES', 'PLAZA  ALFONSO', 'CESAREO ALIERTA 15,4º E', '50008', '976-413647', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (727, 'OLGA', 'OTEO RALLO', 'JULIAN GALLEGO Nº 58-2º B.', '50018', '976-741130', '', '', '', '', 'ZARAGOZA', '', '');
INSERT INTO `clientes` VALUES (728, 'Mª ISABEL', 'BUDE', 'C/ ARQUITECTO MADALENA Nº6-3º B', '50001', '', '607-222397', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (729, 'Mª PETRA', 'JIMENEZ', 'PABLO GARGALLO Nº 35-7º-C', '50003', '976-438294', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (745, 'ANGELES', 'BAZÁN', 'AVDA. GOYA 66, PRAL. DCHA.', '50005', '976-225465', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (732, 'ISABEL', 'MARTINEZ', 'BALBINO ORENSANZ Nº17-8ºB', '50014', '976-204194', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (733, 'ELENA', 'BUDRIA', 'C/ LEON XIII- Nº 33,ESC.F, 7º D', '50008', '976-234046', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (734, 'PILAR', 'HERRAEZ', 'SAN ANTONIO MARIA CLARÉT 27-33, 3º E', '50005', '976-559104', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (735, 'CONSUELO', 'LERA ESCAR', 'PEDRO ARNAL CAVERO 10,ATICO A', '22002', '974-221617', '', '', '', 'HUESCA', '', '', '');
INSERT INTO `clientes` VALUES (736, 'Mª PILAR', 'MARTINEZ MENADAS', 'C/ ARAGÓN 27', '44200', '978-730382', '', '', '', 'CALAMOCHA', '( TERUEL )', '', '');
INSERT INTO `clientes` VALUES (737, 'Mª JOSÉ', 'MARTINEZ MENADAS', 'C/ ARAGÓN 23', '44200', '978-732370', '', '', '', 'CALAMOCHA', '( TERUEL)', '', '');
INSERT INTO `clientes` VALUES (738, 'Maria', 'Miguel Sanz', 'C/ Huertas Nº 50- 2º A', '28014', '', '657232376', '', '', 'MADRID', '', '', '');
INSERT INTO `clientes` VALUES (838, 'Mª ANTONIA', 'ESTEVEZ', 'C/ SAN VICENTE DE PAUL Nº 41- 1º', '50001', '976- 392910', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (992, 'Sagrario', 'Hernández', 'C/ Valle de Zuriza, 15- 5º C', '50015', '976 512 557', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (741, 'JUANA', 'PASTOR', 'C/ TERRER Nº 1-CASA 6', '50420', '610-492132', '', '', '', 'SANTA FE- CADRETE', '(ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (742, 'ANA MARIA', 'RIVERA BRUBALLA', 'C/ SAN ANTONIO MARIA CLARET Nº4-2º DCHA', '50005', '976-564020', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (743, 'ISABEL', 'VALLEJO', 'FERNANDO DELGADO Nº6-10ºA', '28047', '91-4625781', '', '', '', 'MADRID', '', '', '');
INSERT INTO `clientes` VALUES (744, 'CARMEN', 'CHARLEZ MILLÁN', 'AVDA. GOMEZ LAGUNA -44, 13-C', '50009', '616550561', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (746, 'Mª TERESA', 'CRISTOBAL', 'C/ DEL MEDIO 80', '50780', '976-178162', '', '', '', 'SÀSTAGO', '( ZARAGOZA )', '', '');
INSERT INTO `clientes` VALUES (749, 'INMA', 'HUGUET', 'C/ PICASO  S/N', '50740', '976-160880', '', '', '', 'FUENTES DE EBRO', '( ZARAGOZA )', '', '');
INSERT INTO `clientes` VALUES (750, 'MONTSERRAT', 'HUGUET', 'C/ HENRI DONAT  Nº 3', '50740', '976-160675', '', '', '', 'FUENTES DE EBRO', '( ZARAGOZA )', '', '');
INSERT INTO `clientes` VALUES (751, 'Mª JOSE', 'MARCO', 'PZA. ESPAÑA 3', '50137', '976-146065', '', '', '', 'PUEBLA DE ALBORTÓN', '( ZARAGOZA )', '', '');
INSERT INTO `clientes` VALUES (752, 'CONCHA', 'NADAL', 'C/ JORGE COCCI Nº 24, 2º C', '50002', '976-418543', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (753, 'Mª CARMEN', 'MARIN MATEO', 'CTRA. DE ARANDA Nº 12', '50246', '976-824775', '', '', '', 'BREA DE ARAGÓN', '( ZARAGOZA )', '', '');
INSERT INTO `clientes` VALUES (754, 'ANA', 'GARCIA MAINAR', 'PASCUAL ALBERO BURILLO Nº6-1º-B', '50002', '976-297893', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (755, 'EVA', 'PADILLA', 'RAQUEL MELLER Nº 12-2º-B', '50008', '976-486409', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (756, 'TERESA', 'CHAVARRI', 'C/ POETA PEDRO MARCUELLO Nº7', '50280', '976-607285', '', '', '', 'CALATORAO', '(ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (757, 'BEATRIZ', 'AISA', 'C/ SANTA ROSA Nº 7', '22520', '974-471825', '', '', '', 'FRAGA', '( HUESCA)', '', '');
INSERT INTO `clientes` VALUES (758, 'Mª JOSE', 'PABLO GARCIA', 'C/ FUENTERRABIA Nº 5-ESCA.IZDA.9º-C', '50004', '976-432121', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (759, 'Mª BELEN', 'LABORDA SANCHEZ', 'C/ SANJURJO Nº 5-1º-B', '50660', '976-859529', '', '', '', 'TAUSTE', '(ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (760, 'BELEN', 'SACRAMENTO ASENSIO', 'C/ JOSE OTO Nº 6', '50250', '', '', '', '', 'ILLUECA', '(ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (762, 'TERESA', 'GARCECHE', 'C/ HERRERIAS Nº 30-', '31515', '948-836112', '', '', '', 'CADREITA', '(NAVARRA)', '', '');
INSERT INTO `clientes` VALUES (763, 'Mª JESÚS', 'USÁN', 'PASEO CONSTITUCIÓN  Nº 11', '50668', '976-860130-(860126)', '', '', '', 'PRADILLA DE EBRO', '( ZARAGOZA )', '', '');
INSERT INTO `clientes` VALUES (764, 'PILAR', 'SANCHO', 'C/ EL TEJAR Nº 36', '50650', '976-857412', '', '', '', 'GALLUR', '(ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (765, 'ASCENSIÓN', 'SANCHEZ-SANCHEZ', 'PASEO ADARVES Nº13-1º-B', '19.300', '949-830788', '', '', '', 'MOLINA DE ARAGON', '(GUADALAJARA)', '', '');
INSERT INTO `clientes` VALUES (766, 'SOLEDAD', 'BÚRDALO', 'ADOLFO AZNAR 26,8º B', '50018', '976-522843', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (767, 'LAURA', 'TORRES', 'C/ GOYA 11', '50019', '976-601084', '', '', '', 'ALPARTIR', '( ZARAGOZA )', '', '');
INSERT INTO `clientes` VALUES (768, 'LETICIA', 'BARRIOS TORRES', 'C/ GOYA 11', '50019', '976-601084', '', '', '', 'ALPARTIR', '( ZARAGOZA )', '', '');
INSERT INTO `clientes` VALUES (769, 'PILAR', 'LONGAS', 'C/ CARIÑENA Nº 2-5º-B', '50010', '976-326846', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (770, 'AFRICA', 'NAVARRO ROYO', 'RESIDENCIAL PARAISO Nº3-9º-C', '50008', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (779, 'Mª TERESA', 'ASIN', 'Pº DAMAS Nº 3-2º B', '50008', '976-233678', '678-436134', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (780, 'ISABEL', 'ESTEPA', 'MARIANA PINEDA 28,4º D', '50018', '976-514717', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (781, 'Mª DOLORES', 'SINUES', 'AVDA. SAN JOSÉ 54, 7º C', '50008', '976-417775', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (782, 'Mª JESÚS', 'BORRAZ', 'FCO. GARCÍA TORCAL 18', '50016', '', '620599000', '', '', 'SANTA ISABEL (ZARAGOZA)', '', '', '');
INSERT INTO `clientes` VALUES (783, 'AMPARO', 'CALATAYUD', 'Pº DE LOS TILOS 9, BAJO IZQ.', '50012', '976-752004', '', '', '', 'URB. LA FLORESTA - ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (784, 'ARANCHA', 'VERGARA', 'GOMEZ LAGUNA 9,6º C', '50009', '976-567978', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (785, 'JULIA', 'UTRILLA', 'DON JAIME I   Nº 35- PRAL. DCHA.', '50003', '976- 293041', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (786, 'MARIA ELISA', 'SANMARTÍN IBORT', 'C/  PIRINEOS 15', '22280', '976-691212', '', '', '', 'GURREA DE GÁLLEGO', '( HUESCA )', '', '');
INSERT INTO `clientes` VALUES (789, 'Mª Elena', 'Ibarra', 'Avda. Ilustración Nº 11- casa Nº 24', '50012', '976-401875', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (790, 'Mª PILAR', 'DIAZ', 'C/ LASALA VALDES Nº 20-10º-D', '50006', '', '610201479', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (792, 'MARIBEL', 'ALONSO VAZQUEZ', 'CAMINO DE LAS TORRES Nº43-ESCA .2ª-1º 3ª', '50008', '976-590577', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (793, 'MARIA MERCEDES', 'GARCÍA TORCAL', 'PASEO FERNANDO EL CATÓLICO Nº55-1º DCHA.', '50006', '', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1002, 'Sara', 'Aliaga', 'C/  Querol Nº 9- 3º C', '28033', '', '680- 223070', '', '', 'Madrid', '', '', '');
INSERT INTO `clientes` VALUES (1101, 'Lola', 'Lasauca', 'Pasaje Monrepos Nº2- 10º D', '22004', '', '630- 588846', '', '', 'Huesca', '', '', '');
INSERT INTO `clientes` VALUES (924, 'Teresa', 'Zueras', 'C/ Cortes de Aragón Nº 35- 3º Izda.', '50005', '976- 498019', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (796, 'Mª ESTHER', 'GASCON', 'AVDA. CLAVE 29-35- PORTAL 13-8º IZDA.', '50004', '976-282321', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (797, 'AMALIA', 'CLEMENTE', 'CESAR AUGUSTO 16, 12 IZQ.', '50004', '976-231296', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (798, 'Mª ANTONIA', 'SANTOS', 'c/ MONCAYO Nº 6 - 2º C', '50010', '976.331538', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (799, 'MAYKA', 'IBARGÜEN', 'FRANCISCO VITORIA Nº 28-30-1º C', '50008', '976-226871', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (800, 'YOLANDA', 'RENIEBLAS', 'AVDA. DE   MOVERA Nº 596', '50194', '976-586792', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (801, 'Luz', 'Camara', 'C/ Camón Aznar Nº 5- 3ºA', '50004', '', '638-041775', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (803, 'ANA CRUZ', 'LOPEZ', 'PEDRO RUIZ DE MOROS Nº 5-4º-B', '44600', '', '615-858514', '', '', 'ALCAÑIZ', '(TERUEL)', '', '');
INSERT INTO `clientes` VALUES (804, 'Mª CARMEN', 'LAVILLA', 'C/ ARBOLEDA Nº30  - CASA 15', '50016', '976-573682', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (805, 'Ana', 'Ochando Martin', 'Avda. de la Ilustración Nº39- Bloque 1º-Escal.1ª - 3º A', '50012', '876- 011308', '654- 875319', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (806, 'ROSA', 'DE LUIS', 'HERNAN CORTES Nº 5-9º', '50004', '976-210437', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (807, 'PILAR', 'VAL', 'AVDA. GOYA Nº 16-18 - 5º  C', '50006', '976-218544', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (808, 'VANESSA', 'TIL MARTINEZ', 'C/ RIO VERO Nº 4- CASA 26', '50430', '', '618-732250', '', '', 'MARIA DE HUERVA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (809, 'Concha', 'Gaspar', 'C/ Ilustración Nº 28- casa 11', '50012', '976-752356', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (810, 'Mª Jesús', 'Solans', 'C/ Matias Maluenda Nº 9- 8º L', '50014', '976-284687', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (811, 'Mª CARMEN', 'CARBONEL', 'c/ CADENA Nº 25- 4º D', '50001', '976-299720', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (812, 'ALICIA', 'CASAJUS GUEDEA', 'C/ ZARAGOZA Nº 28- 1º A', '50660', '976- 855406', '', '', '', 'TAUSTE', '( ZARAGOZA )', '', '');
INSERT INTO `clientes` VALUES (813, 'LUISA', 'CALVO DEL ARCO', 'AVDA. CESAREO ALIERTA Nº 30- 8º F', '50008', '976- 418682', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (814, 'NIEVES', 'GARCIA VALIENTE', 'C/ DOMINGO MIRAL Nº 13- 4º B', '50009', '976-565378  976-4717', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1014, 'Marisol', 'Aguilar Garcia', 'Cesareo Alierta Nº44- Esca.1ª 4º D', '50008', '976- 596780', '669- 533090', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (816, 'SILVIA', 'SANZ', 'C/ SANTA ANA Nº 8', '50180', '976-772852', '', '', '', 'UTEBO', '( ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (817, 'PILAR', 'LABRADOR LANAU', 'Pº SAGASTA Nº 76-5º A', '50006', '', '636-404741', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1094, 'Carlota', 'Beltran', 'Constitución Nº 29- 8º A', '50001', '', '608- 128318', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (819, 'Mª ANGELES', 'ANDREU', 'CESAREO ALIERTA Nº 4- 6º DCHA. ESC. IZDA.', '50008', '976- 235973', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (820, 'ADELA', 'ESTEBAN', 'URBANIZACIÓN TORRE DEL PINAR CASA 50', '50190', '', '676-629678', '', '', 'GARRAPINILLOS', '(ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (854, 'EVA', 'RODRIGO', 'C/ LAGOS DE CORONAS Nº 35-7º B', '50011', '876- 263023', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (822, 'MERCEDES', 'GASCA', 'HERNAN CORTES Nº 32- ESCA. 1ª 5º B', '50004', '976- 236982', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (827, 'Mª JESÚS', 'RUBIO RUIZ', 'C/ RIAZUELO Nº 20-2º-B', '26550', '', '699-801600', '', '', 'RINCON DE SOTO', '( LA RIOJA )', '', '');
INSERT INTO `clientes` VALUES (828, 'ISABEL', 'LOSTAO', 'C/ MADRE VEDRUNA  Nº 18 BAJOS IZDA.', '50008', '978- 218000', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (829, 'EVA', 'LORENTE', 'AVDA. MOVERA Nº 290-CASA 40', '50194', '', '652- 842432', '', '', 'MOVERA', '( ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (830, 'Mª MAR', 'SANZ', 'C/ RIO ARAGÓN Nº 6- 5º- A', '50003', '976- 283143', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (832, 'Mª TERESA', 'SÁNCHEZ AGUADO', 'C/ JACINTO BENAVENTE Nº 1-3-5- CASA 1- 3º A', '50006', '976-380471', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (833, 'PILAR', 'GASTESI', 'AVDA. GOYA Nº26- 1ª ESCALERA 8º DCHA.', '50006', '976.- 232382', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (834, 'PAZ', 'MARTIN-PINILLOS', 'AVDA. GOYA Nº 26- 1ª esca. 10º IZDA.', '50006', '976-228616', '', '', '', '', 'ZARAGOZA', '', '');
INSERT INTO `clientes` VALUES (1096, 'Maribel', 'Ballano', 'C/ Mediodia Nº 10- 3º Dcha', '50246', '', '661- 888891', '', '', 'BREA DE ARAGÓN', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (836, 'ANA', 'BRICEÑO', 'C/ CANFRANC Nº 9- 6º IZDA.', '50004', '976- 232391', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (841, 'LIDIA', 'GALLEGO', 'URBANIZACIÓN TORRES DE SAN LAMBERTO CALLE -E- Nº 66', '50011', '976-403014', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (842, 'LIDIA', 'TELLO', 'AVDA. NAVARRA Nº 1-3 - 1º B', '50010', '976- 318437', '669- 842544', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (844, 'Mª ANGELES', 'MARTINEZ PIRIS', 'C/ ARAGONITO Nº 4', '28.023', '', '609- 149150', '', '', 'MADRID', '', '', '');
INSERT INTO `clientes` VALUES (845, 'Mª Jesús', 'Ekong', 'C/ Brazal Zapateros Nº 26- Casa', '50016', '', '686-407491', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (846, 'CONCHITA', 'FERNANDEZ VALLÉS', 'C/ LUIS BRAILLE Nº 23-5º-C', '50013', '976- 493677', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (847, 'PALMIRA', 'ELIZONDO', 'C/ LUIS ROYO VILLANOVA Nº 2- 3º A', '50007', '', '606- 354006', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (848, 'Mª CARMEN', 'GASCO', ' C/ MARIO VARGAS LLOSA Nº 8-1º A', '50016', '976- 736613', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (849, 'ANA', 'LUZÓN', 'C/ LAGOS DE CORONAS Nº 14-2º- B', '50011', '976- 533033', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (850, 'Mª JESÚS', 'RODRIGUEZ', 'C/ TIERNO GALVAN Nº 4- 8º B', '50007', '976- 387486', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (852, 'Mª JESÚS', 'GONZALEZ', 'BARRIO SAN CLEMENTE 10 (casa)', '50196', '', '645.157217', '', '', 'LA MUELA', '(ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (856, 'Mª ANGELES', 'HERNANDEZ', 'RUISEÑORES Nº 38- CASA 9', '50006', '976- 276108', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (858, 'ANA MARIA', 'GIL ALAVA', 'C/ CUESTA ESTACIÓN Nº 10-9º A', '31500', '948- 813204', '659- 005988', '', '', 'TUDELA', '( NAVARRA)', '', '');
INSERT INTO `clientes` VALUES (859, 'ESTHER', 'LAÍN', 'C/ ANTONIO SAURA Nº 8- 2º IZQUI.', '50018', '976- 068154', '609- 972518', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (860, 'MANOLI', 'MANZANARO', 'C/ BONN Nº 10- 3º C', '50003', '976- 281856', '646- 904793', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (861, 'PILAR', 'LAGUNA CASO', 'C/ AUSTRIA Nº 6- 4º C', '50180', '976- 772318', '696- 494962', '', '', 'UTEBO', '(ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (862, 'MERCEDES', 'SOLER PACHECO', 'C/ PABLO GARGALLO Nº 108- 7º k', '50003', '', '605861494', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (863, 'GLORIA', 'ROMEO LAHUERTA', 'C/ PARQUE ROMA B-1, 6º B', '50010', '976- 322217', '606- 344010', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (864, 'NATI', 'CEBOLLADA VELASCO', 'C/ CINCO VILLAS Nº 4', '50650', '', '649-458002', '', '', 'GALLUR', '(ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (865, 'ANA LUZ', 'BELSUE', 'C/ CINCIO VILLAS Nº 13', '50650', '976-864839', '680-349502', '', '', 'GALLUR', '(ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (866, 'ANA MARIA', 'OLARTE', 'C/ GUTIERREZ MELLADO Nº 15- 8º DC HA.', '50009', '976- 560487', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (867, 'CRISTINA', 'LAPEÑA', 'Pº ROSALES Nº 2-3º A', '50008', '976- 494065', '608- 167060', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (868, 'Mª VICTORIA', 'ARANDA', 'AVDA. PABLO GARGALLO Nº 7- 3º D', '50003', '976- 437091', '639- 657805', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (869, 'ROSA MARIA', 'LOPEZ AYLON', 'PLAZA EMILIO ALFARO Nº 8- 8º A', '50004', '976- 062537', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (870, 'ANGELES', 'LOPEZ BALAGUER', 'LAS VENTAS 41', '50690', '976- 619030', '607- 201076', '', '', '( ZARAGOZA )', '', '', 'PEDROLA');
INSERT INTO `clientes` VALUES (871, 'ROSA', 'DE LUIS', 'C/ HERNAN CORTES Nº 5- 9º A', '50004', '976- 210437', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (873, 'Mª CARMEN', 'BAGUENA GARCIA', 'Pº JUAN CARLOS I - 20- B', '50690', '976- 615174', '650- 335943', '', '', 'PEDROLA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (874, 'LOLI', 'FONTANILLAS', 'C/ MAESTRO BERICAT 23', '50690', '976- 615275', '669- 106841', '', '', 'PEDROLA', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (875, 'SARA', 'ALIAGA', 'C/ MANUEL LASALA Nº 30- 2º D', '50006', '976- 556727', '680- 223070', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (876, 'Mª PILAR', 'BELTRAN', 'VIA HISPANIDAD Nº 152-11º - C', '50017', '976- 344931', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (877, 'CECILIA', 'SANCHEZ', 'C/ MAYOR Nº 3- 3º E', '44540', '978- 812699', '655- 434962', '', '', 'ALBALATE DEL ARZOBISPO', '(TERUEL)', '', '');
INSERT INTO `clientes` VALUES (878, 'TINA', 'LÁZARO HERNÁNDEZ', 'C/ ARIAS Nº 24- 5º A', '50010', '976- 326282', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (879, 'RAQUEL', 'MONTERDE', 'AVDA. SANTANA 47', '50195', '976- 586503', '645- 492001', '', '', 'PASTRIZ', '(ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (880, 'ELVIRA', 'TORRES-SOLANOT', 'C/ CERVANTES Nº 45-4º B', '50006', '', '626- 229423', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (881, 'MERCEDES', 'ROYO TOMÁS', 'C/ DUQUESA VILLAHERMOSA Nº 143- 6º A', '50009', '', '639- 366398', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (882, 'BELEN', 'MARCO', 'CESAREO ALIERTA Nº 11- 4º 4ª', '50008', '', '630- 704768', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (883, 'Mª BLANCA', 'BALLOTA AZNAR', 'C/ JOSE LUIS BORAU Nº 5-3º H', '50018', '976- 064124', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (885, 'LUCINDA', 'LOZANO', 'Pº TERUEL Nº 34- 3ºA', '50004', '976- 224846', '659- 060860', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (886, 'FELI', 'CUBERO', 'PRINCIPADO DE MOREA Nº 14- 1º A', '50013', '976- 419899', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (887, 'REBECA', 'HERCE MARTINEZ', 'C/ CARMEN Nº 26- 5º C', '50005', '', '629- 321345', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (889, 'TERESA', 'CARBONEL', 'C/ SAN ISIDRO Nº 2 - 2º F', '50660', '', '645- 697899', '', '', 'TAUSTE', '( ZARAGOZA )', '', '');
INSERT INTO `clientes` VALUES (890, ' Mª PILAR', 'JIMENEZ BALLARIN', 'C/  VIA IBERICA Nº  2- BLOQUE 6 PUERTA 4- 5º G', '50009', '976- 569992', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (891, 'Mª PILAR', 'DOMINGUEZ', 'AVDA. DE ZARAGOZA Nº 5 -CASA-', '50100', '976- 600559', '', '', '', 'LA ALMUNIA DE DÑA. GODINA', '( ZARAGOZA)', '', '');
INSERT INTO `clientes` VALUES (912, 'Mª Pilar', 'León', 'C/ Giner de los Rios Nº 2', '50740', '976- 161150', '', '', '', 'Fuentes de Ebro', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (894, 'Charo', 'Lumbreras', 'C/  Juan de Labrit Nº 10- 2º Dcha.', '31514', '', '647-502413', '', '', 'Valtierra', '(Navarra)', '', '');
INSERT INTO `clientes` VALUES (895, 'Pilar', 'Nivela', 'Pº Ruiseñores Nº 26- casa 2- 1ºB', '50006', '', '610-223497', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (896, 'Silvia', 'Mateos', 'Marques de la Cadena Nº 59- 3º A', '50014', '', '609- 657733', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (897, 'Maria', 'Gallego', 'Plaza Paraiso nº 1-5º Izda.', '50004', '976- 214313', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (898, 'Leonor', 'Perez', 'Avda. San José nº 209-5º D', '50007', '976- 498013', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (899, 'Ramona', 'Garcia', 'C/ Ronda del Parque nº 8- 3º B', '44002', '978- 608583', '', '', '', 'Teruel', '', '', '');
INSERT INTO `clientes` VALUES (900, 'Mª Pilar', 'Toro', 'Pº Constitución nº 26- 10º A', '50008', '', '607- 260600', '', '', '', 'Zaragoza', '', '');
INSERT INTO `clientes` VALUES (901, 'Eva', 'San José', 'Pº Sagasta Nº 76- 4º B', '50006', '', '661- 493318', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (902, 'Ana Maria', 'Anchelergues', 'C/ Argensola Nº22- 2º D', '50120', '976- 773184', '', '', '', 'Monzalbarba', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (903, 'Mª Carmen', 'Canfran', 'C/ Andador Luis Puntes Nº6- 8º B', '50008', '976- 596507', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1081, 'Ana', 'Garcia Sanclemente', 'C/ Santa Teresa de Jesús Nº 29-35-Esca. 2ª- 3ºA', '50006', '', '639- 604192', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (905, 'Magdalena', 'Arrieta', 'C/ Zaragoza Nº 30- 2º A', '50660', '976- 859353', '', '', '', 'Tauste', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (906, 'Mª Pilar', 'Sarroca Gracia', 'C/ Cesareo Alierta Nº 6- 7º Dcha', '50008', '', '676- 637907', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (907, 'Maria', 'Cavero', 'Andres Gurpide Nº3- 6º 3ª. Esca. Izda.', '50009', '', '658- 154390', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (908, 'Conchita', 'Yuste Artigas', ' Plaza de la Iglesia Nº 1 (casa)', '50780', '976- 178610', '', '', '', 'Sástago', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (909, 'Visi', 'Marin', 'C/  Cesareo Alierta Nº 37- 3º A', '50008', '', '626- 102939', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (910, 'Cristina', 'Arnal Campos', 'C/ Eras Nº 13- (casa)', '50461', '976- 628352', '', '', '', 'Alfamen', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (911, 'Ana', 'Sierra', 'Pº del Muro Nº 68- 2º', '50600', '976- 664059', '', '', '', 'Ejea de los Caballeros', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (918, 'Mª Cruz', 'Ezquerra', 'C/ Melilla Nº 5- 7º C', '50007', '976- 382509', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (919, 'Carmen', 'Aznar', 'C/ Manuel Lasala Nº 40- 3º B', '50006', '', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (920, 'Clara', 'Elbaile', 'C/ Sierra de Andia Nº 16', '31592', '948- 812541', '', '', '', 'Cintruénigo', '(Navarra)', '', '');
INSERT INTO `clientes` VALUES (1079, 'Marisol', 'Vilar', 'Avda. Cataluña Nº 112- Esc.Dcha.4ºB', '50014', '976- 475290', '619- 434940', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (923, 'Pilar', 'Moreno', 'Ronda Garcia Gimenez Nº 24', '50100', '976-814648', '', '', '', 'La Almunia deDña. Godina', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (925, 'Carmen', 'Casamayor', 'C/ Augusto Bebel Nº 3- 2º E', '50015', '', '654- 398929', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (926, 'Pastori', 'Garcia', 'C/ Porvenir Nº 25  Casa', '44500', '', '627-  919115', '', '', 'Andorra', '(Teruel)', '', '');
INSERT INTO `clientes` VALUES (927, 'Mª Pilar', 'Tainta', 'Avda. Almozara Nº 71- 6º A', '50003', '976- 439410', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (928, 'Ana Rosa', 'Fernandez de las Heras', 'Camino de las Torres Nº 27- 8º A', '50008', '', '609- 837693', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (929, 'Nieves', 'Ruiz', 'C/ San Antonio Nº 29 Casa', '50177', '', '636- 533185', '', '', 'Bujaraloz', '( Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (930, 'Pilar', 'Adell', 'Camino Cabezón Nº 58- Casa', '50730', '', '699- 225772', '', '', 'Burgo de Ebro', '( Zaragoza )', '', '');
INSERT INTO `clientes` VALUES (931, 'Ana', 'Lopez', 'C/ Miguel Labordeta Nº 27- 4º A', '50017', '976.- 327543', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (932, 'Elena', 'Gomez', 'C/ Benedicto XIII - Nº 4 Casa', '50630', '976- 610251', '', '', '', 'Alagón', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (933, 'Mª José', 'Pellicer', 'C/ Norte Nº 26 Casa', '50016', '976- 571876', '', '', '', 'Santa Isabel', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (934, 'Pilar', 'Ferrer', 'C/ Perez Galdos Nº 4  Casa', '50740', '', '687- 756601', '', '', 'Fuentes de Ebro', '( Zaragoza )', '', '');
INSERT INTO `clientes` VALUES (935, 'Sagrario', 'Usero', 'Camino de las Torres Nº 35- Esca. Dcha. 1º Puerta 4', '50008', '976- 497331', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (936, 'Pilar', 'Morera', 'C/ Santa Ines Nº 6- 5º C', '50003', '976- 284468', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (937, 'Pilar', 'Felipe', 'Ronda Diputación Nº 27 Casa', '50290', '', '675- 948294', '', '', 'Epila', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (938, 'Eva', 'Mayayo', 'C/ Cadena Nº 15-17 Esca. 1ª- 1º B', '50001', '', '646- 005056', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (939, 'Pilar', 'Enciso', 'C/ La Milagrosa Nº 7- 9º B', '50009', '976- 350751', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (940, 'Mª Isabel', 'Monreal', 'Avda. Gomez Laguna Nº 36- 7º A', '50009', '976- 751776', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (941, 'Aurora', 'Gabanda', 'C/ Condes de Aragón Nº 10- 7º D', '50009', '976- 554436', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (942, 'Mª Mar', 'Ramos', 'C/ Pablo Neruda Nº 6- 1º B', '50018', '976- 731781', '658- 117177', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (943, 'Mª Pilar', 'Sarroca', 'C/ Cesareo Alierta Nº6- 7º D', '50008', '', '676- 637907', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (944, 'Adela', 'Bosque', 'C/Virgen de Movera Nº2- casa 17', '50194', '976- 586649', '', '', '', 'Movera', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (946, 'Pilar', 'Chueca Peña', 'C/ José Luis Borau Nº 15-17- 7º C', '50018', '', '656- 845232', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (948, 'Marta', 'Sanchez', 'Pº Sagasta N 13- 2º C', '50008', '', '687-418041', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (949, 'Kika', 'Longas', 'C/ Espartero Nº 1 Esc. Dcha. 2º Dcha.', '50001', '976- 205773', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (950, 'Larysa', 'Parnytska', 'Pº Basilio Paraiso Nº 1- 7º Dcha.', '50004', '976- 222897', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (951, 'Yolanda', 'Sanchez', 'C/ Escultor  Felix Burriel Nº 1- 3º B', '50008', '976- 414598', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (952, 'Benedicta', 'Marquina', 'Pº de la Mina Nº 5  (Farmacia)', '50001', '976-230875', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (953, 'Sra.', 'de Used', 'Pº de la Constitución Nº 29-7º A', '50001', '976- 225502', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (954, 'Mª Carmen', 'Franco', 'Camino de las Torres Nº39-casa1-5º C', '50008', '976- 597229', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (955, 'Mª Angeles', 'Lazaro', 'C/ la Parra Nº 3', '44548', '978- 818056', '', '', '', 'Olite', '(Teruel)', '', '');
INSERT INTO `clientes` VALUES (956, 'Carlota', 'Moreno', 'C/ José Oto Nº 63-E2- 2º A', '50014', '976- 479664', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (959, 'Carmen', 'Mendoza', 'Avda. Juan  Carlos I Nº 43- 9º B', '50009', '976- 467818', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (960, 'Maria', 'Perez', 'C/ Garcia Andreu Nº 42- 2º', '03007', '', '686- 879051', '', '', 'Alicante', '', '', '');
INSERT INTO `clientes` VALUES (961, 'Cristina', 'Moreno', 'C/ Cariñena Nº 2- 1º A', '50010', '976- 226602', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (962, 'Teresa', 'Lapuente', 'C/ Carrera del Sábado Nº 4- Esca. 6ª- 3º A', '50006', '976- 378185', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (963, 'Carmen', 'Perez Marin', 'Pº Sagasta Nº 74- 8º D', '50006', '', '615- 102077', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (964, 'Mª Jesús', 'Gallego', 'Gran Via Nº 33- Dpldo. Pral. A', '50006', '976- 234765', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (966, 'Adoración', 'Andreu', 'C/ Fray Luis Amigo Nº 6-3º - E', '50006', '976- 714609', '687- 904858', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (968, 'Mª Carmen', 'Zapata', 'Cesareo Alierta Nº 42- Esca. 1ª- 3º A', '50008', '976- 492441', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (969, 'Begoña', 'Barcenilla', 'C/ Biarriz Nº 3- 5º D', '50017', '', '626- 409184', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (970, 'Gloria', 'Pellejero', 'C/ Marcial Nº 5- 1º C', '50005', '976- 224003', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (971, 'Mª Victoria', 'Moral', 'C/ Mesón Nº 50- ( Casa )', '50219', '976- 895166', '', '', '', 'Munebrega', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (972, 'Belen', 'Teruel', 'C/ la Paz Nº 22-3º C', '50008', '', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1012, 'Soledad', 'Casales', 'C/ Miguel Labordeta Nº 31- 3º B', '50017', '976- 534242', '669- 390202', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (974, 'Laura', 'Asensio', 'C/ Veronica Nº 1 - Escalera 2ª- 4º B', '50001', '976- 393993', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (975, 'Gloria', 'Sanz', 'C/ Pintor Marin Bagües Nº 3- 4º B', '50007', '', '654- 971898', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (976, 'Pilar', 'Fernandez', 'Cº de las Torres Nº 9- 6º C', '50008', '', '695- 078839', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (977, 'Inmaculada', 'Barreiro', 'Urbanización Parque Roma Bloque A- 8-  8º D', '50010', '976- 531882', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (978, 'Pilar', 'Cortes', 'C/  Castilla Nº 22- 3º B', '50009', '976- 750053', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (979, 'Irma', 'Wright', 'San Ignacio de Loyola Nº 4 - Pral.Dcha.', '50008', '976- 229739', '630- 148371', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (980, 'Fina', 'Mar', 'C/ Escultor Burriel Nº 1- 5º B', '50008', '976- 425056', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (981, 'Eugenia', 'Martinez-Soria', 'C/ Fray Luis Amigo Nº 8- 7º A', '50006', '976- 270061', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (982, 'Palmira', 'Ciriano', 'Ruiseñores Nº 38- Chalet 45', '50006', '976- 252025', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (983, 'Mª Jesús', 'Casabona', 'C/ Aldebaran Nº 60- casa 9- 6º A', '50012', '', '677- 492931', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (984, 'Mª Jesús', 'Calejero', 'C/ La Ripa Nº 15- Bloque 1º- 5º A', '50006', '976- 354968', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (985, 'Mª Luisa', 'Herreiz', 'Arquitecto Yarza Nº 3- 6º Dcha.', '50008', '976- 215898', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (986, 'Piluca', 'Tolosa', 'C/ Aznar Molina ( Habitad 2000 ) casa 10- 8º', '50002', '976- 295580', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (987, 'Ana Maria', 'Otal Cajal', 'C/ Sobrarbe Nº 21-23 Esca. 2ª- 2º D', '50015', '976- 520642', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (988, 'Carmen', 'Ambroj', 'Avda. Gomez  Laguna Nº 1- 5º C', '50009', '976- 159029', '636- 461169', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (989, 'Pilar', 'Rubio', 'C/ Cortes de Aragón Nº 24- 3º C', '50005', '976- 217952', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (990, 'Sirpa', 'Aalto Nokelainen', 'C/ Océano  Atlántico Nº 8- 4º 1ª', '50012', '', '620- 171666', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (995, 'Elena', 'Catalán', 'Pedro Mª Ric Nº 13- 1º Izda.', '50008', '', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (998, 'Ana', 'Barquinero', 'C/ Rio Ebro Nº 4- casa 2 (urbanización los tres robles)', '50180', '', '618- 607470', '', '', 'Utebo', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (999, 'Esther', 'Anzano', 'Pº Sagasta Nº 20- 9º A', '50006', '976- 217337', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1003, 'Magda', 'Castro', 'Urbanización Torre Pajaritos Nº 3- casa 60 C/ Sagitario Nº 8', '50012', '976- 754938', '607- 739134', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1004, 'Delia', 'Marquina', 'C/ Remolinos  Nº 19', '50668', '976- 860108', '', '', '', 'Pradilla de Ebro', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (1006, 'Marisa', 'Salcedo', 'C/ Andres Ruiz  Castillo Nº 3-  1º A', '50015', '', '686- 733431', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1007, 'Ana', 'Ramos', 'C/ Carrera del Sábado Nº 4- Esca.4ª- 4º A', '50006', '', '639- 371656', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1009, 'Mary', 'Valdecara', 'C/ Palacio Nº 2', '50740', '976- 160402', '', '', '', 'Fuentes de Ebro', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (1016, 'Elena', 'Pellejero Marco', 'C/ Monaco Nº 7- 4º D', '50003', '976- 431565', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1013, 'Josefina', 'Beltran', 'C/ Almagro Nº 15- Esca. Dcha. 2º B', '50004', '976- 230461', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1017, 'Consuelo', 'Urbieta', 'C/ Las Fuentes Nº 5  "Santaengracia"', '50669', '976- 856814', '', '', '', 'Tauste', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (1018, 'Maribel', 'Oñate Cordon', 'Pº Constitución Nº 85 A- 4º C', '26580', '620- 294747', '', '', '', 'Arnedo', '( La Rioja )', '', '');
INSERT INTO `clientes` VALUES (1020, 'Naima', 'Lopez', 'San Juan de la Peña Nº 30- casa 13', '50015', '', '615- 511003', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1064, 'Nieves', 'Saiz Perez', 'C/ Vazquez de Mella Nº 2-  7º Izda.', '50009', '976- 567213', '616- 027829', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1022, 'Ana', 'Lemos', 'C/ Eduardo Taboada Nº 5- 2º B', '50002', '', '646- 514310', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1023, 'Mª Gracia', 'Ortiz', 'Via Hispanidad Nº 61- bloque 4- 4º B', '50012', '', '650- 913119', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1025, 'Consuelo', 'Moll', 'C/ Mayor 28- 1º', '46270', '', '607- 806080', '', '', 'Villanueva de Castellon', '(Valencia)', '', '');
INSERT INTO `clientes` VALUES (1026, 'Mª Carmen', 'Gomez', 'C/ Argentina Nº 1- 6º C', '44002', '618- 610607', '', '', '', 'Teruel', '', '', '');
INSERT INTO `clientes` VALUES (1027, 'Mª jesus', 'Abadia', 'C/ Ram de Viu Nº 33- 1º T', '50006', '976- 351938', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1028, 'Margarita', 'Buñola', 'C/ Virginia Woolf  Nº 4- 8º D', '50018', '', '635- 374751', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1030, 'Mª Carmen', 'Guerrero', 'Andador de Luis Puntes Nº 2- 9º B', '50008', '976- 492442', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1031, 'Pilar', 'Bernad Esteban', 'Sto. dominguito de Val Nº 3- pral. 1ª', '50001', '', '649- 207323', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1032, 'Fina', 'Frances', 'Pedro IV Ceremonioso Portal 7- 4ºDcha.', '50009', '692- 430843', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1034, 'Yolanda', 'Soler', 'C/ La Lectura Nº1- 4º Izda.', '50015', '976- 519893', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1035, 'Mª Isabel', 'Pallares', '976- 173096', '', '976- 173096', '', '', '', '', '', '', '');
INSERT INTO `clientes` VALUES (1036, 'Azucena', 'Arranz Calvo', 'Avda. Anselmo Clave, 37-45 -Resid. 2º E', '50004', '976 460 928', '', '', '', 'ZARAGOZA', '', '', '');
INSERT INTO `clientes` VALUES (1042, 'Piedad', 'Clemente', 'C/ Ramón y Cajal  Nº 34 casa', '50410', '976- 503596', '', '', '', 'Cuarte de Huerva', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (1041, 'Inma', 'Uson Escudero', 'C/ Geronimo Zurita Nº 35- casa', '50750', '976- 165447', '', '', '', 'Pina de Ebro', '( Zaragoza )', '', '');
INSERT INTO `clientes` VALUES (1046, 'Eva', 'Burillo Panivino', 'Urbanización Galápago- Bloque 1- 3º B- Izda.', '50300', '976- 881054', '', '', '', 'Calatayud', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (1045, 'Camelia', 'Borzea', 'C/ Gil de Jasa Nº 8- 3º centro', '50006', '', '639- 543594', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1047, 'Pilar', 'Estivalez', 'Avda. de Goya Nº 37- 7º', '50006', '', '606- 749131', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1050, 'Mª Rosa', 'Pinilla', 'C/ Luis Legaz Lacambra Nº 7- 3º Dcha.', '50018', '', '655- 771345', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1051, 'Begoña', 'Soto', 'Avda. Gomez Laguna Nº 50- 2º A', '50009', '', '661- 647123', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1052, 'Marivi', 'Esteban', 'C/ Almonacid de la Sierra Nº 4- 3º D', '50002', '976- 297434', '651- 838474', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1053, 'Juana', 'Martinez', 'C/ Enrique Val Nº 4- Esca. 8- 4º C', '50011', '', '649- 987478', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1054, 'Mª Angeles', 'Hernandez', 'Residencial Paraiso Nº 7- 6º B', '50008', '976- 227918', '616- 912425', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1055, 'Mª Teresa', 'Roca', 'C/ Jacetania Nº 29- Esca. 2ª Bajo A', '50410', '', '654- 990346', '', '', 'Cuarte de Huerva', '( Zaragoza )', '', '');
INSERT INTO `clientes` VALUES (1056, 'Pilar', 'Delgado', 'Monte Perdido Nº 45- 4º D', '50015', '', '686- 560017', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1057, 'Gema', 'Dorado', 'Ada. Juan Carlos I- Nº 53- 5º A', '50009', '', '666- 338889', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1058, 'Begoña', 'Gomez', 'C/ Aragón Nº 31 "casa"', '22400', '', '669- 206025', '', '', 'Huesca', '', '', '');
INSERT INTO `clientes` VALUES (1059, 'Ana', 'Artieda', 'C/ Oscar Romero Nº 3- 2º L', '50004', '976- 446935', '649- 246667', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1060, 'Esmeralda', 'Beser', 'C/ Zuriza Nº 25- casa 9- 4º B', '50014', '', '687- 403865', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1061, 'Mª Pilar', 'Berenguer', 'Maria Guerrero Nº 42- 4º A', '50009', '976- 757411', '649- 762191', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1063, 'Isabel', 'Miguel', 'Camino de Samanes Nº 1 -casa-', '50500', '', '610- 916771', '', '', 'Tarazona', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (1067, 'Lola', 'Perez', 'C/ Oceano Atlantico Nº 19 Residencial Altamira "casa 17"', '50012', '', '616- 988507', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1068, '  Asunciòn', 'Castells', 'Cesareo Alierta Nº 38-40- 2ª Escalera - 1º Izda.', '50008', '', '647- 448514', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1069, 'Ana', 'Alegre', 'General Sueiro Nº 47- 3º - 3ª', '50008', '976- 230774', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1070, 'Belén', 'Montal', 'Avda. Ilustración Nº 17- Parcela 103- casa 1', '50012', '', '609- 738680', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1071, 'Mª Carmen', 'Latre', ' PºConstitución Nº 16 - 9º D', '50008', '', '628- 261123', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1073, 'Isabel', 'Guitian', 'Avda.de Goya Nº 49 - 1º B', '50006', '976- 358168', '610- 419999', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1074, 'Nieves', 'Navas', 'Avda. Goya Nº 87- 89- 7º A', '50005', '', '646-540164', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1075, 'Maria', 'Loran', 'C/ Castrillo de Aza Nº 11- Esc.2ª - 9º- A', '28031', '', '696- 056679', '', '', 'Madrid', '', '', '');
INSERT INTO `clientes` VALUES (1082, 'Mª Angeles', 'Sebastian', 'Avda. Ilustración Nº 3- casa 65', '50012', '976- 757021', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1083, 'Mª Luisa', 'Peralta', 'Plaza José Maria Forque Nº 13- Esca.Dcha. 4º B', '50004', '976- 284516', '655- 596292', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1084, 'Mª Antonia', 'Martinez', 'Mariana Pineda Nº 5-7º C', '50018', '', '605- 931248', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1085, 'Elena', 'Melus', 'Pº Ruiseñores Nº 26- casa 3- 2º B', '50006', '', '630- 588845', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1086, 'Ana Cristina', 'Alayeto', 'Barrio Nuevo Nº 22', '50630', '', '630- 267178', '', '', 'Alagón', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (1087, 'Mª Pilar', 'Casanova', 'C/ Santa Teresa de Jesús Nº 19- 1º B', '50006', '', '655- 972450', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1088, 'Mª Angeles', 'Ballestin', 'C/ Sagitario Nº 8- Casa 81', '50012', '', '600- 045442', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1089, 'Mª Luisa', 'Zamora', 'C/ Monasterio de Veruela Nº 20- casa', '50630', '976- 611221', '619- 989193', '', '', 'Alagón', '(Zaragoza)', '', '');
INSERT INTO `clientes` VALUES (1090, 'Mª Jesús', 'Sancho', 'C/ Angela  Bravo Ortega Nº 49- casa 22', '50011', '976- 534024', '', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1091, 'Mª Eugenia', 'Sanchez', 'C/ Pablo Ruiz Picasso Nº 52- 6º D', '50018', '', '637- 156545', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1097, 'Mercedes', 'Guinda Tosaus', 'C/ Silveria Fañanas  Nº 37- 1º B', '50011', '', '680- 439005', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1098, 'Sara', 'Saez Fuentes', 'C/ Manifestación Nº 35- 2º A', '50003', '', '646- 298097', '', '', 'Zaragoza', '', '', '');
INSERT INTO `clientes` VALUES (1103, '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `color`
-- 

CREATE TABLE `color` (
  `id` int(5) NOT NULL auto_increment,
  `nombre` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- 
-- Volcar la base de datos para la tabla `color`
-- 

INSERT INTO `color` VALUES (1, 'Azul');
INSERT INTO `color` VALUES (2, 'Rojo');
INSERT INTO `color` VALUES (3, 'Verde');
INSERT INTO `color` VALUES (4, 'Blanco');
INSERT INTO `color` VALUES (5, 'Negro');
INSERT INTO `color` VALUES (6, 'Naranja');
INSERT INTO `color` VALUES (7, 'Marrón');
INSERT INTO `color` VALUES (8, 'Amarillo');
INSERT INTO `color` VALUES (9, 'Gris');
INSERT INTO `color` VALUES (10, 'Rosa');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `detallesv`
-- 

CREATE TABLE `detallesv` (
  `id` int(5) NOT NULL auto_increment,
  `idventa` int(5) NOT NULL default '0',
  `idproducto` int(6) NOT NULL default '0',
  `precio` varchar(10) collate latin1_spanish_ci NOT NULL default '',
  `unidades` int(5) NOT NULL default '0',
  `total` varchar(10) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=16 ;

-- 
-- Volcar la base de datos para la tabla `detallesv`
-- 

INSERT INTO `detallesv` VALUES (2, 2, 1, '115', 1, '138');
INSERT INTO `detallesv` VALUES (3, 3, 2, '115', 1, '138');
INSERT INTO `detallesv` VALUES (4, 2, 2, '115', 1, '138');
INSERT INTO `detallesv` VALUES (6, 6, 3, '469,00', 1, '469');
INSERT INTO `detallesv` VALUES (9, 7, 4, '110', 1, '110');
INSERT INTO `detallesv` VALUES (10, 8, 4, '110', 1, '110');
INSERT INTO `detallesv` VALUES (11, 9, 4, '110', 1, '110');
INSERT INTO `detallesv` VALUES (12, 11, 2, '115', 1, '115');
INSERT INTO `detallesv` VALUES (15, 13, 2, '115', 1, '115');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `familias`
-- 

CREATE TABLE `familias` (
  `id` int(5) NOT NULL auto_increment,
  `nombre` varchar(20) NOT NULL default '',
  `imagen` mediumblob NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- 
-- Volcar la base de datos para la tabla `familias`
-- 

INSERT INTO `familias` VALUES (1, 'Camisetas', 0xffd8ffe000104a46494600010200006400640000ffec00114475636b79000100040000001e0000ffee000e41646f62650064c000000001ffdb008400100b0b0b0c0b100c0c10170f0d0f171b141010141b1f17171717171f1e171a1a1a1a171e1e23252725231e2f2f33332f2f40404040404040404040404040404001110f0f1113111512121514111411141a141616141a261a1a1c1a1a2630231e1e1e1e23302b2e2727272e2b35353030353540403f404040404040404040404040ffc000110806400a0003012200021101031101ffc40080000101010101010000000000000000000000010203040501010101010101000000000000000000000001020304051001010002010402020004060104010403000111023121511203417161328191a122b1c1d142130452f0628233e1f1a2235372b243110101010003010101010000000000000000011121315171416102ffda000c03010002110311003f00f9b6dcdeb4cdef4bcd47d1789737b99bdea00b9bde99bdea00b9bdccdef5005cdee66f7a802e6f7337ba00b9bdccdee802e6f7337bd450337b99bdc00cdef4cdee0066f75cdee802e6f7337ba00b9bdccdee802e6f7337b8019bdccdee00b9bdccdee802e6f7337ba2819bdccdee0066f75cdef5005cedddacdeec353805cdeeb2dee808de6f7337bd4105cdee66f7005cdee66f74503caf74db3ce6aaf3018cdee66f7a0066f75cdee802e6f7337b80ab9bdccdee808b9bdccdee00b9bdccdee8a066f75cdee802e6f7337b820b9bdccdee8a0b9bdccdee8a0b9bdccdee0066f75cdee802e6f7337b8019ab9bdd140cdee668019ab9bdd005cdee669f002e6f7335140cdee66f7005cd337ba2819bdccdee00b9bdccdee802e6f7337b8019bdccdee0066f733400cdee668019bdccd00335737ba0066f733401737b99bdd005cd337ba006699bdc145cd4cdee00b9bdccd401737b99bdc00cd337b80866f7337b802e6f73340165bdcb6c833bdfeda0e59bdccdee0d299bdccdee00b9bdccdee802e6f7a66f700334cdee0066f7337b8019ab9bdd005cd3350ea22e6f7337b8019a66f700337b99a0066f7337b8019bdccdef401737b99a802e6f7337ba37a7af6dface93e76bc0339bddd35f5ed7aed7c67f5ad6baebafebd6ff00e57fc9ac7cdeace84e931af49dfe5a86040cfe5735005cd337ba00b9a75ee006699a802e699a802e6f73f8a00b9bdd337b8019320067f21900cfe4cdee0066f7335005cd335005c99a802e6f74cd005cdee99bf90c819bdccdee0066f733400cdee66f700334cd00334cd101734cfe400cdee66f74c00b9a66880b9a66f74a02e6f7337ba00b9a66a1805cd337ba00b9a66f740173d4cfe5005cdee99a00b9fc99a802e7f266a00b9a75401734cd401734cd401737b99a802e699bdd005cdee99bdc01734cd401737b99bdd005cdee66f7401737b99bdd005cd337ba00b9a65005cd33500334cdee006699005cdee66a006699bdc00cdee66f700337b99bdc00cd33400cd33400cdee66f700337b99bdc00cdee668019a668019a668019bdccdee802e6f7337ba2819a66880b9bdccdee9801737b99bdd005cdee66f7401734cdee802e6f7335005cd335005cd335080b9bdd666a2ded00b6f12a66f700334cdee8019bdccdee0066f7337b8019bdccdee006699bdc00cd5cd24b67e3bd5cc9c75bdc092fcdc1e58fd7f9b36e40337b99bdd15433496e604e603e2de6a2de6fda2b400a00000a080a0828000000000000000028000000000002800000000002c041a0e602353856672d2000028004040da7cb2dfe19bce144501400005000014005454401403000a00280028000a08a0006005000c02800002808a180000151400001500000004014115140450115140001005551141140003e00004000505018f65e91b73f67241801a500014000003a800000a800a008a000020000000000b25b71266d6f4f55b3cb6fedd7bf7fa7498931a4c4feb534675f56bafedd76ed38fe2df5bcf1f13e1648b8644c2e00000054000504000000000000000100540015000000000000000000000000000000000001150151400c080a828228800a80028200a002000a000002000000a000002000a000000002000a0000060000000000000000000000000000000045011440511410501000540000000000000000000000405178fb038e9f2819010f900000000000092de171ace7aded0092de17a4fcd4bb5bf5d9016db50144001440149cc459ccfb07c5bcd45bcd45680551050045011400000000000000150054500000000001500500000000005000058d311b441a6575414140000545403699991603016628a000aa0000a000028220a002c450014000140001400005000140000545000000014000000015150051041440050045003000000010001540000000000e802f411441514071daff75aed787058002a80a008a00000000000280008000000000037a7aaed3cb6fedd7bfcd0675d76dae24cd75d7d7ae9cff76ddbe2352493c75989fd6b52619b44c5b73795922f4103ff00590003a000001f80000000000000c2028000802a00000000000000007200000000000000000000000000000802a2a0280022a002808060141014101515000140000040000000000014004000000000001400000000400140000000000000000101440150001500540000000000000000000000001000015164f9bc02f1d7f921cf54054000000000166bf3b7404c5f86bc64fdbf92797fe3d1320b76f89d2200082a820a08002a000b399f68b3980f8bb73436e6a2b42a2a80008a000000000000000002a2800000000000a08a0000000002822800000d4e1958834b10446c49c2800a08a080a8a06d3332c3a4ecc598aa20a0000a2a280a802808828282a280a8a80a8a00002800a8a000028000a00000002800000000a00000002000000000018000000000154000000004143e800005004dee357174f6de91cd6000aa2800000000000000a200a02000a0020b25b713adbc46b4f5edbf59d359cdf875d64d6634e9df6f9a96ab3afaf5d3f6feedfb7c4fb6f16dcd24565091400000000e80000000000000990510051001440000000000000000000000000000000000000045fb04540054500000001140045008800a8000a080000a0991401150030a80a80000000a00200a800a8000a002000000000000a000002000a0000000000020828a08000000000000000000000000000000080070002c99024ea5bfc96df89c264040001014166b6fe2770459afcdb88b9d75e3adef59b7373417ca4fd7f9a72202a2a7505405015000050010005167311673047c5bcd0bcd15a0050000000000000000000545000000000001400000000000005000000001515068497a288b396996a2002800202a2806d3333f30580e6abb4c545501400000500151000140505454054500005001400014000054500000140000000140000000001000000000000000151500015400000000050000116000e7ecbd586b6ebb565414154000000000000545040500000175d76def8eb33411d74f54926decf9e35f9ad6ba6ba71fddbf7f89f4d63e6f5acda1d6f3d24e24e22c845444500000000000000010140000013a0000001f6000000000000000007f8001c00000001f9003a0000000002028000000200a0022808a008a0022808a0008601514040015001445040504050045040005400000000000000000014000000000000000004001445000400000000000000010005000001000ea000a0020000000bf25e9d22f1f6ce400001164b6f4009adad6359cf5fc25dadff405fed9f9bfd19b6de50050405400005000500100050000001673109cc11f1af3436e68ad00280000000000000002a2800000000000000a08a000000002a280000000002800b396986a7088abaa13941a504000140015140da667e630e919da62a8caa28a00028000a80008a000a8a02800a000280000a0002800000028000000a00000000000008000000000000280264141054550000140000000540452dc4c9f84dff5071fc82b4a8a8a00400000000000050040141d74f4e24dbd9fc35f9a9a33ebf55dfafebace76aeb31278e931afcdf9bf6b6dbf89389f11644d44914540000c00000000000002028802a0a020000000000000007c8000000000000000007c0000000002280200a00210000000f90054005401514011500140450040000000504001500150000c802a000a80000000000000000000500000000001400000400405045000015000000000100050010000000000000000000105024593133fc89f9e0b6825a0022c96f0b35c4feee9f8f95f2e98d7a403127edcf68976e989d2764400050010000005000000500000000000009c84e603e35e68b79a8aa00a0000000000002800000000000000000a0000000000a00000000000280000d6acace50680446a70accad00a080000a00a5999f981390605da62fe2a282a28a0002a2a20a8a00280028a044140001400500001400000050000140000000000014000045011014045011400000038551153900140450003000020a007c31edbf0e8e5ecb9d8830a8ad2a2a280000000000000000b35bb5c499b788d69ebdbd971af139b788ed26ba4f1d3e79dbe6a5a26beb9ebeb7fbbd9fd235cdcdeb7b922b282a2801f8000000000000010000000000000000000000000000000c0750000000000000320022802000a0800a022a00a8a80a8282000a080a8001d0015000543e0015015001505040000000008000000000000000000000064000000001404500000454115140450045400000000000000000000000000000004500000000115006a4ca48b7a4c4fe205bfc9166b6f5e2775cebafebd7f34126bd337a45f293f59fc7e52dcf2805b940000500100000055000000000000010144015150149cc459cc07c7bcd45bcdfb4550050000000000545000000000000000015140000000001400000000144050000000046e09ad6901a6567083422a00280002800b6796b8f9e5cdd25eacef3173f14195455500050101514415140545015160000280028750014000005000015140000000050415016000228200022802280000000002a88a00000228000000829d00570dbad76dae2382c05415550500000000000001d3d7eabb4f2dbfb74efdfe9ad3d3249bfb3f86bdfedd2db6e6f1389f0cdbe07c78eb31acf8ff005245c0880b000001140453e000450040000000003e000000000000000000000fc80000020280008a0000099500f90010001401000000540150003f0000000000000a0202808a800000000002a000000000000000000000000000000400000000000040510000000054500100000000000000000000000000045000000001015000164b78996a4d75ebb75bdbe0092e3a73dfb1fdb3ff0075fe89b6d6f3c202ddade50403200000000000000002a8080a000200a2280800a8000002ce622ce67d83e3de6a2de6fda2a8028000028082822800000000000000280000000000028000000000288a200000002804e5b61a9c25156728441b0005454005001405c794b1165ea0e635bceb99c5655405100105001445001405450000500140014000800a0002800000000a08a008a00002000a002000000000002a8000000000000000a808a0033ecb8d7edc9bf6deb230b0005515141140000005d34db7da6baccda09266e23d1a7ae7afaed3cbd9f1afc4fb6b4d75f54c6b7cb7f9dbb7d12336e875b737adab01105000000000400540000000003a0000000000060fa00000000000000450045fc200a8a020a02000a802a7e1500fb54005887e4000015000015000000000000000000000000000000000000000000000000000000000f80000000000001140114000045400000001500150000a000000000000000000000022fe100540150005401506a6bf3b74ff0010679e9396bc64fdbf91e58e9af4ff0014eb41af2e9d3a46725bf1100000c8000228a2280020022aa88a0020005000000000000000000016733ed09cc07c8db9a8b79a8aa00a00a08a8a00000000000000000002800000008002a88028020000a8a0000000000a000baa13941b0106a2b32f568050408a8a0000a002e3330e7c3a44f64e369c506015400014005454054501514054501514000140015140000540140000014000000000040000000ea0000000064055000000000030000082a281150b7101cb7b9dab273469400000051014475f57a6effdd7a6939a0cfafd7b7b2e27139b788f44f1d35f0f5f1f3b7cd2d98f0d26349fd7ecc336e848a4110001515000015000000000000e800000000000000022808a00080a2002880a200a82820000280200028200000000000001f0000000000001d4000000000000000000000000000000000000000000000000000000004014003ec0122a000000a8000000000000000000000008a00744051005400510054000000166b76e38ef411a9a5b337a4ef57fb75e3fbaf7f866db6e6835e535fd675ef59ce794014b71d0e3aa0000020a28800a80288a280802a0000000000000000000000008a08a800b3988b3907c8bcd45bcd455015445000000000000000000140000000000000050001000000050000000015140000001b9c09af65415a9c32baf08340202a2c00005001579975a84063181bf64e36fe6c28000a000a8a02a2a0a000a002a2800a0408a0000000a000000a00000000000000002000000000000002a80000000000000a08a0209bdc6b5a73f6de203980d28a80000288efeaf4c93cfdbc7fb75f9a96e09eaf4f94f3dfa693f9dfa75b738926359c6a5b76b9bc4e27619050102002a000a8000000000000001f8010001500140114405400510e005450400151500540000000000000000000032000000700000007c000000000000000000007c8000000000000000000000000000000000000000008a00080a828a2008a8000000000000000000000000000000002000000000000000075a28b25b7117c64ebb7f285daf13a4ed0431aebcf5bdbe0bb5bfe8ce40000162006410001400000a000280000000000008a00200a200a8000000000000002ce67da13980f9379a8b79a8aa28280000000000000000002a28000800280000082a2800000000a0000000000a000000002ce5b736e70945597aa083624505115001408002800b3165d6fcb9d98b8744de664dbf85060154000500050414840050014005450150050005450000000500000000000051045f84540000000000005500a00000000000002a00a008ae3ecb9dbe9dbe1e7bd6ac00154000524b6e3e5e9f5faf5f54f2dbafb2f1af6fb4b704f5faa7ae4dfd9d76bfae9fead5b76be57ad4eb6e6f37956414040000000000000101410141014401500150017e840000000000000000000000000000000000000000000000003e80000000114000000000000011401140000000000000000000000000114000000000004155150415005414100000000140040000000000101500144005400000000000000000000175d6d99e2775cebafebd6f7a04d3e76e93fa9e5274d7a7f8b36dbca02da2002a28007005e9d10008028000000020aa000000080a800000a80000000000000000000002029399f68b3980f9379a8b79a8aaa8a28000000000002000a028800000000000002800000000000a0000000000a000000002aebd9959ca0d80835aab339680545405401550050006a75e978a80316596cbc8def3326dfc2b0a0002800a0028082800a000a000280000b114000050000000000100000005450400000000500aa00400000000000000140545119dee35ae2e9edbd247358a00a0b25dae275a6baddaf8eb336bd3aebafa66275f6de6ff00e3f496e069a4f4fe7db7ff00dbff00e4f9cfcf730aca0a8a00000000000002002a0000000001fe00000000000000075000000000000000000003f20000001fe20000000000000228008a80a0802a00000a0802a654000040050400540144051145100451015445100001141150005415440400054014004000001400400001014001000f8540150000000000000000000000e00115014275b89d5a9acd7f6e7b40666b6f0d635d7ff75fe8976b7a4e93b4405bb5bca20000a002002c807e53392dfe42875040510050405401400150015000000000000000000100540000051000000001673109ccfb07cabcdfb0bcdfb154014001000000000000054500000000000001400000000001400000000511400000000005006a758a9af65406e70c35aa0d0080a8a02a00a002800d6b67178ae5662d95d0de675f2f99d283980a29001400590005010500050005000014000141140000000000054511000140100000000550000000000000000001514415141c7d97fbb0c9b75b6a34aaba69b6fb78eb3369a69b6fb4d7599af549afab5f0d3f6bfb6ffe512d0d66bea9e3af5defedb76fc4490930aca00a0000000020282640000020000000000060000000000000000000000000000000405114002600000040545401728a080000a00200a802a00000000005140040334000140040000000003f200000000000a002000a002000000a0000000020228022807c080a819051000000000000000000000401445040015059addbaf13bd046a69d33b749fd573aebfaf5bdeb36da0d796263598ff0016729900014000000380005b71d3e6f24e933fc99054001500000001400000000000114001005400000540000000004500000101440059ccfb459ccfb07cabcdfb0bcd1540150000000000000500000000000000150050000000000014000000001400000000545000059cb4c372a5149d2820d2a4eb140545400014005001575ed78bca00c6d3c6e2fc23aef3cb5f2f99d2b928a002800a00288a80a8a0a2280a020a8a0002828000000000028802a2808a8228200280800002a8000000000000000000a8a026f71ad58c7b6f4904726bd7ebdbd9b4d7587afd7b7b36f1d6757abfb7d7af87afff0096ddd6d5278faf5f0f5f5b7f6dbfca24848b19032021f6a00000000800019000000001140040541401140000000117208a000800a2028200001d5500150015000005100000000000150000054000000000000000003f000a002000000000000a0000005000114000400000140040101410144014100000000000000000000001150054000000000000000014592de22cd24ebb7f2f92edf13a41171aebd6ff0075fe8976b6f56403202808028802a002826414933cf13949d56df8805b9a8000000028000000800a800a8000000000000000000800002a0000000000000004e622ebcc07cbbcd0bcd140050000000000000500000000000014041400000000005450000000000511400000005000001ad7b32badebf683622a0bab4c4e95b00041551400014005001ad79ebc5e5cf6d7c6d8de4de796be5f3af3f40e6105144580a00290014041400511401410000545140000504545001045114012a822a2820000a8000aa0000000001c000001f0000a8a22b9dd36f67b3c7575d34db7b88d5bae92e9ebf9fdb6eff886aa7f6e9aff00c7ebff00e5b77fa2449150140054045400150000010320a0022a00a8000000000000002a00000a800000a80001000000000000320000000019000000140040003900000000000000000000000500100000001005000114000004c8aa22802288080282028800000000000000001d4000000100510150015000c80001f00000000022aaa2eb2edc7f36bfb75fcdeff088934b8cde93bb5e535fd7a7e7e59b6de5016d4101411454000000001500016639bc40389f9bfe085b6800800002880a0000000000000000264150000000000000000ca0280008a00800000000b399f684e67d83e65e6fd85e68a0028000000028202800000000000000a008a00000000002a2800000000028000000002a2800000036a9ade8a80dceb186b5415516202a00a002800a22c055d6e2f5e2f4acac0636d7c76b11d779e5a67e75ff000725140050014005001404414005450000500500015005000004450000041404150001540000000000000000000006f4d6ef71134d6ef66b3ad7a3a693c34e7fddb25a33be3d7a5d35fe3b3948dfb3e23240e81f0a20a80000007c000008000000000000000000000000007f80000007c800000000000000010000000000000000004015200a228022802280228000228022f510000054fe200000a80000288000000000000000000000000000000000000002280800a800000a800000000000000080288a0080a641a9a74cedd27f5513ade91af193f6e7b43cb1d35e93e53288b76bc7c768ce40004515000000000100500010059334b7b71385bd263e7e590000000001400000010c82a000000000000080a200a200a200000064000000003280a200a80a0b3989959ccfb41f32f37ec5bcd4680000000000005100500000000000000140000000000014000000005450450000000015005000001ad796989d2b694165ea820e824eaa02a00a020a4450500054505d6e2f5e2f2c6faf8ed67c7c36bb4f2d3f3aff0080391d5154500140050014041401144500140000000540144514004000010054504150001540000000000011514004055d75bbdc6b334d75bb5924cd7a263d5af8ebfb5fdb6ff24b4313d7af86bd6ffbb6ff002844917896f64473dee76405050140040000400000000000000f8000000000000000000040500041401005100540051141150050401440540051000000000001500000000000000008000000008a01fe00000000000000000000a00200000000000802880280020a08000000000000000000000080a200a08000aa01337a40166b6f59c776a6b27edd6f62ed9443fb75e3adef52dca5405ca2a02a0280000202a2a00000002a0401674eb7f82499a5b9bfe00000000020aa2002a0000000000014405100540000000001014414510051000000040014045401b9e8f6deb8c4efb746e7a359fb6f9fc6b3fce9b0c715d35db6b26b2dfa7a26bebd7f5d27dedd5af3dba4cff04d387c3bcdfb42f37ec6c00000000000054140000000000000050000000000000511400000005401400000000511400000006e5e8c35aa0d02a0bab4c4e5b00005001445051150151406b5b8bf8f965418df5f1db1f1ccfa48ebb4f2d3f3aff83928a000a8bc02840140414010545000050000001414004453a80000000800002a8000000080a00000228004d6db89c9337a7397a35d67a663ff00fa5e7f0968493d5313f7bfb5edf84908a88b226f71ae170cfb2f5c030a82aa8208a08000007400040510051001440000144005400003f20028802a000000000000000000228000064000003a00000000064000000c8000080a020a008028000200a2028800a800a9c8a2a0a8022822a740172228219005400510000015000000000000000000000000401500144000154000000000166b6f1fcdafedd78eb7b88935f9dba4feab7693a6bd225a881932802a0280008a0020000019000000100151a9d267e7e00bd2627f14400000005000000322280200a80000000000002028802a6400000014011050451446b5f5fb36fd75b7f3f08223b4f44ff76ffc35eb5b9a7af5e35cdefb75fe89a3cfaebb6dd3596fd3a4ff00afb7fbecd3efadfe51daedb598cf4ed3a4fe886d38667abd53e2ef7f3d2372d9fac9afd4410d39bdc01059ca2ce41f0ef37ec5bcd474500000000014405000000000000000545000000000000014000000000500000000001440500000059ca283610415b8e6debc20a100500144501514140441514175b8b9637d7c76c4e2f0d2ed3cb4fcebd7f80ae622a8a2282800a228288a8288a2000280000280a000200022802280080000aa00072000000200a8a802f28f47af49eb937dbaef7f59dbf25a1a693d5337ff00b2f1f80eb6e6f2b19422802c72dae6dae97a6b6b91000500ea000802a0000000008a0000000000000020280000002028000008a802820288a00540140010ea000a00200002a002a0000007d80a8002a0000007fea0a00200000000000001f9000050010000000000000000000000000010140004500101410144015000000028002a8200a08003534b7ade901275fcb53593f6fe4b993a6bd19ca23576cf4fe8c880a20000a0080a80000002028800002a000002c99bf89c96e4bd3a7f340000001404054005400000000010141015000000014040144014432801cba6be9f6599b3c75efb7434731de7a7d73f6daedf89d27f3adcb35fd359afe79bfcea68e1afa7d9b75c6277bd27f56e7a749fb6de57b6b3fceb76db736e6fe54da6c4935d7f5d64fcdfeeab6dbcdb7ec10da0020000000000b39427301f16f350db9a3a28000000000a8a0000000000000000a2280000000000000a00000000000a000000000002800000000debc2b3ab480d6bcb2a0d8082800a000a8a02a280a8a8835adc5cb2a2b3ecd7c76fc5eb1975b3cbd78f9d7acfa72505450511405450151414454400050000001400000101440151404005005000010000000001d7d5eb98ff00937fd7e277a0d7ab49a4ff009379d6febaff009adb6dcdeb696ddaf95e46508a00aa916033ecbd24736b7bfdcca80640100000004051001500540500014410014100051050000000001501000500100050000000010005000000003aa000000a002064000000320002800000800001050044140000004014101445004014100541451040540144000015000c800000000000000022aa8802a000000000b25b7a2cd3e76fe4b6f4c4e93b08626bf9bfd0b73ca08080000a0000800020288a08a80190000000c808a802ace933fc924cfd16e4028002028000000000200a0800000000000828a800000191d35f47b2cce3c677dba20e63bcf4fae7ed6ef7b4e91b97c7f4935fae7f9d4d1c67a3d97ad9e33bedd1b9e9f5ebcdbb5ed3a46b9ebcfd86d3565f1fd24d7eb9fe7539eb7ad0434004000000000054051005100527311673057c5bcd42f34740000000001400000000000000000150050000000000005401445000000015005000000001440140000059cb6e6e92f42800837af0acead20b04501517a00002800aa802aa088d6b7172c7b35f1dba717ac696cf3f5e3e75eb3e857254146848a02a7c80aa9140545440005000000545001000001500000014001411444540500001bf57afcee6f4d673417d5eb9b7f7efd349fd6f674db6bb5cf13893b436dbcb13598d67113aa0b820a882800bc4ca44f65c6a0e79ca0287c050013200000028000019400140000000000000003ec00004000001400001017222a00228a080a22a00440504514450010141105114010500005410540015005400540000000500100000000050000000000010000005001000000000001014450001410545400001400400140933d272d4d64e7adec226baddb8e93bb53c75e39ee5a88194003200008a2a0000000800001900010144014400000059d2797f202dc7f6ff0034000014040510054000000000450040001400001ad7d5ecdf8971def488323b4f4693f7db3f8d7fd5b975d7f4d66bf9e6ff0034d1c75f4fb3699c6277dba373d3eb9fb6d76bdb5e93f9b76dbd6f5a86d35659afe9acd7f339fe74b73cf5a820a202280000008a000000000008a00000202939813982be35e6a2de6a3a0000000000a2280000000000000002a00288a0000000000000000a000000000a8a0000000000a2280000deb7a30baf251b054097ab6e6e93828a22a02a00a002800a228288b9055d76c59504467d9af8edd38bd632ed679faecf9d7ac7155554500140001422a004041400c8000002a00a800a80000294054010500001014175d76df6f1d79a0bebf5ddf6f19d27cded1dadd7134d3a693fadee5c69affc7a71feebdea4409161151000050058e7edbd70e91c36b9b6901151400e4010514401500054014401500144014101440144014a820a20a2a000a802a000000002a000190000000000150000000100050000000010005000001000000000000500320008000000008a28080028080282028800a802e44114540400550010005320081fe0028008020288b25bd20a8d4d6deb7a46a6b27e6ff42dca21993a6bd10a80064000504000000101440000010000000000000000024cd2dcff0092de931f3f2c80a80000a00000064101440054000140092db8933500759ff5f7e77b349f9eb7f946e69ead78d7caf7db8fe49a6386ba6fbfeb2dfa759ff5f1ff00d9b49f8d7ad6eefb5e99c4ed3a44369b164f5ebfa6bd7bedd6976db6fdae595434014000009c220000000000000000000000000000000bf3109cc15f1ef37ed16f351d00000000001514000000000000000000144005000000000001514000000000000140000000015005114059ca00e824e1501ad6b2baf20daa08281014450151405450162280a8a88badc5cf667d9af8edd38bd62b5679e967cebd67d0ae4028a002c11414200a0220a8a00000000000000001d014114040f8050001150164b6c9266de1e8927ab5f09fbdfdaff9269aff00c5337ffb369d3ff6c44ec591522a20b1140000545806f71adfcb83a7b6f591cd60200002800000000800280000000000000000000000000000220a02800000064003e7a0000000000000001000010045004145040510414414504051005100510405400540002a8a86440000014540000000000000400140000000000014114404005405000000059adbc3724d78eb7b88ccd3e76e93b7cb59f89d226440ca00000020a00000008a800000802a000000080a2000000002ce9d7f92499e8bb5edc4e010000014100540000000045414546b4f5efbdfecd72eb3d1acff00ecdbff008ebd6ff34d838b7a7a3d9b4ce3c677dba3b6b75d3ffaf593f37ad4b6edd6dcd4da7093d5e9d79b77bf8e91bf3b26359359da3021aa20a8a202a8802880288028820a20228802a00288028802a0028802880288028802939884e60af8f79bf62dfdaa3a00000000002a00a8002800000000000000000a8a00000000000002a280000000000a8a008a0000000a200a0037af0ac69cb602a083a09ade8a0454540540155005001400554320ad6b6cb2b22227b359aedd3f5bd632eb679faf1f3af58e4b145450151405450151441504144500000000000001153a2800000288a803bfab4f09ff0026dd6dfd27f9b3eaf5cbfdfbfe9389def66edbb5cd4a275b737adaa614401500000001a9dd936b8d6d072dae76b5905010514401440054014fc080a22a00828a080a2280228000000020828828a200a080a20000000828828a800a200a200000000000000000000000000000000000000000008002808a00080028000008002800000000082a00a80000000a000002000a020288d4d6edf5dc446a698ebb7f26a635e39ee96a0b6ff08820000020a0000080a2000000002000000080a200000000000013bde202f13f3595b7372802a0281900000100541bd3d7beff00acb677f8060c5b713abbcf47af59fdfb795ffc75ff0056e6fe3d349349f8e7f9a68e5aff00d7def5df1a4fcf3fc9d35d3d3a713cef7db8fe499cdee06b577dacc5b89da748c82200280000000000028000080a080a0220000000000000000080a080a200a0004e604bd60af9179a85e68e80000000000000000a800a8a00000000000000002a280000000028000a00000000000288a0000000000a2282cbd636e6e92e52800835ab4c4e63602a00a020a00288a02a4505e4450582288d6bb78d958f6ebe3b74fd6f58add9e7ebb3e75eb3fcc1c550154140540140050110000545000500000405400000010556bd5ebf3bd7a6b3f6a9a6b77dbc67cbb5b24f0d7f49cdef7ba50daf97131acfd61131d1a440005000380000018f75e23a470dee76b48220340000000000000001f200000000000000000000000000000000000000000000002000a000002000a00000000007da00a000000000088288282a2820002a00a200a200a800a200a200a200a800a8000000000000000000028200a20228200bd6aebadbf5dda9249d012698fdbf9356a5a882a00008000a00008000000000800000080a8000000000802a000001cadbf13e0e267e6f080020aa080a8000d69a6fbdfed99ff0759e9d35fdf6cdff00c75ff53470eb6e275aebaffd7df9decd27e79fe4eb36f198d24d67e39fe6cff8a6d3826bead38d7caffe5b7fa2edb6db737a76f8444354115144500400540144000c8000280000000000000200000020000000000000000000000b39884e60af9179a179a3a00000000000000000000002a00a000000000000028a000000000002a002800000000000a000000000000e9af0e6de9794a34020372f461ad78068041608a02a280a802aa280a8a02a2c106b5dbc6e7b32a09edd7c76e9c5eb1876b3cfd767cebd67d38915400500140051144004144145000fb0400000000100592db24eb6f111df4d7fe2d737ff00b36e3ff6c2aae27af5f09fb5fdeff924848b1105040540140010320010176be3a579dd7ddb71ab92c0105054005450454014401445000001014450022028202800020280002028000202808002802000028800a80288a008028802a07e01500000144000005400000039000000000000000000000000000000000000000004500400032000000000280baeb6fe277113ade396e69275dbafe166359d3f99940b4ca0064101500001400010fc800002001d4000101503200000202a00140000001014933516f498efc816e50000592db8d666fe0541d67a3ffecb8fc4eb5d278ebfa6b8fcdeb4d1cb5f4efb75bfdbaf7ae934f569f1e77bde3f916dbd6a21ad5db6b31f1da748c80800000000000000000008a0020aa200a200a200a8002a0019001504054005404150000015005400000000527311673057c8bcd0bcdfb4741500140000000000000000051005014000000000000510050000000000014401400000000000511400000006b5e595941b541055d79425ea0e80202a00aa820a002800a008a002800d6b6eb658cfb749aedd3f5bd62b5679e98ff76bd67d03908a2a800a0082a28000000280080000014003fc5074f5fafcbaedfa4e7fd017d5a493fe4dbff84ef5aeb6e6f356dbb5cf13e2768910aaa8a8013200a202a000000d464def8e96ff002071def96d6b20d0000000000000000000000a800a800a8000000000002a0070000000000000000000000001d0f80000000000000000032080a000000000000000080a0002280000200a0802a1905100510054000000000000000000101410144514275b85d75bb7e23724d674112698ebb73d96d32882a0002000140014100000010000000101014040510000000001145404000003e41677f8899cf55dafc7c46b5f56fb4cfebaf7a0c35a69beff00accceff0eb34f5ebf1e57bde3f92ddade7f926ab33d5a6bfb5f2bda71fcdbf2b26359359da3209a00000000002028200a80000000000000000000a00019000000450010172088288028208a000080a200a200a080a200a4e622ce457c9bcd45bcdfb47400500401400000000005000000144500000000000000000005040500000000054014000000000000140000001d27104d785405401d270acead2000228028a080a8a02a2882a28288a0abaede373d99504f66be3bf4e2f59f4cbad9e7ebc7fbb5eb3e9c8515140588a20a8a0000028080000000020b25b649cfc405d34bbed359fc6f68ed6cc4d75fd75e3fd53134d7c2737f7bfe4441430a8000028081400100001a8e7efbc6ae91e7df6f2dad5820828a21d0140000000000000000000000000000000001014000a000000202800000000080280005001005100510017280288000a00800a800a8000028802a000000000000000000000000000000000000080a1940540c80a8000baeb76faee093af4f974d7493aedcf65924e3f9886994010000ca00a019500410e401400100c800002020000200002800020a000019001005092db89d6b73d58fdeff09ca0c75bd1d35f55933b5f1cf1ddad6c9facf19f37e4e6e7e3e0d1759aebfacebdef52db6f5ea080000000200a20000000000000008028802a002a00a002000a00000000000000000000880000000000000000000001399f61399f62be55e6a2de6a3a0000000a0022828000000000000000a200a000000000000000a80288a00000000002a00a22800000000028802800d6b5a635e5b4a00035af386989cba2000228002a02aaa082aa022aa280a802ac401bd36f1da563d9af8ef89c5eb3e95ab3cfd78f9d3acfa0725450151405450000000000000010077d35ff008f5f2bfbed3a7e233ead263fe4db89facef5acddae6f35284504140005e880000740010001622c037be3a5bdde675f7edd7c7b392c00140000001500540051140100543e005ea800a200a800000000000000a8000000000000000002a0000014000000000000000000c80000000000000000000000020280000008028802a0028200a8000000000000000002ebadbc71ddd249af1cf706669f3b7f26ad0441000040000011454000282880000022a08000000080a00008000280802a0002cd76db86e69ace7adedf068c4d6edc4cb73d7275dae7f11acdc7e3b444357cba62749f8416221c74f9bcafd133cfcd055400000000000040172080a2000000000000000000028000200a200a200a800000a864054005104150040014004000000000010149cc09ccfb15f2ef3516f37ed1d000500005450000000000000000150000051005000000000000000001445000000000015005114000000000000163a393a4bd21450101d2758e6deb7a02aa2a20a8a02a00a00288a8281017a800a245056b5dbc6cbfcd9013d9a78ed8f8f865d769e7ebff00dda7f83902800a00288a00000000008dfaf4f3bdb59fb5fc3335bb5c4eb6bbdc49e1af139bdea50b73663a6b3a4810408a002a00a2000008000028353a4b5987b6f8e98ee8386d73b5bdd046850000000000000000000002800000000190000000000000000011400001140000000000114011400004540503a000008a80a2280200a2002a00a2002a002a0000001f8000000000000032000000000000200a200a22eb2edfe608e9ae9f3b7f259acd7ed6868088800022a0000081950000041400004015010000100000040500500405400059aedb7d776e6bacfcd34626bb6dc71ddb9a6b39eb7fa2e6889a66dfaec064004055c7c76e5274ebfc9a9d100105500000010054000000000c880a2280200a20000000280000080028000000200a200a200a200a8002e5005104144045100540054000001673109ccfb15f32f37ed16f351d400000051001500500000000000000000000000144500000000000000005100500000000001415041445500000006f5e186b4e128d88a80d6b7ab2baf4a0daa088a00288a0a2280a8a02a082aa280a8a02a2835a6d8dbf1f3f4c6faf86f67c731637b4f2f5e7fdda7f8039000a228288a008a000003a7ab5f19ff26dff00c620d6baff00c7ae3fdfb73f89d890eb6e6aa028000a00202a0008000202e40f905d638fbf6cef8f88ef6f8eb76af267372b0005000000144014401440000143a0008a008a008a08a8a0080288000028800000000000000000a800000a800000000000002a0000000000000007e000000000000114000000045405100510054005400000000000024b6e1d75d26bd7e419d74cf5bc766fa71380442d1000001320019320200a0000800002808000202000000008a80002aa0000b35b78fe6d4d24fcd0666b6ffab735d67e6a8880008000000416749f9a0bcff054545100000000000004051005400000000000010141055100540051000000010005000000000040144a0288a008a800080802880288000004e604e67d8af9b79a85e68ea000000000000282028000000000000000000000002a00a000000000028000000a200a2280000000000000a202ae9ca2ebca0d8082910075135e1405410554045540140051141672020aa8a0a2282b5a6d8dbaf1c5fa614137d7c36b3f97d32ebbcf2f5e7e75e97e9c805450000500005d75bb59ace6a0bebd3cee6f4d675b5d6dcded3e2762e249a6bc4e6f7a488122800a0000020008a800000828ab11ad67ca0e7efdb1acd67cb835ecdbcb7b7f8465a80000000000000000000000000000001000000000000000000000000000000000010141014101445004014101445000000004e8a0828022a028802a0028800a802a002a000a800000000000000000000075b70035ae96f5bd235afaf1d6f3d9b3449249d0044100004054000100014010000004000001015000040510000501014092dbd1b9a49cf50664b786a6b273d5444540032000000080a200b265a9dd3e31dd5000141005c8802a000000000000228020000000064014000000100510051005100510054000001500000000004000400000001055400010156729f692dbb4fb07cebcd0bcd1d400000000000000051000000005114000000000000000144005414511400000000000000005401400000000000510075127591500006f4e1a635e5a414005115051144150058a802aa2a02a282ab2d00a8037a5c5ebc5e95cf7d7c36b2b4d6f3cfd7369cebd2fd20e4a8aa0000a8a03b6baf86bff00bef3f88cfaf59ffd9b4e9389deb5cdcde528b2290405c000a8a22000800200022a28a82810f66de1a5ef56472ffb1be76f19c4457240680005100150050405100504051005100510054005100540051005100000510051000005400540015000005400540000000000000000000000000000000000000000000004500101400040141320a200a800a83a6bebf9dbf9033ae976faeeebaeb358bf09944013e4150001000003e9000014102800022a000640100000004000501014ea0d4d7bf40664ebd1a9a7cd6a4c70220000000000200a8000002cff00046a4f8fe340fcfc808a02028000000000802a0000001d000000101440150000000000050000000101440144014401440054005401500001000003280a219054000e39e7b25b8fb6720b6e575fda7db2bafed3ec1e0bcd0bcd1d400000000000000000000000000000051140000014000000000150015001440500000000000054000014000000006f5e1a674e1505001672db9ba4a94511400500041401144505540155041a1160288a0ad697ae2f17a564419db5baed75ec3a7b27969369cce95c945300037a6be771f13adacc96d9275bf0ed8f0d7c275ffcafe528b6cb8f89388422e10140017022008022a2820000027c00a0b11a882cbe3addbb3c76e6dbf35e8ffb1b6359acf9e5e758a00a0000000000000001d00ea00000000000000000000000000000000000000000000000000000008a8a00000200a800a00020282028802880282028800a800a8001d00000000000000000000166b76b88d69ebbb75bd23ac924c498868ceba4d7af37bb42220080a8000800080b9400012a814000400000100c8000202a14004140166b6822cd6dfc3535915024900000032080a8a80a80000002028802cefd94fc760172208aa80a00200000000000802880000000000000000a00008028808a202aa000000001900000011400001005100540000001017281f682b376f885db3f4c828828abaf33ee22ebfb4fb883c179bf6179a3a8020280008a00000000000000000000000a2808028000000000000000000002a00a00000000000000000288a0000d695a635bd5b400015bd78736f5e128d000a000a8a80a8a20a8a02a282911505001a114144541bd39c5e36e95cb6975b65f86d7db3cb59bf6e9b039837ebd3cae6febaf3fe80dfae784f3bfb5fd7f13bac867cae5a91022c001411015004ab51440010320008a0002c6b59dd9c1eddbc3d77bde883cfeddbcb7b7e3e1941a515005114004050000000001005040511400405000000114011401140114010051140100513e0054001500540051000005400540000000000000000000003f2000000000000000006440510c828802a00288d69ebdb7e38f9a0cc96f49335db4f549d76eb7b37aebae93a73dc4d4d294400101500040001000000450040510001015000040540001015014092d6a69ddafa0666b3e5a04004050400000000000101500000059dfb235f8ec0008a00a0200a2082a02806440c80000008028802a00000000000000000a00008a00800a802a000000000000000200a200a800000025b271ca0b9c73fc99b6d4c800828a000baf33ed175fda7da0f0de6fd85e6a3a80002a002a00a000000000000000000028000000a8a80a22802280000000000000002a000a00000000000000000a200d6bcc6dce72e880000d6bcb2baf20e822a02a00a008b0041445053a80288a0b162454162a280a13aa0ade965ceb78dba30a0c4d36bb784e5dae249aebc4feb5bb3c759bff00bb698bf862441646a2280a088280080088a8a08b9400100014151620baccb8ff00d8df3bf8ce3577bb78697678adb6e6fcac50050000000000000000000000c8000000000000000000000000000000000000000000000000000000000000000202880288a00800002a002a000000a8a080000000000000001acbb5924cd7a34f54d3adebb7f4868c7afd39ebbf49dbe5d7a6312624e216888205040004f900100004002a28a8000202a000200000020000020a065716b53593f283335b7e9b924e0000405100000010051145404000004f9051050543941a9dff0092a7f902aa00000000002008a00828a80800000000002280000200a2002a028000000000000080a080a8002a00a80000008a00802a0001c75bc3376cfd20b76f89fcd90500000000005d7f69f71175fda7dc078af3516f37ed1d00000000000005100511400000140000000000000000001500511400000000000000000005401445004500000000001d5c9d2710140405401d15270222802a88a02a022aa082aa00aa8a0aa8a82ab2a0d0082ba7af5ff75e271f9ac69af96de33f9badb389c4e0a2cb9ccbfeeff14c628d5eb8dbba08a11117000000a94282222a2822a000020a8a0d4891a9fdb2dbc441c7fecefc693eeb82edb5db6bb5f965a8aa800a2280000000000000000000000080a2280200a000001f810050405100510051140100510054003f21f200000a800000000a800000000000000000000000000000000000200a200a200ad7afd5b6fc74d7e6ba7afd17a6dbf49ff8fcff00176fc4e2705a33aebae931acfe3dc0a8820800002000080020000080a0080000200020a2a0200202e50592dfa046a6bdd64c2800008007e000000040001400004015010005000059ff00e893af45ff00f4414045041451005100004001400004014110510054000000000000000000001005510000000000000004015000000000031900b64e79ec97693a4e7bb19416db6f5432280000002a00a200ab3f69f6caebccfb078ef3516f351d00000000000000000005105144500000000000000000000000005100504050000000000000000005400540144014001bd7861bd380684105001bd785675bcb488a200aa80288a0a22a0a2282ac6541a5662a0bc2a282c6a32ebebd713cefc713bd41a93c35c7fbaf3fe81cf222556b5e2cefc3267fd41a53f33e44500000112a5540115141152800022a282c8c7fd9dbc749a7cedcba6b3bf0f27b77f3deedf1f0b3b1801540000015001440054000000014401500000000000000000000000000000000000000000000000000000000000000010050405100510000000000000000000000001bf5fab6f65edafcd0675d6ed71accd7a7d7e9d74eb7aeff00d235a69ae931acfbbf2a96a16a644404a0a08264000045401150004000500400001000100005004403e966b6b731380666bdda00100150000004003200000020a0000000080a80001106a707e0fa050005400000000040150000100000320000022802002a0000000006400000014040510015000000000101440000002e24cdfe40b19db7f8d78676dadfaec860a2002a00a800a200a200a2280b399f684e603c9b737ed0bcd1d00000000000000050000000540144014450045000000000000000000000000000015140100511400000000000000015ad38ac35a7c836020000d6b7ab4c6bcc6c4511501514054015500554105545058a91505548a0de9af95c7c7cbadb9c6389c249e1af8fcdfdbfd15000445001ad78b3f8c5665c75ecd7f85ea0008a0022255f80111514115000005911ad6031efdfc3d789cedd1e474f7efe7ecb8e2748e6d45045004500000000000000000000000000000c880a080a2280000228190405100510054540510051005400150000054000000000000000000000000000000000000114150054540149addae3599af57abd1ae9fddb7f76dfd225a39fabfebe7fbb7e93e23d1c624e9219465042a640405040010a008a800200080a80a0800020064405400041415166b9e7a2098cb735c73c92638500100000000100000010150015000045168202a000640000059c65275e8d7fea200028080a200000000000000082000a2e501000000000000004014101440150050000000000401440000000010050919bbc9d35fe60d5b35fcd73b6deb5005100504051005040500000000059cc459ccfb078ef342f351d05000000014000000000000000000000540000050000000000000000000000000000015014000150051005114011406b4e595d3941d0454400023a39b72e4a28082800a228288a0a22a0aaca834b115058ebead713cefc7eb3f2e7ebd7cee33d3e6fe1db39e3a49d244a2aa2a200a0000ab38c76eb195971720d071445000130a822228a2228080a044f6eff00f1faedf9bd235ac79bfec6fe5be271af42763880d2a8802a000a8000000a02000002a000000000000000001f007200000000000000000000000000000000000000802820288028802a1914510015005400540032000000000000dfafd5b7b2f4e3e6b7eaf45dbfbb7e9af6f9af4c924c4988968ce9ebd7d731aff1bf35a1194132a8021514115320200080002080200641544540010000100500400f959adbf4de24e1049ac9cf2a002000190004000001015000000040510000500004540000009c83538011550000000001140040540000003200000800a80828802a00000000000a0000808a2000000006410551011500500017a4eb784b66bcf5bd98b6db9a0bb6f6f49d2320a0000000020000000000a200a200a4e67da2ce603c979a179a3a0080280a0000000000000000000000000000000000a802880288a000008a002028228a000000000000000000000000d6bcb2bafec0e80222a002b7af0c35af082aa082800a2282800aa820aa91602b5123afaa627fc97ff8fda0dc9e3af8fcdfdaff0092c6675fe2d222ac4540545000015141a9d67d7f8092e2e578b81401011504415144000302c809ecdffe3f5ddbe788f0bb7fd9dfcb7f09c6bfe2e2d450000000000000000000000000000000000450000000000040144c80a2280200a2002a00a2000000000002a0a00000006400000000114000011401005100510000001ad34db7b8d67df60492db89d6df87a7d5e89aff0076fd76ecdfafd5afae74eb7e766d9b40044104010144a08022d4004000410041404515000400010150004164b7e9446e6bf37a9249c2a00200000080a8000002000000028002080280008a8000000008a02cee9cb48000a0000800001900000004054000000000040000040504051005100540000004c80a080a800000000080a2a2f1337a4024b536de4e9af3dd9db7b7a4e919305405150015001500144014410510051140114000059cc427301e5bcd45bcdfb47415014510050405100500000000000000000000000000000000000000150140000000000005100510015005000000000597ac427301d445440001ad595d6a0d800a2082aa00aa8a02a282aa2c41bf5eb77db1fcefe1dadcde9d24e91993c35f1ff75ebb7fa2c64ad452022aa2a0a000002a002b5f19edcb2badc5ebc7c8287e3e608a002222a2822a007b37ff008fd776f9f8591e6ffb5ecf2dfc271aff0089391c6db6f5406d401051140100000150000051005100150032000000000a800a80000000000000002800000008a0080288a00802a0028802a000a80000000000000019000000000001397a3d5ff5ff00ddecfe1aff00a9a31eaf4df675bd35eef5ebaebac9359890566dd400404a2000805405103e1004540010401000455000040040a053220284996a6b2024d7bb4202a655000001005400040150000140100004000010554000000001000001677fe4d27f9082a00a00000008a008000000000001f000080000a8080001904050405100540500103200008a29c20800280220a125a9b6f274d7adee2b56cd79eb7b39edb5dbad4ca2e0a2280000000000000000000000000000000b39884e67da0f35e6fda2de6fda3a000a0000000002a000000a20280008a000000000000000000000a00000000000000000000000000000000000029398803a80880028d6bcb2baf3046d504140015150151415595069d7d3ae3ffe4bc4fd677ae7a6b77da49fc5dad97127ebaf4919a2ccdb9bcb5122a22aa4680545405450014115140001ace64bfc286bce3e29d7e5140044a95514016033ecde7afd776bfc3ede0b6db9bcbb7fdaf6796fe338d7fc5c32d48aa22a8000020280008a000000008a008a0080280008028802827e0150014401440144015000000000000c80000000000019000000000101445010015001500054000000005d75bb5c6b336b5ebf5edecb89d27cd7ab4d35d2635fe37ba5a33eaf4cd3adebb7f83b708aca000086401288022a2820020200082000081454014328000200000b35cfd135eed01890104001404054000100540001404c822a0006400000401400010054000000001677459fe00a0228000228080000000002028800000000000080a080a20000000000022a00a800000000080a82fd022e2499dba42dd74e7aedd9cf6daed7353b55db7cf49d276641400500015010000540051001500000000000540015001673116733ec1e6bcdfb45bcd474003200000000000000000002a00a200000a800a2000000a80a20a0000000a80288a0080288a0080280000008a000000008a0000ea8088a22804e401d004054014005565505548ebead67efb7ebaff5a837acf0d31feedb9fc4ecd4665b6e6f35b889562820ad440155150151405458010000006ef5ebdf96575f99dc001039405119f6fb3fe3d2edf3c4fb6de3ff00b3edf3dfc671aff8920e59cf5a80da800000000000000000000000000000000000190000000000000000000f90004050405100504051001500510015001500000000000000000000005010fc4415d7d5e8bbff0076dd35ff0016fd5e8c7f76fcfc6bfeaef225be093592627491a06505100e800080080954100040040a02140410051320a08000801d4166b6fd0262de1a924fb5040100000100001410000001140010000100000000040554000000101500000163493a080a80a00000000008028800000000228080000000000000002028802a000000080a200a80002e24ebb749d8092dfa4dbd9274d39eecefbddba4e9af66133d55f9105054141500510051041501454041440144014400540144014401440149ccfb459cc079af342f347400000000000000000000000000000000000000000140000000000000000000000000000000005400540000017e5007501100005401d209388a82800a228288a835aeb76da6baf35dee3a69afebaf1f9bdd9d35f0d33feedf8fc458835235198d44458b122a0d40501515015140540140015140001abce7e2ff008a13acb3f8c10401463ddecff8fd76ff00baf48f03affd8f67fc9ece9faebd238b522a8228a2280000080a080a000080a080a000200a200a800a800000a200a800000000a80000000000000000000000000008aa00200202880289914510000000001bf5faf6def4e93e6a0cebaddae35eb5eaf57aa69d79dbbf66b4d35d6635fe37bb72619b509015000001000004a00815141150045401004115154100100045400396a4c0135f9aa0200800000200082aa000028080800022a00000000202aa00064000405400000000082c9d01404500001015000032000008028200000000000000200a2002a0000000000002000000006337a2c99eb7a4eecedecf8d3a7e53e18d5db5d3f3b395dadb9a82c8a00a002000a00000000000000002280208288a00828a2082880280013988b399f60f3de685e68e800080028080a0000000000000000000000000280000000000000000000000000000000000000000000000001f200e80222880288a0debc2b3af0d202a00aa802ba7ab49b5bb6dfaebd6ff00a39c96d9273787a2cf19349f1cfe6a50b6ed7379ad466351946a2c48d00a45882c0802aa2a02a2802280a0028000012e2e56cc5fc5eb1179d71f33a82397fd8f67fc7ebc4fdb6e91d7339f87cff77b3fe4deedf1c4fa5906006940000000000000000000000000000000000000000000000000003a200a00020a28820a22a808028802a000002a000a80005000032500000045000001dfd5e993fbb7e7e35419f57a6edfddb74d7fc5e8d64c492624e22c8b19b5140405004540000045450400104002a6400410454144545045a800200b26493bb4218c000200000080001904000105150000004000000001000005280008000000802a00000b396999c7da82a022aa0000000008a0080000000000002000a0800000000000000800288000000125b7a00b7c7499db9f889b7b35d3a6bd76f9ae56db737ad3b56b7deedf89f119050101141014101440554001504000000000000000000000000000000059ccfb42733ec1c2f342f34740100510054000001500000000510054005040150500000005401500000000000000144014401440054005401500000000000027213980ea0220000a8037af0d31ab40a22a0a237ebd3cf6c5e9275dafe01d3d53c35f3bcde9affaac2df2b9e27127e163295a8b11a882c6a24580aa90882aa282aa2a0000a000a00a0000004b8a33b5925b7e3ad072ff00b7ecf0d7fe39feeff078ddfd97fe5d2ed7f6d7fc1c1b8000000000000a00a0228008828828a0882894051051441051051440150000000000000000000000000000100000114510050405100510051005400000000524bb5c499b574d36dee27f1bd9e9d349a4c6bfc76ee9689ebf54d3adebbff83ac848aca11515000000001015000045004010280800990044045500010011a90930a20080000020000008000008280000800000200a80280000802a0a0000020080000000041677050100000000105545410000000000040540000000000000000001015000000000092db88bb6dafaf9feedbb1ab84d649e5b5c4637f6e678ebd35ff1636df6dae6a19ea80280020000000000000000000080a22802280202a8802e50105100000540000052733ed16733ec1c2f3516f37ed1d00000000000000000000000000000050000000000000000000000000000000000000000000000040510050405273035e603a8808a200a020d6bf2d31afcb602a082bbe3c34f0ff75ebb7fa31e9d719f66d3a4fd7f35b9d6e6a51635198d4ca22c6a245882c6922c41488d401514155140010511408a00a000a8a095e6ff00b3ecebe13eebb7b779a6b76fe5f6f0db9b6de6ac837ebdb1b75e2f4ae7beb75dac56fd9fdfeb9bfcce95a1c40000015014540000000400140040014014000004001400004014450010144320a200a800a6500510051005400000000000000000000040144014001d3d7eabbf5bd359f2d7afd39feedf8f89dddf19ff00289689aeb24c6bd246e44985651400501004015000014115000400128008022d4104a22aaa080012640932d498388822a00000008000002000282000002640ff001001014405000011454000000c880a800008000080000035fe493ba82a02000000000000008a00864150000000140101411050000400050010000000166b9ebc6bdcb35d2677e7e3572dfd9b6f7af49f121df4b8defed9278fafa7e5c9059315441451005104144045100150000000000000000000000000000000000000000142733ec2733ec1c6f37ed0bcdfb1b00000000000000000000000140000000000000000101410140000000000000004015001500054000000000000006b5fd995d390740040000006b5699d7969055d35bb6d359cd476d278699ff76ffd225176b3a6bafebaf49feab12351945588d4058d245415515052002aa282800a0202a282c54014141151cbfecfb3c34c4fdb6ff0079fdfecf3df1389d239a0d8adfaf19bade3698fe2c00ced2eb7151d7dd3ca4de7cf3f6e2455105144005400001440143280a200a200a2101515015000000000000000000000000040500000011400405100540051005400000000000151ad75bb5f19c824eaf47afd335ebbf5dbe2765d3d73d7c75dbbf6fa6e466d4593af5e57041050c28000002000a0000800000805040a02020008022da8a082c8049dd4411500000010000010000450000040000040000501140000000004000000040540032000644050275a0b144414014100510000000000000001014401500000400054000000000000171359e5ecb89f13e6a29aeb76e3f8df84dbdbae9d34ebb7cedfe8c6feddb6fed9fdbaf68e666f6ab6db737adbf280a0028000020280002028080228000808a008028802a002880288028800000000a800000000b3988b399f62b85e6a2de6a362a2800202880288028802880280a0080a200a800000a800a800000000a8002a00000000000000000000020280008a008028802b5a72c37a7c8368020a8a008a0d6bcb4c6bcb725bd272837ead26d73b7ebaf5bfe8e96ddae6fc964d64f5cf8ebb5ef48ca2c691506a2c48d40554106a2c48a82aa450151602840140405450505015002d9acb6f11f3fd9bdf66f76bf3c477ff00b5edcdff008f5bd27ecf335fe6000a00037a7f74ba77eb3ee38d98ae92e2cb3987ba4ccda71b75073015400000000000000000000011400320000020282028802880288000000000000000000000000000000000000000000e9ebf55dfade9afcdff00404d3d7b6f7138f9af46baebacf1d7f8df9a4931e3acc6bd9b919b50922a2a029f04014000000004000002899015000040115280802222d4aaa54500900100000405400045010001050000ca000000814010555100000010150000000405400000010144000006a32d000228000000000008020aa2022a0000000000000000000000002002ebaddae22cd649e5bdf1d7fadfa73f67baed3c749e3af6f9bf69f171bdbd9a7afa6bfddbf7f88e3b6db6d73b5cda82c8a0228a22822a00a800000000000000000000008000000000800000000000008a000008a00202939813980e379bf68b79a8da800000000000000002800000000000000000000000000000000000000002028802a002a000000000000000000de9c30de9fa834008000000d6bcbbfaa78cbecbcf1afdf772f56b77dfc67f1fc477dacb649d35d7a48cdf0235198d222b5198d44163491501522c06959541a00155141445015005f9548a82ab2a0ac7bbdb3d7a67e6f11be9266f0f07bbdb7dbbe7fdb3a459346336debcd106c5100150415bd7fbbd775f9d7acff3736b5dbc7697b039fe11d3dbaf8edd38f8735515005100540000054000000000000000000000000000000000000000000401410144014401440144015000c80000028efebf4cd7fbb7fdbe35ff0052d19f5fa73fddbf4d7e27cd77e7f12710eb6e6f2b19b508a1f282810140050405ca0000000008000202a00000202008a80272a8a8000020288000000801400454500010000100000c882a8000000080000020288000000008000000000203515150045000004014401500000000000000000000000000010001a9af4f2daf8ebdff00d0124bb5c499a6dbe9eaff00dfbf6f88c6fefccf1f5cf1d7e6fcd723355adb7db7b9dae6b20aa0000000000000640000045004014401440144000015000000000010000000001000000000000059cc459cc071bcd45bcd46d400000000000001400000000000000000004014000450045001014400000000000000000000000040510051000001d35e239bac105400540141bf4eb2dbb6dfaebd6fdfc441d7d73c34c7fbb69d7f11a8ceb6ddaed79adc8895551a882c6998d22281105548a2ac6a24541445055401400500162a2a0a0c7b7d93d7a67e7e0472ff00b5edc7ff00c73e7f6794b6db6de6f23726280281900010144506eff7fabf3aff00838bafaee36ebc5e958df5baed61064014000000000000000000000000000040510054005100150054000000000000000000000050000000010164b6c9266de922eba6dbdf1d797a34d35f5cc6bd76f9dbfd0b43d7eb9ebeb7fbb7fe91a9091ac328480a80a8a02a2800000000801900000288a0200000080080088152a800002000000008a8000020280200190010002802028000020000a0020214554010005040400000001014400e5622ce3ec555410000000000000000000000000000000045001014400592db89d6f659a74f2daf8eb3e6b1bfbfa78fabfb67cedf34f8b8dedb69eae7fbf7ff00c7e27db86fecdbd973b5cff93212000a0200a202a8802880288028802a000000000000000000000000000000200a080a22822a0828828a20828802a00293988bafed0471bcd0bcd1b50000000000050000000040511401005100511444150554000000000000000000000101445010000000000000000000009d5d5cf5fda3a0808a0000b336c93adaef64d64f5ceb8fdaf7ac7aa78cbecbcf1a7fab52251ad1d231a3712a2c588d44155044554582aac454162a4505545405450151405401a1151173899bc4787ddedbecdb3f1388ebff0067dbfecd6fdbccd480034a2a00000000a80037ecfefd26df33a561bf5deb75bc6dfe3f00e2a6d316e50144055100000000150000054000010005000005001000000000500040405504114450454014401440144000501af5faf6f65c4e92737b2fafd577eb7a6939bfe8f44c631acc6b3e12d0d66baebe3a71f37e6ae08ac8a10880a00a2280a8a00202a0000002000000000802a0008a82094b5140000004000040540001140000100000400010001404000000050010400000010000004050400000000001a48a280000002280080a2280200a8a80a200a200000000a80800d4d2d9e56f8eb39da83325b71266d6b6ba7abf6feedfff0009f1f6c6fef9278fa7a4f9dbe6b819aadfb3d9bfb2e76bc713e2300a000000000000000000000a000002000a02028808a2028a802a0000000000000000000000000000000080028b399f68b399f688e379bf68b79a8da8a800a828a800a800a2000000002a00000000000002000a00000008a0250054000000000000000000000401441415040001ad396d9d38b5a10001574d6efb4d67f1bf865df59e1a7feedf9fa28bb596f4fd6748448d4446b56d8d5b89458d245641514452246a02c5454162a4580a022aaa00a00288a22c63ddecff008f5ffdd786aed3599bc478bd9ecbbed6dfe0b20cdb9eb79a0340228000000a000000000d7b6664de7cf3f7f2e4eda7f76b74fe33edc69000500000000050010005001000010051005e040144014400540000000000000000000000000000076f5fa733cb7e9afc4f9abebf4cd64dbd93affb75ff00575eb6e6b368738e989389d96115015151000550005ca00a06400405040540000001014401500000444b7f916a2800002000008a80000022819000400040540004000141000000040540000004015000014040150000050101440054593a82aa080000000000000000000000000000000000496f493ad6b5d2d9e56f8eb39dab1bff00d8925d7d3d27cef79a9f0c6f6ba7aa7f7ff76fff0084ff00379fd9eddfd973b5e9389388ca2c8aa20a2880288a802280200a200000a202aa008002800800000280000080028000000000000000080a200a200a200a2000020a800baf31175e67da0e579bf68b79a8da802800000000000000000000000008a2000a02028802a000000000000000000080a200a80000000000000a00000037af0d24e22a200037ead66db66febaf5ae96ddae6f34b3c759eb9f1d76fb227f4ab1458235ab4cead3234200aa8b1115a8cc6815622a0aa91602c1150510154011562473ffb1edf0d7c75e68397fd8f6f95f19c47106c000000150000051000005101565b2cb3e0f6eb25cce2f588dfedebb3e75eb3e81c84145400504054005400000000000000000000000000000000010550411440144014400001505d65dae24cdbc4027e1e9f5faa7af1b6d33bfc6bdbecd3d73d5f9f677f8d5a919b43adb9bcac1501411050c0a000a40e80000b100000000004050400000000128094b5150000454000010000405405032202a000080000080008a2a000080a8000000202a00000002820007c0002000028000000b38468001000000000000000000000000000001ad74ccf2b7c759ced50664b7a4ead6d7d7e9fdffbb7ff00c27f9b9eff00f6249e3e9e93e77bcd7032dfe2b7ecf6efecb9daf49c49c4601a000000000000001000000000000000000000000140040401410144055100540100000050000010005000001000000000059ccfb459ccfb41c76e6fd85e68e8a00000000000000000008a00800a808a82808000028000000000080a2000000000000000000000228a080a200a200a4eb6235a720d80883afaa493fe4bf1d35fb73d75bb6d359cd76b8e27ebaf485f02756a331a888b16246a20d4699544511406998a2b4d465a888aa915016002808288a0a23599acf2bf00cfb379ebd7379f878b6daedb66f35af6fb2fb36cfc30dc8288aaa08028820a0080028008000082aaae9b78ed9f8f9fa65503d9af8ed630ebb7f77ae5f9d7a5ff00272000500000000000000405040510051005100510c800000000000000000000000000d7afd7b7b36c6bfc6fc4034d36df69aeb335e9d75d7d73c74ebb5fdb6ff424d74d7c74e3e76f9ab2336e8450408a2a0010140000051140040511401005400000000000102f4019b4b450004100000132000099054050040000040000040000504000a200000080a20000a000020000002028800000000000200b1a48a8000a002000000000000000000000a125b71266d6a6999e5b59ae939dab9fb3fecc93c7d3313e77bcd4f863a6d7d7e9fdff00bb7ffc27f9bcfecf6efecb9daf49c49c46059141154040144014401503905100150051040540144000015000001500150000000000000000000000000000050010040511400000000405040559ccfb42733ed072bcdfb0bcdfb4745510051005040150015000000000010000000000005000040000000000000000011400405100540500000000000006f4e32c3a6bd240506bd7af96d8bc4eb511bd27869e5feedb8fa585b9b9f8f88b112ac584580b1a48a828020a8b1058b12350162a45882c54caa0aa8a0a2082aa2c80b3bfc3cfff0063dbe57c6711bf7fb66b3c35fe2f2b527e800d280000000000000000000000000037ebbd7178dba39ed2cb856bd9fdd26ddf9fb883900a2a0000000000000000000000000000002280000200a2002a000000002a3afabd3e7d76fedd2737fd013d5eabecbdb59ced7e1e8fed9af8e9d34feb7f34e989aeb31ace27fa8cdba2c80a80a9140545440014545000000e40000000000000040510000b7006590500044000000400000101410a00140100000040500400003280000002000280000800000000080a8000000000202a002911603422a008a000000000000000000003534e9e5bdf1d27cd153596dc4eb577dbd7e9fdbfbf7ffc2713eeb97b3fed74ba7a678cf9dbfdd5c0cb7b5c6fd9eddfdb73b5e9389f1180500000000000000000000000000000100000000000000000000000000000000101440144014401440000000000000000054000005d799fc116731072bcdfb45db9bf68e8a00000000000000000000200000000002028a800000000000000080a80000000000000a000000022802002a00b3974634fd9b107693c35f1f9bd76ff00467d5accf95e35feb5ae6e6fca0b23512454458d448b1050014011551602c548b106a2a45882ac45414800a002c4f67b27af5fcd5db69a4cde7e1e3df7bbed95904b6db9bc88340a80a2a00a200a200a200a200a200a800a200a200ad69d65d3bf59f6c2cb8b99f00c5e46fdb3ae6717ab00000000020288a0080288028800a80000000000000002800000000003b7abd331e7ecfd7e35f9a96e07abd3e53cf7e9a7f5bf4ed6e7f1ace24f82db6e7b7127c0cde4151501514052002a2a00000280000000200a7e5005400150000000e00641401000000411440004000004140001150000100500400001000040510500000405400000000040000000011404000000001a8cc68054050541054500000000041140059addae3599ad7849af9fb2f8e9defcfd38fb7fed5c5d3d53c34f9bfeea7c5c74df7f57a79feff67fe3389f6f37b3dbbfb6f96f73da7c46059145414510414101400000000000040144014401445010014410540000000000000051001500150000000000000000000000000000000000000000016733ed16733ed072bcdfb42f37ec7450000000000000450045100405100540000140000000001000000000000000000000114510051000000000000006f49d32d4cdb8893a48ebeb989e779e35446acc49a4f8e7ed6246a0955622c4458a08a10208aa8a0bf0a90056a2454162c4541a5454054501acc93352387bbdb9e9093467dbecbbdc7c3983601f00000000000000a000000000000000000000dfeda59dbacfa7174d6e2cbfcd9f66b8dbf1f00c80000000000000a0000000000000000000080a2280080a200a8af47abd53d73cfd933bff00b75edf9a96e09eaf4cd64dfd9ffc75eff6eb6ddae6a66db9b737b9191700222c2228aa002c0200a820280000000000000000190fc000000267005b84328a2f410000000104003219004000414010000004054050454001015000045150000000400000001050100000010000500100050114011416290405450000114000000001bf1d74d7cfdb7c75f89f37ea20ceba6db5c49937f6fabd3d27ff00c9ecff00f6c71f6ffd9db69e1eb9e1a7f5bf75c0cf571bf67b77f66de5bdcd641a50000000000040000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000167ed3ed17599b1071bcd0bcdfb1d14040150051001500001000000000000000501000000000000000001140100540000000500000000000405114024cd88de939a0e9aeb76da6b3e5d6e3a49c4e919d278eb9f9db8fa59111a8d2451923512348a20202c458a8b159541551602b5196a20ab115058a914156231ecf64d66201edf66262579f392dcdca3520a200a200a200a000228000a0808a2280000200a802a88028802aedfdda67e67465ad2f5c7c5e80e62ed31514000010140004500401500054015001440000000000000024cf484976b24eb6bd7a7ae7a666f5f6fff00ebff00e52dc13d7ea9eac6db4cfb3e35f8d7edace6e6f34fc8c80088a0a28a8028002a2800202a00a200a080a228000027e40510e01442f402dc220a0000000228880000008002145004000004140001000040028000a08000200000080a20000000000a08000000000802a000000b11a80a0a800802880a0000632035ae9b6dc7f3369a7aa797b6e3b6b39af3fbbfecefec9e33fb3d7ff8cff34efa5c76dfdfebf574f5ff007fb3ff002bfac7977df6df6f2dee6df9ac8b26280280002a00000000a200a22a00000000000000000000000000000000820a0802800080a8002a00a22802280200a00000000000228000000000000000b8939b841171f2cdde7fb67f166db793571bbbeb38eb59f2dad9f6caebfb445676e6a2edcd4754000000000000001000000004050415440000000000010051000000000000000050040510054000000000001dbd5a6712f1cd719335ea93c75c7cdeb50ab6e6e78ecd48cc6a0caac46a222c0328080a2aa00aa8a0ab115068458834b1200d2c44db6f1882efbcd67e5e6db6cd5df6cd65a9000500103200000000000000a0020000000000000000000002fb3ac9b4fe3f6e6ebaf5975efc395e828a828000000000000000000000000080288028802aebaddaf8c99b534d6efb78eb3ad7af5d75f4cc6bd77bfb6ddbf112dc0d349e9989d7d979dbff001fa115900045054530a8a0000a2280a8028802808000064e8000001900000032a16b27500114010054000010100540f800a2280202a00051143e410150000400000115000010140405040540000500405100000000040150000000000006e331a0004051005450024b6e235bedeaf4ff00f65ceff1a4ff00340d74bb75e359ced788c7b3fed69ebcebe9ebb7ff00d97fca387b7fec6fede97a6b38d6711c973d5c6b6db6dae76b9b79b5115540000001140000000000000000010000540000054000000000001500000000004000000000000000000000054014401515001501400000000031f37a44bbeb38ea9a62e2d2dd673737b3177daa26ae357d9789d233d40500405d7f69f68bafed019db9bf686dcd1d9000000004051011440144050000000000c800200a80000000000002028802a002a000000028040004050405100540e78076f46b9b76bc475e6e7ba4d7c359a4fbbf6d444ab1a451958b122a28200a200b152288ab1200d2c45882ac4541634cae64eb40b649d5c77df34df7cb0b2000a0000000a800000000000000002a000000000000000000002cb8b9ec9ec9d7338bd45e75c7cc4563220a0002a0028800000a800000000000080a2280d69a6dbed35d6669a7af6f66de3abd326bebd7c34f9fdb6eff004968bac9ea9e3a75dafedb7f94411914451144515404140c82994500005100554000000000320b940000000b404bca00a8000001100510c82d4010105150c800800140128282000080a80000020280200000200000065145100000000040054000000000000040000006a29200008a035aeb76b893208d4d3a796d7c74ef59dfdbeaf4f4e9bfb3b4e27dbcbedf6fb3dbb677b9ed3e21cd5c77f6ff00db9278fa3a4f9def35e6cdbd6f282c98a00a00200000000000000000002a002a00a200a02000000000008a00202820288a000008a000800000000000000000000000000000000a0229e3dfa0062d4bbeb38eb59bbed7f1f49ab8ddf19cdfe0cdf67fe330c08b8b6dbcf5400014115140010175fda7da2ebccfb062f3516f37ed1d900000000000000000405040545400000000000000401500000000000000010051005400000005000000075f46bd7cef138fb7292ed649f2f4c9249ace2215a5891a832ab12350152d132828802800aa8a20a8a0d4c2b2d44162a2a0ae7bef9fa4df7fe4e76ac81954145100540051005100510054005400510051005100540015005400540000000055d6e2ff008b2026f31b237b75d65ece62a88028802a000000000000000000000dfafd7b7b36f1d7f89eaf5edecdb138f9af4e75d75f0d3f5ff75ee9687f6e9af87af8ff0076ddd10cb22e50145545441627e14551150510e80a002880288a0000a8002a00a200a80001902dc2644051005100000000320800195404015320008000654100010000f800414000100004000001140c800000200a2000000000000802a002880828828a8a20b27546b5050051575d2edf5f967d9ff67d7eafedf5ff007eff00f97c441bbaeba6be7edbe33e3bdfa79fdbff006f6da787ae7869fd6fdb8efbedecdbcb7be5595cf570015400054015010510051005100510051005100504051140000010000000000000000000000000000510414450045000000000000000000000c6401718ebb5c27fc9acfd666f7a9a62c9696e9afed7af68e777db6e6f4ecc9ab8e97dbff8cc316dbd6d04500000000000015140010175fda7da2ebccfb0636fdaa1b737ec764010144015000000000000000000000100540000000000004014400000000000040504051005100005005d75f2b27741d3d3ae2797cde91da46663e389d23704ab1522c115a490a8191005000588b0450015622c069520834c6fbfc44db69c473b545b728028a8028800a802e4401440144014401440144320a2640510051005100510051005100540051006a5f8f8ae7662b46fd716032080a000200a200a200a200a2000003a7abd5b7b36e9c4e6fe0f4fab6f65edace6df88f45bacd7c34e9aff008fda5a16ebaebe1a74d7e6fcec8994ca0a000b11505001550c82994505100503280b9427e41400000321f9000ca7d82e40054e81404b52df9014f94f801722740150c995000013a80a27c1900fa32080802a082aa505428202a09905400005004001015000c8202a0280000800000000200a20000000000000000a0008a000d48cce5da6924f2def8eb3e6a55664b7a45db6f5fa667d97fbbe349cb8fb3fee493c7d131df7bcff000796db6db6e6a65ab23b7bbfecfb3dbfdbfae9f1ac7106ba55100510051140114000004455000004000001400400000054005100510414401440551011410551140000000000011000000000054500450000026b6f10be1afed7af686982cd6fd4fcb37db8fd663f358bb6db73729ab8e976d27cf95fc337dbb5e3fb67e18114e79ea000002a00288a00000000000002a2a01af33ec27ed3ec18db9a8b79bf68ec800000000008a008028800a800000000000080a200a200a800000000020288028800000000000000000ebeb9e3ae7e76e3e9cfd7af96d8f8f9779d6e7e3e02b526235123515958b11620a94a88288aa0020aacfcb4a0b116222c548a0a9b6df09b6dd18b40b6a00a000000a8190513202899320a200a200a200a200a200a200a200a200a200a650f9051005100150051001799622e700c0bb74bf8400000000000101410144015d3d3e9becbdb59cdec7a7d57d97af4d6736fc3bedb4c7869d359fd7f352dfc8176927869d349fd7ed9410532802aa00aa820aa8b9051390140051005115015005100510c82880288a0644380566dc96da02e50fb1432002a1900c87ca64144c80a080b913200080a20a065005410452a00080288280000802a0002000228a20000008a02000000000800a080a80a2a000a8a0002288b0024b56f8e933bdc4feae3bfbeedd35fedd7faa2e3adf6fafd3f1e7b7c4f8fe2f3fb7ddecf6dcef7ea7c4636e5171a914000450000000000001400400000450000000001500510114000000000045000000000000000000000150051150001000000006bc6c99dbfb67e456564b78994bbfae712ed7f3d233b7b77bc749da2698e9893f6b27f8b37d9acfd667f35c815adbd9bedcde9da20008a200000000000002a00a22800000000000202ebcc45d799f60e7b7342f37ed1d9144014400000000000000000040510000000032000080a200a800a80000000000008a0020aa200a800037ebd73b66f13906f59e3ae3e6f2e9acc4675eb72dc19ab1a891608b17285401051400510058a401551a888706db25b862d02d40140000005401440144014401440144014401440144014401440144000016a002a000b94015000540172200b7aebf4c65b8c598a0002800000000020a2bafa7d377b9bd359cd4f57aaef737a6b39aed7698f1d7a6b3e3bfdb36f88bb6d31e3a4c693e3bfdb289941440155140545014e041445051005c899501504140000051005fb10c828802899017299ca67a8a193264fb00003206400f8001140f81005f910000c8020a019405100010454320020a2a0002280080000202801d00c8801400010144000e80000002800000002e00004024b7836dfd7ebe7aedda20d4d6dfc4eee7bfbf5d3a7afadef5cb7f6edbf3d276f86171ac6aed76b9b736a0978554c808000000000000a000000a800a200a8080a8028802880288a00020000002880a0080002880288a008a0000000000000a200a0be1b599bd277bd1042176f56bf376bf8e19beedb8d64d7fc4d31bf0bcde93bd4bbfaf5efb5fc748e56ddae6dcd13956efbb6e35c6b3f0c5b6f3d5140000001500144500040000000000000000545000000000405d7f688b399f60e7b73516f37ed1d90000000000100510000000000000000001015000000000000000005040150000000000000007693126bf3cd63d73af95e23aeb3ae44ad49d1a48b1595548a80000000a8a010580a114152d2d918b445b5901400054101500510051005100510051005100510051005c880288028802880288028800002a000a802a00288006dd714399603202a86400000040575f4faaefd6f4d6734f4faaef737a6b39aebb6d9fedd66349c466dfc88bb6d3135d66359c460ca20b44145115051141488b0140414cff045c8aa200a00006414fe8808a651600022a88082a1905673d52d32a28802820288028650141320a2640540c828993200651401014c89d01503a0190ca087c9c8287d88001900c88a008000282000000200a80000008a00828a200b9400511400500164cf2222dc6b33b5c31bfbb5d7a69d6f7f870db6db6b9dae68b8ebbffd8b7a69d277f971056832202a6d7e1590004554005100513202880288028802880288a008a800000000000000028802880282028080000000000a800a802820283534db19bd277bd01916edead79b76bda7fab3ff003d9fa49afe79a9a63734db19e277bd12edead79be57b4ff571bb6db75dada1cae3a5f7d9fa49afe79ac5db6dbaed73f682000a0000a8a800000001f200000a8a8000000000000000000000288a00002ebfb4fb45d799f68395e6fda2edcdfb476451005400000000000000045004005400000005000010150005400000000000000040510054000e6e20e9eb9feebfc01b9318d67feab719d67cb7066aac48d4116194a000000028007cb522468085bd12dc336816a640054014401440144014000040045144500450011050001140100504051005040510051005100510505401440144c80a2005e596af0c8a06400c800ebeaf579f5bd359cd3d5eaf2b9bd359cd75db6964d75e9acf8ff566dfc81b6d2c9aebd359c464a99100005401400554820aaca8aab9c32a0b0ca082ca7400510051005132a0a6500532802e4ca64cf705ca65326414ca64cf51144e80288720b04014401443fc01503e00c9932280802a05004014ca0050c8a19100010454f90a0a86400114510c80080a2000202899000000140000000001514030002c96f05c6b33b5c396ff00f62de9a749dfe431d76db4f5fed737b387b3dbb6fcf49d9cedb43164540550000002f086d7e11145401440150c80a200a200a200a200a000000020000a2280080a000000000000000a8202a00a22802280125bc4cd6bfe3b3aef66b3f20c9cfe56fb3d3af19deff28cdf7ef8fedc6b3f09ab8e9ff1ed8ced8d67e7a2797ab5f9bbdfc748e16db736e6fe40c74befdbfd926bfe2c5db6dbaed6dfb4000000014040000000001445000000000000000414450000000000000000000000175fda7da2ebfb4073db9bf686dcd1d5004050001005100001400400140000001140400150000000000001014400000000000000100592db87693fdb388c7ae627977e91d75989f912b5229162a2c5490415004510050501484054b4b59c8194320000aa200a200a2280000200a2280228800282280080a000000000200a200b904051005100511401001500510051005c8864167666f2a9b020003afa7d5e7737a6b39a9eaf55dae6f4d6735db6de5c6bacc6b38896fe40db6ccf19d359c466d4ca651172200a22ca0a200aa80aaa9ffaa7ca0a0641572cf55017a26405e8228022a02a7c7e40150051005c819c720b9c7566dca5b92a8b91005100533d50c828864172650c82994c80d774401440144c802a001d0411443a02a191432080a99f93e402887e417840001151445032800026455ca00019001154100454c87d00a80280002801ca6dbe9a73d6f606a4b58dfddaebd35eb7bfc396feddb7e9c4ed1ccc5c6b6db6dae76b944155440150015000588671012f5a208aa200a200a200a000080a000000a80288a8022800000000000028800a80288028080000353d7bd9993a77bd0bff0016bfbefd7b6bd4d3196a6bb6dc4ca5f769afe9a7f1dbab1b7bbd9b73b74ed3a26ae3add66bfbed35fc7359bedf56bfaeb76fcde91c4074dbdfecbd25f19da7473bd6e6800000002800000000a020000000000000a00000000000000000288a00820a000000000000000baf31175fda7d8395e6fda2edcdfb4750000000000000000040510000000000000000004015000000000000040510000000017599b223a7af5c4cfcd074d7fa4e1a89263a3506562a282a2d405114000156122f0817a744b52dca2a05a99051500510051005100511401140000000000000000000000100500011400001005100510050405100510051005100510052f5886411d3d5eabbdcde92734f5faaef73c49cd74db698f1d7a6b12df05db6ff006ebd358c5a651003201c800a0028202aa1905fa5950414005c88a07e0fb0c80a80288029ff00ac2280a99014ca743e105cb39c95145c88641400510000c828940513e0e80b91005c8993a02e443a02a7f400512a028808a80a074001000100512f700c81543227002fe04320a80008001900c80a1900003a080000622e00c02e3b810b8d6676e8c6feed75e9af5bddc36db6dae76b916475dfdf6cc69d27771ce7ec1570040500000501045101552de825bd4010414401445000000015005100511400000100001500150054005100500006a69b6dc4b4191bba6bafefb4d7f1cdfe8cdf6fab5fd75bb5ef7a44d5c24b7f2d7fc7b4ebb6359f9e8e77fec7b38d71acfc39db6f5b727263bddbd3af36ef7b4e19bff62cfd359afe79ae4260d6dbefbfedb5ac82a8a808a0200000000002a00a0000002a20a00000000000288a0000000000000000000000a22a00000000000002ce67da2ce67d838de6fd86dcdfb4741500144000000000140000000c880a200a80000000000002028802880000000000a0020082b5acf2db0ef231ebd71337e5d20cd5545823502000802810162c845e105e18db6c976ca2819400540144500450032000000000000000001900000000000000040504050000001140100510051005100513202880288028802b7ebd3caf693ada9a6976bf8f9adedb4c78ebd359fd528bb6f3f5d7a6b3fab39432806505144015504140051005540155041445c80a86417227c00aa89905540553e93264172219e80bf696e53390432002e44017e88802e4a8028802e44014cf64eaa06550c81fe2644c8282034819004145fc99c2000140a264cf51004051154100004054000000c994051005c8828a8002a1d0054e8a20605fa0245896ebaccde91c77f7dbd35e93b863aedbeba73d6f670dfdbb6fcf49da33506a4510555400000000000000000195b7a2200000000002a00a2280000000020000a800a080a22800002eba6db7eb2d6ae935fdf69afe339bfd13558585f6fa75e25defe7a466ff00d8f67fb71acfc434c749ebdf19bfdb3bde896fa75e76f2fc6b1c2ed6fed6dfb0e4c76befd67e9a49f9dbab1b7b7d9b73b5c769d23018a000a0000000000202a280000000000a8028000002a2a08a02000000000a002288028000000000000000000080000a80288a008029af33ec2733ec1cb6e6fda2de6fda3a000002028800a800000000028008000008a28802a00000000000a0000000800000000d69af96df89cb2efa6be3ae3e6f22569523422c5891445ca080a22c058b210b602e6466dca5b94050f840510051005114004050000000000000000000000000000c800000000640000000045004014401440144014401440144015ad34bb5feb4d34bb5e8dedb4c78ebc4e6f74a2edbcc78ebfacfeac22e401005100511414410554320a2280a80aaa9911144c80aa80aa26405c8802f43e50050405cf5ea993394114c89951445000000bfd40001440144105132029940144ea7e145100510cdc828801d39000040510001145ea81910000c820299400000032019a0a1900000005024519dfd9ae9f9bd8469cf7f749d35eb7bb96fecdb7e6f4ecc8d62ddaed736e6a065540001005040540051005100540015004d8111544500000000001500150051140115000001a9ebdef593a03235669afedbcfa9d6b37dbea9faeb76fced71fd21a2c96f0d7fc7b633b6359dedc39df7fb6f17c676d661cedb7adb9a9cae3bddbd3af3b5daf6d67f9d4bef93f4d24fcdeb5c4306f6f6fb37fdb6b8ecc000000a8a00000002a280000000020000a000000000a2028000000080a000000000000000002a00a200a0200000000000000020000000000b3f69f71167ed3ec1c76e6fda2de6a3a00000000000000000000802880aa802000a00000000000008a020000000000000baccf506fd7afcd74493130b159ab1a891608b172800002c6a4490b416d63220288641440140140040014004000540000c8a00007200000000080b90fc8000000000064000c8002280000080a2280200a200a200b910056b4d2ed534d6ed70e9b6d24f1d78f9bdd10db69278ebc7cdeeca64c82880288a00802aa00b04115400513e5405401400510f8417227267f902880288a0bd443805ce13394e4ca8a4a801ff00acaa00a67aa00a200a240451005221455caa404385ca029900178101144320000190003280a21f0000a0200a65001501000013202880288282a0028600302f49334085db5d67573dfdf8e9af3ddc6db6e6dc863a6feedaf4d7a473056840000000000000004500000101441053e10d8100140000005401440140000c200d785c66f49f9e8976f54e76cfe27fa81d49aed78897df27eba4fbbd58dbddecdba5dba769d05c76f1c7edb4d7eeb377f4ebdf6bfca382863adf7edfecd66bfd6ff5636df7dbf6dad64000001411514001000050000000005450000000004005000000000000050000000100005000000000000000000001441050000000000000000000000005d799f68baf33ec1c6f350bfb5fb1d1004050415440000000150000000000000000001005400000000000040141000275e80b266bae93f94664c748e926261528d445822b519684045c0a45384b445b59c800202aa00288a00000000002a00a8400c87c8019000000000005ca000000000000000000080a080a228075450040144014101440144015ad75bb5c44d75b7a474b66b3c75e7e6a05b359e3aff1aca7e0051011500144014451454320b9104144ca828802800a650f905117e0151172829940144282e532991453280280001d414ca00b9100513f07c82899017a09f002899eca008b00000328bf8004a028208a21f9015000050c991000015000000cf7000045150014450016082b3b6f35e6ff00071dbdbb6dd274818ebb7b75d7f37b38edbedb73c766455c0014000100510054005ca00000002000000000025e5591544014450000059adbf07f6cfdb691040ff93d73896ff466fbb7f8c6bf42ba786d7ffcf42df5ebcedfc27570bb6d79b6a063b5f6e93f5d73f9acdf77b2f1713f1d1800b6deb7adfc8000002a2800000000a0008000000288a00000002a280000020000a8280000000000a8a00000000080002820288028000000000000000002a0828802880280008a000000008a01afed3ec35e67d838edcdfb45bcdfb47400000000000000000000001000001500000000000040144000000000006e4c43598fb5e41ad67cb5124f858a8b1623504580480b22f096e19b416d4450000040141014000c800000002e44000000015000000000000000000000000000000000000000320000000002028802aebadb7a2496bafe9d273f3f840b6692eb39f9aca00000000a650051005ff000054320b910414005100554ca64172a993ec17ec40172265400320653200a200a200b91005c880288028000002a1905c887e41440144c80a65327e41727e10f8051005c88028802899150000327ca01900150000000140000160228c6dedd674d7ad11d3324ebd1cb6f77c6bfcdcf6daedca0b866db9a02a8200000000008000a00000000000000000000097845b2da624e6c808177f5cfcb37dd7fdb308adcd6df82c93f6b2395df7bcd40c75becf5cef52fbb6f8923980b77db6e6da80280000a0000000000280800280082a080a000000002a280000000a8a00000080000a8028000000002a2802280000000000a800a802a2a202a28000022800000000000200002a000000000000002ce67da2ce67d838dfdafda2edcdfb474011400000405100540054000000000000000101500000000000000010146f5d7e6a6b3e6ff0006841ad67cb3cf46e70a8b1611608b1a89235c0216a5d928191005040500000000054014401440144014401440144014401500150005400540000054015000000000c8000190000000000000000164ca48e9fa4ffddfe082fe9fff0097cfe19ca6405400510ea02a00a9900510c8289950000510414450150051172008a29f2b9401448644544500380054c80a264c8288028990144014401445e800002a00000a99005100510052a1f2a2a000002a00009901728029fd501150014414510050f82d9acebd01633b6faebf7d9cf6f6dbd2748c0635b7b36dbf11940551014000000000000040511404005001014045c18ee08a99d61e73e202e29f6c5df6ee99074f2d67e53cfb4612dc4a2e25f66f7e590450141140000000000054500000000001400000010500000000005000000000015011404000000054500000000001500504050000000000000000100000000000001500150051005010000000000000000175fda7da2ce67d8385e6a2edfb5fb4740000000000000000040510000000000000000000140004000001ad67cd4d67cb62004ea0d6bdda88b1516352248d4e822f096e52d4032200a2280000000a864054014401440172200a080a200a200a21f00a202a88028802880288028808a2028a802a002a000a802a000000000001900059329f2e931accfcfc4409fd933feef84b52deb9a7e440000c800001f2a802fe440144c80a228000aa0882820281f20b913202991320a7d89905c88282a1f622880abf02088a00000a65532029940451005c8828a20828828a099051140c99401726400fc07d007428660019320064003280a228020a288a002c1116f4f9636f649f9ae7b6d6f218deded9c6bfcdcedb7ad105c00140c800000202a0000000000002e0c4040ceb13ce7c406b14c7762ef533906fcb58977ed1905c5f3d90000405000676bc4698db94540504001400000000000500000000054500040000050000000000000500000000140400000000005000000000000001501150055004000000000000004000000000000000000000141014410545001005100535e67da2ce67d8385e6fd86dcdfb47414401410150014400000005001000500000001014450040150000005932499e5a1054015759d3293ad6e02c8d489172a8b932851040140005400540144014410510050000405000040504514000101440140c8065005100510051140133d005100510054001500000000540000017946f5924cdfe1105d64d666ff04b6e7a96da80750000320000a800a8002f28029d500510050017e443e105c994017a000183200b94320a21f2a289901440144320a210172200a2281f21900321c02a064054c802e50051005114010c8299101445032008702280200a000080a20a28002a664eb58dbd9f13f9837769aceae7b7b2de3a466dee818a80280008280800000018005c1d3e410332279835818f2a99a2b79d6279f6600c6aed5335001500000000510000051005736b6e194580002a280000000000a8a0000000028228200000000a000000000a0000000000000a0200000000000a80a000000000000000000000002880280000000800000000080000000000000000000080000000baf33ed167ed3ec1c36fdaa2dfdafda3a28000000000000000000000080a2002a000000000000002c9f3493e6b4000200b2641ad635c21905caa458a87c080190000014401441051005040510051172008b900000000101445cd0040172200a200a200a800a20a28820a200a20a2fc08202a00000000000000035ac9cde01759899bc16db725dbaff8200000228006400000005400caa6405ca64802880288a0000a208288029945e8008654532202951400017e44320a200a200bf02190513202e44320b9f813aa81fd57ab20349ca2828802f413202e443e01722141440172200a200a200a202280a00977901a676f649d231b6f6b391716db7943200000200a060105c1d010c2e644bb0ab83a31e499a0e9989e6e7d40c6aee99a80002280000000000000000000000000033b217ad05000150050000041500140000001050000000000014000001500511400000005400541050000000000000005401400000000000000000000000540051005115004500000000000000000000000000000000c8220baf33ed0d7f69f62b86dfb5fb0db9bf68d8a20a288028820a80000000a000000000002008a00802a002ac9f34915451011400558cfcb40aa80350c88a8000000a200a8082880288a0000000000002800800002028028000000080a200a200a200a200a200a200a200a800a800000a200a235acebd81759f3782dcfd7c16e7a4e1045410144014ca00a200bf804051140000000c80280028864172728028080a8282a640510c82994322299405510050405c8203432a0a200bfd100150320a800a2640532808b91005c880299220288b90253e400fcaa00a200a194fc02f2061454b64f966efd98b6fc863777b786005030600153a01830652d05c1d19f24f206f313c98b53218ddd92ecc80b94045000000010144500101440050000004500000000000a26c0c80280000a00000002820000000000a00800000280a20000000002880282028000080a800a8a0000000000000000000a200a000228002000000000a0000000002a020a2002a00a200a200a200a22802280200000a200a200a6bccfb459ccfb070bcdfb45db9a8d000000000000000000008a00802a000a80000004ea035260930aa0000a190102720b1a451156245028800000a80288a00802800000000000000a80000000000008a0000000080288a00802880288028802880288028800002e50015322c9905932b6fc7c16fc44c80080a200a080a080a00000000026540000540054014401440144014133d4172080b900150406900144017221905e040144014433d0144802e44500000320288029100511400001140000004510053ed3384b6a8b7693866db4331153aae1329e40d743319ca6603594b59f24cd51aca792220d653280a6400000000010144000000000000000000000000000015000540159db95668a0080a00000000000a0000000000028000000002a280000000000000a8a80000000000a80282082800000000000000000a800a8a00080000000000000000000000000000000000000000000000000000000baf33ed175e67d8385e6a1b7ed7ed1a14101440144015001500554000000000000000164ee09265a01140508bc2650144006a466756815514458510150014450010140000000054005100000000000000000321f4000002280264051005c880288028802899014400540172200a200a8000649320b265abd2627f14e26273f200200a653202880288a008028802880288028802f400032000000002a00a200a200a200a219050ca0288a0644ca810000005f94000005c88028802e44014ca74320a080a000a8028914000054145066ed8e01ae9394bb3176b53286356d4ca65322b56a659c80b9335000000400540000004051005400000010550405114010051005100504050000000000000102f0caec800002800000000a80288a0000000000a2280000000001c02800000200000002a00a200a000000000a802800000000000000000000a8088a200a200a200a22800400000000000000000000000000000000000000000d799f61af33ec1c36e6fda2de6fda34a0000000000000000000000200a80289f4d498024eea020a1900ca0a002008b3a82c50515624510040510051140000000000000001500054015000540000153200000000000020aa200a200a200a200a200a200a800a800b91005ca002b5c7da4e9f608080288028802880289f00288028802880288028802880288a008a000008a02b2b9053280aa200a200a200a200a2280200a00800280080191400144014404500054014e887405132a02a16c8a2a5da462eece5171bbb5ace5005ca64001005100513200080a202aa000000000000200a80000000000000000800002800000000000000009794000001514000000000054500000000000001440500000054105000000000000540050004500000000000000005100500011400405000000000000000c800000a8000080000002a008a800a8002a00000a819015000000540175fda7da2ebcc070dbf6bf686dfb5fb46954101440144005400000000000000593249dd40930a020a8016880000000a35198d08a028d0808080aa0000080028a802880288028802880288000028802a002a002a000000000000000000000080a000200a200a200a200ad4e9329263a8064401440144014401440144014401440144017e04014101440144014401440140003200a802880288028802880289901440144320a080a000000a802880288028002a00b91140333e59bb49c336da18d5dfb3394050000000000101440000000000000000010000400000000000000000000000000000000005401440152f0a941001400415140000000005001141055004000000510414000000001500510050000000000000005401445000000000000000015000005100510050000000001005000000000010000000000000000000000000000000175e67da2ebccfb079f6fdafda2edfb5fb46800000000000000000000c6405914001401000000000101409d4162a2aa2aa450100000000144014401440140001014000101440144014401440144014400000c80000000000000000000002028000802ac9f35245c82e504051005100510051005040510051005100500010051140000000000000000001440144014ca00a2002a4014ca00a064000000144014401440144014101400152d66ed7e01abb48cddad6415443280a828a20828828a80800280220a2280080a20000000000000002028802880a2a00a2280000008000000000000000000acd54140000000504545000000000015005115000000000000050405000000000001440140004510000000000540144014401445000000000000000000000015000001500153202a000a8000202a00000000a200000a200a2002a000002ebfb4fb45d7f69f60f3edfb5fb0db9bf6340000000000200a080a0b8024050000010144000000000006a331a015162a2c04000015140000000000000000000000000114000004051320282028802a0028802880a2a00640000000000000000016248b6f605b50040101410144c80b9100511401005100504050405041544510000000000000000320050015005000540050000041500000000519505401400054005401412ed27d82e52ed8e19bb5a80b6e79104551005c88028808a200b91015500454003200a00000002028802f22000000000000000000000190000510054001500504050405000000a85405100511400100050541015140000000001440144014000000000005000100500000000000144014401400000000000000510114410151401140014032000000000000000000000000000000200000000000000000000002ebfb4fb45d7f69f60f3dfdafda2edcdfb4550000000000001642455414320080000000000000000004058a8a035120a802028000000000080a8282a002a08002a80000000000000000002280080a080a200a200a200a2002a00000a8000002c45e017f0200000000000000000000000000000000190000000015000000000000005100511400e800000000000000000020000000a200a22a816c8cddfb33941abb6510145401440144014101440144014101440144014400540000000000000000000000000000000000000000000000000000001051004000000545000000000000051140000000000001500144014000000000000005100511400000000c80000a800a200a080a22800220000000000000000a800000a800000000000a802a028a200a200a2082880288a00000000000002ebfb4fb459fb4fb079f6e6fda1b737ec55010140001640245054000000000000040144014405000162468415141441400400014450040140000000000000000004014101440150000140000000040000000000000000000000058071f62645150000000000000000000005401500054014401440144000005450010141014000000000000320019000000103200a002000a2a006551440899919bb5a2b576c336da80288a0000000000000000000000000000000000000020280008028802a000000000000020000000002a8808a200a202a80200000005128000a000000a800a000000000000a8028208a000000000000000a80288a0000000000000000000a200a200a000000000002a0202a10144500451011400001140000000000000000000000000000000000000000000540150005d799f68bafed3ec1e7db9bf68bb737ed1540005909140505004114411401400400000000140000080b1514414800200a000000000000000000000000000000000000000000080a194051005100510015005400000150000140208b00004014401445004014401440141145104144014050000000000000000000000000000000000000005011051140114000054015001444bb74e80d659bb2640045140000040014000001440054045400510051005100510000000000140000000100050010000000000000000000000000000000000510054000000000000000005100500000000054005401410140100000000005405001144014000000000000000000000005100500000000000001000000a00002a00a8000002a00a2022880aa2022880288a0080288a00800a000000000002ebfb4fb435fda7d8386dfb5fb45bfb5fb30aa61400c2a0000000000008a0080288028802a000000d465a50545822a2a00002880288028802820288a0000000020288028802880000000000aa802000a00000000000002028800a80288a045404001400000000000000000001400000100015001500150003264054540510000154401500000150a00020000000000655001500510054cc896a02da8028000002a00288028802820280000000000000008a000000002028000820a2280080a080a000200a8002a2802280080a000000000000000000000001440054014450000000000000151400405000000000540054014450000000000000000000510051011410151400000000000000000000001500150051005100510050405040501000000003a000000000000000020000000000002a000b399f68baf33ec571bcdfb176e6fda2808028800000000000000000000000000002c5455052020200a00000000000a002000a002000000a0000000000000802880288028800000a800000000000000000a000802a000a8000000000a08a8aa02280000000000000000000000080a080a080a200a200a200a08828800a80282028802800000096e12dc82da9940515041445000000000000000000500100001500540051000005400000000032000000000000000000000000000000000000000000028802820288a00200000000a800a80282028000000000002a00a200a0000000000000000002a0288a0000000000000000000000a8002a00a202288a008a0000000000000000000000000000000000a8002a002a002a00a20828202880288a0000002000a2ebfb4fb435e67d8396dcdfb45dbf6bf68a000000000000000000000a002000a0002c45105162822a00000a80280008a000000000002028202a0028800000000000000000000000000000000080a200a200a1000000000000000050540000054014450040054014400001440144000003200008000000000000000000a002000000a2a25d816d4b50000400000000014401410144014450000000000000000000000000000000000000000000000000000000010141014450000000000000000000000000540000000000000015005100500000000000000000000144014450010140000000000000054005114000004050000000000000000000000000005404510051140100511400405114000000000000000000000000000000000000059ccfb45d7f688396dfb5fb436fda8aa0000808a00a0202800000020280000008a0450115505000000000000000000000000000000000000000000000000004051140040510051005400000000162280080a0000000000280000080000028000000000000008000000000000a0000208a202a88a008028802a000a80280025a65905c808a020288a00000000000000000000002a00a8002a02000a000a2022a00a0002a00a200a200a2002a00000000a8000000002a002a000002a002a002a00a2280000000000000080a0000000000000000080002a00a2002a280000000000000000000000a8a0080288a0000000000000000000000a800a200a200a22800002280000000000000000000008000000000000000000a200a200a200a2280080a000000bafed3ed0d799f68396dfb5fb0dbf6bf62a822822a00a2002a00a200a800a800000a8002c4505058a80200a802800000000000000000000000000020282028202a002a00000000000a000002000a0000a088a000202880288028802a0a00202880280000a00000200000202880aa200a200a8002a00a080a8000000000000000000000202e5010115050000000005100500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000054005401440144504000000001440140000000000000000000015011500551011445000000000000000000000000015001500510051005000000000000000540000054014401440144500450010140000000000000000000100000000000000000000005d7f69f68bafed3ed072db9bf68bb7ed7ed154000000000000000000000000001400554150000001500144014401410144014100540150015000000000000000005000000000000001050000000001015000545040014400000050045001014405000510000000000000000000021900000000040140000000001320a99040041541015150000000000054015001440140000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015000540504050000000000000000000000000014400540144500010000000000000000000000000540150014401440140000000000000000000000000000000000015005100151401140000000004000000000175fda7da2cfda7da0e5b7ed7ed176fdafda2a80000000000000000000000000a02a2c54540000000000000000000000000000000000140000000000000000000504141000000000000045400000000000000000005401400000000000011401140000000000040510000005400000000005100543282ae501000000015005400000000000000000000150015000000000000000005100540051005400511400405040510051005100511400001140114000010050000000000000000000000000000000000000000000000000000015001445004014000000000000000000000000001500510050040000000000000000000000000000000000005100000510050000000405000000000000000000000000000000001440144005d799f68baf33ed073dbf6bf686dfb5fb14000000000000010140000000022800a4150404550140010005001000500000000000000000000000000000001444500000000000000000400000000500000000000000000001014401440150000504140040144501000000000000011400000003202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a002a002a000a802820288a00000000000000000000000000000000000000000000002a00000a200a200a00000000000000000000000002200a00800a008a8aa02280080a2280000000000000000000000000000000000a802880288a002028000000000000000000000000002ebccfb45d799f68396dfb5fb0dbf6bf628020288028000202800200282029001416008a8a802a2802a000a00000000000000000000000002028001814445000000000000000451411401000010005000000000000000010000000000000000000150000000000000114000000000000000328000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028800a8028200002880288a008a00000000000000000000000000000000002a00a82822a28022800000000220000000000000000000a800028a8a880028a200a800a2280200a000000000000000000000000000000000000a802800080288028000000002ebfb4fb45d799f68396dfb5176d6e6f4bca78eddaa822f8edda9e3b76a082f8edda9e3b76a082f8edda9e3b76a022f8edda9e3b76a082f8edda9e3b76a082f8edda9e3b76bfc8105f1bda9e3b76a28a78edda9e3b76a20a78ded4c6ddaa882f8ded4f1dbb54105f1dbb53c6f6a00636ed4f1bdaa8078edda9e3b76a0078edda9e37b500317b53c76ed400f1bdaaf8edda820b8dbb5fe49e37b5005f1bdaa78edda801e3b76a78ded400f1dbb2f8edda820be37b53c76ed41302f8edda9e3b76a208be3b763c76ed4105f1bd8f1dbb5003c6f63c76ed400f1dbb53c6f6a0062f6a78ded4503c76ed4f1bda801e37b53c6f6a082f8ded4f1dbb50417c76ed4f1bda820b8dbb53c6f604171b76a78edda820be37b531b76a082f8ded4f1dbb504171b763c6f6041717b54c5ed400c6dda9e3b76a022e36ed4f1dbb50417c76ed4f1dbb50417c6f6a78edda820be3b76a78ded4105c6dda9e3b76a082f8edda9e3b76a082f8edda9e3b760417c76ed4f1dbb50417c76ed4c5ed4105f1bda9e3b760417c76ed4f1bdaa2a0b8bda9e3b76a082f8edda98dbb5040f1dbb55c6dda820be3b76a78edda820be3b76a78dec082e2f6a98dbb504c8be3b76a78edda820be37b53c76ed4105f1dbb53c76ed4105f1bda9e3b76a082e2f6a78ded4105c6dda98dbb50417c76ed4c6dda820be3b76a62f6a082f8ded4f1dbb50417c76ed4f1dbb50417c76ed4c6dda820636ed4f1dbb5003c6f6a78edda801e3b76a78edda802f8eddaa78edda802f8ded53c76ed400f1dbb531b76a0078edda98dbb5003c6f6abe37b5040f1dbb531b76a0078edda9e3b76a0078edda9e3b76a0078edda9e3b76a0078edda9e3b76a0078eddaaf8edda82078edda9e37b5003c6f6ab8bda820be3b76a9e3b76a00be3b7631b76a082f8edda9e3b76a082f8ded4c5ed4105f1bda9e37b50417c76ed4f1dbb50417c76ed4f1dbb5fe4082f8edda9e3b76a082f8ded4f1dbb50417c76ed4f1dbb50417c76ed4f1dbb50417c76ed4f1dbb50417c76ed4f1dbb54105f1dbb53c76ed4105f1bda9e3b76a082f8edda9e37b50417c76ed4f1dbb50417c76ed4f1dbb50417c6f6a78eddaa882f8edda9e3b76a082f8ded4f1dbb50417c76ed4f1bda820be3b76a78edda820be37b53c6f6a08a78edda9e3b76a0078edda9e3b76a0078edda9e3b76a801e3b76abe3b76aa32a78eddaaf8edda82078edda9e37b5005f1dbb53c76ed4105f1dbb53c76ed4105f1dbb53c76ed4105f1dbb53c76ed4105f1dbb53c76ed4105c6dda98dbb50417c76ed4f1dbb50417c76ed4f1dbb50417c76ed4c6dda820be3b7631b76a08a78edda9e3b76a0078edda9e3b76a801e3b76a78eddaa8078edda9e3b76a00be3b76a9e3b76a802f8edda98dbb020be3b76a78edda820be3b763c76ed4105f1dbb53c76ed4105f1dbb53c76ed4105f1dbb53c76ed444171b76a78edd85417c76ed4f1dbb0882f8ded4f1bdaff0025105f1dbb53c76ed4105f1dbb53c76ec082f8edda9e3b76a082f8edda9e3b76a082f8edda9e3b76a0078edda9e3b76a022f8edda9e3b76a00636ed4f1dbb5003c76ed4f1dbb5003c6f6abe3b76a081e3b76abe3b76a082f8ded53c76ed4017c76ed4c6dda820be3b76a636ed4105f1dbb53c76ed4105c6dda9e3b76a082e36ed4f1dbb50417c76ed4c6ddaa082f8ded4f1bda820be37b5317b50453c76ed4f1dbb5003c76ed4f1dbb500d7f69f678ded575d6e674bc83ffd9);
INSERT INTO `familias` VALUES (2, 'Top', '');
INSERT INTO `familias` VALUES (3, 'Jerseys', '');
INSERT INTO `familias` VALUES (4, 'Falda', '');
INSERT INTO `familias` VALUES (5, 'Pantalón', '');
INSERT INTO `familias` VALUES (6, 'Vestido', '');
INSERT INTO `familias` VALUES (7, 'Traje Pantalón', '');
INSERT INTO `familias` VALUES (8, 'Traje Falda', '');
INSERT INTO `familias` VALUES (9, 'Americana', '');
INSERT INTO `familias` VALUES (10, 'Camisas', '');
INSERT INTO `familias` VALUES (11, 'Conjunto Falda', '');
INSERT INTO `familias` VALUES (12, 'Conjunto Pantalón', '');
INSERT INTO `familias` VALUES (13, 'Abrigo', '');
INSERT INTO `familias` VALUES (14, 'Gabardina', '');
INSERT INTO `familias` VALUES (15, 'Parka', '');
INSERT INTO `familias` VALUES (16, 'Chaquetón', '');
INSERT INTO `familias` VALUES (18, 'Familia de pruebas', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `gamas`
-- 

CREATE TABLE `gamas` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(10) NOT NULL default '',
  `colorc` varchar(8) NOT NULL default '',
  `colorb` varchar(8) NOT NULL default '',
  `color1` varchar(8) NOT NULL default '',
  `color2` varchar(8) NOT NULL default '',
  `fuente` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- 
-- Volcar la base de datos para la tabla `gamas`
-- 

INSERT INTO `gamas` VALUES (1, 'Otoño', '#adb06a', '#ffffff', '#d5d7b3', '#c7c998', '');
INSERT INTO `gamas` VALUES (2, 'Salmon', '#ffd0c8', '#ffffff', '#ffeac8', '#ffdcc8', '');
INSERT INTO `gamas` VALUES (3, 'Verdoso', '#408020', '', '#80c0c0', '#a0c060', '');
INSERT INTO `gamas` VALUES (4, 'Tierra', '#c08020', '', '#c0c020', '#e0c040', '');
INSERT INTO `gamas` VALUES (5, 'Azulillo', '#60a0e0', '', '#60c080', '#c0e0e0', '');
INSERT INTO `gamas` VALUES (6, 'Lilas', '#c0a0e0', '', '#a0e0a0', '#80e0e0', '');
INSERT INTO `gamas` VALUES (7, 'flor', '#e0a0e0', '', '#a0e0c0', '#e0e040', '');
INSERT INTO `gamas` VALUES (8, 'Oceano', '#4080c0', '', '#80c0e0', '#40a0a0', '');
INSERT INTO `gamas` VALUES (9, '', '', '', '', '', '');
INSERT INTO `gamas` VALUES (10, '', '', '', '', '', '');
INSERT INTO `gamas` VALUES (11, '', '', '', '', '', '');
INSERT INTO `gamas` VALUES (12, 'LAURA', '', '', '', '', '');
INSERT INTO `gamas` VALUES (13, '', '', '', '', '', '');
INSERT INTO `gamas` VALUES (14, '', '', '', '', '', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `incidencias`
-- 

CREATE TABLE `incidencias` (
  `id` int(5) NOT NULL auto_increment,
  `idproducto` int(5) NOT NULL default '0',
  `motivo` varchar(255) NOT NULL default '',
  `unidades` int(5) NOT NULL default '0',
  `fecha` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `incidencias`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `menus`
-- 

CREATE TABLE `menus` (
  `id` int(3) NOT NULL auto_increment,
  `nombre` varchar(25) NOT NULL default '',
  `imagen` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- 
-- Volcar la base de datos para la tabla `menus`
-- 

INSERT INTO `menus` VALUES (1, 'Productos', 'imagenes/productos.png');
INSERT INTO `menus` VALUES (2, 'Proveedores', 'imagenes/proveedores.png');
INSERT INTO `menus` VALUES (3, 'Clientes', 'imagenes/clientes.png');
INSERT INTO `menus` VALUES (4, 'Ventas', 'imagenes/ventas.png');
INSERT INTO `menus` VALUES (5, 'Gestión', 'imagenes/gestion.png');
INSERT INTO `menus` VALUES (6, 'Informes', 'imagenes/informes.png');
INSERT INTO `menus` VALUES (7, 'Cerrar', 'imagenes/cerrar.png');
INSERT INTO `menus` VALUES (9, 'Temas', 'imagenes/temas.png');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `productos`
-- 

CREATE TABLE `productos` (
  `id` int(5) NOT NULL auto_increment,
  `fecha` date NOT NULL default '0000-00-00',
  `ano` int(2) NOT NULL default '0',
  `temporada` int(2) NOT NULL default '0',
  `familia` int(3) NOT NULL default '0',
  `talla` int(3) NOT NULL default '0',
  `color` int(4) NOT NULL default '0',
  `proveedor` int(3) NOT NULL default '0',
  `correlativo` int(3) NOT NULL default '0',
  `referenciap` varchar(25) collate latin1_spanish_ci NOT NULL default '',
  `referencia` varchar(25) collate latin1_spanish_ci NOT NULL default '',
  `descripcion` varchar(255) collate latin1_spanish_ci NOT NULL default '',
  `precioc` varchar(25) collate latin1_spanish_ci NOT NULL default '',
  `preciov` varchar(25) collate latin1_spanish_ci NOT NULL default '',
  `stock` int(5) NOT NULL default '0',
  `ean13` varchar(40) collate latin1_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=10 ;

-- 
-- Volcar la base de datos para la tabla `productos`
-- 

INSERT INTO `productos` VALUES (9, '2006-05-25', 6, 2, 4, 3, 6, 8, 1, '716608', '0620403060812', 'Falda', '', '', 0, '0620403060812');
INSERT INTO `productos` VALUES (3, '2006-01-31', 6, 1, 6, 4, 10, 2, 1, '701308', '0610604100211', 'Vestido y torera', '', '469,00', 0, '0610604100211');
INSERT INTO `productos` VALUES (4, '2006-03-03', 6, 1, 5, 2, 5, 2, 1, '', '0610502050218', 'Pantalon con cinturon', '60', '110', 1, '0610502050218');
INSERT INTO `productos` VALUES (5, '2006-04-07', 6, 2, 9, 1, 8, 2, 1, '', '0620901080219', '', '', '', 1, '0620901080219');
INSERT INTO `productos` VALUES (6, '2006-04-07', 6, 2, 9, 2, 8, 16, 1, '', '0620902081617', '', '', '', 0, '0620902081617');
INSERT INTO `productos` VALUES (7, '2006-04-07', 6, 2, 9, 3, 8, 16, 1, '', '0620903081610', '', '', '', 0, '0620903081610');
INSERT INTO `productos` VALUES (8, '2006-05-25', 6, 2, 10, 2, 4, 2, 1, '', '0621002040218', 'Prenda de prueba', '', '', 0, '0621002040218');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `proveedores`
-- 

CREATE TABLE `proveedores` (
  `id` int(5) NOT NULL auto_increment,
  `Nombre` varchar(255) NOT NULL default '',
  `Direccion` varchar(255) NOT NULL default '',
  `cp` varchar(6) NOT NULL default '',
  `telefono` varchar(10) NOT NULL default '',
  `web` varchar(50) NOT NULL default '',
  `mail` varchar(50) NOT NULL default '',
  `ciudad` varchar(50) NOT NULL default '',
  `fax` varchar(50) NOT NULL default '',
  `nif` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- 
-- Volcar la base de datos para la tabla `proveedores`
-- 

INSERT INTO `proveedores` VALUES (1, 'Merry Hat', 'Avd Madariaga 45', '48014', '944761617', '', '', 'Deusto (Bilbao)', '', '');
INSERT INTO `proveedores` VALUES (2, 'YOKANA', '', '', '91-3040474', '', '', '', '', '');
INSERT INTO `proveedores` VALUES (4, 'ANINOTO', '', '', '93-7207535', '', '', '', '', '');
INSERT INTO `proveedores` VALUES (6, 'ELISA CORTES', '', '', '956185525', '', '', '', '', '');
INSERT INTO `proveedores` VALUES (7, 'GENFINS', '', '', '937860066', '', '', '', '', '');
INSERT INTO `proveedores` VALUES (8, 'SELVATGI', '', '', '902104104', '', '', '', '', '');
INSERT INTO `proveedores` VALUES (9, 'MARIA MARIÑO', '', '', '986266010', '', '', '', '', '');
INSERT INTO `proveedores` VALUES (10, 'PASSIGATTI', '', '', '667617911', '', '', '', '', '');
INSERT INTO `proveedores` VALUES (11, 'ANA SEBASTIAN', '', '', '933030651', '', '', '', '', '');
INSERT INTO `proveedores` VALUES (12, 'KENZO', '', '', '913933320', '', '', '', '', '');
INSERT INTO `proveedores` VALUES (13, 'DERBY', '', '', '3301477056', '', '', '', '', '');
INSERT INTO `proveedores` VALUES (14, 'PARADIGMA', '', '', '914321135', '', '', '', '', '');
INSERT INTO `proveedores` VALUES (15, 'CRISTAL', '', '', '986403500', '', '', '', '', '');
INSERT INTO `proveedores` VALUES (16, 'ALBA CONDE', 'C/Gambrinus, 87', '15008', '', '', '', 'La Coruña', '', '');
INSERT INTO `proveedores` VALUES (17, 'Futura Linea', 'Avda. Atlàntida, 130', '36208', '986 212990', 'www.futuralinea.com', '', 'Vigo  (Pontevedra)', '986 212991', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tallas`
-- 

CREATE TABLE `tallas` (
  `id` int(5) NOT NULL auto_increment,
  `nombre` varchar(5) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- 
-- Volcar la base de datos para la tabla `tallas`
-- 

INSERT INTO `tallas` VALUES (1, '38');
INSERT INTO `tallas` VALUES (2, '40');
INSERT INTO `tallas` VALUES (3, '42');
INSERT INTO `tallas` VALUES (4, '44');
INSERT INTO `tallas` VALUES (5, '46');
INSERT INTO `tallas` VALUES (6, 'S');
INSERT INTO `tallas` VALUES (7, 'M');
INSERT INTO `tallas` VALUES (8, 'L');
INSERT INTO `tallas` VALUES (9, 'XL');
INSERT INTO `tallas` VALUES (10, 'XXL');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuarios`
-- 

CREATE TABLE `usuarios` (
  `id` int(5) NOT NULL auto_increment,
  `Nombre` varchar(50) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `Apellidos` varchar(50) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `nick` varchar(10) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `pass` varchar(100) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `fecha` date NOT NULL default '0000-00-00',
  `tipo` varchar(5) character set latin1 collate latin1_spanish_ci NOT NULL default '',
  `tema` int(11) NOT NULL default '2',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

-- 
-- Volcar la base de datos para la tabla `usuarios`
-- 

INSERT INTO `usuarios` VALUES (1, 'Ruben', 'Lacasa', 'root', 'facb9b7241c03d511e7670498cc1fc81cf6189df', '0000-00-00', 'root', 2);
INSERT INTO `usuarios` VALUES (6, 'Luis', 'Laguna', 'luis', '1f2ee4bc3c6a4c046b723204d11233078b6f6ca6', '0000-00-00', 'admin', 7);
INSERT INTO `usuarios` VALUES (22, 'Maria Luisa', 'Rived', 'marialuisa', '25fe038443416f5d9d1c548a6d59058a9050c488', '0000-00-00', 'admin', 2);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ventas`
-- 

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL auto_increment,
  `idcliente` int(5) NOT NULL default '0',
  `fecha` date NOT NULL default '0000-00-00',
  `total` varchar(10) collate latin1_spanish_ci NOT NULL default '',
  `hora` time NOT NULL default '00:00:00',
  `pago` varchar(9) collate latin1_spanish_ci NOT NULL default '',
  `items` int(5) NOT NULL default '0',
  `cuenta` varchar(10) collate latin1_spanish_ci NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=40 ;

-- 
-- Volcar la base de datos para la tabla `ventas`
-- 

INSERT INTO `ventas` VALUES (1, 0, '2005-09-29', '', '11:58:16', '0', 0, '0');
INSERT INTO `ventas` VALUES (2, 0, '2005-09-29', '138', '11:58:16', '0', 1, '138');
INSERT INTO `ventas` VALUES (3, 0, '2005-09-29', '138', '12:41:37', '0', 1, '0');
INSERT INTO `ventas` VALUES (4, 0, '2005-09-29', '', '11:58:16', '0', 0, '0');
INSERT INTO `ventas` VALUES (5, 0, '2005-12-07', '', '18:48:18', '0', 0, '0');
INSERT INTO `ventas` VALUES (6, 0, '2006-01-31', '', '12:44:56', '0', 0, '0');
INSERT INTO `ventas` VALUES (7, 0, '2006-03-03', '110', '20:17:12', '0', 1, '50');
INSERT INTO `ventas` VALUES (8, 0, '2006-03-03', '', '20:23:31', '0', 0, '0');
INSERT INTO `ventas` VALUES (9, 0, '2006-03-03', '', '20:23:31', '0', 0, '0');
INSERT INTO `ventas` VALUES (10, 0, '2006-03-31', '', '19:33:52', '0', 0, '100');
INSERT INTO `ventas` VALUES (11, 0, '2006-03-31', '115', '19:36:33', '0', 1, '50');
INSERT INTO `ventas` VALUES (12, 0, '2006-03-31', '', '20:29:45', '0', 0, '0');
INSERT INTO `ventas` VALUES (13, 0, '2006-04-04', '', '18:14:24', '0', 0, '0');
INSERT INTO `ventas` VALUES (14, 0, '2006-04-04', '', '18:14:24', '0', 0, '50');
INSERT INTO `ventas` VALUES (15, 0, '2006-04-04', '', '18:18:59', '0', 0, '0');
INSERT INTO `ventas` VALUES (16, 0, '2006-04-05', '', '20:24:06', '0', 0, '0');
INSERT INTO `ventas` VALUES (17, 0, '2006-05-25', '', '19:37:01', '0', 0, '0');
INSERT INTO `ventas` VALUES (18, 0, '2006-05-25', '', '20:50:24', '0', 0, '0');
INSERT INTO `ventas` VALUES (19, 0, '2007-02-27', '', '12:59:34', '0', 0, '10');
INSERT INTO `ventas` VALUES (20, 0, '2010-06-09', '', '19:09:17', '0', 0, '0');
INSERT INTO `ventas` VALUES (21, 0, '2010-06-09', '', '19:09:17', '0', 0, '0');
INSERT INTO `ventas` VALUES (22, 0, '2010-06-09', '', '19:09:17', '0', 0, '0');
INSERT INTO `ventas` VALUES (23, 0, '2010-06-09', '', '19:15:04', '0', 0, '0');
INSERT INTO `ventas` VALUES (24, 0, '2010-06-09', '', '19:15:20', '0', 0, '1,00');
INSERT INTO `ventas` VALUES (25, 0, '2010-06-09', '', '19:09:17', '0', 0, '0');
INSERT INTO `ventas` VALUES (26, 0, '2010-06-11', '', '11:46:51', '0', 0, '0');
INSERT INTO `ventas` VALUES (27, 0, '2010-06-11', '', '11:46:51', '0', 0, '0');
INSERT INTO `ventas` VALUES (28, 0, '2010-06-11', '', '18:43:23', '0', 0, '0');
INSERT INTO `ventas` VALUES (29, 0, '2010-07-15', '', '17:12:26', '0', 0, '10');
INSERT INTO `ventas` VALUES (30, 0, '2010-07-17', '', '11:48:35', '0', 0, '0');
INSERT INTO `ventas` VALUES (31, 0, '2010-07-17', '', '11:48:35', '0', 0, '0');
INSERT INTO `ventas` VALUES (32, 0, '2010-07-17', '', '11:48:35', '0', 0, '0');
INSERT INTO `ventas` VALUES (33, 0, '2010-07-17', '', '11:48:35', '0', 0, '0');
INSERT INTO `ventas` VALUES (34, 0, '2010-07-17', '', '11:48:35', '0', 0, '0');
INSERT INTO `ventas` VALUES (35, 0, '2010-07-17', '', '11:48:35', '0', 0, '0');
INSERT INTO `ventas` VALUES (36, 0, '2010-07-17', '', '11:48:35', '0', 0, '0');
INSERT INTO `ventas` VALUES (37, 0, '2010-07-17', '', '11:58:11', '0', 0, '0');
INSERT INTO `ventas` VALUES (38, 0, '2010-07-17', '', '11:58:11', '0', 0, '0');
INSERT INTO `ventas` VALUES (39, 1044, '2011-01-14', '', '12:06:54', '0', 0, '0');
