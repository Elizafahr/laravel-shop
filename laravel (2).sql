-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 19 2024 г., 09:08
-- Версия сервера: 5.7.39
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
-- Структура таблицы `Categories`
--

CREATE TABLE `Categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Categories`
--

INSERT INTO `Categories` (`category_id`, `category_name`) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, '\\esrdgW|gr');

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
-- Структура таблицы `Clients`
--

CREATE TABLE `Clients` (
  `client_id` int(11) NOT NULL,
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
-- Дамп данных таблицы `Clients`
--

INSERT INTO `Clients` (`client_id`, `name`, `password`, `role_id`, `login`, `surname`, `patronymic`, `email`, `updated_at`, `created_at`) VALUES
(1, 'user1', 'password1', 1, 'login1', 'surname', 'petronymic', 'email@email', NULL, NULL),
(2, 'user2', 'password2', 2, 'login2', 'surname', 'petronymic', 'email@email', NULL, NULL),
(3, 'user3', 'password3', 3, 'login3', 'surname', 'petronymic', 'email@email', NULL, NULL),
(21, 's', '$2y$12$ZE9Te7D2Q8RugE1P/YGBEeffVVzH0kXjoeUKJl3owUJzkgkWLQJ/.', 1, 's', 's', 's', 's@fmail', '2024-04-16 08:02:27', '2024-04-16 08:02:27'),
(22, 'ff', '$2y$12$FaR/gzMaguqgR2MzLGxiL.P0de47KShPZCH6/2mZ4pwKrf2gtCNWW', 1, 'ff', 'ff', 'ff', 'f@ff', '2024-04-16 08:06:54', '2024-04-16 08:06:54'),
(23, 'eee', '$2y$12$Ssejdt.hwdpNEmuP7bpxve9YncrBG5nLJrAQFQucPUKQ9iMOTAEBK', 1, 'eee', 'eee', 'eee', 'eee@eee', '2024-04-16 08:11:01', '2024-04-16 08:11:01'),
(24, 'fff', '$2y$12$5igmPEZaQ4oU9fveUAxf6.BmoN2NbHhTr2W7TYJarBaXHEhcbvj6u', 1, 'fff', 'fff', 'fff', 'fff@fff', '2024-04-17 06:20:04', '2024-04-17 06:20:04');

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
-- Структура таблицы `OrderDetails`
--

CREATE TABLE `OrderDetails` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `OrderDetails`
--

INSERT INTO `OrderDetails` (`order_detail_id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 1, 1, 2),
(2, 2, 2, 3),
(3, 3, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Orders`
--

CREATE TABLE `Orders` (
  `order_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Orders`
--

INSERT INTO `Orders` (`order_id`, `client_id`, `order_date`, `status`) VALUES
(1, 1, '2022-01-15', 'Pending'),
(2, 2, '2022-01-16', 'Shipped'),
(3, 3, '2022-01-17', 'Delivered');

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
  `img` varchar(2555) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descr` varchar(2555) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Products`
--

INSERT INTO `Products` (`product_id`, `product_name`, `category_id`, `price`, `description`, `img`, `descr`) VALUES
(1, 'Laptop', 1, '999.99', 'High-performance laptop', 'laptop.jpg', ''),
(2, 'T-shirt', 2, '19.99', 'Cotton T-shirt', 'tshirt.jpg', ''),
(3, 'Java Programming Book', 3, '29.99', 'Learn Java programming', 'java.jpg', ''),
(19, 'Ксерокс Копир 3000', 1, '1500.00', 'Мощный и надежный копир с высокой скоростью копирования.', 'copier_3000.jpg', 'Идеальный выбор для офисных и домашних условий.'),
(20, 'Лазерный Принтер LX-4000', 2, '2000.00', 'Лазерный принтер с высоким качеством печати и быстрой скоростью работы.', 'laser_printer_lx4000.jpg', 'Превосходное качество печати для любых документов.'),
(21, 'Сканер DocuScan 5000', 3, '1200.00', 'Сканер с высоким разрешением и быстрой скоростью сканирования.', 'scanner_docuscan_5000.jpg', 'Идеальный для сканирования документов и фотографий.'),
(22, 'Факсмашина FaxStar 2000', 4, '800.00', 'Факсмашина с быстрой отправкой и приемом факсов.', 'fax_machine_faxstar_2000.jpg', 'Надежное решение для быстрой коммуникации.'),
(23, 'Принтер-копир EcoStar 2500', 1, '1300.00', 'Энергоэффективный принтер-копир с экономией топлива.', 'printer_copier_ecostar_2500.jpg', 'Экологически чистый выбор для офиса.'),
(24, 'Многофункциональный принтер MF-5000', 2, '1800.00', 'Многофункциональный принтер с широким спектром функций.', 'multifunctional_printer_mf5000.jpg', 'Все в одном устройстве для повседневных задач.'),
(25, 'Сканер для документов DocuScan 3000', 3, '900.00', 'Сканер с высоким разрешением для детализации документов.', 'scanner_docuscan_3000.jpg', 'Превосходное качество сканирования для бизнеса.'),
(26, 'Факсмашина FaxStar 1000', 4, '600.00', 'Факсмашина с простым интерфейсом и надежной работой.', 'fax_machine_faxstar_1000.jpg', 'Простота и надежность для вашего офиса.'),
(27, 'Принтер-копир EcoStar 1500', 1, '1100.00', 'Энергоэффективный принтер-копир с экономией топлива.', 'printer_copier_ecostar_1500.jpg', 'Экологически чистый выбор для домашнего использования.'),
(28, 'Многофункциональный принтер MF-4000', 2, '1600.00', 'Многофункциональный принтер с широким спектром функций.', 'multifunctional_printer_mf4000.jpg', 'Все в одном устройстве для повседневных задач.'),
(29, 'Сканер для документов DocuScan 2000', 3, '700.00', 'Сканер с высоким разрешением для детализации документов.', 'scanner_docuscan_2000.jpg', 'Превосходное качество сканирования для бизнеса.'),
(30, 'Факсмашина FaxStar 500', 4, '400.00', 'Факсмашина с простым интерфейсом и надежной работой.', 'fax_machine_faxstar_500.jpg', 'Простота и надежность для вашего офиса.'),
(31, 'Ксерокс Копир 3000', 1, '1500.00', 'Мощный и надежный копир с высокой скоростью копирования.', 'copier_3000.jpg', 'Идеальный выбор для офисных и домашних условий.'),
(32, 'Лазерный Принтер LX-4000', 2, '2000.00', 'Лазерный принтер с высоким качеством печати и быстрой скоростью работы.', 'laser_printer_lx4000.jpg', 'Превосходное качество печати для любых документов.'),
(33, 'Сканер DocuScan 5000', 3, '1200.00', 'Сканер с высоким разрешением и быстрой скоростью сканирования.', 'scanner_docuscan_5000.jpg', 'Идеальный для сканирования документов и фотографий.'),
(34, 'Факсмашина FaxStar 2000', 4, '800.00', 'Факсмашина с быстрой отправкой и приемом факсов.', 'fax_machine_faxstar_2000.jpg', 'Надежное решение для быстрой коммуникации.'),
(35, 'Принтер-копир EcoStar 2500', 1, '1300.00', 'Энергоэффективный принтер-копир с экономией топлива.', 'printer_copier_ecostar_2500.jpg', 'Экологически чистый выбор для офиса.'),
(36, 'Многофункциональный принтер MF-5000', 2, '1800.00', 'Многофункциональный принтер с широким спектром функций.', 'multifunctional_printer_mf5000.jpg', 'Все в одном устройстве для повседневных задач.'),
(37, 'Сканер для документов DocuScan 3000', 3, '900.00', 'Сканер с высоким разрешением для детализации документов.', 'scanner_docuscan_3000.jpg', 'Превосходное качество сканирования для бизнеса.'),
(38, 'Факсмашина FaxStar 1000', 4, '600.00', 'Факсмашина с простым интерфейсом и надежной работой.', 'fax_machine_faxstar_1000.jpg', 'Простота и надежность для вашего офиса.'),
(39, 'Принтер-копир EcoStar 1500', 1, '1100.00', 'Энергоэффективный принтер-копир с экономией топлива.', 'printer_copier_ecostar_1500.jpg', 'Экологически чистый выбор для домашнего использования.'),
(40, 'Многофункциональный принтер MF-4000', 2, '1600.00', 'Многофункциональный принтер с широким спектром функций.', 'multifunctional_printer_mf4000.jpg', 'Все в одном устройстве для повседневных задач.'),
(41, 'Сканер для документов DocuScan 2000', 3, '700.00', 'Сканер с высоким разрешением для детализации документов.', 'scanner_docuscan_2000.jpg', 'Превосходное качество сканирования для бизнеса.'),
(42, 'Факсмашина FaxStar 500', 4, '400.00', 'Факсмашина с простым интерфейсом и надежной работой.', 'fax_machine_faxstar_500.jpg', 'Простота и надежность для вашего офиса.');

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
  `client_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `shopping_carts`
--

INSERT INTO `shopping_carts` (`shopping_cart_id`, `client_id`, `product_id`, `quantity`) VALUES
(1, 1, 2, 1),
(2, 2, 3, 2),
(3, 3, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`category_id`);

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
-- Индексы таблицы `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`client_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Индексы таблицы `clients_role`
--
ALTER TABLE `clients_role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `OrderDetails`
--
ALTER TABLE `OrderDetails`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`,`product_id`);

--
-- Индексы таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `client_id` (`client_id`);

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
  ADD KEY `client_id` (`client_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Categories`
--
ALTER TABLE `Categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT для таблицы `Clients`
--
ALTER TABLE `Clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `clients_role`
--
ALTER TABLE `clients_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `OrderDetails`
--
ALTER TABLE `OrderDetails`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Orders`
--
ALTER TABLE `Orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Products`
--
ALTER TABLE `Products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `shopping_cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

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
  ADD CONSTRAINT `clientorders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `Clients` (`client_id`);

--
-- Ограничения внешнего ключа таблицы `Clients`
--
ALTER TABLE `Clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `clients_role` (`id`);

--
-- Ограничения внешнего ключа таблицы `OrderDetails`
--
ALTER TABLE `OrderDetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `Orders` (`order_id`);

--
-- Ограничения внешнего ключа таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `Clients` (`client_id`);

--
-- Ограничения внешнего ключа таблицы `Products`
--
ALTER TABLE `Products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `Categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD CONSTRAINT `shopping_carts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `Products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopping_carts_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `Clients` (`client_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
