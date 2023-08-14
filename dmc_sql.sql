-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 10:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dmc_sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `lomba`
--

CREATE TABLE `lomba` (
  `id_lomba` varchar(36) NOT NULL,
  `nis` varchar(36) NOT NULL,
  `tgl` date NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lomba_nilai`
--

CREATE TABLE `lomba_nilai` (
  `id_nil_lomba` varchar(36) NOT NULL,
  `id_lomba` varchar(36) NOT NULL,
  `penilaian` varchar(20) NOT NULL,
  `nilai` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `murajaah`
--

CREATE TABLE `murajaah` (
  `id_murajaah` varchar(36) NOT NULL,
  `nis` varchar(36) NOT NULL,
  `tgl` date NOT NULL,
  `nilai` int(11) NOT NULL,
  `halaman` double NOT NULL,
  `persentase` int(11) NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sis_hadir`
--

CREATE TABLE `sis_hadir` (
  `id_hadir` varchar(36) NOT NULL,
  `nis` varchar(36) NOT NULL,
  `sakit` int(11) NOT NULL,
  `izin` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sis_hadits`
--

CREATE TABLE `sis_hadits` (
  `id_hadits` varchar(36) NOT NULL,
  `nis` varchar(36) NOT NULL,
  `nama_hadits` varchar(50) NOT NULL,
  `nilai_hadits` varchar(1) NOT NULL,
  `kategori` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sis_hifdzun`
--

CREATE TABLE `sis_hifdzun` (
  `id_hifdzun` varchar(36) NOT NULL,
  `nis` varchar(36) NOT NULL,
  `tulis` varchar(1) NOT NULL,
  `lisan` varchar(1) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sis_ibadah`
--

CREATE TABLE `sis_ibadah` (
  `id_ibadah` varchar(36) NOT NULL,
  `nis` varchar(36) NOT NULL,
  `ger_wudhu` varchar(1) NOT NULL,
  `ger_shalat` varchar(1) NOT NULL,
  `baca_wudhu` varchar(1) NOT NULL,
  `baca_shalat` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sis_kualitatif`
--

CREATE TABLE `sis_kualitatif` (
  `id_kualitatif` varchar(36) NOT NULL,
  `nis` varchar(36) NOT NULL,
  `pengagungan_ilmi` varchar(1) NOT NULL,
  `tanggung_jawab` varchar(1) NOT NULL,
  `kejujuran` varchar(1) NOT NULL,
  `manfaat` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sis_quran`
--

CREATE TABLE `sis_quran` (
  `id_quran` varchar(36) NOT NULL,
  `nis` varchar(36) NOT NULL,
  `tul_istiadzah` int(11) NOT NULL,
  `tul_makharij` int(11) NOT NULL,
  `tul_shifatul` int(11) NOT NULL,
  `lis_istiadzah` int(11) NOT NULL,
  `lis_makharij` int(11) NOT NULL,
  `lis_shifatul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sis_tahfiz`
--

CREATE TABLE `sis_tahfiz` (
  `id_tahfiz` varchar(36) NOT NULL,
  `nis` varchar(36) NOT NULL,
  `juz` int(11) NOT NULL,
  `kelancaran` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL,
  `teruji` int(11) NOT NULL,
  `persentase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smart`
--

CREATE TABLE `smart` (
  `id_smart` varchar(36) NOT NULL,
  `nis` varchar(36) NOT NULL,
  `tgl` date NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smart_nilai`
--

CREATE TABLE `smart_nilai` (
  `id_nil_smart` varchar(36) NOT NULL,
  `id_smart` varchar(36) NOT NULL,
  `penilaian` varchar(20) NOT NULL,
  `nilai` varchar(1) NOT NULL,
  `kategori` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smart_score`
--

CREATE TABLE `smart_score` (
  `id_sc_smart` varchar(36) NOT NULL,
  `id_smart` varchar(36) NOT NULL,
  `score` int(11) NOT NULL,
  `kategori` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `id_berita` varchar(36) NOT NULL,
  `title_berita` varchar(50) NOT NULL,
  `date_berita` date NOT NULL,
  `isi_berita` text NOT NULL,
  `author` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemasukan`
--

CREATE TABLE `tbl_pemasukan` (
  `id_pemasukan` int(11) NOT NULL,
  `kategori` varchar(6) NOT NULL,
  `nm_siswa` text NOT NULL,
  `nis` varchar(5) NOT NULL,
  `tanggal` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `pic_bukti` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` varchar(36) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `kelas` int(11) NOT NULL,
  `tahun_pend` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ziyadah`
--

CREATE TABLE `ziyadah` (
  `id_ziyadah` varchar(36) NOT NULL,
  `nis` varchar(36) NOT NULL,
  `tgl` date NOT NULL,
  `nilai` double NOT NULL,
  `juz` int(11) NOT NULL,
  `halaman` double NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lomba`
--
ALTER TABLE `lomba`
  ADD PRIMARY KEY (`id_lomba`);

--
-- Indexes for table `lomba_nilai`
--
ALTER TABLE `lomba_nilai`
  ADD PRIMARY KEY (`id_nil_lomba`);

--
-- Indexes for table `murajaah`
--
ALTER TABLE `murajaah`
  ADD PRIMARY KEY (`id_murajaah`);

--
-- Indexes for table `sis_hadir`
--
ALTER TABLE `sis_hadir`
  ADD PRIMARY KEY (`id_hadir`);

--
-- Indexes for table `sis_hadits`
--
ALTER TABLE `sis_hadits`
  ADD PRIMARY KEY (`id_hadits`);

--
-- Indexes for table `sis_hifdzun`
--
ALTER TABLE `sis_hifdzun`
  ADD PRIMARY KEY (`id_hifdzun`);

--
-- Indexes for table `sis_ibadah`
--
ALTER TABLE `sis_ibadah`
  ADD PRIMARY KEY (`id_ibadah`);

--
-- Indexes for table `sis_kualitatif`
--
ALTER TABLE `sis_kualitatif`
  ADD PRIMARY KEY (`id_kualitatif`);

--
-- Indexes for table `sis_quran`
--
ALTER TABLE `sis_quran`
  ADD PRIMARY KEY (`id_quran`);

--
-- Indexes for table `sis_tahfiz`
--
ALTER TABLE `sis_tahfiz`
  ADD PRIMARY KEY (`id_tahfiz`);

--
-- Indexes for table `smart`
--
ALTER TABLE `smart`
  ADD PRIMARY KEY (`id_smart`);

--
-- Indexes for table `smart_nilai`
--
ALTER TABLE `smart_nilai`
  ADD PRIMARY KEY (`id_nil_smart`);

--
-- Indexes for table `smart_score`
--
ALTER TABLE `smart_score`
  ADD PRIMARY KEY (`id_sc_smart`);

--
-- Indexes for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `tbl_pemasukan`
--
ALTER TABLE `tbl_pemasukan`
  ADD PRIMARY KEY (`id_pemasukan`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `ziyadah`
--
ALTER TABLE `ziyadah`
  ADD PRIMARY KEY (`id_ziyadah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
