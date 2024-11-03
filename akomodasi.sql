-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2024 at 12:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akomodasi`
--

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_10_26_132932_buat_tb_user', 1),
(3, '2023_10_26_133624_buat_tb_tamu', 1),
(4, '2023_10_26_133805_buat_tb_kategori_kamar', 1),
(5, '2023_10_26_134047_buat_tb_reservasi', 1),
(6, '2023_11_20_122512_tb_kategori', 1);

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
-- Table structure for table `tb_kamar`
--

CREATE TABLE `tb_kamar` (
  `id_kamar` bigint(20) UNSIGNED NOT NULL,
  `nama_kamar` varchar(255) NOT NULL,
  `id_kategori` bigint(20) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `harga_kamar` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kamar`
--

INSERT INTO `tb_kamar` (`id_kamar`, `nama_kamar`, `id_kategori`, `deskripsi`, `harga_kamar`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'kamar1', 1, 'untuk kelas menengah kebawah', '550000', '10429960download (9).jpeg', NULL, '2024-01-10 03:11:56'),
(2, 'kamar2', 1, 'kamar yang sederhana dan elegan', '550000', '72579376download (10).jpeg', NULL, '2024-01-10 03:12:08'),
(3, 'kamar3', 1, 'mewah, elegan dan berisi kolam bernang', '1550000', '37556884Swimming pool  Swimming pools kendrick lamar  Swimming pools sped up  Swimming pools in houses.jpeg', NULL, '2024-01-10 03:12:27'),
(4, 'kamar4', 1, 'untuk kelas menengah keatas', '1500000', '75959805download (8).jpeg', NULL, '2024-01-10 03:16:11'),
(5, 'kamar5', 1, 'kamar yang bagus dengan view pantai', '500000', '35798530SEA HOTEL _ CGI.jpeg', NULL, '2024-01-10 03:13:14'),
(7, 'kamar6', 1, 'kamar yang bagus dengan view sawah', '4500000', '90654299A Contemporary Joglo Villa.jpeg', NULL, '2024-01-10 03:15:14'),
(8, 'kamar7', 1, 'untuk kelas menengah kebawah', '400000', '29357249Berikan yang terbaik untuk putra puteri Anda_ Kasur 2in1 dari simmons springbed_.jpeg', NULL, '2024-01-10 03:16:21'),
(9, 'kamar8', 1, 'untuk kelas menengah kebawah', '550000', '97628253download (7).jpeg', NULL, '2024-01-10 03:16:28'),
(10, 'kamar9', 1, 'untuk kelas menengah kebawah', '550000', '32409398Kamar tidur tropical garden.jpeg', NULL, '2024-01-10 03:16:41'),
(11, 'kamar10', 1, 'untuk kelas menengah kebawah', '550000', '86962503Hometrends.jpeg', NULL, '2024-01-10 03:16:50'),
(12, 'kamar11', 1, 'untuk kelas menengah kebawah', '550000', '31036607download (11).jpeg', NULL, '2024-01-10 03:17:05'),
(13, 'kamar12', 5, 'untuk kelas menengah kebawah', '550000', '47721994Makeover kamar.jpeg', '2024-01-10 03:18:15', '2024-01-10 03:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `kategori`, `created_at`, `updated_at`) VALUES
(1, 'Delux', NULL, NULL),
(2, 'Exclusive', NULL, NULL),
(3, 'super', NULL, NULL),
(4, 'Super Delux', NULL, NULL),
(5, 'Reguler', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_reservasi`
--

CREATE TABLE `tb_reservasi` (
  `id_reservasi` bigint(20) UNSIGNED NOT NULL,
  `nama_tamu` varchar(255) NOT NULL,
  `id_kamar` bigint(20) NOT NULL,
  `tanggal_checkin` date NOT NULL,
  `tanggal_checkout` date NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `harga_kamar` bigint(20) NOT NULL,
  `total_biaya` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_reservasi`
--

INSERT INTO `tb_reservasi` (`id_reservasi`, `nama_tamu`, `id_kamar`, `tanggal_checkin`, `tanggal_checkout`, `jumlah`, `harga_kamar`, `total_biaya`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Gibran', 1, '2023-11-03', '2023-11-05', '2', 500000, '1000000', 'sudah bayar', NULL, NULL),
(2, 'Prabowo', 2, '2023-11-04', '2023-11-06', '3', 550000, '1650000', 'Sudah Lunas', '2024-01-10 03:05:41', '2024-01-10 03:05:41'),
(3, 'Kuroko', 10, '2024-01-01', '2024-01-05', '5', 550000, '2750000', 'Sudah Lunas', '2024-01-10 03:06:10', '2024-01-10 03:06:10'),
(4, 'Anonymous', 12, '2023-12-15', '2023-12-20', '5', 550000, '2750000', 'Sudah Lunas', '2024-01-10 03:06:42', '2024-01-10 03:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tamu`
--

CREATE TABLE `tb_tamu` (
  `id_tamu` bigint(20) UNSIGNED NOT NULL,
  `nama_tamu` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telpon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `name_user` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telpon` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `name_user`, `username`, `password`, `email`, `telpon`, `level`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2y$10$fPg0zIfV8YC7c6zl/exvruOlPL0DnFW0rWV46YOzhM0TBd4rGoqbW', 'admin@gmail.com', '082337885', 'admin', NULL, NULL),
(2, 'Childe', 'ChildeLegion', '$2y$10$sj4UvhshfkQp5Jmr544Rs.4Ij1gUbtZj2VoNMocIy8AarHUUVy5sq', 'ChildeTartaglia@gmail.com', '082337885', 'admin', NULL, '2024-01-10 04:53:42'),
(3, 'Kuroko', 'Kuro', '$2y$10$EtPgN/WbGa0r2K5sN23qGOf0v5x7URX5hC0jr2Jkgg/42jOLKKDyS', 'KurokoBasuke@gmail.com', '082337885', 'user', NULL, '2024-01-10 04:02:59'),
(4, 'Lee Cheong San', 'Lee', '$2y$10$DGpKoOStXBNMiwoV5k11f.8/T55cBa982gmYCXk5qtmBKkaM549iS', 'LeeCheongSan@gmail.com', '082337885', 'user', NULL, '2024-01-10 04:03:07'),
(7, 'user', 'user', '$2y$10$LYg2omJOzg/pGCQdvKK3ou.hR3ke3c.Fsev/iPTiRPPPskwy7YzVO', 'user@gmail.com', '081456738635', 'user', '2024-01-10 04:49:19', '2024-01-10 04:49:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tb_kamar`
--
ALTER TABLE `tb_kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_reservasi`
--
ALTER TABLE `tb_reservasi`
  ADD PRIMARY KEY (`id_reservasi`);

--
-- Indexes for table `tb_tamu`
--
ALTER TABLE `tb_tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kamar`
--
ALTER TABLE `tb_kamar`
  MODIFY `id_kamar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_reservasi`
--
ALTER TABLE `tb_reservasi`
  MODIFY `id_reservasi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_tamu`
--
ALTER TABLE `tb_tamu`
  MODIFY `id_tamu` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
