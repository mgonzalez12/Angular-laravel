-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2020 a las 05:50:50
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0248b9ef016486c7cc306a0a080ad584d040d10ecc6bba24400bd0dca56d1e87d8dac7111326c480', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-27 09:05:45', '2020-06-27 09:05:45', '2021-06-27 04:05:45'),
('1a41dd7d0cf64f356b280c4c795f6fbebd875f999d4aacb004dacd73fd42cb4c14bda8620ca16d62', 1, 1, 'TutsForWeb', '[]', 1, '2020-06-29 06:13:55', '2020-06-29 06:13:55', '2021-06-29 01:13:55'),
('251cbf8c0883c8b20bc9a56354d9f33b9b4ef596ea354432833c2f89d3509dbc99712e27fa16574b', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-29 02:40:11', '2020-06-29 02:40:11', '2021-06-28 21:40:11'),
('2781c9472917ee3ce8d3233cfa7c93f94c130f1958c05967223b9f590953569329c38acb7ccad611', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-29 06:00:58', '2020-06-29 06:00:58', '2021-06-29 01:00:58'),
('29c5db9568a18c58827dea6db3915d1fa7e40511ca502a0533f55884dc62c6b6b4a90cff1a779120', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-29 02:59:10', '2020-06-29 02:59:10', '2021-06-28 21:59:10'),
('2a239e3922009ee3af2d9693e79ea767566dff439328c4dd8a96bbdd4f86cec853f7954a1b8346fc', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-29 02:54:35', '2020-06-29 02:54:35', '2021-06-28 21:54:35'),
('3923ff49052431a58db60cd1235dc88a0a3a297bbfdd0353805266c07b0bb3de47242819558a635e', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-29 02:43:57', '2020-06-29 02:43:57', '2021-06-28 21:43:57'),
('3ca308639629b6b7fe6063b1f1d48baa7ed4a3db59b608fe10e733e971e1e5e44f18c4248292b5b4', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-29 05:58:39', '2020-06-29 05:58:39', '2021-06-29 00:58:39'),
('4e83931101cf5cf9d74742f1d90fabe254657e797409104bb389083844e26ca3b55e6df1675b86b9', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-29 18:21:22', '2020-06-29 18:21:22', '2021-06-29 13:21:22'),
('70d1e69283eea935789da7eacb205eadee502cc12f5c43ff380ca4947dc8a1171cf3fa0c4f8fc62c', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-29 02:37:45', '2020-06-29 02:37:45', '2021-06-28 21:37:45'),
('73e15b65086d650650b501bc0e9a63722a7def8f99f0c7bcf2d9852e55e231707ee1b47a01b42e0b', 1, 1, 'TutsForWeb', '[]', 1, '2020-06-29 18:21:24', '2020-06-29 18:21:24', '2021-06-29 13:21:24'),
('81e1b7882d528c57ab4a3ccadeeaa9b6c7aa5cf5d69fabfc753dc5605b5298c5f28f3776ed686eb9', 1, 1, 'TutsForWeb', '[]', 1, '2020-06-29 18:37:45', '2020-06-29 18:37:45', '2021-06-29 13:37:45'),
('890447a1753295aa22da6cbb9f1774adb9c080c22535b8feda08b249bee3fae5c186f277344fef56', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-29 02:35:33', '2020-06-29 02:35:33', '2021-06-28 21:35:33'),
('9a024946db0869752e7c9ad9bc31a25c8451c36ee6b1ba6594dc0434837860eb06467e20021cd728', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-27 08:52:57', '2020-06-27 08:52:57', '2021-06-27 03:52:57'),
('9c3cebc1a38e222a2142325637ae643e75d47ffe09230fff5e518470d90a61ce304723bda299351f', 1, 1, 'TutsForWeb', '[]', 1, '2020-06-29 22:29:16', '2020-06-29 22:29:16', '2021-06-29 17:29:16'),
('b079672bd0e4ef1e97276da0851d4928ff5b2363759b7240d530d70f9049b11e3865688383373e66', 1, 1, 'TutsForWeb', '[]', 1, '2020-06-28 00:32:50', '2020-06-28 00:32:50', '2021-06-27 19:32:50'),
('b82916f24d27fa3b92042f2fdfb646eaf67294c7694c944fea0996713ff6437d08850d6ab8bf3603', 2, 1, 'TutsForWeb', '[]', 0, '2020-06-29 02:48:44', '2020-06-29 02:48:44', '2021-06-28 21:48:44'),
('b83dd6178b41c7895b44b71373863fae90ef2ef8a0f5811ceca11ecb2b543c82c861bf51d530545d', 1, 1, 'TutsForWeb', '[]', 1, '2020-06-29 07:08:06', '2020-06-29 07:08:06', '2021-06-29 02:08:06'),
('bfa28c939a8fa65567711273b586e9ca59a084e3e21b5fc7fea61a3b33d41aef170a2f8bcf1b4337', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-29 02:44:33', '2020-06-29 02:44:33', '2021-06-28 21:44:33'),
('c38dc5494c670ba4e65ecf99a4df79fe922e4463ebabb18039ba64ecf434effc38cee3d59b8a74b0', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-29 02:50:43', '2020-06-29 02:50:43', '2021-06-28 21:50:43'),
('d97b2bebff747a70f0807c3a9f75aa680a020695102391231da228e6c4b9831921d98da123d298a9', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-29 02:38:05', '2020-06-29 02:38:05', '2021-06-28 21:38:05'),
('e906dfc0903730eede3cd47ea5ee7c01e5a339d6ccdd521ae42dcbb1cb8804d45bdd02e1c0b4810d', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-29 02:35:56', '2020-06-29 02:35:56', '2021-06-28 21:35:56'),
('f0ecd75d27ef907929e8165dc9c513dcd3526e28663ee85f51d542c5393dcde733734e020b29c417', 1, 1, 'TutsForWeb', '[]', 0, '2020-06-29 03:05:28', '2020-06-29 03:05:28', '2021-06-28 22:05:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'AtreVKivzgOArb5JSCRwsI432qWe0sK5xl3Bbv96', 'http://localhost', 1, 0, 0, '2020-06-27 04:59:53', '2020-06-27 04:59:53'),
(2, NULL, 'Laravel Password Grant Client', 'ZzoNKjqKSeiT2y7UzsUVG4cbDxjuxgJy5GnzTbR1', 'http://localhost', 0, 1, 0, '2020-06-27 04:59:54', '2020-06-27 04:59:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-06-27 04:59:53', '2020-06-27 04:59:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mail.com', NULL, '$2y$10$3r1MlHXqZhz/bCaupjwDueOQodg9FTq8zoi/zgStNCOYQcWz1AuoC', NULL, '2020-06-27 08:52:53', '2020-06-27 08:52:53'),
(2, 'Prueba', 'pre@mail.com', NULL, '$2y$10$7HtqOzVEKa1yjABRA.wFE.EvzrKjzFCL9pUvRVrt9Hm1vwUjab32K', NULL, '2020-06-29 02:48:44', '2020-06-29 22:29:39'),
(4, 'Marcos Prueba', 'mpruebas@mail.com', NULL, '$2y$10$f7Dg3jNHwqnFR15KtakdB.yFpN2nn4wQSwKVZhYWIvqdmlbqvJSp6', NULL, '2020-06-29 22:15:25', '2020-06-29 22:19:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
