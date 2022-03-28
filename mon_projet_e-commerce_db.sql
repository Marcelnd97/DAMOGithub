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
-- Base de données : `mon_projet_e-commerce_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'ce qui etait ici', 'ce-qui-etait-ici', '2022-01-01 14:21:07', '2022-01-20 12:35:25'),
(2, 'quos non', 'quos-non', '2022-01-01 14:21:07', '2022-01-01 14:21:07'),
(3, 'sequi quaerat', 'sequi-quaerat', '2022-01-01 14:21:07', '2022-01-01 14:21:07'),
(4, 'voluptas iure', 'voluptas-iure', '2022-01-01 14:21:07', '2022-01-01 14:21:07'),
(5, 'delectus eos', 'delectus-eos', '2022-01-01 14:21:07', '2022-01-01 14:21:07'),
(6, 'voluptate maxime', 'voluptate-maxime', '2022-01-01 14:21:07', '2022-01-01 14:21:07'),
(7, 'eaque dolor', 'eaque-dolor', '2022-01-01 14:22:01', '2022-01-01 14:22:01'),
(8, 'sunt vel', 'sunt-vel', '2022-01-01 14:22:01', '2022-01-01 14:22:01'),
(9, 'voluptas delectus', 'voluptas-delectus', '2022-01-01 14:22:01', '2022-01-01 14:22:01'),
(10, 'laboriosam consectetur', 'laboriosam-consectetur', '2022-01-01 14:22:01', '2022-01-01 14:22:01'),
(11, 'magni vel', 'magni-vel', '2022-01-01 14:22:01', '2022-01-01 14:22:01'),
(12, 'dolores corrupti', 'dolores-corrupti', '2022-01-01 14:22:01', '2022-01-01 14:22:01'),
(14, 'ce qui etait ici est une categorie', 'ce-qui-etait-ici-est-une-categorie', '2022-01-20 12:14:07', '2022-01-20 12:14:07');

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
-- Structure de la table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4,5', 8, '2022-01-12 12:29:42', '2022-01-12 14:19:22');

-- --------------------------------------------------------

--
-- Structure de la table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'premiere titre slide', 'premiere sous titre slide', '450', 'http://127.0.0.1:8000/shop', '1641911828.jpg', '1', '2022-01-11 12:39:42', '2022-01-11 14:37:08'),
(3, 'foote', 'balon', '1000', 'http://127.0.0.1:8000/admin/slider/add', '1641911909.jpg', '1', '2022-01-11 14:38:29', '2022-01-11 14:38:29'),
(4, 'tests', 'testons', '100', 'https://www.youtube.com/watch?v=fsZS_22HBIE&list=PLz_YkiqIHesvPtvLl2Wz5FtuW44dBt199&index=24', '1641911993.png', '1', '2022-01-11 14:39:53', '2022-01-11 14:39:53');

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
(6, '2021_12_31_124419_create_sessions_table', 1),
(7, '2022_01_01_130633_create_categories_table', 2),
(8, '2022_01_01_130730_create_products_table', 2),
(9, '2022_01_08_141429_create_home_sliders_table', 3),
(10, '2022_01_12_122330_create_home_categories_table', 4),
(11, '2022_01_18_083823_create_sales_table', 5);

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'beatae laudantium delectus rerum', 'beatae-laudantium-delectus-rerum', 'Nihil nihil hic perferendis reprehenderit. Similique aut magni quaerat. Officiis nobis nam est et rerum.', 'Illum est quae nulla consequuntur et. Sed et officia excepturi sit et sit. Amet cum odio officia dolores. Quasi voluptatem quos quia quod. Quibusdam numquam harum hic aut alias vero dolores ullam. Aliquam aperiam quod consequatur provident. Et laudantium qui magnam dolores eveniet. Eligendi qui aut corporis iste nobis possimus atque. Eius illo assumenda non ea. Nam dolores sed dicta et dolor. Quia asperiores qui et quia ea voluptates. Placeat voluptates quasi omnis sed et delectus.', '104.00', '100.00', '222', 'instock', 0, 200, 'digital_4.jpg', NULL, 1, '2022-01-01 14:22:02', '2022-01-12 15:02:16'),
(2, 'placeat et in vel', 'placeat-et-in-vel', 'Ut omnis corrupti totam ex iusto amet. Est voluptatum a magni ipsa tenetur saepe tenetur error. Fugit et libero doloremque doloremque.', 'Maxime cumque voluptatem aut omnis. Mollitia ex voluptas ipsam perspiciatis aut. Vitae voluptatem officia est non numquam sed. Ipsa corrupti quos hic tempora id modi. Modi in qui ratione quas. Autem corporis quis illum in officia quia. Ut dolorem explicabo est et corrupti et labore. Nihil architecto necessitatibus omnis laboriosam. Ea aut dolores nobis incidunt iure non quidem.', '242.00', '124.00', '205', 'instock', 0, 120, 'digital_18.jpg', NULL, 3, '2022-01-01 14:22:02', '2022-01-12 15:02:53'),
(3, 'quo hic recusandae officia', 'quo-hic-recusandae-officia', 'Id sit quia in velit perspiciatis eum incidunt. Quae veniam incidunt quia adipisci voluptates. Molestiae officia omnis neque accusantium.', 'In expedita corporis rerum harum. Voluptate tempora alias totam eius aut exercitationem quo ipsam. Dolorem qui cumque explicabo repudiandae nisi nihil. Vitae atque voluptatum tenetur dolorem quod unde porro. Voluptatem laboriosam nemo excepturi accusantium a. Quia aut voluptas sed eius. Et eos enim consectetur cumque possimus in.', '120.00', '400.00', '307', 'instock', 0, 193, 'digital_13.jpg', NULL, 4, '2022-01-01 14:22:02', '2022-01-12 15:03:45'),
(4, 'molestiae blanditiis ea sapiente', 'molestiae-blanditiis-ea-sapiente', 'Numquam et repellat dolores optio eos placeat odit. A quo suscipit doloribus cumque quia reprehenderit. Tenetur magni doloribus culpa aliquam.', 'Enim non magnam et aut veniam voluptatem. Ullam fugiat quam cum voluptatum ut voluptas dignissimos impedit. In molestiae sunt alias autem. Quia mollitia fugit quas dolorem enim. In quae vel ea eos maxime voluptatem. Officiis exercitationem repellendus autem voluptatem laudantium. Velit similique animi delectus laborum voluptate et. Impedit iure possimus est est rerum magnam.', '377.00', '250.00', '268', 'instock', 0, 157, 'digital_20.jpg', NULL, 2, '2022-01-01 14:22:02', '2022-01-12 15:04:25'),
(5, 'nulla laudantium occaecati assumenda', 'nulla-laudantium-occaecati-assumenda', 'Eum ut in eius rerum et libero ut. Mollitia hic unde et eum. Est sed voluptate nostrum sunt est. Est sapiente id eos illo.', 'Repudiandae ad et quibusdam tempora vel nesciunt. Sequi rem eos eos qui consequuntur consequatur id animi. Aspernatur facilis sed eius odio. Ab dolorem enim est ratione pariatur eos. Fuga velit delectus quae molestiae. Rem quia voluptatum facere quam. Velit asperiores hic sed sed. Suscipit quia et est debitis. Voluptatem id rerum omnis. Voluptatem sed et quam itaque sed minima pariatur.', '310.00', '500.00', '262', 'instock', 0, 149, 'digital_15.jpg', NULL, 1, '2022-01-01 14:22:02', '2022-01-12 15:05:13'),
(6, 'et officia ut tempora', 'et-officia-ut-tempora', 'Recusandae animi quia ut maiores. Fugit et accusantium ab totam officiis accusamus. Quis animi quis neque magni qui repellendus harum.', 'Temporibus et delectus voluptas inventore. Repellat et consequuntur sunt cupiditate et omnis est. Harum error distinctio accusamus molestiae. Eos amet fuga est. Sint non aut dolorem rerum harum ut. Nisi similique possimus libero quia explicabo consequatur. Illum quia fugit consequuntur eaque nesciunt ipsum dolor. Enim maxime eos accusamus exercitationem iure aspernatur. Dolores aliquam quia dicta sequi sequi.', '222.00', '700.00', '238', 'instock', 0, 174, 'digital_12.jpg', NULL, 1, '2022-01-01 14:22:02', '2022-01-12 15:09:40'),
(7, 'ut doloremque fuga repudiandae', 'ut-doloremque-fuga-repudiandae', 'Et omnis amet at facere corrupti. Sed aut est aliquam non dicta quis qui. Maiores sapiente placeat rem in est. Animi repellendus repellat exercitationem hic.', 'Eaque dignissimos nulla est beatae. Laudantium voluptas temporibus soluta consequatur aliquid. Qui molestiae voluptatum voluptas odio quia. Et necessitatibus incidunt quia qui consequatur maxime. Voluptatem earum aut modi enim eaque. Eaque repellendus id consectetur est qui corrupti minima dignissimos. Aut eius dolore aspernatur debitis a atque pariatur. Deserunt laudantium debitis porro voluptas numquam. Sed qui illum velit illum quia saepe quaerat.', '141.00', NULL, '252', 'instock', 0, 195, 'digital_3.jpg', NULL, 4, '2022-01-01 14:22:02', '2022-01-01 14:22:02'),
(8, 'libero ut cupiditate at', 'libero-ut-cupiditate-at', 'Consequatur necessitatibus aut cum animi rerum sint perferendis. Temporibus et exercitationem qui enim facere dolor. Et et non ex voluptas ea.', 'Et quo explicabo temporibus ut. Consectetur qui dolor vero et non maiores vel. Voluptatum voluptatem illum quia rerum. Vel at nobis ut architecto nisi veniam tempore sit. Hic rerum velit aperiam accusantium. Hic molestiae et et repellat id. Atque corrupti vitae molestias. Ut maxime dolore ducimus porro. Expedita vel in facere est. Harum eum ab sit ut consequatur sit. Et aliquid debitis molestiae qui. Illo est non alias natus quod voluptatem quae.', '215.00', NULL, '150', 'instock', 0, 139, 'digital_19.jpg', NULL, 4, '2022-01-01 14:22:02', '2022-01-01 14:22:02'),
(9, 'officia consequuntur consequatur magnam', 'officia-consequuntur-consequatur-magnam', 'Praesentium et soluta dolore doloribus sed qui accusantium unde. Mollitia quos aut accusamus maxime fugit quaerat et fuga. Consequatur quia ipsa blanditiis voluptatem rem laboriosam quibusdam.', 'Temporibus deleniti consequatur et quasi. Vero eveniet voluptate beatae iste modi eaque. Rerum dicta cumque qui maiores quia. Saepe veritatis maxime perferendis. Ut dolorum quia similique et sed autem. Ut sapiente nobis porro dolorum unde et eveniet. Ea dolorem error id corrupti soluta. Temporibus itaque vel explicabo sed vel occaecati. Error qui quidem accusamus quia non officia ut. Est temporibus non ullam velit autem.', '150.00', NULL, '110', 'instock', 0, 136, 'digital_17.jpg', NULL, 5, '2022-01-01 14:22:02', '2022-01-01 14:22:02'),
(10, 'dolor dicta quos numquam', 'dolor-dicta-quos-numquam', 'Repellendus qui reiciendis voluptatem totam. Quis architecto ut veniam perferendis aspernatur. Ut occaecati consequuntur itaque quaerat et occaecati. Repellendus quam iure libero soluta.', 'Aut vitae doloribus id maiores. Autem dicta eaque officiis velit. Repudiandae soluta aut velit aliquam ullam totam in. Dolor vitae quas enim sed. Fugit cupiditate officiis reprehenderit commodi odio rem. Rem minus ut qui voluptas dicta et quisquam. Repellat id similique voluptas excepturi eos sunt sit.', '359.00', NULL, '406', 'instock', 0, 188, 'digital_2.jpg', NULL, 5, '2022-01-01 14:22:02', '2022-01-01 14:22:02'),
(11, 'atque harum consectetur expedita', 'atque-harum-consectetur-expedita', 'Et suscipit repellendus atque ea labore. Quisquam cumque voluptatem porro. Aperiam est nostrum ratione quaerat perferendis.', 'Quo libero sint ut debitis. Et nam non laborum minima quaerat architecto. Numquam incidunt quia optio enim incidunt ut corporis. Ipsum nesciunt officia consequuntur quisquam. Laboriosam nulla nihil quae et ipsam. Omnis numquam unde quibusdam est consequuntur labore. Voluptas doloremque voluptatem saepe et veritatis. In debitis sint nisi dolorum possimus aut. Minus cumque mollitia vel dolor quia consequatur. Natus laborum eum non esse. Id tempora cumque eum optio eum odit nihil.', '148.00', NULL, '237', 'instock', 0, 155, 'digital_7.jpg', NULL, 4, '2022-01-01 14:22:02', '2022-01-01 14:22:02'),
(12, 'ut ad qui tempora', 'ut-ad-qui-tempora', 'Molestiae voluptatem vel esse sunt distinctio. Non perferendis reiciendis odio aperiam voluptatem porro distinctio.', 'Soluta et modi natus magnam esse non rerum. Hic qui sit enim amet tenetur suscipit alias. Quia assumenda eos tenetur minima. Sunt laboriosam eligendi deserunt ipsa illo voluptas iure explicabo. Hic doloremque quibusdam aliquam dolorem distinctio asperiores sint. Est omnis laborum rerum ipsum perspiciatis. Aut et dignissimos eos. Sunt voluptate qui consequuntur. Consectetur itaque quam cum nesciunt laudantium placeat. Voluptatum explicabo error facere amet consequatur earum laudantium officiis.', '121.00', NULL, '269', 'instock', 0, 170, 'digital_1.jpg', NULL, 4, '2022-01-01 14:22:02', '2022-01-01 14:22:02'),
(13, 'sed ullam sed beatae', 'sed-ullam-sed-beatae', 'Atque autem id est et mollitia. Officiis ea provident amet quibusdam nihil reprehenderit libero.', 'Provident at id veritatis odit. In vero voluptates aspernatur consectetur expedita natus quia. Mollitia quia repellat dolorem quos. Modi necessitatibus facilis repellendus a ab iste. Repellat suscipit deleniti voluptas voluptas. Eligendi libero unde at veritatis qui necessitatibus fugit. Perspiciatis est quos ea. Sit et at dolorum enim quasi autem.', '462.00', NULL, '300', 'instock', 0, 165, 'digital_22.jpg', NULL, 2, '2022-01-01 14:22:02', '2022-01-01 14:22:02'),
(14, 'perspiciatis harum dolores eveniet', 'perspiciatis-harum-dolores-eveniet', 'Maxime voluptas sit quae consectetur. Quas ut aut ex aut commodi qui unde. Quibusdam aut quia dolore suscipit vel.', 'Tempore assumenda ratione sunt voluptates nulla numquam. Minima consequatur sunt qui voluptatum aperiam laudantium. Sit nihil voluptas perferendis asperiores laborum. Distinctio repellendus doloribus ut ut doloribus repellendus inventore. Labore eos tempora est architecto consequatur illo enim. Non nihil ipsa maiores. Et ad quis facere id et alias ut. Debitis alias expedita minus ut omnis. Est maxime ut et sint aut. Possimus officia quisquam natus ut numquam quia est excepturi.', '270.00', NULL, '281', 'instock', 0, 152, 'digital_5.jpg', NULL, 3, '2022-01-01 14:22:02', '2022-01-01 14:22:02'),
(15, 'qui ullam ab est', 'qui-ullam-ab-est', 'Adipisci sit facilis quia ut doloremque est praesentium consequatur. Sed non sint ipsa aut sed magnam provident. Harum et iusto voluptatum nihil.', 'Exercitationem omnis quia debitis nesciunt perferendis ratione vel. Assumenda enim error optio. A eius aut aut laudantium nisi ducimus dolores. Vero dolorem dolor consequatur rerum placeat dicta eius. Quas quo qui voluptate ea sunt doloremque qui. Aspernatur sed esse neque quia dolores sint voluptatem. Quidem quae ut aliquid et. Assumenda ab doloremque voluptatibus numquam eos nihil. Iste ratione qui molestiae qui doloribus. Corporis in fuga eos id dignissimos dolorem.', '455.00', NULL, '251', 'instock', 0, 121, 'digital_16.jpg', NULL, 3, '2022-01-01 14:22:03', '2022-01-01 14:22:03'),
(16, 'mollitia facere occaecati voluptas', 'mollitia-facere-occaecati-voluptas', 'Ea soluta consequatur rerum pariatur quae. Praesentium neque et eligendi explicabo. Neque cumque magnam nihil qui id doloribus quam. Natus quod eligendi eius quaerat veritatis autem dolores.', 'Nemo labore numquam nihil repellendus. Iste autem molestiae esse occaecati dolore praesentium. Officia quam quo velit est maiores laudantium. In sequi quo aut et est voluptates. Fugit aut officia rem et. Rerum iure veniam et ad. Pariatur soluta magni sit deserunt. Quisquam voluptas magni nisi hic labore. Impedit maiores est consequuntur veniam aut. Ipsum aut sunt minima aut non magni. Molestiae qui earum et dolore. Ut aliquid qui officia doloribus.', '187.00', NULL, '363', 'instock', 0, 152, 'digital_11.jpg', NULL, 3, '2022-01-01 14:22:03', '2022-01-01 14:22:03'),
(17, 'ipsum cupiditate id et', 'ipsum-cupiditate-id-et', 'Maiores quae corporis ipsum similique. Aspernatur mollitia et voluptates sit autem quo ab. Est dolor eos dicta eveniet dolore.', 'Adipisci eum consequatur occaecati dolores dolor officiis. Accusamus perferendis sequi similique fugit possimus. Impedit error illo repellat delectus ullam ut. Eos quibusdam officiis nisi. Voluptas eligendi nisi id vero sapiente animi. Commodi omnis sit officia expedita porro aut sit veniam. Ducimus eum fugiat aut iusto ut dolor. Sint rem consectetur libero.', '78.00', NULL, '400', 'instock', 0, 141, 'digital_6.jpg', NULL, 4, '2022-01-01 14:22:03', '2022-01-01 14:22:03'),
(18, 'vitae rerum laudantium fuga', 'vitae-rerum-laudantium-fuga', 'Eos molestias est quasi tempore quo. Quia dolorem ab est reiciendis sint non accusantium. Dolor qui consequatur quos est labore et. Repellendus temporibus qui et repellat.', 'Est earum aliquid consectetur aut molestiae voluptatum aut. Consequatur labore distinctio doloribus ut. Eaque mollitia perferendis rerum. Quia non error nihil cupiditate commodi deserunt. Vero incidunt officiis velit tenetur. Ducimus et odio dolor maxime molestias. Voluptate ut enim voluptatibus dolor architecto et non accusamus. Perferendis asperiores ex temporibus rerum. Aut incidunt sed enim ex et consequatur itaque.', '161.00', NULL, '449', 'instock', 0, 179, 'digital_10.jpg', NULL, 1, '2022-01-01 14:22:03', '2022-01-01 14:22:03'),
(19, 'porro iure ut ad', 'porro-iure-ut-ad', 'Rerum quo nisi aut et molestiae. A dignissimos ut ex. Et sit dignissimos voluptatem culpa sint sint assumenda.', 'Maiores exercitationem cumque aliquam optio cumque esse ut. Quia quo natus quae quas similique sit iure quia. Non vero est et earum non. Architecto consequuntur quidem quod autem vel. Reiciendis velit quam quis consequuntur voluptas. Quia id aut ipsam vero id. Est in voluptate minus voluptate accusamus exercitationem omnis. Quia omnis hic sit incidunt. Voluptas reiciendis quidem velit quisquam eos.', '31.00', NULL, '215', 'instock', 0, 160, 'digital_14.jpg', NULL, 1, '2022-01-01 14:22:03', '2022-01-01 14:22:03'),
(20, 'ex occaecati consequatur vel', 'ex-occaecati-consequatur-vel', 'Expedita qui at quidem ut soluta veritatis. Quasi explicabo nam corporis fugit provident. Autem officiis fugit quod quasi consequatur ea. Dolorem et nihil velit aut quia.', 'Eius aliquam ullam sed cum omnis. Non quasi perspiciatis et sed. Odit inventore quia aliquid nobis ut est impedit. Laudantium exercitationem voluptatem at. Vel ipsam aut qui similique autem dolorum reprehenderit. Nihil omnis voluptate porro autem numquam. Sed ut ullam veritatis minima consectetur.', '386.00', NULL, '144', 'instock', 0, 143, 'digital_8.jpg', NULL, 2, '2022-01-01 14:22:03', '2022-01-01 14:22:03'),
(21, 'saepe dolorum et vitae', 'saepe-dolorum-et-vitae', 'Praesentium aspernatur nam eveniet consequatur qui tenetur sint. Omnis quidem minus occaecati error veritatis. Rem molestiae ut nihil consectetur et sint.', 'Sequi eveniet architecto libero nihil et qui. Qui architecto praesentium debitis itaque. Quo sint temporibus rerum sit sed quisquam distinctio. Rem et possimus provident quaerat. Consequatur pariatur quidem et quo. Quo sed praesentium aspernatur facilis sint. At ratione quo quisquam cupiditate et. Incidunt molestiae maxime culpa quae incidunt architecto. Consequuntur magnam vero fugit aperiam tenetur. Ut sunt ipsam cumque id velit nam.', '368.00', NULL, '278', 'instock', 0, 196, 'digital_9.jpg', NULL, 1, '2022-01-01 14:22:03', '2022-01-01 14:22:03'),
(22, 'nam et ipsum omnis', 'nam-et-ipsum-omnis', 'Explicabo similique earum minima et pariatur. Quas est ex accusantium omnis totam maiores. Debitis aut et aut blanditiis.', 'Culpa cum excepturi ut dolores debitis facere. Accusantium et ut ut dolor. Error dolores exercitationem dolor in. Iusto voluptatem debitis molestiae qui. Sit labore voluptas cum hic debitis et. Consequatur omnis mollitia voluptatem dolor. Aut quia omnis ullam eius. Aut quas iste qui dignissimos asperiores sunt eaque distinctio. Natus animi itaque illum ea neque tempore quo qui. Qui et repellendus quia alias.', '16.00', NULL, '245', 'instock', 0, 108, 'digital_21.jpg', NULL, 5, '2022-01-01 14:22:03', '2022-01-01 14:22:03'),
(25, 'Nouveau produit', 'nouveau-produit', '<p>Voici un nouveau produit</p>', '<p><em><strong>Bonjour</strong></em></p>\n<p>Voici un nouveau produit</p>', '1200.00', '1000.00', 'DIGI45829', 'instock', 0, 14, '1642690699.png', NULL, 14, '2022-01-20 14:58:19', '2022-01-20 14:58:19');

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-02-03 01:53:11', 0, NULL, '2022-01-18 14:05:42');

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
('WjiUtTdmtDMkxYBvUvp3wylQsVNyYIywPbW8Gmik', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkZ0S1NmVFlzWXUxdGhjME5OaE85cmVQVDZNQVM2cHhxc05xZE91WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1648120581);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$l7R1vgXd.jlzb8bVf2ZMN.4uMKerG03uralaxVuLhywG5SmQoNEGm', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-12-31 13:35:02', '2021-12-31 13:35:02'),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$Bq2k0OGnYjytOzgnb27VBOlPSlZrHamdOWqNjtSWCT0yd//DV2hTe', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-12-31 13:35:53', '2021-12-31 13:35:53'),
(3, 'Ndiana Ndiaye', 'nmarcelndiana32@gmail.com', NULL, '$2y$10$vb.uAXM5B4V.8oQYVj.HYO6ry.Sea6jCHIGukW7eoLubUysEoiRRS', NULL, NULL, NULL, NULL, NULL, 'USR', '2022-01-01 13:00:12', '2022-01-01 13:00:12');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Index pour la table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
