-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 05:47 PM
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
-- Database: `stead_fast`
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
('7xGwTWQ7T5YvROhL8z31lZklgWzhyKTYIRHfB3Aq', 23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiME9lcjdlOFRSWHU2eGZqVFJNSUI2TFVyYkk3eDhVZ1o1UW1DMXJKYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyMzt9', 1713452803);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Dr. Stephania Larkin MD', 'huel.angelita@example.org', '2024-04-18 06:31:14', '$2y$12$atKnTYYf8Lgq7RBmdrNrsuR1sfhCn5/UN0K6D6gW81xTCO9O9iOpS', 'qYP09CcCqG', '2024-04-18 06:31:15', '2024-04-18 06:31:15'),
(3, 'Ericka Gibson', 'theo75@example.com', '2024-04-18 06:31:15', '$2y$12$atKnTYYf8Lgq7RBmdrNrsuR1sfhCn5/UN0K6D6gW81xTCO9O9iOpS', '8YJL4Gjf6f', '2024-04-18 06:31:15', '2024-04-18 06:31:15'),
(4, 'Olen Block', 'reynolds.mariam@example.com', '2024-04-18 06:31:15', '$2y$12$atKnTYYf8Lgq7RBmdrNrsuR1sfhCn5/UN0K6D6gW81xTCO9O9iOpS', 'JqjqkBUBmc', '2024-04-18 06:31:15', '2024-04-18 06:31:15'),
(5, 'Rusty Brown PhD', 'leila46@example.com', '2024-04-18 06:31:15', '$2y$12$atKnTYYf8Lgq7RBmdrNrsuR1sfhCn5/UN0K6D6gW81xTCO9O9iOpS', 'zkB4ZoHUB8', '2024-04-18 06:31:15', '2024-04-18 06:31:15'),
(6, 'Francisco Wyman IV', 'nat99@example.net', '2024-04-18 06:31:15', '$2y$12$atKnTYYf8Lgq7RBmdrNrsuR1sfhCn5/UN0K6D6gW81xTCO9O9iOpS', 'S2mCQTylmD', '2024-04-18 06:31:15', '2024-04-18 06:31:15'),
(7, 'Prof. Daisy Erdman IV', 'clay10@example.net', '2024-04-18 06:31:15', '$2y$12$atKnTYYf8Lgq7RBmdrNrsuR1sfhCn5/UN0K6D6gW81xTCO9O9iOpS', 'PsNTauptrk', '2024-04-18 06:31:15', '2024-04-18 06:31:15'),
(8, 'Gladys Skiles', 'manuela.nicolas@example.com', '2024-04-18 06:31:15', '$2y$12$atKnTYYf8Lgq7RBmdrNrsuR1sfhCn5/UN0K6D6gW81xTCO9O9iOpS', 'eM1rp131gT', '2024-04-18 06:31:15', '2024-04-18 06:31:15'),
(9, 'Julianne Kovacek', 'bartell.giovani@example.net', '2024-04-18 06:31:15', '$2y$12$atKnTYYf8Lgq7RBmdrNrsuR1sfhCn5/UN0K6D6gW81xTCO9O9iOpS', 'A3PQE1KEhw', '2024-04-18 06:31:15', '2024-04-18 06:31:15'),
(10, 'Mr. Ryan Fisher Jr.', 'abelardo40@example.com', '2024-04-18 06:31:15', '$2y$12$atKnTYYf8Lgq7RBmdrNrsuR1sfhCn5/UN0K6D6gW81xTCO9O9iOpS', 'RjEf15vy2j', '2024-04-18 06:31:15', '2024-04-18 06:31:15'),
(11, 'Durward Powlowski', 'morar.abdiel@example.org', '2024-04-18 06:31:15', '$2y$12$atKnTYYf8Lgq7RBmdrNrsuR1sfhCn5/UN0K6D6gW81xTCO9O9iOpS', '1suMtoVR53', '2024-04-18 06:31:15', '2024-04-18 06:31:15'),
(12, 'Nico Feeney I', 'susanna40@example.net', '2024-04-18 06:32:50', '$2y$12$cLR4iRHpICgwug8mkZPAKeIWx7U1pdcDmrkrLtYv680PL430TtRxC', 'yeQF7GUvGj', '2024-04-18 06:32:50', '2024-04-18 06:32:50'),
(13, 'Jaron Wolff', 'esta.thompson@example.net', '2024-04-18 06:32:50', '$2y$12$cLR4iRHpICgwug8mkZPAKeIWx7U1pdcDmrkrLtYv680PL430TtRxC', 'Et5NxiR6rS', '2024-04-18 06:32:50', '2024-04-18 06:32:50'),
(14, 'Kelton Connelly', 'belle.prohaska@example.net', '2024-04-18 06:32:50', '$2y$12$cLR4iRHpICgwug8mkZPAKeIWx7U1pdcDmrkrLtYv680PL430TtRxC', 'EX7qtDvYIC', '2024-04-18 06:32:50', '2024-04-18 06:32:50'),
(15, 'Brenna Effertz', 'maynard86@example.com', '2024-04-18 06:32:50', '$2y$12$cLR4iRHpICgwug8mkZPAKeIWx7U1pdcDmrkrLtYv680PL430TtRxC', 'pw4CbieF38', '2024-04-18 06:32:50', '2024-04-18 06:32:50'),
(16, 'Jordi Hagenes DDS', 'gonzalo81@example.com', '2024-04-18 06:32:50', '$2y$12$cLR4iRHpICgwug8mkZPAKeIWx7U1pdcDmrkrLtYv680PL430TtRxC', '77nEawEX4l', '2024-04-18 06:32:50', '2024-04-18 06:32:50'),
(17, 'Myles Daugherty DVM', 'ethel.parisian@example.com', '2024-04-18 06:32:50', '$2y$12$cLR4iRHpICgwug8mkZPAKeIWx7U1pdcDmrkrLtYv680PL430TtRxC', 'O1NwKGjxWM', '2024-04-18 06:32:51', '2024-04-18 06:32:51'),
(18, 'Dr. Miracle Ebert', 'dbednar@example.org', '2024-04-18 06:32:50', '$2y$12$cLR4iRHpICgwug8mkZPAKeIWx7U1pdcDmrkrLtYv680PL430TtRxC', 'ti4BP9ouXT', '2024-04-18 06:32:51', '2024-04-18 06:32:51'),
(19, 'Charley Wyman', 'lillie78@example.com', '2024-04-18 06:32:50', '$2y$12$cLR4iRHpICgwug8mkZPAKeIWx7U1pdcDmrkrLtYv680PL430TtRxC', 'hP9XP1DdzL', '2024-04-18 06:32:51', '2024-04-18 06:32:51'),
(20, 'Trisha Ruecker MD', 'ephraim20@example.net', '2024-04-18 06:32:50', '$2y$12$cLR4iRHpICgwug8mkZPAKeIWx7U1pdcDmrkrLtYv680PL430TtRxC', 'P7azde3HLa', '2024-04-18 06:32:51', '2024-04-18 06:32:51'),
(21, 'Mr. Modesto Daniel IV', 'xhackett@example.net', '2024-04-18 06:32:50', '$2y$12$cLR4iRHpICgwug8mkZPAKeIWx7U1pdcDmrkrLtYv680PL430TtRxC', '4vAQ4q0llW', '2024-04-18 06:32:51', '2024-04-18 06:32:51'),
(23, 'user', 'user@gmail.com', '2024-04-18 07:07:00', '$2y$12$L/o7NplMxex.HzePwn3pe.bAMWh50RYa/NZoNjcCP2UYzG0FNbdei', 'nxhiAohNAU4rH1a9UtrLEDpeFcXY9aSNBtXm2bX3SS2JDgiNIevfLYM8zEQG', '2024-04-18 07:07:01', '2024-04-18 07:07:01');

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
