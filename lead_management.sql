-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 07:59 AM
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
-- Database: `lead_management`
--

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
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` enum('New','In Progress','Closed') NOT NULL DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`lead_id`, `name`, `email`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lead Name 1', 'lead1@example.com', '0987654321', 'Closed', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(2, 'Lead Name 2', 'lead2@example.com', '0987654322', 'New', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(3, 'Lead Name 3', 'lead3@example.com', '0987654323', 'New', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(4, 'Lead Name 4', 'lead4@example.com', '0987654324', 'Closed', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(5, 'Lead Name 5', 'lead5@example.com', '0987654325', 'In Progress', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(6, 'Lead Name 6', 'lead6@example.com', '0987654326', 'New', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(7, 'Lead Name 7', 'lead7@example.com', '0987654327', 'New', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(8, 'Lead Name 8', 'lead8@example.com', '0987654328', 'In Progress', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(9, 'Lead Name 9', 'lead9@example.com', '0987654329', 'In Progress', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(10, 'Lead Name 10', 'lead10@example.com', '09876543210', 'Closed', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(11, 'Lead Name 11', 'lead11@example.com', '09876543211', 'New', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(12, 'Lead Name 12', 'lead12@example.com', '09876543212', 'Closed', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(13, 'Lead Name 13', 'lead13@example.com', '09876543213', 'Closed', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(14, 'Lead Name 14', 'lead14@example.com', '09876543214', 'In Progress', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(15, 'Lead Name 15', 'lead15@example.com', '09876543215', 'In Progress', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(16, 'Lead Name 16', 'lead16@example.com', '09876543216', 'Closed', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(17, 'Lead Name 17', 'lead17@example.com', '09876543217', 'In Progress', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(18, 'Lead Name 18', 'lead18@example.com', '09876543218', 'In Progress', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(19, 'Lead Name 19', 'lead19@example.com', '09876543219', 'In Progress', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(20, 'Lead Name 20', 'lead20@example.com', '09876543220', 'New', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(21, 'Lead Name 21', 'lead21@example.com', '09876543221', 'New', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(22, 'Lead Name 22', 'lead22@example.com', '09876543222', 'In Progress', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(23, 'Lead Name 23', 'lead23@example.com', '09876543223', 'Closed', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(24, 'Lead Name 24', 'lead24@example.com', '09876543224', 'Closed', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(25, 'Lead Name 25', 'lead25@example.com', '09876543225', 'Closed', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(26, 'Lead Name 26', 'lead26@example.com', '09876543226', 'New', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(27, 'Lead Name 27', 'lead27@example.com', '09876543227', 'New', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(28, 'Lead Name 28', 'lead28@example.com', '09876543228', 'In Progress', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(29, 'Lead Name 29', 'lead29@example.com', '09876543229', 'In Progress', '2024-10-30 01:11:51', '2024-10-30 01:11:51'),
(30, 'Lead Name 30', 'lead30@example.com', '09876543230', 'In Progress', '2024-10-30 01:11:51', '2024-10-30 01:11:51');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_30_055607_create_leads_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`lead_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `lead_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
