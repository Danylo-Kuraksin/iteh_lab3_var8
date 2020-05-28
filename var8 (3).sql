-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 16 2020 г., 19:56
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `var8`
--

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `ID_Client` int(11) NOT NULL,
  `name` text NOT NULL,
  `login` text NOT NULL,
  `password` int(11) NOT NULL,
  `IP` text NOT NULL,
  `balance` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`ID_Client`, `name`, `login`, `password`, `IP`, `balance`) VALUES
(1, 'Антон', 'anton', 123, '192.168.1.1', 45),
(2, 'test', 'test', 123, 'test', 22);

-- --------------------------------------------------------

--
-- Структура таблицы `seanse`
--

CREATE TABLE `seanse` (
  `ID_Seanse` int(11) NOT NULL,
  `start` text NOT NULL,
  `stop` text NOT NULL,
  `in_trafic` int(128) NOT NULL,
  `out_trafic` int(128) NOT NULL,
  `FID_Client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `seanse`
--

INSERT INTO `seanse` (`ID_Seanse`, `start`, `stop`, `in_trafic`, `out_trafic`, `FID_Client`) VALUES
(1, '2019-04-95', '2020-20-20', 27, 41, 1),
(2, '2020-04-31', '2021-04-32', 875, 754, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
