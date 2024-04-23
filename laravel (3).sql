-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 24 2024 г., 01:26
-- Версия сервера: 5.7.39-log
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `carts`
--

INSERT INTO `carts` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 34, NULL, NULL),
(12, 46, '2024-04-23 20:15:39', '2024-04-23 20:15:39'),
(16, 38, '2024-04-23 22:20:16', '2024-04-23 22:20:16');

-- --------------------------------------------------------

--
-- Структура таблицы `Categories`
--

CREATE TABLE `Categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Categories`
--

INSERT INTO `Categories` (`id`, `category_name`, `updated_at`, `created_at`) VALUES
(2, 'Clothing', NULL, '2024-04-23 10:12:40'),
(3, 'Books', NULL, '2024-04-23 10:12:40'),
(7, 'printers', '2024-04-23 07:46:24', '2024-04-23 07:46:24'),
(10, 'try', '2024-04-23 22:22:01', '2024-04-23 22:22:01');

-- --------------------------------------------------------

--
-- Структура таблицы `ClientOrderDetails`
--

CREATE TABLE `ClientOrderDetails` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ClientOrders`
--

CREATE TABLE `ClientOrders` (
  `order_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `clients_role`
--

CREATE TABLE `clients_role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `clients_role`
--

INSERT INTO `clients_role` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'client');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Orders`
--

