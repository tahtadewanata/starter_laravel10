-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 21, 2024 at 03:45 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starter_10`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_groups`
--

CREATE TABLE `menu_groups` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `permission_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posision` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_groups`
--

INSERT INTO `menu_groups` (`id`, `name`, `status`, `permission_name`, `posision`, `created_at`, `updated_at`) VALUES
('85aed487-0584-4b10-93cf-27acac2e53a2', 'General', 1, 'dashboard_index', 1, '2024-03-14 19:29:00', '2024-03-14 20:33:38'),
('a4d95e4c-4521-434b-b970-157b9689b3f7', 'Settings', 1, 'setting', 2, '2024-03-14 20:42:25', '2024-03-14 20:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `permission_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_group_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posision` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `icon`, `route`, `status`, `permission_name`, `menu_group_id`, `posision`, `created_at`, `updated_at`) VALUES
('0445ec05-db85-4f14-b332-d64e236a75b4', 'General Setting', 'ri-settings-4-line', 'setting.index', 1, 'setting_index', 'a4d95e4c-4521-434b-b970-157b9689b3f7', 6, '2024-03-14 22:51:13', '2024-03-14 22:51:13'),
('2dbbea16-b7bd-4c6d-80fc-060c05b7f666', 'dashboard', 'ri-home-5-line', 'dashboard.index', 1, 'dashboard_index', '85aed487-0584-4b10-93cf-27acac2e53a2', 1, '2024-03-14 20:15:43', '2024-03-14 20:57:39'),
('39f78282-3124-4ece-9406-380394d3d700', 'Menu Management', 'ri-menu-line', 'menu.index', 1, 'menu_index', 'a4d95e4c-4521-434b-b970-157b9689b3f7', 5, '2024-03-14 22:49:06', '2024-03-14 22:49:06'),
('460977a2-5b72-4940-8ea0-fa3be7f9fcdc', 'User Management', 'ri-file-user-line', 'user.index', 1, 'user_index', 'a4d95e4c-4521-434b-b970-157b9689b3f7', 4, '2024-03-14 22:46:47', '2024-03-14 22:46:47'),
('b8427fb9-a59e-4398-8d39-428440941b59', 'Permission Management', 'ri-shield-star-line', 'permission.index', 1, 'permission_index', 'a4d95e4c-4521-434b-b970-157b9689b3f7', 2, '2024-03-14 21:28:15', '2024-03-14 21:28:15'),
('cb233244-f303-4856-9473-f66f97c60e43', 'Route Management', 'ri-link', 'route.index', 1, 'route_index', 'a4d95e4c-4521-434b-b970-157b9689b3f7', 3, '2024-03-14 22:43:07', '2024-03-14 22:43:07'),
('cf64a4bf-6969-4e07-9d0f-cec9580c8eda', 'Role Management', 'ri-shield-user-line', 'role.index', 1, 'role_index', 'a4d95e4c-4521-434b-b970-157b9689b3f7', 1, '2024-03-14 20:52:37', '2024-03-14 20:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_19_092704_create_permission_tables', 1),
(7, '2023_08_19_094825_create_routes_table', 1),
(8, '2023_08_20_084236_create_settings_table', 1),
(9, '2023_09_03_130926_create_menu_groups_table', 1),
(10, '2023_10_03_130908_create_menu_items_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', '30a8f3bd-d1b8-47db-b5ae-2d837d66a7b7'),
(2, 'App\\Models\\User', 'fd39dae0-8f64-498f-a9a6-26f7c2aaad68');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'general', 'web', NULL, '2024-03-14 18:47:29', '2024-03-14 18:47:29'),
(2, 'setting', 'web', NULL, '2024-03-14 18:47:29', '2024-03-14 18:47:29'),
(3, 'dashboard_index', 'web', NULL, '2024-03-14 18:47:29', '2024-03-14 18:47:29'),
(4, 'setting_index', 'web', NULL, '2024-03-14 18:47:30', '2024-03-14 18:47:30'),
(5, 'setting_update', 'web', NULL, '2024-03-14 18:47:30', '2024-03-14 18:47:30'),
(6, 'user_index', 'web', NULL, '2024-03-14 18:47:30', '2024-03-14 18:47:30'),
(7, 'user_store', 'web', NULL, '2024-03-14 18:47:30', '2024-03-14 18:47:30'),
(8, 'user_update', 'web', NULL, '2024-03-14 18:47:30', '2024-03-14 18:47:30'),
(9, 'user_destroy', 'web', NULL, '2024-03-14 18:47:30', '2024-03-14 18:47:30'),
(10, 'profile_index', 'web', NULL, '2024-03-14 18:47:30', '2024-03-14 18:47:30'),
(11, 'menu_index', 'web', NULL, '2024-03-14 18:47:30', '2024-03-14 18:47:30'),
(12, 'menu_store', 'web', NULL, '2024-03-14 18:47:30', '2024-03-14 18:47:30'),
(13, 'menu_update', 'web', NULL, '2024-03-14 18:47:30', '2024-03-14 18:47:30'),
(14, 'menu_destroy', 'web', NULL, '2024-03-14 18:47:30', '2024-03-14 18:47:30'),
(15, 'menu_item_index', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(16, 'menu_item_store', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(17, 'menu_item_update', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(18, 'menu_item_destroy', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(19, 'route_index', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(20, 'route_store', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(21, 'route_update', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(22, 'route_destroy', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(23, 'role_index', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(24, 'role_store', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(25, 'role_update', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(26, 'role_destroy', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(27, 'permission_index', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(28, 'permission_store', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(29, 'permission_update', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(30, 'permission_destroy', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31'),
(2, 'User', 'web', NULL, '2024-03-14 18:47:31', '2024-03-14 18:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(1, 2),
(3, 2),
(10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` bigint UNSIGNED NOT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `route`, `permission_name`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.index', 'dashboard_index', 1, NULL, NULL, NULL),
(2, 'setting.index', 'setting_index', 1, NULL, NULL, NULL),
(3, 'setting.update', 'setting_update', 1, NULL, NULL, NULL),
(4, 'user.index', 'user_index', 1, NULL, NULL, NULL),
(5, 'user.store', 'user_store', 1, NULL, NULL, NULL),
(6, 'user.update', 'user_update', 1, NULL, NULL, NULL),
(7, 'user.destroy', 'user_destroy', 1, NULL, NULL, NULL),
(8, 'profile.index', 'profile_index', 1, NULL, NULL, NULL),
(9, 'menu.index', 'menu_index', 1, NULL, NULL, NULL),
(10, 'menu.store', 'menu_store', 1, NULL, NULL, NULL),
(11, 'menu.update', 'menu_update', 1, NULL, NULL, NULL),
(12, 'menu.destroy', 'menu_destroy', 1, NULL, NULL, NULL),
(13, 'menu.item.index', 'menu_item_index', 1, NULL, NULL, NULL),
(14, 'menu.item.store', 'menu_item_store', 1, NULL, NULL, NULL),
(15, 'menu.item.update', 'menu_item_update', 1, NULL, NULL, NULL),
(16, 'menu.item.destroy', 'menu_item_destroy', 1, NULL, NULL, NULL),
(17, 'route.index', 'route_index', 1, NULL, NULL, NULL),
(18, 'route.store', 'route_store', 1, NULL, NULL, NULL),
(19, 'route.update', 'route_update', 1, NULL, NULL, NULL),
(20, 'route.destroy', 'route_destroy', 1, NULL, NULL, NULL),
(21, 'role.index', 'role_index', 1, NULL, NULL, NULL),
(22, 'role.store', 'role_store', 1, NULL, NULL, NULL),
(23, 'role.update', 'role_update', 1, NULL, NULL, NULL),
(24, 'role.destroy', 'role_destroy', 1, NULL, NULL, NULL),
(25, 'permission.index', 'permission_index', 1, NULL, NULL, NULL),
(26, 'permission.store', 'permission_store', 1, NULL, NULL, NULL),
(27, 'permission.update', 'permission_update', 1, NULL, NULL, NULL),
(28, 'permission.destroy', 'permission_destroy', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `data`, `created_at`, `updated_at`) VALUES
('f101917c-d5fd-4fa3-9c09-b2ea5c5a242f', 'General', '{\"logo\": \"{\\\"sm\\\":\\\"logo-sm.png\\\",\\\"dark\\\":\\\"logo-dark.png\\\",\\\"light\\\":\\\"logo-light.png\\\"}\", \"role\": \"User\"}', '2024-03-15 00:48:45', '2024-03-15 00:48:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
('30a8f3bd-d1b8-47db-b5ae-2d837d66a7b7', 'Super Admin', 'superadmin@gmail.com', '2024-03-14 18:47:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'TnjSg5aVLc2aAIMHpFvFInE0NFmbDXF73lVS8UBQRJdVVRVxhYtl30JDUeev', '2024-03-14 18:47:29', '2024-03-14 18:47:29'),
('fd39dae0-8f64-498f-a9a6-26f7c2aaad68', 'User', 'user@gmail.com', '2024-03-14 18:47:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '3moTUJ9gRkRPFlwUIAzNL0ds9JYCX1uY58v9Juj9N4YFXkiZcLyghYUqcDWv', '2024-03-14 18:47:29', '2024-03-14 18:47:29');

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
-- Indexes for table `menu_groups`
--
ALTER TABLE `menu_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
