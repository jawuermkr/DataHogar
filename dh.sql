-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-03-2024 a las 21:08:20
-- Versión del servidor: 10.11.7-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u917903720_dh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresos`
--

CREATE TABLE `egresos` (
  `id_eg` int(11) NOT NULL,
  `id_usr` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `detalle_e` varchar(300) NOT NULL,
  `detalles` varchar(300) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `egresos`
--

INSERT INTO `egresos` (`id_eg`, `id_usr`, `monto`, `detalle_e`, `detalles`, `fecha`) VALUES
(1, 5, 480000, 'Hogar', 'Arriendo', '2021-08-03'),
(2, 5, 100000, 'Alimentación', '', '2021-08-03'),
(3, 5, 153000, 'Otro', '', '2021-08-03'),
(4, 6, 25000, 'Otro', 'Full moto ', '2021-08-04'),
(5, 1, 575000, 'Hogar', 'Arriendo', '2021-08-03'),
(6, 1, 20000, 'Otro', 'Transporte, kit de arrastre moto', '2021-08-03'),
(7, 6, 0, 'Inversión', 'Cambio de ', '2021-08-05'),
(8, 6, 102000, 'Inversión', 'Cambio de aceite moto', '2021-08-04'),
(9, 1, 240000, 'Alimentación', 'Mercado ', '2021-08-06'),
(10, 1, 100000, 'Prestamos', 'Papeles moto Alonso m', '2021-08-06'),
(11, 1, 100000, 'Alimentación', 'Gusticos ', '2021-08-06'),
(12, 1, 50000, 'Alimentación', 'Justo y Bueno ', '2021-08-06'),
(13, 1, 55000, 'Otro', 'Extraviados en cositas ?', '2021-08-06'),
(14, 1, 10000, 'Hogar', 'Lavadora ', '2021-08-06'),
(15, 1, 10000, 'Vestuario', 'Tinte', '2021-08-07'),
(16, 1, 40000, 'Vestuario', 'Pañales', '2021-08-07'),
(17, 1, 10000, 'Otro', 'Cositas y sencillo', '2021-08-07'),
(18, 1, 60000, 'Vestuario', 'Tintes para cabello mor', '2021-08-07'),
(19, 1, 20000, 'Alimentación', 'Martica ', '2021-08-07'),
(22, 1, 12000, 'Alimentación', 'Desayuno fuera de casa x', '2021-08-07'),
(23, 1, 50000, 'Alimentación', 'Cumpleaños mamá', '2021-08-07'),
(24, 1, 32000, 'Inversión', 'Dominio verdaluno.com', '2021-08-08'),
(25, 1, 50000, 'Hogar', 'Ducha eléctrica ?', '2021-08-08'),
(26, 1, 35000, 'Alimentación', 'Almuerzo fuera de casa.', '2021-08-08'),
(27, 1, 11000, 'Vestuario', 'Crema de peinar para Tarja ', '2021-08-08'),
(28, 1, 20000, 'Hogar', 'Vidrio y forro celular Dayan', '2021-08-08'),
(29, 5, 840000, 'Hogar', 'Arriendo Bogotá y trasteo ', '2021-08-09'),
(30, 19, 0, 'Hogar', 'Arriendo', '2021-08-01'),
(31, 1, 20500, 'Alimentación', 'Sudado y frutas ', '2021-08-09'),
(34, 1, 19200, 'Inversión', 'Meloso cajas y decoración para fotos ', '2021-08-09'),
(35, 1, 5200, 'Alimentación', 'Gaseosa helado chicharrones ', '2021-08-10'),
(36, 1, 31000, 'Inversión', 'Chocolate sprinkles ', '2021-08-10'),
(38, 1, 31000, 'Hogar', 'Loza cortina estropajo alejo ', '2021-08-10'),
(39, 1, 34000, 'Inversión', 'Chocolate liposoluble', '2021-08-10'),
(40, 1, 21000, 'Otro', 'Cintas helado gaseosa papel entre otros ', '2021-08-10'),
(41, 1, 32000, 'Inversión', 'Dominio meloso ', '2021-08-10'),
(42, 1, 10000, 'Otro', 'Gasolina ', '2021-08-10'),
(43, 22, 10000, 'Otro', 'Gasolina', '2021-08-11'),
(44, 22, 5000, 'Alimentación', 'Empanada ', '2021-08-11'),
(45, 22, 150000, 'Otro', 'Tecno', '2021-08-11'),
(46, 1, 12500, 'Alimentación', 'Cosas de la casa. ', '2021-08-11'),
(47, 1, 4000, 'Alimentación', 'Cafetería del trabajo', '2021-08-11'),
(48, 1, 4000, 'Alimentación', 'Completar cena ', '2021-08-11'),
(49, 1, 15000, 'Alimentación', 'Aguacate sopa pasteles pan ', '2021-08-12'),
(50, 1, 16000, 'Alimentación', 'Pollo papa guayaba sopa aguacate etc', '2021-08-12'),
(51, 1, 37000, 'Hogar', 'Huevos crema cabello crema cola Isabella', '2021-08-12'),
(52, 1, 10700, 'Hogar', 'Cervezas paquete doritos', '2021-08-13'),
(53, 1, 7700, 'Alimentación', 'Sopa Tarja impresiones granadilla ', '2021-08-13'),
(54, 1, 5000, 'Otro', 'Parqueaderos centros comerciales', '2021-08-13'),
(55, 1, 14200, 'Alimentación', 'Martica', '2021-08-13'),
(56, 1, 36000, 'Alimentación', 'Qbano ', '2021-08-13'),
(57, 1, 21000, 'Otro', 'Transporte y comida ', '2021-08-15'),
(58, 1, 24000, 'Alimentación', 'De uno', '2021-08-16'),
(59, 1, 8000, 'Vestuario', 'Depilación Dayan ', '2021-08-16'),
(60, 1, 22000, 'Hogar', 'Recibos luz y gas ', '2021-08-16'),
(61, 1, 10000, 'Alimentación', 'Desayuno sopa niña ', '2021-08-16'),
(62, 1, 6300, 'Hogar', 'Guantes y helados', '2021-08-16'),
(63, 1, 16000, 'Alimentación', 'Sopa salchichas cloro', '2021-08-17'),
(64, 1, 10000, 'Otro', 'Gasolina ', '2021-08-17'),
(65, 1, 3000, 'Hogar', 'Cloro y sampic ', '2021-08-17'),
(66, 1, 43700, 'Otro', 'Mecatiados en cositas Perdidos o no apuntados ', '2021-08-17'),
(67, 1, 24000, 'Alimentación', 'Pollo broaster ', '2021-08-18'),
(68, 1, 10000, 'Alimentación', 'Papas paquete aguacate y paquete Jaw', '2021-08-18'),
(69, 1, 3800, 'Otro', 'Materiales alejo ', '2021-08-19'),
(70, 1, 16500, 'Hogar', 'Cloro vanis sopa tomate ', '2021-08-20'),
(72, 1, 15000, 'Otro', 'Pan y perdido ', '2021-08-20'),
(73, 1, 5000, 'Alimentación', 'Jamón y bolsas ', '2021-08-20'),
(74, 1, 31000, 'Alimentación', 'Pechuga tortillas etc ', '2021-08-20'),
(75, 1, 22000, 'Alimentación', 'Base salchicha queso ', '2021-08-20'),
(76, 1, 10200, 'Alimentación', 'Vanis arveja y fruta ', '2021-08-21'),
(77, 1, 5200, 'Alimentación', 'Maíz y pimentón ', '2021-08-21'),
(78, 1, 6000, 'Hogar', 'Papas y lavadora ', '2021-08-21'),
(79, 1, 12000, 'Hogar', 'Vanis y martica ', '2021-08-22'),
(80, 1, 39200, 'Alimentación', 'Comida y domingo sabroson z', '2021-08-22'),
(81, 1, 45500, 'Alimentación', 'De uno, frutos secos, rojos y pescado salmón', '2021-08-22'),
(82, 1, 7400, 'Alimentación', 'Queso pupi y papa.', '2021-08-23'),
(83, 1, 9400, 'Alimentación', 'Parmesano y papa ', '2021-08-24'),
(84, 1, 17500, 'Alimentación', 'Papa criolla carne de cerdo sopa Tarja ', '2021-08-24'),
(85, 1, 20300, 'Alimentación', '', '2021-08-25'),
(86, 1, 56000, 'Prestamos', 'Última cuota Alejandro ', '2021-08-23'),
(87, 1, 40000, 'Hogar', 'Pañales Tarja ', '2021-08-25'),
(88, 1, 100000, 'Hogar', 'Recibo agua ', '2021-08-25'),
(89, 1, 10000, 'Alimentación', 'Rellena salchicha ', '2021-08-25'),
(90, 1, 10000, 'Otro', 'Gasolina moto', '2021-08-26'),
(91, 1, 19500, 'Alimentación', 'Nuguets palitos queso leche jugo sopa ', '2021-08-26'),
(92, 1, 7000, 'Alimentación', 'Anoche ', '2021-08-27'),
(93, 1, 8000, 'Alimentación', 'Sopa desayuno ', '2021-08-27'),
(94, 1, 24000, 'Alimentación', 'Todo lo de los perros y una leche', '2021-08-27'),
(95, 1, 6500, 'Alimentación', 'Paquetitos ', '2021-08-27'),
(96, 1, 24000, 'Alimentación', 'Pollo almuerzo ', '2021-08-28'),
(97, 1, 60000, 'Vestuario', 'Camva beauty', '2021-08-28'),
(98, 1, 25500, 'Hogar', 'Dollarcity', '2021-08-28'),
(99, 1, 20000, 'Hogar', 'Miniso', '2021-08-28'),
(100, 1, 24000, 'Hogar', 'Jarras calavera ', '2021-08-28'),
(101, 1, 20000, 'Alimentación', 'Cena ', '2021-08-28'),
(102, 1, 21000, 'Alimentación', 'Helados', '2021-08-28'),
(103, 1, 16000, 'Alimentación', 'Cervezas ', '2021-08-28'),
(104, 1, 4000, 'Otro', 'Agujas tatto', '2021-08-28'),
(105, 1, 36000, 'Inversión', 'Meloso ', '2021-08-28'),
(106, 1, 110000, 'Hogar', 'Colchoneta ', '2021-08-31'),
(107, 1, 33600, 'Alimentación', 'D1', '2021-08-31'),
(108, 1, 147000, 'Hogar', 'Freidora de aire ', '2021-08-31'),
(109, 1, 10000, 'Alimentación', 'Carne y granadilla ', '2021-09-01'),
(110, 1, 27000, 'Alimentación', 'D1', '2021-09-02'),
(111, 1, 12000, 'Alimentación', 'Queso almuerzo palitos ', '2021-09-02'),
(112, 1, 10000, 'Alimentación', 'Perritos ', '2021-09-02'),
(113, 1, 10000, 'Hogar', 'Lavadora ', '2021-09-03'),
(114, 1, 22700, 'Alimentación', 'D1 ', '2021-09-03'),
(115, 1, 44900, 'Otro', 'Almohada mini', '2021-09-04'),
(116, 1, 52000, 'Hogar', 'Camva ', '2021-09-04'),
(117, 1, 28000, 'Vestuario', 'Ropa interior Dayan ', '2021-09-04'),
(118, 1, 20000, 'Alimentación', 'Helados ', '2021-09-04'),
(119, 1, 10000, 'Alimentación', 'Helados saliendo ', '2021-09-04'),
(120, 1, 61000, 'Otro', 'Pailas y pantalón Tarja ', '2021-09-04'),
(121, 1, 83000, 'Hogar', 'Osio y pañitos Tarja ', '2021-09-04'),
(122, 1, 20000, 'Alimentación', 'Gaseosa leche ', '2021-09-04'),
(123, 1, 9300, 'Alimentación', 'Perdido ', '2021-09-04'),
(124, 1, 42500, 'Vestuario', 'Pañales ', '2021-09-04'),
(125, 1, 7000, 'Vestuario', 'Placa yara', '2021-09-04'),
(126, 1, 100000, 'Prestamos', 'Apolinar ', '2021-09-06'),
(127, 1, 28000, 'Alimentación', 'Almuerzo domingo ', '2021-09-06'),
(128, 1, 18000, 'Vestuario', 'Corrector postura ', '2021-09-06'),
(129, 1, 190000, 'Alimentación', 'Mercado ', '2021-09-06'),
(130, 1, 560000, 'Hogar', 'Arriendo ', '2021-09-06'),
(131, 1, 15000, 'Hogar', 'Servicio Internet ', '2021-09-06'),
(132, 1, 42000, 'Alimentación', 'Leche galletas ', '2021-09-06'),
(133, 1, 25000, 'Alimentación', 'Nuggets pechugas ', '2021-09-06'),
(134, 1, 5000, 'Alimentación', 'Perritos ', '2021-09-06'),
(135, 1, 15000, 'Hogar', 'Gasolina ', '2021-09-06'),
(136, 1, 19000, 'Hogar', 'Aceite moto ', '2021-09-06'),
(137, 1, 20000, 'Inversión', 'Palitos meloso', '2021-09-07'),
(138, 1, 7500, 'Alimentación', 'Fruta papa aguacate ', '2021-09-07'),
(139, 1, 12500, 'Alimentación', 'Día de lechona ', '2021-09-07'),
(140, 1, 35000, 'Vestuario', 'Osio jajaja pop it y balacas ', '2021-09-07'),
(141, 1, 8500, 'Alimentación', 'Sopa fruta papas ', '2021-09-08'),
(142, 1, 49000, 'Alimentación', 'D1 perritos comida tara ', '2021-09-09'),
(143, 1, 16000, 'Alimentación', 'Sopa cena y Jawuer ', '2021-09-09'),
(144, 1, 15000, 'Alimentación', 'Sandwich ', '2021-09-10'),
(145, 1, 7000, 'Alimentación', 'Papa sopa ', '2021-09-10'),
(146, 1, 13100, 'Alimentación', 'Papa gaseosa tomate ', '2021-09-10'),
(147, 1, 329900, 'Otro', 'Quitamos el total para empezar de nuevo por falta de app', '2021-09-24'),
(149, 23, 400000, 'Prestamos', '', '2021-09-30'),
(150, 23, 270000, 'Prestamos', '', '2021-09-30'),
(151, 23, 130000, 'Alimentación', '', '2021-09-30'),
(152, 23, 200000, 'Hogar', '', '2021-09-30'),
(153, 24, 1000, 'Otro', 'mecato', '2021-10-19'),
(154, 24, 2000000, 'Alimentación', '', '2021-10-19'),
(158, 1, 500000, 'Prestamos', 'Éxito yoi aduana otros.', '2021-12-04'),
(161, 1, 100000, 'Prestamos', 'Apolinar ', '2021-12-04'),
(162, 1, 800000, 'Prestamos', 'Papá', '2021-12-04'),
(163, 1, 100000, 'Hogar', 'Cosas varias', '2021-12-04'),
(164, 1, 100000, 'Alimentación', 'Buso Tarja y cena', '2021-12-04'),
(165, 1, 560000, 'Hogar', 'Arriendo ', '2021-12-05'),
(166, 1, 60000, 'Otro', 'Pasajes centro sábado ', '2021-12-05'),
(167, 1, 15000, 'Hogar', 'Internet ', '2021-12-05'),
(168, 1, 120000, 'Vestuario', 'Zapatos Qiang ', '2021-12-05'),
(169, 1, 90000, 'Vestuario', 'Zapatos Tarja y Sofi', '2021-12-05'),
(170, 1, 60000, 'Alimentación', 'Calle ', '2021-12-05'),
(171, 1, 20000, 'Vestuario', 'SOFI', '2021-12-05'),
(172, 1, 70000, 'Alimentación', 'Almuerzo y cosas en el centro.', '2021-12-04'),
(173, 1, 145000, 'Otro', 'Tableta gráfica', '2021-12-04'),
(174, 1, 60000, 'Alimentación', 'Alimentación fin de semana y cositas.', '2021-12-05'),
(175, 1, 70000, 'Alimentación', 'Dulces mexicanos con caprichitos de Jawuer y spray cabello  Isa ', '2021-12-05'),
(176, 1, 20000, 'Hogar', 'Jabón sopa vanis', '2021-12-06'),
(177, 1, 20000, 'Hogar', 'Suavitel salsa tu otros ', '2021-12-06'),
(178, 1, 125000, 'Vestuario', 'Busos y sudadera ', '2021-12-09'),
(179, 1, 50000, 'Alimentación', 'Salida ', '2021-12-09'),
(180, 1, 100000, 'Otro', 'Gastos varios ', '2021-12-09'),
(181, 1, 60000, 'Vestuario', 'Mamá Laura ', '2021-12-12'),
(182, 1, 50000, 'Alimentación', 'Comida finde', '2021-12-12'),
(183, 1, 15000, 'Inversión', 'Stickers ', '2021-12-12'),
(184, 1, 20000, 'Otro', 'Pasajes mamá Dayan', '2021-12-12'),
(185, 1, 50000, 'Prestamos', 'Yoi cuota ', '2021-12-13'),
(186, 1, 37000, 'Alimentación', 'D1', '2021-12-14'),
(187, 1, 150000, 'Inversión', 'Gafas mamá', '2021-12-14'),
(188, 1, 50000, 'Alimentación', '', '2021-12-14'),
(189, 1, 22000, 'Vestuario', 'Medias Isa ', '2021-12-14'),
(190, 1, 12000, 'Alimentación', 'Onces ', '2021-12-14'),
(191, 1, 12000, 'Alimentación', 'Sopa fruta desayuno ', '2021-12-15'),
(192, 1, 20000, 'Alimentación', 'D1', '2021-12-17'),
(193, 1, 14000, 'Inversión', 'Organiza ', '2021-12-17'),
(194, 1, 10000, 'Alimentación', 'D1', '2021-12-17'),
(195, 1, 18500, 'Alimentación', 'Martica ', '2021-12-17'),
(196, 1, 48000, 'Otro', 'Navidad alejo ', '2021-12-17'),
(197, 1, 10000, 'Alimentación', 'Pechuga', '2021-12-17'),
(198, 1, 9000, 'Alimentación', 'Carne almuerzo', '2021-12-17'),
(199, 1, 4000, 'Alimentación', 'Sopa', '2021-12-17'),
(200, 26, 80, 'Prestamos', 'pago de colchon', '2021-12-20'),
(201, 26, 29, 'Prestamos', 'pago cuota impresora', '2021-12-20'),
(202, 26, 79, 'Prestamos', 'prestamo internet', '2021-12-20'),
(203, 26, 20, 'Alimentación', 'pollo', '2021-12-20'),
(204, 26, 20, 'Alimentación', 'pollo', '2021-12-20'),
(205, 27, 2000000, 'Otro', '', '2022-01-24'),
(206, 27, 1200000, 'Otro', 'Préstamos ', '2022-01-24'),
(207, 27, 100000000, 'Otro', '', '2022-01-24'),
(208, 1, 123500, 'Otro', 'Para quedar en ceros ', '2022-01-01'),
(209, 1, 56000, 'Prestamos', 'Yoi mes de febrero', '2022-02-01'),
(210, 1, 20000, 'Alimentación', 'Almuerzo éxito ?', '2022-02-01'),
(211, 1, 300000, 'Prestamos', 'Pago de tarjeta éxito', '2022-02-01'),
(212, 1, 70000, 'Otro', 'Pago facturas wom', '2022-02-01'),
(213, 1, 133300, 'Otro', 'Facturas celulares', '2022-02-01'),
(214, 1, 240000, 'Prestamos', 'Préstamo papá, Alonzo e intereses Ivan.', '2022-02-01'),
(215, 1, 95000, 'Vestuario', 'Sudadera del niño', '2022-02-01'),
(216, 1, 8000, 'Alimentación', 'Cena', '2022-02-01'),
(217, 1, 15000, 'Alimentación', 'Onces, y cositas', '2022-02-01'),
(218, 1, 17000, 'Otro', 'Papeles SIM para traspaso de moto ', '2022-02-02'),
(219, 1, 21000, 'Otro', 'Transporte didi para papeles del SIM', '2022-02-02'),
(220, 1, 14000, 'Alimentación', 'Aguacate plátano panela huevos ', '2022-02-02'),
(221, 1, 80000, 'Hogar', 'Pañales x 58 y gastos varios.', '2022-02-02'),
(223, 1, 12000, 'Alimentación', 'Comida yogur palitos ', '2022-02-03'),
(224, 1, 15000, 'Otro', 'Gasolina ', '2022-02-03'),
(225, 1, 53000, 'Alimentación', 'Onces cena y empanadas ', '2022-02-03'),
(226, 1, 5000, 'Hogar', 'Papel y ponqué ', '2022-02-03'),
(227, 1, 50000, 'Alimentación', 'Gustico kfc', '2022-02-03'),
(228, 1, 6200, 'Alimentación', 'Ponymalta sopa y yogurt ', '2022-02-04'),
(229, 1, 4000, 'Alimentación', 'Carne almuerzo ayer ', '2022-02-04'),
(230, 1, 15000, 'Estudio', 'Resma', '2022-02-04'),
(231, 1, 3000, 'Estudio', 'Papel', '2022-02-04'),
(232, 1, 3700, 'Alimentación', 'Papas', '2022-02-04'),
(233, 1, 110000, 'Inversión', 'Me lo mecatie en cositassssss ?', '2022-02-05'),
(236, 1, 17000, 'Alimentación', 'Arepas anoche ', '2022-02-05'),
(237, 1, 13600, 'Alimentación', 'Carne almuerzo', '2022-02-05'),
(238, 1, 8000, 'Alimentación', 'Sopa aguacate ', '2022-02-05'),
(239, 1, 37000, 'Inversión', 'Pedido meloso ', '2022-02-05'),
(240, 1, 18000, 'Estudio', 'Marcadores con sellito Dayan ', '2022-02-05'),
(241, 1, 32000, 'Alimentación', 'Helados escandaloso', '2022-02-05'),
(242, 1, 37000, 'Vestuario', 'Tenis colegio Alejo', '2022-02-05'),
(243, 1, 51000, 'Vestuario', 'Pijama y sandalias Isa ', '2022-02-05'),
(244, 1, 42000, 'Alimentación', 'Vino y cena', '2022-02-05'),
(245, 1, 7000, 'Otro', 'Pilas y tapabocas', '2022-02-05'),
(246, 1, 5000, 'Alimentación', 'Pastel y pan de bono', '2022-02-05'),
(247, 1, 4000, 'Alimentación', 'Gaseosa ', '2022-02-05'),
(248, 1, 8000, 'Alimentación', 'Desayuno tamales y pan ', '2022-02-05'),
(249, 1, 30000, 'Inversión', 'Desayuno y gafas niños ', '2022-02-06'),
(250, 1, 17000, 'Alimentación', 'Cosechas ', '2022-02-06'),
(251, 1, 69000, 'Estudio', 'Pitillos niños sombrillas ', '2022-02-06'),
(252, 1, 14000, 'Alimentación', 'Empanadas helados ', '2022-02-06'),
(253, 1, 91000, 'Alimentación', 'Almuerzo Ricki rukis ', '2022-02-06'),
(254, 1, 15000, 'Alimentación', 'Onces compota y desayuno ', '2022-02-06'),
(255, 1, 14000, 'Alimentación', 'Comida Yara 1kilo', '2022-02-07'),
(256, 1, 6500, 'Alimentación', 'Aguacate huevos limón ', '2022-02-07'),
(258, 1, 2000, 'Estudio', 'Papeles faltantes colegio Alejo', '2022-02-07'),
(259, 1, 5000, 'Hogar', 'Sampic protectores', '2022-02-07'),
(260, 1, 250000, 'Alimentación', 'Mercado ', '2022-02-07'),
(261, 1, 580000, 'Hogar', 'Arriendo ', '2022-02-08'),
(262, 1, 127000, 'Prestamos', 'Profin ', '2022-02-08'),
(263, 1, 6000, 'Alimentación', 'Sopa ensalada ', '2022-02-08'),
(264, 1, 70000, 'Alimentación', 'KFC y tacos', '2022-02-08'),
(265, 1, 30000, 'Alimentación', 'Onces alejo ', '2022-02-08'),
(266, 1, 6500, 'Otro', 'Distran y vicvaporu', '2022-02-08'),
(267, 1, 38500, 'Alimentación', 'D1 ara calle ', '2022-02-10'),
(268, 1, 6000, 'Alimentación', 'Leche ', '2022-02-10'),
(269, 1, 12000, 'Alimentación', 'Sopa cena ', '2022-02-10'),
(270, 1, 14000, 'Hogar', 'Pañitos ', '2022-02-10'),
(271, 1, 15000, 'Alimentación', 'Sopa pan leche ', '2022-02-11'),
(272, 1, 9600, 'Hogar', 'Soflan y cloro ropa color ', '2022-02-11'),
(273, 1, 7500, 'Hogar', 'Lavadora ', '2022-02-11'),
(274, 1, 19000, 'Alimentación', 'Manzanas carne sopa', '2022-02-12'),
(275, 1, 6500, 'Hogar', 'Aguacate mermelada y pliego de cartulina ', '2022-02-12'),
(276, 1, 15000, 'Otro', 'Gasolina ', '2022-02-12'),
(277, 1, 60000, 'Alimentación', 'D1 leche onces ', '2022-02-13'),
(278, 1, 178100, 'Otro', 'Para quedar en 0 nuevamente', '2022-02-28'),
(279, 1, 25000, 'Prestamos', 'Yoi', '2022-03-30'),
(280, 1, 40000, 'Hogar', 'Dollarcity', '2022-03-30'),
(281, 1, 10000, 'Alimentación', 'Cena', '2022-03-30'),
(282, 1, 20000, 'Otro', 'Camva', '2022-03-30'),
(283, 1, 10000, 'Hogar', 'Recarga Dayan ', '2022-03-30'),
(284, 1, 290000, 'Prestamos', 'Apolinar: moto, préstamo, Ivan.', '2022-03-30'),
(285, 1, 115000, 'Prestamos', 'Cuota éxito', '2022-03-30'),
(286, 1, 100000, 'Prestamos', 'Codensa', '2022-03-30'),
(287, 1, 30000, 'Alimentación', 'Cosas del día ', '2022-03-31'),
(288, 1, 44000, 'Otro', 'Aceite de moto, lave de moto y chocolatitos', '2022-03-31'),
(289, 1, 20000, 'Otro', 'Sombras Atenea ', '2022-04-01'),
(290, 1, 30000, 'Hogar', 'Cloro guantes trapero sampic ', '2022-04-01'),
(291, 1, 50000, 'Otro', 'Gasolina, y gatos de casa Jawuer', '2022-04-02'),
(292, 1, 1158000, 'Otro', 'Para iniciar de nuevo', '2022-06-01'),
(293, 1, 100000, 'Alimentación', 'Diario y libros de refuerzo Alejo.', '2022-08-04'),
(294, 1, 664000, 'Hogar', 'Para iniciar 2023', '2022-12-31'),
(295, 1, 950000, 'Hogar', 'Arriendo', '2023-08-31'),
(296, 1, 100000, 'Otro', 'Dollarcity', '2023-08-31'),
(297, 1, 40000, 'Hogar', 'Cosas varias de cocina', '2023-08-31'),
(298, 1, 34000, 'Alimentación', 'Compra de D1', '2023-08-31'),
(299, 1, 1616000, 'Hogar', 'Este mes no se termino de cuadrar ', '2023-09-09'),
(300, 1, 55000, 'Vestuario', 'Conjunto Dayan', '2023-12-29'),
(301, 1, 10000, 'Vestuario', 'Medias Dayan ', '2023-12-29'),
(302, 1, 73300, 'Vestuario', 'Cabello Dayan', '2023-12-29'),
(303, 1, 20000, 'Alimentación', 'Compras Ara', '2023-12-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id_in` int(11) NOT NULL,
  `id_usr` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `fuente` varchar(300) NOT NULL,
  `detalle_i` varchar(300) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`id_in`, `id_usr`, `valor`, `fuente`, `detalle_i`, `fecha`) VALUES
