-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 14, 2025 at 02:37 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2210010482_hukum`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` varchar(20) NOT NULL,
  `Kode_barang` varchar(20) DEFAULT NULL,
  `merek` varchar(20) DEFAULT NULL,
  `Status_barang` varchar(20) DEFAULT NULL,
  `keterangan` varchar(20) DEFAULT NULL,
  `Tgl_masuk` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `Kode_barang`, `merek`, `Status_barang`, `keterangan`, `Tgl_masuk`) VALUES
('12', 'buku', 'sidu', 'ada', 'masuk', '12-04-2005'),
('13', 'Meja', 'Napoli', 'Ada', 'Masuk', '20-22-2022');

-- --------------------------------------------------------

--
-- Table structure for table `inventaris`
--

CREATE TABLE `inventaris` (
  `id` varchar(20) NOT NULL,
  `Barang_id` varchar(20) DEFAULT NULL,
  `Karyawan_id` varchar(25) DEFAULT NULL,
  `Status_inventaris` varchar(50) DEFAULT NULL,
  `Waktu_penyerahan` varchar(20) DEFAULT NULL,
  `keterangan` varchar(20) DEFAULT NULL,
  `Tanggal_keluar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inventaris`
--

INSERT INTO `inventaris` (`id`, `Barang_id`, `Karyawan_id`, `Status_inventaris`, `Waktu_penyerahan`, `keterangan`, `Tanggal_keluar`) VALUES
('55', '14', '12', 'tidak aktif', 'adcacz', 'scsscc', '1204688');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` varchar(20) NOT NULL,
  `Divisi_id` varchar(20) DEFAULT NULL,
  `Lokasi_id` varchar(25) DEFAULT NULL,
  `Nama_krywn` varchar(20) DEFAULT NULL,
  `jabatan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `Divisi_id`, `Lokasi_id`, `Nama_krywn`, `jabatan`) VALUES
('123', '123', '1213', 'mmm', 'akak'),
('123456mjhgf', '234567890', 'sdcvb', 'ascvbnm', 'xcvbnm'),
('90', 'jjj', 'ffchgd', 'sdfnm', 'vbkjbk');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int NOT NULL,
  `Nama_lokasi` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi`
--

CREATE TABLE `mutasi` (
  `id` varchar(100) NOT NULL,
  `Karyawan_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Tanggal_mutasi` varchar(100) DEFAULT NULL,
  `Barang_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mutasi`
--

INSERT INTO `mutasi` (`id`, `Karyawan_id`, `Tanggal_mutasi`, `Barang_id`) VALUES
('60', '562211', '102668', '5464');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int NOT NULL,
  `Nama_divisi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
