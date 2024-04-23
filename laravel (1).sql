


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
(3, 'Books');





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

--
-- Дамп данных таблицы `ClientOrderDetails`
--

INSERT INTO `ClientOrderDetails` (`order_detail_id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 1, 2, 1),
(2, 2, 3, 2),
(3, 3, 1, 1);

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

--
-- Дамп данных таблицы `ClientOrders`
--

INSERT INTO `ClientOrders` (`order_id`, `client_id`, `order_date`, `status`) VALUES
(1, 1, '2022-01-20', 'Pending'),
(2, 2, '2022-01-21', 'Shipped'),
(3, 3, '2022-01-22', 'Delivered');

-- --------------------------------------------------------

--
-- Структура таблицы `Clients`
--

CREATE TABLE `Clients` (
  `client_id` bigint(20) UNSIGNED NOT NULL,
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

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_03_27_055247_create_profiles_table', 1),
(3, '2024_04_01_050713_create_posts_table', 2),
(4, '2024_04_02_072838_add_deleted_at_to_posts_table', 2),
(5, '2024_04_09_053803_create_users_table', 2),
(6, '2024_04_09_053822_create_positions_table', 2),
(7, '2024_04_15_050640_create_user_table', 2),
(8, '2024_04_16_053205_create_users_table', 3);

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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `fio`, `name`, `login`, `password`, `email`, `role`, `created_at`, `updated_at`) VALUES
(1, ' Фамилия1 Имя1 Отчество1', 'name1', 'login1', '$2y$12$k.h5q4NQtr0pJmERTCvywO0woYLYc3fuO/K/Ktn8GDKzt6jFy98ZO', 'email1@gmail.com', 'admin', NULL, NULL),
(2, ' Фамилия2 Имя2 Отчество2', 'name2', 'login2', '$2y$12$YDB2eWC1WASeavs1z4CCHOMf8AXWRma2YMmOZ1NovJs.PYH43hpbW', 'email2@gmail.com', 'admin', NULL, NULL),
(3, ' Фамилия3 Имя3 Отчество3', 'name3', 'login3', '$2y$12$xP05BWqtG7ySmzJyFVgdWuEpDS0iLZDqjLCQbVOIfKlaPa5dlTYf6', 'email3@gmail.com', 'admin', NULL, NULL),
(4, ' Фамилия4 Имя4 Отчество4', 'name4', 'login4', '$2y$12$T3hb7EODTRfukYS8vLiv9OZlD1OyFYeekGGpc6O4kKUIScq/qCGuO', 'email4@gmail.com', 'admin', NULL, NULL),
(5, ' Фамилия5 Имя5 Отчество5', 'name5', 'login5', '$2y$12$GAJTw00BZMPzuO3as9.JaeYFKX9kX9BIVA/Acg9x0zOS9ZTrD7hFC', 'email5@gmail.com', 'admin', NULL, NULL),
(6, ' Фамилия6 Имя6 Отчество6', 'name6', 'login6', '$2y$12$B3kwRKBqMB9dulot1.woDurFYM/873n7Tktd9CjC4NTVBdH8Fi7xa', 'email6@gmail.com', 'admin', NULL, NULL),
(7, ' Фамилия7 Имя7 Отчество7', 'name7', 'login7', '$2y$12$Zgq8uQbljuQrKmm03Zj4f.f/eGO9DisA2H1FzyjgtA11eYotS4lx6', 'email7@gmail.com', 'admin', NULL, NULL),
(8, ' Фамилия8 Имя8 Отчество8', 'name8', 'login8', '$2y$12$zZUphU5yBR/bGCQhz5nOy.Vht4WEI8FOA/GS6FJ.5x2uYCfHVbiaS', 'email8@gmail.com', 'admin', NULL, NULL),
(9, ' Фамилия9 Имя9 Отчество9', 'name9', 'login9', '$2y$12$ClYRGZ8vdmLM087wyAGsreuCig2m1zG8isGt5/aGnGr2W9QKqscT.', 'email9@gmail.com', 'admin', NULL, NULL),
(10, ' Фамилия10 Имя10 Отчество10', 'name10', 'login10', '$2y$12$cg/GX1BkCHnJdFzDXxNEdecVxxl9x7ytEwaKodMgqvMBOwiMD7Gda', 'email10@gmail.com', 'admin', NULL, NULL),
(11, 'ss', 'ss', 'ss', 'ss', 'ss@gmail.com', 'ss', NULL, NULL),
(12, 's', 's', 's', 's', 's@f', 'admin', '2024-04-16 03:10:06', '2024-04-16 03:10:06'),
(14, 'r', 's', 'r', 'r', 'd@g', 'admin', '2024-04-16 03:10:50', '2024-04-16 03:10:50'),
(16, 'ra', 'sa', 'ra', 'ra', 'd@ga', 'admin', '2024-04-16 03:11:18', '2024-04-16 03:11:18'),
(18, 'sww', 'sww', 'sww', 'sww', 's@gww', 'admin', '2024-04-16 03:13:30', '2024-04-16 03:13:30'),
(19, 'frf', 'd', 'ff', 'ff', 'd@gf', 'admin', '2024-04-16 03:15:28', '2024-04-16 03:15:28'),
(20, 'user', 'user', 'user', '$2y$12$IJa59nZfFLGzxcNbJsXzse3iTWFBu/6LZeswvsZk9x8ZAFkDER9wS', 'user@gmail', 'admin', '2024-04-16 03:22:37', '2024-04-16 03:22:37');

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
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `OrderDetails`
--
ALTER TABLE `OrderDetails`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`shopping_cart_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_login_unique` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ClientOrders`
--
ALTER TABLE `ClientOrders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Clients`
--
ALTER TABLE `Clients`
  MODIFY `client_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `clients_role`
--
ALTER TABLE `clients_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Products`
--
ALTER TABLE `Products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- Ограничения внешнего ключа таблицы `Clients`
--
ALTER TABLE `Clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `clients_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
