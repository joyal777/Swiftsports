-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2025 at 07:05 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swift1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_items`
--

CREATE TABLE `home_items` (
  `id` int(11) NOT NULL,
  `heading_1` text DEFAULT NULL,
  `subheading_1` text DEFAULT NULL,
  `heading_2` text DEFAULT NULL,
  `subheading_2` text DEFAULT NULL,
  `heading_3` text DEFAULT NULL,
  `subheading_3` text DEFAULT NULL,
  `banner` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_items`
--

INSERT INTO `home_items` (`id`, `heading_1`, `subheading_1`, `heading_2`, `subheading_2`, `heading_3`, `subheading_3`, `banner`) VALUES
(1, 'Top News', 'Explore the latest emerging news', 'March there you go!', ' Lets see the top games in march', 'Trends', 'What if you want a free gift with these', 'banner.webp');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MpIkpoEXNj7Q89wkUSATKcXb3T4JuMFRSVzJx074', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTFpTUlo1QjA4eEpEN1kzRmxDcGg4OGg0c1k2QWNLT2hWSHVLSkozaSI7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zcG9ydHMvbWFpbi1jYXRlZ29yeS9pbnRlcm5hdGlvbmFsLWZvb3RiYWxsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741278175);

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Football', 'football', 'Latest football news and updates.', '2025-02-23 09:55:57', '2025-02-23 09:55:57'),
(2, 'Basketball', 'basketball', 'Everything about basketball.', '2025-02-23 09:55:57', '2025-02-23 09:55:57'),
(3, 'Tennis', 'tennis', 'Tennis matches and rankings.', '2025-02-23 09:55:57', '2025-02-23 09:55:57'),
(4, 'Cricket', 'cricket', 'Cricket news, schedules, and scores.', '2025-02-23 09:55:57', '2025-02-23 09:55:57'),
(5, 'Formula 1', 'f1', 'F1 races and standings.', '2025-02-23 09:55:57', '2025-02-23 09:55:57'),
(6, 'Olympics', 'olympics', 'Olympic sports and events.', '2025-02-23 09:55:57', '2025-02-23 09:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `sports_featured_photos`
--

CREATE TABLE `sports_featured_photos` (
  `id` int(11) NOT NULL,
  `sport_id` int(11) UNSIGNED NOT NULL,
  `photo` text NOT NULL,
  `status` text DEFAULT 'active',
  `alt_text` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sports_featured_photos`
--

INSERT INTO `sports_featured_photos` (`id`, `sport_id`, `photo`, `status`, `alt_text`, `created_at`, `updated_at`) VALUES
(1, 1, 'football_image.jpg', 'active', 'International Football', '2025-02-23 16:30:44', '2025-02-23 17:46:23'),
(3, 1, 'football_image_3.webp', 'active', 'Club Football', '2025-02-23 17:27:35', '2025-02-23 17:46:41'),
(4, 1, 'football_image_4.webp', 'active', 'Womens Football', '2025-02-23 17:27:35', '2025-02-23 17:46:51'),
(5, 1, 'football_image_5.jpg', 'active', 'Youth and development football', '2025-02-23 17:29:27', '2025-02-23 17:47:38'),
(6, 1, 'football_image_4.webp', 'active', NULL, '2025-03-02 07:25:59', '2025-03-02 07:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `sports_main_category`
--

CREATE TABLE `sports_main_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `sport_id` int(11) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `description` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sports_main_category`
--

INSERT INTO `sports_main_category` (`id`, `sport_id`, `name`, `slug`, `description`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'International Football', 'international-football', NULL, 'football_image.jpg', 'Show', '2025-03-05 17:28:48', '2025-03-05 18:03:38'),
(2, 1, 'Club Football', 'club-football', NULL, 'football_image_3.webp', 'Show', '2025-03-05 17:31:09', '2025-03-05 17:31:09'),
(3, 1, 'Women’s Football', 'womens-football', NULL, 'football_image_4.webp', 'Show', '2025-03-05 17:31:09', '2025-03-05 17:31:09'),
(4, 1, 'Youth and development football', 'youth-and-development-football', NULL, 'football_image_5.jpg', 'Show', '2025-03-05 17:36:40', '2025-03-05 17:36:40'),
(5, 1, 'Futsal and Beach Soccer', 'futsal-and-beach-soccer', NULL, 'futsal-and-beach-soccer.webp', 'Show', '2025-03-05 17:36:40', '2025-03-05 17:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `sports_sub_category`
--

CREATE TABLE `sports_sub_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `main_cat_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sports_sub_category`
--

INSERT INTO `sports_sub_category` (`id`, `main_cat_id`, `name`, `slug`, `description`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'FIFA World Cup', 'fifa-world-cup', 'The most prestigious tournament in football, held every four years.', 'fifa.webp', 1, '2025-03-06 15:50:40', '2025-03-06 16:00:15'),
(2, 1, 'UEFA European Championship', 'uefa-european-championship', 'The top competition for European national teams.Lets football!', 'uefa.png', 1, '2025-03-06 15:50:40', '2025-03-06 16:21:12'),
(3, 1, 'Copa América', 'copa-américa', 'The main tournament for South American national teams.', 'copa-america.png', 1, '2025-03-06 16:09:00', '2025-03-06 16:11:11'),
(4, 1, 'Africa Cup of Nations (AFCON)', 'afcon', 'The premier competition for African national teams.The premier competition for African national teams.', 'afcon.jpg', 1, '2025-03-06 16:09:00', '2025-03-06 16:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_items`
--
ALTER TABLE `home_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sports_name_unique` (`name`) USING HASH,
  ADD UNIQUE KEY `sports_slug_unique` (`slug`) USING HASH;

--
-- Indexes for table `sports_featured_photos`
--
ALTER TABLE `sports_featured_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sport_id` (`sport_id`);

--
-- Indexes for table `sports_main_category`
--
ALTER TABLE `sports_main_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sport_id` (`sport_id`);

--
-- Indexes for table `sports_sub_category`
--
ALTER TABLE `sports_sub_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `main_cat_id` (`main_cat_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_items`
--
ALTER TABLE `home_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sports_featured_photos`
--
ALTER TABLE `sports_featured_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sports_main_category`
--
ALTER TABLE `sports_main_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sports_sub_category`
--
ALTER TABLE `sports_sub_category`
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
-- Constraints for table `sports_featured_photos`
--
ALTER TABLE `sports_featured_photos`
  ADD CONSTRAINT `sports_featured_photos_ibfk_1` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sports_main_category`
--
ALTER TABLE `sports_main_category`
  ADD CONSTRAINT `sports_main_category_ibfk_1` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sports_sub_category`
--
ALTER TABLE `sports_sub_category`
  ADD CONSTRAINT `sports_sub_category_ibfk_1` FOREIGN KEY (`main_cat_id`) REFERENCES `sports_main_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
