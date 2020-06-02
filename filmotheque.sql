-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2020 at 05:08 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmotheque`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `libelle`, `created_at`, `updated_at`) VALUES
(1, 'Libero.', '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(2, 'At.', '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(3, 'Consequuntur.', '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(4, 'Illo.', '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(5, 'Quod.', '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(6, 'Voluptate.', '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(7, 'Quia.', '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(8, 'Et.', '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(9, 'Corporis.', '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(10, 'Corporis.', '2020-06-02 13:08:17', '2020-06-02 13:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anneeSortie` year(4) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_categorie` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `titre`, `anneeSortie`, `description`, `id_categorie`, `created_at`, `updated_at`) VALUES
(1, 'Deleniti et.', 1977, 'Ullam ullam facere vel nobis.', 1, '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(2, 'Voluptas eligendi.', 1980, 'Nihil accusamus est voluptas.', 2, '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(3, 'Et et.', 2010, 'Hic et nesciunt odio qui.', 1, '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(4, 'Quam odit.', 1998, 'Sit quia nihil explicabo.', 5, '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(5, 'Quidem natus.', 1970, 'Quis est quo tempore autem sit fugit animi.', 8, '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(6, 'Praesentium quo.', 1997, 'Praesentium facere nihil eum aut excepturi.', 4, '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(7, 'Atque deserunt.', 2006, 'Quas sed unde debitis occaecati temporibus.', 2, '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(8, 'Dolorem sapiente.', 1999, 'Deleniti quibusdam occaecati sed quia dolor.', 6, '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(9, 'Corrupti eos.', 1973, 'Et quasi et sit.', 7, '2020-06-02 13:08:17', '2020-06-02 13:08:17'),
(10, 'Nemo perspiciatis.', 1986, 'Quas et quia voluptatum aut sunt enim.', 9, '2020-06-02 13:08:17', '2020-06-02 13:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_06_02_122346_create_categories_table', 1),
(4, '2020_06_02_122752_create_films_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`),
  ADD KEY `films_id_categorie_foreign` (`id_categorie`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `films_id_categorie_foreign` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
