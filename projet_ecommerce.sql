-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 28 mars 2022 à 14:14
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_08_28_092644_create_sessions_table', 1),
(7, '2021_08_28_162831_create_products_table', 2),
(8, '2021_08_31_095525_create_carts_table', 3),
(9, '2021_08_31_120724_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `product_name`, `quantity`, `price`, `status`, `created_at`, `updated_at`) VALUES
(7, 'User', '784413480', 'SACRE-COEUR 3', 'Airpods', '1', '10000', 'not delivered', '2021-08-31 13:55:27', '2021-08-31 13:55:27'),
(8, 'User', '784413480', 'SACRE-COEUR 3', 'Televion', '3', '250000', 'delivered', '2021-08-31 13:55:27', '2021-08-31 16:17:20'),
(9, 'User', '784413480', 'SACRE-COEUR 3', 'Montre', '4', '2000', 'not delivered', '2021-08-31 13:55:27', '2021-08-31 13:55:27'),
(10, 'User', '784413480', 'SACRE-COEUR 3', 'Airpods', '1', '10000', 'not delivered', '2021-08-31 13:56:40', '2021-08-31 13:56:40'),
(11, 'User', '784413480', 'SACRE-COEUR 3', 'Televion', '3', '250000', 'delivered', '2021-08-31 13:56:40', '2021-09-09 07:52:31'),
(12, 'User', '784413480', 'SACRE-COEUR 3', 'Montre', '4', '2000', 'not delivered', '2021-08-31 13:56:41', '2021-08-31 13:56:41'),
(13, 'User', '784413480', 'SACRE-COEUR 3', 'Televion', '2', '250000', 'delivered', '2021-08-31 14:05:18', '2021-09-09 07:52:52'),
(14, 'User', '784413480', 'SACRE-COEUR 3', 'Airpods', '2', '10000', 'not delivered', '2021-08-31 14:05:18', '2021-08-31 14:05:18'),
(15, 'User', '784413480', 'SACRE-COEUR 3', 'Montre', '4', '2000', 'not delivered', '2021-08-31 14:05:18', '2021-08-31 14:05:18'),
(16, 'User', '784413480', 'SACRE-COEUR 3', 'Montre', '1', '2000', 'not delivered', '2021-09-07 10:41:43', '2021-09-07 10:41:43'),
(17, 'User', '784413480', 'SACRE-COEUR 3', 'Montre', '6', '2000', 'not delivered', '2021-09-07 10:41:43', '2021-09-07 10:41:43'),
(18, 'User', '784413480', 'SACRE-COEUR 3', 'Montre pro', '10', '10000', 'not delivered', '2021-09-07 10:41:43', '2021-09-07 10:41:43'),
(19, 'User', '784413480', 'SACRE-COEUR 3', 'Montre', '1', '2000', 'not delivered', '2021-09-07 10:41:43', '2021-09-07 10:41:43'),
(20, 'User', '784413480', 'SACRE-COEUR 3', 'Televion', '5', '250000', 'not delivered', '2021-09-07 10:41:43', '2021-09-07 10:41:43'),
(21, 'User', '784413480', 'SACRE-COEUR 3', 'Montre', '2', '2000', 'not delivered', '2021-09-09 07:49:59', '2021-09-09 07:49:59'),
(22, 'User', '784413480', 'SACRE-COEUR 3', 'Televion', '2', '250000', 'delivered', '2021-09-09 07:49:59', '2021-09-09 07:52:07'),
(23, 'User', '784413480', 'SACRE-COEUR 3', 'Televion', '5', '250000', 'not delivered', '2021-09-09 07:49:59', '2021-09-09 07:49:59'),
(24, 'User', '784413480', 'SACRE-COEUR 3', 'Airpods', '4', '12000', 'not delivered', '2021-09-09 07:49:59', '2021-09-09 07:49:59'),
(25, 'User', '784413480', 'SACRE-COEUR 3', 'Radio', '5', '5000', 'delivered', '2021-09-09 07:49:59', '2021-09-09 07:52:46'),
(26, 'Cleint', '784413480', 'Fatick', 'Televion', '3', '250000', 'not delivered', '2021-10-23 09:27:03', '2021-10-23 09:27:03'),
(27, 'Cleint', '784413480', 'Fatick', 'Montre pro', '3', '10000', 'not delivered', '2021-10-23 09:27:03', '2021-10-23 09:27:03'),
(28, 'Cleint', '784413480', 'Fatick', 'Montre', '2', '2000', 'not delivered', '2021-10-23 09:57:46', '2021-10-23 09:57:46');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `quantity`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Televion', '250000', 'Voici une Tele qui coute très chaire', '2', '1630252222.jpg', '2021-08-29 15:50:22', '2021-08-30 13:11:55'),
(5, 'Montre pro', '10000', 'montre electronic', '4', '1630329450.jpg', '2021-08-29 15:52:45', '2021-09-07 09:27:18'),
(9, 'Montre', '2000', 'voici une montre classique', '10', '1630329625.jpg', '2021-08-30 13:20:25', '2021-08-30 13:20:25'),
(10, 'Radio', '5000', 'Nouveauté en radio', '3', '1630329699.jpg', '2021-08-30 13:21:39', '2021-08-30 13:21:39'),
(11, 'Airpods', '12000', 'Ecouteur Pro', '5', '1630329778.jpg', '2021-08-30 13:22:58', '2021-08-30 13:22:58');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('72HijGs0IuXtocdBUvknYG7MPVTXaBT5LRXg3uIV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidE1nMFo1VHZtdHJBRkZhM0RFVzFZTGRGdEczNDJvTmlsaEkySDFNMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1638782113),
('9HuCVBAiGkgRakjm9sbNlZfi5vSCyBbefHpruDX4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGZLVjFCeTIzV2dOVG4zWGRnS3lxdjhmcHl3SXR6Y3R4YTQ4N2t3YiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1634983127),
('D3itGerb4ov9cM7vN8LwonDoL7NKjENqnXKjtiXU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWW9wR1lNbTVMcWNFQzFWb3M4UVF0UGp3SGd1ZVZNNkhMZTQzbzZ5OCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631369048),
('FGPiZXDZ4rjXS9doek1pn6ucE0uHADjN8gZWvkRg', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidmtlMHhPaTRCTDJRR3NHN3c5SzNhOFdZM2M3SFgzTDdxemx3M3J3MyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG93b3JkZXIiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkZW5NL1pCM0drZGZLT1hIRmpQZTZsLmwySDc3ZGs2NUdNWVU3eFVXZzVyZ0tYUFdvOU4zMy4iO30=', 1631173973),
('j6BZkCQZlxOoKZxeSmKg5g6bX9QSfjxS9YhNaOxk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1BZV01pOGJiZlFnWXI3NlpDV1JFa2NEWGRDeUp2bjhTQ1doRER6OCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZWFyY2g/X3Rva2VuPTNQWVdNaThiYmZRZ1lyNzZaQ1dSRWtjRFhkQ3lKdm44U0NXaEREejgmc2VhcmNoPU1vbnRyZSI7fX0=', 1631371180),
('nyPcOcaRqfLg81JR5otE9b3tsn54diXlpjBC8wYu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMEZHQ2R2aVJ3S095ZEZLakp5bFIzRFdVMWdXZFFTWHdoRDA3eDlPYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638782110),
('Ook9RkgqLhEKEuc8eaqM4iTXrS4bXLhBYa8wu2Ij', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSVI4QkJqR1FkUWFxTHZTd3RnRHZtUjNzeUxGS1RwNTJvUWZFM21yNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631173584);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(4, 'Administrateur', 'admin@gmail.com', '0', '774563247', 'SACRE-COEUR 3', NULL, '$2y$10$9J7xbTR/hqNBFfYBsthom.JnlAgf.z5MenSBweGJjngmHiKxA0MrC', NULL, NULL, NULL, NULL, NULL, '2021-10-23 09:17:13', '2021-10-23 09:17:13'),
(5, 'Cleint', 'client@gmail.com', '1', '784413480', 'Fatick', NULL, '$2y$10$/nlg/fuEaF1no7QdHF3W0eaqCGl41OuplOdi37wl4noKCNZmjGYZm', NULL, NULL, NULL, NULL, NULL, '2021-10-23 09:18:41', '2021-10-23 09:18:41');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
