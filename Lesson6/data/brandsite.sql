-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 13 2019 г., 21:01
-- Версия сервера: 5.7.23
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `brandsite`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `imageSrc` text NOT NULL,
  `imageAlt` text NOT NULL,
  `productName` text NOT NULL,
  `price` int(11) NOT NULL,
  `quantaty` int(11) NOT NULL,
  `color` text NOT NULL,
  `size` text NOT NULL,
  `rating` int(11) NOT NULL,
  `sex` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `imageSrc`, `imageAlt`, `productName`, `price`, `quantaty`, `color`, `size`, `rating`, `sex`) VALUES
(127, '/img/g1.jpg', 'image of product in cart', 'Rebox Zane', 52, 1, 'red', 'XXL', 3, 'm'),
(128, '/img/g2.jpg', 'image of product in cart', 'Rebox Zane', 52, 1, 'red', 'XXL', 3, 'w'),
(129, '/img/g3.jpg', 'image of product in cart', 'Mango People T-shirt', 52, 1, 'red', 'XXL', 3, 'm'),
(130, '/img/g4.jpg', 'image of product in cart', 'Mango People T-shirt', 52, 1, 'red', 'XXL', 3, 'w'),
(131, '/img/g5.jpg', 'image of product in cart', 'Rebox Zane', 52, 1, 'red', 'XXL', 3, 'w'),
(132, '/img/g6.jpg', 'image of product in cart', 'Rebox Zane', 52, 1, 'red', 'XXL', 3, 'w'),
(133, '/img/g7.jpg', 'image of product in cart', 'Mango People T-shirt', 52, 1, 'red', 'XXL', 3, 'm'),
(134, '/img/g8.jpg', 'image of product in cart', 'Mango People T-shirt', 52, 1, 'red', 'XXL', 3, 'm');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
