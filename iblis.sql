-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2019 at 01:33 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iblis`
--

-- --------------------------------------------------------

--
-- Table structure for table `adhoc_configs`
--

CREATE TABLE `adhoc_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `adhoc_configs`
--

INSERT INTO `adhoc_configs` (`id`, `name`, `option`) VALUES
(1, 'Report', 1),
(2, 'ULIN', 1),
(3, 'Clinician_UI', 2);

-- --------------------------------------------------------

--
-- Table structure for table `analytic_specimen_rejections`
--

CREATE TABLE `analytic_specimen_rejections` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `specimen_id` int(10) UNSIGNED NOT NULL,
  `rejected_by` int(10) UNSIGNED NOT NULL,
  `rejection_reason_id` int(10) UNSIGNED DEFAULT NULL,
  `reject_explained_to` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_rejected` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `analytic_specimen_rejection_reasons`
--

CREATE TABLE `analytic_specimen_rejection_reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `specimen_id` int(10) UNSIGNED NOT NULL,
  `rejection_id` int(10) UNSIGNED NOT NULL,
  `reason_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 2, 1),
(4, 3, 4),
(5, 1, 1),
(6, 2, 1),
(7, 3, 4),
(8, 4, 4),
(9, 1, 1),
(10, 2, 1),
(11, 3, 4),
(12, 4, 4),
(13, 1, 1),
(14, 2, 1),
(15, 3, 4),
(16, 4, 4),
(17, 8, 2),
(18, 8, 3),
(19, 8, 4),
(20, 1, 1),
(21, 2, 1),
(22, 3, 4),
(23, 4, 4),
(24, 8, 2),
(25, 8, 3),
(26, 8, 4),
(27, 9, 3),
(28, 9, 4),
(29, 1, 1),
(30, 2, 1),
(31, 2, 2),
(32, 2, 3),
(33, 3, 3),
(34, 3, 4),
(35, 4, 3),
(36, 4, 4),
(37, 5, 3),
(38, 6, 3),
(39, 7, 3),
(40, 8, 2),
(41, 8, 3),
(42, 8, 4),
(43, 9, 3),
(44, 9, 4),
(45, 10, 3),
(46, 10, 4),
(47, 1, 1),
(48, 2, 1),
(49, 2, 2),
(50, 2, 3),
(51, 3, 3),
(52, 3, 4),
(53, 4, 3),
(54, 4, 4),
(55, 5, 3),
(56, 6, 3),
(57, 7, 3),
(58, 8, 2),
(59, 8, 3),
(60, 8, 4),
(61, 9, 3),
(62, 9, 4),
(63, 10, 3),
(64, 10, 4),
(65, 11, 3),
(66, 11, 4);

-- --------------------------------------------------------

--
-- Table structure for table `barcode_settings`
--

CREATE TABLE `barcode_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `encoding_format` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `barcode_width` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `barcode_height` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text_size` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `barcode_settings`
--

INSERT INTO `barcode_settings` (`id`, `encoding_format`, `barcode_width`, `barcode_height`, `text_size`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'code39', '2', '30', '11', NULL, '2019-03-21 09:33:14', '2019-03-21 09:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `clinicians`
--

CREATE TABLE `clinicians` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cadre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clinicians`
--

INSERT INTO `clinicians` (`id`, `name`, `cadre`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Foo Foo', 'Dr', '0000000', '', '2019-03-21 14:19:43', '2019-03-21 14:19:43'),
(2, 'Calvin', 'M/O', '0773090984', '', '2019-03-22 12:40:01', '2019-03-22 12:40:01'),
(3, 'Muheru Kevin', 'Intern DR', '0775289839', '', '2019-03-22 12:41:17', '2019-03-22 12:41:17'),
(4, 'Dr Atim Joan', 'M/O', '0773181887', '', '2019-03-22 12:42:05', '2019-03-22 12:42:05'),
(5, 'AHURRA RACHEAL', 'COUNCILLAR', '0779309622', '', '2019-03-22 12:43:03', '2019-03-22 12:43:03'),
(6, 'NGABWO BALE', 'M/O', '0774068351', '', '2019-03-22 12:44:03', '2019-03-22 12:44:03'),
(7, 'DR.SOLOMON', 'M/O', '078574335', '', '2019-03-22 12:44:49', '2019-03-22 12:44:49'),
(8, 'DR MUGWANO ISAAC', 'MOSG', '', '', '2019-03-22 12:45:39', '2019-03-22 12:45:39'),
(9, 'DR ANITA BIGIRWA', 'M/O', '0781523327', '', '2019-03-22 12:46:53', '2019-03-22 12:48:26'),
(10, 'BAMPS', 'M/O', '0776351835', '', '2019-03-22 12:49:14', '2019-03-22 12:49:14'),
(11, 'MWIRUMUBI', 'M/O', '0781213374', '', '2019-03-22 12:50:03', '2019-03-22 12:50:03'),
(12, 'DR KALIMU', 'M/O', '0776036950', '', '2019-03-22 12:51:26', '2019-03-22 12:51:26'),
(13, 'AJAMBO PATRICIA D', 'INTERN DR', '0778266505', '', '2019-03-22 12:52:11', '2019-03-22 12:52:11'),
(14, 'OCAKA TOM', 'STUDENT', '', '', '2019-03-22 12:52:51', '2019-03-22 12:52:51'),
(15, 'DR MATHEW', 'M.O', '07759807212', '', '2019-03-22 12:53:45', '2019-03-22 12:53:45'),
(16, 'MALI JOHN', 'MO', '0772656700', '', '2019-03-22 12:55:10', '2019-03-22 12:55:10'),
(17, 'SAMUEL OOGA', 'BMS', '0751023008', '', '2019-03-22 12:56:02', '2019-03-22 12:56:02'),
(18, 'DR KAWUBI A', 'M.O', '', '', '2019-03-22 12:56:52', '2019-03-22 12:56:52'),
(19, 'DR. KAJIMU', 'M.O', '0776036950', '', '2019-03-22 12:57:37', '2019-03-22 12:57:37'),
(20, 'DR WARREN', 'MO', '0776481128', '', '2019-03-22 12:58:32', '2019-03-22 12:58:32'),
(21, 'DR BIJJA ROBERT', 'M.O', '0774850004', '', '2019-03-22 12:59:20', '2019-03-22 12:59:20'),
(22, 'MASEMBE BONIFACE', 'C/STUDENT', '0703683333', '', '2019-03-22 13:00:18', '2019-03-22 13:00:18'),
(23, 'PENINAH', 'MO', '', '', '2019-03-22 13:01:11', '2019-03-22 13:01:11'),
(24, 'RICHARD', 'M.O', '0787741961', '', '2019-03-22 13:02:13', '2019-03-22 13:02:13'),
(25, 'ALBERT TWINOBUSINGYE', 'M.O', '0700452465', '', '2019-03-22 13:04:47', '2019-03-22 13:04:47'),
(26, 'DR BAMPABWIRE', 'M.O', '', '', '2019-03-22 13:05:33', '2019-03-22 13:05:33'),
(27, 'RUSHEZA NICODEMUS', 'S.C.O', '0776570821', '', '2019-03-22 13:07:06', '2019-03-22 13:07:06'),
(28, 'KATEEBA RUTH', 'LAB ASST', '0782533267', '', '2019-03-22 13:10:03', '2019-03-22 13:10:03'),
(29, 'Mathew ', 'Doctor', '0775780717', '', '2019-03-26 11:31:53', '2019-03-26 11:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `commodities`
--

CREATE TABLE `commodities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `metric_id` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `item_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `storage_req` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `min_level` int(11) NOT NULL,
  `max_level` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `controls`
--

CREATE TABLE `controls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lot_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `control_measures`
--

CREATE TABLE `control_measures` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `control_id` int(10) UNSIGNED NOT NULL,
  `control_measure_type_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `control_measure_ranges`
--

CREATE TABLE `control_measure_ranges` (
  `id` int(10) UNSIGNED NOT NULL,
  `upper_range` decimal(6,2) DEFAULT NULL,
  `lower_range` decimal(6,2) DEFAULT NULL,
  `alphanumeric` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `control_measure_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `control_results`
--

CREATE TABLE `control_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `results` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `control_measure_id` int(10) UNSIGNED NOT NULL,
  `control_test_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `control_tests`
--

CREATE TABLE `control_tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `entered_by` int(10) UNSIGNED NOT NULL,
  `control_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `culture_durations`
--

CREATE TABLE `culture_durations` (
  `id` int(10) UNSIGNED NOT NULL,
  `duration` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `culture_observations`
--

CREATE TABLE `culture_observations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `observation` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_alphanumeric_counts`
--

CREATE TABLE `daily_alphanumeric_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `daily_test_type_count_id` int(10) UNSIGNED NOT NULL,
  `measure_id` int(10) UNSIGNED NOT NULL,
  `measure_range_id` int(10) UNSIGNED NOT NULL,
  `result_interpretation_id` int(10) UNSIGNED DEFAULT NULL,
  `count` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_gram_stain_result_counts`
--

CREATE TABLE `daily_gram_stain_result_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `daily_test_type_count_id` int(10) UNSIGNED NOT NULL,
  `gram_stain_range_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_hiv_counts`
--

CREATE TABLE `daily_hiv_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `daily_test_type_count_id` int(10) UNSIGNED NOT NULL,
  `purpose` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(10) UNSIGNED NOT NULL,
  `measure_id` int(10) UNSIGNED DEFAULT NULL,
  `measure_range_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_negative_cultures`
--

CREATE TABLE `daily_negative_cultures` (
  `id` int(10) UNSIGNED NOT NULL,
  `organism_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_negative_gram_stains`
--

CREATE TABLE `daily_negative_gram_stains` (
  `id` int(10) UNSIGNED NOT NULL,
  `gram_stain_range_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_numeric_range_counts`
--

CREATE TABLE `daily_numeric_range_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `daily_test_type_count_id` int(10) UNSIGNED NOT NULL,
  `measure_id` int(10) UNSIGNED NOT NULL,
  `result` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `result_interpretation_id` int(10) UNSIGNED DEFAULT NULL,
  `count` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_organism_counts`
--

CREATE TABLE `daily_organism_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `daily_test_type_count_id` int(10) UNSIGNED NOT NULL,
  `organism_id` int(10) UNSIGNED NOT NULL,
  `result_interpretation_id` int(10) UNSIGNED DEFAULT NULL,
  `count` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_rejection_reason_counts`
--

CREATE TABLE `daily_rejection_reason_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `daily_specimen_count_id` int(10) UNSIGNED NOT NULL,
  `reason_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_specimen_counts`
--

CREATE TABLE `daily_specimen_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `all` int(10) UNSIGNED NOT NULL,
  `accepted` int(10) UNSIGNED NOT NULL,
  `rejected` int(10) UNSIGNED NOT NULL,
  `referred_in` int(10) UNSIGNED DEFAULT NULL,
  `referred_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_specimen_type_counts`
--

CREATE TABLE `daily_specimen_type_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `daily_specimen_count_id` int(10) UNSIGNED NOT NULL,
  `specimen_type_id` int(10) UNSIGNED NOT NULL,
  `all` int(10) UNSIGNED NOT NULL,
  `accepted` int(10) UNSIGNED NOT NULL,
  `rejected` int(10) UNSIGNED NOT NULL,
  `referred_in` int(10) UNSIGNED NOT NULL,
  `referred_out` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_susceptibility_counts`
--

CREATE TABLE `daily_susceptibility_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `daily_organism_count_id` int(10) UNSIGNED NOT NULL,
  `antibiotic_id` int(10) UNSIGNED NOT NULL,
  `interpretation_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_test_counts`
--

CREATE TABLE `daily_test_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `all` int(10) UNSIGNED NOT NULL,
  `referred_in` int(10) UNSIGNED NOT NULL,
  `referred_out` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_test_type_counts`
--

CREATE TABLE `daily_test_type_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `daily_test_count_id` int(10) UNSIGNED NOT NULL,
  `test_type_id` int(10) UNSIGNED NOT NULL,
  `age_upper_limit` int(10) UNSIGNED NOT NULL,
  `age_lower_limit` int(10) UNSIGNED NOT NULL,
  `gender` int(10) UNSIGNED NOT NULL,
  `all` int(10) UNSIGNED NOT NULL,
  `referred_in` int(10) UNSIGNED NOT NULL,
  `referred_out` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_turn_around_time`
--

CREATE TABLE `daily_turn_around_time` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `daily_test_type_count_id` int(10) UNSIGNED NOT NULL,
  `avg_reception_tostart` int(10) UNSIGNED NOT NULL,
  `avg_start_tocompletion` int(10) UNSIGNED NOT NULL,
  `avg_reception_tocompletion` int(10) UNSIGNED NOT NULL,
  `avg_start_tovarification` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dhis2_facilities`
--

CREATE TABLE `dhis2_facilities` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `facility_contact` varchar(64) DEFAULT NULL,
  `facility_email` varchar(128) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `dhis2_name` varchar(128) DEFAULT NULL,
  `dhis2_uid` varchar(128) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dhis2_facilities`
--

INSERT INTO `dhis2_facilities` (`id`, `name`, `facility_contact`, `facility_email`, `active`, `code`, `dhis2_name`, `dhis2_uid`, `created_at`, `updated_at`) VALUES
(2, 'Abako H/C III', '0772312515', '', 1, NULL, 'Abako HC III', 'yDPmjwoOIxi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3, 'Aber Hospital', '0782117574', '', 1, NULL, 'Aber Hospital', 'cDGKAJzfkpf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(4, 'Abim Hospital', '0772896592', '', 1, NULL, 'Abim Hospital', 'RxPKxSBe0DC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(5, 'Aboke H/C IV', '0779203475', '', 1, NULL, 'Aboke HC IV', 'UIhutvdIhqU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(6, 'Abongomola H/C III', '0772868854', '', 1, NULL, 'Abongomola HC III', 'xzRSc5XHzys', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8, 'Achol Pii H/C III', '0774253869', '', 1, NULL, 'Achol Pii HC III', 'aKoVWgIufTx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(9, 'Acholi Bur H/C III', '0774832887', '', 1, NULL, 'Acholi-Bur HC III', 'KgFiiUmrRxI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(10, 'Adjumani Hospital', '0772918562', '', 1, NULL, 'Adjumani   HOSPITAL', 'hvtKTUxWNrt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(11, 'Adok H/C II', '0752418166', '', 1, NULL, 'Adok HC II', 'tdWJ67qCYZK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(12, 'Aduku H/C II (NGO)', '', NULL, 1, NULL, 'Aduku Mission HC II', 'YrbvkUaWpi1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(13, 'Aduku H/C IV', '0782972445', '', 1, NULL, 'Aduku HC IV', 'WEH3aMvIS0B', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(14, 'Agali H/C III', '0772991888', '', 1, NULL, 'Agali HC III', 'I9nJzN3m8qL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(15, 'Agoro H/C III', '0711068465', '', 1, NULL, 'Lamwo Agoro HC III GOVT', 'tvKjvN8d4rR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(18, 'Agulurude H/C III', '0777583284', '', 1, NULL, 'Agulurude HC III', 'aes9vvQi4Df', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(19, 'Agwata H/C III', '0774993910', '', 1, NULL, 'Agwatta HC III', 'sYHZIUFx50X', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(20, 'Akalo H/C III', '0753761001', '', 1, NULL, 'Akalo HC III', 'h9Jydxolx2q', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(21, 'Akokoro H/C III', '0773577763', '', 1, NULL, 'Akokoro HC III', 'rjOHz4O83zh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(22, 'Akuna Laber H/C III', '0774849340', '', 1, NULL, 'Akuna Laber HC III', 'aWMoXZucGiV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(23, 'Alebtong H/C IV', '0775306235', '', 1, NULL, 'Alebtong HC IV', 'RdmsO9Kftg9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(24, 'Alerek H/C III', '0775287200', '', 1, NULL, 'Alerek HC III', 'RLWAwgTDjSJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(25, 'Alero H/C III', '0717573999', '', 1, NULL, 'Alero HC III', 'EPyMwPkmKPx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(26, 'Alito H/C III', '0773623359', '', 1, NULL, 'Alito HC III', 'avAlXE2E7Re', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(27, 'Alive Medical Services H/C III', '0414258580/078268526', '', 1, NULL, 'Alive Medical Services HC III', 'PHhcBpjIWvL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(29, 'Amach H/C IV (Lira)', '0777647634', '', 1, NULL, 'Amach HC IV', 'ah2PY0hhVkV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(30, 'Amai Community Hospital', '0783192530', '', 1, NULL, 'Amai Community Hospital', 'Zk9bvpSxThA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(31, 'Amolatar H/C IV', '0773897355', '', 1, NULL, 'Amolatar HC IV', 'XazfKCvCCLS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(32, 'Amuca SDA H/C III', '0787324669', '', 1, NULL, 'Amuca SDA HC III', 'pNHDdE8BJt8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(35, 'Amugu H/C III', '0782681664', '', 1, NULL, 'Amugu HC III', 'acBVtDN7cmd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(37, 'Amuru H/C III', '0774848923', '', 1, NULL, 'Amuru HC III', 'aFgrVHVDqoZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(38, 'Anaka Hospital', '0774805770', '', 1, NULL, 'Anaka Hospital', 'PgRLMNQdejC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(41, 'Anyeke H/C IV', '0772660987', '', 1, NULL, 'Anyeke HC IV', 'EYklRtOZrwz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(42, 'Apac Hospital', '0774805815', '', 1, NULL, 'Apac HOSPITAL', 'OeBKA5gCBXG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(43, 'Apala Bar Owoo H/C III', '0785966224', '', 1, NULL, 'Apalabarowo HC III', 'vt2z3wXqBGE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(44, 'Apala H/C III', '0782346273', '', 1, NULL, 'Apala HC III', 'AKNaO98uuZO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(46, 'Apoi H/C III', '', '', 1, NULL, 'Apoi HC III', 'x6tiiRt28yz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(47, 'Aputi H/C III', '0773115270', '', 1, NULL, 'Aputi HC III', 'XQqrn8K8jyL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(49, 'Aromo H/C III', '0774059095', '', 1, NULL, 'Aromo HC III', 'SvBwj5ZrWMx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(50, 'Arua R R Hospital', '0702751362', '', 1, NULL, 'Arua REGIONAL REF HOSPITAL', 'THGKB3lHEUx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(52, 'Atanga H/C III', '0777204171', '', 1, NULL, 'Atanga HC III', 'SF33CGHTeUn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(53, 'Atiak H/C IV', '0775666037', '', 1, NULL, 'Atiak HC IV', 'i5CDWEBfo9n', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(57, 'Awach H/C IV (Gulu)', '0782040787', '', 1, NULL, 'Awach HC IV', 'Z1dfGmIoSeF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(62, 'Aywee H/C III', '0782123189', '', 1, NULL, 'Aywee HC III', 'aE0Yzd3YZQ9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(64, 'Baitambogwe H/C III', '0774140176', '', 1, NULL, 'Baitambogwe HC III', 'dBJMmXzJwYi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(65, 'Bala H/C III', '0779203475', '', 1, NULL, 'Bala HC III', 'rEncXrvkJ3Z', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(68, 'Barr H/C III', '0772618460', '', 1, NULL, 'Barr HC III', 'CpZY2oCsE5i', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(69, 'Bata H/C III', '0772657256', '', 1, NULL, 'Bata HC III', 'NunHrloqul7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(71, 'Bibia H/C III', '0774592062', '', 1, NULL, 'Bibia HC III', 'N00TPmBoIls', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(72, 'Biddabugya H/C III', '0785732682', '', 1, NULL, 'Bidabugya HC III', 'YTCehe1KMvF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(74, 'Bihanga H/C III (Buhweju)', '0781507660', '', 1, NULL, 'Bihanga HC III', 'Fi6rNyCYxsL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(80, 'Bitereko H/C III', '0782444026', '', 1, NULL, 'Bitereko HC III', 'aumCjLAHfAL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(83, 'Boroboro H/C III', '0777141157', '', 1, NULL, 'Boroboro HC III', 'aHYpuUgnA4P', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(84, 'Bubaare H/C III (Mbarara)', '0773006481', '', 1, NULL, 'Bubaare HC III', 'uwXTH0M0m4p', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(85, 'Bubulo H/C IV', '0752521805', '', 1, NULL, 'Bubulo HC IV', 'oIYkOMu6tdP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(87, 'Budaka H/C IV', '0782310948', '', 1, NULL, 'Budaka HC IV', 'aXPAwDqt65Q', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(88, 'Budondo H/C IV', '0782932700', '', 1, NULL, 'Budondo HC IV', 'BTNeWyNJanq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(91, 'Bufumbo H/C IV', '0782664114', '', 1, NULL, 'Bufumbo HC IV', 'zH1tLSpZuGt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(95, 'Bugambe H/C II (Hoima)', '0782323029', '', 1, NULL, 'Bugambe HC III', 'CRKrLT3w8EQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(97, 'Bugembe H/C  IV', '0772323503', '', 1, NULL, 'Bugembe HC IV', 'MmVUt93uiqa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(99, 'Bugiri Hospital', '0782309581', '', 1, NULL, 'Bugiri Hospital', 'CNG62dd4mE1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(100, 'Bugobero H/C IV', '0752521809', '', 1, NULL, 'Bugobero HC IV', 'RTB3ZNoIDhd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(101, 'Bugono H/C IV', '0712950841', '', 1, NULL, 'Bugono HC IV', 'JkMbi1FzXrX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(106, 'Buhunga H/C IV', '0701353844', '', 1, NULL, 'Buhunga HC IV', 'LLCOrTAVtpK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(107, 'Buikwe Hospital (St Charlse Lwanga)', '0784470442', '', 1, NULL, 'Buikwe St. Charles Lwanga HOSPITAL', 'aClaerhXk59', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(111, 'Buremba H/C III', '0773007418', '', 1, NULL, 'Buremba HC III', 'rRPBsggvt0q', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(113, 'Bukinda H/C III', '0775573662', '', 1, NULL, 'Bukinda HC III', 'afqb57VEJp3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(114, 'Bukomero H/C IV', '0784713664', '', 1, NULL, 'Bukomero HC IV', 'aVPeLDNBucL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(116, 'Bukulula H/C IV', '0775430480', '', 1, NULL, 'Bukulula HC IV', 'DFuALUpGId9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(118, 'Bukuya H/C III', '0712134102', '', 1, NULL, 'Bukuya HC III', 'CiNybZErM6Q', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(120, 'Bulange H/C III', '0782553672', '', 1, NULL, 'Bulange HC III', 'E0iTAuyvRrd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(121, 'Buliisa H/C IV', '0774665077', '', 1, NULL, 'Buliisa HC IV', 'TEGhWFDGruu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(123, 'Bumanya H/C IV', '0782982003', '', 1, NULL, 'Bumanya HC IV', 'dZSLpFo3Ow2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(126, 'Bungokho Mutoto H/C III', '0704312235', '', 1, NULL, 'Bungokho Mutoto HC III', 'qqNrWKGgl1e', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(128, 'Bunyiiro H/C III', '0706028527', '', 1, NULL, 'Bunyiiro Gvt HC III', 'BxF2c8dwf02', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(129, 'Buraru H/C III', '0779547224', '', 1, NULL, 'Buraru HC III', 'TJESax78KE7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(133, 'Busano H/C III', '', '', 1, NULL, 'Busano HC III', 'S3tP2Tw15nr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(134, 'Busanza H/C IV', '0773219980', '', 1, NULL, 'Busanza HC IV', 'pCvTmt48vr0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(135, 'Busesa H/C IV', '0783067378', '', 1, NULL, 'Busesa HC IV', 'FLMye24JUsV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(137, 'Bushenyi H/C IV', '0701283662', '', 1, NULL, 'Bushenyi HC IV', 'jmcxCPyDHHS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(138, 'Bushenyi Medical Centre H/C III', '0774227522', '', 1, NULL, 'Bushenyi Medical Center HC III', 'aJNgqIuVpYF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(139, 'Bushikori H/C III', '0784959757', '', 1, NULL, 'Bushikori HC III', 'b5gYOcDzgXn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(142, 'Busia H/C IV', '0777828568', 'elechualex@yahoo.com', 1, NULL, 'Busia HC IV', 'Yr843NBuL9D', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(145, 'Busiu H/C IV', '0752840585', '', 1, NULL, 'Busiu HC IV', 'zeEOtz7XwxV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(146, 'Butabika  Hospital', '0772848761', '', 1, NULL, 'Butabika NATIONAL REFERAL HOSPITAL', 'KssVUerFkyV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(148, 'Butema H/C III', '0773764156', '', 1, NULL, 'Butema HC III', 'VyKflstsoTt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(149, 'Butenga H/C IV', '0779458995', '', 1, NULL, 'Butenga HC IV', 'gBVBGJ2p9b3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(151, 'Butiru H/C III', '0772079346', '', 1, NULL, 'Butiru HC III', 'Wsm1yq3s0Lw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(153, 'Buvuma H/C IV', '0756718744', '', 1, NULL, 'Buvuma HC IV', 'ewMHVf7tjwq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(154, 'Buwaiswa H/C III', '0782899189', '0752229572', 1, NULL, 'Buwaiswa HC III', 'uja4Tx4IR8w', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(155, 'Buwambo H/C IV', '0772885227', '', 1, NULL, 'Buwambo HC IV', 'aq5a4s4nH5n', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(158, 'Buwenge H/C IV', '0774532044', '', 1, NULL, 'Buwenge HC IV', 'hYRpOD0ijAo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(159, 'Buyamba H/C III-Rakai', '0754724490', '', 1, NULL, 'Buyamba HC III', 'OQnJUNl390Z', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(160, 'Buyinja H/C IV', '0753876045', '', 1, NULL, 'Buyinja  HC IV', 'NnSbfZjOXJd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(161, 'Buyoga H/C III', '0703871112', '', 1, NULL, 'Buyoga HC III', 'RlulmyGd2XY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(162, 'Bwera Hospital', '0773981466', '', 1, NULL, 'Bwera HOSPITAL', 'HLeMhK9q6Wm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(163, 'Bwijanga H/C IV', '0783450600', '', 1, NULL, 'Bwijanga HC IV', 'ap3Cu39yPkF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(164, 'Bwindi Community Hospital', '0773838932', '', 1, NULL, 'Bwindi Community Hospital', 'VES7ks4zElA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(166, 'Bwizibwera H/C IV', '0701241770', '', 1, NULL, 'Bwizibwera HC IV', 'SMkx58aUYtC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(168, 'Chahafi H/C IV', '', '', 1, NULL, 'Chahafi HC IV', 'aK1GSPJrhjK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(176, 'Cwero H/C III', '0778402703', '', 1, NULL, 'Cwero HC III', 'apGje3lIGEP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(179, 'Dokolo H/C IV', '0751600060', '', 1, NULL, 'Dokolo HC IV', 'KBNJtdMGHlZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(180, 'Endiinzi H/C III', '0787295718', '', 1, NULL, 'Endiizi HC III', 'HUkwcrf8Ozd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(182, 'Etam H/C III', '0775362286', '', 1, NULL, 'Etam HC III', 'r4txax3dzBl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(183, 'Family Health Resource Centre Kiruhura', '0785108327', '', 1, NULL, 'Family Health Resource Centre CLINIC', 'sIXMnx11pLV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(184, 'Family Hope Centre Jinja', '0772819859', '', 1, NULL, 'Family Hope Center Jinja', 'aNxk6ghyV8u', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(185, 'Family Hope Centre Kampala', '0752528843', '', 1, NULL, 'Family Hope Center Kampala', 'X0giNVjxX76', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(187, 'FortPortal R R Hospital', '0772958345', '', 1, NULL, 'Fort Portal Regional Referral Hospital', 'Dt6WipQhr4Q', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(188, 'Galiraaya H/C III', '0752398986', '', 1, NULL, 'Galiraya HC III', 'yZIc8DX7kUx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(191, 'Gombe Hospital', '0775272856', '', 1, NULL, 'Gombe HOSPITAL', 'xuCJ8NBomxP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(192, 'Gulu Independent Hospital', '0779110252', '', 1, NULL, 'Gulu Independent Hospital', 'RsY5tCgiuHp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(193, 'Gulu Military Hospital (4th Division)', '0778938159', '', 1, NULL, 'Gulu  Military Hospital', 'x1UaYpPwx6c', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(194, 'Gulu Prison H/C III', '0754414873', '', 1, NULL, 'Gulu Prison HC III', 'i7JbInoEb2D', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(195, 'Gulu R R Hospital', '0777683228', '', 1, NULL, 'Gulu Regional Referal Hospital', 'QDc7Wijvfca', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(197, 'Hamurwa H/C IV', '0775828838', '', 1, NULL, 'Hamurwa HC IV', 'GzCsU3tbMbg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(199, 'Hoima R R Hospital', '0782888620', '', 1, NULL, 'Hoima REGIONAL REF Hospital', 'V2ylFCAVj0U', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(201, 'Ibanda Hospital', '0783406816', '', 1, NULL, 'Ibanda Hospital', 'ahn03jwJwRI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(202, 'Ibuje H/C III', '0784485391', '', 1, NULL, 'Ibuje HC III', 'M8mSJi1Qcah', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(203, 'Iceme H/C III', '0772085176', '', 1, NULL, 'Iceme Ngo HC III', 'OYENvTcFrXW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(204, 'Iganga Hospital', '0772621850', '', 1, NULL, 'Iganga Hospital', 'EKPCmrHaBSg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(206, 'Iki  Iki H/C III', '0779035400', '', 1, NULL, 'Iki-Iki HC III', 'cqonmIvPuVM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(207, 'Inomo H/C III', '0774747520', '', 1, NULL, 'Inomo HC III', 'mKvTS1QMd3x', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(210, 'Ishongororo H/C IV', '0776534734', '', 1, NULL, 'Ishongororo HC IV', 'LwODrFWsUAR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(212, 'Itojo Hospital', '0702763260', '', 1, NULL, 'Itojo Hospital', 'a7lnM83DJGy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(213, 'Ivukula H/C III', '0774250829', '', 1, NULL, 'Ivukula HC III', 'PrOL9DbHU3G', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(222, 'Jinja R R Hospital', '0712811359', '', 1, NULL, 'Jinja Regional Ref Hospital', 'SZS6IdnTKZR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(223, 'Kaabong Hospital', '0777694431', '', 1, NULL, 'Kaabong Hospital', 'pATBoZZRddT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(224, 'Kabale R R Hospital', '0779799640', '', 1, NULL, 'Kabale Regional Ref Hospital', 'K2BGHpaUluP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(225, 'Kabarole Hospital C.O.U', '0782813064', '', 1, NULL, 'Kabarole Hospital', 'gLhqifDs7hU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(228, 'Kabira H/C III (Rakai)', '0779294758', '', 1, NULL, 'Kabira HC III GOVT', 'KC28vpic105', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(231, 'Kabuwoko H/C III', '0782957686', '', 1, NULL, 'Kabuwoko Gvt HC III', 'GREWqcdtoVn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(232, 'Kabuyanda H/C IV', '0782018727', '', 1, NULL, 'Kabuyanda HC IV', 'K5Rwfv0pC4s', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(233, 'Kabwohe Clinical Research Centre', '0774251752', '', 1, NULL, 'Kabwohe Clinical Research Cenrer HC II', 'H3LpQ7tdT1P', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(234, 'Kabwohe H/C IV', '0777132750', '', 1, NULL, 'Kabwohe HC IV', 'yTiZaVCinTc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(235, 'Kabwoya H/C III', '0774642432', '', 1, NULL, 'Kabwoya HC III', 'zdhmUkPsGjH', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(238, 'Kaderuna H/C III', '0783371407', '', 1, NULL, 'Kaderuna HC III', 'BUS1uU9bfh8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(240, 'Kagando Hospital', '0712325628', '', 1, NULL, 'Kagando Hospital', 'KhvLQSeeHZM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(247, 'Kakuka H/C III', '0792111918', '', 1, NULL, 'Kakuka HC III', 'kvNr0D5clU1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(249, 'Kakuuto H/C IV', '700231923', '', 1, NULL, 'Kakuuto HC IV', 'Ls1dG8v84Wu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(251, 'Kaladima H/C III', '0774922505', '', 1, NULL, 'Kaladima HC III', 'jWmjHpZqNtY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(253, 'Kalangala H/C IV', '0774022611', '', 1, NULL, 'Kalangala HC IV', 'oTXa14pgh8f', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(255, 'Kalisizo Hospital', '0706901900', '', 1, NULL, 'Kalisizo Hospital', 'eZPhMsZGZza', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(256, 'Kalongo Hospital', '0777761941', '', 1, NULL, 'Kalongo Ambrosoli Memorial HOSPITAL', 'y8q1syPdfdK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(257, 'Kalungu H/C III', '0782720124', '', 1, NULL, 'Kalungu HC III', 'wKczE4oVqOy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(259, 'Kambuga Hospital', '0772576219', '', 1, NULL, 'Kambuga Hospital', 'CCW0LpJoTnO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(260, 'Kampala  Dispensary', '', '', 1, NULL, 'Kampala Dispensery HC III', 'u0XUzxV310O', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(262, 'Kamuganguzi H/C III', '', '', 1, NULL, 'Kamuganguzi HC III', 'c9Fq5DlB3y5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(264, 'Kamukira H/C IV', '0771648484', '', 1, NULL, 'Kamukira HC IV', 'aVKmbSeBF1N', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(265, 'Kamuli District Govt Hospital', '0784996449', '', 1, NULL, 'Kamuli Hospital', 'LVFyV61bpdi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(266, 'Kamuli Mission Hospital', '0784457317', '', 1, NULL, 'Kamuli Mission Hospital', 'Zix3B1axH9x', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(267, 'Kamwenge H/C III', '0785014635', '', 1, NULL, 'Kamwenge HC III', 'ACckadqFYV7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(268, 'Kamwezi   H/C IV', '0773524034', '', 1, NULL, 'Kamwezi HC IV', 'Yy2ZLOpEx2S', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(269, 'Kamwokya Christian Caring Community', '0777335365', '', 1, NULL, 'Kamwokya Christian Caring Community HC I', 'vTqB8UrtjVT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(272, 'Kangai H/C III', '0774222224', '', 1, NULL, 'Kangai HC III', 'aP04v4fQbSd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(274, 'Kangulumira H/C IV', '0775547825', '', 1, NULL, 'Kangulumira HC IV', 'RSFwMQwN99b', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(275, 'Kanoni H/C III (Kiruhura)', '00782837423', '', 1, NULL, 'Kiruhura Kanoni HC III GOVT', 'Mr238FVwJOm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(276, 'Kanungu H/C IV', '0774521156', '', 1, NULL, 'Kanungu HC IV', 'EU9ZacQmfpW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(280, 'Kapeeka H/C III', '0771616533', '', 1, NULL, 'St. Jerome Cove Kapeeka HC III', 'jloriHnudvr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(284, 'Karenga H/C IV', '0775899843', '', 1, NULL, 'Karenga HC IV', 'RwUs7iX5S49', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(286, 'Karungu H/C III (Buhweju)', '0772830494', '', 1, NULL, 'Karungu HC III', 'Q2xPLKiCPXu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(289, 'Kasanga PHC III', '0783385210', '', 1, NULL, 'Kasanga Phc HC III', 'DUIjxnnEApZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(290, 'Kasangati H/C IV', '0772515796', '', 1, NULL, 'Kasangati HC IV', 'a4SedC8Ix2O', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(291, 'Kasasa H/C III', '0700367349', '', 1, NULL, 'Kasasa HC III', 'agw4uqikZnP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(295, 'Kassanda H/C IV', '0775964900', '', 1, NULL, 'Kassanda HC IV', 'vSPwh0RCueD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(299, 'Katabi Military Hospital', '0782872085', '', 1, NULL, 'Katabi Military HC III', 'FMhE2V9s2bo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(303, 'Katerera H/C III', '0784689180', '', 1, NULL, 'Katerera HC III', 'nLcJPspov8c', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(305, 'Katimba H/C III', '0779212201', '', 1, NULL, 'Katimba HC III', 'sTlap0cwcNo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(307, 'Katwe H/C III (Kasese)', '0700245247', '', 1, NULL, 'Kasese Katwe HC III GOVT', 'n5XFXJQhdtb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(310, 'Kawempe Home Care', '0783270837', '', 1, NULL, 'Kawempe Home Care Initiative CLINIC', 'QgAL2KJE7g4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(311, 'Kawolo Hospital', '0756200919', '', 1, NULL, 'Kawolo Hospital', 'nKKX3gA72zS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(313, 'Kayunga Hospital', '0702245839', '', 1, NULL, 'Kayunga Hospital', 'sFIS2oxchec', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(314, 'Kazo H/C IV', '0774675175', '', 1, NULL, 'Kazo HC IV', 'stVRVnZtZVM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(317, 'Kibaale H/C IV (Kibaale)', '0787574344', '', 1, NULL, 'Kibaale HC IV (Kibaale)', 'hHaqQ2NBBOs', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(320, 'Kiboga Hospital', '07755999701', '', 1, NULL, 'Kiboga Hospital', 'acJji9Ruj5T', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(322, 'Kibuli Muslim Hospital', '0772318348', '', 1, NULL, 'Kibuli Hospital', 'Ygv5366dTvl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(325, 'Kidera H/C IV', '0784747717', '', 1, NULL, 'Kidera HC IV', 'KzxdCSnvGwD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(328, 'Kiganda H/C IV', '0781498913', '', 1, NULL, 'Kiganda HC IV', 'dK6URDbvHgL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(329, 'Kigandalo H/C IV', '0774725303', '', 1, NULL, 'Kigandalo HC IV', 'TOwFMUTd1XN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(331, 'Kigarama H/C III', '0782240597', '', 1, NULL, 'Kigarama HC III', 'oV7osEI51r6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(332, 'Kigorobya H/C IV', '0700604096', '', 1, NULL, 'Kigorobya HC IV', 'GUAwRRqngNN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(333, 'Kihiihi H/C IV', '0775306238', '', 1, NULL, 'Kihiihi HC IV', 'WiDK75EptX5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(337, 'Kikuube H/C IV', '0774318380', '', 1, NULL, 'Kikuube HC IV', 'ZyIU7Z6NxVX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(338, 'Kikyenkye H/C III', '0752401556', '', 1, NULL, 'Kikyenkye  HC III', 'j6kmC0qBLuy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(340, 'Kilak H/C III', '0786122574', '', 1, NULL, 'Kilak HC III', 'e2i5c23d8cq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(342, 'Kinoni H/C III (Lwengo)', '0783557603', '', 1, NULL, 'Kinoni Welfare Medical Centre CLINIC', 'l5Zt1UulNMm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(343, 'Kinoni H/C IV (Mbarara)', '0775815620', '', 1, NULL, 'Kinoni HC IV', 'ApxHwTWTekP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(347, 'Kirema H/C III', '0782667396', '', 1, NULL, 'Kirema HC III', 'kyHAWNZ9EPd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(349, 'Kiruhura H/C IV', '0752655890', '', 1, NULL, 'Kiruhura HC IV', 'GnVqZO2asFJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(350, 'Kiryandongo Hospital', '0777409094', '', 1, NULL, 'Kiryandongo Hospital', 'kzFJJnKcISy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(352, 'Kisiizi Hospital C.O.U (Rukungiri)', '0775362708', '', 1, NULL, 'Kisiizi NGO HOSPITAL', 'J5lFjhtApU5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(355, 'Kisoro Hospital', '0782879611', '', 1, NULL, 'Kisoro Hospital', 'FHIEdqBZAll', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(356, 'Kisubi Hospital', '0716380193', '', 1, NULL, 'Kisubi Hospital', 'qLLYEE7sCnd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(357, 'Kiswa H/C IV', '0782439571', '', 1, NULL, 'Kiswa HC III', 'cjC5Ij5U7le', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(358, 'Kitagata  Hospital', '0782379703', '', 1, NULL, 'Kitagata HOSPITAL', 'EMHl20viu7L', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(359, 'Kitebi H/C III', '0788400410', '', 1, NULL, 'Kitebi HC III', 'sLOvwpCrdh2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(360, 'Kitgum General Hospital', '0784340824', '', 1, NULL, 'Kitgum Hospital', 'z2LfysbyF9U', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(361, 'Kitgum Matidi H/C III', '0782994849', '', 1, NULL, 'Kitgum-Matidi HC III', 'aKgreJPVnve', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(362, 'Kitimba H/C III', '0701362998', '', 1, NULL, 'Kitimba HC III', 'O4sKsWoxekL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(365, 'Kitovu Hospital', '0753612190', '', 1, NULL, 'Kitovu Blood Bank CLINIC', 'bUDoS3JjcpY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(368, 'Kityerera H/C IV', '0774157719', '', 1, NULL, 'Kityerera HC IV', 'W65MlPtBlmF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(369, 'Kiwangala H/C IV', '0704125961', '', 1, NULL, 'Kiwangala HC IV', 'oviT3cugAEz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(370, 'Kiwoko Hospital', '0779652937', '', 1, NULL, 'Kiwoko HOSPITAL', 'OtHSbYGRmmu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(372, 'Kiyumba H/C IV', '', '', 1, NULL, 'Kiyumba HC IV', 'AjaGtzC8woM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(373, 'Kiyunga H/C IV ( Luuka)', '0782389973', '', 1, NULL, 'Kiyunga HC IV', 'a14sgIjcCoT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(376, 'Koch Goma H/C III', '0779652419', '', 1, NULL, 'Koch Goma HC III', 'NdIteLoT2FC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(378, 'Kojja H/C IV', '0782861434', '', 1, NULL, 'Kojja HC IV', 'akaiT2gUBst', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(379, 'Kolonyi H/C III', '', '', 1, NULL, 'Kolonyi HC III', 'O4hJJKkCm5r', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(380, 'Kotido H/C IV', '0788244922', '', 1, NULL, 'Kotido HC IV', 'ahrb1oS6ucq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(382, 'Kulikulinga H/C III', '0782316155', '', 1, NULL, 'Kulikulinga HC III', 'jiKuvEHVanR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(384, 'Kumi H/C IV', '0785872595', '', 1, NULL, 'Kumi HC IV', 'T7PV25xOz2Z', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(385, 'Kumi Hospital', '0779466258', '', 1, NULL, 'Kumi NGO HOSPITAL', 'ahzk9fymop1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(386, 'Kwera H/C III', '0774919190', '', 1, NULL, 'Kwera HC III', 'fxZxvguCeIw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(388, 'Kyabugimbi H/C IV', '0776554509', '', 1, NULL, 'Kyabugimbi HC IV', 'ILr03pFmrva', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(396, 'Kyazanga H/C IV', '0782343989', '', 1, NULL, 'Kyazanga HC IV', 'VhOO7DL9Y39', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(397, 'Kyebe H/C III', '0775734163', '', 1, NULL, 'Kyebe HC III', 'xP2J8wszUrR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(399, 'Kyehoro H/C III', '0783706631', '', 1, NULL, 'Kyehoro HC II', 'pa2KemeFZTD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(403, 'Labworomor H/C III', '0711994021', '', 1, NULL, 'Labworomor HC III', 'ltWFhjfI6qF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(405, 'Laguti H/C III', '0782274125', '', 1, NULL, 'Laguti HC III', 'ynatvEoBz7A', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(410, 'Laroo H/C III', '0783157225', '', 1, NULL, 'Laroo HC III', 'elqHQKpMveQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(412, 'Layibi Techo H/C III', '0782554660', '', 1, NULL, 'Layibi Techo HC III', 'n8DIemz1Xoh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(413, 'Lira  Kato H/C III (  Agago )', '0777367466', '', 1, NULL, 'Lira-Kato HC III', 'a9ZI6jNBqXx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(414, 'Lira Medical Centre', '0783463131', '', 1, NULL, 'Lira Medical Centre Ltd HC III', 'riFZJMWkiZR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(415, 'Lira Palwo H/C III', '0782404170', '', 1, NULL, 'Lira-Palwo HC III', 'aNM5X9P50rl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(416, 'Lira R R Hospital', '0772610558', '', 1, NULL, 'Lira REGIONAL REF HOSPITAL', 'cK5namCwmbW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(417, 'Lobo  rom H/C III', '0782635594', '', 1, NULL, 'Loborom HC III', 'WgmL7qQcVxV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(419, 'Lokung H/C III', '0775643537', '', 1, NULL, 'Lokung HC III', 'MV2QkTgUIz1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(423, 'Lukole H/C III', '0772923667', '', 1, NULL, 'Lukole HC III', 'RHk4V3ZlFbx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(426, 'Luwunga H/C III(1st Div Hospital)', '0788692649', '', 1, NULL, 'Luwunga Barracks HC IV', 'LKxm4CmrYYh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(428, 'Lwamaggwa H/C III', '0774678765', '', 1, NULL, 'Lwamaggwa Gvt HC III', 'oBg69iZLKtq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(430, 'Lwankoni H/C III', '0704399155', '', 1, NULL, 'Lwankoni HC III', 'FuOuXP2WFU8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(431, 'Lwebitakuli H/C III', '0702966204', '', 1, NULL, 'Lwebitakuli Gvt HC III', 'T7UcwZlbp1F', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(432, 'Lwemiyaga H/C III', '0702663871', '', 1, NULL, 'Lwemiyaga HC III', 'ioBktjTQgyS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(433, 'Lwengo H/C IV', '0752747114', '', 1, NULL, 'Lwengo HC IV', 'oFI3thMRN4h', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(434, 'Lyantonde Hospital', '0782319989', '', 1, NULL, 'Lyantonde Hospital', 'Gje6ykVPZKQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(438, 'Maddu H/C IV', '0789204819', '', 1, NULL, 'Maddu HC IV', 'r7ugOoXi8F1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(439, 'Madi Opei H/C IV', '0774262576', '', 1, NULL, 'Madi-Opei HC IV', 'Z3lDSWMFUyS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(440, 'St Elizabeth H/C IV-Magale', '0771452797', '', 1, NULL, 'Magale HC IV', 'adoijg0nE4u', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(444, 'Makonge H/C III', '0774298991', '', 1, NULL, 'Makonge HC III', 'BIiLhy7eYLl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(445, 'Makukuulu H/C III', '0757351619', '', 1, NULL, 'Makuukulu HC III', 'GUlztXJ4MRg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(446, 'Malaba H/C III (Tororo)', '0701421427', '', 1, NULL, 'Malaba HC III', 'F1z2KNSzz86', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(448, 'Malongo H/C III', '0752980622', '', 1, NULL, 'Malongo HC III', 'ao6V9sOp2DA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(449, 'Maracha Hospital (St Joseph)', '0788364706', '', 1, NULL, 'Maracha HOSPITAL', 'arpYxB8jsNy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(451, 'Masaka R R Hospital', '0777832111', '', 1, NULL, 'Masaka REGIONAL REF HOSPITAL', 'vX6kcAwvaS0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(452, 'Masindi Hospital', '0773022229', '', 1, NULL, 'Masindi Hospital', 'esxeUWbV3si', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(454, 'Mateete H/C III', '0702806337', '', 1, NULL, 'Mateete HC III', 'ajiOvkBSZBh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(456, 'Mayuge H/C III (Mayuge)', '0784012139', '', 1, NULL, 'Mayuge HC III', 'qkq6TBG0tnA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(457, 'Maziba H/C IV', '0775268505', '', 1, NULL, 'Maziba Gvt HC IV', 'KlGGom62gxM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(458, 'Mbaare H/C III', '0782878717', '', 1, NULL, 'Mbaare HC III', 'aJlqk5guS44', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(459, 'Mbale H/C II (Kyenjojo)', '0776823122', '', 1, NULL, 'Mbale HC II', 'Dakg2qxUXlR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(460, 'Mbale R R Hospital', '0781394634', '', 1, NULL, 'Mbale REGIONAL REF HOSPITAL', 'HpJYuf9iyz2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(464, 'Iss Clinic(Mbarara R R Hospital)', '', '', 1, NULL, 'Mbarara REGIONAL REF HOSPITAL', 'ZpJgSAyZtkl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(465, 'Mengo Hospital-EMTCT', '0784233988', '', 1, NULL, 'Mengo HOSPITAL', 'BnSVCAr2iAw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(469, 'Mitooma H/C IV', '0773393977', '', 1, NULL, 'Mitooma HC IV', 'VNnrhdnpSHA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(470, 'Mityana Hospital', '0755737926', '', 1, NULL, 'Mityana Hospital', 'TjEiAVNTIFy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(471, 'Rubaya H/C III (Mbarara)', '0701241770', '', 1, NULL, 'Rubaya HC III', 'nx0UdNxBNIS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(472, 'Moroto R R Hospital', '077408295', '', 1, NULL, 'Moroto Regional Refferal HOSPITAL', 'cK0jOJzBIvd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(476, 'Mparangasi H/C III', '0782593337', '', 1, NULL, 'Mparangasi HC III', 'vHdz34TAaT3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(477, 'Mparo H/C IV', '0782769421', '', 1, NULL, 'Mparo HC IV', 'eJzlHnYHBcW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(478, 'Mpigi H/C IV', '0779447373', '', 1, NULL, 'Mpigi   HC IV', 'QXVOVXOy3FM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(479, 'Mpumudde H/C IV (Jinja)', '0791164844', '', 1, NULL, 'Mpumudde HC IV', 'pAsdJsJETch', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(480, 'Mubende R R Hospital', '0774835180', '', 1, NULL, 'Mubende RR HOSPITAL', 'VLclxVcJh5v', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(481, 'Mubende Rehabilitation Centre', '0775405287', '', 1, NULL, 'Mubende Rehabilitation Centre HC III', 'PO8WHm1kFck', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(482, 'Mucwini H/C III', '0713315241', '', 1, NULL, 'Mucwini HC III', 'qKGMj34R5qZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(485, 'Muhokya H/C III', '0774552460', '', 1, NULL, 'Muhokya HC III', 'KuCGJjeYQS4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(486, 'Muhuiju H/C III', '0782569339', '', 1, NULL, 'Muhwiju HC III', 'omv0xbPKq9w', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(488, 'Muko H/C IV', '0775662135', '', 1, NULL, 'Muko HC IV', 'YTxnLBZCFwA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(489, 'Mukono H/C IV ( Town Council)', '0779256124', '', 1, NULL, 'Mukono  T.C. HC IV', 'Q6qNTXu3yRx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(490, 'Mukuju H/C IV', '0702/0772456893', '', 1, NULL, 'Mukuju HC IV', 'Txul6e5mI5M', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(494, 'Mulanda H/C IV', '0782433120', '', 1, NULL, 'Mulanda HC IV', 'ae5vXlawbYh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(497, 'St Francis Hospital (Mutolere)', '0702837989', '', 1, NULL, 'Mutolere (St. Francis) HOSPITAL', 'O9Bfy1Rf33x', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(499, 'Mwera H/C IV', '0776393401', '', 1, NULL, 'Mwera HC IV', 'SjGnJhWF7P7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(502, 'Nabigasa H/C III', '0753196368', '', 1, NULL, 'Nabigasa HC III', 'nEUuDrY5MWp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(508, 'Nakaseke  Hospital', '0782163363', '', 1, NULL, 'Nakaseke HOSPITAL', 'mlPC71DkTp5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(509, 'Nakasongola Military Hospital', '0706865209', '', 1, NULL, 'Nakasongola Military HOSPITAL', 'Jn7Sz79BL2v', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(511, 'Nakivale H/C III', '0752802360', '', 1, NULL, 'Nakivale HC III', 'lvbkNrwAFmE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(512, 'Namakwekwe H/C III', '0779002615', '', 1, NULL, 'Namakwekwe HC III', 'XJnDlwQcKju', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(514, 'Namanyonyi H/C III', '0779968470', '', 1, NULL, 'Namanyonyi HC III', 'XPlqjxDtXXO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(515, 'Namasale H/C III', '0777808255', '', 1, NULL, 'Namasale HC III', 'QhhZ8aHXOWM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(516, 'Namawanga H/C III', '0787273406', '', 1, NULL, 'Namawanga HC III', 'H21894K9xDD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(517, 'Namayumba H/C IV', '0775379510', '', 1, NULL, 'Namayumba HC IV', 'm2ROGumujet', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(518, 'Nambale H/C III', '0773131980', '', 1, NULL, 'Nambale HC III', 'tJVNDcI33wJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(519, 'Nambieso H/C III', '0777568308', '', 1, NULL, 'Nambieso HC III', 'ZgwhRJCKYcN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(520, 'Namokora H/C IV', '0782203615', '', 1, NULL, 'Naam Okora HC IV', 'iqr4dCf6xsU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(521, 'Namugongo H/C III (kaliro)', '0702301277', '', 1, NULL, 'Namugongo HC III', 'aNs3syyPTb1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(522, 'Namungalwe H/C III', '0774021328', '', 1, NULL, 'Namungalwe HC III', 'a8Qm23qwGwy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(524, 'Namutumba H/C  III (Namutumba)', '0700728077', '', 1, NULL, 'Namutumba HC III', 'aeZGyZJvaEG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(525, 'Namwendwa H/C IV', '0781430612', '', 1, NULL, 'Namwendwa HC IV', 'zyI8GDUVYdE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(526, 'Nankandulo H/C IV', '0773772209', '', 1, NULL, 'Nankandulo HC IV', 'uPAnapLaFYh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(527, 'Nankoma H/C IV', '0773058438', '', 1, NULL, 'Nankoma HC IV', 'ygGN15RPkJR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(529, 'Nawaikoke H/C III', '0774398895', '', 1, NULL, 'Nawaikoke HC III', 'W8gbvIzhIuL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(532, 'Ngai H/C III', '0774378411', '', 1, NULL, 'Ngai HC III', 'cyWgf6Xmo8Z', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(533, 'Ngando H/C III', '0774916493', '', 1, NULL, 'Ngando HC III', 'lH80zq7z1Hg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(535, 'Ngetta H/C III', '0771406225', '', 1, NULL, 'Ngetta HC III', 'OjPZpAx86iC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(539, 'Nkokonjeru Hospital (Buikwe)', '0702291173', '', 1, NULL, 'Nkokonjeru  HOSPITAL', 'aFxXtxwMU7f', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(540, 'Nkozi Hospital', '0782805974', '', 1, NULL, 'Nkozi HOSPITAL', 'vkpREtlXQxQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(542, 'Nsambya Hospital', '0757119752', '', 1, NULL, 'St. Francis Nsambya HOSPITAL', 'smr8mTNYzFP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(543, 'Nshungyezi H/C III', '0773260477', '', 1, NULL, 'Nshungyezi HC III', 'RFWwEWMyoSD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(544, 'Nsiika H/C IV', '0783388777', '', 1, NULL, 'Nsiika HC IV', 'oFMf9UXgoOr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(545, 'Nsinze H/C IV', '0774023943', '', 1, NULL, 'Nsinze HC IV', 'aOt4qHwBUAV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(549, 'Ntungamo H/C III', '0772626966', '', 1, NULL, 'Ntungamo HC IV', 'NImJbGuvUS6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(550, 'Ntuusi H/C IV', '', '', 1, NULL, 'Ntuusi HC IV', 'WuDi4LmzEWV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(551, 'Ntwetwe H/C IV', '0772434967', '', 1, NULL, 'Ntwetwe HC IV', 'QDSGcekPM4S', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(554, 'Nyabirongo H/C III', '0781552142', '', 1, NULL, 'Nyabirongo HC III', 'fIF70rtNGDv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(555, 'Nyabugando H/C III', '0755995988', '', 1, NULL, 'Nyabugando HC III', 'JbyNRdK814R', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(558, 'Nyakibale Hospital', '0782061394', '', 1, NULL, 'St. Karolii Lwanga Nyakibale HOSPITAL', 'N57ydf9ABlg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(559, 'Nyakitunda H/C III', '0753059587', '', 1, NULL, 'Nyakitunda HC III', 'iIx3m63SxVt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(565, 'Nyamuyanja H/C IV', '0753622521', '', 1, NULL, 'Nyamuyanja HC IV', 'axKfX1OmCTn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(568, 'Nyarubungo H/C III', '0774030609', '', 1, NULL, 'Nyarubungo HC III', 'dZKfMZLWA5D', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(569, 'Nyenga Hospital', '0752832172', '', 1, NULL, 'St. Francis Nyenga HOSPITAL', 'Mlh3jcaJw9n', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(575, 'Ogur H/C IV', '0779617978', '', 1, NULL, 'Ogur HC IV', 'aRxadClWcFM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(577, 'Okwongo H/C III', '07825680244', '', 1, NULL, 'Okwongo HC III', 'aqHWU5eZqU1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(579, 'Olilim H/C III', '0782578681', '', 1, NULL, 'Olilim HC III', 'G0lOXzOa53Q', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(581, 'Omiya Anyima H/C III', '0757111305', '', 1, NULL, 'Omiya Anyima HC III', 'MObVMkBVjki', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(582, 'Omoro H/C III', '0775306235', '', 1, NULL, 'Omoro HC III', 'NakSNp1eO2L', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(584, 'Ongako H/C III', '0772939754', '', 1, NULL, 'Ongako HC III', 'du8F23WZLMw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(585, 'Ongica H/C III', '0774752244', '', 1, NULL, 'Ongica HC III', 'aD1S6DBzHJV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(591, 'Orom H/C III', '0754315651', '', 1, NULL, 'Orom HC III', 'auzlyXb92mq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(592, 'Orum H/C IV', '', '', 1, NULL, 'Orum HC IV', 'FtmVm4r1H3a', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(595, 'Otwal H/C III', '0774604019', '', 1, NULL, 'Otwal HC III', 'taeUtmBHKTF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(598, 'Pabbo H/C III (Amuru Govt)', '0772033221', '', 1, NULL, 'Pabbo (Govt) HC III', 'rYNfPnt4Wko', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(599, 'Pabwo H/C III (Gulu)', '0777645760', '', 1, NULL, 'Pabwo HC III', 'WleyUUQfJK6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(600, 'Pader H/C III', '0777003811', '', 1, NULL, 'Pader HC III', 'EsyH7yKQHiP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(601, 'Padibe H/C IV', '0781399224', '', 1, NULL, 'Padibe HC IV', 'H026HbOAZFN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(603, 'Lira PAG Mission Hospital H/C IV', '0777073408', '', 1, NULL, 'Lira PAG Mission Hospital H/C IV', 'BTQIO9sgvpP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(606, 'Paimol H/C III', '0756197662', '', 1, NULL, 'Paimol HC III', 'RM8vegpr7j7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(608, 'Pajule H/C  IV', '0782973754', '', 1, NULL, 'Pajule HC IV', 'NiSWW2k1Hqt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(609, 'Palabek  Gem H/C III', '0774640138', '', 1, NULL, 'Palabek-Gem HC III', 'aNW8E8PWwck', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(610, 'Palabek Ogili H/C III', '0775989446', '', 1, NULL, 'Palabek Ogili HC III', 'lmi2JiLawTV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(611, 'Palabek-Kal H/C III', '0774612100', '', 1, NULL, 'Palabek-Kal HC III', 'VLi163AL9A0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(615, 'Paloga H/C III', '0782449096', '', 1, NULL, 'Paloga HC III', 'aod4x8edzQu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(617, 'Patiko H/C III', '0712390584', '', 1, NULL, 'Patiko HC III', 'T5RAXrLQCD6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(618, 'Patongo H/C III', '0779751238', '', 1, NULL, 'Patongo HC III', 'oUcwyNtRzrb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(619, 'Pawel H/C II', '0715557557', '', 1, NULL, 'Pawel HC II', 'mNeUlm3SpRz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(620, 'PIDC (Baylor-Mulago)', '0782012948', '', 1, NULL, 'Mulago National Hospital-PIDC COE Ward 1', 'WuohOAlguVz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(626, 'Purongo H/C III', '077578230', '', 1, NULL, 'Purongo HC III', 'fZ4QbeGxt8t', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(628, 'Rakai Health Sciences Program', '0701846263', '', 1, NULL, 'Rakai Health Sciences Program CLINIC', 'aqqJXIn2j84', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(629, 'Rakai Hospital', '0774880730', '', 1, NULL, 'Rakai Hospital', 'axNgLDj6B5Q', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(633, 'Lubaga Hospital', '0712418026', '', 1, NULL, 'Lubaga Hospital', 'dgmy0Fjx1KZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(634, 'Rubaya H/C IV (Kabale)', '0778826036', '', 1, NULL, 'Rubaya   HC IV', 'oWTRZJbQxha', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(635, 'Rubongi Military Hospital', '0772440195', '', 1, NULL, 'Rubongi Military HOSPITAL', 'ZVwFNyBsJxz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(636, 'Rubuguri H/C IV', '0778280024', '', 1, NULL, 'Rubuguri HC IV', 'GTtwaqeomFa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(637, 'Rugaaga H/C IV', '0705012059', '', 1, NULL, 'Rugaaga HC IV', 'aHuJWP6FfFo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(638, 'Rugarama Hospital', '', '', 1, NULL, 'Rugarama Hospital', 'Z6BzVrxa9xd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(639, 'Rugazi H/C IV', '0788772011', '', 1, NULL, 'Rugazi HC IV', 'VvGZi1LcYyP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(641, 'Ruhiira H/C III', '0776384538', '', 1, NULL, 'Ruhiira HC III', 'aqpJDW5rDvU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(644, 'Ruhoko H/C IV', '0782842624', '', 1, NULL, 'Ruhoko HC IV', 'QLP6OdRGJsz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(645, 'Rukiri H/C III', '0783013988', '', 1, NULL, 'Rukiri HC III', 'waacA54DZjH', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(648, 'Rukungiri H/C IV', '0775979607', '', 1, NULL, 'Rukungiri HC IV', 'amaqHI7PUL2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(649, 'Rukunyu H/C IV', '0777816044', '', 1, NULL, 'Rukunyu HC IV', 'HXap310Pwnz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(650, 'Rushere Community Hospital', '0714404180', '0712587176', 1, NULL, 'Rushere Community Hospital', 'rrjDjA0JfXN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(651, 'Rushooka H/C II', '0702181604', '', 1, NULL, 'St. Mother Francisca Lechner Rushooka HC', 'y1S7Kh163t9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(656, 'Rwashamaire H/C IV', '0772654754', '', 1, NULL, 'Rwashamaire HC IV', 'CSpqU3MIZuC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(659, 'Rwekubo H/C IV', '0783884557', '', 1, NULL, 'Rwekubo HC IV', 'XWqf7PB1OaR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(662, 'Rwenyawawa H/C III', '0777316225', '', 1, NULL, 'Rwenyawawa HC III', 'Y7XKVrGNA6d', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(666, 'Rwimi H/C III', '0772329079', '', 1, NULL, 'Rwimi HC III', 'aHXEy4fCaPw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(668, 'Seeta Nazigo H/C III', '0782796891', '', 1, NULL, 'Seeta-Nazigo HC III', 'qmgb0UXgPfs', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(669, 'Ssembabule H/C IV', '0782310690', '', 1, NULL, 'Ssembabule HC IV', 'SYB67Y2wfuD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(671, 'Shuku H/C IV', '0782404266', '', 1, NULL, 'Shuuku HC IV', 'x5X8VtL2T0e', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(674, 'Soroti R R Hospital', '0782550647', '', 1, NULL, 'Soroti REGIONAL REF HOSPITAL', 'Nnms2rd2gpC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(677, 'St Balikuddembe Market/Uganda Cares  AHF', '0704220598/078928808', '', 1, NULL, 'St. Balikudembe- Kitwe HC II', 'achnrImSgWR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(679, 'St Joseph Hospital  Kitgum', '0782635422', '', 1, NULL, 'St. Joseph\'S Kitgum HOSPITAL', 'g6xaEQ1fTQS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(685, 'TASO Gulu', '0783210962', '', 1, NULL, 'TASO Gulu Clinic', 'atGRMXTBJaA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(686, 'TASO Jinja', '0704530620', '', 1, NULL, 'TASO Jinja CLINIC', 'zK4jOLmfhz9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(687, 'TASO Masaka', '', '', 1, NULL, 'TASO Masaka CLINIC', 'ZO1Hltpt3Ko', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(688, 'TASO Masindi', '0781224406', '', 1, NULL, 'TASO  Clinic Masindi', 'GndRfUWcoQL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(689, 'TASO Mbale', '0701128152', '', 1, NULL, 'TASO Mbale Clinic', 'a929G14p47c', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(690, 'TASO Mbarara', '0750405263', '', 1, NULL, 'TASO Mbarara CLINIC', 'k4AuRrsUWCi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(691, 'TASO Mulago', '', '', 1, NULL, 'TASO Mulago CLINIC', 'QHyLvO7sL6p', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(692, 'TASO Rukungiri', '0772893531', '', 1, NULL, 'TASO Rukungiri HC II', 'yNzhd0wG9MO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(693, 'TASO Soroti', '0776473180', '', 1, NULL, 'TASO Soroti CLINIC', 'p0fJEq6m1ew', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(694, 'TASO Tororo', '0773633460', '', 1, NULL, 'TASO Tororo  CLINIC', 'CQqWk34vLNB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(695, 'Teboke H/C III', '0776207089', '', 1, NULL, 'Teboke (Gvt) HC III', 'hVamgpmtonX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(696, 'Tokora H/C IV', '0774073626', '', 1, NULL, 'Tokora HC IV', 'oLPpU9BQsKF', '2019-03-21 09:54:43', '2019-03-21 09:54:43');
INSERT INTO `dhis2_facilities` (`id`, `name`, `facility_contact`, `facility_email`, `active`, `code`, `dhis2_name`, `dhis2_uid`, `created_at`, `updated_at`) VALUES
(698, 'Tororo District Hospital', '0783210962', '', 1, NULL, 'Tororo General HOSPITAL', 'RPJpuHyPqWP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(702, 'Villa Maria Hospital', '0783978800', '0752392501', 1, NULL, 'Villa Maria Hospital', 'NTlPENoySCQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(703, 'Virika Hospital', '0783766916', '', 1, NULL, 'Virika Hospital', 'uiLzeURGsDn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(704, 'Wabulungu H/C III', '0752604175', '', 1, NULL, 'Wabulungu HC III', 'u5jXNGfi96o', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(705, 'Wakiso H/C IV', '0774549827', '', 1, NULL, 'Wakiso HC IV', 'UTcf3vkubN9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(706, 'Walukuba H/C IV', '0782815424', '', 1, NULL, 'Walukuba HC IV', 'E2mdeU0lkNe', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(709, 'Wol H/C III', '0777223186', '', 1, NULL, 'Wol HC III', 'qOIHRAbHyeu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(712, 'Yumbe Hospital', '0752101452', '', 1, NULL, 'Yumbe Hospital', 'MUxAV5pwDbk', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(713, 'Kitaasa H/C III', '0772366861', '', 1, NULL, 'St. Mechtilda Kitaasa HC III', 'agQsp6hFdZa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(715, 'Bigasa H/C III', '07828503605', '', 1, NULL, 'Bigasa HC III', 'HW6fE9RYBjI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(717, 'Nampunge Church of God H/C III', '0774532736', '', 1, NULL, 'Nampunge HC II', 'O3FdvltAUSh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(720, 'Kyeizooba H/C III', '0779664167', '', 1, NULL, 'Kyeizooba HC III', 'aL6mherCqRW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(722, 'Mpunge H/C III (Mukono)', '0782683345', '', 1, NULL, 'Mpunge HC III', 'QROYnp0n7wL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(723, 'Koome H/C III', '0772454874', '', 1, NULL, 'Koome HC III', 'fkASUL2GNdM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(727, 'St Luke KMD (Kiyinda )H/C III (Mityana)', '0779112037', '', 1, NULL, 'St. Luke Kiyinda Mityana Diocese HC III', 'ocmJzmqmXWX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(728, 'Rengen H/C III', '0777442444', '', 1, NULL, 'Rengen HC III', 'NWVYfI4QaPR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(729, 'Nagojje H/C III', '0773414353', '', 1, NULL, 'Nagojje HC III', 'VSGCAKuW01y', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(732, 'Nabutiti H/C III', '', '', 1, NULL, 'Nabutiti HC III', 'as4V8saM5sc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(734, 'Kasanje H/C III', '0784723054', '', 1, NULL, 'Kasanje HC III', 'srSDFLCcrSi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(735, 'Nsangi H/C III', '0783195419', '', 1, NULL, 'Nsangi HC III', 'aFlGqyWRQfr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(736, 'Namulonge H/C III', '0772552703', '', 1, NULL, 'Namulonge HC III', 'XvZPDBgzWFf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(738, 'Kawanda H/C III', '0712934537', '', 1, NULL, 'Kawanda HC III', 'avZWtMODscD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(742, 'St Gabriel Mirembe Maria H/C III', '0781013509', '', 1, NULL, 'Mirembe Maria HC III', 'vh8cOiWZOv9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(743, 'Buwama H/C III', '0702121442', '', 1, NULL, 'Buwama HC III', 'Vi3ibjRtMzU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(745, 'Jinja Central H/C III', '0785207777', '', 1, NULL, 'Jinja Central HC III', 'JMmqH0e4HlX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(748, 'Ssekanyonyi H/C IV', '0782959013', '', 1, NULL, 'Ssekanyonyi HC IV', 'aFuRtjSdg4X', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(749, 'Nabalanga H/C III', '0772557616', '', 1, NULL, 'Nabalanga HC III', 'sqQsFNhXH9W', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(753, 'Kitenga H/C III (Mubende)', '0750800141', '', 1, NULL, 'Kitenga  HC III', 'QBPWzy66HiY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(757, 'Kyabazaala H/C III', '0752580986', '', 1, NULL, 'Kyabazaala HC III', 'a6p3dWy4ce7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(758, 'Mpumudde H/C III (Lyantonde)', '0757380166', '', 1, NULL, 'Mpumudde HC III', 'A8vURIvnH87', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(762, 'Nakasongola H/C IV', '0772344999', '', 1, NULL, 'Nakasongola HC IV', 'h2oF7upS6k9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(763, 'Ngom-oromo H/C II', '0783774860', '', 1, NULL, 'Mgomoromo/Ngomoroma HC II', 'ahIE2es9s39', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(764, 'Nazigo H/C III', '0776269130', '', 1, NULL, 'Nazigo HC III', 'Y7AAzZu1IrM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(765, 'Lyantonde Muslim H/C III', '0706874735', '', 1, NULL, 'Lyantonde Muslim HC III', 'RYMEkOh45MP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(766, 'Katoogo H/C III', '0772572333', '', 1, NULL, 'Katoogo HC III', 'axNVMZcgPLU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(768, 'Iganga Islamic H/C III', '0782705365', '', 1, NULL, 'Iganga Islamic Medical Center HC III', 'aElqyBOYxsd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(770, 'Mpenja H/C III', '0782700305', '', 1, NULL, 'Mpenja HC III', 'CcCjT4HFRuy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(771, 'Dwoli H/C III', '0773398844', '', 1, NULL, 'Dwooli HC III', 'aPr9XQM36Dn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(772, 'Komamboga H/C III', '0701387607', '', 1, NULL, 'Komamboga HC III', 'TT8I4Fy4d5r', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(773, 'Kisugu H/C III', '0783215551', '', 1, NULL, 'Kisugu HC III', 'aKmx8C5qUZ8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(774, 'Masaka Municipal Council H/C II', '0777832111', '', 1, NULL, 'Masaka Mun. Council HCII', 'fBndBN2WUYM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(776, 'Busedde H/C III', '0753312049', '', 1, NULL, 'Busedde HC III', 't5UJ7lyEPo3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(777, 'Kaliro H/C III (Lyantonde)', '0782030841', '', 1, NULL, 'Kaliiro HC III', 'MsrKKJaEXiV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(779, 'Busembatia H/C III', '0772065683', '', 1, NULL, 'Busembatia HC III', 'RWICuGNoE6b', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(782, 'Kisenyi H/C IV (Kampala)', '0774070357', '', 1, NULL, 'Kisenyi HC III', 'hjZvWkoLzzp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(784, 'Osukuru H/C III', '0785269965', '', 1, NULL, 'Osukuru HC III', 'z5H8YZiBOtr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(785, 'Achol Pii Military H/C IV', '0783949134', '', 1, NULL, '5Th  Military Division HOSPITAL', 'auzuV39xOTU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(786, 'Njeru T/C H/C III', '0773473526', '', 1, NULL, 'Njeru T.C HC III', 'OiuyBahpmGI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(787, 'Mpugwe H/C III', '0702929961', '', 1, NULL, 'Mpugwe HC III', 'RvVYLDPIzPb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(788, 'Entebbe Hospital MCH General', '0772493489', '', 1, NULL, 'Entebbe HOSPITAL', 'yApOnywci25', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(789, 'Maanyi H/C III', '0772440735', '', 1, NULL, 'Maanyi HC III', 'tKfAzzZrSC7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(790, 'Malangala H/C III', '0782099516', '', 1, NULL, 'Malangala HC III', 'qrvgF3UwZzS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(792, 'Ikumbya H/C III (Luuka)', '0782949756', '', 1, NULL, 'Ikumbya HC III', 'Hw81fhqydaB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(796, 'Lwamata H/C III', '0779136350', '', 1, NULL, 'Lwamata HC III', 'mNMqG0YEffI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(797, 'St Agatha Lwebitakuli', '0783930972', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(798, 'Lulyambuzi H/C III', '0781556754', '', 1, NULL, 'Lulyambuzi HC III', 'Tb7BdBuiIn8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(800, 'Wakisi H/C III', '0753718182', '', 1, NULL, 'Wakisi HC III', 'an1CZjQ65h7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(802, 'Budini H/C III', '0782322010', '', 1, NULL, 'Budini HC III', 'EYPlRLvDGxp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(803, 'Nkondo H/C III', '0754605455', '', 1, NULL, 'Nkondo HC III', 'x3sV3Vm3jFW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(804, 'Namasagali H/C III', '', '', 1, NULL, 'Namasagali HC III', 'xXyZHTAldd9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(805, 'Iganga Municipal Council H/C III', '0700246406', '', 1, NULL, 'Iganga Town Council HC III', 'M6qnxgpeCA4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(806, 'Kitayunjwa H/C III', '0751674285', '', 1, NULL, 'Kitayunjwa HC III', 'UhQMDsDfW85', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(807, 'Bukonte H/C III', '0781447699', '', 1, NULL, 'Bukonte HC II', 'aPCo8FVyXXJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(808, 'Banda H/C III (Namayingo)', '', '', 1, NULL, 'Banda HC III', 'eAfaPMGjisn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(810, 'Bulopa H/C III', '0773546040', '', 1, NULL, 'Bulopa HC III', 'gNdlN0CmZX2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(811, 'Nakalama H/C III', '0712812079', '', 1, NULL, 'Nakalama HC III', 'ixwFzMD6GcM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(812, 'Buluguyi H/C III', '', '', 1, NULL, 'Buluguyi HC III', 'YbtIUFv6PHM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(813, 'Bumooli H/C III', '0773861703', '', 1, NULL, 'Bumooli HC III', 'aspYcErPY7F', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(814, 'Balawoli H/C III', '0754670380', '', 1, NULL, 'Balawoli HC III', 'X0BZOCXmDkj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(816, 'Muterere H/C III', '0774838862', '', 1, NULL, 'Muterere HC III', 'RVFMEGRSxTl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(817, 'Mayuge H/C III (Bugiri)', '0774025303', '', 1, NULL, 'Bugiri Mayuge HC III GOVT', 'bV0ljliUSvK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(818, 'Nabisoigi H/C III', '0714151556', '', 1, NULL, 'Nabisoigi HC III', 'MMhakCx4Zy7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(819, 'Mbulamuti H/C III', '0775816902', '', 1, NULL, 'Mbulamuti HC III', 'aU7ebDxE9vM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(820, 'Bulidha H/C III', '0781471217', '', 1, NULL, 'Bulidha HC III', 'KPoshqPMs2y', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(821, 'Bupadhengo H/C III', '0782301791', '', 1, NULL, 'Bupadhengo HC III', 'ECSAxXG3JMh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(829, 'Kasawo H/C III', '0772546203', '', 1, NULL, 'Kasawo HC III', 'zbDMSGLsc1J', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(830, 'Bardege H/C III', '0779116765', '', 1, NULL, 'Bar-dege HC III', 'aKP6B0Z5nbZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(831, 'Buyende H/C III', '0779224881', '', 1, NULL, 'Buyende HC III', 'a6qaoH2Xzb1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(832, 'Irundu H/C III', '0756116974', '', 1, NULL, 'Irundu HC III', 'GRE9Qa05dRS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(833, 'Nabukalu H/C III', '0773236228', '', 1, NULL, 'Nabukalu HC III', 'txcjTxewsdC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(834, 'Gadumire H/C III', '0779052792', '', 1, NULL, 'Gadumire HC III', 'Jh6Ds2pV5vS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(835, 'Magada H/C III', '0782856856', '', 1, NULL, 'Magada HC III', 'bfvn50ACB0b', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(836, 'Makuutu H/C III', '0782087299', '', 1, NULL, 'Makuutu HC III', 'SL6MqJXGcbv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(838, 'KIU Teaching Hospital', '0705764883', '', 1, NULL, 'KIU Teaching Hospital', 'sMYprHm7m3K', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(840, 'Kinuuka H/C III', '0782319989', '', 1, NULL, 'Kinuuka  HC III', 'n5xUbellHaN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(841, 'Nabirumba H/C III', '0776938773', '', 1, NULL, 'Nabirumba HC III', 'BXdPG3XpRk8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(842, 'Sigulu H/C III', '0759501297', '', 1, NULL, 'Sigulu  HC III', 'AB05Zdfd4KF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(845, 'Kyampisi H/C III', '0752822247', '', 1, NULL, 'Kyampisi HC III', 'gQ7xBJtwsF3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(847, 'Kasambya H/C IV (Mubende)', '0776747526', '', 1, NULL, 'Mubende Kasambya HC III GOVT', 'asPYa4kd1vo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(848, 'Kimuli H/C III', '0754448895', '', 1, NULL, 'Kimuli HC III', 'akLIpF5HNjE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(850, 'Ayago H/C III', '0774093016', '', 1, NULL, 'Ayago HC III', 'AXlKF4953Sh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(852, 'Namwiwa H/C III', '0772978638', '', 1, NULL, 'Namwiwa HC III', 'tcaAIOTzAjy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(856, 'Kasagama H/C III', '0782392496', '', 1, NULL, 'Kasagama HC III', 'jX2AtJy4xmQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(858, 'Bulamagi H/C III', '0779601010', '', 1, NULL, 'Bulamagi HC III', 'Hx3bgntGfm7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(859, 'Bugaya H/C III (Buvuma)', '0776562714', '', 1, NULL, 'Bugaya HC III ( Buvuma )', 'aVeE8JrylXn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(863, 'Madudu H/C III', '0774176647', '', 1, NULL, 'Madudu HC III', 'Y5ighgzxrUT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(864, 'Ndejje H/C IV (Wakiso)', '0752613587', '', 1, NULL, 'Ndejje HC IV', 'aNt5WiVHx4G', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(865, 'Kabamba H/C III', '0702006222', '', 1, NULL, 'Kabamba/Kabamba Barracks HC III', 'feHZtyy5zKn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(866, 'Lodonga H/C III', '0773832941', '', 1, NULL, 'Lodonga HC III', 'P5GTK5hmugt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(867, 'Ttikalu H/C III', '0782375250', '', 1, NULL, 'Ttikalu HC III', 'l8JCkd3nqOV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(870, 'Nakasojjo H/C II', '0779214576', '', 1, NULL, 'Nakasojjo HC II', 'Hv485zI15KB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(873, 'Kibanda H/C III (Rakai)', '0778271344', '', 1, NULL, 'Kibanda HC III', 'GbWR7VCRA6Y', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(876, 'Ngogwe H/C III', '0751230267', '', 1, NULL, 'Ngogwe HC III', 'qdW8M8091gP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(877, 'Bulesa H/C III', '0787528852', '', 1, NULL, 'Bulesa HC III', 'xbM4diuk1dB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(879, 'Kifamba H/C III (Rakai)', '', '', 1, NULL, 'Kifamba HC III', 'oHu9DJNgKaV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(880, 'Goma H/C III', '0782923738', '', 1, NULL, 'Goma HC III', 'NB0Ww6f0PiX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(881, 'Musozi H/C III', '0754420342', '', 1, NULL, 'Musozi HC III', 'MlMuBEoqA9y', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(882, 'Okidi H/C III', '0775634031', '', 1, NULL, 'Okidi HC III', 'MxcpmhA0rrA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(883, 'Nawandala H/C III', '0775114311', '', 1, NULL, 'Nawandala HC III', 'hA4k0l8StRh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(884, 'Mutumba H/C III', '0776663877', '', 1, NULL, 'Mutumba HC III', 'MAH7X3G7Bfi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(886, 'Bugulumbya H/C III', '0783907440', '', 1, NULL, 'Bugulumbya HC III', 'Pm7k3OLfbXA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(887, 'Lubira H/C III', '0784746771', '', 1, NULL, 'Lubira HC III', 'NZmcEUkHQPs', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(888, 'St Matia Mulumba H/C III (Namayingo)', '0785041846', '', 1, NULL, 'Buswale St. Matia HC III', 'ayBh8ous7GK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(890, 'Bbaale H/C IV', '0774868071', '', 1, NULL, 'Bbaale HC IV', 'ptIo7ouXsPw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(892, 'Newlife H/C III', '0782171097', '', 1, NULL, 'New Life Health Centre HC II', 'v6eIpzse4SO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(894, 'Budima H/C III', '0783665019', '', 1, NULL, 'Budiima HC III', 'CfUwC7rnAVI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(895, 'Lukolo H/C III', '0756358648', '', 1, NULL, 'Lukolo HC III', 'NRHnL9b4KGT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(897, 'Nsozi H/C III', '0773627721', '', 1, NULL, 'Nsozi HC III', 'dGIRbXEYTuQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(898, 'Kiyuni H/C III (Mubende)', '0705068525', '', 1, NULL, 'Mubende Kiyuni HC III GOVT', 'BuBhkTtnfuE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(899, 'Lwampanga H/C III', '0774630725', '', 1, NULL, 'Lwampanga HC III', 'werOrHbzh72', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(903, 'Kanoni H/C III (Gomba)', '0774112997', '', 1, NULL, 'Gomba Kanoni HC III GOVT', 'XsLMulDu2aw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(905, 'Iwemba H/C III', '0772331502', '', 1, NULL, 'Iwemba HC III', 'rlXW6WfCgAp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(906, 'Kifampa H/C III (Gomba)', '0755623835', '', 1, NULL, 'Kifampa HC III', 'gMSnZfci97x', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(907, 'Buwagajjo H/C III', '0773442061', '', 1, NULL, 'Buwagajjo HC III', 'imFgSY3OUvZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(908, 'Nakayonza H/C III', '0775144458', '', 1, NULL, 'Nakayonza HC III', 'R2Cl01FXyrt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(909, 'Busabaga H/C III', '0751946283', '', 1, NULL, 'Busabaga HC III', 'analluLubfV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(912, 'Bumwoni H/C III', '0784953327', '', 1, NULL, 'Bumwoni HC III', 'CIVkMjSRVBX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(913, 'Kateta H/C III', '0779736173', '', 1, NULL, 'Kateta Gvt HC III', 'TawGPygknTa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(916, 'Kyamulibwa H/C III', '0789641470', '', 1, NULL, 'Kyamulibwa Gvt HC III', 'mgr6AHrRokx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(921, 'Kigulu H/C II', '0712211325', '', 1, NULL, 'Kigulu HC II', 'nATS7pzO63j', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(922, 'Kigungu H/C III', '0774013068', '', 1, NULL, 'Kigungu HC III', 'MeFxWKBORKq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(927, 'Najjembe H/C III', '07835801413', '', 1, NULL, 'Najjembe HC III', 'PwgfpQbQXTQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(928, 'Lugasa H/C III', '0774485472', '', 1, NULL, 'Lugasa HC III', 'AvO7fMz294Z', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(929, 'Kacheri H/C III', '0773714808', '', 1, NULL, 'Kacheri  HC III', 'IW60hf7XNQ4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(933, 'Bubutu H/C III', '0752521809', '', 1, NULL, 'Bubutu HC III', 'aCZRqIkW8s5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(935, 'Bulondo H/C III', '0775618386', '', 1, NULL, 'Bulondo HC III', 'lAyJuyzL2Oj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(936, 'Singila H/C II', '0782674946', '', 1, NULL, 'Singila HC II', 'AgA6LVX4MQQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(937, 'Banda H/C II (Wakiso)', '0782646535', '', 1, NULL, 'Wakiso Banda HC II GOVT', 'aV1BxN0b2cm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(938, 'Irongo H/C III', '0782812167', '', 1, NULL, 'Irongo HC III', 'DHRgoZsi4Mx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(940, 'Butansi H/C III', '', '', 1, NULL, 'Butansi HC III', 'nWJKeP8N21c', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(943, 'Nabitsiichi H/C III', '0777262244', '', 1, NULL, 'Nabitsikhi HC III', 'VB6z6SmiL33', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(945, 'Nagongera H/C IV', '0774353014', '', 1, NULL, 'Nagongera HC IV', 'aQPRjLfrzRx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(946, 'Mayirye H/C III', '0779109003', '', 1, NULL, 'Mayirye (Arch Bishop Kiwanuka) HC III', 'MGoloBUb8vi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(954, 'Bumbo H/C III', '0776123889', '', 1, NULL, 'Bumbo HC III', 'uiIUQsgVTAj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(958, 'Busamuzi H/C III', '0776533001', '', 1, NULL, 'Busamuzi HC III', 'afzGq7RpOTl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(960, 'Nakitoma H/C III', '0775751508', '', 1, NULL, 'Nakitoma HC III', 'ixo6xmc8VE9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(962, 'Kakaire H/C III', '0773009580', '', 1, NULL, 'Kakaire HC III', 'cDySnTOLPKt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(964, 'Buwenge Hospital', '0774174781', '', 1, NULL, 'Buwenge General Hospital', 'XiavvWaLLRz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(965, 'Hukeseho H/C III', '0778094200', '', 1, NULL, 'Hukeseho HC III', 'a4qvKbfSybp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(969, 'Chawente H/C III', '0774164916', '', 1, NULL, 'Chawente HC III', 'tvw7mudvx3r', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(970, 'Kadungulu H/C III', '0776602484', '', 1, NULL, 'Kadungulu HC III', 'FuXspRGeawu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(971, 'Kawaala H/C III', '', '', 1, NULL, 'Kawaala Health Centre HC III', 'wepUthscBkh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(972, 'Ggolo H/C III', '0779203475', '', 1, NULL, 'Ggolo HC III', 'NHQdOv9RFcN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(975, 'Bukoova H/C III', '079486623', '', 1, NULL, 'Bukoova HC III', 'd6cSq5xJr84', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(976, 'Kakooge H/C III (Nakasongola)', '0782585897', '', 1, NULL, 'Kakooge HC III', 'i1KIxI3H281', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(980, 'Kyalulangira H/C III', '0782354936', '', 1, NULL, 'Kyalulangira HC III', 'hBhHjc3o6Fa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(981, 'Kimengo H/C III', '0701913230', '', 1, NULL, 'Kimengo HC III', 'u9ESrcugDMJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(983, 'Iyolwa H/C III', '0782086004', '', 1, NULL, 'Iyolwa HC III', 'XJMwYIWSmOO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(984, 'Kazwama H/C II', '0782585897', '', 1, NULL, 'Kazwama HC II', 'hwNTd8tjyyR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(987, 'Kabale H/C III (Hoima)', '0774968571', '', 1, NULL, 'Kabaale HC III', 'SuNPmvsGklv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(991, 'Metha Hospital', '0752645220', '', 1, NULL, 'Lugazi Scoul HOSPITAL', 'achC82olIo9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(996, 'Semuto H/C IV', '0787499257', '', 1, NULL, 'Semuto HC IV', 'zPvmdjd3Hw6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(998, 'Magamaga H/C III (Jinja)', '0772471072', '', 1, NULL, 'Magamaga HC III', 'abg74s2NDzQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1006, 'Our Lady  of Lourdes H/C III (Nakasongola)', '0782777430', '', 1, NULL, 'Our Lady Nakasongola HC III', 'FWFO4gWgFSk', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1011, 'Apwori H/C III', '0779633267', '', 1, NULL, 'Apwori HC III', 'CWtHofajIfs', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1016, 'Nadunget H/C III', '0782110280', '', 1, NULL, 'Nadunget HC III', 'aBkmoTyWd0a', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1018, 'Bugambe H/C III (Hoima)', '0775661876', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1021, 'Nabwendo H/C III', '0785840041', '', 1, NULL, 'Nabwendo HC III', 'J64jaeaqOc6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1025, 'Bunjako H/C III', '', '', 1, NULL, 'Bunjako HC III', 'X1RkzMg2Hn1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1027, 'Panyangasi H/C III', '0773815556', '', 1, NULL, 'Panyangasi/Kidera HC III', 'qbOt8Nswoff', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1029, 'Panyadoli H/C III', '0777053388', '', 1, NULL, 'Panyadoli HC III', 'a3qKoIZXK3t', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1034, 'Masindi Port H/C III', '0772033680', '', 1, NULL, 'Masindi Port HC III', 'PwHIdfpqYWi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1036, 'St Francis Health Care Services(Njeru-Buikwe)', '075455173', '', 1, NULL, 'St. Francis Health Care Services HC III', 'tDnc44nKr26', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1038, 'St Padre Pio H/C III Busunju', '0783523378', '', 1, NULL, 'St. Padre Pio Mirembe HC III', 'l3oOKBFWJkz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1039, 'Kakiri H/C III', '0772674849', '', 1, NULL, 'Kakiri HC III', 'EAr7pVCRxF3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1040, 'Kiziba H/C III (Rakai)', '0778658435', '', 1, NULL, 'Rakai Kiziba HC II GOVT', 'UjpKmijwPjr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1042, 'Kyabadaaza H/C III', '0782447049', '', 1, NULL, 'Kyabadaza HC III', 'qYIh49gM216', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1044, 'Kiragga H/C III', '0787419829', '', 1, NULL, 'Kiragga HC III', 'aGJJ5oqd2zk', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1047, 'Mutunda H/C III', '0774267099', '', 1, NULL, 'Mutunda HC III', 'T72P3ebY53q', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1048, 'Kigumba H/C III', '0782126576', '', 1, NULL, 'Kigumba HC III', 'csFo3Bw4oTt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1050, 'Busaana H/C III', '0772337351', '', 1, NULL, 'Busaana HC III', 'aLmtlWu249T', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1059, 'Moroto Army H/C IV', '0789503034', '', 1, NULL, 'Moroto Army  HC III', 'pE5320aADcw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1060, 'Mukono Hospital C.O.U', '0776666244', '', 1, NULL, 'Mukono CoU HC IV', 'MNzaqWsKyxO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1062, 'Mende H/C III', '0775922302', '', 1, NULL, 'Mende HC III', 'UkAhDd9JpYl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1063, 'Kayango H/C III', '0772317674', '', 1, NULL, 'Kayango HC III', 'BNsfT2yL0kW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1073, 'Lwanda H/C III', '0774250308', '', 1, NULL, 'Lwanda HC III', 'Lo7mfA6jWTu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1074, 'Bitooma H/C III', '0777407512', '', 1, NULL, 'Bitooma HC III', 'IgKXuBYXQFl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1076, 'Bulera H/C III', '0789496775', '', 1, NULL, 'Bulera HC III', 'archepWw0ZZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1083, 'Bweema H/C III', '0771487441', '', 1, NULL, 'Bweema HC III', 'G6GmMEAZA9r', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1088, 'Nyantonzi H/C III', '0702682155', '', 1, NULL, 'Nyantonzi HC III', 'SzShxoEQf7a', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1092, 'Diima H/C III', '0751467277', '', 1, NULL, 'Diima HC III', 'xO0dHAa2wFK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1097, 'Lacor Opit H/C III (Omoro)', '0777320900', '', 1, NULL, 'Opit HC III', 'IdUFKUbqQiQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1100, 'Kalonga H/C III', '0774105613', '', 1, NULL, 'Kalonga HC III', 'YaUCgS8WMMW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1101, 'Myanzi H/C III (Mubende)', '0781567775', '', 1, NULL, 'Myanzi HC III', 'ausfaeGjscI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1102, 'Kira H/C III', '0772335575', '', 1, NULL, 'Kira HC III', 'I2O4ZRrmyQN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1103, 'Nabiswera H/C III', '0775967443', '', 1, NULL, 'Nabiswera HC III', 'aRE0Ejk5hdp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1104, 'Wabigalo H/C III', '0772510162', '', 1, NULL, 'Wabigalo HC III', 'QxjjT8pu7tx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1108, 'Ogoko H/C II', '0774564653', '', 1, NULL, 'Ogoko HC II', 'avy7joRGT2x', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1109, 'Nyamarwa H/C III (Kibaale)', '0783984137', '', 1, NULL, 'Nyamarwa HC III', 'Q6MT6wA0bBm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1112, 'Buseruka H/C III', '0771603871', '', 1, NULL, 'Buseruka HC III', 'ccVG52jNm8D', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1113, 'Kaseeta H/C III', '0777101404', '', 1, NULL, 'Kaseeta HC II', 'k38SanlZHyl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1117, 'Kiyuni H/C III (Kyankwanzi)', '0775913798', '', 1, NULL, 'Kyankwanzi Kiyuni HC III', 'GjiT4Fcwj6P', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1118, 'Waibuga H/C III', '0753190506', '', 1, NULL, 'Waibuga HC III', 'aA2zaYJW1YT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1121, 'Kyaayi H/C III', '0757288810', '', 1, NULL, 'Kyai HC III', 'tPiPaWz3TIK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1123, 'Minakulu H/C III (Oyam)', '0752994325', '', 1, NULL, 'Minakulu Gvt HC II', 'TG4nYtwDBTr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1125, 'Ober H/C III', '', '', 1, NULL, 'Ober HC III', 'hdrTrRDuwOU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1131, 'Lukaya H/C III', '07794923791', '', 1, NULL, 'Lukaya HC III', 'IDk3QfceRQG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1139, 'Hima Cement Clinic', '0702255365', '', 1, NULL, 'Hima Star Clinic', 'FAjgEVpPiLO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1141, 'Nyabubare H/C III', '0701195071', '', 1, NULL, 'Nyabubare HC III', 'ci2uaeBv4Jg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1142, 'Kyotera Medical Centre', '0709230738', '', 1, NULL, 'Kyotera Med. Centre HC II', 'io8JhubppQo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1145, 'Wabwoko H/C III', '', '', 1, NULL, 'Wabwoko HC III', 'a7fC0KrYZzK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1146, 'Merikit H/C III', '0782307894', '', 1, NULL, 'Merikit HC III', 'rxu4zvH3DC1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1147, 'Kikamulo H/C III', '0773710558', '', 1, NULL, 'Kikamulo HC III', 'Q5qLPWNEj41', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1149, 'Wakyato H/C III', '0775330824', '', 1, NULL, 'Wakyato HC III', 'eQXTs1XHYpK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1150, 'Ngoma H/C IV (Nakaseke)', '0777386117', '', 1, NULL, 'Ngoma HC III', 'aFvqMkkSctS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1159, 'Nawanyago H/C III', '0779468841', '', 1, NULL, 'Nawanyago HC III', 'tbeQC8kTgVd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1161, 'Wesunire H/C III', '0772074771', '', 1, NULL, 'Wesunire Cath. HC II', 'KaQgUo68H9v', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1169, 'Kyamuhunga H/C III', '0704774905', '', 1, NULL, 'Kyamuhunga HC III', 'aerTdJxlEQh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1171, 'Kalungi H/C III (Nakasongola)', '0779510066', '', 1, NULL, 'Kalungi HC III', 'wgSmdZGeb5I', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1175, 'Bweyogerere H/C III', '078274922', '', 1, NULL, 'Bweyogerere HC III', 'cmB5Q4tejGP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1176, 'Kirewa H/C III', '0779112270', '', 1, NULL, 'Kirewa Comm. HC III', 'TCjLjkwPQ8c', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1177, 'Kakanju H/C III', '0782749848', '', 1, NULL, 'Kakanju HC III', 'VV5c8F4HVjw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1179, 'Kawongo H/C III', '0784074745', '', 1, NULL, 'Kawongo HC III', 'xFu5BXdkrZj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1182, 'Kabira H/C III (Mitooma)', '0751422089', '', 1, NULL, 'Mitooma Kabira HC III GOVT', 'RKTrEW3Vw7X', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1183, 'Mirambi H/C III', '0777510067', '', 1, NULL, 'Mirambi HC III', 'RWEo3tF0K1h', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1184, 'Ikoba H/C III', '0704513389', '', 1, NULL, 'Ikoba HC III', 'I9E4CMmLVbn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1185, 'Bushika H/C III', '0782152230', '', 1, NULL, 'Bushika HC III', 'J3KJzX1JSXu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1192, 'Soroti H/C III', '0782515470', '', 1, NULL, 'Soroti HC III', 'cY2kQBkzz17', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1195, 'Bulika H/C II', '0772026320', '', 1, NULL, 'Bulika HC II', 'x4zVP4YLDy7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1200, 'Magala H/C III', '0772867322', '', 1, NULL, 'Magala HC III', 'WqoBdlGeBgn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1202, 'Biharwe H/C III', '0772870408', '', 1, NULL, 'Biharwe (Nyabuhama) HC III', 'hAdnePvF54E', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1203, 'Kakoba Division H/C III', '0782777708', '', 1, NULL, 'Kakoba Domiciliary Clinic', 'WjUTld3U8r2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1205, 'Rubindi H/C III', '0773474737', '', 1, NULL, 'Rubindi HC III', 'kw2BNLtK1FZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1206, 'Mwizi H/C III', '0703009996', '', 1, NULL, 'Mwizi HC III', 'aekCLvuNCrj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1211, 'Emesco H/C IV', '0779531458', '', 1, NULL, 'EMESCO HC III', 'qXpKvhiylZz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1213, 'St Matia Mulumba H/C III (Mubende)', '0753908002', '', 1, NULL, 'St. Matia Mulumba HC III', 'Ae8byorr2lF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1217, 'Katulikire H/C III', '0773625853', '', 1, NULL, 'Katulikire HC III', 'auWHq0LQsFf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1219, 'Puranga H/C III', '0794209048', '', 1, NULL, 'Puranga HC III', 'flJx2pns0FY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1220, 'Ntenjeru H/C III', '0782421768', '', 1, NULL, 'Ntenjeru HC III', 'xKKIcgLVH9x', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1221, 'Maaji A H/C II', '0775990577', '', 1, NULL, 'Maaji A HC II', 'Lq5bORbEZDi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1223, 'Engari Community H/C III', '0784835251', '', 1, NULL, 'Engari Community HC III', 'toGKbXMtRf8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1224, 'Buteba H/C III', '0782258255', '', 1, NULL, 'Buteba HC III', 'aJgUSQQuIsM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1225, 'Katovu H/C III', '0703710311', '', 1, NULL, 'Katovu HC III', 'qp3zotdBH8Y', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1227, 'Okwang H/C III', '', '', 1, NULL, 'Okwang HC III', 'jmYDcub8QTz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1229, 'Kashambya H/C III', '0771681090', '', 1, NULL, 'Kashambya HC III', 'jtrHsubBsqd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1232, 'Kagongi H/C III', '0774615891', '', 1, NULL, 'Kagongi HC III', 'XQCqKzjyAZg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1233, 'Ndeija H/C III', '0702349311', '', 1, NULL, 'Ndeija HC III', 'w710lzfn4pu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1239, 'Mudakori H/C III', '0772/0702440973', '', 1, NULL, 'Mudakor HC III', 'ezl9nwYbSdn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1244, 'Kisozi H/C III', '0703270227', '', 1, NULL, 'Kisozi HC III GOVT', 'KNuyUySHocg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1248, 'Bukanga H/C III', '0773549059', '', 1, NULL, 'Bukanga HC III', 'edqx4oFg95R', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1256, 'Butende H/C III', '0775776565', '', 1, NULL, 'Butende HC III', 'S79Lcu8O003', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1257, 'Buwunga H/C III (Bugiri)', '0774372238', '', 1, NULL, 'Bugiri Buwunga HC III GOVT', 'yJNtR9S3CZZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1261, 'Nyarusiza H/C III', '0773258770', '', 1, NULL, 'Nyarusiza HC III', 'Pgi000QNqrV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1262, 'Kasozi H/C III (Wakiso)', '0779901695', '', 1, NULL, 'Wakiso Kasozi HC III GOVT', 'ZDdH3JVg9pD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1263, 'Busowobi H/C III', '0783900263', '', 1, NULL, 'Busowobi HC III', 'fqWdsy0CuFR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1266, 'Bugangari H/C IV', '0782473508', '', 1, NULL, 'Bugangari HC IV', 'aG2h9UI08nA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1271, 'Mwenge Estate Clinic', '0787365791', '', 1, NULL, 'Mwenge Clinic HC III', 'afJ1tepzpak', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1273, 'Buwooya H/C III', '0776147873', '', 1, NULL, 'Buwooya HC II', 'AIl1p6YgqxA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1274, 'Bison H/C III', '0779958793', '', 1, NULL, 'Bison HC III', 'aZep2aolzmX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1276, 'Bwambara H/C III', '0782741062', '', 1, NULL, 'Bwambara HC III', 'ACeIX77jOBg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1278, 'Kiyeyi H/C III', '0703565790', '', 1, NULL, 'Kiyeyi HC III', 'ZeXBMNmaaI1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1281, 'MJAP-MMC  H/C IV', '0755553579', '', 1, NULL, 'Mbarara Municipal Council HC IV', 'pCasaBs63nR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1285, 'Kanyamwirima H/C III', '0777364670', '', 1, NULL, 'Kanyamwirima Army  HC III', 'ZqwV5PWv4Pt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1287, 'Buhanika H/C III', '0774304731', '', 1, NULL, 'Buhanika HC III', 'pefIQOO4szC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1288, 'Namatala H/C IV', '0779832509', '', 1, NULL, 'Namatala HC IV', 'mAVOIO9mDPJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1291, 'Kibengo H/C II (Isingiro)', '0788528932', '', 1, NULL, 'Kibengo HC II NGO', 'oWA8scZHcEV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1293, 'Kashongi H/C III', '0704492278', '', 1, NULL, 'Kashongi HC III', 'h2IH7DjeJ21', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1298, 'Hope Clinic Lukuli', '0785037971', '', 1, NULL, 'Hope Clinic Lukuli HC II', 'Ap53MmxflW6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1300, 'Hope Again Medical Centre (Kyenjojo)', '0783030068', '', 1, NULL, 'Hope Again Medical Centre HC III', 'aLF9fK0AtT7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1302, 'Nyakayojo H/C III', '', '', 1, NULL, 'Nyakayojo HC III', 'fvak0fciiOr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1303, 'Nsambya Home Care', '0757119752', '', 1, NULL, 'Nsambya Home Care Clinic', 'isXZREUsgiH', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1307, 'Kasambya H/C III (Kalungu)', '0753126432', '', 1, NULL, 'Kalungu Kasambya HC III GOVT', 'MLgsYoX2xWW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1311, 'Rushoroza H/C III', '', '', 1, NULL, 'Rushoroza HC III', 'EgNsQqE3k5S', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1314, 'Butemba H/C III', '0775412197', '', 1, NULL, 'Butemba HC III', 'JHtjwrjBlm4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1315, 'Lubya H/C II', '0775359981', '', 1, NULL, 'Lubya HC II', 'aZjBV5O7kkf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1316, 'Katwe H/C III (Kiboga)', '0784751968', '', 1, NULL, 'Kiboga Katwe HC III GOVT', 'FHtJEqFHwS4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1318, 'St Jacinta H/C III', '0784784764', '', 1, NULL, 'St. Jacinta Zigoti HC III', 'sRkrARaYj0F', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1325, 'Nkokonjeru  H/C III (Kayunga)', '0782649498', '', 1, NULL, 'Nkokonjeru HC III', 'MnlhBeOd2dx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1326, 'Nakifuma H/C III', '0782973510', '', 1, NULL, 'Nakifuma HC III', 'bAh0tns9mFX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1327, 'Kimenyedde H/C II', '0703914568', '', 1, NULL, 'Kimmenyedde HC II', 'gK0T4N1aFZu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1329, 'Burere H/C III', '0776303135', '', 1, NULL, 'Burere HC III', 'bYYKbpHb8Y7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1334, 'Mukabara H/C III', '0779428429', '', 1, NULL, 'Mukabara HC III', 'QCufWVvV6cj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1337, 'St Matia Mulumba H/C III (Buyende)', '', '', 1, NULL, 'Irundu St. Matthias Mulumba HC III', 'wVUhuXat0MO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1344, 'Nyakashashara H/C III', '0777578374', '', 1, NULL, 'Nyakashashara HC III', 'SU8JOQnA0n1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1345, 'Kisiizi  H/C III', '0772654749', '', 1, NULL, 'Kisiizi Gvt HC III', 'TsELcr5sajj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1349, 'PNC (Baylor-Mulago)', '0775135977', '', 1, NULL, 'Mulago National Hospital- Old Mulago Pos', 'mS4KHqXpvDB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1350, 'Kasaali  H/C III', '0782581121', '', 1, NULL, 'Kasaali HC III', 'ZLJUYEZegpQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1351, 'Mutukula H/C III', '0702153292', '', 1, NULL, 'Mutukula HC III', 'X7iYabwpJfR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1374, 'Kikandwa  H/C  III (Mityana)', '0774831073', '', 1, NULL, 'Kikandwa HC III', 'aVPydv9zaor', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1385, 'Mugoye H/C III', '0782026552', '', 1, NULL, 'Mugoye HC III', 'aeWNPmn3Zrf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1391, 'Kyankwanzi H/C III', '0782921669', '', 1, NULL, 'Kyankwazi HC III', 'RNfCSfnBlxh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1394, 'Kacheera H/C III', '0783782379', '', 1, NULL, 'Kacheera HC III', 'k3xgvufxeWb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1398, 'Kashare H/C III', '0773147700', '', 1, NULL, 'Kashare HC III', 'ahkQO7FQKKK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1402, 'Pakanyi H/C III', '0777318950', '', 1, NULL, 'Pakanyi HC III', 'LyUOH3aGCga', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1404, 'Kolonyi Hospital', '0783426583', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1415, 'Alenga H/C III', '0752238402', '', 1, NULL, 'Alenga HC III', 'eR77udlIWIM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1419, 'Bwendero H/C III', '0782840049', '', 1, NULL, 'Bwendero HC III', 'yOzYKPK76Bq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1424, 'Kakomo H/C III', '0779010578', '', 1, NULL, 'Kakomo HC III', 'kbiNehvstx4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1425, 'Buyanja H/C III (Rukungiri)', '0782272894', '', 1, NULL, 'Buyanja HC III', 'abHQOTY0rmo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1426, 'JOY Medical Centre(Kampala)', '0700189921', '', 1, NULL, 'Joy Medical Centre HC III', 'O2ISli6TrDu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1432, 'Kameruka H/C III', '0783248396', '', 1, NULL, 'Kameruka HC III', 'ptpCYlWn6s7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1436, 'Angal Hospital (St Luke)', '077326829', '', 1, NULL, 'Angal St. Luke HOSPITAL', 'K7Do3WBvmLa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1438, 'Ikonia H/C III', '0782949756', '', 1, NULL, 'Ikonia HC III', 'BaAs4hm4jc7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1444, 'Kinoni H/C III (Kiruhura)', '', '', 1, NULL, 'Kiruhura Kinoni HC III GOVT', 'ypTdjdfOiN7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1447, 'Kikonda H/C III', '0773095756', '', 1, NULL, 'Kikonda HC III', 'N05ZDulF2ME', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1451, 'Lambu H/C', '0776342034', '', 1, NULL, 'Lambu HC II', 'OpHCVPDEaBb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1453, 'TASO Entebbe', '0752812084', '', 1, NULL, 'TASO Entebbe CLINIC', 'tf5lSUl7OmO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1455, 'Bugaya H/C III (Buyende)', '0753404721', '', 1, NULL, 'Buyende Bugaya HC III GOVT', 'ADB4cMlJP2q', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1462, 'Health Initiative for Africa- Uganda', '0777040536', '', 1, NULL, 'Health Initiative for Africa - Uganda', 'D2O6Qzf4hl8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1464, 'Kyatiri H/C III', '0783475577', '', 1, NULL, 'Kyatiri HC III', 'g8JZTLexaAr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1467, 'Kida Hospital', '0779776333', '', 1, NULL, 'Kida Hospital', 'QEpV6yJSsCN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1468, 'Nyakitibwa H/C III', '0750506074', '', 1, NULL, 'Nyakitiibwa HC III', 'aFXkqZXMomP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1470, 'St Anthony Hospital', '0782806266', '', 1, NULL, 'St. Anthony\'S Tororo HOSPITAL', 'iOwO7cTQKfH', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1472, 'Nurtre  Africa H/C III', '0777335365', '', 1, NULL, 'Nurture Africa', 'dQprl8P1Uae', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1473, 'Kwapa H/C III', '0753663517', '', 1, NULL, 'Kwapa HC III', 'idW1pR7k8m2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1474, 'Kisojo H/C II (Kasese)', '0772920134', '', 1, NULL, 'Mubuku/Kisojo HC II', 'HjhLsl0DHSQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1478, 'Kabaale H/C III(KALUNGU)', '0775512013', '', 1, NULL, 'Kalungu Kabaale HC II GOVT', 'Cx3eXkf07dC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1484, 'Biiso H/C III', '0771405096', '', 1, NULL, 'Biiso HC III', 'EPMb6dGjqnz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1488, 'St Francis C H/C III (HOSFA)- Mityana', '0779492379', '', 1, NULL, 'St. Francis,  HC III', 'HVwuyUY7azZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1490, 'Bukewa H/C III', '0788308221', '', 1, NULL, 'Bukewa HC III', 'wcTUcjmdOA3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1491, 'Bukhabusi H/C III', '0773851384', '', 1, NULL, 'Bukhabusi HC III', 'JiMsrQGUs6H', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1492, 'Nakaloke H/C III', '', '', 1, NULL, 'Nakaloke HC III', 'J1vQouUOY5h', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1498, 'Mujunza H/C II', '0781029097', '', 1, NULL, 'Mujunza HC II', 'cdusFUkNTOC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1502, 'Kanyantorogo H/C III', '0782440485', '', 1, NULL, 'Kanyantorogo Gvt HC III', 'NLIAgxXVsuv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1505, 'Bukiro H/C III', '0782596463', '', 1, NULL, 'Bukiiro HC III', 'BF4V8LnfSsj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1506, 'Ruharo Mission Hospital', '', '', 1, NULL, 'Ruharo Mission Hospital', 'gBG1N1o51QR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1507, 'Kiziba H/C III (Wakiso)', '0712880371', '', 1, NULL, 'Kiziba HC III', 'gCobOTnUj2H', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1508, 'Mwenge H/C III', '0782312850', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1517, 'Lacor Hospital', '0772361901', '', 1, NULL, 'St. Mary\'s Hospital Lacor', 'aPsvoBYxsDS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1521, 'Reachout (Mbuya Site)', '0776509554', '', 1, NULL, 'Reach Out - Mbuya Clinic HC II', 'lQvAAAQpBP2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1524, 'Kamonkoli H/C III', '', '', 1, NULL, 'Kamonkoli HC III', 'aEAa6essoBR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1526, 'Kasensero H/C II', '0779417473', '', 1, NULL, 'Kasensero HC II', 'KyCqBaEFJk5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1535, 'AIDS Information Centre (Mbarara)', '0702/0772-566692', '', 1, NULL, 'AIC Mbarara Main Branch CLINIC', 'sPWbPZtb3ut', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1536, 'Kamukuzi Division H/C II', '0756409117 ', '', 1, NULL, 'Kamukuzi Division HC II', 'qbh38u2Laz4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1537, 'Mbarara Community Hospital', '0774654482', '', 1, NULL, 'Mbarara Community Hospital', 'NvEq5qtAV4e', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1538, 'Muko H/C III (NGO)', '0784044472', '', 1, NULL, 'Muko Ngo HC III', 'gOFecbOs5XI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1540, 'Kyogo H/C III', '0783703691', '', 1, NULL, 'Kyogo HC III', 'TsDWptFDnmn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1543, 'Kitanga H/C III (Rukiga)', '07002915661', '', 1, NULL, 'Kitanga HC II GOVT', 'bCuS4DX8Emh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1564, 'Reachout (Banda Site)', '0754308311', '', 1, NULL, 'Reach Out - Banda CLINIC', 'F8jqYgk21HM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1565, 'Bufumira H/C III', '0773445008', '', 1, NULL, 'Bufumira HC III', 'mWaRCpc5hPU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1566, '407 Brigade H/C III', '0789801648', '', 1, NULL, '407 Brigade HC III', 'WqIs7ciPmmO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1567, 'Kijunjubwa H/C III', '0779022276', '', 1, NULL, 'Kijunjubwa HC III', 'CwftR8k7pWb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1569, 'Byakabanda H/C III', '0775072717', '', 1, NULL, 'Byakabanda HC III', 'tnBn02e8bRU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1570, 'Kashenshero H/C III', '0782204050', '', 1, NULL, 'Kashenshero HC III', 'Lu7D9BapOxL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1575, 'Kirumba H/C III (Rakai)', '07773319300', '', 1, NULL, 'Kirumba  HC III', 'alzpRLW14i8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1576, 'Muwanga H/C III', '0775307477', '', 1, NULL, 'Muwanga HC III', 'kKuqQelGUnq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1581, 'Butiaba H/C II', '0782833281', '', 1, NULL, 'Butiaba HC III', 'GnAcwCmEkxS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1583, 'Biwihi H/C II', '0772533225', '', 1, NULL, 'Biwihi HC II', 'y6p5eLimu2C', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1584, 'Mugarama H/C III (Kibaale)', '0706263108', '', 1, NULL, 'Mugarama HC III', 'JmHLIGnm4TQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1594, 'Nsambya Police H/C IV', '0782061513', '', 1, NULL, 'Nsambya Police Clinic HC III', 'nBjhoOrem20', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1596, 'Olwal H/C III', '0782593689', '', 1, NULL, 'Olwal HC III', 'vnIPfEUR8ce', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1598, 'Kibale H/C III(Palisa)', '0773623632', '', 1, NULL, 'Kibale HC III', 'BsWuppxjpNO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1599, 'Adilang H/C III', '075454588', '', 1, NULL, 'Adilang HC III', 'FvewOonC8lS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1603, 'FAD Military H/C IV (MMH)', '0701793003', '', 1, NULL, 'Masindi Military/Army Barracks HC IV', 'a4dl1FKIVQJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1604, 'St Monica H/C III (Katende)', '0776232003', '', 1, NULL, 'St. Monica Katende HC III', 'aLQq5QTDV2s', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1618, 'Bubaare H/C III (Kabale)', '0772692569', '', 1, NULL, 'Bubare HC III', 'Lz5IMmqsLcZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1620, 'Busiro H/C III', '0753409201', '', 1, NULL, 'Busiro HC III', 's3KGtzqaMyJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1621, 'Rutenga H/C III', '0774091142', '', 1, NULL, 'Rutenga HC III', 'uTkySNCx3j2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1625, 'Mella H/C III', '0782494614', '', 1, NULL, 'Mella HC III', 'hRQXf9wuHdW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1628, 'Molo H/C III', '0779774381', '', 1, NULL, 'Molo HC III', 'H0j9ehK06DJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1631, 'Aloi Mission H/C III', '0774889493', '', 1, NULL, 'Aloi Mission HC III', 'q2vSqN5xoZL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1638, 'Pajimo H/C III', '', '', 1, NULL, 'Pajimo HC III', 'f33lKK2tJNV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1639, 'Poyameri H/C III', '0751166853', '', 1, NULL, 'Poyameri HC III', 'GmcwI86bnbe', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1645, 'Kabubbu H/C III', '0782637984', '', 1, NULL, 'Kabubbu HC II', 'CWamWxvYUWQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1647, 'Petta H/C III', '0771467299', '', 1, NULL, 'Petta HC III', 'ybSnsdFkWFK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1648, 'Lwajje H/C III', '0782762164', '', 1, NULL, 'Lwajje HC II', 'bBNSvGxVrSq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1654, 'St Francis H/C   III Migyeera', '0777859113', '', 1, NULL, 'ST. Francis HC III', 'ryU8AKAQAnR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1655, 'Paya H/C III', '0781336819', '', 1, NULL, 'Paya HC III', 'SotbYUljYZa', '2019-03-21 09:54:43', '2019-03-21 09:54:43');
INSERT INTO `dhis2_facilities` (`id`, `name`, `facility_contact`, `facility_email`, `active`, `code`, `dhis2_name`, `dhis2_uid`, `created_at`, `updated_at`) VALUES
(1658, 'Bukibokolo H/C III', '', '', 1, NULL, 'Bukibokolo HC III', 'H713vHjaFbd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1659, 'St Marys Kigumba H/C III (NGO)', '0779984620', '', 1, NULL, 'St. Mary\'s Kigumba  HC III', 'SSfQUjnbstd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1661, 'Kambugu H/C III (Kiboga)', '0754013674', '', 1, NULL, 'Kiboga Kambugu HC II GOVT', 'CMNFahpvV4I', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1662, 'Mirembe H/C III', '0782893593', '', 1, NULL, 'Mirembe HC III', 'UYmlNJzKbed', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1664, 'Bujugu H/C III', '0773262635', '', 1, NULL, 'Bujugu HC III', 'Ond9n3CrBxY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1668, 'Kisubba H/C III', '0774663311', '', 1, NULL, 'Kisuba HC III', 'aySqIA0RRpH', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1672, 'Bupoto H/c III', '0700422756', '', 1, NULL, 'Bupoto Hc III', 'aJCkfyIurtg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1674, 'Kisoko H/C III (Tororo)', '', '', 1, NULL, 'Kisoko HC III', 'HNjaSmUnPzM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1678, 'Kyebando H/C III', '0783099516', '', 1, NULL, 'Kyebando HC III GOVT', 'vgRXnM3VETo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1681, 'Bukaya H/C II', '0779357602', '', 1, NULL, 'Bukaya HC II', 'RVSKVTxRcnF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1685, 'Atangi H/C III', '0777774206', '', 1, NULL, 'Atangi HC III', 'I3q42sKAJua', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1686, 'Kingdom Life Medical Martenity H/C II', '0774875341', '', 1, NULL, 'Kingdom Life Health Centre CLINIC', 'yfEXqa4COUS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1689, 'AIDS Information Centre (Kabale)', '0772444687', '', 1, NULL, 'AIC Kabale Main Branch Clinic', 's0sTvb5DnDP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1690, 'Uganda Muslim Supreme Council H/C III', '0782733697', '', 1, NULL, 'UMSC Mityana Clinic HC III', 'FU2kBudFOKd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1693, 'Bujuuko H/C III', '0702024884', '', 1, NULL, 'Bujuuko HC III', 'pUZjhP8bvwF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1694, 'Sekiwunga H/C III', '0782082334', '', 1, NULL, 'Sekiwunga HC III', 'CB9zwzOqEbX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1698, 'Butoolo H/C III', '0705440185', '', 1, NULL, 'Butoolo HC III', 'Co0DLFVgmGz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1704, 'Kampiringisa H/C III', '0772877014', '', 1, NULL, 'Kampiringisa HC III', 'mm6DbH6wKeQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1707, 'Busawa Manze H/C III', '', '', 1, NULL, 'Busawamanze HC III', 'rjIpxD2fcZB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1712, 'Malukhu H/C III', '0774206095', '', 1, NULL, 'Malukhu HC III', 'V2x1UIpO46L', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1713, 'China Uganda Friendship Hospital- Naguru', '0706079185', '', 1, NULL, 'Naguru  Hospital  - China Uganda Friends', 'h40pKp93Mtc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1714, 'Nyakatare H/C III', '0782272867', '', 1, NULL, 'Nyakatare HC III', 'Nm3mxuGGRG1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1717, 'Mpungu H/C III (Kanungu)', '', '', 1, NULL, 'Mpungu HC III', 's5LS26QGqzl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1718, 'Labongogali H/C III', '0783210962', '', 1, NULL, 'Labongogali HC II', 'Tvayfd3cIU2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1720, 'Ggoli H/C III (Mpigi)', '0701321776', '', 1, NULL, 'Ggoli HC III NGO', 'SzVYBCcGiM7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1725, 'St Bernards Mannya H/C III', '0751849102', '', 1, NULL, 'St. Bernards Mannya HC II', 'a7obyfFdJ8u', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1729, 'Ibulanku H/C III', '0784464139', '', 1, NULL, 'Ibulanku Community Health Centre HC III', 'kiuNceUg1Zo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1733, 'Wattuba H/C III', '07526810749', '', 1, NULL, 'Watubba HC III', 'Tr9SwdDaZNB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1734, 'Katete H/C III (Kanungu)', '0775141825', '', 1, NULL, 'Katete HC III', 'zu1VixoD4pu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1738, 'Kyetume H/C III (Lwengo)', '0772885521', '', 1, NULL, 'Kyetume HC III', 'w53Iyr73JjT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1740, 'Kikolimbo H/C III', '0772434967', '', 1, NULL, 'Kikolimbo HC II', 'KcfKx2brSuv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1743, 'Health Initiatives Association', '0775285123', '', 1, NULL, 'Health Initiative Association Uganda', 'U4PSDjSLsi2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1748, 'Taqwa H/C III', '0772019587', '', 1, NULL, 'Taqwa HC III', 'Ipvxi1nV5X4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1749, 'Masaka Police Clinic', '0752337301', '', 1, NULL, 'Masaka Police HC II', 'SWWHTLQjZXW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1750, 'Noahs Ark Family Clinic', '0773783853', '', 1, NULL, 'Noah`s Ark HC III', 'dXEcBso8rQv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1754, 'St Francis Mbiriizi H/C III', '0773837749', '', 1, NULL, 'St. Francis Mbirizi HC III', 'n3uHerzsnE1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1759, 'Bweyogerere H/C III Muslim (Hassan Tourabi H/C III)', '0782800415', '', 1, NULL, 'Bweyogerere Hassan Turabi. HC III', 'hzPoo5zzWjj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1760, 'St Apollo H/C III-Namasuba', '0779299952', '', 1, NULL, 'Namasuba Medical Care CLINIC-NR', 'bcdfCnTKqaR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1768, 'Mitukula H/C III', '0701879699', '', 1, NULL, 'Mitukula HC III', 'SElLcUjqrGg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1772, 'Namutamba H/C III  COU  (Mityana)', '0704741200', '', 1, NULL, 'Namutamba HC III', 'sf2baAzfwgW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1774, 'Kayonza H/C III (Kanungu)', '0779142064', '', 1, NULL, 'Kayonza Tea Factory HC III', 'x65jpp0WQnc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1777, 'Lacor H/C III (Amuru)', '0774848923', '', 1, NULL, 'Lacor (Amuru) HC III', 'cjnFsHrJ4M4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1779, 'Lake Mburo H/C III', '0772057442', '', 1, NULL, 'Kanyaryeru (Lake Mburo) HC III', 'GVN2Bcibhmd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1783, 'Anaka H/C II (Madi Opei)', '0787067014', '', 1, NULL, 'Anaka H/C II (Madi Opei)', 'bLzMzz5fzGQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1784, 'Zzinga H/C II', '0703351413', '', 1, NULL, 'ZINGA HC II', 'nYpQROJrK2y', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1786, 'Kibuuka H/C II', '0774880730', '', 1, NULL, 'Kibuuka HC II', 'a5K7IVmM7zJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1788, 'Zia Angelina', '0776265920', '', 1, NULL, 'Zia Angelina HC II', 'ODl6muHUdeG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1792, 'Kihefo H/C III', '0777228884', '', 1, NULL, 'Kihefo Clinic', 'B8okqr86WzK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1797, 'Kituntu H/C III', '0782057880', '', 1, NULL, 'Kituntu HC III', 'anOxR20hDCC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1798, 'Siira H/C III', '', '', 1, NULL, 'Siira HC III', 'eQUTo4Kz4Cv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1799, 'Ssanje Domiciliary Clinic', '0782407878', '', 1, NULL, 'Sanje Domeciary HC II', 'amwSlyHvRiP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1804, 'St Stephens Hospital (Mpererwe)', '0776060758', '', 1, NULL, 'St. Stephens Mpererwe HC III', 'qGVARGVRtsr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1805, 'Kyabi H/C III', '0783978800', '', 1, NULL, 'Kyabi HC III', 'u0ZXCHvbs0W', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1808, 'Kakoma H/C III', '', '', 1, NULL, 'Kakoma HC III', 'RI4Fb24F84i', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1816, 'Bihanga Army H/C II', '0777656664', '', 1, NULL, 'Bihanga Updf Barracks HC II', 'k58XY2uVEjN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1820, 'Kibanda H/C II (Kabale)', '0774481008', '', 1, NULL, 'Kibanda HC II', 'OFHXaWocktQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1833, 'Kasubi H/C III', '0772499744', '', 1, NULL, 'Kasubi HC III', 'sHwAlmYg5Hs', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1834, 'Bugaana H/C II', '', '', 1, NULL, 'Bugana HC II', 'WNrSmg2aMGz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1840, 'FortPortal Prisons H/C III', '0716162250', '', 1, NULL, 'Fort Portal Women Prisons HC II', 'aZyNT3U2LGI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1850, 'Biikira H/C III', '0704247985', '', 1, NULL, 'Bikira/Bikiira Maria  HC III', 'HXw8RJKyuDz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1853, 'Mucwa H/C III', '', '', 1, NULL, 'Mucwa HC III', 'Pf3v59iyqdM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1856, 'Joy Medical Center (Mbale  )', '', '', 1, NULL, 'Joy Medical Center HC II', 'aaI3qQuFct4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1859, 'Ruti H/C', '', '', 1, NULL, 'Ruti HC II', 'tlQsh4yJwwb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1863, 'Mbale Main Prisons H/C III', '0782006378', '', 1, NULL, 'Mbale Main Prison\'s HC III', 'AtuVg4C11UO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1870, 'Kahondo H/C II', '', '', 1, NULL, 'Kabarole Kahondo HC II GOVT', 'sZ9PPpo8ejT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1874, 'Lwanjusi H/C III', '0778137347', '', 1, NULL, 'Lwanjusi HC III', 'roJb8A7yXNm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1877, 'Bugali H/C II', '0755451976', '', 1, NULL, 'Bugali  HC II', 'RfYTyh0UmGQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1893, 'Kyanamuyojo H/C III', '0772354507', '', 1, NULL, 'Kyanamuyonjo HC III', 'udyIvAUWRfi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1898, 'Otwee H/C III', '0774397446', '', 1, NULL, 'Otwee HC III', 'rnSuCabTqe3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1901, 'Gadafi H/C III', '0782154269', '', 1, NULL, 'Gaddafi HC III', 'BMmhOqlF4EB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1919, 'Nyakabande H/C II', '', '', 1, NULL, 'Nyakabande HC II', 'cfVjkhcqQqr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1959, 'Bugobango H/C', '', '', 1, NULL, 'Bugobango HC II', 'a93zYnWO0cT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1960, 'Kiddawalime', '', '', 1, NULL, 'Kidawalime Nursing Home HC II', 'gt954ahlttH', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(1966, 'Jinja Police H/C III (Maternity)', '0701156403', '', 1, NULL, 'Jinja Police HC III', 'QPEq1rVFQA7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2034, 'Gwere H/C II', '', '', 1, NULL, 'Gwere HC II', 'aFLv0Mbd84E', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2053, 'Kaweweta H/C III', '0775108554', '', 1, NULL, 'Kaweweta HC II', 'AUl2LinS4Zb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2058, 'Kitwe H/C IV', '0782479505', '', 1, NULL, 'Kitwe HC IV', 'FGnMVMPBCLN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2059, 'Luweero Industries', '', '', 1, NULL, 'Luweero Industries Ltd Clinic HC II', 'amOfrCsmDMr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2060, 'Franciscan H/C KAKOOGE', '', '', 1, NULL, 'Francisca Clinic - NR', 'K56hypi6AUE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2063, 'Kakoola H/C III', '0785819836', '', 1, NULL, 'Kakoola HC II (Nakasongola)', 'aNWVZ9aCbQb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2072, 'ST JOSEPH  H/ C III(Madudu)', '', '', 1, NULL, 'St. Joseph Madudu HC III', 'alZgEM25r1K', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2073, 'JCRC (Wakiso)', '0774576204', '', 1, NULL, 'Joint Clinical Research Center (JCRC)  C', 'CVoWcUh5ZPP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2075, 'Ngenge H/C III', '', '', 1, NULL, 'Ngenge HC III', 'PfIEJ2cH2SX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2079, 'Namusaala H/C II', '', '', 1, NULL, 'Namusaala HC II', 'EKbyglK4z19', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2082, 'Diika H/C II', '', '', 1, NULL, 'Diika HC II', 'Ya7rTeUc2Dy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2091, 'Karungu H/C III (Masindi)', '0785406822', NULL, 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2093, 'Avogera H/C II', '0777318720', '', 1, NULL, 'Avogera HC III', 'x5YYIG54agu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2104, 'St Marys H/C III(Kibaale)', '', '', 1, NULL, 'St Marys HC III Kakindo', 'zCodguezLzO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2111, 'Seeta H/C II', '', '', 1, NULL, 'Seeta HC II', 'llNeiWHW1oW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2126, 'Bumadada H/C III', '', '', 1, NULL, 'Bumadada HC III', 'OlaVEDuSn6W', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2127, 'Kyantungo H/C IV', '0782492377', '', 1, NULL, 'Kyantungo HC IV', 'DsaeEp9J3X4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2132, 'Kibaale  H/C II( Rakai)', '0772324018', '', 1, NULL, 'Kibaale HC II GOVT', 'AjwnALSnLrK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2142, 'Nyamityobora H/C III', '', '', 1, NULL, 'Nyamityobora HC II', 'J7hNSRvyUFC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2153, 'Naguru Police H/C IV', '0774887838', '', 1, NULL, 'Naguru Police Clinic HC II', 'foJ1bGX8luE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2204, 'Community H/C (Kaliro)', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2205, 'Makhonje H/C III', '', '', 1, NULL, 'Makhonje HC III', 'fe5T2gr64Y5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2210, 'Soroti Medical Associate Nursing Home', '0777193932', '', 1, NULL, 'Soroti Medical Associates HC II', 'HOnIGbyX0cw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2215, 'Qudrah Medical Center', '', '', 1, NULL, 'Qudrah Medical Clinic', 'VQEzkkbWHar', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2225, 'Aliwang H/C III', '0777111426', '', 1, NULL, 'Aliwang HC III', 'L4ABgSqNsXd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2226, 'Kamulegu H/C III', '0702112742', '', 1, NULL, 'Kamulegu HC III', 'VQlQ4IXDdFm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2227, 'Kyamwinula H/C III', '0772440973', '', 1, NULL, 'Kyamwinula HC II', 'aFasKwyj7DC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2230, 'Lolwe H/C III', '', '', 1, NULL, 'Lolwe HC II', 'ZFd998k7ZbK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2232, 'Kafunjo H/C II', '', '', 1, NULL, 'Kafunjo HC II', 'P3xQ9rXeVdo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2238, 'Butama H/C III', '', '', 1, NULL, 'Butama HC III', 'EV2MoBNsOm6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2248, 'Bujwanga H/C II', '0771428391', '', 1, NULL, 'Bujwanga HC II', 'rQ56RjtAmYQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2257, 'Kaliro T C', '0775246303', '', 1, NULL, 'Kaliro Town Council HC II', 'akGUnEvfeLd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2260, 'Bukunga H/C III', '0782907272', '', 1, NULL, 'Bukunga HC II', 'xbHb2porYoF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2268, 'Buchumba H/C II', '0776409201', '', 1, NULL, 'Buchumba HC II', 'g3Jd6rCEYTc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2269, 'Good Health for Women Project Clinic (MRC/UVRI)', '0772646017', '', 1, NULL, 'Medical Research Center Clinic', 'yKnFg0zI7sP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2270, 'MJAP-MUH', '', '', 1, NULL, 'Makerere University HC III', 'Y3K5vv9cdJ7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2271, 'IDI Mulago', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2272, 'MJAP (Iss Clinic) Mulago', '0755553285', '', 1, NULL, 'Mulago National Hospital- MJAP ISS Clini', 'utEt5ijWuIx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2274, 'STD/MARPI Clinic (Mulago)', '0757519064', '', 1, NULL, 'Mulago National Hospital- MARPI STI Proj', 'U6DZjzffCuQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2275, 'Mulago National Hospital-PMTCT CLINIC', '0704175203', '', 1, NULL, 'Mulago Obs&Gyn - PMTCT clinic', 'tAjQlwQ3YJu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2277, 'Holy Cross Orthodox Hospital Namungoona', '0782362505', '', 1, NULL, 'Namungoona Orthodox Hospital HC III', 'e9F9XvTFIrI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2284, 'Uganda Cares(Soroti)', '0782555940', '', 1, NULL, 'Uganda Cares Soroti', 'UhJgr2Abb0p', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2286, 'Benedict Medical Center', '', '', 1, NULL, 'Benedict Medical Centre  HC IV', 'QUd8daomu0P', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2287, 'Lwambajjo H/C II', '0776377338', '', 1, NULL, 'Lwembajjo HC II', 'U4XL5jXfjTk', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2290, 'Kayanja H/C II', '0752331114', '', 1, NULL, 'Kayanja HC II Lwankoni GOVT', 'zwfMFtrP9wk', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2291, 'Royal Health Care', '', '', 1, NULL, 'Royal Health Care', 'Ek95dowFfiN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2294, 'Arua Police H/C III', '', '', 1, NULL, 'Arua Police HC III', 'Oib4aFmRmve', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2295, 'Rift Valley Medical Center', '', '', 1, NULL, 'Rift Valley Medical Services Centre', 'LSpLSwpaM71', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2296, 'Equator Health Services', '', '', 1, NULL, 'Equator Health Services', 'OLmTe5kU6HD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2298, 'Rubaare H/C IV (Ntungamo)', '', '', 1, NULL, 'Rubaare HC IV', 'acuu3ktUO4t', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2300, 'Zaam Medical Centre', '', '', 1, NULL, 'Zaam Clinic HC II', 'J77zWm3xXbx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2301, 'Bugolobi Medical Centre', '', '', 1, NULL, 'Bugolobi Medical Centre HC II', 'bnKRmW2sm3g', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2303, 'Ogom H/C III', '0775077735', '', 1, NULL, 'Ogom HC III', 'au4iSDaT4wv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2304, 'Alanyi H/C III', '', '', 1, NULL, 'Alanyi HC III', 'pk373UmcJEF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2305, 'Mbale Police H/C III', '', '', 1, NULL, 'Mbale Police Clinic HC II', 'xJtAHm83ULs', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2306, 'Muhoti H/C III', '', '', 1, NULL, 'Muhooti Baracks HC II', 'Y3hpndpv6cR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2307, 'Bwama H/C III', '', '', 1, NULL, 'Bwama HC III', 'aG1YMQc0jte', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2308, 'Uganda Reproductive Health Bureau(Bugiri)', '', '', 1, NULL, 'URHB Medical Centre CLINIC', 'YTYOolNiu9C', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2309, 'Kalungu Uganda Cares', '', '', 1, NULL, 'Lukaya Health Care Center (Uganda Cares)', 'mqCkkaqoMNA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2310, 'Mt.Elgon Hospital', '', '', 1, NULL, 'Mount Elgon Hospital', 's6I81Be52IE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2312, 'Nkata H/C II', '', '', 1, NULL, 'Nkata HC II', 'WezVXLK01Ry', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2313, 'Fast Line Medical Centre', '', '', 1, NULL, 'Fast Line Cinic', 'dyD1iVotBI3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2314, 'Katira H/C III', '', '', 1, NULL, 'Katira HC III', 'CbZsLxa0Zp6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2315, 'Padibe West H/C III', '', '', 1, NULL, 'Padibe West HC III', 'K74ysFimUwH', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2317, 'Mpuge H/C III', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2319, 'Igombe H/CIII', '0785200943', '', 1, NULL, 'Igombe HC III', 'PP7yUJOjWsV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2322, 'Borcch Medical Centre', '0782129666', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2324, '405 Brigade HC III', '0784083246', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2326, 'St Austin H/C II(Mbale)', '0779894362', '', 1, NULL, 'St. Austin Mbale HC II', 'MtE5RAbwwNx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2327, 'Kerekerene H/C III', '', '', 1, NULL, 'Kerekerene HC III', 'u16ZU15t0aX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2329, 'Lyama H/C III', '', '', 1, NULL, 'Lyama HC III', 'z2Ye13P7ajL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2330, 'Masindi-Kitara Medical Centre', '0774840909', '', 1, NULL, 'Masindi Kitara Medical Centre  HC II', 'fYKuOZQWyuf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2331, 'Kampala Medical Chambers', '', '', 1, NULL, 'Kampala Medical Chambers HC II', 'VSDTCc2of9f', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2332, 'Barjobi H/C III', '', '', 1, NULL, 'Barjobi HC III', 'O4N8uOmlbM6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2333, 'Sirimula H/C III', '', '', 1, NULL, 'Sirimula HC II', 'Qkotq27DWuJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2334, 'Ministry of Defence Clinic', '', '', 1, NULL, 'Mbuya Military clinic (MOD Garrison)', 'zrRBi7DSECl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2335, 'St Benedict H/C II(Buikwe)', '', '', 1, NULL, 'St. Benedict\'s HC III', 'OZm6EKHBeMU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2336, 'Muzito Clinic', '', '', 1, NULL, 'Muzito HC II', 'lS1i3kglzgM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2337, 'Santa Maria Medical Care', '', '', 1, NULL, 'Santa Maria Medical Centre HC III', 'a1SMwlwzCg2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2339, 'Lapul H/C III', '0771603858', '', 1, NULL, 'Lapul HC III', 'UUt3ZtL1hIJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2340, 'Anyagura H/C III', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2341, 'Facility Left Blank', '', NULL, 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2342, 'Kasozi H/C III (Luweero)', '', '', 1, NULL, 'Kasozi HC III GOVT', 'Z2Mr0fdyDaz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2343, 'Katikamu H/C III', '', NULL, 1, NULL, 'Katikamu SDA HC II', 'rRB4rWMdUS9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2344, 'Katikamu-Kisule H/C III', '', NULL, 1, NULL, 'Katikamu  HC III', 'Ec5yJybMqpe', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2345, 'Katuugo H/C II', '', NULL, 1, NULL, 'Katuugo HC II', 'cYPtAEauxNe', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2348, 'Bamunanika H/C III', '', NULL, 1, NULL, 'Bamunanika HC III', 'Y8UhpQhdeP2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2349, 'Bishop Ceaser Asili Hospital', '', NULL, 1, NULL, 'Bishop Asili Ceaser HC IV', 'adofLhuj4HH', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2350, 'Bombo H/C III', '', NULL, 1, NULL, 'Bombo  HC III', 'BQrPJsVTpud', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2351, 'Bombo Military Hospital', '', NULL, 1, NULL, 'Bombo General Military HOSPITAL', 'MH0SVcF6X2F', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2352, 'Bowa H/C III', '', NULL, 1, NULL, 'Bowa HC III', 'aGisGCcp7Hz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2353, 'Bukalasa H/C III', '', NULL, 1, NULL, 'Bukalasa HC III', 'va7uRTbKCoJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2354, 'Kikoma H/C III', '', NULL, 1, NULL, 'Kikoma HC III', 'reSTu8XZgge', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2356, 'Butuntumula H/C III', '', NULL, 1, NULL, 'Butuntumula HC III', 'NGteaaEKAMh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2357, 'Kisule H/C III', '', NULL, 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2358, 'Namatale H/C II', '', NULL, 1, NULL, 'Namatale HC II', 'LDngLVQbqNI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2360, 'Nattyole H/C III', '', NULL, 1, NULL, 'St. Kizito Natyole HC II', 'M7RLcStmJql', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2361, 'Kyalugondo H/C III', '', NULL, 1, NULL, 'Kyalugondo HC III', 'E49UQK1wLQ2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2362, 'Kyangwali H/C IV', '', NULL, 1, NULL, 'Kyangwali HC IV', 'gQKXvT7RNVU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2363, 'Holy Cross H/C III (Kikyusa)', '', NULL, 1, NULL, 'Kikyusa Holy Cross HC III', 'fzBgyH6ixVC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2366, 'Luweero H/C IV', '', '', 1, NULL, 'Luweero HC IV', 'SbhXVHOtboo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2367, 'Nsawo H/C III', '', NULL, 1, NULL, 'Nsawo HC III', 'aysfx6SGoJe', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2368, 'Nyimbwa H/C IV', '', NULL, 1, NULL, 'Nyimbwa HC IV', 'aKyrbNsmNnT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2369, 'Orient Medical Centre', '', NULL, 1, NULL, 'Orient M/C HC III', 'ea1Bvu4qzmW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2370, 'Mengo Hospital Counselling and HomeCare', '0782164591', '', 1, NULL, 'Mengo Doctors Clinic', 'VxVlteqdqp3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2371, 'Reachout (Kinawataka Site)', '', '', 1, NULL, 'Reach Out - Kinawataka CLINIC', 'FzxeAP4YHxC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2372, 'Kalagala H/C IV', '', NULL, 1, NULL, 'Kalagala HC IV', 'aZw4VQefUc4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2373, 'Kamira H/C III', '', NULL, 1, NULL, 'Kamira HC III', 'SQgzVzwkRjK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2374, 'Rubaare H/C III (Kabaale)', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2375, 'Kasala H/C III', '', NULL, 1, NULL, 'Kasaala St. Mary HC III', 'DAcqiebFOcd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2376, 'Kasana H/C IV', '', NULL, 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2380, 'Ssekamuli H/C III', '', NULL, 1, NULL, 'Sekamuli HC III', 'icO7vjvZXjp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2381, 'St Jacobs Lwamaggwa H/C', '', NULL, 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2382, 'St Luke Namaliga H/C III', '', NULL, 1, NULL, 'St. Luke Namaliga HC III', 'a01gDo4KauR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2383, 'St Marys H/C Kasaala', '', NULL, 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2384, 'St Stephens Disp and Maternity Center (Luzira)', '', NULL, 1, NULL, 'St. Stephen\'s Dispensary and Marternity ', 'at9KnQkgpy6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2386, 'Zirobwe H/C III', '', NULL, 1, NULL, 'Zirobwe HC III', 'ec6ZVy4whk5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2389, 'Ikan Medical Center', '', '', 1, NULL, 'Ikan Medical Center HC II', 'JScVS55awQr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2390, 'Kyetume H/C III (Mukono)', '', '', 1, NULL, 'Kyetume CBHC HC III', 'meCVGgjsn0F', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2393, 'Nabweru H/C III', '', '', 1, NULL, 'Nabweru HC III', 'akpHXftD4yu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2394, 'Barapwo H/C III', '', '', 1, NULL, 'Barapwo HC III', 'amDpMeSgs3P', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2395, 'Kitovu Mobile', '', '', 1, NULL, 'Kitovu Mobile Clinic', 'LKn50qRDDAB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2397, 'Comboni Hospital', '0785359731', '', 1, NULL, 'Comboni Hospital', 'OEhMLFc4vaU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2398, 'Bukakata H/C III', '077402576', '', 1, NULL, 'Bukakata HC III', 'aukuvrCNcqR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2399, 'Hima Gov\'t H/C III', '', '', 1, NULL, 'Hiima Disp. HC III', 'D76MlGzidHn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2401, 'Katadoba H/C III', '', '', 1, NULL, 'Katodoba (Umsc) HC III', 'c39yKQqyCK3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2402, 'Karambi H/C III (Kaseese)', '', '', 1, NULL, 'Karambi Nursing Home HC II', 'rgeIuEgKqri', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2403, 'Nkuruba H/C III', '', '', 1, NULL, 'Nkuruba HC II', 'NPsUXWauJwy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2404, 'Sapiri H/C III', '', '', 1, NULL, 'Sapiri HC III', 'A6pRqAKPNFH', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2405, 'Nswanjere H/C III (St Joseph)', '', '', 1, NULL, 'Nswanjere HC III', 'VXTxQRCiH2C', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2406, 'Our Lady Of Maria Assumpta', '', '', 1, NULL, 'MARIA ASSUMPTA HC III', 'F3r8Fr87Bnx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2407, 'Donna Medical Centre', '', '', 1, NULL, 'Dona Medical Centre HC III', 'rmyUGedzWB2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2408, 'Nalinya Ndagire H/C III', '', '', 1, NULL, 'Nalinnya  Ndagire HC II', 'RXMQeaZcjjG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2410, 'Kabanga H/C III', '0782179115', '', 1, NULL, 'Kabanga HC III', 'hFO29Yr6ysA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2411, 'Bundibugyo Hospital', '0782753187', '', 1, NULL, 'Bundibugyo Hospital', 'VkNdAzkYGjh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2412, 'Kuluva Hospital', '0784867378', '', 1, NULL, 'Kuluva Hospital', 'avzSINkwOx8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2413, 'Bamugolodde H/C III', '0784746699', '', 1, NULL, 'Bamugolodde HC III', 'aSMuKx05RO8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2414, 'Nyahuka H/C IV', '', '', 1, NULL, 'Nyahuka HC IV', 'Wtx8GzEga6v', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2415, 'Kyakatara H/C III', '', '', 1, NULL, 'Kyakatara HC III', 'wmzTMo2sIKx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2417, 'Kyabirukwa H/C III', '', '', 1, NULL, 'Kyabirukwa HC III', 'aTaU1OfpPkU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2418, 'Buhimba H/C III 	', '0776074816', '', 1, NULL, 'Buhimba HC III', 'a0NjFSCY24s', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2419, 'Bujalya H/C III', '0773771916', '', 1, NULL, 'Bujalya HC III', 'WcfbUI6UJkF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2420, 'Kyamusisi H/C III', '', '', 1, NULL, 'Kyamusisi HC III', 'KLRFW0OxcyN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2421, 'Kakira H/C III (Jinja)', '', '', 1, NULL, 'Kakira HC III', 'HiCwzjSmUWO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2422, 'Toro Kahuna H/C III', '0779500352', '', 1, NULL, 'Toro Kahuna HC III', 'BsqCx1RBM4V', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2423, 'Karungu H/C III (Kiryandongo)', '0785406822', '', 1, NULL, 'Karungu HC III NGO', 'QHsCNVmRURq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2424, 'Mukwaya General Hospital', '0772902696', '', 1, NULL, 'Mukwaya General  Hospital', 'Syv5X2AB8wP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2425, 'Bukuuku H/C IV', '0704753355', '', 1, NULL, 'Bukuku HC IV', 'n8cJGH7q4QK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2426, 'Kibiito H/C IV', '', '', 1, NULL, 'Kibiito HC IV', 'egswmCc8ssL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2427, 'Kataraka H/C IV', '0782750179', '', 1, NULL, 'Kataraka HC IV', 'aVcdIF2qcWc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2428, 'Kagote H/C III', '0782972575', '', 1, NULL, 'Kagote HC III', 'JOGgj0LGTiW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2429, 'Lukaya Health Care Centre (Uganda Cares)', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2430, 'Naggalama Hospital', '0700345893', '', 1, NULL, 'St. Francis HOSPITAL Naggalama', 'PSPBoL7ecNh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2431, 'Charis H/C III', '0780337500', '', 1, NULL, 'Charis HC III', 'Kc7UIYCljdS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2433, 'Nyamitanga H/C III', '0751644743', '', 1, NULL, 'Nyamitanga Gvt HC III', 'uoOrITIaKEJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2434, 'Kakira Sugar Ltd Hospital', '0774427238', '', 1, NULL, 'Kakira Worker\'s Hospital', 'ikdW0m1mt7H', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2435, 'Kilembe Mines Hospital', '0775677857', '', 1, NULL, 'Kilembe Hospital', 'fq4icBr2Q9P', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2436, 'Kakinga H/C III', '0773239725', '', 1, NULL, 'Kakinga HC III (Kabarole)', 'GRmNMvXH6gl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2437, 'Kabende H/C III', '0704673787', '', 1, NULL, 'Kabende HC III', 'Nkq4sBVIoUd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2438, 'Kasunganyanja H/C III', '0782758241', '', 1, NULL, 'Kasunganyanja HC III', 'cvhndG0NLZe', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2440, 'Nyabuswa H/C III', '', '', 1, NULL, 'Nyabuswa HC II', 'OwDder9Wkwn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2441, 'Mitandi H/C III (NGO)', '0777637040', '', 1, NULL, 'Mitandi HC III', 'puvssItt4Qv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2442, 'Kasusu H/C III', '0773772235', '', 1, NULL, 'Kasusu HC III', 'aO5NU9dvqqT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2443, 'Rambia H/C III', '0778383399', '', 1, NULL, 'Rambia HC III (Kabarole)', 'YeOSUx4rjHy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2444, 'Bukasa H/C IV', '', '', 1, NULL, 'Bukasa HC IV', 'NKcfhEUaMHx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2445, 'Kiko H/C III', '074330157', '', 1, NULL, 'Kiko HC III', 'nz0c3cd4fzo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2446, 'Buziirasagama H/C II', '0787833972', '', 1, NULL, 'Buzirasagama HC II', 'ZAhGP8KMuzQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2447, 'Kandege H/C II', '0784759501', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2448, 'Lwangoli H/C III', '0774176589', '', 1, NULL, 'Lwangoli HC III', 'hC1gtogaFM0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2449, 'Bussi H/C III', '0782589306', '', 1, NULL, 'Bussi HC III', 'tBl4WduwWRw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2450, 'Awere H/C III', '0774022194', '', 1, NULL, 'Awere HC III', 'arbBXd1KN8n', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2451, 'Ggwatiro Hospital', '0700876045', '', 1, NULL, 'Ggwatiro Nursing Home HC III', 'aC6BO225r29', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2452, 'Royal Van Zanteen', '', '', 1, NULL, 'Royal Van Zanten Clinic', 'ayXdSOkMOLk', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2453, 'Kitante Medical Centre', '', '', 1, NULL, 'Kitante Medical Center HC II', 'wqsIFyvLng4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2454, 'Span Medicare', '', '', 1, NULL, 'Span Medicare Centre', 'plvakokILP9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2455, 'Case Hospital', '', '', 1, NULL, 'Case Medical Centre', 'aT1aouq7op5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2456, 'Touch Namuwongo (IHK)', '0776286161', '', 1, NULL, 'Touch Clinic - Namuwongo HC II', 'F91loQ3NbZg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2457, 'Buwunga H/C III (Masaka)', '0706308207', '', 1, NULL, 'Masaka Buwunga HC III GOVT', 'F826wgZ6HPF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2458, 'Kasese Municipal Council H/C III (KMC)', '0782104903', '', 1, NULL, 'Kasese Municipal Council HC III', 'XI4OsjZYmtZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2459, 'Kyanamira H/C III', ' 0782267574', '', 1, NULL, 'Kyanamira HC III', 'bVZDLfQXL5H', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2460, 'Munobwa H/C II', '07002299429', '', 1, NULL, 'Munobwa-Hiima Tea Factory Clinic', 'Q4awDHvi4b6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2461, 'Mazinga H/C III', '0752621249', '', 1, NULL, 'Mazinga HC III', 'vM7d3ZWWl42', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2462, 'Kisomoro H/C III', '0772931104', '', 1, NULL, 'Kisomoro HC III', 'efN24flmJeb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2464, 'Rapha Medical Center(Wakiso)', '', '', 1, NULL, 'Rapha Medical Center HC III', 'm8iIXo1Saga', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2466, 'Ntoroko H/C III (Ntoroko)', ' 0773651028', '', 1, NULL, 'Ntoroko HC III', 'KPdYR8oFFSw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2467, 'International Medical Centre', '', '', 1, NULL, 'Kampala International Medical Centre HC ', 'wZ7da8feu18', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2468, 'Naguru Medical lab', '', '', 1, NULL, 'Naguru Medical Laboratory Ltd (Namela) H', 'apyOSmUxhsw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2469, 'Naiku H/C III', '0779444875', '', 1, NULL, 'Naiku HC III', 'aVEGxoGe7RS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2470, 'Bukinge H/C III', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2471, 'Kireka SDA H/C III', '0776513753', '', 1, NULL, 'Kireka SDA HC III', 'ziRKF2GJeEU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2472, 'Wanale H/C III', '0775407290', '', 1, NULL, 'Wanale HC III', 'KBk0KFmtX6p', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2473, 'St Charles Kabuwoko H/C III', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2474, 'Bukeeri H/C III', '0702930554', '', 1, NULL, 'Bukeeri HC III', 'aSsroXOZSIn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2475, 'Bukalagi H/C III', '0754138335', '', 1, NULL, 'Bukalagi  HC III', 'tw7g2aShrXi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2476, 'Kicwamba H/C III (Kabarole)', '0774204875', '', 1, NULL, 'Kicwamba HC III (Kabarole)', 'GlGBqdv4DH9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2477, 'Kijura H/C III', '0787226897', '', 1, NULL, 'Kijura HC III', 'VhofFpidxI7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2478, 'Kasenda H/C III', '0787508507', '', 1, NULL, 'Kasenda HC III', 't2B8bbXaxBm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2479, 'Bujumbura H/C III', '0775580123', '', 1, NULL, 'Bujumbura HC III', 'DyxRfkwicX2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2480, 'Naanywa H/C III', '0772575208', '', 1, NULL, 'Nanywa HC III', 'KsvZ6Mr8PYj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2481, 'Ntara H/C IV', '0785062332', '', 1, NULL, 'Ntara HC IV', 'w73evLideQA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2482, 'Rwebisengo H/C III', '077845760', '', 1, NULL, 'Rwebisengo HC III', 'wVQqiOrorr6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2483, 'Biguli H/C III', '0779200002', '', 1, NULL, 'Biguli HC III', 'Sg3h27N489f', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2484, 'Lulamba H/C III', '0782913393', '', 1, NULL, 'Lulamba HC III', 'K3E78Mqdg2A', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2485, 'Ssi H/C III', '0774463756', '', 1, NULL, 'Ssi HC III', 'TYC4xgc3ieF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2486, 'Kaswa H/C III', '0706495723', '', 1, NULL, 'Kaswa HC III', 'aQTBvjHZAw9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2487, 'Bugamba H/C IV', '0772300703', '', 1, NULL, 'Bugamba HC IV', 'cTp1LWth7hI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2490, 'Ruhija H/C III', '0773450360', '', 1, NULL, 'Ruhija Gvt HC III', 'avzQnIvljoV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2491, 'Masindi Prisons H/C III', '0779735406', '', 1, NULL, 'Masindi Prison HC III', 'sOGx0iAe1fF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2492, 'Kiyombya H/C III', '0781177043', '', 1, NULL, 'Kiyombya HC III', 'a0Tgsf83fGB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2493, 'Dricile H/C III', '0775086109', '', 1, NULL, 'Dricile HC III', 'Nz32J3zs8Cq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2494, 'Naama H/C III', '0702182998', '', 1, NULL, 'Naama HC III', 'ahYrfYMxirO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2495, 'Living Water H/C', '', '', 1, NULL, 'Living Water Community Medical Centre CL', 'skaKlRXEgCS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2496, 'Mugusu H/C III', '0783482234', '', 1, NULL, 'Mugusu HC III', 'Y3QzK6JqIXg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2497, 'Kinyara H/C III', '0700501193', '', 1, NULL, 'Kinyara Sugar Works HC III', 'ASNyZE7TMLu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2498, 'Buluba Hospital St Francis', '0783256400', '', 1, NULL, 'Buluba HOSPITAL', 'O6TYEDR7sjP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2499, 'Holy Family Hospital-Nyapea', '', '', 1, NULL, 'Nyapea HOSPITAL', 'H5hAGwZHpUb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2501, 'Epi Centre H/C IV (Butambala)', '0757895866', '', 1, NULL, 'Butambala Epi Centre HC III GOVT', 'E1TxjBqAvWB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2502, 'Naluwerere H/C III', '0782767193', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2503, 'Ankole Estate Clinic', '0705954346', '', 1, NULL, 'Ankole Tea Factory HC II', 'BoGS6ZmpQc2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2504, 'Karongo H/C III', '0703599289', '', 1, NULL, 'Karongo HC III', 'a3CefBcMInT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2505, 'Namiti H/C II', '0775489178', '', 1, NULL, 'Namiti HC II', 'Eg7Efn5rKSj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2506, 'Bwizi H/C III', '0789145742', '', 1, NULL, 'Bwizi HC III', 'a3HP4aNtOMO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2507, 'St Balikuddembe H/C III (Kyankwanzi)', '0776512783', '', 1, NULL, 'St. Balikudembe HC III', 'H461gSsRGrd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2508, 'Kyampangara H/C II', '0787508850', '', 1, NULL, 'Kyampangara HC II', 'x9A33vBF8B4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2509, 'MBN-Kampala', '', '', 1, NULL, 'MBN Clinical Lab', 'XGwQgBZBkZx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2510, 'Azur Christian H/C IV', '0783658054', '', 1, NULL, 'Azur HC III', 'rWhuHZdqFk8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2511, 'Kyabenda H/C III', '0786115444', '', 1, NULL, 'Kyabenda HC III', 'qMBXDpWSarC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2512, 'Masolya H/C II', ' 0756742331', '', 1, NULL, 'Masolya HC II', 'FJF7Vx7pjWL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2513, 'Jaguzi H/C II', '', '', 1, NULL, 'Jagusi HC II', 'xvsvbPNHC2I', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2514, 'Aids Information Center(Mbale)', '', '', 1, NULL, 'AIC Mbale Main Branch CLINIC', 'v9p3jFvYYtP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2515, 'Sagitu H/C II', '', '', 1, NULL, 'Sagitu HC II', 'jSNmUpGrQMN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2517, 'Yerya H/C III', '', '', 1, NULL, 'Yerya HC III', 'z3ldDiQ4JHT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2518, 'Kakasi C.O.U H/C III', '0775616889', '', 1, NULL, 'Kakasi Gvt HC II', 'xNphiHRcbCC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2519, 'Bigodi H/C III', '0774659610', '', 1, NULL, 'Bigodi HC III', 'd3ugFJbENWb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2520, 'Mahyoro H/C III', '0773982427', '', 1, NULL, 'Mahyoro Gvt HC III', 'S1tbgD2FoFD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2521, 'Butanda H/C III', '', '', 1, NULL, 'Butanda HC III', 'ktaPwuDxHca', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2522, 'Kyegegwa H/C IV', '', '', 1, NULL, 'Kyegegwa HC IV', 'xLXQrhFHr7A', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2523, 'Naboa H/C III', '0782310948', '', 1, NULL, 'Naboa HC III', 'G4PdJuhXqOz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2525, 'Ishaka Adventist Hospital', '0784979804', '', 1, NULL, 'Ishaka Adventist Hospital', 'H61tgLIphOZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2526, 'Rwemigina H/C II', '0782550305', '', 1, NULL, 'Rwemigyina HC II', 'xZaee0TTbQo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2527, 'Juru H/C II', '0773832296', '', 1, NULL, 'Juru  HC II NGO', 'au6l6u0QySf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2528, 'St Monica Birongo H/C III (Kalungu)', '0703625803', '', 1, NULL, 'St. Monica Birongo Kalungu HC III', 'lQ9FxeRMd8s', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2529, 'Jjanda H/C III', '0782194608', '', 1, NULL, 'Jjanda HC III', 'mfPV8jsUnyy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2530, 'Karambi H/C III (Kabarole)', '0772559998', '', 1, NULL, 'Karambi HC III (Kabarole)', 'aOKbOOqOG6Y', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2531, 'Kyenjojo Hospital', '0705774867', '', 1, NULL, 'Kyenjojo Hospital', 'DVWgXBCqWXD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2532, 'Maliba H/C III', '0753139988', '', 1, NULL, 'Maliba HC III', 'Nre05wUvCJL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2533, 'Ruteete H/C III', '0772850140', '', 1, NULL, 'Ruteete HC III', 'YzWi4kmieZt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2534, 'Katunguru H/C II (Kasese)', '0781885826', '', 1, NULL, 'Katunguru HC II', 'ai5Sfj3nu9K', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2535, 'Katojo H/C III (Prisons)', '0704300443', '', 1, NULL, 'Katojo Prisons HC III', 'TSYQk88VWVI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2536, 'Kalungi H/C III(Kalungu)', '0785012625', '', 1, NULL, 'Kalungi HC II', 'i6hyU0bywAr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2537, 'Kasenyi Art Site', '0757853398', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2538, 'Faith Mulira Health Care Center', '0782009919', '', 1, NULL, 'Faith Mulira Health Care Centre', 'BVulRfStvvn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2539, '309 BDE Kavera H/C III', '0775187620', '', 1, NULL, '307 Bde-Kavera HC III', 'nBDPw7Qhd7r', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2540, 'Karugutu H/C IV(Ntoroko)', '', '', 1, NULL, 'Karugutu HC IV', 'A6P3WOAXDru', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2541, 'Kabatunda H/C III', '', '', 1, NULL, 'Kabatunda HC III', 'sVrJn8E1ypr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2542, 'Kyanya SDA H/C III', '0784554057', '', 1, NULL, 'Kyanya Sda HC II', 'lpNOI5JV4px', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2543, 'Kyamulibwa H/C IV', '0772610159', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2544, 'Rapha Medical Centre(Gomba)', '0786346746', '', 1, NULL, 'Rapha Medical Centre', 'R4Vfx0e7HLy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2545, 'kabuga H/C III', '0785062332', '', 1, NULL, 'Kabuga HC III', 'JiXMZzyWhUb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2546, 'Kanara H/C II', '0785062332', '', 1, NULL, 'Kanara HC II', 'btYQmvsgNkg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2547, 'Rwenjasa H/C II', '0785062332', '', 1, NULL, 'Rwenjaza HC II', 'XuyO4YTaFOG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2548, 'Rwamwanja H/C III', '0782917184', '', 1, NULL, 'Rwamwanja HC III', 'CK8TCNDBPNc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2549, 'Kicheche H/C III', '0774145485', '', 1, NULL, 'Kicheche HC III', 'PjSakZGVHq5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2550, 'Bunoga H/C III', '0702456102', '', 1, NULL, 'Bunoga HC III', 'oa2Jc3fTgtD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2551, 'Padre Pio H/C III', '0779592186', '', 1, NULL, 'Padre Pio HC III', 'XuummkDfiEK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2552, 'Bihanga H/C III', '0785062332', '', 1, NULL, 'Bihanga HC II', 'rQkhTj9VFoS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2553, 'Kabambiro H/C III', '0785062332', '', 1, NULL, 'Kabambiro HC II', 'HbRR9Kem65L', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2554, 'Kimulikidongo  H/C III', '0785062332', '', 1, NULL, 'Kimulikidongo HC II', 'mMZZQTjDPfj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2555, 'Ntonwa H/C II', '0785062332', '', 1, NULL, 'Ntonwa HC II', 'H94XD2JNeOp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2556, 'Bukurungu H/C II', '0785062332', '', 1, NULL, 'Bukurungu HC II', 'PgnmZSSRbeL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2557, 'Busiriba H/C II', '0785062332', '', 1, NULL, 'Busiriba HC II', 'iR4NuGQdNOq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2558, 'Kyakarafa H/C II', '0785062332', '', 1, NULL, 'Kyakarafa HC II', 'VQqzXN2zkM8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2559, 'Rukoni H/C III', '', '', 1, NULL, 'Rukoni HC III', 'oBioSOuF497', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2560, 'St Luke Bujuni H/C III (Kibaale)', '', '', 1, NULL, 'St. Luke Bujuni Kibale HC III', 'FS1iFJzUmTm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2561, 'Kibibi Nursing Home H/C III', '', '', 1, NULL, 'Kibibi Nursing Home HC III', 'gr1CRYxuJmr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2562, 'Namoni H/C II', '0776434307', '', 1, NULL, 'Namoni HC II', 'DUDZxVy6oKw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2563, 'Kiti H/C III', '0773605460', '', 1, NULL, 'Kiti HC III', 'a5lQTv6RKkm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2564, 'Well Springs Childrens Medical Ceter - Kamutuuza H/C III', '0773605460', '', 1, NULL, 'Well Springs HC III', 'YXN5KHNVc5J', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2565, 'Kabungo H/C III', '0773605460', '', 1, NULL, 'Kabungo HC III', 'lbLwvsxtAIk', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2566, 'St Francis H/C III (Butenga)', '0773605460', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2567, 'Mukwano Medical Centre', '0773605460', '', 1, NULL, 'Mukwano Medical Centre CLINIC', 'cQlhVgIOXko', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2568, 'Kitswamba H/C III', '0782666682', '', 1, NULL, 'Kitswamba HC III', 'OOJMUm6aMR4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2569, 'Nabingoola H/C III', '0777566519', '', 1, NULL, 'Nabingoola HC III', 'DgpugjmuhEo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2572, 'Stella Maris H/C III', '', '', 1, NULL, 'Stella Maris Ntoroko HC III', 'aHL2NoEwlHh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2573, 'St Pauls H/C IV', '', '', 1, NULL, 'St. Paul HC IV', 'ZhSuvqvWUin', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2574, 'Bugoye H/C III', '0783910499', '', 1, NULL, 'Bugoye HC III', 'aKmOqqxiDuQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2575, 'Meeting Point Kampala', '', '', 1, NULL, 'Meeting Point Kampala HC II', 'wJlfRRGNJ7j', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2576, 'Bubeke H/C III', '', '', 1, NULL, 'Bubeke HC III', 'ADhJXGIcCND', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2577, 'Butagaya H/C III', '0782663849', '', 1, NULL, 'Butagaya HC III', 'ga9sLsbCiMo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2578, 'Mukathi H/C III', '', '', 1, NULL, 'Mukathi HC III', 'lGAhRBCmDzT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2579, 'Rwangara H/C II', '0778995421', '', 1, NULL, 'Rwangara HC II', 'tS7W7E9zJq3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2580, 'Rwesande H/C IV', '', '', 1, NULL, 'Rwesande HC IV', 'KSrm1cFNorS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2581, 'Amudat Hospital', '0782607325', '', 1, NULL, 'Amudat Hospital', 'gVSFfQXW1J2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2582, 'Kabalega Medical Centre', '0773279191', '', 1, NULL, 'Kabalega Medical Centre HC III', 'Z89GR8j6LFL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2583, 'Kamacha H/C III', '0774520575', '', 1, NULL, 'Kamaca HC III', 'MexhLyMSilA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2584, 'Nyero H/C III', '0775635632', '', 1, NULL, 'Nyero HC III', 'ehjI0b4szUT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2585, 'Olimai  H/C III', '0778572003', '', 1, NULL, 'Olimai CBO HC III', 'aqG8bVVJdXW', '2019-03-21 09:54:43', '2019-03-21 09:54:43');
INSERT INTO `dhis2_facilities` (`id`, `name`, `facility_contact`, `facility_email`, `active`, `code`, `dhis2_name`, `dhis2_uid`, `created_at`, `updated_at`) VALUES
(2586, 'Rubondo H/C II', '0772008787', '', 1, NULL, 'Rubondo HC II', 'K295qd0SaGs', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2587, 'Kanamba H/C III', '0779451943', '', 1, NULL, 'Kanamba HC III', 'aXspFLZSsut', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2589, 'Kibalinga H/C III', '070464618', '', 1, NULL, 'Kibalinga HC III', 'M5caUvrHw5q', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2590, 'Abarilela H/C III', '0779232757', '', 1, NULL, 'Abarilela HC III', 'IswqGyDbcgm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2591, 'Double Cure Medical Centre', '0705050416', '', 1, NULL, 'Double Cure Med Center CLINIC', 'aOHWQc76Dvu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2592, 'Acowa H/C III', '0702906828', '', 1, NULL, 'Acowa HC III', 'krIH36G6xhy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2593, 'Ngora H/C IV', '0773441443', '', 1, NULL, 'Ngora Gvt HC IV', 'O9q5mhryXaX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2594, 'Saidinah Abubaker Hospital', '0756632577', '', 1, NULL, 'Saidina Abubakar Islamic HOSPITAL', 'z3oqgznxuph', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2595, 'Chandaria medical', '0773146462', '', 1, NULL, 'Chandaria Medical Clinic', 'LuEKO4AaQZZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2596, 'Apapai H/C IV (Serere)', '0753415598', '', 1, NULL, 'Apapai HC IV', 'qzSy84YdUkX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2597, 'Serere H/C IV', '0775046838', '', 1, NULL, 'Serere HC IV', 'DXmJVAw33mJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2598, 'Kaberamaido Catholic H/C III', '0774998434', '', 1, NULL, 'Kaberamaido Catholic Mission HC III', 'BWY57NKHPc0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2599, 'Princess Diana H/C IV', '0784479487', '', 1, NULL, 'Princes Diana HC IV', 'KEJ7kcBumFl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2600, 'Kyarusozi H/C IV', '', '', 1, NULL, 'Kyarusozi HC IV', 'LLjCLRuuOpp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2601, 'Ngariam H/C III', '', '', 1, NULL, 'Ngariam Gvt HC III', 'XHgTvnlWtW0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2602, 'Buhara H/C III (NGO)', '', '', 1, NULL, 'Buhara (Ngo) HC III', 'a680eATOSPd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2603, 'Toroma H/C IV', '', '', 1, NULL, 'Toroma HC IV', 'Vdrd1FtUOrc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2604, 'Kapujan H/C III', '', '', 1, NULL, 'Kapujan HC III', 'uRzFsC6osk8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2605, 'Mukura H/C III', '', '', 1, NULL, 'Mukura HC III', 'c50gQsWftA9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2606, 'Kapir H/C III', '', '', 1, NULL, 'Kapir HC III', 'pGfuON6s6cD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2608, 'Gweri H/C III', '', '', 1, NULL, 'Gweri HC III', 'WY3yVWM5gaL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2609, 'Mukongoro H/C III', '', '', 1, NULL, 'Mukongoro HC III', 'agLJLYLJNK6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2610, 'Kachumbala H/C III', '', '', 1, NULL, 'Kachumbala HC III', 'BzFE9hikp6J', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2611, 'Malera H/C III', '', '', 1, NULL, 'Malera HC III', 'EdfrvsY7Giu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2612, 'Kabarwa H/C III', '', '', 1, NULL, 'Kabarwa HC III', 'aowpXPkRtAt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2613, 'Kyadondo Medical Center', '', '', 1, NULL, 'Kyadondo Medical Centre HC II', 'WDbxuHRdYY4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2614, 'Asuret H/C III', '', '', 1, NULL, 'Asuret HC III', 'AY24xwaz8Ml', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2615, 'Otuboi H/C III', '', '', 1, NULL, 'Otuboi CoU HC II', 'xRGI9XPpYLG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2616, 'Holy Innocents H/C III', '', '', 1, NULL, 'Holy Innocents Health Centre', 'TnIUAczx1Hq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2617, 'Ngora District Maternity H/C III', '', '', 1, NULL, 'Ngora District Maternity HC III', 'GLPEmICaqyp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2618, 'Lwala Hospital', '', '', 1, NULL, 'Lwala Hospital', 'UdkpzjDtHXu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2619, 'Morungatuny H/C III', '', '', 1, NULL, 'Morungatuny HC III', 'FxdgLy07xN4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2620, 'Obalanga H/C III', '', '', 1, NULL, 'Obalanga HC III', 'rbxGtvw8E8X', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2621, 'St Clare Orungo H/C III', '0774419367', '', 1, NULL, 'Ococia (Orungo) St. Clare HC III', 'jcEuyATQbMK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2622, 'Kalaki H/C III', '', '', 1, NULL, 'Kalaki HC III', 'BvO9dRkpqen', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2623, 'Kamuda H/C III', '', '', 1, NULL, 'Kamuda HC III', 'a4070sNyyVO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2624, 'Kitanda H/C III', '', '', 1, NULL, 'Kitanda HC III', 'aULXp2H2LGI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2625, 'Epi Centre H/C III (Wakiso)', '', '', 1, NULL, 'Wakiso Epi Centre HC III GOVT', 'a0plh70j00D', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2626, 'Mulombi Health Centre II', '0753027938', '', 1, NULL, 'Mulombi  HC II', 'kHostqbVYCJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2627, 'Dr Charles Farthing Memorial Clinic', '0703262797/077352694', '', 1, NULL, 'Uganda Cares Owino Clinic', 'zSlpKhPNJIB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2628, 'Kigasa H/C III', '0776111333', '', 1, NULL, 'Kigasa Ii HC II', 'ald3aEmViHB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2629, 'St Assumpta H/C III', '', '', 1, NULL, 'St. Assumpta HC III', 'GXbLbRkXwiG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2630, 'Ongutoi Health Center', '', '', 1, NULL, 'Ongutoi HC III', 'l5C1tkKf11K', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2631, 'Mitala Maria H/C III', '', '', 1, NULL, 'Mitala-Maria HC III', 'lF4U1Yzu0Ka', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2632, 'Lulagala H/C III', '', '', 1, NULL, 'Lulagala HC III', 'f5lLaEQlPzM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2633, 'Wera H/C III', '0776820225', '', 1, NULL, 'Wera HC III', 'a4Cp1oW19Lo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2634, 'Doctors Hospital Sseguku', '0758614514', '', 1, NULL, 'Doctors  Clinic Seguku Maternity And Den', 'BL7K7k0SrYh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2635, 'St Micheal HCF H/C III (Amuria)', '0777687013', '', 1, NULL, 'St. Michael Wera HC III', 'AECp7SuwokS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2636, 'Mirembe Medical Centre', '0705267125', '', 1, NULL, 'Mirembe HC III', 'zgl8cvTUMji', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2637, 'Oleba H/C III', '0784324861', '', 1, NULL, 'Oleba HC III', 'bq8JZONb0MA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2638, 'Muwumba H/C III', '0701631531', '', 1, NULL, 'Muwumba HC III', 'MW38DjLdTg7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2639, 'Ajeluk H/C III', '0777069040', '', 1, NULL, 'Ajeluk HC III', 'X8l6y8IN4z9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2640, 'Ongino H/C III', '0782607759', '', 1, NULL, 'Ongino HC III', 'aUnXgTzSLvC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2641, 'Kasese Community Health & Education Foundation (KCHEF)', '0782379334', '', 1, NULL, 'Kasese Community Health & Education Foundation (KCHEF)', 'aMrVtjXDAOU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2642, 'Kanyum H/C III', '0774092328', '', 1, NULL, 'Kanyum HC III', 'al7HcOssdLZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2643, 'Atutur Hospital', '0777800775', '', 1, NULL, 'Atutur Hospital', 'aOoSM1O7H9D', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2644, 'Bululu H/C III', '0700146458', '', 1, NULL, 'Bululu HC III', 'GRkqVpmzBgf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2645, 'Alwa H/C III', '0775899895', '', 1, NULL, 'Alwa HC III', 'VEc0XL8e8Sa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2646, 'Western Division H/C III', '0774660993', '', 1, NULL, 'Western Division HC III', 'abcJcH3EO75', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2647, 'Kobulubulu H/C III', '0779970626', '', 1, NULL, 'Kobulubulu HC III', 'UMzvOsVEnNH', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2648, 'Agu H/C III', '0784133125', '', 1, NULL, 'Agu HC III', 'S70E0FJrMtU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2649, 'Metu H/C III', '0782204645', '', 1, NULL, 'Metu HC III', 'aoYoN1wkWDw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2650, 'Ayipe H/C III', '0781483591', '', 1, NULL, 'Ayipe HC III', 'mMZD31O698s', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2651, 'Lobule H/C III', '0777056621', '', 1, NULL, 'Lobule HC III', 'cacYqraIAeB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2652, 'Gborokolongo H/C III', '0774928830', '', 1, NULL, 'Gborokolongo HC III', 'gSxv8y8vQ4H', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2653, 'Dakabela H/C III', '0782240420', '', 1, NULL, 'Dakabela HC III', 'CqefEf18FFW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2654, 'Ochero H/C III', '0781322420', '', 1, NULL, 'Ochero HC III', 'rPMkkecqjqx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2655, 'Kasekulo H/C II', '', '', 1, NULL, 'Kasekulo HC II', 'FzjQcOWAApu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2656, 'Lujjabwa H/C II', '', '', 1, NULL, 'Lujjabwa Island HC II', 'RuPdGm5T2zl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2657, 'Jaana H/C II', '', '', 1, NULL, 'Jaana HC II', 'azzeotS1e0O', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2658, 'SIAAP Bugoma Clinic', '', '', 1, NULL, 'Ssese Islands African Aids Project (SIAA', 'kOlitJ9usyf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2659, 'Bumangi H/C II', '', '', 1, NULL, 'St Elizabeth Bumangi HC II', 'aaNmTnGylMb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2660, 'Mulabana H/C II', '', '', 1, NULL, 'Mulabana HC II', 'BUPmAz8RgAa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2661, 'Nyabbani H/C III', '0774018933', '', 1, NULL, 'Nyabbani HC III', 'aVLWD9zrowf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2662, 'Mpara H/C III', '', '', 1, NULL, 'Mpara HC III', 'wisJV65CjPt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2663, 'Buikwe H/C III', '', '', 1, NULL, 'Buikwe HC III', 'cK5zkZIUFsN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2664, 'Makindu H/C III', '', '', 1, NULL, 'Makindu HC III', 'CqBb08p28JJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2665, 'Kabigi H/C III', '', '', 1, NULL, 'Kabigi Muslim HC II', 'ajaZHwTza6B', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2666, 'Luyitaayita H/C III (NGO)', '', '', 1, NULL, 'Luyitayita HC II', 'NCu3t93AIns', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2667, 'Bulo H/C III', '', '', 1, NULL, 'Bulo HC III', 'laPnCXSZ0Oo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2668, 'Kalamba H/C II', '', '', 1, NULL, 'Kalamba Community HC II', 'aDGztjb0S7j', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2669, 'Kabonero H/C III', '', '', 1, NULL, 'Kabonero HC III', 'QhjzIx0abeY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2670, 'Medical Centre III', '', '', 1, NULL, 'Bukomansimbi Medical Center HC III', 'obXcd9wL3Pf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2671, 'Dabani Hospital', '0779110252', '', 1, NULL, 'Dabani HOSPITAL', 'AhDvE2o9F3L', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2672, 'Panyigoro H/C III', '0775900442', '', 1, NULL, 'Panyigoro HC III', 'S9QduX5GY1K', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2673, 'Nebbi Hospital', '0787183982', '', 1, NULL, 'Nebbi Hospital', 'iEdI13kUo0h', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2674, 'Goli H/C IV (Nebbi)', '0774926007', '', 1, NULL, 'Goli HC III NGO', 'F3VE0gdRXu1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2675, 'Alwi H/C III', '0782071537', '', 1, NULL, 'Alwi HC III', 'KLEPRYA9Nge', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2676, 'Tubur H/C III', '0774846131', '', 1, NULL, 'Tubur HC III', 'kkYUoOF74Eb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2677, 'Kichinjaji H/C III', '0774226272', '', 1, NULL, 'Northern Division HC III', 'CxzGSxEbecK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2678, 'Kyanamukaka H/C IV', '', '', 1, NULL, 'Kyannamukaaka HC IV', 'aTvsnjjZTyN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2679, 'Eastern Division H/C III', '', '', 1, NULL, 'Eastern Div. HC III', 'YS1I62rL00h', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2680, 'St Kevin H/C III', '0789476320', '', 1, NULL, 'St. Kevin Toroma HC III', 'ayC0ZVq8bSp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2681, 'Amusus H/C III', '0783900252', '', 1, NULL, 'Amusus HC III', 'kwd5xyrWwvO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2682, 'Paminya H/C III', '0775612173', '', 1, NULL, 'Paminya HC III', 't8rivYmnWIo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2683, 'Alangi H/C III', '0784311113', '', 1, NULL, 'Alangi HC III', 'apEUhKfLxjY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2684, 'Agiermach H/C III', '0787393310', '', 1, NULL, 'Warr Agiermach HC III', 'vFo5oNkc7Nn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2685, 'Kalowang H/C III', '0773123380', '', 1, NULL, 'Kalowang HC III', 'OgnUw0a7ORO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2686, 'Pakadha H/C III', '0773953411', '', 1, NULL, 'Pakadha HC III', 'M85HoV8pnUM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2687, 'Panyimur H/C III', '0753772872', '', 1, NULL, 'Panyimur HC III', 'YcMgrtcbVpk', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2688, 'Katakwi Hospital', '0788334496', '', 1, NULL, 'Katakwi General Hospital', 'l5XOgabZp4j', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2689, 'Jupanziri H/C III', '', '', 1, NULL, 'Jupanziri HC III', 'T2ENFWE19Bu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2690, 'St Francis Of Assis Naddangira H/C II', '0703768372', '', 1, NULL, 'Nadangira HC III', 'TKpSl9J25U1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2692, 'Kakure H/C II', '0752300549', '', 1, NULL, 'Kakure HC II', 'cV6erj5W4Nh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2693, 'Mbehenyi H/C III', '', '', 1, NULL, 'Mbehenyi HC III', 'uxV110Fc7jo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2694, 'Masaka Prison H/C III', '0775128407', '', 1, NULL, 'Masaka Prisons Clinic HC III', 'hMXCTcwH9XJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2695, 'Bwindi H/C III', '0782053760', '', 1, NULL, 'Bwindi HC III', 'ZhpuIm9GBog', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2696, 'St Francis Acumet', '0784513357', '', 1, NULL, 'St. Francis Acumet HC III', 'GynTVP1Cc2t', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2697, 'Kasambiika H/C III', '0785481300', '', 1, NULL, 'Kasambika HC III', 'FSVMTORF0Dn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2698, 'Omugo H/C IV', '0775249346', '', 1, NULL, 'Omugo HC IV', 'ehmgxZaocae', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2699, 'St Luke H/C III Katiyi', '0777447002', '', 1, NULL, 'St. Luke Katiyi HC III', 'H5qRrAmreYp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2700, 'Kyamba H/C III', '0751601528', '', 1, NULL, 'Kagamba HC II', 'zZKvHFAuep2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2701, 'Siripi H/C III', '0776009228', '', 1, NULL, 'Siripi HC III', 'F7LKQNLd8M6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2702, 'Ukusijoni H/C III', '0772015746', '', 1, NULL, 'Ukusijoni HC III', 'Mq6H4E2PlH7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2703, 'Koboko Mission H/C III', '0779571425', '', 1, NULL, 'Koboko Mission HC III', 'aXGjPN0urzK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2704, 'Ofuwa H/C III', '0784649249', '', 1, NULL, 'Ofua HC III', 'BSrrPPLiBZo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2705, 'Robidire H/C III', '0779162640', '', 1, NULL, 'Robidire HC III', 'V8su3RPXsiK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2707, 'Triam Medical Center', '0701588780', '', 1, NULL, 'Triam Medical Centre CLINIC-NR', 'aYN6PpIj4bQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2708, 'Dranya H/C III', '0793852540', '', 1, NULL, 'Dranya HC III', 'URmGWanfgpn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2709, 'Odupi H/C III', '0775298922', '', 1, NULL, 'Odupi HC III', 'gohwVnGiMuE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2710, 'Oriajin Hospital', '0777557949', '', 1, NULL, 'Oriajini HOSPITAL', 'i1htH9vJSlc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2711, 'Latanya H/C III', '0789154682', '', 1, NULL, 'Latanya HC III', 'kBBhLlLFodJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2712, 'Sngagura H/C III', '0785493413', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2713, 'Angagura H/C III', '0777368930', '', 1, NULL, 'Angagura HC III', 'ygTUi4HvPHJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2714, 'Kidongole H/C III', '0775585829', '', 1, NULL, 'Kidongole HC III', 'L9isDZQcpuo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2715, 'Openzinzi H/C III', '0783403776', '', 1, NULL, 'Openzinzi HC III', 'SydoosT4IoO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2716, 'Yumbe H/C III', '0774402221', '', 1, NULL, 'Yumbe HC IV', 'Gs4nX12jUeA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2717, 'Moyo Mission H/C III', '0784029101', '', 1, NULL, 'Moyo Mission HC III', 'EZA6XG2Eqra', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2718, 'Kolir H/C III', '', '', 1, NULL, 'Kolir HC III', 'OMNRrYcHxCn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2719, 'Eremi H/C III', '0777456617', '', 1, NULL, 'Eremi HC III', 'r7ps4KEp5W9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2720, 'Moyo Hospital', '0782115857', '', 1, NULL, 'Moyo Hospital', 'HWKAq88M3aX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2721, 'Pallisa General Hospital', '0772974034', '', 1, NULL, 'Pallisa HOSPITAL', 'In3apXiVwke', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2722, 'Bondo H/C III', '0785557311', '', 1, NULL, 'Bondo HC III', 'aLKBDY8KNaI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2723, 'Pakwach Mission H/C III', '0756456063', '', 1, NULL, 'Pakwach Mission HC III', 'a1DNpYv02JK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2724, 'Pokwero H/C III', '0774564784', '', 1, NULL, 'Pokwero HC III', 'aBicVbbaQ8B', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2725, 'Kucwiny H/C III', '0773250281', '', 1, NULL, 'Kucwiny HC III', 'a6UyqE2Tgjx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2726, 'Rhino Camp H/C IV', '0782584341', '', 1, NULL, 'Rhino Camp HC IV', 'ccY5TpGvBqo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2727, 'Ovujo H/C III', '0783132182', '', 1, NULL, 'Ovujo HC III', 'NzNtDRq3o75', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2728, 'Warr H/C III', '0787713310', '', 1, NULL, 'Warr  HC III', 'H9PD4tw7GUE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2729, 'Orivu H/C III', '0754188866', '', 1, NULL, 'Orivu HC III', 'aM3UfhNrS2W', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2730, 'Parombo H/C III', '0776171225', '', 1, NULL, 'Parombo HC III', 'xYbII9uvF5o', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2731, 'Kijomoro H/C III', '0779203591', '', 1, NULL, 'Kijomoro HC III', 'iIrDj4WIA6O', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2732, 'Tara H/C III', '0773187620', '', 1, NULL, 'Tara HC III', 'uVzb26lWq53', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2733, 'Kango H/C III', '0783450840', '', 1, NULL, 'Kango HC III', 'aoc8dFcHiqR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2734, 'Ihandiro H/C III', '0787204214', '', 1, NULL, 'Ihandiro HC III', 'q4C8iOvwk7A', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2736, 'Kapelebyong H/C IV', '0773288510', '', 1, NULL, 'Kapelebyong HC IV', 'YJz6q902UGT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2737, 'Ndejje University H/C III', '0781157251', '', 1, NULL, 'Ndejje University HC II', 'mg6Inl2h53C', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2738, 'Adjumani Mission H/C III', '0791919994', '', 1, NULL, 'Adjumani Mission HC III', 'aoqEF4fUP18', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2739, 'Loputuk H/C III', '', '', 1, NULL, 'Loputuk HC III', 'kvZH9oA6jkJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2740, 'Obongi H/C IV', '', '', 1, NULL, 'Obongi HC IV', 'nrLW9kL9BT2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2741, 'Ntandi H/C III', '', '', 1, NULL, 'Ntandi HC III', 'FtUWKxVeXby', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2742, 'Katooke H/C III', '0782323841', '', 1, NULL, 'Katooke HC III', 'ounetWmXUdw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2743, 'Musyenene H/C III', '', '', 1, NULL, 'Musyenene HC III', 'X3ZIaE3ccDb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2744, 'Orwamuge H/C III', '0774469277', '', 1, NULL, 'Orwamuge HC III', 'pZhYWxNWH94', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2745, 'Focrev H/C III', '0773740891', '', 1, NULL, 'Lumino Foc Rev HC III', 'auwyv5FxrEm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2746, 'Rabachi H/C II', '0776663877', '', 1, NULL, 'Rabach HC II', 'H3h7DWBLt08', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2747, 'Bukedea H/C IV', '0782405232', '', 1, NULL, 'Bukedea HC IV', 'tpIyT18ybqD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2748, 'Orussi H/C III', '', '', 1, NULL, 'Orussi HC III', 'X8wfR21inSS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2749, 'Bugiri Town Council H/C II', '', '', 1, NULL, 'Bugiri T/C HC II', 'NNIbG3x0vW4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2750, 'Buyanja H/C II (Gomba)', '0702047849', '', 1, NULL, 'Buyanja  HC II (Gomba)', 'Abzyw3gTHdQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2751, 'Nagwere H/C III', '', '', 1, NULL, 'Nagwere HC III', 'rLRgiOLdAhU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2752, 'Kyere H/C III', '0782117574', '', 1, NULL, 'Kyere HC III', 'zm7m09FNPYA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2753, 'Apapai H/C II (Kaberamaido)', '0771835965', '', 1, NULL, 'Apapai HC II', 'auhs8cHBTlW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2754, 'Kotido COU H/C III', '0787010493', '', 1, NULL, 'CoU Clinic HC III', 'oekUrDpnep4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2755, 'Wabusana H/C III', '0774383544', '', 1, NULL, 'Wabusana HC III', 's1n0dG7Dw9h', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2756, 'Ludara H/C III', '0783757722', '', 1, NULL, 'Ludara HC III', 'arcJgFPVh0M', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2757, 'Asamuk H/C III', '0785783999', '', 1, NULL, 'Asamuk HC III', 'Sj7ljAIcmjq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2758, 'Oli H/C IV', '0772977414', '', 1, NULL, 'Oli', 'ANWyMZqBETz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2759, 'Aripea H/C III', '0782511861', '', 1, NULL, 'Aripea HC III', 'QF2BTAZ1r3Z', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2760, 'Yinga H/C III', '0772880181', '', 1, NULL, 'Yinga HC III', 'ipOBsWpJ0U7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2761, 'Logiri H/C III', '0780507632', '', 1, NULL, 'Logiri HC III', 'wacjVEN6pwD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2762, 'Olujobo H/C III', '0783799832', '', 1, NULL, 'Olujobo HC III', 'IuVsQCPk19T', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2763, 'Bileafe H/C III', '0777147309', '', 1, NULL, 'Bileafe HC III', 'VUB4COm63ZQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2764, 'Offaka H/C III', '0782789762', '', 1, NULL, 'Offaka HC III', 'gkUm0zE8vDx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2765, 'Inde H/C III', '0775495512', '', 1, NULL, 'Inde HC III', 'amS3L4P6obf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2766, 'Adumi H/C IV 	', '0785561119', '', 1, NULL, 'Adumi HC IV', 'H7pcxkjHX8T', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2767, 'Ediofe H/C III', '0774362039', '', 1, NULL, 'Ediofe HC III', 'sJUxokN1Svo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2768, 'Vurra H/C III', '0782240065', '', 1, NULL, 'Vurra HC III', 'pMSBcFRbW7W', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2769, 'Wandi H/C III', '0782715000', '', 1, NULL, 'Wandi HC III', 'DVPFLWaZInR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2770, 'Cilio H/C III', '0774186983', '', 1, NULL, 'Cilio HC III', 'v6DcAuQeoeA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2771, 'Pajulu H/C III (Arua)', '0772892922', '', 1, NULL, 'Pajulu HC III', 'MHiJvIzpJ05', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2772, 'Ombidri Ondrea H/C III', '0779607960', '', 1, NULL, 'Ombidriondrea HC III', 'dZRCLuC8sry', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2773, 'Riki H/C III', '0774290395', '', 1, NULL, 'Riki HC III', 'h3Vg6HpRGmB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2774, 'Pawor H/C III', '0779942870', '', 1, NULL, 'Pawor HC III', 'b583xiTbJgi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2775, 'Ciforo H/C III', '', '', 1, NULL, 'Ciforo HC III', 'Y0XE9vH5Oeg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2776, 'Dzaipi H/C III', '0775174896', '', 1, NULL, 'Dzaipi HC III', 'Krxa01FAxdW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2777, 'Kiyomoro H/C III', '0783095371', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2778, 'Eliofe H/C III', '0787542565', '', 1, NULL, 'Eliofe HC III', 'o5I1o1YMVxP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2779, 'Kamaka H/C III', '0775698811', '', 1, NULL, 'Kamaka HC III', 'S26rammWZ0Y', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2780, 'Oluvu H/C III', '', '', 1, NULL, 'Oluvu HC III', 'dqVrBFvJg3n', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2781, 'Wadra H/C III', '0773227114', '', 1, NULL, 'Wadra HC III', 'OCCcAD4aYgs', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2782, 'Nyadri H/C III', '0782405200', '', 1, NULL, 'Nyadri HC III', 'acTilIN9qRy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2783, 'Biira HC III(NGO)', '0779700550', '', 1, NULL, 'Bira HC II NGO', 'atv0z4e9m8B', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2784, 'Pakele H/C III', '0785637443', '', 1, NULL, 'Pakele HC III', 'LhNgo4n9Wi9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2785, 'Mary Land H/C III', '0782830172', '', 1, NULL, 'Maryland Kocoa HC III', 'ytpNGyNQyIv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2786, 'Mungula H/C IV', '0785566663', '', 1, NULL, 'Mungula HC IV', 'a9ai8OVQ4ET', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2788, 'Aliba H/C III', '0776654623', '', 1, NULL, 'Aliba HC III', 'AZRfSZ46cbp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2789, 'Dufile H/C III', '0777226470', '', 1, NULL, 'Dufile HC III', 'Dpv2z5tBsQK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2790, 'Eria H/C III', '0785508737', '', 1, NULL, 'Eria HC III', 'FQETWwqB2VJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2791, 'Itula H/C III', '0788505184', '', 1, NULL, 'Itula HC III', 'X5ebRy9YPbR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2792, 'Laropi H/C III', '0774808658', '', 1, NULL, 'Laropi HC III', 'X00gYQ3tjMD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2793, 'Logoba H/C III', '0774502940', '', 1, NULL, 'Logoba HC III', 'gJJhhRiJvSi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2794, 'Palorinya H/C III', '0773869830', '', 1, NULL, 'Palorinya HC III', 'aQnmwOGxGcK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2795, 'Lefori H/C III', '0774351121', '', 1, NULL, 'Lefori HC III', 'Lw8YR0FJdCr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2796, 'FR.Bilbao H/C III', '0775990295', '', 1, NULL, 'Fr. Bilbao/Bilbao HC III', 'MQ5ynJIzkbh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2797, 'Nyaravur H/C III', '0775986700', '', 1, NULL, 'Nyaravur HC III', 'g4MQbbN4oR6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2798, 'Padwot Midyere H/C III', '0788400492', '', 1, NULL, 'Padwot Midyere HC III', 'eKAZwpYo3r5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2799, 'Pakia H/C III', '0752554324', '', 1, NULL, 'Pakia HC III', 'Ea3Z8ofIGDw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2800, 'Pakwach H/C IV', '', '', 1, NULL, 'Pakwach HC IV', 'R11qcaG5pbk', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2802, 'Aroi H/C III', '', '', 1, NULL, 'Aroi HC III', 'l268ov5GFsR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2803, 'Ayivuni H/C III', '', '', 1, NULL, 'Ayivuni HC III', 'Ae8zVsIuHFC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2804, 'Ariwa H/C III', '0755973386', '', 1, NULL, 'Ariwa HC III', 'hcm0msXFRQJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2805, 'Bubangizi H/C III', '0773338112', '', 1, NULL, 'Bubangizi HC III', 'w9SnOvetHUQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2806, 'Kaberamaido H/C IV', '0783204882', '', 1, NULL, 'Kaberamaido HC IV', 'PQfiDO16p19', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2807, 'Kyaali H/C III (Mpigi )', '0784444617', '', 1, NULL, 'Nsamu/Kyali HC III', 'aPw8BIgtIDF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2808, 'Kichwamba H/C III (Rubirizi)', '0788772011', '', 1, NULL, 'Rubirizi Kicwamba HC III', 'deqUOFQ4Gqn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2809, 'Kigaraale H/C III', '0772479887', '', 1, NULL, 'Kigarale HC III', 'YNwbgYdigm5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2810, 'Haama H/C II', '0752468355', '', 1, NULL, 'Haama HC II', 'W7fiTCkLzlW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2811, 'Kochi H/C III (Yumbe)', '0775557133', '', 1, NULL, 'Kochi HC III', 'eagCoWlLIhR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2812, 'Syanyonja H/C II', '', '', 1, NULL, 'Syanyonja HC II', 'akc4IXZ7N3m', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2813, 'Kaboloi H/C III', '', '', 1, NULL, 'Kaboloi HC III', 'mPn3Kj2J8r0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2814, 'Karusandara H/C III', '', '', 1, NULL, 'Karusandara HC III', 'XOOHZdLmPvN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2815, 'Jangokoro H/C III', '0775288164', '', 1, NULL, 'Jangokoro HC III', 'aTH1dUHop5k', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2816, 'Magoro H/C III', '0774696954', '', 1, NULL, 'Magoro HC III', 'VZvZyX8jBB4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2817, 'Wakitaka H/C III', '0774681260', '', 1, NULL, 'Wakitaka HC III', 'uN5b8CDfZxZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2820, 'Community H/C Plan Uganda Lugoba(Kawempe)', '0784436302', '', 1, NULL, 'COMMUNITY HEALTH PLAN UGANDA', 'ws3l8HCEhHB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2821, 'Tiriri H/C IV', '0774751438', '', 1, NULL, 'ATIRIR HC IV', 'Wyvz7rsEBpd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2822, 'Hapuuyo H/C III', '0776062974', '', 1, NULL, 'Hapuuyo HC III', 'a1H4RSyoXOj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2823, 'Anyara H/C III', '0776996063', '', 1, NULL, 'Anyara HC III', 'ZOAvFhJT2vI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2824, 'Kyarumba H/C III (Government)', '0786234474', '', 1, NULL, 'Kyarumba HC III', 'zRoj2Cm4CHr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2825, 'St Francis Assisi Kitabu (Kasese)', '0787214812', '', 1, NULL, 'Kitabu Maternity/ Kitabu St. Francis HC ', 'Qh9kLj8ETu6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2826, 'Pingire H/C III 	', '', '', 1, NULL, 'Pingire HC III', 'f8m6k3MjPsf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2827, 'Kinyamaseke H/C III', '', '', 1, NULL, 'Kinyamaseke HC III', 'YGIoDeKaKA5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2828, 'Kikokwa H/C III', '', '', 1, NULL, 'Kikokwa HC III', 'HRUwvJnV3yt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2829, 'Ayira Health Services', '0781143284', '', 1, NULL, 'Ayira Health Services', 'FkTtVWHYtc1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2830, 'Amucu H/C III', '', '', 1, NULL, 'Amucu HC III', 'N8L6gKVGOCM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2831, 'Kakatunda H/C III', '', '', 1, NULL, 'Kakatunda HC III', 'SQlEN22KQM2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2832, 'Bugoto H/C II', '', '', 1, NULL, 'Bugoto HC II', 'FICwy0lTFNW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2833, 'Masafu Hospital', '', '', 1, NULL, 'Masafu General Hospital', 'XLCbIsJWmxG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2834, 'Rugyeyo H/C III', '', '', 1, NULL, 'Rugyeyo HC III', 'IdRkJotD2zZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2835, 'Matuma H/C III 	', '', '', 1, NULL, 'Matuma HC III', 'MkD1c6jagfl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2836, 'Midigo H/C IV', '', '', 1, NULL, 'Midigo HC IV', 'H8IwuI5HbgB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2837, 'Kikyo H/C IV', '', '', 1, NULL, 'Kikyo HC IV', 'm6EphK59CJo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2838, 'Pallisa Mission Kaucho H/C III', '', '', 1, NULL, 'Pallisa Mission Kaucho HC II', 'o9Cx4B22Mu5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2839, 'Mbirizi Moslem H/C III', '', '', 1, NULL, 'Mbirizi Muslim HC III', 'CijKO0Edzep', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2840, 'Apopong H/C III', '', '', 1, NULL, 'Apopong HC III', 'DE5VuZb0Xei', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2841, 'Galimagi H/C III', '', '', 1, NULL, 'Galimagi HC III', 'auY0zuO56sC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2842, 'Buhehe H/C III', '0779346042', '', 1, NULL, 'Buhehe HC III', 'YWRtcUXBxrt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2843, 'Lunyo H/C III', '0786801072', '', 1, NULL, 'Lunyo HC III', 'RkPKHtihwLz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2844, 'Kinyabwamba H/C III', '0774285319', '', 1, NULL, 'Kinyabwamba HC III', 'An4WDnoSfY0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2845, 'Bulumbi H/C III', '', '', 1, NULL, 'Bulumbi HC III', 'SeWJV46N6Qc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2846, 'EQA', '0772528222', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2847, 'St Philips H/C II', '', '', 1, NULL, 'St. Philips HC II', 'LPJ8Gxge7ig', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2848, 'Karwensanga H/C II', '0700283856', '', 1, NULL, 'Karwesanga HC II', 'COHtAqML4yd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2849, 'Kyondo H/C III', '0783390505', '', 1, NULL, 'Kyondo HC III', 'aDb2aA9qRxt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2850, 'Kitongo H/C III (Mityana)', '0773825884', '', 1, NULL, 'Kitongo HC III', 'fT2e8nED9PT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2851, 'St Lucia Kagamba H/C III', '', '', 1, NULL, 'St. Lucia Kagamba HC II', 'ND2A0GOnnnY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2852, 'Makulubita H/C III', '0784393201', '', 1, NULL, 'Makulubita HC III', 'xjHpvNlTb1J', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2853, 'Butiiti H/C III', '0779982354', '', 1, NULL, 'Butiiti HC III', 'XRMXI2fhgoK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2856, 'Agule H/C III', '', '', 1, NULL, 'Agule HC III', 'aMrHxMQoKXP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2857, 'Isule H/C III', '', '', 1, NULL, 'Isule HC III', 'dtVDXhCkmL8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2858, 'SAS Clinic Bugolobi', '0756710975', '', 1, NULL, 'SAS Clinic - Bugolobi', 'KpCgX05NrIS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2859, 'Amuria H/C IV', '0783191692', '', 1, NULL, 'Amuria HC IV', 'oRHreBW5Tyr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2860, 'Yoyo H/C III', '0773203594', '', 1, NULL, 'Yoyo HC III', 'axmLtifg8dz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2861, 'Kobwin H/C III', '0784553234', '', 1, NULL, 'Kobwin HC III', 'TTWscca1VOu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2862, 'Gogonyo H/C III', '0775986877', '', 1, NULL, 'Gogonyo HC III', 'ci6s0lgQqFZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2863, 'Kawoko Muslim H/C III', '0751075596', '', 1, NULL, 'Kawoko muslim HC III', 'A7BAVMsywaQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2864, 'Jinja Remand H/C II', '0703797948', '', 1, NULL, 'Jinja Remand Prison HC II', 'zMdacW81fkW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2865, 'Busolwe Hospital', '0756245529', '', 1, NULL, 'Busolwe Hospital', 'jBZmte6aqoD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2866, 'Kisojo H/C III (Kyenjojo)', '', '', 1, NULL, 'Kisojo HC III', 'Xvlhtzq0LcX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2867, 'Makiro H/C III', '', '', 1, NULL, 'Makiro HC III', 'TN8jN40Os3d', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2868, 'Okollo H/C III', '', '', 1, NULL, 'Okollo Refugee HC III', 'gR6hAZ1p9oi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2869, 'Rwibaale H/C III', '', '', 1, NULL, 'Rwibale -Avemaria HC III', 'Px1ZyylviYI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2870, 'Bukangama H/C III', '', '', 1, NULL, 'Bukangama HC III', 'aKxaxZSbzx9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2871, 'Busitema H/C III', '', '', 1, NULL, 'Busitema HC III', 'x2bKnIqqcFt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2872, 'Lumino H/C III', '0773628097', '', 1, NULL, 'Lumino HC III', 'eheRSS5qlxR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2873, 'Ebenezer SDA Medical H/C III', '0773530664', '', 1, NULL, 'Ebenezer SDA HC III', 'w1COt9NZVMi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2874, 'Kakabara H/C III', '0789216256', '', 1, NULL, 'Kakabara HC III', 'SbeNQXeGDyJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2875, 'Kamuge H/C III', '0784512131', '', 1, NULL, 'Kamuge HC III', 'muwJAkGOjj5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2877, 'Morulinga H/C II', '', '', 1, NULL, 'Morulinga HC II', 'ZwJpmihjbfr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2878, 'Aketa H/C III', '0783696384', '', 1, NULL, 'Aketa HC III', 'fFMFDu21aWq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2879, 'Usuk H/C III', '0774160844', '', 1, NULL, 'St. Anne Usuk HC III', 'vGFHvU2m9uE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2880, 'Lwakalolo H/C II', '0774880730', '', 1, NULL, 'Lwakalolo HC II', 'uLBT1C3Dhkh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2881, 'Busabi H/C III', '', '', 1, NULL, 'Busabi HC III', 'YFyMK0BnLsG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2882, 'Busaru H/C IV', '0779212652', '', 1, NULL, 'Busaru HC IV', 'xpfoySoqqeO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2883, 'Kasodo H/C III', '0775004551', '', 1, NULL, 'Kasodo HC III', 'QIGx6E6L3Y5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2884, 'Nabilatuk H/C IV', '', '', 1, NULL, 'Nabilatuk HC IV', 'atZjFwq6HQ5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2885, 'Butebo H/C IV', '', '', 1, NULL, 'Butebo HC IV', 'xRyghoPrl27', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2886, 'Kapchorwa Hospital', '', '', 1, NULL, 'Kapchorwa HOSPITAL', 'zpmUD2YzPnn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2887, 'Kaproron H/C IV', '', '', 1, NULL, 'Kaproron HC IV', 'IyYvTavDSou', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2888, 'Kakoro H/C III', '', '', 1, NULL, 'Kakoro   HC III', 'xz1FbbXXtew', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2889, 'Aids Information Center(Jinja)', '0789591424', '', 1, NULL, 'AIC Jinja Main Branch', 'ndyRWKL0fDH', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2890, 'Bumalenga H/C II', '0775736255', '', 1, NULL, 'Bumalenge HC II', 'Zd4l6BoQjP5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2891, 'Butaleja H/C III', '0750644122', '', 1, NULL, 'Butaleja HC III', 'Tj9XBHhCMQH', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2892, 'Lolachat H/C III', '0782149311', '', 1, NULL, 'Lolachat HC III', 'a82qNO5mmYT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2893, 'Jinja Main Prison H/C III', '0772432358', '', 1, NULL, 'Jinja Main Prison HC III', 'aITcTSaL6bT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2894, 'Kathile H/C III', '', '', 1, NULL, 'Kathile HC III', 'JWg30TuiiEV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2895, 'Nakwasi H/C III', '', '', 1, NULL, 'Nakwasi HC III', 'YEgOR0cGGnF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2896, 'Zombo H/C III', '', '', 1, NULL, 'Zombo HC III', 'tuYjF238GTf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2897, 'Siipi H/C III', '0777030881', '', 1, NULL, 'Sipi HC III', 'Pg3Djak7A3e', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2898, 'Kitholhu H/C III', '0779088573', '', 1, NULL, 'Kitholhu HC III', 'aDEsACuMGHZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2899, 'Kidetok Mission H/C III', '', '', 1, NULL, 'Kidetok HC III', 'mPtQJ1rZBOd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2900, 'Kigambo H/C II', '', '', 1, NULL, 'Kigambo HC III', 'czyJDi9E4Y4', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2901, 'Busaba H/C III', '0787961050', '', 1, NULL, 'Busaba HC III', 'Kz4R1fHjE7p', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2903, 'Kansambwe H/C II', '0774310376', '', 1, NULL, 'Kasambwe HC II', 'aB8VPjofx5K', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2904, 'Kabizzi H/C II', '0703410410', '', 1, NULL, 'Kabizzi HC  II', 'HtDqqOuCfA3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2905, 'St Peter and Paul H/C III', '0777763630', '', 1, NULL, 'St. Peter And Paul HC III', 'U1ijnXGUuGE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2906, 'Matany Hospital', '0755941089', '', 1, NULL, 'Matany Hospital', 'rAvayhLZRhY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2907, 'Mildmay Hospital Uganda', '0701486345', '', 1, NULL, 'Mildmay Uganda HOSPITAL', 'yznQYcViuVu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2908, 'Bubalya H/C III', '0755480363', '', 1, NULL, 'Bubalya HC III', 'acQwn1AZXQn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2909, 'Tegeres H/C III', '0706239313', '', 1, NULL, 'Tegeres HC III', 'OVHn5EkIqik', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2910, 'Chebonet H/C III', '0779917744', '', 1, NULL, 'Chebonet HC III', 'Cxa96htrVdt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2911, 'Kapkoloswo H/C III 	', '0779293977', '', 1, NULL, 'Kapkoloswo HC III', 'apNXE4NwXoP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2912, 'Acet H/C II', '0782509566', '', 1, NULL, 'Acet HC II', 'aaEtUWpmosm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2913, 'Binya H/C II', '0777273386', '', 1, NULL, 'Binya HC II', 'aGQqkkQQzXc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2914, 'Dino H/C II', '0773970005', '', 1, NULL, 'Dino HC II', 'yEukLFOEQ1X', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2916, 'Loyoajonga H/C II', '0775080156', '', 1, NULL, 'Loyoajonga HC II', 'SsSHoj0KsxS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2917, 'Omel H/C II', '0783560288', '', 1, NULL, 'Omel HC II', 'ZEEW8QXy1sS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2919, 'Lukwir H/C II', '0779747974', '', 1, NULL, 'Lukwir HC II', 'Uu40YoS0Mvr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2920, 'Bukwo H/C IV', '0784394833', '', 1, NULL, 'Bukwa  HC IV', 'rk6HnWXzl3e', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2921, 'Lujorongole H/C II', '0777365833', '', 1, NULL, 'Lujorongole HC II', 'Fw6WydOY9UR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2922, 'Palenga H/C II', '0774187621', '', 1, NULL, 'Palenga HC II', 'xxukfjPreUj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2923, 'Awoo H/C II', '0774580158', '', 1, NULL, 'Awoo HC II', 'zardxfXWmkO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2924, 'Kabwangasi H/C III', '0774696951', '', 1, NULL, 'Kabwangasi HC III', 'akKqxsRNtae', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2925, 'Nindye H/C III', '0776249149', '', 1, NULL, 'Nindye HC III', 'ZcC2OKgHUBc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2927, 'Tekulu H/C II', '0774592555', '', 1, NULL, 'Te Kullu HC II', 'H3WUcWzPtWb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2928, 'Lelaobaro H/C II', '0782893951', '', 1, NULL, 'Lela- Obaro HC II', 'tbLOoJ5HpgT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2929, 'Nakapiripirit H/C III', '0774139937', '', 1, NULL, 'Nakapiripirit HC III', 'b4ei3WhTRAH', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2930, 'Lotome H/C III', '0774948316', '', 1, NULL, 'Lotome HC III', 'PLUp4qPTSvf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2931, 'Bubukwanga H/C III', '', '', 1, NULL, 'Bubukwanga HC III', 'tv8qMylVqWx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2932, 'Kasule H/C III', '', '', 1, NULL, 'Kasule HC III', 'eW5633TN0Vm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2933, 'Bugondo H/C III', '', '', 1, NULL, 'Bugondo HC III', 'UJJPDoh3skp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2934, 'Kadic Clinic Nakulabye', '0712419759', '', 1, NULL, 'Kadic Clinic HC II', 'WWlY7qs18QI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2935, 'Rwenzori Mountaineering Services', '0773989618', '', 1, NULL, 'Mt. Rwenzori Medical Centre HC III', 'OMTL4FcwFul', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2936, 'Iriiri H/C III', '0776525810', '', 1, NULL, 'Iriri HC III', 'n5OgCMvxg5S', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2937, 'Rwanjura H/C II', '0701122404', '', 1, NULL, 'Rwanjura HC II', 'UMFeO5h1QMQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2938, 'St Joseph\'s Minakulu H/C II (Omoro)', '0772939354', '', 1, NULL, 'St Joseph\'s Minakulu H/C II (Omoro)', 'TDEdS0suFyQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2939, 'Abwoch H/C II', '0778962584', '', 1, NULL, 'Abwoch HC II', 'JryqknC2SNp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2940, 'St Luke H/C II', '0787455311', '', 1, NULL, 'St. Luke HC II', 'agdLbxaa0Dz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2941, 'Koro Abili H/C II', '0777198135', '', 1, NULL, 'Koro Abili HC II', 'oYdsJ8kS1JS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2942, 'Dream Center H/C III', '0783742459', '', 1, NULL, 'Dream Centre', 'fLGGzlZfyOJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2943, 'Lakwatomer H/C III', '0777484055', '', 1, NULL, 'Lakwotomer HC II', 'qKVewTpVtG6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2944, 'Patuda H/C II', '0785220263', '', 1, NULL, 'Patuda HC II', 'U7bVIR5Teiu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2945, 'Alokolum H/C II', '0785406463', '', 1, NULL, 'Alokolum HC II', 'YLwAhOTWHrQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2946, 'Budadiri H/C IV', '', '', 1, NULL, 'Budadiri HC IV', 'pTrRXtAg5IR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2947, 'Bugitimwa Govt H/C III', '', '', 1, NULL, 'Bugitimwa Gvt HC III', 'h9EhsXtR7wl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2948, 'Buhugu H/C III', '', '', 1, NULL, 'Buhugu HC III', 'UX5j31I7jpP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2949, 'Bulujewa H/C III', '', '', 1, NULL, 'Bulujewa HC III', 'D4NIfKfOjKu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2950, 'Bulwala H/C III', '', '', 1, NULL, 'Bulwala HC III', 'a9fe7RYnAFV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2951, 'Bumulisha H/C III', '', '', 1, NULL, 'Bumulisha HC III', 'jauAUu9YBbl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2952, 'Bumumulo H/C III', '', '', 1, NULL, 'Bumumulo HC III', 'ag6oANQZEh6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2953, 'Kalapata H/C III', '0775899843', '', 1, NULL, 'Kalapata HC III', 'UR7F5sFNDQO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2954, 'Nyankwanzi H/C III', '0788447157', '', 1, NULL, 'Nyankwanzi HC III', 'OXa6YSwJxEd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2955, 'Abia H/C II', '0779510117', '', 1, NULL, 'Alebtong Abia HC II GOVT', 'SNwc1CQIXTN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2956, 'Kangole H/C III', '0789127963', '', 1, NULL, 'Kangole HC III', 'ZIqDFJwbapx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2957, 'Ateno H/C II', '0773623195', '', 1, NULL, 'Oteno HC II', 'MVYYKgICwep', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2958, 'Akura H/C II', '0775176745', '', 1, NULL, 'Akura HC II', 'zkvmBd2YoxG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2959, 'Obim H/C II', '0772825309', '', 1, NULL, 'Obim Rock HC II', 'FkHL59DWIav', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2961, 'Abedober H/C III', '0777806491', '', 1, NULL, 'Abedober HC III', 'YhPJwSvxDcC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2962, 'Lokitelaebu H/C III', '0788861813', '', 1, NULL, 'Lokitelaebu HC III', 'krPNAO6ikKF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2963, 'Kopoth H/C III', '0773182324', '', 1, NULL, 'Kopoth HC II', 'hGgRhRwqMq6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2964, 'Apire H/C II', '0773577763', '', 1, NULL, 'Apire HC II', 'vbqYR19aqUK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2965, 'Rackoko H/C III', '0786651608', '', 1, NULL, 'Rackoko HC III', 'tGCoh0Vsdhj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2966, 'Orungo H/C III', '0779507455', '', 1, NULL, 'Orungo HC III', 'WmoemTft5Bj', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2967, 'Budumba H/C III', '0776238249', '', 1, NULL, 'Budumba HC III', 'BjDvpnOuxT0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2968, 'St Mathias Amaler H/C III', '0785276874', '', 1, NULL, 'Amaler HC III', 't8qKMFFAO22', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2969, 'Kapedo H/C III', '0784366136', '', 1, NULL, 'Kapedo HC III', 'U1aETxtSI4A', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2970, 'Kachonga H/C III', '0774748326', '', 1, NULL, 'Kachonga HC III', 'aPNq1GUh1et', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2971, 'St Anthony H/C II', '0777199909/070319990', '', 1, NULL, 'St. Anthony HC II', 'jo4ICrnpVWs', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2972, 'Atoot H/C II', '0777199909/070319990', '', 1, NULL, 'Atoot HC II', 'QDqSXZrFf6O', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2973, 'Opot H/C II', '0777199909/070319990', '', 1, NULL, 'Opot HC II', 'd36gK81XRga', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2974, 'Ngora Freda car Hospital (NGO)', '0777199909/070319990', '', 1, NULL, 'Ngora Ngo HOSPITAL', 'MNhe4FaQw7v', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2975, 'Omiito H/C II', '0777199909/070319990', '', 1, NULL, 'Omiito HC II', 'w81TXtlX3EM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2976, 'Kazinga H/C III', '0779331069', '', 1, NULL, 'Kazinga HC III', 'ck9FaUIhQAl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2977, 'Chesower H/C III', '', '', 1, NULL, 'Chesower HC III', 'Ny6gpfiiHon', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2978, 'Karwenyi H/C II', '', '', 1, NULL, 'Karwenyi HC III', 'aIMGuhKI9Kc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2979, 'Cheptuya H/C III', '0701733399', '', 1, NULL, 'Cheptuya HC III', 'mOxAHl3KoLP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2980, 'Kabeywa H/C III', '0784584346', '', 1, NULL, 'Kabeywa HC III', 'K0MZ3COLlKt', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2981, 'Kwanyiyi H/C III', '0775212152', '', 1, NULL, 'Kwanyiy HC III', 'zpMTFJlXcMH', '2019-03-21 09:54:43', '2019-03-21 09:54:43');
INSERT INTO `dhis2_facilities` (`id`, `name`, `facility_contact`, `facility_email`, `active`, `code`, `dhis2_name`, `dhis2_uid`, `created_at`, `updated_at`) VALUES
(2982, 'Bujubuli H/C III', '0758544740', '', 1, NULL, 'Bujubuli HC III', 'frm9FSY7Syf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2983, 'Karita H/C III (Amudat)', '', '', 1, NULL, 'Karita HC III', 'UdwbvvdzVVQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2984, 'Bufuma H/C III', '', '', 1, NULL, 'Bufuma HC III', 'av5hBEV9k6X', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2985, 'Bulucheke H/C III', '0782141068', '', 1, NULL, 'Bulucheke HCIII', 'kTnTCeBN2we', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2986, 'Panyangara H/C III', '0782842756', '', 1, NULL, 'Panyangara HC III', 'vAJSlVqO7d5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2987, 'Bukigai H/C III', '0775985968', '', 1, NULL, 'Bukigai   HC III', 'q52SkXKDblS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2988, 'Sironko H/C III', '0771866047', '', 1, NULL, 'Sironko  HC III', 'NnRzaC6CTar', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2989, 'St Adolf H/C III (Butiiti)', '0703636118', '', 1, NULL, 'St. Adolf HC II', 'Xdt1jdUOQm2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2990, 'Bunagami H/C III', '', '', 1, NULL, 'Bunagami HC III', 'a3qhORZNhaG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2991, 'Bunaseke H/C III', '', '', 1, NULL, 'Bunaseke HC III', 'A8E98vahuiC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2992, 'Butandiga H/C III', '', '', 1, NULL, 'Butandiga HC III', 'PX7XHOUnYJY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2993, 'Buteza H/C III', '', '', 1, NULL, 'Buteza HC III', 'aURmSknLg9S', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2994, 'Buwalasi H/C III', '', '', 1, NULL, 'Buwalasi HC III', 'GpKYBJWFJJ6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2995, 'Buwasa H/C IV', '', '', 1, NULL, 'Buwasa HC IV', 'yyYPcgZm4xP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2996, 'Masiyompo H/C III', '', '', 1, NULL, 'Masiyompo HC III', 'm1B0rCFe5za', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2997, 'Mbaya H/C III', '', '', 1, NULL, 'Mbaya HC III', 'fSqSx3rnDmx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2998, 'Kanawat H/C III', '0782679529', '', 1, NULL, 'Kanawat HC III', 'aCfdOhOH9ni', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(2999, 'Shared Blessings H/C III', '', '', 1, NULL, 'Shared Blessings HC III', 'Rr6qa2nv12k', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3000, 'Bugalo H/C III', '', '', 1, NULL, 'Bugalo HC III', 'Symjhaye4Gp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3001, 'Kabasa Memorial Hospital', '', '', 1, NULL, 'Kabasa Memorial HOSPITAL', 'Xm71SWWTqfb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3002, 'Chemwon H/C III', '0777059949', '', 1, NULL, 'Chemwom HC III', 'mhJpqcMZSMv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3003, 'Binyiny H/C III', '', '', 1, NULL, 'Binyiny HC III', 'aVlOVOmBP2K', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3004, 'Lapanya H/C III', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3005, 'Ogonyo H/C III', '0779272894', '', 1, NULL, 'Ogonyo HC III', 'afJ9NgYTYDa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3006, 'All Saints H/C II', '', '', 1, NULL, 'All Saints HC II', 'M2Es7QYNu3D', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3007, 'Mary Immaculate H/C II', '', '', 1, NULL, 'Mary Immaculate HC II', 'QyscUadfYko', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3008, 'Koboko H/C IV', '', '', 1, NULL, 'Koboko Hospital', 'JAPYJGfV0VY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3010, 'Ochogo H/C III', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3013, 'Abaro H/C III', '', '', 1, NULL, 'Abako HC III', 'yDPmjwoOIxi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3014, 'Olum H/C IV', '', '', 1, NULL, 'Orum HC IV', 'FtmVm4r1H3a', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3015, 'Atagwata H/C III', '', '', 1, NULL, 'Atangwata HC II', 'kGKMylkSAy8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3016, 'Mayanja Memorial Hospital', '0758077715', '', 1, NULL, 'Mayanja Memorial HOSPITAL', 'ag4c3yS7T5g', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3017, 'Menya Santo H/C', '0776190463', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3018, 'Bwondha HC II', '', '', 1, NULL, 'Bwondha HC II', 'aHrBkRnFBmb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3019, 'Busala H/C II', '', '', 1, NULL, 'Busaala HC II', 'ayit7T8VnwQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3020, 'Wandegeya H/C II(Kigandalo)', '', '', 1, NULL, 'Wandegeya HC II', 'DaUdxUUVqCJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3021, 'Katutaine H/C II', '', '', 1, NULL, 'Kasutaime HC II', 'EoHnqQ9tho5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3022, 'Mugi H/C II', '', '', 1, NULL, 'Muggi HC II', 'ac4kdbslWxB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3023, 'Bwalula H/C II', '', '', 1, NULL, 'Bwalula HC II', 'WyB0okmGKma', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3025, 'Kitovu H/C II (Mayuge)', '', '', 1, NULL, 'Kitovu HC II', 'aoNyMeWn6YC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3026, 'kaluba H/C II', '', '', 1, NULL, 'Kaluba HC II', 'GTYUYJ2Ueyu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3027, 'Ntinkalu H/C II', '', '', 1, NULL, 'Ntinkalu HC II', 'PpdVthivLyS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3028, 'Magamaga Army H/C III (Mayuge)', '', '', 1, NULL, 'Magamaga Barracks HC II', 'a1C0sK4I6RS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3029, 'Bakalube H/C II', '', '', 1, NULL, 'Bukaleba HC II', 'aQDfPLRH2Cx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3031, 'Bwiwula H/C II', '', '', 1, NULL, 'Bwiwula HC II', 'agZi79Er2GX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3032, 'Ikombe H/C II', '', '', 1, NULL, 'Iganga Nkombe HC II GOVT', 'kUonlvZyTBd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3033, 'Bukalasi H/C III', '0774015702', '', 1, NULL, 'Bukalasi HC III', 'Lyd040RjHYd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3034, 'Nyakwae H/C III', '0774578781', '', 1, NULL, 'Nyakwae HC III', 'aZEsILFiYCF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3035, 'Morulem H/C III', '0784708211', '', 1, NULL, 'Morulem HC III', 'hIuSd1NGumG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3036, 'Green H/C II', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3037, 'Te-Atoo H/C II', '', '', 1, NULL, 'Tegot-Ato HC II', 'CQ5zCINpLm3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3038, 'Bugogo H/C III', '0775949018', '', 1, NULL, 'Bugogo HC II', 'SpjkBGXlDXd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3039, 'Ddamba H/C III', '0755935416', '', 1, NULL, 'Damba HC II', 'UPSV6y2j0B0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3040, 'Kei H/C III', '0773297077', '', 1, NULL, 'Kei HC III', 'yMnNUBDNr21', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3041, 'Tirinyi H/C III', '0773835451', '', 1, NULL, 'Tirinyi HC III', 'fskZDKnPGaA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3042, 'Lokopo H/C III', '0775893641', '', 1, NULL, 'Lokopo HC III', 'QKGsjJojbYP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3043, 'Bulangira H/C III', '0782035355', '', 1, NULL, 'Bulangira HC III', 'YkSJ96XhKro', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3044, 'Nabulola CMC H/C III', '0701088077', '', 1, NULL, 'Nabulola HC III', 'aAAa6d3Ohyf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3045, 'Muyembe H/C IV', '0774021231', '', 1, NULL, 'Muyembe HC IV', 'G4DUWj0Q8hp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3046, 'Buginyanya H/C III (Bulambuli)', '0785329218', '', 1, NULL, 'Buginyanya HC III', 'wNIGyP5Wi4G', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3047, 'Bunambutye H/C III', '0787176121', '', 1, NULL, 'Bunambutye HC III', 'TwZ0KmmR1od', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3048, 'Bumugusha H/C III (Bulambuli)', '0777266777', '', 1, NULL, 'Bumugusha HC III', 'CwPZMYQPea5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3049, 'Bumwambu H/C III', '0777053383', '', 1, NULL, 'Bumwambu HC III', 'GT8CbxGtA7o', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3050, 'Gamatimbei H/C III', '0778937570', '', 1, NULL, 'Gamatimbei HC III', 'eN47KTA7oAK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3052, 'Buluganya H/C III', '', '', 1, NULL, 'Buluganya HC III', 'VboJZXGJBI9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3053, 'Kaserem H/C III', '', '', 1, NULL, 'Kaserem HC III', 'S8LH3k8Bkir', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3054, 'Buyaga H/C III(Bulambuli)', '', '', 1, NULL, 'Buyaga HC III', 'aUCVOvi5Zz5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3055, 'Rugarama H/C III', '', '', 1, NULL, 'Rugarama HC III', 'Ab89aosJCg9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3056, 'Buseta H/C III', '', '', 1, NULL, 'Buseta HC III', 'oCg2PMCReX1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3057, 'Kibuku H/C IV', '', '', 1, NULL, 'Kibuku HC IV', 'kEAAnF6s9TJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3058, 'Kyamaganda HCIII', '', '', 1, NULL, 'Kyamaganda HC III', 'K1Qvy9fVY22', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3059, 'Kimwanyi H/C III', '', '', 1, NULL, 'Kimwanyi HC III', 'qjeMzMj7tdk', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3060, 'Makondo H/C III', '', '', 1, NULL, 'Makondo HC II', 'c4QCM3YpqqE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3061, 'Nkoni H/C III', '', '', 1, NULL, 'Nkoni HC III', 'EBmWiWJFu2L', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3062, 'Uganda Martyrs Hospital (Mbalala)', '', '', 1, NULL, 'Uganda Martyrs HOSPITAL', 'vb6L8SkLnK6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3063, 'Loyoro H/C II', '0773887843', '', 1, NULL, 'Loyoro HC III', 'WmXAoLJicih', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3064, 'Kamese H/C II', '0785875192', '', 1, NULL, 'Kaimese HC II', 'p6TLE7qdXyr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3065, 'Aids Information Centre (Kampala)', '0704272813', '', 1, NULL, 'AIC Kampala Main Branch HC IV', 'rxoAz9lkuSi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3066, 'Wagagai H/C IV', '0776003880', '', 1, NULL, 'Wagagai HC IV', 'Ol3Jup78Um5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3067, 'Nakawuka H/C III', '0772666279', '', 1, NULL, 'Nakawuka HC III', 'bmQmfGiYGAM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3068, 'Bukhalu H/C III', '0774740742', '', 1, NULL, 'Bukhalu HC III', 'DeLCxOv0IDy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3069, 'Nabiganda H/C IV', '0756165939', '', 1, NULL, 'Nabiganda HC III', 'cwGt2cWV5TN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3070, 'Zeu H/C III (Zombo)', '', '', 1, NULL, 'Zeu HC III', 'Wk8yKMCUZOk', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3071, 'Kangalaba H/C III', '0771622941', '', 1, NULL, 'Kangalaba HC III', 'zgyDdqkSzJA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3072, 'Bunapongo H/C III', '0775028600', '', 1, NULL, 'Bunapongo HC III', 'Lm5ZpEDH78a', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3073, 'Mpungu H/C II (kabale)', '0774364406', '', 1, NULL, 'Mpungu HC II', 'aNQeY1nmnoO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3074, 'Bududa Hospital', '0782503272', '', 1, NULL, 'Bududa Hospital', 'xVmiaKB3dHI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3075, 'Kasasira H/C III', '', '', 1, NULL, 'Kasasira HC III', 'Azo3MsuykUZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3076, 'Kadama H/C III', '0784964142', '', 1, NULL, 'Kadama HC III', 'qebkADihERQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3077, 'CPHL', '', '', 1, NULL, 'Central Public Health Laboratories', 'SMIjfVQOl1g', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3078, 'Loroo H/C III', '', '', 1, NULL, 'Loroo HC II', 'Z3lPWheXHAH', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3079, 'Rukoki H/C III', '', '', 1, NULL, 'Rukooki HC III', 'ba1LabtE1fG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3080, 'Rubanda PHC H/C III', '', '', 1, NULL, 'Rubanda Phc HC III', 'QTU5FkY0Zjl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3081, 'Out Reach Bundibugyo', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3082, 'Butunduzi H/C III', '0774527310', '', 1, NULL, 'Butunduzi HC III', 'sLg8XDLt89n', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3083, 'Kishagazi H/C II', '0782293716', '', 1, NULL, 'Kishagazi HC II', 'VYTPJMKfPsi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3085, 'Kairos H/C IV', '0705461861', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3086, 'Kundago H/C II', '0772448133', '', 1, NULL, 'Kandago HC II', 'NkER3oDFQZb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3087, 'Nyantabooma HCIII', '0779424995', '', 1, NULL, 'Nyantaboma HC II', 'v19MRLoaChf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3088, 'Bushiyi H/C III', '0782787148', '', 1, NULL, 'Bushiyi HC III', 'iu8AuF8DVXT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3089, 'Muduma H/C III', '0706031304', '', 1, NULL, 'Muduuma HC III', 'YxeL7JN6HKe', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3090, 'Nabuli H/C III', '0757889293', '', 1, NULL, 'Nabuli HC III', 'Kt3uooeOw2H', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3091, 'Kambaala H/C III', '0788709809', '', 1, NULL, 'Kambaala HC II', 'a3KGKqpABTy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3092, 'Kibengo H/C III (Luweero)', 'Bukenya M', '', 1, NULL, 'Kibengo HC III', 'LzGj85cv2nZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3093, 'Namalu H/C III', '0779215166', '', 1, NULL, 'Namalu HC III', 'UCe1oCdRuEA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3094, 'Bwongyera H/C III', '0759957452', '', 1, NULL, 'Bwongyera HC III', 'mypOsu7U27g', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3095, 'Kiige H/C II', '', '', 1, NULL, 'Kiige HC II', 'Xh5eLA8vMYG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3096, 'Kyengera H/C II', '', '', 1, NULL, 'Kyengera HC II', 'avaBAqrl0Df', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3097, 'Galilee Com Gen Hospital', '0788611261', '', 1, NULL, 'Galilee Community General HOSPITAL', 'oGFpXMmq8U0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3098, 'Nakapelimoru H/C III', '0779067776', '', 1, NULL, 'Nakapelimoru HC III', 'aywOCuiSQrR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3099, 'Wekomiire H/C III (St Thereza)', '0787539161', '', 1, NULL, 'Wekomiire/ Wekomiire St. Thereza HC III', 'Fz5Ar828O0m', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3100, 'Ndinzi H/C III', '0774786138', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3101, 'Mulagi H/C III', '', '', 1, NULL, 'Mulagi HC III', 'udCPHdcVeb7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3102, 'Kirika H/C III', '0756644208', '', 1, NULL, 'Kirika HC III', 'YIxPa3eWbPq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3103, 'Bufunjo H/C III', '0782605759', '', 1, NULL, 'Bufunjo HC III', 'W4WTbuj52ZD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3104, 'Buluya H/C II', '0752368043', '', 1, NULL, 'Buluya HC II', 'nM0hEumLl8G', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3105, 'Ngoma H/C III (Ntungamo)', '', '', 1, NULL, 'Ngoma HC IV', 'VdaCJASzDIR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3106, 'Kebisoni H/C IV', '', '', 1, NULL, 'Kebisoni HC IV', 'Th69WKFWepR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3107, 'Buyiga H/C III', '0752941302', '', 1, NULL, 'Buyiga HC II', 'gxT5NVatL14', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3108, 'St Martin H/C III (Kyenjojo)', '0759700460', '', 1, NULL, 'St. Martins Mabira HC III', 'HEvqMCVc5qD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3109, 'Cherish H/C III', '0782684173', 'lab@cherishuganda.org', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3110, 'Kameke H/C III', '0774660634', '', 1, NULL, 'Kameke HC III', 'A5sNBoMutHJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3111, 'St Pius Kidepo Rupa H/C III', '0775064569', '', 1, NULL, 'St.Pius Kidepo HC III NGO', 'K4hmnMfawFW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3112, 'Rwaitengya H/C II', '0780414443', '', 1, NULL, 'Rwaitengya HC II', 'a2LroN27znu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3113, 'Ruhumuro H/C III', '0702687101', '', 1, NULL, 'Ruhumuro HC III', 'bDQh7NSmTZd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3114, 'Dramba H/C II', '', '', 1, NULL, 'Dramba HC III', 'C7aRTKKbxEP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3115, 'Lazebu H/C II', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3116, 'Barakala H/C III', '', '', 1, NULL, 'Barakala HC III', 'e1kEs6glxbT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3117, 'Rwenshama H/C III', '', '', 1, NULL, 'Rweshama Gvt HC III', 'yyNktXIIvgn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3118, 'Tapac H/C III', '', '', 1, NULL, 'Tapac HC III', 'JhfRRK4kn7c', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3119, 'Buhaghura H/C III', '0783091324', '', 1, NULL, 'Buhaghura HC III', 'PO2hM0JUIn2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3120, 'Kachanga H/C II', '0772844691', '', 1, NULL, 'Kachanga Island HC II', 'smgogCHGxv3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3121, 'Nyamabuga H/C III', '0773484743', '', 1, NULL, 'Nyamabuga HC III', 'F2JcZqU3iQD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3122, '39th Infantry Battalian H/C II', '0788239984', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3123, 'Nabyewanga H/C II', '075886414', '', 1, NULL, 'Nabyewanga HC II', 'PoYcxTk5yjp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3124, 'Lokales H/C II', '', '', 1, NULL, 'Lokales HC II', 'emjerwHdu0g', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3126, 'Mola Medical Centre', '0774000003', '', 1, NULL, 'Mola Medical Centre HC II', 'Vc52QmdPT1X', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3127, 'Kinyogoga H/C III', '0777823384', '', 1, NULL, 'Kinyogoga HC III', 'q68Rl47iAKF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3128, 'Lugala H/C II', '', '', 1, NULL, 'Lugala HC II', 'zSvdFQRU9Xw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3129, 'Kyankaramata H/C II', '0774707464', '', 1, NULL, 'Kyankaramata HC II', 'lAp1gLzugAb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3130, 'Myeri H/C II (Kyenjojo)', '0702924551', '', 1, NULL, 'Myeri HC II', 'PO3ArP7dZly', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3131, 'Atiira H/C III', '0782892780', '', 1, NULL, 'Atiira HC III', 'sUtrRkuRSAm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3132, 'Paidha H/C III', '0779214338', '', 1, NULL, 'Paidha HC III', 'P1F2OCX6d3t', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3133, 'Nyakarongo H/C II', '0784367286', '', 1, NULL, 'Nyakarongo HC II', 'aU6065dnndu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3134, 'Kyembogo H/C III', '0774107290', '', 1, NULL, 'Kyembogo Holy Cross HC III', 'RHw7crtljAa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3135, 'Wadelai H/C III', '0778743971', '', 1, NULL, 'Wadelai HC III', 'txKvpnoo0Xd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3136, 'Budwale H/C III', '0779733968/077200099', '', 1, NULL, 'Budwale HC III', 'tZX3IqSxAr1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3137, 'Bukoto H/C III', '', '', 1, NULL, 'Bukoto HC III', 'GlyS73YI733', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3138, 'Ryeishe H/C III', '', '', 1, NULL, 'Ryeishe HC III', 'jQ29gGaeT89', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3139, 'Teso Safe Motherhood Project', '0772690389', '', 1, NULL, 'Teso Safe Motherhood HC II', 'guuZmIbnlXl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3140, 'Bunambale H/C III', '0775230079', '', 1, NULL, 'Bunambale HC III', 'aW4S9Y3XhuV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3141, 'Busunju H/C III', '0784756354', '', 1, NULL, 'Busunju HC II', 'acZImyCaeNM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3142, 'Kyedooba H/C IV', '', '', 1, NULL, 'Kyeizooba HC III', 'aL6mherCqRW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3143, 'Community Health Plan-Uganda', '0772158388', '', 1, NULL, 'Community Health Center (kibuku) HC III', 'vxetMic6GCb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3144, 'Ttakajunge H/C III', '0784927524', '', 1, NULL, 'Takajjunge HC II', 'RfweVyD8d7w', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3145, 'Pallisa Town Council H/C III', '0777164045', '', 1, NULL, 'Pallisa T/C HC III', 'DZF9rPxVxuv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3146, 'Ocea H/C II', '0781726151', '', 1, NULL, 'Ocea HC II', 'PJAn1P5SMrd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3147, 'Butare H/C III (Ntungamo)', '0771606513', '', 1, NULL, 'Butaare HC III', 'a9vGVj3Ftt9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3148, 'CDC-Kiruddu', '0772435540', '', 1, NULL, 'Mulago Medical Services - Kiruddu?? Lab.', 'NoxDnStfVIK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3149, 'Holy Innocent\'s Children\'s Hospital', '0755141100', '', 1, NULL, 'Holy Innocents Children\'s HOSPITAL', 'aMldu85cKyD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3150, 'SAREC Medicare Center', '0779364057', '', 1, NULL, 'SAREC Medical Care HC II', 'tm7hFrHSMht', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3151, 'Namengo H/C III', '0783123589', '', 1, NULL, 'Namengo HC III', 'dJd3ohZ6VTQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3152, 'Kortek H/C III', '0773760264', '', 1, NULL, 'Kortek HC III', 'arWb0FvSbW8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3153, 'Rwemikoma H/C III', '0782642404', '', 1, NULL, 'Rwemikoma HC III', 'YVFR8N62ego', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3154, 'Kagwara H/C II', '0779950291', '', 1, NULL, 'Kagwara HC II', 'aoKmCk2WKgG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3155, 'Kagumu H/C III', '0787453688', '', 1, NULL, 'Kagumu HC III', 'h10KjYB2xDh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3156, 'St Martins H/C III ( AMAKIO)', '0751935932', '', 1, NULL, 'St. Martins Amakio HC III', 'a3f7BmwY4kL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3157, 'Kyakuterekera H/C III (Kibaale)', '0703648030', '', 1, NULL, 'Kyakuterekera HC III', 'pWrHCTnuvFm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3158, 'Muramba H/C III', '0778034988', '', 1, NULL, 'Muramba HC III', 'YItBJnkJB9J', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3159, 'Apeitolim H/C II', '0773611222', '', 1, NULL, 'Apeitolim HC II', 'yTVIFlAzVwb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3160, 'Kajjansi H/C III', '0757547147', '', 1, NULL, 'Kajjansi HC III', 'DPRgzXMkh9U', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3161, 'Nyakisenyi H/C III', '0774231659', '', 1, NULL, 'Nyakishenyi Gvt HC III', 'UKwlyClQ3AR', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3162, 'Nyakyera H/C III', '0783761149', '', 1, NULL, 'Nyakyeera HC III', 'vQMNtz05zAJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3163, 'Bukasa H/C II (Mpigi)', '0773787356 ', '', 1, NULL, 'Bukasa HC II', 'QH5kXc4j4T1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3164, 'Bukwo General Hospital', '0753900412', '', 1, NULL, 'Bukwo General Hospital', 'as59xHu47PE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3165, 'Kidubuli HCIII', '0777740188', '', 1, NULL, 'Kidubuli HC II', 'ZTD4Prfdw22', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3166, 'Ngarama H/C III', '', '', 1, NULL, 'Ngarama HC III', 'UUp7kJLuyG6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3167, 'Nkungu H/C III', '', '', 1, NULL, 'Nkungu HC III', 'BuBuZ3iYluV', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3168, 'Lorengedwat H/C III', '0789897977', '', 1, NULL, 'Lorengedwat HC III', 'EYaoFJ7u4nr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3169, 'Mpambwa H/C III', '0775046068', '', 1, NULL, 'Mpambwa HC III', 'OpOGlpV0oLK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3170, 'Kaabong Mission H/C III', '0779595803', '', 1, NULL, 'Kaabong Mission HC III', 'jvPJLFJ3Rt1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3171, 'Ikumba H/C III', '', '', 1, NULL, 'Ikumba HC III', 'S1qinK4bVGQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3172, 'Bufundi H/C III', '', '', 1, NULL, 'Bufundi HC III', 'l9dGMGtxEOi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3173, 'Aukot H/C II', '07787205334', '', 1, NULL, 'Aukot HC II', 't7m1vt8ZdgY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3175, 'Kahokya H/C II 	', '0782454293', '', 1, NULL, 'Kahokya HC II', 'j3kOByZMdZu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3176, 'Kabugu H/C II', '0753424948', '', 1, NULL, 'Kabugu HC II', 'aKzFgKWqIPv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3177, 'Butare H/C III (Buhweju)', '0783641939', '', 1, NULL, 'Butare HC III', 'RndGp2J7TuE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3178, 'Olivu H/C III', ' 0782890357/07846542', '', 1, NULL, 'Olivu HC II', 'f2Whd5ubYn8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3179, 'Odoubu H/C III', '0782890357/078465427', '', 1, NULL, 'Oduobu HC III', 'GydLR8lY7Qw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3180, 'Imvepi H/C III', ' 0782890357/07846542', '', 1, NULL, 'Imvepi HC II', 'DDbLsI5S91i', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3181, 'Odraka H/C II', '0782890357/078465427', '', 1, NULL, 'Odraka HC II', 'cP60sZpyWCs', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3182, 'Masira H/C III', '0758135484', '', 1, NULL, 'Masira HC III', 'CHqwTZx7Pym', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3183, 'Ngomanene H/C III(Gomba)', '', '', 1, NULL, 'Ngomanene HC II', 'Xvt0nRCNyrC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3184, 'SWAZI H/C III', '0784835828', '', 1, NULL, 'Swazi HC II', 'KQt6eh1UGuS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3185, 'Ssunga H/C III', '0757634991', '', 1, NULL, 'Ssunga HC III', 'EJjtvQaTkx8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3186, 'Angaya H/C III', '0777364854', '', 1, NULL, 'Angaya HC III', 'P2sdfoxH0a7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3187, 'Kisojjo H/C II (Bukomansimbi)', '0772661999', '', 1, NULL, 'Kisojjo HC II GOVT', 'ogD8wXFjIUD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3188, 'Butiru Chrisco Hospital', '0787727809', '', 1, NULL, 'Butiru Chrisco HC III', 'JHUDOhEfQ9t', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3189, '2nd DIV Military Hospital(Makenke)', '', '', 1, NULL, 'UPDF 2nd Div.Hospital', 'a6CCCxArlVG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3190, 'Nyondo H/C III (Mbale)', '0775522753', '', 1, NULL, 'Nyondo HC III', 'vaNMmgaScuW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3191, 'Eseri Domiciliary Clinic', '784935470 ', '', 1, NULL, 'Eseri Dominciliary CLINIC', 'idkhOzh2TYJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3192, 'Namugongo Fund For Special Children', '0775019662', '', 1, NULL, 'Namugongo Fund For Special Children', 'afvG6pq13B1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3193, 'Kabayanda H/C II', '', '', 1, NULL, 'Kabayanda HC II', 'aRs9kg1lEWy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3194, 'Te-Got H/C II', '', '', 1, NULL, 'Tegot HC II', 'I2psFCABsSs', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3195, 'Sanga H/C III', '', '', 1, NULL, 'Sanga HC III', 't6jiPqaeBe2', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3196, 'Bumasobo H/C III', '0787981411', '', 1, NULL, 'Bumasobo HC III', 'G2x4IQfoW0p', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3197, 'St Francis Of Asiisi Marternity Home (lukaya)', '0750690101', '', 1, NULL, 'St. Francis Maternity Home', 'dkhfFpWRiL0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3198, 'Wentz Medical Center', '0772655045', '', 1, NULL, 'Wentz Medical Centre', 'DYBhUQ707JF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3199, 'St Elizabeth H/C III KIJJUKIZO', '075807272', '', 1, NULL, 'St. Elizabeth Kijjukizo HC III', 'JDAxhYvvWfp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3200, 'Senyi H/C II', '', '', 1, NULL, 'Ssenyi HC II', 'iJCZZ9rUZYm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3201, 'Lira Military Barracks H/C III', '0782055637', '', 1, NULL, 'Lira Barracks HC III', 'DNDNErLjgOa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3202, 'Henrob Medical Centre', '0706329255', '', 1, NULL, 'Henrob Family Clinic', 'u3SLVGPpWI8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3203, 'St Benedict Health Center', '', '', 1, NULL, 'St. Benedict\'s HC III', 'OZm6EKHBeMU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3204, 'Migamba H/C II', '0789877177', '', 1, NULL, 'Migamba HC II', 'ejl0uMalFn1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3206, 'Kayonza Tea Factory', '', '', 1, NULL, 'Kayonza Tea Factory HC III', 'x65jpp0WQnc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3207, 'Kirima H/C III', '', '', 1, NULL, 'Kirima HC III', 'thK2qGR4iAo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3208, 'Nyamirama H/C III', '', '', 1, NULL, 'Nyamirama HC III', 'bSj21Ydq4fP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3209, 'Kinaba H/C III', '', '', 1, NULL, 'Kinaaba Gvt HC II', 'adbEkXPw0Kk', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3210, 'Nyamwegabira H/C III', '', '', 1, NULL, 'Nyamwegabira HC III', 'TbdxHVOs0zC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3211, 'Matanda H/C III', '', '', 1, NULL, 'Matanda HC III', 'Sfu2d1yi02W', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3212, 'Mburamizi H/C III', '', '', 1, NULL, 'Mburamizi Army Barracks HC III', 'oe5SuoS1cNO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3213, 'Akworo H/C III', '0775644268', '', 1, NULL, 'Akworo HC III', 'gBiYU9OJgsv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3214, 'Ocokican H/C II', '0774303912/070432263', '', 1, NULL, 'Ocokican HC II', 'PmFgAvnih83', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3215, 'St Joseph\'s Buyege H/C III', '0752493745', '', 1, NULL, 'Buyege HC III', 'k2a3PCnnVdI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3216, 'Central 1', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3217, 'Katunguru H/C III(Rubirizi)', '0784712910', '', 1, NULL, 'Katunguru HC III', 'VeLWYyVm43q', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3218, 'Lopeei H/C III', '0784501309', '', 1, NULL, 'Lopei HC III', 'YjHuDt86ndQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3219, 'Marah H/C III', '0783413766', '', 1, NULL, 'Marah HC II', 'O2MrHIZZJoi', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3220, 'Old Kampala Hospital', '0702780158', '', 1, NULL, 'Old Kampala Hospital HC IV', 'pp2tEHamY9h', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3221, 'Rurambiira H/C II', '0782764697', '', 1, NULL, 'Rurambira HC II', 'edGJUvFwlKN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3222, 'Omatenga H/C II', '0753895593', '', 1, NULL, 'Omatenga HC III', 'euiuFSL4Sdb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3223, 'Kosiroi H/C II', '0783984922', '', 1, NULL, 'Kosiroi HC II', 'THC1QUnraXF', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3224, 'Kamod H/C II', '0789971882', '', 1, NULL, 'Kamod HC II', 'lwOFIJ6tbNa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3225, 'Lorengechora H/C III', '0773229432', '', 1, NULL, 'Lorengechora HC III', 'UhCMUEIx3V9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3226, 'Kasambya H/C III (Kakumiro)', '', '', 1, NULL, 'Kakumiro Kasambya HC III GOVT', 'ciUSl2fbKMZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3227, 'Fiduga Clinic', '0701919301', '', 1, NULL, 'Fiduga HC III', 'VFy5xbPCzU3', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3228, 'Anyiribu H/C III', '', '', 1, NULL, 'Anyiribu HC III', 'FKuNaclJDeD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3229, 'Murchison Bay Hospital', '', '', 1, NULL, 'Murchison Bay  HOSPITAL', 'WGc7kKRhPaH', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3230, 'Teguzibirwa Dom Clinic', '0702282377', '', 1, NULL, 'Teguzibirwa Dom Clinic', 'OoIuPjmXDde', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3231, 'St Francis H/C III Ocodri', '0771640794', '', 1, NULL, 'St. Francis Ocodri HC III', 'E9FHg5HyYzC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3232, 'Otumbari H/C III', '0778720417', '', 1, NULL, 'Otumbari St. Lawrence HC III', 'lh4zqCHzHIM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3233, 'Rwagimba H/C III', '0779171675', '', 1, NULL, 'Rwagimba HC III', 'EBCRwGo5bqm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3234, 'Bregma Medical Centre', '0785852263', '', 1, NULL, 'Bregma HC II', 'k1Ady0jT3QS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3235, 'Military Police H/C III (Makindye)', '0785600470', '', 1, NULL, 'Makindye Police HC III', 'OXG3d4gPJpC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3236, 'Ruhaama H/C III', '0775747415', '', 1, NULL, 'Ruhaama HC III', 'Uo8eU7Qrx0v', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3237, 'Kisiita H/C III', '', '', 1, NULL, 'Kisiita HC III', 'TIJcUNU05Ao', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3238, 'Kakumiro H/C IV', '', '', 1, NULL, 'Kakumiro HC IV', 'aLPsQWPEMFT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3239, 'Bikurungu H/C III', '0701923361', '', 1, NULL, 'Bikurungu HC III', 'gbBl9ETEePr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3240, 'Nyakagyeme H/C III', '0784261250', '', 1, NULL, 'Nyakagyeme HC III', 'kLgmLxMJP9O', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3242, 'Bisheshe H/C III', '', '', 1, NULL, 'Bisheshe HC III', 'iChSz9sMebA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3243, 'St Martin Clinic (Bukunda)', '0782756304', '', 1, NULL, 'St. Martin\'s  HC II', 'wpLf3ooCcJu', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3244, 'Igayaza H/C II', '', '', 1, NULL, 'Igayaza HC II', 'QP3xbv4C32B', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3245, 'Busamaga H/C III', '0704748703', '', 1, NULL, 'Busamaga HC II', 'C9Kvzwphv8J', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3246, 'Kabule H/C III', '0782331978', '', 1, NULL, 'Kabule HC III', 'SCCtg0ytcin', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3247, 'Tongolo H/C II', '0774027065', '', 1, NULL, 'Tongolo HC II', 'zhFVYJiWUOS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3248, 'Tumu Hospital', '0754760326', '', 1, NULL, 'Tumu Hospital', 'E4Vcl5DBfpq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3249, 'Aarapoo H/C II', '0750684692', '', 1, NULL, 'Aarapoo HC II', 'aVQCbe80pl7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3250, 'Namuningi H/C II', '0782301791', '', 1, NULL, 'Namunyingi HC II', 'PeKgOppv6Lo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3252, 'Mpongi H/C III', '0781408534', '', 1, NULL, 'Mpongi HC II', 'HHDvc2TzPnl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3253, 'Siita H/C III', '0774242676', '', 1, NULL, 'Siita Save HC III', 'a7rvaK12ZU1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3254, 'Lugazi Muslim H/C II', '0753277192', '', 1, NULL, 'Lugazi Muslim HC II', 'J8lqAR46pse', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3255, 'Lufuka Valley Health Centre III', '0751773219', '', 1, NULL, 'Lufuka Valley HC III', 'xLwJJhiMkkX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3256, 'IREMERA H/C III', '0758920239', '', 1, NULL, 'Iremera HC III', 'j1c8wmQO6d7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3257, 'St Sabena H/C II', '0775726526', '', 1, NULL, 'St. Sabena HC II', 'jsptdk3Pffa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3258, 'Hope Medical Center (Sheema)', '0786688978', '', 1, NULL, 'Hope Medical Centre HC II NGO', 'yP6WiIyFAj7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3259, 'Kitondo H/C III', '0772889033', '', 1, NULL, 'Kitondo HC III', 'U2iprp1G39M', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3260, 'Kashumba H/C III', '0772647724', '', 1, NULL, 'Kashumba HC III', 'ak2gK9gfyQS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3261, 'Bumadu C.O.U', '0782753187', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3262, 'Kikagate H/C III', '0778125561', '', 1, NULL, 'Kikagate HC III', 'xK1lURyBlFC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3263, 'Kanywamaizi H/C III', '0702177687', '', 1, NULL, 'Kanywamaizi HC III', 'aKwOiCIvmn5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3264, 'Nyakinama H/C III', '0787791488', '', 1, NULL, 'Nyakinama HC III', 'PncHhF14R0N', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3265, 'St Catherine Hospital', '0753735832', '', 1, NULL, 'St. Catherine HOSPITAL', 'mbiBOQltGeh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3266, 'Ruhinda H/C III', '0703112856', '', 1, NULL, 'Ruhinda HC III', 'HYR3olhofDD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3267, 'Naweyo H/C III', '0771244887', '', 1, NULL, 'Naweyo HC III', 'UEVOLIT1crh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3268, 'Kyeirumba H/C III', '0701517058', '', 1, NULL, 'Kyeirumba HC III', 'uEUAoZHJzu0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3269, 'Nteko H/C III', '0782080643', '', 1, NULL, 'Nteko HC III', 'z62IqCHW3MC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3270, 'Kagano H/C III', '0775700363', '', 1, NULL, 'Kagano HC III', 'zAPmrjVeufo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3271, 'Bukimbiri H/C III', '0785347629', '', 1, NULL, 'Bukimbiri HC III', 'aLRO2msaA9p', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3272, 'Kavule H/C II', '0754724738', '', 1, NULL, 'Kavule HC II', 'bWOR5fD8vdv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3273, 'Rweikiniro H/C III', '0789503444', '', 1, NULL, 'Rweikiniro HC III', 'QfWjCf5pKFh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3274, 'Rushasha H/C III', '0704563340', '', 1, NULL, 'Rushasha HC III', 'awXRxReJcg9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3275, 'Engaju H/CII', '0778584917', '', 1, NULL, 'Engaju HC II', 'DIE1bNkw04b', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3276, 'Mabona H/C III', '0776462343', '', 1, NULL, 'Mabona HC III', 'akpD9KoxPcB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3277, 'Kigwera H/C III', '0700141512', '', 1, NULL, 'Kigwera HC II', 'Qk1XgoxFmuU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3278, 'Bufunda H/C III', '0787782913', '', 1, NULL, 'Bufunda HC III', 'Wmc36bI5m96', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3279, 'Kabushaho H/C III', '0789166585', '', 1, NULL, 'Kabushaho HC III', 'aXnnYprMwTq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3280, 'Buziika H/C II', '0701306595', '', 1, NULL, 'Buziika HC II', 'WfEOwsEOMbc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3282, 'Nangara H/C II', '0776063453', '', 1, NULL, 'Nangara HC II', 'aH4vG0wm5U0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3283, 'Rutoto SDA H/C II', '0783201831', '', 1, NULL, 'Rutoto HC II', 'EZqXqnUG0ep', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3284, 'ST Marys H/C II Katoosa', '0772364806', '', 1, NULL, 'St. Mary\'s Katoosa HC II', 'pEi4KzFW4nv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3285, 'Kyangyenyi H/C III', '0702944899', '', 1, NULL, 'Kyangyenyi HC III', 'XjGXLRYHwRx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3286, 'Kikatsi H/C III', '0782761958', '', 1, NULL, 'Kikatsi HC III', 'aTA0Oqfza5z', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3287, 'Bugongi H/C III', '0781522055', '', 1, NULL, 'Bugongi HC III', 'RrvmrGFqy38', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3288, 'Kanywambogo H/C III', '0782828492', '', 1, NULL, 'Kanywambogo HC III', 'aDcEum2g6mY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3289, 'Kishenyi H/C II (Rubirizi)', '0772959793', '', 1, NULL, 'Kisenyi HC II', 'ltPXYlK9Lnd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3290, 'Kyenzaza H/C II', '0772959793', '', 1, NULL, 'Kyenzaza HC II', 'jBqnMmDxLII', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3291, 'Rugazi Mission H/C II', '0772959793', '', 1, NULL, 'Rugazi Mission HC II', 'wa5ALmOQe62', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3292, 'Kamubeizi H/C II', '0782813149', '', 1, NULL, 'Kamubeizi HC II', 'PGpdN6nh3Lz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3293, 'Kakiika Prisons', '', '', 1, NULL, 'Kakiika Prisons HC II', 'ghR1GP2ZZAO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3294, 'Mutara H/C III', '0784626402', '', 1, NULL, 'Mutara HC III', 'go8iYQcmIAE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3295, 'Kapawai H/C III', '0773180108', '', 1, NULL, 'Kapuwai HC III', 'aIW9h5nP603', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3296, 'Rwenkobwa H/C III', '', '', 1, NULL, 'Rwenkobwa HC III', 'aG2AogxcfRK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3297, 'Mifumi H/C III', '', '', 1, NULL, 'Mifumi HC III', 'F50gOkQjBg9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3298, 'Ojom H/C II', '0782366622', '', 1, NULL, 'Ojom HC II', 'DEMEh3VEW72', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3299, 'Bukungu H/C II', '0759318746', '', 1, NULL, 'Bukungu HC II', 'L63oRktfIfQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3301, 'Kakore H/C II', '', '', 1, NULL, 'Kakore HC II NGO', 'dILdbpei9pW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3302, 'Kaharo H/C III', '0705560562', '', 1, NULL, 'Kaharo HC III', 'kx0KBt6s0UP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3303, 'Kanyabwanga H/C III', '', '', 1, NULL, 'Kanyabwanga HC III', 'N5mmOltRto8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3304, 'Mbarara Central Prison H/C III', '0702246769', '', 1, NULL, 'Mbarara Main Prisons HCIII', 'nqeXmzUXubD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3305, 'Ngeribalya H/C II', '0703345042', '', 1, NULL, 'Ngeribalya HC II', 'o1LaetcCY7S', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3306, 'Mushanga H/C III', '0784071894', '', 1, NULL, 'Mushanga HC III', 'ppt2wpU7IP6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3307, 'Paragon Hospital', '0772603786', '', 1, NULL, 'Paragon HOSPITAL Kampala', 'lbot9vOeQXJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3308, 'Agirigiroi H/C II', '0782240420', '', 1, NULL, 'Agirigiroi HC II', 'PCvI4E289K1', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3309, 'Ntungu H/C II', '0753404051', '', 1, NULL, 'Ntungu HC II', 'ar4RR2FBfKU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3310, 'Nyakatsiro H/C III', '0775727206', '', 1, NULL, 'Nyakatsiro HC III', 'Dk1SkAipwsf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3311, 'Ongongoja H/C II', '0782093665', '', 1, NULL, 'Ongongoja HC II', 'Qii1Y1bj3Be', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3312, 'Kitooro H/C III', '', '', 1, NULL, 'Kitooro HC III-NR', 'GXm2FPnZqfB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3313, 'Ruborogota H/C III', '0782099103', '', 1, NULL, 'Ruborogota HC III', 'IoTKrKIPsRz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3314, 'Burombe H/C III', '0774201803', '', 1, NULL, 'Burombe HC III', 'aHPLLEMdB4o', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3315, 'Nyabihuniko H/C III', '0785797974', '', 1, NULL, 'Nyabihuniko HC III', 'oJjQxwDB9EW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3316, 'Buwangwa H/C III', '0779378110', '', 1, NULL, 'Buwangwa HC III', 'YiiEgLjAdyx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3317, 'Lamezia H/C III', '0773007418', '', 1, NULL, 'Lamezia HC III', 'EJSR69XSWFB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3318, 'Hoima Police H/C III', '', '', 1, NULL, 'Hoima Police Clinic HC II PHP', 'o7OluoErEud', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3319, 'Bigungiro H/C II', '0783528170', '', 1, NULL, 'Bigungiro HC II', 'oZVIABxg51n', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3320, 'Kasaana H/C III', '0751721316', '', 1, NULL, 'Kasana HC III', 'sr5WqM2cefh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3321, 'Nkooko H/C III', '0773989283', '', 1, NULL, 'Nkooko HC III', 'ZwTCkOzJUwa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3322, 'Bobi H/C III', '0777366388', '', 1, NULL, 'Bobi HC III', 'bah36yY0P6q', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3323, 'Lalogi H/C IV', '0777328083', '', 1, NULL, 'Lalogi HC IV', 'Dxbu2QPZahI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3324, 'St Ambrose Charity H/C III', '774178100', '', 1, NULL, 'St. Ambrose Charity HC IV', 'vsu4ND4ja3E', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3325, 'Kinyarugunjo H/C III', '', '', 1, NULL, 'Kinyarugonjo HC III', 'a01R1qs6SXL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3326, 'Muhoro H/C III', '', '', 1, NULL, 'Muhorro Ngo HC III', 'CXRfI4pT3bm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3327, 'International Hospital Kampala', '0784725409', '', 1, NULL, 'International Hospital Kampala (IHK)', 'a6MbTUZ12aw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3328, 'Gateriteri H/C III', '0778385082', '', 1, NULL, 'Gateriteri HC III', 'V5l3C1YQlLa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3329, 'Buhara H/C III (Govt)', '0787032220', '', 1, NULL, 'Buhara HC III', 'aJ0CTjwNQof', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3330, 'St Marys H/C III-Kyeibuza', '0777010666', '', 1, NULL, 'Kyeibuza (St. Mary\'S) HC III', 'fn3zMtuYbmL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3331, 'Kikwayi H/C II', '0704725364', '', 1, NULL, 'Kikwayi HC II', 'Eu7L6ZmhA4R', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3332, 'Kitura H/C III', '0779801209', '', 1, NULL, 'Kitura HC II', 'NcxXPrWeMtP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3333, 'Mawuki H/C II', '0778412474', '', 1, NULL, 'Mawuki HC II', 'MGA4eDHuCG9', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3334, 'Mamba H/C II', '0787048839', '', 1, NULL, 'Mamba HC II', 'SfqoAfHZm8l', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3335, 'St Marys MNH Bukomansimbi', '0759242525', '', 1, NULL, 'St. Mary\'S Maternity Home HC III', 'VCIAE5Bta3H', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3336, 'Elema H/C II', '0777911094', '', 1, NULL, 'Elema HC II', 'O4KQDQzBA9s', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3337, 'Nyamarebe H/C III', '0705521420', '', 1, NULL, 'Nyamarebe HC III', 'xzB84Cpdcuk', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3338, 'Nyumanzi H/C II', '0778829990', '', 1, NULL, 'Nyumanzi HC II', 'RHkry0Pxk7e', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3339, 'Kibuzigye H/C II', '0782239379', '', 1, NULL, 'Kibuzigye HC II', 'Gs7eHzXTWS8', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3340, 'Rugashali H/C III', '', '', 1, NULL, 'Rugashari HC III', 'kkPs3xyvsD5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3341, 'Mabaale H/C III', '', '', 1, NULL, 'Mabaale HC III', 'b5Ty8QKKPVI', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3342, 'Bwikara H/C III', '', '', 1, NULL, 'Bwikara HC III', 'NQaX9PnpOiB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3343, 'Isunga H/C III', '', '', 1, NULL, 'Isunga HC III', 'v7vSvHb7QUU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3344, 'Kyaterekera H/C III (Kagadi)', '', '', 1, NULL, 'Kyaterekera HC III', 'aVULsV9e3Gf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3345, 'Mpeefu H/C III', '', '', 1, NULL, 'Mpeefu A HC II', 'OUxkJiqy82x', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3346, 'Kagadi Hospital', '', '', 1, NULL, 'Kagadi Hospital', 'JLUfWD5Q5jB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3347, 'kiryanga H/C III', '', '', 1, NULL, 'Kiryanga HC III', 'DdEgPYS7ttc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3348, 'Muzizi H/C II', '', '', 1, NULL, 'Muzizi/Muziizi (Tea Estate) HC II', 'gnUdRpOiTfQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3349, 'Aoet H/C III', '0756769822', '', 1, NULL, 'AOET HC II', 'YUaxNtqNWFW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3350, 'Gasovu H/C III', '0784144434', '', 1, NULL, 'Gasovu HC III', 'TEmxmKVJJPa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3351, 'Ddungi H/C II', '0755049517', '', 1, NULL, 'Ddungi HC II', 'k7sazN1EJ0o', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3352, 'Maranatha H/C II', '', '', 1, NULL, 'Maranatha HC III', 'VWrdPPDI0XP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3354, 'Lacor H/C III (Pabbo)', '', '', 1, NULL, 'Pabbo (Ngo) HC III', 'FNTxj1oKTQd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3355, 'Bulwadda H/C II', '0772064773', '', 1, NULL, 'Bulwadda HC II', 'QLJmdTgkB3N', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3356, 'Ahmadiyya H/C III', '0788179707', '', 1, NULL, 'Ahamadiya HC III', 'potmv2l4HbN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3357, 'Naminya H/C II', '', '', 1, NULL, 'Naminya HC II', 'joubGoymaJC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3358, 'Crane Health Services', '0782884966', '', 1, NULL, 'Crane Health Care', 'adSg4gJ5FBY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3360, 'Nyarushanje H/C III', '', '', 1, NULL, 'Nyarushanje HC III', 'mPeGNV8s5Xl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3361, 'Nile Breweries H/C II', '0775751885', '', 1, NULL, 'Nile Breweries Company Clinic  HC III', 'DQ0Pj4O6Bkq', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3362, 'Ndama H/C III', '0782545482', '', 1, NULL, 'Ndama HC III', 'ba44JvPeYSn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3363, 'Lalle H/C II', '0781860093', '', 1, NULL, 'Lalle HC II', 'KabGzoH7k7H', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3364, 'North Kigezi Diocese M C H/C IV', '0752674219/077882603', '', 1, NULL, 'North Kigezi HC IV', 'YQHYY7tXAcO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3365, 'Seeta-Namuganga', '0776508184', '', 1, NULL, 'Namuganga HC III', 'aiyix4P4FmA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3366, 'Mahango H/C III', '0775262787', '', 1, NULL, 'Mahango HC III', 'UshPWo8oKzc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3367, 'Kakindo H/C IV', '', '', 1, NULL, 'Kakindo HC IV', 'KHdENRAXOQJ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3368, 'Midas Torch Medical Services', '0784695732', '', 1, NULL, 'Midas Torch HC IV', 'GTfZ3KEfuFb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3369, 'Kigoyera H/C II', '0771445477', '', 1, NULL, 'Kigoyera HC II', 'n7n89BxSgia', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3370, 'Rukungiri Police H/C III', '0784094663', '', 1, NULL, 'Rukungiri Police HC II', 'krX5G0oMDPX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3371, 'Burunga H/C III', '0784505407', '', 1, NULL, 'Burunga HC III', 'j0I9qHOtVIw', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3372, 'Isibuka H/C III', '0702232234', '', 1, NULL, 'Isibuka Nursing Home HC III', 'E5kPcprgHM5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3373, 'AIDS Information Centre(Lira)', '0782718188', '', 1, NULL, 'AIC Lira Main Branch Clinic', 'b27exHAFNPv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3374, 'Mabale(Kyenjojo) H/C II', '0773494740', '', 1, NULL, 'Mabale Tea Factory HC II', 'ajogQebjO0O', '2019-03-21 09:54:43', '2019-03-21 09:54:43');
INSERT INTO `dhis2_facilities` (`id`, `name`, `facility_contact`, `facility_email`, `active`, `code`, `dhis2_name`, `dhis2_uid`, `created_at`, `updated_at`) VALUES
(3375, 'Lapainat H/C III', '0772696294', '', 1, NULL, 'Lapainat HC III', 'EsXcenXz99W', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3376, 'Odek H/C III', '0789558572', '', 1, NULL, 'Odek HC III', 'RyuiNh0Ldqs', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3377, 'Nalweyo H/C III', '0773698069', '', 1, NULL, 'Nalweyo HC III', 'uXgyniUkd0D', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3378, 'Lugazi H/C II', '0702740793', '', 1, NULL, 'Lugazi II HC II', 'yM6f1QC8fPA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3379, 'Bugoigo H/C II', '0701733769', '', 1, NULL, 'Bugoigo HC II', 'ijHGyxnKjmz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3380, 'Ruhangire H/C II', '0787318869', '', 1, NULL, 'Ruhangire HC II', 'zGTxryelOUN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3381, 'Mbarara Police H/C III', '0755553097', '', 1, NULL, 'Mbarara Police HC III', 'xLi1cv6UPxT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3382, 'Nakatonya H/C III', '0777575494', '', 1, NULL, 'Nakatonya HC III', 'olEYjGeLyZf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3383, 'Lokolia H/C II', '0773182324', '', 1, NULL, 'Lokolia HC III', 'uwIGysNI69s', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3384, 'Kyamulibwa MRC', '', '', 1, NULL, 'MRC Kyamulibwa HC II', 'CSHydY4gTN0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3385, 'Kinanira H/C III', '0771074410', '', 1, NULL, 'Kinanira HC III', 'nNZGVgL6la6', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3386, 'St Richard\'s H/C III', '0700474238', '', 1, NULL, 'St. Richard med care center', 'Ml5daGLdYZG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3387, 'Marine Military H/C II (Butiaba)', '0700404143', '', 1, NULL, 'Marine MILITARY', 'O4srstZgm0D', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3388, 'Apodorwa H/C II', '0775131231', '', 1, NULL, 'Apodorwa HC II', 'NwDdmtvuy4J', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3390, 'Hope Medical Centre', '0789550462', '', 1, NULL, 'Hope Medical Centre II', 'FJQvpVMUJlA', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3391, 'Kanziira H/C II', '0775042187', '', 1, NULL, 'Kanzira HC II', 'SCOrhnwQX8k', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3392, 'Karinga H/C II', '0774987242', '', 1, NULL, 'Karinga HC II', 'IgDdvRDyk3K', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3394, 'Kalagala H/C II (Nakaseke)', '', '', 1, NULL, 'Nakaseke Kalagala HC II GOVT', 'F77VRAFi2dn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3395, 'Kalagala H/C II (Buikwe)', '', '', 1, NULL, 'Kalagala HC II GOVT', 'fznvuJ4HgYn', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3396, 'Nyarubuye H/C III', '0787797531', '', 1, NULL, 'Nyarubuye HC III', 'HlsEfEtkMwL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3397, 'Rwoburunga H/C III', '0706104431', '', 1, NULL, 'Rwoburunga HC III', 'jA7tuThhDUU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3398, 'Ariba H/C II', '0777287385/078212639', '', 1, NULL, 'Ariba HC II', 'LLYB1JRn1UL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3399, 'AIDS Information Centre (Soroti)', '0782568048', '', 1, NULL, 'AIC Soroti Branch CLINIC', 'p0gQCb29YsS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3400, 'Gulu Police H/C III', '0774887838', '', 1, NULL, 'Gulu Police HC II', 'afGTmR6EesS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3401, 'Kandago H/C II', '', '', 1, NULL, 'Kandago HC II', 'NkER3oDFQZb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3402, 'Nyamigote H/C II', '0701124412', '', 1, NULL, 'Nyarugote HC II', 'wMiApjHnWVa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3403, 'Busabala Rd Nursing Home', '0772491527', '', 1, NULL, 'Busabala Nursing Home HC II', 'GxOxwosJPjh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3404, 'Akoboi H/C II (katakwi)', '0784677507', '', 1, NULL, 'Katakwi Akoboi HC II GOVT', 'usd4FQttAvy', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3405, 'Kyabasaija H/C III', '0777403862/070644139', '', 1, NULL, 'Kyabasaija HC III', 'wTumxHRbaIc', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3406, 'Beatrice Tierney H/C II', '0778281327/070435439', '', 1, NULL, 'Beatrice Tierne HC II', 'asYho1oZJbG', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3407, 'Opia H/C III', '0775802215', '', 1, NULL, 'Opia HC III', 'EBlM7SeLR4c', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3408, 'Kitala H/C II', '0782417949', '', 1, NULL, 'Kitala HC II', 'ZppfQ4q1PFg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3409, 'Kyakuterekera H/C III (Kakumiro)', '0703648030', '', 1, NULL, 'Kyakuterekera HC III', 'pWrHCTnuvFm', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3410, 'Kalangaalo H/C II', '0779676826', '', 1, NULL, 'Kalangaalo HC II', 'Pg7u9XVV10i', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3411, 'Paraa H/C II', '0779550144', '', 1, NULL, 'Paraa HC II NGO', 'Unpl3hI2D59', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3412, 'Kyarumba PHC III', '0781409821', '', 1, NULL, 'Kyarumba Phc HC III', 'MwpYp4lsw9D', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3413, 'Buhozi H/C III', '787719517', '', 1, NULL, 'Buhozi HC III', 'p3y6tUhOXnp', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3592, 'Kagezi HC III', '0000000', NULL, 1, NULL, 'Kagezi HC III', 'lJf5crQrZpO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3646, 'Kibirizi HC III', '0000000', NULL, 1, NULL, 'Kibirizi HC III', 'JzvyKeN1NIO', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3774, 'Mulago National Hospital- MUJHU Clinic', '0000000', NULL, 1, NULL, 'Mulago National Hospital- MUJHU Clinic', 'nVK7vHSkLbr', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3828, 'Nyarugote HC II', '0000000', NULL, 1, NULL, 'Nyarugote HC II', 'wMiApjHnWVa', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3896, 'Rusheshe HC III', '0000000', NULL, 1, NULL, 'Rusheshe HC III', 've5j2Ed30wv', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3900, 'Rwengiri HC III', '0000000', NULL, 1, NULL, 'Rwengiri HC III', 'aeuGMylOmSs', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(3901, 'Rwenyangye HC II', '0000000', NULL, 1, NULL, 'Rwenyangye HC II', 'Y7E0R7jy1qx', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(5917, 'Kitaka HC II', '0000000', NULL, 1, NULL, 'Kitaka HC II', 'auBbIemzi2h', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(6704, 'Mulago National Hospital- MJAP (CDC) Mulago', '0000000', NULL, 1, NULL, 'Mulago National Hospital- MJAP (CDC) Mul', 'DQIjOIvoTMK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(6705, 'Mulago National Hospital- MJAP TB HIV Clinic', '0000000', NULL, 1, NULL, 'Mulago National Hospital- MJAP TB HIV Cl', 'IM4jRSOQdUl', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8111, 'Villa Maria - Kaihura HC II', '0000000', NULL, 1, NULL, 'Villa Maria - Kaihura HC II', 'aYcV6yUPUF5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8206, 'Masindi Kitara Medical Centre', '0789914316', '', 1, NULL, 'Masindi Kitara Medical Centre  HC II', 'fYKuOZQWyuf', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8207, 'St Peters H/C II Awere', '0779754582 ', '', 1, NULL, 'St. Peters Awere HC II', 'avi5fZrFoo0', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8208, 'Rulongo H/C II', '0700349175', '', 1, NULL, 'Rurongo  HC II', 'fctfxQy7JeK', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8209, 'MUWRP Clinic', '0772324441', '', 1, NULL, 'Makerere University Walter Reed Clinic', 'kWWm9MulE7o', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8210, 'MRC/UVRI-Entebbe', '0772720045', '', 1, NULL, 'UVRI HIV Reference Laboratory CLINIC', 'a9acUUujcSQ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8211, 'Anyangatir H/C III', '0781280563', '', 1, NULL, 'Anyangatir HC II', 'PLdHddb1W06', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8212, 'Rubona H/C II', '0756021117/077595305', '', 1, NULL, 'Rubona HC II', 'cK771z6IUQW', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8213, 'Gamogo H/C III', '0703369774', '', 1, NULL, 'Gamogo HC III', 'jKb8fhTLrfC', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8214, 'Police Astu H/C IV', '0774486251', '', 1, NULL, 'Katakwi Police HC II', 'V8OdiScWoBe', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8215, 'Jumbo Medical Clinic', '0755438250', '', 1, NULL, 'Jumbo Medical Clinic HCII', 'JP9lxuDjeey', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8216, 'Jinja Islamic H/C', '0752580880/077539654', '', 1, NULL, 'Jinja Islamic HC III', 'I1bl5B86SPY', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8217, 'Kalibu H/C III', '0774017380', '', 1, NULL, 'Kalibu HC III', 'dUTmAyJW63T', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8218, 'Ayilo H/C III', '0779772846', '', 1, NULL, 'Ayilo 1 HC III', 'DID38FOFn2W', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8219, 'Rutaka H/C III', '0779355971', '', 1, NULL, 'Rutaka HC III', 'bAyAiJKq92R', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8220, 'Kagoggo H/C III', '0703125469', '', 1, NULL, 'Kagoggo HC II', 'hkoHNZAApbg', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8221, 'Lanenober H/C III', '0777646767', '', 1, NULL, 'Lanenobe HC III', 'ede2KlZ1gtL', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8224, 'Sebigoro H/C III', '0773827171', '', 1, NULL, 'Sebigoro HC III', 'Xa2GHu3YN8X', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8225, 'Mugiti H/C III', '0771459274', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8226, 'Kayonza H/C III (Ntungamo)', '0773552459', '', 1, NULL, 'Kayonza Ntungamo HC III GOVT', 'H9Kdh2eKGyz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8227, 'All Saints Buchanagandi H/C III', '0788196411/070491699', '', 1, NULL, 'Buchanagandi HC III', 'fKvVQoaVcjz', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8228, 'Kyere Mission', '0779642532', '', 1, NULL, 'Kyere mission HC III', 'qmIXnGwbmHP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8229, 'St Jude ULEPPI H/C III', '0777908013', '', 1, NULL, 'St. Jude Medical Centre CLINIC', 'kgOqliqXue5', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8230, 'Tajar H/C II', '0775311410', '', 1, NULL, 'Tajar HC II', 'Z7Y1y5YIxQd', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8231, 'Akide H/C II', '0775140436', '', 1, NULL, 'Akide HC II', 'Kf1o8kvbbaS', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8232, 'Butogota H/C II', '0783737032', '', 1, NULL, 'Butogota HC II', 'aRwFP1c5PuU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8233, 'Namulesa H/C II', '0784466063', '', 1, NULL, 'Namulesa HC II', 'z7Cf9DgHZWX', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8235, 'Ewanga H/C III', '0789897593', '', 1, NULL, 'Ewanga HC III', 'ppjhr0L8daE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8236, 'Bisina H/CII', '0777675951', '', 1, NULL, 'Bisina HC II', 'HhXrRF3LWHT', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8237, 'Aakum H/C II', '0777675951', '', 1, NULL, 'Aakum HC II', 'J2JiemiIQvD', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8238, 'Kicwamba H/C III', '0779124767', '', 1, NULL, 'Kicwamba HC II', 'QF3ff0Cof9s', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8239, 'Kigangazi H/C II', '0703125469', '', 1, NULL, 'Kingangazzi HC II', 'dRVlZtrIfcM', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8240, 'Karuhembe H/C II', '0782773840', '', 1, NULL, 'Karuhembe HC II', 'KPpGdhcZvNE', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8241, 'The Surgery', '0312256006', '', 1, NULL, 'The Surgery CLINIC', 'r7gaWycU27e', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8242, 'Latoro H/C II (Nwoya)', '0754362696', '', 1, NULL, 'Latoro HC II', 'u3JBwviodwN', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8243, 'Ofua MSF H/C III', '0779168464', '', 1, NULL, 'Ofua HC III', 'BSrrPPLiBZo', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8244, 'Oluko Solidale H/C III', '0780544067', '', 1, NULL, 'Oluko Solidale HC III', 'b8XUrI7irw7', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8245, 'Agaria H/C II', '0782707899', '', 1, NULL, 'Agaria  HC II', 'l9hCccYpw87', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8246, 'Butoloogo H/C II (C/o Madudu H/C III)', '0752814248', '', 1, NULL, 'Butoloogo HC II', 'QGlZ7LIOS00', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8247, 'Bugambe Tea H/C III', '0778950208', '', 1, NULL, 'Bugambe Tea HC III', 'Gbjmyvee9zh', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8248, 'Buwabwala H/C III', '0775496673', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8249, 'Bugema University H/C III', '0776223388', '', 1, NULL, 'Bugema HC II', 'hrEjabfmkqU', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8250, 'Buhuka H/C III', '0772161688', '', 1, NULL, 'Buhuka HC II', 'vULcvu1i8di', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8251, 'Kangulumira Intergrated', '', '', 1, NULL, 'Kangulumira I.H.P HC II', 'jAkXsSQHYAZ', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8252, 'Nakapelimen H/C II', '0772961805', '', 1, NULL, 'Nakapelimen HC II', 'oSaG8nXTNOB', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8253, 'Kiriki H/C III', '0787249184', '', 1, NULL, 'Kirik HC II', 'gcApTQ5WMyb', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8254, 'Buyengo H/C III', '0700314766', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8255, 'Sseguku H/C II', '0773137473', '', 1, NULL, 'Seguku HC II', 'k5Nbz2uHuqP', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8256, 'Buliisa General Hospital', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8257, 'Nsamizi H/C III', '0702354011', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8258, 'Kachumbala Mission Dispensary', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8259, 'Theresa Ledochow H/C II', '0700662174', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8260, 'Lyakajula H/C II (Lyantode)', '0774532679', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8261, 'Mukisa Nursing Home', '0701891511', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8262, 'Bidibidi Reception H/C III', '0757402834', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8263, 'Kabaale H/C II', '0778787309', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8264, 'Mutungo H/C II', '0773082562', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8265, 'Kibanga H/C III (St Elisabeth of thuringen )', '0772428065', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8266, 'Kisimbi Muslim H/C II', '0777145483', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8267, 'Senta Medicare', '0783322247', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8268, 'Good Hope Medical Center', '0782177325', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8269, 'Bukimbi H/C II', '0752540354', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8270, 'Awach H/C II (Abim)', '0779662760', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8271, 'Kyangatto H/C II', '0772845847', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8272, 'Namuyenje H/C II', '0779805422', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8273, 'Pakor H/C II', '078544220', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8274, 'Nansana H/C II', '0777490078', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8275, 'Family Care Hospital', '0786514531', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8276, 'Gombe H/C II', '0785849180', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8277, 'Mpongo H/C II', '0703600739', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8278, 'Nakaseeta H/C II', '0704406147', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8279, 'Bazadde Clinic', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8280, 'Nsale H/C II', '0700152612', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8281, 'Mbaliga H/C II', '0757773751', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8282, 'Abunga H/C II', '', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8283, 'Inuula H/C II', '0704466970', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8284, 'Butove H/C II', '0778318813', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8285, 'Atipe H/C II', '0788105588', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8286, 'Kisimba H/C II', '077145483', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8287, 'Kagorogoro H/C II', '0784072156', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8288, 'Katwe Martyrs Clinc', '0757762928', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8289, 'Busaale H/C II', '0782939279', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8290, 'Kayonza H/C II (Rakai)', '0785638370', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8291, 'Namaitsu H/C II', '0789387851', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8292, 'Kyakiddu H/C II', '0782782344', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8293, 'Peoples Medical Centre', '0772092598', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8294, 'St Aloysious Ngobya Dom.Clinic', '0778927890', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8295, 'Nakitembe H/C II', '0750821865', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8296, 'Ngandho H/C II', '0702049891', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8297, 'Lookorok H/C II', '0788420194', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8298, 'Kanyatsi H/C II', '0778001666', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8299, 'Kisansala H/C II', '0701621782', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8300, 'Naluvule Medical Centre', '0788711716', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8301, 'Twajij Health Centre III', '0702842410', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8302, 'Kitokolo H/C II', '0757909501', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8303, 'Kenkebu H/C II', '0782961843', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8304, 'Kasolwe H/C II', '0783665019', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8305, 'Kibuye H/C II', '0701364467', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8306, 'Kagamba H/C II', '0759112070', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8307, 'Mitete H/C II', '0752440141', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8308, 'Bugeywa H/C II', '0704639559', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8309, 'Pagirinya H/C III', '0785292584', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8310, 'Kiziiko H/C II', '0776031493', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8311, 'Opeta H/C III (Kole)', '0784799634', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8312, 'Masya H/C II (Gov\'t)', '0782711975', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8313, 'Kanuyumu H/C II', '0781518298', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8314, 'Parabongo H/C II', '0779941128', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8315, 'Okinga H/C II', '0785454720', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8316, 'Atyenda H/C II', '0771817564', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8317, 'Busuyi H/C II', '0775386421', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8318, 'Ayago H/C II', '0787566070', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8319, 'Atura H/C II', '0773190439', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8320, 'Kamusala H/C II', '0392963765', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8321, 'Bugiri H/C III', '0775948501', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8322, 'Alere H/C II', '0773904225', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8323, 'Kanu H/C II', '0783577965', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8324, 'Iyete H/C III', '0778995724', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8325, 'Kanseera H/C II', '0702100117', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8326, 'Bweyongedde H/C II', '0784604723', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8327, 'Dr Panagiotis H/C III', '0782614599', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8328, 'Alop H/C II', '0788417719', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8329, 'Tuku H/C II', '0775802961', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8330, 'Mutushet H/C II', '0783378121/077142343', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8331, 'Tonya H/C II', '0789875020', '', 1, NULL, 'Tonya H/C II', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8332, 'Masaka Armoured Brigade H/C III (A/BDE)', '0789298181', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8333, 'Omagoro H/C III', '0784605521', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8334, 'Panyadoli Hills H/C II', '0783029293', '', 1, NULL, NULL, NULL, '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8335, 'Ambelechu H/C II', '0779478927', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8336, 'Bugambo H/C II', '0773253205', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8337, 'Osia H/C II', '0785007861', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8338, 'Kibinga H/C II', '0753011103', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8339, 'Kanyumu H/C III', '0781518298', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8340, 'kololo H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8342, 'Banga H/C III', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8343, 'St Aloysius Agobya Dom Clinic', '0778927840', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8344, 'Rupa H/C II', '0777410345', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8345, 'Kabatema H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8347, 'Natirae H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8348, 'Wandago H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8349, 'Apuce H/C II', 'Odongo Peter', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8350, 'Rwetango H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8351, 'Mukondo H/C II', '0787539161', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8352, 'Kiwalazi H/C II', '0781992203', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8353, 'Luttamaguzi H/C III', '0756062222', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8354, 'Mityana H/C III (UMSC)', '0784188949', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8355, 'Rwene H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8356, 'Namuganga H/C III', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8357, 'Rurama H/C II', '0786035449', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8358, 'Iruhuura H/C III', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8359, 'Bugona H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8360, 'Butawaata H/C III', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8361, 'Mundadde H/C III', '0782463501', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8362, 'St Francis Of Asiisi Martenity Home (Lukaya)', '0753909244', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8364, 'Ngomba H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8365, 'Arabaka H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8366, 'Lamiyo H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8367, 'Losilang H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8368, 'Makoole H/C II', '0754665766', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8369, 'Kampala Remand Prison', '0754472522', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8370, 'Mutundwe H/C II', '0782642109', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8371, 'Mweya H/C II', '0775257577', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8372, 'Bundingoma H/C II', '0773694615', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8373, '401BDE Military H/C III', '0773063408', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8374, 'Ayiri H/C III', '0779888730', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8375, 'Guruguru H/C II', '0789321251', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8376, 'Cheptapoyo H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8377, 'Kiyagara H/C II', '0782423698', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8378, 'Kasozo H/CII', '0774647879', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8379, 'Kateete H/C II (Mukono)', '0704514999', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8380, 'Nazigo Mission H/C II', '0750093239', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8381, 'Kabigi Muslim H/C II', '0750966451', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8382, 'St Joseph\'s Rubindi H/C III', '0779549771', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8383, 'St Cecilia Buyamba H/C III', '0775889947', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8384, 'Kihembo H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8385, 'Nakasero Hospital', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8386, 'Namungo H/C II', '0788747069', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8387, 'Pawel Angany H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8388, 'Kikamba H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8389, 'Uriama H/C III', '0783799832', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8390, 'Busunga H/C II (Kasese)', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8391, 'Nalugala H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8392, 'Kihungya II', '0787049895', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8393, 'Kihanga H/C III', '0787344916', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8394, 'Mudade H/C III', '0701832207', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8395, 'Luteete H/C II', '0773462440', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8396, 'Muhanga COU H/CII', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8397, 'Lobalangit H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8398, 'Ntete H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8399, 'Lomeris H/C II', '0781969232', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8400, 'Namuusale H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8401, 'St Thereza Kabogwe', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8402, 'Prime Care Medical Centre', '0781935667', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8403, 'Nassolo Wamala H/C II', '0781316995', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8404, 'Kabogwe H/C 11', '0788439477', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8405, 'aji', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8406, 'Ajia H/C III', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8407, 'Nassolo Wamala H/C III', '0781316995', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8408, 'Bukatube H/C II', '0751622325', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8409, 'St Martha Maternity Home- Bukedea', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8410, 'Kapkoros H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8411, 'VQA Laboratory', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8412, 'Vine Medicare Clinic', '0704546693', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8413, 'Nyakahita H/C II', '0753862202', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8414, 'Nyamirami H/C IV', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8416, 'Kihunda H/C III', '', '', 1, NULL, 'Kihunda H/C III', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8417, 'Our Lady Of The Sick Kambaala H/C III', '0773354548', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8418, 'Rwakabengo H/C III', '', '', 1, NULL, 'Rwakabengo H/C III', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8419, 'Kashaka H/C II', '', '', 1, NULL, 'Kashaka H/C II', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8420, 'Bishop Masereka H/C', '0782379334', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8421, 'Christ The King Medical Centre', 'KILABO DIMIL', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8423, 'Epi Centre H/C II (Mpigi)', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8424, 'Nabulenger H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8425, 'Kirigime H/C III', '0777228554', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8426, 'Nakiloro H/C II', '0773967595', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8427, 'Kikandwa  H/C  II (Mubende)', '', '', 1, NULL, 'Kikandwa  H/C  II (Mubende)', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8428, 'Kyabakara H/C II', '', '', 1, NULL, 'Kyabakara H/C II', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8429, 'Kasawo Mission H/C II', '0753690198', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8431, 'Mc Farland Memorial Medical Centre', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8432, 'SDA H/C III (MBALE)', '0754557983', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8433, 'Kazinga H/C II', '0784380705', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8434, 'KALEGE H/C II', '0776427178', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8435, 'Wansalangi H/C II', '0776644043', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8436, 'St Monica H/C II (Gulu)', 'Okello Samuel', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8437, 'Adventist Medical Center', '0701288035', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8438, 'St Mauritz H/C II', '0782848660', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8439, 'St Charles Medical Center', '0756047796', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8440, 'Bondo Military H/C III', '0775769445', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8441, 'Kampala Hospital', '0772986040', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8442, 'Agule Community H/C III (NGO)', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8443, 'Napumpum H/C II', '', '', 1, NULL, 'Napumpum H/C II', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8444, 'Opuyo H/C II', '0772655878', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8445, 'Kasenyi  H/C II', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8446, 'St Claret H/C II (Nyabwina)', '0775628111', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8447, 'Luru H/C III', '0777456646', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8448, 'Mulago National Referral - Kiruddu Hepatitis Clinic', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8449, 'Above All Medical centre', '', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8450, 'Kakooge H/C II (Buyende)', '', '', 1, NULL, 'Kakooge H/C II (Buyende)', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8451, 'Bbira H/C II', '0781813104', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8452, 'Mulago Pathology Lab', '', '', 1, NULL, 'Mulago Pathology Lab', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8453, 'Bundege H/C II', '0789049777', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8454, 'Nalatoma H/C III', '0787949003', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43'),
(8455, 'Kabembe Health Centre', '0774425734', '', 1, NULL, '', '', '2019-03-21 09:54:43', '2019-03-21 09:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `name`) VALUES
(1, 'Malaria'),
(2, 'Typhoid'),
(3, 'Shigella Dysentry');

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Amikacin', NULL, NULL, '2017-05-31 14:29:37', '2017-05-31 14:29:37'),
(2, 'Ampicillin', NULL, NULL, '2017-05-31 14:29:38', '2017-05-31 14:29:38'),
(3, 'Augmentin', NULL, NULL, '2017-05-31 14:29:38', '2017-05-31 14:29:38'),
(4, 'Cefotaxime', NULL, NULL, '2017-05-31 14:29:38', '2017-05-31 14:29:38'),
(5, 'Ceftazidime', NULL, NULL, '2017-05-31 14:29:38', '2017-05-31 14:29:38'),
(6, 'Ceftriaxone', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(7, 'Ceftizoxime', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(8, 'Cefuroxime', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(9, 'Cefuroxime oral', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(10, 'Chloramphenicol', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(11, 'Ciprofloxacin', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(12, 'Co-trimoxazole', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(13, 'Gentamicin', NULL, NULL, '2017-05-31 14:29:39', '2017-05-31 14:29:39'),
(14, 'Imipenem', NULL, NULL, '2017-05-31 14:29:40', '2017-05-31 14:29:40'),
(15, 'Meropenem', NULL, NULL, '2017-05-31 14:29:40', '2017-05-31 14:29:40'),
(16, 'Nalidixic acid', NULL, NULL, '2017-05-31 14:29:40', '2017-05-31 14:29:40'),
(17, 'Peperacillintazobactam', NULL, NULL, '2017-05-31 14:29:40', '2017-05-31 14:29:40'),
(18, 'Piperacillin', NULL, NULL, '2017-05-31 14:29:40', '2017-05-31 14:29:40'),
(19, 'Nitrofurantoin', NULL, NULL, '2017-05-31 14:29:40', '2017-05-31 14:29:40'),
(20, 'Trimethoprim', NULL, NULL, '2017-05-31 14:29:40', '2017-05-31 14:29:40'),
(21, 'Amoxycillin', NULL, NULL, '2017-05-31 14:29:41', '2017-05-31 14:29:41'),
(22, 'Cefepime', NULL, NULL, '2017-05-31 14:29:41', '2017-05-31 14:29:41'),
(23, 'Colistin', NULL, NULL, '2017-05-31 14:29:42', '2017-05-31 14:29:42'),
(24, 'Tetracycline', NULL, NULL, '2017-05-31 14:29:48', '2017-05-31 14:29:48'),
(25, 'Erythromycin', NULL, NULL, '2017-05-31 14:29:53', '2017-05-31 14:29:53'),
(26, 'Clindamycin', NULL, NULL, '2017-05-31 14:29:53', '2017-05-31 14:29:53'),
(27, 'Vancomycin', NULL, NULL, '2017-05-31 14:29:53', '2017-05-31 14:29:53'),
(28, 'Linezolid', NULL, NULL, '2017-05-31 14:29:53', '2017-05-31 14:29:53'),
(29, 'Penicillin G', NULL, NULL, '2017-05-31 14:29:53', '2017-05-31 14:29:53'),
(30, 'Cefoxitin', NULL, NULL, '2017-05-31 14:29:53', '2017-05-31 14:29:53'),
(31, 'Rifampicin', NULL, NULL, '2017-05-31 14:29:54', '2017-05-31 14:29:54'),
(32, 'Streptomycin', NULL, NULL, '2017-05-31 14:30:05', '2017-05-31 14:30:05'),
(33, 'Minocycline', NULL, NULL, '2017-05-31 14:30:08', '2017-05-31 14:30:08'),
(34, 'Cefexime', NULL, NULL, '2017-05-31 14:30:09', '2017-05-31 14:30:09'),
(35, 'spectinomycin', NULL, NULL, '2017-05-31 14:30:09', '2017-05-31 14:30:09'),
(36, 'Oxacillin', NULL, NULL, '2017-05-31 14:30:21', '2017-05-31 14:30:21'),
(37, 'Levofloxacin', NULL, NULL, '2017-05-31 14:30:54', '2017-05-31 14:30:54'),
(38, 'Cefuroxime Parentral', NULL, NULL, '2017-05-31 14:30:59', '2017-05-31 14:30:59'),
(39, 'High level Gentamicin', NULL, NULL, '2017-05-31 14:31:06', '2017-05-31 14:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `drug_susceptibility`
--

CREATE TABLE `drug_susceptibility` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `drug_id` int(10) UNSIGNED NOT NULL,
  `isolated_organism_id` int(10) UNSIGNED NOT NULL,
  `drug_susceptibility_measure_id` int(10) UNSIGNED NOT NULL,
  `zone_diameter` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drug_susceptibility_measures`
--

CREATE TABLE `drug_susceptibility_measures` (
  `id` int(10) UNSIGNED NOT NULL,
  `symbol` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `interpretation` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drug_susceptibility_measures`
--

INSERT INTO `drug_susceptibility_measures` (`id`, `symbol`, `interpretation`) VALUES
(1, 'S', 'Sensitive'),
(2, 'I', 'Intermediate'),
(3, 'R', 'Resistant');

-- --------------------------------------------------------

--
-- Table structure for table `equip_config`
--

CREATE TABLE `equip_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `equip_id` int(10) UNSIGNED NOT NULL,
  `prop_id` int(10) UNSIGNED NOT NULL,
  `prop_value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `external_dump`
--

CREATE TABLE `external_dump` (
  `id` int(10) UNSIGNED NOT NULL,
  `lab_no` int(11) NOT NULL,
  `parent_lab_no` int(11) NOT NULL,
  `test_id` int(11) DEFAULT NULL,
  `requesting_clinician` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `investigation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provisional_diagnosis` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `request_date` timestamp NULL DEFAULT NULL,
  `order_stage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` text COLLATE utf8_unicode_ci,
  `result_returned` int(11) DEFAULT NULL,
  `patient_visit_number` int(11) DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` datetime DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receipt_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receipt_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `waiver_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `external_users`
--

CREATE TABLE `external_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `internal_user_id` int(10) UNSIGNED NOT NULL,
  `external_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gram_break_points`
--

CREATE TABLE `gram_break_points` (
  `id` int(10) UNSIGNED NOT NULL,
  `drug_id` int(10) UNSIGNED NOT NULL,
  `gram_stain_range_id` int(10) UNSIGNED NOT NULL,
  `resistant_max` decimal(4,1) DEFAULT NULL,
  `intermediate_min` decimal(4,1) DEFAULT NULL,
  `intermediate_max` decimal(4,1) DEFAULT NULL,
  `sensitive_min` decimal(4,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gram_drug_susceptibility`
--

CREATE TABLE `gram_drug_susceptibility` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `drug_id` int(10) UNSIGNED NOT NULL,
  `gram_stain_result_id` int(10) UNSIGNED NOT NULL,
  `drug_susceptibility_measure_id` int(10) UNSIGNED NOT NULL,
  `zone_diameter` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gram_stain_ranges`
--

CREATE TABLE `gram_stain_ranges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gram_stain_ranges`
--

INSERT INTO `gram_stain_ranges` (`id`, `name`) VALUES
(1, 'No organism seen'),
(2, 'Gram positive cocci in singles'),
(3, 'Gram positive cocci in chains'),
(4, 'Gram positive cocci in clusters'),
(5, 'Gram positive diplococci'),
(6, 'Gram positive micrococci'),
(7, 'Gram positive rods'),
(8, 'Gram positive rods with terminal spores'),
(9, 'Gram positive rods with sub-terminal spores'),
(10, 'Gram positive rods with endospores'),
(11, 'Gram negative diplococci'),
(12, 'Gram negative intracellular diplococci'),
(13, 'Gram negative extracellular diplococci'),
(14, 'Gram negative rods'),
(15, 'Gram positive yeast cells'),
(16, 'Gram negative pleomorphic rods'),
(17, '+ Gram positive cocci in singles'),
(18, '+ Gram positive cocci in chains'),
(19, '+ Gram positive cocci in clusters'),
(20, '+ Gram positive diplococci'),
(21, '+ Gram positive micrococci'),
(22, '+ Gram positive rods'),
(23, '+ Gram positive rods with terminal spores'),
(24, '+ Gram positive rods with sub-terminal spores'),
(25, '+ Gram positive rods with endospores'),
(26, '+ Gram negative diplococci'),
(27, '+ Gram negative intracellular diplococci'),
(28, '+ Gram negative extracellular diplococci'),
(29, '+ Gram negative rods'),
(30, '+ Gram positive yeast cells'),
(31, '+ Gram negative pleomorphic rods'),
(32, '++ Gram positive cocci in singles'),
(33, '++ Gram positive cocci in chains'),
(34, '++ Gram positive cocci in clusters'),
(35, '++ Gram positive diplococci'),
(36, '++ Gram positive micrococci'),
(37, '++ Gram positive rods'),
(38, '++ Gram positive rods with terminal spores'),
(39, '++ Gram positive rods with sub-terminal spores'),
(40, '++ Gram positive rods with endospores'),
(41, '++ Gram negative diplococci'),
(42, '++ Gram negative intracellular diplococci'),
(43, '++ Gram negative extracellular diplococci'),
(44, '++ Gram negative rods'),
(45, '++ Gram positive yeast cells'),
(46, '++ Gram negative pleomorphic rods'),
(47, '+++ Gram positive cocci in singles'),
(48, '+++ Gram positive cocci in chains'),
(49, '+++ Gram positive cocci in clusters'),
(50, '+++ Gram positive diplococci'),
(51, '+++ Gram positive micrococci'),
(52, '+++ Gram positive rods'),
(53, '+++ Gram positive rods with terminal spores'),
(54, '+++ Gram positive rods with sub-terminal spores'),
(55, '+++ Gram positive rods with endospores'),
(56, '+++ Gram negative diplococci'),
(57, '+++ Gram negative intracellular diplococci'),
(58, '+++ Gram negative extracellular diplococci'),
(59, '+++ Gram negative rods'),
(60, '+++ Gram positive yeast cells'),
(61, '+++ Gram negative pleomorphic rods');

-- --------------------------------------------------------

--
-- Table structure for table `gram_stain_results`
--

CREATE TABLE `gram_stain_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `gram_stain_range_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hubs`
--

CREATE TABLE `hubs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ii_quickcodes`
--

CREATE TABLE `ii_quickcodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `feed_source` tinyint(4) NOT NULL,
  `config_prop` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instruments`
--

CREATE TABLE `instruments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `driver_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `instruments`
--

INSERT INTO `instruments` (`id`, `name`, `ip`, `hostname`, `description`, `driver_name`, `created_at`, `updated_at`) VALUES
(1, 'Celltac F Mek 8222', '192.168.1.12', 'HEMASERVER', 'Automatic analyzer with 22 parameters and WBC 5 part diff Hematology Analyzer', 'KBLIS\\Plugins\\CelltacFMachine', '2019-03-21 09:33:15', '2019-03-21 09:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `instrument_testtypes`
--

CREATE TABLE `instrument_testtypes` (
  `instrument_id` int(10) UNSIGNED NOT NULL,
  `test_type_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `instrument_testtypes`
--

INSERT INTO `instrument_testtypes` (`instrument_id`, `test_type_id`) VALUES
(1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `interfaced_equipment`
--

CREATE TABLE `interfaced_equipment` (
  `id` int(10) UNSIGNED NOT NULL,
  `equipment_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `comm_type` tinyint(4) NOT NULL,
  `equipment_version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lab_section` int(10) UNSIGNED NOT NULL,
  `feed_source` tinyint(4) NOT NULL,
  `config_file` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `isolated_organisms`
--

CREATE TABLE `isolated_organisms` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `organism_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` int(10) UNSIGNED NOT NULL,
  `receipt_id` int(10) UNSIGNED NOT NULL,
  `topup_request_id` int(10) UNSIGNED NOT NULL,
  `quantity_issued` int(11) NOT NULL,
  `issued_to` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `remarks` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lots`
--

CREATE TABLE `lots` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry` date NOT NULL,
  `instrument_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `measures`
--

CREATE TABLE `measures` (
  `id` int(10) UNSIGNED NOT NULL,
  `measure_type_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `measures`
--

INSERT INTO `measures` (`id`, `measure_type_id`, `name`, `unit`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'BS', '', '', '2013-09-27 23:51:19', '2017-06-25 11:02:49', NULL),
(2, 2, 'Grams stain', '', NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19', NULL),
(3, 2, 'SERUM AMYLASE', '', NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19', NULL),
(4, 2, 'calcium', '', NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19', NULL),
(5, 2, 'SGOT', '', NULL, '2013-09-27 23:51:20', '2013-09-27 23:51:20', NULL),
(6, 2, 'Indirect COOMBS test', '', NULL, '2013-09-27 23:51:20', '2013-09-27 23:51:20', NULL),
(7, 2, 'Direct COOMBS test', '', NULL, '2013-09-27 23:51:20', '2013-09-27 23:51:20', NULL),
(8, 2, 'Du test', '', NULL, '2013-09-27 23:51:20', '2013-09-27 23:51:20', NULL),
(9, 1, 'URIC ACID', 'mg/dl', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(10, 4, 'CSF for biochemistry', '', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(11, 4, 'PSA', '', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(12, 1, 'Total', 'mg/dl', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(13, 1, 'Alkaline Phosphate', 'u/l', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(14, 1, 'Direct', 'mg/dl', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(15, 1, 'Total Proteins', '', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(16, 4, 'LFTS', 'NULL', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(17, 1, 'Chloride', 'mmol/l', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(18, 1, 'Potassium', 'mmol/l', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(19, 1, 'Sodium', 'mmol/l', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(20, 4, 'Electrolytes', '', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(21, 1, 'Creatinine', 'mg/dl', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(22, 1, 'Urea', 'mg/dl', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(23, 4, 'RFTS', '', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(24, 4, 'TFT', '', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(25, 4, 'GXM', '', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(26, 2, 'Blood Grouping', '', NULL, '2013-09-27 23:51:21', '2013-09-27 23:51:21', NULL),
(27, 1, 'HB', 'g/dL', '', '2013-09-27 23:51:22', '2017-06-25 13:28:04', NULL),
(28, 2, 'Appearance', '', '', '2013-09-27 23:51:22', '2017-07-23 10:32:57', NULL),
(29, 2, 'Proteins', '', '', '2013-09-27 23:51:22', '2017-07-23 10:32:58', NULL),
(30, 2, 'Glucose', '', '', '2013-09-27 23:51:22', '2017-07-23 10:32:58', NULL),
(31, 1, 'PH', '', '', '2013-09-27 23:51:22', '2017-07-23 10:32:58', NULL),
(32, 2, 'Blood', '', '', '2013-09-27 23:51:22', '2017-07-23 10:32:58', NULL),
(33, 2, 'Leukocytes', '', '', '2013-09-27 23:51:22', '2017-07-23 10:32:59', NULL),
(34, 2, 'Nitrites', '', '', '2013-09-27 23:51:22', '2017-07-23 10:32:59', NULL),
(35, 2, 'Urobilinogen', '', '', '2013-09-27 23:51:22', '2017-07-23 10:32:59', NULL),
(36, 2, 'Ketones', '', '', '2013-09-27 23:51:22', '2017-07-23 10:33:00', NULL),
(37, 2, 'Bilirubin', '', '', '2013-09-27 23:51:22', '2017-07-23 10:33:00', NULL),
(38, 4, 'Urine chemistry', '', NULL, '2013-09-27 23:51:22', '2013-09-27 23:51:22', NULL),
(39, 4, 'Glucose', '', NULL, '2013-09-27 23:51:23', '2013-09-27 23:51:23', NULL),
(40, 4, 'Ketones', '', NULL, '2013-09-27 23:51:23', '2013-09-27 23:51:23', NULL),
(41, 4, 'Proteins', '', NULL, '2013-09-27 23:51:23', '2013-09-27 23:51:23', NULL),
(42, 4, 'Blood', '', NULL, '2013-09-27 23:51:23', '2013-09-27 23:51:23', NULL),
(43, 4, 'Bilirubin', '', NULL, '2013-09-27 23:51:23', '2013-09-27 23:51:23', NULL),
(44, 4, 'Urobilinogen Phenlpyruvic acid', '', NULL, '2013-09-27 23:51:23', '2013-09-27 23:51:23', NULL),
(45, 4, 'pH', '', NULL, '2013-09-27 23:51:23', '2013-09-27 23:51:23', NULL),
(46, 1, 'WBC', 'x10^6/L', '', '2013-09-27 23:51:23', '2018-06-26 09:54:45', NULL),
(47, 1, 'Lym', 'L', '', '2013-09-27 23:51:23', '2018-06-26 09:54:45', NULL),
(48, 1, 'Mon', '*', '', '2013-09-27 23:51:23', '2018-06-26 09:54:45', NULL),
(49, 1, 'Neu', '*', '', '2013-09-27 23:51:23', '2018-06-26 09:54:45', NULL),
(50, 1, 'Eos', '', '', '2013-09-27 23:51:23', '2018-06-26 09:54:45', NULL),
(51, 1, 'Baso', '', '', '2013-09-27 23:51:23', '2018-06-26 09:54:45', NULL),
(52, 2, 'Salmonella Antigen Test', '', NULL, '2013-09-27 23:51:33', '2013-09-27 23:51:33', NULL),
(53, 2, 'Direct COOMBS Test', '', NULL, '2013-09-27 23:51:33', '2013-09-27 23:51:33', NULL),
(54, 2, 'Du Test', '', NULL, '2013-09-27 23:51:33', '2013-09-27 23:51:33', NULL),
(55, 2, 'Sickling Test', '', NULL, '2013-09-27 23:51:33', '2013-09-27 23:51:33', NULL),
(56, 2, 'Borrelia', '', NULL, '2013-09-27 23:51:33', '2013-09-27 23:51:33', NULL),
(57, 2, 'VDRL', '', NULL, '2013-09-27 23:51:33', '2013-09-27 23:51:33', NULL),
(58, 2, 'Pregnancy Test', '', NULL, '2013-09-27 23:51:33', '2013-09-27 23:51:33', NULL),
(59, 2, 'BAT', '', '', '2013-09-27 23:51:33', '2017-06-25 11:59:39', NULL),
(60, 2, 'H. Pylori', '', '', '2013-09-27 23:51:33', '2017-08-19 19:48:10', NULL),
(61, 4, 'Appearance', '', NULL, '2013-09-27 23:51:38', '2013-09-27 23:51:38', NULL),
(62, 4, 'Gram stain', '', NULL, '2013-09-27 23:51:38', '2013-09-27 23:51:38', NULL),
(63, 4, 'ZN stain', '', NULL, '2013-09-27 23:51:38', '2013-09-27 23:51:38', NULL),
(64, 4, 'Modified ZN', '', NULL, '2013-09-27 23:51:38', '2013-09-27 23:51:38', NULL),
(65, 4, 'Wet Saline Iodine Prep', '', NULL, '2013-09-27 23:51:39', '2013-09-27 23:51:39', NULL),
(66, 4, 'AST', '', NULL, '2013-09-27 23:51:39', '2013-09-27 23:51:39', NULL),
(67, 1, 'WBC', 'x10³/µL', '', '2013-09-27 23:51:48', '2017-06-25 12:02:16', NULL),
(68, 1, 'RBC', 'x10⁶/µL', '', '2013-09-27 23:51:48', '2017-06-25 12:02:17', NULL),
(69, 1, 'HGB', 'g/dL', '', '2013-09-27 23:51:48', '2017-06-25 12:02:17', NULL),
(70, 1, 'HCT', '%', '', '2013-09-27 23:51:48', '2017-06-25 12:02:18', NULL),
(71, 1, 'MCV', 'fL', '', '2013-09-27 23:51:48', '2017-06-25 12:02:18', NULL),
(72, 1, 'MCH', 'pg', '', '2013-09-27 23:51:49', '2017-06-25 12:02:19', NULL),
(73, 1, 'MCHC', 'g/dL', '', '2013-09-27 23:51:49', '2017-06-25 12:02:19', NULL),
(74, 1, 'PLT', 'x10³/µL', '', '2013-09-27 23:51:49', '2017-06-25 12:02:20', NULL),
(75, 1, 'RDW-SD', 'fL', '', '2013-09-27 23:51:49', '2017-06-25 12:02:20', NULL),
(76, 1, 'RDW-CV', '%', '', '2013-09-27 23:51:49', '2017-06-25 12:02:20', NULL),
(77, 1, 'PDW', 'fL', '', '2013-09-27 23:51:49', '2017-06-25 12:02:21', NULL),
(78, 1, 'MPV', 'fL', '', '2013-09-27 23:51:49', '2017-06-25 12:02:21', NULL),
(79, 1, 'P-LCR', '%', '', '2013-09-27 23:51:49', '2017-06-25 12:02:22', NULL),
(80, 1, 'PCT', '%', '', '2013-09-27 23:51:49', '2017-06-25 12:02:22', NULL),
(81, 1, 'NEUT#', 'x10³/µL', '', '2013-09-27 23:51:49', '2017-06-25 12:02:23', NULL),
(82, 1, 'LYMPH#', 'x10³/µL', '', '2013-09-27 23:51:49', '2017-06-25 12:02:23', NULL),
(83, 1, 'MONO#', 'x10³/µL', '', '2013-09-27 23:51:49', '2017-06-25 12:02:23', NULL),
(84, 1, 'EO#', 'x10³/µL', '', '2013-09-27 23:51:49', '2017-06-25 12:02:24', NULL),
(85, 1, 'BASO#', 'x10³/µL', '', '2013-09-27 23:51:49', '2017-06-25 12:02:24', NULL),
(86, 1, 'NEUT%', '%', NULL, '2013-09-27 23:51:49', '2013-09-27 23:51:49', NULL),
(87, 1, 'LYMPH%', '%', NULL, '2013-09-27 23:51:49', '2013-09-27 23:51:49', NULL),
(88, 1, 'MONO%', '%', NULL, '2013-09-27 23:51:49', '2013-09-27 23:51:49', NULL),
(89, 1, 'EO%', '%', NULL, '2013-09-27 23:51:49', '2013-09-27 23:51:49', NULL),
(90, 1, 'BASO%', '%', NULL, '2013-09-27 23:51:49', '2013-09-27 23:51:49', NULL),
(91, 1, 'RBS', 'mmo/l', '', '2017-05-17 12:32:54', '2017-05-17 12:32:54', NULL),
(92, 2, '', '', '', '2017-05-17 14:14:10', '2017-06-25 11:53:04', NULL),
(93, 4, '', '', '', '2017-05-17 14:17:26', '2017-05-17 14:17:26', NULL),
(95, 2, 'RPR', '', '', '2017-05-18 12:42:36', '2017-05-18 12:52:57', NULL),
(96, 4, 'CD4 count', 'cells/ul', '', '2017-05-18 15:10:02', '2017-06-25 12:18:49', NULL),
(97, 4, '', '', '', '2017-06-07 08:49:21', '2017-06-07 08:51:41', NULL),
(98, 2, '', '', '', '2017-06-10 18:35:23', '2017-06-25 13:35:47', NULL),
(99, 2, 'HBSAg', '', '', '2017-06-10 19:04:32', '2017-06-25 13:33:23', NULL),
(100, 2, '', '', '', '2017-06-25 10:06:40', '2017-06-25 10:06:40', NULL),
(101, 2, '', '', '', '2017-06-25 10:59:13', '2017-06-25 14:25:46', NULL),
(102, 2, '', '', '', '2017-06-25 11:43:46', '2017-06-25 11:43:46', NULL),
(103, 4, 'Appearance', '', '', '2017-06-25 11:44:46', '2017-08-19 19:50:31', NULL),
(104, 4, 'CD4%', '%', '', '2017-06-25 12:18:49', '2017-06-25 12:20:22', NULL),
(105, 2, '', '', '', '2017-06-25 12:40:15', '2017-06-25 12:40:15', NULL),
(107, 2, '', '', '', '2017-06-25 12:40:58', '2017-06-25 12:40:58', NULL),
(109, 2, 'MRDT', '', '', '2017-06-25 12:45:32', '2017-06-25 12:45:32', NULL),
(110, 4, '', '', '', '2017-06-27 10:24:46', '2017-06-27 10:24:46', NULL),
(111, 2, 'TPHA', '', '', '2017-07-01 11:45:59', '2017-07-01 11:45:59', NULL),
(112, 1, 'AST', 'u/L', '', '2017-07-14 10:33:23', '2017-07-14 10:33:23', NULL),
(113, 1, 'ALT', 'u/L', '', '2017-07-14 10:38:33', '2017-07-14 10:38:33', NULL),
(114, 1, 'ALB', 'g/dL', '', '2017-07-14 10:38:33', '2017-07-14 10:38:33', NULL),
(115, 1, 'T. Proteins', 'g/dL', '', '2017-07-14 10:38:33', '2017-07-14 10:38:33', NULL),
(116, 1, 'Bil.D', 'umol/L', '', '2017-07-14 10:38:33', '2017-07-14 10:39:28', NULL),
(117, 1, 'Bil.T', 'umol/L', '', '2017-07-14 10:38:33', '2017-07-14 11:08:10', NULL),
(118, 1, 'GGT', 'u/L', '', '2017-07-14 10:38:33', '2017-07-14 10:39:29', NULL),
(119, 1, 'LD', 'u/L', '', '2017-07-14 10:38:33', '2017-07-14 10:39:29', NULL),
(120, 1, 'Creatinine', 'umol/L', '', '2017-07-14 12:29:41', '2017-07-14 12:29:41', NULL),
(121, 1, 'Urea', 'umol/L', '', '2017-07-14 12:29:41', '2017-07-14 12:29:41', NULL),
(122, 1, 'Uric Acid', 'Mg/dl', '', '2017-07-14 12:29:41', '2017-10-28 11:07:34', NULL),
(123, 1, 'Na+', 'mmol/L', '', '2017-07-14 12:37:08', '2017-07-14 12:37:08', NULL),
(124, 1, 'K+', 'mmol/L', '', '2017-07-14 12:37:08', '2017-07-14 12:37:08', NULL),
(125, 1, 'Cl-', 'mmol/L', '', '2017-07-14 12:37:08', '2017-07-14 12:37:08', NULL),
(126, 2, '', '', '', '2017-07-19 13:07:13', '2017-07-19 13:07:13', NULL),
(127, 2, 'CRAG TEST', '', '', '2017-07-22 13:14:01', '2018-01-30 07:45:08', NULL),
(128, 1, 'SG', '', '', '2017-07-23 10:55:44', '2017-07-23 10:55:44', NULL),
(129, 2, 'MICROSCOPY I', '', '', '2017-07-23 10:55:44', '2017-07-23 11:08:32', NULL),
(130, 4, 'MICROSCOPY II', '', '', '2017-07-23 11:08:32', '2017-07-23 11:08:32', NULL),
(131, 2, '', '', '', '2017-07-23 11:54:08', '2017-07-23 11:54:08', NULL),
(132, 2, 'HCG', '', '', '2017-07-29 11:36:22', '2017-08-11 11:18:53', NULL),
(133, 2, 'FM/F-U', '', '', '2017-08-08 08:12:45', '2017-08-08 08:12:45', NULL),
(134, 2, 'BAT', '', '', '2017-08-17 07:37:30', '2017-08-17 07:37:30', NULL),
(136, 1, 'FBS/FBG', 'MMol/L', '', '2017-08-19 06:38:25', '2017-08-19 06:38:25', NULL),
(137, 2, '', '', '', '2017-08-26 10:29:26', '2017-08-26 10:29:26', NULL),
(138, 1, '', '', '', '2017-08-26 10:30:30', '2017-08-26 10:30:30', NULL),
(139, 4, 'CD8 Abs', 'cells/ul', '', '2017-09-21 16:43:26', '2017-09-21 16:43:26', NULL),
(140, 4, 'CD8%', '%', '', '2017-09-21 16:43:26', '2017-09-21 16:43:26', NULL),
(141, 4, 'CD45+ Abs', 'cells/ul', '', '2017-09-21 16:43:26', '2017-09-21 16:43:26', NULL),
(142, 4, 'gram stain', '', '', '2017-09-27 12:01:36', '2017-09-27 12:01:36', NULL),
(143, 4, 'culture', '', '', '2017-09-27 12:02:23', '2017-09-27 12:02:23', NULL),
(144, 4, '', '', '', '2017-11-15 16:08:54', '2017-11-15 16:08:54', NULL),
(145, 1, '', 'mmol/l', '', '2017-11-15 16:19:14', '2017-11-15 16:19:14', NULL),
(146, 4, 'Apearance', '', '', '2017-11-19 18:16:59', '2017-11-19 18:16:59', NULL),
(147, 1, 'volume', 'mls', '', '2017-11-19 18:16:59', '2017-11-19 18:16:59', NULL),
(148, 1, 'Liquefaction', 'Mins', '', '2017-11-19 18:17:00', '2017-11-19 18:17:00', NULL),
(149, 1, 'PH', '', '', '2017-11-19 18:17:00', '2017-11-19 18:17:00', NULL),
(150, 1, 'Sperm Density', 'Millions', '', '2017-11-19 18:44:46', '2017-11-19 19:00:26', NULL),
(151, 1, 'Morphology', '%', '', '2017-11-19 18:44:46', '2017-11-19 19:02:11', NULL),
(152, 2, 'Sperm Motility', '', '', '2017-11-19 18:44:46', '2017-11-19 18:44:46', NULL),
(153, 4, 'Macro:', '', '', '2017-12-07 15:00:54', '2018-02-28 12:17:40', NULL),
(154, 1, '', 'copies/ml', '', '2017-12-07 15:13:16', '2017-12-07 15:13:16', NULL),
(155, 1, '', 'IU/ml', '', '2017-12-07 15:22:41', '2018-03-28 20:52:36', NULL),
(156, 2, '', '', '', '2017-12-15 09:32:45', '2017-12-15 09:32:45', NULL),
(157, 4, 'Specific Gravity', '', '', '2018-01-08 13:24:10', '2018-01-08 13:24:10', NULL),
(158, 4, '', '', '', '2018-01-23 12:46:16', '2018-01-23 12:46:16', NULL),
(159, 4, '', '', '', '2018-01-28 12:24:35', '2018-01-28 12:24:35', NULL),
(160, 4, 'Quality Control (QC)', '', '', '2018-02-02 11:36:17', '2018-02-02 11:36:17', NULL),
(161, 4, 'Microscopy', '', '', '2018-02-28 12:16:39', '2018-02-28 12:17:40', NULL),
(162, 2, 'Rhaumatoid Factor', '', '', '2018-04-29 13:30:51', '2018-04-29 13:30:51', NULL),
(163, 2, 'Rhaumatoid Factor', '', '', '2018-04-29 13:30:51', '2018-04-29 13:30:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `measure_name_mappings`
--

CREATE TABLE `measure_name_mappings` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_name_mapping_id` int(10) UNSIGNED NOT NULL,
  `measure_id` int(10) UNSIGNED DEFAULT NULL,
  `standard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `system_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `measure_name_mappings`
--

INSERT INTO `measure_name_mappings` (`id`, `test_name_mapping_id`, `measure_id`, `standard_name`, `system_name`) VALUES
(1, 1, NULL, 'WBC', 'wbc'),
(2, 1, NULL, 'RBC', 'rbc'),
(3, 1, NULL, 'hgb', 'hgb'),
(4, 2, NULL, 'Hb', 'hb'),
(5, 3, NULL, 'ESR', 'esr'),
(6, 4, NULL, 'Bleeding time', 'bleeding_time'),
(7, 5, NULL, 'Prothrombin Time', 'prothrombin_time'),
(8, 6, NULL, 'Clotting Time', 'clotting_time'),
(9, 7, NULL, 'ABO Grouping', 'abo_grouping'),
(10, 8, NULL, 'Combs', 'combs'),
(11, 9, NULL, 'Cross Matching', 'cross_matching'),
(12, 10, NULL, 'Malaria Microscopy', 'malaria_microscopy'),
(13, 11, NULL, 'Malaria RDTs', 'malaria_rdts'),
(14, 12, NULL, 'Stool Microscopy', 'stool_microscopy'),
(15, 13, NULL, 'VDRL/RPR', 'vdrl_rpr'),
(16, 14, NULL, 'TPHA', 'tpha'),
(17, 15, NULL, 'Shigella Dysentery', 'shigella_dysentery'),
(18, 16, NULL, 'Hepatitis B', 'hepatitis_b'),
(19, 17, NULL, 'Brucella', 'brucella'),
(20, 18, NULL, 'Pregnancy Test', 'pregnancy_test'),
(21, 19, NULL, 'Rheumatoid Factor', 'rheumatoid_factor'),
(22, 20, NULL, 'CD4 tests', 'cd4_tests'),
(23, 21, NULL, 'Viral Load Tests', 'viral_load_tests'),
(24, 22, NULL, 'ZN for AFBs', 'zn_for_afbs'),
(25, 23, NULL, 'Culture & Sensitivity', 'culture_sensitivity'),
(26, 24, NULL, 'Gram Stain', 'gram_stain'),
(27, 25, NULL, 'India Ink', 'india_ink'),
(28, 26, NULL, 'Wet Preps', 'wet_preps'),
(29, 27, NULL, 'Urine Microscopy', 'urine_microscopy'),
(30, 28, NULL, 'Urea', 'urea'),
(31, 28, NULL, 'Calcium', 'calcium'),
(32, 28, NULL, 'Potassium', 'potassium'),
(33, 28, NULL, 'Sodium', 'sodium'),
(34, 28, NULL, 'Creatinine', 'creatinine'),
(35, 29, NULL, 'ALT', 'alt'),
(36, 29, NULL, 'AST', 'ast'),
(37, 29, NULL, 'Albumin', 'albumin'),
(38, 29, NULL, 'Total Protein', 'total_protein'),
(39, 30, NULL, 'Triglycerides', 'triglycerides'),
(40, 30, NULL, 'Cholesterol', 'cholesterol'),
(41, 30, NULL, 'CK', 'ck'),
(42, 30, NULL, 'LDH', 'ldh'),
(43, 30, NULL, 'HDL', 'hdl'),
(44, 31, NULL, 'Alkaline Phosphates', 'alkaline_phosphates'),
(45, 32, NULL, 'Amylase', 'amylase'),
(46, 33, NULL, 'Glucose', 'glucose'),
(47, 34, NULL, 'Uric Acid', 'uric_acid'),
(48, 35, NULL, 'Lactate', 'lactate'),
(49, 36, NULL, 'Determine', 'determine'),
(50, 36, NULL, 'Stat-pak', 'stat_pak'),
(51, 36, NULL, 'Unigold', 'unigold');

-- --------------------------------------------------------

--
-- Table structure for table `measure_ranges`
--

CREATE TABLE `measure_ranges` (
  `id` int(10) UNSIGNED NOT NULL,
  `measure_id` int(10) UNSIGNED NOT NULL,
  `age_min` decimal(8,2) DEFAULT NULL,
  `age_max` decimal(8,2) DEFAULT NULL,
  `gender` tinyint(3) UNSIGNED DEFAULT NULL,
  `range_lower` decimal(7,3) DEFAULT NULL,
  `range_upper` decimal(7,3) DEFAULT NULL,
  `alphanumeric` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interpretation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `result_interpretation_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `measure_ranges`
--

INSERT INTO `measure_ranges` (`id`, `measure_id`, `age_min`, `age_max`, `gender`, `range_lower`, `range_upper`, `alphanumeric`, `interpretation`, `deleted_at`, `result_interpretation_id`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, 'No mps seen', 'Negative', NULL, NULL),
(2, 1, NULL, NULL, NULL, NULL, NULL, 'mps + seen ', 'Positive', NULL, NULL),
(3, 1, NULL, NULL, NULL, NULL, NULL, 'mps ++ seen ', 'Positive', NULL, NULL),
(4, 1, NULL, NULL, NULL, NULL, NULL, 'mps +++ seen', 'Positive', NULL, NULL),
(5, 2, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(6, 2, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(7, 3, NULL, NULL, NULL, NULL, NULL, 'Low', NULL, NULL, NULL),
(8, 3, NULL, NULL, NULL, NULL, NULL, 'High', NULL, NULL, NULL),
(9, 3, NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, NULL, NULL),
(10, 4, NULL, NULL, NULL, NULL, NULL, 'High', NULL, NULL, NULL),
(11, 4, NULL, NULL, NULL, NULL, NULL, 'Low', NULL, NULL, NULL),
(12, 4, NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, NULL, NULL),
(13, 5, NULL, NULL, NULL, NULL, NULL, 'High', NULL, NULL, NULL),
(14, 5, NULL, NULL, NULL, NULL, NULL, 'Low', NULL, NULL, NULL),
(15, 5, NULL, NULL, NULL, NULL, NULL, 'Normal', NULL, NULL, NULL),
(16, 6, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(17, 6, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(18, 7, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(19, 7, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(20, 8, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(21, 8, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(22, 26, NULL, NULL, NULL, NULL, NULL, 'O-', NULL, NULL, NULL),
(23, 26, NULL, NULL, NULL, NULL, NULL, 'O+', NULL, NULL, NULL),
(24, 26, NULL, NULL, NULL, NULL, NULL, 'A-', NULL, NULL, NULL),
(25, 26, NULL, NULL, NULL, NULL, NULL, 'A+', NULL, NULL, NULL),
(26, 26, NULL, NULL, NULL, NULL, NULL, 'B-', NULL, NULL, NULL),
(27, 26, NULL, NULL, NULL, NULL, NULL, 'B+', NULL, NULL, NULL),
(28, 26, NULL, NULL, NULL, NULL, NULL, 'AB-', NULL, NULL, NULL),
(29, 26, NULL, NULL, NULL, NULL, NULL, 'AB+', NULL, NULL, NULL),
(30, 46, '0.00', '100.00', 2, '4.000', '11.000', NULL, '', NULL, NULL),
(31, 47, '0.00', '100.00', 2, '1.500', '4.000', NULL, '', NULL, NULL),
(32, 48, '0.00', '100.00', 2, '0.100', '9.000', NULL, '', NULL, NULL),
(33, 49, '0.00', '100.00', 2, '2.500', '7.000', NULL, '', NULL, NULL),
(34, 50, '0.00', '100.00', 2, '0.000', '6.000', NULL, '', NULL, NULL),
(35, 51, '0.00', '100.00', 2, '0.000', '2.000', NULL, '', NULL, NULL),
(36, 52, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(37, 52, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(38, 53, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(39, 53, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(40, 54, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(41, 54, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(42, 55, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(43, 55, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(44, 56, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(45, 56, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(46, 57, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(47, 57, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(48, 58, NULL, NULL, NULL, NULL, NULL, 'Positive', NULL, NULL, NULL),
(49, 58, NULL, NULL, NULL, NULL, NULL, 'Negative', NULL, NULL, NULL),
(50, 59, NULL, NULL, NULL, NULL, NULL, 'REACTIVE', 'NEGATIVE ', NULL, NULL),
(51, 59, NULL, NULL, NULL, NULL, NULL, 'NON REACTIVE ', 'POSITIVE', NULL, NULL),
(52, 60, NULL, NULL, NULL, NULL, NULL, 'Positive', '', NULL, NULL),
(53, 60, NULL, NULL, NULL, NULL, NULL, 'Negative', '', NULL, NULL),
(54, 67, '0.00', '0.02', 2, '3.000', '15.000', NULL, '', NULL, NULL),
(55, 67, '0.02', '0.08', 2, '3.000', '15.000', NULL, '', NULL, NULL),
(56, 67, '0.08', '1.00', 2, '3.000', '15.000', NULL, '', NULL, NULL),
(57, 67, '1.00', '12.00', 2, '3.000', '15.000', NULL, '', NULL, NULL),
(58, 67, '12.00', '60.00', 0, '3.000', '15.000', NULL, '', NULL, NULL),
(59, 67, '12.00', '60.00', 1, '4.000', '11.000', NULL, '', NULL, NULL),
(60, 67, '60.00', '999.00', 2, '3.000', '15.000', NULL, '', NULL, NULL),
(61, 68, '0.00', '0.02', 2, '2.500', '5.500', NULL, '', NULL, NULL),
(62, 68, '0.02', '0.08', 2, '2.500', '5.500', NULL, '', NULL, NULL),
(63, 68, '0.08', '1.00', 2, '2.500', '5.500', NULL, '', NULL, NULL),
(64, 68, '1.00', '12.00', 2, '2.500', '5.500', NULL, '', NULL, NULL),
(65, 68, '12.00', '60.00', 0, '2.500', '5.500', NULL, '', NULL, NULL),
(66, 68, '12.00', '60.00', 1, '2.500', '5.500', NULL, '', NULL, NULL),
(67, 68, '60.00', '999.00', 2, '2.500', '5.500', NULL, '', NULL, NULL),
(68, 69, '0.00', '0.02', 2, '12.000', '16.000', NULL, '', NULL, NULL),
(69, 69, '0.02', '0.08', 2, '8.000', '17.000', NULL, '', NULL, NULL),
(70, 69, '0.08', '1.00', 2, '8.000', '17.000', NULL, '', NULL, NULL),
(71, 69, '1.00', '12.00', 2, '8.000', '17.000', NULL, '', NULL, NULL),
(72, 69, '12.00', '60.00', 0, '13.000', '17.000', NULL, '', NULL, NULL),
(73, 69, '12.00', '60.00', 1, '12.000', '14.000', NULL, '', NULL, NULL),
(74, 69, '60.00', '999.00', 2, '8.000', '17.000', NULL, '', NULL, NULL),
(75, 70, '0.00', '0.02', 2, '26.000', '50.000', NULL, '', NULL, NULL),
(76, 70, '0.02', '0.08', 2, '26.000', '50.000', NULL, '', NULL, NULL),
(77, 70, '0.08', '1.00', 2, '26.000', '50.000', NULL, '', NULL, NULL),
(78, 70, '1.00', '12.00', 2, '26.000', '50.000', NULL, '', NULL, NULL),
(79, 70, '12.00', '60.00', 0, '26.000', '50.000', NULL, '', NULL, NULL),
(80, 70, '12.00', '60.00', 1, '26.000', '50.000', NULL, '', NULL, NULL),
(81, 70, '60.00', '999.00', 2, '26.000', '50.000', NULL, '', NULL, NULL),
(82, 71, '0.00', '0.02', 2, '86.000', '110.000', NULL, '', NULL, NULL),
(83, 71, '0.02', '0.08', 2, '86.000', '110.000', NULL, '', NULL, NULL),
(84, 71, '0.08', '1.00', 2, '86.000', '110.000', NULL, '', NULL, NULL),
(85, 71, '1.00', '12.00', 2, '86.000', '110.000', NULL, '', NULL, NULL),
(86, 71, '12.00', '60.00', 0, '86.000', '110.000', NULL, '', NULL, NULL),
(87, 71, '12.00', '60.00', 1, '86.000', '110.000', NULL, '', NULL, NULL),
(88, 71, '60.00', '999.00', 2, '86.000', '110.000', NULL, '', NULL, NULL),
(89, 72, '0.00', '0.02', 2, '26.000', '38.000', NULL, '', NULL, NULL),
(90, 72, '0.02', '0.08', 2, '26.000', '38.000', NULL, '', NULL, NULL),
(91, 72, '0.08', '1.00', 2, '26.000', '38.000', NULL, '', NULL, NULL),
(92, 72, '1.00', '12.00', 2, '26.000', '38.000', NULL, '', NULL, NULL),
(93, 72, '12.00', '60.00', 0, '26.000', '38.000', NULL, '', NULL, NULL),
(94, 72, '12.00', '60.00', 1, '26.000', '38.000', NULL, '', NULL, NULL),
(95, 72, '60.00', '999.00', 2, '26.000', '38.000', NULL, '', NULL, NULL),
(96, 73, '0.00', '0.02', 2, '31.000', '37.000', NULL, '', NULL, NULL),
(97, 73, '0.02', '0.08', 2, '31.000', '37.000', NULL, '', NULL, NULL),
(98, 73, '0.08', '1.00', 2, '31.000', '37.000', NULL, '', NULL, NULL),
(99, 73, '1.00', '12.00', 2, '31.000', '37.000', NULL, '', NULL, NULL),
(100, 73, '12.00', '60.00', 0, '31.000', '37.000', NULL, '', NULL, NULL),
(101, 73, '12.00', '60.00', 1, '31.000', '37.000', NULL, '', NULL, NULL),
(102, 73, '60.00', '999.00', 2, '31.000', '37.000', NULL, '', NULL, NULL),
(103, 74, '0.00', '0.02', 2, '50.000', '400.000', NULL, '', NULL, NULL),
(104, 74, '0.02', '0.08', 2, '50.000', '400.000', NULL, '', NULL, NULL),
(105, 74, '0.08', '1.00', 2, '50.000', '400.000', NULL, '', NULL, NULL),
(106, 74, '1.00', '12.00', 2, '50.000', '400.000', NULL, '', NULL, NULL),
(107, 74, '12.00', '60.00', 0, '50.000', '400.000', NULL, '', NULL, NULL),
(108, 74, '12.00', '60.00', 1, '50.000', '400.000', NULL, '', NULL, NULL),
(109, 74, '60.00', '999.00', 2, '50.000', '400.000', NULL, '', NULL, NULL),
(110, 75, '0.00', '0.02', 2, '37.000', '54.000', NULL, '', NULL, NULL),
(111, 75, '0.02', '0.08', 2, '37.000', '54.000', NULL, '', NULL, NULL),
(112, 75, '0.08', '1.00', 2, '37.000', '54.000', NULL, '', NULL, NULL),
(113, 75, '1.00', '12.00', 2, '37.000', '54.000', NULL, '', NULL, NULL),
(114, 75, '12.00', '60.00', 0, '37.000', '54.000', NULL, '', NULL, NULL),
(115, 75, '12.00', '60.00', 1, '37.000', '54.000', NULL, '', NULL, NULL),
(116, 75, '60.00', '999.00', 2, '37.000', '54.000', NULL, '', NULL, NULL),
(117, 76, '0.00', '0.02', 2, '11.000', '16.000', NULL, '', NULL, NULL),
(118, 76, '0.02', '0.08', 2, '11.000', '16.000', NULL, '', NULL, NULL),
(119, 76, '0.08', '1.00', 2, '11.000', '16.000', NULL, '', NULL, NULL),
(120, 76, '1.00', '12.00', 2, '11.000', '16.000', NULL, '', NULL, NULL),
(121, 76, '12.00', '60.00', 0, '11.000', '16.000', NULL, '', NULL, NULL),
(122, 76, '12.00', '60.00', 1, '11.000', '16.000', NULL, '', NULL, NULL),
(123, 76, '60.00', '999.00', 2, '11.000', '16.000', NULL, '', NULL, NULL),
(124, 77, '0.00', '0.02', 2, '9.000', '17.000', NULL, '', NULL, NULL),
(125, 77, '0.02', '0.08', 2, '9.000', '17.000', NULL, '', NULL, NULL),
(126, 77, '0.08', '1.00', 2, '9.000', '17.000', NULL, '', NULL, NULL),
(127, 77, '1.00', '12.00', 2, '9.000', '17.000', NULL, '', NULL, NULL),
(128, 77, '12.00', '60.00', 0, '9.000', '17.000', NULL, '', NULL, NULL),
(129, 77, '12.00', '60.00', 1, '9.000', '17.000', NULL, '', NULL, NULL),
(130, 77, '60.00', '999.00', 2, '9.000', '17.000', NULL, '', NULL, NULL),
(131, 78, '0.00', '0.02', 2, '9.000', '13.000', NULL, '', NULL, NULL),
(132, 78, '0.02', '0.08', 2, '9.000', '13.000', NULL, '', NULL, NULL),
(133, 78, '0.08', '1.00', 2, '9.000', '13.000', NULL, '', NULL, NULL),
(134, 78, '1.00', '12.00', 2, '9.000', '13.000', NULL, '', NULL, NULL),
(135, 78, '12.00', '60.00', 0, '9.000', '13.000', NULL, '', NULL, NULL),
(136, 78, '12.00', '60.00', 1, '9.000', '13.000', NULL, '', NULL, NULL),
(137, 78, '60.00', '999.00', 2, '9.000', '13.000', NULL, '', NULL, NULL),
(138, 79, '0.00', '0.02', 2, '13.000', '43.000', NULL, '', NULL, NULL),
(139, 79, '0.02', '0.08', 2, '13.000', '43.000', NULL, '', NULL, NULL),
(140, 79, '0.08', '1.00', 2, '13.000', '43.000', NULL, '', NULL, NULL),
(141, 79, '1.00', '12.00', 2, '13.000', '43.000', NULL, '', NULL, NULL),
(142, 79, '12.00', '60.00', 0, '13.000', '43.000', NULL, '', NULL, NULL),
(143, 79, '12.00', '60.00', 1, '13.000', '43.000', NULL, '', NULL, NULL),
(144, 79, '60.00', '999.00', 2, '13.000', '43.000', NULL, '', NULL, NULL),
(145, 80, '0.00', '0.02', 2, '0.170', '0.350', NULL, '', NULL, NULL),
(146, 80, '0.02', '0.08', 2, '0.170', '0.350', NULL, '', NULL, NULL),
(147, 80, '0.08', '1.00', 2, '0.170', '0.350', NULL, '', NULL, NULL),
(148, 80, '1.00', '12.00', 2, '0.170', '0.350', NULL, '', NULL, NULL),
(149, 80, '12.00', '60.00', 0, '0.170', '0.350', NULL, '', NULL, NULL),
(150, 80, '12.00', '60.00', 1, '0.170', '0.350', NULL, '', NULL, NULL),
(151, 80, '60.00', '999.00', 2, '0.170', '0.350', NULL, '', NULL, NULL),
(152, 81, '0.00', '0.02', 2, '1.500', '7.000', NULL, '', NULL, NULL),
(153, 81, '0.02', '0.08', 2, '1.500', '7.000', NULL, '', NULL, NULL),
(154, 81, '0.08', '1.00', 2, '1.500', '7.000', NULL, '', NULL, NULL),
(155, 81, '1.00', '12.00', 2, '1.500', '7.000', NULL, '', NULL, NULL),
(156, 81, '12.00', '60.00', 0, '1.500', '7.000', NULL, '', NULL, NULL),
(157, 81, '12.00', '60.00', 1, '1.500', '7.000', NULL, '', NULL, NULL),
(158, 81, '60.00', '999.00', 2, '1.500', '7.000', NULL, '', NULL, NULL),
(159, 82, '0.00', '0.02', 2, '1.000', '3.700', NULL, '', NULL, NULL),
(160, 82, '0.02', '0.08', 2, '1.000', '3.700', NULL, '', NULL, NULL),
(161, 82, '0.08', '1.00', 2, '1.000', '3.700', NULL, '', NULL, NULL),
(162, 82, '1.00', '12.00', 2, '1.000', '3.700', NULL, '', NULL, NULL),
(163, 82, '12.00', '60.00', 0, '1.000', '3.700', NULL, '', NULL, NULL),
(164, 82, '12.00', '60.00', 1, '1.000', '3.700', NULL, '', NULL, NULL),
(165, 82, '60.00', '999.00', 2, '1.000', '3.700', NULL, '', NULL, NULL),
(166, 83, '0.00', '0.02', 2, '0.000', '0.700', NULL, '', NULL, NULL),
(167, 83, '0.02', '0.08', 2, '0.000', '0.700', NULL, '', NULL, NULL),
(168, 83, '0.08', '1.00', 2, '0.000', '0.700', NULL, '', NULL, NULL),
(169, 83, '1.00', '12.00', 2, '0.000', '0.700', NULL, '', NULL, NULL),
(170, 83, '12.00', '60.00', 0, '0.000', '0.700', NULL, '', NULL, NULL),
(171, 83, '12.00', '60.00', 1, '0.000', '0.700', NULL, '', NULL, NULL),
(172, 83, '60.00', '999.00', 2, '0.000', '0.700', NULL, '', NULL, NULL),
(173, 84, '0.00', '0.02', 2, '0.000', '0.400', NULL, '', NULL, NULL),
(174, 84, '0.02', '0.08', 2, '0.000', '0.400', NULL, '', NULL, NULL),
(175, 84, '0.08', '1.00', 2, '0.000', '0.400', NULL, '', NULL, NULL),
(176, 84, '1.00', '12.00', 2, '0.000', '0.400', NULL, '', NULL, NULL),
(177, 84, '12.00', '60.00', 0, '0.000', '0.400', NULL, '', NULL, NULL),
(178, 84, '12.00', '60.00', 1, '0.000', '0.400', NULL, '', NULL, NULL),
(179, 84, '60.00', '999.00', 2, '0.000', '0.400', NULL, '', NULL, NULL),
(180, 85, '0.00', '0.02', 2, '0.000', '0.100', NULL, '', NULL, NULL),
(181, 85, '0.02', '0.08', 2, '0.000', '0.100', NULL, '', NULL, NULL),
(182, 85, '0.08', '1.00', 2, '0.000', '0.100', NULL, '', NULL, NULL),
(183, 85, '1.00', '12.00', 2, '0.000', '0.100', NULL, '', NULL, NULL),
(184, 85, '12.00', '60.00', 0, '0.000', '0.100', NULL, '', NULL, NULL),
(185, 85, '12.00', '60.00', 1, '0.000', '0.100', NULL, NULL, NULL, NULL),
(186, 85, '60.00', '999.00', 2, '0.000', '0.100', NULL, NULL, NULL, NULL),
(187, 86, '0.00', '0.02', 2, '37.000', '72.000', NULL, NULL, NULL, NULL),
(188, 86, '0.02', '0.08', 2, '37.000', '72.000', NULL, NULL, NULL, NULL),
(189, 86, '0.08', '1.00', 2, '37.000', '72.000', NULL, NULL, NULL, NULL),
(190, 86, '1.00', '12.00', 2, '37.000', '72.000', NULL, NULL, NULL, NULL),
(191, 86, '12.00', '60.00', 0, '37.000', '72.000', NULL, NULL, NULL, NULL),
(192, 86, '12.00', '60.00', 1, '37.000', '72.000', NULL, NULL, NULL, NULL),
(193, 86, '60.00', '999.00', 2, '37.000', '72.000', NULL, NULL, NULL, NULL),
(194, 87, '0.00', '0.02', 2, '20.000', '50.000', NULL, NULL, NULL, NULL),
(195, 87, '0.02', '0.08', 2, '20.000', '50.000', NULL, NULL, NULL, NULL),
(196, 87, '0.08', '1.00', 2, '20.000', '50.000', NULL, NULL, NULL, NULL),
(197, 87, '1.00', '12.00', 2, '20.000', '50.000', NULL, NULL, NULL, NULL),
(198, 87, '12.00', '60.00', 0, '20.000', '50.000', NULL, NULL, NULL, NULL),
(199, 87, '12.00', '60.00', 1, '20.000', '50.000', NULL, NULL, NULL, NULL),
(200, 87, '60.00', '999.00', 2, '20.000', '50.000', NULL, NULL, NULL, NULL),
(201, 88, '0.00', '0.02', 2, '0.000', '14.000', NULL, NULL, NULL, NULL),
(202, 88, '0.02', '0.08', 2, '0.000', '14.000', NULL, NULL, NULL, NULL),
(203, 88, '0.08', '1.00', 2, '0.000', '14.000', NULL, NULL, NULL, NULL),
(204, 88, '1.00', '12.00', 2, '0.000', '14.000', NULL, NULL, NULL, NULL),
(205, 88, '12.00', '60.00', 0, '0.000', '14.000', NULL, NULL, NULL, NULL),
(206, 88, '12.00', '60.00', 1, '0.000', '14.000', NULL, NULL, NULL, NULL),
(207, 88, '60.00', '999.00', 2, '0.000', '14.000', NULL, NULL, NULL, NULL),
(208, 89, '0.00', '0.02', 2, '0.000', '6.000', NULL, NULL, NULL, NULL),
(209, 89, '0.02', '0.08', 2, '0.000', '6.000', NULL, NULL, NULL, NULL),
(210, 89, '0.08', '1.00', 2, '0.000', '6.000', NULL, NULL, NULL, NULL),
(211, 89, '1.00', '12.00', 2, '0.000', '6.000', NULL, NULL, NULL, NULL),
(212, 89, '12.00', '60.00', 0, '0.000', '6.000', NULL, NULL, NULL, NULL),
(213, 89, '12.00', '60.00', 1, '0.000', '6.000', NULL, NULL, NULL, NULL),
(214, 89, '60.00', '999.00', 2, '0.000', '6.000', NULL, NULL, NULL, NULL),
(215, 90, '0.00', '0.02', 2, '0.000', '1.000', NULL, NULL, NULL, NULL),
(216, 90, '0.02', '0.08', 2, '0.000', '1.000', NULL, NULL, NULL, NULL),
(217, 90, '0.08', '1.00', 2, '0.000', '1.000', NULL, NULL, NULL, NULL),
(218, 90, '1.00', '12.00', 2, '0.000', '1.000', NULL, NULL, NULL, NULL),
(219, 90, '12.00', '60.00', 0, '0.000', '1.000', NULL, NULL, NULL, NULL),
(220, 90, '12.00', '60.00', 1, '0.000', '1.000', NULL, NULL, NULL, NULL),
(221, 90, '60.00', '999.00', 2, '0.000', '1.000', NULL, NULL, NULL, NULL),
(222, 91, '0.00', '120.00', 2, '3.700', '6.700', NULL, 'Normal', '2017-07-18 10:20:25', NULL),
(223, 91, '0.00', '120.00', 2, '7.000', '45.000', NULL, 'High', '2017-07-18 10:20:25', NULL),
(224, 95, NULL, NULL, NULL, NULL, NULL, 'Reactive', 'Positive', NULL, NULL),
(225, 95, NULL, NULL, NULL, NULL, NULL, 'Non Reactive ', 'Negative', NULL, NULL),
(226, 100, NULL, NULL, NULL, NULL, NULL, 'No AFB Seen', '', NULL, NULL),
(227, 100, NULL, NULL, NULL, NULL, NULL, 'AFB + Seen ', '', NULL, NULL),
(228, 100, NULL, NULL, NULL, NULL, NULL, 'AFB ++ Seen', '', NULL, NULL),
(229, 100, NULL, NULL, NULL, NULL, NULL, 'AFB +++ seen', '', NULL, NULL),
(230, 101, NULL, NULL, NULL, NULL, NULL, 'REACTIVE ', 'POSITIVE', NULL, NULL),
(231, 101, NULL, NULL, NULL, NULL, NULL, 'NON-REACTIVE', 'NEGATIVE', NULL, NULL),
(232, 102, NULL, NULL, NULL, NULL, NULL, 'NEGATIVE', '', NULL, NULL),
(233, 102, NULL, NULL, NULL, NULL, NULL, 'POSITIVE ', '', NULL, NULL),
(234, 92, NULL, NULL, NULL, NULL, NULL, 'BLOOD GROUP A RhD POSITIVE', '', NULL, NULL),
(235, 92, NULL, NULL, NULL, NULL, NULL, 'BLOOD GROUP B RhD POSITIVE', '', NULL, NULL),
(236, 92, NULL, NULL, NULL, NULL, NULL, 'BLOOD GROUP AB RhD POSITIVE ', '', NULL, NULL),
(237, 92, NULL, NULL, NULL, NULL, NULL, 'BLOOD GROUP O RhD POSITIVE', '', NULL, NULL),
(238, 92, NULL, NULL, NULL, NULL, NULL, 'BLOOD GROUP O RhD NEGATIVE', '', NULL, NULL),
(239, 92, NULL, NULL, NULL, NULL, NULL, 'BLOOD GROUP A RhD NEGATIVE', '', NULL, NULL),
(240, 92, NULL, NULL, NULL, NULL, NULL, 'BLOOD GROUP B RhD NEGATIVE ', '', NULL, NULL),
(241, 92, NULL, NULL, NULL, NULL, NULL, 'BLOOD GROUP AB RhD NEGATIVE', '', NULL, NULL),
(242, 104, '0.00', '120.00', 2, '1.000', '100.000', NULL, '', '2017-06-25 12:20:22', NULL),
(243, 105, NULL, NULL, NULL, NULL, NULL, 'Bacterial Growth Occured After 5days of incubation', '', NULL, NULL),
(244, 105, NULL, NULL, NULL, NULL, NULL, 'No Bacterial Growth After 5days incubation', '', NULL, NULL),
(245, 107, NULL, NULL, NULL, NULL, NULL, 'Bacterial Growth Occured After 5days of incubation', '', NULL, NULL),
(246, 107, NULL, NULL, NULL, NULL, NULL, 'No Bacterial Growth After 5days incubation', '', NULL, NULL),
(247, 109, NULL, NULL, NULL, NULL, NULL, 'NEGATIVE', '', NULL, NULL),
(248, 109, NULL, NULL, NULL, NULL, NULL, 'POSITIVE', '', NULL, NULL),
(249, 27, '10.00', '120.00', 0, '12.500', '17.500', NULL, '', NULL, NULL),
(250, 27, '10.00', '120.00', 1, '11.500', '16.000', NULL, '', NULL, NULL),
(251, 27, '0.00', '1.00', 2, '13.500', '22.500', NULL, '', NULL, NULL),
(252, 27, '1.00', '5.00', 2, '11.500', '16.500', NULL, '', NULL, NULL),
(253, 27, '6.00', '10.00', 2, '10.500', '15.500', NULL, '', NULL, NULL),
(254, 99, NULL, NULL, NULL, NULL, NULL, 'NEGATIVE', 'NEG', NULL, NULL),
(255, 99, NULL, NULL, NULL, NULL, NULL, 'POSITIVE', 'POS', NULL, NULL),
(256, 98, NULL, NULL, NULL, NULL, NULL, 'NON REACTIVE ', 'NEGATIVE ', NULL, NULL),
(257, 98, NULL, NULL, NULL, NULL, NULL, 'REACTIVE ', 'POSITIVE', NULL, NULL),
(258, 111, NULL, NULL, NULL, NULL, NULL, 'REACTIVE', 'POSITIVE', NULL, NULL),
(259, 111, NULL, NULL, NULL, NULL, NULL, 'NON-REACTIVE', 'NEGATIVE', NULL, NULL),
(260, 112, '0.00', '120.00', 2, '8.000', '48.000', NULL, '', NULL, NULL),
(261, 113, '0.00', '120.00', 2, '7.000', '55.000', NULL, '', NULL, NULL),
(262, 114, '0.00', '120.00', 2, '3.500', '5.000', NULL, '', NULL, NULL),
(263, 115, '0.00', '120.00', 2, '6.300', '7.900', NULL, '', NULL, NULL),
(264, 116, '0.00', '120.00', 2, '0.000', '5.000', NULL, '', NULL, NULL),
(265, 117, '0.00', '120.00', 2, '3.000', '22.000', NULL, '', NULL, NULL),
(266, 118, '0.00', '120.00', 2, '9.000', '48.000', NULL, '', NULL, NULL),
(267, 119, '0.00', '120.00', 2, '122.000', '222.000', NULL, '', NULL, NULL),
(268, 120, '0.00', '120.00', 2, '50.000', '110.000', NULL, '', NULL, NULL),
(269, 121, '0.00', '120.00', 2, '2.700', '6.400', NULL, '', NULL, NULL),
(270, 122, '0.00', '120.00', 2, '2.700', '7.200', NULL, '', NULL, NULL),
(271, 123, '0.00', '120.00', 2, '135.000', '145.000', NULL, '', NULL, NULL),
(272, 124, '0.00', '120.00', 2, '3.500', '5.500', NULL, '', NULL, NULL),
(273, 125, '0.00', '120.00', 2, '95.000', '110.000', NULL, '', NULL, NULL),
(274, 91, '0.00', '120.00', 2, '3.400', '6.500', NULL, '', NULL, NULL),
(275, 126, NULL, NULL, NULL, NULL, NULL, 'No AFB Seen', '', NULL, NULL),
(276, 126, NULL, NULL, NULL, NULL, NULL, 'AFB + Seen', '', NULL, NULL),
(277, 126, NULL, NULL, NULL, NULL, NULL, 'AFB ++ Seen', '', NULL, NULL),
(278, 126, NULL, NULL, NULL, NULL, NULL, 'AFB +++ seen', '', NULL, NULL),
(279, 28, NULL, NULL, NULL, NULL, NULL, 'pale yellow and clear ', 'Normal ', NULL, NULL),
(280, 28, NULL, NULL, NULL, NULL, NULL, 'pale yellow and turbid', 'Abnormal ', NULL, NULL),
(281, 28, NULL, NULL, NULL, NULL, NULL, 'pale yellow and slightly turbid ', 'Abnormal ', NULL, NULL),
(282, 28, NULL, NULL, NULL, NULL, NULL, 'Redish brown and turbid', 'Abnormal ', NULL, NULL),
(283, 28, NULL, NULL, NULL, NULL, NULL, 'Blood stained ', 'Abnormal ', NULL, NULL),
(284, 29, NULL, NULL, NULL, NULL, NULL, 'Nil', 'Normal ', NULL, NULL),
(285, 29, NULL, NULL, NULL, NULL, NULL, 'Trace ', 'Normal ', NULL, NULL),
(286, 29, NULL, NULL, NULL, NULL, NULL, '+', 'Abnormal ', NULL, NULL),
(287, 29, NULL, NULL, NULL, NULL, NULL, '++', 'Abnormal ', NULL, NULL),
(288, 29, NULL, NULL, NULL, NULL, NULL, '+++', 'Abnormal ', NULL, NULL),
(289, 29, NULL, NULL, NULL, NULL, NULL, '++++', 'Abnormal ', NULL, NULL),
(290, 30, NULL, NULL, NULL, NULL, NULL, 'Nil ', 'Normal ', NULL, NULL),
(291, 30, NULL, NULL, NULL, NULL, NULL, 'Trace ', 'Abnormal ', NULL, NULL),
(292, 30, NULL, NULL, NULL, NULL, NULL, '+', 'Abnormal ', NULL, NULL),
(293, 30, NULL, NULL, NULL, NULL, NULL, '++', 'Abnormal ', NULL, NULL),
(294, 30, NULL, NULL, NULL, NULL, NULL, '+++', 'Abnormal ', NULL, NULL),
(295, 31, '0.00', '120.00', 2, '2.000', '6.500', NULL, 'Normal ', NULL, NULL),
(296, 32, NULL, NULL, NULL, NULL, NULL, 'Nil', 'Normal ', NULL, NULL),
(297, 32, NULL, NULL, NULL, NULL, NULL, 'Trace ', 'Abnormal ', NULL, NULL),
(298, 32, NULL, NULL, NULL, NULL, NULL, '+', 'Abnormal ', NULL, NULL),
(299, 32, NULL, NULL, NULL, NULL, NULL, '++', 'Abnormal ', NULL, NULL),
(300, 32, NULL, NULL, NULL, NULL, NULL, '+++', 'Abnormal ', NULL, NULL),
(301, 32, NULL, NULL, NULL, NULL, NULL, '++++', 'Abnormal ', NULL, NULL),
(302, 33, NULL, NULL, NULL, NULL, NULL, 'Nil', 'Normal ', NULL, NULL),
(303, 33, NULL, NULL, NULL, NULL, NULL, '+', 'Abnormal ', NULL, NULL),
(304, 33, NULL, NULL, NULL, NULL, NULL, '++', 'Abnormal ', NULL, NULL),
(305, 33, NULL, NULL, NULL, NULL, NULL, '+++', 'Abnormal ', NULL, NULL),
(306, 33, NULL, NULL, NULL, NULL, NULL, '++++', 'Abnormal ', NULL, NULL),
(307, 34, NULL, NULL, NULL, NULL, NULL, 'Nil ', 'Normal ', NULL, NULL),
(308, 34, NULL, NULL, NULL, NULL, NULL, '+', 'Abnormal ', NULL, NULL),
(309, 34, NULL, NULL, NULL, NULL, NULL, '++', 'Abnormal ', NULL, NULL),
(310, 34, NULL, NULL, NULL, NULL, NULL, '+++', 'Abnormal ', NULL, NULL),
(311, 35, NULL, NULL, NULL, NULL, NULL, 'Nil ', 'Normal ', NULL, NULL),
(312, 35, NULL, NULL, NULL, NULL, NULL, '+', 'Abnormal ', NULL, NULL),
(313, 35, NULL, NULL, NULL, NULL, NULL, '++', 'Abnormal ', NULL, NULL),
(314, 35, NULL, NULL, NULL, NULL, NULL, '+++', 'Abnormal ', NULL, NULL),
(315, 36, NULL, NULL, NULL, NULL, NULL, 'Nil', 'Normal ', NULL, NULL),
(316, 36, NULL, NULL, NULL, NULL, NULL, '+', 'Abnormal ', NULL, NULL),
(317, 36, NULL, NULL, NULL, NULL, NULL, '++', 'Abnormal ', NULL, NULL),
(318, 36, NULL, NULL, NULL, NULL, NULL, '+++', 'Abnormal ', NULL, NULL),
(319, 36, NULL, NULL, NULL, NULL, NULL, '++++', 'Abnormal ', NULL, NULL),
(320, 37, NULL, NULL, NULL, NULL, NULL, 'Nil ', 'Normal ', NULL, NULL),
(321, 37, NULL, NULL, NULL, NULL, NULL, '+', 'Abnormal ', NULL, NULL),
(322, 37, NULL, NULL, NULL, NULL, NULL, '++', 'Abnormal ', NULL, NULL),
(323, 37, NULL, NULL, NULL, NULL, NULL, '+++', 'Abnormal ', NULL, NULL),
(324, 128, '0.00', '120.00', 0, '0.000', '0.000', NULL, '', NULL, NULL),
(325, 129, NULL, NULL, NULL, NULL, NULL, 'NAD', 'Normal ', NULL, NULL),
(326, 129, NULL, NULL, NULL, NULL, NULL, 'Pus cells + seen ', 'Abnormal ', NULL, NULL),
(327, 129, NULL, NULL, NULL, NULL, NULL, 'Pus cells ++ seen ', 'Abnormal ', NULL, NULL),
(328, 129, NULL, NULL, NULL, NULL, NULL, 'Pus cells +++ seen ', 'Abnormal ', NULL, NULL),
(329, 129, NULL, NULL, NULL, NULL, NULL, 'Epithelial cells + seen ', 'Abnormal ', NULL, NULL),
(330, 129, NULL, NULL, NULL, NULL, NULL, 'Epithelial cells ++ seen ', 'Abnormal ', NULL, NULL),
(331, 129, NULL, NULL, NULL, NULL, NULL, 'Epithelial cells +++ seen ', 'Abnormal ', NULL, NULL),
(332, 129, NULL, NULL, NULL, NULL, NULL, 'Yeast cells + seen ', 'Abnormal ', NULL, NULL),
(333, 129, NULL, NULL, NULL, NULL, NULL, 'yeast cells ++ seen ', 'Abnormal ', NULL, NULL),
(334, 129, NULL, NULL, NULL, NULL, NULL, 'Yeast cells +++ seen ', 'Abnormal ', NULL, NULL),
(335, 129, NULL, NULL, NULL, NULL, NULL, 'T.vaginalis seen ', 'Abnormal ', NULL, NULL),
(336, 129, NULL, NULL, NULL, NULL, NULL, 'S.haematobium ova + seen ', 'Abnormal ', NULL, NULL),
(337, 129, NULL, NULL, NULL, NULL, NULL, 'S.haematobium ova ++ seen ', 'Abnormal ', NULL, NULL),
(338, 129, NULL, NULL, NULL, NULL, NULL, 'S.haematobium ova +++ seen ', 'Abnormal ', NULL, NULL),
(339, 129, NULL, NULL, NULL, NULL, NULL, 'Granular casts + seen ', '', NULL, NULL),
(340, 129, NULL, NULL, NULL, NULL, NULL, 'Granular casts ++ seen ', '', NULL, NULL),
(341, 129, NULL, NULL, NULL, NULL, NULL, 'Granular casts +++ seen ', '', NULL, NULL),
(342, 129, NULL, NULL, NULL, NULL, NULL, 'cellular casts + seen ', '', NULL, NULL),
(343, 129, NULL, NULL, NULL, NULL, NULL, 'cellular casts ++ seen ', '', NULL, NULL),
(344, 129, NULL, NULL, NULL, NULL, NULL, 'cellular casts +++ seen ', '', NULL, NULL),
(345, 129, NULL, NULL, NULL, NULL, NULL, 'Hyaulline casts + seen ', '', NULL, NULL),
(346, 129, NULL, NULL, NULL, NULL, NULL, 'Hyaulline casts ++ seen ', '', NULL, NULL),
(347, 129, NULL, NULL, NULL, NULL, NULL, 'Hyaulline casts +++ seen ', '', NULL, NULL),
(348, 129, NULL, NULL, NULL, NULL, NULL, 'Crystals + seen ', '', NULL, NULL),
(349, 129, NULL, NULL, NULL, NULL, NULL, 'Crystals ++ seen ', '', NULL, NULL),
(350, 129, NULL, NULL, NULL, NULL, NULL, 'Crystals +++ seen ', '', NULL, NULL),
(351, 131, NULL, NULL, NULL, NULL, NULL, 'MTB NOT DETECTED ', 'NEGATIVE ', NULL, NULL),
(352, 131, NULL, NULL, NULL, NULL, NULL, 'MTB DETECTED HIGH,RIF resistance NOT DETECTED ', 'POSITIVE ', NULL, NULL),
(353, 131, NULL, NULL, NULL, NULL, NULL, 'MTB DETECTED MEDIUM,RIF resistance NOT DETECTED ', 'POSITIVE ', NULL, NULL),
(354, 131, NULL, NULL, NULL, NULL, NULL, 'MTB DETECTED LOW,RIF resistance NOT DETECTED ', 'POSITIVE ', NULL, NULL),
(355, 131, NULL, NULL, NULL, NULL, NULL, 'MTB DETECTED HIGH,RIF resistance DETECTED', 'POSITIVE', NULL, NULL),
(356, 131, NULL, NULL, NULL, NULL, NULL, 'MTB DETECTED MEDIUM,RIF resistance DETECTED', 'POSITIVE', NULL, NULL),
(357, 131, NULL, NULL, NULL, NULL, NULL, 'MTB DETECTED LOW,RIF resistance DETECTED', 'POSITIVE', NULL, NULL),
(358, 131, NULL, NULL, NULL, NULL, NULL, 'ERROR', '', NULL, NULL),
(359, 131, NULL, NULL, NULL, NULL, NULL, 'INVALID ', '', NULL, NULL),
(360, 131, NULL, NULL, NULL, NULL, NULL, 'ABORTED', '', NULL, NULL),
(361, 133, NULL, NULL, NULL, NULL, NULL, 'No AFB Seen', 'NEGATIVE', NULL, NULL),
(362, 133, NULL, NULL, NULL, NULL, NULL, 'AFB + Seen', 'POSITIVE', NULL, NULL),
(363, 133, NULL, NULL, NULL, NULL, NULL, 'AFB ++ Seen', 'POSITIVE', NULL, NULL),
(364, 133, NULL, NULL, NULL, NULL, NULL, 'AFB +++ seen', 'POSITIVE', NULL, NULL),
(365, 132, NULL, NULL, NULL, NULL, NULL, 'Negative ', 'Non reactive ', NULL, NULL),
(366, 132, NULL, NULL, NULL, NULL, NULL, 'Positive ', 'reactive ', NULL, NULL),
(367, 134, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(368, 136, '0.00', '120.00', 2, '3.000', '5.700', NULL, '', NULL, NULL),
(369, 137, NULL, NULL, NULL, NULL, NULL, 'NON-REACTIVE', 'NEGATIVE', NULL, NULL),
(370, 137, NULL, NULL, NULL, NULL, NULL, 'REACTIVE', 'POSITIVE', NULL, NULL),
(371, 138, '0.00', '120.00', 2, '0.000', '0.000', NULL, '', NULL, NULL),
(372, 145, '0.00', '120.00', 2, '2.500', '4.500', NULL, '', NULL, NULL),
(373, 147, '15.00', '120.00', 0, '2.000', '6.000', NULL, '', NULL, NULL),
(374, 148, '15.00', '120.00', 0, '15.000', '30.000', NULL, '', NULL, NULL),
(375, 149, '15.00', '120.00', 0, '7.200', '7.800', NULL, '', NULL, NULL),
(376, 150, '15.00', '120.00', 0, '20.000', '250.000', NULL, '', NULL, NULL),
(377, 151, '15.00', '120.00', 0, '50.000', '100.000', NULL, '', NULL, NULL),
(378, 152, NULL, NULL, NULL, NULL, NULL, 'Grade A', 'Progressive motility', NULL, NULL),
(379, 152, NULL, NULL, NULL, NULL, NULL, 'Grade B', 'Non linear Motility', NULL, NULL),
(380, 152, NULL, NULL, NULL, NULL, NULL, 'Grade C', 'Non progressive motility', NULL, NULL),
(381, 152, NULL, NULL, NULL, NULL, NULL, 'Grade D', 'Immotile', NULL, NULL),
(382, 154, '0.00', '120.00', 2, '0.000', '1000.000', NULL, '', NULL, NULL),
(383, 155, '0.00', '1120.00', 2, '0.000', '0.000', NULL, '', NULL, NULL),
(384, 156, NULL, NULL, NULL, NULL, NULL, 'HIV-1 NOT DETECTED', 'NEGATIVE', NULL, NULL),
(385, 156, NULL, NULL, NULL, NULL, NULL, 'HIV-1 DETECTED', 'POSITIVE', NULL, NULL),
(386, 28, NULL, NULL, NULL, NULL, NULL, 'Yellow and slightly turbid', 'abnormal', NULL, NULL),
(387, 30, NULL, NULL, NULL, NULL, NULL, '++++', 'Abnormal ', NULL, NULL),
(388, 127, NULL, NULL, NULL, NULL, NULL, 'Negative', 'Normal', NULL, NULL),
(389, 127, NULL, NULL, NULL, NULL, NULL, 'Positive', 'Abnomal', NULL, NULL),
(390, 161, NULL, NULL, NULL, NULL, NULL, '', '', '2018-02-28 12:17:40', NULL),
(391, 153, NULL, NULL, NULL, NULL, NULL, '', '', '2018-02-28 12:17:40', NULL),
(392, 162, NULL, NULL, NULL, NULL, NULL, '', 'Positive', NULL, NULL),
(393, 163, NULL, NULL, NULL, NULL, NULL, '', 'Negative', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `measure_types`
--

CREATE TABLE `measure_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `measure_types`
--

INSERT INTO `measure_types` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Numeric Range', NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(2, 'Alphanumeric Values', NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(3, 'Autocomplete', NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(4, 'Free Text', NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `metrics`
--

CREATE TABLE `metrics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_07_24_082711_CreatekBLIStables', 1),
('2014_09_02_114206_entrust_setup_tables', 1),
('2014_10_09_162222_externaldumptable', 1),
('2015_02_04_004704_add_index_to_parentlabno', 1),
('2015_02_11_112608_remove_unique_constraint_on_patient_number', 1),
('2015_02_17_104134_qc_tables', 1),
('2015_02_23_112018_create_microbiology_tables', 1),
('2015_02_27_084341_createInventoryTables', 1),
('2015_03_16_155558_create_surveillance', 1),
('2015_06_24_145526_update_test_types_table', 1),
('2015_06_24_154426_FreeTestsColumn', 1),
('2016_03_30_145749_lab_config_settings', 1),
('2016_07_26_095319_create_unhls_financial_years_table', 1),
('2016_07_26_095409_create_unhls_drugs_table', 1),
('2016_08_17_181955_create_rejection_reasons', 1),
('2016_08_31_135348_create_unhls_stockcard', 1),
('2016_08_31_135420_create_unhls_stockrequisition', 1),
('2016_09_28_091952_create_unhls_warehouse', 1),
('2016_09_28_095327_create_unhls_staff', 1),
('2016_10_03_220056_create_bbincidences_table', 1),
('2016_10_03_220511_create_bbactions_table', 1),
('2016_10_03_220622_create_bbcauses_table', 1),
('2016_10_03_220702_create_bbnatures_table', 1),
('2016_10_03_220852_create_bbincidences_action_table', 1),
('2016_10_03_220959_create_bbincidences_cause_table', 1),
('2016_10_03_221055_create_bbincidences_nature_table', 1),
('2016_10_13_170615_create_unhls_equipment_suppliers_table', 1),
('2016_10_19_115152_create_referral_reasons', 1),
('2017_01_16_103507_create_equipment_inventory_table', 1),
('2017_01_16_103533_create_equipment_maintenance_table', 1),
('2017_01_16_103546_create_equipment_breakdown_table', 1),
('2017_04_27_134821_create_wards_table', 1),
('2017_04_27_144035_update_visits_table', 1),
('2017_04_27_160407_create_therapy_table', 1),
('2017_05_25_131728_updateUNHLSBreakdown', 1),
('2017_06_19_094902_update_equipment_inventory_table', 1),
('2017_06_19_111831_update_equipment_breakdown_table', 1),
('2017_06_19_115028_update_unhls_stockcard_table', 1),
('2017_06_20_043838_alter_stockcard_table', 1),
('2017_06_30_183112_update_microbiology_functionalities', 1),
('2017_07_05_170430_create_reports_tables', 1),
('2017_07_27_160147_create_visit_status_table', 1),
('2017_07_27_160228_add_status_column_to_visit_table', 1),
('2017_07_28_113854_add_clinical_notes_column_to_table', 1),
('2017_07_28_120834_add_phone_contact_column_to_table', 1),
('2017_07_31_020011_create_uuids_table', 1),
('2017_08_02_192917_alter_specimen_id_nullable_unhls_tests', 1),
('2017_08_22_080201_create_test_name_mappings_table', 1),
('2017_10_10_094958_update_hiv_report_table', 1),
('2017_10_15_122554_adhoc_configs_table', 1),
('2017_11_07_160414_create_instrument_column_tables', 1),
('2017_11_15_121513_update_visit_table', 1),
('2018_01_12_152202_add_column_range_interpretion', 1),
('2018_03_06_194838_create_poc_tables', 1),
('2018_03_15_090759_alter_test_results_table', 1),
('2018_03_16_180358_create_poc_results', 1),
('2018_03_23_061054_alter_poc_results', 1),
('2018_05_14_172215_create_hubs', 1),
('2018_08_29_190957_add_unhls_equipment_breakdown_table', 1),
('2018_12_11_125050_add_unique_key_constraint_to_poc_tables', 1),
('2019_01_13_121925_add_targetTAT_units_to_test_types', 1),
('2019_02_24_121910_ward_type', 1),
('2019_02_24_122140_add_ward_type_column_ward_table', 1),
('2019_02_24_122237_add_visit_lab_number_column_unhls_visits_table', 1),
('2019_02_25_120647_create_clinicians_table', 1),
('2019_03_18_174259_update_unhls_tests', 1),
('2019_03_18_212324_add_clinician_id_to_therapy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organisms`
--

CREATE TABLE `organisms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organisms`
--

INSERT INTO `organisms` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Pseudomonas aeruginosa', NULL, NULL, '2017-05-31 11:29:37', '2017-05-31 11:29:37'),
(2, 'Escherichia coli', NULL, NULL, '2017-05-31 11:29:38', '2017-05-31 11:29:38'),
(3, 'Enterobacteriacae', NULL, NULL, '2017-05-31 11:29:40', '2017-05-31 11:29:40'),
(5, 'Pseudomonas flourescens', NULL, NULL, '2017-05-31 11:29:43', '2017-05-31 11:29:43'),
(6, 'Pseudomonas spp', NULL, NULL, '2017-05-31 11:29:44', '2017-05-31 11:29:44'),
(12, 'Acinetobacter spp', NULL, NULL, '2017-05-31 11:29:47', '2017-05-31 11:29:47'),
(13, 'Acinetobacter baumannii', NULL, NULL, '2017-05-31 11:29:48', '2017-05-31 11:29:48'),
(16, 'Salmonella spp', NULL, NULL, '2017-05-31 11:29:50', '2017-05-31 11:29:50'),
(17, 'Salmonella typhi', NULL, NULL, '2017-05-31 11:29:51', '2017-05-31 11:29:51'),
(18, 'Salmonella paratyphi B', NULL, NULL, '2017-05-31 11:29:51', '2017-05-31 11:29:51'),
(19, 'Salmonella choleraesuis', NULL, NULL, '2017-05-31 11:29:52', '2017-05-31 11:29:52'),
(20, 'Vibrio cholerae', NULL, NULL, '2017-05-31 11:29:52', '2017-05-31 11:29:52'),
(21, 'Viridans streptococcus', NULL, NULL, '2017-05-31 11:29:52', '2017-05-31 11:29:52'),
(22, 'Staphylococcus aureas', NULL, '2017-06-25 13:34:14', '2017-05-31 11:29:53', '2017-06-25 13:34:14'),
(23, 'Staphylococcus aureus', NULL, NULL, '2017-05-31 11:29:54', '2017-05-31 11:29:54'),
(24, 'Staphylococcus epidermidis', NULL, NULL, '2017-05-31 11:29:55', '2017-05-31 11:29:55'),
(25, 'Staphylococcus spp', NULL, NULL, '2017-05-31 11:29:56', '2017-05-31 11:29:56'),
(26, 'Staphylococus aureus', NULL, '2017-06-25 13:35:55', '2017-05-31 11:29:57', '2017-06-25 13:35:55'),
(29, 'Staphylococcus horminis', NULL, NULL, '2017-05-31 11:30:00', '2017-05-31 11:30:00'),
(30, 'Staphylococcus pasteuri.', NULL, NULL, '2017-05-31 11:30:01', '2017-05-31 11:30:01'),
(31, 'Staphylococcus saprophyticus', NULL, NULL, '2017-05-31 11:30:02', '2017-05-31 11:30:02'),
(32, 'Enterobacter spp', NULL, NULL, '2017-05-31 11:30:03', '2017-05-31 11:30:03'),
(33, 'Enterobacter cloacae', NULL, NULL, '2017-05-31 11:30:04', '2017-05-31 11:30:04'),
(34, 'Enterococcus spp', NULL, NULL, '2017-05-31 11:30:05', '2017-05-31 11:30:05'),
(35, 'Enterococcus feacalis', NULL, NULL, '2017-05-31 11:30:06', '2017-05-31 11:30:06'),
(36, 'Streptococcus spp', NULL, NULL, '2017-05-31 11:30:07', '2017-05-31 11:30:07'),
(37, 'Burkholderia cepacia', NULL, NULL, '2017-05-31 11:30:07', '2017-05-31 11:30:07'),
(38, 'Burkholderia mallei', NULL, NULL, '2017-05-31 11:30:08', '2017-05-31 11:30:08'),
(39, 'Burkholderia pseudomallei', NULL, NULL, '2017-05-31 11:30:08', '2017-05-31 11:30:08'),
(40, 'Neisseria spp', NULL, NULL, '2017-05-31 11:30:09', '2017-05-31 11:30:09'),
(41, 'Neisseria gonorrhae', NULL, NULL, '2017-05-31 11:30:09', '2017-05-31 11:30:09'),
(42, 'Neisseria gonorrhoeae', NULL, NULL, '2017-05-31 11:30:09', '2017-05-31 11:30:09'),
(43, 'Neisseria meningitidis', NULL, NULL, '2017-05-31 11:30:10', '2017-05-31 11:30:10'),
(44, 'Haemophilus spp', NULL, NULL, '2017-05-31 11:30:10', '2017-05-31 11:30:10'),
(45, 'Haemophilus influenzae spp', NULL, NULL, '2017-05-31 11:30:11', '2017-05-31 11:30:11'),
(46, 'Haemophilus influenzae type B', NULL, NULL, '2017-05-31 11:30:12', '2017-05-31 11:30:12'),
(47, 'Haemophilus influenzae isolated', NULL, '2017-06-25 14:15:27', '2017-05-31 11:30:12', '2017-06-25 14:15:27'),
(48, 'Haemophilus influenzae nontypaeble', NULL, NULL, '2017-05-31 11:30:13', '2017-05-31 11:30:13'),
(52, 'Haemophilus influenza', NULL, NULL, '2017-05-31 11:30:16', '2017-05-31 11:30:16'),
(53, 'Haemophilus ducreyi', NULL, NULL, '2017-05-31 11:30:16', '2017-05-31 11:30:16'),
(54, 'Haemophilus aphrophilus', NULL, NULL, '2017-05-31 11:30:17', '2017-05-31 11:30:17'),
(55, 'Haemophilus aegyptius', NULL, NULL, '2017-05-31 11:30:17', '2017-05-31 11:30:17'),
(56, 'Haemophilus parainfluenzae', NULL, NULL, '2017-05-31 11:30:18', '2017-05-31 11:30:18'),
(61, 'Streptococcus pneumoniae', NULL, NULL, '2017-05-31 11:30:21', '2017-05-31 11:30:21'),
(67, 'Enterobacter aerogenes', NULL, NULL, '2017-05-31 11:30:27', '2017-05-31 11:30:27'),
(68, 'Edwardsiella tarda', NULL, NULL, '2017-05-31 11:30:28', '2017-05-31 11:30:28'),
(69, 'Ehrlichia chaffeensis', NULL, NULL, '2017-05-31 11:30:29', '2017-05-31 11:30:29'),
(70, 'Ehrlicia chaffeensis', NULL, '2017-06-25 13:28:41', '2017-05-31 11:30:30', '2017-06-25 13:28:41'),
(71, 'Eikenella corrodens', NULL, NULL, '2017-05-31 11:30:31', '2017-05-31 11:30:31'),
(72, 'Klebsiella pneumoniae', NULL, NULL, '2017-05-31 11:30:32', '2017-05-31 11:30:32'),
(74, 'Klebsiella oxytoca', NULL, NULL, '2017-05-31 11:30:35', '2017-05-31 11:30:35'),
(75, 'Kelbsiella spp', NULL, NULL, '2017-05-31 11:30:36', '2017-05-31 11:30:36'),
(76, 'Kingella kingae', NULL, NULL, '2017-05-31 11:30:38', '2017-05-31 11:30:38'),
(77, 'Proteus mirabilis', NULL, NULL, '2017-05-31 11:30:39', '2017-05-31 11:30:39'),
(79, 'Citrobacter freundi', NULL, '2017-06-25 13:27:19', '2017-05-31 11:30:41', '2017-06-25 13:27:19'),
(80, 'Citrobacter freundii', NULL, NULL, '2017-05-31 11:30:43', '2017-05-31 11:30:43'),
(81, 'Citrobacter spp', NULL, NULL, '2017-05-31 11:30:44', '2017-05-31 11:30:44'),
(83, 'Providencia spp', NULL, NULL, '2017-05-31 11:30:46', '2017-05-31 11:30:46'),
(84, 'Proteus valgaris', NULL, NULL, '2017-05-31 11:30:48', '2017-05-31 11:30:48'),
(87, 'Providentia rettgeri', NULL, NULL, '2017-05-31 11:30:51', '2017-05-31 11:30:51'),
(88, 'Providentia stuartii', NULL, NULL, '2017-05-31 11:30:52', '2017-05-31 11:30:52'),
(89, 'Salmonella nontyphi group B', NULL, NULL, '2017-05-31 11:30:53', '2017-05-31 11:30:53'),
(90, 'Stenotrophomonas maltophilia', NULL, NULL, '2017-05-31 11:30:53', '2017-05-31 11:30:53'),
(91, 'Morganella morganii', NULL, NULL, '2017-05-31 11:30:54', '2017-05-31 11:30:54'),
(95, 'Morganella spp', NULL, NULL, '2017-05-31 11:30:58', '2017-05-31 11:30:58'),
(96, 'Salmonella paratyphi A', NULL, NULL, '2017-05-31 11:30:59', '2017-05-31 11:30:59'),
(97, 'Enterrococcus faecium', NULL, NULL, '2017-05-31 11:31:00', '2017-05-31 11:31:00'),
(98, 'Shigella boydii', NULL, NULL, '2017-05-31 11:31:01', '2017-05-31 11:31:01'),
(99, 'Shigella dysenteriae', NULL, NULL, '2017-05-31 11:31:01', '2017-05-31 11:31:01'),
(100, 'Shigella flexneri', NULL, NULL, '2017-05-31 11:31:01', '2017-05-31 11:31:01'),
(101, 'Shigella sonnei', NULL, NULL, '2017-05-31 11:31:02', '2017-05-31 11:31:02'),
(102, 'Streptococcus pyogenes', NULL, NULL, '2017-05-31 11:31:02', '2017-05-31 11:31:02'),
(103, 'Streptococcus pyogenes (Group A Strep)', NULL, NULL, '2017-05-31 11:31:03', '2017-05-31 11:31:03'),
(107, 'Streptococcus salivarius', NULL, NULL, '2017-05-31 11:31:05', '2017-05-31 11:31:05'),
(108, 'Streptococcus sanguis', NULL, NULL, '2017-05-31 11:31:05', '2017-05-31 11:31:05'),
(109, 'Salmonella group B', NULL, NULL, '2017-05-31 11:31:06', '2017-05-31 11:31:06'),
(110, 'Moraxella spp', NULL, NULL, '2017-05-31 11:31:07', '2017-05-31 11:31:07'),
(111, 'Coagulase-negative Staphylococcus', NULL, NULL, '2017-05-31 11:31:07', '2017-05-31 11:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'manage_incidents', 'Can Manage Biorisk & Biosecurity Incidents', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(2, 'register_incident', 'Can Register BB Incidences', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(3, 'summary_log', 'Can view BB summary log', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(4, 'facility_report', 'Can create faility BB report', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(5, 'view_names', 'Can view patient names', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(6, 'manage_patients', 'Can add patients', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(7, 'receive_external_test', 'Can receive test requests', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(8, 'request_test', 'Can request new test', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(9, 'accept_test_specimen', 'Can accept test specimen', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(10, 'reject_test_specimen', 'Can reject test specimen', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(11, 'change_test_specimen', 'Can change test specimen', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(12, 'start_test', 'Can start tests', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(13, 'enter_test_results', 'Can enter tests results', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(14, 'edit_test_results', 'Can edit test results', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(15, 'verify_test_results', 'Can verify test results', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(16, 'send_results_to_external_system', 'Can send test results to external systems', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(17, 'refer_specimens', 'Can refer specimens', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(18, 'manage_users', 'Can manage users', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(19, 'manage_test_catalog', 'Can manage test catalog', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(20, 'manage_lab_configurations', 'Can manage lab configurations', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(21, 'view_reports', 'Can view reports', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(22, 'manage_inventory', 'Can manage inventory', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(23, 'request_topup', 'Can request top-up', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(24, 'manage_qc', 'Can manage Quality Control', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(25, 'approve_test_results', 'Can approve test results as the last phase', '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(26, 'manage_appointments', 'Can manage appointments with Clinician', '2019-03-21 09:33:22', '2019-03-21 09:33:22'),
(27, 'make_labrequests', 'Can make lab requests(Only for Clinicians)', '2019-03-21 09:33:22', '2019-03-21 09:33:22'),
(28, 'manage_visits', 'Can manage visit content', '2019-03-21 09:33:22', '2019-03-21 09:33:22');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1),
(28, 1, 1),
(29, 2, 1),
(30, 2, 4),
(31, 3, 1),
(32, 3, 4),
(33, 4, 1),
(34, 4, 4),
(35, 5, 1),
(36, 5, 4),
(37, 6, 1),
(38, 6, 4),
(39, 7, 1),
(40, 7, 4),
(41, 8, 1),
(42, 8, 4),
(43, 9, 1),
(44, 9, 4),
(45, 10, 1),
(46, 10, 4),
(47, 11, 1),
(48, 11, 4),
(49, 12, 1),
(50, 12, 4),
(51, 13, 1),
(52, 13, 4),
(53, 14, 1),
(54, 14, 4),
(55, 15, 1),
(56, 15, 4),
(57, 16, 1),
(58, 16, 4),
(59, 17, 1),
(60, 17, 4),
(61, 18, 1),
(62, 19, 1),
(63, 19, 4),
(64, 20, 1),
(65, 20, 4),
(66, 21, 1),
(67, 21, 4),
(68, 22, 1),
(69, 22, 4),
(70, 23, 1),
(71, 23, 4),
(72, 24, 1),
(73, 24, 4),
(74, 25, 1),
(75, 25, 4),
(76, 26, 1),
(77, 26, 4),
(78, 27, 1),
(79, 27, 4),
(80, 1, 1),
(81, 2, 1),
(82, 2, 4),
(83, 3, 1),
(84, 3, 4),
(85, 4, 1),
(86, 4, 4),
(87, 5, 1),
(88, 5, 4),
(89, 6, 1),
(90, 6, 4),
(91, 7, 1),
(92, 7, 4),
(93, 8, 1),
(94, 8, 4),
(95, 9, 1),
(96, 9, 4),
(97, 10, 1),
(98, 10, 4),
(99, 11, 1),
(100, 11, 4),
(101, 12, 1),
(102, 12, 4),
(103, 13, 1),
(104, 13, 4),
(105, 14, 1),
(106, 14, 4),
(107, 15, 1),
(108, 15, 4),
(109, 16, 1),
(110, 16, 4),
(111, 17, 1),
(112, 17, 4),
(113, 18, 1),
(114, 19, 1),
(115, 19, 4),
(116, 20, 1),
(117, 20, 4),
(118, 21, 1),
(119, 21, 4),
(120, 22, 1),
(121, 22, 4),
(122, 23, 1),
(123, 23, 4),
(124, 24, 1),
(125, 24, 4),
(126, 25, 1),
(127, 25, 4),
(128, 26, 1),
(129, 26, 4),
(130, 27, 1),
(131, 27, 4);

-- --------------------------------------------------------

--
-- Table structure for table `poc_results`
--

CREATE TABLE `poc_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `results` enum('Negative','Positive','Error') COLLATE utf8_unicode_ci NOT NULL,
  `test_date` date NOT NULL,
  `test_time` time NOT NULL,
  `error_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tested_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dispatched_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `equipment_used` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dispatched_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `poc_results`
--

INSERT INTO `poc_results` (`id`, `patient_id`, `results`, `test_date`, `test_time`, `error_code`, `tested_by`, `dispatched_by`, `equipment_used`, `dispatched_date`, `created_at`, `updated_at`) VALUES
(10, 15, 'Negative', '2018-03-01', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-03-20 19:32:17', '2018-03-20 19:32:17'),
(11, 17, 'Negative', '2018-03-01', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-03-20 19:35:43', '2018-03-20 19:35:43'),
(12, 16, 'Negative', '2018-02-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-03-20 19:37:00', '2018-03-20 19:37:00'),
(13, 18, 'Negative', '2018-02-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-03-20 19:43:29', '2018-03-20 19:43:29'),
(14, 19, 'Negative', '2018-02-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-03-20 19:44:23', '2018-03-20 19:44:23'),
(15, 20, 'Negative', '2018-03-01', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-03-20 19:47:57', '2018-03-20 19:47:57'),
(16, 21, 'Negative', '2018-03-27', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-03-20 19:48:23', '2018-03-20 19:48:23'),
(17, 22, 'Negative', '2018-02-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-03-20 19:52:58', '2018-03-20 19:52:58'),
(18, 23, 'Positive', '2018-02-23', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-03-20 20:05:59', '2018-03-20 20:05:59'),
(19, 24, 'Negative', '2018-02-23', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-03-20 20:12:01', '2018-03-20 20:12:01'),
(20, 25, 'Negative', '2018-04-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-03 23:29:31', '2018-04-03 23:29:31'),
(21, 26, 'Negative', '2018-04-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-03 23:33:51', '2018-04-03 23:33:51'),
(22, 27, 'Negative', '2018-04-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-05 17:29:31', '2018-04-05 17:29:31'),
(23, 28, 'Negative', '2018-04-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-05 17:32:36', '2018-04-05 17:32:36'),
(24, 29, 'Negative', '2018-04-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-05 17:34:55', '2018-04-05 17:34:55'),
(25, 30, 'Negative', '2018-04-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-05 17:38:29', '2018-04-05 17:38:29'),
(26, 31, 'Negative', '2018-04-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-05 19:07:36', '2018-04-05 19:07:36'),
(27, 32, 'Negative', '2018-04-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-05 19:09:45', '2018-04-05 19:09:45'),
(28, 33, 'Positive', '2018-04-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-05 19:13:49', '2018-04-05 19:13:49'),
(29, 34, 'Negative', '2018-04-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-05 19:17:04', '2018-04-05 19:17:04'),
(30, 35, 'Negative', '2018-04-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-06 15:48:01', '2018-04-06 15:48:01'),
(31, 36, 'Negative', '2018-04-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-06 15:51:52', '2018-04-06 15:51:52'),
(32, 37, 'Negative', '2018-04-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-06 15:54:32', '2018-04-06 15:54:32'),
(33, 38, 'Negative', '2018-04-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 16:54:18', '2018-04-19 16:54:18'),
(34, 39, 'Negative', '2018-04-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 16:57:24', '2018-04-19 16:57:24'),
(35, 40, 'Negative', '2018-04-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 17:26:43', '2018-04-19 17:26:43'),
(36, 41, 'Negative', '2018-04-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 17:30:37', '2018-04-19 17:30:37'),
(37, 42, 'Negative', '2018-04-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 17:33:17', '2018-04-19 17:33:17'),
(38, 43, 'Negative', '2018-04-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 17:35:46', '2018-04-19 17:35:46'),
(39, 44, 'Negative', '2018-04-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 17:38:48', '2018-04-19 17:38:48'),
(40, 45, 'Negative', '2018-04-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 17:43:21', '2018-04-19 17:43:21'),
(41, 46, 'Negative', '2018-04-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 17:46:19', '2018-04-19 17:46:19'),
(42, 47, 'Negative', '2018-04-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 17:52:10', '2018-04-19 17:52:10'),
(43, 48, 'Negative', '2018-04-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 17:56:19', '2018-04-19 17:56:19'),
(44, 49, 'Negative', '2018-04-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 18:01:52', '2018-04-19 18:01:52'),
(45, 50, 'Negative', '2018-04-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 18:05:27', '2018-04-19 18:05:27'),
(46, 51, 'Negative', '2018-04-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 18:18:14', '2018-04-19 18:18:14'),
(47, 52, 'Negative', '2018-04-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 18:21:43', '2018-04-19 18:21:43'),
(48, 53, 'Negative', '2018-04-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 18:24:23', '2018-04-19 18:24:23'),
(49, 54, 'Negative', '2018-04-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 18:30:58', '2018-04-19 18:30:58'),
(50, 55, 'Negative', '2018-04-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 18:33:36', '2018-04-19 18:33:36'),
(51, 56, 'Negative', '2018-04-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 18:35:46', '2018-04-19 18:35:46'),
(52, 57, 'Negative', '2018-04-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 18:38:11', '2018-04-19 18:38:11'),
(53, 58, 'Negative', '2018-04-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 18:40:52', '2018-04-19 18:40:52'),
(54, 59, 'Negative', '2018-04-16', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 18:43:50', '2018-04-19 18:43:50'),
(55, 60, 'Negative', '2018-04-17', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 18:56:05', '2018-04-19 18:56:05'),
(56, 61, 'Negative', '2018-04-17', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 18:58:47', '2018-04-19 18:58:47'),
(57, 62, 'Negative', '2018-04-17', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 19:01:19', '2018-04-19 19:01:19'),
(58, 63, 'Negative', '2018-04-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 19:03:39', '2018-04-19 19:03:39'),
(59, 64, 'Negative', '2018-04-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 19:27:38', '2018-04-19 19:27:38'),
(60, 65, 'Negative', '2018-04-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 19:33:43', '2018-04-19 19:33:43'),
(61, 66, 'Negative', '2018-04-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-19 19:37:47', '2018-04-19 19:37:47'),
(62, 67, 'Negative', '2018-04-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-26 23:17:45', '2018-04-26 23:17:45'),
(63, 68, 'Negative', '2018-04-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-26 23:31:52', '2018-04-26 23:31:52'),
(64, 69, 'Negative', '2018-04-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-26 23:34:05', '2018-04-26 23:34:05'),
(65, 70, 'Negative', '2018-04-25', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-27 00:00:26', '2018-04-27 00:00:26'),
(66, 71, 'Negative', '2018-04-25', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-27 00:02:45', '2018-04-27 00:02:45'),
(67, 72, 'Negative', '2018-04-25', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-27 00:05:11', '2018-04-27 00:05:11'),
(68, 73, 'Negative', '2018-04-23', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-27 00:07:53', '2018-04-27 00:07:53'),
(69, 74, 'Positive', '2018-04-23', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-27 00:10:45', '2018-04-27 00:10:45'),
(70, 75, 'Negative', '2018-04-23', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-04-27 00:13:19', '2018-04-27 00:13:19'),
(71, 76, 'Negative', '2018-04-30', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-01 21:49:32', '2018-05-01 21:49:32'),
(72, 77, 'Negative', '2018-04-30', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-01 21:52:18', '2018-05-01 21:52:18'),
(73, 78, 'Negative', '2018-04-30', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-01 21:55:53', '2018-05-01 21:55:53'),
(74, 79, 'Negative', '2018-04-30', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-01 21:59:19', '2018-05-01 21:59:19'),
(75, 80, 'Negative', '2018-04-30', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-01 22:01:44', '2018-05-01 22:01:44'),
(76, 81, 'Negative', '2018-04-30', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-01 22:04:17', '2018-05-01 22:04:17'),
(77, 82, 'Negative', '2018-04-30', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-01 22:06:32', '2018-05-01 22:06:32'),
(78, 83, 'Negative', '2018-04-30', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-01 22:08:54', '2018-05-01 22:08:54'),
(79, 95, 'Negative', '2018-05-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-04 02:49:17', '2018-05-04 02:49:17'),
(80, 94, 'Negative', '2018-05-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-04 02:49:48', '2018-05-04 02:49:48'),
(81, 93, 'Negative', '2018-05-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-04 02:50:04', '2018-05-04 02:50:04'),
(82, 91, 'Negative', '2018-05-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-04 02:50:28', '2018-05-04 02:50:28'),
(83, 85, 'Negative', '2018-05-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-04 02:50:44', '2018-05-04 02:50:44'),
(84, 88, 'Negative', '2018-05-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-04 02:51:01', '2018-05-04 02:51:01'),
(85, 87, 'Negative', '2018-05-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-04 02:51:17', '2018-05-04 02:51:17'),
(86, 90, 'Negative', '2018-05-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-04 02:51:36', '2018-05-04 02:51:36'),
(87, 86, 'Negative', '2018-05-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-04 02:51:53', '2018-05-04 02:51:53'),
(88, 84, 'Negative', '2018-05-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-04 02:52:07', '2018-05-04 02:52:07'),
(89, 89, 'Negative', '2018-05-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-04 02:52:34', '2018-05-04 02:52:34'),
(90, 92, 'Negative', '2018-05-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-04 02:52:56', '2018-05-04 02:52:56'),
(91, 96, 'Negative', '2018-04-27', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-04 02:58:07', '2018-05-04 02:58:07'),
(92, 100, 'Negative', '2018-05-07', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-08 16:26:43', '2018-05-08 16:26:43'),
(93, 97, 'Negative', '2018-05-07', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-08 16:27:00', '2018-05-08 16:27:00'),
(94, 98, 'Negative', '2018-05-07', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-08 16:27:24', '2018-05-08 16:27:24'),
(95, 99, 'Negative', '2018-05-07', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-08 16:27:42', '2018-05-08 16:27:42'),
(96, 101, 'Negative', '2018-05-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 01:14:07', '2018-05-11 01:14:07'),
(97, 102, 'Negative', '2018-05-08', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 01:19:00', '2018-05-11 01:19:00'),
(98, 118, 'Negative', '2018-05-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:10:22', '2018-05-11 02:10:22'),
(99, 117, 'Negative', '2018-05-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:10:44', '2018-05-11 02:10:44'),
(100, 116, 'Negative', '2018-05-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:11:13', '2018-05-11 02:11:13'),
(101, 115, 'Negative', '2018-05-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:11:31', '2018-05-11 02:11:31'),
(102, 114, 'Negative', '2018-05-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:11:51', '2018-05-11 02:11:51'),
(103, 113, 'Negative', '2018-05-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:12:11', '2018-05-11 02:12:11'),
(104, 112, 'Negative', '2018-05-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:12:38', '2018-05-11 02:12:38'),
(105, 103, 'Negative', '2018-05-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:13:01', '2018-05-11 02:13:01'),
(106, 106, 'Negative', '2018-05-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:13:16', '2018-05-11 02:13:16'),
(107, 105, 'Negative', '2018-05-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:13:32', '2018-05-11 02:13:32'),
(108, 108, 'Negative', '2018-05-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:13:49', '2018-05-11 02:13:49'),
(109, 111, 'Negative', '2018-05-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:14:08', '2018-05-11 02:14:08'),
(110, 110, 'Negative', '2018-05-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:14:38', '2018-05-11 02:14:38'),
(111, 109, 'Negative', '2018-05-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:14:53', '2018-05-11 02:14:53'),
(112, 107, 'Negative', '2018-05-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:15:08', '2018-05-11 02:15:08'),
(113, 104, 'Negative', '2018-05-08', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 02:15:26', '2018-05-11 02:15:26'),
(114, 119, 'Negative', '2018-05-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 15:53:11', '2018-05-11 15:53:11'),
(115, 120, 'Negative', '2018-05-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-11 15:53:29', '2018-05-11 15:53:29'),
(116, 122, 'Negative', '2018-05-15', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-16 15:44:33', '2018-05-16 15:44:33'),
(117, 121, 'Negative', '2018-05-15', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-16 15:44:53', '2018-05-16 15:44:53'),
(118, 128, 'Negative', '2018-05-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-16 16:01:26', '2018-05-16 16:01:26'),
(119, 123, 'Negative', '2018-05-14', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-16 16:01:55', '2018-05-16 16:01:55'),
(120, 126, 'Negative', '2018-05-14', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-16 16:02:10', '2018-05-16 16:02:10'),
(121, 129, 'Negative', '2018-05-21', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-22 15:52:10', '2018-05-22 15:52:10'),
(122, 124, 'Negative', '2018-05-14', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-22 17:20:17', '2018-05-22 17:20:17'),
(123, 125, 'Negative', '2018-05-14', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-22 17:21:26', '2018-05-22 17:21:26'),
(124, 127, 'Negative', '2018-05-14', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-05-22 17:46:21', '2018-05-22 17:46:21'),
(125, 131, 'Negative', '2018-06-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-05 16:10:13', '2018-06-05 16:10:13'),
(126, 130, 'Negative', '2018-06-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-05 16:10:44', '2018-06-05 16:10:44'),
(127, 132, 'Positive', '2018-05-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-05 16:31:35', '2018-06-05 16:31:35'),
(128, 133, 'Negative', '2018-05-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-05 16:34:27', '2018-06-05 16:34:27'),
(129, 134, 'Negative', '2018-05-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-05 16:38:15', '2018-06-05 16:38:15'),
(130, 135, 'Negative', '2018-05-30', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-05 16:41:35', '2018-06-05 16:41:35'),
(131, 136, 'Negative', '2018-05-30', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-05 16:43:55', '2018-06-05 16:43:55'),
(132, 137, 'Negative', '2018-05-30', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-05 16:46:39', '2018-06-05 16:46:39'),
(133, 138, 'Negative', '2018-05-30', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-05 16:51:39', '2018-06-05 16:51:39'),
(134, 139, 'Negative', '2018-05-29', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-05 16:57:03', '2018-06-05 16:57:03'),
(135, 140, 'Negative', '2018-06-28', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-05 16:59:14', '2018-06-05 16:59:14'),
(136, 141, 'Negative', '2018-05-28', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-05 17:02:10', '2018-06-05 17:02:10'),
(137, 143, 'Negative', '2018-05-25', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-05 17:07:08', '2018-06-05 17:07:08'),
(138, 142, 'Negative', '2018-05-24', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-05 17:07:32', '2018-06-05 17:07:32'),
(139, 144, 'Negative', '2018-06-24', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-05 17:12:40', '2018-06-05 17:12:40'),
(140, 145, 'Negative', '2018-06-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-07 19:22:20', '2018-06-07 19:22:20'),
(141, 146, 'Negative', '2018-06-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-07 19:23:28', '2018-06-07 19:23:28'),
(142, 147, 'Negative', '2018-06-06', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-07 19:23:49', '2018-06-07 19:23:49'),
(143, 150, 'Negative', '2018-06-06', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-07 19:47:32', '2018-06-07 19:47:32'),
(144, 149, 'Negative', '2018-06-06', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-07 19:50:03', '2018-06-07 19:50:03'),
(145, 148, 'Negative', '2018-06-06', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-07 19:50:27', '2018-06-07 19:50:27'),
(146, 151, 'Negative', '2018-06-06', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-07 19:50:44', '2018-06-07 19:50:44'),
(147, 152, 'Negative', '2018-06-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-19 01:00:47', '2018-06-19 01:00:47'),
(148, 153, 'Negative', '2018-06-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-19 01:07:39', '2018-06-19 01:07:39'),
(149, 154, 'Negative', '2018-06-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-19 01:17:53', '2018-06-19 01:17:53'),
(150, 155, 'Negative', '2018-06-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-19 01:18:10', '2018-06-19 01:18:10'),
(151, 156, 'Negative', '2018-06-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-19 17:15:51', '2018-06-19 17:15:51'),
(152, 157, 'Negative', '2018-06-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-19 17:28:47', '2018-06-19 17:28:47'),
(153, 158, 'Negative', '2018-06-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-19 17:31:22', '2018-06-19 17:31:22'),
(154, 159, 'Positive', '2018-06-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-20 22:23:43', '2018-06-20 22:23:43'),
(155, 160, 'Negative', '2018-06-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-20 22:24:12', '2018-06-20 22:24:12'),
(156, 161, 'Negative', '2018-06-19', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-20 22:24:51', '2018-06-20 22:24:51'),
(157, 162, 'Negative', '2018-06-19', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-20 22:25:33', '2018-06-20 22:25:33'),
(158, 163, 'Negative', '2018-06-19', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-20 22:25:59', '2018-06-20 22:25:59'),
(159, 164, 'Negative', '2018-06-19', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-20 22:26:22', '2018-06-20 22:26:22'),
(160, 165, 'Negative', '2018-06-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-20 22:26:55', '2018-06-20 22:26:55'),
(161, 166, 'Negative', '2018-06-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-21 17:07:01', '2018-06-21 17:07:01'),
(162, 167, 'Negative', '2018-06-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-21 17:10:53', '2018-06-21 17:10:53'),
(163, 168, 'Negative', '2018-06-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-21 17:13:32', '2018-06-21 17:13:32'),
(164, 169, 'Positive', '2018-06-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-21 17:17:57', '2018-06-21 17:17:57'),
(165, 170, 'Negative', '2018-06-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-21 17:21:21', '2018-06-21 17:21:21'),
(166, 171, 'Negative', '2018-06-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-21 17:24:12', '2018-06-21 17:24:12'),
(167, 172, 'Negative', '2018-06-21', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-22 18:35:16', '2018-06-22 18:35:16'),
(168, 173, 'Negative', '2018-06-21', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-22 18:35:55', '2018-06-22 18:35:55'),
(169, 174, 'Negative', '2018-06-21', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-22 18:36:30', '2018-06-22 18:36:30'),
(170, 175, 'Negative', '2018-06-21', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-22 18:36:55', '2018-06-22 18:36:55'),
(171, 176, 'Negative', '2018-06-21', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-22 18:37:18', '2018-06-22 18:37:18'),
(172, 177, 'Negative', '2018-06-21', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-06-22 19:33:36', '2018-06-22 19:33:36'),
(173, 178, 'Negative', '2018-06-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-05 23:53:08', '2018-07-05 23:53:08'),
(174, 179, 'Negative', '2018-06-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-05 23:55:58', '2018-07-05 23:55:58'),
(175, 180, 'Negative', '2018-06-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-05 23:58:08', '2018-07-05 23:58:08'),
(176, 181, 'Negative', '2018-06-28', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:00:48', '2018-07-06 00:00:48'),
(177, 182, 'Negative', '2018-06-25', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:02:59', '2018-07-06 00:02:59'),
(178, 183, 'Negative', '2018-07-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:05:04', '2018-07-06 00:05:04'),
(179, 184, 'Negative', '2018-07-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:06:43', '2018-07-06 00:06:43'),
(180, 185, 'Negative', '2018-07-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:10:08', '2018-07-06 00:10:08'),
(181, 186, 'Negative', '2018-07-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:13:03', '2018-07-06 00:13:03'),
(182, 187, 'Negative', '2018-07-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:15:06', '2018-07-06 00:15:06'),
(183, 188, 'Negative', '2018-07-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:18:10', '2018-07-06 00:18:10'),
(184, 189, 'Negative', '2018-07-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:27:14', '2018-07-06 00:27:14'),
(185, 190, 'Negative', '2018-07-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:27:29', '2018-07-06 00:27:29'),
(186, 191, 'Negative', '2018-07-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:30:56', '2018-07-06 00:30:56'),
(187, 192, 'Negative', '2018-07-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:33:15', '2018-07-06 00:33:15'),
(188, 193, 'Negative', '2018-07-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:35:02', '2018-07-06 00:35:02'),
(189, 194, 'Negative', '2018-07-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:36:48', '2018-07-06 00:36:48'),
(190, 195, 'Negative', '2018-07-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:38:48', '2018-07-06 00:38:48'),
(191, 196, 'Negative', '2018-06-22', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:44:47', '2018-07-06 00:44:47'),
(192, 197, 'Negative', '2018-06-25', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 00:47:03', '2018-07-06 00:47:03'),
(193, 198, 'Positive', '2018-06-25', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 01:01:34', '2018-07-06 01:01:34'),
(194, 199, 'Negative', '2018-06-28', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 01:03:33', '2018-07-06 01:03:33'),
(195, 200, 'Negative', '2018-06-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 01:05:56', '2018-07-06 01:05:56'),
(196, 201, 'Negative', '2018-06-21', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 01:11:43', '2018-07-06 01:11:43'),
(197, 202, 'Negative', '2018-06-21', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 01:13:38', '2018-07-06 01:13:38'),
(198, 203, 'Negative', '2018-06-21', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 01:13:56', '2018-07-06 01:13:56'),
(199, 204, 'Negative', '2018-06-21', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 01:15:54', '2018-07-06 01:15:54'),
(200, 205, 'Negative', '2018-06-21', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 01:17:40', '2018-07-06 01:17:40'),
(201, 206, 'Negative', '2018-06-21', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 01:19:20', '2018-07-06 01:19:20'),
(202, 210, 'Negative', '2018-07-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 01:53:29', '2018-07-06 01:53:29'),
(203, 207, 'Negative', '2018-07-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 01:53:40', '2018-07-06 01:53:40'),
(204, 209, 'Negative', '2018-07-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 01:53:52', '2018-07-06 01:53:52'),
(205, 208, 'Negative', '2018-07-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-06 01:54:05', '2018-07-06 01:54:05'),
(206, 211, 'Negative', '2018-07-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-10 01:18:57', '2018-07-10 01:18:57'),
(207, 214, 'Negative', '2018-07-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-10 01:19:11', '2018-07-10 01:19:11'),
(208, 212, 'Negative', '2018-07-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-10 01:19:23', '2018-07-10 01:19:23'),
(209, 213, 'Negative', '2018-07-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-10 01:19:41', '2018-07-10 01:19:41'),
(210, 215, 'Negative', '2018-07-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-11 17:20:36', '2018-07-11 17:20:36'),
(211, 216, 'Negative', '2018-07-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-13 00:26:10', '2018-07-13 00:26:10'),
(212, 217, 'Negative', '2018-07-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-13 00:26:28', '2018-07-13 00:26:28'),
(213, 219, 'Negative', '2018-07-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-13 00:26:44', '2018-07-13 00:26:44'),
(214, 220, 'Negative', '2018-07-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-13 00:27:05', '2018-07-13 00:27:05'),
(215, 218, 'Negative', '2018-07-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-13 00:27:26', '2018-07-13 00:27:26'),
(216, 221, 'Negative', '2018-07-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-13 00:27:45', '2018-07-13 00:27:45'),
(217, 222, 'Negative', '2018-07-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-13 00:27:58', '2018-07-13 00:27:58'),
(218, 223, 'Negative', '2018-07-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-13 00:28:13', '2018-07-13 00:28:13'),
(219, 224, 'Negative', '2018-07-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-13 00:28:32', '2018-07-13 00:28:32'),
(220, 225, 'Negative', '2018-07-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-13 00:28:46', '2018-07-13 00:28:46'),
(221, 226, 'Negative', '2018-07-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-25 18:24:39', '2018-07-25 18:24:39'),
(222, 227, 'Negative', '2018-07-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-25 18:27:04', '2018-07-25 18:27:04'),
(223, 228, 'Negative', '2018-07-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-25 18:28:55', '2018-07-25 18:28:55'),
(224, 229, 'Negative', '2018-07-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-25 18:35:30', '2018-07-25 18:35:30'),
(225, 230, 'Negative', '2018-07-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-25 18:43:25', '2018-07-25 18:43:25'),
(226, 231, 'Negative', '2018-07-17', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-25 18:56:02', '2018-07-25 18:56:02'),
(227, 232, 'Negative', '2018-07-17', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-25 18:59:04', '2018-07-25 18:59:04'),
(228, 233, 'Negative', '2018-07-17', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-25 19:01:27', '2018-07-25 19:01:27'),
(229, 234, 'Negative', '2018-07-17', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-25 19:03:48', '2018-07-25 19:03:48'),
(230, 235, 'Negative', '2018-07-17', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-25 19:07:13', '2018-07-25 19:07:13'),
(231, 236, 'Negative', '2018-07-17', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-25 19:11:07', '2018-07-25 19:11:07'),
(232, 237, 'Negative', '2018-07-16', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-07-25 19:15:25', '2018-07-25 19:15:25'),
(233, 238, 'Negative', '2018-07-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 00:43:35', '2018-08-01 00:43:35'),
(234, 239, 'Negative', '2018-07-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 00:46:17', '2018-08-01 00:46:17'),
(235, 240, 'Negative', '2018-07-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 00:49:15', '2018-08-01 00:49:15'),
(236, 241, 'Negative', '2018-07-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 00:52:03', '2018-08-01 00:52:03'),
(237, 242, 'Negative', '2018-07-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 00:54:21', '2018-08-01 00:54:21'),
(238, 243, 'Negative', '2018-07-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 00:58:10', '2018-08-01 00:58:10'),
(239, 244, 'Negative', '2018-07-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:03:06', '2018-08-01 01:03:06'),
(240, 245, 'Negative', '2018-07-25', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:05:05', '2018-08-01 01:05:05'),
(241, 246, 'Negative', '2018-07-25', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:11:47', '2018-08-01 01:11:47'),
(242, 247, 'Negative', '2018-07-25', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:13:57', '2018-08-01 01:13:57'),
(243, 248, 'Negative', '2018-07-25', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:15:55', '2018-08-01 01:15:55'),
(244, 249, 'Negative', '2018-07-17', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:18:23', '2018-08-01 01:18:23'),
(245, 250, 'Positive', '2018-07-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:20:05', '2018-08-01 01:20:05'),
(246, 251, 'Negative', '2018-07-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:22:03', '2018-08-01 01:22:03'),
(247, 252, 'Negative', '2018-07-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:23:50', '2018-08-01 01:23:50'),
(248, 253, 'Negative', '2018-07-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:26:08', '2018-08-01 01:26:08'),
(249, 254, 'Negative', '2018-07-17', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:27:51', '2018-08-01 01:27:51'),
(250, 255, 'Negative', '2018-07-24', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:29:40', '2018-08-01 01:29:40'),
(251, 256, 'Positive', '2018-07-23', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:34:08', '2018-08-01 01:34:08'),
(252, 257, 'Negative', '2018-07-23', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:36:03', '2018-08-01 01:36:03'),
(253, 258, 'Negative', '2018-07-23', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:38:11', '2018-08-01 01:38:11'),
(254, 259, 'Negative', '2018-07-23', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:40:05', '2018-08-01 01:40:05'),
(255, 260, 'Negative', '2018-07-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:42:49', '2018-08-01 01:42:49'),
(256, 261, 'Negative', '2018-07-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:46:08', '2018-08-01 01:46:08'),
(257, 262, 'Negative', '2018-07-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:48:39', '2018-08-01 01:48:39'),
(258, 263, 'Negative', '2018-07-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:50:27', '2018-08-01 01:50:27'),
(259, 264, 'Negative', '2018-07-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:52:27', '2018-08-01 01:52:27'),
(260, 265, 'Negative', '2018-07-19', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:54:25', '2018-08-01 01:54:25'),
(261, 266, 'Negative', '2018-07-18', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:56:35', '2018-08-01 01:56:35'),
(262, 267, 'Negative', '2018-07-16', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 01:59:56', '2018-08-01 01:59:56'),
(263, 268, 'Negative', '2018-07-24', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 02:01:59', '2018-08-01 02:01:59'),
(264, 269, 'Negative', '2018-07-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 02:42:05', '2018-08-01 02:42:05'),
(265, 270, 'Negative', '2018-07-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 02:42:22', '2018-08-01 02:42:22'),
(266, 275, 'Negative', '2018-07-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 02:42:39', '2018-08-01 02:42:39'),
(267, 274, 'Negative', '2018-07-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 02:43:02', '2018-08-01 02:43:02'),
(268, 273, 'Negative', '2018-07-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 02:43:18', '2018-08-01 02:43:18'),
(269, 272, 'Negative', '2018-07-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 02:43:38', '2018-08-01 02:43:38'),
(270, 271, 'Negative', '2018-07-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 02:43:55', '2018-08-01 02:43:55'),
(271, 279, 'Negative', '2018-07-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 17:06:41', '2018-08-01 17:06:41'),
(272, 276, 'Negative', '2018-07-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 17:07:00', '2018-08-01 17:07:00'),
(273, 278, 'Negative', '2018-07-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 17:07:16', '2018-08-01 17:07:16'),
(274, 277, 'Negative', '2018-07-31', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-01 17:07:35', '2018-08-01 17:07:35'),
(275, 280, 'Negative', '2018-08-01', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-02 00:17:42', '2018-08-02 00:17:42'),
(276, 281, 'Negative', '2018-08-01', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-02 00:18:00', '2018-08-02 00:18:00'),
(277, 282, 'Negative', '2018-08-01', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-02 00:18:18', '2018-08-02 00:18:18'),
(278, 283, 'Negative', '2018-08-15', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:06:24', '2018-08-16 23:06:24'),
(279, 284, 'Negative', '2018-08-15', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:08:34', '2018-08-16 23:08:34'),
(280, 285, 'Negative', '2018-08-15', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:10:20', '2018-08-16 23:10:20'),
(281, 286, 'Negative', '2018-08-15', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:13:18', '2018-08-16 23:13:18'),
(282, 287, 'Negative', '2018-08-15', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:15:35', '2018-08-16 23:15:35'),
(283, 288, 'Negative', '2018-08-15', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:25:45', '2018-08-16 23:25:45'),
(284, 289, 'Negative', '2018-08-15', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:28:06', '2018-08-16 23:28:06'),
(285, 290, 'Negative', '2018-08-15', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:31:45', '2018-08-16 23:31:45'),
(286, 291, 'Negative', '2018-08-14', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:34:32', '2018-08-16 23:34:32'),
(287, 292, 'Negative', '2018-08-13', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:36:42', '2018-08-16 23:36:42'),
(288, 293, 'Negative', '2018-08-13', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:38:35', '2018-08-16 23:38:35'),
(289, 294, 'Negative', '2018-08-13', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:42:17', '2018-08-16 23:42:17'),
(290, 295, 'Negative', '2018-08-13', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:44:31', '2018-08-16 23:44:31'),
(291, 296, 'Negative', '2018-08-13', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:46:20', '2018-08-16 23:46:20'),
(292, 297, 'Negative', '2018-08-13', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:48:40', '2018-08-16 23:48:40'),
(293, 298, 'Negative', '2018-08-13', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:50:45', '2018-08-16 23:50:45'),
(294, 299, 'Negative', '2018-08-13', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:52:28', '2018-08-16 23:52:28'),
(295, 300, 'Positive', '2018-08-13', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:54:17', '2018-08-16 23:54:17'),
(296, 301, 'Negative', '2018-08-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:56:29', '2018-08-16 23:56:29'),
(297, 302, 'Negative', '2018-08-09', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-16 23:58:43', '2018-08-16 23:58:43'),
(298, 303, 'Negative', '2018-08-13', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 00:00:30', '2018-08-17 00:00:30'),
(299, 304, 'Negative', '2018-08-13', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 00:04:07', '2018-08-17 00:04:07'),
(300, 305, 'Negative', '2018-08-13', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 00:06:05', '2018-08-17 00:06:05'),
(301, 306, 'Negative', '2018-08-13', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 00:07:57', '2018-08-17 00:07:57'),
(302, 307, 'Negative', '2018-08-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 00:09:59', '2018-08-17 00:09:59'),
(303, 308, 'Negative', '2018-08-08', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 00:11:58', '2018-08-17 00:11:58'),
(304, 309, 'Negative', '2018-08-08', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 00:13:53', '2018-08-17 00:13:53'),
(305, 310, 'Negative', '2018-08-08', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 00:15:53', '2018-08-17 00:15:53'),
(306, 311, 'Negative', '2018-08-06', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 00:18:35', '2018-08-17 00:18:35'),
(307, 312, 'Negative', '2018-08-06', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 16:22:37', '2018-08-17 16:22:37'),
(308, 313, 'Negative', '2018-08-07', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 16:24:42', '2018-08-17 16:24:42'),
(309, 314, 'Negative', '2018-08-07', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 16:26:46', '2018-08-17 16:26:46'),
(310, 315, 'Negative', '2018-08-07', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 16:29:04', '2018-08-17 16:29:04'),
(311, 316, 'Negative', '2018-08-06', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 16:30:38', '2018-08-17 16:30:38'),
(312, 317, 'Negative', '2018-08-06', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 16:33:04', '2018-08-17 16:33:04'),
(313, 318, 'Negative', '2018-08-06', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 16:36:03', '2018-08-17 16:36:03'),
(314, 319, 'Negative', '2018-08-06', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 16:38:07', '2018-08-17 16:38:07'),
(315, 320, 'Negative', '2018-08-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 16:39:51', '2018-08-17 16:39:51'),
(316, 321, 'Negative', '2018-08-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 16:41:35', '2018-08-17 16:41:35'),
(317, 322, 'Negative', '2018-08-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 16:43:25', '2018-08-17 16:43:25'),
(318, 323, 'Negative', '2018-08-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 16:46:10', '2018-08-17 16:46:10'),
(319, 324, 'Negative', '2018-08-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 16:48:32', '2018-08-17 16:48:32'),
(320, 325, 'Negative', '2018-08-02', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 16:50:25', '2018-08-17 16:50:25'),
(321, 326, 'Negative', '2018-08-01', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-08-17 16:52:20', '2018-08-17 16:52:20'),
(322, 327, 'Negative', '2018-08-16', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-12 23:53:33', '2018-09-12 23:53:33'),
(323, 328, 'Negative', '2018-08-16', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-12 23:58:13', '2018-09-12 23:58:13'),
(324, 329, 'Negative', '2018-08-16', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:11:25', '2018-09-13 00:11:25'),
(325, 330, 'Negative', '2018-08-16', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:13:50', '2018-09-13 00:13:50'),
(326, 331, 'Negative', '2018-08-16', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:16:01', '2018-09-13 00:16:01'),
(327, 332, 'Negative', '2018-08-16', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:18:07', '2018-09-13 00:18:07'),
(328, 333, 'Negative', '2018-08-16', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:19:57', '2018-09-13 00:19:57'),
(329, 334, 'Negative', '2018-08-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:23:18', '2018-09-13 00:23:18'),
(330, 335, 'Negative', '2018-08-17', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:25:24', '2018-09-13 00:25:24'),
(331, 336, 'Negative', '2018-08-17', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:28:07', '2018-09-13 00:28:07'),
(332, 337, 'Negative', '2018-08-17', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:30:09', '2018-09-13 00:30:09'),
(333, 338, 'Error', '2018-08-17', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:33:10', '2018-09-13 00:33:10'),
(334, 339, 'Negative', '2018-08-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:35:10', '2018-09-13 00:35:10'),
(335, 340, 'Negative', '2018-08-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:38:29', '2018-09-13 00:38:29'),
(336, 341, 'Negative', '2018-08-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:40:19', '2018-09-13 00:40:19'),
(337, 342, 'Negative', '2018-08-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:42:39', '2018-09-13 00:42:39'),
(338, 343, 'Negative', '2018-08-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:44:31', '2018-09-13 00:44:31'),
(339, 344, 'Negative', '2018-08-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:46:05', '2018-09-13 00:46:05'),
(340, 345, 'Negative', '2018-08-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:49:12', '2018-09-13 00:49:12'),
(341, 346, 'Negative', '2018-08-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:49:26', '2018-09-13 00:49:26'),
(342, 347, 'Negative', '2018-08-20', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:52:57', '2018-09-13 00:52:57'),
(343, 348, 'Negative', '2018-08-22', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 00:55:08', '2018-09-13 00:55:08'),
(344, 349, 'Negative', '2018-08-22', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:01:05', '2018-09-13 01:01:05'),
(345, 350, 'Negative', '2018-08-22', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:04:40', '2018-09-13 01:04:40'),
(346, 351, 'Negative', '2018-08-30', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:06:35', '2018-09-13 01:06:35'),
(347, 352, 'Negative', '2018-08-30', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:08:53', '2018-09-13 01:08:53'),
(348, 353, 'Negative', '2018-08-28', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:10:51', '2018-09-13 01:10:51'),
(349, 354, 'Negative', '2018-08-28', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:12:43', '2018-09-13 01:12:43'),
(350, 355, 'Negative', '2018-08-28', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:14:36', '2018-09-13 01:14:36'),
(351, 356, 'Negative', '2018-08-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:16:31', '2018-09-13 01:16:31'),
(352, 357, 'Negative', '2018-08-29', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:18:32', '2018-09-13 01:18:32'),
(353, 358, 'Negative', '2018-08-29', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:20:05', '2018-09-13 01:20:05'),
(354, 359, 'Negative', '2018-08-29', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:21:44', '2018-09-13 01:21:44'),
(355, 360, 'Negative', '2018-08-29', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:23:57', '2018-09-13 01:23:57'),
(356, 361, 'Negative', '2018-08-28', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:25:48', '2018-09-13 01:25:48'),
(357, 362, 'Positive', '2018-08-28', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:27:34', '2018-09-13 01:27:34'),
(358, 363, 'Negative', '2018-08-27', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:29:46', '2018-09-13 01:29:46'),
(359, 364, 'Negative', '2018-08-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:34:56', '2018-09-13 01:34:56'),
(360, 365, 'Negative', '2018-08-24', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:37:02', '2018-09-13 01:37:02'),
(361, 366, 'Negative', '2018-08-23', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:39:14', '2018-09-13 01:39:14'),
(362, 367, 'Negative', '2018-08-22', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:40:58', '2018-09-13 01:40:58'),
(363, 368, 'Negative', '2018-08-23', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:42:31', '2018-09-13 01:42:31'),
(364, 369, 'Negative', '2018-08-23', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:44:26', '2018-09-13 01:44:26'),
(365, 370, 'Negative', '2018-08-23', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:46:24', '2018-09-13 01:46:24'),
(366, 371, 'Negative', '2018-09-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:48:15', '2018-09-13 01:48:15'),
(367, 372, 'Negative', '2018-09-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:50:47', '2018-09-13 01:50:47'),
(368, 373, 'Negative', '2018-09-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:52:34', '2018-09-13 01:52:34'),
(369, 374, 'Negative', '2018-09-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:54:11', '2018-09-13 01:54:11'),
(370, 375, 'Negative', '2018-07-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:56:10', '2018-09-13 01:56:10'),
(371, 376, 'Negative', '2018-09-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:57:45', '2018-09-13 01:57:45'),
(372, 377, 'Negative', '2018-09-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 01:59:29', '2018-09-13 01:59:29'),
(373, 378, 'Negative', '2018-09-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 02:01:18', '2018-09-13 02:01:18'),
(374, 379, 'Negative', '2018-09-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 02:03:09', '2018-09-13 02:03:09'),
(375, 380, 'Negative', '2018-09-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 02:04:37', '2018-09-13 02:04:37'),
(376, 381, 'Negative', '2018-09-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 02:06:22', '2018-09-13 02:06:22'),
(377, 382, 'Negative', '2018-09-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 02:07:51', '2018-09-13 02:07:51'),
(378, 383, 'Negative', '2018-09-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 02:09:33', '2018-09-13 02:09:33'),
(379, 384, 'Negative', '2018-09-10', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 02:11:24', '2018-09-13 02:11:24'),
(380, 385, 'Negative', '2018-09-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 02:13:43', '2018-09-13 02:13:43'),
(381, 386, 'Negative', '2018-08-26', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 19:30:07', '2018-09-13 19:30:07'),
(382, 387, 'Negative', '2018-09-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 19:46:00', '2018-09-13 19:46:00'),
(383, 388, 'Negative', '2018-09-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 19:50:25', '2018-09-13 19:50:25'),
(384, 389, 'Negative', '2018-09-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 19:54:10', '2018-09-13 19:54:10'),
(385, 390, 'Negative', '2018-09-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 19:58:36', '2018-09-13 19:58:36'),
(386, 391, 'Negative', '2018-09-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:04:10', '2018-09-13 20:04:10'),
(387, 392, 'Negative', '2018-09-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:06:26', '2018-09-13 20:06:26'),
(388, 393, 'Negative', '2018-09-11', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:08:25', '2018-09-13 20:08:25'),
(389, 394, 'Error', '2018-09-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:10:37', '2018-09-13 20:10:37'),
(390, 395, 'Error', '2018-09-03', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:12:54', '2018-09-13 20:12:54'),
(391, 396, 'Negative', '2018-09-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:17:52', '2018-09-13 20:17:52'),
(392, 397, 'Error', '2018-09-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:20:57', '2018-09-13 20:20:57'),
(393, 398, 'Error', '2018-09-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:23:39', '2018-09-13 20:23:39'),
(394, 399, 'Negative', '2018-09-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:25:24', '2018-09-13 20:25:24'),
(395, 400, 'Negative', '2018-09-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:27:08', '2018-09-13 20:27:08'),
(396, 401, 'Negative', '2018-09-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:29:04', '2018-09-13 20:29:04'),
(397, 402, 'Negative', '2018-09-04', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:30:46', '2018-09-13 20:30:46'),
(398, 403, 'Negative', '2018-09-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:32:38', '2018-09-13 20:32:38'),
(399, 404, 'Negative', '2018-09-06', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:35:01', '2018-09-13 20:35:01'),
(400, 405, 'Negative', '2018-09-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:37:17', '2018-09-13 20:37:17'),
(401, 406, 'Negative', '2018-09-05', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 20:39:10', '2018-09-13 20:39:10'),
(402, 407, 'Negative', '2018-09-06', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 21:24:25', '2018-09-13 21:24:25'),
(403, 408, 'Negative', '2018-09-06', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 21:26:37', '2018-09-13 21:26:37'),
(404, 409, 'Negative', '2018-09-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 21:28:34', '2018-09-13 21:28:34'),
(405, 410, 'Negative', '2018-09-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 21:30:51', '2018-09-13 21:30:51');
INSERT INTO `poc_results` (`id`, `patient_id`, `results`, `test_date`, `test_time`, `error_code`, `tested_by`, `dispatched_by`, `equipment_used`, `dispatched_date`, `created_at`, `updated_at`) VALUES
(406, 411, 'Negative', '2018-09-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 21:32:34', '2018-09-13 21:32:34'),
(407, 412, 'Negative', '2018-09-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 21:34:30', '2018-09-13 21:34:30'),
(408, 413, 'Negative', '2018-09-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 21:37:07', '2018-09-13 21:37:07'),
(409, 414, 'Negative', '2018-09-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 21:38:52', '2018-09-13 21:38:52'),
(410, 415, 'Negative', '2018-09-12', '00:00:00', NULL, '', '', '', '0000-00-00', '2018-09-13 21:41:20', '2018-09-13 21:41:20'),
(411, 416, 'Negative', '2018-09-17', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-17', '2018-12-11 19:58:58', '2018-12-11 19:58:58'),
(412, 417, 'Negative', '2018-09-17', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-17', '2018-12-11 20:03:08', '2018-12-11 20:03:08'),
(413, 418, 'Negative', '2018-09-17', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-17', '2018-12-11 20:06:29', '2018-12-11 20:06:29'),
(414, 419, 'Negative', '2018-09-17', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-17', '2018-12-11 20:09:20', '2018-12-11 20:09:20'),
(415, 420, 'Negative', '2018-09-17', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-17', '2018-12-11 20:12:18', '2018-12-11 20:12:18'),
(416, 421, 'Negative', '2018-09-17', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-17', '2018-12-11 20:15:06', '2018-12-11 20:15:06'),
(417, 422, 'Negative', '2018-09-17', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-17', '2018-12-11 20:17:01', '2018-12-11 20:17:01'),
(418, 423, 'Negative', '2018-09-19', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-19', '2018-12-11 20:23:22', '2018-12-11 20:23:22'),
(419, 424, 'Negative', '2018-09-14', '00:00:00', '', 'NGOBI', 'ND', 'GeneXpert', '2018-09-14', '2018-12-11 20:27:24', '2018-12-11 20:27:24'),
(420, 425, 'Positive', '2018-09-14', '00:00:00', '', 'NGOBI', 'ND', 'GeneXpert', '2018-09-14', '2018-12-11 20:31:21', '2018-12-11 20:31:21'),
(421, 426, 'Negative', '2018-09-14', '00:00:00', '', 'NGOBI', 'ND', 'GeneXpert', '2018-09-14', '2018-12-11 20:35:09', '2018-12-11 20:35:09'),
(422, 427, 'Negative', '2018-09-13', '00:00:00', '', 'NGOBI', 'ND', 'GeneXpert', '2018-09-13', '2018-12-11 20:38:24', '2018-12-11 20:38:24'),
(423, 428, 'Negative', '2018-09-13', '00:00:00', '', 'NGOBI', 'ND', 'GeneXpert', '2018-09-13', '2018-12-11 20:41:14', '2018-12-11 20:41:14'),
(424, 429, 'Negative', '2018-09-16', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-16', '2018-12-11 20:44:06', '2018-12-11 20:44:06'),
(425, 430, 'Negative', '2018-09-17', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-17', '2018-12-11 20:50:03', '2018-12-11 20:50:03'),
(426, 431, 'Negative', '2018-09-27', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-27', '2018-12-11 20:55:14', '2018-12-11 20:55:14'),
(427, 432, 'Negative', '2018-09-27', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-27', '2018-12-11 21:03:32', '2018-12-11 21:03:32'),
(428, 433, 'Negative', '2018-09-27', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-27', '2018-12-11 21:07:03', '2018-12-11 21:07:03'),
(429, 434, 'Negative', '2018-09-27', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-27', '2018-12-11 21:09:30', '2018-12-11 21:09:30'),
(430, 435, 'Negative', '2018-09-25', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-25', '2018-12-11 21:12:40', '2018-12-11 21:12:40'),
(431, 436, 'Negative', '2018-09-25', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-25', '2018-12-11 21:16:36', '2018-12-11 21:16:36'),
(432, 437, 'Negative', '2018-10-08', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-08', '2018-12-11 21:21:24', '2018-12-11 21:21:24'),
(433, 438, 'Negative', '2018-10-08', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-08', '2018-12-11 21:29:02', '2018-12-11 21:29:02'),
(434, 439, 'Negative', '2018-10-08', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-08', '2018-12-11 21:32:35', '2018-12-11 21:32:35'),
(435, 440, 'Negative', '2018-10-08', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-08', '2018-12-11 21:36:24', '2018-12-11 21:36:24'),
(436, 441, 'Negative', '2018-10-02', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-02', '2018-12-11 21:39:15', '2018-12-11 21:39:15'),
(437, 442, 'Negative', '2018-10-02', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-02', '2018-12-11 22:25:59', '2018-12-11 22:25:59'),
(438, 443, 'Negative', '2018-10-02', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-02', '2018-12-11 22:32:16', '2018-12-11 22:32:16'),
(439, 444, 'Negative', '2018-10-02', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-02', '2018-12-11 22:35:03', '2018-12-11 22:35:03'),
(440, 445, 'Negative', '2018-10-03', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-03', '2018-12-11 22:38:02', '2018-12-11 22:38:02'),
(441, 446, 'Negative', '2018-10-03', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-03', '2018-12-11 22:45:03', '2018-12-11 22:45:03'),
(442, 447, 'Negative', '2018-10-03', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-03', '2018-12-11 22:49:14', '2018-12-11 22:49:14'),
(443, 448, 'Negative', '2018-10-03', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-03', '2018-12-11 22:57:48', '2018-12-11 22:57:48'),
(444, 449, 'Negative', '2018-10-02', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-02', '2018-12-11 23:09:39', '2018-12-11 23:09:39'),
(445, 450, 'Negative', '2018-10-02', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-02', '2018-12-11 23:12:19', '2018-12-11 23:12:19'),
(446, 451, 'Negative', '2018-10-04', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-04', '2018-12-11 23:17:13', '2018-12-11 23:17:13'),
(447, 452, 'Negative', '2018-10-04', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-04', '2018-12-11 23:24:13', '2018-12-11 23:24:13'),
(448, 453, 'Negative', '2018-10-04', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-04', '2018-12-11 23:28:20', '2018-12-11 23:28:20'),
(449, 454, 'Negative', '2018-10-03', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-03', '2018-12-11 23:31:54', '2018-12-11 23:31:54'),
(450, 455, 'Negative', '2018-10-03', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-03', '2018-12-11 23:41:56', '2018-12-11 23:41:56'),
(451, 456, 'Negative', '2018-10-04', '00:00:00', '', 'FLAVIA', 'MP', 'GeneXpert', '2018-10-04', '2018-12-12 17:45:16', '2018-12-12 17:45:16'),
(452, 457, 'Negative', '2018-10-03', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-03', '2018-12-12 17:47:49', '2018-12-12 17:47:49'),
(453, 458, 'Negative', '2018-10-03', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-03', '2018-12-12 17:51:21', '2018-12-12 17:51:21'),
(454, 459, 'Negative', '2018-10-03', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-03', '2018-12-12 18:01:18', '2018-12-12 18:01:18'),
(455, 460, 'Negative', '2018-10-01', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-01', '2018-12-12 18:04:41', '2018-12-12 18:04:41'),
(456, 461, 'Negative', '2018-10-01', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-01', '2018-12-12 18:10:36', '2018-12-12 18:10:36'),
(457, 462, 'Negative', '2018-10-01', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-01', '2018-12-12 18:15:59', '2018-12-12 18:15:59'),
(458, 463, 'Negative', '2018-10-01', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-01', '2018-12-12 18:24:08', '2018-12-12 18:24:08'),
(459, 464, 'Negative', '2018-10-01', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-01', '2018-12-12 18:31:21', '2018-12-12 18:31:21'),
(460, 465, 'Negative', '2018-10-01', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-01', '2018-12-12 18:35:31', '2018-12-12 18:35:31'),
(461, 466, 'Negative', '2018-10-01', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-01', '2018-12-12 18:40:13', '2018-12-12 18:40:13'),
(462, 467, 'Negative', '2018-09-26', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-28', '2018-12-12 18:46:08', '2018-12-12 18:46:08'),
(463, 468, 'Negative', '2018-09-26', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-19', '2018-12-12 18:51:14', '2018-12-12 18:51:14'),
(464, 469, 'Negative', '2018-09-25', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-25', '2018-12-12 18:55:31', '2018-12-12 18:55:31'),
(465, 470, 'Negative', '2018-09-28', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-28', '2018-12-12 19:00:47', '2018-12-12 19:00:47'),
(466, 471, 'Negative', '2018-10-25', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-25', '2018-12-12 19:05:12', '2018-12-12 19:05:12'),
(467, 472, 'Negative', '2018-09-24', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-24', '2018-12-12 19:10:15', '2018-12-12 19:10:15'),
(468, 473, 'Negative', '2018-09-24', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-24', '2018-12-12 19:15:19', '2018-12-12 19:15:19'),
(469, 474, 'Negative', '2018-09-25', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-25', '2018-12-12 19:20:54', '2018-12-12 19:20:54'),
(470, 475, 'Negative', '2018-09-24', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-09-24', '2018-12-12 19:27:15', '2018-12-12 19:27:15'),
(471, 476, 'Negative', '2018-09-24', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-09-24', '2018-12-12 19:30:37', '2018-12-12 19:30:37'),
(472, 477, 'Negative', '2018-09-24', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-24', '2018-12-12 19:43:20', '2018-12-12 19:43:20'),
(473, 478, 'Negative', '2018-09-20', '00:00:00', '', 'NGOBI', '', 'GeneXpert', '0000-00-00', '2018-12-12 19:47:14', '2018-12-12 19:47:14'),
(474, 479, 'Negative', '2018-09-20', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-20', '2018-12-12 19:52:24', '2018-12-12 19:52:24'),
(475, 480, 'Negative', '2018-09-20', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-20', '2018-12-12 20:01:23', '2018-12-12 20:01:23'),
(476, 481, 'Negative', '2018-09-19', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-19', '2018-12-12 20:05:43', '2018-12-12 20:05:43'),
(477, 482, 'Negative', '2018-09-18', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-18', '2018-12-12 20:09:11', '2018-12-12 20:09:11'),
(478, 483, 'Negative', '2018-09-17', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-17', '2018-12-12 20:16:03', '2018-12-12 20:16:03'),
(479, 484, 'Negative', '2018-09-17', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-17', '2018-12-12 20:19:22', '2018-12-12 20:19:22'),
(480, 485, 'Error', '2018-11-08', '00:00:00', '5016', 'NGOBI', 'MP', 'GeneXpert', '2018-11-08', '2018-12-12 20:29:55', '2018-12-12 20:29:55'),
(481, 486, 'Negative', '2018-11-08', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-11-08', '2018-12-12 20:34:45', '2018-12-12 20:34:45'),
(482, 487, 'Negative', '2018-12-07', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-11-07', '2018-12-12 20:38:52', '2018-12-12 20:38:52'),
(483, 488, 'Negative', '2018-11-07', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-11-07', '2018-12-12 20:41:58', '2018-12-12 20:41:58'),
(484, 489, 'Negative', '2018-11-07', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-11-07', '2018-12-12 20:45:55', '2018-12-12 20:45:55'),
(485, 490, 'Negative', '2018-11-07', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-11-07', '2018-12-12 20:49:50', '2018-12-12 20:49:50'),
(486, 491, 'Negative', '2018-11-07', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-11-07', '2018-12-12 20:53:20', '2018-12-12 20:53:20'),
(487, 492, 'Negative', '2018-11-06', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-11-06', '2018-12-12 20:59:25', '2018-12-12 20:59:25'),
(488, 493, 'Negative', '2018-11-06', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-11-06', '2018-12-12 21:04:34', '2018-12-12 21:04:34'),
(489, 494, 'Negative', '2018-11-06', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-06', '2018-12-12 21:09:33', '2018-12-12 21:09:33'),
(490, 495, 'Negative', '2018-11-06', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-11-06', '2018-12-12 21:14:35', '2018-12-12 21:14:35'),
(491, 497, 'Negative', '2018-11-06', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-06', '2018-12-12 21:20:31', '2018-12-12 21:20:31'),
(492, 496, 'Negative', '2018-11-06', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-11-06', '2018-12-12 21:21:12', '2018-12-12 21:21:12'),
(493, 498, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-12 22:51:36', '2018-12-12 22:51:36'),
(494, 499, 'Negative', '2018-11-06', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-06', '2018-12-12 22:56:25', '2018-12-12 22:56:25'),
(495, 500, 'Negative', '2018-11-06', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-06', '2018-12-12 23:01:47', '2018-12-12 23:01:47'),
(496, 501, 'Negative', '2018-11-06', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-06', '2018-12-12 23:05:56', '2018-12-12 23:05:56'),
(497, 502, 'Negative', '2018-11-06', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-06', '2018-12-12 23:10:59', '2018-12-12 23:10:59'),
(498, 503, 'Negative', '2018-11-06', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-06', '2018-12-12 23:14:52', '2018-12-12 23:14:52'),
(499, 504, 'Negative', '2018-11-06', '00:00:00', '', 'paul', 'mp', 'GeneXpert', '2018-11-06', '2018-12-12 23:19:09', '2018-12-12 23:19:09'),
(500, 505, 'Negative', '2018-11-06', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-06', '2018-12-12 23:24:45', '2018-12-12 23:24:45'),
(501, 506, 'Negative', '2018-11-06', '00:00:00', '', 'ngobi', '', 'GeneXpert', '2018-11-06', '2018-12-12 23:28:34', '2018-12-12 23:28:34'),
(502, 507, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-12 23:33:38', '2018-12-12 23:33:38'),
(503, 508, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-12 23:41:54', '2018-12-12 23:41:54'),
(504, 509, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-12 23:42:50', '2018-12-12 23:42:50'),
(505, 510, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-12 23:45:59', '2018-12-12 23:45:59'),
(506, 511, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-12 23:49:38', '2018-12-12 23:49:38'),
(507, 512, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-12 23:54:56', '2018-12-12 23:54:56'),
(508, 513, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-13 00:01:01', '2018-12-13 00:01:01'),
(509, 514, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-13 00:08:10', '2018-12-13 00:08:10'),
(510, 515, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-13 00:12:17', '2018-12-13 00:12:17'),
(511, 516, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-13 00:29:08', '2018-12-13 00:29:08'),
(512, 517, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-13 00:34:04', '2018-12-13 00:34:04'),
(513, 518, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-13 00:38:11', '2018-12-13 00:38:11'),
(514, 519, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-13 00:43:55', '2018-12-13 00:43:55'),
(515, 520, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-13 00:50:16', '2018-12-13 00:50:16'),
(516, 521, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-13 00:56:42', '2018-12-13 00:56:42'),
(517, 522, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-13 01:02:26', '2018-12-13 01:02:26'),
(518, 523, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-13 01:06:17', '2018-12-13 01:06:17'),
(519, 524, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-13 01:11:18', '2018-12-13 01:11:18'),
(520, 525, 'Negative', '2018-11-05', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-11-05', '2018-12-13 01:16:24', '2018-12-13 01:16:24'),
(521, 526, 'Negative', '2018-10-31', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-10-31', '2018-12-13 01:22:10', '2018-12-13 01:22:10'),
(522, 527, 'Negative', '2018-10-31', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-10-31', '2018-12-13 01:28:15', '2018-12-13 01:28:15'),
(523, 528, 'Negative', '2018-10-31', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-10-31', '2018-12-13 01:32:53', '2018-12-13 01:32:53'),
(524, 529, 'Negative', '2018-10-31', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-10-31', '2018-12-13 01:39:38', '2018-12-13 01:39:38'),
(525, 530, 'Negative', '2018-10-31', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-10-31', '2018-12-13 01:45:57', '2018-12-13 01:45:57'),
(526, 531, 'Negative', '2018-10-30', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-10-30', '2018-12-13 01:50:12', '2018-12-13 01:50:12'),
(527, 532, 'Negative', '2018-10-30', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-10-30', '2018-12-13 01:55:52', '2018-12-13 01:55:52'),
(528, 533, 'Negative', '2018-10-22', '00:00:00', '', 'ngobi', 'mp', 'GeneXpert', '2018-10-22', '2018-12-13 02:01:09', '2018-12-13 02:01:09'),
(529, 534, 'Negative', '2018-10-29', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-29', '2018-12-13 16:38:10', '2018-12-13 16:38:10'),
(530, 535, 'Negative', '2018-10-24', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-24', '2018-12-13 16:40:27', '2018-12-13 16:40:27'),
(531, 536, 'Negative', '2018-10-25', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-25', '2018-12-13 16:42:33', '2018-12-13 16:42:33'),
(532, 537, 'Negative', '2018-10-23', '00:00:00', '', 'NGOBI PAUL', 'MP', 'GeneXpert', '2018-10-23', '2018-12-13 16:45:27', '2018-12-13 16:45:27'),
(533, 538, 'Negative', '2018-10-24', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-24', '2018-12-13 16:52:55', '2018-12-13 16:52:55'),
(534, 539, 'Negative', '2018-10-23', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-23', '2018-12-13 16:57:20', '2018-12-13 16:57:20'),
(535, 540, 'Negative', '2018-10-23', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-23', '2018-12-13 16:59:37', '2018-12-13 16:59:37'),
(536, 541, 'Negative', '2018-10-24', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-24', '2018-12-13 17:02:02', '2018-12-13 17:02:02'),
(537, 542, 'Negative', '2018-10-24', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-24', '2018-12-13 17:04:36', '2018-12-13 17:04:36'),
(538, 543, 'Negative', '2018-10-22', '00:00:00', '', 'FLAVIA', 'MP', 'GeneXpert', '2018-10-22', '2018-12-13 17:08:06', '2018-12-13 17:08:06'),
(539, 544, 'Negative', '2018-10-22', '00:00:00', '', 'FLAVIA', 'MP', 'GeneXpert', '2018-10-22', '2018-12-13 17:11:08', '2018-12-13 17:11:08'),
(540, 545, 'Negative', '2018-10-22', '00:00:00', '', 'FLAVIA', 'MP', 'GeneXpert', '2018-10-22', '2018-12-13 17:14:10', '2018-12-13 17:14:10'),
(541, 546, 'Negative', '2018-11-23', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-23', '2018-12-13 17:16:53', '2018-12-13 17:16:53'),
(542, 547, 'Negative', '2018-10-25', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-25', '2018-12-13 17:19:51', '2018-12-13 17:19:51'),
(543, 548, 'Negative', '2018-10-25', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-25', '2018-12-13 17:22:54', '2018-12-13 17:22:54'),
(544, 550, 'Negative', '2018-11-19', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-19', '2018-12-12 19:29:15', '2018-12-12 19:29:15'),
(545, 551, 'Negative', '2018-11-19', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-19', '2018-12-12 19:31:58', '2018-12-12 19:31:58'),
(546, 552, 'Negative', '2018-11-15', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-15', '2018-12-12 19:36:44', '2018-12-12 19:36:44'),
(547, 553, 'Negative', '2018-11-15', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-15', '2018-12-12 19:40:53', '2018-12-12 19:40:53'),
(548, 554, 'Negative', '2018-11-16', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-16', '2018-12-12 19:48:20', '2018-12-12 19:48:20'),
(549, 555, 'Negative', '2018-11-16', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-16', '2018-12-12 19:51:49', '2018-12-12 19:51:49'),
(550, 556, 'Negative', '2018-11-19', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-19', '2018-12-12 19:55:22', '2018-12-12 19:55:22'),
(551, 557, 'Negative', '2018-11-12', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-12', '2018-12-12 19:57:54', '2018-12-12 19:57:54'),
(552, 558, 'Negative', '2018-11-12', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-12', '2018-12-12 20:01:14', '2018-12-12 20:01:14'),
(553, 559, 'Negative', '2018-11-12', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-12', '2018-12-12 20:05:21', '2018-12-12 20:05:21'),
(554, 560, 'Negative', '2018-11-12', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-12', '2018-12-12 20:08:12', '2018-12-12 20:08:12'),
(555, 561, 'Negative', '2018-11-12', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-12', '2018-12-12 20:11:30', '2018-12-12 20:11:30'),
(556, 562, 'Negative', '2018-11-15', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-15', '2018-12-12 20:14:35', '2018-12-12 20:14:35'),
(557, 563, 'Negative', '2018-11-15', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-15', '2018-12-12 20:17:05', '2018-12-12 20:17:05'),
(558, 564, 'Negative', '2018-11-15', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-15', '2018-12-12 20:22:02', '2018-12-12 20:22:02'),
(559, 565, 'Negative', '2018-11-16', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-19', '2018-12-12 20:26:50', '2018-12-12 20:26:50'),
(560, 566, 'Negative', '2018-11-13', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-13', '2018-12-12 20:29:39', '2018-12-12 20:29:39'),
(561, 567, 'Negative', '2018-11-13', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-13', '2018-12-12 20:33:03', '2018-12-12 20:33:03'),
(562, 568, 'Negative', '2018-11-13', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-13', '2018-12-12 20:35:23', '2018-12-12 20:35:23'),
(563, 569, 'Negative', '2018-11-13', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-13', '2018-12-12 20:38:51', '2018-12-12 20:38:51'),
(564, 570, 'Negative', '2018-11-13', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-13', '2018-12-12 20:42:08', '2018-12-12 20:42:08'),
(565, 571, 'Negative', '2018-11-14', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-14', '2018-12-12 20:45:19', '2018-12-12 20:45:19'),
(566, 572, 'Positive', '2018-11-16', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-16', '2018-12-12 20:49:00', '2018-12-12 20:49:00'),
(567, 573, 'Negative', '2018-11-19', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-19', '2018-12-12 20:52:53', '2018-12-12 20:52:53'),
(568, 574, 'Negative', '2018-11-14', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-14', '2018-12-12 20:55:48', '2018-12-12 20:55:48'),
(569, 575, 'Negative', '2018-11-15', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-15', '2018-12-12 20:58:45', '2018-12-12 20:58:45'),
(570, 576, 'Negative', '2018-11-14', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-14', '2018-12-12 21:02:41', '2018-12-12 21:02:41'),
(571, 577, 'Negative', '2018-11-19', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-19', '2018-12-12 21:06:03', '2018-12-12 21:06:03'),
(572, 578, 'Negative', '2018-11-19', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-19', '2018-12-12 21:08:39', '2018-12-12 21:08:39'),
(573, 579, 'Negative', '2018-11-19', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-19', '2018-12-12 21:12:56', '2018-12-12 21:12:56'),
(574, 580, 'Negative', '2018-11-19', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-19', '2018-12-12 21:15:34', '2018-12-12 21:15:34'),
(575, 581, 'Negative', '2018-11-13', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-13', '2018-12-12 21:19:36', '2018-12-12 21:19:36'),
(576, 582, 'Negative', '2018-11-13', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-13', '2018-12-12 21:23:29', '2018-12-12 21:23:29'),
(577, 583, 'Negative', '2018-11-13', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-13', '2018-12-12 21:26:24', '2018-12-12 21:26:24'),
(578, 584, 'Negative', '2018-11-19', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-19', '2018-12-12 21:29:39', '2018-12-12 21:29:39'),
(579, 585, 'Negative', '2018-11-19', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-19', '2018-12-12 21:32:44', '2018-12-12 21:32:44'),
(580, 586, 'Negative', '2018-11-20', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-20', '2018-12-12 21:36:13', '2018-12-12 21:36:13'),
(581, 587, 'Negative', '2018-11-20', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-20', '2018-12-12 21:38:26', '2018-12-12 21:38:26'),
(582, 588, 'Negative', '2018-11-20', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-20', '2018-12-12 21:41:29', '2018-12-12 21:41:29'),
(583, 589, 'Negative', '2018-11-20', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-20', '2018-12-12 21:44:10', '2018-12-12 21:44:10'),
(584, 590, 'Negative', '2018-11-20', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-20', '2018-12-12 21:46:41', '2018-12-12 21:46:41'),
(585, 591, 'Negative', '2018-11-20', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-20', '2018-12-12 21:49:41', '2018-12-12 21:49:41'),
(586, 592, 'Negative', '2018-11-20', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-20', '2018-12-12 21:53:27', '2018-12-12 21:53:27'),
(587, 593, 'Negative', '2018-11-20', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-20', '2018-12-12 21:56:52', '2018-12-12 21:56:52'),
(588, 594, 'Negative', '2018-11-21', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-21', '2018-12-12 22:00:21', '2018-12-12 22:00:21'),
(589, 595, 'Negative', '2018-11-21', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-21', '2018-12-12 22:02:53', '2018-12-12 22:02:53'),
(590, 596, 'Negative', '2018-11-21', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-21', '2018-12-12 22:05:00', '2018-12-12 22:05:00'),
(591, 597, 'Negative', '2018-11-21', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-21', '2018-12-12 22:08:46', '2018-12-12 22:08:46'),
(592, 598, 'Negative', '2018-11-21', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-21', '2018-12-12 22:11:23', '2018-12-12 22:11:23'),
(593, 599, 'Negative', '2018-11-21', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-21', '2018-12-12 22:13:50', '2018-12-12 22:13:50'),
(594, 600, 'Negative', '2018-11-22', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-22', '2018-12-12 22:17:07', '2018-12-12 22:17:07'),
(595, 601, 'Negative', '2018-11-09', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-09', '2018-12-12 22:19:48', '2018-12-12 22:19:48'),
(596, 602, 'Negative', '2018-11-09', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-09', '2018-12-12 22:22:32', '2018-12-12 22:22:32'),
(597, 603, 'Negative', '2018-11-09', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-09', '2018-12-12 22:25:53', '2018-12-12 22:25:53'),
(598, 604, 'Negative', '2018-11-09', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-09', '2018-12-12 22:29:06', '2018-12-12 22:29:06'),
(599, 605, 'Positive', '2018-11-09', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-09', '2018-12-12 22:33:11', '2018-12-12 22:33:11'),
(600, 606, 'Negative', '2018-11-06', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-06', '2018-12-12 22:36:30', '2018-12-12 22:36:30'),
(601, 607, 'Negative', '2018-10-31', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-31', '2018-12-12 22:40:13', '2018-12-12 22:40:13'),
(602, 608, 'Negative', '2018-10-30', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-30', '2018-12-12 22:43:30', '2018-12-12 22:43:30'),
(603, 609, 'Negative', '2018-10-30', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-30', '2018-12-12 22:54:02', '2018-12-12 22:54:02'),
(604, 610, 'Negative', '2018-10-30', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-30', '2018-12-12 22:57:03', '2018-12-12 22:57:03'),
(605, 611, 'Negative', '2018-10-30', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-30', '2018-12-12 23:01:06', '2018-12-12 23:01:06'),
(606, 612, 'Negative', '2018-10-30', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-30', '2018-12-12 23:03:50', '2018-12-12 23:03:50'),
(607, 613, 'Negative', '2018-10-29', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-29', '2018-12-12 23:06:49', '2018-12-12 23:06:49'),
(608, 614, 'Negative', '2018-10-29', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-29', '2018-12-12 23:13:03', '2018-12-12 23:13:03'),
(609, 615, 'Negative', '2018-10-29', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-29', '2018-12-12 23:14:56', '2018-12-12 23:14:56'),
(610, 616, 'Negative', '2018-10-29', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-29', '2018-12-12 23:17:47', '2018-12-12 23:17:47'),
(611, 617, 'Negative', '2018-10-29', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-29', '2018-12-12 23:20:03', '2018-12-12 23:20:03'),
(612, 618, 'Negative', '2018-10-29', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-29', '2018-12-12 23:22:23', '2018-12-12 23:22:23'),
(613, 619, 'Negative', '2018-10-29', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-29', '2018-12-12 23:25:05', '2018-12-12 23:25:05'),
(614, 620, 'Error', '2018-10-29', '00:00:00', '5017', 'PAUL', 'MP', 'GeneXpert', '2018-10-29', '2018-12-12 23:28:03', '2018-12-12 23:28:03'),
(615, 621, 'Negative', '2018-10-30', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-30', '2018-12-12 23:30:44', '2018-12-12 23:30:44'),
(616, 622, 'Negative', '2018-10-29', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-10-29', '2018-12-12 23:33:26', '2018-12-12 23:33:26'),
(617, 623, 'Negative', '2018-10-11', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-11', '2018-12-12 16:49:50', '2018-12-12 16:49:50'),
(618, 624, 'Negative', '2018-10-11', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-11', '2018-12-12 16:52:37', '2018-12-12 16:52:37'),
(619, 625, 'Negative', '2018-10-10', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-10', '2018-12-12 16:55:49', '2018-12-12 16:55:49'),
(620, 626, 'Negative', '2018-10-10', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-10', '2018-12-12 17:08:19', '2018-12-12 17:08:19'),
(621, 627, 'Negative', '2018-10-10', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-10', '2018-12-12 17:10:36', '2018-12-12 17:10:36'),
(622, 628, 'Negative', '2018-10-10', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-10', '2018-12-12 17:13:07', '2018-12-12 17:13:07'),
(623, 631, 'Negative', '2018-10-10', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-10', '2018-12-12 17:20:21', '2018-12-12 17:20:21'),
(624, 632, 'Negative', '2018-10-10', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-10', '2018-12-12 17:23:33', '2018-12-12 17:23:33'),
(625, 633, 'Negative', '2018-10-10', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-10', '2018-12-12 17:26:29', '2018-12-12 17:26:29'),
(626, 634, 'Negative', '2018-09-17', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-17', '2018-12-12 17:29:43', '2018-12-12 17:29:43'),
(627, 635, 'Error', '2018-11-22', '00:00:00', '5016', 'NGOBI', 'MP', 'GeneXpert', '2018-11-22', '2018-12-12 17:33:26', '2018-12-12 17:33:26'),
(628, 636, 'Negative', '2018-11-23', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-11-23', '2018-12-12 17:38:02', '2018-12-12 17:38:02'),
(629, 637, 'Negative', '2018-11-23', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-11-23', '2018-12-12 17:43:40', '2018-12-12 17:43:40'),
(630, 638, 'Negative', '2018-11-22', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-11-22', '2018-12-12 17:48:37', '2018-12-12 17:48:37'),
(631, 639, 'Negative', '2018-11-22', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-22', '2018-12-12 17:52:37', '2018-12-12 17:52:37'),
(632, 640, 'Negative', '2018-11-22', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-22', '2018-12-12 17:55:22', '2018-12-12 17:55:22'),
(633, 641, 'Negative', '2018-11-22', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-22', '2018-12-12 17:58:25', '2018-12-12 17:58:25'),
(634, 642, 'Negative', '2018-11-22', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-22', '2018-12-12 18:01:32', '2018-12-12 18:01:32'),
(635, 643, 'Negative', '2018-11-22', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-22', '2018-12-12 18:04:29', '2018-12-12 18:04:29'),
(636, 644, 'Negative', '2018-11-22', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-22', '2018-12-12 18:08:07', '2018-12-12 18:08:07'),
(637, 645, 'Negative', '2018-11-22', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-22', '2018-12-12 18:12:39', '2018-12-12 18:12:39'),
(638, 646, 'Negative', '2018-11-19', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-19', '2018-12-12 18:15:39', '2018-12-12 18:15:39'),
(639, 647, 'Error', '2018-11-19', '00:00:00', '2126', 'PAUL', 'MP', 'GeneXpert', '2018-11-19', '2018-12-12 18:18:25', '2018-12-12 18:18:25'),
(640, 648, 'Negative', '2018-11-19', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-19', '2018-12-12 18:20:54', '2018-12-12 18:20:54'),
(641, 649, 'Negative', '2018-10-17', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-17', '2018-12-12 16:10:38', '2018-12-12 16:10:38'),
(642, 651, 'Negative', '2018-10-16', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-16', '2018-12-12 16:16:26', '2018-12-12 16:16:26'),
(643, 652, 'Negative', '2018-10-15', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-15', '2018-12-12 16:19:07', '2018-12-12 16:19:07'),
(644, 653, 'Negative', '2018-10-15', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-15', '2018-12-12 16:21:49', '2018-12-12 16:21:49'),
(645, 654, 'Negative', '2018-10-15', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-15', '2018-12-12 16:23:56', '2018-12-12 16:23:56'),
(646, 655, 'Negative', '2018-10-15', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-15', '2018-12-12 16:26:33', '2018-12-12 16:26:33'),
(647, 656, 'Negative', '2018-10-15', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-15', '2018-12-12 16:28:43', '2018-12-12 16:28:43'),
(648, 657, 'Negative', '2018-10-15', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-15', '2018-12-12 16:31:05', '2018-12-12 16:31:05'),
(649, 658, 'Negative', '2018-10-15', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-15', '2018-12-12 16:33:04', '2018-12-12 16:33:04'),
(650, 659, 'Negative', '2018-10-15', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-15', '2018-12-12 16:37:39', '2018-12-12 16:37:39'),
(651, 660, 'Negative', '2018-09-24', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-09-24', '2018-12-12 16:41:28', '2018-12-12 16:41:28'),
(652, 661, 'Negative', '2018-10-10', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-10', '2018-12-12 16:44:09', '2018-12-12 16:44:09'),
(653, 662, 'Negative', '2018-10-11', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-11', '2018-12-12 16:47:13', '2018-12-12 16:47:13'),
(654, 663, 'Negative', '2018-10-18', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-18', '2018-12-12 15:51:52', '2018-12-12 15:51:52'),
(655, 664, 'Negative', '2018-10-18', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-18', '2018-12-12 15:55:29', '2018-12-12 15:55:29'),
(656, 665, 'Negative', '2018-10-18', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-18', '2018-12-12 15:58:36', '2018-12-12 15:58:36'),
(657, 666, 'Negative', '2018-10-18', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-18', '2018-12-12 16:00:59', '2018-12-12 16:00:59'),
(658, 667, 'Negative', '2018-10-18', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-18', '2018-12-12 16:03:49', '2018-12-12 16:03:49'),
(659, 668, 'Positive', '2018-10-18', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-18', '2018-12-12 16:07:00', '2018-12-12 16:07:00'),
(660, 669, 'Negative', '2018-10-19', '00:00:00', '', 'NGOBI', 'MP', 'GeneXpert', '2018-10-19', '2018-12-12 15:48:41', '2018-12-12 15:48:41'),
(661, 670, 'Negative', '2018-11-19', '00:00:00', '', 'PAUL', 'MP', 'GeneXpert', '2018-11-19', '2018-12-12 18:24:08', '2018-12-12 18:24:08'),
(662, 671, 'Negative', '2019-01-30', '00:00:00', '', 'NGOBI PAUL', 'M PATRICK', 'GeneXpert', '2019-01-30', '2019-01-31 00:08:27', '2019-01-31 00:08:27'),
(663, 672, 'Negative', '2019-01-30', '00:00:00', '', 'NGOBI PAUL', 'M PATRICK', 'GeneXpert', '2019-01-30', '2019-01-31 00:11:33', '2019-01-31 00:11:33'),
(664, 673, 'Negative', '2019-01-28', '00:00:00', '', 'NGOBI PAUL', 'M PATRICK', 'GeneXpert', '2019-01-28', '2019-01-31 00:14:20', '2019-01-31 00:14:20'),
(665, 674, 'Negative', '2019-01-28', '00:00:00', '', 'NGOBI PAUL', 'M PATRICK', 'GeneXpert', '2019-01-28', '2019-01-31 00:18:48', '2019-01-31 00:18:48'),
(666, 675, 'Negative', '2019-01-28', '00:00:00', '', 'NGOBI PAUL', 'M PATRICK', 'GeneXpert', '2019-01-28', '2019-01-31 00:25:06', '2019-01-31 00:25:06'),
(667, 676, 'Negative', '2019-01-28', '00:00:00', '', 'NGOBI PAUL', 'M PATRICK', 'GeneXpert', '2019-01-28', '2019-01-31 00:28:50', '2019-01-31 00:28:50'),
(668, 677, 'Negative', '2019-01-28', '00:00:00', '', 'NGOBI PAUL', 'M PATRICK', 'GeneXpert', '2019-01-30', '2019-01-31 00:32:25', '2019-01-31 00:32:25'),
(669, 678, 'Negative', '2019-01-24', '00:00:00', '', 'NGOBI PAUL', 'M PATRICK', 'GeneXpert', '2019-01-24', '2019-01-31 00:35:15', '2019-01-31 00:35:15'),
(670, 679, 'Error', '2019-01-25', '00:00:00', 'IVALID', 'NGOBI', 'M PATRICK', 'GeneXpert', '2019-01-25', '2019-01-31 00:38:12', '2019-01-31 00:38:12'),
(671, 680, 'Negative', '2019-01-25', '00:00:00', '', 'NGOBI PAUL', 'M PATRICK', 'GeneXpert', '2019-01-25', '2019-01-31 00:40:32', '2019-01-31 00:40:32'),
(672, 681, 'Negative', '2019-01-21', '00:00:00', '', 'NGOBI PAUL', 'M PATRICK', 'GeneXpert', '2019-01-21', '2019-01-31 00:42:55', '2019-01-31 00:42:55'),
(673, 682, 'Negative', '2019-01-21', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-21', '2019-01-31 00:46:01', '2019-01-31 00:46:01'),
(674, 683, 'Negative', '2019-01-21', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-21', '2019-01-31 00:49:03', '2019-01-31 00:49:03'),
(675, 684, 'Negative', '2019-01-21', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-21', '2019-01-31 00:52:01', '2019-01-31 00:52:01'),
(676, 685, 'Error', '2019-01-21', '00:00:00', 'INVALID', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-21', '2019-01-31 01:01:35', '2019-01-31 01:01:35'),
(677, 686, 'Negative', '2019-01-21', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-21', '2019-01-31 01:04:05', '2019-01-31 01:04:05'),
(678, 687, 'Negative', '2019-01-21', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-21', '2019-01-31 01:06:19', '2019-01-31 01:06:19'),
(679, 688, 'Negative', '2019-01-21', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-21', '2019-01-31 01:08:17', '2019-01-31 01:08:17'),
(680, 689, 'Negative', '2019-01-24', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-24', '2019-01-31 01:11:04', '2019-01-31 01:11:04'),
(681, 690, 'Negative', '2019-01-22', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-22', '2019-01-31 01:13:18', '2019-01-31 01:13:18'),
(682, 691, 'Negative', '2019-01-22', '00:00:00', '', 'PAUL', 'PAUL', 'GeneXpert', '2019-01-22', '2019-01-31 01:15:01', '2019-01-31 01:15:01'),
(683, 692, 'Negative', '2019-01-22', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-22', '2019-01-31 01:17:29', '2019-01-31 01:17:29'),
(684, 693, 'Negative', '2019-01-22', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-22', '2019-01-31 01:19:29', '2019-01-31 01:19:29'),
(685, 694, 'Negative', '2019-01-23', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-23', '2019-01-31 01:22:23', '2019-01-31 01:22:23'),
(686, 695, 'Negative', '2019-01-23', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-23', '2019-01-31 01:24:30', '2019-01-31 01:24:30'),
(687, 696, 'Negative', '2019-01-23', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-23', '2019-01-31 01:27:26', '2019-01-31 01:27:26'),
(688, 697, 'Negative', '2019-01-03', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-03', '2019-01-31 01:29:09', '2019-01-31 01:29:09'),
(689, 698, 'Error', '2019-01-07', '00:00:00', '5016', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-07', '2019-01-31 01:31:31', '2019-01-31 01:31:31'),
(690, 699, 'Negative', '2019-01-07', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-07', '2019-01-31 01:34:17', '2019-01-31 01:34:17'),
(691, 700, 'Negative', '2019-01-03', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-03', '2019-01-31 19:09:17', '2019-01-31 19:09:17'),
(692, 701, 'Negative', '2019-01-23', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-23', '2019-01-31 19:11:53', '2019-01-31 19:11:53'),
(693, 702, 'Negative', '2019-01-24', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-24', '2019-01-31 19:13:56', '2019-01-31 19:13:56'),
(694, 703, 'Negative', '2019-01-24', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-24', '2019-01-31 19:15:58', '2019-01-31 19:15:58'),
(695, 704, 'Negative', '2019-01-23', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-23', '2019-01-31 19:18:00', '2019-01-31 19:18:00'),
(696, 705, 'Error', '2019-01-18', '00:00:00', '5002', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-18', '2019-01-31 19:20:36', '2019-01-31 19:21:32'),
(697, 706, 'Negative', '2019-01-18', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-18', '2019-01-31 19:24:38', '2019-01-31 19:24:38'),
(698, 707, 'Error', '2019-01-18', '00:00:00', '2097', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-18', '2019-01-31 19:27:44', '2019-01-31 19:27:44'),
(699, 708, 'Negative', '2019-01-18', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-18', '2019-01-31 19:29:36', '2019-01-31 19:29:36'),
(700, 709, 'Negative', '2019-01-18', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-18', '2019-01-31 19:31:30', '2019-01-31 19:31:30'),
(701, 710, 'Negative', '2019-01-18', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-18', '2019-01-31 19:33:22', '2019-01-31 19:33:22'),
(702, 711, 'Positive', '2019-01-16', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-18', '2019-01-31 19:36:53', '2019-01-31 19:36:53'),
(703, 712, 'Negative', '2019-01-18', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-18', '2019-01-31 19:38:56', '2019-01-31 19:38:56'),
(704, 713, 'Negative', '2019-01-18', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-18', '2019-01-31 19:41:26', '2019-01-31 19:41:26'),
(705, 714, 'Negative', '2019-01-16', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-16', '2019-01-31 19:43:36', '2019-01-31 19:43:36'),
(706, 715, 'Negative', '2019-01-18', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-18', '2019-01-31 19:45:43', '2019-01-31 19:45:43'),
(707, 716, 'Negative', '2019-01-16', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-16', '2019-01-31 19:48:10', '2019-01-31 19:48:10'),
(708, 717, 'Negative', '2019-01-14', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-14', '2019-01-31 19:50:55', '2019-01-31 19:50:55'),
(709, 718, 'Negative', '2019-01-14', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-14', '2019-01-31 19:53:17', '2019-01-31 19:53:17'),
(710, 719, 'Negative', '2019-01-14', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-14', '2019-01-31 19:55:02', '2019-01-31 19:55:02'),
(711, 720, 'Error', '2019-01-14', '00:00:00', 'INVALID', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-14', '2019-01-31 19:57:12', '2019-01-31 19:57:12'),
(712, 721, 'Negative', '2019-01-14', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-16', '2019-01-31 19:59:12', '2019-01-31 19:59:12'),
(713, 722, 'Negative', '2019-01-16', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-16', '2019-01-31 20:01:39', '2019-01-31 20:01:39'),
(714, 723, 'Negative', '2019-01-15', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-15', '2019-01-31 20:03:58', '2019-01-31 20:03:58'),
(715, 724, 'Error', '2019-01-14', '00:00:00', 'INVALID', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-14', '2019-01-31 20:06:54', '2019-01-31 20:06:54'),
(716, 725, 'Negative', '2019-01-14', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-16', '2019-01-31 20:09:02', '2019-01-31 20:09:02'),
(717, 726, 'Error', '2019-01-14', '00:00:00', 'INVALID', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-14', '2019-01-31 20:12:29', '2019-01-31 20:12:29'),
(718, 727, 'Negative', '2019-01-15', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-15', '2019-01-31 20:14:41', '2019-01-31 20:14:41'),
(719, 728, 'Error', '2019-01-14', '00:00:00', 'INVALID', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-15', '2019-01-31 20:17:50', '2019-01-31 20:17:50'),
(720, 729, 'Negative', '2019-01-15', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-15', '2019-01-31 20:19:49', '2019-01-31 20:19:49'),
(721, 730, 'Negative', '2019-01-15', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-15', '2019-01-31 20:21:45', '2019-01-31 20:21:45'),
(722, 731, 'Negative', '2019-01-15', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-15', '2019-01-31 20:25:46', '2019-01-31 20:25:46'),
(723, 732, 'Negative', '2019-01-14', '00:00:00', '', 'PAUL', 'PATRCIK', 'GeneXpert', '2019-01-15', '2019-01-31 20:28:50', '2019-01-31 20:28:50'),
(724, 733, 'Negative', '2019-01-15', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-15', '2019-01-31 20:30:42', '2019-01-31 20:30:42'),
(725, 734, 'Negative', '2019-01-14', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-15', '2019-01-31 20:32:40', '2019-01-31 20:32:40'),
(726, 735, 'Negative', '2019-01-14', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-14', '2019-01-31 20:34:52', '2019-01-31 20:34:52'),
(727, 736, 'Negative', '2019-01-14', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-15', '2019-01-31 20:38:20', '2019-01-31 20:38:20'),
(728, 737, 'Negative', '2019-01-14', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-15', '2019-01-31 20:41:11', '2019-01-31 20:41:11'),
(729, 738, 'Negative', '2019-01-11', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-11', '2019-01-31 20:43:30', '2019-01-31 20:43:30'),
(730, 739, 'Negative', '2019-01-10', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-11', '2019-01-31 20:46:11', '2019-01-31 20:46:11'),
(731, 740, 'Negative', '2019-01-10', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '0000-00-00', '2019-01-31 20:48:36', '2019-01-31 20:48:36'),
(732, 741, 'Negative', '2019-01-10', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '0000-00-00', '2019-01-31 20:50:32', '2019-01-31 20:50:32'),
(733, 742, 'Negative', '2019-01-09', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-10', '2019-01-31 21:01:53', '2019-01-31 21:01:53'),
(734, 743, 'Negative', '2019-01-09', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-09', '2019-01-31 22:01:20', '2019-01-31 22:01:20'),
(735, 744, 'Negative', '2019-01-09', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-09', '2019-01-31 22:03:09', '2019-01-31 22:03:09'),
(736, 745, 'Negative', '2019-01-09', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-09', '2019-01-31 22:05:17', '2019-01-31 22:05:17'),
(737, 746, 'Negative', '2019-01-09', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-09', '2019-01-31 22:07:08', '2019-01-31 22:07:08'),
(738, 747, 'Negative', '2019-01-09', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-09', '2019-01-31 22:08:59', '2019-01-31 22:08:59'),
(739, 748, 'Negative', '2019-01-09', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-09', '2019-01-31 22:10:47', '2019-01-31 22:10:47'),
(740, 749, 'Negative', '2019-01-09', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-09', '2019-01-31 22:12:43', '2019-01-31 22:12:43'),
(741, 750, 'Negative', '2019-01-09', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-09', '2019-02-01 17:53:41', '2019-02-01 17:53:41'),
(742, 751, 'Negative', '2019-01-09', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-09', '2019-02-01 17:57:26', '2019-02-01 17:57:26'),
(743, 752, 'Negative', '2019-01-09', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-09', '2019-02-01 17:59:10', '2019-02-01 17:59:10'),
(744, 753, 'Negative', '2019-01-09', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-09', '2019-02-01 18:00:46', '2019-02-01 18:00:46'),
(745, 754, 'Negative', '2019-01-09', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-09', '2019-02-01 18:03:24', '2019-02-01 18:03:24'),
(746, 755, 'Negative', '2019-01-08', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-08', '2019-02-01 18:05:08', '2019-02-01 18:05:08'),
(747, 756, 'Negative', '2019-01-08', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-09', '2019-02-02 01:52:36', '2019-02-02 01:52:36'),
(748, 757, 'Negative', '2019-01-08', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-08', '2019-02-02 01:54:19', '2019-02-02 01:54:19'),
(749, 758, 'Negative', '2019-01-08', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-08', '2019-02-02 01:55:57', '2019-02-02 01:55:57'),
(750, 759, 'Negative', '2019-01-08', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-08', '2019-02-02 01:57:39', '2019-02-02 01:57:39'),
(751, 760, 'Negative', '2019-01-07', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-08', '2019-02-02 01:59:30', '2019-02-02 01:59:30'),
(752, 761, 'Negative', '2019-01-07', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-08', '2019-02-02 02:01:21', '2019-02-02 02:01:21'),
(753, 762, 'Negative', '2019-01-07', '00:00:00', '', '', 'PATRICK', 'GeneXpert', '2019-01-07', '2019-02-02 02:03:02', '2019-02-02 02:03:02'),
(754, 763, 'Negative', '2019-01-08', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-08', '2019-02-02 02:04:28', '2019-02-02 02:04:28'),
(755, 764, 'Negative', '2019-01-08', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-08', '2019-02-02 02:06:13', '2019-02-02 02:06:13'),
(756, 765, 'Negative', '2019-01-08', '00:00:00', '', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-08', '2019-02-02 02:07:56', '2019-02-02 02:07:56'),
(757, 766, 'Error', '2019-01-10', '00:00:00', 'INVALID', 'PAUL', 'PATRICK', 'GeneXpert', '2019-01-10', '2019-02-02 02:10:00', '2019-02-02 02:10:27'),
(758, 776, 'Negative', '2019-02-01', '00:00:00', '', 'PAUL', 'FLAVIA', 'GeneXpert', '2019-02-05', '2019-02-05 23:24:59', '2019-02-05 23:26:10');
INSERT INTO `poc_results` (`id`, `patient_id`, `results`, `test_date`, `test_time`, `error_code`, `tested_by`, `dispatched_by`, `equipment_used`, `dispatched_date`, `created_at`, `updated_at`) VALUES
(759, 777, 'Negative', '2019-02-05', '00:00:00', '', 'FLAVIA', '', 'GeneXpert', '2019-02-05', '2019-02-05 23:42:24', '2019-02-05 23:42:24'),
(760, 778, 'Negative', '2019-02-05', '00:00:00', '', 'FLAVIA', '', 'GeneXpert', '2019-02-05', '2019-02-05 23:43:18', '2019-02-05 23:43:18'),
(761, 779, 'Negative', '2019-02-05', '00:00:00', '', 'FLAVIA', 'PATRICK', 'GeneXpert', '2019-02-05', '2019-02-05 23:44:45', '2019-02-05 23:44:45'),
(762, 775, 'Negative', '2019-02-01', '00:00:00', '', 'PAUL', 'FLAVIA', 'GeneXpert', '2019-02-05', '2019-02-05 23:46:54', '2019-02-05 23:46:54'),
(763, 774, 'Negative', '2019-02-01', '00:00:00', '', 'PAUL', 'FLAVIA', 'GeneXpert', '2019-02-05', '2019-02-05 23:48:44', '2019-02-05 23:48:44'),
(764, 773, 'Negative', '2019-02-01', '00:00:00', '', 'PAUL', 'FLAVIA', 'GeneXpert', '2019-02-05', '2019-02-05 23:49:21', '2019-02-05 23:49:21'),
(765, 772, 'Negative', '2019-01-31', '00:00:00', '', 'PAUL', 'FLAVIA', 'GeneXpert', '2019-02-05', '2019-02-05 23:50:01', '2019-02-05 23:50:01'),
(766, 771, 'Negative', '2019-01-31', '00:00:00', '', 'PAUL', 'FLAVIA', 'GeneXpert', '2019-02-05', '2019-02-05 23:50:35', '2019-02-05 23:50:35'),
(767, 770, 'Negative', '2019-01-31', '00:00:00', '', 'PAUL', 'FLAVIA', 'GeneXpert', '2019-02-05', '2019-02-05 23:51:34', '2019-02-05 23:51:34'),
(768, 769, 'Negative', '2019-01-31', '00:00:00', '', 'PAUL', 'FLAVIA', 'GeneXpert', '2019-02-05', '2019-02-05 23:52:12', '2019-02-05 23:52:12'),
(769, 768, 'Negative', '2019-02-01', '00:00:00', '', 'PAUL', 'FLAVIA', 'GeneXpert', '2019-02-05', '2019-02-05 23:52:43', '2019-02-05 23:52:43'),
(770, 767, 'Negative', '2019-01-30', '00:00:00', '', 'PAUL', 'FLAVIA', 'GeneXpert', '2019-02-05', '2019-02-05 23:53:12', '2019-02-05 23:53:12'),
(771, 783, 'Negative', '2019-02-05', '00:00:00', '', 'FLAVIA', 'PATRICK', 'GeneXpert', '2019-02-05', '2019-02-05 23:59:33', '2019-02-05 23:59:33'),
(772, 780, 'Negative', '2019-02-05', '00:00:00', '', 'FLAVIA', 'PATRICK', 'GeneXpert', '2019-02-05', '2019-02-05 23:59:59', '2019-02-05 23:59:59'),
(773, 781, 'Negative', '2019-02-05', '00:00:00', '', 'FLAVIA', 'PATRICK', 'GeneXpert', '2019-02-05', '2019-02-06 00:00:31', '2019-02-06 00:00:31'),
(774, 782, 'Negative', '2019-02-05', '00:00:00', '', 'FLAVIA', 'PATRICK', 'GeneXpert', '2019-02-05', '2019-02-06 00:01:16', '2019-02-06 00:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `poc_tables`
--

CREATE TABLE `poc_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` float(8,2) NOT NULL,
  `exp_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caretaker_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_point` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `other_entry_point` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `infant_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `breastfeeding_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_hiv_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `collection_date` date NOT NULL,
  `pcr_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pmtct_antenatal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pmtct_delivery` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pmtct_postnatal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admission_date` date NOT NULL,
  `sample_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `infant_pmtctarv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_pmtctarv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` date DEFAULT NULL,
  `provisional_diagnosis` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `poc_tables`
--

INSERT INTO `poc_tables` (`id`, `facility_id`, `district_id`, `gender`, `age`, `exp_no`, `caretaker_number`, `entry_point`, `other_entry_point`, `mother_name`, `infant_name`, `breastfeeding_status`, `mother_hiv_status`, `collection_date`, `pcr_level`, `created_by`, `pmtct_antenatal`, `pmtct_delivery`, `pmtct_postnatal`, `admission_date`, `sample_id`, `infant_pmtctarv`, `mother_pmtctarv`, `created_at`, `updated_at`, `deleted_at`, `provisional_diagnosis`) VALUES
(15, 1, 1, 'Female', 1.50, '1/2018/63', '', 'MBCP/eMTCT', NULL, 'KATUSABE BEATRICE', 'NAMARO JOSELYN', 'Yes', 'Positive', '2018-03-01', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '13/03/18', 'Daily NVP from birth to 6 weeks', '', '2018-03-20 19:30:37', '2018-03-20 19:30:37', NULL, ''),
(16, 1, 1, 'Male', 1.50, '1/2018/57', '0773438846', 'MBCP/eMTCT', NULL, 'Qeen Elizabeth', 'Isingoma Kihika', 'Yes', 'Positive', '2018-02-26', '1st PCR', 'Justine Anywar', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-02-26', '430/02/18', 'Daily NVP from birth to 6 weeks', '', '2018-03-20 19:32:43', '2018-03-20 19:32:43', NULL, ''),
(17, 1, 1, 'Male', 1.50, '1/2018/62', '', 'MBCP/eMTCT', NULL, 'Kansiime Udita', 'Kosonde', 'Yes', 'Positive', '2018-03-01', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '14/03/18', 'Daily NVP from birth to 6 weeks', '', '2018-03-20 19:34:01', '2018-03-20 19:34:01', NULL, ''),
(18, 1, 1, 'Male', 14.00, '2/2017/008', '', 'MBCP/eMTCT', NULL, 'KOMUHIMBO ROSEMARY', 'ATEGEKA NICLOUS', 'No', 'Positive', '2018-02-26', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-02-26', '421/02/18', 'Daily NVP from birth to 6 weeks', '', '2018-03-20 19:42:58', '2018-03-20 19:42:58', NULL, ''),
(19, 1, 1, 'Male', 1.50, '12/1/18', '0773438846', 'MBCP/eMTCT', NULL, 'Queen Elizabeth', 'Kato Kihika', 'Yes', 'Positive', '2018-02-26', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '431/02/18', 'Daily NVP from birth to 6 weeks', '', '2018-03-20 19:43:43', '2018-03-20 19:43:43', NULL, ''),
(20, 1, 1, 'Male', 1.50, '1/2018/60', '', 'MBCP/eMTCT', NULL, 'NEEMA ANNET', 'AHIMBISIBWE TIMOTHY', 'Yes', 'Positive', '2018-03-01', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '16/03/18', 'Daily NVP from birth to 6 weeks', '', '2018-03-20 19:47:32', '2018-03-20 19:47:32', NULL, ''),
(21, 1, 1, 'Male', 1.50, '1/2018/59', '', 'MBCP/eMTCT', NULL, 'Bonabaana Joyce', 'Nyabwongo Patrick', 'Yes', 'Positive', '2018-02-27', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-02-27', '474/02/18', 'Daily NVP from birth to 6 weeks', '', '2018-03-20 19:47:42', '2018-03-20 19:47:42', NULL, ''),
(22, 1, 1, 'Female', 1.50, '1/2018/56', '0787869596', 'MBCP/eMTCT', NULL, 'Kemigisa Ireen', 'Asingwire Angel', 'Yes', 'Positive', '2018-02-26', '1st PCR', 'Justine Anywar', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '422/02/18', 'Lifelong ART', '', '2018-03-20 19:48:13', '2018-03-20 19:52:18', NULL, ''),
(23, 1, 1, 'Male', 19.00, '7/2016/40', '', 'MBCP/eMTCT', NULL, 'Bagaya Jenifer', 'Mganzi Joseph', 'Yes', 'Positive', '2018-02-23', '2nd PCR', 'Justine Anywar', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '378/02/2018', 'Lifelong ART', '', '2018-03-20 20:04:57', '2018-03-20 20:18:20', NULL, ''),
(24, 1, 1, 'Male', 1.50, '', '0782103980', 'MBCP/eMTCT', NULL, 'Tuhaise Scola', 'Kahwa Dan', 'Yes', 'Positive', '2018-02-23', '1st PCR', 'Justine Anywar', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '379/2/2018', '', '', '2018-03-20 20:11:05', '2018-03-20 20:19:27', NULL, ''),
(25, 1, 1, 'Female', 14.00, '2/2017/001', '0782813071', 'MBCP/eMTCT', NULL, 'NANYITI JULIET', 'KOBUSINGE ELIZABETH', 'No', 'Positive', '2018-04-03', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '011/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-03 23:28:53', '2018-04-03 23:28:53', NULL, ''),
(26, 1, 1, 'Female', 15.00, '01/2017/22', '', 'MBCP/eMTCT', NULL, 'NATULINDA ALLEN', 'AINEMBABAZI KICONCO', 'No', 'Positive', '2018-04-03', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '007/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-03 23:33:12', '2018-04-03 23:33:12', NULL, 'EXPOSED INFANT'),
(27, 1, 1, 'Female', 15.00, '12/2016/33', '0776244506', 'MBCP/eMTCT', NULL, 'KARUNGI GRACE', 'KOMUHIMBO DIANAH', 'No', 'Positive', '2018-04-04', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-04-04', '035/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-05 17:29:10', '2018-04-05 17:29:10', NULL, 'EXPOSED INFANT'),
(28, 1, 1, 'Male', 14.00, '02/2017/002', '0704925416', 'MBCP/eMTCT', NULL, 'NAMUSOKE ANNET', 'KUNIHIRA JOVAN', 'No', 'Positive', '2018-04-04', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '033/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-05 17:32:12', '2018-04-05 17:32:12', NULL, 'EXPOSED INFANT'),
(29, 1, 1, 'Female', 15.00, '12/2016/023', '0785786502', 'MBCP/eMTCT', NULL, 'BIIRA ROSSET', 'NAMUGAYA AMINAH', 'No', 'Positive', '2018-04-04', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '034/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-05 17:34:40', '2018-04-05 17:34:40', NULL, 'EXPOSED INFANT'),
(30, 1, 1, 'Male', 1.50, '2/2018/18', '0771802221', 'MBCP/eMTCT', NULL, 'KABASINGUZI STELLA', 'KISEMBO ERICK', 'Yes', 'Positive', '2018-04-04', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '036/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-05 17:38:15', '2018-04-05 17:38:15', NULL, 'EXPOSED INFANT'),
(31, 1, 1, 'Male', 1.50, '2/2018/15', '', 'MBCP/eMTCT', NULL, 'TUHAISE SYLVIA', 'MUTEGEKI NICLOUS', 'Yes', 'Positive', '2018-04-04', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '045/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-05 19:07:06', '2018-04-05 19:07:06', NULL, 'EXPOSED INFANT'),
(32, 1, 1, 'Male', 1.50, '2/2018/17', '', 'MBCP/eMTCT', NULL, 'KOJOINA ZIYODO', 'ISAAC', 'Yes', 'Positive', '2018-04-04', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '042/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-05 19:09:27', '2018-04-05 19:09:27', NULL, 'EXPOSED INFANT'),
(33, 1, 1, 'Female', 9.00, '6/2017/38', '0781668231', 'MBCP/eMTCT', NULL, 'KABASOMI TEDDY', 'KOMUNTALE TRINITY', 'Yes', 'Positive', '2018-04-04', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '041/04/18', 'No ARVs taken at birth', '', '2018-04-05 19:13:32', '2018-04-05 19:13:32', NULL, 'EXPOSED INFANT'),
(34, 1, 1, 'Male', 1.50, '2/2018/14', '078575485', 'MBCP/eMTCT', NULL, 'KEBIRUNGI JULIANE', 'AMANYIRE JORDAN', 'Yes', 'Positive', '2018-04-04', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '046/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-05 19:16:49', '2018-04-05 19:16:49', NULL, 'EXPOSED INFANT'),
(35, 1, 1, 'Male', 1.50, '2/2018/018', '0774362257', 'MBCP/eMTCT', NULL, 'KANSIIME JANE', 'kugonza richard', 'Yes', 'Positive', '2018-04-05', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '061/04/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-06 15:47:17', '2018-04-06 15:47:17', NULL, 'EXPOSED INFANT'),
(36, 1, 1, 'Female', 1.50, '2/2018/16', '0783983860', 'MBCP/eMTCT', NULL, 'TIMBIGAMBA ANNET', 'KABACWEZI TRACY', 'Yes', 'Positive', '2018-04-05', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '044/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-06 15:51:29', '2018-04-06 15:51:29', NULL, 'EXPOSED INFANT'),
(37, 1, 1, 'Female', 14.00, '1/2017/026', '', 'MBCP/eMTCT', NULL, 'KUGONZA MOLLY', 'KUNIHIRA GLADYS', 'No', 'Positive', '2018-04-04', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '043/04/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-06 15:54:14', '2018-04-06 15:54:14', NULL, 'EXPOSED INFANT'),
(38, 1, 1, 'Male', 14.00, '2/2017/15', '0752231928', 'MBCP/eMTCT', NULL, 'KAWINO BEATRICE', 'KASWA MARTIN', 'No', 'Positive', '2018-04-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '267/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 16:53:57', '2018-04-19 16:53:57', NULL, 'EXPOSED INFANT'),
(39, 1, 1, 'Female', 18.00, '11/2016/001', '', 'MBCP/eMTCT', NULL, 'KAHWA MARY', 'KANGUME FLORENCE', 'No', 'Positive', '2018-04-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '286/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 16:57:04', '2018-04-19 16:57:04', NULL, 'EXPOSED INFANT'),
(40, 1, 1, 'Male', 1.50, '2/2018/21', '0783661942', 'MBCP/eMTCT', NULL, 'CHANCE ESTHER', 'TUMUSIIME ISAYA', 'Yes', 'Positive', '2018-04-09', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '112/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 17:26:15', '2018-04-19 17:26:15', NULL, 'EXPOSED INFANT'),
(41, 1, 1, 'Female', 15.00, '12/2016/39', '', 'MBCP/eMTCT', NULL, 'BASEMERA LILLIAN', 'NAMATOVU CHRISTIAN', 'No', 'Positive', '2018-04-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '110/4/18', 'No ARVs taken at birth', '', '2018-04-19 17:30:12', '2018-04-19 17:30:12', NULL, 'EXPOSED INFANT'),
(42, 1, 1, 'Male', 1.50, '2/2018/22', '0779969504', 'MBCP/eMTCT', NULL, 'BYAMUNGU AGNES', 'LATIF SIRAJ', 'Yes', 'Positive', '2018-04-09', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '113/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 17:32:58', '2018-04-19 17:32:58', NULL, 'EXPOSED INFANT'),
(43, 1, 1, 'Male', 1.50, '2/2018/20', '078454232', 'MBCP/eMTCT', NULL, 'FRIDAY YUDITA', 'GUMISIRIZA', 'Yes', 'Positive', '2018-04-09', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '111/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 17:35:29', '2018-04-19 17:35:29', NULL, 'EXPOSED INFANT'),
(44, 1, 1, 'Male', 10.00, '6/2017/004', '0786440452', 'MBCP/eMTCT', NULL, 'TUSHABOMWE EDNAVENSI', 'KABAGABE SWAIBU', 'No', 'Positive', '2018-04-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '107/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 17:38:25', '2018-04-19 17:38:25', NULL, 'EXPOSED INFANT'),
(45, 1, 1, 'Male', 14.00, '2/2017/005', '0774331450', 'MBCP/eMTCT', NULL, 'KATUSABE SOFINE', 'OGWETE AUGUSTINE', 'No', 'Positive', '2018-04-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '106/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 17:43:01', '2018-04-19 17:43:01', NULL, 'EXPOSED INFANT'),
(46, 1, 1, 'Male', 1.50, '2/2018/19', '0705673943', 'MBCP/eMTCT', NULL, 'NUWE-AHWERA ANITA', 'AHEBWA ROBERT', 'Yes', 'Positive', '2018-04-09', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '108/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 17:45:52', '2018-04-19 17:45:52', NULL, 'EXPOSED INFANT'),
(47, 1, 1, 'Male', 14.00, '01/2017/027', '0759073638', 'MBCP/eMTCT', NULL, 'TUHAISE BETTY', 'MUSINGURA JOSEPH', 'No', 'Positive', '2018-04-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '109/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 17:51:52', '2018-04-19 17:51:52', NULL, 'EXPOSED INFANT'),
(48, 1, 1, 'Female', 10.00, '8/2017/004', '0777044841', 'MBCP/eMTCT', NULL, 'TWESIGE AGNES', 'NATUGONZA DANELLA', 'No', 'Positive', '2018-04-10', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '125/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 17:55:31', '2018-04-19 17:55:31', NULL, 'EXPOSED INFANT'),
(49, 1, 1, 'Male', 14.00, '12/2016/021', '', 'MBCP/eMTCT', NULL, 'TUGUME INFANT', 'IBRA KELVIN', 'No', 'Positive', '2018-04-10', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '126/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 18:01:18', '2018-04-19 18:01:18', NULL, 'EXPOSED INFANT'),
(50, 1, 1, 'Male', 14.00, '01/2017/018', '0780600356', 'MBCP/eMTCT', NULL, 'KANYINGINYA PRISCILLA', 'MURUNGI JOVAN', 'No', 'Positive', '2018-04-10', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '124/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 18:04:59', '2018-04-19 18:04:59', NULL, 'EXPOSED INFANT'),
(51, 1, 1, 'Female', 14.00, '3/2018/70', '0758959472', 'MBCP/eMTCT', NULL, 'AGEE JANIFER', 'KENGOZI SAVIOUR', 'Yes', 'Positive', '2018-04-11', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '162/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 18:17:49', '2018-04-19 18:17:49', NULL, 'EXPOSED INFANT'),
(52, 1, 1, 'Female', 1.50, '2/2018/23', '0772496931', 'MBCP/eMTCT', NULL, 'TUSAISE SYLVIA', 'KIHUNDO KELLON', 'Yes', 'Positive', '2018-04-11', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '165/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 18:21:24', '2018-04-19 18:21:24', NULL, 'EXPOSED INFANT'),
(53, 1, 1, 'Male', 1.50, '2/2018/26', '', 'MBCP/eMTCT', NULL, 'KATUSABE IREEN', 'TUGUME NELI', 'Yes', 'Positive', '2018-04-12', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '192/04/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 18:24:07', '2018-04-19 18:24:07', NULL, 'EXPOSED INFANT'),
(54, 1, 1, 'Male', 14.00, '1/2017/024', '', 'MBCP/eMTCT', NULL, 'KANYUNYUZI GORRET', 'KUMARAKI ANDREW', 'No', 'Positive', '2018-04-11', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '163/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 18:30:37', '2018-04-19 18:30:37', NULL, 'EXPOSED INFANT'),
(55, 1, 1, 'Male', 14.00, '11/2016/21', '0781984616', 'MBCP/eMTCT', NULL, 'KATUSABE MOREEN', 'KISEMBO MUZAFARU', 'No', 'Positive', '2018-04-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '166/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 18:33:18', '2018-04-19 18:33:18', NULL, 'EXPOSED INFANT'),
(56, 1, 1, 'Female', 1.50, '2/2018/25', '0786429859', 'MBCP/eMTCT', NULL, 'TUSIIME JANNET', 'KEBISEMBO PATRICIA', 'Yes', 'Positive', '2018-04-11', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '161/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 18:35:28', '2018-04-19 18:35:28', NULL, 'EXPOSED INFANT'),
(57, 1, 1, 'Male', 1.50, '2/2018/24', '0775574015', 'MBCP/eMTCT', NULL, 'TUSIIME BEATRICE', 'KISEMBO JOEL', 'Yes', 'Positive', '2018-04-11', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '164/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 18:37:46', '2018-04-19 18:37:46', NULL, 'EXPOSED INFANT'),
(58, 1, 1, 'Male', 14.00, '2/2017/22', '0771880073', 'MBCP/eMTCT', NULL, 'KABAKUBYA JOY', 'AMAANI CRANMER', 'No', 'Positive', '2018-04-12', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '193/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 18:40:31', '2018-04-19 18:40:31', NULL, 'EXPOSED INFANT'),
(59, 1, 1, 'Male', 14.00, '2/2017/006', '', 'MBCP/eMTCT', NULL, 'NYAKATO DIANAH', 'MUGISA CLITON', 'No', 'Positive', '2018-04-16', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '228/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 18:43:25', '2018-04-19 18:43:25', NULL, 'EXPOSED INFANT'),
(60, 1, 1, 'Male', 14.00, '2/2017/003', '', 'MBCP/eMTCT', NULL, 'KABATALYA ENID', 'MWESIGWA SAM', 'No', 'Positive', '2018-04-17', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '  243/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 18:55:42', '2018-04-19 18:55:42', NULL, 'EXPOSED INFANT'),
(61, 1, 1, 'Female', 14.00, '1/2017/033', '0759585933', 'MBCP/eMTCT', NULL, 'KABALEMBA JANE', 'KABASINGUZI CHARITY', 'No', 'Positive', '2018-04-17', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '244/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 18:58:29', '2018-04-19 18:58:29', NULL, 'EXPOSED INFANT'),
(62, 1, 1, 'Female', 14.00, '2/2017/004', '0777425973', 'MBCP/eMTCT', NULL, 'KAJUMBA OLIVER AISHA', 'KARUNGI NASHIRA', 'No', 'Positive', '2018-04-17', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '245/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 19:00:55', '2018-04-19 19:00:55', NULL, 'EXPOSED INFANT'),
(63, 1, 1, 'Female', 12.00, '4/2017/27', '0782093595', 'MBCP/eMTCT', NULL, 'TAZI', 'MICHELLE DANIELS', 'No', 'Positive', '2018-04-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '269/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 19:03:21', '2018-04-19 19:03:21', NULL, 'EXPOSED INFANT'),
(64, 1, 1, 'Female', 14.00, '01/2017/34', '0779560623', 'MBCP/eMTCT', NULL, 'TUGUME JUDITH', 'KABAMOOLI EUNICE', 'No', 'Positive', '2018-04-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '270/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 19:06:42', '2018-04-19 19:06:42', NULL, 'EXPOSED INFANT'),
(65, 1, 1, 'Female', 13.00, '2/2017/009', '', 'MBCP/eMTCT', NULL, 'TUMUHIMBISE AGATHA', 'NATUKUNDA IMMACULATE ', 'No', 'Positive', '2018-04-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '268/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 19:32:58', '2018-04-19 19:32:58', NULL, 'EXPOSED INFANT'),
(66, 1, 1, 'Female', 9.00, '6/2017/35', '0785409290', 'MBCP/eMTCT', NULL, 'KEZABU KARASUMU', 'KENGONZI', 'No', 'Positive', '2018-04-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '271/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-19 19:37:27', '2018-04-19 19:37:27', NULL, 'EXPOSED INFANT'),
(67, 1, 1, 'Male', 1.50, '3/2018/74', '0775043222', 'MBCP/eMTCT', NULL, 'KANSIIME JANE', 'WAMANI JORDAN', 'Yes', 'Positive', '2018-04-25', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '499/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-26 23:17:30', '2018-04-26 23:17:30', NULL, 'EXPOSED INFANT'),
(68, 1, 1, 'Male', 1.50, '3/2018/75', '0778741468', 'MBCP/eMTCT', NULL, 'KAJUMBA AGNES', 'TUMWINE MARK', 'Yes', 'Positive', '2018-04-25', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '500/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-26 23:31:28', '2018-04-26 23:31:28', NULL, 'EXPOSED INFANT'),
(69, 1, 1, 'Male', 1.50, '3/2018/73', '0703175441', 'MBCP/eMTCT', NULL, 'KOMUHANGI JOLLY', 'MUSINGUZI ALBERT', 'Yes', 'Positive', '2018-04-25', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '498/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-26 23:33:47', '2018-04-26 23:33:47', NULL, 'EXPOSED INFANT'),
(70, 1, 1, 'Female', 1.50, '3/2018/72', '', 'MBCP/eMTCT', NULL, 'KANSIIME EVA', 'NABIRYE ESTHER', 'Yes', 'Positive', '2018-04-24', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '448/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-26 23:59:57', '2018-04-26 23:59:57', NULL, 'EXPOSED INFANT'),
(71, 1, 1, 'Female', 1.50, '3/2018/71', '', 'MBCP/eMTCT', NULL, 'KOMUSONE IREEN', 'KARUBGI FAUSTINE', 'Yes', 'Positive', '2018-04-24', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '449/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-27 00:02:28', '2018-04-27 00:02:28', NULL, 'EXPOSED INFANT'),
(72, 1, 1, 'Male', 15.00, '5/2017/23', '0777307854', 'MBCP/eMTCT', NULL, 'KATUSABE ESPERA', 'KAHUMA PATRICK', 'No', 'Positive', '2018-04-23', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '387/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-27 00:04:51', '2018-04-27 00:04:51', NULL, 'EXPOSED INFANT'),
(73, 1, 1, 'Male', 13.00, '1/2017/30', '0789921003', 'MBCP/eMTCT', NULL, 'AMANYIRE JUSTA', 'MURUNGI JULIUS', 'No', 'Positive', '2018-04-23', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '359/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-27 00:07:28', '2018-04-27 00:07:28', NULL, 'EXPOSED INFANT'),
(74, 1, 1, 'Male', 3.00, '1/2018/86', '0784185089', 'MBCP/eMTCT', NULL, 'KABAGENYI AMISA', 'AGUMENAITWE ISHA', 'Yes', 'Positive', '2018-04-23', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'Lifelong ART', '0000-00-00', '388/4/18', 'No ARVs taken at birth', '', '2018-04-27 00:10:22', '2018-04-27 00:10:22', NULL, 'EXPOSED INFANT'),
(75, 1, 1, 'Male', 15.00, '01/2017/25', '0702461617', 'MBCP/eMTCT', NULL, 'NYANGOMA NADIA', 'AMBER STEPHENS', 'No', 'Positive', '2018-04-23', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '386/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-04-27 00:13:01', '2018-04-27 00:13:01', NULL, 'EXPOSED INFANT'),
(76, 1, 1, 'Female', 3.00, '1/2018/87', '078630313', 'MBCP/eMTCT', NULL, 'KABASINGUZI MAUREEN', 'BAGAYA CLARE', 'Yes', 'Positive', '2018-04-30', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'Lifelong ART', '0000-00-00', '589/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-01 21:49:07', '2018-05-01 21:49:07', NULL, 'EXPOSED INFANT'),
(77, 1, 1, 'Female', 1.50, '3/2018/78', '0773159528', 'MBCP/eMTCT', NULL, 'KWIKIRIZA MARY', 'IHUNDE MABLE', 'Yes', 'Positive', '2018-04-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '625/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-01 21:51:54', '2018-05-01 21:51:54', NULL, 'EXPOSED INFANT'),
(78, 1, 1, 'Male', 1.50, '3/2018/77', '', 'MBCP/eMTCT', NULL, 'MBABAZI ELIZABETH', 'SUNDAY DOMINIC', 'Yes', 'Positive', '2018-04-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '626/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-01 21:55:35', '2018-05-01 21:55:35', NULL, 'EXPOSED INFANT'),
(79, 1, 1, 'Female', 9.00, '7/2017/39', '', 'MBCP/eMTCT', NULL, 'NIGHT MARY(GRANDMA)', 'AINEBYONA MARY', 'No', 'Positive', '2018-04-30', '1st PCR', 'Ngobi Paul', 'Unknown', 'Unknown', 'Unknown', '0000-00-00', '629/4/18', 'No ARVs taken at birth', '', '2018-05-01 21:59:01', '2018-05-01 21:59:01', NULL, 'EXPOSED INFANT'),
(80, 1, 1, 'Male', 15.00, '3/2017', '', 'MBCP/eMTCT', NULL, 'KABAHWEZA BETH', 'MUSABE IVAN', 'No', 'Positive', '2018-04-30', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '627/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-01 22:01:26', '2018-05-01 22:01:26', NULL, 'EXPOSED INFANT'),
(81, 1, 1, 'Male', 17.00, '9/2016/25', '', 'MBCP/eMTCT', NULL, 'PEACE SUDAT', 'MUHAMADI TARICK', 'Yes', 'Positive', '2018-04-30', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '624/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-01 22:03:52', '2018-05-01 22:03:52', NULL, 'EXPOSED INFANT'),
(82, 1, 1, 'Female', 2.50, '2/2018/27', '', 'MBCP/eMTCT', NULL, 'ODILO AISHA', 'KATUSIIME HARIET', 'Yes', 'Positive', '2018-04-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '628/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-01 22:06:15', '2018-05-01 22:06:15', NULL, 'EXPOSED INFANT'),
(83, 1, 1, 'Male', 1.50, '3/2018/79', '', 'MBCP/eMTCT', NULL, 'KANSIIME WINIE', 'MURUNGI KELVIN PAUL', 'Yes', 'Positive', '2018-04-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '636/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-01 22:08:34', '2018-05-01 22:08:34', NULL, 'EXPOSED INFANT'),
(84, 1, 1, 'Male', 14.00, '3/2017/008', '', 'MBCP/eMTCT', NULL, 'KABAGAMBE BETH', 'ABDU SEKAMATE', 'No', 'Positive', '2018-05-02', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '36/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-04 02:25:38', '2018-05-04 02:25:38', NULL, 'EXPOSED INFANT'),
(85, 1, 1, 'Male', 14.00, '2/2017/26', '', 'MBCP/eMTCT', NULL, 'TUHAISE BEATRICE', 'MUHUMUZA MOSES', 'No', 'Positive', '2018-05-02', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '32/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-04 02:27:47', '2018-05-04 02:27:47', NULL, 'EXPOSED INFANT'),
(86, 1, 1, 'Male', 12.00, '4/2017/24', '', 'MBCP/eMTCT', NULL, 'KAMWESI ELIZABETH', 'AHAISIBWE ROGERS', 'No', 'Positive', '2018-05-02', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '28/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-04 02:30:18', '2018-05-04 02:30:18', NULL, 'EXPOSED INFANT'),
(87, 1, 1, 'Male', 18.00, '10/2016/003', '', 'MBCP/eMTCT', NULL, 'KIRUNGI CHRISTINE', 'NIMUSIIMA JOSHUA', 'No', 'Positive', '2018-05-02', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '33/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-04 02:32:42', '2018-05-04 02:32:42', NULL, 'EXPOSED INFANT'),
(88, 1, 1, 'Female', 1.50, '3/2018/80', '', 'MBCP/eMTCT', NULL, 'KABASITA ROSE', 'KOBUGABE PROSSY', 'Yes', 'Positive', '2018-05-02', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '29/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-04 02:35:21', '2018-05-04 02:35:21', NULL, 'EXPOSED INFANT'),
(89, 1, 1, 'Male', 5.50, '11/2017/47', '', 'MBCP/eMTCT', NULL, 'TUSIIME ANGELLA', 'TUSIIME JOHN', 'Yes', 'Positive', '2018-05-02', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '34/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-04 02:37:18', '2018-05-04 02:37:18', NULL, 'EXPOSED INFANT'),
(90, 1, 1, 'Male', 13.00, '01/2017/21', '', 'MBCP/eMTCT', NULL, 'NAMARA RESTY', 'BRIAN FRANK', 'No', 'Positive', '2018-05-02', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '37/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-04 02:39:10', '2018-05-04 02:39:10', NULL, 'EXPOSED INFANT'),
(91, 1, 1, 'Female', 14.00, '3/2017/14', '', 'MBCP/eMTCT', NULL, 'KOBUSINGE SYLVIA', 'KARUNGI BRIDGET', 'No', 'Positive', '2018-05-02', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '31/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-04 02:41:17', '2018-05-04 02:41:17', NULL, 'EXPOSED INFANT'),
(92, 1, 1, 'Female', 13.00, '3/2017/021', '', 'MBCP/eMTCT', NULL, 'KOBUGABE ESTHER', 'RWANTALE HARIET', 'No', 'Positive', '2018-05-02', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '30/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-04 02:43:04', '2018-05-04 02:43:04', NULL, 'EXPOSED INFANT'),
(93, 1, 1, 'Female', 7.00, '9/2017/47', '', 'MBCP/eMTCT', NULL, 'NAMATOVU JANE', 'IMMACULATE NANTUMBWE', 'No', 'Positive', '2018-05-02', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '35/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-04 02:44:45', '2018-05-04 02:44:45', NULL, 'EXPOSED INFANT'),
(94, 1, 1, 'Female', 13.00, '3/2017/11', '', 'MBCP/eMTCT', NULL, 'TWEBAZE PELUCI', 'KEMBABAZI MONICA', 'No', 'Positive', '2018-05-03', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '61/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-04 02:46:36', '2018-05-04 02:46:36', NULL, 'EXPOSED INFANT'),
(95, 1, 1, 'Female', 1.50, '3/2018/82', '', 'MBCP/eMTCT', NULL, 'KOMUHENDO ROSE', 'KANSIIME ANGEL', 'Yes', 'Positive', '2018-05-03', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '65/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-04 02:48:31', '2018-05-04 02:48:31', NULL, 'EXPOSED INFANT'),
(96, 1, 1, 'Female', 1.50, '3/2018/76', '0784750487', 'MBCP/eMTCT', NULL, 'KOBUSINGE TEDDY', 'KOBUSINGE HARIET', 'Yes', 'Positive', '2018-04-26', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '546/4/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-04 02:57:34', '2018-05-04 02:57:34', NULL, 'EXPOSED INFANT'),
(97, 1, 1, 'Male', 13.00, '3/2017/17', '', 'MBCP/eMTCT', NULL, 'KOBUGABE CHRISTIAN', 'ALINAITWE HELON', 'No', 'Positive', '2018-05-07', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '142/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-08 16:13:56', '2018-05-08 16:13:56', NULL, 'EXPOSED INFANT'),
(98, 1, 1, 'Male', 12.00, '4/2017/40', '', 'MBCP/eMTCT', NULL, 'KABAKAMA BEATRACE', 'TUSINGWIRE MOURICE', 'No', 'Positive', '2018-05-07', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '139/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-08 16:16:49', '2018-05-08 16:16:49', NULL, 'EXPOSED INFANT'),
(99, 1, 1, 'Female', 1.50, '3/2018/83', '0752832903', 'MBCP/eMTCT', NULL, 'KATUSIIME HARRIET', 'KEBIRUNGI EDITH', 'Yes', 'Positive', '2018-05-07', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '144/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-08 16:24:08', '2018-05-08 16:24:08', NULL, 'EXPOSED INFANT'),
(100, 1, 1, 'Female', 10.00, '8/2017/42', '0759730442', 'Pediatric Inpatient', NULL, 'WIMMANA ROSSET', 'PLAMADI ESTER', 'Yes', 'Positive', '2018-05-07', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '147/05/18', 'No ARVs taken at birth', '', '2018-05-08 16:26:16', '2018-05-08 16:26:16', NULL, 'EXPOSED INFANT'),
(101, 1, 1, 'Male', 13.00, '3/2017/20', '', 'MBCP/eMTCT', NULL, 'KEMIREMBE CATHERINE', 'TUSIIME RAJAB', 'No', 'Positive', '2018-05-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '234/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 01:13:42', '2018-05-11 01:13:42', NULL, 'EXPOSED INFANT'),
(102, 1, 1, 'Male', 10.00, '7/2017/14', '', 'MBCP/eMTCT', NULL, 'KEMANZI SARAH', 'AINAMAN', 'No', 'Positive', '2018-05-08', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '194/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 01:18:42', '2018-05-11 01:18:42', NULL, 'EXPOSED INFANT'),
(103, 1, 1, 'Male', 16.00, '1/2017/009', '', 'MBCP/eMTCT', NULL, 'KEMIGISA JANE', 'AMANYIRE DAVID', 'No', 'Positive', '2018-05-08', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '195/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 01:23:29', '2018-05-11 01:23:29', NULL, 'EXPOSED INFANT'),
(104, 1, 1, 'Male', 13.00, '3/2017/16', '', 'MBCP/eMTCT', NULL, 'LWANGA ANNET', 'MARK MAGEZI', 'No', 'Positive', '2018-05-08', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '196/5/18', '', '', '2018-05-11 01:25:10', '2018-05-11 15:57:13', NULL, 'EXPOSED INFANT'),
(105, 1, 1, 'Female', 14.00, '2/2017/28', '0783421404', 'MBCP/eMTCT', NULL, 'KOMUHIMBO GORRET', 'KAJUMBA SHELLAH', 'No', 'Positive', '2018-05-08', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '193/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 01:29:35', '2018-05-11 01:29:35', NULL, 'EXPOSED INFANT'),
(106, 1, 1, 'Female', 1.50, '3/2018/84', '0758189260', 'MBCP/eMTCT', NULL, 'BASEMERA ANGELLA', 'KABASINGUZI YUNIS', 'Yes', 'Positive', '2018-05-07', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '143/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 01:31:21', '2018-05-11 01:31:21', NULL, 'EXPOSED INFANT'),
(107, 1, 1, 'Female', 1.50, '3/2018/85', '', 'MBCP/eMTCT', NULL, 'KYOMUGISA MASTULA', 'MWEMBABAZI ASIRAF', 'Yes', 'Positive', '2018-05-07', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '140/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 01:33:15', '2018-05-11 01:33:15', NULL, 'EXPOSED INFANT'),
(108, 1, 1, 'Male', 14.00, '2/2017/25', '0779186653', 'MBCP/eMTCT', NULL, 'KABAGWERI IMMACULATE', 'ATUHAIRE EMMANUEL', 'No', 'Positive', '2018-05-07', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '141/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 01:35:08', '2018-05-11 01:35:08', NULL, 'EXPOSED INFANT'),
(109, 1, 1, 'Male', 16.00, '01/2017/031', '0775849339', 'MBCP/eMTCT', NULL, 'KABATEMBUZI ANNET', 'MUSINGUZI JORDAN', 'No', 'Positive', '2018-05-07', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '138/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 01:37:01', '2018-05-11 01:37:01', NULL, 'EXPOSED INFANT'),
(110, 1, 1, 'Male', 7.00, '9/2017/63', '', 'MBCP/eMTCT', NULL, 'TUSINGWIRE FAITH', 'MUGAYA PADDY', 'Yes', 'Positive', '2018-05-08', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '155/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 01:39:28', '2018-05-11 01:39:28', NULL, 'EXPOSED INFANT'),
(111, 1, 1, 'Female', 14.00, '3/2017/003', '', 'MBCP/eMTCT', NULL, 'KABAGANYIZI BAETRACE', 'PATIENCE JOVIA', 'No', 'Positive', '2018-05-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '235/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 01:53:49', '2018-05-11 01:53:49', NULL, 'EXPOSED INFANT'),
(112, 1, 1, 'Female', 13.50, '3/2017/18', '', 'MBCP/eMTCT', NULL, 'KOIKIRIZA GETRUDE', 'BASEMERA MOREEN', 'No', 'Positive', '2018-05-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '238/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 01:55:37', '2018-05-11 01:55:37', NULL, 'EXPOSED INFANT'),
(113, 1, 1, 'Male', 1.50, '3/2018/90', '', 'MBCP/eMTCT', NULL, 'AKUGIZIBWE ANNET', 'TALEMWA INNOCENT', 'Yes', 'Positive', '2018-05-09', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '230/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 01:57:20', '2018-05-11 01:57:20', NULL, 'EXPOSED INFANT'),
(114, 1, 1, 'Male', 1.50, '3/2018/88', '', 'MBCP/eMTCT', NULL, 'NALUMANSI JOSEPH', 'JOSEPH', 'No', 'Positive', '2018-05-09', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '233/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 01:59:00', '2018-05-11 01:59:00', NULL, 'EXPOSED INFANT'),
(115, 1, 1, 'Male', 13.00, '3/2017/009', '', 'MBCP/eMTCT', NULL, 'KABALISA ROSE', 'TUMWESIGE SIMON', 'No', 'Positive', '2018-05-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '237/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 02:00:33', '2018-05-11 02:00:33', NULL, 'EXPOSED INFANT'),
(116, 1, 1, 'Female', 1.50, '3/2018/89', '', 'MBCP/eMTCT', NULL, 'KATUSABE FLORENCE', 'KATUSABE FLORENCE', 'Yes', 'Positive', '2018-05-09', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '232/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 02:02:08', '2018-05-11 02:02:08', NULL, 'EXPOSED INFANT'),
(117, 1, 1, 'Female', 2.50, '2/2018/23', '', 'MBCP/eMTCT', NULL, 'TUHAISE SYLVIA', 'KIHUNDE KELLON', 'Yes', 'Positive', '2018-05-09', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '239/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 02:04:03', '2018-05-11 02:04:03', NULL, 'EXPOSED INFANT'),
(118, 1, 1, 'Female', 1.50, '3/2018/87', '', 'MBCP/eMTCT', NULL, 'KAHUNDE TEOPISTA', 'KAKYO IMMACULATE', 'Yes', 'Positive', '2018-05-09', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '236/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 02:05:36', '2018-05-11 02:05:36', NULL, 'EXPOSED INFANT'),
(119, 1, 1, 'Male', 1.50, '3/2018/91', '', 'MBCP/eMTCT', NULL, 'NYAKAISIKI OLIVER', 'MUHUMUZA JOSPEH', 'Yes', 'Positive', '2018-05-09', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '231/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 15:51:26', '2018-05-11 15:51:26', NULL, 'EXPOSED INFANT'),
(120, 1, 1, 'Female', 1.50, '3/2018/92', '', 'MBCP/eMTCT', NULL, 'TUSIIME AISHA', 'JESCA', 'Yes', 'Positive', '2018-05-10', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '262/5/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-11 15:52:54', '2018-05-11 15:52:54', NULL, 'EXPOSED INFANT'),
(121, 1, 1, 'Male', 15.00, '1/2017/11', '', 'MBCP/eMTCT', NULL, 'KAJOBE MOUREEN', 'ARMIN GRACKSHILLO', 'No', 'Positive', '2018-05-15', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '351/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-16 15:41:47', '2018-05-16 15:41:47', NULL, 'EXPOSED INFANT'),
(122, 1, 1, 'Female', 1.50, '4/2018/26', '', 'MBCP/eMTCT', NULL, 'KOMUHENDO BEATRACE', 'KISEMBO RINAH', 'Yes', 'Positive', '2018-05-15', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '352/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-16 15:44:08', '2018-05-16 15:44:08', NULL, 'EXPOSED INFANT'),
(123, 1, 1, 'Male', 14.00, '2/2017/30', '', 'MBCP/eMTCT', NULL, 'KOHENDE VIOLET', 'MUHUMUZA INOCENT', 'Yes', 'Positive', '2018-05-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '320/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-16 15:52:17', '2018-05-16 15:52:17', NULL, 'EXPOSED INFANT'),
(124, 1, 1, 'Male', 1.50, '4/2018/25', '', 'MBCP/eMTCT', NULL, 'KENSEMO AGNES', 'KASAIJA JAMES', 'Yes', 'Positive', '2018-05-14', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '319/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-16 15:53:52', '2018-05-16 15:53:52', NULL, 'EXPOSED INFANT'),
(125, 1, 1, 'Male', 9.00, '8/2017/11', '', 'MBCP/eMTCT', NULL, 'KAMULI RUTH', 'ISINGOMA EDWARD', 'No', 'Positive', '2018-05-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '322/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-16 15:55:30', '2018-05-16 15:55:30', NULL, 'EXPOSED INFANT'),
(126, 1, 1, 'Male', 9.00, '8/2018/12', '', 'MBCP/eMTCT', NULL, 'KAMULI RUTH', 'KATO EDWARD', 'No', 'Positive', '2018-05-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '321/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-16 15:57:04', '2018-05-16 15:57:04', NULL, 'EXPOSED INFANT'),
(127, 1, 1, 'Male', 1.50, '3/2018/93', '', 'MBCP/eMTCT', NULL, 'KOBOIKYO OLIVER', 'AMANYIRE JOSEPH', 'Yes', 'Positive', '2018-05-14', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '323/05/18', '', '', '2018-05-16 15:58:54', '2018-05-22 17:19:03', NULL, 'EXPOSED INFANT'),
(128, 1, 1, 'Male', 3.00, '1/2018/88', '', 'MBCP/eMTCT', NULL, 'KABAHENDO ESTHER', 'BYAMOKA EDSON', 'Yes', 'Positive', '2018-05-10', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '266/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-16 16:00:31', '2018-05-16 16:00:31', NULL, 'EXPOSED INFANT'),
(129, 1, 1, 'Male', 1.50, '4/2018/018', '0787344005', 'MBCP/eMTCT', NULL, 'KAJUMBA VIOLET', 'MUGISA OWEN', 'Yes', 'Positive', '2018-05-21', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '450/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-05-22 15:51:08', '2018-05-22 15:51:08', NULL, 'EXPOSED INFANT'),
(130, 1, 1, 'Male', 13.00, '4/2017/24', '', 'MBCP/eMTCT', NULL, 'KANWERI ELIZABETH', 'AHAISIBWE ROGERS', 'No', 'Positive', '2018-06-04', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '040/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-05 16:07:58', '2018-06-05 16:07:58', NULL, 'EXPOSED INFANT'),
(131, 1, 1, 'Female', 13.00, '4/2017/18', '', 'MBCP/eMTCT', NULL, 'KAWIDI JULIET', 'NINSIIMA MARYS', 'No', 'Positive', '2018-06-04', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '039/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-05 16:09:48', '2018-06-05 16:09:48', NULL, 'EXPOSED INFANT'),
(132, 1, 1, 'Female', 9.00, '8/2017/43', '', 'Young Child Clinic', NULL, 'BONABANA AIDAH', 'KESEMIRE FAIMAH', 'No', 'Unknown', '2018-05-31', '1st PCR', 'Ngobi Paul', 'Unknown', 'Unknown', 'Unknown', '0000-00-00', '705/05/18', 'No ARVs taken at birth', '', '2018-06-05 16:31:11', '2018-06-05 16:31:11', NULL, 'EXPOSED INFANT'),
(133, 1, 1, 'Male', 1.50, '4/2018/24', '', 'MBCP/eMTCT', NULL, 'KABALINZI JOSEPHINE', 'MUSIIMENTA', 'Yes', 'Positive', '2018-05-31', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '707/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-05 16:34:08', '2018-06-05 16:34:08', NULL, 'EXPOSED INFANT'),
(134, 1, 1, 'Female', 11.00, '6/2017/39', '', 'Outpatient', NULL, 'KOBUGABE GLADYS', 'AYEBALE PHIONA', 'Yes', 'Positive', '2018-05-31', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '706/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-05 16:37:54', '2018-06-05 16:37:54', NULL, 'EXPOSED INFANT'),
(135, 1, 1, 'Male', 1.50, '4/2018/22', '', 'MBCP/eMTCT', NULL, 'ASIIMWE GORRET', 'TUSINGWIRE TIMOTHY', 'Yes', 'Positive', '2018-05-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '677/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-05 16:41:09', '2018-06-05 16:41:09', NULL, 'EXPOSED INFANT'),
(136, 1, 1, 'Male', 1.70, '4/2018/23', '', 'MBCP/eMTCT', NULL, 'KARUNGI ANNET', 'ASINGWIRE KENETH', 'Yes', 'Positive', '2018-05-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '676/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-05 16:43:37', '2018-06-05 16:43:37', NULL, 'EXPOSED INFANT'),
(137, 1, 1, 'Female', 10.00, '7/2017/39', '', 'MBCP/eMTCT', NULL, 'N', 'AINENBYONA MARY', 'No', 'Positive', '2018-05-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '678/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-05 16:45:51', '2018-06-05 16:45:51', NULL, 'EXPOSED INFANT'),
(138, 1, 1, 'Female', 1.50, '4/2017/21', '0781734881', 'MBCP/eMTCT', NULL, 'KANSIIME ROSSET', 'KAAKYO JULIET', 'Yes', 'Positive', '2018-05-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '679/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-05 16:51:12', '2018-06-05 16:51:12', NULL, 'EXPOSED INFANT'),
(139, 1, 1, 'Male', 1.50, '4/2018/20', '', 'MBCP/eMTCT', NULL, 'BIRUNGI GRACE', 'TWEHEYO ISAAC', 'Yes', 'Positive', '2018-05-29', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '647/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-05 16:56:41', '2018-06-05 16:56:41', NULL, 'EXPOSED INFANT'),
(140, 1, 1, 'Male', 13.00, '4/2017/41', '', 'MBCP/eMTCT', NULL, 'KEEMA GLORIA', 'MUSINGUZI RICHARD', 'Yes', 'Positive', '2018-05-28', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '616/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-05 16:58:53', '2018-06-05 16:58:53', NULL, 'EXPOSED INFANT'),
(141, 1, 1, 'Female', 17.00, '12/2016/001', '', 'MBCP/eMTCT', NULL, 'KEZABU OLIVER', 'KOBUGABE IMMACULATE', 'No', 'Positive', '2018-05-28', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '615/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-05 17:01:40', '2018-06-05 17:01:40', NULL, 'EXPOSED INFANT'),
(142, 1, 1, 'Male', 1.50, '4/2018/19', '', 'MBCP/eMTCT', NULL, 'KEBIRUNGI SOFIA', 'ATALEMWA DAVID', 'Yes', 'Positive', '2018-05-24', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '543/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-05 17:03:57', '2018-06-05 17:03:57', NULL, 'EXPOSED INFANT'),
(143, 1, 1, 'Male', 7.00, '10/2017/95', '', 'Pediatric Inpatient', NULL, 'NIKUZE ESIPILUS', 'TUKUDEMANA SETTI', 'Yes', 'Positive', '2018-05-25', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '585/05/18', 'No ARVs taken at birth', '', '2018-06-05 17:06:45', '2018-06-05 17:06:45', NULL, 'EXPOSED INFANT'),
(144, 1, 1, 'Female', 13.00, '4/2017/001', '', 'MBCP/eMTCT', NULL, 'KAHWA EVELYN', 'NINSIIMA DESIRE', 'No', 'Positive', '2018-05-24', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '542/05/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-05 17:12:17', '2018-06-05 17:12:17', NULL, 'EXPOSED INFANT'),
(145, 1, 1, 'Male', 1.50, '4/2018/37', '0781656542', 'MBCP/eMTCT', NULL, 'NYAKATO JUDITH', 'IAN TREVICE SSEMUYABA', 'Yes', 'Positive', '2018-06-05', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '060/06/18', '', '', '2018-06-07 19:13:23', '2018-06-07 19:21:16', NULL, 'EXPOSED INFANT'),
(146, 1, 1, 'Female', 1.50, '4/2018/36', '0785350864', 'MBCP/eMTCT', NULL, 'KENGONZI PHIONA', 'KANSIIME CAROLYNE', 'Yes', 'Positive', '2018-06-05', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '056/06/18', '', '', '2018-06-07 19:16:53', '2018-06-07 19:23:05', NULL, 'EXPOSED INFANT'),
(147, 1, 1, 'Female', 12.00, '6/2017/007', '0785866069', 'MBCP/eMTCT', NULL, 'NINSIIMA SHIPHURAH', 'NINSIIMA TRAZIA', 'No', 'Positive', '2018-06-06', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '087/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-07 19:19:11', '2018-06-07 19:19:11', NULL, 'EXPOSED INFANT'),
(148, 1, 1, 'Male', 14.00, '4/2017/006', '', 'MBCP/eMTCT', NULL, 'NDYAHABWE AISHA', 'AKANDWANAHO SULAIT', 'No', 'Positive', '2018-06-06', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '090/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-07 19:25:38', '2018-06-07 19:25:38', NULL, 'EXPOSED INFANT'),
(149, 1, 1, 'Female', 13.50, '4/2017/20', '0788113227', 'MBCP/eMTCT', NULL, 'NIGHT CLOEPHAS', 'KANYUNYUZI EVELYN', 'No', 'Positive', '2018-06-06', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '092/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-07 19:27:32', '2018-06-07 19:27:32', NULL, 'EXPOSED INFANT'),
(150, 1, 1, 'Female', 13.00, '4/2017/31', '', 'MBCP/eMTCT', NULL, 'NILWENGE PRICILLAH', 'KARUNGI DOREEN', 'No', 'Positive', '2018-06-06', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '091/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-07 19:29:34', '2018-06-07 19:29:34', NULL, 'EXPOSED INFANT'),
(151, 1, 1, 'Male', 14.00, '3/2017/006', '', 'MBCP/eMTCT', NULL, 'KEMIGISA PRAISE', 'MURUNGI JAMES', 'No', 'Positive', '2018-06-06', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '089/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-07 19:43:40', '2018-06-07 19:43:40', NULL, 'EXPOSED INFANT'),
(152, 1, 1, 'Female', 14.00, '3/2017/13', '', 'MBCP/eMTCT', NULL, 'KARUNGI JOSEPHINE', 'TUMUHAIRWE DOREEN', 'No', 'Positive', '2018-06-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '251/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-19 00:58:37', '2018-06-19 00:58:37', NULL, 'EXPOSED INFANT'),
(153, 1, 1, 'Male', 1.50, '05/2018/03', '0789223149', 'MBCP/eMTCT', NULL, 'KOBUSINGE ROSE', 'MURUNGI    JUNIOR', 'Yes', 'Positive', '2018-06-18', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '246/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-19 01:06:57', '2018-06-19 01:06:57', NULL, 'EXPOSED INFANT'),
(154, 1, 1, 'Female', 14.00, '4/2017/023', '0785567633', 'MBCP/eMTCT', NULL, 'KAHUNDE DAPHINE', 'KEMBABAZI MAJORY', 'No', 'Positive', '2018-06-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '247/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-19 01:15:44', '2018-06-19 01:15:44', NULL, 'EXPOSED INFANT'),
(155, 1, 1, 'Male', 10.00, '8/2017/14', '', 'MBCP/eMTCT', NULL, 'KEMIGABO GETRUDE', 'MANYI MARK MORRIS', 'No', 'Positive', '2018-06-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '250/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-19 01:17:30', '2018-06-19 01:17:30', NULL, 'EXPOSED INFANT'),
(156, 1, 1, 'Female', 14.00, '3/2017/24', '', 'MBCP/eMTCT', NULL, 'KAMAKUNE  JOY', 'KENGOZI  EDITH', 'No', 'Positive', '2018-06-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '252/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-19 17:15:18', '2018-06-19 17:15:18', NULL, 'EXPOSED INFANT'),
(157, 1, 1, 'Male', 14.00, '4/2017/009', '', 'MBCP/eMTCT', NULL, 'NAMUDU  ANNET', 'BAGUMA ALEX', 'Yes', 'Positive', '2018-06-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '249/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-19 17:28:08', '2018-06-19 17:28:08', NULL, 'EXPOSED INFANT'),
(158, 1, 1, 'Female', 1.50, '5/2018/04', '', 'MBCP/eMTCT', NULL, 'KAHUBIRE  CHRISTINE', 'KASEMIRE  PATRICIA', 'Yes', 'Positive', '2018-06-18', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '248/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-19 17:31:01', '2018-06-19 17:31:01', NULL, 'EXPOSED INFANT');
INSERT INTO `poc_tables` (`id`, `facility_id`, `district_id`, `gender`, `age`, `exp_no`, `caretaker_number`, `entry_point`, `other_entry_point`, `mother_name`, `infant_name`, `breastfeeding_status`, `mother_hiv_status`, `collection_date`, `pcr_level`, `created_by`, `pmtct_antenatal`, `pmtct_delivery`, `pmtct_postnatal`, `admission_date`, `sample_id`, `infant_pmtctarv`, `mother_pmtctarv`, `created_at`, `updated_at`, `deleted_at`, `provisional_diagnosis`) VALUES
(159, 1, 1, 'Male', 7.00, '11/2017/48', '', 'MBCP/eMTCT', NULL, 'KOMUHANGI PRISCILLA', 'JACKSON MARK', 'Yes', 'Positive', '2018-06-19', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-06-19', '281/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-20 21:50:18', '2018-06-20 21:50:18', NULL, ''),
(160, 1, 1, 'Male', 2.00, '4/2018/41', '', 'MBCP/eMTCT', NULL, 'KEMIGABO BEATRACE', 'BAGUMA DANIEL', 'Yes', 'Positive', '2018-06-19', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '277/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-20 21:52:57', '2018-06-20 21:52:57', NULL, 'EXPOSED INFANT'),
(161, 1, 1, 'Male', 16.00, '', '', 'Pediatric Inpatient', NULL, 'AGABA ENID', 'MUKONYEZI KENNETH', 'No', 'Positive', '2018-06-19', '2nd PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-06-18', '283/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-20 21:56:28', '2018-06-20 21:56:28', NULL, 'EXPOSED INFANT'),
(162, 1, 1, 'Male', 2.00, '5/2018/07', '0774507277', 'MBCP/eMTCT', NULL, 'ASIIMWE SAIDA', 'BUSINGE JOSEPH', 'Yes', 'Positive', '2018-06-19', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '280/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-20 21:58:58', '2018-06-20 21:58:58', NULL, 'EXPOSED INFANT'),
(163, 1, 1, 'Female', 10.00, '5/2018/05', '', 'MBCP/eMTCT', NULL, 'KOMUHIMBO MARY', 'KOMUHIMBO PRECIOUS', 'Yes', 'Positive', '2018-06-19', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '279/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-20 22:01:12', '2018-06-20 22:01:12', NULL, 'EXPOSED INFANT'),
(164, 1, 1, 'Male', 15.00, '3/2017/19', '', 'MBCP/eMTCT', NULL, 'KABASINGUZI DOREEN', 'ALISINGURA JOEL', 'No', 'Positive', '2018-06-19', '2nd PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '278/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-20 22:03:17', '2018-06-20 22:03:17', NULL, 'EXPOSED INFANT'),
(165, 1, 1, 'Female', 1.00, '5/2018/06', '', 'MBCP/eMTCT', NULL, 'TUMUSIIME GLORIA', 'NAKAZI RAHMAH', 'Yes', 'Positive', '2018-06-19', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '282/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-20 22:20:08', '2018-06-20 22:20:08', NULL, 'EXPOSED INFANT'),
(166, 1, 1, 'Female', 1.50, '5/2018/10', '', 'MBCP/eMTCT', NULL, 'KEMIGISA GETRUDE', 'BABIRYE', 'Yes', 'Positive', '2018-06-20', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '303/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-21 17:06:24', '2018-06-21 17:06:24', NULL, 'EXPOSED INFANT'),
(167, 1, 1, 'Female', 1.50, '5/2018/11', '', 'MBCP/eMTCT', NULL, 'KEMIGISA GETRUDE', 'NAKATO', 'Yes', 'Positive', '2018-06-20', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '302/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-21 17:09:59', '2018-06-21 17:09:59', NULL, 'EXPOSED INFANT'),
(168, 1, 1, 'Female', 1.50, '5/2018/09', '', 'MBCP/eMTCT', NULL, 'KEMIGISA FLORENCE', 'KANGUME  TRACY', 'Yes', 'Positive', '2018-06-20', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '305/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-21 17:12:53', '2018-06-21 17:12:53', NULL, 'EXPOSED INFANT'),
(169, 1, 1, 'Female', 8.00, '', '0775129489', 'Pediatric Inpatient', NULL, 'AMPARE MARION', 'ALINDAH  SHENIDAH', 'Yes', 'Positive', '2018-06-20', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-06-11', '307/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-21 17:17:19', '2018-06-21 17:17:19', NULL, ''),
(170, 1, 1, 'Female', 1.50, '5/2018/08', '0789953517', 'MBCP/eMTCT', NULL, 'KEMIGABO GORRETI', 'KABAHUMA', 'Yes', 'Positive', '2018-06-20', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '306/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-21 17:20:49', '2018-06-21 17:20:49', NULL, ''),
(171, 1, 1, 'Male', 1.50, '5/2018/12', '', 'MBCP/eMTCT', NULL, 'KARUNGI PHIONA', 'MWAKA DAN', 'Yes', 'Positive', '2018-06-20', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '304/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-21 17:23:50', '2018-06-21 17:23:50', NULL, ''),
(172, 1, 1, 'Female', 1.50, '5/2018/13', '0702476557', 'MBCP/eMTCT', NULL, 'KAMULI EVERLYN', 'MACKLYN', 'Yes', 'Positive', '2018-06-21', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '340/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-22 18:16:25', '2018-06-22 18:16:25', NULL, 'EXPOSED INFANT'),
(173, 1, 1, 'Male', 1.50, '5/2018/15', '', 'MBCP/eMTCT', NULL, 'KEZABU ANNET', 'AHUMUZA', 'Yes', 'Positive', '2018-06-21', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '336/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-22 18:27:58', '2018-06-22 18:27:58', NULL, 'EXPOSED INFANT'),
(174, 1, 1, 'Male', 10.00, '8/2017/31', '', 'MBCP/eMTCT', NULL, 'KATUSHABE ANNET', 'KYALIMPA MATHEW', 'No', 'Positive', '2018-06-21', '2nd PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '339/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-22 18:30:01', '2018-06-22 18:30:01', NULL, 'EXPOSED INFANT'),
(175, 1, 1, 'Female', 1.50, '5/2018/14', '0773196220', 'MBCP/eMTCT', NULL, 'KANGUME ROSE', 'KENYANGE CHRISTINE', 'Yes', 'Positive', '2018-06-21', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '338/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-22 18:32:00', '2018-06-22 18:32:00', NULL, 'EXPOSED INFANT'),
(176, 1, 1, 'Male', 16.00, '01/2017/36', '', 'MBCP/eMTCT', NULL, 'KAMIGISA HELLEN', 'NYAKANA STEVEN', 'No', 'Positive', '2018-06-21', '2nd PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '341/06/2018', 'Daily NVP from birth to 6 weeks', '', '2018-06-22 18:34:30', '2018-06-22 18:34:30', NULL, 'EXPOSED INFANT'),
(177, 1, 1, 'Female', 1.50, '3/2018/97', '0775756699', 'MBCP/eMTCT', NULL, 'KOBUSINGYE OLIVA', 'KANSIIME', 'No', 'Positive', '2018-06-21', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '337/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-06-22 19:33:11', '2018-06-22 19:33:11', NULL, 'EXPOSED INFANT'),
(178, 1, 1, 'Male', 2.00, '4/2018/42', '0775240601', 'MBCP/eMTCT', NULL, 'KABAGENYI AGNES', 'ATUGONZA B MICHEAL', 'Yes', 'Positive', '2018-06-26', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '390/6/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-05 23:52:03', '2018-07-05 23:52:03', NULL, 'EXPOSED INFANT'),
(179, 1, 1, 'Male', 14.00, 'NA', '', 'Pediatric Inpatient', NULL, 'KATUSABE VIOLA', 'AYESIGA REAGAN', 'No', 'Positive', '2018-06-26', 'R1', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '398/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-05 23:55:41', '2018-07-05 23:55:41', NULL, 'EXPOSED INFANT'),
(180, 1, 1, 'Male', 12.00, '4/2017/016', '', 'MBCP/eMTCT', NULL, 'KEMIGABO GRACE', 'TALEMWA RAHIM', 'No', 'Positive', '2018-06-26', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '391/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-05 23:57:49', '2018-07-05 23:57:49', NULL, 'EXPOSED INFANT'),
(181, 1, 1, 'Male', 12.00, '2/2017/10', '', 'MBCP/eMTCT', NULL, 'KOMUHENDO EVA', 'FRANK TOMAS', 'No', 'Positive', '2018-06-27', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '431/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:00:23', '2018-07-06 00:00:23', NULL, 'EXPOSED INFANT'),
(182, 1, 1, 'Male', 15.00, '4/2017/54', '0776120587', 'MBCP/eMTCT', NULL, 'TIBAHURERWAYO MAGRET', 'MUJUNI JOHN', 'No', 'Positive', '2018-06-25', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '281/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:02:35', '2018-07-06 00:02:35', NULL, 'EXPOSED INFANT'),
(183, 1, 1, 'Female', 1.50, '5/2018/19', '', 'MBCP/eMTCT', NULL, 'KANSIIME GRACE', 'KEBIRUNGI MOREEN', 'Yes', 'Positive', '2018-07-02', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '028/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:04:33', '2018-07-06 00:04:33', NULL, 'EXPOSED INFANT'),
(184, 1, 1, 'Female', 4.00, '3/2018/98', '', 'MBCP/eMTCT', NULL, 'TUMURAMYE JOVAA', 'ASIIMWE LYDIA', 'Yes', 'Positive', '2018-07-03', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '054/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:06:29', '2018-07-06 00:06:29', NULL, 'EXPOSED INFANT'),
(185, 1, 1, 'Male', 14.00, '4/2017/021', '0786257576', 'MBCP/eMTCT', NULL, 'TUSIIME OLIVER', 'AYEBAZIBWE YONNAH', 'No', 'Positive', '2018-07-02', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '026/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:09:48', '2018-07-06 00:09:48', NULL, 'EXPOSED INFANT'),
(186, 1, 1, 'Female', 11.00, '7/2017/36', '', 'MBCP/eMTCT', NULL, 'AKANKWASA CAROLYN', 'NYANGOMA GIFT', 'No', 'Positive', '2018-07-03', 'R1', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '055/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:12:38', '2018-07-06 00:12:38', NULL, 'EXPOSED INFANT'),
(187, 1, 1, 'Male', 2.00, '5/2018/21', '', 'MBCP/eMTCT', NULL, 'KOMUHIMBO ROSE', 'MWEBESA PATRICK', 'Yes', 'Positive', '2018-07-02', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '029/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:14:47', '2018-07-06 00:14:47', NULL, 'EXPOSED INFANT'),
(188, 1, 1, 'Male', 10.00, '8/2017/23', '', 'MBCP/eMTCT', NULL, 'KOKWEYA BEATRACE', 'BAGONZA JONATHAN', 'No', 'Positive', '2018-07-02', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '027/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:17:15', '2018-07-06 00:17:15', NULL, 'EXPOSED INFANT'),
(189, 1, 1, 'Female', 14.00, '3/2017/005', '0776512116', 'MBCP/eMTCT', NULL, 'KABAKAMA MARY', 'KANSIIME MONICA ', 'No', 'Positive', '2018-07-02', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '025/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:20:42', '2018-07-06 00:20:42', NULL, 'EXPOSED INFANT'),
(190, 1, 1, 'Female', 1.50, '5/2018/20', '', 'MBCP/eMTCT', NULL, 'NATUKUNDA RACHEAL', 'AMUTUHAIRE MARION', 'Yes', 'Positive', '2018-07-02', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '030/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:26:52', '2018-07-06 00:26:52', NULL, 'EXPOSED INFANT'),
(191, 1, 1, 'Female', 15.00, '2/2017/24', '', 'MBCP/eMTCT', NULL, 'IRUMBA LUCY', 'KAIJA ABLE', 'Yes', 'Positive', '2018-07-02', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '031/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:30:42', '2018-07-06 00:30:42', NULL, 'EXPOSED INFANT'),
(192, 1, 1, 'Female', 12.00, '6/2017/21', '', 'MBCP/eMTCT', NULL, 'KABAGWERI STELLA', 'NYANGOMA HILDA', 'No', 'Positive', '2018-07-04', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '073/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:32:55', '2018-07-06 00:32:55', NULL, 'EXPOSED INFANT'),
(193, 1, 1, 'Male', 1.50, '5/2018/22', '', 'MBCP/eMTCT', NULL, 'KABONIRA MARGRET', 'ATUHAIRE DENSEN', 'Yes', 'Positive', '2018-07-04', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '075/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:34:47', '2018-07-06 00:34:47', NULL, 'EXPOSED INFANT'),
(194, 1, 1, 'Female', 17.00, '2/2017/23', '', 'MBCP/eMTCT', NULL, 'KEBIRUNGI SHEILLLE', 'KYAKYO CLAIRE', 'No', 'Positive', '2018-07-04', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '070/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:36:33', '2018-07-06 00:36:33', NULL, 'EXPOSED INFANT'),
(195, 1, 1, 'Female', 12.00, '6/2017/22', '', 'MBCP/eMTCT', NULL, 'KABAGWERI STELLA', 'NYAKATO ELIZABETH', 'No', 'Positive', '2018-07-04', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '074/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:38:30', '2018-07-06 00:38:30', NULL, 'EXPOSED INFANT'),
(196, 1, 1, 'Male', 10.00, '8/2017/44', '', 'MBCP/eMTCT', NULL, 'KASANDE SHAKILLA', 'TUSIIME ISAAC', 'Yes', 'Positive', '2018-06-22', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '358/06/18', 'No ARVs taken at birth', '', '2018-07-06 00:44:32', '2018-07-06 00:44:32', NULL, 'EXPOSED INFANT'),
(197, 1, 1, 'Male', 1.50, '5/2018/18', '0752524341', 'MBCP/eMTCT', NULL, 'TUSABE EVELYN', 'BUSINGE JOSIAH', 'Yes', 'Positive', '2018-06-25', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '280/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 00:46:43', '2018-07-06 00:46:43', NULL, 'EXPOSED INFANT'),
(198, 1, 1, 'Female', 13.00, '5/2017/26', '', 'EPI', NULL, 'ATUHAIRE LOY', 'KAHINDO KYABAJE', 'Yes', 'Positive', '2018-06-25', 'R1', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2018-06-24', '279/06/18', 'No ARVs taken at birth', '', '2018-07-06 00:51:08', '2018-07-06 00:51:08', NULL, 'EXPOSED INFANT'),
(199, 1, 1, 'Female', 1.50, '5/2018/17', '0772607785', 'MBCP/eMTCT', NULL, 'TUHAISE ROSE', 'KARUNGI ROSE ', 'Yes', 'Positive', '2018-06-28', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '277/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 01:03:07', '2018-07-06 01:03:07', NULL, 'EXPOSED INFANT'),
(200, 1, 1, 'Male', 1.50, '5/2018/16', '0773469696', 'MBCP/eMTCT', NULL, 'KARUNGI LILLIAN', 'MUSIIMENTA RYMOND', 'Yes', 'Positive', '2018-06-25', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '278/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 01:05:39', '2018-07-06 01:05:39', NULL, 'EXPOSED INFANT'),
(201, 1, 1, 'Female', 1.50, '3/2018/97', '0775756699', 'EPI', NULL, 'KOBUSINGE OLIVA', 'KANSIIME', 'No', 'Positive', '2018-06-21', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '337/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 01:09:22', '2018-07-06 01:09:22', NULL, 'EXPOSED INFANT'),
(202, 1, 1, 'Male', 16.00, '01/2017/36', '', 'MBCP/eMTCT', NULL, 'KAMIGISA HELLEN', 'NYAKOOJO STEVEN', 'No', 'Positive', '2018-06-21', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '341/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 01:11:10', '2018-07-06 01:11:10', NULL, 'EXPOSED INFANT'),
(203, 1, 1, 'Female', 1.50, '5/2018/14', '0773196220', 'MBCP/eMTCT', NULL, 'KANGUME ROSE', 'KENYANGE CHRISTINE', 'Yes', 'Positive', '2018-06-21', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '338/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 01:13:19', '2018-07-06 01:13:19', NULL, 'EXPOSED INFANT'),
(204, 1, 1, 'Male', 10.00, '8/2017/31', '', 'MBCP/eMTCT', NULL, 'KATUSHABE ANNET', 'KYALIMPA MATHEW', 'No', 'Positive', '2018-06-21', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '339/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 01:15:34', '2018-07-06 01:15:34', NULL, 'EXPOSED INFANT'),
(205, 1, 1, 'Male', 1.50, '5/2018/15', '', 'MBCP/eMTCT', NULL, 'KEZABU ANNET', 'AHUMUZA', 'Yes', 'Positive', '2018-06-21', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '336/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 01:17:24', '2018-07-06 01:17:24', NULL, 'EXPOSED INFANT'),
(206, 1, 1, 'Female', 1.50, '5/2018/13', '0702476557', 'MBCP/eMTCT', NULL, 'KAMULI EVELYN', 'MACKLYN', 'Yes', 'Positive', '2018-06-21', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '340/06/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 01:19:04', '2018-07-06 01:19:04', NULL, 'EXPOSED INFANT'),
(207, 1, 1, 'Male', 1.50, '5/2018/25', '', 'MBCP/eMTCT', NULL, 'KARUNGI HARRIET', 'AKAMPURIRA DIANNY', 'Yes', 'Positive', '2018-07-05', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '111/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 01:48:58', '2018-07-06 01:48:58', NULL, 'EXPOSED INFANT'),
(208, 1, 1, 'Female', 1.50, '5/2018/23', '', 'MBCP/eMTCT', NULL, 'KANSIIME MARGRET', 'CATHERINE', 'Yes', 'Positive', '2018-07-05', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '108/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 01:50:21', '2018-07-06 01:50:21', NULL, 'EXPOSED INFANT'),
(209, 1, 1, 'Male', 14.00, '4/2017/003', '', 'MBCP/eMTCT', NULL, 'KUSEMERERWA ROSE', 'AYEBALE PTER', 'No', 'Positive', '2018-07-05', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '110/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 01:51:39', '2018-07-06 01:51:39', NULL, 'EXPOSED INFANT'),
(210, 1, 1, 'Female', 1.50, '5/2018/24', '0780604387', 'MBCP/eMTCT', NULL, 'KAIJA DEZI', 'NASOBORA ANGELLA', 'Yes', 'Positive', '2018-07-05', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '109/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-06 01:53:05', '2018-07-06 01:53:05', NULL, 'EXPOSED INFANT'),
(211, 1, 1, 'Female', 1.50, '5/2018/26', '0782380848', 'MBCP/eMTCT', NULL, 'AMANYIRE MARGRET', 'JACKLYN', 'Yes', 'Positive', '2018-07-09', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '165/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-10 01:12:42', '2018-07-10 01:12:42', NULL, 'EXPOSED INFANT'),
(212, 1, 1, 'Male', 10.00, '9/2017/53', '077518241', 'MBCP/eMTCT', NULL, 'AYESIGA MARY', 'RWABUTIITI ISAYA', 'No', 'Positive', '2018-07-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '164/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-10 01:14:29', '2018-07-10 01:14:29', NULL, 'EXPOSED INFANT'),
(213, 1, 1, 'Female', 14.00, '4/2017/30', '', 'MBCP/eMTCT', NULL, 'KABASINGUZI IMACULATE', 'KATUSIIME COSTANCE', 'No', 'Positive', '2018-07-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '162/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-10 01:16:41', '2018-07-10 01:16:41', NULL, 'EXPOSED INFANT'),
(214, 1, 1, 'Male', 13.00, '5/2017/17', '', 'MBCP/eMTCT', NULL, 'SANYU BRIDGET', 'GODWINE', 'No', 'Positive', '2018-07-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '163/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-10 01:18:30', '2018-07-10 01:18:30', NULL, 'EXPOSED INFANT'),
(215, 1, 1, 'Male', 14.00, '4/2017/35', '', 'MBCP/eMTCT', NULL, 'KOBUSINGE PHIONA', 'ASINGWIRE GODWINE', 'No', 'Positive', '2018-07-10', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '172/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-11 17:20:21', '2018-07-11 17:20:21', NULL, 'EXPOSED INFANT'),
(216, 1, 1, 'Male', 13.00, '6/2017/15', '', 'MBCP/eMTCT', NULL, 'KABAJULIZI LUCY', 'SANYU YOKOBO', 'No', 'Positive', '2018-07-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '192/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-13 00:08:24', '2018-07-13 00:08:24', NULL, 'EXPOSED INFANT'),
(217, 1, 1, 'Female', 14.00, '5/2017/006', '', 'MBCP/eMTCT', NULL, 'KOBUSINGE ANNET', 'BIRUNGI DAPHINE', 'No', 'Positive', '2018-07-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '191/07/18', '', '', '2018-07-13 00:11:41', '2018-07-13 00:14:01', NULL, 'EXPOSED INFANT'),
(218, 1, 1, 'Male', 15.00, '5/2017/20', '', 'MBCP/eMTCT', NULL, 'NYAKAISIKI ROSE', 'JUNIOR', 'No', 'Positive', '2018-07-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '190/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-13 00:13:36', '2018-07-13 00:13:36', NULL, 'EXPOSED INFANT'),
(219, 1, 1, 'Male', 1.50, '5/2018/27', '', 'MBCP/eMTCT', NULL, 'ZIZERE KWAIMAND', 'ALIGANYIRA', 'Yes', 'Positive', '2018-07-11', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '196/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-13 00:15:47', '2018-07-13 00:15:47', NULL, 'EXPOSED INFANT'),
(220, 1, 1, 'Male', 1.50, '5/2018/28', '', 'MBCP/eMTCT', NULL, 'BIRUNGI SHAMIMU', 'MOSES', 'Yes', 'Positive', '2018-07-11', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '200/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-13 00:17:11', '2018-07-13 00:17:11', NULL, 'EXPOSED INFANT'),
(221, 1, 1, 'Female', 13.00, '5/2017/007', '', 'MBCP/eMTCT', NULL, 'KOBUSINGE DAPHINE', 'MELISHA', 'No', 'Positive', '2018-07-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '197/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-13 00:18:44', '2018-07-13 00:18:44', NULL, 'EXPOSED INFANT'),
(222, 1, 1, 'Female', 14.00, '5/2017/003', '', 'MBCP/eMTCT', NULL, 'MBABAZI KEDRESS', 'ANNA', 'No', 'Positive', '2018-07-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '199/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-13 00:20:46', '2018-07-13 00:20:46', NULL, 'EXPOSED INFANT'),
(223, 1, 1, 'Female', 15.00, '4/2017/022', '', 'MBCP/eMTCT', NULL, 'KEMIGASA VIOLET', 'MUSIIMENTA ESTHER', 'No', 'Positive', '2018-07-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '195/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-13 00:22:17', '2018-07-13 00:22:17', NULL, 'EXPOSED INFANT'),
(224, 1, 1, 'Female', 14.00, '5/2017/09', '', 'MBCP/eMTCT', NULL, 'KANSIIME MOREEN', 'KANSIIME JOAN', 'No', 'Positive', '2018-07-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '198/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-13 00:24:12', '2018-07-13 00:24:12', NULL, 'EXPOSED INFANT'),
(225, 1, 1, 'Female', 15.00, '4/2017/002', '', 'MBCP/eMTCT', NULL, 'TUSIIME JOSELYN', 'KARUNGI ESTHER', 'No', 'Positive', '2018-07-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '193/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-13 00:25:41', '2018-07-13 00:25:41', NULL, 'EXPOSED INFANT'),
(226, 1, 1, 'Male', 2.50, '4/2018/42', '', 'MBCP/eMTCT', NULL, 'KOBUSINGE ALICE', 'TUMWEBAZE JOSEPHAT', 'Yes', 'Positive', '2018-07-12', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '223/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-25 18:24:19', '2018-07-25 18:24:19', NULL, 'EXPOSED INFANT'),
(227, 1, 1, 'Male', 1.50, '6/2018/01', '', 'MBCP/eMTCT', NULL, 'KIRUNGI MONICA', 'KYATUNGA ROBERT', 'Yes', 'Positive', '2018-07-12', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '226/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-25 18:26:48', '2018-07-25 18:26:48', NULL, 'EXPOSED INFANT'),
(228, 1, 1, 'Male', 1.50, '5/2018/30', '', 'MBCP/eMTCT', NULL, 'KOJOINO TEDDY', 'GUMA DAN', 'Yes', 'Positive', '2018-07-12', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '225/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-25 18:28:32', '2018-07-25 18:28:32', NULL, 'EXPOSED INFANT'),
(229, 1, 1, 'Male', 1.50, '5/2018/31', '', 'MBCP/eMTCT', NULL, 'KAIJA GETRUDE', 'MUSINGUZI JONATHA', 'Yes', 'Positive', '2018-07-12', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '227/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-25 18:35:12', '2018-07-25 18:35:12', NULL, 'EXPOSED INFANT'),
(230, 1, 1, 'Female', 1.50, '5/2018/29', '', 'MBCP/eMTCT', NULL, 'NAMARA DINAH', 'NAKANJAKO PRESIOUS', 'Yes', 'Positive', '2018-07-12', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '224/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-25 18:36:56', '2018-07-25 18:36:56', NULL, 'EXPOSED INFANT'),
(231, 1, 1, 'Female', 18.00, '001', '', 'Pediatric Inpatient', NULL, 'JENEVA ITHUNGO', 'NZABAKE AMINA', 'No', 'Negative', '2018-07-17', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2018-07-15', '289/07/18', 'No ARVs taken at birth', '', '2018-07-25 18:55:42', '2018-07-25 18:55:42', NULL, 'SYMPTOMATIC CHILD'),
(232, 1, 1, 'Female', 3.00, '000', '0780600421', 'Nutrition', NULL, 'KANSIIME ROSE', 'KARUNGI IRENE', 'No', 'Negative', '2018-07-17', 'R1', 'Ngobi Paul', 'Unknown', 'Unknown', 'Unknown', '2018-06-26', '291/07/18', 'UNKNOWN', '', '2018-07-25 18:58:44', '2018-07-25 18:58:44', NULL, 'SEVERE ACUTE MALNUTRITION'),
(233, 1, 1, 'Female', 7.00, '00111', '', 'Nutrition', NULL, 'MUSABAHO EVANICE', 'ITHUNGO SUPRISE', 'Yes', 'Unknown', '2018-07-17', 'R1', 'Ngobi Paul', 'Unknown', 'Unknown', 'Unknown', '0000-00-00', '290/07/18', 'UNKNOWN', '', '2018-07-25 19:01:06', '2018-07-25 19:01:06', NULL, 'SAM'),
(234, 1, 1, 'Male', 1.50, '6/2018/004', '', 'MBCP/eMTCT', NULL, 'KARUNGI JANET', 'SSENYONJO MOSES', 'Yes', 'Positive', '2018-07-17', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '301/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-25 19:03:19', '2018-07-25 19:03:19', NULL, 'EXPOSED INFANT'),
(235, 1, 1, 'Male', 1.50, '5/2017/002', '0773468055', 'MBCP/eMTCT', NULL, 'KABAHUND TEDDY', 'MUGISA ROBERT', 'Yes', 'Positive', '2018-07-17', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '300/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-25 19:05:41', '2018-07-25 19:05:41', NULL, 'EXPOSED INFANT'),
(236, 1, 1, 'Male', 14.00, '09/2017/37', '', 'MBCP/eMTCT', NULL, 'KEMBABAZI MOREEN', 'MUHUMUZA JOSEPH', 'No', 'Positive', '2018-07-17', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '302/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-25 19:10:45', '2018-07-25 19:10:45', NULL, 'EXPOSED INFANT'),
(237, 1, 1, 'Female', 1.50, '6/2018/002', '', 'MBCP/eMTCT', NULL, 'KEBISEMBO FLAVIA', 'KEBIRUNGI VICKY', 'Yes', 'Positive', '2018-07-16', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '277/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-07-25 19:14:49', '2018-07-25 19:14:49', NULL, 'EXPOSED INFANT'),
(238, 1, 1, 'Female', 12.00, '7/2017/11', '', 'MBCP/eMTCT', NULL, 'TURYAHEBWA CHRISTINE', 'NAKAMULI JOAN', 'No', 'Positive', '2018-07-31', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '568/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 00:43:13', '2018-08-01 00:43:13', NULL, 'EXPOSED INFANT'),
(239, 1, 1, 'Male', 19.00, '0000', '0788644004', 'Outpatient', NULL, 'KANYUNYUZI MARY', 'NINSIIMA SOLOMON', 'No', 'Positive', '2018-07-31', 'R2', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '567/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 00:46:02', '2018-08-01 00:46:02', NULL, 'EXPOSED INFANT'),
(240, 1, 1, 'Female', 8.00, '225', '', 'Outpatient', NULL, 'KOBUSINGE ENJOLIGHT', 'NAMIRIMO ENJOLIGHT', 'Yes', 'Negative', '2018-07-31', 'R1', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '583/07/18', 'NVP for 12 weeks for high risk infants', '', '2018-08-01 00:48:31', '2018-08-01 00:48:31', NULL, 'SEVERE ACUTE MALNUTRITION'),
(241, 1, 1, 'Male', 4.50, '4/2018/44', '', 'MBCP/eMTCT', NULL, 'TUHWERIRWE DORCUS', 'TWINOMUGISHA VICENT', 'Yes', 'Positive', '2018-07-26', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'Lifelong ART', '0000-00-00', '493/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 00:51:43', '2018-08-01 00:51:43', NULL, 'EXPOSED INFANT'),
(242, 1, 1, 'Female', 18.00, '2/2017/20', '', 'MBCP/eMTCT', NULL, 'ALINDA JESCA', 'KASEMIRE SANDRA', 'Yes', 'Positive', '2018-07-26', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '492/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 00:54:03', '2018-08-01 00:54:03', NULL, 'EXPOSED INFANT'),
(243, 1, 1, 'Male', 1.50, '6/2018/14', '', 'MBCP/eMTCT', NULL, 'KARUNGI JOELINE', 'KATO JOSEPH', 'Yes', 'Positive', '2018-07-26', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '490/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 00:57:26', '2018-08-01 00:57:26', NULL, 'EXPOSED INFANT'),
(244, 1, 1, 'Male', 2.00, '5/2018/36', '', 'MBCP/eMTCT', NULL, 'AGABA IREEN', 'AMANYIRE SILAS', 'Yes', 'Positive', '2018-07-26', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '494/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:02:51', '2018-08-01 01:02:51', NULL, 'EXPOSED INFANT'),
(245, 1, 1, 'Male', 13.00, '4/2017/42', '', 'MBCP/eMTCT', NULL, 'KANGUME LAILA', 'BAGONZA JOHN', 'No', 'Positive', '2018-07-25', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '463/07/18', 'No ARVs taken at birth', '', '2018-08-01 01:04:47', '2018-08-01 01:04:47', NULL, 'EXPOSED INFANT'),
(246, 1, 1, 'Male', 12.00, '6/2017/29', '', 'MBCP/eMTCT', NULL, 'KANSIIME ZIYADA', 'UMAR', 'No', 'Positive', '2018-07-25', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '459/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:11:21', '2018-08-01 01:11:21', NULL, 'EXPOSED INFANT'),
(247, 1, 1, 'Male', 1.50, '6/2018/12', '', 'MBCP/eMTCT', NULL, 'KARUNGI IMMACULATE', 'MUSIIMIRE MARK', 'Yes', 'Positive', '2018-07-25', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '461/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:13:39', '2018-08-01 01:13:39', NULL, 'EXPOSED INFANT'),
(248, 1, 1, 'Male', 14.00, '5/2017/19', '', 'MBCP/eMTCT', NULL, 'TUHAISE ROSE', 'MUSINGUZI JOSEPH', 'No', 'Positive', '2018-07-25', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '460/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:15:38', '2018-08-01 01:15:38', NULL, 'EXPOSED INFANT'),
(249, 1, 1, 'Male', 1.50, '6/2018/003', '', 'MBCP/eMTCT', NULL, 'AMANYIRE JENIFFER', 'TUMUSIIME BRUNO', 'Yes', 'Positive', '2018-07-17', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '304/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:18:04', '2018-08-01 01:18:04', NULL, 'EXPOSED INFANT'),
(250, 1, 1, 'Female', 15.00, '3/2017/27', '', 'MBCP/eMTCT', NULL, 'KYOMUGISHA SARAH', 'KOMUHIMBO ELIZABETH', 'No', 'Positive', '2018-07-17', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '303/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:19:48', '2018-08-01 01:19:48', NULL, 'EXPOSED INFANT'),
(251, 1, 1, 'Female', 1.50, '6/2018/008', '0779101736', 'MBCP/eMTCT', NULL, 'KEMIGISA LILLIAN', 'KABASIITA RICKLYN', 'Yes', 'Positive', '2018-07-20', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '366/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:21:42', '2018-08-01 01:21:42', NULL, 'EXPOSED INFANT'),
(252, 1, 1, 'Female', 14.00, '5/2017/21', '', 'MBCP/eMTCT', NULL, 'KANSIIME ROSE', 'KAYESU FAISI', 'No', 'Positive', '2018-07-20', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '367/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:23:32', '2018-08-01 01:23:32', NULL, 'EXPOSED INFANT'),
(253, 1, 1, 'Female', 13.00, '3/2017/25', '', 'MBCP/eMTCT', NULL, 'FLORENCE KONKWIZO', 'GENESIS SONIO', 'No', 'Positive', '2018-07-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '323/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:25:50', '2018-08-01 01:25:50', NULL, 'EXPOSED INFANT'),
(254, 1, 1, 'Female', 1.50, '6/2018/005', '', 'MBCP/eMTCT', NULL, 'BIRUNGI YUSTA', 'QUEEN MIRACLE', 'Yes', 'Positive', '2018-07-17', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '299/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:27:31', '2018-08-01 01:27:31', NULL, 'EXPOSED INFANT'),
(255, 1, 1, 'Female', 1.50, '6/2018/009', '', 'MBCP/eMTCT', NULL, 'KABAHENDO MARY', 'KARUNGI JASMIN', 'Yes', 'Positive', '2018-07-24', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '403/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:29:23', '2018-08-01 01:29:23', NULL, 'EXPOSED INFANT'),
(256, 1, 1, 'Female', 6.00, '289', '0774787392', 'Pediatric Inpatient', NULL, 'KEMIREMBE GORRET', 'MIRACLE MANTIRIDA', 'Yes', 'Unknown', '2018-07-23', '1st PCR', 'Ngobi Paul', 'Unknown', 'Unknown', 'Unknown', '0000-00-00', '385/07/18', 'UNKNOWN', '', '2018-08-01 01:33:48', '2018-08-01 01:33:48', NULL, 'SEVERE ACUTE MALNUTRITION'),
(257, 1, 1, 'Male', 1.50, '6/2018/10', '', 'MBCP/eMTCT', NULL, 'KEMIGISA MARGRET', 'MUGISA FAISAL', 'Yes', 'Positive', '2018-07-23', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '404/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:35:46', '2018-08-01 01:35:46', NULL, 'EXPOSED INFANT'),
(258, 1, 1, 'Female', 13.00, '06/2017/006', '0789533879', 'MBCP/eMTCT', NULL, 'TALEMWA IREEN', 'NINSIIMA ', 'No', 'Positive', '2018-07-23', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '402/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:37:51', '2018-08-01 01:37:51', NULL, 'EXPOSED INFANT'),
(259, 1, 1, 'Male', 2.00, '6/2018/11', '', 'MBCP/eMTCT', NULL, 'MUSIIMENTA MARY', 'TUMUKUNDE JAMES', 'Yes', 'Positive', '2018-07-23', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '405/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:39:43', '2018-08-01 01:39:43', NULL, 'EXPOSED INFANT'),
(260, 1, 1, 'Female', 2.50, '5/2018/35', '', 'MBCP/eMTCT', NULL, 'KYAKYO DAPHINE', 'KYAKYO DAPHINE', 'Yes', 'Positive', '2018-07-18', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '325/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:42:30', '2018-08-01 01:42:30', NULL, 'EXPOSED INFANT'),
(261, 1, 1, 'Male', 1.70, '5/2018/33', '', 'MBCP/eMTCT', NULL, 'BIRUNGI ELIZABETH', 'MARVIN', 'Yes', 'Positive', '2018-07-18', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '326/07/18', 'No ARVs taken at birth', '', '2018-08-01 01:45:48', '2018-08-01 01:45:48', NULL, 'EXPOSED INFANT'),
(262, 1, 1, 'Male', 2.50, '5/2018/34', '', 'MBCP/eMTCT', NULL, 'BIRUNGI RUTH', 'BAGUMA NICODEMUS', 'Yes', 'Positive', '2018-07-18', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '325/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:48:25', '2018-08-01 01:48:25', NULL, 'EXPOSED INFANT'),
(263, 1, 1, 'Female', 1.50, '6/2018/006', '', 'MBCP/eMTCT', NULL, 'KYAKWERA PEACE', 'MIREMBE ELIZABETH', 'Yes', 'Positive', '2018-07-18', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '333/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:50:09', '2018-08-01 01:50:09', NULL, 'EXPOSED INFANT'),
(264, 1, 1, 'Male', 1.50, '6/2018/007', '0789964735', 'MBCP/eMTCT', NULL, 'KIIZA RUTH', 'HAPPY CHRISTIAN', 'Yes', 'Positive', '2018-07-18', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '324/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:52:10', '2018-08-01 01:52:10', NULL, 'EXPOSED INFANT'),
(265, 1, 1, 'Female', 1.50, '257', '', 'Nutrition', NULL, 'KEMIGABO MARGRET', 'KAHUNDE JULIET', 'No', 'Negative', '2018-07-19', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2018-07-18', '343/07/18', 'No ARVs taken at birth', '', '2018-08-01 01:54:09', '2018-08-01 01:54:09', NULL, 'SEVERE ACUTE MALNUTRITION'),
(266, 1, 1, 'Female', 12.00, '28/6/017', '', 'Pediatric Inpatient', NULL, 'MUTUMIRAHA JUDITH', 'KIRABO SCOVIA', 'No', 'Negative', '2018-07-18', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2018-07-09', '306/07/18', 'No ARVs taken at birth', '', '2018-08-01 01:56:21', '2018-08-01 01:56:21', NULL, 'SYMPTOMATIC CHILD'),
(267, 1, 1, 'Female', 14.00, '5/2017/05', '0705159975', 'MBCP/eMTCT', NULL, 'KABAGANYIZI JOSELYN', 'KARUNGI SALUMAH', 'No', 'Positive', '2018-07-16', 'R2', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '279/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 01:59:38', '2018-08-01 01:59:38', NULL, 'EXPOSED INFANT'),
(268, 1, 1, 'Female', 15.00, '313', '', 'Pediatric Inpatient', NULL, 'MBABAZI JANE', 'NATURINDA PATIENCE', 'Yes', 'Negative', '2018-07-24', 'R1', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '430/07/18', 'No ARVs taken at birth', '', '2018-08-01 02:01:42', '2018-08-01 02:01:42', NULL, 'SYMPTOMATIC CHILD'),
(269, 1, 1, 'Male', 1.50, '06/2018/18', '', 'MBCP/eMTCT', NULL, 'KYAKYO GRACE', 'BRIGHT GOD', 'Yes', 'Positive', '2018-07-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '557/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 02:33:47', '2018-08-01 02:33:47', NULL, 'EXPOSED INFANT'),
(270, 1, 1, 'Male', 1.50, '6/2018/16', '0777347887', 'MBCP/eMTCT', NULL, 'AGONZEBWA DIANA', 'LUCKY MAHADI', 'Yes', 'Positive', '2018-07-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '556/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 02:35:09', '2018-08-01 02:35:09', NULL, 'EXPOSED INFANT'),
(271, 1, 1, 'Male', 1.50, '6/2018/19', '', 'MBCP/eMTCT', NULL, 'TUSIIME MOREEN', 'AKAMPULIRA SUNLIGHT', 'Yes', 'Positive', '2018-07-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '551/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 02:36:28', '2018-08-01 02:36:28', NULL, 'EXPOSED INFANT'),
(272, 1, 1, 'Female', 15.00, '4/2017/43', '', 'MBCP/eMTCT', NULL, 'NYAKAISIKI BIRUNGI', 'KEBIRUNGI JOAN', 'Yes', 'Positive', '2018-07-30', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '547/07/18', 'No ARVs taken at birth', '', '2018-08-01 02:37:58', '2018-08-01 02:37:58', NULL, 'EXPOSED INFANT'),
(273, 1, 1, 'Male', 1.50, '6/2018/20', '', 'MBCP/eMTCT', NULL, 'KABALODI JUSTINE', 'KYOMUHENDO', 'Yes', 'Positive', '2018-07-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '548/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 02:39:03', '2018-08-01 02:39:03', NULL, 'EXPOSED INFANT'),
(274, 1, 1, 'Male', 15.00, '3/2017/002', '', 'MBCP/eMTCT', NULL, 'ARINAITWE AISHA', 'MUGANZI LIANE', 'No', 'Positive', '2018-07-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '550/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 02:40:36', '2018-08-01 02:40:36', NULL, 'EXPOSED INFANT'),
(275, 1, 1, 'Male', 1.50, '6/2018/18', '', 'MBCP/eMTCT', NULL, 'KIHUNDE GRACE', 'BUSINGE IMRAN', 'Yes', 'Positive', '2018-07-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '552/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 02:41:49', '2018-08-01 02:41:49', NULL, 'EXPOSED INFANT'),
(276, 1, 1, 'Male', 1.50, '6/2018/21', '', 'MBCP/eMTCT', NULL, 'KARUNGI BEATRACE', 'KWIKIRIZA REGAN', 'No', 'Positive', '2018-07-31', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '601/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 17:01:24', '2018-08-01 17:01:24', NULL, 'EXPOSED INFANT'),
(277, 1, 1, 'Male', 16.00, '410', '', 'Pediatric Inpatient', NULL, 'KANYIGINYA OLIVA', 'AHEBWA EDRINE', 'No', 'Positive', '2018-07-31', 'R2', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '606/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 17:03:18', '2018-08-01 17:03:18', NULL, 'SEVERE ACUTE MALNUTRITION'),
(278, 1, 1, 'Male', 2.00, '5/2018/37', '', 'MBCP/eMTCT', NULL, 'KATUSABE GORRETI', 'SANYU CHRISTOPHER', 'Yes', 'Positive', '2018-07-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '558/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 17:04:51', '2018-08-01 17:04:51', NULL, 'EXPOSED INFANT'),
(279, 1, 1, 'Male', 1.50, '6/2018/17', '', 'MBCP/eMTCT', NULL, 'AMANYA JOELINE', 'SSEKWEWO  ROBERT', 'Yes', 'Positive', '2018-07-30', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '553/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-01 17:06:19', '2018-08-01 17:06:19', NULL, 'EXPOSED INFANT'),
(280, 1, 1, 'Male', 6.00, '2/2018/29', '', 'MBCP/eMTCT', NULL, 'ROSEMARY KAJUMBA (GRANDMA)', 'YEZEFU  GAMUKAMA', 'No', 'Positive', '2018-07-31', '1st PCR', 'Ngobi Paul', 'Unknown', 'Unknown', 'Unknown', '0000-00-00', '603/07/18', 'No ARVs taken at birth', '', '2018-08-02 00:14:10', '2018-08-02 00:14:10', NULL, 'EXPOSED INFANT'),
(281, 1, 1, 'Male', 1.50, '', '', 'MBCP/eMTCT', NULL, 'KANGIINE JULIET', 'BYAMUKAMA CHARLES', 'Yes', 'Positive', '2018-08-01', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '602/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-02 00:15:45', '2018-08-02 00:15:45', NULL, 'EXPOSED INFANT'),
(282, 1, 1, 'Female', 15.00, '4/2017/007', '', 'MBCP/eMTCT', NULL, 'KOBUSINGE MARGRET', 'KOMUJUNI SUSAN', 'No', 'Positive', '2018-07-31', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '600/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-02 00:17:10', '2018-08-02 00:17:10', NULL, 'EXPOSED INFANT'),
(283, 1, 1, 'Male', 14.50, '5/2017/015', '077431401', 'MBCP/eMTCT', NULL, 'KAGEYA SARAH', 'AKATUHA MOEICIOUS', 'No', 'Positive', '2018-08-15', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '181/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-16 23:06:03', '2018-08-16 23:06:03', NULL, 'EXPOSED INFANT'),
(284, 1, 1, 'Female', 1.50, '6/2018/36', '0774889245', 'MBCP/eMTCT', NULL, 'TUSIIME BEATRICE', 'TUSIIME BEATRICE', 'Yes', 'Positive', '2018-08-15', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '249/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-16 23:08:14', '2018-08-16 23:08:14', NULL, 'EXPOSED INFANT'),
(285, 1, 1, 'Female', 1.50, '7/2018/03', '0781119940', 'MBCP/eMTCT', NULL, 'KABASINGUZI AISHA', 'AINE HASIFA', 'Yes', 'Positive', '2018-08-15', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '247/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-16 23:10:03', '2018-08-16 23:10:03', NULL, 'EXPOSED INFANT'),
(286, 1, 1, 'Male', 9.00, '548', '', 'Pediatric Inpatient', NULL, 'KATO JOHN', 'KATO JOHN', 'Yes', 'Negative', '2018-08-15', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2018-08-13', '233/08/18', 'No ARVs taken at birth', '', '2018-08-16 23:13:05', '2018-08-16 23:13:05', NULL, 'SEVERE ACUTE MALNUTRITION'),
(287, 1, 1, 'Male', 1.50, '7/2018/04', '0754042593', 'MBCP/eMTCT', NULL, 'AINEOMUGISHA GLADYS', 'PRAISE CHARLES', 'Yes', 'Positive', '2018-08-15', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '248/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-16 23:15:06', '2018-08-16 23:15:06', NULL, 'EXPOSED INFANT'),
(288, 1, 1, 'Female', 6.00, '557', '0706426263', 'Pediatric Inpatient', NULL, 'KAMUSANA MARY', 'KANSIIME MOREEN', 'Yes', 'Negative', '2018-08-15', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2018-08-14', '234/08/18', 'No ARVs taken at birth', '', '2018-08-16 23:25:28', '2018-08-16 23:25:28', NULL, 'SEVERE ACUTE MALNUTRITION'),
(289, 1, 1, 'Female', 1.50, '6/2018/35', '0781226917', 'MBCP/eMTCT', NULL, 'NATUKUNDA MELVIN', 'ITUNGO MARTHA ', 'Yes', 'Positive', '2018-08-15', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '230/08/18', 'No ARVs taken at birth', '', '2018-08-16 23:27:47', '2018-08-16 23:27:47', NULL, 'EXPOSED INFANT'),
(290, 1, 1, 'Female', 1.30, '6/2018/34', '0779580221', 'MBCP/eMTCT', NULL, 'TUMUHAIRWE JANE', 'AINEMBABAZI SERIA', 'Yes', 'Positive', '2018-08-15', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '229/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-16 23:31:28', '2018-08-16 23:31:28', NULL, 'EXPOSED INFANT'),
(291, 1, 1, 'Female', 0.50, '552', '', 'Pediatric Inpatient', NULL, 'KICONCO RODAH', 'ASIIMWE MIRACLE', 'No', 'Positive', '2018-08-14', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-08-13', '212/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-16 23:34:11', '2018-08-16 23:34:11', NULL, 'SEVERE ACUTE MALNUTRITION'),
(292, 1, 1, 'Female', 15.00, '4/2017/29', '0788929626', 'MBCP/eMTCT', NULL, 'KOMUHIMBO TOPISTA', 'SAFINA DIANA', 'No', 'Positive', '2018-08-13', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '193/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-16 23:36:25', '2018-08-16 23:36:25', NULL, 'EXPOSED INFANT'),
(293, 1, 1, 'Male', 1.50, '7/2018/002', '0754981546', 'MBCP/eMTCT', NULL, 'NAMAKULA SHIFAH', 'TUMWINE GIFT', 'Yes', 'Positive', '2018-08-13', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '189/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-16 23:38:19', '2018-08-16 23:38:19', NULL, 'EXPOSED INFANT'),
(294, 1, 1, 'Male', 1.30, '6/2018/32', '0771054654', 'MBCP/eMTCT', NULL, 'AHAMBISIBWE PROVIA', 'NAMANYA YOHAN', 'Yes', 'Positive', '2018-08-13', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '190/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-16 23:40:27', '2018-08-16 23:40:27', NULL, 'EXPOSED INFANT'),
(295, 1, 1, 'Male', 1.50, '7/2018/001', '0754626798', 'MBCP/eMTCT', NULL, 'SHUKU ZAM', 'KAWANGUZI SAM', 'Yes', 'Positive', '2018-08-13', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '192/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-16 23:44:08', '2018-08-16 23:44:08', NULL, 'EXPOSED INFANT'),
(296, 1, 1, 'Male', 14.00, '6/2017/37', '0787835413', 'MBCP/eMTCT', NULL, 'NATUKUNDA JULIET', 'MUGISA JONATHAN', 'No', 'Positive', '2018-08-13', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '191/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-16 23:46:05', '2018-08-16 23:46:05', NULL, 'EXPOSED INFANT'),
(297, 1, 1, 'Male', 16.00, '4/2017/019', '0786866823', 'MBCP/eMTCT', NULL, 'KARUNGI ZAINABU', 'MWANGUHYA JAMALDIN', 'No', 'Positive', '2018-08-13', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '187/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-16 23:48:26', '2018-08-16 23:48:26', NULL, 'EXPOSED INFANT'),
(298, 1, 1, 'Male', 16.00, '4/2017/44', '07579118641', 'Outpatient', NULL, 'MBABAZI LUCY', 'TUMUHAIRWE NATHAN', 'No', 'Positive', '2018-08-13', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '195/08/18', 'No ARVs taken at birth', '', '2018-08-16 23:50:26', '2018-08-16 23:50:26', NULL, 'EXPOSED INFANT'),
(299, 1, 1, 'Female', 1.50, '6/2018/31', '0774198849', 'MBCP/eMTCT', NULL, 'MURUNGI IMMACULATE', 'MURUNGI ABIGAIL', 'Yes', 'Positive', '2018-08-13', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '194/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-16 23:52:12', '2018-08-16 23:52:12', NULL, 'EXPOSED INFANT'),
(300, 1, 1, 'Female', 2.50, '6/2018/33', '', 'EPI', NULL, 'KAMARI IRENE', 'KEMIGISA ROSE', 'Yes', 'Positive', '2018-08-13', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '188/08/18', 'UNKNOWN', '', '2018-08-16 23:54:00', '2018-08-16 23:54:00', NULL, 'EXPOSED INFANT'),
(301, 1, 1, 'Female', 3.00, '498', '', 'Pediatric Inpatient', NULL, 'KOMUHENDO GOVIA', 'KEBIRUNGI VIOLET', 'Yes', 'Negative', '2018-08-09', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2018-08-08', '139/08/18', 'NVP for 12 weeks for high risk infants', '', '2018-08-16 23:56:10', '2018-08-16 23:56:10', NULL, 'SEVERE ACUTE MALNUTRITION'),
(302, 1, 1, 'Male', 4.00, '499', '', 'Pediatric Inpatient', NULL, 'ASIIMWE EDITH', 'MWESIGE ELITON', 'Yes', 'Negative', '2018-08-09', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2018-08-08', '138/08/18', 'No ARVs taken at birth', '', '2018-08-16 23:58:24', '2018-08-16 23:58:24', NULL, 'SEVERE ACUTE MALNUTRITION'),
(303, 1, 1, 'Female', 1.00, '515', '0775590048', 'Pediatric Inpatient', NULL, 'KYALISIIMA SCOVIA', 'KYALISIIMA TEDDY', 'Yes', 'Negative', '2018-08-13', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2018-08-09', '179/08/18', 'No ARVs taken at birth', '', '2018-08-17 00:00:13', '2018-08-17 00:00:13', NULL, 'SEVERE ACUTE MALNUTRITION');
INSERT INTO `poc_tables` (`id`, `facility_id`, `district_id`, `gender`, `age`, `exp_no`, `caretaker_number`, `entry_point`, `other_entry_point`, `mother_name`, `infant_name`, `breastfeeding_status`, `mother_hiv_status`, `collection_date`, `pcr_level`, `created_by`, `pmtct_antenatal`, `pmtct_delivery`, `pmtct_postnatal`, `admission_date`, `sample_id`, `infant_pmtctarv`, `mother_pmtctarv`, `created_at`, `updated_at`, `deleted_at`, `provisional_diagnosis`) VALUES
(304, 1, 1, 'Female', 7.00, '539', '0702321999', 'Nutrition', NULL, 'NYAKAISIKI VERONICAH', 'KEMIGISA', 'No', 'Positive', '2018-08-13', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-08-13', '180/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 00:03:51', '2018-08-17 00:03:51', NULL, 'SEVERE ACUTE MALNUTRITION'),
(305, 1, 1, 'Male', 16.00, '528', '', 'Nutrition', NULL, 'NDHOHABWE LOVIN', 'NUWAMANYA BEN', 'No', 'Positive', '2018-08-13', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-08-10', '181/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 00:05:48', '2018-08-17 00:05:48', NULL, 'SEVERE ACUTE MALNUTRITION'),
(306, 1, 1, 'Male', 7.00, '517', '0788134969', 'Nutrition', NULL, 'AYESIGA ', 'MUHASA SADIC', 'No', 'Negative', '2018-08-13', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '178/08/18', 'No ARVs taken at birth', '', '2018-08-17 00:07:42', '2018-08-17 00:07:42', NULL, 'SEVERE ACUTE MALNUTRITION'),
(307, 1, 1, 'Male', 1.50, '6/2018/30', '0785535871', 'MBCP/eMTCT', NULL, 'KABAJUNGU SUSAN', 'TWINEMBABAZI JORDIN', 'Yes', 'Positive', '2018-08-10', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '166/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 00:09:43', '2018-08-17 00:09:43', NULL, 'EXPOSED INFANT'),
(308, 1, 1, 'Female', 14.00, '6/2017/001', '0704074298', 'MBCP/eMTCT', NULL, 'TUHAISE JOSELYN', 'NATASHA ANGELLAH', 'No', 'Positive', '2018-08-08', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '123/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 00:11:34', '2018-08-17 00:11:34', NULL, 'EXPOSED INFANT'),
(309, 1, 1, 'Male', 8.00, '423', '', 'Pediatric Inpatient', NULL, 'KARUNGI HAWA', 'FAHADI KELVIN', 'Yes', 'Positive', '2018-08-08', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '114/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 00:13:36', '2018-08-17 00:13:36', NULL, 'SEVERE ACUTE MALNUTRITION'),
(310, 1, 1, 'Male', 11.00, '111', '', 'Outpatient', NULL, 'MOCOUR HOUR', 'SSENGOBA ALCONIS', 'No', 'Positive', '2018-08-08', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '113/08/18', 'No ARVs taken at birth', '', '2018-08-17 00:15:39', '2018-08-17 00:15:39', NULL, 'EXPOSED INFANT'),
(311, 1, 1, 'Male', 1.50, '6/2018/28', '0702230724', 'MBCP/eMTCT', NULL, 'CLARE TARAPPKWE', 'KUSEMERERWA SURPRISE', 'Yes', 'Positive', '2018-08-06', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '075/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 00:18:17', '2018-08-17 00:18:17', NULL, 'EXPOSED INFANT'),
(312, 1, 1, 'Female', 7.00, '441', '', 'Nutrition', NULL, 'NYANGOMA  MOREEN', 'KUNIHIRA CATHERINE', 'No', 'Negative', '2018-08-06', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '046/08/18', 'No ARVs taken at birth', '', '2018-08-17 16:22:21', '2018-08-17 16:22:21', NULL, 'SEVERE ACUTE MALNUTRITION'),
(313, 1, 1, 'Female', 1.00, '483', '', 'Pediatric Inpatient', NULL, 'KENGOZI FELISTER', 'AGONZIBWE RINNET', 'Yes', 'Positive', '2018-08-07', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '100/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 16:24:19', '2018-08-17 16:24:19', NULL, 'SEVERE ACUTE MALNUTRITION'),
(314, 1, 1, 'Male', 14.00, '6/2017/31', '', 'MBCP/eMTCT', NULL, 'KARUNGI MARY', 'NYAKAHUMA DELAN', 'No', 'Positive', '2018-08-07', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '103/08/18', '', '', '2018-08-17 16:24:20', '2018-08-17 16:26:22', NULL, 'EXPOSED INFANT'),
(315, 1, 1, 'Male', 15.00, '5/2017/001', '0784023883', 'MBCP/eMTCT', NULL, 'KABAGUMYA CAROLYNE', 'ISINGOMA STEVEN', 'No', 'Positive', '2018-08-07', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '104/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 16:28:42', '2018-08-17 16:28:42', NULL, 'HIV EXPOSED INFANT'),
(316, 1, 1, 'Female', 1.50, '6/2018/29', '', 'MBCP/eMTCT', NULL, 'BASEMERA ROSE', 'KAHUNDE ESTHER', 'Yes', 'Positive', '2018-08-06', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '74/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 16:30:21', '2018-08-17 16:30:21', NULL, 'HIV EXPOSED INFANT'),
(317, 1, 1, 'Male', 1.50, '6/2018/26', '0776232022', 'MBCP/eMTCT', NULL, 'MBABAZI CHRISTINE', 'MUGISA DERISA', 'Yes', 'Positive', '2018-08-06', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '78/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 16:32:51', '2018-08-17 16:32:51', NULL, 'HIV EXPOSED INFANT'),
(318, 1, 1, 'Male', 1.50, '6/2018/27', '', 'MBCP/eMTCT', NULL, 'KIRUNGI SARAH', 'AHEBWA ROBERT', 'Yes', 'Positive', '2018-08-06', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '77/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 16:35:46', '2018-08-17 16:35:46', NULL, 'HIV EXPOSED INFANT'),
(319, 1, 1, 'Male', 15.00, '5/2017/22', '', 'MBCP/eMTCT', NULL, 'MBABAZI GORRET', 'MUSIMENTA MOSES', 'No', 'Positive', '2018-08-06', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '76/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 16:37:49', '2018-08-17 16:37:49', NULL, 'HIV EXPOSED INFANT'),
(320, 1, 1, 'Female', 6.00, '441', '', 'Nutrition', NULL, 'TUMUHAIRWE SARAH', 'KASEMBO FAVOUR', 'Yes', 'Negative', '2018-08-02', 'R1', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '028/08/18', 'No ARVs taken at birth', '', '2018-08-17 16:39:36', '2018-08-17 16:39:36', NULL, 'SEVERE ACUTE MALNUTRITION'),
(321, 1, 1, 'Female', 1.50, '6/2018/25', '', 'MBCP/eMTCT', NULL, 'TWEHEYO JULIET', 'KABASINGUZI VIVIAN', 'Yes', 'Positive', '2018-08-02', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '22/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 16:41:21', '2018-08-17 16:41:21', NULL, 'HIV EXPOSED INFANT'),
(322, 1, 1, 'Female', 1.50, '6/2018/23', '0783979034', 'MBCP/eMTCT', NULL, 'KEMIGISA SARAH', 'NINSIIMA SYIFER', 'Yes', 'Positive', '2018-08-02', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '24/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 16:43:07', '2018-08-17 16:43:07', NULL, 'HIV EXPOSED INFANT'),
(323, 1, 1, 'Female', 1.50, '6/2018/24', '0773313918', 'MBCP/eMTCT', NULL, 'NELIBE GRACE', 'AINEMBABAZI PRINCESS', 'Yes', 'Positive', '2018-08-02', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '23/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 16:45:52', '2018-08-17 16:45:52', NULL, 'HIV EXPOSED INFANT'),
(324, 1, 1, 'Female', 14.00, '6/2017/11', '0773049622', 'MBCP/eMTCT', NULL, 'KAPASIKA JOSEPHINE', 'KARUNGI GRACE', 'No', 'Positive', '2018-08-01', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '016/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 16:48:13', '2018-08-17 16:48:13', NULL, 'HIV EXPOSED INFANT'),
(325, 1, 1, 'Male', 14.00, '6/2017/18', '0778017106', 'MBCP/eMTCT', NULL, 'KOBUSINGE JANE', 'TUSIIME ARAMANZAN', 'No', 'Positive', '2018-08-01', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '015/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 16:50:08', '2018-08-17 16:50:08', NULL, 'HIV EXPOSED INFANT'),
(326, 1, 1, 'Male', 14.00, '5/2017/16', '0783802396', 'MBCP/eMTCT', NULL, 'UZAMUKUMA AMINA', 'SHEMA KING JOSHUA', 'No', 'Positive', '2018-08-01', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '014/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-08-17 16:52:05', '2018-08-17 16:52:05', NULL, 'HIV EXPOSED INFANT'),
(327, 1, 1, 'Male', 1.50, '7/2018/06', '0779780937', 'MBCP/eMTCT', NULL, 'KAJOINA LUCY', 'MWESIGE ABDRAHIM', 'Yes', 'Positive', '2018-08-16', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '263/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-12 23:52:20', '2018-09-12 23:52:20', NULL, 'EXPOSED INFANT'),
(328, 1, 1, 'Female', 1.50, '7/2018/05', '0780335879', 'MBCP/eMTCT', NULL, 'KIRUNGI AGNES', 'KIRUNGI SHANTEL ', 'Yes', 'Positive', '2018-08-16', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '262/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-12 23:56:53', '2018-09-12 23:56:53', NULL, 'EXPOSED INFANT'),
(329, 1, 1, 'Female', 18.00, '564', '', 'Nutrition', NULL, 'MUGISA HARRIET', 'ASHIMAU  PROMISE', 'No', 'Positive', '2018-08-16', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-08-15', '259/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 00:09:16', '2018-09-13 00:09:16', NULL, 'SEVERE ACUTE MALNUTRITION'),
(330, 1, 1, 'Male', 4.00, '564', '0702354428', 'Pediatric Inpatient', NULL, 'KANGUME AISHA', 'MUHUMUZA  SHAFIC', 'Yes', 'Negative', '2018-08-16', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '254/08/18', 'No ARVs taken at birth', '', '2018-09-13 00:13:31', '2018-09-13 00:13:31', NULL, 'SEVERE ACUTE MALNUTRITION'),
(331, 1, 1, 'Male', 1.70, '6/2018/\'37', '', 'MBCP/eMTCT', NULL, 'KISEMBO CECILIA', 'KASIMWAKA  VICTOR', 'No', 'Positive', '2018-08-16', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '266/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 00:15:37', '2018-09-13 00:15:37', NULL, 'EXPOSED INFANT'),
(332, 1, 1, 'Male', 14.00, '6/2017/013', '0751032823', 'MBCP/eMTCT', NULL, 'BASEMERA ROSETTE', 'MUGANZI ELVIN', 'No', 'Positive', '2018-08-16', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '261/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 00:17:49', '2018-09-13 00:17:49', NULL, 'EXPOSED INFANT'),
(333, 1, 1, 'Male', 1.50, '7/2018/07', '', 'MBCP/eMTCT', NULL, 'KISEMBO DOREEN', 'MUHUMUZA DAVID', 'Yes', 'Positive', '2018-08-16', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '264/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 00:19:35', '2018-09-13 00:19:35', NULL, 'HIV EXPOSED INFANT'),
(334, 1, 1, 'Male', 1.20, '604', '', 'Pediatric Inpatient', NULL, 'KASABILI IRENE', 'TULISINGURA  DAVID', 'No', 'Positive', '2018-08-20', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '290/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 00:22:50', '2018-09-13 00:22:50', NULL, 'SEVERE ACUTE MALNUTRITION'),
(335, 1, 1, 'Female', 6.00, '2/2018/30', '', 'Outpatient', NULL, 'MUSIMENTA RUTH', 'NAMARA CHARITY', 'Yes', 'Positive', '2018-08-17', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '282/08/18', 'No ARVs taken at birth', '', '2018-09-13 00:25:02', '2018-09-13 00:25:02', NULL, 'HIV EXPOSED INFANT'),
(336, 1, 1, 'Male', 9.00, '567', '0784575869', 'Pediatric Inpatient', NULL, 'KIRUNGI MADINAH', 'MURUNGI ABDUL', 'Yes', 'Negative', '2018-08-17', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2018-08-15', '271/08/18', 'No ARVs taken at birth', '', '2018-09-13 00:27:48', '2018-09-13 00:27:48', NULL, 'SEVERE PNEMONIA'),
(337, 1, 1, 'Male', 1.50, '7/2018/08', '', 'MBCP/eMTCT', NULL, 'KARUNGI ANNET', 'MURUNGI PAUL', 'Yes', 'Positive', '2018-08-17', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '265/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 00:29:53', '2018-09-13 00:29:53', NULL, 'HEI'),
(338, 1, 1, 'Female', 14.00, '585', '0783750280', 'Nutrition', NULL, 'N.O.K BIIRA LAULA', 'KYOM,UGISHA QUEEN', 'No', 'Unknown', '2018-08-17', '1st PCR', 'Ngobi Paul', 'Unknown', 'Unknown', 'Unknown', '2018-08-16', '270/08/18', 'No ARVs taken at birth', '', '2018-09-13 00:32:54', '2018-09-13 00:32:54', NULL, 'SEVERE ACUTE PNEMONIA'),
(339, 1, 1, 'Female', 8.00, '604', '', 'Pediatric Inpatient', NULL, 'KAMULI MOREEN', 'KOBUMU MBABAZI', 'Yes', 'Positive', '2018-08-20', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-08-18', '289/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 00:34:54', '2018-09-13 00:34:54', NULL, 'SEVERE ACUTE MALNUTRITION'),
(340, 1, 1, 'Female', 2.00, '617', '07749500221', 'Nutrition', NULL, 'TUMUHAIRWE JANE', 'AINEMBABAZI SAVIA', 'Yes', 'Positive', '2018-08-20', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-08-14', '288/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 00:38:06', '2018-09-13 00:38:06', NULL, 'SEVERE ACUTE MALNUTRITION'),
(341, 1, 1, 'Female', 1.50, '7/2018/13', '0753494778', 'MBCP/eMTCT', NULL, 'BASEMERA GRACE', 'NYANGOMA JUDITH', 'Yes', 'Positive', '2018-08-20', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '301/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 00:40:02', '2018-09-13 00:40:02', NULL, 'HEI'),
(342, 1, 1, 'Female', 6.00, '2/2018/31', '0701329305', 'MBCP/eMTCT', NULL, 'KABAGANDA RESTY', 'KISAKYE HANNAH', 'Yes', 'Positive', '2018-08-20', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '298/08/18', 'NVP for 12 weeks for high risk infants', '', '2018-09-13 00:42:24', '2018-09-13 00:42:24', NULL, 'HEI'),
(343, 1, 1, 'Female', 1.50, '7/2018/10', '0783054718', 'MBCP/eMTCT', NULL, 'MOONLIGHT SCOVIA', 'KOBUSINGE TILLAN', 'Yes', 'Positive', '2018-08-20', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '300/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 00:44:18', '2018-09-13 00:44:18', NULL, 'HEI'),
(344, 1, 1, 'Female', 14.00, '6/2017/017', '', 'MBCP/eMTCT', NULL, 'KABASINGUZI MAGRET', 'KAAHWA  MAGRET', 'No', 'Positive', '2018-08-20', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '299/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 00:45:52', '2018-09-13 00:45:52', NULL, 'HEI'),
(345, 1, 1, 'Male', 1.50, '7/2018/12', '0753494778', 'MBCP/eMTCT', NULL, 'BASEMERA GRACE', 'KATO TADEO', 'Yes', 'Positive', '2018-08-20', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '302/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 00:47:24', '2018-09-13 00:47:24', NULL, 'HEI'),
(346, 1, 1, 'Female', 1.50, '7/2018/11', '077199854', 'MBCP/eMTCT', NULL, 'KEMIGISA BEATRICE', 'KATUSIIME PATRICIA', 'Yes', 'Positive', '2018-08-20', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '296/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 00:48:57', '2018-09-13 00:48:57', NULL, 'HEI'),
(347, 1, 1, 'Male', 1.50, '7/2018/09', '', 'MBCP/eMTCT', NULL, 'KENGONZI ANNET', 'ATUHAIRE  JUNIOR', 'Yes', 'Positive', '2018-08-20', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '297/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 00:52:41', '2018-09-13 00:52:41', NULL, 'HEI'),
(348, 1, 1, 'Male', 16.00, '4/2017/41', '', 'MBCP/eMTCT', NULL, 'KENEEMA GLORIOUS', 'MUSINGUZI RICHARD', 'No', 'Positive', '2018-08-21', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '319/08/18', '', '', '2018-09-13 00:54:52', '2018-09-13 00:58:49', NULL, 'HEI'),
(349, 1, 1, 'Male', 1.50, '7/2018/14', '077887196', 'MBCP/eMTCT', NULL, 'NINSIIMA ALLEN', 'MANIGAMUKAMA  SHARIFA', 'Yes', 'Positive', '2018-08-22', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '353/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:00:46', '2018-09-13 01:00:46', NULL, 'HEI'),
(350, 1, 1, 'Male', 16.00, '4/2017/004', '', 'MBCP/eMTCT', NULL, 'BASEMERA JENIFER', 'MURUNGI JONATHAN', 'No', 'Positive', '2018-08-22', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '334/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:04:17', '2018-09-13 01:04:17', NULL, 'HEI'),
(351, 1, 1, 'Female', 16.00, '812', '', 'Nutrition', NULL, 'NATUKUNDA GRACE', 'NATUKUNDA JULIA', 'No', 'Unknown', '2018-08-30', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '558/08/18', 'No ARVs taken at birth', '', '2018-09-13 01:06:18', '2018-09-13 01:06:18', NULL, 'SAM'),
(352, 1, 1, 'Female', 19.00, '741', '0774193957', 'Pediatric Inpatient', NULL, 'CHEMITAYA ADIGAYA', 'NATUGONZA MERY', 'No', 'Negative', '2018-08-30', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2018-08-29', '559/08/18', 'No ARVs taken at birth', '', '2018-09-13 01:08:42', '2018-09-13 01:08:42', NULL, 'SAM'),
(353, 1, 1, 'Female', 1.50, '7/2018/22', '0784001350', 'MBCP/eMTCT', NULL, 'KAYESU ROSE', 'MARY', 'Yes', 'Positive', '2018-08-28', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '510/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:10:23', '2018-09-13 01:10:23', NULL, 'HEI'),
(354, 1, 1, 'Female', 1.50, '7/2018/19', '', 'MBCP/eMTCT', NULL, 'KOBUSINGE ZAITUNA', 'KOBUSINGE SALMAH', 'Yes', 'Positive', '2018-08-28', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '514/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:12:25', '2018-09-13 01:12:25', NULL, 'HEI'),
(355, 1, 1, 'Female', 1.50, '7/2018/21', '0772976540', 'MBCP/eMTCT', NULL, 'KAMAKUNE SARAH', 'KAMAKUNE SHANITAH', 'Yes', 'Positive', '2018-08-28', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '512/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:14:21', '2018-09-13 01:14:21', NULL, 'HEI'),
(356, 1, 1, 'Female', 11.00, '7/2017/64', '', 'MBCP/eMTCT', NULL, 'NYANGOMA SCOVIA', 'KOBUINGYE GIFT', 'No', 'Positive', '2018-08-23', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '418/08/18', 'No ARVs taken at birth', '', '2018-09-13 01:16:09', '2018-09-13 01:16:09', NULL, 'HEI'),
(357, 1, 1, 'Male', 1.50, '7/2018/22', '', 'MBCP/eMTCT', NULL, 'KABASUMBI ANNET', 'TUSIIME JOSEPH', 'Yes', 'Positive', '2018-08-28', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '511/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:18:14', '2018-09-13 01:18:14', NULL, 'HEI'),
(358, 1, 1, 'Female', 1.50, '7/2018/20', '', 'MBCP/eMTCT', NULL, 'KANSIIME ANNET', 'KOMUHIMBO HADIJAH', 'Yes', 'Positive', '2018-08-29', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '516/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:19:48', '2018-09-13 01:19:48', NULL, 'HEI'),
(359, 1, 1, 'Female', 13.50, '7/2017/08', '', 'MBCP/eMTCT', NULL, 'KANYUNYUZI JENIFER', 'LAILA TRECIA', 'No', 'Positive', '2018-08-28', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '515/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:21:30', '2018-09-13 01:21:30', NULL, 'HEI'),
(360, 1, 1, 'Female', 13.00, '7/2017/16', '0771863551', 'MBCP/eMTCT', NULL, 'KABAHINYA SARAH', 'KENGONZI SUSAN', 'No', 'Positive', '2018-08-28', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '513/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:23:40', '2018-09-13 01:23:40', NULL, 'HEI'),
(361, 1, 1, 'Female', 1.50, '7/2018/18', '0773994114', 'MBCP/eMTCT', NULL, 'KEZABU STELLA', 'KEBIRUNGI JULIET', 'Yes', 'Positive', '2018-08-27', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '468/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:25:34', '2018-09-13 01:25:34', NULL, 'HEI'),
(362, 1, 1, 'Female', 15.00, '5/2017/008', '0785083771', 'MBCP/eMTCT', NULL, 'KEMIGISA PENINAH', 'KAYESU TRACELLA', 'No', 'Positive', '2018-08-27', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '467/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:27:20', '2018-09-13 01:27:20', NULL, 'HEI'),
(363, 1, 1, 'Female', 12.00, '670', '0704070775', 'Pediatric Inpatient', NULL, 'KENEMA TRACY', 'KENEMA ROSE ', 'No', 'Positive', '2018-08-24', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '455/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:29:27', '2018-09-13 01:29:27', NULL, 'SAM'),
(364, 1, 1, 'Female', 9.00, '672', '', 'Nutrition', NULL, 'OWAMANI DIAN', 'IRUMBA SHARON', 'Yes', 'Unknown', '2018-08-24', '1st PCR', 'Ngobi Paul', 'Unknown', 'Unknown', 'Unknown', '2018-08-24', '454/08/18', 'No ARVs taken at birth', '', '2018-09-13 01:34:39', '2018-09-13 01:34:39', NULL, 'SAM'),
(365, 1, 1, 'Female', 6.00, '621', '0777888444', 'Pediatric Inpatient', NULL, 'OWEMBABAZI SHILLAH', 'SARAH VICTORIA', 'Yes', 'Positive', '2018-08-23', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-08-19', '409/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:36:47', '2018-09-13 01:36:47', NULL, 'SAM'),
(366, 1, 1, 'Male', 16.00, '6/2017/12', '0782872821', 'MBCP/eMTCT', NULL, 'KEMBABAZI ROSEMERY', 'ERRON', 'No', 'Positive', '2018-08-23', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '413/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:38:47', '2018-09-13 01:38:47', NULL, 'HEI'),
(367, 1, 1, 'Male', 1.50, '7/2018/17', '0786425283', 'MBCP/eMTCT', NULL, 'NIGHT VIOLET', 'MAGEZI JUSTUS', 'Yes', 'Positive', '2018-08-22', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '416/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:40:39', '2018-09-13 01:40:39', NULL, 'HEI'),
(368, 1, 1, 'Male', 1.50, '7/2018/15', '', 'MBCP/eMTCT', NULL, 'PRAISE CONSTANCE', 'SSESANGA UMAR', 'Yes', 'Positive', '2018-08-23', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '417/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:42:18', '2018-09-13 01:42:18', NULL, 'HEI'),
(369, 1, 1, 'Female', 1.50, '7/2018/16', '0757756681', 'MBCP/eMTCT', NULL, 'KAAHWA SHAMIIM', 'MBABAZI RAHUMA', 'Yes', 'Positive', '2018-08-23', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '415/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:44:09', '2018-09-13 01:44:09', NULL, 'HEI'),
(370, 1, 1, 'Male', 5.00, '3/2018/101', '', 'Outpatient', NULL, 'TUMUHAIRWE AIDAH', 'MUSINGUZI JOHN', 'Yes', 'Positive', '2018-08-23', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '414/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:46:10', '2018-09-13 01:46:10', NULL, 'HEI'),
(371, 1, 1, 'Male', 15.00, '758', '', 'Pediatric Inpatient', NULL, 'KARUNGI STELLA', 'TUMUHAISE PATRICK', 'Yes', 'Negative', '2018-09-03', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2018-09-03', '035/09/18', 'No ARVs taken at birth', '', '2018-09-13 01:48:02', '2018-09-13 01:48:02', NULL, 'SAM'),
(372, 1, 1, 'Male', 9.00, '002', '0785517389', 'Pediatric Inpatient', NULL, 'NANSUBUNGA DOREEN', 'ISINGOMA RICHARD', 'Yes', 'Positive', '2018-09-03', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-09-01', '002/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:50:32', '2018-09-13 01:50:32', NULL, 'SAM'),
(373, 1, 1, 'Male', 9.00, '762', '075517389', 'Pediatric Inpatient', NULL, 'NANSUBUGA DOREEN', 'KATO TIMOTH', 'Yes', 'Positive', '2018-09-03', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-09-01', '003/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:52:24', '2018-09-13 01:52:24', NULL, 'SAM'),
(374, 1, 1, 'Female', 14.00, '6/2017/32', '0772053262', 'MBCP/eMTCT', NULL, 'KOBUSINGE TEDDY', 'KIRUNGI DENISE', 'No', 'Positive', '2018-09-03', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '033/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:53:59', '2018-09-13 01:53:59', NULL, 'HEI'),
(375, 1, 1, 'Male', 1.50, '6/2018/13', '', 'MBCP/eMTCT', NULL, 'KARUNGI JOELINE', 'ISINGOMA CHARLES', 'Yes', 'Positive', '2018-07-26', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '491/07/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:55:51', '2018-09-13 01:55:51', NULL, 'HEI'),
(376, 1, 1, 'Female', 1.50, '7/2018/31', '', 'MBCP/eMTCT', NULL, 'KOBUGABE SARAH', 'NAMBEJA RINNAH', 'Yes', 'Positive', '2018-09-10', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '154/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:57:29', '2018-09-13 01:57:29', NULL, 'HEI'),
(377, 1, 1, 'Female', 14.00, '7/2017/10', '0774739136', 'MBCP/eMTCT', NULL, 'ATUHAIRE ROSE', 'MURUNGI KETRA', 'No', 'Positive', '2018-09-10', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '152/019/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 01:59:12', '2018-09-13 01:59:12', NULL, 'HEI'),
(378, 1, 1, 'Female', 1.50, '7/2018/34', '0783331230', 'MBCP/eMTCT', NULL, 'KEBIRUNGI DOROTHY', 'SHARINA ZARI', 'Yes', 'Positive', '2018-09-10', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '160/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 02:01:02', '2018-09-13 02:01:02', NULL, 'HEI'),
(379, 1, 1, 'Male', 2.00, '7/2018/32', '', 'MBCP/eMTCT', NULL, 'KEMIGISA SYLIVIA', 'KYAMBADE JAMIL', 'No', 'Positive', '2018-09-10', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '155/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 02:02:57', '2018-09-13 02:02:57', NULL, 'HEI'),
(380, 1, 1, 'Female', 14.00, '6/2017/34', '', 'MBCP/eMTCT', NULL, 'NYAKAKE ROSE', 'KARUNGI ELIZABETH', 'No', 'Positive', '2018-09-10', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '153/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 02:04:25', '2018-09-13 02:04:25', NULL, 'HEI'),
(381, 1, 1, 'Female', 14.00, '7/2017/23', '0751531166', 'MBCP/eMTCT', NULL, 'HOPE DOREEN', 'MUSIMENTA SHANITAH', 'Yes', 'Positive', '2018-09-10', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '157/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 02:06:07', '2018-09-13 02:06:07', NULL, 'HEI'),
(382, 1, 1, 'Female', 13.00, '8/2017/19', '0784706934', 'MBCP/eMTCT', NULL, 'AHURA SARAH', 'BASEMERA BRENDAH', 'No', 'Positive', '2018-09-10', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '158/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 02:07:41', '2018-09-13 02:07:41', NULL, 'HEI'),
(383, 1, 1, 'Male', 1.50, '7/2018/33', '0783761693', 'MBCP/eMTCT', NULL, 'KATUSABE SYLIVIA', 'TUSINGWIRE DERICK', 'Yes', 'Positive', '2018-09-10', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '159/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 02:09:18', '2018-09-13 02:09:18', NULL, 'HEI'),
(384, 1, 1, 'Male', 14.00, '6/2017/33', '0777015543', 'MBCP/eMTCT', NULL, 'KUNIHIRA MAJIRI', 'TUMUKUGIZE ISHAMEL', 'No', 'Positive', '2018-09-10', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '156/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 02:11:12', '2018-09-13 02:11:12', NULL, 'HEI'),
(385, 1, 1, 'Male', 2.00, '7/2018/37', '0787296407', 'Outpatient', NULL, 'KASABIITI IREEN', 'TULISINGURA DAVID', 'No', 'Positive', '2018-09-11', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '192/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 02:13:31', '2018-09-13 02:13:31', NULL, 'HEI'),
(386, 1, 1, 'Female', 6.00, '', '', 'Nutrition', NULL, 'NYAKAKU  JOVIA', 'MUSOVI   PATIENCE', 'No', 'Positive', '2018-08-24', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '430/08/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 19:29:31', '2018-09-13 19:29:31', NULL, 'EXPOSED INFANT'),
(387, 1, 1, 'Male', 15.00, '6/2017/19', '', 'MBCP/eMTCT', NULL, 'ALICWAMU  ROSE', 'TUSINGWIRE   INNOCENT', 'No', 'Positive', '2018-09-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '199/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 19:32:43', '2018-09-13 19:32:43', NULL, 'EXPOSED INFANT'),
(388, 1, 1, 'Female', 14.00, '6/2017/27', '0774589054', 'MBCP/eMTCT', NULL, 'ASINGWIRE   ESTHER', 'KOBUSINGE  JOYCE', 'No', 'Positive', '2018-09-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '200/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 19:50:02', '2018-09-13 19:50:02', NULL, ''),
(389, 1, 1, 'Female', 15.00, '5/2017/13', '0789284613', 'MBCP/eMTCT', NULL, 'NAMATA MADINA', 'KEBIRUNGI   FIDAUSI', 'No', 'Positive', '2018-09-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '197/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 19:53:49', '2018-09-13 19:53:49', NULL, ''),
(390, 1, 1, 'Female', 14.00, '7/2017/6', '', 'MBCP/eMTCT', NULL, 'NIGID  JOSEPHINE', 'KOBUSINGE  JACKLYN', 'No', 'Positive', '2018-09-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '198/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 19:58:20', '2018-09-13 19:58:20', NULL, 'EXPOSED INFANT'),
(391, 1, 1, 'Male', 2.50, '7/2018/36', '', 'MBCP/eMTCT', NULL, 'AKAMPA  CATHERINE', 'TALEMWA  JOHN', 'Yes', 'Positive', '2018-09-11', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '193/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 20:03:53', '2018-09-13 20:03:53', NULL, ''),
(392, 1, 1, 'Female', 1.50, '7/2018/35', '', 'MBCP/eMTCT', NULL, 'KAGANZI   FELISTA', 'AG0NZIBWA  RINATE', 'Yes', 'Positive', '2018-09-11', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '194/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 20:06:08', '2018-09-13 20:06:08', NULL, ''),
(393, 1, 1, 'Female', 14.00, '7/2017/32', '0704887165', 'MBCP/eMTCT', NULL, 'KANSIIME ROSE', 'KOBUGABE  ROSE', 'No', 'Positive', '2018-09-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '201/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 20:08:06', '2018-09-13 20:08:06', NULL, 'EXPOSED INFANT'),
(394, 1, 1, 'Male', 15.00, '6/2017/10', '0700737343', 'MBCP/eMTCT', NULL, 'NAMARA   SARAH', 'SCOTI   JASON', 'No', 'Positive', '2018-09-03', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '032/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 20:10:14', '2018-09-13 20:10:14', NULL, 'EXPOSED INFANT'),
(395, 1, 1, 'Male', 14.00, '6/2017/28', '0789727832', 'MBCP/eMTCT', NULL, 'NGONZI    DOREEN', 'TWESIGE  PAUL', 'No', 'Positive', '2018-09-03', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '034/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 20:12:36', '2018-09-13 20:12:36', NULL, 'EXPOSED INFANT'),
(396, 1, 1, 'Female', 9.00, '711', '', 'Pediatric Inpatient', NULL, 'KEMUGISA    ', 'KABASINGUZI   H', 'Yes', 'Unknown', '2018-09-04', '1st PCR', 'Ngobi Paul', 'Unknown', 'Unknown', 'Unknown', '2018-09-02', '052/09/18', 'No ARVs taken at birth', '', '2018-09-13 20:17:37', '2018-09-13 20:17:37', NULL, ''),
(397, 1, 1, 'Male', 20.00, '756', '0773757934', 'Pediatric Inpatient', NULL, 'KUBAGHI E', 'MUHENDO ZEIBU', 'Yes', 'Negative', '2018-09-04', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2018-08-31', '042/09/18', 'NVP for 12 weeks for high risk infants', '', '2018-09-13 20:20:40', '2018-09-13 20:20:40', NULL, 'SAM'),
(398, 1, 1, 'Female', 9.00, '', '0773757934', 'Pediatric Inpatient', NULL, 'MUSUBEDIA   JULIET', 'KISANDE  STELLA', 'Yes', 'Negative', '2018-09-04', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2018-08-31', '043/09/18', 'NVP for 12 weeks for high risk infants', '', '2018-09-13 20:23:25', '2018-09-13 20:23:25', NULL, 'SAM'),
(399, 1, 1, 'Female', 1.50, '7/2018/26', '', 'MBCP/eMTCT', NULL, 'KAJOBE   AISHA', 'KAJOBE  AISHA', 'Yes', 'Positive', '2018-09-04', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '058/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 20:25:12', '2018-09-13 20:25:12', NULL, 'EXPOSED INFANT'),
(400, 1, 1, 'Female', 1.50, '7/2018/25', '0778232006', 'MBCP/eMTCT', NULL, 'KOBUSINGE   GLORIA', 'KIHUNDE   PRETTY', 'Yes', 'Positive', '0000-00-00', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '060/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 20:26:42', '2018-09-13 20:26:42', NULL, 'EXPOSED INFANT'),
(401, 1, 1, 'Male', 1.50, '7/2018/24', '0756753815', 'MBCP/eMTCT', NULL, 'KANGUME  FLORENCE', 'TURYASUNGURA   SIMON', 'Yes', 'Positive', '2018-09-04', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '059/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 20:28:49', '2018-09-13 20:28:49', NULL, 'EXPOSED INFANT'),
(402, 1, 1, 'Male', 14.00, '6/2017/20', '', 'MBCP/eMTCT', NULL, 'KATUSABE  JOY', 'MUKONYEZI  ARON', 'No', 'Positive', '2018-09-04', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '057/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 20:30:30', '2018-09-13 20:30:30', NULL, 'EXPOSED INFANT'),
(403, 1, 1, 'Female', 15.00, '6/2017/14', '', 'MBCP/eMTCT', NULL, 'KATUSABE  CONSOLA', 'ATUGONZA   HILDA', 'No', 'Positive', '2018-09-05', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '088/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 20:32:22', '2018-09-13 20:32:22', NULL, 'EXPOSED INFANT'),
(404, 1, 1, 'Female', 2.00, '7/2018/30', '0775939990', 'MBCP/eMTCT', NULL, 'KANOHIRI   DOREEN', 'KASEMIRE   DOREEN', 'Yes', 'Positive', '2018-09-06', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '107/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 20:34:46', '2018-09-13 20:34:46', NULL, 'EXPOSED INFANT'),
(405, 1, 1, 'Male', 1.50, '7/2018/28', '', 'MBCP/eMTCT', NULL, 'KOBUSINGE  OLIVA', 'AINOMUGISHA   INNOCENT', 'Yes', 'Positive', '2018-09-05', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '090/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 20:37:03', '2018-09-13 20:37:03', NULL, 'EXPOSED INFANT'),
(406, 1, 1, 'Female', 1.20, '7/2018/27', '', 'MBCP/eMTCT', NULL, 'KAYESU  VIOLET', 'ATULINDA ELIZABETH  ', 'Yes', 'Positive', '2018-09-05', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '089/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 20:38:52', '2018-09-13 20:38:52', NULL, 'EXPOSED INFANT'),
(407, 1, 1, 'Male', 13.00, '800', '', 'Pediatric Inpatient', NULL, 'KANSIIME SHIFAH', 'AHAISIBWE  N', 'No', 'Negative', '2018-09-06', '1st PCR', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2018-09-03', '091/09/18', 'NVP for 12 weeks for high risk infants', '', '2018-09-13 21:24:01', '2018-09-13 21:24:01', NULL, ''),
(408, 1, 1, 'Female', 1.50, '7/2018/29', '0787308272', 'MBCP/eMTCT', NULL, 'BIRUNGI LILLIAN', 'KIRUNGI  JANNET', 'Yes', 'Positive', '2018-09-06', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '106/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 21:26:20', '2018-09-13 21:26:20', NULL, 'EXPOSED  INFANT'),
(409, 1, 1, 'Female', 15.00, '6/2017/23', '', 'MBCP/eMTCT', NULL, 'KYALIKUNDA FARIDA', 'KICONCO CHRISTINE', 'No', 'Positive', '2018-09-12', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '224/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 21:28:20', '2018-09-13 21:28:20', NULL, 'EXPOSED INFANT'),
(410, 1, 1, 'Male', 14.00, '7/2017/35', '', 'MBCP/eMTCT', NULL, 'KATUSABE   PRICILLAR', 'KASIGAZI CHRISTOPHER', 'No', 'Positive', '2018-09-12', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '223/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 21:30:33', '2018-09-13 21:30:33', NULL, 'EXPOSED  INFANT'),
(411, 1, 1, 'Female', 14.00, '7/2017/31', '', 'MBCP/eMTCT', NULL, 'KATUSIIME KATE', 'KEMIGABO CATTHERINE', 'No', 'Positive', '2018-09-12', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '221/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 21:32:22', '2018-09-13 21:32:22', NULL, 'EXPOSED INFANT'),
(412, 1, 1, 'Male', 14.00, '7/2017/17', '', 'MBCP/eMTCT', NULL, 'KARUNGI DOREEN', 'MUHUMUZA  IVAN', 'No', 'Positive', '2018-09-12', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '220/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 21:34:16', '2018-09-13 21:34:16', NULL, 'EXPOSED INFANT'),
(413, 1, 1, 'Female', 14.00, '7/2017/002', '', 'MBCP/eMTCT', NULL, 'KAHUNDE   GORRETTI', 'NATUMANYA  MERVELOUS', 'No', 'Positive', '2018-09-12', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '222/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 21:36:26', '2018-09-13 21:36:26', NULL, 'EXPOSE INFANT'),
(414, 1, 1, 'Female', 15.00, '6/2017/008', '', 'MBCP/eMTCT', NULL, 'NEEMA EVE', 'KEBISEMBO   GLORAI', 'No', 'Positive', '2018-09-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '196/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 21:38:34', '2018-09-13 21:38:34', NULL, 'EXPOSED INFANT'),
(415, 1, 1, 'Female', 14.00, '6/2017/16', '0787626402', 'MBCP/eMTCT', NULL, 'TULYESIIMA ANNAMRY', 'ANGELLA   PATIENCE', 'No', 'Positive', '2018-09-11', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '195/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-09-13 21:41:04', '2018-09-13 21:41:04', NULL, 'EXPOSED INFANT'),
(416, 0, 0, 'Male', 1.50, '8/2018/001', '', 'MBCP/eMTCT', '', 'KEBISEMBO JENIFFER', 'MURUNGI MARTIN', 'Yes', 'Positive', '2018-09-17', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '312/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 19:51:15', '2018-12-11 19:51:15', NULL, 'EXPOSED INFANT'),
(417, 0, 0, 'Male', 14.00, '6/2017/28', '', 'MBCP/eMTCT', '', 'NGOZI DOREEN', 'TWESIGE PAUL', 'No', 'Positive', '2018-09-17', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '319/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 20:01:30', '2018-12-11 20:01:30', NULL, 'EXPOSED INFANT'),
(418, 0, 0, 'Female', 14.00, '7/2017/001', '', 'MBCP/eMTCT', '', 'KANGUME SUSAN', 'KUGONZA PATRICIA', 'No', 'Positive', '2018-09-17', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '321/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 20:05:35', '2018-12-11 20:05:35', NULL, 'EXPOSED INFANT'),
(419, 0, 0, 'Male', 13.00, '8/2017/15', '0771833717', 'MBCP/eMTCT', '', 'AMPAIRE JACKLYN', 'BALINDA DANIEL', 'No', 'Positive', '2018-09-17', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '322/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 20:08:27', '2018-12-11 20:08:27', NULL, 'EXPOSED INFANT'),
(420, 0, 0, 'Female', 1.50, '8/2018/004', '', 'MBCP/eMTCT', '', 'MBABAZI GRACE', 'KOMUHENDO RECLINE', 'Yes', 'Positive', '2018-09-17', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '315/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 20:11:34', '2018-12-11 20:11:34', NULL, 'EXPOSED INFANT'),
(421, 0, 0, 'Male', 13.00, '8/2017/002', '', 'MBCP/eMTCT', '', 'ALINAITWE KATE', 'KATUNGI', 'No', 'Positive', '2018-09-17', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '317/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 20:14:16', '2018-12-11 20:14:16', NULL, 'EXPOSED INFANT'),
(422, 0, 0, 'Male', 15.00, '6/2017/10', '', 'MBCP/eMTCT', '', 'NAMARA SARAH', 'SCOTT JASON', 'No', 'Positive', '2018-09-17', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '318/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 20:16:36', '2018-12-11 20:16:36', NULL, 'EXPOSED INFANT'),
(423, 0, 0, 'Male', 6.00, '914', '', 'Pediatric Inpatient', '', 'TUMUHIMBISE SHARON', 'BARUNYAHURE SAMUEL', 'Yes', 'Negative', '2018-09-19', 'R1', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-09-16', '327/09/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-11 20:22:42', '2018-12-11 20:22:42', NULL, ''),
(424, 0, 0, 'Female', 4.00, '828', '0786073442', 'Nutrition', '', 'KEZIA MUHINDO', 'RUKUNZO DAFIN', 'No', 'Unknown', '2018-09-14', '1st PCR', 'A-LIS Admin', 'Unknown', 'Unknown', 'Unknown', '2018-09-06', '263/09/18', 'UNKNOWN', '', '2018-12-11 20:26:08', '2018-12-11 20:26:08', NULL, ''),
(425, 0, 0, 'Male', 4.00, '5/2018/38', '0778415869', 'MBCP/eMTCT', '', 'KABASINGUZI PHIONA', 'TUMUSIINE JONATHAN', 'Yes', 'Positive', '2018-09-14', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '269/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 20:30:35', '2018-12-11 20:30:35', NULL, 'EXPOSED INFANT'),
(426, 0, 0, 'Female', 10.00, '877', '0785317390', 'Nutrition', '', 'KWESIGA MOLLY', 'KIRABO ABIAS', 'Yes', 'Negative', '2018-09-14', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '264/09/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-11 20:34:37', '2018-12-11 20:34:37', NULL, ''),
(427, 0, 0, 'Female', 1.50, '7/2018/39', '0783388758', 'MBCP/eMTCT', '', 'MPANJA CATHERINE', 'ELIMA', 'Yes', 'Positive', '2018-09-13', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '249/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 20:37:49', '2018-12-11 20:37:49', NULL, 'EXPOSED INFANT'),
(428, 0, 0, 'Male', 1.50, '7/2018/38', '', 'MBCP/eMTCT', '', 'KOBUSINGE MARGRET', 'AINEMBABAZI HILLARY', 'Yes', 'Positive', '2018-09-13', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '248/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 20:40:37', '2018-12-11 20:40:37', NULL, 'EXPOSED INFANT'),
(429, 0, 0, 'Female', 2.00, '903', '', 'Pediatric Inpatient', '', 'FIKIRI MARTIN', 'KABUMBA ELIZA', 'Yes', 'Negative', '2018-09-16', 'R1', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-09-14', '311/09/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-11 20:43:27', '2018-12-11 20:43:27', NULL, ''),
(430, 0, 0, 'Female', 14.00, '7/2017/28', '', 'MBCP/eMTCT', '', 'KANSIIME ROSE', 'KARUNGI PHIONA ', 'Yes', 'Positive', '2018-09-17', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '320/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 20:49:20', '2018-12-11 20:49:20', NULL, 'EXPOSED INFANT'),
(431, 0, 0, 'Female', 14.00, '7/2017/004', '', 'MBCP/eMTCT', '', 'NYAKATO ROSE', 'ITUNGO DEBORAH', 'No', 'Positive', '2018-09-27', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '323/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 20:54:36', '2018-12-11 20:54:36', NULL, 'EXPOSED INFANT'),
(432, 0, 0, 'Female', 1.50, '8/2018/10', '0775831583', 'MBCP/eMTCT', '', 'BABIHA ROSSETTE', 'KAMSIINE FLAVIA', 'Yes', 'Positive', '2018-09-27', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '552/9/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 21:01:36', '2018-12-11 21:01:36', NULL, 'EXPOSED INFANT'),
(433, 0, 0, 'Female', 1.50, '8/2018/12', '', 'MBCP/eMTCT', '', 'KOMURUBUGO EDITH', 'NAMUJU DEBORAH', 'Yes', 'Positive', '2018-09-18', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '554/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 21:05:34', '2018-12-11 21:05:34', NULL, 'EXPOSED INFANT'),
(434, 0, 0, 'Male', 1.50, '8/2018/11', '', 'MBCP/eMTCT', '', 'KIRUNGI CHRISTINE', 'TUHAISE PATRICK', 'Yes', 'Positive', '2018-09-27', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '553/9/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 21:08:43', '2018-12-11 21:08:43', NULL, 'EXPOSED INFANT'),
(435, 0, 0, 'Female', 13.00, '8/2017/22', '', 'MBCP/eMTCT', '', 'KAMUHENDO ESTHER', 'KATUSIIME HILDA', 'No', 'Positive', '2018-09-25', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '507/9/18', 'UNKNOWN', '', '2018-12-11 21:11:58', '2018-12-11 21:11:58', NULL, 'EXPOSED INFANT'),
(436, 0, 0, 'Male', 14.00, '7/2017/24', '0776050348', 'MBCP/eMTCT', '', 'NANKINGA A', 'TUMUHIRWE FELIX', 'No', 'Positive', '2018-09-25', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '508/9/18', 'UNKNOWN', '', '2018-12-11 21:15:31', '2018-12-11 21:15:31', NULL, 'EXPOSED INFANT'),
(437, 0, 0, 'Male', 14.00, '7/2017/30', '', 'MBCP/eMTCT', '', 'KANSIIME MARGRET', 'MAKUTE BERNALD', 'No', 'Positive', '2018-10-08', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '89/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 21:20:36', '2018-12-11 21:20:36', NULL, 'EXPOSED INFANT'),
(438, 0, 0, 'Male', 1.50, '8/2018/22', '', 'MBCP/eMTCT', '', 'MATAAMA FLORENCE', 'KAAHWA', 'Yes', 'Positive', '2018-10-08', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '92/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 21:27:47', '2018-12-11 21:27:47', NULL, 'EXPOSED INFANT'),
(439, 0, 0, 'Female', 1.50, '8/2018/23', '', 'MBCP/eMTCT', '', 'KABALODI OLINE', 'AMORO PRECIOUS', 'Yes', 'Positive', '2018-10-08', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '91/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 21:31:55', '2018-12-11 21:31:55', NULL, 'EXPOSED INFANT'),
(440, 0, 0, 'Female', 1.50, '8/2018/24', '', 'MBCP/eMTCT', '', 'KABALODI OLIVA', 'KAMUHIMBO SYLVIA', 'Yes', 'Positive', '2018-10-08', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '88/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 21:35:26', '2018-12-11 21:35:26', NULL, 'EXPOSED INFANT'),
(441, 0, 0, 'Male', 1.50, '8/2018/17', '', 'MBCP/eMTCT', '', 'NAMUSOOKE ANNET', 'TUSIIME EDWARD', 'Yes', 'Positive', '2018-10-02', '2nd PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '32/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 21:38:30', '2018-12-11 21:38:30', NULL, 'EXPOSED INFANT'),
(442, 0, 0, 'Female', 2.00, '7/2017/10', '', 'Young Child Clinic', '', 'UNKOWN', 'KOBUSINGE JACKIE', 'Yes', 'Positive', '2018-10-02', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '33/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 22:25:05', '2018-12-11 22:25:05', NULL, 'EXPOSED INFANT'),
(443, 0, 0, 'Male', 1.50, '8/2018/15', '', 'MBCP/eMTCT', '', 'KEMIGISA HANA', 'TADPO DERRICK', 'Yes', 'Positive', '2018-10-02', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '30/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 22:28:57', '2018-12-11 22:28:57', NULL, 'EXPOSED INFANT'),
(444, 0, 0, 'Female', 14.00, '7/2017/38', '', 'MBCP/eMTCT', '', 'NYANGIRWE PATIENCE', 'KIRABO EMILY', 'No', 'Positive', '2018-10-02', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '29/1018', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 22:34:12', '2018-12-11 22:34:12', NULL, 'EXPOSED INFANT'),
(445, 0, 0, 'Female', 14.50, '7/2017/003', '', 'MBCP/eMTCT', '', 'KABAHUMUZA STELLA', 'KANYUNYUZI', 'No', 'Positive', '2018-10-03', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '51/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 22:37:04', '2018-12-11 22:37:04', NULL, 'EXPOSED INFANT'),
(446, 0, 0, 'Male', 14.00, '8/2017/24', '', 'MBCP/eMTCT', '', 'KOMUHENDO ROSE', 'MUHUMUZA FRAY', 'No', 'Positive', '2018-10-03', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '53/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 22:44:17', '2018-12-11 22:44:17', NULL, 'EXPOSED INFANT'),
(447, 0, 0, 'Female', 2.00, '43/10/18', '0786741861', 'Pediatric Inpatient', '', 'KEMBABAZI DINAH', 'KANGWIRE JULIET', 'Yes', 'Negative', '2018-10-03', 'R1', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-10-02', '43/10/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-11 22:47:49', '2018-12-11 22:47:49', NULL, ''),
(448, 0, 0, 'Female', 3.00, '1078', '', 'Pediatric Inpatient', '', 'KOBOHO ', 'MUHINDO BARBRA', 'Yes', 'Negative', '2018-10-03', 'R1', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '44/10/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-11 22:56:19', '2018-12-11 22:56:19', NULL, ''),
(449, 0, 0, 'Male', 13.00, '8/2017/25', '', 'MBCP/eMTCT', '', 'KABARANGIRA MEBLE', 'MUSIMENTA KATO', 'No', 'Positive', '2018-10-02', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '034/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 23:08:08', '2018-12-11 23:08:08', NULL, 'EXPOSED INFANT');
INSERT INTO `poc_tables` (`id`, `facility_id`, `district_id`, `gender`, `age`, `exp_no`, `caretaker_number`, `entry_point`, `other_entry_point`, `mother_name`, `infant_name`, `breastfeeding_status`, `mother_hiv_status`, `collection_date`, `pcr_level`, `created_by`, `pmtct_antenatal`, `pmtct_delivery`, `pmtct_postnatal`, `admission_date`, `sample_id`, `infant_pmtctarv`, `mother_pmtctarv`, `created_at`, `updated_at`, `deleted_at`, `provisional_diagnosis`) VALUES
(450, 0, 0, 'Male', 1.50, '8/2018/16', '', 'MBCP/eMTCT', '', 'KOMUHANGI MARGRET', 'ALINDA PAUL', 'Yes', 'Positive', '2018-10-02', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '31/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 23:11:43', '2018-12-11 23:11:43', NULL, 'EXPOSED INFANT'),
(451, 0, 0, 'Male', 1.50, '8/2018/19', '', 'MBCP/eMTCT', '', 'BIIRA JACLINE', 'MUSABE OMA', 'Yes', 'Positive', '2018-10-04', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '72/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 23:15:48', '2018-12-11 23:15:48', NULL, 'EXPOSED INFANT'),
(452, 0, 0, 'Female', 1.50, '8/2018/20', '', 'MBCP/eMTCT', '', 'KATWESIGE MOLLY', 'NINSIIMA JENIFFER', 'Yes', 'Negative', '2018-10-04', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '71/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 23:21:34', '2018-12-11 23:21:34', NULL, 'EXPOSED INFANT'),
(453, 0, 0, 'Male', 14.00, '7/2017/009', '', 'MBCP/eMTCT', '', 'TIBOKANYA EVANS', 'ALIJUNO DANIEL', 'No', 'Negative', '2018-10-04', '2nd PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '73/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 23:27:03', '2018-12-11 23:27:03', NULL, 'EXPOSED INFANT'),
(454, 0, 0, 'Male', 15.00, '6/2017/25', '', 'MBCP/eMTCT', '', 'KABAHUMUZA TEOPISTA', 'TUMWESIGE BRIGHT', 'No', 'Positive', '2018-10-03', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '50/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 23:31:20', '2018-12-11 23:31:20', NULL, 'EXPOSED INFANT'),
(455, 0, 0, 'Male', 13.00, '8/2017/29', '', 'MBCP/eMTCT', '', 'ALINITWE HOPE', 'MUGISHA ANTHONY', 'No', 'Positive', '2018-10-03', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '49/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-11 23:39:34', '2018-12-11 23:39:34', NULL, 'EXPOSED INFANT'),
(456, 0, 0, 'Female', 18.00, '1039', '', 'Nutrition', '', 'RAHABU MUHAWE', 'KETRA SHARON', 'No', 'Unknown', '2018-10-04', 'R1', 'A-LIS Admin', 'Unknown', 'Unknown', 'Unknown', '2018-09-28', '66/10/18', 'No ARVs taken at birth', '', '2018-12-12 17:43:29', '2018-12-12 17:43:29', NULL, ''),
(457, 0, 0, 'Female', 14.00, '7/2017/18', '', 'MBCP/eMTCT', '', 'KARUNGI BEATRICE', 'KARUNGI SARAH', 'No', 'Positive', '2018-10-03', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '54/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 17:46:59', '2018-12-12 17:46:59', NULL, 'EXPOSED INFANT'),
(458, 0, 0, 'Male', 1.50, '8/2018/18', '', 'MBCP/eMTCT', '', 'ALINITWE HOPE', 'MUGISHA TIMOTHY', 'Yes', 'Positive', '2018-10-03', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '55/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 17:50:36', '2018-12-12 17:50:36', NULL, 'EXPOSED INFANT'),
(459, 0, 0, 'Male', 11.00, '10/2017/75', '', 'MBCP/eMTCT', '', 'BIRUNGI HARRIET', 'MUSINGUZI JULIUS', 'No', 'Positive', '2018-10-03', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '48/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 18:00:30', '2018-12-12 18:00:30', NULL, 'EXPOSED INFANT'),
(460, 0, 0, 'Male', 1.50, '8/2018/13', '0771287987', 'MBCP/eMTCT', '', 'KANYIGANYA JUDITH', 'JEMBA NICOLOUS', 'Yes', 'Positive', '2018-10-01', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '17/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 18:04:02', '2018-12-12 18:04:02', NULL, 'EXPOSED INFANT'),
(461, 0, 0, 'Female', 14.00, '7/2017/27', '', 'MBCP/eMTCT', '', 'UNKOWN', 'NAKAIZI SAFINA ', 'No', 'Positive', '2018-10-01', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '15/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 18:09:44', '2018-12-12 18:09:44', NULL, 'EXPOSED INFANT'),
(462, 0, 0, 'Female', 3.00, '6/2018/38', '', 'MBCP/eMTCT', '', 'KEMIGISA GRACE', 'KOBUSINGE DAPHINE', 'Yes', 'Positive', '2018-10-01', 'R1', 'A-LIS Admin', 'Unknown', 'Unknown', 'Unknown', '0000-00-00', '10/10/18', 'UNKNOWN', '', '2018-12-12 18:14:39', '2018-12-12 18:14:39', NULL, 'EXPOSED INFANT'),
(463, 0, 0, 'Male', 14.00, '7/2017/29', '0785559710', 'MBCP/eMTCT', '', 'KABAHUMA DOREEN', 'ATUGONZA JAFESI', 'No', 'Positive', '2018-10-01', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '20/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 18:21:47', '2018-12-12 18:21:47', NULL, 'EXPOSED INFANT'),
(464, 0, 0, 'Male', 1.50, '08/2018/14', '0786003560', 'MBCP/eMTCT', '', 'KANYIGINYA PRISCILLAH', 'MWANGUHYA JONAN', 'Yes', 'Positive', '2018-10-01', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '21/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 18:30:04', '2018-12-12 18:30:04', NULL, 'EXPOSED INFANT'),
(465, 0, 0, 'Female', 1.40, '7/2018/002', '0786767415', 'MBCP/eMTCT', '', 'KANYINYUZI PENINAH', 'BASEMERA IRENE', 'No', 'Positive', '2018-10-01', 'R2', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '016/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 18:34:40', '2018-12-12 18:34:40', NULL, 'EXPOSED INFANT'),
(466, 0, 0, 'Male', 13.00, '08//2017/27', '', 'MBCP/eMTCT', '', 'KENEEMA GRACE', 'NANDYA ZUBAIRI', 'No', 'Positive', '2018-10-01', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '19/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 18:38:52', '2018-12-12 18:38:52', NULL, 'EXPOSED INFANT'),
(467, 0, 0, 'Male', 2.00, '1002', '', 'Pediatric Inpatient', '', 'KIIZA ANGELLA', 'BYARUHANGA RONALD', 'Yes', 'Negative', '2018-09-26', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-09-25', '573/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 18:45:07', '2018-12-12 18:45:07', NULL, ''),
(468, 0, 0, 'Female', 17.00, '994', '', 'Nutrition', '', 'MBAMBU JANE', 'BIIRA SHAKIRA', 'Yes', 'Negative', '2018-09-26', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-09-24', '518/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 18:50:14', '2018-12-12 18:50:14', NULL, ''),
(469, 0, 0, 'Female', 7.00, '', '', 'Pediatric Inpatient', '', 'KYOMUGISA GORRET', 'ATUHAIRE CAROLINE', 'Yes', 'Negative', '2018-09-25', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-09-24', '528', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 18:54:10', '2018-12-12 18:54:10', NULL, ''),
(470, 0, 0, 'Female', 1.00, '1011', '0780785262', 'Pediatric Inpatient', '', 'KOBUSINGE IMMACULATE', 'KATUSIIME LINDA', 'Yes', 'Positive', '2018-09-28', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-09-27', '572/9/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 18:59:48', '2018-12-12 18:59:48', NULL, ''),
(471, 0, 0, 'Male', 17.00, '4/2017/45', '', 'Pediatric Inpatient', '', 'KABAHUMUZA EUNICE', 'MARVIN PATRICK', 'No', 'Positive', '2018-09-25', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '506/9/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:04:18', '2018-12-12 19:04:18', NULL, 'EXPOSED INFANT'),
(472, 0, 0, 'Female', 18.00, '974', '', 'Nutrition', '', 'UNKOWN', 'KYOMUKAMA RACHEAL', 'No', 'Unknown', '2018-09-24', '1st PCR', 'A-LIS Admin', 'Unknown', 'Unknown', 'Unknown', '2018-09-24', '503/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:09:13', '2018-12-12 19:09:13', NULL, ''),
(473, 0, 0, 'Female', 17.00, '979', '', 'Nutrition', '', 'KEMBABAZI REGINA', 'NYAKATO PROSSY', 'No', 'Negative', '2018-09-24', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-09-24', '504/09/2018', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:14:06', '2018-12-12 19:14:06', NULL, ''),
(474, 0, 0, 'Male', 4.00, '977', '0781072058', 'Pediatric Inpatient', '', 'ATWONGIRE OREBU', 'TUKAMUSHABA  ONESMUS', 'Yes', 'Negative', '2018-09-25', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-09-24', '504/09/2018', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:20:03', '2018-12-12 19:20:03', NULL, ''),
(475, 0, 0, 'Female', 13.00, '8/2017/16', '', 'MBCP/eMTCT', '', 'NAKanjako edith', 'KOMUJUNI PRECIOUS', 'No', 'Positive', '2018-09-24', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '464/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:25:01', '2018-12-12 19:25:01', NULL, 'EXPOSED INFANT'),
(476, 0, 0, 'Female', 15.00, '8/2018/008', '', 'MBCP/eMTCT', '', 'kansiime joyce', 'moreen ', 'Yes', 'Positive', '2018-09-24', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '465/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:29:57', '2018-12-12 19:29:57', NULL, 'EXPOSED INFANT'),
(477, 0, 0, 'Male', 1.50, '8/2018/009', '0756324985', 'MBCP/eMTCT', '', 'KUKUNDAKWE DORCUS', 'AINEBYONA JOAB', 'Yes', 'Positive', '2018-09-24', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '470/2018/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:42:11', '2018-12-12 19:42:11', NULL, 'EXPOSED INFANT'),
(478, 0, 0, 'Female', 13.00, '7/2017/33', '', 'MBCP/eMTCT', '', 'KOMUHENDO AMINA', 'IRUNBA RODGER', 'No', 'Positive', '2018-09-20', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '403/9/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:46:41', '2018-12-12 19:46:41', NULL, 'EXPOSED INFANT'),
(479, 0, 0, 'Male', 9.00, '12/2017/13', '', 'MBCP/eMTCT', '', 'KOBUSINGE MARY', 'AMPAIRE ELISHA', 'No', 'Positive', '2018-09-20', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '402/09/2018', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:49:59', '2018-12-12 19:49:59', NULL, 'EXPOSED INFANT'),
(480, 0, 0, 'Female', 1.50, '8/2018/7', '', 'MBCP/eMTCT', '', 'KEMIGISA ROSE', 'KYAKYO MARY', 'No', 'Positive', '2018-09-20', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '404/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:56:49', '2018-12-12 19:56:49', NULL, 'EXPOSED INFANT'),
(481, 0, 0, 'Female', 16.00, '4/2017/42', '0787808259', 'MBCP/eMTCT', '', 'KANGUME LEILAH', 'BAGONZA JOHN', 'No', 'Positive', '2018-09-19', '2nd PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '390/9/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:04:03', '2018-12-12 20:04:03', NULL, 'EXPOSED INFANT'),
(482, 0, 0, 'Male', 1.50, '8/2018/006', '', 'MBCP/eMTCT', '', 'KENGONZI SARAH', 'AYEBALE', 'Yes', 'Positive', '2018-09-18', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '371/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:08:29', '2018-12-12 20:08:29', NULL, 'EXPOSED INFANT'),
(483, 0, 0, 'Female', 1.50, '8/2018/005', '', 'MBCP/eMTCT', '', 'KOBUSINGE MONICA', 'NAMANYA GLORIA', 'Yes', 'Positive', '2018-09-17', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '316/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:14:12', '2018-12-12 20:14:12', NULL, 'EXPOSED INFANT'),
(484, 0, 0, 'Male', 1.50, '8/2018/003', '0756941857', 'MBCP/eMTCT', '', 'KOMUHENDO SLYVIA', 'MARK', 'Yes', 'Positive', '2018-09-17', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '314/09/2018', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:18:27', '2018-12-12 20:18:27', NULL, 'EXPOSED INFANT'),
(485, 0, 0, 'Female', 1.60, '9/2018/21', '', 'MBCP/eMTCT', '', 'TUMUSIIME TEDDY', 'NANYENDA BARBRA', 'Yes', 'Positive', '2018-11-08', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '256/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:27:37', '2018-12-12 20:27:37', NULL, 'EXPOSED INFANT'),
(486, 0, 0, 'Male', 9.00, '1/2018/75', '0785398098', 'MBCP/eMTCT', '', 'KARUNGI PROSSY', 'ASOBORA JOSHUA', 'Yes', 'Positive', '2018-11-08', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '257/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:34:08', '2018-12-12 20:34:08', NULL, 'EXPOSED INFANT'),
(487, 0, 0, 'Female', 17.00, '6/2017/40', '', 'Other', 'MBCP', 'NYAKATO SLYVIA', 'KEBIRUNGI PATRICIA', 'No', 'Positive', '2018-11-07', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '255/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:38:13', '2018-12-12 20:38:13', NULL, 'EXPOSED INFANT'),
(488, 0, 0, 'Male', 14.00, '9/2017/38', '', 'MBCP/eMTCT', '', 'NYAKATO MOREEN', 'TWIKIRIZE BENON', 'No', 'Positive', '2018-11-07', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '255/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:41:25', '2018-12-12 20:41:25', NULL, 'EXPOSED INFANT'),
(489, 0, 0, 'Male', 1.50, '8/2017/005', '', 'MBCP/eMTCT', '', 'BIRUNGI IREEN', 'AYESIGA ELLIOT PIOUS', 'No', 'Positive', '2018-11-07', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '226/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:45:09', '2018-12-12 20:45:09', NULL, 'EXPOSED INFANT'),
(490, 0, 0, 'Female', 16.00, '7/2017/20', '0774953233', 'MBCP/eMTCT', '', 'NAMUTEBI SANYU', 'KIRABO SARAH', 'No', 'Positive', '2018-11-07', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '224/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:49:13', '2018-12-12 20:49:13', NULL, 'EXPOSED INFANT'),
(491, 0, 0, 'Female', 9.00, '2/2018/28', '', 'MBCP/eMTCT', '', 'KAHUNDE ANITA', 'KAHUNDE PRECIOUS', 'Yes', 'Positive', '2018-11-07', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '227/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:52:34', '2018-12-12 20:52:34', NULL, 'EXPOSED INFANT'),
(492, 0, 0, 'Male', 5.00, '1280', '0784937956', 'Pediatric Inpatient', '', 'KANSIIME MARY', 'TALEMWA DAVID', 'Yes', 'Negative', '2018-11-06', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '153/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:57:13', '2018-12-12 20:57:13', NULL, 'SEVERE PNEMONIA'),
(493, 0, 0, 'Male', 1.00, '10/2018/01', '', 'MBCP/eMTCT', '', 'KOBUSINGE GRACE', 'AKUGIZIBWE MICHEAL', 'Yes', 'Positive', '2018-11-06', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '196/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:03:49', '2018-12-12 21:03:49', NULL, 'EXPOSED INFANT'),
(494, 0, 0, 'Female', 15.00, '7/2017/13', '0779643962', 'MBCP/eMTCT', '', 'KATUSIIME MONICA', 'KENYANGE TRECIA', 'No', 'Positive', '2018-11-06', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '203/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:08:22', '2018-12-12 21:08:22', NULL, 'EXPOSED INFANT'),
(495, 0, 0, 'Female', 1.50, '9/2018/20', '', 'MBCP/eMTCT', '', 'KYOMUHENDO IRYN', 'OWIMANA PATIENCE', 'Yes', 'Positive', '2018-11-06', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '194/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:13:53', '2018-12-12 21:13:53', NULL, 'EXPOSED INFANT'),
(496, 0, 0, 'Male', 16.00, '7/2017/13', '', 'MBCP/eMTCT', '', 'KANYINYUZI CATHERINE', 'MUGISA MORIS', 'No', 'Positive', '2018-11-06', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '202/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:17:12', '2018-12-12 21:17:12', NULL, 'EXPOSED INFANT'),
(497, 0, 0, 'Female', 14.00, '8/2017/33', '', 'MBCP/eMTCT', '', 'KANGUME GORRET', 'AHURA CATHERINE', 'No', 'Positive', '2018-11-06', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '200/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:19:52', '2018-12-12 21:19:52', NULL, 'EXPOSED INFANT'),
(498, 0, 0, 'Male', 9.00, '1/2018/70', '', 'MBCP/eMTCT', '', 'kajoina gladys', 'agondeze tom', 'Yes', 'Positive', '2018-11-05', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '098/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 22:50:54', '2018-12-12 22:50:54', NULL, 'exposed infant'),
(499, 0, 0, 'Female', 8.00, '3/2018/97', '', 'MBCP/eMTCT', '', 'kobusinge olivia', 'kansiime', 'Yes', 'Positive', '2018-11-06', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '195/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 22:55:32', '2018-12-12 22:55:32', NULL, 'exposed infant'),
(500, 0, 0, 'Male', 7.00, '1385/18', '', 'Pediatric Inpatient', '', 'kabasinguzi grace', 'tuhumwire grace', 'Yes', 'Negative', '2018-11-06', '2nd PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '150/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:00:59', '2018-12-12 23:00:59', NULL, 'exposed infant'),
(501, 0, 0, 'Female', 11.00, '1350', '0773191232', 'Pediatric Inpatient', '', 'kenganzi scovia', 'ayebale susan', 'Yes', 'Negative', '2018-11-06', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '152/11/2018', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:05:07', '2018-12-12 23:05:07', NULL, 'exposed infant'),
(502, 0, 0, 'Female', 9.00, '1/2018/63', '', 'MBCP/eMTCT', '', 'katusaabe beatrice', 'namara joselyn', 'Yes', 'Positive', '2018-11-06', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '198/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:09:18', '2018-12-12 23:09:18', NULL, 'exposed infant'),
(503, 0, 0, 'Female', 14.00, '8/2017/001', '', 'MBCP/eMTCT', '', 'kemigisa mary', 'ategeka', 'No', 'Positive', '2018-11-06', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '201/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:13:49', '2018-12-12 23:13:49', NULL, 'exposed infant'),
(504, 0, 0, 'Female', 18.00, '4/2017/026', '', 'MBCP/eMTCT', '', 'kunihira zamlet', 'ajuna margret', 'No', 'Positive', '2018-11-06', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '204/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:18:28', '2018-12-12 23:18:28', NULL, 'exposed infant'),
(505, 0, 0, 'Male', 17.00, '6/2017/10', '0775328196', 'MBCP/eMTCT', '', 'kabaramagi evelyn', 'ayesiga shama', 'No', 'Positive', '0000-00-00', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '197/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:23:21', '2018-12-12 23:23:21', NULL, 'exposed infant'),
(506, 0, 0, 'Female', 11.00, '12/2017/002', '', 'MBCP/eMTCT', '', 'kebirungi rose', 'ninsiima patience', 'No', 'Positive', '2018-11-06', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '199/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:27:57', '2018-12-12 23:27:57', NULL, 'exposed infant'),
(507, 0, 0, 'Male', 13.00, '9/2017/51', '', 'MBCP/eMTCT', '', 'komuhendo priscillah', 'kugonza sudati', 'No', 'Positive', '2018-11-05', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '080/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:32:19', '2018-12-12 23:32:19', NULL, 'exposed infant'),
(508, 0, 0, 'Female', 9.00, '1/2018/83', '', 'MBCP/eMTCT', '', 'bazarra yosinta', 'kasembo joan', 'Yes', 'Positive', '2018-11-05', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '083/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:36:33', '2018-12-12 23:36:33', NULL, 'exposed infant'),
(509, 0, 0, 'Male', 1.00, '9/2018/17', '', 'MBCP/eMTCT', '', 'komugisa immaculate', 'sembajja imran sharif', 'Yes', 'Positive', '2018-11-05', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '089/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:41:12', '2018-12-12 23:41:12', NULL, 'exposed infant'),
(510, 0, 0, 'Female', 1.50, '9/2018/19', '0773354860', 'MBCP/eMTCT', '', 'kobusinge florence', 'mwesigwa mary', 'Yes', 'Positive', '2018-11-05', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '091/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:45:24', '2018-12-12 23:45:24', NULL, 'exposed infant'),
(511, 0, 0, 'Female', 9.00, '2/2018/005', '', 'MBCP/eMTCT', '', 'kyomuhangi annet', 'kahuga patricia', 'Yes', 'Positive', '2018-11-05', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '095/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:48:51', '2018-12-12 23:48:51', NULL, 'exposed infant'),
(512, 0, 0, 'Female', 9.00, '2/2108/17', '', 'MBCP/eMTCT', '', 'kajiona ziyada', 'isaac', 'No', 'Positive', '2018-11-05', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '096/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:52:12', '2018-12-12 23:52:12', NULL, 'exposed infant'),
(513, 0, 0, 'Female', 4.00, '1334', '', 'MBCP/eMTCT', '', 'rofina ihungu', 'bambu scovia', 'Yes', 'Negative', '2018-11-05', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '054/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:59:31', '2018-12-12 23:59:31', NULL, 'severe pneumonia'),
(514, 0, 0, 'Female', 5.00, '1340', '0785478053', 'Pediatric Inpatient', '', 'unkwown', 'shukran abubaka', 'Yes', 'Negative', '2018-11-05', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '056/11/2018', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 00:06:45', '2018-12-13 00:06:45', NULL, ''),
(515, 0, 0, 'Female', 3.00, '1249', '', 'Pediatric Inpatient', '', 'mbabazi rose', 'kirabo rose', 'Yes', 'Unknown', '2018-11-05', '1st PCR', 'A-LIS Admin', 'Unknown', 'Unknown', 'Unknown', '0000-00-00', '055/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 00:11:34', '2018-12-13 00:11:34', NULL, 'promacurity'),
(516, 0, 0, 'Female', 3.00, '1383', '', 'MBCP/eMTCT', '', 'kembabazi pneumonia', 'ahaisibwe veronica', 'Yes', 'Negative', '2018-11-05', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '151/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 00:15:43', '2018-12-13 00:15:43', NULL, 'severe pneumonia'),
(517, 0, 0, 'Male', 14.00, '9/2017/59', '0773353813', 'MBCP/eMTCT', '', 'kobusinge immaculate', 'isingoma isaac', 'No', 'Positive', '2018-11-05', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '079/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 00:32:51', '2018-12-13 00:32:51', NULL, 'exposed infant'),
(518, 0, 0, 'Female', 9.00, '1/2018/77', '07884789212', 'MBCP/eMTCT', '', 'kanyunyuzi yuster', 'kansiime juliet', 'Yes', 'Positive', '2018-11-05', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '084/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 00:37:15', '2018-12-13 00:37:15', NULL, 'exposed infant'),
(519, 0, 0, 'Male', 9.00, '1/2018/55', '', 'MBCP/eMTCT', '', 'kahunde aisha', 'ssemwanga richard', 'Yes', 'Positive', '2018-11-05', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '088/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 00:42:39', '2018-12-13 00:42:39', NULL, 'exposed infant'),
(520, 0, 0, 'Male', 9.00, '1/2018/69', '', 'MBCP/eMTCT', '', 'kasangaki sarah', 'muhumuza joel', 'Yes', 'Positive', '2018-11-05', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '094/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 00:48:21', '2018-12-13 00:48:21', NULL, 'exposed infant'),
(521, 0, 0, 'Male', 9.00, '1/2018/60', '0701683019', 'MBCP/eMTCT', '', 'neema annet', 'ahimbisibwe timothy', 'Yes', 'Positive', '2018-11-05', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '082/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 00:54:15', '2018-12-13 00:54:15', NULL, 'exposed infant'),
(522, 0, 0, 'Female', 9.00, '1/2018/76', '', 'MBCP/eMTCT', '', 'komuhimbo daphine', 'nankya audrey', 'Yes', 'Positive', '2018-11-05', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '087/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 01:01:38', '2018-12-13 01:01:38', NULL, 'exposed infant'),
(523, 0, 0, 'Female', 14.00, '9/2017/36', '078112918', 'MBCP/eMTCT', '', 'annet jolly', 'kobugabe shamim', 'No', 'Positive', '2018-11-05', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '090/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 01:05:43', '2018-12-13 01:05:43', NULL, 'exposed infant'),
(524, 0, 0, 'Female', 13.00, '9/2017/48', '0787968526', 'MBCP/eMTCT', '', 'kabahweza yuster', 'namara niclo', 'No', 'Positive', '2018-11-05', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '087/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 01:10:25', '2018-12-13 01:10:25', NULL, 'exposed infant'),
(525, 0, 0, 'Female', 9.00, '1/2018/66', '', 'MBCP/eMTCT', '', 'mbabazi annet', 'nandegeya miracle', 'No', 'Positive', '2018-11-05', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '097/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 01:15:24', '2018-12-13 01:15:24', NULL, 'exposed infant'),
(526, 0, 0, 'Male', 1.50, '9/2018/18', '', 'MBCP/eMTCT', '', 'kobusinge beatrice', 'tumwine jonahson', 'Yes', 'Positive', '2018-11-05', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '093/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 01:20:35', '2018-12-13 01:20:35', NULL, 'exposed infant'),
(527, 0, 0, 'Male', 1.50, '9/2018/16', '0786576350', 'MBCP/eMTCT', '', 'hope oliva', 'kisembo eriya', 'Yes', 'Positive', '2018-10-31', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '446/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 01:27:16', '2018-12-13 01:27:16', NULL, 'exposed infant'),
(528, 0, 0, 'Male', 12.00, '10/2017/33', '', 'MBCP/eMTCT', '', 'birungi jacinta', 'kemigisa slyvia', 'No', 'Positive', '2018-10-31', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '444/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 01:31:39', '2018-12-13 01:31:39', NULL, 'exposed infant'),
(529, 0, 0, 'Male', 14.00, '8/2018/39', '', 'MBCP/eMTCT', '', 'kunihira esther', 'amanyire jonathan', 'No', 'Positive', '2018-10-31', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '447/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 01:38:58', '2018-12-13 01:38:58', NULL, 'exposed infant'),
(530, 0, 0, 'Male', 1.50, '9/2018/14', '', 'MBCP/eMTCT', '', 'kanyunyuzi patricia', 'byaruhanga joseph', 'Yes', 'Positive', '2018-10-31', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '408/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 01:43:59', '2018-12-13 01:43:59', NULL, 'exposed infant'),
(531, 0, 0, 'Female', 9.00, '1/2018/67', '', 'MBCP/eMTCT', '', 'manyindo esther', 'kigamba dorcus', 'Yes', 'Positive', '2018-10-30', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '410/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 01:49:14', '2018-12-13 01:49:14', NULL, 'exposed infant'),
(532, 0, 0, 'Male', 11.00, '11/2017/12', '0773438606', 'MBCP/eMTCT', '', 'namazzi gertrude', 'mwesigwa jeremiah', 'No', 'Positive', '2018-10-30', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '409/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 01:54:34', '2018-12-13 01:54:34', NULL, 'exposed infant'),
(533, 0, 0, 'Male', 6.00, '1239/18', '', 'MBCP/eMTCT', '', 'unkwown', 'elia subwane', 'No', 'Positive', '2018-10-22', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '243/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 02:00:00', '2018-12-13 02:00:00', NULL, 'exposed infant'),
(534, 0, 0, 'Male', 4.00, '06/2018/39', '0703205263', 'Young Child Clinic', '', 'KEMIGABO JANE', 'MUHAIRWE JASSY', 'Yes', 'Positive', '2018-10-29', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '347/10/18', 'No ARVs taken at birth', '', '2018-12-13 16:37:32', '2018-12-13 16:37:32', NULL, 'EXPOSED INFANT'),
(535, 0, 0, 'Male', 2.00, '8/2018/30', '', 'MBCP/eMTCT', '', 'KAMULI MARGRET', 'NYAKAHUMA TADEO', 'Yes', 'Positive', '2018-10-24', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '294/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 16:39:52', '2018-12-13 16:39:52', NULL, 'EXPOSED INFANT'),
(536, 0, 0, 'Female', 12.00, '1275', '', 'Nutrition', '', 'KOBUSINGE JOVANS', 'AKOORA PAULINE', 'No', 'Unknown', '2018-10-25', 'R1', 'A-LIS Admin', 'Unknown', 'Unknown', 'Unknown', '2018-10-23', '313/10/18', 'No ARVs taken at birth', '', '2018-12-13 16:42:07', '2018-12-13 16:42:07', NULL, ''),
(537, 0, 0, 'Female', 1.50, '9/2018/04', '', 'MBCP/eMTCT', '', 'KANSIIME MARGRET', 'KANSIIME MARGRET', 'Yes', 'Positive', '2018-10-22', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '248/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 16:44:24', '2018-12-13 16:44:24', NULL, 'EXPOSED INFANT'),
(538, 0, 0, 'Male', 1.50, '9/2018/05', '', 'MBCP/eMTCT', '', 'KIIZA RUTH', 'AMPUMUZA VIAN', 'Yes', 'Positive', '2018-10-24', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '292/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 16:52:06', '2018-12-13 16:52:06', NULL, 'EXPOSED INFANT'),
(539, 0, 0, 'Male', 13.00, '1242', '', 'Pediatric Inpatient', '', 'UNKNOWN', 'AGONZEZA ISMAIL', 'Yes', 'Negative', '2018-10-23', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-10-19', '261/10/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-13 16:56:38', '2018-12-13 16:56:38', NULL, ''),
(540, 0, 0, 'Male', 23.00, '1261', '', 'Nutrition', '', 'RESTIDIA TUKAMUHESWA', 'JULUIS', 'No', 'Negative', '2018-10-23', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-10-21', '262/10/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-13 16:59:04', '2018-12-13 16:59:04', NULL, ''),
(541, 0, 0, 'Female', 1.50, '9/2018/17', '', 'MBCP/eMTCT', '', 'KOBUGABE GRACE', 'NYAKAISIKI TOPISTA', 'Yes', 'Positive', '2018-10-24', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '293/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 17:01:25', '2018-12-13 17:01:25', NULL, 'EXPOSED INFANT'),
(542, 0, 0, 'Female', 1.50, '9/2018/06', '0705159975', 'MBCP/eMTCT', '', 'KABAGANYIZI JOSELYN', 'KATUSHABE AISHA', 'Yes', 'Positive', '2018-10-24', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '295/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 17:03:51', '2018-12-13 17:03:51', NULL, 'EXPOSED INFANT'),
(543, 0, 0, 'Male', 1.00, '1244', '0781984008', 'Other', '', 'TUMUHIMBISE CATE', 'KANDIWO MICHEAL', 'Yes', 'Negative', '2018-10-22', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-10-19', '245/10/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-13 17:07:01', '2018-12-13 17:07:01', NULL, ''),
(544, 0, 0, 'Male', 23.00, '2397', '', 'Pediatric Inpatient', '', 'MAHORO', 'VENKERE VENGAZI', 'No', 'Unknown', '2018-10-22', '1st PCR', 'A-LIS Admin', 'Unknown', 'Unknown', 'Unknown', '2018-10-19', '244/10/18', 'No ARVs taken at birth', '', '2018-12-13 17:10:16', '2018-12-13 17:10:16', NULL, ''),
(545, 0, 0, 'Female', 3.50, '1257/18', '0782331200', 'Other', 'NICU', 'KANSIIME ROSE', 'NAMARA VERONICA', 'Yes', 'Positive', '2018-10-22', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-10-21', '246/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 17:13:28', '2018-12-13 17:13:28', NULL, ''),
(546, 0, 0, 'Female', 1.70, '9/2018/03', '', 'MBCP/eMTCT', '', 'NKWENGE JOYCE', 'KATUSIIME JOYCE', 'Yes', 'Positive', '2018-10-22', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '249/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-13 17:16:05', '2018-12-13 17:16:05', NULL, 'EXPOSED INFANT'),
(547, 0, 0, 'Female', 13.00, '1283', '', 'Nutrition', '', 'KAJUMBA ATUHAIME', 'KEMBABAZI BYAMUA', 'No', 'Negative', '2018-10-25', 'R1', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '315/10/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-13 17:19:16', '2018-12-13 17:19:16', NULL, ''),
(548, 0, 0, 'Male', 17.00, '1289', '0780741700', 'Nutrition', '', 'MASKA OLIVE', 'MURUNGI FAHARD', 'No', 'Negative', '2018-10-25', 'R1', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-10-24', '314/10/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-13 17:22:14', '2018-12-13 17:22:14', NULL, ''),
(550, 0, 0, 'Female', 9.00, '2/2018/006', '', 'MBCP/eMTCT', '', 'BASEMERA LUCY', 'KENGANZI SHARON', 'Yes', 'Positive', '2018-11-19', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '498/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:28:08', '2018-12-12 19:28:08', NULL, 'EXPOSED INFANT '),
(551, 0, 0, 'Female', 13.00, '10/2017/76', '', 'MBCP/eMTCT', '', 'KEZABU GETRUDE', 'TRAY PRICILLAH', 'No', 'Positive', '2018-11-19', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '493/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:31:23', '2018-12-12 19:31:23', NULL, 'EXPOSED INFANT '),
(552, 0, 0, 'Male', 1.50, '9/2018/29', '0774674762', 'MBCP/eMTCT', '', 'KABALINZI VIOLET', 'ALINDA ROBERT', 'Yes', 'Positive', '2018-11-15', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '448/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:34:06', '2018-12-12 19:34:06', NULL, 'EXPOSED INFANT '),
(553, 0, 0, 'Female', 1.50, '1/2018/73', '', 'MBCP/eMTCT', '', 'KABAHUMA LYNET', 'KENGUNZI PRECIOUS', 'Yes', 'Positive', '2018-11-15', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '445/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:40:10', '2018-12-12 19:40:10', NULL, 'EXPOSED INFANT '),
(554, 0, 0, 'Female', 1.60, '9/2018/28', '', 'MBCP/eMTCT', '', 'KAKYO VIOLET', 'KAHUNDE DENIZ BLESSING', 'Yes', 'Positive', '2018-11-16', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '446/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:42:50', '2018-12-12 19:42:50', NULL, 'EXPOSED INFANT '),
(555, 0, 0, 'Female', 6.00, '8629', '', 'Pediatric Inpatient', '', 'KICONCO LYDIA', 'KEMBABAZI GRACE', 'Yes', 'Unknown', '2018-10-16', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-14', '440/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 19:50:56', '2018-12-12 19:50:56', NULL, ''),
(556, 0, 0, 'Male', 2.00, '9/2018/30', '0779871726', 'MBCP/eMTCT', '', 'KABAGOMBE BETH', 'MUTUMBA', 'Yes', 'Positive', '2018-11-19', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '496/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:54:47', '2018-12-12 19:54:47', NULL, 'EXPOSED INFANT '),
(557, 0, 0, 'Male', 1.50, '9/2018/23', '', 'MBCP/eMTCT', '', 'NAMARA ROSE', 'MIRACLE JOEL', 'Yes', 'Positive', '2018-11-12', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 19:57:19', '2018-12-12 19:57:19', NULL, 'EXPOSED INFANT '),
(558, 0, 0, 'Male', 1.50, '9/2018/24', '', 'MBCP/eMTCT', '', 'KANSIIME ENID', 'AMANYIRE DANIEL', 'Yes', 'Positive', '2018-11-12', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '342/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:00:20', '2018-12-12 20:00:20', NULL, 'EXPOSED INFANT '),
(559, 0, 0, 'Male', 2.50, '8/2018/31', '0751371919', 'MBCP/eMTCT', '', 'KABASAMBU ANNET', 'MUSINGUZI BENJAMINE', 'Yes', 'Positive', '2018-11-12', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '340/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:04:19', '2018-12-12 20:04:19', NULL, 'EXPOSED INFANT '),
(560, 0, 0, 'Female', 1.50, '9/2018/25', '', 'MBCP/eMTCT', '', 'KANSIIME ROVA', 'NAMARA VERONICA', 'Yes', 'Positive', '2018-11-12', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '9/2018/25', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:07:30', '2018-12-12 20:07:30', NULL, 'EXPOSED INFANT '),
(561, 0, 0, 'Male', 1.50, '9/2018/22', '0788907020', 'MBCP/eMTCT', '', 'BASEMERA GRACE', 'ALIGUMA INNOCENT', 'Yes', 'Positive', '2018-11-12', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '340/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:10:25', '2018-12-12 20:10:25', NULL, 'EXPOSED INFANT '),
(562, 0, 0, 'Male', 1.50, '9/2018/27', '0787533092', 'MBCP/eMTCT', '', 'NUWAGABA JESCA', 'OWEYESIGIRE TITUS MUBERE', 'Yes', 'Positive', '2018-11-15', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '412/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:14:06', '2018-12-12 20:14:06', NULL, 'EXPOSED INFANT '),
(563, 0, 0, 'Female', 15.00, '8/2017/36', '', 'MBCP/eMTCT', '', 'KEMIGISA JANET', 'KEMIGISA IRENE', 'No', 'Positive', '2018-11-15', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '447/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:16:27', '2018-12-12 20:16:27', NULL, 'EXPOSED INFANT '),
(564, 0, 0, 'Female', 15.00, '8798', '075772592', 'Pediatric Inpatient', '', 'AHANKUNDIRA JENIFFER', 'AINEMBABAZI AKAMPURIRA', 'Yes', 'Unknown', '2018-11-15', 'R1', 'A-LIS Admin', 'Unknown', 'Unknown', 'Unknown', '0000-00-00', '442/11/18', 'No ARVs taken at birth', '', '2018-12-12 20:21:08', '2018-12-12 20:21:08', NULL, ''),
(565, 0, 0, 'Female', 6.00, '1470', '0771273944', 'Pediatric Inpatient', '', 'KANSIIME STELLAH', 'KANSIIME RONET', 'Yes', 'Negative', '2018-11-15', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-14', '439/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 20:26:03', '2018-12-12 20:26:03', NULL, ''),
(566, 0, 0, 'Male', 1.50, '1449', '0779193188', 'Pediatric Inpatient', '', 'BONABANA BRIDGET', 'SHARIFA JUMA', 'Yes', 'Negative', '2018-11-13', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-12', '368/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 20:29:08', '2018-12-12 20:29:08', NULL, ''),
(567, 0, 0, 'Male', 1.50, '9/2018/26', '0785101129', 'MBCP/eMTCT', '', 'NYAKATE RUTH', 'TUSIIME JOSEPH', 'Yes', 'Positive', '2018-11-13', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '371/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:31:53', '2018-12-12 20:31:53', NULL, 'EXPOSED INFANT '),
(568, 0, 0, 'Male', 1.50, '10/2018/02', '', 'MBCP/eMTCT', '', 'KAMUJUNI MARGRET', 'BAGUMA STEPHEN', 'Yes', 'Positive', '2018-11-13', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '374/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:34:55', '2018-12-12 20:34:55', NULL, 'EXPOSED INFANT '),
(569, 0, 0, 'Female', 9.50, '1.2018/65', '0779205221', 'MBCP/eMTCT', '', 'KANSIIME BRENDA', 'NAMARA FAVOUR', 'Yes', 'Positive', '2018-11-13', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '375/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:37:51', '2018-12-12 20:37:51', NULL, 'EXPOSED INFANT '),
(570, 0, 0, 'Female', 9.00, '2/2018/003', '', 'MBCP/eMTCT', '', 'KABASINGUZI ROSE', 'KASEMIIRE ASFAH', 'Yes', 'Positive', '2018-11-13', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '372/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:41:32', '2018-12-12 20:41:32', NULL, 'EXPOSED INFANT '),
(571, 0, 0, 'Male', 9.00, '1/2018/62', '', 'MBCP/eMTCT', '', 'KANSIIME LYDIA', 'KASANDE', 'Yes', 'Positive', '2018-11-14', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '413/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:44:12', '2018-12-12 20:44:12', NULL, 'EXPOSED INFANT '),
(572, 0, 0, 'Male', 14.00, '1491', '', 'MBCP/eMTCT', '', 'TUNGU YAYERI', 'BINO OMUGISHA ALFRED', 'Yes', 'Positive', '2018-11-16', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '454/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 20:47:56', '2018-12-12 20:47:56', NULL, ''),
(573, 0, 0, 'Female', 9.00, '2/2018/001', '0756947254', 'MBCP/eMTCT', '', 'KABAROKOLE TEDDY', 'TIBANANUKA MARY', 'Yes', 'Positive', '2018-11-19', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '494/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:51:55', '2018-12-12 20:51:55', NULL, 'EXPOSED INFANT '),
(574, 0, 0, 'Male', 10.00, '1/2018/72', '', 'MBCP/eMTCT', '', 'Unknown', 'JUNIOR', 'Yes', 'Positive', '2018-11-14', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '410/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:55:14', '2018-12-12 20:55:14', NULL, 'EXPOSED INFANT '),
(575, 0, 0, 'Female', 14.00, '1481', '', 'Pediatric Inpatient', '', 'AHEBWA ENID', 'TURAMYE OMWE RETAH', 'No', 'Positive', '2018-11-15', 'R1', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-11-15', '441/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 20:58:11', '2018-12-12 20:58:11', NULL, ''),
(576, 0, 0, 'Female', 9.00, '2/2018/002', '0781992237', 'MBCP/eMTCT', '', 'BASEMERA ROSE', 'KEMIGISA PATIENCE', 'Yes', 'Positive', '2018-11-14', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '414/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:01:23', '2018-12-12 21:01:23', NULL, 'EXPOSED INFANT '),
(577, 0, 0, 'Female', 14.00, '165', '0788912206', 'Nutrition', '', 'NYANGOMA SCOVIA', 'KOBUSINGE GIFT', 'No', 'Positive', '2018-11-19', '1st PCR', 'A-LIS Admin', 'Unknown', 'Unknown', 'Unknown', '0000-00-00', '165', 'UNKNOWN', '', '2018-12-12 21:05:34', '2018-12-12 21:05:34', NULL, ''),
(578, 0, 0, 'Female', 14.00, '8/2017/34', '', 'MBCP/eMTCT', '', 'KEMIGISA AISHA', 'KASFA', 'No', 'Positive', '2018-11-19', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '499/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:07:45', '2018-12-12 21:07:45', NULL, 'EXPOSED INFANT '),
(579, 0, 0, 'Male', 13.00, '10/2017/77', '', 'MBCP/eMTCT', '', 'KAJUMBA MONICA', 'TURYATUNGA DAN', 'No', 'Positive', '2018-11-19', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '500/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:11:57', '2018-12-12 21:11:57', NULL, 'EXPOSED INFANT '),
(580, 0, 0, 'Female', 2.00, '9/2018/31', '', 'MBCP/eMTCT', '', 'NUWAMANI CONFIDENCE', 'BLESSING', 'Yes', 'Positive', '2018-11-19', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '501/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:15:00', '2018-12-12 21:15:00', NULL, 'EXPOSED INFANT '),
(581, 0, 0, 'Female', 18.00, '1413', '', 'Pediatric Inpatient', '', 'SHILA TUMUKUGIZE', 'TUMUKUGIZE JANAITE', 'Yes', 'Negative', '2018-11-13', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-09', '367/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 21:19:06', '2018-12-12 21:19:06', NULL, ''),
(582, 0, 0, 'Male', 4.00, '181/18', '0783865075', 'Pediatric Inpatient', '', 'Unknown', 'RWOT OMUYA JOSHUA', 'Yes', 'Negative', '2018-11-13', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-13', '369/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 21:22:01', '2018-12-12 21:22:01', NULL, ''),
(583, 0, 0, 'Male', 5.00, '1460', '078407753', 'Pediatric Inpatient', '', 'Unknown', 'TURYAKIRA PAUL', 'Yes', 'Negative', '2018-11-13', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-13', '370/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 21:25:40', '2018-12-12 21:25:40', NULL, ''),
(584, 0, 0, 'Male', 1.50, '10/2018/003', '', 'MBCP/eMTCT', '', 'MBAMBU MARY', 'KAMARA JONEX', 'Yes', 'Positive', '2018-11-19', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '191/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:28:59', '2018-12-12 21:28:59', NULL, 'EXPOSED INFANT '),
(585, 0, 0, 'Male', 14.00, '9/2017/45', 'NASASIRO LINET', 'MBCP/eMTCT', '', 'NASASIRO LINET', 'IMRAN VELL', 'No', 'Positive', '2018-11-19', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '442/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:31:57', '2018-12-12 21:31:57', NULL, 'EXPOSED INFANT '),
(586, 0, 0, 'Male', 1.50, '10/2018/004', '', 'MBCP/eMTCT', '', 'TUHAISE JANE', 'MUSIMENTA INNOCENT', 'Yes', 'Positive', '2018-11-20', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '528/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:35:31', '2018-12-12 21:35:31', NULL, 'EXPOSED INFANT '),
(587, 0, 0, 'Male', 14.00, '9/2017/29', '', 'MBCP/eMTCT', '', 'KOMUHENDO BRENDA', 'ALVIN CHARLES', 'No', 'Positive', '2018-11-20', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '527/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:37:57', '2018-12-12 21:37:57', NULL, 'EXPOSED INFANT '),
(588, 0, 0, 'Female', 17.00, '1499', '', 'Pediatric Inpatient', '', 'KUGONZA MARGRET', 'NABAKOZA TEOPISTA', 'No', 'Negative', '2018-11-20', 'R1', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-17', '525/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 21:41:02', '2018-12-12 21:41:02', NULL, ''),
(589, 0, 0, 'Female', 9.00, '1505', '0780828803', 'Pediatric Inpatient', '', 'PROSSY KAKWEZI', 'KATUSIIME ROSEMARY', 'Yes', 'Positive', '2018-11-20', 'R2', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-11-17', '526/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:43:43', '2018-12-12 21:43:43', NULL, ''),
(590, 0, 0, 'Male', 1.50, '9/2018/32', '', 'MBCP/eMTCT', '', 'KATUSABE JOSEPHINE', 'AZARO JAVAN', 'Yes', 'Positive', '2018-11-20', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '529/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:46:06', '2018-12-12 21:46:06', NULL, 'EXPOSED INFANT '),
(591, 0, 0, 'Female', 1.50, '-', '0782618301', 'Outpatient', '', 'BIRUNGI DOREEN', 'KALENZI STEPHEN', 'Yes', 'Positive', '2018-11-20', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '522/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:49:09', '2018-12-12 21:49:09', NULL, ''),
(592, 0, 0, 'Male', 7.00, '1519', '', 'Pediatric Inpatient', '', 'AKAGIZIBWE C', 'NIWABIRE JACKSON', 'Yes', 'Negative', '2018-11-20', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-19', '523/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 21:52:36', '2018-12-12 21:52:36', NULL, ''),
(593, 0, 0, 'Female', 0.00, '1511', '', 'Pediatric Inpatient', '', 'TUMURANYE AGNES', 'KATUSIIME AGNES', 'Yes', 'Negative', '2018-11-20', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-17', '524/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 21:56:21', '2018-12-12 21:56:21', NULL, ''),
(594, 0, 0, 'Female', 14.00, '9/2017/42', '', 'MBCP/eMTCT', '', 'KABASINGUZI RUTH', 'KASEMIRE DIANA', 'No', 'Positive', '2018-11-21', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '560/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 21:59:27', '2018-12-12 21:59:27', NULL, 'EXPOSED INFANT '),
(595, 0, 0, 'Male', 15.00, '8/2017/40', '', 'MBCP/eMTCT', '', 'TINDYERA JOYCE', 'MUHANGUZI JOHN', 'No', 'Positive', '2018-11-21', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '561/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 22:02:21', '2018-12-12 22:02:21', NULL, 'EXPOSED INFANT '),
(596, 0, 0, 'Female', 1.00, '10/2018/005', '', 'MBCP/eMTCT', '', 'KESANDE MOREEN', 'MUTONI PRICILLAH', 'Yes', 'Positive', '2018-11-21', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '564/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 22:04:27', '2018-12-12 22:04:27', NULL, 'EXPOSED INFANT '),
(597, 0, 0, 'Male', 1.50, '9/2018/33', '', 'MBCP/eMTCT', '', 'KABAMANYISA BEATRICE', 'AYEBALE ROBERT', 'Yes', 'Positive', '2018-11-21', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '563/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 22:08:04', '2018-12-12 22:08:04', NULL, 'EXPOSED INFANT ');
INSERT INTO `poc_tables` (`id`, `facility_id`, `district_id`, `gender`, `age`, `exp_no`, `caretaker_number`, `entry_point`, `other_entry_point`, `mother_name`, `infant_name`, `breastfeeding_status`, `mother_hiv_status`, `collection_date`, `pcr_level`, `created_by`, `pmtct_antenatal`, `pmtct_delivery`, `pmtct_postnatal`, `admission_date`, `sample_id`, `infant_pmtctarv`, `mother_pmtctarv`, `created_at`, `updated_at`, `deleted_at`, `provisional_diagnosis`) VALUES
(598, 0, 0, 'Female', 14.00, '8/2017/30', '', 'MBCP/eMTCT', '', 'AGONDEZE CHRISTINE', 'KABIRUNGI TEDDY', 'No', 'Positive', '2018-11-21', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '559/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 22:10:34', '2018-12-12 22:10:34', NULL, 'EXPOSED INFANT '),
(599, 0, 0, 'Female', 9.50, '1/2018/89', '', 'MBCP/eMTCT', '', 'AMANYA IMMACULATE', 'NATUKUNDA PRETTY', 'Yes', 'Positive', '2018-11-21', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '562/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 22:13:17', '2018-12-12 22:13:17', NULL, 'EXPOSED INFANT '),
(600, 0, 0, 'Female', 4.00, '1551', '', 'Pediatric Inpatient', '', 'MWAVITA SOLANICE', 'USHINE BOMEYIMANA', 'Yes', 'Positive', '2018-11-22', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-11-20', '572/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 22:16:25', '2018-12-12 22:16:25', NULL, ''),
(601, 0, 0, 'Female', 15.00, '1326', '', 'Pediatric Inpatient', '', 'KARUNGI JOY', 'KANDOLE FLORENCE', 'Yes', 'Negative', '2018-11-09', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '287/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 22:19:11', '2018-12-12 22:19:11', NULL, ''),
(602, 0, 0, 'Male', 12.00, '1408', '', 'Pediatric Inpatient', '', 'KEMBABAZI SHARON', 'ALINAITWE ERIC', 'Yes', 'Negative', '2018-11-09', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-08', '288/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 22:21:52', '2018-12-12 22:21:52', NULL, ''),
(603, 0, 0, 'Female', 20.00, '1399', '', 'Pediatric Inpatient', '', 'WIZEYI MUKESHA', 'ALICE BIMENYIMANA', 'No', 'Negative', '2018-11-09', 'R1', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-05', '289/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 22:25:01', '2018-12-12 22:25:01', NULL, ''),
(604, 0, 0, 'Female', 9.00, '1417', '', 'Pediatric Inpatient', '', 'ABISEMEZA JENIFFER', 'KEMIGISA WINNIE', 'Yes', 'Negative', '2018-11-09', 'R1', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-08', '291/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 22:28:39', '2018-12-12 22:28:39', NULL, ''),
(605, 0, 0, 'Male', 8.50, '8183', '0779386162', 'Pediatric Inpatient', '', 'KEMIGABO GLADYS', 'ALKIRIZA JONA', 'Yes', 'Negative', '2018-11-09', 'R1', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-08', '290/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 22:32:31', '2018-12-12 22:32:31', NULL, ''),
(606, 0, 0, 'Male', 4.00, '1386/18', '', 'Pediatric Inpatient', '', 'BIRUNGI ANGELLAH', 'NGOZI FRANCIS', 'Yes', 'Negative', '2018-11-06', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '149/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 22:34:57', '2018-12-12 22:34:57', NULL, ''),
(607, 0, 0, 'Male', 15.00, '8/2017/003', '0786898158', 'MBCP/eMTCT', '', 'KAJOBE EVELYN', 'NYAKOOJO MATHIAS NICOLAS', 'No', 'Positive', '2018-10-31', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '445/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 22:39:45', '2018-12-12 22:39:45', NULL, 'EXPOSED INFANT '),
(608, 0, 0, 'Male', 0.50, '1330', '', 'Other', '', 'MASIKO ROSE', 'TWEBAZE CHRIS', 'No', 'Negative', '2018-10-30', 'R1', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-10-29', '403/10/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 22:43:00', '2018-12-12 22:43:00', NULL, ''),
(609, 0, 0, 'Female', 0.50, '1304', '', 'Other', '', 'KOBUSIGYE BEATRICE', 'KEBISEMBO TRISHA', 'Yes', 'Negative', '2018-10-30', 'R1', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-10-26', '401/10/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 22:51:33', '2018-12-12 22:51:33', NULL, ''),
(610, 0, 0, 'Female', 1.50, '9/2018/15', '', 'MBCP/eMTCT', '', 'TUSIIME ROSE', 'KYOMUKAMA MERCY', 'Yes', 'Positive', '2018-10-30', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '406/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 22:55:42', '2018-12-12 22:55:42', NULL, 'EXPOSED INFANT '),
(611, 0, 0, 'Male', 9.00, '1/2018/81', '', 'MBCP/eMTCT', '', 'KUGONZA EDITH', 'ATUHAIRWE WILLIAM', 'Yes', 'Positive', '2018-10-30', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '407/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 22:59:15', '2018-12-12 22:59:15', NULL, ''),
(612, 0, 0, 'Male', 13.00, '9/2017/17', '', 'MBCP/eMTCT', '', 'KATUSABE SARAH', 'ALITUHA JONATHAN', 'No', 'Positive', '2018-10-30', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '411/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:03:16', '2018-12-12 23:03:16', NULL, 'EXPOSED INFANT '),
(613, 0, 0, 'Male', 0.00, '9/2018/13', '', 'MBCP/eMTCT', '', 'KYOBALEMBE STELLA', 'MUSINGUZI GODFREY', 'Yes', 'Positive', '2018-10-29', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '360/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:06:12', '2018-12-12 23:06:12', NULL, 'EXPOSED INFANT '),
(614, 0, 0, 'Female', 14.00, '8/2017/26', '', 'MBCP/eMTCT', '', 'AKUGIZIBWE BRENDA', 'KOBUSINGE JULIANA', 'No', 'Positive', '2018-10-29', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '364/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:12:22', '2018-12-12 23:12:22', NULL, 'EXPOSED INFANT '),
(615, 0, 0, 'Female', 1.50, '9/2018/11', '', 'MBCP/eMTCT', '', 'KATUSIIME TEDDY', 'AINEMBABAZI GLORIA', 'Yes', 'Positive', '2018-10-29', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '370/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:14:31', '2018-12-12 23:14:31', NULL, 'EXPOSED INFANT '),
(616, 0, 0, 'Female', 1.50, '9/2018/12', '', 'MBCP/eMTCT', '', 'AKUGIZIBWE MADINA', 'NSUNGWA PATIENCE', 'Yes', 'Positive', '2018-10-29', '1st PCR', 'A-LIS Admin', 'Unknown', 'Unknown', 'Unknown', '0000-00-00', '369/10/18', 'UNKNOWN', '', '2018-12-12 23:17:08', '2018-12-12 23:17:08', NULL, 'EXPOSED INFANT '),
(617, 0, 0, 'Female', 1.50, '9/2018/10', '0755025134', 'MBCP/eMTCT', '', 'BASEMERA CHRISTINE', 'ESTHER', 'Yes', 'Positive', '2018-10-29', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '368/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:19:32', '2018-12-12 23:19:32', NULL, 'EXPOSED INFANT '),
(618, 0, 0, 'Female', 9.00, '1/2018/56', '', 'MBCP/eMTCT', '', 'KEMIGISA IRENE', 'ASINGWIRE ANGEL', 'No', 'Positive', '2018-10-29', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '365/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:21:50', '2018-12-12 23:21:50', NULL, 'EXPOSED INFANT '),
(619, 0, 0, 'Male', 12.00, '10/2017/005', '', 'MBCP/eMTCT', '', 'KATUSABE SARAH', 'MURUNGI BRIAN', 'No', 'Positive', '2018-10-29', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '367/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:24:27', '2018-12-12 23:24:27', NULL, 'EXPOSED INFANT '),
(620, 0, 0, 'Male', 2.00, '1308', '', 'Nutrition', '', 'KABANDA BETTY', 'JEMBO JOSEPH', 'Yes', 'Negative', '2018-10-29', 'R1', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-10-26', '378/10/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 23:26:57', '2018-12-12 23:26:57', NULL, ''),
(621, 0, 0, 'Male', 11.00, '11/2017/12', '0773438606', 'MBCP/eMTCT', '', 'NAMAZZI GETRUDE', 'MWESIGWA JEREMIAH', 'No', 'Positive', '2018-10-30', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '409/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:30:13', '2018-12-12 23:30:13', NULL, 'EXPOSED INFANT '),
(622, 0, 0, 'Male', 1.50, '9/2018/08', '', 'MBCP/eMTCT', '', 'KEMIGABO ANGELLA', 'SUNDAY JOSEPH', 'Yes', 'Positive', '2018-10-29', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '329/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 23:32:52', '2018-12-12 23:32:52', NULL, 'EXPOSED INFANT '),
(623, 0, 0, 'Female', 12.00, '1154', '', 'Pediatric Inpatient', '', 'MBABAZI VIOLET', 'AHUMUZA MOREEN', 'No', 'Positive', '2018-10-11', 'R2', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '133/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:49:15', '2018-12-12 16:49:15', NULL, ''),
(624, 0, 0, 'Female', 9.00, '1157', '', 'Pediatric Inpatient', '', 'KABASINGUZI JANE', 'KENGANZI DESIRE', 'Yes', 'Unknown', '2018-10-11', '1st PCR', 'A-LIS Admin', 'Unknown', 'Unknown', 'Unknown', '0000-00-00', '134/10/18', 'No ARVs taken at birth', '', '2018-12-12 16:51:52', '2018-12-12 16:51:52', NULL, ''),
(625, 0, 0, 'Male', 15.00, '7/2017/26', '0775848368', 'MBCP/eMTCT', '', 'KAHUNDE JANET', 'MUHIMBO BRIAN', 'No', 'Positive', '2018-10-10', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '108/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:55:09', '2018-12-12 16:55:09', NULL, 'EXPOSED INFANT '),
(626, 0, 0, 'Male', 14.00, '7/2017/19', '', 'MBCP/eMTCT', '', 'KYALYO SYLIVIA', 'MWESIGE DAMION', 'No', 'Positive', '2018-10-10', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '115/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 17:07:30', '2018-12-12 17:07:30', NULL, 'EXPOSED INFANT '),
(627, 0, 0, 'Female', 1.50, '8/2018/25', '', 'MBCP/eMTCT', '', 'TUMUHEKI FABICE', 'KANSIIME MELISA', 'Yes', 'Positive', '2018-10-10', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '111/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 17:10:05', '2018-12-12 17:10:05', NULL, 'EXPOSED INFANT '),
(628, 0, 0, 'Female', 12.00, '10/2017/13', '', 'MBCP/eMTCT', '', 'ASSIMWE JULIET', 'KISEMBO NSEMIRE', 'No', 'Positive', '2018-10-10', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '114/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 17:12:16', '2018-12-12 17:12:16', NULL, 'EXPOSED INFANT '),
(629, 0, 0, 'Male', 1.50, '8/2018/21', '', 'MBCP/eMTCT', '', 'KABENKOLE RESTY', 'AYEBALE GODFREY', 'Yes', 'Positive', '2018-10-08', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '93/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 17:15:19', '2018-12-12 17:15:19', NULL, 'EXPOSED INFANT '),
(630, 0, 0, 'Female', 14.00, '9/2017/35', '', 'MBCP/eMTCT', '', 'ASSIMWE FARIDA', 'SAUDA KANYUNYUZI', 'No', 'Positive', '2018-10-08', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '90/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 17:17:33', '2018-12-12 17:17:33', NULL, 'EXPOSED INFANT '),
(631, 0, 0, 'Male', 14.00, '7/2017/34', '0758011191', 'MBCP/eMTCT', '', 'KANWERI BETTY', 'TUMUKUGIZE BRIGHT', 'No', 'Positive', '2018-10-10', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '113/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 17:19:55', '2018-12-12 17:19:55', NULL, 'EXPOSED INFANT '),
(632, 0, 0, 'Male', 0.00, '06/2017/30', '', 'MBCP/eMTCT', '', 'BIRUNGI GETRUDE', 'MUSINGUZI PAUL', 'No', 'Positive', '2018-10-10', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '109/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 17:22:56', '2018-12-12 17:22:56', NULL, 'EXPOSED INFANT '),
(633, 0, 0, 'Female', 13.00, '8/2017/18', '', 'MBCP/eMTCT', '', 'KATUSABE MARY', 'KAJUMBO PRICILLAR', 'No', 'Positive', '2018-10-10', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '110/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 17:25:51', '2018-12-12 17:25:51', NULL, 'EXPOSED INFANT '),
(634, 0, 0, 'Male', 1.50, '8/2018/002', '', 'MBCP/eMTCT', '', 'NYAKATO FLORENCE', 'BAINOMUGISA JOSHUA', 'Yes', 'Positive', '2018-09-17', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '313/09/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 17:29:08', '2018-12-12 17:29:08', NULL, 'EXPOSED INFANT '),
(635, 0, 0, 'Female', 18.00, '1529', '', 'Pediatric Inpatient', '', 'NYAKATO EDITH', 'KEMIGISA RUTH', 'Yes', 'Negative', '2018-11-22', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '577/11/18', '', '', '2018-12-12 17:32:10', '2018-12-12 17:32:28', NULL, ''),
(636, 0, 0, 'Male', 1.50, '1564', '0784958118', 'Pediatric Inpatient', '', 'MBAMBU ANGEL', 'AMBROSE PRAISE', 'Yes', 'Negative', '2018-11-23', '1st PCR', 'A-LIS Admin', 'Unknown', 'Unknown', 'Unknown', '2018-11-22', '611/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 17:37:25', '2018-12-12 17:37:25', NULL, 'FEVER'),
(637, 0, 0, 'Female', 8.00, '11722', '0780957587', 'Nutrition', '', 'KASENDE LILIAN', 'NKWANZI RUTH', 'No', 'Unknown', '2018-10-23', 'R1', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '582/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 17:40:48', '2018-12-12 17:40:48', NULL, 'EXPOSED INFANT '),
(638, 0, 0, 'Male', 7.00, '1519', '0779788846', 'Pediatric Inpatient', '', 'AKUGIZIBWE KIHODI', 'NIWABINE JACKSON', 'Yes', 'Negative', '2018-11-22', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-19', '570/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 17:47:28', '2018-12-12 17:47:28', NULL, 'FEVER'),
(639, 0, 0, 'Male', 19.00, '1534', '0789755846', 'Pediatric Inpatient', '', 'MUSIINMENTA HARRIET', 'TWENEAMASIKO ONESMAS', 'No', 'Negative', '2018-11-22', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '569/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 17:51:48', '2018-12-12 17:51:48', NULL, 'FEVER'),
(640, 0, 0, 'Female', 8.00, '1530', '0773538068', 'Pediatric Inpatient', '', 'MASIKA JOAN', 'AINEMBABAZI JOAN', 'No', 'Negative', '2018-11-22', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '574/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 17:54:48', '2018-12-12 17:54:48', NULL, 'FEVER'),
(641, 0, 0, 'Female', 20.00, '1555', '', 'Pediatric Inpatient', '', 'MBAMBU JANE', 'BIIRA SHIVAN', 'Yes', 'Negative', '2018-11-22', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-20', '575/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 17:57:51', '2018-12-12 17:57:51', NULL, ''),
(642, 0, 0, 'Female', 12.00, '1556', '', 'Pediatric Inpatient', '', 'SURANGE FURAH', 'ZAIBU FURAHA', 'Yes', 'Unknown', '2018-11-22', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-21', '573/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 18:01:01', '2018-12-12 18:01:01', NULL, ''),
(643, 0, 0, 'Male', 13.00, '1503', '', 'Nutrition', '', 'BIIRA ELENUS', 'TUSABE FREDRICK', 'Yes', 'Negative', '2018-11-22', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-19', '568/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 18:03:49', '2018-12-12 18:03:49', NULL, ''),
(644, 0, 0, 'Male', 7.00, '1535', '0773642399', 'Pediatric Inpatient', '', 'KEMIGISA BETTY', 'MUBANGIZI MATHIUS', 'Yes', 'Unknown', '2018-11-22', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '576/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 18:06:47', '2018-12-12 18:06:47', NULL, ''),
(645, 0, 0, 'Female', 1.50, '1516', '', 'Pediatric Inpatient', '', 'KEMIGISA ROSE', 'MUSIMENTA RECHAEL', 'Yes', 'Negative', '2018-11-22', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-19', '571/11/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 18:11:16', '2018-12-12 18:11:16', NULL, ''),
(646, 0, 0, 'Male', 9.00, '2/2018/04', '', 'MBCP/eMTCT', '', 'KANSIIME JOY', 'KUGONZA MOSES', 'Yes', 'Positive', '2018-11-19', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '497/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 18:14:40', '2018-12-12 18:14:40', NULL, 'EXPOSED INFANT '),
(647, 0, 0, 'Female', 13.00, '1485', '', 'Nutrition', '', 'BUSEMBWO JOSELINE', 'NATUKUNDA SANDRA', 'Yes', 'Negative', '2018-11-19', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-11-15', '1485', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 18:17:47', '2018-12-12 18:17:47', NULL, ''),
(648, 0, 0, 'Female', 9.00, '2/2018/007', '', 'MBCP/eMTCT', '', 'KYAKYO ANNET', 'KEMBABAZI SHARON', 'Yes', 'Positive', '2018-11-19', 'R1', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '495/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 18:20:20', '2018-12-12 18:20:20', NULL, 'EXPOSED INFANT '),
(649, 0, 0, 'Male', 2.00, '8/2018/28', '0774420341', 'MBCP/eMTCT', '', 'KALINDE JOYCE', 'KIKONGE IAN', 'Yes', 'Positive', '2018-10-17', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '205/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:09:47', '2018-12-12 16:09:47', NULL, 'EXPOSED INFANT '),
(650, 0, 0, 'Female', 14.00, '8/2017/20', '', 'MBCP/eMTCT', '', 'KANGUME ANNET', 'MUSIMENTA PROVIA', 'No', 'Positive', '2018-10-17', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '206/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:13:03', '2018-12-12 16:13:03', NULL, 'EXPOSED INFANT '),
(651, 0, 0, 'Male', 13.00, '7/2017/25', '', 'MBCP/eMTCT', '', 'KYARIKUNDA ALLEN', 'RUGUMAYO', 'No', 'Positive', '2018-10-16', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '7/2017/25', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:15:30', '2018-12-12 16:15:30', NULL, 'EXPOSED INFANT '),
(652, 0, 0, 'Female', 14.00, '8/2017/7', '', 'MBCP/eMTCT', '', 'RASHIDA W', 'KEBIRUNGI NADIA', 'No', 'Positive', '2018-10-15', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '183/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:18:15', '2018-12-12 16:18:15', NULL, 'EXPOSED INFANT '),
(653, 0, 0, 'Male', 1.50, '9/2018/01', '', 'MBCP/eMTCT', '', 'NANDYOWA JANE FRANCIS', 'MUSOBOOZI PATRICK', 'Yes', 'Positive', '2018-10-15', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '180/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:21:20', '2018-12-12 16:21:20', NULL, 'EXPOSED INFANT '),
(654, 0, 0, 'Female', 12.00, '10/2017/82', '', 'MBCP/eMTCT', '', 'NYANDAGEYI FLORENCE', 'KANSIIME DAPHINE', 'No', 'Positive', '2018-10-15', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '181/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:23:31', '2018-12-12 16:23:31', NULL, 'EXPOSED INFANT '),
(655, 0, 0, 'Male', 1.50, '8/2018/26', '', 'MBCP/eMTCT', '', 'KEMIGISA YUSLA', 'ASINGWIRE ROGER', 'Yes', 'Positive', '2018-10-15', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '184/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:26:02', '2018-12-12 16:26:02', NULL, 'EXPOSED INFANT '),
(656, 0, 0, 'Female', 15.00, '6/2017/24', '', 'MBCP/eMTCT', '', 'NEEMA STELLA', 'KUSUKU', 'No', 'Positive', '2018-10-15', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '177/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:28:00', '2018-12-12 16:28:00', NULL, 'EXPOSED INFANT '),
(657, 0, 0, 'Male', 1.50, '8/2018/27', '0772660427', 'MBCP/eMTCT', '', 'NSEMERERWA JUSTINE', 'KUSEMERERWA MOSES', 'Yes', 'Positive', '2018-10-15', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '182/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:30:38', '2018-12-12 16:30:38', NULL, 'EXPOSED INFANT '),
(658, 0, 0, 'Female', 14.00, '8/2017/006', '', 'MBCP/eMTCT', '', 'TUGABIRWE SPECIOZA', 'KARUNGI', 'No', 'Positive', '2018-10-15', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '179/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:32:32', '2018-12-12 16:32:32', NULL, 'EXPOSED INFANT '),
(659, 0, 0, 'Female', 1.50, '9/2018/02', '0789269507', 'MBCP/eMTCT', '', 'KABASINGUZI ANNET', 'MURUNGI ANNA', 'Yes', 'Positive', '2018-10-15', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '178/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:37:03', '2018-12-12 16:37:03', NULL, 'EXPOSED INFANT '),
(660, 0, 0, 'Female', 16.00, '5/2017/11', '', 'MBCP/eMTCT', '', 'AKANKUNDA PHIONA', 'CLARRO MUTUMA', 'No', 'Positive', '2018-09-24', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '466/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:40:17', '2018-12-12 16:40:17', NULL, 'EXPOSED INFANT '),
(661, 0, 0, 'Male', 14.00, '8/2017/37', '', 'MBCP/eMTCT', '', 'KATUSIIME SYLVIA', 'MUJA FALY', 'No', 'Positive', '2018-10-10', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '112/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:43:14', '2018-12-12 16:43:14', NULL, 'EXPOSED INFANT '),
(662, 0, 0, 'Female', 18.00, '1149', '', 'Pediatric Inpatient', '', 'KABASINGUZI JULIET', 'KEKIBUGA DESIRE', 'No', 'Unknown', '2018-10-11', '1st PCR', 'A-LIS Admin', 'Unknown', 'Unknown', 'Unknown', '2018-10-09', '135/10/18', 'No ARVs taken at birth', '', '2018-12-12 16:46:37', '2018-12-12 16:46:37', NULL, 'FEVER'),
(663, 0, 0, 'Female', 2.00, '1205', '', 'Pediatric Inpatient', '', 'BAMANJISA NEEMA', 'KUNIHIRA KABASINGUZI', 'Yes', 'Unknown', '2018-10-18', '1st PCR', 'A-LIS Admin', 'Unknown', 'Unknown', 'Unknown', '2018-10-17', '211/10/18', 'No ARVs taken at birth', '', '2018-12-12 15:51:03', '2018-12-12 15:51:03', NULL, ''),
(664, 0, 0, 'Male', 6.00, '1213', '0774314511', 'Nutrition', '', 'TUMWESIGE BARBRA', 'MWESIGE RICHARD', 'Yes', 'Unknown', '2018-10-18', '1st PCR', 'A-LIS Admin', 'Unknown', 'Unknown', 'Unknown', '2018-10-16', '212/10/18', 'No ARVs taken at birth', '', '2018-12-12 15:54:08', '2018-12-12 15:54:08', NULL, ''),
(665, 0, 0, 'Male', 22.00, '1224', '', 'Pediatric Inpatient', '', 'KAHWA MARY', 'BALYERA DOMINIC', 'No', 'Negative', '2018-10-18', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '0000-00-00', '213/10/18', 'No ARVs taken at birth', '', '2018-12-12 15:57:55', '2018-12-12 15:57:55', NULL, ''),
(666, 0, 0, 'Female', 17.00, '1220', '', 'Nutrition', '', 'MUKESHIMANA JULIAN', 'MEDYA ESTHER', 'No', 'Negative', '2018-10-18', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-10-17', '217/10/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 16:00:31', '2018-12-12 16:00:31', NULL, ''),
(667, 0, 0, 'Female', 2.00, '8/2018/29', '', 'MBCP/eMTCT', '', 'TUHAISE MADINA', 'NANTEZA SHALUWAH', 'Yes', 'Positive', '2018-10-18', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '215/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:02:59', '2018-12-12 16:02:59', NULL, 'EXPOSED INFANT '),
(668, 0, 0, 'Male', 3.00, '1223', '0784201501', 'Pediatric Inpatient', '', 'KUGONZA GORRETI', 'MUMANYIRE VICTOR', 'Yes', 'Positive', '2018-10-18', '1st PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2018-10-18', '18/10/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 16:06:20', '2018-12-12 16:06:20', NULL, ''),
(669, 0, 0, 'Male', 12.00, '1234', '0788113812', 'Pediatric Inpatient', '', 'Unknown', 'AKANDWANAHO SCORAC', 'Yes', 'Negative', '2018-10-19', '1st PCR', 'A-LIS Admin', 'No ART', 'No ART', 'No ART', '2018-10-18', '23/10/18', 'NVP for 12 weeks for high risk infants', '', '2018-12-12 15:47:36', '2018-12-12 15:47:36', NULL, 'FEVER'),
(670, 0, 0, 'Female', 9.00, '1/2018/87', '', 'MBCP/eMTCT', '', 'KABASINGUZI MOREEN', 'BAGAYA CLARE', 'Yes', 'Positive', '2018-11-19', '2nd PCR', 'A-LIS Admin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '5002/11/18', 'Daily NVP from birth to 6 weeks', '', '2018-12-12 18:23:21', '2018-12-12 18:23:21', NULL, 'EXPOSED INFANT '),
(671, 0, 0, 'Female', 14.00, '11/2017/11', '0776637320', 'MBCP/eMTCT', '', 'KOMUHANGI SCOVIA', 'KEBIRUNGI SARAH', 'No', 'Positive', '2019-01-29', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '596/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 00:06:45', '2019-01-31 00:06:45', NULL, 'HIV EXPOSED INFANT'),
(672, 0, 0, 'Male', 1.50, '12/2018/16', '', 'MBCP/eMTCT', '', 'KUNDIIRA MOREEN', 'TUMUSIIME VICTOR', 'Yes', 'Positive', '2019-01-29', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '595/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 00:10:35', '2019-01-31 00:10:35', NULL, 'HIV EXPOSED INFANT'),
(673, 0, 0, 'Male', 1.00, '12/2018/15', '', 'MBCP/eMTCT', '', 'KENGONZI FLORENCE', 'MUJUNI PETER', 'Yes', 'Positive', '2019-01-28', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '544/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 00:13:36', '2019-01-31 00:13:36', NULL, 'HIV EXPOSED INFANT'),
(674, 0, 0, 'Female', 13.50, '12/2017/36', '0779256188', 'MBCP/eMTCT', '', 'KATUSIIME VIOLET', 'KANSIIME JACLINE', 'No', 'Positive', '2019-01-28', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '548/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 00:17:36', '2019-01-31 00:17:36', NULL, 'HIV EXPOSED INFANT'),
(675, 0, 0, 'Male', 9.00, '4/2018/34', '', 'MBCP/eMTCT', '', 'KARUNGI ANNET', 'ASINGWIRE KENETH', 'Yes', 'Positive', '2019-01-28', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '546/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 00:24:28', '2019-01-31 00:24:28', NULL, 'HIV EXPOSED INFANT'),
(676, 0, 0, 'Female', 13.50, '12/2017/61', '', 'MBCP/eMTCT', '', 'NYAKAISIKI GRACE', 'NAISANGA SHUKURAN', 'No', 'Positive', '2019-01-28', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '545/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 00:27:27', '2019-01-31 00:27:27', NULL, 'HIV EXPOSED INFANT'),
(677, 0, 0, 'Female', 10.00, '3/2018/76', '0784750487', 'MBCP/eMTCT', '', 'KOBUSINGE TEDDY', 'KOBUSINGE HARRIET', 'Yes', 'Positive', '2019-01-28', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '547/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 00:31:03', '2019-01-31 00:31:03', NULL, 'HIV EXPOSED INFANT'),
(678, 0, 0, 'Female', 14.00, '11/2017/36', '077095737', 'MBCP/eMTCT', '', 'NASSOLO BRENDA', 'TUSIIME ', 'No', 'Positive', '2019-01-23', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '447/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 00:34:31', '2019-01-31 00:34:31', NULL, 'HIV EXPOSED INFANT'),
(679, 0, 0, 'Female', 15.00, '10/2017/14', '0704775126', 'MBCP/eMTCT', '', 'KATUSABE SHARON', 'KAKYO ZAINABU', 'No', 'Positive', '2019-01-24', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '514/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 00:37:23', '2019-01-31 00:37:23', NULL, 'HIV EXPOSED INFANT'),
(680, 0, 0, 'Male', 1.50, '12/2018/14', '0773139439', 'MBCP/eMTCT', '', 'KOBUSINGE SHAMILAH', 'ASHIRAFI MARTIN', 'Yes', 'Positive', '2019-01-25', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '515/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 00:39:50', '2019-01-31 00:39:50', NULL, 'HIV EXPOSED INFANT'),
(681, 0, 0, 'Male', 14.00, '11/2017/35', '', 'MBCP/eMTCT', '', 'TUHAISE SALIMAH', 'PAPA LUKA', 'No', 'Positive', '2019-01-21', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '379/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 00:41:57', '2019-01-31 00:41:57', NULL, 'HIV EXPOSED INFANT'),
(682, 0, 0, 'Male', 1.50, '12/2018/108', '0782825413', 'MBCP/eMTCT', '', 'KARUNGI DOREEN', 'TUSINGWIRE DAN', 'Yes', 'Positive', '2019-01-21', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '380/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 00:44:35', '2019-01-31 00:44:35', NULL, 'HIV EXPOSED INFANT'),
(683, 0, 0, 'Male', 15.00, '10/2017/66', '', 'MBCP/eMTCT', '', 'KANYUNYUZI', 'OTIMU DENIS MORIS', 'No', 'Positive', '2019-01-21', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '375/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 00:48:29', '2019-01-31 00:48:29', NULL, 'HIV EXPOSED INFANT'),
(684, 0, 0, 'Male', 11.50, '2/2018/35', '', 'MBCP/eMTCT', '', 'KAJUMBA ROSEMARY', 'GAMUKAMA YEZEFU', 'No', 'Negative', '2019-01-21', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '382/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 00:51:23', '2019-01-31 00:51:23', NULL, 'HIV EXPOSED INFANT'),
(685, 0, 0, 'Male', 1.20, '12/2018/009', '', 'MBCP/eMTCT', '', 'KARUNGI MARTHA', 'MURUNGI  CHRIS', 'Yes', 'Positive', '2019-01-21', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '381/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 01:00:51', '2019-01-31 01:00:51', NULL, 'HIV EXPOSED INFANT'),
(686, 0, 0, 'Female', 9.00, '3/2018/89', '', 'MBCP/eMTCT', '', 'KATUSABE FLORENCE', 'KATUSABE FLORENCE', 'Yes', 'Positive', '2019-01-21', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '378/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 01:03:09', '2019-01-31 01:03:09', NULL, 'HIV EXPOSED INFANT'),
(687, 0, 0, 'Male', 9.00, '4/2018/30', '0784063415', 'MBCP/eMTCT', '', 'BIRUNGI SOFIA', 'ATALEMWA DAVID', 'Yes', 'Positive', '2019-01-21', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '377/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 01:05:48', '2019-01-31 01:05:48', NULL, 'HIV EXPOSED INFANT'),
(688, 0, 0, 'Female', 1.50, '12/2018/007', '', 'MBCP/eMTCT', '', 'KAHUNDE MOREEN', 'KEMIGISA MIOREEN', 'Yes', 'Positive', '2019-01-21', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '376/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 01:07:48', '2019-01-31 01:07:48', NULL, 'HIV EXPOSED INFANT'),
(689, 0, 0, 'Male', 13.00, '12/2017/29', '0789614962', 'MBCP/eMTCT', '', 'KAJOINA JANE', 'CHRIS ATUHAIRE ', 'No', 'Positive', '2019-01-24', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '420/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 01:10:26', '2019-01-31 01:10:26', NULL, 'HIV EXPOSED INFANT'),
(690, 0, 0, 'Female', 14.00, '11/2017/13', '', 'MBCP/eMTCT', '', 'KOBUSINGE ZAITUNI', 'KARUNGI FAZILAH', 'No', 'Positive', '2019-01-22', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '422/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 01:12:45', '2019-01-31 01:12:45', NULL, 'HIV EXPOSED'),
(691, 0, 0, 'Male', 1.50, '12/2018/10', '', 'MBCP/eMTCT', '', 'KIIZA GRACE', 'TUSIIME DEO', 'Yes', 'Positive', '2019-01-22', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '421/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 01:14:32', '2019-01-31 01:14:32', NULL, 'HIV EXPOSED INFANT'),
(692, 0, 0, 'Male', 2.00, '11/2018/25', '0783980483', 'MBCP/eMTCT', '', 'KANWARI MARGRET', 'DESIRE NSUNGWA ', 'Yes', 'Positive', '2019-01-22', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '418/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 01:16:53', '2019-01-31 01:16:53', NULL, 'HIV EXPOSED INFANT'),
(693, 0, 0, 'Male', 9.00, '4/2018/41', '', 'MBCP/eMTCT', '', 'KEMIGABO BEATRICE', 'BAGUMA DANIEL', 'Yes', 'Positive', '2019-01-22', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '419/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 01:18:57', '2019-01-31 01:18:57', NULL, 'HIV EXPOSED INFANT'),
(694, 0, 0, 'Female', 1.50, '12/2018/004', '0776690151', 'MBCP/eMTCT', '', 'PATIENCE CAROLYNE', 'MELISA ', 'Yes', 'Positive', '2019-01-23', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '451/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 01:21:00', '2019-01-31 01:21:00', NULL, 'HEI'),
(695, 0, 0, 'Female', 11.00, '9/2017/55', '0773889206', 'MBCP/eMTCT', '', 'KEMIGISA SARAH', 'NAMARA ABWOOLI', 'No', 'Positive', '2019-01-23', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '448/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 01:23:49', '2019-01-31 01:23:49', NULL, 'HEI'),
(696, 0, 0, 'Female', 13.00, '2155', '', 'MBCP/eMTCT', '', 'TUMUHEKI ROBINAH', 'KOBUSINGE IMMACULATE', 'Yes', 'Positive', '2019-01-23', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '432/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 01:26:52', '2019-01-31 01:26:52', NULL, 'HIV EXPOSED'),
(697, 0, 0, 'Male', 1.00, '11/2018/10', '', 'MBCP/eMTCT', '', 'TWIKIRIZE ROSE', 'TUMUSIIME JORDAN', 'Yes', 'Positive', '2019-01-03', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '030/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 01:28:44', '2019-01-31 01:28:44', NULL, 'HEI'),
(698, 0, 0, 'Male', 15.00, '20', '', 'MBCP/eMTCT', '', 'KYOMPIIRE RUTH', 'KIWANGA JULIUS', 'No', 'Positive', '2019-01-07', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '070/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 01:30:49', '2019-01-31 01:30:49', NULL, 'HEI'),
(699, 0, 0, 'Female', 7.00, '1994', '', 'Nutrition', '', 'JOYCE', 'KAYESU PATIENC', 'Yes', 'Negative', '2019-01-07', 'R1', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '048/01/19', 'No ARVs taken at birth', '', '2019-01-31 01:33:31', '2019-01-31 01:33:31', NULL, 'SAM'),
(700, 0, 0, 'Female', 16.00, '1952', '', 'Nutrition', '', 'DISHAN', 'TAKYIMWA JOVECITA', 'Yes', 'Unknown', '2019-01-03', '1st PCR', 'Ngobi Paul', 'Unknown', 'Unknown', 'Unknown', '0000-00-00', '016/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:08:40', '2019-01-31 19:08:40', NULL, 'SAM'),
(701, 0, 0, 'Male', 9.00, '4/2018/31', '0781993619', 'MBCP/eMTCT', '', 'BIRUNGI GRACE', 'TWEHEYO ISAAC', 'Yes', 'Positive', '2019-01-23', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '449/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:11:16', '2019-01-31 19:11:16', NULL, 'HEI'),
(702, 0, 0, 'Male', 1.50, '12/2018/12', '', 'MBCP/eMTCT', '', 'BASEMERA EVELYN', 'MWANGUHYA JORDAN', 'Yes', 'Positive', '2019-01-24', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '467/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:13:24', '2019-01-31 19:13:24', NULL, 'HEI'),
(703, 0, 0, 'Female', 1.50, '12/2018/13', '', 'MBCP/eMTCT', '', 'KATUSABE FILIS', 'NINSIIMA PRAISE', 'Yes', 'Positive', '2019-01-24', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '471/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:15:25', '2019-01-31 19:15:25', NULL, 'HEI'),
(704, 0, 0, 'Male', 1.50, '12/2018/11', '0756196491', 'MBCP/eMTCT', '', 'KAMULI GORRET', 'AKORA JONATHAN', 'Yes', 'Positive', '2019-01-23', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '450/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:17:24', '2019-01-31 19:17:24', NULL, 'HEI'),
(705, 0, 0, 'Male', 9.00, '4/2018/35', '', 'MBCP/eMTCT', '', 'KABALINZI JOSEPHINE', 'MUSIIMENTA', 'Yes', 'Positive', '2019-01-17', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '295/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:19:30', '2019-01-31 19:19:30', NULL, 'HEI'),
(706, 0, 0, 'Male', 14.00, '11/2017/003', '0772986918', 'MBCP/eMTCT', '', 'KEBIRUNGI YUDITA', 'TUMUSIIME DANCAN', 'No', 'Positive', '2019-01-17', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '294/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:23:34', '2019-01-31 19:23:34', NULL, 'HEI'),
(707, 0, 0, 'Female', 9.00, '3/2018/86', '', 'MBCP/eMTCT', '', 'KANSIIME IMACULATE', 'AYEBALE RINAH', 'Yes', 'Positive', '2019-01-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '291/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:26:40', '2019-01-31 19:26:40', NULL, 'HEI'),
(708, 0, 0, 'Female', 9.00, '3/2018/72', '', 'MBCP/eMTCT', '', 'KANSIIME EVE', 'NABIRYE ESTHER', 'Yes', 'Positive', '2019-01-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '295/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:29:03', '2019-01-31 19:29:03', NULL, 'HEI'),
(709, 0, 0, 'Male', 1.50, '12/2018/006', '', 'MBCP/eMTCT', '', 'KEBIRUNGI JANE', 'TUMUSIIME ', 'Yes', 'Positive', '2019-01-18', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '296/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:30:49', '2019-01-31 19:30:49', NULL, 'HEI'),
(710, 0, 0, 'Male', 14.00, '11/2017/44', '', 'MBCP/eMTCT', '', 'GUMA INNOCENT', 'GUMA INNOCENT', 'No', 'Positive', '2019-01-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '296/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:32:52', '2019-01-31 19:32:52', NULL, 'HEI'),
(711, 0, 0, 'Female', 2.00, '2021', '075949531', 'Pediatric Inpatient', '', 'NATUKUNDA MOREEN', 'MWANGUSHA KELVIN', 'Yes', 'Positive', '2019-01-18', 'R1', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2019-01-13', '253/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:36:14', '2019-01-31 19:36:14', NULL, 'SAM'),
(712, 0, 0, 'Male', 9.00, '4/2018/44', '', 'MBCP/eMTCT', '', 'TUHWERIRWE DOCUS', 'TWINOMUGISHA VICENT', 'Yes', 'Positive', '2019-01-16', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '264/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:38:17', '2019-01-31 19:38:17', NULL, 'HEI'),
(713, 0, 0, 'Male', 15.00, '10/2017/91', '', 'MBCP/eMTCT', '', 'KOBUGABE KASFA', 'MUGENYI RYAN', 'No', 'Positive', '2019-01-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '265/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:40:38', '2019-01-31 19:40:38', NULL, 'HEI'),
(714, 0, 0, 'Female', 1.00, '12/2018/005', '0778827853', 'MBCP/eMTCT', '', 'TURYAMREBA CLARISH', 'ROSE', 'Yes', 'Positive', '2019-01-16', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '265/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:43:06', '2019-01-31 19:43:06', NULL, 'HEI'),
(715, 0, 0, 'Male', 12.00, '1/2018/52', '', 'MBCP/eMTCT', '', 'KAJUMBA MOLLY', 'ALI ASABA', 'No', 'Positive', '2019-01-18', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '262/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:44:59', '2019-01-31 19:44:59', NULL, 'HEI'),
(716, 0, 0, 'Male', 6.00, '2089', '0773466768', 'Pediatric Inpatient', '', 'BIRUNGI ANNET', 'ATUHAIRE MOSES', 'Yes', 'Positive', '2019-01-16', 'R1', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '230/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:47:28', '2019-01-31 19:47:28', NULL, 'SAM'),
(717, 0, 0, 'Male', 9.00, '4/2018/40', '', 'MBCP/eMTCT', '', 'MUKONYEZI ROSE', 'MUSIMENTA WILLIAM', 'Yes', 'Positive', '2019-01-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '212/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:50:15', '2019-01-31 19:50:15', NULL, 'HEI'),
(718, 0, 0, 'Female', 9.00, '4/2018/58', '0787871669', 'MBCP/eMTCT', '', 'TWINOMUGISHA VIOLET', 'NAUME MERISHA KEMBABAZI', 'Yes', 'Positive', '2019-01-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '210/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:52:41', '2019-01-31 19:52:41', NULL, 'HEI'),
(719, 0, 0, 'Male', 9.00, '3/2018/94', '', 'MBCP/eMTCT', '', 'NKWANZI KEVINA', 'ATEGEKA DAVID', 'Yes', 'Positive', '2019-01-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '213/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:54:31', '2019-01-31 19:54:31', NULL, 'HEI'),
(720, 0, 0, 'Male', 14.00, '11/2017/003', '0772986918', 'MBCP/eMTCT', '', 'KEBIRUNGI YUDITA', 'TUMUSIIME DANCAN', 'No', 'Positive', '2019-01-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '206/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:56:28', '2019-01-31 19:56:28', NULL, 'HEI'),
(721, 0, 0, 'Male', 9.00, '3/2018/91', '', 'MBCP/eMTCT', '', 'NYAKAISIKI OLIVER', 'MUHUMUZA JOSEPH', 'Yes', 'Positive', '2019-01-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '205/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 19:58:40', '2019-01-31 19:58:40', NULL, 'HEI'),
(722, 0, 0, 'Male', 9.00, '4/2018/29', '0787344005', 'MBCP/eMTCT', '', 'KAJUMBA VIOLET', 'MUGISA OWEN', 'Yes', 'Positive', '2019-01-16', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '247/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:01:05', '2019-01-31 20:01:05', NULL, 'HEI'),
(723, 0, 0, 'Female', 14.00, '11/2017/39', '', 'MBCP/eMTCT', '', 'KIIZA ROSEMARY', 'KATUSIIME MARY', 'No', 'Positive', '2019-01-15', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '246/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:03:18', '2019-01-31 20:03:18', NULL, 'HEI'),
(724, 0, 0, 'Male', 13.50, '11/2017/42', '0787332100', 'MBCP/eMTCT', '', 'KUNIHIRA BEATRICE', 'KASIBANTE JOSEPH', 'No', 'Positive', '2019-01-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '216/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:06:07', '2019-01-31 20:06:07', NULL, 'HEI'),
(725, 0, 0, 'Male', 9.00, '3/2018/101', '', 'MBCP/eMTCT', '', 'TUMUHAIRWE AIDA', 'MUSINGUZI JOHN', 'Yes', 'Positive', '2019-01-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '217/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:08:17', '2019-01-31 20:08:17', NULL, 'HEI'),
(726, 0, 0, 'Female', 14.00, '09/2017/37', '', 'MBCP/eMTCT', '', 'KABWIJU TOPISTA', 'TUSEMERIRWE ROSE', 'No', 'Positive', '2019-01-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '218/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:10:48', '2019-01-31 20:10:48', NULL, 'HEI'),
(727, 0, 0, 'Male', 13.00, '12/2017/14', '0780110530', 'MBCP/eMTCT', '', 'KABANYORO RESTY', 'ORISHABA LAUBEN', 'No', 'Positive', '2019-01-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '209/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:14:00', '2019-01-31 20:14:00', NULL, 'HEI'),
(728, 0, 0, 'Female', 1.50, '12/2018/004', '077669015', 'MBCP/eMTCT', '', 'PATIENCE CAROLYN', 'MELISA', 'Yes', 'Positive', '2019-01-14', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '207/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:16:08', '2019-01-31 20:16:08', NULL, 'HEI'),
(729, 0, 0, 'Male', 15.00, '10/2017/92', '', 'MBCP/eMTCT', '', 'MATONO VENNY', 'ISAYA ', 'No', 'Positive', '2019-01-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '208/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:19:14', '2019-01-31 20:19:14', NULL, 'HEI'),
(730, 0, 0, 'Female', 9.00, '4/2018/26', '', 'MBCP/eMTCT', '', 'KOMUHEMBO BEATRACE', 'KASEMBO RINAH', 'Yes', 'Positive', '2019-01-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '214/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:21:08', '2019-01-31 20:21:08', NULL, 'HEI'),
(731, 0, 0, 'Female', 1.50, '11/2018/24', '', 'MBCP/eMTCT', '', 'BIRUNGI KASFA', 'JANET MIRACLE', 'Yes', 'Positive', '2019-01-15', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '202/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:25:04', '2019-01-31 20:25:04', NULL, 'HEI'),
(732, 0, 0, 'Male', 1.50, '11/2018/23', '0774708570', 'MBCP/eMTCT', '', 'BIRUNGI REHEMA', 'MURUNGI RAYAN', 'Yes', 'Positive', '2019-01-14', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '203/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:27:28', '2019-01-31 20:27:28', NULL, 'HEI'),
(733, 0, 0, 'Female', 2.50, '11/2018/22', '0784992200', 'MBCP/eMTCT', '', 'MONICA HOPE', 'ALINDA BLESSING', 'Yes', 'Positive', '2019-01-14', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '204/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:30:08', '2019-01-31 20:30:08', NULL, 'HEI'),
(734, 0, 0, 'Male', 9.00, '3/2018/90', '', 'MBCP/eMTCT', '', 'AKUGIZIBWE ANNET', 'TALEMWA INNOCENT', 'Yes', 'Positive', '2019-01-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '214/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:31:57', '2019-01-31 20:31:57', NULL, 'HEI'),
(735, 0, 0, 'Female', 9.00, '4/2018/28', '', 'MBCP/eMTCT', '', 'KOMUHANGI TOPISTA', 'KAMULI SYLVIA', 'No', 'Positive', '2019-01-14', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '215/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:34:02', '2019-01-31 20:34:02', NULL, 'HEI'),
(736, 0, 0, 'Male', 13.00, '2077', '', 'Nutrition', '', 'JENIFER', 'MOGANI STEVEN', 'No', 'Positive', '2019-01-14', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '174/01/19', '', '', '2019-01-31 20:37:41', '2019-01-31 20:38:53', NULL, 'HEI'),
(737, 0, 0, 'Male', 6.00, '2089', '', 'Pediatric Inpatient', '', 'BIRUNGI ANNET', 'ATUHAIRE MOSES', 'Yes', 'Positive', '2019-01-14', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '2019-01-12', '173/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:40:34', '2019-01-31 20:40:34', NULL, 'SAM'),
(738, 0, 0, 'Female', 12.00, '021', '0772832588', 'Nutrition', '', 'NANYONDO RESTY', 'NANYONDO FARIDAH', 'Yes', 'Negative', '2019-01-21', 'R1', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '0000-00-00', '171/01/19', 'Unknown', '', '2019-01-31 20:43:03', '2019-01-31 20:45:31', NULL, 'SAM'),
(739, 0, 0, 'Female', 13.00, '2031', '', 'Nutrition', '', 'RUTH', 'KIRABO PHIONA', 'No', 'Negative', '2019-01-10', 'R1', 'Ngobi Paul', 'No ART', 'No ART', 'No ART', '2019-01-09', '145/01/19', 'NVP for 12 weeks for high risk infants', '', '2019-01-31 20:45:14', '2019-01-31 20:45:14', NULL, 'SAM'),
(740, 0, 0, 'Female', 1.50, '11/2018/21', '', 'MBCP/eMTCT', '', 'KABACWEZI GRACE', 'KOMUGISA ANITA', 'Yes', 'Positive', '2019-01-10', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '153/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:47:59', '2019-01-31 20:47:59', NULL, 'HEI'),
(741, 0, 0, 'Female', 1.50, '12/2018/003', '', 'MBCP/eMTCT', '', 'KOMUHENDO ANNET', 'NSIMENTA PRILLAR', 'Yes', 'Positive', '2019-01-10', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '151/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 20:50:04', '2019-01-31 20:50:04', NULL, 'HEI'),
(742, 0, 0, 'Female', 9.50, '3/2018/98', '', 'MBCP/eMTCT', '', 'KWIKIRIZA MARY', 'IHUNDE MABLE', 'Yes', 'Positive', '2019-01-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '129/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 21:01:23', '2019-01-31 21:01:23', NULL, 'HEI'),
(743, 0, 0, 'Male', 1.50, '11/2018/19', '07850304937', 'MBCP/eMTCT', '', 'KUNIHIRA CONSOLTAE', 'MUSINGUZI DAN', 'Yes', 'Positive', '2019-01-09', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '136/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 22:00:45', '2019-01-31 22:00:45', NULL, 'HEI'),
(744, 0, 0, 'Male', 1.00, '12/2018/001', '', 'MBCP/eMTCT', '', 'KYAKYO MARIUM', 'RUYONGA PATRICK', 'Yes', 'Positive', '2019-01-09', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '132/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 22:02:32', '2019-01-31 22:02:32', NULL, 'HEI'),
(745, 0, 0, 'Male', 14.00, '11/2017/37', '0785538870', 'MBCP/eMTCT', '', 'ASIIMWE MOREEN', 'KASIITA SHAGE DERIS', 'No', 'Positive', '2019-01-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '133/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 22:04:42', '2019-01-31 22:04:42', NULL, 'HEI');
INSERT INTO `poc_tables` (`id`, `facility_id`, `district_id`, `gender`, `age`, `exp_no`, `caretaker_number`, `entry_point`, `other_entry_point`, `mother_name`, `infant_name`, `breastfeeding_status`, `mother_hiv_status`, `collection_date`, `pcr_level`, `created_by`, `pmtct_antenatal`, `pmtct_delivery`, `pmtct_postnatal`, `admission_date`, `sample_id`, `infant_pmtctarv`, `mother_pmtctarv`, `created_at`, `updated_at`, `deleted_at`, `provisional_diagnosis`) VALUES
(746, 0, 0, 'Male', 9.00, '3/2018/93', '', 'MBCP/eMTCT', '', 'KABAKYA OLIVER', 'AMANYIRE JOHN', 'Yes', 'Positive', '2019-01-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '135/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 22:06:36', '2019-01-31 22:06:36', NULL, 'HEI'),
(747, 0, 0, 'Male', 9.00, '3/2018/85', '', 'MBCP/eMTCT', '', 'KYOMUGISHA MASTULA', 'MWEBAMBAZI ASIRAF', 'Yes', 'Positive', '2019-01-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '126/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 22:08:30', '2019-01-31 22:08:30', NULL, 'HEI'),
(748, 0, 0, 'Male', 15.00, '10/2017/72', '0783604655', 'MBCP/eMTCT', '', 'KABESEZI JANET', 'MUSIIME DAVID', 'No', 'Positive', '2019-01-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '127/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 22:10:17', '2019-01-31 22:10:17', NULL, 'HEI'),
(749, 0, 0, 'Female', 11.00, '1/2018/65', '', 'MBCP/eMTCT', '', 'KANSIIME BRENDA', 'NAMARA FAVOUR', 'Yes', 'Positive', '2019-01-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '137/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-01-31 22:12:06', '2019-01-31 22:12:06', NULL, 'HEI'),
(750, 0, 0, 'Male', 9.50, '03/2018/75', '', 'MBCP/eMTCT', '', 'KAJUMBA AGNES', 'TUMWINE MARK', 'No', 'Positive', '2019-01-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '128/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-01 17:53:11', '2019-02-01 17:53:11', NULL, 'HEI'),
(751, 0, 0, 'Male', 1.20, '12/2018/002', '', 'MBCP/eMTCT', '', 'KEMIGABO ROSE', 'MUJUNI SIGIRENDA', 'Yes', 'Positive', '2019-01-09', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '134/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-01 17:57:00', '2019-02-01 17:57:00', NULL, 'HEI'),
(752, 0, 0, 'Female', 14.00, '11/2017/07', '0784707250', 'MBCP/eMTCT', '', 'BIRUNGI TEOPIST', 'KANSIIME MERCY', 'No', 'Positive', '2019-01-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '131/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-01 17:58:39', '2019-02-01 17:58:39', NULL, 'HEI'),
(753, 0, 0, 'Female', 9.00, '3/2018/83', '', 'MBCP/eMTCT', '', 'KATUSIIME HARRIET', 'KEBIRUNGI EDITH', 'Yes', 'Positive', '2019-01-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '130/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-01 18:00:19', '2019-02-01 18:00:19', NULL, 'HEI'),
(754, 0, 0, 'Male', 16.00, '031', '', 'Pediatric Inpatient', '', 'NYAKATO SARAH', 'TWINAMASIKO MEDARD', 'No', 'Positive', '2019-01-09', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '104/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-01 18:02:54', '2019-02-01 18:02:54', NULL, 'SAM'),
(755, 0, 0, 'Male', 2.00, '11/2018/18', '0788432762', 'MBCP/eMTCT', '', 'KAQUEEN DOREEN', 'AHAISIBWE JORDAN', 'Yes', 'Positive', '2019-01-08', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '098/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-01 18:04:41', '2019-02-01 18:04:41', NULL, 'HEI'),
(756, 0, 0, 'Female', 14.00, '9/2017/21', '', 'MBCP/eMTCT', '', 'KUNIHIRA ROSEMARY', 'MBABAZI BEATRACE', 'No', 'Positive', '2019-01-08', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '196/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-02 01:52:05', '2019-02-02 01:52:05', NULL, 'HEI'),
(757, 0, 0, 'Female', 6.00, '6/2018/40', '', 'MBCP/eMTCT', '', 'ATUHAIRWE PROMISE', 'NATUMANYA PROSPER', 'Yes', 'Positive', '2019-01-08', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '11/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-02 01:53:52', '2019-02-02 01:53:52', NULL, 'HEI'),
(758, 0, 0, 'Male', 11.00, '11/2018/13', '', 'MBCP/eMTCT', '', 'KABASINGUZI STELLA', 'KISEMBO ERICK', 'Yes', 'Positive', '2019-01-08', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '95/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-02 01:55:33', '2019-02-02 01:55:33', NULL, 'HEI'),
(759, 0, 0, 'Male', 1.50, '11/2018/17', '', 'MBCP/eMTCT', '', 'KOBUSINGE PHIONA', 'BUSINGE JONATHAN', 'Yes', 'Positive', '2019-01-08', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '111/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-02 01:57:13', '2019-02-02 01:57:13', NULL, 'HEI'),
(760, 0, 0, 'Male', 17.00, '9/2017/61', '', 'MBCP/eMTCT', '', 'KABACWEZI GLADYS', 'TWESIGE DAN', 'No', 'Positive', '2019-01-07', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '75/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-02 01:59:04', '2019-02-02 01:59:04', NULL, 'HEI'),
(761, 0, 0, 'Male', 9.00, '3/2018/81', '', 'MBCP/eMTCT', '', 'KOMUHIMBO MAGRET', 'WILSON ALLELLUIA', 'Yes', 'Positive', '2019-01-07', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '76/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-02 02:00:53', '2019-02-02 02:00:53', NULL, 'HEI'),
(762, 0, 0, 'Male', 1.00, '11/2018/15', '', 'MBCP/eMTCT', '', 'KUNIHIRA', 'MURUNGI JOSHUA', 'Yes', 'Positive', '2019-01-07', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '88/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-02 02:02:32', '2019-02-02 02:02:32', NULL, 'HEI'),
(763, 0, 0, 'Male', 1.50, '11/2018/16', '', 'MBCP/eMTCT', '', 'KARUNGI BEATRACE', 'MWESIGE MOSES', 'Yes', 'Positive', '2019-01-07', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '77/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-02 02:04:02', '2019-02-02 02:04:02', NULL, 'HEI'),
(764, 0, 0, 'Male', 9.00, '4/2018/27', '', 'MBCP/eMTCT', '', 'KUNIHIRA HARRIET', 'KASAIJA MOSES', 'Yes', 'Positive', '2019-01-07', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '79/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-02 02:05:41', '2019-02-02 02:05:41', NULL, 'HEI'),
(765, 0, 0, 'Male', 14.00, '10/2017/89', '', 'MBCP/eMTCT', '', 'KOBUSINGE MOLLY', 'TIMOTHY', 'No', 'Positive', '2019-01-07', '2nd PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '78/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-02 02:07:27', '2019-02-02 02:07:27', NULL, 'HEI'),
(766, 0, 0, 'Female', 1.50, '11/2018/20', '', 'MBCP/eMTCT', '', 'KAJUMBA SLYVIA', 'KATUSIIME ANNA', 'Yes', 'Positive', '2019-01-10', '1st PCR', 'Ngobi Paul', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '150/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-02 02:09:21', '2019-02-02 02:09:21', NULL, 'HEI'),
(767, 0, 0, 'Male', 7.00, '2275', '', 'Pediatric Inpatient', '', 'SANTANA MWAOMBI', 'MWANGAZII DERRICK', 'No', 'Unknown', '2019-01-29', 'R1', 'Flavia Amongin', 'Unknown', 'Unknown', 'Unknown', '2019-01-28', '572/01/19', 'No ARVs taken at birth', '', '2019-02-05 22:40:23', '2019-02-05 22:40:23', NULL, ''),
(768, 0, 0, 'Male', 1.00, '12/2018/19', '', 'MBCP/eMTCT', '', 'KABANYONZA MONICA', 'ODORA JORAM', 'Yes', 'Positive', '2019-01-30', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '623/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 22:43:10', '2019-02-05 22:43:10', NULL, ''),
(769, 0, 0, 'Male', 1.00, '12/2018/20', '0750434664', 'MBCP/eMTCT', '', 'KOMUHIMBO SHARONE', 'RWAMBA DAVID', 'Yes', 'Positive', '2019-01-30', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '622/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 22:44:48', '2019-02-05 22:44:48', NULL, ''),
(770, 0, 0, 'Female', 1.00, '12/2018/18', '', 'MBCP/eMTCT', '', 'KAHUBYO DAPHINE', 'MBABAZI VICKY', 'Yes', 'Positive', '2019-01-30', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '624/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 22:46:12', '2019-02-05 22:46:12', NULL, ''),
(771, 0, 0, 'Male', 7.00, '', '', 'MBCP/eMTCT', '', 'NYAKATO BEATRICE', 'HABIBU ATEGEKA', 'No', 'Positive', '2019-01-30', '2nd PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '626/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 22:48:04', '2019-02-05 22:48:04', NULL, ''),
(772, 0, 0, 'Male', 15.00, '10/2017/001', '', 'MBCP/eMTCT', '', 'BASEMERA GLADYS', 'MUGISA TIMOTHY', 'No', 'Positive', '2019-01-30', '2nd PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '627/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 22:49:46', '2019-02-05 22:49:46', NULL, ''),
(773, 0, 0, 'Male', 1.00, '12/2018/21', '0771015298', 'MBCP/eMTCT', '', 'KEBIRUNGI BEATRICE', 'ALINAITWE JACKSON', 'Yes', 'Positive', '2019-01-31', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '653/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 22:51:18', '2019-02-05 22:51:18', NULL, ''),
(774, 0, 0, 'Male', 1.00, '12/2018/17', '', 'MBCP/eMTCT', '', 'KANSIIME JULIET', 'KASAIJA CHRIS', 'Yes', 'Positive', '2019-01-30', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '625/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 22:52:45', '2019-02-05 22:52:45', NULL, ''),
(775, 0, 0, 'Female', 14.00, '9/2017/38', '', 'MBCP/eMTCT', '', 'KABAHWIJU TOPISTA', 'TUSEMERIRE ROSE', 'No', 'Positive', '2019-02-01', '2nd PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '017/02/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 22:54:19', '2019-02-05 22:54:19', NULL, ''),
(776, 0, 0, 'Female', 1.00, '11/2018/20', '0773985198', 'MBCP/eMTCT', '', 'KAJUMBO SYLIVIA', 'KATUSIIME ANNA', 'Yes', 'Positive', '2019-01-31', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '652/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 22:55:56', '2019-02-05 22:55:56', NULL, ''),
(777, 0, 0, 'Female', 1.00, '12/2018/23', '0782258904', 'MBCP/eMTCT', '', 'KEBISEMBO TEDDY', 'KOBUGABE BETH', 'Yes', 'Positive', '2019-02-04', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '053/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 22:58:13', '2019-02-05 22:58:13', NULL, ''),
(778, 0, 0, 'Male', 9.00, '4/2018/37', '0781656542', 'MBCP/eMTCT', '', 'NYAKATO JUDITH', 'IAN TREVICE SSEMIYABA', 'Yes', 'Positive', '2019-02-04', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '052/01/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 22:59:49', '2019-02-05 22:59:49', NULL, ''),
(779, 0, 0, 'Female', 9.00, '', '', 'MBCP/eMTCT', '', 'TUSIIME AISHA', 'JESCA', 'Yes', 'Positive', '2019-02-04', '2nd PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '051/02/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 23:00:51', '2019-02-05 23:00:51', NULL, ''),
(780, 0, 0, 'Female', 1.00, '12/2018/22', '0758474782', 'MBCP/eMTCT', '', 'KEMIGIISHA RUTH', 'ATUHIRE ANGELIGHT', 'Yes', 'Positive', '2019-02-04', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '058/02/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 23:54:57', '2019-02-05 23:54:57', NULL, ''),
(781, 0, 0, 'Male', 13.00, '12/2017/71', '', 'MBCP/eMTCT', '', 'KAKWEZI  RASHIDA', 'KAKAMA IKIRA', 'No', 'Positive', '2019-02-04', '2nd PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '059/02/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 23:56:24', '2019-02-05 23:56:24', NULL, ''),
(782, 0, 0, 'Male', 9.00, '', '', 'MBCP/eMTCT', '', 'KOBUSINGE ALICE', 'TUMWEBAZE JOSEPH', 'Yes', 'Positive', '2019-02-04', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '055/02/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 23:57:41', '2019-02-05 23:57:41', NULL, ''),
(783, 0, 0, 'Male', 1.00, '', '0779501081', 'MBCP/eMTCT', '', 'ZAWEDDE AGNES', 'NDAWULA SHAFIQ', 'Yes', 'Positive', '2019-02-04', '1st PCR', 'Flavia Amongin', 'Lifelong ART', 'Lifelong ART', 'Lifelong ART', '0000-00-00', '056/02/19', 'Daily NVP from birth to 6 weeks', '', '2019-02-05 23:58:55', '2019-02-05 23:58:55', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `pre_analytic_specimen_rejections`
--

CREATE TABLE `pre_analytic_specimen_rejections` (
  `id` int(10) UNSIGNED NOT NULL,
  `specimen_id` int(10) UNSIGNED NOT NULL,
  `rejected_by` int(10) UNSIGNED NOT NULL,
  `rejection_reason_id` int(10) UNSIGNED DEFAULT NULL,
  `reject_explained_to` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_rejected` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int(10) UNSIGNED NOT NULL,
  `commodity_id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `batch_no` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(10) UNSIGNED NOT NULL,
  `sample_obtainer` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `cadre_obtainer` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `sample_date` date NOT NULL,
  `sample_time` timestamp NULL DEFAULT NULL,
  `time_dispatch` timestamp NULL DEFAULT NULL,
  `storage_condition` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `transport_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `referral_reason` int(10) UNSIGNED NOT NULL,
  `priority_specimen` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `person` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contacts` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_reasons`
--

CREATE TABLE `referral_reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rejection_reasons`
--

CREATE TABLE `rejection_reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rejection_reasons`
--

INSERT INTO `rejection_reasons` (`id`, `reason`) VALUES
(1, 'Inadequate sample volume'),
(2, 'Haemolysed sample'),
(3, 'Specimen without lab request form'),
(4, 'No test ordered on  lab request form of sample'),
(5, 'No sample label or identifier'),
(6, 'Wrong sample label'),
(7, 'Unclear sample label'),
(8, 'Sample in wrong container'),
(9, 'Damaged/broken/leaking sample container'),
(10, 'Too old sample'),
(11, 'Date of sample collection not specified'),
(12, 'Time of sample collection not specified'),
(13, 'Improper transport media'),
(14, 'Sample type unacceptable for required test'),
(15, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `report_diseases`
--

CREATE TABLE `report_diseases` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_type_id` int(10) UNSIGNED NOT NULL,
  `disease_id` int(10) UNSIGNED NOT NULL,
  `result_interpretation_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `report_diseases`
--

INSERT INTO `report_diseases` (`id`, `test_type_id`, `disease_id`, `result_interpretation_id`) VALUES
(1, 2, 1, NULL),
(2, 7, 2, NULL),
(3, 18, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `result_interpretations`
--

CREATE TABLE `result_interpretations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `result_interpretations`
--

INSERT INTO `result_interpretations` (`id`, `name`) VALUES
(1, 'High'),
(2, 'Normal'),
(3, 'Low'),
(4, 'HGB<8'),
(5, 'HGB≥8'),
(6, 'Positive'),
(7, 'Negative');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', NULL, '2018-03-17 18:35:14', '2018-03-17 18:35:14'),
(2, 'Technologist', NULL, '2018-03-17 18:35:14', '2018-03-17 18:35:14'),
(3, 'Receptionist', NULL, '2018-03-17 18:35:14', '2018-03-17 18:35:14'),
(4, 'Lab Tech', '', '2018-03-20 19:05:53', '2018-03-20 19:05:53'),
(5, 'CLINICIAN', '', '2018-03-21 17:50:31', '2018-03-21 17:50:31'),
(6, 'NURSES', '', '2018-03-22 18:56:20', '2018-03-22 18:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `specimens`
--

CREATE TABLE `specimens` (
  `id` int(10) UNSIGNED NOT NULL,
  `specimen_type_id` int(10) UNSIGNED NOT NULL,
  `specimen_status_id` int(10) UNSIGNED NOT NULL DEFAULT '2',
  `accepted_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `referral_id` int(10) UNSIGNED DEFAULT NULL,
  `time_collected` timestamp NULL DEFAULT NULL,
  `time_accepted` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specimens`
--

INSERT INTO `specimens` (`id`, `specimen_type_id`, `specimen_status_id`, `accepted_by`, `referral_id`, `time_collected`, `time_accepted`) VALUES
(1, 22, 2, 1, NULL, '2019-03-21 14:20:00', '2019-03-21 14:20:00'),
(2, 22, 2, 1, NULL, '2019-03-21 14:23:00', '2019-03-21 14:23:00'),
(3, 23, 2, 1, NULL, '2019-03-26 08:30:00', '2019-03-26 08:40:00'),
(4, 13, 2, 1, NULL, '2019-03-26 08:30:00', '2019-03-26 08:40:00'),
(5, 13, 2, 11, NULL, '2019-03-26 09:00:00', '2019-03-26 09:20:00'),
(6, 23, 2, 1, NULL, '2019-03-26 11:32:00', '2019-03-26 11:32:00'),
(7, 3, 2, 10, NULL, '2019-03-27 09:30:00', '2019-03-27 10:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `specimen_statuses`
--

CREATE TABLE `specimen_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specimen_statuses`
--

INSERT INTO `specimen_statuses` (`id`, `name`) VALUES
(1, 'specimen-not-collected'),
(2, 'specimen-accepted'),
(3, 'specimen-rejected');

-- --------------------------------------------------------

--
-- Table structure for table `specimen_types`
--

CREATE TABLE `specimen_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specimen_types`
--

INSERT INTO `specimen_types` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ascitic Tap', NULL, NULL, '2013-09-27 23:51:18', '2013-09-27 23:51:18'),
(2, 'Aspirate', NULL, NULL, '2013-09-27 23:51:18', '2013-09-27 23:51:18'),
(3, 'CSF', NULL, NULL, '2013-09-27 23:51:18', '2013-09-27 23:51:18'),
(4, 'Dried Blood Spot', NULL, NULL, '2013-09-27 23:51:18', '2013-09-27 23:51:18'),
(5, 'High Vaginal Swab', NULL, NULL, '2013-09-27 23:51:18', '2013-09-27 23:51:18'),
(6, 'Nasal Swab', NULL, NULL, '2013-09-27 23:51:18', '2013-09-27 23:51:18'),
(7, 'Plasma', NULL, NULL, '2013-09-27 23:51:18', '2013-09-27 23:51:18'),
(8, 'Plasma EDTA', NULL, NULL, '2013-09-27 23:51:18', '2013-09-27 23:51:18'),
(9, 'Pleural Tap', NULL, NULL, '2013-09-27 23:51:18', '2013-09-27 23:51:18'),
(10, 'Pus Swab', NULL, NULL, '2013-09-27 23:51:18', '2013-09-27 23:51:18'),
(11, 'Rectal Swab', NULL, NULL, '2013-09-27 23:51:18', '2013-09-27 23:51:18'),
(12, 'Semen', NULL, NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(13, 'Serum', NULL, NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(14, 'Skin', NULL, NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(15, 'Vomitus', NULL, NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(16, 'Stool', NULL, NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(17, 'Synovial Fluid', NULL, NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(18, 'Throat Swab', NULL, NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(19, 'Urethral Smear', NULL, NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(20, 'Urine', '', NULL, '2013-09-27 23:51:19', '2017-07-23 10:35:51'),
(21, 'Vaginal Smear', NULL, NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(22, 'Water', NULL, NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(23, 'Whole Blood', NULL, NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(24, 'Sputum', NULL, NULL, '2013-09-27 23:51:38', '2013-09-27 23:51:38'),
(25, 'Blood', '', NULL, '2017-07-12 12:01:17', '2017-07-12 12:01:17'),
(26, 'HVS', '', NULL, '2017-07-18 09:23:21', '2017-07-18 09:23:21'),
(27, 'SWAB', '', NULL, '2017-11-18 11:55:08', '2017-11-18 11:55:08'),
(28, 'Biopsy', '', NULL, '2017-12-07 14:57:20', '2017-12-07 14:57:20'),
(29, 'DBS', '', NULL, '2017-12-07 15:07:08', '2017-12-07 15:07:08'),
(30, 'QC', 'Quality Control (QC)', NULL, '2018-02-02 11:35:10', '2018-02-02 11:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `physical_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testtype_measures`
--

CREATE TABLE `testtype_measures` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_type_id` int(10) UNSIGNED NOT NULL,
  `measure_id` int(10) UNSIGNED NOT NULL,
  `ordering` tinyint(4) DEFAULT NULL,
  `nesting` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testtype_measures`
--

INSERT INTO `testtype_measures` (`id`, `test_type_id`, `measure_id`, `ordering`, `nesting`) VALUES
(2, 3, 25, NULL, NULL),
(3, 3, 26, NULL, NULL),
(29, 7, 52, NULL, NULL),
(30, 8, 53, NULL, NULL),
(31, 9, 54, NULL, NULL),
(32, 10, 55, NULL, NULL),
(33, 11, 56, NULL, NULL),
(34, 12, 57, NULL, NULL),
(35, 13, 58, NULL, NULL),
(38, 22, 67, NULL, NULL),
(39, 22, 68, NULL, NULL),
(40, 22, 69, NULL, NULL),
(41, 22, 70, NULL, NULL),
(42, 22, 71, NULL, NULL),
(43, 22, 72, NULL, NULL),
(44, 22, 73, NULL, NULL),
(45, 22, 74, NULL, NULL),
(46, 22, 75, NULL, NULL),
(47, 22, 76, NULL, NULL),
(48, 22, 77, NULL, NULL),
(49, 22, 78, NULL, NULL),
(50, 22, 79, NULL, NULL),
(51, 22, 80, NULL, NULL),
(52, 22, 81, NULL, NULL),
(53, 22, 82, NULL, NULL),
(54, 22, 83, NULL, NULL),
(55, 22, 84, NULL, NULL),
(56, 22, 85, NULL, NULL),
(57, 22, 86, NULL, NULL),
(58, 22, 87, NULL, NULL),
(59, 22, 88, NULL, NULL),
(60, 22, 89, NULL, NULL),
(61, 22, 90, NULL, NULL),
(73, 19, 97, NULL, NULL),
(81, 33, 102, NULL, NULL),
(83, 24, 92, NULL, NULL),
(88, 1, 1, NULL, NULL),
(93, 25, 93, NULL, NULL),
(94, 34, 109, NULL, NULL),
(97, 4, 27, NULL, NULL),
(98, 30, 99, NULL, NULL),
(99, 29, 98, NULL, NULL),
(102, 32, 101, NULL, NULL),
(103, 35, 110, NULL, NULL),
(104, 36, 111, NULL, NULL),
(105, 14, 59, NULL, NULL),
(159, 26, 112, NULL, NULL),
(160, 26, 113, NULL, NULL),
(161, 26, 114, NULL, NULL),
(162, 26, 115, NULL, NULL),
(163, 26, 116, NULL, NULL),
(164, 26, 117, NULL, NULL),
(165, 26, 118, NULL, NULL),
(166, 26, 119, NULL, NULL),
(170, 23, 91, NULL, NULL),
(171, 31, 100, NULL, NULL),
(172, 39, 126, NULL, NULL),
(173, 27, 95, NULL, NULL),
(255, 41, 131, NULL, NULL),
(269, 43, 133, NULL, NULL),
(270, 42, 132, NULL, NULL),
(271, 45, 136, NULL, NULL),
(272, 15, 60, NULL, NULL),
(274, 46, 137, NULL, NULL),
(275, 47, 138, NULL, NULL),
(276, 28, 139, NULL, NULL),
(277, 28, 140, NULL, NULL),
(278, 28, 141, NULL, NULL),
(279, 28, 96, NULL, NULL),
(280, 28, 104, NULL, NULL),
(284, 18, 142, NULL, NULL),
(285, 37, 120, NULL, NULL),
(286, 37, 121, NULL, NULL),
(287, 37, 122, NULL, NULL),
(291, 38, 123, NULL, NULL),
(292, 38, 124, NULL, NULL),
(293, 38, 125, NULL, NULL),
(294, 48, 144, NULL, NULL),
(295, 49, 145, NULL, NULL),
(315, 50, 146, NULL, NULL),
(316, 50, 147, NULL, NULL),
(317, 50, 148, NULL, NULL),
(318, 50, 149, NULL, NULL),
(319, 50, 150, NULL, NULL),
(320, 50, 151, NULL, NULL),
(321, 50, 152, NULL, NULL),
(324, 52, 154, NULL, NULL),
(326, 54, 156, NULL, NULL),
(353, 55, 158, NULL, NULL),
(354, 5, 28, NULL, NULL),
(355, 5, 29, NULL, NULL),
(356, 5, 30, NULL, NULL),
(357, 5, 31, NULL, NULL),
(358, 5, 32, NULL, NULL),
(359, 5, 33, NULL, NULL),
(360, 5, 34, NULL, NULL),
(361, 5, 35, NULL, NULL),
(362, 5, 36, NULL, NULL),
(363, 5, 37, NULL, NULL),
(364, 5, 129, NULL, NULL),
(365, 5, 130, NULL, NULL),
(366, 5, 157, NULL, NULL),
(368, 40, 127, NULL, NULL),
(370, 56, 160, NULL, NULL),
(372, 21, 159, NULL, NULL),
(375, 51, 153, NULL, NULL),
(376, 51, 161, NULL, NULL),
(377, 53, 155, NULL, NULL),
(378, 57, 162, NULL, NULL),
(379, 57, 163, NULL, NULL),
(380, 16, 143, NULL, NULL),
(381, 17, 103, NULL, NULL),
(388, 6, 46, NULL, NULL),
(389, 6, 47, NULL, NULL),
(390, 6, 48, NULL, NULL),
(391, 6, 49, NULL, NULL),
(392, 6, 50, NULL, NULL),
(393, 6, 51, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testtype_specimentypes`
--

CREATE TABLE `testtype_specimentypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_type_id` int(10) UNSIGNED NOT NULL,
  `specimen_type_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testtype_specimentypes`
--

INSERT INTO `testtype_specimentypes` (`id`, `test_type_id`, `specimen_type_id`) VALUES
(383, 1, 23),
(19, 2, 16),
(2, 3, 23),
(442, 4, 13),
(443, 4, 23),
(819, 5, 20),
(985, 6, 1),
(986, 6, 2),
(987, 6, 3),
(988, 6, 12),
(989, 6, 17),
(10, 7, 13),
(11, 8, 23),
(12, 9, 23),
(13, 10, 23),
(14, 11, 23),
(15, 12, 13),
(16, 13, 20),
(530, 14, 7),
(531, 14, 13),
(621, 15, 7),
(622, 15, 13),
(623, 15, 23),
(927, 16, 1),
(928, 16, 2),
(930, 16, 3),
(931, 16, 4),
(932, 16, 5),
(934, 16, 6),
(935, 16, 7),
(936, 16, 8),
(937, 16, 9),
(938, 16, 10),
(940, 16, 11),
(941, 16, 12),
(942, 16, 13),
(943, 16, 14),
(952, 16, 15),
(945, 16, 16),
(947, 16, 17),
(948, 16, 18),
(949, 16, 19),
(950, 16, 20),
(951, 16, 21),
(953, 16, 22),
(954, 16, 23),
(944, 16, 24),
(929, 16, 25),
(933, 16, 26),
(946, 16, 27),
(939, 16, 30),
(955, 17, 1),
(956, 17, 2),
(957, 17, 3),
(958, 17, 4),
(959, 17, 5),
(961, 17, 6),
(962, 17, 7),
(963, 17, 8),
(964, 17, 9),
(965, 17, 10),
(966, 17, 11),
(967, 17, 12),
(968, 17, 13),
(969, 17, 14),
(977, 17, 15),
(970, 17, 16),
(972, 17, 17),
(973, 17, 18),
(974, 17, 19),
(975, 17, 20),
(976, 17, 21),
(978, 17, 22),
(979, 17, 23),
(960, 17, 26),
(971, 17, 27),
(722, 18, 1),
(723, 18, 2),
(724, 18, 3),
(725, 18, 4),
(726, 18, 5),
(728, 18, 6),
(729, 18, 7),
(730, 18, 8),
(731, 18, 9),
(732, 18, 10),
(733, 18, 11),
(734, 18, 12),
(735, 18, 13),
(736, 18, 14),
(743, 18, 15),
(737, 18, 16),
(738, 18, 17),
(739, 18, 18),
(740, 18, 19),
(741, 18, 20),
(742, 18, 21),
(744, 18, 22),
(745, 18, 23),
(727, 18, 26),
(270, 19, 1),
(271, 19, 2),
(272, 19, 3),
(273, 19, 4),
(274, 19, 5),
(275, 19, 6),
(276, 19, 7),
(277, 19, 8),
(278, 19, 9),
(279, 19, 10),
(280, 19, 11),
(281, 19, 12),
(282, 19, 13),
(283, 19, 14),
(291, 19, 15),
(285, 19, 16),
(286, 19, 17),
(287, 19, 18),
(288, 19, 19),
(289, 19, 20),
(290, 19, 21),
(292, 19, 22),
(293, 19, 23),
(284, 19, 24),
(508, 20, 1),
(509, 20, 2),
(510, 20, 3),
(511, 20, 4),
(512, 20, 5),
(513, 20, 6),
(514, 20, 7),
(515, 20, 8),
(516, 20, 9),
(517, 20, 10),
(518, 20, 11),
(519, 20, 12),
(520, 20, 13),
(521, 20, 14),
(527, 20, 15),
(522, 20, 16),
(523, 20, 17),
(524, 20, 18),
(525, 20, 19),
(526, 20, 21),
(528, 20, 22),
(529, 20, 23),
(899, 21, 1),
(900, 21, 2),
(901, 21, 3),
(902, 21, 4),
(903, 21, 5),
(904, 21, 6),
(905, 21, 7),
(906, 21, 8),
(907, 21, 9),
(908, 21, 10),
(909, 21, 11),
(910, 21, 12),
(911, 21, 13),
(912, 21, 14),
(919, 21, 15),
(913, 21, 16),
(914, 21, 17),
(915, 21, 18),
(916, 21, 19),
(917, 21, 20),
(918, 21, 21),
(920, 21, 22),
(921, 21, 23),
(384, 22, 23),
(588, 23, 7),
(589, 23, 13),
(590, 23, 23),
(328, 24, 13),
(329, 24, 23),
(387, 25, 7),
(388, 25, 8),
(389, 25, 13),
(583, 26, 7),
(584, 26, 13),
(594, 27, 7),
(595, 27, 8),
(596, 27, 23),
(593, 27, 25),
(651, 28, 23),
(447, 29, 7),
(448, 29, 13),
(449, 29, 23),
(444, 30, 7),
(445, 30, 13),
(446, 30, 23),
(591, 31, 24),
(455, 32, 7),
(456, 32, 13),
(304, 33, 3),
(436, 34, 23),
(457, 35, 16),
(458, 36, 7),
(459, 36, 23),
(746, 37, 3),
(747, 37, 7),
(748, 37, 13),
(750, 38, 13),
(592, 39, 24),
(843, 40, 7),
(844, 40, 8),
(845, 40, 13),
(846, 40, 23),
(609, 41, 1),
(610, 41, 2),
(611, 41, 9),
(613, 41, 17),
(612, 41, 24),
(617, 42, 20),
(616, 43, 24),
(618, 45, 7),
(619, 45, 13),
(620, 45, 23),
(647, 46, 7),
(648, 46, 13),
(649, 47, 7),
(650, 47, 13),
(751, 48, 3),
(752, 49, 3),
(781, 50, 12),
(923, 51, 28),
(786, 52, 7),
(785, 52, 29),
(924, 53, 7),
(925, 53, 13),
(789, 54, 23),
(818, 55, 7),
(871, 56, 30),
(926, 57, 13);

-- --------------------------------------------------------

--
-- Table structure for table `test_categories`
--

CREATE TABLE `test_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test_categories`
--

INSERT INTO `test_categories` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'PARASITOLOGY', '', NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(2, 'MICROBIOLOGY', '', NULL, '2013-09-27 23:51:19', '2013-09-27 23:51:19'),
(3, 'HEMATOLOGY', '', NULL, '2013-09-27 23:51:32', '2013-09-27 23:51:32'),
(4, 'SEROLOGY', '', NULL, '2013-09-27 23:51:32', '2013-09-27 23:51:32'),
(5, 'BLOOD TRANSFUSION', '', NULL, '2013-09-27 23:51:32', '2013-09-27 23:51:32'),
(6, 'CHEMISTRY', '', NULL, '2017-05-17 12:27:44', '2017-05-17 12:27:59'),
(7, 'IMMUNOLOGY', '', NULL, '2017-05-18 15:06:50', '2017-05-18 15:06:50'),
(8, 'FERTILITY/HORMONES', '', NULL, '2017-11-19 17:58:59', '2017-11-19 17:58:59'),
(9, 'HISTOLOGY', 'PROCESSING HISTOPATHOLOGICAL SAMPLES/BIOPSIES', NULL, '2017-12-07 14:52:01', '2017-12-07 14:52:01'),
(10, 'VIROLOGY', '', NULL, '2017-12-07 15:06:43', '2017-12-07 15:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `test_name_mappings`
--

CREATE TABLE `test_name_mappings` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_type_id` int(10) UNSIGNED DEFAULT NULL,
  `standard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `system_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test_name_mappings`
--

INSERT INTO `test_name_mappings` (`id`, `test_type_id`, `standard_name`, `system_name`) VALUES
(1, NULL, 'CBC', 'cbc'),
(2, NULL, 'Hb', 'hb'),
(3, NULL, 'ESR', 'esr'),
(4, NULL, 'Bleeding time', 'bleeding_time'),
(5, NULL, 'Prothrombin Time', 'prothrombin_time'),
(6, NULL, 'Clotting Time', 'clotting_time'),
(7, NULL, 'ABO Grouping', 'abo_grouping'),
(8, NULL, 'Combs', 'combs'),
(9, NULL, 'Cross Matching', 'cross_matching'),
(10, NULL, 'Malaria Microscopy', 'malaria_microscopy'),
(11, NULL, 'Malaria RDTs', 'malaria_rdts'),
(12, NULL, 'Stool Microscopy', 'stool_microscopy'),
(13, NULL, 'VDRL/RPR', 'vdrl_rpr'),
(14, NULL, 'TPHA', 'tpha'),
(15, NULL, 'Shigella Dysentery', 'shigella_dysentery'),
(16, NULL, 'Hepatitis B', 'hepatitis_b'),
(17, NULL, 'Brucella', 'brucella'),
(18, NULL, 'Pregnancy Test', 'pregnancy_test'),
(19, NULL, 'Rheumatoid Factor', 'rheumatoid_factor'),
(20, NULL, 'CD4 tests', 'cd4_tests'),
(21, NULL, 'Viral Load Tests', 'viral_load_tests'),
(22, NULL, 'ZN for AFBs', 'zn_for_afbs'),
(23, NULL, 'Culture & Sensitivity', 'culture_sensitivity'),
(24, NULL, 'Gram Stain', 'gram_stain'),
(25, NULL, 'India Ink', 'india_ink'),
(26, NULL, 'Wet Preps', 'wet_preps'),
(27, NULL, 'Urine Microscopy', 'urine_microscopy'),
(28, NULL, 'Renal Profile', 'renal_profile'),
(29, NULL, 'Liver Profile', 'liver_profile'),
(30, NULL, 'Lipid/Cardiac Profile', 'lipid_cardiac_profile'),
(31, NULL, 'Alkaline Phosphates', 'alkaline_phosphates'),
(32, NULL, 'Amylase', 'amylase'),
(33, NULL, 'Glucose', 'glucose'),
(34, NULL, 'Uric Acid', 'uric_acid'),
(35, NULL, 'Lactate', 'lactate'),
(36, NULL, 'HIV', 'hiv');

-- --------------------------------------------------------

--
-- Table structure for table `test_phases`
--

CREATE TABLE `test_phases` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test_phases`
--

INSERT INTO `test_phases` (`id`, `name`) VALUES
(1, 'Pre-Analytical'),
(2, 'Analytical'),
(3, 'Post-Analytical');

-- --------------------------------------------------------

--
-- Table structure for table `test_statuses`
--

CREATE TABLE `test_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `test_phase_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test_statuses`
--

INSERT INTO `test_statuses` (`id`, `name`, `test_phase_id`) VALUES
(1, 'not-received', 1),
(2, 'pending', 1),
(3, 'started', 2),
(4, 'completed', 3),
(5, 'verified', 3),
(6, 'specimen-rejected-at-analysis', 3),
(7, 'approved', 3);

-- --------------------------------------------------------

--
-- Table structure for table `test_types`
--

CREATE TABLE `test_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test_category_id` int(10) UNSIGNED NOT NULL,
  `targetTAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderable_test` int(11) DEFAULT NULL,
  `prevalence_threshold` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accredited` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test_types`
--

INSERT INTO `test_types` (`id`, `name`, `description`, `test_category_id`, `targetTAT`, `orderable_test`, `prevalence_threshold`, `accredited`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'BS for mps', 'Blood smear to R/o parasites of Plasmodium ssp', 1, '45', 1, '', NULL, NULL, '2013-09-27 23:51:24', '2017-06-25 12:11:03'),
(2, 'Stool for C/S', NULL, 2, NULL, NULL, NULL, NULL, NULL, '2013-09-27 23:51:24', '2013-09-27 23:51:24'),
(3, 'GXM', NULL, 1, NULL, NULL, NULL, NULL, '2017-06-25 13:30:08', '2013-09-27 23:51:24', '2017-06-25 13:30:08'),
(4, 'HB', 'Haemoglobin estimation ', 3, '25', 1, '', NULL, NULL, '2013-09-27 23:51:24', '2017-06-25 13:30:53'),
(5, 'Urinalysis', 'test performed to R/o parasitic/UTI infection and renal disease and impairement ', 2, '40', NULL, NULL, NULL, NULL, '2013-09-27 23:51:24', '2017-07-23 11:37:44'),
(6, 'WBC', '', 2, '', NULL, NULL, NULL, NULL, '2013-09-27 23:51:25', '2018-06-26 09:54:45'),
(7, 'Salmonella Antigen Test', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2013-09-27 23:51:32', '2013-09-27 23:51:32'),
(8, 'Direct COOMBS Test', NULL, 5, NULL, NULL, NULL, NULL, NULL, '2013-09-27 23:51:32', '2013-09-27 23:51:32'),
(9, 'DU Test', NULL, 5, NULL, NULL, NULL, NULL, NULL, '2013-09-27 23:51:32', '2013-09-27 23:51:32'),
(10, 'Sickling Test', NULL, 3, NULL, NULL, NULL, NULL, NULL, '2013-09-27 23:51:32', '2013-09-27 23:51:32'),
(11, 'Borrelia', NULL, 1, NULL, NULL, NULL, NULL, '2017-06-25 11:53:40', '2013-09-27 23:51:32', '2017-06-25 11:53:40'),
(12, 'VDRL', NULL, 4, NULL, NULL, NULL, NULL, NULL, '2013-09-27 23:51:32', '2013-09-27 23:51:32'),
(13, 'Pregnancy Test', NULL, 4, NULL, NULL, NULL, NULL, NULL, '2013-09-27 23:51:32', '2013-09-27 23:51:32'),
(14, 'Brucella Agglutination Test', 'BAT to R/o Brucellosis of Brucella arbotus', 4, '30', NULL, NULL, NULL, NULL, '2013-09-27 23:51:32', '2017-07-13 11:50:24'),
(15, 'H. Pylori', 'helicobacter pylori test \r\n', 4, '120', NULL, NULL, NULL, NULL, '2013-09-27 23:51:32', '2017-08-19 19:48:10'),
(16, 'Culture and Sensitivity', 'Incubating samples under favour growth conditions of microorganisms to favor their growth', 2, '7200', NULL, NULL, NULL, NULL, '2013-09-27 23:51:38', '2017-07-14 08:33:21'),
(17, 'Appearance', 'Macroscopic Appearance of the specimen/sample', 2, '5', NULL, NULL, NULL, NULL, '2013-09-27 23:51:38', '2017-08-19 19:50:31'),
(18, 'Gram stain', '', 2, '', NULL, NULL, NULL, NULL, '2013-09-27 23:51:38', '2017-09-27 12:01:36'),
(19, 'ZN stain', '', 2, '', 1, '', NULL, NULL, '2013-09-27 23:51:38', '2017-06-07 08:01:25'),
(20, 'Modified ZN', '', 2, '', NULL, NULL, NULL, NULL, '2013-09-27 23:51:38', '2017-07-12 12:04:14'),
(21, 'Wet  Prep', '', 2, '60', NULL, NULL, NULL, NULL, '2013-09-27 23:51:38', '2018-01-28 12:24:35'),
(22, 'CBC', 'Full haemogram/ Complete Blood counts ', 3, NULL, NULL, NULL, NULL, NULL, '2013-09-27 23:51:49', '2017-06-25 12:02:16'),
(23, 'RBS/Serum Glucose', 'Random Blood Sugar/serum glucose \r\n', 6, '10', NULL, NULL, NULL, NULL, '2017-05-17 12:32:54', '2017-07-18 10:20:24'),
(24, 'Blood Grouping', 'Typing of Blood. ABO and Rhesus systems ', 5, '20', 1, '', NULL, NULL, '2017-05-17 14:14:10', '2017-06-25 11:53:04'),
(25, 'Cross matching', 'compatibility testing ', 5, '35', 1, '', NULL, NULL, '2017-05-17 14:17:26', '2017-06-25 12:21:57'),
(26, 'LFTs', '', 6, '60', NULL, NULL, NULL, NULL, '2017-05-17 16:02:06', '2017-07-14 10:31:53'),
(27, 'RPR', 'syphillis test by Rapid Plasma reagin', 4, '30', NULL, NULL, NULL, NULL, '2017-05-18 12:42:36', '2017-07-22 09:18:29'),
(28, 'CD4 count', 'Cell count of Lymphocytes of cluster of differential 4 in HIV infected patients that meet the criter', 7, '120', NULL, NULL, NULL, NULL, '2017-05-18 15:10:02', '2017-09-21 16:43:26'),
(29, 'HIV serology', 'HIV SCREENING TEST', 4, '35', 1, '', NULL, NULL, '2017-06-10 18:35:23', '2017-06-25 13:35:46'),
(30, 'HBSAg', 'Hepatitis B surface Antigen test', 4, '30', 1, '', NULL, NULL, '2017-06-10 19:04:32', '2017-06-25 13:33:23'),
(31, 'FM-I', 'Flourenscence microscopy R/o AFB', 2, '1440', NULL, NULL, NULL, NULL, '2017-06-25 10:06:40', '2017-07-19 13:04:22'),
(32, 'SERUM CrAg', 'Serological test for R/o cryptococcal infection in blood', 4, '40', 1, '', NULL, NULL, '2017-06-25 10:59:13', '2017-06-25 13:43:46'),
(33, 'CSF CrAg test', 'Test to R/o Cryptococco meningitis / Cryptococco infection of the NS', 2, '45', 1, '', NULL, NULL, '2017-06-25 11:43:46', '2017-06-25 11:43:46'),
(34, 'Malaria RDT', 'Rapid Diagnostic Testing for Malaria', 1, '20', 1, '', NULL, NULL, '2017-06-25 12:45:32', '2017-06-25 12:45:32'),
(35, 'STOOL ANALYSIS', 'R/O HELMINTHS INFECTION ', 1, '25', 1, '', NULL, NULL, '2017-06-27 10:24:45', '2017-06-27 10:24:45'),
(36, 'TPHA', 'CONFIRMATORY TEST FOR SYPHILLIS', 4, '30', 1, '', NULL, NULL, '2017-07-01 11:45:59', '2017-07-01 11:45:59'),
(37, 'RFTs', '', 6, '', NULL, NULL, NULL, NULL, '2017-07-14 12:29:41', '2017-07-14 12:29:41'),
(38, 'Electrolytes', '', 6, '120', NULL, NULL, NULL, NULL, '2017-07-14 12:37:08', '2017-10-30 08:35:33'),
(39, 'FM-II', '', 2, '1440', NULL, NULL, NULL, NULL, '2017-07-19 13:07:13', '2017-07-19 13:07:13'),
(40, 'CRAG TEST', '', 4, '60', NULL, NULL, NULL, NULL, '2017-07-22 13:14:01', '2018-01-30 07:45:08'),
(41, 'X-PERT MTB-Rif', 'R/O MTB and MDR', 2, '120', NULL, NULL, NULL, NULL, '2017-07-23 11:54:08', '2017-07-23 11:54:08'),
(42, 'HCG', 'URINE HCG', 4, '30', NULL, NULL, NULL, NULL, '2017-07-29 11:36:21', '2017-07-29 11:36:21'),
(43, 'SMEAR FOLLOW UP', '', 2, '180', NULL, NULL, NULL, NULL, '2017-08-08 08:12:45', '2017-08-08 08:12:45'),
(44, 'BAT', '', 4, '', NULL, NULL, NULL, '2017-08-19 19:51:08', '2017-08-17 07:37:30', '2017-08-19 19:51:08'),
(45, 'Fasting Blood glucose', '', 6, '5', NULL, NULL, NULL, NULL, '2017-08-19 06:38:24', '2017-08-19 06:38:24'),
(46, 'WIDAL TEST', '', 4, '60', NULL, NULL, NULL, NULL, '2017-08-26 10:29:26', '2017-08-26 10:29:26'),
(47, 'WIDAL TITRES', '', 4, '120', NULL, NULL, NULL, NULL, '2017-08-26 10:30:30', '2017-08-26 10:30:30'),
(48, 'INDIA INK', '', 2, '80', NULL, NULL, NULL, NULL, '2017-11-15 16:08:54', '2017-11-15 16:08:54'),
(49, 'GLUC', '', 6, '60', NULL, NULL, NULL, NULL, '2017-11-15 16:19:14', '2017-11-15 16:19:14'),
(50, 'Semen Analysis', '', 8, '360', NULL, NULL, NULL, NULL, '2017-11-19 18:16:59', '2017-11-19 18:16:59'),
(51, 'HIST', '', 9, '1360', NULL, NULL, NULL, NULL, '2017-12-07 15:00:54', '2017-12-07 15:00:54'),
(52, 'HIV-VL', '', 10, '7days', NULL, NULL, NULL, NULL, '2017-12-07 15:13:16', '2017-12-07 15:13:16'),
(53, 'Hep.B-VL', '', 10, '7days', NULL, NULL, NULL, NULL, '2017-12-07 15:22:41', '2017-12-07 15:22:41'),
(54, 'HIV-QUAL', '', 10, '120', NULL, NULL, NULL, NULL, '2017-12-15 09:32:45', '2017-12-15 09:32:45'),
(55, 'HIV-DR RESISTANCE', '', 10, '120', NULL, NULL, NULL, NULL, '2018-01-23 12:46:16', '2018-01-23 12:46:16'),
(56, 'QC', 'Quality Control ', 2, '', NULL, NULL, NULL, NULL, '2018-02-02 11:36:17', '2018-02-02 11:36:17'),
(57, 'Rhaumatoid Factor', '', 4, '', NULL, NULL, NULL, NULL, '2018-04-29 13:30:51', '2018-04-29 13:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `therapy`
--

CREATE TABLE `therapy` (
  `id` int(10) UNSIGNED NOT NULL,
  `visit_id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `previous_therapy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_therapy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clinical_notes` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clinician` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clinician_id` int(11) DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `therapy`
--

INSERT INTO `therapy` (`id`, `visit_id`, `patient_id`, `previous_therapy`, `current_therapy`, `clinical_notes`, `clinician`, `clinician_id`, `contact`) VALUES
(1, 1, 1, '', '', 'reere', NULL, 1, NULL),
(2, 2, 2, '', '', 'ee', NULL, 1, NULL),
(3, 3, 3, '', '', 'SEPTIC WOUND ON THE ABDOMEN', NULL, 9, NULL),
(4, 4, 4, '', '', 'KNOWN HTN WITH OBESITY', NULL, 11, NULL),
(5, 5, 5, '', '', 'New on ART', NULL, 29, NULL),
(6, 6, 6, '', '', 'POSITIVE SERUM CRAG WITH CD4 OF 13CELLS/UL', NULL, 15, NULL),
(7, 7, 6, '', '', 'POSITIVE SERUM CRAG WITH CD4 OF 13CELLS/UL', NULL, 15, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topup_requests`
--

CREATE TABLE `topup_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `commodity_id` int(10) UNSIGNED NOT NULL,
  `test_category_id` int(10) UNSIGNED NOT NULL,
  `order_quantity` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `remarks` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_bbactions`
--

CREATE TABLE `unhls_bbactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `actionname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unhls_bbactions`
--

INSERT INTO `unhls_bbactions` (`id`, `actionname`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Reported to administration for further action', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(2, 'Referred to mental department', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(3, 'Gave first aid (e.g. arrested bleeding)', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(4, 'Referred to clinician for further management', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(5, 'Conducted risk assessment', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(6, 'Intervened to interrupt/arrest progress of incident (e.g. Used neutralizing agent, stopping a fight)', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(7, 'Disposed off broken container to designated waste bin/sharps', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(8, 'Patient sample taken & referred to testing lab Isolated suspected patient', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(9, 'Reported to or engaged national level BRM for intervention', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(10, 'Victim counseled', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(11, 'Contacted Police', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(12, 'Used spill kit', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(13, 'Administered PEP', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(14, 'Referred to disciplinary committee', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(15, 'Contained the spillage', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(16, 'Disinfected the place', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(17, 'Switched off the Electricity Mains', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(18, 'Washed punctured area', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL),
(19, 'Others', '2019-03-21 09:33:12', '2019-03-21 09:33:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unhls_bbcauses`
--

CREATE TABLE `unhls_bbcauses` (
  `id` int(10) UNSIGNED NOT NULL,
  `causename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unhls_bbcauses`
--

INSERT INTO `unhls_bbcauses` (`id`, `causename`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Defective Equipment', '2019-03-21 09:33:13', '2019-03-21 09:33:13', NULL),
(2, 'Hazardous Chemicals', '2019-03-21 09:33:13', '2019-03-21 09:33:13', NULL),
(3, 'Unsafe Procedure', '2019-03-21 09:33:13', '2019-03-21 09:33:13', NULL),
(4, 'Psychological causes (e.g. emotional condition, depression, mental confusion)', '2019-03-21 09:33:13', '2019-03-21 09:33:13', NULL),
(5, 'Unsafe storage of laboratory chemicals', '2019-03-21 09:33:13', '2019-03-21 09:33:13', NULL),
(6, 'Lack of Skill or Knowledge', '2019-03-21 09:33:13', '2019-03-21 09:33:13', NULL),
(7, 'Lack of Personal Protective Equipment', '2019-03-21 09:33:13', '2019-03-21 09:33:13', NULL),
(8, 'Unsafe Working Environment', '2019-03-21 09:33:13', '2019-03-21 09:33:13', NULL),
(9, 'Lack of Adequate Physical Security', '2019-03-21 09:33:13', '2019-03-21 09:33:13', NULL),
(10, 'Unsafe location of laboratory equipment', '2019-03-21 09:33:13', '2019-03-21 09:33:13', NULL),
(11, 'Other', '2019-03-21 09:33:13', '2019-03-21 09:33:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unhls_bbincidences`
--

CREATE TABLE `unhls_bbincidences` (
  `id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `serial_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `occurrence_date` date NOT NULL,
  `occurrence_time` time NOT NULL,
  `personnel_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personnel_surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personnel_othername` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personnel_gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personnel_dob` date NOT NULL,
  `personnel_age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personnel_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personnel_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `personnel_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nok_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nok_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nok_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lab_section` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `occurrence` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ulin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `equip_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `equip_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `task` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `officer_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `officer_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `officer_cadre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `officer_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstaid` text COLLATE utf8_unicode_ci NOT NULL,
  `intervention` text COLLATE utf8_unicode_ci NOT NULL,
  `intervention_date` date NOT NULL,
  `intervention_time` time NOT NULL,
  `intervention_followup` text COLLATE utf8_unicode_ci NOT NULL,
  `mo_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mo_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cause` text COLLATE utf8_unicode_ci NOT NULL,
  `corrective_action` text COLLATE utf8_unicode_ci NOT NULL,
  `referral_status` text COLLATE utf8_unicode_ci NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `analysis_date` date NOT NULL,
  `analysis_time` time NOT NULL,
  `bo_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bo_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bo_designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bo_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `findings` text COLLATE utf8_unicode_ci NOT NULL,
  `improvement_plan` text COLLATE utf8_unicode_ci NOT NULL,
  `response_date` date NOT NULL,
  `response_time` time NOT NULL,
  `brm_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brm_lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brm_designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brm_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdby` int(10) UNSIGNED DEFAULT NULL,
  `updatedby` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_bbincidences_action`
--

CREATE TABLE `unhls_bbincidences_action` (
  `id` int(10) UNSIGNED NOT NULL,
  `bbincidence_id` int(10) UNSIGNED NOT NULL,
  `action_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_bbincidences_cause`
--

CREATE TABLE `unhls_bbincidences_cause` (
  `id` int(10) UNSIGNED NOT NULL,
  `bbincidence_id` int(10) UNSIGNED NOT NULL,
  `cause_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_bbincidences_nature`
--

CREATE TABLE `unhls_bbincidences_nature` (
  `id` int(10) UNSIGNED NOT NULL,
  `bbincidence_id` int(10) UNSIGNED NOT NULL,
  `nature_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_bbnatures`
--

CREATE TABLE `unhls_bbnatures` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unhls_bbnatures`
--

INSERT INTO `unhls_bbnatures` (`id`, `name`, `class`, `priority`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Assault/Fight among staff', 'Physical', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(2, 'Fainting', 'Physical', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(3, 'Roof leakages', 'Physical', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(4, 'Machine cuts/bruises', 'Mechanical', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(5, 'Electric shock/burn', 'Mechanical', 'Major', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(6, 'Death within lab', 'Ergonometric and Medical', 'Major', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(7, 'Slip or fall', 'Physical', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(8, 'Unnecessary destruction of lab material', 'Physical', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(9, 'Theft of laboratory consumables', 'Physical', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(10, 'Breakage of sample container', 'Physical', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(11, 'Prick/cut by unused sharps', 'Physical', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(12, 'Injury caused by laboratory objects', 'Physical', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(13, 'Chemical burn', 'Chemical', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(14, 'Theft of chemical', 'Chemical', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(15, 'Chemical spillage', 'Chemical', 'Major', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(16, 'Theft of equipment', 'Physical', 'Major', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(17, 'Attack on the Lab', 'Physical', 'Major', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(18, 'Collapsing building', 'Physical', 'Major', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(19, 'Bike rider accident', 'Physical', 'Major', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(20, 'Fire', 'Physical', 'Major', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(21, 'Needle prick or cuts by used sharps', 'Biological', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(22, 'Sample spillage', 'Biological', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(23, 'Theft of samples', 'Biological', 'Major', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(24, 'Contact with VHF suspect', 'Biological', 'Major', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(25, 'Contact with radiological materials', 'Radiological', 'Major', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(26, 'Theft of radiological materials', 'Radiological', 'Major', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(27, 'Poor disposal of radiological materials', 'Radiological', 'Major', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(28, 'Poor vision from inadequate light', 'Ergonometric and Medical', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(29, 'Back pain from posture effects', 'Ergonometric and Medical', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(30, 'Other occupational hazard', 'Ergonometric and Medical', 'Minor', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13'),
(31, 'Other', 'Other', 'Other', NULL, '2019-03-21 09:33:13', '2019-03-21 09:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `unhls_districts`
--

CREATE TABLE `unhls_districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unhls_districts`
--

INSERT INTO `unhls_districts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'KABAROLE', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(2, 'Buikwe', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(3, 'Bukomansimbi', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(4, 'Butambala', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(5, 'Buvuma', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(6, 'Gomba', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(7, 'Kalangala', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(8, 'Kalungu', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(9, 'Kayunga', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(10, 'Kiboga', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(11, 'Kyankwanzi', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(12, 'Luweero', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(13, 'Lwengo', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(14, 'Lyantonde', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(15, 'Masaka', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(16, 'Mityana', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(17, 'Mpigi', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(18, 'Mubende', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(19, 'Mukono', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(20, 'Nakaseke', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(21, 'Nakasongola', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(22, 'Rakai', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(23, 'Ssembabule', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(24, 'Wakiso', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(25, 'Amuria', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(26, 'Budaka', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(27, 'Bududa', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(28, 'Bugiri', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(29, 'Bukedea', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(30, 'Bukwa', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(31, 'Bulambuli', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(32, 'Busia', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(33, 'Butaleja', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(34, 'Buyende', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(35, 'Iganga', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(36, 'Jinja', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(37, 'Kaberamaido', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(38, 'Kaliro', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(39, 'Kamuli', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(40, 'Kapchorwa', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(41, 'Katakwi', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(42, 'Kibuku', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(43, 'Kumi', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(44, 'Kween', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(45, 'Luuka', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(46, 'Manafwa', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(47, 'Mayuge', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(48, 'Mbale', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(49, 'Namayingo', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(50, 'Namutumba', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(51, 'Ngora', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(52, 'Pallisa', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(53, 'Serere', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(54, 'Sironko', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(55, 'Soroti', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(56, 'Tororo', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(57, 'Abim', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(58, 'Adjumani', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(59, 'Agago', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(60, 'Alebtong', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(61, 'Amolatar', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(62, 'Amudat', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(63, 'Amuru', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(64, 'Apac', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(65, 'Arua', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(66, 'Dokolo', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(67, 'Gulu', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(68, 'Kaabong', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(69, 'Kitgum', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(70, 'Koboko', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(71, 'Kole', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(72, 'Kotido', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(73, 'Lamwo', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(74, 'Lira', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(75, 'Maracha', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(76, 'Moroto', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(77, 'Moyo', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(78, 'Nakapiripirit', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(79, 'Napak', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(80, 'Nebbi', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(81, 'Nwoya', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(82, 'Otuke', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(83, 'Oyam', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(84, 'Pader', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(85, 'Yumbe', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(86, 'Zombo', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(87, 'Buhweju', '2019-03-21 09:33:11', '2019-03-21 09:33:11'),
(88, 'Buliisa', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(89, 'Bundibugyo', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(90, 'Bushenyi', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(91, 'Hoima', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(92, 'Ibanda', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(93, 'Isingiro', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(94, 'Kabale', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(95, 'Kabarole', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(96, 'Kamwenge', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(97, 'Kanungu', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(98, 'Kasese', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(99, 'Kibaale', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(100, 'Kiruhura', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(101, 'Kiryandongo', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(102, 'Kisoro', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(103, 'Kyegegwa', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(104, 'Kyenjojo', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(105, 'Masindi', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(106, 'Mbarara', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(107, 'Mitooma', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(108, 'Ntoroko', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(109, 'Ntungamo', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(110, 'Rubirizi', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(111, 'Rukungiri', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(112, 'Sheema', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(113, 'Omoro', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(114, 'Kagadi', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(115, 'Kakumiro', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(116, 'Rubanda', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(117, 'Bukwo', '2019-03-21 09:33:12', '2019-03-21 09:33:12');

-- --------------------------------------------------------

--
-- Table structure for table `unhls_drugs`
--

CREATE TABLE `unhls_drugs` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `formulation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `strength` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pack_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit_of_issue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `max_stock_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `min_stock_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_equipment_breakdown`
--

CREATE TABLE `unhls_equipment_breakdown` (
  `id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `equipment_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `action_taken` text COLLATE utf8_unicode_ci NOT NULL,
  `hsd_request` text COLLATE utf8_unicode_ci NOT NULL,
  `in_charge_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `report_date` datetime DEFAULT NULL,
  `restored_by` int(11) DEFAULT NULL,
  `restore_date` datetime DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `breakdown_type` int(11) NOT NULL,
  `reported_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `breakdown_date` datetime DEFAULT NULL,
  `facility_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facility_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `equipment_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `equipment_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `problem` text COLLATE utf8_unicode_ci NOT NULL,
  `equipment_failure` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reporting_officer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reporting_officer_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reporting_officer_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intervention_authorit	y` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `conclusion` text COLLATE utf8_unicode_ci NOT NULL,
  `verified_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `verification_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_equipment_inventory`
--

CREATE TABLE `unhls_equipment_inventory` (
  `id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serial_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` int(11) NOT NULL,
  `procurement_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `verification_date` datetime NOT NULL,
  `installation_date` datetime NOT NULL,
  `spare_parts` tinyint(1) NOT NULL,
  `warranty` int(11) NOT NULL,
  `life_span` int(11) NOT NULL,
  `service_frequency` tinyint(1) NOT NULL,
  `service_contract` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `supplier_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unhls_equipment_inventory`
--

INSERT INTO `unhls_equipment_inventory` (`id`, `district_id`, `facility_id`, `year_id`, `name`, `model`, `serial_number`, `location`, `procurement_type`, `purchase_date`, `delivery_date`, `verification_date`, `installation_date`, `spare_parts`, `warranty`, `life_span`, `service_frequency`, `service_contract`, `created_at`, `updated_at`, `supplier_id`) VALUES
(1, 1, 1, 1, 'DELL', 'COREI5', '4325475219', 5, '1', '2019-03-01 00:00:00', '2019-03-02 00:00:00', '2019-03-03 00:00:00', '2019-03-05 00:00:00', 1, 2, 20, 1, 1, '2019-03-27 07:49:51', '2019-03-27 07:49:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `unhls_equipment_maintenance`
--

CREATE TABLE `unhls_equipment_maintenance` (
  `id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `equipment_id` int(10) UNSIGNED NOT NULL,
  `last_service_date` datetime NOT NULL,
  `next_service_date` datetime NOT NULL,
  `serviced_by_name` text COLLATE utf8_unicode_ci NOT NULL,
  `serviced_by_contact` text COLLATE utf8_unicode_ci NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_equipment_suppliers`
--

CREATE TABLE `unhls_equipment_suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unhls_equipment_suppliers`
--

INSERT INTO `unhls_equipment_suppliers` (`id`, `name`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'NMS', '0772661364', 'nms@gmail.com', 'KAMPALA', '2019-03-27 07:48:52', '2019-03-27 07:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `unhls_facilities`
--

CREATE TABLE `unhls_facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `ownership_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unhls_facilities`
--

INSERT INTO `unhls_facilities` (`id`, `code`, `name`, `district_id`, `level_id`, `ownership_id`, `created_at`, `updated_at`) VALUES
(1, 'FPRRH', 'FORT PORTAL REGIONAL REFERRAL HOSPITALLABORATORY', 1, 1, 1, '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(2, 'Abako HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(3, 'Aber Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(4, 'Abim Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(5, 'Aboke HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(6, 'Abongomola HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(8, 'Achol Pii HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(9, 'Acholi-Bur HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(10, 'Adjumani   HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(11, 'Adok HC II', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(12, 'Aduku Mission HC II', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(13, 'Aduku HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(14, 'Agali HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(15, 'Lamwo Agoro HC III GOVT', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(18, 'Agulurude HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(19, 'Agwatta HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(20, 'Akalo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(21, 'Akokoro HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(22, 'Akuna Laber HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(23, 'Alebtong HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(24, 'Alerek HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(25, 'Alero HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(26, 'Alito HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(27, 'Alive Medical Services HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(29, 'Amach HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(30, 'Amai Community Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(31, 'Amolatar HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(32, 'Amuca SDA HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(35, 'Amugu HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(37, 'Amuru HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(38, 'Anaka Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(41, 'Anyeke HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(42, 'Apac HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(43, 'Apalabarowo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(44, 'Apala HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(46, 'Apoi HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(47, 'Aputi HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(49, 'Aromo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(50, 'Arua REGIONAL REF HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(52, 'Atanga HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(53, 'Atiak HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(57, 'Awach HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(62, 'Aywee HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(64, 'Baitambogwe HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(65, 'Bala HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(68, 'Barr HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(69, 'Bata HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(71, 'Bibia HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(72, 'Bidabugya HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(74, 'Bihanga HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(80, 'Bitereko HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(83, 'Boroboro HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(84, 'Bubaare HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(85, 'Bubulo HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(87, 'Budaka HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(88, 'Budondo HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(91, 'Bufumbo HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(95, 'Bugambe HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(97, 'Bugembe HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(99, 'Bugiri Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(100, 'Bugobero HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(101, 'Bugono HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(106, 'Buhunga HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(107, 'Buikwe St. Charles Lwanga HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(111, 'Buremba HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(113, 'Bukinda HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(114, 'Bukomero HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(116, 'Bukulula HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(118, 'Bukuya HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(120, 'Bulange HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(121, 'Buliisa HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(123, 'Bumanya HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(126, 'Bungokho Mutoto HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(128, 'Bunyiiro Gvt HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(129, 'Buraru HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(133, 'Busano HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(134, 'Busanza HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(135, 'Busesa HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(137, 'Bushenyi HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(138, 'Bushenyi Medical Center HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(139, 'Bushikori HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(142, 'Busia HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(145, 'Busiu HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(146, 'Butabika NATIONAL REFERAL HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(148, 'Butema HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(149, 'Butenga HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(151, 'Butiru HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(153, 'Buvuma HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(154, 'Buwaiswa HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(155, 'Buwambo HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(158, 'Buwenge HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(159, 'Buyamba HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(160, 'Buyinja  HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(161, 'Buyoga HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(162, 'Bwera HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(163, 'Bwijanga HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(164, 'Bwindi Community Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(166, 'Bwizibwera HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(168, 'Chahafi HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(176, 'Cwero HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(179, 'Dokolo HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(180, 'Endiizi HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(182, 'Etam HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(183, 'Family Health Resource Centre CLINIC', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(184, 'Family Hope Center Jinja', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(185, 'Family Hope Center Kampala', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(187, 'Fort Portal Regional Referral Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(188, 'Galiraya HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(191, 'Gombe HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(192, 'Gulu Independent Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(193, 'Gulu  Military Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(194, 'Gulu Prison HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(195, 'Gulu Regional Referal Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(197, 'Hamurwa HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(199, 'Hoima REGIONAL REF Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(201, 'Ibanda Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(202, 'Ibuje HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(203, 'Iceme Ngo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(204, 'Iganga Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(206, 'Iki-Iki HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(207, 'Inomo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(210, 'Ishongororo HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(212, 'Itojo Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(213, 'Ivukula HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(222, 'Jinja Regional Ref Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(223, 'Kaabong Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(224, 'Kabale Regional Ref Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(225, 'Kabarole Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(228, 'Kabira HC III GOVT', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(231, 'Kabuwoko Gvt HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(232, 'Kabuyanda HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(233, 'Kabwohe Clinical Research Cenrer HC II', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(234, 'Kabwohe HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(235, 'Kabwoya HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(238, 'Kaderuna HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(240, 'Kagando Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(247, 'Kakuka HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(249, 'Kakuuto HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(251, 'Kaladima HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(253, 'Kalangala HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(255, 'Kalisizo Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(256, 'Kalongo Ambrosoli Memorial HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(257, 'Kalungu HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(259, 'Kambuga Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(260, 'Kampala Dispensery HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(262, 'Kamuganguzi HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(264, 'Kamukira HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(265, 'Kamuli Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(266, 'Kamuli Mission Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(267, 'Kamwenge HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(268, 'Kamwezi HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(269, 'Kamwokya Christian Caring Community HC I', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(272, 'Kangai HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(274, 'Kangulumira HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(275, 'Kiruhura Kanoni HC III GOVT', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(276, 'Kanungu HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(280, 'St. Jerome Cove Kapeeka HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(284, 'Karenga HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(286, 'Karungu HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(289, 'Kasanga Phc HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(290, 'Kasangati HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(291, 'Kasasa HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(295, 'Kassanda HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(299, 'Katabi Military HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(303, 'Katerera HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(305, 'Katimba HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(307, 'Kasese Katwe HC III GOVT', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(310, 'Kawempe Home Care Initiative CLINIC', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(311, 'Kawolo Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(313, 'Kayunga Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(314, 'Kazo HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(317, 'Kibaale HC IV (Kibaale)', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(320, 'Kiboga Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(322, 'Kibuli Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(325, 'Kidera HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(328, 'Kiganda HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(329, 'Kigandalo HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(331, 'Kigarama HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(332, 'Kigorobya HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(333, 'Kihiihi HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(337, 'Kikuube HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(338, 'Kikyenkye  HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(340, 'Kilak HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(342, 'Kinoni Welfare Medical Centre CLINIC', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(343, 'Kinoni HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(347, 'Kirema HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(349, 'Kiruhura HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(350, 'Kiryandongo Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(352, 'Kisiizi NGO HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(355, 'Kisoro Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(356, 'Kisubi Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(357, 'Kiswa HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(358, 'Kitagata HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(359, 'Kitebi HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(360, 'Kitgum Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(361, 'Kitgum-Matidi HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(362, 'Kitimba HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(365, 'Kitovu Blood Bank CLINIC', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(368, 'Kityerera HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(369, 'Kiwangala HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(370, 'Kiwoko HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(372, 'Kiyumba HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(373, 'Kiyunga HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(376, 'Koch Goma HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(378, 'Kojja HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(379, 'Kolonyi HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(380, 'Kotido HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(382, 'Kulikulinga HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(384, 'Kumi HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(385, 'Kumi NGO HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(386, 'Kwera HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(388, 'Kyabugimbi HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(396, 'Kyazanga HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(397, 'Kyebe HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(399, 'Kyehoro HC II', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(403, 'Labworomor HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(405, 'Laguti HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(410, 'Laroo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(412, 'Layibi Techo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(413, 'Lira-Kato HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(414, 'Lira Medical Centre Ltd HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(415, 'Lira-Palwo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(416, 'Lira REGIONAL REF HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(417, 'Loborom HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(419, 'Lokung HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(423, 'Lukole HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(426, 'Luwunga Barracks HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(428, 'Lwamaggwa Gvt HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(430, 'Lwankoni HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(431, 'Lwebitakuli Gvt HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(432, 'Lwemiyaga HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(433, 'Lwengo HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(434, 'Lyantonde Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(438, 'Maddu HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(439, 'Madi-Opei HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(440, 'Magale HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(444, 'Makonge HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(445, 'Makuukulu HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(446, 'Malaba HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(448, 'Malongo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(449, 'Maracha HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(451, 'Masaka REGIONAL REF HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(452, 'Masindi Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(454, 'Mateete HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(456, 'Mayuge HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(457, 'Maziba Gvt HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(458, 'Mbaare HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(459, 'Mbale HC II', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(460, 'Mbale REGIONAL REF HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(464, 'Mbarara REGIONAL REF HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(465, 'Mengo HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(469, 'Mitooma HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(470, 'Mityana Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(471, 'Rubaya HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(472, 'Moroto Regional Refferal HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(476, 'Mparangasi HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(477, 'Mparo HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(478, 'Mpigi   HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(479, 'Mpumudde HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(480, 'Mubende RR HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(481, 'Mubende Rehabilitation Centre HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(482, 'Mucwini HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(485, 'Muhokya HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(486, 'Muhwiju HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(488, 'Muko HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(489, 'Mukono  T.C. HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(490, 'Mukuju HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(494, 'Mulanda HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(497, 'Mutolere (St. Francis) HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(499, 'Mwera HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(502, 'Nabigasa HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(508, 'Nakaseke HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(509, 'Nakasongola Military HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(511, 'Nakivale HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(512, 'Namakwekwe HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(514, 'Namanyonyi HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(515, 'Namasale HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(516, 'Namawanga HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(517, 'Namayumba HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(518, 'Nambale HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(519, 'Nambieso HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(520, 'Naam Okora HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(521, 'Namugongo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(522, 'Namungalwe HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(524, 'Namutumba HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(525, 'Namwendwa HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(526, 'Nankandulo HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(527, 'Nankoma HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(529, 'Nawaikoke HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(532, 'Ngai HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(533, 'Ngando HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(535, 'Ngetta HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(539, 'Nkokonjeru  HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(540, 'Nkozi HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(542, 'St. Francis Nsambya HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(543, 'Nshungyezi HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(544, 'Nsiika HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(545, 'Nsinze HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(549, 'Ntungamo HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(550, 'Ntuusi HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(551, 'Ntwetwe HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(554, 'Nyabirongo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(555, 'Nyabugando HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(558, 'St. Karolii Lwanga Nyakibale HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(559, 'Nyakitunda HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(565, 'Nyamuyanja HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(568, 'Nyarubungo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(569, 'St. Francis Nyenga HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(575, 'Ogur HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(577, 'Okwongo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(579, 'Olilim HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(581, 'Omiya Anyima HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(582, 'Omoro HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(584, 'Ongako HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(585, 'Ongica HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(591, 'Orom HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(592, 'Orum HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(595, 'Otwal HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(598, 'Pabbo (Govt) HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(599, 'Pabwo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(600, 'Pader HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(601, 'Padibe HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(603, 'Lira PAG Mission Hospital H/C IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(606, 'Paimol HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(608, 'Pajule HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(609, 'Palabek-Gem HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(610, 'Palabek Ogili HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(611, 'Palabek-Kal HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(615, 'Paloga HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(617, 'Patiko HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(618, 'Patongo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(619, 'Pawel HC II', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(620, 'Mulago National Hospital-PIDC COE Ward 1', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(626, 'Purongo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(628, 'Rakai Health Sciences Program CLINIC', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(629, 'Rakai Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(633, 'Lubaga Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(634, 'Rubaya   HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(635, 'Rubongi Military HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(636, 'Rubuguri HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(637, 'Rugaaga HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(638, 'Rugarama Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(639, 'Rugazi HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(641, 'Ruhiira HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(644, 'Ruhoko HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(645, 'Rukiri HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(648, 'Rukungiri HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(649, 'Rukunyu HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(650, 'Rushere Community Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(651, 'St. Mother Francisca Lechner Rushooka HC', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(656, 'Rwashamaire HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(659, 'Rwekubo HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(662, 'Rwenyawawa HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(666, 'Rwimi HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(668, 'Seeta-Nazigo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(669, 'Ssembabule HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(671, 'Shuuku HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(674, 'Soroti REGIONAL REF HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(677, 'St. Balikudembe- Kitwe HC II', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(679, 'St. Joseph\'S Kitgum HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(685, 'TASO Gulu Clinic', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(686, 'TASO Jinja CLINIC', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(687, 'TASO Masaka CLINIC', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(688, 'TASO  Clinic Masindi', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(689, 'TASO Mbale Clinic', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(690, 'TASO Mbarara CLINIC', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(691, 'TASO Mulago CLINIC', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(692, 'TASO Rukungiri HC II', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(693, 'TASO Soroti CLINIC', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(694, 'TASO Tororo  CLINIC', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(695, 'Teboke (Gvt) HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(696, 'Tokora HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(698, 'Tororo General HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(702, 'Villa Maria Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(703, 'Virika Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(704, 'Wabulungu HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(705, 'Wakiso HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(706, 'Walukuba HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(709, 'Wol HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(712, 'Yumbe Hospital', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(713, 'St. Mechtilda Kitaasa HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(715, 'Bigasa HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(717, 'Nampunge HC II', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(720, 'Kyeizooba HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(722, 'Mpunge HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(723, 'Koome HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(727, 'St. Luke Kiyinda Mityana Diocese HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(728, 'Rengen HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(729, 'Nagojje HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(732, 'Nabutiti HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(734, 'Kasanje HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(735, 'Nsangi HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(736, 'Namulonge HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(738, 'Kawanda HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(742, 'Mirembe Maria HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(743, 'Buwama HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(745, 'Jinja Central HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(748, 'Ssekanyonyi HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(749, 'Nabalanga HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(753, 'Kitenga  HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(757, 'Kyabazaala HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(758, 'Mpumudde HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(762, 'Nakasongola HC IV', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(763, 'Mgomoromo/Ngomoroma HC II', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(764, 'Nazigo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(765, 'Lyantonde Muslim HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(766, 'Katoogo HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(768, 'Iganga Islamic Medical Center HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(770, 'Mpenja HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(771, 'Dwooli HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(772, 'Komamboga HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(773, 'Kisugu HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(774, 'Masaka Mun. Council HCII', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(776, 'Busedde HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(777, 'Kaliiro HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(779, 'Busembatia HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(782, 'Kisenyi HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(784, 'Osukuru HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(785, '5Th  Military Division HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(786, 'Njeru T.C HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(787, 'Mpugwe HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(788, 'Entebbe HOSPITAL', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(789, 'Maanyi HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(790, 'Malangala HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(792, 'Ikumbya HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43'),
(796, 'Lwamata HC III', '1', 1, 1, 1, '2019-03-21 06:54:43', '2019-03-21 06:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `unhls_facility_level`
--

CREATE TABLE `unhls_facility_level` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unhls_facility_level`
--

INSERT INTO `unhls_facility_level` (`id`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Public NRH', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(2, 'Public RRH', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(3, 'Public GH', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(4, 'Public HCIV', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(5, 'Public HCIII', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(6, 'Hospital', '2019-03-21 09:33:12', '2019-03-21 09:33:12');

-- --------------------------------------------------------

--
-- Table structure for table `unhls_facility_ownership`
--

CREATE TABLE `unhls_facility_ownership` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unhls_facility_ownership`
--

INSERT INTO `unhls_facility_ownership` (`id`, `owner`, `created_at`, `updated_at`) VALUES
(1, 'Public', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(2, 'PFP', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(3, 'PNFP', '2019-03-21 09:33:12', '2019-03-21 09:33:12'),
(4, 'Other', '2019-03-21 09:33:12', '2019-03-21 09:33:12');

-- --------------------------------------------------------

--
-- Table structure for table `unhls_financial_years`
--

CREATE TABLE `unhls_financial_years` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unhls_financial_years`
--

INSERT INTO `unhls_financial_years` (`id`, `year`, `created_at`, `updated_at`) VALUES
(1, '2018/2019', '2019-03-25 21:00:00', '2019-03-25 21:00:00'),
(2, '2019/2020', '2019-03-25 21:00:00', '2019-03-25 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `unhls_patients`
--

CREATE TABLE `unhls_patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ulin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `village_residence` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `village_workplace` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_patient_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unhls_patients`
--

INSERT INTO `unhls_patients` (`id`, `patient_number`, `ulin`, `nin`, `name`, `dob`, `gender`, `email`, `address`, `village_residence`, `village_workplace`, `phone_number`, `occupation`, `external_patient_number`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '', 'FPRRH/1903/1/JD', '', 'John Doe', '1994-03-27', 0, '', '', 'Buhinga', '', '0701031951', '', NULL, 1, NULL, '2019-03-21 14:18:13', '2019-03-21 14:18:13'),
(2, 'FPRRH', 'FPRRH/1903/2/DR', '', 'Dan Rose', '1999-03-26', 0, '', '', 'Buhinga', '', 'xxxxxx', '', NULL, 1, NULL, '2019-03-21 14:23:01', '2019-03-21 14:23:01'),
(3, '7609', 'FPRRH/1903/3/GN', '', 'GAUDENSIYO NABAASA', '1981-04-04', 1, '', 'MUKIGAIGA', 'MUKIGAIGA', '', '07047575', '', NULL, 1, NULL, '2019-03-26 08:42:36', '2019-03-26 08:42:36'),
(4, '7211', 'FPRRH/1903/4/AE', '', 'AHEBWA EDITH', '1966-04-08', 1, '', '', 'KABEGIRA', '', '0788553713', '', NULL, 11, NULL, '2019-03-26 09:24:17', '2019-03-26 09:24:17'),
(5, 'T12-16416', 'FPRRH/1903/5/AD', '', 'Aliganyira David', '1984-03-02', 0, '', '', 'Rweijojo', '', 'N/A', '', NULL, 1, NULL, '2019-03-26 11:29:14', '2019-03-26 11:29:14'),
(6, '351/19', 'FPRRHL/PRO/025 F2/1903/6/TP', '', 'TUMUSIIME PATRICK', '1989-04-03', 0, '', 'RWEBISENGO', 'RWEBISENGO', 'RWEBISENGO', '0787484300', 'PEASANT', NULL, 1, NULL, '2019-03-27 09:45:51', '2019-03-27 09:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `unhls_rejection_reasons`
--

CREATE TABLE `unhls_rejection_reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_staff`
--

CREATE TABLE `unhls_staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_stockcard`
--

CREATE TABLE `unhls_stockcard` (
  `id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `commodity_id` int(10) UNSIGNED NOT NULL,
  `to_from` int(11) NOT NULL,
  `to_from_type` int(11) NOT NULL,
  `voucher_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issue_date` datetime NOT NULL,
  `expiry_date` datetime NOT NULL,
  `initials` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `transaction_date` datetime DEFAULT NULL,
  `quantity_in` int(11) DEFAULT NULL,
  `quantity_out` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_stockrequisition`
--

CREATE TABLE `unhls_stockrequisition` (
  `id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `issued_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `voucher_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity_required` int(11) NOT NULL,
  `quantity_issued` int(11) NOT NULL,
  `issue_date` datetime NOT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unhls_tests`
--

CREATE TABLE `unhls_tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `visit_id` bigint(20) UNSIGNED NOT NULL,
  `test_type_id` int(10) UNSIGNED NOT NULL,
  `specimen_id` int(10) UNSIGNED DEFAULT NULL,
  `interpretation` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `test_status_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `tested_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `verified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `requested_by` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `clinician_id` int(11) DEFAULT NULL,
  `purpose` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `time_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_started` timestamp NULL DEFAULT NULL,
  `time_completed` timestamp NULL DEFAULT NULL,
  `time_verified` timestamp NULL DEFAULT NULL,
  `time_sent` timestamp NULL DEFAULT NULL,
  `external_id` int(11) DEFAULT NULL,
  `instrument` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `time_approved` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unhls_tests`
--

INSERT INTO `unhls_tests` (`id`, `visit_id`, `test_type_id`, `specimen_id`, `interpretation`, `test_status_id`, `created_by`, `tested_by`, `verified_by`, `requested_by`, `clinician_id`, `purpose`, `time_created`, `time_started`, `time_completed`, `time_verified`, `time_sent`, `external_id`, `instrument`, `approved_by`, `time_approved`) VALUES
(1, 1, 10, 1, '', 2, 1, 0, 0, '1', NULL, '', '2019-03-21 14:21:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(2, 2, 16, 2, '', 7, 1, 1, 1, '1', NULL, '', '2019-03-21 14:23:52', '2019-03-21 15:37:42', '2019-03-21 15:40:26', '2019-03-21 15:40:50', NULL, NULL, NULL, 1, '2019-03-21 15:41:09'),
(3, 3, 22, 3, '', 7, 1, 1, 1, '9', NULL, '', '2019-03-26 08:47:39', '2019-03-26 08:48:09', '2019-03-26 09:00:33', '2019-03-26 09:00:54', NULL, NULL, NULL, 1, '2019-03-26 09:00:59'),
(4, 3, 26, 4, '', 7, 1, 1, 1, '9', NULL, '', '2019-03-26 08:47:39', '2019-03-26 08:55:50', '2019-03-26 08:58:33', '2019-03-26 08:58:54', NULL, NULL, NULL, 1, '2019-03-26 08:59:02'),
(5, 4, 26, 5, '', 2, 11, 0, 0, '11', NULL, '', '2019-03-26 09:27:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(6, 4, 37, 5, '', 2, 11, 0, 0, '11', NULL, '', '2019-03-26 09:27:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(7, 4, 38, 5, '', 2, 11, 0, 0, '11', NULL, '', '2019-03-26 09:27:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(8, 5, 22, 6, '', 3, 1, 1, 0, '29', NULL, '', '2019-03-26 11:32:53', '2019-03-26 11:57:19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(9, 7, 33, 7, '', 7, 10, 10, 10, '15', NULL, '', '2019-03-27 10:13:20', '2019-03-27 10:14:04', '2019-03-27 10:14:23', '2019-03-27 10:15:12', NULL, NULL, NULL, 10, '2019-03-27 10:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `unhls_test_results`
--

CREATE TABLE `unhls_test_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `measure_id` int(10) UNSIGNED NOT NULL,
  `result` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sample_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unhls_test_results`
--

INSERT INTO `unhls_test_results` (`id`, `test_id`, `measure_id`, `result`, `time_entered`, `sample_id`) VALUES
(1, 2, 38, '10', '2019-03-21 15:40:26', NULL),
(2, 2, 39, '5', '2019-03-21 15:40:26', NULL),
(3, 2, 40, '14', '2019-03-21 15:40:27', NULL),
(4, 2, 41, '39', '2019-03-21 15:40:27', NULL),
(5, 2, 42, '70', '2019-03-21 15:40:27', NULL),
(6, 2, 43, '26', '2019-03-21 15:40:27', NULL),
(7, 2, 44, '33', '2019-03-21 15:40:27', NULL),
(8, 2, 45, '278', '2019-03-21 15:40:27', NULL),
(9, 2, 46, '50', '2019-03-21 15:40:27', NULL),
(10, 2, 47, '12', '2019-03-21 15:40:27', NULL),
(11, 2, 48, '16', '2019-03-21 15:40:27', NULL),
(12, 2, 49, '13', '2019-03-21 15:40:27', NULL),
(13, 2, 50, '40', '2019-03-21 15:40:27', NULL),
(14, 2, 51, '5', '2019-03-21 15:40:27', NULL),
(15, 2, 52, '5', '2019-03-21 15:40:27', NULL),
(16, 2, 53, '2.1', '2019-03-21 15:40:27', NULL),
(17, 2, 54, '0.9', '2019-03-21 15:40:27', NULL),
(18, 2, 55, '0.1', '2019-03-21 15:40:27', NULL),
(19, 2, 56, '0.1', '2019-03-21 15:40:27', NULL),
(20, 2, 57, '43', '2019-03-21 15:40:27', NULL),
(21, 2, 58, '50', '2019-03-21 15:40:27', NULL),
(22, 2, 59, '14', '2019-03-21 15:40:27', NULL),
(23, 2, 60, 'o.3', '2019-03-21 15:40:27', NULL),
(24, 2, 61, '0.34', '2019-03-21 15:40:27', NULL),
(25, 4, 112, '', '2019-03-26 08:58:33', NULL),
(26, 4, 113, '', '2019-03-26 08:58:33', NULL),
(27, 4, 114, '', '2019-03-26 08:58:33', NULL),
(28, 4, 115, '', '2019-03-26 08:58:33', NULL),
(29, 4, 116, '5.0', '2019-03-26 08:58:33', NULL),
(30, 4, 117, '41', '2019-03-26 08:58:33', NULL),
(31, 4, 118, '30', '2019-03-26 08:58:33', NULL),
(32, 4, 119, '8888', '2019-03-26 08:58:33', NULL),
(33, 3, 67, '', '2019-03-26 09:00:33', NULL),
(34, 3, 68, '', '2019-03-26 09:00:34', NULL),
(35, 3, 69, '13', '2019-03-26 09:00:34', NULL),
(36, 3, 70, '', '2019-03-26 09:00:34', NULL),
(37, 3, 71, '45', '2019-03-26 09:00:34', NULL),
(38, 3, 72, '', '2019-03-26 09:00:34', NULL),
(39, 3, 73, '5', '2019-03-26 09:00:34', NULL),
(40, 3, 74, '', '2019-03-26 09:00:34', NULL),
(41, 3, 75, '', '2019-03-26 09:00:34', NULL),
(42, 3, 76, '', '2019-03-26 09:00:34', NULL),
(43, 3, 77, '', '2019-03-26 09:00:34', NULL),
(44, 3, 78, '', '2019-03-26 09:00:34', NULL),
(45, 3, 79, '', '2019-03-26 09:00:34', NULL),
(46, 3, 80, '', '2019-03-26 09:00:34', NULL),
(47, 3, 81, '', '2019-03-26 09:00:34', NULL),
(48, 3, 82, '', '2019-03-26 09:00:34', NULL),
(49, 3, 83, '', '2019-03-26 09:00:34', NULL),
(50, 3, 84, '', '2019-03-26 09:00:34', NULL),
(51, 3, 85, '', '2019-03-26 09:00:34', NULL),
(52, 3, 86, '', '2019-03-26 09:00:34', NULL),
(53, 3, 87, '', '2019-03-26 09:00:35', NULL),
(54, 3, 88, '', '2019-03-26 09:00:35', NULL),
(55, 3, 89, '', '2019-03-26 09:00:35', NULL),
(56, 3, 90, '', '2019-03-26 09:00:35', NULL),
(57, 9, 102, 'NEGATIVE', '2019-03-27 10:14:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unhls_visits`
--

CREATE TABLE `unhls_visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `visit_type` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Out-patient',
  `visit_number` int(10) UNSIGNED DEFAULT NULL,
  `visit_lab_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ward_id` int(11) DEFAULT NULL,
  `bed_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visit_status_id` int(11) DEFAULT NULL,
  `hospitalized` int(10) UNSIGNED DEFAULT NULL,
  `on_antibiotics` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unhls_visits`
--

INSERT INTO `unhls_visits` (`id`, `patient_id`, `visit_type`, `visit_number`, `visit_lab_number`, `created_at`, `updated_at`, `ward_id`, `bed_no`, `visit_status_id`, `hospitalized`, `on_antibiotics`) VALUES
(1, 1, 'Out-patient', NULL, '', '2019-03-21 14:21:02', '2019-03-21 14:21:02', NULL, '', NULL, 0, 0),
(2, 2, 'Out-patient', NULL, '', '2019-03-21 14:23:52', '2019-03-21 14:23:52', NULL, '', NULL, NULL, NULL),
(3, 3, 'In-patient', NULL, '557/03/19', '2019-03-26 08:47:39', '2019-03-26 08:47:39', 15, '', NULL, NULL, NULL),
(4, 4, 'Out-patient', NULL, '', '2019-03-26 09:27:41', '2019-03-26 09:27:41', 11, '', NULL, 0, NULL),
(5, 5, 'In-patient', NULL, '', '2019-03-26 11:32:53', '2019-03-26 11:32:53', 1, '', NULL, 0, 0),
(6, 6, 'Out-patient', NULL, '', '2019-03-27 09:48:11', '2019-03-27 09:48:11', 1, '', NULL, 0, NULL),
(7, 6, 'Out-patient', NULL, '', '2019-03-27 10:13:20', '2019-03-27 10:13:20', 1, '', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unhls_warehouse`
--

CREATE TABLE `unhls_warehouse` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facility_id` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `phone_contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `gender`, `designation`, `image`, `remember_token`, `facility_id`, `deleted_at`, `created_at`, `updated_at`, `phone_contact`) VALUES
(1, 'administrator', '$2y$10$rfw7xy1EaSs5rXv3EOsjfOFmm.rgpI5MbviIQ9.S22FTUZl3tOaE.', '', 'A-LIS Admin', 0, 'Systems Administrator', NULL, 'N6rIS8Ho9TEoJ7PVxAFv1jvgHJk9OwFPZ9VVFV2ehiXkFlzpP0KsyW6QI03P', 1, NULL, '2018-03-17 18:35:13', '2019-03-27 07:42:27', NULL),
(2, 'pngobi', '$2y$10$b2/8xU5bBL9L3N4Z5sy5Y.e2UjsvhNRIj/F8IsOX3QgVl33Ssekw6', 'paulngobi29@gmail.com', 'Ngobi Paul', 0, 'Lab Tech', NULL, 'k5GvYaTVW1ZPK77U1UBz5MTsgwYZMDens8ktMBnsuYoockq3s5bcnilQvZh6', 1, NULL, '2018-03-20 19:05:32', '2019-03-26 10:41:06', '0787867751'),
(3, 'famongin', '$2y$10$DmMBuZgyjSej3YtDeKKvN.3gUIty//fQrg/LoU2H3wF.C//H71v7q', 'flavia.tonny91@yahoo.com', 'Flavia Amongin', 1, 'Lab Tech', NULL, '8YziNNveFniIFvqL8yc8Haiclv3Eno72ZqQfBPtIPzBna35US7hMbjaj4Xd2', 1, NULL, '2018-03-20 19:18:46', '2019-01-28 20:57:19', '0705079547'),
(4, 'janywar', '$2y$10$olbecvkSXwuRvSW.areqZe1IOwGR4hBZDVD/D2ZKr8t1O7djXdN2O', 'anywarjustine68@gmail.com', 'Justine Anywar', 0, 'Lab Tech', NULL, 'LR5orhgMMnbT7gt0vrkbLUXWdvldGXGxF3l32VORCabNFcCTrKRwbhrFX8JZ', 1, NULL, '2018-03-20 19:20:50', '2018-07-04 21:23:27', '0772954752'),
(5, 'mnyakato', '$2y$10$ysr9XllZa6tdT8aJy1OdIOI/TEE9sVrAjzFUXQe4W4vaaHq4B/JfG', 'badakimary@gmail.com', 'nyakato mary', 1, 'Data officer', NULL, NULL, 1, NULL, '2018-03-21 18:41:09', '2018-03-21 18:41:09', '0782856736'),
(6, 'bimeny', '$2y$10$H7hwRLpZvCXfRs2P.v2RoeDwZY/FayfNHoa1ycQZtsayJ1aBa681G', 'agudabimeny@gmail.com', 'bimeny john baptist', 0, 'lab assistant', NULL, 'axrUXBMF1UOmT9p0itwP35D6FO1uZdLc2nFmHQsem4EWMtPPyVOhxN0Agbn9', 1, NULL, '2018-03-22 18:16:12', '2018-03-22 18:51:53', '0774667591'),
(7, 'DOREEN', '$2y$10$OpLMaBOnpEIKm4caXJ0DzedE/tDUm0X/8JfIljzEs2mnm7kBxdLei', 'nambidoreen15@yahoo.com', 'NAMBI DOREEN DIANA', 1, 'lab technologist', NULL, NULL, 1, NULL, '2018-08-01 16:48:45', '2018-08-01 16:48:45', '0787482234'),
(8, 'gabriel', '$2y$10$pAmN7NKqrXOR3k.0/vqFvOEJ9Gr91QFVFY.kLwSFLgpuPgKJg2IZ6', 'gabtazenya@gmail.com', 'Tazenya Gabriel', 0, 'Senior Laboratory Technologist', NULL, 'fox5Szm3nR9tC3W8pcJMwzyQ1g41UY4OsSERl3Zyzzrhd78zi4vlVNTvZZDz', 1, NULL, '2019-03-22 12:18:45', '2019-03-26 09:20:33', '0782310948'),
(9, 'enock', '$2y$10$1ZFibP7pFmaDOGZXh3tLPu9GfkltSsr5dmPrfB4yibmS3ItRw.CG2', 'baghendagheenock7agmail.com', 'BAGHENDAGHE ENOCK', 0, 'MLA', NULL, 'V0qGC2DtYG8C96aipBwQcxjVQRXlN4OU7fMpxUXJD28jkiPygcWeFQbAgPvc', 1, NULL, '2019-03-22 12:23:09', '2019-03-22 12:25:27', '0787808867'),
(10, 'Patrickm', '$2y$10$Trla.JahBOinvdtjoFDYue2Dg7EylOeXV.zFMqRc/vrHfSozDRFAu', 'patsmusinguzi80@gmail.com', 'MUSINGUZI PATRICK', 0, 'SLT', NULL, 'GLIo5OHMCpfWxYM90iaborTevd3Yw2WuMmSk4BiHRLdRi4f92o76fOABHDWm', 1, NULL, '2019-03-26 08:26:34', '2019-03-26 09:20:53', '0776944439'),
(11, 'Francis', '$2y$10$OG5W8nSoz1ZfN3wfE4GOPObqfmNdIP0pB3yg3YxzJkBk8fO5Bdx9u', 'musinguzifrancis36@gmail.com', 'MUSINGUZI FRANCIS', 0, 'Lab Assistant', NULL, NULL, 1, NULL, '2019-03-26 08:31:05', '2019-03-26 08:31:05', '0788553713');

-- --------------------------------------------------------

--
-- Table structure for table `uuids`
--

CREATE TABLE `uuids` (
  `id` int(10) UNSIGNED NOT NULL,
  `counter` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uuids`
--

INSERT INTO `uuids` (`id`, `counter`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `visit_statuses`
--

CREATE TABLE `visit_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visit_statuses`
--

INSERT INTO `visit_statuses` (`id`, `name`) VALUES
(1, 'appointment-made'),
(2, 'test-request-made'),
(3, 'specimen_received'),
(4, 'tests-completed');

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ward_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`id`, `name`, `description`, `ward_type_id`) VALUES
(1, 'ART CLINIC', '', 1),
(3, 'SURGICAL WARD', '', 1),
(4, 'PHAMACY', '', 2),
(5, 'MHU', '', 1),
(7, 'FEMALE WARD', '', 1),
(8, 'MALE WARD', '', 1),
(9, 'WORK SHOP', '', 1),
(10, 'PEADRIATRIC', '', 1),
(11, 'OPD', '', 1),
(12, 'PRIVATE', '', 1),
(13, 'MALE SURGICAL WARD', '', 1),
(14, 'FEMALE SURGICAL WARD', '', 1),
(15, 'GYN WARD', '', 1),
(16, 'MBCP', '', 1),
(17, 'MATERNITY', '', 1),
(18, 'NICU', '', 1),
(19, 'NUTRITION', '', 1),
(20, 'EMERGENCY', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ward_type`
--

CREATE TABLE `ward_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ward_type`
--

INSERT INTO `ward_type` (`id`, `name`) VALUES
(1, 'In-patient'),
(2, 'Out-patient');

-- --------------------------------------------------------

--
-- Table structure for table `zone_diameters`
--

CREATE TABLE `zone_diameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `drug_id` int(10) UNSIGNED NOT NULL,
  `organism_id` int(10) UNSIGNED NOT NULL,
  `resistant_max` decimal(4,1) DEFAULT NULL,
  `intermediate_min` decimal(4,1) DEFAULT NULL,
  `intermediate_max` decimal(4,1) DEFAULT NULL,
  `sensitive_min` decimal(4,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zone_diameters`
--

INSERT INTO `zone_diameters` (`id`, `drug_id`, `organism_id`, `resistant_max`, `intermediate_min`, `intermediate_max`, `sensitive_min`) VALUES
(1, 1, 1, '14.0', '15.0', '16.0', '17.0'),
(2, 2, 2, '13.0', '14.0', '16.0', '17.0'),
(3, 3, 2, '13.0', '14.0', '17.0', '18.0'),
(4, 4, 2, '22.0', '23.0', '25.0', '26.0'),
(5, 5, 2, '17.0', '18.0', '20.0', '21.0'),
(6, 6, 2, '19.0', '20.0', '22.0', '23.0'),
(7, 7, 2, '22.0', '23.0', '25.0', '26.0'),
(8, 8, 2, '14.0', '15.0', '17.0', '18.0'),
(9, 9, 2, '14.0', '15.0', '22.0', '23.0'),
(10, 10, 2, '12.0', '13.0', '17.0', '18.0'),
(11, 11, 2, '15.0', '16.0', '20.0', '21.0'),
(12, 12, 2, '10.0', '11.0', '15.0', '16.0'),
(13, 13, 2, '12.0', '13.0', '14.0', '15.0'),
(14, 14, 2, '19.0', '20.0', '22.0', '23.0'),
(15, 15, 2, '19.0', '20.0', '22.0', '23.0'),
(16, 16, 2, '13.0', '14.0', '18.0', '19.0'),
(17, 17, 2, '17.0', '18.0', '20.0', '21.0'),
(18, 18, 2, '17.0', '18.0', '20.0', '21.0'),
(19, 19, 2, '13.0', '14.0', '16.0', '17.0'),
(20, 20, 2, '10.0', '11.0', '15.0', '16.0'),
(21, 2, 3, '13.0', '14.0', '16.0', '17.0'),
(22, 8, 3, '14.0', '15.0', '17.0', '18.0'),
(23, 9, 3, '14.0', '15.0', '22.0', '23.0'),
(24, 21, 3, '13.0', '14.0', '17.0', '18.0'),
(25, 13, 3, '12.0', '13.0', '14.0', '15.0'),
(26, 12, 3, '10.0', '11.0', '15.0', '16.0'),
(27, 10, 3, '12.0', '13.0', '17.0', '18.0'),
(28, 11, 3, '15.0', '16.0', '20.0', '21.0'),
(29, 6, 3, '19.0', '20.0', '22.0', '23.0'),
(30, 7, 3, '22.0', '23.0', '25.0', '26.0'),
(31, 5, 3, '17.0', '18.0', '20.0', '21.0'),
(32, 22, 3, NULL, NULL, NULL, '25.0'),
(33, 18, 3, '17.0', '18.0', '20.0', '21.0'),
(34, 17, 3, '17.0', '18.0', '20.0', '21.0'),
(35, 14, 3, '19.0', '20.0', '22.0', '23.0'),
(36, 16, 3, '13.0', '14.0', '18.0', '19.0'),
(37, 19, 3, '14.0', '15.0', '16.0', '17.0'),
(38, 18, 1, '14.0', '15.0', '20.0', '21.0'),
(39, 17, 1, '14.0', '15.0', '20.0', '21.0'),
(40, 5, 1, '14.0', '15.0', '17.0', '18.0'),
(41, 22, 1, '14.0', '15.0', '17.0', '18.0'),
(42, 13, 1, '12.0', '13.0', '14.0', '15.0'),
(43, 11, 1, '15.0', '16.0', '20.0', '21.0'),
(44, 14, 1, '13.0', '14.0', '15.0', '16.0'),
(45, 15, 1, '13.0', '14.0', '15.0', '16.0'),
(46, 23, 1, '10.0', NULL, NULL, '12.0'),
(57, 1, 5, '14.0', '15.0', '16.0', '17.0'),
(58, 22, 5, '14.0', '15.0', '17.0', '18.0'),
(59, 5, 5, '14.0', '15.0', '17.0', '18.0'),
(60, 11, 5, '15.0', '16.0', '20.0', '21.0'),
(61, 23, 5, '10.0', NULL, NULL, '11.0'),
(62, 13, 5, '12.0', '13.0', '14.0', '15.0'),
(63, 14, 5, '13.0', '14.0', '15.0', '16.0'),
(64, 15, 5, '13.0', '14.0', '15.0', '16.0'),
(65, 17, 5, '14.0', '15.0', '20.0', '21.0'),
(66, 18, 5, '14.0', '15.0', '20.0', '21.0'),
(67, 1, 6, '14.0', '15.0', '16.0', '17.0'),
(68, 22, 6, '14.0', '15.0', '17.0', '18.0'),
(69, 5, 6, '14.0', '15.0', '17.0', '18.0'),
(70, 11, 6, '15.0', '16.0', '20.0', '21.0'),
(71, 23, 6, '10.0', NULL, NULL, '11.0'),
(72, 13, 6, '12.0', '13.0', '14.0', '15.0'),
(73, 14, 6, '13.0', '14.0', '15.0', '16.0'),
(74, 15, 6, '13.0', '14.0', '15.0', '16.0'),
(75, 17, 6, '14.0', '15.0', '20.0', '21.0'),
(76, 18, 6, '14.0', '15.0', '20.0', '21.0'),
(127, 17, 12, '17.0', '18.0', '20.0', '21.0'),
(128, 20, 12, '10.0', '11.0', '15.0', '16.0'),
(129, 15, 12, '14.0', '15.0', '17.0', '18.0'),
(130, 1, 12, '14.0', '15.0', '16.0', '17.0'),
(131, 22, 12, '14.0', '15.0', '17.0', '18.0'),
(132, 5, 12, '14.0', '15.0', '17.0', '18.0'),
(133, 6, 12, '13.0', '14.0', '20.0', '21.0'),
(134, 11, 12, '15.0', '16.0', '20.0', '21.0'),
(135, 13, 12, '12.0', '13.0', '14.0', '15.0'),
(136, 24, 12, '11.0', '12.0', '14.0', '15.0'),
(137, 14, 12, '18.0', '19.0', '21.0', '22.0'),
(138, 18, 12, '17.0', '18.0', '20.0', '21.0'),
(139, 17, 13, '17.0', '18.0', '20.0', '21.0'),
(140, 18, 13, '17.0', '18.0', '20.0', '21.0'),
(141, 1, 13, '14.0', '15.0', '16.0', '17.0'),
(142, 14, 13, '18.0', '19.0', '21.0', '22.0'),
(143, 13, 13, '12.0', '13.0', '14.0', '15.0'),
(144, 11, 13, '15.0', '16.0', '20.0', '21.0'),
(145, 5, 13, '14.0', '15.0', '17.0', '18.0'),
(146, 6, 13, '13.0', '14.0', '20.0', '21.0'),
(147, 22, 13, '14.0', '15.0', '17.0', '18.0'),
(148, 24, 13, '11.0', '12.0', '14.0', '15.0'),
(149, 15, 13, '14.0', '15.0', '17.0', '18.0'),
(150, 20, 13, '10.0', '11.0', '15.0', '16.0'),
(175, 11, 16, '20.0', '21.0', '30.0', '31.0'),
(176, 2, 16, '13.0', '14.0', '16.0', '17.0'),
(177, 16, 16, '13.0', '14.0', '18.0', '19.0'),
(178, 12, 16, '10.0', '11.0', '15.0', '16.0'),
(179, 10, 16, '12.0', '13.0', '17.0', '18.0'),
(180, 6, 16, '19.0', '20.0', '22.0', '23.0'),
(181, 2, 17, '13.0', '14.0', '16.0', '17.0'),
(182, 11, 17, '20.0', '21.0', '30.0', '31.0'),
(183, 16, 17, '13.0', '14.0', '18.0', '19.0'),
(184, 12, 17, '10.0', '11.0', '15.0', '16.0'),
(185, 10, 17, '12.0', '13.0', '17.0', '18.0'),
(186, 6, 17, '19.0', '20.0', '22.0', '23.0'),
(187, 2, 18, '13.0', '14.0', '16.0', '17.0'),
(188, 6, 18, '19.0', '20.0', '22.0', '23.0'),
(189, 11, 18, '20.0', '21.0', '30.0', '31.0'),
(190, 16, 18, '13.0', '14.0', '18.0', '19.0'),
(191, 10, 18, '12.0', '13.0', '17.0', '18.0'),
(192, 12, 18, '10.0', '11.0', '15.0', '16.0'),
(193, 6, 19, '19.0', '20.0', '22.0', '23.0'),
(194, 2, 19, '13.0', '14.0', '16.0', '17.0'),
(195, 11, 19, '20.0', '21.0', '30.0', '31.0'),
(196, 10, 19, '12.0', '13.0', '17.0', '18.0'),
(197, 16, 19, '13.0', '14.0', '18.0', '19.0'),
(198, 12, 19, '10.0', '11.0', '15.0', '16.0'),
(199, 10, 20, '12.0', '13.0', '17.0', '18.0'),
(200, 24, 20, '14.0', '15.0', '18.0', '19.0'),
(201, 20, 20, '10.0', '11.0', '15.0', '16.0'),
(202, 2, 20, '13.0', '14.0', '16.0', '17.0'),
(203, 6, 21, '24.0', '25.0', '26.0', '27.0'),
(204, 25, 21, '15.0', '16.0', '20.0', '21.0'),
(205, 26, 21, '15.0', '16.0', '18.0', '19.0'),
(206, 10, 21, '17.0', '18.0', '20.0', '21.0'),
(207, 27, 21, NULL, NULL, NULL, '17.0'),
(208, 28, 21, NULL, NULL, NULL, '21.0'),
(209, 24, 21, '18.0', '19.0', '22.0', '23.0'),
(223, 1, 23, '14.0', '15.0', '16.0', '17.0'),
(224, 11, 23, '15.0', '16.0', '20.0', '21.0'),
(225, 10, 23, '12.0', '13.0', '17.0', '18.0'),
(226, 25, 23, '13.0', '14.0', '22.0', '23.0'),
(227, 26, 23, '14.0', '15.0', '20.0', '21.0'),
(228, 13, 23, '12.0', '13.0', '14.0', '15.0'),
(229, 19, 23, '14.0', '15.0', '16.0', '17.0'),
(230, 28, 23, '16.0', NULL, NULL, '21.0'),
(231, 31, 23, '16.0', '17.0', '19.0', '20.0'),
(232, 24, 23, '14.0', '15.0', '18.0', '19.0'),
(233, 20, 23, '10.0', '11.0', '15.0', '16.0'),
(234, 27, 23, NULL, NULL, NULL, NULL),
(235, 30, 23, '21.0', NULL, NULL, '22.0'),
(236, 29, 23, '28.0', NULL, NULL, '29.0'),
(238, 1, 24, '14.0', '15.0', '16.0', '17.0'),
(239, 27, 24, NULL, NULL, NULL, NULL),
(240, 20, 24, '10.0', '11.0', '15.0', '16.0'),
(241, 31, 24, '16.0', '17.0', '19.0', '20.0'),
(242, 24, 24, '14.0', '15.0', '18.0', '19.0'),
(243, 29, 24, '28.0', NULL, NULL, '29.0'),
(244, 19, 24, '14.0', '15.0', '16.0', '17.0'),
(245, 28, 24, '16.0', NULL, NULL, '21.0'),
(246, 13, 24, '12.0', '13.0', '14.0', '15.0'),
(247, 25, 24, '13.0', '14.0', '22.0', '23.0'),
(248, 26, 24, '14.0', '15.0', '20.0', '21.0'),
(249, 11, 24, '15.0', '16.0', '20.0', '21.0'),
(250, 10, 24, '12.0', '13.0', '17.0', '18.0'),
(251, 30, 24, '21.0', NULL, NULL, '22.0'),
(252, 28, 25, '16.0', NULL, NULL, '21.0'),
(253, 31, 25, '16.0', '17.0', '19.0', '20.0'),
(254, 19, 25, '14.0', '15.0', '16.0', '17.0'),
(255, 1, 25, '14.0', '15.0', '16.0', '17.0'),
(256, 13, 25, '12.0', '13.0', '14.0', '15.0'),
(257, 11, 25, '15.0', '16.0', '20.0', '21.0'),
(258, 10, 25, '12.0', '13.0', '17.0', '18.0'),
(259, 20, 25, '10.0', '11.0', '15.0', '16.0'),
(260, 24, 25, '14.0', '15.0', '18.0', '19.0'),
(261, 27, 25, NULL, NULL, NULL, NULL),
(262, 26, 25, '14.0', '15.0', '20.0', '21.0'),
(263, 25, 25, '13.0', '14.0', '22.0', '23.0'),
(264, 30, 25, '21.0', NULL, NULL, '22.0'),
(265, 29, 25, '28.0', NULL, NULL, '29.0'),
(308, 27, 29, NULL, NULL, NULL, NULL),
(309, 20, 29, NULL, NULL, NULL, NULL),
(310, 24, 29, NULL, NULL, NULL, NULL),
(311, 31, 29, NULL, NULL, NULL, NULL),
(312, 29, 29, NULL, NULL, NULL, NULL),
(313, 19, 29, NULL, NULL, NULL, NULL),
(314, 28, 29, NULL, NULL, NULL, NULL),
(315, 13, 29, NULL, NULL, NULL, NULL),
(316, 25, 29, NULL, NULL, NULL, NULL),
(317, 26, 29, NULL, NULL, NULL, NULL),
(318, 11, 29, NULL, NULL, NULL, NULL),
(319, 10, 29, NULL, NULL, NULL, NULL),
(320, 30, 29, NULL, NULL, NULL, NULL),
(321, 1, 29, NULL, NULL, NULL, NULL),
(322, 1, 30, NULL, NULL, NULL, NULL),
(323, 30, 30, NULL, NULL, NULL, NULL),
(324, 27, 30, NULL, NULL, NULL, NULL),
(325, 20, 30, NULL, NULL, NULL, NULL),
(326, 24, 30, NULL, NULL, NULL, NULL),
(327, 31, 30, NULL, NULL, NULL, NULL),
(328, 29, 30, NULL, NULL, NULL, NULL),
(329, 19, 30, NULL, NULL, NULL, NULL),
(330, 28, 30, NULL, NULL, NULL, NULL),
(331, 13, 30, NULL, NULL, NULL, NULL),
(332, 25, 30, NULL, NULL, NULL, NULL),
(333, 26, 30, NULL, NULL, NULL, NULL),
(334, 11, 30, NULL, NULL, NULL, NULL),
(335, 10, 30, NULL, NULL, NULL, NULL),
(336, 1, 31, NULL, NULL, NULL, NULL),
(337, 30, 31, NULL, NULL, NULL, NULL),
(338, 27, 31, NULL, NULL, NULL, NULL),
(339, 20, 31, NULL, NULL, NULL, NULL),
(340, 24, 31, NULL, NULL, NULL, NULL),
(341, 31, 31, NULL, NULL, NULL, NULL),
(342, 29, 31, NULL, NULL, NULL, NULL),
(343, 19, 31, NULL, NULL, NULL, NULL),
(344, 28, 31, NULL, NULL, NULL, NULL),
(345, 13, 31, NULL, NULL, NULL, NULL),
(346, 25, 31, NULL, NULL, NULL, NULL),
(347, 26, 31, NULL, NULL, NULL, NULL),
(348, 10, 31, NULL, NULL, NULL, NULL),
(349, 11, 31, NULL, NULL, NULL, NULL),
(350, 18, 32, '17.0', '18.0', '20.0', '21.0'),
(351, 17, 32, '17.0', '18.0', '20.0', '21.0'),
(352, 19, 32, '14.0', '15.0', '16.0', '17.0'),
(353, 16, 32, '13.0', '14.0', '18.0', '19.0'),
(354, 14, 32, '19.0', '20.0', '22.0', '23.0'),
(355, 13, 32, '12.0', '13.0', '14.0', '15.0'),
(356, 12, 32, '10.0', '11.0', '15.0', '16.0'),
(357, 11, 32, '15.0', '16.0', '20.0', '21.0'),
(358, 10, 32, '12.0', '13.0', '17.0', '18.0'),
(359, 8, 32, '14.0', '15.0', '22.0', '23.0'),
(360, 6, 32, '13.0', '14.0', '20.0', '21.0'),
(361, 5, 32, '13.0', '14.0', '20.0', '21.0'),
(362, 2, 32, '13.0', '14.0', '16.0', '17.0'),
(363, 21, 32, '13.0', '14.0', '17.0', '18.0'),
(364, 18, 33, '17.0', '18.0', '20.0', '21.0'),
(365, 17, 33, '17.0', '18.0', '20.0', '21.0'),
(366, 19, 33, '13.0', '14.0', '16.0', '17.0'),
(367, 16, 33, '13.0', '14.0', '18.0', '19.0'),
(368, 14, 33, '19.0', '20.0', '22.0', '23.0'),
(369, 13, 33, '12.0', '13.0', '14.0', '15.0'),
(370, 11, 33, '15.0', '16.0', '20.0', '21.0'),
(371, 10, 33, '12.0', '13.0', '17.0', '18.0'),
(372, 12, 33, '10.0', '11.0', '15.0', '16.0'),
(373, 8, 33, '14.0', '15.0', '17.0', '18.0'),
(374, 6, 33, '13.0', '14.0', '20.0', '21.0'),
(375, 5, 33, '13.0', '14.0', '20.0', '21.0'),
(376, 22, 33, NULL, NULL, NULL, '25.0'),
(377, 2, 33, '13.0', '14.0', '16.0', '17.0'),
(378, 28, 34, '20.0', '21.0', '22.0', '23.0'),
(379, 31, 34, '16.0', '17.0', '19.0', '20.0'),
(380, 19, 34, '14.0', '15.0', '16.0', '17.0'),
(381, 32, 34, '6.0', '7.0', '9.0', '10.0'),
(382, 11, 34, '15.0', '16.0', '20.0', '21.0'),
(383, 10, 34, '12.0', '13.0', '17.0', '18.0'),
(384, 27, 34, '14.0', '15.0', '17.0', '18.0'),
(385, 24, 34, '14.0', '15.0', '18.0', '19.0'),
(386, 25, 34, '13.0', '14.0', '22.0', '23.0'),
(387, 29, 34, '14.0', NULL, NULL, '15.0'),
(388, 2, 34, '16.0', NULL, NULL, '17.0'),
(389, 27, 35, '14.0', '15.0', '17.0', '18.0'),
(390, 24, 35, '14.0', '15.0', '18.0', '19.0'),
(391, 32, 35, '6.0', '7.0', '9.0', '10.0'),
(392, 31, 35, '16.0', '17.0', '19.0', '20.0'),
(393, 29, 35, '14.0', NULL, NULL, '15.0'),
(394, 19, 35, '14.0', '15.0', '16.0', '17.0'),
(395, 28, 35, '20.0', '21.0', '22.0', '23.0'),
(396, 13, 35, '6.0', '7.0', '9.0', '10.0'),
(397, 25, 35, '13.0', '14.0', '22.0', '23.0'),
(398, 11, 35, '15.0', '16.0', '20.0', '21.0'),
(399, 10, 35, '12.0', '13.0', '17.0', '18.0'),
(400, 2, 35, '16.0', NULL, NULL, '17.0'),
(401, 24, 36, '18.0', '19.0', '22.0', '23.0'),
(402, 27, 36, NULL, NULL, NULL, '17.0'),
(403, 10, 36, '17.0', '18.0', '20.0', '21.0'),
(404, 26, 36, '15.0', '16.0', '18.0', '19.0'),
(405, 25, 36, '15.0', '16.0', '20.0', '21.0'),
(406, 6, 36, NULL, NULL, NULL, '24.0'),
(407, 15, 37, '15.0', '16.0', '19.0', '20.0'),
(408, 20, 37, '10.0', '11.0', '15.0', '16.0'),
(409, 33, 37, '14.0', '15.0', '18.0', '19.0'),
(410, 5, 37, '17.0', '18.0', '20.0', '21.0'),
(411, 5, 38, '17.0', '18.0', '20.0', '21.0'),
(412, 15, 38, '15.0', '16.0', '19.0', '20.0'),
(413, 33, 38, '14.0', '15.0', '18.0', '19.0'),
(414, 20, 38, '10.0', '11.0', '15.0', '16.0'),
(415, 5, 39, '17.0', '18.0', '20.0', '21.0'),
(416, 15, 39, '15.0', '16.0', '19.0', '20.0'),
(417, 33, 39, '14.0', '15.0', '18.0', '19.0'),
(418, 20, 39, '10.0', '11.0', '15.0', '16.0'),
(419, 6, 40, NULL, NULL, NULL, '35.0'),
(420, 34, 40, NULL, NULL, NULL, '31.0'),
(421, 11, 40, '27.0', '28.0', '40.0', '41.0'),
(422, 29, 40, '26.0', '27.0', '46.0', '47.0'),
(423, 24, 40, '30.0', '31.0', '37.0', '38.0'),
(424, 35, 40, '14.0', '15.0', '17.0', '18.0'),
(425, 24, 41, '30.0', '31.0', '37.0', '38.0'),
(426, 35, 41, '14.0', '15.0', '17.0', '18.0'),
(427, 29, 41, '26.0', '27.0', '46.0', '47.0'),
(428, 11, 41, '27.0', '28.0', '40.0', '41.0'),
(429, 6, 41, NULL, NULL, NULL, '35.0'),
(430, 24, 42, '30.0', '31.0', '37.0', '38.0'),
(431, 35, 42, '14.0', '15.0', '17.0', '18.0'),
(432, 29, 42, '26.0', '27.0', '46.0', '47.0'),
(433, 11, 42, '27.0', '28.0', '40.0', '41.0'),
(434, 6, 42, NULL, NULL, NULL, '35.0'),
(435, 6, 43, NULL, NULL, NULL, '35.0'),
(436, 11, 43, '27.0', '28.0', '40.0', '41.0'),
(437, 29, 43, '26.0', '27.0', '46.0', '47.0'),
(438, 35, 43, '14.0', '15.0', '17.0', '18.0'),
(439, 24, 43, '30.0', '31.0', '37.0', '38.0'),
(440, 24, 44, '25.0', '26.0', '28.0', '29.0'),
(441, 20, 44, '10.0', '11.0', '15.0', '16.0'),
(442, 15, 44, NULL, NULL, NULL, '20.0'),
(443, 31, 44, '16.0', '17.0', '19.0', '20.0'),
(444, 8, 44, '16.0', '17.0', '19.0', '20.0'),
(445, 11, 44, NULL, NULL, NULL, '21.0'),
(446, 10, 44, '25.0', '26.0', '28.0', '29.0'),
(447, 3, 44, '19.0', NULL, NULL, '20.0'),
(448, 2, 44, '18.0', '19.0', '21.0', '22.0'),
(449, 6, 44, NULL, NULL, NULL, '20.0'),
(450, 20, 45, '10.0', '11.0', '15.0', '16.0'),
(451, 24, 45, '25.0', '26.0', '28.0', '29.0'),
(452, 31, 45, '16.0', '17.0', '19.0', '20.0'),
(453, 15, 45, NULL, NULL, NULL, '20.0'),
(454, 11, 45, NULL, NULL, NULL, '21.0'),
(455, 10, 45, '25.0', '26.0', '28.0', '29.0'),
(456, 8, 45, '16.0', '17.0', '19.0', '20.0'),
(457, 6, 45, NULL, NULL, NULL, '26.0'),
(458, 3, 45, '19.0', NULL, NULL, '20.0'),
(459, 2, 45, '18.0', '19.0', '21.0', '22.0'),
(460, 6, 46, NULL, NULL, NULL, '26.0'),
(461, 8, 46, '16.0', '17.0', '19.0', '20.0'),
(462, 20, 46, '10.0', '11.0', '15.0', '16.0'),
(463, 24, 46, '25.0', '26.0', '28.0', '29.0'),
(464, 31, 46, '16.0', '17.0', '19.0', '20.0'),
(465, 15, 46, NULL, NULL, NULL, '20.0'),
(466, 11, 46, NULL, NULL, NULL, '21.0'),
(467, 10, 46, '25.0', '26.0', '28.0', '29.0'),
(468, 3, 46, '19.0', NULL, NULL, '20.0'),
(469, 2, 46, '18.0', '19.0', '21.0', '22.0'),
(480, 20, 48, '10.0', '11.0', '15.0', '16.0'),
(481, 24, 48, '25.0', '26.0', '28.0', '29.0'),
(482, 31, 48, '16.0', '17.0', '19.0', '20.0'),
(483, 15, 48, NULL, NULL, NULL, '20.0'),
(484, 11, 48, NULL, NULL, NULL, '21.0'),
(485, 10, 48, '25.0', '26.0', '28.0', '29.0'),
(486, 8, 48, '16.0', '17.0', '19.0', '20.0'),
(487, 6, 48, NULL, NULL, NULL, '26.0'),
(488, 3, 48, '19.0', NULL, NULL, '20.0'),
(489, 2, 48, '18.0', '19.0', '21.0', '22.0'),
(519, 3, 52, '19.0', NULL, NULL, '20.0'),
(520, 2, 52, '18.0', '19.0', '21.0', '22.0'),
(521, 20, 52, '10.0', '11.0', '15.0', '16.0'),
(522, 24, 52, '25.0', '26.0', '28.0', '29.0'),
(523, 31, 52, '16.0', '17.0', '19.0', '20.0'),
(524, 15, 52, NULL, NULL, NULL, '20.0'),
(525, 8, 52, '16.0', '17.0', '19.0', '20.0'),
(526, 6, 52, NULL, NULL, NULL, '26.0'),
(527, 11, 52, NULL, NULL, NULL, '21.0'),
(528, 10, 52, '25.0', '26.0', '28.0', '29.0'),
(529, 20, 53, '10.0', '11.0', '15.0', '16.0'),
(530, 24, 53, '25.0', '26.0', '28.0', '29.0'),
(531, 31, 53, '16.0', '17.0', '19.0', '20.0'),
(532, 15, 53, NULL, NULL, NULL, '20.0'),
(533, 11, 53, NULL, NULL, NULL, '21.0'),
(534, 10, 53, '25.0', '26.0', '28.0', '29.0'),
(535, 8, 53, '16.0', '17.0', '19.0', '20.0'),
(536, 6, 53, NULL, NULL, NULL, '26.0'),
(537, 3, 53, '19.0', NULL, NULL, '20.0'),
(538, 2, 53, '18.0', '19.0', '21.0', '22.0'),
(539, 31, 54, '16.0', '17.0', '19.0', '20.0'),
(540, 24, 54, '25.0', '26.0', '28.0', '29.0'),
(541, 20, 54, '10.0', '11.0', '15.0', '16.0'),
(542, 15, 54, NULL, NULL, NULL, '20.0'),
(543, 11, 54, NULL, NULL, NULL, '21.0'),
(544, 10, 54, '25.0', '26.0', '28.0', '29.0'),
(545, 8, 54, '16.0', '17.0', '19.0', '20.0'),
(546, 6, 54, NULL, NULL, NULL, '26.0'),
(547, 3, 54, '19.0', NULL, NULL, '20.0'),
(548, 2, 54, '18.0', '19.0', '21.0', '22.0'),
(549, 20, 55, '10.0', '11.0', '15.0', '16.0'),
(550, 24, 55, '25.0', '26.0', '28.0', '29.0'),
(551, 31, 55, '16.0', '17.0', '19.0', '20.0'),
(552, 15, 55, NULL, NULL, NULL, '20.0'),
(553, 11, 55, NULL, NULL, NULL, '21.0'),
(554, 10, 55, '25.0', '26.0', '28.0', '29.0'),
(555, 8, 55, '16.0', '17.0', '19.0', '20.0'),
(556, 6, 55, NULL, NULL, NULL, '26.0'),
(557, 3, 55, '19.0', NULL, NULL, '20.0'),
(558, 2, 55, '18.0', '19.0', '21.0', '22.0'),
(559, 20, 56, '10.0', '11.0', '15.0', '16.0'),
(560, 24, 56, '25.0', '26.0', '28.0', '29.0'),
(561, 31, 56, '16.0', '17.0', '19.0', '20.0'),
(562, 15, 56, NULL, NULL, NULL, '20.0'),
(563, 11, 56, NULL, NULL, NULL, '21.0'),
(564, 10, 56, '25.0', '26.0', '28.0', '29.0'),
(565, 8, 56, '16.0', '17.0', '19.0', '20.0'),
(566, 6, 56, NULL, NULL, NULL, '26.0'),
(567, 3, 56, '19.0', NULL, NULL, '20.0'),
(568, 2, 56, '18.0', '19.0', '21.0', '22.0'),
(601, 20, 61, '15.0', '16.0', '18.0', '19.0'),
(602, 24, 61, '24.0', '25.0', '27.0', '28.0'),
(603, 31, 61, '16.0', '17.0', '18.0', '19.0'),
(604, 28, 61, NULL, NULL, NULL, '21.0'),
(605, 10, 61, '20.0', NULL, NULL, '21.0'),
(606, 26, 61, '15.0', '16.0', '18.0', '19.0'),
(607, 25, 61, '15.0', '16.0', '20.0', '21.0'),
(608, 36, 61, NULL, NULL, NULL, '20.0'),
(699, 18, 67, NULL, NULL, NULL, NULL),
(700, 17, 67, NULL, NULL, NULL, NULL),
(701, 19, 67, NULL, NULL, NULL, NULL),
(702, 16, 67, NULL, NULL, NULL, NULL),
(703, 15, 67, NULL, NULL, NULL, NULL),
(704, 14, 67, NULL, NULL, NULL, NULL),
(705, 13, 67, NULL, NULL, NULL, NULL),
(706, 12, 67, NULL, NULL, NULL, NULL),
(707, 11, 67, NULL, NULL, NULL, NULL),
(708, 10, 67, NULL, NULL, NULL, NULL),
(709, 9, 67, NULL, NULL, NULL, NULL),
(710, 8, 67, NULL, NULL, NULL, NULL),
(711, 6, 67, NULL, NULL, NULL, NULL),
(712, 5, 67, NULL, NULL, NULL, NULL),
(713, 4, 67, NULL, NULL, NULL, NULL),
(714, 22, 67, NULL, NULL, NULL, NULL),
(715, 2, 67, '13.0', '14.0', '16.0', '17.0'),
(716, 9, 33, '14.0', '15.0', '22.0', '23.0'),
(717, 18, 68, '17.0', '18.0', '20.0', '21.0'),
(718, 17, 68, '17.0', '18.0', '20.0', '21.0'),
(719, 19, 68, '13.0', '14.0', '16.0', '17.0'),
(720, 16, 68, '13.0', '14.0', '18.0', '19.0'),
(721, 15, 68, '19.0', '20.0', '22.0', '23.0'),
(722, 13, 68, '12.0', '13.0', '14.0', '15.0'),
(723, 14, 68, '19.0', '20.0', '22.0', '23.0'),
(724, 12, 68, '10.0', '11.0', '15.0', '16.0'),
(725, 11, 68, '15.0', '16.0', '20.0', '21.0'),
(726, 10, 68, '12.0', '13.0', '17.0', '18.0'),
(727, 9, 68, '14.0', '15.0', '22.0', '23.0'),
(728, 8, 68, '14.0', '15.0', '17.0', '18.0'),
(729, 6, 68, '19.0', '20.0', '22.0', '23.0'),
(730, 5, 68, '17.0', '18.0', '20.0', '21.0'),
(731, 4, 68, '22.0', '23.0', '25.0', '26.0'),
(732, 22, 68, NULL, NULL, NULL, '25.0'),
(733, 2, 68, '13.0', '14.0', '16.0', '17.0'),
(734, 21, 68, '13.0', '14.0', '17.0', '18.0'),
(735, 16, 69, '13.0', '14.0', '18.0', '19.0'),
(736, 17, 69, '17.0', '18.0', '20.0', '21.0'),
(737, 18, 69, '17.0', '18.0', '20.0', '21.0'),
(738, 19, 69, '13.0', '14.0', '16.0', '17.0'),
(739, 21, 69, '13.0', '14.0', '17.0', '18.0'),
(740, 2, 69, '13.0', '14.0', '16.0', '17.0'),
(741, 22, 69, NULL, NULL, NULL, '25.0'),
(742, 4, 69, '22.0', '23.0', '25.0', '26.0'),
(743, 5, 69, '17.0', '18.0', '20.0', '21.0'),
(744, 6, 69, '19.0', '20.0', '22.0', '23.0'),
(745, 9, 69, '14.0', '15.0', '22.0', '23.0'),
(746, 8, 69, '14.0', '15.0', '17.0', '18.0'),
(747, 10, 69, '12.0', '13.0', '17.0', '18.0'),
(748, 11, 69, '15.0', '16.0', '20.0', '21.0'),
(749, 12, 69, '10.0', '11.0', '15.0', '16.0'),
(750, 13, 69, '12.0', '13.0', '14.0', '15.0'),
(751, 15, 69, '19.0', '20.0', '22.0', '23.0'),
(752, 14, 69, '19.0', '20.0', '22.0', '23.0'),
(771, 18, 71, '17.0', '18.0', '20.0', '21.0'),
(772, 17, 71, '17.0', '18.0', '20.0', '21.0'),
(773, 19, 71, '13.0', '14.0', '16.0', '17.0'),
(774, 16, 71, '13.0', '14.0', '18.0', '19.0'),
(775, 15, 71, '19.0', '20.0', '22.0', '23.0'),
(776, 14, 71, '19.0', '20.0', '22.0', '23.0'),
(777, 13, 71, '12.0', '13.0', '14.0', '15.0'),
(778, 12, 71, '10.0', '11.0', '15.0', '16.0'),
(779, 9, 71, '14.0', '15.0', '22.0', '23.0'),
(780, 8, 71, '14.0', '15.0', '17.0', '18.0'),
(781, 6, 71, '19.0', '20.0', '22.0', '23.0'),
(782, 5, 71, '17.0', '18.0', '20.0', '21.0'),
(783, 4, 71, '22.0', '23.0', '25.0', '26.0'),
(784, 22, 71, NULL, NULL, NULL, '25.0'),
(785, 21, 71, '13.0', '14.0', '17.0', '18.0'),
(786, 2, 71, '13.0', '14.0', '16.0', '17.0'),
(787, 11, 71, '15.0', '16.0', '20.0', '21.0'),
(788, 10, 71, '12.0', '13.0', '17.0', '18.0'),
(789, 18, 72, '17.0', '18.0', '20.0', '21.0'),
(790, 17, 72, '17.0', '18.0', '20.0', '21.0'),
(791, 19, 72, '13.0', '14.0', '16.0', '17.0'),
(792, 16, 72, '13.0', '14.0', '18.0', '19.0'),
(793, 15, 72, '19.0', '20.0', '22.0', '23.0'),
(794, 14, 72, '19.0', '20.0', '22.0', '23.0'),
(795, 13, 72, '12.0', '13.0', '14.0', '15.0'),
(796, 12, 72, '10.0', '11.0', '15.0', '16.0'),
(797, 11, 72, '15.0', '16.0', '20.0', '21.0'),
(798, 10, 72, '12.0', '13.0', '17.0', '18.0'),
(799, 9, 72, '14.0', '15.0', '22.0', '23.0'),
(800, 8, 72, '14.0', '15.0', '17.0', '18.0'),
(801, 6, 72, '19.0', '20.0', '22.0', '23.0'),
(802, 5, 72, '17.0', '18.0', '20.0', '21.0'),
(803, 4, 72, '22.0', '23.0', '25.0', '26.0'),
(804, 22, 72, NULL, NULL, NULL, '25.0'),
(805, 2, 72, '13.0', '14.0', '16.0', '17.0'),
(806, 21, 72, '13.0', '14.0', '17.0', '18.0'),
(825, 18, 74, '17.0', '18.0', '20.0', '21.0'),
(826, 17, 74, '17.0', '18.0', '20.0', '21.0'),
(827, 19, 74, '13.0', '14.0', '16.0', '17.0'),
(828, 16, 74, '13.0', '14.0', '18.0', '19.0'),
(829, 15, 74, '19.0', '20.0', '22.0', '23.0'),
(830, 14, 74, '19.0', '20.0', '22.0', '23.0'),
(831, 13, 74, '12.0', '13.0', '14.0', '15.0'),
(832, 12, 74, '10.0', '11.0', '15.0', '16.0'),
(833, 11, 74, '15.0', '16.0', '20.0', '21.0'),
(834, 10, 74, '12.0', '13.0', '17.0', '18.0'),
(835, 9, 74, '14.0', '15.0', '22.0', '23.0'),
(836, 8, 74, '14.0', '15.0', '17.0', '18.0'),
(837, 6, 74, '19.0', '20.0', '22.0', '23.0'),
(838, 5, 74, '17.0', '18.0', '20.0', '21.0'),
(839, 4, 74, '22.0', '23.0', '25.0', '26.0'),
(840, 22, 74, NULL, NULL, NULL, '25.0'),
(841, 2, 74, '13.0', '14.0', '16.0', '17.0'),
(842, 21, 74, '13.0', '14.0', '17.0', '18.0'),
(843, 18, 75, '17.0', '18.0', '20.0', '21.0'),
(844, 17, 75, '17.0', '18.0', '20.0', '21.0'),
(845, 19, 75, '13.0', '14.0', '16.0', '17.0'),
(846, 16, 75, '13.0', '14.0', '18.0', '19.0'),
(847, 15, 75, '19.0', '20.0', '22.0', '23.0'),
(848, 14, 75, '19.0', '20.0', '22.0', '23.0'),
(849, 13, 75, '12.0', '13.0', '14.0', '15.0'),
(850, 12, 75, '10.0', '11.0', '15.0', '16.0'),
(851, 10, 75, '12.0', '13.0', '17.0', '18.0'),
(852, 11, 75, '15.0', '16.0', '20.0', '21.0'),
(853, 9, 75, '14.0', '15.0', '22.0', '23.0'),
(854, 8, 75, '14.0', '15.0', '17.0', '18.0'),
(855, 6, 75, '19.0', '20.0', '22.0', '23.0'),
(856, 5, 75, '17.0', '18.0', '20.0', '21.0'),
(857, 4, 75, '22.0', '23.0', '25.0', '26.0'),
(858, 22, 75, NULL, NULL, NULL, '25.0'),
(859, 2, 75, '13.0', '14.0', '16.0', '17.0'),
(860, 21, 75, '13.0', '14.0', '17.0', '18.0'),
(861, 18, 76, '17.0', '18.0', '20.0', '21.0'),
(862, 17, 76, '17.0', '18.0', '20.0', '21.0'),
(863, 19, 76, '13.0', '14.0', '16.0', '17.0'),
(864, 16, 76, '13.0', '14.0', '18.0', '19.0'),
(865, 15, 76, '19.0', '20.0', '22.0', '23.0'),
(866, 14, 76, '19.0', '20.0', '22.0', '23.0'),
(867, 13, 76, '12.0', '13.0', '14.0', '15.0'),
(868, 12, 76, '10.0', '11.0', '15.0', '16.0'),
(869, 10, 76, '12.0', '13.0', '17.0', '18.0'),
(870, 11, 76, '15.0', '16.0', '20.0', '21.0'),
(871, 9, 76, '14.0', '15.0', '22.0', '23.0'),
(872, 8, 76, '14.0', '15.0', '17.0', '18.0'),
(873, 6, 76, '19.0', '20.0', '22.0', '23.0'),
(874, 5, 76, '17.0', '18.0', '20.0', '21.0'),
(875, 4, 76, '22.0', '23.0', '25.0', '26.0'),
(876, 22, 76, NULL, NULL, NULL, '25.0'),
(877, 2, 76, '13.0', '14.0', '16.0', '17.0'),
(878, 21, 76, '13.0', '14.0', '17.0', '18.0'),
(879, 18, 77, '17.0', '18.0', '20.0', '21.0'),
(880, 17, 77, '17.0', '18.0', '20.0', '21.0'),
(881, 19, 77, '13.0', '14.0', '16.0', '17.0'),
(882, 16, 77, '13.0', '14.0', '18.0', '19.0'),
(883, 15, 77, '19.0', '20.0', '22.0', '23.0'),
(884, 14, 77, '19.0', '20.0', '22.0', '23.0'),
(885, 13, 77, '12.0', '13.0', '14.0', '15.0'),
(886, 12, 77, '10.0', '11.0', '15.0', '16.0'),
(887, 11, 77, '15.0', '16.0', '20.0', '21.0'),
(888, 10, 77, '12.0', '13.0', '17.0', '18.0'),
(889, 9, 77, '14.0', '15.0', '22.0', '23.0'),
(890, 8, 77, '14.0', '15.0', '17.0', '18.0'),
(891, 6, 77, '19.0', '20.0', '22.0', '23.0'),
(892, 5, 77, '17.0', '18.0', '20.0', '21.0'),
(893, 4, 77, '22.0', '23.0', '25.0', '26.0'),
(894, 22, 77, NULL, NULL, NULL, '25.0'),
(895, 2, 77, '13.0', '14.0', '16.0', '17.0'),
(896, 21, 77, '13.0', '14.0', '17.0', '18.0'),
(933, 18, 80, '17.0', '18.0', '20.0', '21.0'),
(934, 17, 80, '17.0', '18.0', '20.0', '21.0'),
(935, 19, 80, '13.0', '14.0', '16.0', '17.0'),
(936, 16, 80, '13.0', '14.0', '18.0', '19.0'),
(937, 15, 80, '19.0', '20.0', '22.0', '23.0'),
(938, 14, 80, '19.0', '20.0', '22.0', '23.0'),
(939, 13, 80, '12.0', '13.0', '14.0', '15.0'),
(940, 12, 80, '10.0', '11.0', '15.0', '16.0'),
(941, 10, 80, '12.0', '13.0', '17.0', '18.0'),
(942, 11, 80, '15.0', '16.0', '20.0', '21.0'),
(943, 9, 80, '14.0', '15.0', '22.0', '23.0'),
(944, 8, 80, '14.0', '15.0', '17.0', '18.0'),
(945, 6, 80, '19.0', '20.0', '22.0', '23.0'),
(946, 5, 80, '17.0', '18.0', '20.0', '21.0'),
(947, 4, 80, '22.0', '23.0', '25.0', '26.0'),
(948, 22, 80, NULL, NULL, NULL, '25.0'),
(949, 2, 80, '13.0', '14.0', '16.0', '17.0'),
(950, 21, 80, '13.0', '14.0', '17.0', '18.0'),
(951, 18, 81, '17.0', '18.0', '20.0', '21.0'),
(952, 17, 81, '17.0', '18.0', '20.0', '21.0'),
(953, 19, 81, '13.0', '14.0', '16.0', '17.0'),
(954, 16, 81, '13.0', '14.0', '18.0', '19.0'),
(955, 15, 81, '19.0', '20.0', '22.0', '23.0'),
(956, 14, 81, '19.0', '20.0', '22.0', '23.0'),
(957, 13, 81, '12.0', '13.0', '14.0', '15.0'),
(958, 12, 81, '10.0', '11.0', '15.0', '16.0'),
(959, 10, 81, '12.0', '13.0', '17.0', '18.0'),
(960, 11, 81, '15.0', '16.0', '20.0', '21.0'),
(961, 9, 81, '14.0', '15.0', '22.0', '23.0'),
(962, 8, 81, '14.0', '15.0', '17.0', '18.0'),
(963, 6, 81, '19.0', '20.0', '22.0', '23.0'),
(964, 5, 81, '17.0', '18.0', '20.0', '21.0'),
(965, 4, 81, '22.0', '23.0', '25.0', '26.0'),
(966, 22, 81, NULL, NULL, NULL, '25.0'),
(967, 21, 81, '13.0', '14.0', '17.0', '18.0'),
(968, 2, 81, '13.0', '14.0', '16.0', '17.0'),
(987, 18, 83, '17.0', '18.0', '20.0', '21.0'),
(988, 17, 83, '17.0', '18.0', '20.0', '21.0'),
(989, 19, 83, '13.0', '14.0', '16.0', '17.0'),
(990, 16, 83, '13.0', '14.0', '18.0', '19.0'),
(991, 15, 83, '19.0', '20.0', '22.0', '23.0'),
(992, 14, 83, '19.0', '20.0', '22.0', '23.0'),
(993, 13, 83, '12.0', '13.0', '14.0', '15.0'),
(994, 12, 83, '10.0', '11.0', '15.0', '16.0'),
(995, 11, 83, '15.0', '16.0', '20.0', '21.0'),
(996, 10, 83, '12.0', '13.0', '17.0', '18.0'),
(997, 9, 83, '14.0', '15.0', '22.0', '23.0'),
(998, 8, 83, '14.0', '15.0', '17.0', '18.0'),
(999, 6, 83, '19.0', '20.0', '22.0', '23.0'),
(1000, 5, 83, '17.0', '18.0', '20.0', '21.0'),
(1001, 4, 83, '22.0', '23.0', '25.0', '26.0'),
(1002, 22, 83, NULL, NULL, NULL, '25.0'),
(1003, 2, 83, '13.0', '14.0', '16.0', '17.0'),
(1004, 21, 83, '13.0', '14.0', '17.0', '18.0'),
(1005, 16, 84, NULL, NULL, NULL, NULL),
(1006, 15, 84, NULL, NULL, NULL, NULL),
(1007, 14, 84, NULL, NULL, NULL, NULL),
(1008, 13, 84, NULL, NULL, NULL, NULL),
(1009, 12, 84, NULL, NULL, NULL, NULL),
(1010, 11, 84, NULL, NULL, NULL, NULL),
(1011, 10, 84, NULL, NULL, NULL, NULL),
(1012, 9, 84, NULL, NULL, NULL, NULL),
(1013, 8, 84, NULL, NULL, NULL, NULL),
(1014, 6, 84, NULL, NULL, NULL, NULL),
(1015, 5, 84, NULL, NULL, NULL, NULL),
(1016, 4, 84, NULL, NULL, NULL, NULL),
(1017, 22, 84, NULL, NULL, NULL, NULL),
(1018, 2, 84, NULL, NULL, NULL, NULL),
(1019, 21, 84, NULL, NULL, NULL, NULL),
(1020, 18, 84, NULL, NULL, NULL, NULL),
(1021, 17, 84, NULL, NULL, NULL, NULL),
(1022, 19, 84, NULL, NULL, NULL, NULL),
(1023, 15, 3, '19.0', '20.0', '22.0', '23.0'),
(1060, 18, 87, '17.0', '18.0', '20.0', '21.0'),
(1061, 17, 87, '17.0', '18.0', '20.0', '21.0'),
(1062, 19, 87, '13.0', '14.0', '16.0', '17.0'),
(1063, 16, 87, '13.0', '14.0', '18.0', '19.0'),
(1064, 15, 87, '19.0', '20.0', '22.0', '23.0'),
(1065, 14, 87, '19.0', '20.0', '22.0', '23.0'),
(1066, 13, 87, '12.0', '13.0', '14.0', '15.0'),
(1067, 12, 87, '10.0', '11.0', '15.0', '16.0'),
(1068, 11, 87, '15.0', '16.0', '20.0', '21.0'),
(1069, 10, 87, '12.0', '13.0', '17.0', '18.0'),
(1070, 9, 87, '14.0', '15.0', '22.0', '23.0'),
(1071, 8, 87, '14.0', '15.0', '17.0', '18.0'),
(1072, 6, 87, '19.0', '20.0', '22.0', '23.0'),
(1073, 5, 87, '17.0', '18.0', '20.0', '21.0'),
(1074, 4, 87, '22.0', '23.0', '25.0', '26.0'),
(1075, 22, 87, NULL, NULL, NULL, '25.0'),
(1076, 2, 87, '13.0', '14.0', '16.0', '17.0'),
(1077, 21, 87, '13.0', '14.0', '17.0', '18.0'),
(1078, 18, 88, '17.0', '18.0', '20.0', '21.0'),
(1079, 17, 88, '17.0', '18.0', '20.0', '21.0'),
(1080, 19, 88, '13.0', '14.0', '16.0', '17.0'),
(1081, 16, 88, '13.0', '14.0', '18.0', '19.0'),
(1082, 15, 88, '19.0', '20.0', '22.0', '23.0'),
(1083, 14, 88, '19.0', '20.0', '22.0', '23.0'),
(1084, 13, 88, '12.0', '13.0', '14.0', '15.0'),
(1085, 12, 88, '10.0', '11.0', '15.0', '16.0'),
(1086, 11, 88, '15.0', '16.0', '20.0', '21.0'),
(1087, 10, 88, '12.0', '13.0', '17.0', '18.0'),
(1088, 8, 88, '14.0', '15.0', '17.0', '18.0'),
(1089, 9, 88, '14.0', '15.0', '22.0', '23.0'),
(1090, 6, 88, '19.0', '20.0', '22.0', '23.0'),
(1091, 5, 88, '17.0', '18.0', '20.0', '21.0'),
(1092, 22, 88, NULL, NULL, NULL, '25.0'),
(1093, 4, 88, '22.0', '23.0', '25.0', '26.0'),
(1094, 2, 88, '13.0', '14.0', '16.0', '17.0'),
(1095, 21, 88, '13.0', '14.0', '17.0', '18.0'),
(1096, 2, 89, NULL, NULL, NULL, NULL),
(1097, 6, 89, NULL, NULL, NULL, NULL),
(1098, 10, 89, NULL, NULL, NULL, NULL),
(1099, 11, 89, NULL, NULL, NULL, NULL),
(1100, 12, 89, NULL, NULL, NULL, NULL),
(1101, 16, 89, NULL, NULL, NULL, NULL),
(1102, 20, 90, '10.0', '11.0', '15.0', '16.0'),
(1103, 33, 90, '14.0', '15.0', '18.0', '19.0'),
(1104, 37, 90, '13.0', '14.0', '16.0', '17.0'),
(1105, 9, 91, '14.0', '15.0', '22.0', '23.0'),
(1106, 18, 91, '17.0', '18.0', '20.0', '21.0'),
(1107, 17, 91, '17.0', '18.0', '20.0', '21.0'),
(1108, 19, 91, '13.0', '14.0', '16.0', '17.0'),
(1109, 16, 91, '13.0', '14.0', '18.0', '19.0'),
(1110, 15, 91, '19.0', '20.0', '22.0', '23.0'),
(1111, 14, 91, '19.0', '20.0', '22.0', '23.0'),
(1112, 13, 91, '12.0', '13.0', '14.0', '15.0'),
(1113, 12, 91, '10.0', '11.0', '15.0', '16.0'),
(1114, 10, 91, '12.0', '13.0', '17.0', '18.0'),
(1115, 11, 91, '15.0', '16.0', '20.0', '21.0'),
(1116, 8, 91, '14.0', '15.0', '17.0', '18.0'),
(1117, 6, 91, '19.0', '20.0', '22.0', '23.0'),
(1118, 5, 91, '17.0', '18.0', '20.0', '21.0'),
(1119, 4, 91, '22.0', '23.0', '25.0', '26.0'),
(1120, 22, 91, NULL, NULL, NULL, '25.0'),
(1121, 2, 91, '13.0', '14.0', '16.0', '17.0'),
(1122, 21, 91, '13.0', '14.0', '17.0', '18.0'),
(1177, 18, 95, '17.0', '18.0', '20.0', '21.0'),
(1178, 17, 95, '17.0', '18.0', '20.0', '21.0'),
(1179, 19, 95, '13.0', '14.0', '16.0', '17.0'),
(1180, 16, 95, '13.0', '14.0', '18.0', '19.0'),
(1181, 15, 95, '19.0', '20.0', '22.0', '23.0'),
(1182, 14, 95, '19.0', '20.0', '22.0', '23.0'),
(1183, 13, 95, '12.0', '13.0', '14.0', '15.0'),
(1184, 12, 95, '10.0', '11.0', '15.0', '16.0'),
(1185, 11, 95, '15.0', '16.0', '20.0', '21.0'),
(1186, 10, 95, '12.0', '13.0', '17.0', '18.0'),
(1187, 9, 95, '14.0', '15.0', '22.0', '23.0'),
(1188, 8, 95, '14.0', '15.0', '17.0', '18.0'),
(1189, 6, 95, '19.0', '20.0', '22.0', '23.0'),
(1190, 5, 95, '17.0', '18.0', '20.0', '21.0'),
(1191, 4, 95, '22.0', '23.0', '25.0', '26.0'),
(1192, 22, 95, NULL, NULL, NULL, '25.0'),
(1193, 2, 95, '13.0', '14.0', '16.0', '17.0'),
(1194, 21, 95, '13.0', '14.0', '17.0', '18.0'),
(1195, 38, 91, '14.0', '15.0', '17.0', '18.0'),
(1196, 2, 96, NULL, NULL, NULL, NULL),
(1197, 6, 96, NULL, NULL, NULL, NULL),
(1198, 10, 96, NULL, NULL, NULL, NULL),
(1199, 11, 96, NULL, NULL, NULL, NULL),
(1200, 12, 96, NULL, NULL, NULL, NULL),
(1201, 16, 96, NULL, NULL, NULL, NULL),
(1202, 27, 97, '14.0', '15.0', '17.0', '18.0'),
(1203, 24, 97, '14.0', '15.0', '18.0', '19.0'),
(1204, 32, 97, '6.0', '7.0', '9.0', '10.0'),
(1205, 31, 97, '16.0', '17.0', '19.0', '20.0'),
(1206, 29, 97, '14.0', NULL, NULL, '15.0'),
(1207, 19, 97, '14.0', '15.0', '16.0', '17.0'),
(1208, 28, 97, '20.0', '21.0', '22.0', '23.0'),
(1209, 13, 97, '6.0', '7.0', '9.0', '10.0'),
(1210, 25, 97, '13.0', '14.0', '22.0', '23.0'),
(1211, 11, 97, '15.0', '16.0', '20.0', '21.0'),
(1212, 10, 97, '12.0', '13.0', '17.0', '18.0'),
(1213, 2, 97, '16.0', NULL, NULL, '17.0'),
(1214, 2, 98, '13.0', '14.0', '16.0', '17.0'),
(1215, 11, 98, '15.0', '16.0', '20.0', '21.0'),
(1216, 12, 98, '10.0', '11.0', '15.0', '16.0'),
(1217, 16, 98, '13.0', '14.0', '18.0', '19.0'),
(1218, 2, 99, '13.0', '14.0', '16.0', '17.0'),
(1219, 11, 99, '15.0', '16.0', '20.0', '21.0'),
(1220, 12, 99, '10.0', '11.0', '15.0', '16.0'),
(1221, 16, 99, '13.0', '14.0', '18.0', '19.0'),
(1222, 2, 100, '13.0', '14.0', '16.0', '17.0'),
(1223, 11, 100, '15.0', '16.0', '20.0', '21.0'),
(1224, 12, 100, '10.0', '11.0', '15.0', '16.0'),
(1225, 16, 100, '13.0', '14.0', '18.0', '19.0'),
(1226, 2, 101, '13.0', '14.0', '16.0', '17.0'),
(1227, 11, 101, '15.0', '16.0', '20.0', '21.0'),
(1228, 12, 101, '10.0', '11.0', '15.0', '16.0'),
(1229, 16, 101, '13.0', '14.0', '18.0', '19.0'),
(1230, 29, 36, NULL, NULL, NULL, '24.0'),
(1231, 29, 102, NULL, NULL, NULL, '24.0'),
(1232, 6, 102, NULL, NULL, NULL, '24.0'),
(1233, 25, 102, '15.0', '16.0', '20.0', '21.0'),
(1234, 26, 102, '15.0', '16.0', '18.0', '19.0'),
(1235, 10, 102, '17.0', '18.0', '20.0', '21.0'),
(1236, 27, 102, NULL, NULL, NULL, '17.0'),
(1237, 24, 102, '18.0', '19.0', '22.0', '23.0'),
(1238, 27, 103, NULL, NULL, NULL, '17.0'),
(1239, 24, 103, '18.0', '19.0', '22.0', '23.0'),
(1240, 29, 103, NULL, NULL, NULL, '24.0'),
(1241, 25, 103, '15.0', '16.0', '20.0', '21.0'),
(1242, 26, 103, '15.0', '16.0', '18.0', '19.0'),
(1243, 10, 103, '17.0', '18.0', '20.0', '21.0'),
(1244, 6, 103, NULL, NULL, NULL, '24.0'),
(1266, 27, 107, NULL, NULL, NULL, '17.0'),
(1267, 24, 107, '18.0', '19.0', '22.0', '23.0'),
(1268, 29, 107, NULL, NULL, NULL, '24.0'),
(1269, 25, 107, '15.0', '16.0', '20.0', '21.0'),
(1270, 26, 107, '15.0', '16.0', '18.0', '19.0'),
(1271, 10, 107, '17.0', '18.0', '20.0', '21.0'),
(1272, 6, 107, NULL, NULL, NULL, '24.0'),
(1273, 27, 108, NULL, NULL, NULL, '17.0'),
(1274, 24, 108, '18.0', '19.0', '22.0', '23.0'),
(1275, 29, 108, NULL, NULL, NULL, '24.0'),
(1276, 25, 108, '15.0', '16.0', '20.0', '21.0'),
(1277, 26, 108, '15.0', '16.0', '18.0', '19.0'),
(1278, 10, 108, '17.0', '18.0', '20.0', '21.0'),
(1279, 6, 108, NULL, NULL, NULL, '24.0'),
(1280, 22, 32, '18.0', '19.0', '24.0', '25.0'),
(1281, 1, 32, '14.0', '15.0', '16.0', '17.0'),
(1282, 2, 109, '13.0', '14.0', '16.0', '17.0'),
(1283, 10, 109, '12.0', '13.0', '17.0', '18.0'),
(1284, 11, 109, '15.0', '16.0', '20.0', '21.0'),
(1285, 12, 109, '10.0', '11.0', '15.0', '16.0'),
(1286, 6, 109, '13.0', '14.0', '20.0', '21.0'),
(1287, 16, 109, '13.0', '14.0', '18.0', '19.0'),
(1288, 39, 34, '6.0', '7.0', '9.0', '10.0'),
(1289, 3, 33, '13.0', '14.0', '17.0', '18.0'),
(1290, 15, 33, '19.0', '20.0', '22.0', '23.0'),
(1291, 4, 33, '22.0', '23.0', '25.0', '26.0'),
(1292, 25, 110, '13.0', '14.0', '22.0', '23.0'),
(1293, 26, 110, '14.0', '15.0', '20.0', '21.0'),
(1294, 24, 110, '14.0', '15.0', '18.0', '19.0'),
(1295, 12, 110, '10.0', '11.0', '15.0', '16.0'),
(1296, 10, 110, '12.0', '13.0', '17.0', '18.0'),
(1297, 11, 110, '15.0', '16.0', '20.0', '21.0'),
(1298, 13, 110, '12.0', '13.0', '14.0', '15.0'),
(1299, 19, 110, '13.0', '14.0', '16.0', '17.0'),
(1300, 31, 110, '16.0', '17.0', '19.0', '20.0'),
(1301, 28, 110, '16.0', '17.0', '20.0', '21.0'),
(1302, 24, 111, '14.0', '15.0', '18.0', '19.0'),
(1303, 27, 111, NULL, NULL, NULL, '15.0'),
(1304, 31, 111, '16.0', '17.0', '19.0', '20.0'),
(1305, 19, 111, '14.0', '15.0', '16.0', '17.0'),
(1306, 28, 111, NULL, NULL, NULL, '20.0'),
(1307, 11, 111, '15.0', '16.0', '20.0', '21.0'),
(1308, 10, 111, '12.0', '13.0', '17.0', '18.0'),
(1309, 36, 111, '19.0', NULL, NULL, '25.0'),
(1310, 29, 111, '28.0', NULL, NULL, '29.0'),
(1311, 26, 111, '14.0', '15.0', '20.0', '21.0'),
(1312, 12, 111, '10.0', '11.0', '15.0', '16.0'),
(1313, 13, 111, '12.0', '13.0', '14.0', '15.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adhoc_configs`
--
ALTER TABLE `adhoc_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analytic_specimen_rejections`
--
ALTER TABLE `analytic_specimen_rejections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `analytic_specimen_rejections_rejected_by_index` (`rejected_by`),
  ADD KEY `analytic_specimen_rejections_test_id_foreign` (`test_id`),
  ADD KEY `analytic_specimen_rejections_specimen_id_foreign` (`specimen_id`),
  ADD KEY `analytic_specimen_rejections_rejection_reason_id_foreign` (`rejection_reason_id`);

--
-- Indexes for table `analytic_specimen_rejection_reasons`
--
ALTER TABLE `analytic_specimen_rejection_reasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `analytic_specimen_rejection_reasons_specimen_id_foreign` (`specimen_id`),
  ADD KEY `analytic_specimen_rejection_reasons_rejection_id_foreign` (`rejection_id`),
  ADD KEY `analytic_specimen_rejection_reasons_reason_id_foreign` (`reason_id`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_roles_user_id_foreign` (`user_id`),
  ADD KEY `assigned_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `barcode_settings`
--
ALTER TABLE `barcode_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clinicians`
--
ALTER TABLE `clinicians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commodities`
--
ALTER TABLE `commodities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commodities_metric_id_foreign` (`metric_id`);

--
-- Indexes for table `controls`
--
ALTER TABLE `controls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `controls_name_unique` (`name`),
  ADD KEY `controls_lot_id_foreign` (`lot_id`);

--
-- Indexes for table `control_measures`
--
ALTER TABLE `control_measures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `control_measures_control_measure_type_id_foreign` (`control_measure_type_id`),
  ADD KEY `control_measures_control_id_foreign` (`control_id`);

--
-- Indexes for table `control_measure_ranges`
--
ALTER TABLE `control_measure_ranges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `control_measure_ranges_control_measure_id_foreign` (`control_measure_id`);

--
-- Indexes for table `control_results`
--
ALTER TABLE `control_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `control_results_control_test_id_foreign` (`control_test_id`),
  ADD KEY `control_results_control_measure_id_foreign` (`control_measure_id`);

--
-- Indexes for table `control_tests`
--
ALTER TABLE `control_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `control_tests_control_id_foreign` (`control_id`),
  ADD KEY `control_tests_entered_by_foreign` (`entered_by`);

--
-- Indexes for table `culture_durations`
--
ALTER TABLE `culture_durations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `culture_observations`
--
ALTER TABLE `culture_observations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `culture_observations_user_id_foreign` (`user_id`),
  ADD KEY `culture_observations_test_id_foreign` (`test_id`);

--
-- Indexes for table `daily_alphanumeric_counts`
--
ALTER TABLE `daily_alphanumeric_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_alphanumeric_counts_daily_test_type_count_id_foreign` (`daily_test_type_count_id`),
  ADD KEY `daily_alphanumeric_counts_measure_id_foreign` (`measure_id`),
  ADD KEY `daily_alphanumeric_counts_measure_range_id_foreign` (`measure_range_id`),
  ADD KEY `daily_alphanumeric_counts_result_interpretation_id_foreign` (`result_interpretation_id`);

--
-- Indexes for table `daily_gram_stain_result_counts`
--
ALTER TABLE `daily_gram_stain_result_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_gram_stain_result_counts_daily_test_type_count_id_foreign` (`daily_test_type_count_id`);

--
-- Indexes for table `daily_hiv_counts`
--
ALTER TABLE `daily_hiv_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_hiv_counts_daily_test_type_count_id_foreign` (`daily_test_type_count_id`);

--
-- Indexes for table `daily_negative_cultures`
--
ALTER TABLE `daily_negative_cultures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_negative_gram_stains`
--
ALTER TABLE `daily_negative_gram_stains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_numeric_range_counts`
--
ALTER TABLE `daily_numeric_range_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_numeric_range_counts_daily_test_type_count_id_foreign` (`daily_test_type_count_id`),
  ADD KEY `daily_numeric_range_counts_measure_id_foreign` (`measure_id`),
  ADD KEY `daily_numeric_range_counts_result_interpretation_id_foreign` (`result_interpretation_id`);

--
-- Indexes for table `daily_organism_counts`
--
ALTER TABLE `daily_organism_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_organism_counts_organism_id_foreign` (`organism_id`),
  ADD KEY `daily_organism_counts_result_interpretation_id_foreign` (`result_interpretation_id`);

--
-- Indexes for table `daily_rejection_reason_counts`
--
ALTER TABLE `daily_rejection_reason_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_rejection_reason_counts_daily_specimen_count_id_foreign` (`daily_specimen_count_id`),
  ADD KEY `daily_rejection_reason_counts_reason_id_foreign` (`reason_id`);

--
-- Indexes for table `daily_specimen_counts`
--
ALTER TABLE `daily_specimen_counts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `daily_specimen_counts_date_unique` (`date`);

--
-- Indexes for table `daily_specimen_type_counts`
--
ALTER TABLE `daily_specimen_type_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_specimen_type_counts_daily_specimen_count_id_foreign` (`daily_specimen_count_id`),
  ADD KEY `daily_specimen_type_counts_specimen_type_id_foreign` (`specimen_type_id`);

--
-- Indexes for table `daily_susceptibility_counts`
--
ALTER TABLE `daily_susceptibility_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_susceptibility_counts_daily_organism_count_id_foreign` (`daily_organism_count_id`),
  ADD KEY `daily_susceptibility_counts_antibiotic_id_foreign` (`antibiotic_id`),
  ADD KEY `daily_susceptibility_counts_interpretation_id_foreign` (`interpretation_id`);

--
-- Indexes for table `daily_test_counts`
--
ALTER TABLE `daily_test_counts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `daily_test_counts_date_unique` (`date`);

--
-- Indexes for table `daily_test_type_counts`
--
ALTER TABLE `daily_test_type_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_test_type_counts_test_type_id_foreign` (`test_type_id`),
  ADD KEY `daily_test_type_counts_daily_test_count_id_foreign` (`daily_test_count_id`);

--
-- Indexes for table `daily_turn_around_time`
--
ALTER TABLE `daily_turn_around_time`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_turn_around_time_daily_test_type_count_id_foreign` (`daily_test_type_count_id`);

--
-- Indexes for table `dhis2_facilities`
--
ALTER TABLE `dhis2_facilities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dhiafacilities_facility_4fe8b8cb_uniq` (`name`);

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `drugs_name_unique` (`name`);

--
-- Indexes for table `drug_susceptibility`
--
ALTER TABLE `drug_susceptibility`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drug_susceptibility_user_id_foreign` (`user_id`),
  ADD KEY `drug_susceptibility_drug_id_foreign` (`drug_id`),
  ADD KEY `drug_susceptibility_isolated_organism_id_foreign` (`isolated_organism_id`),
  ADD KEY `drug_susceptibility_drug_susceptibility_measure_id_foreign` (`drug_susceptibility_measure_id`);

--
-- Indexes for table `drug_susceptibility_measures`
--
ALTER TABLE `drug_susceptibility_measures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equip_config`
--
ALTER TABLE `equip_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equip_config_equip_id_foreign` (`equip_id`),
  ADD KEY `equip_config_prop_id_foreign` (`prop_id`);

--
-- Indexes for table `external_dump`
--
ALTER TABLE `external_dump`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `external_dump_lab_no_unique` (`lab_no`),
  ADD KEY `external_dump_parent_lab_no_index` (`parent_lab_no`);

--
-- Indexes for table `external_users`
--
ALTER TABLE `external_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `external_users_internal_user_id_unique` (`internal_user_id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gram_break_points`
--
ALTER TABLE `gram_break_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gram_break_points_drug_id_foreign` (`drug_id`),
  ADD KEY `gram_break_points_gram_stain_range_id_foreign` (`gram_stain_range_id`);

--
-- Indexes for table `gram_drug_susceptibility`
--
ALTER TABLE `gram_drug_susceptibility`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gram_drug_susceptibility_user_id_foreign` (`user_id`),
  ADD KEY `gram_drug_susceptibility_drug_id_foreign` (`drug_id`),
  ADD KEY `gram_drug_susceptibility_gram_stain_result_id_foreign` (`gram_stain_result_id`),
  ADD KEY `gram_drug_susceptibility_drug_susceptibility_measure_id_foreign` (`drug_susceptibility_measure_id`);

--
-- Indexes for table `gram_stain_ranges`
--
ALTER TABLE `gram_stain_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gram_stain_results`
--
ALTER TABLE `gram_stain_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gram_stain_results_user_id_foreign` (`user_id`),
  ADD KEY `gram_stain_results_test_id_foreign` (`test_id`),
  ADD KEY `gram_stain_results_gram_stain_range_id_foreign` (`gram_stain_range_id`);

--
-- Indexes for table `hubs`
--
ALTER TABLE `hubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ii_quickcodes`
--
ALTER TABLE `ii_quickcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instruments`
--
ALTER TABLE `instruments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instrument_testtypes`
--
ALTER TABLE `instrument_testtypes`
  ADD UNIQUE KEY `instrument_testtypes_instrument_id_test_type_id_unique` (`instrument_id`,`test_type_id`),
  ADD KEY `instrument_testtypes_test_type_id_foreign` (`test_type_id`);

--
-- Indexes for table `interfaced_equipment`
--
ALTER TABLE `interfaced_equipment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interfaced_equipment_lab_section_foreign` (`lab_section`);

--
-- Indexes for table `isolated_organisms`
--
ALTER TABLE `isolated_organisms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `isolated_organisms_user_id_foreign` (`user_id`),
  ADD KEY `isolated_organisms_test_id_foreign` (`test_id`),
  ADD KEY `isolated_organisms_organism_id_foreign` (`organism_id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issues_topup_request_id_foreign` (`topup_request_id`),
  ADD KEY `issues_receipt_id_foreign` (`receipt_id`),
  ADD KEY `issues_issued_to_foreign` (`issued_to`),
  ADD KEY `issues_user_id_foreign` (`user_id`);

--
-- Indexes for table `lots`
--
ALTER TABLE `lots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lots_number_unique` (`number`),
  ADD KEY `lots_instrument_id_foreign` (`instrument_id`);

--
-- Indexes for table `measures`
--
ALTER TABLE `measures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `measures_measure_type_id_foreign` (`measure_type_id`);

--
-- Indexes for table `measure_name_mappings`
--
ALTER TABLE `measure_name_mappings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `measure_name_mappings_system_name_unique` (`system_name`);

--
-- Indexes for table `measure_ranges`
--
ALTER TABLE `measure_ranges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `measure_ranges_alphanumeric_index` (`alphanumeric`),
  ADD KEY `measure_ranges_measure_id_foreign` (`measure_id`);

--
-- Indexes for table `measure_types`
--
ALTER TABLE `measure_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `measure_types_name_unique` (`name`);

--
-- Indexes for table `metrics`
--
ALTER TABLE `metrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisms`
--
ALTER TABLE `organisms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organisms_name_unique` (`name`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `poc_results`
--
ALTER TABLE `poc_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poc_results_patient_id_foreign` (`patient_id`);

--
-- Indexes for table `poc_tables`
--
ALTER TABLE `poc_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pre_analytic_specimen_rejections`
--
ALTER TABLE `pre_analytic_specimen_rejections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pre_analytic_specimen_rejections_rejected_by_index` (`rejected_by`),
  ADD KEY `pre_analytic_specimen_rejections_specimen_id_foreign` (`specimen_id`),
  ADD KEY `pre_analytic_specimen_rejections_rejection_reason_id_foreign` (`rejection_reason_id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipts_commodity_id_foreign` (`commodity_id`),
  ADD KEY `receipts_supplier_id_foreign` (`supplier_id`),
  ADD KEY `receipts_user_id_foreign` (`user_id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referrals_user_id_foreign` (`user_id`),
  ADD KEY `referrals_facility_id_foreign` (`facility_id`);

--
-- Indexes for table `referral_reasons`
--
ALTER TABLE `referral_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rejection_reasons`
--
ALTER TABLE `rejection_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_diseases`
--
ALTER TABLE `report_diseases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `report_diseases_test_type_id_disease_id_unique` (`test_type_id`,`disease_id`),
  ADD KEY `report_diseases_disease_id_foreign` (`disease_id`);

--
-- Indexes for table `result_interpretations`
--
ALTER TABLE `result_interpretations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `specimens`
--
ALTER TABLE `specimens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specimens_accepted_by_index` (`accepted_by`),
  ADD KEY `specimens_specimen_type_id_foreign` (`specimen_type_id`),
  ADD KEY `specimens_specimen_status_id_foreign` (`specimen_status_id`),
  ADD KEY `specimens_referral_id_foreign` (`referral_id`);

--
-- Indexes for table `specimen_statuses`
--
ALTER TABLE `specimen_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specimen_types`
--
ALTER TABLE `specimen_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testtype_measures`
--
ALTER TABLE `testtype_measures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `testtype_measures_test_type_id_measure_id_unique` (`test_type_id`,`measure_id`),
  ADD KEY `testtype_measures_measure_id_foreign` (`measure_id`);

--
-- Indexes for table `testtype_specimentypes`
--
ALTER TABLE `testtype_specimentypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `testtype_specimentypes_test_type_id_specimen_type_id_unique` (`test_type_id`,`specimen_type_id`),
  ADD KEY `testtype_specimentypes_specimen_type_id_foreign` (`specimen_type_id`);

--
-- Indexes for table `test_categories`
--
ALTER TABLE `test_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `test_categories_name_unique` (`name`);

--
-- Indexes for table `test_name_mappings`
--
ALTER TABLE `test_name_mappings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `test_name_mappings_system_name_unique` (`system_name`);

--
-- Indexes for table `test_phases`
--
ALTER TABLE `test_phases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_statuses`
--
ALTER TABLE `test_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_statuses_test_phase_id_foreign` (`test_phase_id`);

--
-- Indexes for table `test_types`
--
ALTER TABLE `test_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_types_test_category_id_foreign` (`test_category_id`);

--
-- Indexes for table `therapy`
--
ALTER TABLE `therapy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD KEY `tokens_email_index` (`email`),
  ADD KEY `tokens_token_index` (`token`);

--
-- Indexes for table `topup_requests`
--
ALTER TABLE `topup_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topup_requests_test_category_id_foreign` (`test_category_id`),
  ADD KEY `topup_requests_commodity_id_foreign` (`commodity_id`),
  ADD KEY `topup_requests_user_id_foreign` (`user_id`);

--
-- Indexes for table `unhls_bbactions`
--
ALTER TABLE `unhls_bbactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unhls_bbcauses`
--
ALTER TABLE `unhls_bbcauses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unhls_bbincidences`
--
ALTER TABLE `unhls_bbincidences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unhls_bbincidences_facility_id_foreign` (`facility_id`),
  ADD KEY `unhls_bbincidences_createdby_foreign` (`createdby`);

--
-- Indexes for table `unhls_bbincidences_action`
--
ALTER TABLE `unhls_bbincidences_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unhls_bbincidences_action_bbincidence_id_foreign` (`bbincidence_id`),
  ADD KEY `unhls_bbincidences_action_action_id_foreign` (`action_id`);

--
-- Indexes for table `unhls_bbincidences_cause`
--
ALTER TABLE `unhls_bbincidences_cause`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unhls_bbincidences_cause_bbincidence_id_foreign` (`bbincidence_id`),
  ADD KEY `unhls_bbincidences_cause_cause_id_foreign` (`cause_id`);

--
-- Indexes for table `unhls_bbincidences_nature`
--
ALTER TABLE `unhls_bbincidences_nature`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unhls_bbincidences_nature_bbincidence_id_foreign` (`bbincidence_id`),
  ADD KEY `unhls_bbincidences_nature_nature_id_foreign` (`nature_id`);

--
-- Indexes for table `unhls_bbnatures`
--
ALTER TABLE `unhls_bbnatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unhls_districts`
--
ALTER TABLE `unhls_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unhls_drugs`
--
ALTER TABLE `unhls_drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unhls_equipment_breakdown`
--
ALTER TABLE `unhls_equipment_breakdown`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unhls_equipment_breakdown_district_id_foreign` (`district_id`),
  ADD KEY `unhls_equipment_breakdown_facility_id_foreign` (`facility_id`),
  ADD KEY `unhls_equipment_breakdown_year_id_foreign` (`year_id`),
  ADD KEY `unhls_equipment_breakdown_equipment_id_foreign` (`equipment_id`);

--
-- Indexes for table `unhls_equipment_inventory`
--
ALTER TABLE `unhls_equipment_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unhls_equipment_inventory_district_id_foreign` (`district_id`),
  ADD KEY `unhls_equipment_inventory_facility_id_foreign` (`facility_id`),
  ADD KEY `unhls_equipment_inventory_year_id_foreign` (`year_id`),
  ADD KEY `unhls_equipment_inventory_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `unhls_equipment_maintenance`
--
ALTER TABLE `unhls_equipment_maintenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unhls_equipment_maintenance_district_id_foreign` (`district_id`),
  ADD KEY `unhls_equipment_maintenance_facility_id_foreign` (`facility_id`),
  ADD KEY `unhls_equipment_maintenance_year_id_foreign` (`year_id`),
  ADD KEY `unhls_equipment_maintenance_equipment_id_foreign` (`equipment_id`);

--
-- Indexes for table `unhls_equipment_suppliers`
--
ALTER TABLE `unhls_equipment_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unhls_facilities`
--
ALTER TABLE `unhls_facilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unhls_facilities_level_id_foreign` (`level_id`),
  ADD KEY `unhls_facilities_district_id_foreign` (`district_id`),
  ADD KEY `unhls_facilities_ownership_id_foreign` (`ownership_id`);

--
-- Indexes for table `unhls_facility_level`
--
ALTER TABLE `unhls_facility_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unhls_facility_ownership`
--
ALTER TABLE `unhls_facility_ownership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unhls_financial_years`
--
ALTER TABLE `unhls_financial_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unhls_patients`
--
ALTER TABLE `unhls_patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unhls_patients_external_patient_number_index` (`external_patient_number`),
  ADD KEY `unhls_patients_created_by_index` (`created_by`);

--
-- Indexes for table `unhls_rejection_reasons`
--
ALTER TABLE `unhls_rejection_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unhls_staff`
--
ALTER TABLE `unhls_staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unhls_staff_facility_id_foreign` (`facility_id`);

--
-- Indexes for table `unhls_stockcard`
--
ALTER TABLE `unhls_stockcard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unhls_stockcard_district_id_foreign` (`district_id`),
  ADD KEY `unhls_stockcard_facility_id_foreign` (`facility_id`),
  ADD KEY `unhls_stockcard_year_id_foreign` (`year_id`),
  ADD KEY `unhls_stockcard_commodity_id_foreign` (`commodity_id`);

--
-- Indexes for table `unhls_stockrequisition`
--
ALTER TABLE `unhls_stockrequisition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unhls_stockrequisition_district_id_foreign` (`district_id`),
  ADD KEY `unhls_stockrequisition_facility_id_foreign` (`facility_id`),
  ADD KEY `unhls_stockrequisition_year_id_foreign` (`year_id`),
  ADD KEY `unhls_stockrequisition_item_id_foreign` (`item_id`);

--
-- Indexes for table `unhls_tests`
--
ALTER TABLE `unhls_tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unhls_tests_created_by_index` (`created_by`),
  ADD KEY `unhls_tests_tested_by_index` (`tested_by`),
  ADD KEY `unhls_tests_verified_by_index` (`verified_by`),
  ADD KEY `unhls_tests_visit_id_foreign` (`visit_id`),
  ADD KEY `unhls_tests_test_type_id_foreign` (`test_type_id`),
  ADD KEY `unhls_tests_specimen_id_foreign` (`specimen_id`),
  ADD KEY `unhls_tests_test_status_id_foreign` (`test_status_id`);

--
-- Indexes for table `unhls_test_results`
--
ALTER TABLE `unhls_test_results`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unhls_test_results_test_id_measure_id_unique` (`test_id`,`measure_id`),
  ADD KEY `unhls_test_results_measure_id_foreign` (`measure_id`);

--
-- Indexes for table `unhls_visits`
--
ALTER TABLE `unhls_visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unhls_visits_visit_number_index` (`visit_number`),
  ADD KEY `unhls_visits_patient_id_foreign` (`patient_id`);

--
-- Indexes for table `unhls_warehouse`
--
ALTER TABLE `unhls_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_facility_id_foreign` (`facility_id`);

--
-- Indexes for table `uuids`
--
ALTER TABLE `uuids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visit_statuses`
--
ALTER TABLE `visit_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ward_type`
--
ALTER TABLE `ward_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zone_diameters`
--
ALTER TABLE `zone_diameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zone_diameters_drug_id_foreign` (`drug_id`),
  ADD KEY `zone_diameters_organism_id_foreign` (`organism_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adhoc_configs`
--
ALTER TABLE `adhoc_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `analytic_specimen_rejections`
--
ALTER TABLE `analytic_specimen_rejections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `analytic_specimen_rejection_reasons`
--
ALTER TABLE `analytic_specimen_rejection_reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `barcode_settings`
--
ALTER TABLE `barcode_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clinicians`
--
ALTER TABLE `clinicians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `commodities`
--
ALTER TABLE `commodities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `controls`
--
ALTER TABLE `controls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `control_measures`
--
ALTER TABLE `control_measures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `control_measure_ranges`
--
ALTER TABLE `control_measure_ranges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `control_results`
--
ALTER TABLE `control_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `control_tests`
--
ALTER TABLE `control_tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `culture_durations`
--
ALTER TABLE `culture_durations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `culture_observations`
--
ALTER TABLE `culture_observations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_alphanumeric_counts`
--
ALTER TABLE `daily_alphanumeric_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_gram_stain_result_counts`
--
ALTER TABLE `daily_gram_stain_result_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_hiv_counts`
--
ALTER TABLE `daily_hiv_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_negative_cultures`
--
ALTER TABLE `daily_negative_cultures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_negative_gram_stains`
--
ALTER TABLE `daily_negative_gram_stains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_numeric_range_counts`
--
ALTER TABLE `daily_numeric_range_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_organism_counts`
--
ALTER TABLE `daily_organism_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_rejection_reason_counts`
--
ALTER TABLE `daily_rejection_reason_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_specimen_counts`
--
ALTER TABLE `daily_specimen_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_specimen_type_counts`
--
ALTER TABLE `daily_specimen_type_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_susceptibility_counts`
--
ALTER TABLE `daily_susceptibility_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_test_counts`
--
ALTER TABLE `daily_test_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_test_type_counts`
--
ALTER TABLE `daily_test_type_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_turn_around_time`
--
ALTER TABLE `daily_turn_around_time`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dhis2_facilities`
--
ALTER TABLE `dhis2_facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8456;

--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `drug_susceptibility`
--
ALTER TABLE `drug_susceptibility`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drug_susceptibility_measures`
--
ALTER TABLE `drug_susceptibility_measures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `equip_config`
--
ALTER TABLE `equip_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `external_dump`
--
ALTER TABLE `external_dump`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `external_users`
--
ALTER TABLE `external_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gram_break_points`
--
ALTER TABLE `gram_break_points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gram_drug_susceptibility`
--
ALTER TABLE `gram_drug_susceptibility`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gram_stain_ranges`
--
ALTER TABLE `gram_stain_ranges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `gram_stain_results`
--
ALTER TABLE `gram_stain_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hubs`
--
ALTER TABLE `hubs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ii_quickcodes`
--
ALTER TABLE `ii_quickcodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instruments`
--
ALTER TABLE `instruments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `interfaced_equipment`
--
ALTER TABLE `interfaced_equipment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `isolated_organisms`
--
ALTER TABLE `isolated_organisms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lots`
--
ALTER TABLE `lots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `measures`
--
ALTER TABLE `measures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `measure_name_mappings`
--
ALTER TABLE `measure_name_mappings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `measure_ranges`
--
ALTER TABLE `measure_ranges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT for table `metrics`
--
ALTER TABLE `metrics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organisms`
--
ALTER TABLE `organisms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `poc_results`
--
ALTER TABLE `poc_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=775;

--
-- AUTO_INCREMENT for table `poc_tables`
--
ALTER TABLE `poc_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=784;

--
-- AUTO_INCREMENT for table `pre_analytic_specimen_rejections`
--
ALTER TABLE `pre_analytic_specimen_rejections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_reasons`
--
ALTER TABLE `referral_reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rejection_reasons`
--
ALTER TABLE `rejection_reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `report_diseases`
--
ALTER TABLE `report_diseases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `result_interpretations`
--
ALTER TABLE `result_interpretations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `specimens`
--
ALTER TABLE `specimens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `specimen_types`
--
ALTER TABLE `specimen_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testtype_measures`
--
ALTER TABLE `testtype_measures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT for table `testtype_specimentypes`
--
ALTER TABLE `testtype_specimentypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=990;

--
-- AUTO_INCREMENT for table `test_categories`
--
ALTER TABLE `test_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `test_name_mappings`
--
ALTER TABLE `test_name_mappings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `test_types`
--
ALTER TABLE `test_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `therapy`
--
ALTER TABLE `therapy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `topup_requests`
--
ALTER TABLE `topup_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unhls_bbactions`
--
ALTER TABLE `unhls_bbactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `unhls_bbcauses`
--
ALTER TABLE `unhls_bbcauses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `unhls_bbincidences`
--
ALTER TABLE `unhls_bbincidences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unhls_bbincidences_action`
--
ALTER TABLE `unhls_bbincidences_action`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unhls_bbincidences_cause`
--
ALTER TABLE `unhls_bbincidences_cause`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unhls_bbincidences_nature`
--
ALTER TABLE `unhls_bbincidences_nature`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unhls_bbnatures`
--
ALTER TABLE `unhls_bbnatures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `unhls_districts`
--
ALTER TABLE `unhls_districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `unhls_drugs`
--
ALTER TABLE `unhls_drugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unhls_equipment_breakdown`
--
ALTER TABLE `unhls_equipment_breakdown`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unhls_equipment_inventory`
--
ALTER TABLE `unhls_equipment_inventory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `unhls_equipment_maintenance`
--
ALTER TABLE `unhls_equipment_maintenance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unhls_equipment_suppliers`
--
ALTER TABLE `unhls_equipment_suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `unhls_facilities`
--
ALTER TABLE `unhls_facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=797;

--
-- AUTO_INCREMENT for table `unhls_facility_level`
--
ALTER TABLE `unhls_facility_level`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `unhls_facility_ownership`
--
ALTER TABLE `unhls_facility_ownership`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unhls_financial_years`
--
ALTER TABLE `unhls_financial_years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `unhls_patients`
--
ALTER TABLE `unhls_patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `unhls_rejection_reasons`
--
ALTER TABLE `unhls_rejection_reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unhls_staff`
--
ALTER TABLE `unhls_staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unhls_stockcard`
--
ALTER TABLE `unhls_stockcard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unhls_stockrequisition`
--
ALTER TABLE `unhls_stockrequisition`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unhls_tests`
--
ALTER TABLE `unhls_tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `unhls_test_results`
--
ALTER TABLE `unhls_test_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `unhls_visits`
--
ALTER TABLE `unhls_visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `unhls_warehouse`
--
ALTER TABLE `unhls_warehouse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `uuids`
--
ALTER TABLE `uuids`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `visit_statuses`
--
ALTER TABLE `visit_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ward_type`
--
ALTER TABLE `ward_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zone_diameters`
--
ALTER TABLE `zone_diameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1314;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `analytic_specimen_rejections`
--
ALTER TABLE `analytic_specimen_rejections`
  ADD CONSTRAINT `analytic_specimen_rejections_rejection_reason_id_foreign` FOREIGN KEY (`rejection_reason_id`) REFERENCES `rejection_reasons` (`id`),
  ADD CONSTRAINT `analytic_specimen_rejections_specimen_id_foreign` FOREIGN KEY (`specimen_id`) REFERENCES `specimens` (`id`),
  ADD CONSTRAINT `analytic_specimen_rejections_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `unhls_tests` (`id`);

--
-- Constraints for table `analytic_specimen_rejection_reasons`
--
ALTER TABLE `analytic_specimen_rejection_reasons`
  ADD CONSTRAINT `analytic_specimen_rejection_reasons_reason_id_foreign` FOREIGN KEY (`reason_id`) REFERENCES `rejection_reasons` (`id`),
  ADD CONSTRAINT `analytic_specimen_rejection_reasons_rejection_id_foreign` FOREIGN KEY (`rejection_id`) REFERENCES `analytic_specimen_rejections` (`id`),
  ADD CONSTRAINT `analytic_specimen_rejection_reasons_specimen_id_foreign` FOREIGN KEY (`specimen_id`) REFERENCES `analytic_specimen_rejections` (`specimen_id`);

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `commodities`
--
ALTER TABLE `commodities`
  ADD CONSTRAINT `commodities_metric_id_foreign` FOREIGN KEY (`metric_id`) REFERENCES `metrics` (`id`);

--
-- Constraints for table `controls`
--
ALTER TABLE `controls`
  ADD CONSTRAINT `controls_lot_id_foreign` FOREIGN KEY (`lot_id`) REFERENCES `lots` (`id`);

--
-- Constraints for table `control_measures`
--
ALTER TABLE `control_measures`
  ADD CONSTRAINT `control_measures_control_id_foreign` FOREIGN KEY (`control_id`) REFERENCES `controls` (`id`),
  ADD CONSTRAINT `control_measures_control_measure_type_id_foreign` FOREIGN KEY (`control_measure_type_id`) REFERENCES `measure_types` (`id`);

--
-- Constraints for table `control_measure_ranges`
--
ALTER TABLE `control_measure_ranges`
  ADD CONSTRAINT `control_measure_ranges_control_measure_id_foreign` FOREIGN KEY (`control_measure_id`) REFERENCES `control_measures` (`id`);

--
-- Constraints for table `control_results`
--
ALTER TABLE `control_results`
  ADD CONSTRAINT `control_results_control_measure_id_foreign` FOREIGN KEY (`control_measure_id`) REFERENCES `control_measures` (`id`),
  ADD CONSTRAINT `control_results_control_test_id_foreign` FOREIGN KEY (`control_test_id`) REFERENCES `control_tests` (`id`);

--
-- Constraints for table `control_tests`
--
ALTER TABLE `control_tests`
  ADD CONSTRAINT `control_tests_control_id_foreign` FOREIGN KEY (`control_id`) REFERENCES `controls` (`id`),
  ADD CONSTRAINT `control_tests_entered_by_foreign` FOREIGN KEY (`entered_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `culture_observations`
--
ALTER TABLE `culture_observations`
  ADD CONSTRAINT `culture_observations_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `unhls_tests` (`id`),
  ADD CONSTRAINT `culture_observations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `daily_alphanumeric_counts`
--
ALTER TABLE `daily_alphanumeric_counts`
  ADD CONSTRAINT `daily_alphanumeric_counts_daily_test_type_count_id_foreign` FOREIGN KEY (`daily_test_type_count_id`) REFERENCES `daily_test_type_counts` (`id`),
  ADD CONSTRAINT `daily_alphanumeric_counts_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`),
  ADD CONSTRAINT `daily_alphanumeric_counts_measure_range_id_foreign` FOREIGN KEY (`measure_range_id`) REFERENCES `measure_ranges` (`id`),
  ADD CONSTRAINT `daily_alphanumeric_counts_result_interpretation_id_foreign` FOREIGN KEY (`result_interpretation_id`) REFERENCES `result_interpretations` (`id`);

--
-- Constraints for table `daily_gram_stain_result_counts`
--
ALTER TABLE `daily_gram_stain_result_counts`
  ADD CONSTRAINT `daily_gram_stain_result_counts_daily_test_type_count_id_foreign` FOREIGN KEY (`daily_test_type_count_id`) REFERENCES `daily_test_type_counts` (`id`);

--
-- Constraints for table `daily_hiv_counts`
--
ALTER TABLE `daily_hiv_counts`
  ADD CONSTRAINT `daily_hiv_counts_daily_test_type_count_id_foreign` FOREIGN KEY (`daily_test_type_count_id`) REFERENCES `daily_test_type_counts` (`id`);

--
-- Constraints for table `daily_numeric_range_counts`
--
ALTER TABLE `daily_numeric_range_counts`
  ADD CONSTRAINT `daily_numeric_range_counts_daily_test_type_count_id_foreign` FOREIGN KEY (`daily_test_type_count_id`) REFERENCES `daily_test_type_counts` (`id`),
  ADD CONSTRAINT `daily_numeric_range_counts_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`),
  ADD CONSTRAINT `daily_numeric_range_counts_result_interpretation_id_foreign` FOREIGN KEY (`result_interpretation_id`) REFERENCES `result_interpretations` (`id`);

--
-- Constraints for table `daily_organism_counts`
--
ALTER TABLE `daily_organism_counts`
  ADD CONSTRAINT `daily_organism_counts_organism_id_foreign` FOREIGN KEY (`organism_id`) REFERENCES `organisms` (`id`),
  ADD CONSTRAINT `daily_organism_counts_result_interpretation_id_foreign` FOREIGN KEY (`result_interpretation_id`) REFERENCES `result_interpretations` (`id`);

--
-- Constraints for table `daily_rejection_reason_counts`
--
ALTER TABLE `daily_rejection_reason_counts`
  ADD CONSTRAINT `daily_rejection_reason_counts_daily_specimen_count_id_foreign` FOREIGN KEY (`daily_specimen_count_id`) REFERENCES `daily_specimen_counts` (`id`),
  ADD CONSTRAINT `daily_rejection_reason_counts_reason_id_foreign` FOREIGN KEY (`reason_id`) REFERENCES `rejection_reasons` (`id`);

--
-- Constraints for table `daily_specimen_type_counts`
--
ALTER TABLE `daily_specimen_type_counts`
  ADD CONSTRAINT `daily_specimen_type_counts_daily_specimen_count_id_foreign` FOREIGN KEY (`daily_specimen_count_id`) REFERENCES `daily_specimen_counts` (`id`),
  ADD CONSTRAINT `daily_specimen_type_counts_specimen_type_id_foreign` FOREIGN KEY (`specimen_type_id`) REFERENCES `specimen_types` (`id`);

--
-- Constraints for table `daily_susceptibility_counts`
--
ALTER TABLE `daily_susceptibility_counts`
  ADD CONSTRAINT `daily_susceptibility_counts_antibiotic_id_foreign` FOREIGN KEY (`antibiotic_id`) REFERENCES `drugs` (`id`),
  ADD CONSTRAINT `daily_susceptibility_counts_daily_organism_count_id_foreign` FOREIGN KEY (`daily_organism_count_id`) REFERENCES `daily_organism_counts` (`id`),
  ADD CONSTRAINT `daily_susceptibility_counts_interpretation_id_foreign` FOREIGN KEY (`interpretation_id`) REFERENCES `drug_susceptibility_measures` (`id`);

--
-- Constraints for table `daily_test_type_counts`
--
ALTER TABLE `daily_test_type_counts`
  ADD CONSTRAINT `daily_test_type_counts_daily_test_count_id_foreign` FOREIGN KEY (`daily_test_count_id`) REFERENCES `daily_test_counts` (`id`),
  ADD CONSTRAINT `daily_test_type_counts_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `daily_turn_around_time`
--
ALTER TABLE `daily_turn_around_time`
  ADD CONSTRAINT `daily_turn_around_time_daily_test_type_count_id_foreign` FOREIGN KEY (`daily_test_type_count_id`) REFERENCES `daily_test_type_counts` (`id`);

--
-- Constraints for table `drug_susceptibility`
--
ALTER TABLE `drug_susceptibility`
  ADD CONSTRAINT `drug_susceptibility_drug_id_foreign` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`),
  ADD CONSTRAINT `drug_susceptibility_drug_susceptibility_measure_id_foreign` FOREIGN KEY (`drug_susceptibility_measure_id`) REFERENCES `drug_susceptibility_measures` (`id`),
  ADD CONSTRAINT `drug_susceptibility_isolated_organism_id_foreign` FOREIGN KEY (`isolated_organism_id`) REFERENCES `isolated_organisms` (`id`),
  ADD CONSTRAINT `drug_susceptibility_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `equip_config`
--
ALTER TABLE `equip_config`
  ADD CONSTRAINT `equip_config_equip_id_foreign` FOREIGN KEY (`equip_id`) REFERENCES `interfaced_equipment` (`id`),
  ADD CONSTRAINT `equip_config_prop_id_foreign` FOREIGN KEY (`prop_id`) REFERENCES `ii_quickcodes` (`id`);

--
-- Constraints for table `external_users`
--
ALTER TABLE `external_users`
  ADD CONSTRAINT `external_users_internal_user_id_foreign` FOREIGN KEY (`internal_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `gram_break_points`
--
ALTER TABLE `gram_break_points`
  ADD CONSTRAINT `gram_break_points_drug_id_foreign` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`),
  ADD CONSTRAINT `gram_break_points_gram_stain_range_id_foreign` FOREIGN KEY (`gram_stain_range_id`) REFERENCES `gram_stain_ranges` (`id`);

--
-- Constraints for table `gram_drug_susceptibility`
--
ALTER TABLE `gram_drug_susceptibility`
  ADD CONSTRAINT `gram_drug_susceptibility_drug_id_foreign` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`),
  ADD CONSTRAINT `gram_drug_susceptibility_drug_susceptibility_measure_id_foreign` FOREIGN KEY (`drug_susceptibility_measure_id`) REFERENCES `drug_susceptibility_measures` (`id`),
  ADD CONSTRAINT `gram_drug_susceptibility_gram_stain_result_id_foreign` FOREIGN KEY (`gram_stain_result_id`) REFERENCES `gram_stain_results` (`id`),
  ADD CONSTRAINT `gram_drug_susceptibility_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `gram_stain_results`
--
ALTER TABLE `gram_stain_results`
  ADD CONSTRAINT `gram_stain_results_gram_stain_range_id_foreign` FOREIGN KEY (`gram_stain_range_id`) REFERENCES `gram_stain_ranges` (`id`),
  ADD CONSTRAINT `gram_stain_results_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `unhls_tests` (`id`),
  ADD CONSTRAINT `gram_stain_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `instrument_testtypes`
--
ALTER TABLE `instrument_testtypes`
  ADD CONSTRAINT `instrument_testtypes_instrument_id_foreign` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`id`),
  ADD CONSTRAINT `instrument_testtypes_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `interfaced_equipment`
--
ALTER TABLE `interfaced_equipment`
  ADD CONSTRAINT `interfaced_equipment_lab_section_foreign` FOREIGN KEY (`lab_section`) REFERENCES `test_categories` (`id`);

--
-- Constraints for table `isolated_organisms`
--
ALTER TABLE `isolated_organisms`
  ADD CONSTRAINT `isolated_organisms_organism_id_foreign` FOREIGN KEY (`organism_id`) REFERENCES `organisms` (`id`),
  ADD CONSTRAINT `isolated_organisms_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `unhls_tests` (`id`),
  ADD CONSTRAINT `isolated_organisms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `issues`
--
ALTER TABLE `issues`
  ADD CONSTRAINT `issues_issued_to_foreign` FOREIGN KEY (`issued_to`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `issues_receipt_id_foreign` FOREIGN KEY (`receipt_id`) REFERENCES `receipts` (`id`),
  ADD CONSTRAINT `issues_topup_request_id_foreign` FOREIGN KEY (`topup_request_id`) REFERENCES `topup_requests` (`id`),
  ADD CONSTRAINT `issues_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `lots`
--
ALTER TABLE `lots`
  ADD CONSTRAINT `lots_instrument_id_foreign` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`id`);

--
-- Constraints for table `measures`
--
ALTER TABLE `measures`
  ADD CONSTRAINT `measures_measure_type_id_foreign` FOREIGN KEY (`measure_type_id`) REFERENCES `measure_types` (`id`);

--
-- Constraints for table `measure_ranges`
--
ALTER TABLE `measure_ranges`
  ADD CONSTRAINT `measure_ranges_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `poc_results`
--
ALTER TABLE `poc_results`
  ADD CONSTRAINT `poc_results_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `poc_tables` (`id`);

--
-- Constraints for table `pre_analytic_specimen_rejections`
--
ALTER TABLE `pre_analytic_specimen_rejections`
  ADD CONSTRAINT `pre_analytic_specimen_rejections_rejection_reason_id_foreign` FOREIGN KEY (`rejection_reason_id`) REFERENCES `rejection_reasons` (`id`),
  ADD CONSTRAINT `pre_analytic_specimen_rejections_specimen_id_foreign` FOREIGN KEY (`specimen_id`) REFERENCES `specimens` (`id`);

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_commodity_id_foreign` FOREIGN KEY (`commodity_id`) REFERENCES `commodities` (`id`),
  ADD CONSTRAINT `receipts_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `receipts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `referrals_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`),
  ADD CONSTRAINT `referrals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `report_diseases`
--
ALTER TABLE `report_diseases`
  ADD CONSTRAINT `report_diseases_disease_id_foreign` FOREIGN KEY (`disease_id`) REFERENCES `diseases` (`id`),
  ADD CONSTRAINT `report_diseases_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `specimens`
--
ALTER TABLE `specimens`
  ADD CONSTRAINT `specimens_referral_id_foreign` FOREIGN KEY (`referral_id`) REFERENCES `referrals` (`id`),
  ADD CONSTRAINT `specimens_specimen_status_id_foreign` FOREIGN KEY (`specimen_status_id`) REFERENCES `specimen_statuses` (`id`),
  ADD CONSTRAINT `specimens_specimen_type_id_foreign` FOREIGN KEY (`specimen_type_id`) REFERENCES `specimen_types` (`id`);

--
-- Constraints for table `testtype_measures`
--
ALTER TABLE `testtype_measures`
  ADD CONSTRAINT `testtype_measures_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`),
  ADD CONSTRAINT `testtype_measures_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `testtype_specimentypes`
--
ALTER TABLE `testtype_specimentypes`
  ADD CONSTRAINT `testtype_specimentypes_specimen_type_id_foreign` FOREIGN KEY (`specimen_type_id`) REFERENCES `specimen_types` (`id`),
  ADD CONSTRAINT `testtype_specimentypes_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`);

--
-- Constraints for table `test_statuses`
--
ALTER TABLE `test_statuses`
  ADD CONSTRAINT `test_statuses_test_phase_id_foreign` FOREIGN KEY (`test_phase_id`) REFERENCES `test_phases` (`id`);

--
-- Constraints for table `test_types`
--
ALTER TABLE `test_types`
  ADD CONSTRAINT `test_types_test_category_id_foreign` FOREIGN KEY (`test_category_id`) REFERENCES `test_categories` (`id`);

--
-- Constraints for table `topup_requests`
--
ALTER TABLE `topup_requests`
  ADD CONSTRAINT `topup_requests_commodity_id_foreign` FOREIGN KEY (`commodity_id`) REFERENCES `commodities` (`id`),
  ADD CONSTRAINT `topup_requests_test_category_id_foreign` FOREIGN KEY (`test_category_id`) REFERENCES `test_categories` (`id`),
  ADD CONSTRAINT `topup_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `unhls_bbincidences`
--
ALTER TABLE `unhls_bbincidences`
  ADD CONSTRAINT `unhls_bbincidences_createdby_foreign` FOREIGN KEY (`createdby`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `unhls_bbincidences_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`);

--
-- Constraints for table `unhls_bbincidences_action`
--
ALTER TABLE `unhls_bbincidences_action`
  ADD CONSTRAINT `unhls_bbincidences_action_action_id_foreign` FOREIGN KEY (`action_id`) REFERENCES `unhls_bbactions` (`id`),
  ADD CONSTRAINT `unhls_bbincidences_action_bbincidence_id_foreign` FOREIGN KEY (`bbincidence_id`) REFERENCES `unhls_bbincidences` (`id`);

--
-- Constraints for table `unhls_bbincidences_cause`
--
ALTER TABLE `unhls_bbincidences_cause`
  ADD CONSTRAINT `unhls_bbincidences_cause_bbincidence_id_foreign` FOREIGN KEY (`bbincidence_id`) REFERENCES `unhls_bbincidences` (`id`),
  ADD CONSTRAINT `unhls_bbincidences_cause_cause_id_foreign` FOREIGN KEY (`cause_id`) REFERENCES `unhls_bbcauses` (`id`);

--
-- Constraints for table `unhls_bbincidences_nature`
--
ALTER TABLE `unhls_bbincidences_nature`
  ADD CONSTRAINT `unhls_bbincidences_nature_bbincidence_id_foreign` FOREIGN KEY (`bbincidence_id`) REFERENCES `unhls_bbincidences` (`id`),
  ADD CONSTRAINT `unhls_bbincidences_nature_nature_id_foreign` FOREIGN KEY (`nature_id`) REFERENCES `unhls_bbnatures` (`id`);

--
-- Constraints for table `unhls_equipment_breakdown`
--
ALTER TABLE `unhls_equipment_breakdown`
  ADD CONSTRAINT `unhls_equipment_breakdown_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `unhls_districts` (`id`),
  ADD CONSTRAINT `unhls_equipment_breakdown_equipment_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `unhls_equipment_inventory` (`id`),
  ADD CONSTRAINT `unhls_equipment_breakdown_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`),
  ADD CONSTRAINT `unhls_equipment_breakdown_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `unhls_financial_years` (`id`);

--
-- Constraints for table `unhls_equipment_inventory`
--
ALTER TABLE `unhls_equipment_inventory`
  ADD CONSTRAINT `unhls_equipment_inventory_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `unhls_districts` (`id`),
  ADD CONSTRAINT `unhls_equipment_inventory_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`),
  ADD CONSTRAINT `unhls_equipment_inventory_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `unhls_equipment_suppliers` (`id`),
  ADD CONSTRAINT `unhls_equipment_inventory_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `unhls_financial_years` (`id`);

--
-- Constraints for table `unhls_equipment_maintenance`
--
ALTER TABLE `unhls_equipment_maintenance`
  ADD CONSTRAINT `unhls_equipment_maintenance_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `unhls_districts` (`id`),
  ADD CONSTRAINT `unhls_equipment_maintenance_equipment_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `unhls_equipment_inventory` (`id`),
  ADD CONSTRAINT `unhls_equipment_maintenance_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`),
  ADD CONSTRAINT `unhls_equipment_maintenance_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `unhls_financial_years` (`id`);

--
-- Constraints for table `unhls_facilities`
--
ALTER TABLE `unhls_facilities`
  ADD CONSTRAINT `unhls_facilities_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `unhls_districts` (`id`),
  ADD CONSTRAINT `unhls_facilities_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `unhls_facility_level` (`id`),
  ADD CONSTRAINT `unhls_facilities_ownership_id_foreign` FOREIGN KEY (`ownership_id`) REFERENCES `unhls_facility_ownership` (`id`);

--
-- Constraints for table `unhls_staff`
--
ALTER TABLE `unhls_staff`
  ADD CONSTRAINT `unhls_staff_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`);

--
-- Constraints for table `unhls_stockcard`
--
ALTER TABLE `unhls_stockcard`
  ADD CONSTRAINT `unhls_stockcard_commodity_id_foreign` FOREIGN KEY (`commodity_id`) REFERENCES `commodities` (`id`),
  ADD CONSTRAINT `unhls_stockcard_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `unhls_districts` (`id`),
  ADD CONSTRAINT `unhls_stockcard_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`),
  ADD CONSTRAINT `unhls_stockcard_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `unhls_financial_years` (`id`);

--
-- Constraints for table `unhls_stockrequisition`
--
ALTER TABLE `unhls_stockrequisition`
  ADD CONSTRAINT `unhls_stockrequisition_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `unhls_districts` (`id`),
  ADD CONSTRAINT `unhls_stockrequisition_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`),
  ADD CONSTRAINT `unhls_stockrequisition_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `commodities` (`id`),
  ADD CONSTRAINT `unhls_stockrequisition_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `unhls_financial_years` (`id`);

--
-- Constraints for table `unhls_tests`
--
ALTER TABLE `unhls_tests`
  ADD CONSTRAINT `unhls_tests_specimen_id_foreign` FOREIGN KEY (`specimen_id`) REFERENCES `specimens` (`id`),
  ADD CONSTRAINT `unhls_tests_test_status_id_foreign` FOREIGN KEY (`test_status_id`) REFERENCES `test_statuses` (`id`),
  ADD CONSTRAINT `unhls_tests_test_type_id_foreign` FOREIGN KEY (`test_type_id`) REFERENCES `test_types` (`id`),
  ADD CONSTRAINT `unhls_tests_visit_id_foreign` FOREIGN KEY (`visit_id`) REFERENCES `unhls_visits` (`id`);

--
-- Constraints for table `unhls_test_results`
--
ALTER TABLE `unhls_test_results`
  ADD CONSTRAINT `unhls_test_results_measure_id_foreign` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`),
  ADD CONSTRAINT `unhls_test_results_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `unhls_tests` (`id`);

--
-- Constraints for table `unhls_visits`
--
ALTER TABLE `unhls_visits`
  ADD CONSTRAINT `unhls_visits_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `unhls_patients` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `unhls_facilities` (`id`);

--
-- Constraints for table `zone_diameters`
--
ALTER TABLE `zone_diameters`
  ADD CONSTRAINT `zone_diameters_drug_id_foreign` FOREIGN KEY (`drug_id`) REFERENCES `drugs` (`id`),
  ADD CONSTRAINT `zone_diameters_organism_id_foreign` FOREIGN KEY (`organism_id`) REFERENCES `organisms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