(1, 1, 1940000, 'Nómina', 'Asiste Ingenieria', '2021-08-02'),
(2, 1, 270000, 'Independiente', 'Colbisagras', '2021-08-03'),
(3, 5, 1700000, 'Nómina', 'ASISTE ING', '2021-08-03'),
(4, 6, 1400, 'Nómina', '', '2021-08-04'),
(5, 6, 500000, 'Seleccione Motivo', '', '2021-08-04'),
(6, 6, 500000, 'Seleccione Motivo', '', '2021-08-04'),
(7, 6, 300000, 'Seleccione Motivo', '', '2021-08-04'),
(8, 6, 500, 'Seleccione Motivo', '', '2021-08-04'),
(9, 6, 10000, 'Seleccione Motivo', '', '2021-08-04'),
(10, 6, 1000, 'Seleccione Motivo', '', '2021-08-04'),
(11, 6, 100, 'Seleccione Motivo', '', '2021-08-04'),
(12, 6, 7000, 'Seleccione Motivo', '', '2021-08-04'),
(13, 6, 80000, 'Seleccione Motivo', '', '2021-08-04'),
(14, 1, 120000, 'Independiente', 'Seguidores Facebook Victoria', '2021-08-04'),
(19, 19, 2200, 'Nómina', 'Salario', '2021-08-01'),
(20, 19, 2200000, 'Nómina', 'Sueldo', '2021-08-01'),
(21, 22, 200000, 'Nómina', 'Quincenal ', '2021-08-08'),
(22, 1, 600000, 'Independiente', 'Iniciamos con latino TV ', '2021-08-23'),
(23, 1, 322000, 'Independiente', 'Dinero de movii', '2021-08-31'),
(24, 1, 1900000, 'Nómina', '', '2021-09-04'),
(27, 23, 1400000, 'Nómina', '', '2021-09-30'),
(28, 24, 5000, 'Independiente', 'mandado', '2021-10-19'),
(29, 24, 10000, 'Otro', 'pago', '2021-10-19'),
(30, 24, 1000000, 'Independiente', '', '2021-10-19'),
(34, 1, 2600000, 'Nómina', 'Nómina y vacaciones.', '2021-12-01'),
(35, 1, 1000000, 'Independiente', 'Latino y mío', '2021-12-02'),
(36, 1, 320000, 'Otro', 'Préstamo nequi ', '2021-12-12'),
(37, 26, 400, 'Otro', 'pago jovenes en accion', '2021-12-20'),
(38, 26, 30, 'Otro', 'carreras', '2021-12-20'),
(39, 26, 40, 'Devoluciones', 'de internet', '2021-12-20'),
(40, 27, 30000000, 'Nómina', '', '2022-01-24'),
(41, 1, 2340000, 'Nómina', 'Nómina de trabajo.', '2022-02-01'),
(42, 1, 1000000, 'Independiente', 'Pago mes de febrero WTS', '2022-02-07'),
(43, 1, 1900000, 'Nómina', 'Jawuer ', '2022-03-30'),
(44, 1, 42000, 'Otro', 'Subsidio Colsubsidio', '2022-03-30'),
(45, 1, 360000, 'Nómina', 'Sueldo ', '2022-08-03'),
(46, 1, 240000, 'Nómina', 'Nequi nomina', '2022-08-03'),
(47, 1, 100000, 'Nómina', 'Nómina casa ', '2022-08-03'),
(48, 1, 50000, 'Independiente', 'Ahorro Dayan ', '2022-08-03'),
(49, 1, 14000, 'Independiente', 'Picap', '2022-08-04'),
(50, 1, 440000, 'Devoluciones', 'Ahorro foncolombia', '2023-08-30'),
(51, 1, 2300000, 'Nómina', 'Asiste Ing', '2023-08-31'),
(52, 1, 2300000, 'Nómina', 'Nomina enero Asiste ING', '2023-12-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE `opciones` (
  `id` int(11) NOT NULL,
  `id_usr` int(11) NOT NULL,
  `formulario` varchar(30) NOT NULL,
  `opcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `total`
--

CREATE TABLE `total` (
  `id_total` int(11) NOT NULL,
  `id_usr` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `total`
--

INSERT INTO `total` (`id_total`, `id_usr`, `total`) VALUES
(1, 1, 1940000),
(2, 1, 2210000),
(3, 5, 1700000),
(4, 5, 1220000),
(5, 5, 1120000),
(6, 5, 967000),
(7, 6, 1400),
(8, 6, 501400),
(9, 6, 1001400),
(10, 6, 1301400),
(11, 6, 1301900),
(12, 6, 1311900),
(13, 6, 1312900),
(14, 6, 1313000),
(15, 6, 1320000),
(16, 6, 1400000),
(17, 6, 1375000),
(18, 1, 2330000),
(19, 1, 1755000),
(20, 1, 1735000),
(21, 6, 1375000),
(22, 6, 1273000),
(23, 1, 1495000),
(24, 1, 1395000),
(25, 1, 1295000),
(26, 1, 1245000),
(27, 1, 1190000),
(28, 1, 1180000),
(29, 1, 1170000),
(30, 1, 1130000),
(31, 1, 1120000),
(32, 1, 1060000),
(33, 1, 1040000),
(34, 1, 1039988),
(35, 1, 1027988),
(36, 1, 1015988),
(37, 1, 965988),
(38, 1, 946000),
(39, 1, 946100),
(40, 1, 946200),
(43, 1, 946300),
(44, 1, 946000),
(45, 1, 946100),
(46, 1, 946000),
(47, 1, 896000),
(48, 1, 861000),
(49, 1, 850000),
(50, 1, 830000),
(51, 5, 127000),
(52, 19, 2200),
(53, 19, 2202200),
(54, 19, 2202200),
(55, 1, 809500),
(56, 1, 809481),
(57, 1, 809462),
(58, 1, 790262),
(59, 1, 790281),
(60, 1, 790300),
(61, 1, 785100),
(62, 1, 754100),
(63, 1, 754066),
(64, 1, 723066),
(65, 1, 723100),
(66, 1, 689100),
(67, 1, 668100),
(68, 1, 636100),
(69, 1, 626100),
(70, 22, 200000),
(71, 22, 190000),
(72, 22, 185000),
(73, 22, 35000),
(74, 1, 613600),
(75, 1, 609600),
(76, 1, 605600),
(77, 1, 590600),
(78, 1, 574600),
(79, 1, 537600),
(80, 1, 526900),
(81, 1, 519200),
(82, 1, 514200),
(83, 1, 500000),
(84, 1, 464000),
(85, 1, 443000),
(86, 1, 419000),
(87, 1, 411000),
(88, 1, 389000),
(89, 1, 379000),
(90, 1, 372700),
(91, 1, 356700),
(92, 1, 346700),
(93, 1, 343700),
(94, 1, 300000),
(95, 1, 276000),
(96, 1, 266000),
(97, 1, 262200),
(98, 1, 245700),
(99, 1, 244130),
(100, 1, 245700),
(101, 1, 230700),
(102, 1, 225700),
(103, 1, 194700),
(104, 1, 172700),
(105, 1, 162500),
(106, 1, 157300),
(107, 1, 151300),
(108, 1, 139300),
(109, 1, 100100),
(110, 1, 54600),
(111, 1, 47200),
(112, 1, 37800),
(113, 1, 20300),
(114, 1, 0),
(115, 1, 600000),
(116, 1, 544000),
(117, 1, 504000),
(118, 1, 404000),
(119, 1, 394000),
(120, 1, 384000),
(121, 1, 364500),
(122, 1, 357500),
(123, 1, 349500),
(124, 1, 325500),
(125, 1, 319000),
(126, 1, 295000),
(127, 1, 235000),
(128, 1, 209500),
(129, 1, 189500),
(130, 1, 165500),
(131, 1, 145500),
(132, 1, 124500),
(133, 1, 108500),
(134, 1, 104500),
(135, 1, 68500),
(136, 1, 390500),
(137, 1, 280500),
(138, 1, 246900),
(139, 1, 99900),
(140, 1, 89900),
(141, 1, 62900),
(142, 1, 50900),
(143, 1, 40900),
(144, 1, 30900),
(145, 1, 8200),
(146, 1, 1908200),
(147, 1, 1863300),
(148, 1, 1811300),
(149, 1, 1783300),
(150, 1, 1763300),
(151, 1, 1753300),
(152, 1, 1692300),
(153, 1, 1609300),
(154, 1, 1589300),
(155, 1, 1580000),
(156, 1, 1537500),
(157, 1, 1530500),
(158, 1, 1430500),
(159, 1, 1402500),
(160, 1, 1384500),
(161, 1, 1194500),
(162, 1, 634500),
(163, 1, 619500),
(164, 1, 577500),
(165, 1, 552500),
(166, 1, 547500),
(167, 1, 532500),
(168, 1, 513500),
(169, 1, 493500),
(170, 1, 486000),
(171, 1, 473500),
(172, 1, 438500),
(173, 1, 430000),
(174, 1, 381000),
(175, 1, 365000),
(176, 1, 350000),
(177, 1, 343000),
(178, 1, 329900),
(179, 1, 0),
(180, 23, 1400),
(181, 23, -12600),
(182, 23, 113400),
(183, 23, 112000),
(184, 23, -14000),
(185, 23, 0),
(186, 23, 1400000),
(187, 23, 1000000),
(188, 23, 730000),
(189, 23, 600000),
(190, 23, 400000),
(191, 24, 5000),
(192, 24, 4000),
(193, 24, 14000),
(194, 24, 1014000),
(195, 24, -986000),
(196, 1, 120000),
(197, 1, 100000),
(198, 1, 96000),
(199, 1, 104000),
(200, 1, 112000),
(201, 1, -8000),
(202, 1, -16000),
(203, 1, -24000),
(204, 1, -4000),
(205, 1, 0),
(206, 1, 2600000),
(207, 1, 3600000),
(208, 1, 3550000),
(209, 1, 3600000),
(210, 1, 3100000),
(211, 1, 3099900),
(212, 1, 3099100),
(213, 1, 3099200),
(214, 1, 3100000),
(215, 1, 3000000),
(216, 1, 2200000),
(217, 1, 2100000),
(218, 1, 2000000),
(219, 1, 1440000),
(220, 1, 1380000),
(221, 1, 1365000),
(222, 1, 1245000),
(223, 1, 1155000),
(224, 1, 1095000),
(225, 1, 1075000),
(226, 1, 1005000),
(227, 1, 860000),
(228, 1, 800000),
(229, 1, 730000),
(230, 1, 710000),
(231, 1, 690000),
(232, 1, 565000),
(233, 1, 515000),
(234, 1, 415000),
(235, 1, 355000),
(236, 1, 305000),
(237, 1, 290000),
(238, 1, 270000),
(239, 1, 590000),
(240, 1, 540000),
(241, 1, 503000),
(242, 1, 353000),
(243, 1, 303000),
(244, 1, 281000),
(245, 1, 269000),
(246, 1, 257000),
(247, 1, 237000),
(248, 1, 223000),
(249, 1, 213000),
(250, 1, 194500),
(251, 1, 146500),
(252, 1, 136500),
(253, 1, 127500),
(254, 1, 123500),
(255, 26, 400),
(256, 26, 430),
(257, 26, 350),
(258, 26, 321),
(259, 26, 242),
(260, 26, 222),
(261, 26, 202),
(262, 26, 242),
(263, 27, 30000000),
(264, 27, 28000000),
(265, 27, 26800000),
(266, 27, -73200000),
(267, 1, 0),
(268, 1, 2340000),
(269, 1, 2284000),
(270, 1, 2264000),
(271, 1, 1964000),
(272, 1, 1894000),
(273, 1, 1760700),
(274, 1, 1520700),
(275, 1, 1425700),
(276, 1, 1417700),
(277, 1, 1402700),
(278, 1, 1385700),
(279, 1, 1364700),
(280, 1, 1350700),
(281, 1, 1270700),
(282, 1, 1270688),
(283, 1, 1270700),
(284, 1, 1258700),
(285, 1, 1243700),
(286, 1, 1190700),
(287, 1, 1185700),
(288, 1, 1135700),
(289, 1, 1129500),
(290, 1, 1125500),
(291, 1, 1110500),
(292, 1, 1107500),
(293, 1, 1103800),
(294, 1, 993800),
(295, 1, 993783),
(296, 1, 993800),
(297, 1, 993783),
(298, 1, 993800),
(299, 1, 976800),
(300, 1, 963200),
(301, 1, 955200),
(302, 1, 918200),
(303, 1, 900200),
(304, 1, 868200),
(305, 1, 831200),
(306, 1, 780200),
(307, 1, 738200),
(308, 1, 731200),
(309, 1, 726200),
(310, 1, 722200),
(311, 1, 714200),
(312, 1, 684200),
(313, 1, 667200),
(314, 1, 598200),
(315, 1, 584200),
(316, 1, 493200),
(317, 1, 478200),
(318, 1, 1478200),
(319, 1, 1464200),
(320, 1, 1457700),
(321, 1, 1455700),
(322, 1, 1453700),
(323, 1, 1448700),
(324, 1, 1450700),
(325, 1, 1200700),
(326, 1, 620700),
(327, 1, 493700),
(328, 1, 487700),
(329, 1, 417700),
(330, 1, 387700),
(331, 1, 381200),
(332, 1, 342700),
(333, 1, 336700),
(334, 1, 324700),
(335, 1, 310700),
(336, 1, 295700),
(337, 1, 286100),
(338, 1, 278600),
(339, 1, 259600),
(340, 1, 253100),
(341, 1, 238100),
(342, 1, 178100),
(343, 1, 0),
(344, 1, 1900000),
(345, 1, 1875000),
(346, 1, 1835000),
(347, 1, 1825000),
(348, 1, 1805000),
(349, 1, 1795000),
(350, 1, 1837000),
(351, 1, 1547000),
(352, 1, 1432000),
(353, 1, 1332000),
(354, 1, 1302000),
(355, 1, 1258000),
(356, 1, 1238000),
(357, 1, 1208000),
(358, 1, 1158000),
(359, 1, 0),
(360, 1, 360000),
(361, 1, 600000),
(362, 1, 700000),
(363, 1, 750000),
(364, 1, 764000),
(365, 1, 664000),
(366, 1, 0),
(367, 1, 440000),
(368, 1, 2740000),
(369, 1, 1790000),
(370, 1, 1690000),
(371, 1, 1650000),
(372, 1, 1616000),
(373, 1, 0),
(374, 1, 2300000),
(375, 1, 2245000),
(376, 1, 2235000),
(377, 1, 2161700),
(378, 1, 2141700);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usr` int(11) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `clave` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usr`, `nombres`, `apellidos`, `correo`, `clave`) VALUES
(1, 'Familia', 'Morales Ramirez', 'hogar@mr.com', 'Hogar123'),
(4, 'Joop', 'Kiefte', 'ikojba@gmail.com', 'joopisgeen007'),
(5, 'David Eduardo ', 'López Cuartas ', 'david.edu.lopez95@gmail.com', 'Falxon2020*'),
(6, 'Criss', 'Walker', 'crilineytor@gmail.com', 'Faraon.2021'),
(19, 'Diego edison', 'Rincon ortiz', 'diegoedisonrinconortiz@gmail.com', 'Diego58429'),
(22, 'Angel ', 'Neira ', 'skateneira@gmail.com', 'A1234'),
(23, 'David', 'Romero', 'crilineytor@gmail.com', 'Tony2202'),
(24, 'Deiner', 'Martinez', 'elideiler112@gmail.com', '123456789'),
(25, 'Juan Sebastian', 'Arias Robayo', 'sebastianarias7197@gmail.com', 'alpinito123'),
(26, 'Deiner', 'Mrtinez', 'elideiler12@gmail.com', '1002107172'),
(27, 'Mayra', 'Barbosa', 'mayleja1224@gmail.com', '2samymaylove');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `egresos`
--
ALTER TABLE `egresos`
  ADD PRIMARY KEY (`id_eg`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id_in`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `total`
--
ALTER TABLE `total`
  ADD PRIMARY KEY (`id_total`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usr`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `egresos`
--
ALTER TABLE `egresos`
  MODIFY `id_eg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id_in` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `total`
--
ALTER TABLE `total`
  MODIFY `id_total` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;