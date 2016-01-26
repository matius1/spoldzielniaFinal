-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Sty 2016, 21:00
-- Wersja serwera: 10.1.8-MariaDB
-- Wersja PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `spoldzielnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `blok`
--

CREATE TABLE `blok` (
  `id_bloku` int(10) NOT NULL,
  `ulica` varchar(255) NOT NULL,
  `ulica_nr` varchar(10) NOT NULL,
  `miejscowosc` varchar(255) NOT NULL,
  `nazwa_spoldzielni` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `blok`
--

INSERT INTO `blok` (`id_bloku`, `ulica`, `ulica_nr`, `miejscowosc`, `nazwa_spoldzielni`) VALUES
(2, 'Pilsudskiego', '18', 'Skawina', 'Stonka'),
(3, 'Sloneczna', '3', 'Krakow', 'Stonka'),
(13, 'Chmieleniec', '6', 'Krakow', 'Stonka'),
(14, ' Kobierzynska', '7', 'Krakow', 'Stonka'),
(15, ' Pilsudskiego ', '7', 'Krakow', 'Stonka'),
(16, ' Pilsudskiego ', '2', 'Krakow', 'Stonka'),
(17, ' Kosciuszkowcow', '3', 'Krakow', 'Stonka'),
(18, ' Sielska', '9', 'Krakow', 'Stonka'),
(19, ' Pilsudskiego ', '9', 'Krakow', 'Stonka'),
(20, ' Kobierzynska', '10', 'Krakow', 'Stonka'),
(21, ' Kosciuszkowcow', '9', 'Krakow', 'Stonka'),
(22, ' Sielska', '8', 'Krakow', 'Stonka'),
(23, ' Pilsudskiego ', '5', 'Krakow', 'Stonka'),
(24, ' Sielska', '10', 'Krakow', 'Stonka'),
(25, ' Pilsudskiego ', '6', 'Krakow', 'Stonka'),
(26, ' Kobierzynska', '6', 'Krakow', 'Stonka'),
(27, 'Chmieleniec', '8', 'Krakow', 'Stonka'),
(28, ' Kosciuszki', '7', 'Krakow', 'Stonka'),
(30, ' Kosciuszki', '3', 'Krakow', 'Stonka'),
(31, ' Kosciuszki', '4', 'Krakow', 'Stonka'),
(32, ' Sloneczna', '4', 'Krakow', 'Stonka'),
(33, ' Sloneczna', '6', 'Krakow', 'Stonka'),
(34, ' Sloneczna', '5', 'Krakow', 'Stonka'),
(35, 'Pilsudskiego', '3', 'Krakow', 'Stonka'),
(36, ' Kosciuszki', '1', 'Krakow', 'Stonka'),
(37, 'Pilsudskiego', '1', 'Krakow', 'Stonka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mieszkanie`
--

