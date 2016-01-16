-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Sty 2016, 11:11
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
(5, 'Kawasaki', '22', 'Kraków', 'Stonka'),
(6, 'Ninja', '12', 'Kraków', 'Stonka'),
(7, 'Wawa', '2', 'Kraków', 'Stonka'),
(8, 'Delikatne', '112', 'Kraków', 'Stonka'),
(9, 'Acer', '69', 'Kraków', 'Stonka'),
(10, 'PepsiMax', '5', 'Skawina', 'Stonka'),
(11, 'JAJAJ', '22', 'Gazowana222', 'Stonka'),
(12, 'Rynek', '1', 'Skawina', 'Stonka');

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
(16, 2, 1, 1, 42, 2, 14),
(20, 2, 5, 3, 62, 3, 14),
(21, 2, 6, 3, 44, 3, 14),
(28, 5, 1, 1, 33, 1, 6),
(30, 5, 3, 2, 33, 1, 6),
(32, 5, 5, 3, 33, 1, 6),
(33, 5, 6, 3, 33, 1, 6),
(34, 6, 1, 1, 33, 1, 6),
(35, 6, 2, 1, 33, 1, 6),
(36, 6, 3, 2, 33, 1, 6),
(37, 6, 4, 2, 33, 1, 6),
(38, 6, 5, 3, 33, 1, 6),
(39, 6, 6, 3, 33, 1, 6),
(40, 7, 1, 1, 33, 1, 6),
(41, 7, 2, 1, 33, 1, 6),
(42, 7, 3, 2, 33, 1, 6),
(43, 7, 4, 2, 33, 1, 6),
(44, 7, 5, 3, 33, 1, 6),
(45, 7, 6, 3, 33, 1, 6),
(46, 8, 1, 1, 33, 1, 6),
(47, 8, 2, 1, 33, 1, 6),
(48, 8, 3, 2, 33, 1, 6),
(49, 8, 4, 2, 33, 1, 6),
(50, 8, 55, 5, 5, 5, 5),
(51, 8, 6, 3, 33, 1, 6),
(52, 9, 1, 1, 33, 1, 6),
(53, 9, 2, 1, 33, 1, 6),
(54, 9, 3, 2, 33, 1, 6),
(55, 9, 4, 2, 33, 1, 6),
(56, 9, 5, 3, 33, 1, 6),
(57, 9, 6, 3, 33, 1, 6),
(58, 10, 1, 1, 33, 1, 6),
(59, 10, 2, 1, 33, 1, 6),
(60, 10, 3, 2, 33, 1, 6),
(61, 10, 44, 44, 44, 44, 44),
(64, 11, 1, 1, 33, 1, 6666),
(70, 8, 8, 8, 8, 8, 8),
(71, 9, 9, 9, 9, 9, 9),
(73, 2, 1, 1, 1, 1, 1),
(74, 3, 3, 3, 3, 3, 3),
(75, 3, 3, 3, 3, 3, 3),
(76, 9, 9, 9, 9, 9, 9);

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
(19, 20, 12, '2015', 1, 1, 11, 1, 1),
(20, 20, 11, '2015', 2, 2, 2, 2, 2);

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
(1, 'Krzysztof', 'Pezi', 93103336358, 'Chmieleniec 1', 'Krakow', 'Prezes', 0, 666777888, 'Stonka'),
(6, 'aa', 'Grzyb', 89141236258, 'Morska 11', 'Krakow', 'Sekretarka', 9223372036854775807, 996789123, 'Stonka'),
(8, 'hjkh', 'jh', 8789798, 'jkh', 'j', 'hjk', 4465465, 54654, 'Stonka'),
(9, 'Mateusz', 'Fajny', 9898989865, 'PIlsudskiego 18', 'Skawian', 'SZEF', 7897895456, 2132154, 'Stonka'),
(10, 'SSS', 'k', 888, 'k', 'k', '8', 88, 88, 'Stonka');

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
(93100104147, 1, 'mateusz', 'Skocz', 'Pilsudskiego 18', 'Skawina', 654789123),
(89551415963, 3, 'Alicja', 'Zlopek', 'Straszna 1', 'Krakow', 458729963),
(92889415963, 7, 'Alibaba', 'Rozbujnik', 'Dzina 1', 'Krakow', 969789963),
(89, 8, 'Lukasz', 'BLABLA', 'jkl', 'iop', 123),
(891, 10, 'JKO', 'BLABLA', 'PIlsu', 'iop', 123),
(892, 11, 'Pepsi', 'BLABLA', 'RYNEK 1', 'iop', 123),
(893, 12, 'Cola', 'zero', 'jkl', 'iop', 123),
(894, 13, 'I', 'PHONE', 'PIlsu', 'iop', 123),
(895, 14, 'Apple', 'PIG', 'RYNEK 12', 'iop', 123),
(896, 15, 'Luk', 'BLABLA', 'RYNEK 13', 'iop', 123);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wlasciciel_mieszkanie`
--

CREATE TABLE `wlasciciel_mieszkanie` (
  `wlasciciel_id` int(10) DEFAULT NULL,
  `mieszkanie_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `wlasciciel_mieszkanie`
--

INSERT INTO `wlasciciel_mieszkanie` (`wlasciciel_id`, `mieszkanie_id`) VALUES
(7, 30),
(10, 33),
(12, 35),
(13, 36),
(14, 37),
(15, 38),
(7, 36);

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
  MODIFY `id_bloku` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT dla tabeli `mieszkanie`
--
ALTER TABLE `mieszkanie`
  MODIFY `id_mieszkania` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT dla tabeli `oplaty`
--
ALTER TABLE `oplaty`
  MODIFY `id_oplat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT dla tabeli `remont`
--
ALTER TABLE `remont`
  MODIFY `id_remont` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `wlasciciel`
--
ALTER TABLE `wlasciciel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
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
  ADD CONSTRAINT `mieszkanie_ibfk_2` FOREIGN KEY (`id_bloku`) REFERENCES `blok` (`id_bloku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `oplaty`
--
ALTER TABLE `oplaty`
  ADD CONSTRAINT `oplaty_ibfk_1` FOREIGN KEY (`id_mieszkania`) REFERENCES `mieszkanie` (`id_mieszkania`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `wl-m_m-fk` FOREIGN KEY (`mieszkanie_id`) REFERENCES `mieszkanie` (`id_mieszkania`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wlasciciel_mieszkanie_ibfk_1` FOREIGN KEY (`wlasciciel_id`) REFERENCES `wlasciciel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
