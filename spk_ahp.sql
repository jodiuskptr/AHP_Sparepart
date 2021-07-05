-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 05 Jul 2021 pada 14.20
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_ahp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatives`
--

CREATE TABLE `alternatives` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alternatives`
--

INSERT INTO `alternatives` (`id`, `code`, `name`, `kategori_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'FSCM', 1, '2021-06-29 11:14:05', '2021-06-29 11:14:05', NULL),
(2, '2', 'Federal', 1, '2021-06-29 11:14:21', '2021-06-29 11:14:21', NULL),
(3, '3', 'AHAS', 1, '2021-06-29 11:14:32', '2021-06-29 11:14:32', NULL),
(4, '4', 'Mitsuboshi', 1, '2021-06-29 11:17:15', '2021-06-29 11:17:15', NULL),
(5, '5', 'Bando', 1, '2021-06-29 11:19:22', '2021-06-29 11:19:22', NULL),
(6, '6', 'Roller', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternative_comparisons`
--

CREATE TABLE `alternative_comparisons` (
  `id` int(10) UNSIGNED NOT NULL,
  `criteria_id` int(10) UNSIGNED NOT NULL,
  `x_alternative_id` int(10) UNSIGNED NOT NULL,
  `y_alternative_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alternative_comparisons`
--

INSERT INTO `alternative_comparisons` (`id`, `criteria_id`, `x_alternative_id`, `y_alternative_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1.00000, '2021-06-29 11:46:02', '2021-06-29 11:46:02'),
(2, 1, 2, 2, 1.00000, '2021-06-29 11:53:27', '2021-06-29 11:53:27'),
(3, 1, 3, 3, 1.00000, '2021-06-29 11:53:33', '2021-06-29 11:53:33'),
(4, 1, 4, 4, 1.00000, '2021-06-29 11:53:40', '2021-06-29 11:53:40'),
(5, 1, 5, 5, 1.00000, '2021-06-29 11:53:48', '2021-06-29 11:53:48'),
(6, 1, 1, 2, 3.00000, '2021-06-29 11:54:40', '2021-06-29 11:54:40'),
(7, 1, 2, 1, 0.33333, '2021-06-29 11:54:40', '2021-06-29 11:54:40'),
(8, 1, 1, 3, 5.00000, '2021-06-29 11:55:45', '2021-06-29 11:55:45'),
(9, 1, 3, 1, 0.20000, '2021-06-29 11:55:45', '2021-06-29 11:55:45'),
(10, 1, 1, 4, 7.00000, '2021-06-29 11:56:08', '2021-06-29 11:56:08'),
(11, 1, 4, 1, 0.14286, '2021-06-29 11:56:08', '2021-06-29 11:56:08'),
(12, 1, 1, 5, 9.00000, '2021-06-29 11:56:15', '2021-06-29 11:56:15'),
(13, 1, 5, 1, 0.11111, '2021-06-29 11:56:15', '2021-06-29 11:56:15'),
(14, 1, 2, 3, 3.00000, '2021-06-29 11:56:24', '2021-06-29 11:56:24'),
(15, 1, 3, 2, 0.33333, '2021-06-29 11:56:24', '2021-06-29 11:56:24'),
(16, 1, 2, 4, 5.00000, '2021-06-29 11:56:31', '2021-06-29 11:56:31'),
(17, 1, 4, 2, 0.20000, '2021-06-29 11:56:31', '2021-06-29 11:56:31'),
(18, 1, 2, 5, 7.00000, '2021-06-29 11:56:37', '2021-06-29 11:56:37'),
(19, 1, 5, 2, 0.14286, '2021-06-29 11:56:37', '2021-06-29 11:56:37'),
(20, 1, 3, 4, 0.20000, '2021-06-29 11:56:46', '2021-06-29 11:57:10'),
(21, 1, 4, 3, 5.00000, '2021-06-29 11:56:46', '2021-06-29 11:57:10'),
(22, 1, 5, 3, 7.00000, '2021-06-29 11:57:23', '2021-06-29 11:57:23'),
(23, 1, 3, 5, 0.14286, '2021-06-29 11:57:23', '2021-06-29 11:57:23'),
(24, 1, 5, 4, 3.00000, '2021-06-29 11:57:31', '2021-06-29 11:57:31'),
(25, 1, 4, 5, 0.33333, '2021-06-29 11:57:31', '2021-06-29 11:57:31'),
(26, 2, 1, 1, 1.00000, '2021-07-02 07:47:30', '2021-07-02 07:47:30'),
(27, 2, 2, 2, 1.00000, '2021-07-02 07:47:43', '2021-07-02 07:47:43'),
(28, 2, 3, 3, 1.00000, '2021-07-02 07:47:48', '2021-07-02 07:47:48'),
(29, 2, 4, 4, 1.00000, '2021-07-02 07:47:57', '2021-07-02 07:47:57'),
(30, 2, 5, 5, 1.00000, '2021-07-02 07:48:03', '2021-07-02 07:48:03'),
(31, 3, 1, 1, 1.00000, '2021-07-02 07:48:22', '2021-07-02 07:48:22'),
(32, 3, 2, 2, 1.00000, '2021-07-02 07:48:28', '2021-07-02 07:48:28'),
(33, 3, 3, 3, 1.00000, '2021-07-02 07:48:33', '2021-07-02 07:48:33'),
(34, 3, 4, 4, 1.00000, '2021-07-02 07:48:38', '2021-07-02 07:48:38'),
(35, 3, 5, 5, 1.00000, '2021-07-02 07:48:46', '2021-07-02 07:48:46'),
(36, 2, 1, 2, 1.00000, '2021-07-02 07:50:12', '2021-07-02 07:50:12'),
(37, 2, 2, 1, 1.00000, '2021-07-02 07:50:12', '2021-07-02 07:50:12'),
(38, 2, 1, 3, 1.00000, '2021-07-02 07:50:22', '2021-07-02 07:50:22'),
(39, 2, 3, 1, 1.00000, '2021-07-02 07:50:22', '2021-07-02 07:50:22'),
(40, 2, 1, 4, 3.00000, '2021-07-02 07:50:29', '2021-07-02 07:50:29'),
(41, 2, 4, 1, 0.33333, '2021-07-02 07:50:29', '2021-07-02 07:50:29'),
(42, 2, 1, 5, 1.00000, '2021-07-02 07:50:44', '2021-07-02 07:50:44'),
(43, 2, 5, 1, 1.00000, '2021-07-02 07:50:44', '2021-07-02 07:50:44'),
(44, 2, 3, 2, 1.00000, '2021-07-02 07:50:54', '2021-07-02 07:50:54'),
(45, 2, 2, 3, 1.00000, '2021-07-02 07:50:54', '2021-07-02 07:50:54'),
(46, 2, 3, 4, 3.00000, '2021-07-02 07:51:08', '2021-07-02 07:51:08'),
(47, 2, 4, 3, 0.33333, '2021-07-02 07:51:08', '2021-07-02 07:51:08'),
(48, 2, 3, 5, 1.00000, '2021-07-02 07:51:14', '2021-07-02 07:51:14'),
(49, 2, 5, 3, 1.00000, '2021-07-02 07:51:14', '2021-07-02 07:51:14'),
(50, 2, 2, 4, 3.00000, '2021-07-02 07:51:22', '2021-07-02 07:51:22'),
(51, 2, 4, 2, 0.33333, '2021-07-02 07:51:22', '2021-07-02 07:51:22'),
(52, 2, 2, 5, 1.00000, '2021-07-02 07:51:27', '2021-07-02 07:51:27'),
(53, 2, 5, 2, 1.00000, '2021-07-02 07:51:27', '2021-07-02 07:51:27'),
(54, 2, 5, 4, 3.00000, '2021-07-02 07:51:34', '2021-07-02 07:51:34'),
(55, 2, 4, 5, 0.33333, '2021-07-02 07:51:34', '2021-07-02 07:51:34'),
(56, 3, 5, 1, 9.00000, '2021-07-02 07:52:45', '2021-07-02 07:52:45'),
(57, 3, 1, 5, 0.11111, '2021-07-02 07:52:45', '2021-07-02 07:52:45'),
(58, 3, 5, 2, 5.00000, '2021-07-02 07:53:00', '2021-07-02 07:53:00'),
(59, 3, 2, 5, 0.20000, '2021-07-02 07:53:00', '2021-07-02 07:53:00'),
(60, 3, 5, 3, 7.00000, '2021-07-02 07:53:11', '2021-07-02 07:53:11'),
(61, 3, 3, 5, 0.14286, '2021-07-02 07:53:11', '2021-07-02 07:53:11'),
(62, 3, 5, 4, 3.00000, '2021-07-02 07:53:21', '2021-07-02 07:53:21'),
(63, 3, 4, 5, 0.33333, '2021-07-02 07:53:21', '2021-07-02 07:53:21'),
(64, 3, 4, 1, 7.00000, '2021-07-02 07:55:15', '2021-07-02 07:55:15'),
(65, 3, 1, 4, 0.14286, '2021-07-02 07:55:15', '2021-07-02 07:55:15'),
(66, 3, 4, 2, 3.00000, '2021-07-02 07:55:29', '2021-07-02 07:55:29'),
(67, 3, 2, 4, 0.33333, '2021-07-02 07:55:29', '2021-07-02 07:55:29'),
(68, 3, 4, 3, 5.00000, '2021-07-02 07:55:44', '2021-07-02 07:55:44'),
(69, 3, 3, 4, 0.20000, '2021-07-02 07:55:44', '2021-07-02 07:55:44'),
(70, 3, 3, 1, 3.00000, '2021-07-02 07:55:56', '2021-07-02 07:55:56'),
(71, 3, 1, 3, 0.33333, '2021-07-02 07:55:56', '2021-07-02 07:55:56'),
(72, 3, 2, 3, 3.00000, '2021-07-02 07:56:34', '2021-07-02 07:56:34'),
(73, 3, 3, 2, 0.33333, '2021-07-02 07:56:34', '2021-07-02 07:56:34'),
(74, 3, 2, 1, 5.00000, '2021-07-02 07:56:53', '2021-07-02 07:56:53'),
(75, 3, 1, 2, 0.20000, '2021-07-02 07:56:53', '2021-07-02 07:56:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternative_details`
--

CREATE TABLE `alternative_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `alternative_id` int(10) UNSIGNED NOT NULL,
  `criteria_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alternative_details`
--

INSERT INTO `alternative_details` (`id`, `alternative_id`, `criteria_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '30000', '2021-06-29 11:22:37', '2021-06-29 11:22:37'),
(2, 2, 1, '26000', '2021-06-29 11:22:49', '2021-06-29 11:22:49'),
(3, 3, 1, '24000', '2021-06-29 11:23:33', '2021-06-29 11:23:33'),
(4, 4, 1, '20000', '2021-06-29 11:23:39', '2021-06-29 11:23:39'),
(5, 5, 1, '13000', '2021-06-29 11:23:47', '2021-06-29 11:23:47'),
(6, 1, 2, 'Aftermarket', '2021-06-29 11:23:59', '2021-06-29 11:23:59'),
(7, 2, 2, 'OEM', '2021-06-29 11:24:06', '2021-06-29 11:24:06'),
(8, 3, 2, 'OEM', '2021-06-29 11:24:11', '2021-06-29 11:24:11'),
(9, 4, 2, 'Aftermarket', '2021-06-29 11:24:18', '2021-06-29 11:24:18'),
(10, 5, 2, 'OEM', '2021-06-29 11:24:23', '2021-06-29 11:24:23'),
(11, 1, 3, '100000', '2021-06-29 11:24:35', '2021-06-29 11:24:35'),
(12, 2, 3, '90000', '2021-06-29 11:24:40', '2021-06-29 11:24:40'),
(13, 3, 3, '95000', '2021-06-29 11:24:47', '2021-06-29 11:24:47'),
(14, 4, 3, '85000', '2021-06-29 11:24:53', '2021-06-29 11:24:53'),
(15, 5, 3, '55000', '2021-06-29 11:24:59', '2021-06-29 11:24:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternative_normalizations`
--

CREATE TABLE `alternative_normalizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `comparison_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alternative_normalizations`
--

INSERT INTO `alternative_normalizations` (`id`, `comparison_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 0.55950, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(2, 7, 0.18650, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(3, 9, 0.11190, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(4, 11, 0.07993, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(5, 13, 0.06217, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(6, 2, 0.21385, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(7, 6, 0.64155, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(8, 15, 0.07128, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(9, 17, 0.04277, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(10, 19, 0.03055, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(11, 3, 0.04762, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(12, 8, 0.23810, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(13, 14, 0.14286, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(14, 21, 0.23810, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(15, 22, 0.33333, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(16, 4, 0.06173, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(17, 10, 0.43210, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(18, 16, 0.30864, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(19, 20, 0.01235, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(20, 24, 0.18519, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(21, 5, 0.05722, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(22, 12, 0.51499, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(23, 18, 0.40054, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(24, 23, 0.00817, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(25, 25, 0.01907, '2021-06-29 11:58:25', '2021-06-29 11:58:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternative_priorities`
--

CREATE TABLE `alternative_priorities` (
  `id` int(10) UNSIGNED NOT NULL,
  `criteria_id` int(10) UNSIGNED NOT NULL,
  `alternative_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alternative_priorities`
--

INSERT INTO `alternative_priorities` (`id`, `criteria_id`, `alternative_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0.47725, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(2, 1, 2, 0.25048, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(3, 1, 3, 0.05026, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(4, 1, 4, 0.08832, '2021-06-29 11:58:25', '2021-06-29 11:58:25'),
(5, 1, 5, 0.13369, '2021-06-29 11:58:25', '2021-06-29 11:58:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `criterias`
--

CREATE TABLE `criterias` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `criterias`
--

INSERT INTO `criterias` (`id`, `code`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'C1', 'Daya Tahan', '2021-06-29 11:04:20', '2021-06-29 11:12:53', NULL),
(2, 'C2', 'Lisensi', '2021-06-29 11:04:20', '2021-06-29 11:13:06', NULL),
(3, 'C3', 'Harga', '2021-06-29 11:04:21', '2021-06-29 11:13:16', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `criteria_comparisons`
--

CREATE TABLE `criteria_comparisons` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_criteria_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,2) NOT NULL,
  `second_criteria_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `criteria_comparisons`
--

INSERT INTO `criteria_comparisons` (`id`, `first_criteria_id`, `value`, `second_criteria_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1.00, 1, '2021-06-29 11:04:20', '2021-06-29 11:04:20'),
(2, 2, 1.00, 2, '2021-06-29 11:04:21', '2021-06-29 11:04:21'),
(3, 3, 1.00, 3, '2021-06-29 11:04:21', '2021-06-29 11:04:21'),
(6, 1, 3.00, 2, '2021-06-29 11:32:04', '2021-06-29 11:32:04'),
(7, 2, 0.33, 1, '2021-06-29 11:32:04', '2021-06-29 11:32:04'),
(8, 3, 3.00, 1, '2021-06-29 11:33:49', '2021-06-29 11:33:49'),
(9, 1, 0.33, 3, '2021-06-29 11:33:49', '2021-06-29 11:33:49'),
(10, 3, 5.00, 2, '2021-06-29 11:34:41', '2021-06-29 11:34:41'),
(11, 2, 0.20, 3, '2021-06-29 11:34:41', '2021-06-29 11:34:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `criteria_normalizations`
--

CREATE TABLE `criteria_normalizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `comparison_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `criteria_normalizations`
--

INSERT INTO `criteria_normalizations` (`id`, `comparison_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 0.2309, '2021-06-29 11:35:52', '2021-06-29 11:35:52'),
(2, 7, 0.0762, '2021-06-29 11:35:52', '2021-06-29 11:35:52'),
(3, 8, 0.6928, '2021-06-29 11:35:52', '2021-06-29 11:35:52'),
(4, 2, 0.1111, '2021-06-29 11:35:52', '2021-06-29 11:35:52'),
(5, 6, 0.3333, '2021-06-29 11:35:52', '2021-06-29 11:35:52'),
(6, 10, 0.5556, '2021-06-29 11:35:52', '2021-06-29 11:35:52'),
(7, 3, 0.6536, '2021-06-29 11:35:52', '2021-06-29 11:35:52'),
(8, 9, 0.2157, '2021-06-29 11:35:52', '2021-06-29 11:35:52'),
(9, 11, 0.1307, '2021-06-29 11:35:52', '2021-06-29 11:35:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `criteria_priorities`
--

CREATE TABLE `criteria_priorities` (
  `id` int(10) UNSIGNED NOT NULL,
  `criteria_id` int(10) UNSIGNED NOT NULL,
  `value` double(8,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `criteria_priorities`
--

INSERT INTO `criteria_priorities` (`id`, `criteria_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 0.2600, '2021-06-29 11:35:52', '2021-07-02 07:45:28'),
(2, 2, 0.1060, '2021-06-29 11:35:52', '2021-06-29 11:35:52'),
(3, 3, 0.6340, '2021-06-29 11:35:52', '2021-06-29 11:35:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `index_random`
--

CREATE TABLE `index_random` (
  `id` int(10) UNSIGNED NOT NULL,
  `n` tinyint(3) UNSIGNED NOT NULL,
  `IR` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `index_random`
--

INSERT INTO `index_random` (`id`, `n`, `IR`, `created_at`, `updated_at`) VALUES
(1, 1, 0.00, NULL, NULL),
(2, 2, 0.00, NULL, NULL),
(3, 3, 0.58, NULL, NULL),
(4, 4, 0.90, NULL, NULL),
(5, 5, 1.12, NULL, NULL),
(6, 6, 1.24, NULL, NULL),
(7, 7, 1.32, NULL, NULL),
(8, 8, 1.41, NULL, NULL),
(9, 9, 1.45, NULL, NULL),
(10, 10, 1.49, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `created_at`, `update_at`) VALUES
(1, 'vbelt', NULL, NULL),
(2, 'roller', NULL, NULL),
(3, 'kampas rem', NULL, NULL),
(4, 'kampas ganda', NULL, NULL),
(5, 'oli', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_11_27_001124_create_roles_table', 1),
(3, '2018_11_27_001516_create_role_user_table', 1),
(4, '2018_11_27_082023_create_criterias_table', 1),
(5, '2018_11_27_082143_create_alternatives_table', 1),
(6, '2018_11_27_083235_create_alternative_details_table', 1),
(7, '2018_12_03_132203_create_criteria_comparisons_table', 1),
(8, '2018_12_04_062859_create_rating_scales_table', 1),
(9, '2018_12_05_011024_create_criteria_normalizations_table', 1),
(10, '2018_12_05_045538_create_criteria_priorities_table', 1),
(11, '2018_12_16_031947_create_alternative_comparisons_table', 1),
(12, '2018_12_16_105826_create_alternative_normalizations_table', 1),
(13, '2018_12_16_131631_create_alternative_priorities_table', 1),
(14, '2018_12_18_103508_create_index_randoms_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating_scales`
--

CREATE TABLE `rating_scales` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` int(10) UNSIGNED NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rating_scales`
--

INSERT INTO `rating_scales` (`id`, `value`, `caption`, `detail`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sama pentingnya', 'Kedua elemen mempunyai pengaruh yang sama.', NULL, NULL),
(2, 2, 'Rata-rata', 'Nilai-nilai antara dua nilai pertimbangan-pertimbangan yang berdekatan, Nilai ini diberikan bila ada dua kompromi di antara 2 pilihan.', NULL, NULL),
(3, 3, 'Sedikit lebih penting', 'Pengalaman dan penilaian sangat memihak satu elemen dibandingkan dengan pasangannya.', NULL, NULL),
(4, 4, 'Rata-rata', 'Nilai-nilai antara dua nilai pertimbangan-pertimbangan yang berdekatan, Nilai ini diberikan bila ada dua kompromi di antara 2 pilihan.', NULL, NULL),
(5, 5, 'Lebih Penting', 'Satu elemen sangat disukai dan secara praktis dominasinya sangat nyata, dibandingkan dengan elemen pasangannya.', NULL, NULL),
(6, 6, 'Rata-rata', 'Nilai-nilai antara dua nilai pertimbangan-pertimbangan yang berdekatan, Nilai ini diberikan bila ada dua kompromi di antara 2 pilihan.', NULL, NULL),
(7, 7, 'Sangat penting', 'Satu elemen terbukti sangat disukai dan secara praktis dominasinya sangat, dibandingkan dengan elemen pasangannya.', NULL, NULL),
(8, 8, 'Rata-rata', 'Nilai-nilai antara dua nilai pertimbangan-pertimbangan yang berdekatan, Nilai ini diberikan bila ada dua kompromi di antara 2 pilihan.', NULL, NULL),
(9, 9, 'Mutlak lebih penting', 'Satu elemen mutlak lebih disukai dibandingkan dengan pasangannya, pada tingkat keyakinan tertinggi', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'superadmin', 'Superadmin', NULL, NULL, NULL),
(2, 'admin', 'Administrator', NULL, NULL, NULL),
(3, 'user', 'User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'harun', 'harunarrsd', 'harun@gmail.com', NULL, '$2y$10$NL2fLZdrlSoqm7IVELiuCuZYrbhiYntHYLKpsOUyIOjC/ZV7J7.zq', 'OA1EgkOyjI6ZPrmKXaMTRSAA2fsjx9mSrsRvhWl5BDV7BfiEpbFDk23jVv2r', '2021-06-29 11:08:44', '2021-06-29 11:08:44', NULL),
(2, 'superadmin', 'superadmin', 'superadmin@gmail.com', NULL, '$2y$10$NL2fLZdrlSoqm7IVELiuCuZYrbhiYntHYLKpsOUyIOjC/ZV7J7.zq', 'GIVNe1QiOQAFopcidmalsqCGzqUtjHi4tdpTV9zgghpqCQKuy8qDgpgJ1PbL', NULL, NULL, NULL),
(3, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$NL2fLZdrlSoqm7IVELiuCuZYrbhiYntHYLKpsOUyIOjC/ZV7J7.zq', 'hnW1cL9eb49vLVuVyI5NvXpp9WTfFyFTO7DCrhjPAXXq8jsOWHvk9PqRgtxa', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatives`
--
ALTER TABLE `alternatives`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alternatives_code_unique` (`code`);

--
-- Indeks untuk tabel `alternative_comparisons`
--
ALTER TABLE `alternative_comparisons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternative_comparisons_criteria_id_foreign` (`criteria_id`),
  ADD KEY `alternative_comparisons_x_alternative_id_foreign` (`x_alternative_id`),
  ADD KEY `alternative_comparisons_y_alternative_id_foreign` (`y_alternative_id`);

--
-- Indeks untuk tabel `alternative_details`
--
ALTER TABLE `alternative_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternative_details_alternative_id_foreign` (`alternative_id`),
  ADD KEY `alternative_details_criteria_id_foreign` (`criteria_id`);

--
-- Indeks untuk tabel `alternative_normalizations`
--
ALTER TABLE `alternative_normalizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternative_normalizations_comparison_id_foreign` (`comparison_id`);

--
-- Indeks untuk tabel `alternative_priorities`
--
ALTER TABLE `alternative_priorities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternative_priorities_criteria_id_foreign` (`criteria_id`),
  ADD KEY `alternative_priorities_alternative_id_foreign` (`alternative_id`);

--
-- Indeks untuk tabel `criterias`
--
ALTER TABLE `criterias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `criterias_code_unique` (`code`);

--
-- Indeks untuk tabel `criteria_comparisons`
--
ALTER TABLE `criteria_comparisons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `criteria_comparisons_first_criteria_id_foreign` (`first_criteria_id`),
  ADD KEY `criteria_comparisons_second_criteria_id_foreign` (`second_criteria_id`);

--
-- Indeks untuk tabel `criteria_normalizations`
--
ALTER TABLE `criteria_normalizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `criteria_normalizations_comparison_id_foreign` (`comparison_id`);

--
-- Indeks untuk tabel `criteria_priorities`
--
ALTER TABLE `criteria_priorities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `criteria_priorities_criteria_id_foreign` (`criteria_id`);

--
-- Indeks untuk tabel `index_random`
--
ALTER TABLE `index_random`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rating_scales`
--
ALTER TABLE `rating_scales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatives`
--
ALTER TABLE `alternatives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `alternative_comparisons`
--
ALTER TABLE `alternative_comparisons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `alternative_details`
--
ALTER TABLE `alternative_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `alternative_normalizations`
--
ALTER TABLE `alternative_normalizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `alternative_priorities`
--
ALTER TABLE `alternative_priorities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `criterias`
--
ALTER TABLE `criterias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `criteria_comparisons`
--
ALTER TABLE `criteria_comparisons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `criteria_normalizations`
--
ALTER TABLE `criteria_normalizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `criteria_priorities`
--
ALTER TABLE `criteria_priorities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `index_random`
--
ALTER TABLE `index_random`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `rating_scales`
--
ALTER TABLE `rating_scales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `alternative_comparisons`
--
ALTER TABLE `alternative_comparisons`
  ADD CONSTRAINT `alternative_comparisons_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alternative_comparisons_x_alternative_id_foreign` FOREIGN KEY (`x_alternative_id`) REFERENCES `alternatives` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alternative_comparisons_y_alternative_id_foreign` FOREIGN KEY (`y_alternative_id`) REFERENCES `alternatives` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `alternative_details`
--
ALTER TABLE `alternative_details`
  ADD CONSTRAINT `alternative_details_alternative_id_foreign` FOREIGN KEY (`alternative_id`) REFERENCES `alternatives` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alternative_details_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `alternative_normalizations`
--
ALTER TABLE `alternative_normalizations`
  ADD CONSTRAINT `alternative_normalizations_comparison_id_foreign` FOREIGN KEY (`comparison_id`) REFERENCES `alternative_comparisons` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `alternative_priorities`
--
ALTER TABLE `alternative_priorities`
  ADD CONSTRAINT `alternative_priorities_alternative_id_foreign` FOREIGN KEY (`alternative_id`) REFERENCES `alternatives` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alternative_priorities_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `criteria_comparisons`
--
ALTER TABLE `criteria_comparisons`
  ADD CONSTRAINT `criteria_comparisons_first_criteria_id_foreign` FOREIGN KEY (`first_criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `criteria_comparisons_second_criteria_id_foreign` FOREIGN KEY (`second_criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `criteria_normalizations`
--
ALTER TABLE `criteria_normalizations`
  ADD CONSTRAINT `criteria_normalizations_comparison_id_foreign` FOREIGN KEY (`comparison_id`) REFERENCES `criteria_comparisons` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `criteria_priorities`
--
ALTER TABLE `criteria_priorities`
  ADD CONSTRAINT `criteria_priorities_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
