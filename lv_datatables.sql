-- --------------------------------------------------------
-- Host:                         localhost
-- Versi server:                 8.0.31 - MySQL Community Server - GPL
-- OS Server:                    Win64
-- HeidiSQL Versi:               12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk lv_datatables
CREATE DATABASE IF NOT EXISTS `lv_datatables` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lv_datatables`;

-- membuang struktur untuk table lv_datatables.classes
CREATE TABLE IF NOT EXISTS `classes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel lv_datatables.classes: 5 rows
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Class 1', NULL, NULL),
	(2, 'Class 2', NULL, NULL),
	(3, 'Class 3', NULL, NULL),
	(4, 'Class 4', NULL, NULL),
	(5, 'Class 5', NULL, NULL);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;

-- membuang struktur untuk table lv_datatables.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel lv_datatables.failed_jobs: 0 rows
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- membuang struktur untuk table lv_datatables.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel lv_datatables.migrations: 6 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2021_04_06_050115_create_classes_table', 1),
	(5, '2021_04_06_050209_create_sections_table', 1),
	(6, '2021_04_06_050244_create_students_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table lv_datatables.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel lv_datatables.password_resets: 0 rows
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- membuang struktur untuk table lv_datatables.sections
CREATE TABLE IF NOT EXISTS `sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `class_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sections_class_id_foreign` (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel lv_datatables.sections: 10 rows
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` (`id`, `class_id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Section A', NULL, NULL),
	(2, 1, 'Section B', NULL, NULL),
	(3, 2, 'Section A', NULL, NULL),
	(4, 2, 'Section B', NULL, NULL),
	(5, 3, 'Section A', NULL, NULL),
	(6, 3, 'Section B', NULL, NULL),
	(7, 4, 'Section A', NULL, NULL),
	(8, 4, 'Section B', NULL, NULL),
	(9, 5, 'Section A', NULL, NULL),
	(10, 5, 'Section B', NULL, NULL);
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;

-- membuang struktur untuk table lv_datatables.students
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `class_id` bigint unsigned NOT NULL,
  `section_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `students_class_id_foreign` (`class_id`),
  KEY `students_section_id_foreign` (`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel lv_datatables.students: 47 rows
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`id`, `class_id`, `section_id`, `name`, `email`, `address`, `phone_number`, `created_at`, `updated_at`) VALUES
	(3, 1, 1, 'Sophia Ratke', 'koepp.humberto@hotmail.com', '45709 Jaylan Spur Apt. 514\nLake Deon, CO 05435', '606-749-5691', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(4, 4, 7, 'Gerhard Lehner', 'mueller.christa@koepp.org', '391 Sienna Plaza\nWest Greg, DC 04595', '463.993.7195', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(5, 1, 1, 'Dr. Torrance Kuhlman', 'duane.ondricka@lesch.net', '507 Dibbert Station Apt. 695\nPfefferchester, IL 77742-4112', '682.468.8521', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(6, 5, 9, 'Maryam O\'Conner', 'kraig25@sauer.com', '24298 Katlynn Tunnel\nHarmonside, ND 32803-7107', '475.980.9214', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(7, 5, 9, 'Lelah Gottlieb', 'williamson.burley@gmail.com', '4190 Mellie Track\nTreutelville, OR 17676-4587', '+1-540-528-4623', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(8, 3, 5, 'Hellen Goldner', 'cletus42@gmail.com', '9707 Fritsch Manor\nBergstromstad, TX 85950', '540.986.4687', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(9, 1, 1, 'Willa Emard', 'hharber@yahoo.com', '883 Eva Freeway\nMillerton, MI 70626', '+1 (262) 624-6157', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(10, 4, 7, 'Maegan Kiehn', 'price.doyle@pollich.com', '394 Abbigail Springs\nEastonstad, NM 99837-2300', '+1.424.945.6631', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(11, 1, 1, 'Prof. Myriam Crist Sr.', 'odell81@mayert.com', '41402 Ayden Canyon\nWest Ethel, NC 66311-7317', '1-817-718-4087', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(12, 3, 5, 'Hailey Fay II', 'yolanda.abshire@hotmail.com', '4329 Mariana Mission Suite 194\nHayleeland, MA 83334-2347', '+1-401-697-3967', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(13, 1, 1, 'Jamie Bode', 'wilkinson.hyman@ziemann.net', '44320 Carol Route Suite 814\nWest Aliciaville, IN 62816', '+1 (220) 243-5308', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(14, 3, 5, 'Julie Rosenbaum', 'johns.vallie@hotmail.com', '665 William Walks\nCalistafort, SD 08362-4410', '(754) 957-2527', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(15, 1, 1, 'Easter Lesch V', 'mueller.clarissa@schmidt.com', '93797 Botsford Ports\nStellaberg, TN 53121', '+17738824651', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(16, 1, 1, 'Jody Hoeger I', 'hettinger.connie@tromp.org', '97382 Eudora Vista Apt. 128\nWeissnatland, ME 38478-3915', '878.617.0176', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(17, 1, 1, 'Emelie Carroll IV', 'omari10@yahoo.com', '352 Claude Glens\nLockmanberg, CA 80362-8149', '+1-859-301-6123', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(18, 4, 7, 'Deven Padberg', 'lbotsford@gmail.com', '3753 Roberta Roads\nAlisaburgh, FL 70952', '1-704-719-9464', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(19, 5, 9, 'Ms. Nia Yost', 'norberto.kreiger@wiegand.info', '37713 Sid Square Suite 175\nDibbertstad, OK 25145', '+1-920-618-4206', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(20, 2, 3, 'Prof. Brady Turner', 'kmcclure@stracke.com', '766 Wiza Forks Apt. 370\nEast Lexishire, WA 39607-2663', '+1-330-675-8678', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(21, 2, 3, 'Joel Powlowski', 'lbernhard@hotmail.com', '7488 Hermann Crest\nMadalinebury, WI 96213-7772', '+1 (619) 682-8034', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(22, 3, 5, 'Zoe Stanton', 'akris@prohaska.com', '175 Kreiger Vista Apt. 538\nSouth Deshaun, VA 97569', '+1-539-420-0867', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(23, 3, 5, 'Delaney Hudson', 'flossie.denesik@yahoo.com', '42096 Carter Orchard Apt. 542\nPort Manuelton, NV 35617', '+1-540-214-0998', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(24, 3, 5, 'Issac Stehr II', 'garry.schmitt@rolfson.com', '2752 Hosea Pines\nSouth Rosie, VT 19875-8905', '1-223-407-5849', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(25, 3, 5, 'Maye Thiel DVM', 'syble.keeling@waelchi.org', '879 Waldo Garden Apt. 323\nNorth Pearline, OR 97108', '+1-678-907-7355', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(26, 1, 1, 'Ms. Odie Watsica DVM', 'korey.schroeder@prosacco.com', '4930 Bulah Square\nNew Carley, LA 99587-5496', '773.421.3330', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(28, 1, 1, 'Casper Koch', 'yfadel@yahoo.com', '4516 Allan Ridges\nLake Shermanton, AR 89853', '+1.989.375.7801', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(29, 1, 1, 'Dr. Wiley Tremblay DDS', 'morissette.barrett@yahoo.com', '833 Ritchie Greens\nCalliechester, IN 48162-1595', '+1-615-284-3616', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(30, 5, 9, 'Ms. River Connelly V', 'hammes.johan@hotmail.com', '833 Nitzsche Neck\nMicheleport, VT 77765-9309', '1-757-281-8896', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(31, 2, 3, 'Dr. Alec Crona III', 'rachel.herman@gmail.com', '684 Champlin Burg\nSouth Andres, MI 83140-9681', '(941) 555-3353', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(32, 1, 1, 'Tyrese Boyer', 'qrath@huels.com', '82419 Jaskolski Circle Suite 294\nSimonisstad, AR 46907-1021', '469.675.9675', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(33, 5, 9, 'Loraine Turner', 'parisian.andres@schumm.biz', '3934 Anderson Mountains Suite 974\nPort Alexzanderstad, AK 37170-6637', '463-934-7292', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(34, 4, 7, 'Leo Wehner', 'rosanna26@gmail.com', '742 Kendrick Mill\nFilibertoburgh, AL 64129', '+17816617936', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(35, 3, 5, 'Evie Kemmer', 'kylie.schimmel@yahoo.com', '64453 Cecelia Spurs Suite 882\nSedrickstad, TX 48312', '+1.878.835.1898', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(36, 1, 1, 'Marcia Zieme', 'demetrius34@schulist.net', '35232 Von Divide Apt. 884\nSouth Priscillaville, CO 30796-4257', '1-231-993-9438', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(37, 3, 5, 'Francis Ferry', 'quitzon.myrtis@hotmail.com', '760 Maiya River Suite 122\nCollinsfurt, CT 10338', '+1-618-492-1855', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(38, 5, 9, 'Kobe Gutkowski', 'leif09@gmail.com', '128 Velma Junctions Suite 276\nKeithmouth, MA 32986', '+1-240-212-1322', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(39, 3, 5, 'Dorian Schmeler', 'rohan.petra@beier.info', '8198 Keebler Stravenue Apt. 484\nWest Hendersonland, MD 91574-8163', '+1-838-802-0782', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(40, 3, 5, 'Muriel Ebert', 'rozella30@schroeder.com', '25335 Bette Avenue\nPort Drewchester, VA 42017-0275', '+1-908-980-3374', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(41, 2, 3, 'Nona Spinka', 'koss.zora@stokes.org', '615 Mueller Run Suite 266\nGabetown, OR 23334', '+1.479.684.2034', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(42, 1, 1, 'Janis Gutmann', 'ydibbert@yahoo.com', '6071 Langosh Tunnel Suite 622\nLake Llewellynchester, MS 37722-4282', '+1.628.970.5836', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(43, 2, 3, 'Joaquin Powlowski', 'imelda87@ratke.com', '321 Lydia Meadows\nNew Tonistad, LA 06010', '1-361-826-1703', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(44, 1, 1, 'Arden Beer', 'torphy.roosevelt@herzog.com', '850 Hudson Divide\nPort Devyn, AK 52337', '321.813.2529', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(45, 5, 9, 'Roberto Hane V', 'lschaden@beatty.com', '38510 Collier Prairie Apt. 301\nCronahaven, KY 70907', '706.684.4107', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(46, 5, 9, 'Dr. Kelley Runolfsdottir', 'corine.quitzon@yahoo.com', '292 Margarette Trafficway\nLake Celine, OR 43760-5168', '854.499.6244', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(47, 4, 7, 'Mr. Emmitt Dickinson', 'royal90@yahoo.com', '25997 Brooke Cape\nFraneckifurt, MT 71060', '1-858-658-7566', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(48, 1, 1, 'Nicholaus Rodriguez', 'auer.muriel@gmail.com', '595 Lynch Mount\nHoegerchester, MS 42108', '1-708-417-8619', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(49, 4, 7, 'Roselyn Walker', 'lexi.stark@yahoo.com', '7700 Wolff Cliffs\nBlancaburgh, RI 21308-3023', '1-640-904-9541', '2024-06-24 03:24:34', '2024-06-24 03:24:34'),
	(50, 5, 9, 'Mr. Jedidiah Champlin', 'jbins@bailey.com', '1264 Hirthe Dam Suite 951\nRobertsbury, NC 50344', '586.601.1793', '2024-06-24 03:24:34', '2024-06-24 03:24:34');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;

-- membuang struktur untuk table lv_datatables.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel lv_datatables.users: 0 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
