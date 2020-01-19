-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table egcb_notice.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table egcb_notice.migrations: ~3 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2019_10_20_110200_create_notices_table', 1),
	(3, '2019_10_30_153210_create_notice_types_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table egcb_notice.notices
CREATE TABLE IF NOT EXISTS `notices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `notice_type_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `closing` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table egcb_notice.notices: ~2 rows (approximately)
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` (`id`, `notice_type_id`, `title`, `file`, `closing`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Notice 1', 'notice/1572452102.PNG', NULL, '2019-10-30 16:15:02', '2019-10-30 16:15:02'),
	(2, 2, 'Notice 2', 'notice/1572452126.PNG', NULL, '2019-10-30 16:15:26', '2019-10-30 16:15:26');
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;

-- Dumping structure for table egcb_notice.notice_types
CREATE TABLE IF NOT EXISTS `notice_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notice_types_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table egcb_notice.notice_types: ~2 rows (approximately)
/*!40000 ALTER TABLE `notice_types` DISABLE KEYS */;
INSERT INTO `notice_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Type 1', '2019-10-30 16:12:30', '2019-10-30 16:12:30'),
	(2, 'Type 2', '2019-10-30 16:12:37', '2019-10-30 16:12:37');
/*!40000 ALTER TABLE `notice_types` ENABLE KEYS */;

-- Dumping structure for table egcb_notice.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table egcb_notice.users: ~4 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', 'super-admin@egcb.com.bd', NULL, 'admin', 'images/Profile/1572175223.jpg', '$2y$10$pLZiF1R/QBzWVeK5c5UFKeBaFDn7rv6ciA8ZF00KWcYmFlTq9CHgm', NULL, '2019-10-20 07:45:51', '2019-10-27 11:20:23'),
	(2, 'Admin', 'admin@egcb.com.bd', NULL, NULL, NULL, '$2y$10$ZZbR19P3BSmZ5gW1GgDj1uuFLkvYP.uMgRRY9Vp6lASOwkzC/OPvG', NULL, '2019-10-20 07:47:04', '2019-10-20 07:47:04'),
	(7, 'Test User', 'test@egcb.com.bd', NULL, NULL, NULL, '$2y$10$gdbG7BCSExfFPnnC6Vw8WuDTJGQ472Ae0aa8aiBPNw6KBis/JB1Pq', NULL, '2019-10-28 04:24:28', '2019-10-28 04:24:28'),
	(8, 'Test 3', 'test3', NULL, NULL, NULL, '$2y$10$GskdJouHvV0kPFE3lvswv.6hsrAQEOn8pyhwjLEKwvMkOTjmKKgj.', NULL, '2019-10-30 16:34:25', '2019-10-30 16:34:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
