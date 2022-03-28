-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 28 mars 2022 à 14:11
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
-- Base de données : `doctolib`
--

-- --------------------------------------------------------

--
-- Structure de la table `docteurs`
--

CREATE TABLE `docteurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chambre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'doctor',
  `specialite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `docteurs`
--

INSERT INTO `docteurs` (`id`, `doctor`, `phone`, `email`, `address`, `chambre`, `role`, `specialite`, `id_user`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Maimouna', '774102584', 'mounas@gmail.com', 'Sacré-coeur2', '3', 'doctor', 'Dentiste', '2', '1635945496.jpg', '2021-11-03 13:18:16', '2022-02-28 14:19:05'),
(2, 'chérif', '754896512', 'cherif@gmail.com', 'parcelle', '2', 'doctor', 'Génicologue', '3', '1635946291.jpg', '2021-11-03 13:31:31', '2021-11-03 13:31:31'),
(3, 'Sekou', '774122589', 'sekou@gmail.com', 'Sediou', '4', 'doctor', 'Cardiologue', '5', '1637233444.jpg', '2021-11-18 11:04:04', '2021-11-18 11:04:04'),
(4, 'Marcel Ndiana Ndiaye', '784413480', 'nmarcelndiana32@gmail.com', 'NGOHE MBOUGUEL', '5', 'doctor', 'Psychologue', '6', '1637233570.jpg', '2021-11-18 11:06:10', '2021-11-18 11:06:10'),
(5, 'Albert', '784563225', 'albert@gmail.com', 'Fatick', '8', 'doctor', 'Rhumatologue', '8', '1637233676.jpg', '2021-11-18 11:07:56', '2021-11-18 11:07:56'),
(6, 'Julbert', '779856452', 'julbert@gmail.com', 'Kaolack', '7', 'doctor', 'Pneumologue', '12', '1637233767.jpg', '2021-11-18 11:09:27', '2021-11-18 11:09:27'),
(7, 'Babacar', '778545698', 'babs@gmail.com', 'SACRE-COEUR 3', '4', 'doctor', 'Tabacologue', '6', '1637747333.PNG', '2021-11-24 09:48:53', '2021-11-24 09:48:53'),
(8, 'Babacar Niang', '774589654', 'babacar@gmail.com', 'Touba', '4', 'doctor', 'Cardiologue', '11', '1638191120.jpg', '2021-11-29 13:05:20', '2021-11-29 13:05:20');

-- --------------------------------------------------------

--
-- Structure de la table `dossier_medicales`
--

CREATE TABLE `dossier_medicales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordonnance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result_analyse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dossier_medicales`
--

INSERT INTO `dossier_medicales` (`id`, `file`, `ordonnance`, `result_analyse`, `patient_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(1, '1639404488.pdf', '1639404488.pdf', '1639404488.pdf', 4, 2, '2021-12-13 14:08:08', '2021-12-13 14:08:08'),
(2, '1641979332.pdf', '1641979332.pdf', '1641979332.pdf', 7, 2, '2022-01-12 09:22:12', '2022-01-12 09:22:12');

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
(24, '2014_10_12_000000_create_users_table', 1),
(25, '2014_10_12_100000_create_password_resets_table', 1),
(26, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2021_09_13_090536_create_sessions_table', 1),
(30, '2021_09_24_120329_create_docteurs_table', 1),
(31, '2021_09_28_143342_create_rendez_vouses_table', 1),
(32, '2021_10_21_002602_create_result_analyses_table', 1),
(33, '2021_10_21_003325_create_ordonnances_table', 1),
(34, '2021_10_25_121011_create_patients_table', 1),
(35, '2021_12_13_135014_create_dossier_medicales_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `ordonnances`
--

CREATE TABLE `ordonnances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_traite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pesologie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicament` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ordonnances`
--

INSERT INTO `ordonnances` (`id`, `patient`, `doctor`, `date_traite`, `observe`, `quantite`, `pesologie`, `user_id`, `medicament`, `created_at`, `updated_at`) VALUES
(2, 'Abou', 'Maimouna sarr', '2021-11-02', '2/j', '3', 'Régime', NULL, 'parcetamol', '2021-11-08 08:33:02', '2021-11-30 13:58:44'),
(4, 'alpha Diallo', 'chérif', '2021-11-30', 'faire du sport', '4', 'faire du sport', NULL, 'paracetamole', '2021-11-15 01:12:41', '2021-11-30 13:59:12');

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
-- Structure de la table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'patient',
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`id`, `patient`, `phone`, `email`, `address`, `role`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'Awa', '764589845', 'awa@gmail.com', 'Kaolack', 'patient', '4', '2021-11-03 13:33:11', '2021-11-03 13:33:11'),
(2, 'Abou', '785469858', 'abou@gmail.com', 'Fatick', 'patient', '7', '2021-11-03 13:34:07', '2021-11-03 13:34:07'),
(3, 'Julbert', '754856589', 'jul@gmail.com', 'Casa', 'patient', '4', '2021-11-29 13:06:23', '2021-11-29 13:06:23'),
(4, 'JulbertK', '754456589', 'julk@gmail.com', 'Kolda', 'patient', '7', '2021-11-29 13:06:25', '2021-11-29 13:06:25'),
(5, 'Marcel Ndiana Ndiaye', '784413480', 'nmarcelndiana32@gmail.com', 'NGOHE MBOUGUEL', 'patient', '4', '2021-11-29 13:11:02', '2021-11-29 13:11:02');

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
-- Structure de la table `rendez_vouses`
--

CREATE TABLE `rendez_vouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docteur_special` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_rv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rendez_vouses`
--

INSERT INTO `rendez_vouses` (`id`, `patient`, `phone`, `email`, `date`, `docteur_special`, `type_rv`, `message`, `statut`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Abou', '784569654', 'abou@gmail.com', '2021-11-11', 'Maimouna', 'Téléconsultation', 'J\'ai besoin d\'un consultation chirurgicale', 'Annulé', '7', '2021-11-17 14:03:40', '2022-01-12 09:18:42'),
(7, 'alpha Diallo', '784413480', 'nmarcelndiana32@gmail.com', '2021-12-02', 'Sekou', 'Directe', 'Bonsoir', 'Approuvé', '4', '2021-12-01 14:29:01', '2022-02-28 12:24:06');

-- --------------------------------------------------------

--
-- Structure de la table `result_analyses`
--

CREATE TABLE `result_analyses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motif_cons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `freq_cardiaque` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_cons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temperature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `result_analyses`
--

INSERT INTO `result_analyses` (`id`, `patient`, `motif_cons`, `poid`, `freq_cardiaque`, `type_cons`, `date_op`, `temperature`, `user_id`, `observe`, `prix`, `created_at`, `updated_at`) VALUES
(2, 'Amy', 'insomnies', '100', '12/8', 'direct', '2021-11-15', '30', '7', 'faire du sport', '6000', '2021-11-08 08:53:27', '2021-11-30 13:57:57'),
(4, 'alpha Diallo', 'manque d\'apétie', '100', '12/8', 'Téléconsultation', '2021-11-15', '30', '4', 'faire du sport', '4000', '2021-11-15 09:14:07', '2021-11-30 13:58:24'),
(11, 'Babacar', 'demangaison', '78', '12/8', 'Directe', '2022-01-12', '25', '4', 'eviter la poussier', '6000', '2022-01-12 09:31:40', '2022-01-12 09:31:40');

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
('9HFnfNRWr425uPpkurbO5vib8YzGFatFVtyLhuQe', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWHBMbDFzWTZ3dWZKbHhKbU1JclVJeE9RWWZyUlVIcWtIZ2JsblpjSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91dGlsaXNhdGV1cnMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkNlVwSHZJV2lSOS9iWU1Oalo5am1PdXR2VE1DSy9hR2U3alllQW1SU09WUVQ1cjVIaWp2TXEiO30=', 1642068655),
('NLXErPwgxROrjQwGrG2vPt2xT10ESdz3oYfjkHmD', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibmZ5UnFXbTBlQzI2dFRESFFDYmc4WWc1RGNCdms1VU4wT2JqakxwSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1642067467),
('ogRrMvgfiLsa3kseMZAnuKg6p3dtcm5CGpdgizQK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemdJYXpuTURDejZpQXRJV1VMTnV1VFhWdTdGeWQ2bTdEMFdLSU05dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1646049200),
('zSB4daMla68ul9DmQFTkn7Mo9UvrORYAWirCHaTv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUW4yQ2tjSVdQcUdYSjJLcFJwQk1jdEY1OHQ4aXJ1QlB4ZVJ3eGN2eiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1646058947);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'patient',
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

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Alpha SOW', 'admin@gmail.com', '784563252', 'Dakar', 'admin', NULL, '$2y$10$6UpHvIWiR9/bYMNjZ9jmOutvTMCK/aGe7jYeAmRSOVQT5r5HijvMq', NULL, NULL, NULL, NULL, NULL, '2021-01-02 12:47:38', '2021-11-03 12:47:38'),
(2, 'Maimouna', 'mounas@gmail.com', '774102589', 'Sacré-coeur2', 'doctor', NULL, '$2y$10$vKbUvtSBmwOM/WwHnqH5pugyMgX1KnL42V5KuTJ11RxYObI.d8AHC', NULL, NULL, NULL, NULL, NULL, '2021-01-01 12:50:09', '2021-12-08 08:36:40'),
(3, 'chérif', 'cherif@gmail.com', '754896512', 'parcelle', 'doctor', NULL, '$2y$10$89UbgKS86DVu0vDbydbi5Ousy7m9e.F3X/QcfMRTNkYa3jNsPFQ4C', NULL, NULL, NULL, NULL, NULL, '2021-05-20 12:51:55', '2021-11-03 12:51:55'),
(4, 'Awa', 'awa@gmail.com', '764589845', 'Kaolack', 'patient', NULL, '$2y$10$p0MSEh4AwmotrS4iifrVg.K601MwK5FDlvNOj1kRJvOq73t7FRRYO', NULL, NULL, NULL, NULL, NULL, '2021-05-15 12:57:14', '2021-11-03 12:57:34'),
(7, 'Abou', 'abou@gmail.com', '785469858', 'Fatick', 'patient', NULL, '$2y$10$Bn0OV9F/cZYKmBGVFoQjn.7Kv/ssJRZ2t3KoVrT9JmG6z3XED.niK', NULL, NULL, NULL, NULL, NULL, '2021-11-03 13:06:45', '2021-11-03 13:06:45');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `docteurs`
--
ALTER TABLE `docteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dossier_medicales`
--
ALTER TABLE `dossier_medicales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dossier_medicales_patient_id_foreign` (`patient_id`),
  ADD KEY `dossier_medicales_doctor_id_foreign` (`doctor_id`);

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
-- Index pour la table `ordonnances`
--
ALTER TABLE `ordonnances`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `rendez_vouses`
--
ALTER TABLE `rendez_vouses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `result_analyses`
--
ALTER TABLE `result_analyses`
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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_address_unique` (`address`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `docteurs`
--
ALTER TABLE `docteurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `dossier_medicales`
--
ALTER TABLE `dossier_medicales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `ordonnances`
--
ALTER TABLE `ordonnances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rendez_vouses`
--
ALTER TABLE `rendez_vouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `result_analyses`
--
ALTER TABLE `result_analyses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `dossier_medicales`
--
ALTER TABLE `dossier_medicales`
  ADD CONSTRAINT `dossier_medicales_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `dossier_medicales_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
