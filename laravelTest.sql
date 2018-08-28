-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 28, 2018 at 04:22 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.1.18-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelTest`
--

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Daniel Alabuja', 'alabujadaniel@yahoo.com', '$2y$10$4ZVbPDzi.Eo8JwClGI.Qg.43/zM2PBtNMq8wxCOi5ft1d0221EZ4y', NULL, '2018-08-28 13:14:04', '2018-08-28 13:14:04'),
(2, 'Faith', 'alabujadaniel@gmail.com', '$2y$10$yUVB2e67YIYii3GJwryO3u3AbgKzowGLCTsqM0tejbGXHuvfwFb86', NULL, '2018-08-28 13:14:25', '2018-08-28 13:14:25'),
(3, 'Femi', 'femi@gmail.com', '$2y$10$lx8hYsAdbz/pbRcO6AI7XO4Kx3FfqsESXuwwjVhSaDEtSbARghxLq', NULL, '2018-08-28 13:37:58', '2018-08-28 13:37:58'),
(4, 'Raymond', 'ray@gmail.com', '$2y$10$3xZq0yZ7Dj7HRcEffbPcIuXNY4g4gIg.Ry0mixquREgru1jyuklzi', NULL, '2018-08-28 14:12:38', '2018-08-28 14:12:38'),
(5, 'Kunle', 'kunle@gmail.com', '$2y$10$lqYRnQ1/s0UEaLobmMcYiOABT4Ixy/.Ul4nTmxBiy2iKCsbNc75zy', NULL, '2018-08-28 14:13:04', '2018-08-28 14:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `manager_stores`
--

CREATE TABLE `manager_stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `manager_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manager_stores`
--

INSERT INTO `manager_stores` (`id`, `manager_id`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-08-28 13:15:46', '2018-08-28 13:15:46'),
(2, 1, 2, '2018-08-28 13:15:51', '2018-08-28 13:15:51'),
(3, 2, 2, '2018-08-28 13:16:00', '2018-08-28 13:16:00'),
(4, 3, 1, '2018-08-28 13:38:13', '2018-08-28 13:38:13'),
(5, 4, 4, '2018-08-28 14:13:58', '2018-08-28 14:13:58'),
(6, 4, 3, '2018-08-28 14:14:04', '2018-08-28 14:14:04'),
(7, 1, 3, '2018-08-28 14:14:34', '2018-08-28 14:14:34'),
(8, 5, 3, '2018-08-28 14:14:42', '2018-08-28 14:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2018_08_28_104747_create_managers_table', 1),
(18, '2018_08_28_104807_create_stores_table', 1),
(19, '2018_08_28_104825_create_products_table', 1),
(20, '2018_08_28_114340_create_manager_stores_table', 1),
(21, '2018_08_28_114411_create_product_stores_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Beans', '2018-08-28 13:14:36', '2018-08-28 13:14:36'),
(2, 'Rice', '2018-08-28 13:14:39', '2018-08-28 13:14:39'),
(3, 'Chocolate', '2018-08-28 13:14:46', '2018-08-28 13:14:46'),
(4, 'Chicken', '2018-08-28 13:14:51', '2018-08-28 13:14:51'),
(5, 'Water', '2018-08-28 14:13:17', '2018-08-28 14:13:17'),
(6, 'Wine', '2018-08-28 14:13:20', '2018-08-28 14:13:20'),
(7, 'Milk', '2018-08-28 14:13:28', '2018-08-28 14:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_stores`
--

CREATE TABLE `product_stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stores`
--

INSERT INTO `product_stores` (`id`, `product_id`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-08-28 13:15:17', '2018-08-28 13:15:17'),
(2, 2, 1, '2018-08-28 13:15:23', '2018-08-28 13:15:23'),
(3, 1, 2, '2018-08-28 13:15:34', '2018-08-28 13:15:34'),
(4, 3, 2, '2018-08-28 13:15:41', '2018-08-28 13:15:41'),
(5, 1, 4, '2018-08-28 14:13:47', '2018-08-28 14:13:47'),
(6, 1, 3, '2018-08-28 14:13:51', '2018-08-28 14:13:51'),
(7, 6, 3, '2018-08-28 14:14:49', '2018-08-28 14:14:49'),
(8, 7, 3, '2018-08-28 14:14:55', '2018-08-28 14:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Johnson\'s Store', 'Kaduna', '2018-08-28 13:13:37', '2018-08-28 13:13:37'),
(2, 'Ojudu Mall', 'Berger', '2018-08-28 13:13:45', '2018-08-28 13:13:45'),
(3, 'Reftek', 'Ikeja', '2018-08-28 14:12:10', '2018-08-28 14:12:10'),
(4, 'Sycamore', 'VI', '2018-08-28 14:12:23', '2018-08-28 14:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `managers_email_unique` (`email`);

--
-- Indexes for table `manager_stores`
--
ALTER TABLE `manager_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stores`
--
ALTER TABLE `product_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
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
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `manager_stores`
--
ALTER TABLE `manager_stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `product_stores`
--
ALTER TABLE `product_stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
