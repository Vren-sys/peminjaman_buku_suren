-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Nov 2026 pada 14.57
-- Versi server: 10.11.16-MariaDB
-- Versi PHP: 8.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Basis data: `peminjaman_buku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `publisher`, `year`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Laskar Pelangi', 'Andrea Hirata', 'Bentang', 2005, 3, '2026-11-08 18:31:12', '2026-11-11 02:56:58'),
(2, 'Bumi', 'Tere Liye', 'Gramedia', 2014, 3, '2026-11-08 18:31:12', '2026-11-08 18:31:12'),
(3, 'Belajar Laravel', 'Budi Raharjo', 'Informatika', 2023, 5, '2026-11-08 18:31:12', '2026-11-08 18:31:12'),
(4, 'Dilan 1990', 'Pidi Baiq', 'Pastel Books', 2014, 4, '2026-11-11 04:53:14', '2026-11-11 04:53:14'),
(5, 'Negeri 5 Menara', 'Ahmad Fuadi', 'Gramedia Pustaka Utama', 2009, 3, '2026-11-11 04:53:14', '2026-11-11 04:53:14'),
(6, 'Filosofi Teras', 'Henry Manampiring', 'Kompas', 2018, 5, '2026-11-11 04:53:14', '2026-11-11 04:53:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jobs`
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
-- Struktur dari tabel `job_batches`
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
-- Struktur dari tabel `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `loan_date` date NOT NULL,
  `due_date` date NOT NULL,
  `returned_at` date DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'dipinjam',
  `fine` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `loans`
--

INSERT INTO `loans` (`id`, `user_id`, `book_id`, `loan_date`, `due_date`, `returned_at`, `status`, `fine`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2026-11-09', '2026-11-16', '2026-11-11', 'dikembalikan', 0, '2026-11-08 18:33:28', '2026-11-11 02:56:58'),
(2, 2, 1, '2026-11-11', '2026-11-18', NULL, 'dipinjam', 0, '2026-11-11 02:43:16', '2026-11-11 02:43:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_11_04_123337_create_books_table', 1),
(5, '2026_11_04_123437_create_loans_table', 1),
(6, '2026_11_08_233421_create_books_table', 2),
(7, '2026_11_08_233455_create_loans_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
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
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0LlQS1Ta4WjbX4zYvOn4FdxsxgF0Nc8JupEuMAfe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaDB1WDR0NnEwQ2dFV1E0OFNVU2Y5ck9kS2RKbmxsRzkzVjRWNXdaUSI7czo4OiJmaWxhbWVudCI7YToxOntzOjEzOiJub3RpZmljYXRpb25zIjthOjE6e3M6NzoibWFpbGJveCI7czo2NDoiMzI0NmUxMWFkNTMyN2ZhNzdkMGZhOTFkNTcxMzlhZThjZjM2MDRkOGI0Y2ZjMWQ4MTQ3MTM2N2E2YTM4MzhmMCI7fX1zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL3JlZ2lzdGVyIjtzOjU6InJvdXRlIjtzOjI4OiJmaWxhbWVudC5hZG1pbi5hdXRoLnJlZ2lzdGVyIjt9czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluIjt9fQ==', 1794398549),
('4lZP5vFT8JNrrKUb42CMG28ZpKzIBVf43vavKOyv', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.145.3 Chrome/150.0.7871.250 Electron/43.8.3 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoieGUxNXpsV2lDUFNBeTJiaTRzMU1seURneENuSTZFNjhDOEhodWx4USI7czo4OiJmaWxhbWVudCI7YToxOntzOjEzOiJub3RpZmljYXRpb25zIjthOjE6e3M6NzoibWFpbGJveCI7czo0MDoiRVRJdm9GTWU5NUlWcFV3WjVUOWMyclZPZ0dtdWpmVGpodXlSNlp0YSI7fX1zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluIjtzOjU6InJvdXRlIjtzOjMwOiJmaWxhbWVudC5hZG1pbi5wYWdlcy5kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjY0OiIyNTU3ZGEzMTQ3NWM4NDc1YTVhZjU5ZGU2ZGMzNWIxMzg1MzAyMTQ3M2Q5MDkxMDZlNzk2NTBmYThhMGY2OTBjIjt9', 1794393737),
('lpn90TCJygYc8fRnZrHVWkz2GdeAe2VshsvRD6wo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.145.3 Chrome/150.0.7871.250 Electron/43.8.3 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid010SGk5cnNZOUNUNGo0c1d2VGRkSGM0aEdBOWtmUEZiZkdRVFdMTSI7czo4OiJmaWxhbWVudCI7YToxOntzOjEzOiJub3RpZmljYXRpb25zIjthOjE6e3M6NzoibWFpbGJveCI7czo2NDoiZjkzZmY2ZDg4OTNiNTllNjBlYjM1YTc2MjkxMGIzMGM1OWJkMGUzNTRkNjg4MWVkOGEwZWY5NjJiYzA2YjY0NyI7fX1zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1794391348),
('TYH6EgbdYuuFjoN9vgG5C0LtU2ss4itFrxsShrrL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY3JibFpoZUZITGdKR0I2aUxOa3NvSnE0Y3lGS0lsSWtoQkVrYkRBdSI7czo4OiJmaWxhbWVudCI7YToxOntzOjEzOiJub3RpZmljYXRpb25zIjthOjE6e3M6NzoibWFpbGJveCI7czo2NDoiYTY3MDc2NWMwNmJlNDI1NjlmODkyYmViYjMwMDQ5NjFhOGRmOWU1YjI1OGI2ODU2ZTAwYWQwMjc5NzYxNmUyOCI7fX1zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1794391448),
('zXUe6ECUSlhJKgOCcYZ7eqeQ9PAqvXW0hcq4jSAM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFhYY3ppbDlnRGNTWjFubTg5RnJJQ1p0Q2J3cjVkZ1Bad1NvNmNBZSI7czo4OiJmaWxhbWVudCI7YToxOntzOjEzOiJub3RpZmljYXRpb25zIjthOjE6e3M6NzoibWFpbGJveCI7czo2NDoiMzU0Mzk2YWYwYzY5Zjk2ZjI4MTM0OTMxMWM0OWI5Y2E1YjJmOGRmNDNkNTYwY2Q3Mjk0ODg5NjIwNjJjMTIzMyI7fX1zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1794397703);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'siswa',
  `kelas` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `kelas`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@perpus.test', '$2y$12$U4n8fG6pgCT2nocykxrxYehNTDWxmBROJ63fUXkrZ35.E44SYRh/m', 'admin', NULL, NULL, '2026-11-08 18:31:12', '2026-11-08 18:31:12'),
(2, 'Dimas', 'siswa@perpus.test', '$2y$12$Kgukv7AUOom1LfH63DSm1e0Brs9gtEqXhhR.AzKVjbkXmNbT/DP3m', 'siswa', 'XII RPL 2', NULL, '2026-11-08 18:31:12', '2026-11-08 18:31:12'),
(4, 'miko', 'miko@perpus.test', '$2y$12$fbd36MZlvzVGIxvG0m97r.HMYi5xsvS9zsiTaY1M.QefpJwMPr7Lm', 'siswa', 'XII RPL 2', NULL, '2026-11-11 04:53:14', '2026-11-11 04:53:14'),
(5, 'suren', 'suren@perpus.test', '$2y$12$nZOe/iyHfVzPe5sWimiRvuxmr1NY/11MbOv5K7VJ9/fEocLxO5zo.', 'siswa', 'XII RPL 2', NULL, '2026-11-11 04:53:14', '2026-11-11 04:53:14');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loans_user_id_foreign` (`user_id`),
  ADD KEY `loans_book_id_foreign` (`book_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `loans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
