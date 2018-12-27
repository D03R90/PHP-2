-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 27 2018 г., 21:53
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
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Смартфоны'),
(2, 'Планшеты'),
(3, 'Ноутбуки'),
(4, 'ПК'),
(5, 'Аудиотехника'),
(6, 'Телевизоры'),
(7, 'Игры и приставки'),
(8, 'Уценка');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `product_id`, `text`) VALUES
(1, 1, 4, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque pena'),
(2, 2, 4, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque pena.'),
(3, 3, 2, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque pena.'),
(4, 4, 3, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque pena.');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `photo`, `short_description`, `description`, `price`) VALUES
(1, 8, 'Lorem', 'no-photo.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus', '20000'),
(2, 1, 'Lorem', 'no-photo.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus', '19000'),
(3, 1, 'Lorem', 'no-photo.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus', '20000'),
(4, 6, 'Lorem', 'no-photo.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus', '22000');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `groups_id` int(11) NOT NULL,
  `login` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(32) NOT NULL,
  `surname` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `groups_id`, `login`, `password`, `name`, `surname`, `email`, `phone`, `description`) VALUES
(1, 1, 'admin', '2222', 'Вадим', 'Фамилия', 'mail@mail.ru', '8(915)110-22-34', 'Lorem ipsum dolor'),
(2, 1, 'user', '2222', 'Денис', 'Фамилия', 'mail@mail.ru', '8(915)110-56-34', 'Lorem ipsum dolor'),
(3, 1, 'user2', '2222', 'Маша', 'Фамилия', 'mail@mail.ru', '8(915)110-22-12', 'Lorem ipsum dolor'),
(4, 1, 'user', '2222', 'Олег', 'Фамилия', 'mail@mail.ru', '8(915)110-45-34', 'Lorem ipsum dolor'),
(5, 1, 'user', '2222', 'Катя', 'Фамилия', 'mail@mail.ru', '8(915)110-22-65', 'Lorem ipsum dolor'),
(6, 1, 'user', '2222', 'Лида', 'Фамилия', 'mail@mail.ru', '8(915)110-23-34', 'Lorem ipsum dolor');

-- --------------------------------------------------------

--
-- Структура таблицы `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