CREATE TABLE `Orders` (
  `order_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Orders`
--

INSERT INTO `Orders` (`order_id`, `client_id`, `order_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-01-15', 'Pending', NULL, NULL),
(2, 2, '2022-01-16', 'Shipped', NULL, NULL),
(3, 3, '2022-01-17', 'Delivered', NULL, NULL),
(4, 38, '2024-04-23', 'Получен', '2024-04-23 21:59:46', '2024-04-23 21:59:46'),
(5, 38, '2024-04-23', 'Получен', '2024-04-23 22:00:51', '2024-04-23 22:00:51'),
(6, 38, '2024-04-23', 'Получен', '2024-04-23 22:02:30', '2024-04-23 22:02:30'),
(7, 38, '2024-04-23', 'Получен', '2024-04-23 22:02:52', '2024-04-23 22:02:52'),
(8, 38, '2024-04-23', 'Получен', '2024-04-23 22:03:26', '2024-04-23 22:03:26'),
(9, 38, '2024-04-23', 'Получен', '2024-04-23 22:05:11', '2024-04-23 22:05:11'),
(10, 38, '2024-04-23', 'Получен', '2024-04-23 22:06:25', '2024-04-23 22:06:25'),
(11, 38, '2024-04-23', 'Получен', '2024-04-23 22:06:40', '2024-04-23 22:06:40'),
(12, 38, '2024-04-23', 'Получен', '2024-04-23 22:06:48', '2024-04-23 22:06:48'),
(13, 38, '2024-04-23', 'Получен', '2024-04-23 22:08:17', '2024-04-23 22:08:17'),
(14, 38, '2024-04-23', 'Получен', '2024-04-23 22:19:20', '2024-04-23 22:19:20'),
(15, 38, '2024-04-23', 'Получен', '2024-04-23 22:19:29', '2024-04-23 22:19:29'),
(16, 47, '2024-04-23', 'Получен', '2024-04-23 22:21:37', '2024-04-23 22:21:37');

-- --------------------------------------------------------

--
-- Структура таблицы `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_details`
--

INSERT INTO `order_details` (`order_detail_id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, NULL, NULL),
(2, 2, 2, 3, NULL, NULL),
(3, 3, 2, 1, NULL, NULL),
(4, 12, 45, 1, '2024-04-23 22:06:48', '2024-04-23 22:06:48'),
(5, 12, 2, 1, '2024-04-23 22:06:48', '2024-04-23 22:06:48'),
(6, 13, 45, 1, '2024-04-23 22:08:17', '2024-04-23 22:08:17'),
(7, 13, 2, 1, '2024-04-23 22:08:17', '2024-04-23 22:08:17'),
(8, 14, 45, 1, '2024-04-23 22:19:20', '2024-04-23 22:19:20'),
(9, 14, 2, 1, '2024-04-23 22:19:20', '2024-04-23 22:19:20'),
(10, 14, 45, 1, '2024-04-23 22:19:20', '2024-04-23 22:19:20'),
(11, 14, 45, 1, '2024-04-23 22:19:20', '2024-04-23 22:19:20'),
(12, 14, 21, 1, '2024-04-23 22:19:20', '2024-04-23 22:19:20'),
(13, 14, 24, 1, '2024-04-23 22:19:20', '2024-04-23 22:19:20'),
(14, 15, 2, 1, '2024-04-23 22:19:29', '2024-04-23 22:19:29'),
(15, 16, 45, 1, '2024-04-23 22:21:37', '2024-04-23 22:21:37');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `positions`
--

CREATE TABLE `positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Products`
--

CREATE TABLE `Products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(2555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descr` varchar(2555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `year_of_production` int(11) DEFAULT NULL,
  `страна` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `модель` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Products`
--

INSERT INTO `Products` (`product_id`, `product_name`, `category_id`, `price`, `description`, `img`, `descr`, `updated_at`, `year_of_production`, `страна`, `модель`, `created_at`) VALUES
(2, 'T-shirt', 2, '19.99', 'Cotton T-shirt', 'tshirt.jpg', '', '2024-04-22 08:22:24', 2023, '', '', NULL),
(21, 'Сканер DocuScan 5000', 3, '1200.00', 'Сканер с высоким разрешением и быстрой скоростью сканирования.', 'scanner.jpg', 'Идеальный для сканирования документов и фотографий.', '2024-04-22 08:22:24', 2023, 'Russia', '', NULL),
(24, 'Многофункциональный принтер MF-5000', 2, '1800.00', 'Многофункциональный принтер с широким спектром функций.', 'printer.jpg', 'Все в одном устройстве для повседневных задач.', '2024-04-22 08:22:24', 2024, 'Russia', '', NULL),
(25, 'Сканер для документов DocuScan 3000', 3, '900.00', 'Сканер с высоким разрешением для детализации документов.', 'scanner.jpg', 'Превосходное качество сканирования для бизнеса.', '2024-04-22 08:22:24', 2024, 'Russia', '', NULL),
(28, 'Многофункциональный принтер MF-4000', 2, '1600.00', 'Многофункциональный принтер с широким спектром функций.', 'printer.jpg', 'Все в одном устройстве для повседневных задач.', '2024-04-22 08:22:24', 2022, 'Russia', '', NULL),
(29, 'Сканер для документов DocuScan 2000', 3, '700.00', 'Сканер с высоким разрешением для детализации документов.', 'scanner.jpg', 'Превосходное качество сканирования для бизнеса.', '2024-04-22 08:22:24', 2023, 'Russia', '', NULL),
(32, 'Лазерный Принтер LX-4000', 2, '2000.00', 'Лазерный принтер с высоким качеством печати и быстрой скоростью работы.', 'printer.jpg', 'Превосходное качество печати для любых документов.', '2024-04-22 08:22:24', 2023, 'Russia', '', NULL),
(33, 'Сканер DocuScan 5000', 3, '1200.00', 'Сканер с высоким разрешением и быстрой скоростью сканирования.', 'scanner.jpg', 'Идеальный для сканирования документов и фотографий.', '2024-04-22 08:22:24', 2023, 'Russia', '', NULL),
(36, 'Многофункциональный принтер MF-5000', 2, '1800.00', 'Многофункциональный принтер с широким спектром функций.', 'printer.jpg', 'Все в одном устройстве для повседневных задач.', '2024-04-22 08:22:24', 2024, 'Russia', '', NULL),
(37, 'Сканер для документов DocuScan 3000', 3, '900.00', 'Сканер с высоким разрешением для детализации документов.', 'scanner.jpg', 'Превосходное качество сканирования для бизнеса.', '2024-04-22 08:22:24', 2023, 'Russia', '', NULL),
(40, 'Многофункциональный принтер MF-4000', 2, '1600.00', 'Многофункциональный принтер с широким спектром функций.', 'printer.jpg', 'Все в одном устройстве для повседневных задач.', '2024-04-22 08:22:24', 2023, 'Russia', '', NULL),
(45, '2', 2, '22.00', '2', NULL, NULL, '2024-04-23 08:09:59', 2222222, '2', '2', '2024-04-23 08:09:59'),
(46, 'q45e', 2, '34545.00', 'qe5t', NULL, NULL, '2024-04-23 08:12:50', 345345, '345345', '34535', '2024-04-23 08:12:50'),
(47, 't', 2, '3333.00', 't', NULL, NULL, '2024-04-23 22:22:23', 3333, 't', 't', '2024-04-23 22:22:23');

-- --------------------------------------------------------

--
-- Структура таблицы `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `shopping_cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `shopping_cart_id_reserve` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `shopping_carts`
--

INSERT INTO `shopping_carts` (`shopping_cart_id`, `product_id`, `quantity`, `shopping_cart_id_reserve`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, NULL, NULL),
(2, 25, 3, 1, NULL, NULL),
(3, 21, 1, 12, '2024-04-23 20:18:44', '2024-04-23 20:18:44'),
(4, 21, 1, 12, '2024-04-23 20:18:49', '2024-04-23 20:18:49'),
(5, 21, 1, 12, '2024-04-23 20:18:51', '2024-04-23 20:18:51'),
(6, 24, 1, 12, '2024-04-23 20:18:53', '2024-04-23 20:18:53'),
(7, 24, 1, 12, '2024-04-23 20:18:54', '2024-04-23 20:18:54'),
(8, 33, 1, 12, '2024-04-23 20:18:56', '2024-04-23 20:18:56'),
(9, 28, 1, 12, '2024-04-23 20:18:59', '2024-04-23 20:18:59'),
(10, 45, 1, 12, '2024-04-23 20:19:00', '2024-04-23 20:19:00'),
(18, 21, 1, 16, '2024-04-23 22:20:16', '2024-04-23 22:20:16'),
(19, 24, 1, 16, '2024-04-23 22:20:17', '2024-04-23 22:20:17'),
(20, 32, 1, 16, '2024-04-23 22:20:19', '2024-04-23 22:20:19');

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id`, `name`, `password`, `role_id`, `login`, `surname`, `patronymic`, `email`, `updated_at`, `created_at`) VALUES
(1, 'user1', 'password1', 1, 'login1', 'surname', 'petronymic', 'email@email', NULL, NULL),
(2, 'user2', 'password2', 2, 'login2', 'surname', 'petronymic', 'email@email', NULL, NULL),
(3, 'user3', 'password3', 3, 'login3', 'surname', 'petronymic', 'email@email', NULL, NULL),
(21, 's', '$2y$12$ZE9Te7D2Q8RugE1P/YGBEeffVVzH0kXjoeUKJl3owUJzkgkWLQJ/.', 1, 's', 's', 's', 's@fmail', '2024-04-16 08:02:27', '2024-04-16 08:02:27'),
(22, 'ff', '$2y$12$FaR/gzMaguqgR2MzLGxiL.P0de47KShPZCH6/2mZ4pwKrf2gtCNWW', 1, 'ff', 'ff', 'ff', 'f@ff', '2024-04-16 08:06:54', '2024-04-16 08:06:54'),
(23, 'eee', '$2y$12$Ssejdt.hwdpNEmuP7bpxve9YncrBG5nLJrAQFQucPUKQ9iMOTAEBK', 1, 'eee', 'eee', 'eee', 'eee@eee', '2024-04-16 08:11:01', '2024-04-16 08:11:01'),
(24, 'fff', '$2y$12$5igmPEZaQ4oU9fveUAxf6.BmoN2NbHhTr2W7TYJarBaXHEhcbvj6u', 1, 'fff', 'fff', 'fff', 'fff@fff', '2024-04-17 06:20:04', '2024-04-17 06:20:04'),
(25, '4', '$2y$12$7Ho4TxPkFkUt9/WRBbgtwu3EsVc.vl.ha/5hLY8dXHmYanWxjisQK', 1, '4', '4', '4', '4@gmail.com', '2024-04-22 06:16:38', '2024-04-22 06:16:38'),
(26, '4', '$2y$12$2JEH1Z4IvKx1prSsor8XIemOAPbKQEMB9IMn81M..YQYxOWZ9rTLu', 1, '4', '4', '4', '4@gmail.com', '2024-04-22 06:19:48', '2024-04-22 06:19:48'),
(27, 'd', '$2y$12$Hj79TJpF/YECrpJhvjjuX.DOEy2rjYPUdxop4NJza.4D9ooT6XKDm', 1, 'd', 'd', 'd', 'd@d', '2024-04-22 06:20:07', '2024-04-22 06:20:07'),
(28, 'd', '$2y$12$EjdXm8ZGxwlq8leJvEsMs.37NPsNpzaV4fbSJH9aqYFAXLUGr2bRy', 1, 'd', 'd', 'd', 'd@d', '2024-04-22 06:20:07', '2024-04-22 06:20:07'),
(29, 'l', '$2y$12$ZOv276e6X1AgeYQ8jRJ2VuzRA0yLmNhy/Rv8qGlljaCVunLXbbNwW', 1, 'l', 'l', 'l', 'l@l', '2024-04-22 06:23:38', '2024-04-22 06:23:38'),
(30, '1', '$2y$12$vgaLBSA5G5xMWuUy9ka9wuXY0qyYtiQ1LEruXzWBR3WDAX0C7JAGK', 1, '1', '1', '1', '1@mail.ru', '2024-04-22 06:26:22', '2024-04-22 06:26:22'),
(31, '11', '11', 1, '11', '11', '11', '11@11', '2024-04-23 04:02:33', '2024-04-23 04:02:33'),
(32, '11', '$2y$12$nZ6Ds52RSQtiwA2056w09e0YDalP/dDvDOGOwGmBdo1J.cNpA6qBu', 1, '11', '11', '11', '11', '2024-04-23 04:06:42', '2024-04-23 04:06:42'),
(34, 'f', '$2y$12$JJXnrmT7N2AAodC3CGc0YekH/U1J8/EwpNlcdWC5Z08tkvGcF3OUy', 2, 'f', 'f', 'f', 'f', '2024-04-23 04:12:09', '2024-04-23 04:12:09'),
(35, 'ff', '$2y$12$9LXIvTRDOCr90o2BW8Ukrud3shVBtdPPp.2N6D3IdaC30rXj/q/am', 1, 'ff', 'ff', 'ff', 'ff@ff', '2024-04-23 04:15:51', '2024-04-23 04:15:51'),
(36, '1', '$2y$12$IbBRXQjTHs8LFKJSrXjkj.oGt8r7ZFyh9g1PofaYeS.YJvDCRS1ru', 1, '1', '1', '1', '1', '2024-04-23 04:18:21', '2024-04-23 04:18:21'),
(37, '1', '$2y$12$HoeeXFfmPq6bYxWzNQfogO1xjCYt96mK/mYxiAeBRlbspdFdHiMTO', 1, '1', '1', '1', '1', '2024-04-23 04:18:37', '2024-04-23 04:18:37'),
(38, '2', '$2y$12$LWGtocjQtoMdhyagxX.feed57vx4NxKvOwF43CSEZ1GCNyQ06L9dS', 2, '2', '2', '2', '2', '2024-04-23 04:21:09', '2024-04-23 04:21:09'),
(39, '2', '$2y$12$YRdGBEF4O2RnBZNZKTYb9O26rSFw3XwnPSWRd0Liq.GTYJWZpZ3Rq', 2, '2', '2', '2', '2', '2024-04-23 04:21:37', '2024-04-23 04:21:37'),
(40, '2', '$2y$12$V1hB6KxEvcNEaVYy5erXne81DNUsApSo1aBb72J7CZRkSLC1DPTBu', 2, '2', '2', '2', '2', '2024-04-23 04:21:55', '2024-04-23 04:21:55'),
(41, '2', '$2y$12$rXTg7unMsa.wzG5bMbGJae5rgQwPRNc3x4uFXa90SulPeLkcSDOHK', 2, '2', '2', '2', '2', '2024-04-23 04:23:12', '2024-04-23 04:23:12'),
(42, '2', '$2y$12$BMzQng25KyPXe7ZJ9fvG7uRRiUMzabw89Xgwk1Lx4.PqpK5DBwqZK', 2, '2', '2', '2', '2', '2024-04-23 04:23:34', '2024-04-23 04:23:34'),
(43, 'r', '$2y$12$ATx26OlM0KTVKWhFkhPHzuCyF0Oo0wdi2yqxcF5OJuGOU7OcrVHdO', 1, 'r', 'r', 'r', 'r', '2024-04-23 04:24:20', '2024-04-23 04:24:20'),
(44, '222', '$2y$12$LNH9dAa1BkzCMat38qakQeJ1I2P7BdGrsm4zN4BWBAZbLLVPxoQN2', 1, '222', '222', '222', '222@222', '2024-04-23 04:27:41', '2024-04-23 04:27:41'),
(45, 'r', '$2y$12$TLLjLvF8TcBdp44AJDwzoukZQAwLGlZQTgjx9ASVnV3kPyo.9KfLm', 1, 'r', 'r', 'r', 'r@mail', '2024-04-23 06:03:12', '2024-04-23 06:03:12'),
(46, 'r', '$2y$12$5dXzLpdhnEt3ylzjzwmf2eGSbqrAjzgNma.zAUplqwi1aOlZh6XEi', 2, 'r', 'r', 'r', 'r', '2024-04-23 20:10:57', '2024-04-23 20:10:57'),
(47, 't', '$2y$12$t3W6/PE7AENhaxsjrmRsh.YRuBkxCvRgJZXApXewMSH9zK5FpwzNK', 1, 't', 't', 't', 't', '2024-04-23 22:21:24', '2024-04-23 22:21:24');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Индексы таблицы `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ClientOrderDetails`
--
ALTER TABLE `ClientOrderDetails`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `ClientOrders`
--
ALTER TABLE `ClientOrders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Индексы таблицы `clients_role`
--
ALTER TABLE `clients_role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Индексы таблицы `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`shopping_cart_id`),
  ADD KEY `client_id` (`product_id`),
  ADD KEY `shopping_cart_id_reserve` (`shopping_cart_id_reserve`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `role_id_2` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `ClientOrderDetails`
--
ALTER TABLE `ClientOrderDetails`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ClientOrders`
--
ALTER TABLE `ClientOrders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `clients_role`
--
ALTER TABLE `clients_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Orders`
--
ALTER TABLE `Orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `Products`
--
ALTER TABLE `Products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `shopping_cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `Users` (`id`);

--
-- Ограничения внешнего ключа таблицы `ClientOrderDetails`
--
ALTER TABLE `ClientOrderDetails`
  ADD CONSTRAINT `clientorderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `ClientOrders` (`order_id`),
  ADD CONSTRAINT `clientorderdetails_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `Products` (`product_id`);

--
-- Ограничения внешнего ключа таблицы `ClientOrders`
--
ALTER TABLE `ClientOrders`
  ADD CONSTRAINT `clientorders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `Orders` (`order_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `Products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Products`
--
ALTER TABLE `Products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `Categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD CONSTRAINT `shopping_carts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `Products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopping_carts_ibfk_2` FOREIGN KEY (`shopping_cart_id_reserve`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `clients_role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