CREATE TABLE `mieszkanie` (
  `id_mieszkania` int(10) NOT NULL,
  `id_bloku` int(10) NOT NULL,
  `nr_mieszkania` int(3) NOT NULL,
  `pietro` int(3) NOT NULL,
  `powierzchnia` float NOT NULL,
  `ilosc_pokoi` int(2) NOT NULL,
  `piwnica_powierzchnia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `mieszkanie`
--

INSERT INTO `mieszkanie` (`id_mieszkania`, `id_bloku`, `nr_mieszkania`, `pietro`, `powierzchnia`, `ilosc_pokoi`, `piwnica_powierzchnia`) VALUES
(1, 2, 1, 1, 64, 3, 12),
(2, 2, 2, 1, 64, 3, 12),
(3, 2, 3, 2, 64, 3, 12),
(4, 2, 4, 2, 64, 3, 12),
(5, 2, 5, 3, 64, 3, 12),
(6, 2, 6, 4, 64, 3, 12),
(7, 3, 1, 1, 65, 4, 12),
(8, 3, 2, 1, 65, 4, 12),
(9, 3, 3, 2, 65, 4, 12),
(10, 3, 4, 2, 65, 4, 12),
(11, 3, 5, 3, 65, 4, 12),
(12, 3, 6, 4, 65, 4, 12),
(13, 13, 1, 1, 55, 3, 12),
(14, 13, 2, 1, 55, 3, 12),
(15, 13, 3, 2, 55, 3, 12),
(16, 13, 4, 2, 55, 3, 12),
(17, 13, 5, 3, 55, 3, 12),
(18, 13, 6, 4, 55, 3, 12),
(19, 14, 1, 1, 55, 3, 12),
(20, 14, 2, 1, 55, 3, 12),
(21, 14, 3, 2, 55, 3, 12),
(22, 14, 4, 2, 55, 3, 12),
(23, 14, 5, 3, 55, 3, 12),
(24, 14, 6, 4, 55, 3, 12),
(25, 15, 1, 1, 85, 4, 12),
(26, 15, 2, 1, 85, 4, 12),
(27, 15, 3, 2, 85, 4, 12),
(28, 15, 4, 2, 85, 4, 12),
(29, 15, 5, 3, 85, 4, 12),
(30, 15, 6, 4, 85, 4, 12),
(31, 16, 1, 1, 84, 4, 12),
(32, 16, 2, 1, 84, 4, 12),
(33, 16, 3, 2, 84, 4, 12),
(34, 16, 4, 2, 84, 4, 12),
(35, 16, 5, 3, 84, 4, 12),
(36, 16, 6, 4, 84, 4, 12),
(37, 17, 1, 1, 64, 3, 12),
(38, 17, 2, 1, 64, 3, 12),
(39, 17, 3, 2, 64, 3, 12),
(40, 17, 4, 2, 64, 3, 12),
(41, 17, 5, 3, 64, 3, 12),
(42, 17, 6, 4, 64, 3, 12),
(43, 18, 1, 1, 64, 3, 12),
(44, 18, 2, 1, 64, 3, 12),
(45, 18, 3, 2, 64, 3, 12),
(46, 18, 4, 2, 64, 3, 12),
(47, 18, 5, 3, 64, 3, 12),
(48, 18, 6, 4, 64, 3, 12),
(49, 19, 1, 1, 64, 3, 12),
(50, 19, 2, 1, 64, 3, 12),
(51, 19, 3, 2, 64, 3, 12),
(52, 19, 4, 2, 64, 3, 12),
(53, 19, 5, 3, 64, 3, 12),
(54, 19, 6, 4, 64, 3, 12),
(55, 20, 1, 1, 64, 3, 12),
(56, 20, 2, 1, 64, 3, 12),
(57, 20, 3, 2, 64, 3, 12),
(58, 20, 4, 2, 64, 3, 12),
(59, 20, 5, 3, 64, 3, 12),
(60, 20, 6, 4, 64, 3, 12),
(61, 21, 1, 1, 64, 3, 12),
(62, 21, 2, 1, 64, 3, 12),
(63, 21, 3, 2, 64, 3, 12),
(64, 21, 4, 2, 64, 3, 12),
(65, 21, 5, 3, 64, 3, 12),
(66, 21, 6, 4, 64, 3, 12),
(67, 22, 1, 1, 85, 4, 12),
(68, 22, 2, 1, 85, 4, 12),
(69, 22, 3, 2, 85, 4, 12),
(70, 22, 4, 2, 85, 4, 12),
(71, 22, 5, 3, 85, 4, 12),
(72, 22, 6, 4, 85, 4, 12),
(73, 23, 1, 1, 64, 3, 12),
(74, 23, 2, 1, 64, 3, 12),
(75, 23, 3, 2, 64, 3, 12),
(76, 23, 4, 2, 64, 3, 12),
(77, 23, 5, 3, 64, 3, 12),
(78, 23, 6, 4, 64, 3, 12),
(79, 24, 1, 1, 64, 3, 12),
(80, 24, 2, 1, 64, 3, 12),
(81, 24, 3, 2, 64, 3, 12),
(82, 24, 4, 2, 64, 3, 12),
(83, 24, 5, 3, 64, 3, 12),
(84, 24, 6, 4, 64, 3, 12),
(85, 25, 1, 1, 64, 3, 12),
(86, 25, 2, 1, 64, 3, 12),
(87, 25, 3, 2, 64, 3, 12),
(88, 25, 4, 2, 64, 3, 12),
(89, 25, 5, 3, 64, 3, 12),
(90, 25, 6, 4, 64, 3, 12),
(91, 26, 1, 1, 64, 3, 12),
(92, 26, 2, 1, 64, 3, 12),
(93, 26, 3, 2, 64, 3, 12),
(94, 26, 4, 2, 64, 3, 12),
(95, 26, 5, 3, 64, 3, 12),
(96, 26, 6, 4, 64, 3, 12),
(97, 26, 1, 1, 64, 3, 12),
(98, 26, 2, 1, 64, 3, 12),
(99, 26, 3, 2, 64, 3, 12),
(100, 26, 4, 2, 64, 3, 12),
(101, 26, 5, 3, 64, 3, 12),
(102, 26, 6, 4, 64, 3, 12),
(103, 27, 1, 1, 64, 3, 12),
(104, 27, 2, 1, 64, 3, 12),
(105, 27, 3, 2, 64, 3, 12),
(106, 27, 4, 2, 64, 3, 12),
(107, 27, 5, 3, 64, 3, 12),
(108, 27, 6, 4, 64, 3, 12),
(109, 28, 1, 1, 64, 3, 12),
(110, 28, 2, 1, 64, 3, 12),
(111, 28, 3, 2, 64, 3, 12),
(112, 28, 4, 2, 64, 3, 12),
(113, 28, 5, 3, 64, 3, 12),
(114, 28, 6, 4, 64, 3, 12),
(121, 30, 1, 1, 64, 3, 12),
(122, 30, 2, 1, 64, 3, 12),
(123, 30, 3, 2, 64, 3, 12),
(124, 30, 4, 2, 64, 3, 12),
(125, 30, 5, 3, 64, 3, 12),
(126, 30, 6, 4, 64, 3, 12),
(127, 31, 1, 1, 64, 3, 12),
(128, 31, 2, 1, 64, 3, 12),
(129, 31, 3, 2, 64, 3, 12),
(130, 31, 4, 2, 64, 3, 12),
(131, 31, 5, 3, 64, 3, 12),
(132, 31, 6, 4, 64, 3, 12),
(133, 32, 1, 1, 64, 3, 12),
(134, 32, 2, 1, 64, 3, 12),
(135, 32, 3, 2, 64, 3, 12),
(136, 32, 4, 2, 64, 3, 12),
(137, 32, 5, 3, 64, 3, 12),
(138, 32, 6, 4, 64, 3, 12),
(139, 33, 1, 1, 64, 3, 12),
(140, 33, 2, 1, 64, 3, 12),
(141, 33, 3, 2, 64, 3, 12),
(142, 33, 4, 2, 64, 3, 12),
(143, 33, 5, 3, 64, 3, 12),
(144, 33, 6, 4, 64, 3, 12),
(145, 34, 1, 1, 64, 3, 12),
(146, 34, 2, 1, 64, 3, 12),
(147, 34, 3, 2, 64, 3, 12),
(148, 34, 4, 2, 64, 3, 12),
(149, 34, 5, 3, 64, 3, 12),
(150, 34, 6, 4, 64, 3, 12),
(151, 35, 1, 1, 64, 3, 12),
(152, 35, 2, 1, 64, 3, 12),
(153, 35, 3, 2, 64, 3, 12),
(154, 35, 4, 2, 64, 3, 12),
(155, 35, 5, 3, 64, 3, 12),
(156, 35, 6, 4, 64, 3, 12);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oplaty`
--

CREATE TABLE `oplaty` (
  `id_oplat` int(10) NOT NULL,
  `id_mieszkania` int(10) NOT NULL,
  `miesiac` int(2) NOT NULL,
  `rok` varchar(4) NOT NULL,
  `czynsz` float NOT NULL,
  `prad` float NOT NULL,
  `woda` float NOT NULL,
  `gaz` float NOT NULL,
  `remontowe` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `oplaty`
--

INSERT INTO `oplaty` (`id_oplat`, `id_mieszkania`, `miesiac`, `rok`, `czynsz`, `prad`, `woda`, `gaz`, `remontowe`) VALUES
(1, 1, 1, '2015', 300, 136, 66, 54, 67),
(2, 1, 2, '2015', 300, 139, 66, 54, 67),
(3, 1, 3, '2015', 300, 136, 66, 54, 67),
(4, 1, 4, '2015', 300, 101, 66, 54, 67),
(5, 1, 5, '2015', 300, 155, 66, 54, 67),
(6, 1, 6, '2015', 300, 136, 66, 54, 67),
(7, 1, 7, '2015', 300, 134, 66, 54, 67),
(8, 1, 8, '2015', 300, 136, 66, 54, 67),
(9, 1, 9, '2015', 300, 198, 66, 54, 67),
(10, 1, 10, '2015', 300, 116, 66, 54, 67),
(11, 1, 11, '2015', 300, 136, 66, 54, 67),
(12, 1, 12, '2015', 300, 187, 66, 54, 67),
(13, 1, 1, '2016', 300, 141, 66, 54, 67),
(14, 2, 1, '2015', 300, 236, 66, 54, 67),
(15, 2, 2, '2015', 300, 239, 66, 54, 67),
(16, 2, 3, '2015', 300, 236, 66, 54, 67),
(17, 2, 4, '2015', 300, 202, 66, 54, 67),
(18, 2, 5, '2015', 300, 255, 66, 54, 67),
(19, 2, 6, '2015', 300, 236, 66, 54, 67),
(20, 2, 7, '2015', 300, 234, 66, 54, 67),
(21, 2, 8, '2015', 300, 236, 66, 54, 67),
(22, 2, 9, '2015', 300, 298, 66, 54, 67),
(23, 2, 10, '2015', 300, 226, 66, 54, 67),
(24, 2, 11, '2015', 300, 236, 66, 54, 67),
(25, 2, 12, '2015', 300, 287, 66, 54, 67),
(26, 2, 1, '2016', 300, 242, 66, 54, 67),
(27, 3, 1, '2015', 300, 236, 66, 54, 67),
(28, 3, 2, '2015', 300, 239, 66, 54, 67),
(29, 3, 3, '2015', 300, 236, 66, 54, 67),
(30, 3, 4, '2015', 300, 201, 66, 54, 67),
(31, 3, 5, '2015', 300, 255, 66, 54, 67),
(32, 3, 6, '2015', 300, 236, 66, 54, 67),
(33, 3, 7, '2015', 300, 234, 66, 54, 67),
(34, 3, 8, '2015', 300, 236, 66, 54, 67),
(35, 3, 9, '2015', 300, 198, 66, 54, 67),
(36, 3, 10, '2015', 300, 216, 66, 54, 67),
(37, 3, 11, '2015', 300, 236, 66, 54, 67),
(38, 3, 12, '2015', 300, 187, 66, 54, 67),
(39, 3, 1, '2016', 300, 241, 66, 54, 67),
(40, 4, 1, '2015', 300, 236, 66, 54, 67),
(41, 4, 2, '2015', 300, 239, 66, 54, 67),
(42, 4, 3, '2015', 300, 236, 66, 54, 67),
(43, 4, 4, '2015', 300, 201, 66, 54, 67),
(44, 4, 5, '2015', 300, 255, 66, 54, 67),
(45, 4, 6, '2015', 300, 236, 66, 54, 67),
(46, 4, 7, '2015', 300, 234, 66, 54, 67),
(47, 4, 8, '2015', 300, 236, 66, 54, 67),
(48, 4, 9, '2015', 300, 198, 66, 54, 67),
(49, 4, 10, '2015', 300, 216, 66, 54, 67),
(50, 4, 11, '2015', 300, 236, 66, 54, 67),
(51, 4, 12, '2015', 300, 187, 66, 54, 67),
(52, 4, 1, '2016', 300, 241, 66, 54, 67),
(53, 5, 1, '2015', 300, 236, 66, 54, 67),
(54, 5, 2, '2015', 300, 239, 66, 54, 67),
(55, 5, 3, '2015', 300, 236, 66, 54, 67),
(56, 5, 4, '2015', 300, 201, 66, 54, 67),
(57, 5, 5, '2015', 300, 255, 66, 54, 67),
(58, 5, 6, '2015', 300, 236, 66, 54, 67),
(59, 5, 7, '2015', 300, 234, 66, 54, 67),
(60, 5, 8, '2015', 300, 236, 66, 54, 67),
(61, 5, 9, '2015', 300, 198, 66, 54, 67),
(62, 5, 10, '2015', 300, 216, 66, 54, 67),
(63, 5, 11, '2015', 300, 236, 66, 54, 67),
(64, 5, 12, '2015', 300, 187, 66, 54, 67),
(65, 5, 1, '2016', 300, 241, 66, 54, 67),
(66, 6, 1, '2015', 300, 236, 66, 54, 67),
(67, 6, 2, '2015', 300, 239, 66, 54, 67),
(68, 6, 3, '2015', 300, 236, 66, 54, 67),
(69, 6, 4, '2015', 300, 201, 66, 54, 67),
(70, 6, 5, '2015', 300, 255, 66, 54, 67),
(71, 6, 6, '2015', 300, 236, 66, 54, 67),
(72, 6, 7, '2015', 300, 234, 66, 54, 67),
(73, 6, 8, '2015', 300, 236, 66, 54, 67),
(74, 6, 9, '2015', 300, 198, 66, 54, 67),
(75, 6, 10, '2015', 300, 216, 66, 54, 67),
(76, 6, 11, '2015', 300, 236, 66, 54, 67),
(77, 6, 12, '2015', 300, 187, 66, 54, 67),
(78, 6, 1, '2016', 300, 241, 66, 54, 67),
(79, 7, 1, '2015', 300, 236, 66, 54, 67),
(80, 7, 2, '2015', 300, 239, 66, 54, 67),
(81, 7, 3, '2015', 300, 236, 66, 54, 67),
(82, 7, 4, '2015', 300, 201, 66, 54, 67),
(83, 7, 5, '2015', 300, 255, 66, 54, 67),
(84, 7, 6, '2015', 300, 236, 66, 54, 67),
(85, 7, 7, '2015', 300, 234, 66, 54, 67),
(86, 7, 8, '2015', 300, 236, 66, 54, 67),
(87, 7, 9, '2015', 300, 198, 66, 54, 67),
(88, 7, 10, '2015', 300, 216, 66, 54, 67),
(89, 7, 11, '2015', 300, 236, 66, 54, 67),
(90, 7, 12, '2015', 300, 187, 66, 54, 67),
(91, 7, 1, '2016', 300, 241, 66, 54, 67),
(92, 8, 1, '2015', 300, 236, 66, 54, 67),
(93, 8, 2, '2015', 300, 239, 66, 54, 67),
(94, 8, 3, '2015', 300, 236, 66, 54, 67),
(95, 8, 4, '2015', 300, 201, 66, 54, 67),
(96, 8, 5, '2015', 300, 255, 66, 54, 67),
(97, 8, 6, '2015', 300, 236, 66, 54, 67),
(98, 8, 7, '2015', 300, 234, 66, 54, 67),
(99, 8, 8, '2015', 300, 236, 66, 54, 67),
(100, 8, 9, '2015', 300, 198, 66, 54, 67),
(101, 8, 10, '2015', 300, 216, 66, 54, 67),
(102, 8, 11, '2015', 300, 236, 66, 54, 67),
(103, 8, 12, '2015', 300, 187, 66, 54, 67),
(104, 8, 1, '2016', 300, 241, 66, 54, 67),
(105, 9, 1, '2015', 300, 136, 66, 54, 67),
(106, 9, 1, '2015', 300, 139, 66, 54, 67),
(107, 9, 3, '2015', 300, 136, 66, 54, 67),
(108, 9, 4, '2015', 300, 101, 66, 54, 67),
(109, 9, 5, '2015', 300, 155, 66, 54, 67),
(110, 9, 6, '2015', 300, 136, 66, 54, 67),
(111, 9, 7, '2015', 300, 134, 66, 54, 67),
(112, 9, 8, '2015', 300, 136, 66, 54, 67),
(113, 9, 9, '2015', 300, 198, 66, 54, 67),
(114, 9, 10, '2015', 300, 116, 66, 54, 67),
(115, 9, 11, '2015', 300, 136, 66, 54, 67),
(116, 9, 11, '2015', 300, 187, 66, 54, 67),
(117, 9, 1, '2016', 300, 141, 66, 54, 67),
(118, 10, 1, '2015', 300, 136, 66, 54, 67),
(119, 10, 1, '2015', 300, 139, 66, 54, 67),
(120, 10, 3, '2015', 300, 136, 66, 54, 67),
(121, 10, 4, '2015', 300, 101, 66, 54, 67),
(122, 10, 5, '2015', 300, 155, 66, 54, 67),
(123, 10, 6, '2015', 300, 136, 66, 54, 67),
(124, 10, 7, '2015', 300, 134, 66, 54, 67),
(125, 10, 8, '2015', 300, 136, 66, 54, 67),
(126, 10, 9, '2015', 300, 198, 66, 54, 67),
(127, 10, 10, '2015', 300, 116, 66, 54, 67),
(128, 10, 11, '2015', 300, 136, 66, 54, 67),
(129, 10, 11, '2015', 300, 187, 66, 54, 67),
(130, 10, 1, '2016', 300, 141, 66, 54, 67),
(131, 11, 1, '2015', 300, 136, 66, 54, 67),
(132, 11, 1, '2015', 300, 139, 66, 54, 67),
(133, 11, 3, '2015', 300, 136, 66, 54, 67),
(134, 11, 4, '2015', 300, 101, 66, 54, 67),
(135, 11, 5, '2015', 300, 155, 66, 54, 67),
(136, 11, 6, '2015', 300, 136, 66, 54, 67),
(137, 11, 7, '2015', 300, 134, 66, 54, 67),
(138, 11, 8, '2015', 300, 136, 66, 54, 67),
(139, 11, 9, '2015', 300, 198, 66, 54, 67),
(140, 11, 10, '2015', 300, 116, 66, 54, 67),
(141, 11, 11, '2015', 300, 136, 66, 54, 67),
(142, 11, 11, '2015', 300, 187, 66, 54, 67),
(143, 11, 1, '2016', 300, 141, 66, 54, 67),
(144, 12, 2, '2015', 300, 236, 66, 54, 67),
(145, 12, 2, '2015', 300, 239, 66, 54, 67),
(146, 12, 3, '2015', 300, 236, 66, 54, 67),
(147, 12, 4, '2015', 300, 202, 66, 54, 67),
(148, 12, 5, '2015', 300, 255, 66, 54, 67),
(149, 12, 6, '2015', 300, 236, 66, 54, 67),
(150, 12, 7, '2015', 300, 234, 66, 54, 67),
(151, 12, 8, '2015', 300, 236, 66, 54, 67),
(152, 12, 9, '2015', 300, 298, 66, 54, 67),
(153, 12, 20, '2015', 300, 226, 66, 54, 67),
(154, 12, 22, '2015', 300, 236, 66, 54, 67),
(155, 12, 22, '2015', 300, 287, 66, 54, 67),
(156, 12, 2, '2016', 300, 242, 66, 54, 67),
(157, 13, 1, '2015', 300, 236, 66, 54, 67),
(158, 13, 2, '2015', 300, 239, 66, 54, 67),
(159, 13, 3, '2015', 300, 236, 66, 54, 67),
(160, 13, 4, '2015', 300, 201, 66, 54, 67),
(161, 13, 5, '2015', 300, 255, 66, 54, 67),
(162, 13, 6, '2015', 300, 236, 66, 54, 67),
(163, 13, 7, '2015', 300, 234, 66, 54, 67),
(164, 13, 8, '2015', 300, 236, 66, 54, 67),
(165, 13, 9, '2015', 300, 198, 66, 54, 67),
(166, 13, 10, '2015', 300, 216, 66, 54, 67),
(167, 13, 11, '2015', 300, 236, 66, 54, 67),
(168, 13, 12, '2015', 300, 187, 66, 54, 67),
(169, 13, 1, '2016', 300, 241, 66, 54, 67),
(170, 14, 1, '2015', 300, 236, 66, 54, 67),
(171, 14, 2, '2015', 300, 239, 66, 54, 67),
(172, 14, 3, '2015', 300, 236, 66, 54, 67),
(173, 14, 4, '2015', 300, 201, 66, 54, 67),
(174, 14, 5, '2015', 300, 255, 66, 54, 67),
(175, 14, 6, '2015', 300, 236, 66, 54, 67),
(176, 14, 7, '2015', 300, 234, 66, 54, 67),
(177, 14, 8, '2015', 300, 236, 66, 54, 67),
(178, 14, 9, '2015', 300, 198, 66, 54, 67),
(179, 14, 10, '2015', 300, 216, 66, 54, 67),
(180, 14, 11, '2015', 300, 236, 66, 54, 67),
(181, 14, 12, '2015', 300, 187, 66, 54, 67),
(182, 14, 1, '2016', 300, 241, 66, 54, 67),
(183, 15, 1, '2015', 300, 236, 66, 54, 67),
(184, 15, 2, '2015', 300, 239, 66, 54, 67),
(185, 15, 3, '2015', 300, 236, 66, 54, 67),
(186, 15, 4, '2015', 300, 201, 66, 54, 67),
(187, 15, 5, '2015', 300, 255, 66, 54, 67),
(188, 15, 6, '2015', 300, 236, 66, 54, 67),
(189, 15, 7, '2015', 300, 234, 66, 54, 67),
(190, 15, 8, '2015', 300, 236, 66, 54, 67),
(191, 15, 9, '2015', 300, 198, 66, 54, 67),
(192, 15, 10, '2015', 300, 216, 66, 54, 67),
(193, 15, 11, '2015', 300, 236, 66, 54, 67),
(194, 15, 12, '2015', 300, 187, 66, 54, 67),
(195, 15, 1, '2016', 300, 241, 66, 54, 67),
(196, 16, 1, '2015', 300, 236, 66, 54, 67),
(197, 16, 2, '2015', 300, 239, 66, 54, 67),
(198, 16, 3, '2015', 300, 236, 66, 54, 67),
(199, 16, 4, '2015', 300, 201, 66, 54, 67),
(200, 16, 5, '2015', 300, 255, 66, 54, 67),
(201, 16, 6, '2015', 300, 236, 66, 54, 67),
(202, 16, 7, '2015', 300, 234, 66, 54, 67),
(203, 16, 8, '2015', 300, 236, 66, 54, 67),
(204, 16, 9, '2015', 300, 198, 66, 54, 67),
(205, 16, 10, '2015', 300, 216, 66, 54, 67),
(206, 16, 11, '2015', 300, 236, 66, 54, 67),
(207, 16, 12, '2015', 300, 187, 66, 54, 67),
(208, 16, 1, '2016', 300, 241, 66, 54, 67),
(209, 17, 1, '2015', 300, 236, 66, 54, 67),
(210, 17, 2, '2015', 300, 239, 66, 54, 67),
(211, 17, 3, '2015', 300, 236, 66, 54, 67),
(212, 17, 4, '2015', 300, 201, 66, 54, 67),
(213, 17, 5, '2015', 300, 255, 66, 54, 67),
(214, 17, 6, '2015', 300, 236, 66, 54, 67),
(215, 17, 7, '2015', 300, 234, 66, 54, 67),
(216, 17, 8, '2015', 300, 236, 66, 54, 67),
(217, 17, 9, '2015', 300, 198, 66, 54, 67),
(218, 17, 10, '2015', 300, 216, 66, 54, 67),
(219, 17, 11, '2015', 300, 236, 66, 54, 67),
(220, 17, 12, '2015', 300, 187, 66, 54, 67),
(221, 17, 1, '2016', 300, 241, 66, 54, 67),
(222, 18, 1, '2015', 300, 236, 66, 54, 67),
(223, 18, 2, '2015', 300, 239, 66, 54, 67),
(224, 18, 3, '2015', 300, 236, 66, 54, 67),
(225, 18, 4, '2015', 300, 201, 66, 54, 67),
(226, 18, 5, '2015', 300, 255, 66, 54, 67),
(227, 18, 6, '2015', 300, 236, 66, 54, 67),
(228, 18, 7, '2015', 300, 234, 66, 54, 67),
(229, 18, 8, '2015', 300, 236, 66, 54, 67),
(230, 18, 9, '2015', 300, 198, 66, 54, 67),
(231, 18, 10, '2015', 300, 216, 66, 54, 67),
(232, 18, 11, '2015', 300, 236, 66, 54, 67),
(233, 18, 12, '2015', 300, 187, 66, 54, 67),
(234, 18, 1, '2016', 300, 241, 66, 54, 67),
(235, 19, 1, '2015', 300, 136, 66, 54, 67),
(236, 19, 1, '2015', 300, 139, 66, 54, 67),
(237, 19, 3, '2015', 300, 136, 66, 54, 67),
(238, 19, 4, '2015', 300, 101, 66, 54, 67),
(239, 19, 5, '2015', 300, 155, 66, 54, 67),
(240, 19, 6, '2015', 300, 136, 66, 54, 67),
(241, 19, 7, '2015', 300, 134, 66, 54, 67),
(242, 19, 8, '2015', 300, 136, 66, 54, 67),
(243, 19, 9, '2015', 300, 198, 66, 54, 67),
(244, 19, 10, '2015', 300, 116, 66, 54, 67),
(245, 19, 11, '2015', 300, 136, 66, 54, 67),
(246, 19, 11, '2015', 300, 187, 66, 54, 67),
(247, 19, 1, '2016', 300, 141, 66, 54, 67),
(248, 20, 1, '2015', 300, 136, 66, 54, 67),
(249, 20, 1, '2015', 300, 139, 66, 54, 67),
(250, 20, 3, '2015', 300, 136, 66, 54, 67),
(251, 20, 4, '2015', 300, 101, 66, 54, 67),
(252, 20, 5, '2015', 300, 155, 66, 54, 67),
(253, 20, 6, '2015', 300, 136, 66, 54, 67),
(254, 20, 7, '2015', 300, 134, 66, 54, 67),
(255, 20, 8, '2015', 300, 136, 66, 54, 67),
(256, 20, 9, '2015', 300, 198, 66, 54, 67),
(257, 20, 10, '2015', 300, 116, 66, 54, 67),
(258, 20, 11, '2015', 300, 136, 66, 54, 67),
(259, 20, 11, '2015', 300, 187, 66, 54, 67),
(260, 20, 1, '2016', 300, 141, 66, 54, 67);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownik`
--

CREATE TABLE `pracownik` (
  `id` int(10) NOT NULL,
  `imie` varchar(25) NOT NULL,
  `nazwisko` varchar(25) NOT NULL,
  `pesel` bigint(11) NOT NULL,
  `ulica` varchar(255) NOT NULL,
  `miejscowosc` varchar(25) NOT NULL,
  `stanowisko` varchar(255) NOT NULL,
  `nr_konta` bigint(26) NOT NULL,
  `nr_telefonu` bigint(13) NOT NULL,
  `nazwa_spoldzielni_fk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `pracownik`
--

INSERT INTO `pracownik` (`id`, `imie`, `nazwisko`, `pesel`, `ulica`, `miejscowosc`, `stanowisko`, `nr_konta`, `nr_telefonu`, `nazwa_spoldzielni_fk`) VALUES
(1, 'Krzysztof', 'Pezi', 93103336358, 'Main Street 1', 'Krakow', 'Prezes', 0, 666777888, 'Stonka'),
(12, 'Hannahz', 'Longa', 70411414124, 'Main Street 1', 'Myrtle Beach', 'Manager', 10000001126, 641703876, 'Stonka'),
(13, 'Ali', 'Cross', 70411414125, 'Main Street 1', 'Sunnyvale', 'Manager', 10000001152, 614908122, 'Stonka'),
(14, 'Josiah', 'Harvey', 70411414126, 'Main Street 1', 'Waterbury', 'Pracownik', 10000001178, 611922821, 'Stonka'),
(15, 'Quin', 'Hyde', 70411414127, 'Main Street 1', 'South El Monte', 'Manager', 10000001204, 646966996, 'Stonka'),
(16, 'Kirsten', 'Dominguez', 70411414128, 'Main Street 1', 'Hopkinsville', 'Manager', 10000001230, 691999159, 'Stonka'),
(17, 'Jane', 'Stephens', 70411414129, 'Main Street 1', 'Catskill', '', 10000001256, 621154542, 'Stonka'),
(18, 'Stuart', 'Wise', 70411414130, 'Main Street 1', 'Riverton', 'Manager', 10000001282, 627168455, 'Stonka'),
(20, 'Grzegorz', 'Conner', 70411414132, 'Main Street 1', 'Waltham', 'Pracownik nizszego szczebla', 10000001334, 691717557, 'Stonka'),
(21, 'Sage', 'Castro', 70411414133, 'Main Street 1', 'Prescott', 'Dyrektor', 10000001360, 662410207, 'Stonka'),
(22, 'Mechelle', 'Fields', 70411414134, 'Main Street 1', 'Corvallis', '', 10000001386, 689129088, 'Stonka'),
(23, 'Aretha', 'Mathis', 70411414135, 'Main Street 1', 'Lower Burrell', 'Dyrektor', 10000001412, 642503132, 'Stonka'),
(24, 'Geoffrey', 'Riddle', 70411414136, 'Main Street 1', 'Ocean City', 'Manager', 10000001438, 612996045, 'Stonka'),
(25, 'Maxwell', 'Olsen', 70411414137, 'Main Street 1', 'Bakersfield', '', 10000001464, 687207396, 'Stonka'),
(26, 'Destiny', 'Ramirez', 70411414138, 'Main Street 1', 'Chicago Heights', 'Pracownik nizszego szczebla', 10000001490, 679127654, 'Stonka'),
(27, 'Ignacia', 'Rich', 70411414139, 'Main Street 1', 'Alameda', 'Pracownik', 10000001516, 645764670, 'Stonka'),
(28, 'Leandra', 'Browning', 70411414140, 'Main Street 1', 'Cary', '', 10000001542, 672980619, 'Stonka'),
(30, 'Orlando', 'Guthrie', 70411414142, 'Main Street 1', 'Atlantic City', 'Dyrektor', 10000001594, 651587552, 'Stonka'),
(31, 'Zelenia', 'Mcclain', 70411414143, 'Main Street 1', 'Asbury Park', 'Pracownik', 10000001620, 640662900, 'Stonka'),
(32, 'Leslie', 'Wilkerson', 70411414144, 'Main Street 1', 'Huntington', '', 10000001646, 667192493, 'Stonka'),
(33, 'Neville', 'Vinson', 70411414145, 'Main Street 1', 'Bowie', 'Dyrektor', 10000001672, 665933657, 'Stonka'),
(34, 'Alexis', 'Silva', 70411414146, 'Main Street 1', 'Gloversville', 'Dyrektor', 10000001698, 605606770, 'Stonka'),
(35, 'Keiko', 'Shepard', 70411414147, 'Main Street 1', 'Newport News', 'Manager', 10000001724, 693521361, 'Stonka'),
(36, 'Anthony', 'Hawkins', 70411414148, 'Main Street 1', 'Louisville', 'Pracownik', 10000001750, 644656955, 'Stonka'),
(37, 'Chase', 'Dorsey', 70411414149, 'Main Street 1', 'Monterey', 'Pracownik nizszego szczebla', 10000001776, 607469495, 'Stonka'),
(39, 'Ignatius', 'Short', 70411414151, 'Main Street 1', 'Naperville', 'Dyrektor', 10000001828, 669884013, 'Stonka'),
(40, 'Buffy', 'Barnes', 70411414152, 'Main Street 1', 'Agoura Hills', 'Pracownik nizszego szczebla', 10000001854, 678091638, 'Stonka'),
(41, 'Marah', 'Lester', 70411414153, 'Main Street 1', 'Raleigh', 'Dyrektor', 10000001880, 682115904, 'Stonka'),
(42, 'Unity', 'Riggs', 70411414154, 'Main Street 1', 'Grand Island', 'Pracownik', 10000001906, 607427109, 'Stonka'),
(43, 'Vincent', 'Stafford', 70411414155, 'Main Street 1', 'Reno', 'Pracownik', 10000001932, 660826116, 'Stonka'),
(44, 'Carly', 'Gibson', 70411414156, 'Main Street 1', 'Pendleton', '', 10000001958, 633060658, 'Stonka'),
(45, 'Iliana', 'Obrien', 70411414157, 'Main Street 1', 'West Haven', 'Pracownik', 10000001984, 659305468, 'Stonka'),
(46, 'Patricia', 'Short', 70411414158, 'Main Street 1', 'Duquesne', 'Pracownik', 10000002010, 609483676, 'Stonka'),
(47, 'Caryn', 'Clay', 70411414159, 'Main Street 1', 'Gloucester', 'Manager', 10000002036, 667209754, 'Stonka'),
(48, 'Fay', 'Cross', 70411414160, 'Main Street 1', 'Normal', '', 10000002062, 643019064, 'Stonka'),
(49, 'Yuli', 'Mcintosh', 70411414161, 'Main Street 1', 'Syracuse', 'Manager', 10000002088, 696600031, 'Stonka'),
(50, 'Mia', 'Suarez', 70411414162, 'Main Street 1', 'Plattsburgh', 'Pracownik nizszego szczebla', 10000002114, 631097224, 'Stonka'),
(51, 'Joan', 'Gilliam', 70411414163, 'Main Street 1', 'Gaithersburg', 'Dyrektor', 10000002140, 632476833, 'Stonka'),
(52, 'Hyacinth', 'Hughes', 70411414164, 'Main Street 1', 'Visalia', 'Pracownik nizszego szczebla', 10000002166, 695975038, 'Stonka'),
(54, 'Linus', 'Delaney', 70411414166, 'Main Street 1', 'Miami Beach', 'Dyrektor', 10000002218, 674633314, 'Stonka'),
(55, 'Denise', 'Hines', 70411414167, 'Main Street 1', 'Lewiston', '', 10000002244, 654737896, 'Stonka'),
(56, 'Fatima', 'Rodriquez', 70411414168, 'Main Street 1', 'Trenton', '', 10000002270, 613207593, 'Stonka'),
(57, 'Orli', 'Tucker', 70411414169, 'Main Street 1', 'Weirton', 'Manager', 10000002296, 665544723, 'Stonka'),
(58, 'Mara', 'Ashley', 70411414170, 'Main Street 1', 'Seattle', 'Manager', 10000002322, 637791491, 'Stonka'),
(59, 'Cassidy', 'Galloway', 70411414171, 'Main Street 1', 'Wahoo', '', 10000002348, 627310925, 'Stonka'),
(61, 'Mateusz', 'Skocz', 98989865147, 'Pilsudskiego 10/17', 'Skawina', 'Szef wszystkich szefow', 0, 0, 'Stonka'),
(62, 'TEST', 'TEST', 1592636258, 'TESTOWA', 'TESTOWO', 'TESTER', 0, 4, 'Stonka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `remont`
--

CREATE TABLE `remont` (
  `id_remont` int(10) NOT NULL,
  `opis` varchar(255) NOT NULL,
  `kwota` float NOT NULL,
  `id_bloku` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `remont`
--

INSERT INTO `remont` (`id_remont`, `opis`, `kwota`, `id_bloku`) VALUES
(1, 'Remont testowy', 9999, 3),
(2, 'Remont klatki schodowej', 12000, 2),
(3, 'Remont klatki schodowej', 12000, 3),
(4, 'Remont klatki schodowej', 12000, 13),
(5, 'Remont klatki schodowej', 12000, 14),
(6, 'Remont klatki schodowej', 12000, 15),
(7, 'Remont klatki schodowej', 12000, 16),
(8, 'Remont klatki schodowej', 12000, 17),
(9, 'Remont klatki schodowej', 12000, 18),
(10, 'Remont klatki schodowej', 12000, 19),
(11, 'Remont klatki schodowej', 12000, 20),
(12, 'Remont klatki schodowej', 12000, 21),
(13, 'Remont klatki schodowej', 12000, 22),
(14, 'Remont klatki schodowej', 12000, 23),
(15, 'Remont klatki schodowej', 12000, 24),
(16, 'Remont klatki schodowej', 12000, 25),
(17, 'Remont klatki schodowej', 12000, 26),
(18, 'Remont klatki schodowej', 12000, 27),
(19, 'Remont klatki schodowej', 12000, 27),
(20, 'Remont klatki schodowej', 12000, 28),
(22, 'Remont klatki schodowej', 12000, 30),
(23, 'Remont klatki schodowej', 12000, 31),
(24, 'Remont klatki schodowej', 12000, 32),
(25, 'Remont klatki schodowej', 12000, 33),
(26, 'Remont klatki schodowej', 12000, 34),
(27, 'Remont klatki schodowej', 12000, 35),
(28, 'Remont klatki schodowej', 12000, 37),
(29, 'Remont klatki schodowej', 12000, 36);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `spoldzielnia_mieszkaniowa`
--

CREATE TABLE `spoldzielnia_mieszkaniowa` (
  `nazwa_spoldzielni` varchar(255) NOT NULL,
  `adres_spoldzielni` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `spoldzielnia_mieszkaniowa`
--

INSERT INTO `spoldzielnia_mieszkaniowa` (`nazwa_spoldzielni`, `adres_spoldzielni`) VALUES
('Stonka', 'ul. Pilsudskiego 1, Krakow 30-000');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `login` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`login`, `pass`) VALUES
('admin', 'admin'),
('szef', 'szef');

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `widok_mieszkanie_all`
--
CREATE TABLE `widok_mieszkanie_all` (
`id_mieszkania` int(10)
,`nr_mieszkania` int(3)
,`pietro` int(3)
,`powierzchnia` float
,`ilosc_pokoi` int(2)
,`piwnica_powierzchnia` float
,`id_bloku` int(10)
,`ulica` varchar(255)
,`ulica_nr` varchar(10)
,`miejscowosc` varchar(255)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `widok_mieszkanie_blok`
--
CREATE TABLE `widok_mieszkanie_blok` (
`id_mieszkania` int(10)
,`nr_mieszkania` int(3)
,`pietro` int(3)
,`powierzchnia` float
,`ilosc_pokoi` int(2)
,`piwnica_powierzchnia` float
,`id_bloku` int(10)
,`ulica` varchar(255)
,`ulica_nr` varchar(10)
,`miejscowosc` varchar(255)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `widok_mieszkanie_oplaty`
--
CREATE TABLE `widok_mieszkanie_oplaty` (
`id_mieszkania` int(10)
,`Oplata_Id` int(10)
,`Suma` double
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `widok_mieszkanie_wlasciciel`
--
CREATE TABLE `widok_mieszkanie_wlasciciel` (
`id_mieszkania` int(10)
,`id_bloku` int(10)
,`nr_mieszkania` int(3)
,`pietro` int(3)
,`powierzchnia` float
,`ilosc_pokoi` int(2)
,`piwnica_powierzchnia` float
,`wlasciciel_id` int(10)
,`mieszkanie_id` int(10)
,`pesel` bigint(11)
,`id` int(10)
,`imie` varchar(25)
,`nazwisko` varchar(25)
,`ulica` varchar(25)
,`miejscowosc` varchar(25)
,`nr_telefonu` int(13)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `wikok_ilosc_mieszkan_wlascicieli`
--
CREATE TABLE `wikok_ilosc_mieszkan_wlascicieli` (
`wlasciciel_id` int(10)
,`count(wlasciciel_mieszkanie.mieszkanie_id)` bigint(21)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wlasciciel`
--

CREATE TABLE `wlasciciel` (
  `pesel` bigint(11) NOT NULL,
  `id` int(10) NOT NULL,
  `imie` varchar(25) NOT NULL,
  `nazwisko` varchar(25) NOT NULL,
  `ulica` varchar(25) NOT NULL,
  `miejscowosc` varchar(25) NOT NULL,
  `nr_telefonu` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `wlasciciel`
--

INSERT INTO `wlasciciel` (`pesel`, `id`, `imie`, `nazwisko`, `ulica`, `miejscowosc`, `nr_telefonu`) VALUES
(93100104147, 1, 'Mateusz', 'Skocz', 'Pilsudskiego 18', 'Skawina', 654789123),
(89551415963, 3, 'Alicja', 'Zlopek', 'Straszna 1', 'Krakow', 458729963),
(92889415963, 7, 'Alibaba', 'Rozbujnik', 'Dzina 1', 'Krakow', 969789963),
(70411414123, 16, 'Ronan', 'Pugh', '8354 Facilisis St.', 'La Crosse', 627059039),
(70411414124, 17, 'Dalton', 'Marquez', 'P.O. Box 580, 7427 Semper', 'Atlantic City', 627854384),
(70411414125, 18, 'Jerome', 'Gamble', '887-7896 Tellus. Av.', 'Sedalia', 651419416),
(70411414126, 19, 'Rhea', 'Rosa', 'Ap #973-9702 Auctor Stree', 'Quincy', 690616475),
(70411414127, 20, 'Cara', 'Delgado', '613 Phasellus Ave', 'Mobile', 680756985),
(70411414128, 21, 'Barry', 'Tyler', 'Ap #430-9149 Neque St.', 'Lakewood', 699255423),
(70411414129, 22, 'Karyn', 'Mccoy', 'P.O. Box 193, 8921 Sem Ro', 'Bowling Green', 685276170),
(70411414130, 23, 'Dante', 'Wilcox', '1764 Elementum, Av.', 'Hamilton', 628249808),
(70411414131, 24, 'Jacob', 'Gentry', 'Ap #990-7341 Aliquam St.', 'Dubuque', 625266966),
(70411414132, 25, 'Erica', 'Gaines', 'P.O. Box 457, 9136 Vitae ', 'Sunbury', 636758974),
(70411414133, 26, 'Fritz', 'Shannon', '7480 Ligula. Rd.', 'Pittsfield', 610197132),
(70411414134, 27, 'Colleen', 'Vincent', 'Ap #895-9935 Eget Road', 'Opelousas', 674378339),
(70411414135, 28, 'Brianna', 'Hebert', 'P.O. Box 704, 9047 Dolor ', 'Schenectady', 674888831),
(70411414136, 29, 'Nissim', 'Evans', '1475 Nonummy Street', 'Miami Beach', 684498588),
(70411414137, 30, 'Maris', 'Butler', 'Ap #191-7303 Velit. Road', 'Hannibal', 646897544),
(70411414138, 31, 'Kylee', 'Smith', '6990 Natoque Ave', 'Mobile', 688690594),
(70411414139, 32, 'Marvin', 'Pittman', 'P.O. Box 943, 3272 Donec ', 'Seattle', 625197650),
(70411414140, 33, 'Candace', 'Hendricks', '694 A Road', 'Johnstown', 635104526),
(70411414141, 34, 'Dorian', 'Patton', 'Ap #151-9344 Proin Rd.', 'North Charleston', 635391138),
(70411414142, 35, 'Gannon', 'Eaton', '485-2349 At Rd.', 'Corpus Christi', 604293930),
(70411414143, 36, 'Elizabeth', 'Weber', 'Ap #172-6958 Hendrerit St', 'Myrtle Beach', 623016988),
(70411414144, 37, 'Sasha', 'Kemp', '671 Nec Road', 'Jordan Valley', 668886786),
(70411414145, 38, 'Kylan', 'Hutchinson', 'Ap #964-2826 Aenean St.', 'Shreveport', 615039089),
(70411414146, 39, 'Laurel', 'Pennington', '6020 Elit. Avenue', 'Moraga', 632401847),
(70411414147, 40, 'Sharon', 'Montgomery', 'Ap #506-6889 Tempus, Stre', 'Green River', 681662912),
(70411414148, 41, 'Logan', 'Warren', '5543 Sed Avenue', 'St. Petersburg', 621730877),
(70411414149, 42, 'Tana', 'Salas', '907-6363 Elit, St.', 'Downey', 670537548),
(70411414150, 43, 'Ila', 'Bowers', 'P.O. Box 616, 137 Erat Rd', 'Fort Smith', 694760830),
(70411414151, 44, 'Quin', 'Blankenship', 'Ap #641-900 Cursus Rd.', 'Prescott', 619317238),
(70411414152, 45, 'Mallory', 'Camacho', 'P.O. Box 703, 7087 Non, A', 'Little Falls', 624432636),
(70411414153, 46, 'Gail', 'Schwartz', 'Ap #310-4147 Quis Avenue', 'Forest Lake', 622228102),
(70411414154, 47, 'Jillian', 'Michael', '4022 Phasellus Rd.', 'Brigham City', 688627664),
(70411414155, 48, 'Jack', 'Williams', 'P.O. Box 346, 229 Lorem S', 'Monroe', 651861577),
(70411414156, 49, 'Jaime', 'Wolf', '1292 Erat St.', 'Salisbury', 603868592),
(70411414157, 50, 'Chelsea', 'Sweeney', '956-8903 Nibh Avenue', 'Sharon', 636623769),
(70411414158, 51, 'Lucian', 'Hernandez', '376-3607 Egestas Avenue', 'North Tonawanda', 616709665),
(70411414159, 52, 'Ingrid', 'Hoover', 'P.O. Box 549, 2210 Ut St.', 'Apple Valley', 672718168),
(70411414160, 53, 'Dakota', 'Gaines', 'P.O. Box 921, 2124 Proin ', 'Pasadena', 674438906),
(70411414161, 54, 'Keiko', 'Stephens', '3006 Mi St.', 'Brigham City', 601451380),
(70411414162, 55, 'Mercedes', 'Carpenter', 'Ap #505-1858 Lacinia Aven', 'Cape Coral', 660100020),
(70411414163, 56, 'Harper', 'Nielsen', 'P.O. Box 301, 5376 Tincid', 'Bradford', 681996600),
(70411414164, 57, 'Brooke', 'Bates', '481-5217 Sodales Av.', 'Santa Rosa', 675577917),
(70411414165, 58, 'Petra', 'Whitfield', 'Ap #405-7827 Nec, Road', 'Passaic', 689893994),
(70411414166, 59, 'Nathaniel', 'Roberson', 'P.O. Box 761, 7251 Nec, S', 'Middletown', 694810238),
(70411414167, 60, 'Paula', 'Dennis', 'Ap #123-2911 Diam. Ave', 'New Castle', 684263632),
(70411414168, 61, 'Maggie', 'Sheppard', 'Ap #299-9632 Mi Rd.', 'Coral Springs', 662857703),
(70411414169, 62, 'Veda', 'Bray', '1781 Donec Av.', 'Chattanooga', 622336949),
(70411414170, 63, 'Tatiana', 'Rivers', '153-488 Amet Street', 'Plantation', 627021264),
(70411414171, 64, 'Axel', 'Harrison', '869-7359 Gravida Av.', 'Cohoes', 608778281),
(70411414172, 65, 'Sasha', 'Alford', 'Ap #733-7758 Dapibus Aven', 'Nacogdoches', 628042694),
(70411414123, 66, 'Cedric', 'Leblanc', 'P.O. Box 973, 4820 Cum St', 'Jeannette', 649372009),
(70411414124, 67, 'Audrey', 'Cooke', 'P.O. Box 986, 8233 Lacini', 'Newark', 612006726),
(70411414125, 68, 'Davis', 'Thornton', '870-9685 Nulla Avenue', 'Signal Hill', 636711240),
(70411414126, 69, 'Ursula', 'Barton', 'Ap #118-6261 Nunc Avenue', 'Cody', 647476137),
(70411414127, 70, 'Macey', 'Lopez', '347-1980 Nunc, Street', 'Moultrie', 677487155),
(70411414128, 71, 'Neil', 'Underwood', '710-5601 Magna. Avenue', 'Ann Arbor', 643494703),
(70411414129, 72, 'Xenos', 'Guerrero', '1293 Turpis. Road', 'High Point', 600423420),
(70411414130, 73, 'Emma', 'Houston', '9555 Egestas. St.', 'Manitowoc', 697193529),
(70411414131, 74, 'Mary', 'Compton', 'Ap #225-9218 Nec Ave', 'Kansas City', 662065669),
(70411414132, 75, 'Rogan', 'Hoffman', 'Ap #752-2671 Est. Street', 'Broken Arrow', 608789662),
(70411414133, 76, 'Hammett', 'Burnett', 'Ap #879-7925 Donec Av.', 'Durango', 656315180),
(70411414134, 77, 'Kuame', 'Mccoy', '510-2146 Euismod St.', 'Inglewood', 639856411),
(70411414135, 78, 'Ruth', 'Joyner', '548-9771 Accumsan Avenue', 'Newburgh', 634719412),
(70411414136, 79, 'Jasmine', 'Dunn', '266 Suspendisse Ave', 'Darlington', 658027672),
(70411414137, 80, 'Kameko', 'Robinson', 'P.O. Box 506, 4778 Turpis', 'Manassas', 652799708),
(70411414138, 81, 'Gillian', 'Ingram', '369-9685 Odio. Av.', 'Glen Cove', 686978720),
(70411414139, 82, 'Claire', 'Macdonald', '769-1291 Nisi Street', 'Stevens Point', 681196848),
(70411414140, 83, 'Jennifer', 'Farmer', '6250 Dignissim Avenue', 'Dixon', 616046968),
(70411414141, 84, 'Ian', 'Schwartz', 'Ap #646-4980 Arcu. Street', 'Easthampton', 616522371),
(70411414142, 85, 'Omar', 'Thompson', 'P.O. Box 650, 8911 In Rd.', 'Two Rivers', 684035731),
(70411414143, 86, 'Mason', 'Harrington', 'Ap #428-2638 Quam. Avenue', 'Medford', 673018142),
(70411414144, 87, 'Gail', 'Rich', '5796 Lacus. Road', 'Springdale', 613495580),
(70411414145, 88, 'Jordan', 'Burgess', 'Ap #561-7246 Ultrices St.', 'Texarkana', 692349505),
(70411414146, 89, 'Knox', 'Wiley', 'Ap #247-8976 Lobortis. Av', 'Montpelier', 651266332),
(70411414147, 90, 'Roary', 'Sellers', 'P.O. Box 392, 8104 Amet, ', 'Sharon', 650088821),
(70411414148, 91, 'Ulysses', 'Drake', 'Ap #263-2221 Eleifend Rd.', 'Los Angeles', 686014122),
(70411414149, 92, 'Oprah', 'Bush', 'Ap #838-1709 Lorem Avenue', 'Bellflower', 688334567),
(70411414150, 93, 'Dean', 'Morrow', '7331 Enim St.', 'Rutland', 630187434),
(70411414151, 94, 'Mona', 'Peters', 'P.O. Box 754, 3502 Orci. ', 'Ypsilanti', 609056543),
(70411414152, 95, 'Chloe', 'Hodges', '459-9383 Erat St.', 'Butler', 664590178),
(70411414153, 96, 'Darius', 'Perez', '900-3028 Non, Road', 'Bradbury', 629773732),
(70411414154, 97, 'Ferdinand', 'Brooks', '5990 Dui St.', 'Milwaukee', 644675741),
(70411414155, 98, 'Jacob', 'Rodgers', '421-9508 Malesuada St.', 'Lawton', 695525429),
(70411414156, 99, 'Luke', 'Clarke', '4710 Dictum Rd.', 'Middletown', 619839883),
(70411414157, 100, 'Carter', 'Harding', '585-4742 Blandit Ave', 'Anchorage', 687949124),
(70411414158, 101, 'Caldwell', 'Carpenter', '1012 Elementum Road', 'Longview', 638689648),
(70411414159, 102, 'Leonard', 'Odonnell', '930-4434 Sit Ave', 'Sunnyvale', 641904618),
(70411414160, 103, 'Cassady', 'Kinney', 'P.O. Box 187, 9326 Tempor', 'Bozeman', 605908332),
(70411414161, 104, 'Eric', 'Blackburn', '652-3003 Vestibulum, Rd.', 'Frisco', 637837087),
(70411414162, 105, 'Zachary', 'Cardenas', '2102 Semper. St.', 'West Lafayette', 644781542),
(70411414163, 106, 'Plato', 'Hutchinson', '5783 Et, St.', 'Galesburg', 611613029),
(70411414164, 107, 'Merrill', 'Petersen', '877-4808 Massa. Road', 'Huntsville', 646805060),
(70411414165, 108, 'Orson', 'Tucker', '737-7208 Sed Rd.', 'Idabel', 679194906),
(70411414166, 109, 'Fritz', 'Merrill', '6662 Urna Ave', 'Melrose', 637535449),
(70411414167, 110, 'Ivan', 'Odonnell', '3277 Consequat, Road', 'Moscow', 686063769),
(70411414168, 111, 'Jack', 'Dyer', '134-8689 Ac Av.', 'Seal Beach', 668000879),
(70411414169, 112, 'Maisie', 'Acosta', '7059 Venenatis St.', 'Missoula', 667367622),
(70411414170, 113, 'Rhiannon', 'Beck', 'Ap #494-8985 Tellus Rd.', 'New Rochelle', 653920344),
(70411414171, 114, 'Vivien', 'jOE', 'Ap #831-2953 Sapien St.', 'Tustin', 644664283),
(7845612369, 116, 'JAN', 'KOWAL', 'TATATA', 'TATATA', 789456132);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wlasciciel_mieszkanie`
--

CREATE TABLE `wlasciciel_mieszkanie` (
  `wlasciciel_id` int(10) DEFAULT NULL,
  `mieszkanie_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `wlasciciel_mieszkanie`
--

INSERT INTO `wlasciciel_mieszkanie` (`wlasciciel_id`, `mieszkanie_id`) VALUES
(1, 1),
(1, 1),
(3, 2),
(7, 3),
(16, 4),
(17, 5),
(18, 6),
(19, 7),
(20, 8),
(21, 9),
(22, 10),
(23, 11),
(24, 12),
(25, 13),
(26, 14),
(27, 15),
(28, 16),
(29, 17),
(30, 18),
(31, 19),
(32, 20),
(33, 21),
(34, 22),
(35, 23),
(36, 24),
(37, 25),
(38, 26),
(39, 27),
(40, 28),
(41, 29),
(42, 30),
(43, 31),
(44, 32),
(45, 33),
(46, 34),
(47, 35),
(48, 36),
(49, 37),
(50, 38),
(1, 61),
(3, 62),
(7, 63),
(16, 64),
(17, 65),
(18, 66),
(19, 67),
(20, 68),
(22, 70),
(23, 71),
(24, 72),
(25, 73),
(26, 74),
(27, 75),
(28, 76),
(29, 77),
(30, 78),
(31, 79),
(32, 80),
(33, 81),
(34, 91),
(35, 92),
(36, 93),
(37, 94),
(38, 95),
(39, 96),
(40, 97),
(41, 98),
(42, 99),
(43, 100),
(44, 101),
(45, 102),
(46, 103),
(47, 104),
(48, 105),
(49, 106),
(50, 107),
(1, 108),
(1, 109);

-- --------------------------------------------------------

--
-- Struktura widoku `widok_mieszkanie_all`
--
DROP TABLE IF EXISTS `widok_mieszkanie_all`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `widok_mieszkanie_all`  AS  select `m`.`id_mieszkania` AS `id_mieszkania`,`m`.`nr_mieszkania` AS `nr_mieszkania`,`m`.`pietro` AS `pietro`,`m`.`powierzchnia` AS `powierzchnia`,`m`.`ilosc_pokoi` AS `ilosc_pokoi`,`m`.`piwnica_powierzchnia` AS `piwnica_powierzchnia`,`blok`.`id_bloku` AS `id_bloku`,`blok`.`ulica` AS `ulica`,`blok`.`ulica_nr` AS `ulica_nr`,`blok`.`miejscowosc` AS `miejscowosc` from (`mieszkanie` `m` join `blok` on((`blok`.`id_bloku` = `m`.`id_bloku`))) ;

-- --------------------------------------------------------

--
-- Struktura widoku `widok_mieszkanie_blok`
--
DROP TABLE IF EXISTS `widok_mieszkanie_blok`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `widok_mieszkanie_blok`  AS  select `m`.`id_mieszkania` AS `id_mieszkania`,`m`.`nr_mieszkania` AS `nr_mieszkania`,`m`.`pietro` AS `pietro`,`m`.`powierzchnia` AS `powierzchnia`,`m`.`ilosc_pokoi` AS `ilosc_pokoi`,`m`.`piwnica_powierzchnia` AS `piwnica_powierzchnia`,`blok`.`id_bloku` AS `id_bloku`,`blok`.`ulica` AS `ulica`,`blok`.`ulica_nr` AS `ulica_nr`,`blok`.`miejscowosc` AS `miejscowosc` from (`mieszkanie` `m` join `blok` on((`blok`.`id_bloku` = `m`.`id_bloku`))) ;

-- --------------------------------------------------------

--
-- Struktura widoku `widok_mieszkanie_oplaty`
--
DROP TABLE IF EXISTS `widok_mieszkanie_oplaty`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `widok_mieszkanie_oplaty`  AS  select `mieszkanie`.`id_mieszkania` AS `id_mieszkania`,`oplaty`.`id_oplat` AS `Oplata_Id`,((((`oplaty`.`czynsz` + `oplaty`.`prad`) + `oplaty`.`woda`) + `oplaty`.`gaz`) + `oplaty`.`remontowe`) AS `Suma` from (`oplaty` join `mieszkanie` on((`mieszkanie`.`id_mieszkania` = `oplaty`.`id_mieszkania`))) ;

-- --------------------------------------------------------

--
-- Struktura widoku `widok_mieszkanie_wlasciciel`
--
DROP TABLE IF EXISTS `widok_mieszkanie_wlasciciel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `widok_mieszkanie_wlasciciel`  AS  select `m`.`id_mieszkania` AS `id_mieszkania`,`m`.`id_bloku` AS `id_bloku`,`m`.`nr_mieszkania` AS `nr_mieszkania`,`m`.`pietro` AS `pietro`,`m`.`powierzchnia` AS `powierzchnia`,`m`.`ilosc_pokoi` AS `ilosc_pokoi`,`m`.`piwnica_powierzchnia` AS `piwnica_powierzchnia`,`wlasciciel_mieszkanie`.`wlasciciel_id` AS `wlasciciel_id`,`wlasciciel_mieszkanie`.`mieszkanie_id` AS `mieszkanie_id`,`wlasciciel`.`pesel` AS `pesel`,`wlasciciel`.`id` AS `id`,`wlasciciel`.`imie` AS `imie`,`wlasciciel`.`nazwisko` AS `nazwisko`,`wlasciciel`.`ulica` AS `ulica`,`wlasciciel`.`miejscowosc` AS `miejscowosc`,`wlasciciel`.`nr_telefonu` AS `nr_telefonu` from ((`mieszkanie` `m` join `wlasciciel_mieszkanie` on((`wlasciciel_mieszkanie`.`mieszkanie_id` = `m`.`id_mieszkania`))) join `wlasciciel` on((`wlasciciel`.`id` = `wlasciciel_mieszkanie`.`wlasciciel_id`))) ;

-- --------------------------------------------------------

--
-- Struktura widoku `wikok_ilosc_mieszkan_wlascicieli`
--
DROP TABLE IF EXISTS `wikok_ilosc_mieszkan_wlascicieli`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wikok_ilosc_mieszkan_wlascicieli`  AS  select `wlasciciel_mieszkanie`.`wlasciciel_id` AS `wlasciciel_id`,count(`wlasciciel_mieszkanie`.`mieszkanie_id`) AS `count(wlasciciel_mieszkanie.mieszkanie_id)` from `wlasciciel_mieszkanie` group by `wlasciciel_mieszkanie`.`wlasciciel_id` ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `blok`
--
ALTER TABLE `blok`
  ADD PRIMARY KEY (`id_bloku`),
  ADD UNIQUE KEY `id_bloku` (`id_bloku`),
  ADD KEY `nazwa_spoldzielni` (`nazwa_spoldzielni`),
  ADD KEY `nazwa_spoldzielni_2` (`nazwa_spoldzielni`);

--
-- Indexes for table `mieszkanie`
--
ALTER TABLE `mieszkanie`
  ADD PRIMARY KEY (`id_mieszkania`),
  ADD KEY `id_bloku` (`id_bloku`);

--
-- Indexes for table `oplaty`
--
ALTER TABLE `oplaty`
  ADD PRIMARY KEY (`id_oplat`),
  ADD KEY `id_mieszkania` (`id_mieszkania`),
  ADD KEY `id_mieszkania_2` (`id_mieszkania`);

--
-- Indexes for table `pracownik`
--
ALTER TABLE `pracownik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `pesel` (`pesel`),
  ADD KEY `nazwa_spoldzielni_fk` (`nazwa_spoldzielni_fk`),
  ADD KEY `pesel_2` (`pesel`);

--
-- Indexes for table `remont`
--
ALTER TABLE `remont`
  ADD PRIMARY KEY (`id_remont`),
  ADD KEY `id_bloku` (`id_bloku`);

--
-- Indexes for table `spoldzielnia_mieszkaniowa`
--
ALTER TABLE `spoldzielnia_mieszkaniowa`
  ADD PRIMARY KEY (`nazwa_spoldzielni`),
  ADD UNIQUE KEY `nazwa_spoldzielni` (`nazwa_spoldzielni`),
  ADD KEY `nazwa_spoldzielni_2` (`nazwa_spoldzielni`);

--
-- Indexes for table `wlasciciel`
--
ALTER TABLE `wlasciciel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wlasciciel_mieszkanie`
--
ALTER TABLE `wlasciciel_mieszkanie`
  ADD KEY `wlasciciel_id` (`wlasciciel_id`),
  ADD KEY `mieszkanie_id` (`mieszkanie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `blok`
--
ALTER TABLE `blok`
  MODIFY `id_bloku` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT dla tabeli `mieszkanie`
--
ALTER TABLE `mieszkanie`
  MODIFY `id_mieszkania` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT dla tabeli `oplaty`
--
ALTER TABLE `oplaty`
  MODIFY `id_oplat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;
--
-- AUTO_INCREMENT dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT dla tabeli `remont`
--
ALTER TABLE `remont`
  MODIFY `id_remont` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT dla tabeli `wlasciciel`
--
ALTER TABLE `wlasciciel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `blok`
--
ALTER TABLE `blok`
  ADD CONSTRAINT `blok_spoldzielnia_fk` FOREIGN KEY (`nazwa_spoldzielni`) REFERENCES `spoldzielnia_mieszkaniowa` (`nazwa_spoldzielni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `mieszkanie`
--
ALTER TABLE `mieszkanie`
  ADD CONSTRAINT `mieszkanie_ibfk_1` FOREIGN KEY (`id_bloku`) REFERENCES `blok` (`id_bloku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  ADD CONSTRAINT `pracownik_spoldzielnia_fk` FOREIGN KEY (`nazwa_spoldzielni_fk`) REFERENCES `spoldzielnia_mieszkaniowa` (`nazwa_spoldzielni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `remont`
--
ALTER TABLE `remont`
  ADD CONSTRAINT `remont_blok_fk` FOREIGN KEY (`id_bloku`) REFERENCES `blok` (`id_bloku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `wlasciciel_mieszkanie`
--
ALTER TABLE `wlasciciel_mieszkanie`
  ADD CONSTRAINT `wlasciciel_mieszkanie_ibfk_1` FOREIGN KEY (`wlasciciel_id`) REFERENCES `wlasciciel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
