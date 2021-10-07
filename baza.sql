-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Czas generowania: 05 Paź 2021, 21:29
-- Wersja serwera: 10.4.18-MariaDB
-- Wersja PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `baza`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dania`
--

CREATE TABLE `dania` (
  `id` int(11) NOT NULL,
  `typ` int(11) NOT NULL,
  `nazwa` text NOT NULL,
  `cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `dania`
--

INSERT INTO `dania` (`id`, `typ`, `nazwa`, `cena`) VALUES
(1, 1, 'Pomidorowa', 10),
(2, 1, 'Rosół', 12),
(3, 1, 'Żurek', 14),
(4, 2, 'De volaille', 19),
(5, 2, 'Polędwica wołowa', 35),
(6, 2, 'Gulasz', 24),
(7, 3, 'Frytki', 6),
(8, 3, 'Tatar', 18),
(9, 3, 'Pajda chleba ze smalcem', 8),
(10, 4, 'Woda', 5),
(11, 4, 'Coca-Cola', 7),
(12, 4, 'Fanta', 7),
(13, 4, 'Herbata', 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lokale`
--

CREATE TABLE `lokale` (
  `id` int(11) NOT NULL,
  `nazwa` text NOT NULL,
  `miasto` text NOT NULL,
  `ulica` text NOT NULL,
  `numer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `lokale`
--

INSERT INTO `lokale` (`id`, `nazwa`, `miasto`, `ulica`, `numer`) VALUES
(1, 'Gdańskie Jadło', 'Gdańsk', 'Długa', 35),
(2, 'Warszawskie Jadło', 'Warszawa', 'Aleje Ujazdowskie', 157),
(3, 'Góralskie Jadło', 'Zakopane', 'Krupówki', 48);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  `stanowisko` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `imie`, `nazwisko`, `stanowisko`) VALUES
(1, 'Jan', 'Nowak', 1),
(2, 'Beata', 'Smyk', 1),
(3, 'Szymon', 'Cyren', 2),
(4, 'Oskar', 'Kowalski', 3),
(5, 'Julia', 'Kusznik', 3),
(6, 'Bartosz', 'Chybieński', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `id` int(11) NOT NULL,
  `nr_stolika` int(11) NOT NULL,
  `data_rez` date NOT NULL,
  `liczba_osob` int(11) NOT NULL,
  `telefon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dania`
--
ALTER TABLE `dania`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lokale`
--
ALTER TABLE `lokale`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dania`
--
ALTER TABLE `dania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `lokale`
--
ALTER TABLE `lokale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
