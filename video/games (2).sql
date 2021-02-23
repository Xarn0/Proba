-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 14 2021 г., 12:49
-- Версия сервера: 10.4.12-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `games`
--

-- --------------------------------------------------------

--
-- Структура таблицы `инвентарь`
--

CREATE TABLE `инвентарь` (
  `id` int(11) NOT NULL,
  `Игрок` varchar(50) CHARACTER SET utf8 NOT NULL,
  `капитаны` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Корабли` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Экипаж` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '11'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `инвентарь`
--

INSERT INTO `инвентарь` (`id`, `Игрок`, `капитаны`, `Корабли`, `Экипаж`) VALUES
(105, 'Валькирия', 'Мордекай Смит', 'Аляска', '11'),
(106, 'Валькирия', 'Фарагут', 'Беда', '11'),
(108, 'Валькирия', NULL, 'Аврора', '11'),
(110, '4икаБом', 'Мордекай Смит', 'Беда', '11'),
(112, 'Валя200211', NULL, NULL, '11'),
(113, 'Валя2002', NULL, NULL, '11'),
(114, 'looolol', NULL, NULL, '11'),
(115, '22222222', NULL, NULL, '11'),
(116, '2222222222222', NULL, NULL, '11'),
(125, '4икаБом', NULL, 'Аляска', '11'),
(126, '4икаБом', NULL, 'Аляска', '11'),
(127, '4икаБом', NULL, 'Аризона', '11'),
(128, '4икаБом', NULL, 'Аляска', '11'),
(129, '4икаБом', NULL, NULL, '11'),
(130, '4икаБом', NULL, 'Аляска', '11'),
(131, '4икаБом', 'Фрэнсис Дрейк', NULL, '11'),
(132, '4икаБом', 'Хайреддин', NULL, '11'),
(133, '4икаБом', 'Моргана', NULL, '11'),
(134, 'Валькирия', NULL, 'Беда', '11'),
(135, 'Валькирия', NULL, 'Беда', '11'),
(136, 'Валькирия', NULL, 'Беда', '11'),
(137, '4икаБом', NULL, 'Аляска', '11'),
(138, '4икаБом', NULL, NULL, '11'),
(139, '4икаБом', NULL, NULL, '11'),
(140, '4икаБом', NULL, NULL, '11'),
(141, '4икаБом', NULL, NULL, '11'),
(142, '4икаБом', 'Фарагут', NULL, '11'),
(143, '4икаБом', 'Хайреддин', NULL, '11'),
(144, '4икаБом', 'Фарагут', NULL, '11'),
(145, '4икаБом', NULL, 'Аризона', '11'),
(146, '4икаБом', 'Моргана', NULL, '11'),
(147, '4икаБом', NULL, 'Аврора', '11'),
(148, '4икаБом', 'Хайреддин', NULL, '11'),
(149, '4икаБом', NULL, 'Аврора', '11'),
(150, '4икаБом', NULL, 'Аризона', '11'),
(151, '4икаБом', NULL, 'Аврора', '11'),
(152, '4икаБом', NULL, 'Аляска', '11'),
(153, '4икаБом', NULL, 'Аризона', '11'),
(154, '4икаБом', 'Уильям Кидд', NULL, '11'),
(155, '4икаБом', NULL, 'Аризона', '11'),
(156, '4икаБом', 'Фарагут', NULL, '11'),
(157, '4икаБом', NULL, 'Аляска', '11');

-- --------------------------------------------------------

--
-- Структура таблицы `капитаны`
--

CREATE TABLE `капитаны` (
  `id` int(11) NOT NULL,
  `Имя` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `стоимость` int(11) NOT NULL,
  `редкость` int(10) NOT NULL,
  `авторитет` int(10) NOT NULL,
  `фото` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `капитаны`
--

INSERT INTO `капитаны` (`id`, `Имя`, `стоимость`, `редкость`, `авторитет`, `фото`) VALUES
(1, 'Фарагут', 200, 3, 5, '../img/7e485b9a137385135f99fd04bc5a41f5.jpg'),
(2, 'Мордекай Смит', 300, 5, 6, '../img/f8514aca0e88353e58e20c6248871f68.jpg'),
(3, 'Хайреддин', 485, 5, 8, '../img/2cacb1dfb4a5f4eb8e619107c88bfc31.jpg'),
(4, 'Фрэнсис Дрейк', 450, 6, 6, '../img/b0a4dcf05f5ff09e0832b2e658eec398.jpg'),
(5, 'Уильям Кидд', 700, 9, 4, '../img/4df8d0b91b941e6e59d4929bb4b42ccf.jpg'),
(6, 'Моргана', 820, 10, 9, '../img/d7a396814899fc20682bfa0310868239.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `корабли`
--

CREATE TABLE `корабли` (
  `id` int(11) NOT NULL,
  `корабли` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `стоимость` int(11) NOT NULL,
  `скорость` int(11) NOT NULL,
  `редкость` int(11) NOT NULL,
  `устойчивость` int(11) NOT NULL,
  `фото` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `корабли`
--

INSERT INTO `корабли` (`id`, `корабли`, `стоимость`, `скорость`, `редкость`, `устойчивость`, `фото`) VALUES
(1, 'Аврора', 350, 100, 3, 7, '../img/s600.webp'),
(2, 'Аляска', 400, 120, 3, 5, '../img/s600.webp'),
(3, 'Аризона', 500, 115, 4, 8, '../img/s600.webp'),
(4, 'Беда', 700, 170, 7, 10, '../img/s600.webp');

-- --------------------------------------------------------

--
-- Структура таблицы `задание`
--

CREATE TABLE `задание` (
  `id` int(11) NOT NULL,
  `Игрок` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Задание` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `звание`
--

CREATE TABLE `звание` (
  `id` int(11) NOT NULL,
  `Звание` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'Рядовой'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `звание`
--

INSERT INTO `звание` (`id`, `Звание`) VALUES
(2, 'Генерал'),
(1, 'Рядовой');

-- --------------------------------------------------------

--
-- Структура таблицы `лвл`
--

CREATE TABLE `лвл` (
  `id` int(11) NOT NULL,
  `Лвл` int(11) NOT NULL DEFAULT 1,
  `Опыт` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `лвл`
--

INSERT INTO `лвл` (`id`, `Лвл`, `Опыт`) VALUES
(1, 1, 100),
(2, 2, 120),
(3, 3, 150),
(4, 4, 200),
(5, 5, 280),
(6, 6, 320);

-- --------------------------------------------------------

--
-- Структура таблицы `легкие`
--

CREATE TABLE `легкие` (
  `id` int(11) NOT NULL,
  `Стоимость` int(5) NOT NULL,
  `Опыт` int(5) NOT NULL,
  `Описание` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Сложность` int(2) NOT NULL,
  `Название` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `легкие`
--

INSERT INTO `легкие` (`id`, `Стоимость`, `Опыт`, `Описание`, `Сложность`, `Название`) VALUES
(2, 25, 25, 'перевоз', 1, 'Перевозка');

-- --------------------------------------------------------

--
-- Структура таблицы `список друзей`
--

CREATE TABLE `список друзей` (
  `Игрок` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `Друг` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `сложные`
--

CREATE TABLE `сложные` (
  `id` int(11) NOT NULL,
  `Название` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Описание` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Опыт` int(11) NOT NULL,
  `Сложность` int(11) NOT NULL,
  `Стоимость` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `средние`
--

CREATE TABLE `средние` (
  `id` int(11) NOT NULL,
  `Название` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Стоимость` int(11) NOT NULL,
  `Опыт` int(11) NOT NULL,
  `Описание` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Сложность` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `статистика`
--

CREATE TABLE `статистика` (
  `id` int(11) NOT NULL,
  `Игр` int(11) NOT NULL DEFAULT 0,
  `Побед` int(11) NOT NULL DEFAULT 0,
  `Поражений` int(11) NOT NULL DEFAULT 0,
  `Пиратство` int(11) NOT NULL DEFAULT 0,
  `Регистрации` datetime NOT NULL DEFAULT current_timestamp(),
  `Грузов` int(11) NOT NULL DEFAULT 0,
  `Игрок` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `статистика`
--

INSERT INTO `статистика` (`id`, `Игр`, `Побед`, `Поражений`, `Пиратство`, `Регистрации`, `Грузов`, `Игрок`) VALUES
(19, 0, 0, 0, 0, '2021-02-11 21:40:30', 0, 'Валькирия'),
(21, 0, 0, 0, 0, '2021-02-01 22:19:25', 0, '4икаБом'),
(22, 0, 0, 0, 0, '2021-02-10 22:27:29', 0, 'Валя200211'),
(23, 0, 0, 0, 0, '2021-02-02 22:28:08', 0, 'Валя2002'),
(24, 0, 0, 0, 0, '2021-02-11 22:29:39', 0, 'looolol'),
(25, 0, 0, 0, 0, '2021-02-11 22:30:31', 0, '22222222'),
(26, 0, 0, 0, 0, '2021-02-11 22:31:19', 0, '2222222222222');

-- --------------------------------------------------------

--
-- Структура таблицы `учетная запись`
--

CREATE TABLE `учетная запись` (
  `id` int(11) NOT NULL,
  `Ник` varchar(20) NOT NULL,
  `Пароль` varchar(32) NOT NULL,
  `Звание` varchar(20) NOT NULL DEFAULT 'Рядовой',
  `Лвл` int(11) NOT NULL DEFAULT 1,
  `Опыт` int(11) NOT NULL DEFAULT 0,
  `Инвентарь` varchar(50) NOT NULL,
  `Квенки` int(11) NOT NULL DEFAULT 100,
  `Статистика` varchar(50) NOT NULL,
  `Друзья` varchar(50) DEFAULT NULL,
  `Друг` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `учетная запись`
--

INSERT INTO `учетная запись` (`id`, `Ник`, `Пароль`, `Звание`, `Лвл`, `Опыт`, `Инвентарь`, `Квенки`, `Статистика`, `Друзья`, `Друг`) VALUES
(25, 'Валькирия', '109889f941630d269546335f728f3558', 'Генерал', 1, 0, 'Валькирия', 7900, 'Валькирия', NULL, NULL),
(29, '4икаБом', '109889f941630d269546335f728f3558', 'Рядовой', 1, 0, '4икаБом', 7225, '4икаБом', NULL, NULL),
(30, 'Валя200211', '8cfa2282b17de0a598c010f5f0109e7d', 'Рядовой', 1, 0, 'Валя200211', 100, 'Валя200211', NULL, NULL),
(31, 'Валя2002', '109889f941630d269546335f728f3558', 'Рядовой', 1, 0, 'Валя2002', 100, 'Валя2002', NULL, NULL),
(32, 'looolol', '109889f941630d269546335f728f3558', 'Рядовой', 1, 0, 'looolol', 100, 'looolol', NULL, NULL),
(33, '22222222', '8cfa2282b17de0a598c010f5f0109e7d', 'Рядовой', 1, 0, '22222222', 10045, '22222222', NULL, NULL),
(34, '2222222222222', '8cfa2282b17de0a598c010f5f0109e7d', 'Рядовой', 1, 0, '2222222222222', 100, '2222222222222', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `тип`
--

CREATE TABLE `тип` (
  `id` int(11) NOT NULL,
  `Тип` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Описание` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `тип`
--

INSERT INTO `тип` (`id`, `Тип`, `Описание`) VALUES
(1, 'Фрегат', 'тип военно-морских судов:'),
(2, 'Катер ', 'общее название небольших судов или небольших кораблей военно-морского флота.\r\n\r\n');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `инвентарь`
--
ALTER TABLE `инвентарь`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Капитаны` (`капитаны`),
  ADD KEY `Корабли` (`Корабли`),
  ADD KEY `Игрок` (`Игрок`) USING BTREE;

--
-- Индексы таблицы `капитаны`
--
ALTER TABLE `капитаны`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Имя` (`Имя`);

--
-- Индексы таблицы `корабли`
--
ALTER TABLE `корабли`
  ADD PRIMARY KEY (`id`),
  ADD KEY `корабли` (`корабли`);

--
-- Индексы таблицы `задание`
--
ALTER TABLE `задание`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Игрок` (`Игрок`),
  ADD KEY `Задание` (`Задание`);

--
-- Индексы таблицы `звание`
--
ALTER TABLE `звание`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Звание` (`Звание`);

--
-- Индексы таблицы `лвл`
--
ALTER TABLE `лвл`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Лвл` (`Лвл`);

--
-- Индексы таблицы `легкие`
--
ALTER TABLE `легкие`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Название` (`Название`);

--
-- Индексы таблицы `список друзей`
--
ALTER TABLE `список друзей`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Игрок` (`Игрок`),
  ADD UNIQUE KEY `Друг` (`Друг`);

--
-- Индексы таблицы `сложные`
--
ALTER TABLE `сложные`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Название` (`Название`);

--
-- Индексы таблицы `средние`
--
ALTER TABLE `средние`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Название` (`Название`);

--
-- Индексы таблицы `статистика`
--
ALTER TABLE `статистика`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Игрок_2` (`Игрок`),
  ADD KEY `Игрок` (`Игрок`);

--
-- Индексы таблицы `учетная запись`
--
ALTER TABLE `учетная запись`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Ник` (`Ник`),
  ADD KEY `Звание` (`Звание`),
  ADD KEY `Лвл` (`Лвл`),
  ADD KEY `Инвентарь` (`Инвентарь`),
  ADD KEY `Друзья` (`Друзья`),
  ADD KEY `Друг` (`Друг`),
  ADD KEY `Статистика_2` (`Статистика`);

--
-- Индексы таблицы `тип`
--
ALTER TABLE `тип`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Тип` (`Тип`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `инвентарь`
--
ALTER TABLE `инвентарь`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT для таблицы `капитаны`
--
ALTER TABLE `капитаны`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `корабли`
--
ALTER TABLE `корабли`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `задание`
--
ALTER TABLE `задание`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `звание`
--
ALTER TABLE `звание`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `лвл`
--
ALTER TABLE `лвл`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `легкие`
--
ALTER TABLE `легкие`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `список друзей`
--
ALTER TABLE `список друзей`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `сложные`
--
ALTER TABLE `сложные`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `средние`
--
ALTER TABLE `средние`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `статистика`
--
ALTER TABLE `статистика`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `учетная запись`
--
ALTER TABLE `учетная запись`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `тип`
--
ALTER TABLE `тип`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `инвентарь`
--
ALTER TABLE `инвентарь`
  ADD CONSTRAINT `инвентарь_ibfk_1` FOREIGN KEY (`Капитаны`) REFERENCES `капитаны` (`Имя`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `инвентарь_ibfk_2` FOREIGN KEY (`Корабли`) REFERENCES `корабли` (`корабли`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `инвентарь_ibfk_3` FOREIGN KEY (`Игрок`) REFERENCES `учетная запись` (`Инвентарь`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `задание`
--
ALTER TABLE `задание`
  ADD CONSTRAINT `задание_ibfk_1` FOREIGN KEY (`Задание`) REFERENCES `легкие` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `задание_ibfk_2` FOREIGN KEY (`Задание`) REFERENCES `средние` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `задание_ibfk_3` FOREIGN KEY (`Задание`) REFERENCES `сложные` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `список друзей`
--
ALTER TABLE `список друзей`
  ADD CONSTRAINT `список друзей_ibfk_1` FOREIGN KEY (`Игрок`) REFERENCES `учетная запись` (`Друзья`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `список друзей_ibfk_2` FOREIGN KEY (`Друг`) REFERENCES `учетная запись` (`Друг`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `статистика`
--
ALTER TABLE `статистика`
  ADD CONSTRAINT `статистика_ibfk_1` FOREIGN KEY (`Игрок`) REFERENCES `учетная запись` (`Статистика`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `учетная запись`
--
ALTER TABLE `учетная запись`
  ADD CONSTRAINT `учетная запись_ibfk_1` FOREIGN KEY (`Звание`) REFERENCES `звание` (`Звание`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `учетная запись_ibfk_2` FOREIGN KEY (`Лвл`) REFERENCES `лвл` (`Лвл`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `учетная запись_ibfk_5` FOREIGN KEY (`Друзья`) REFERENCES `список друзей` (`Игрок`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
