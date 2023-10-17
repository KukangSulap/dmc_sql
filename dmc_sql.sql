-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 07:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

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
-- Table structure for table `isi_pengeluaran`
--

CREATE TABLE `isi_pengeluaran` (
  `id_isi` int(11) NOT NULL,
  `id_pengeluaran` int(11) NOT NULL,
  `kategori` varchar(15) NOT NULL,
  `nama_pengeluaran` int(20) NOT NULL,
  `tgl` varchar(10) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `note` text NOT NULL,
  `bukti_pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `isi_pengeluaran`
--

INSERT INTO `isi_pengeluaran` (`id_isi`, `id_pengeluaran`, `kategori`, `nama_pengeluaran`, `tgl`, `jumlah`, `note`, `bukti_pic`) VALUES
(1, 2, 'blabla', 2, '2022-2-1', 20, 'tetap semangat', 'tetap semangat yay');

-- --------------------------------------------------------

--
-- Table structure for table `lomba`
--

CREATE TABLE `lomba` (
  `id_lomba` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lomba`
--

INSERT INTO `lomba` (`id_lomba`, `nis`, `tgl`, `notes`) VALUES
(1, 1, '2022-07-07', 'tetap semangat'),
(2, 4, '2022-07-07', 'tetap semangat');

-- --------------------------------------------------------

--
-- Table structure for table `lomba_nilai`
--

CREATE TABLE `lomba_nilai` (
  `id_nil_lomba` int(11) NOT NULL,
  `id_lomba` int(11) NOT NULL,
  `penilaian` varchar(20) NOT NULL,
  `nilai` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lomba_nilai`
--

INSERT INTO `lomba_nilai` (`id_nil_lomba`, `id_lomba`, `penilaian`, `nilai`) VALUES
(1, 1, 'Notes', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `murajaah`
--

CREATE TABLE `murajaah` (
  `id_murajaah` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `nilai` int(11) NOT NULL,
  `halaman` double NOT NULL,
  `persentase` int(11) NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `murajaah`
--

INSERT INTO `murajaah` (`id_murajaah`, `nis`, `tgl`, `nilai`, `halaman`, `persentase`, `notes`) VALUES
(1, 1, '2022-07-07', 1, 16.5, 100, 'tetap semangat');

-- --------------------------------------------------------

--
-- Table structure for table `sis_hadir`
--

CREATE TABLE `sis_hadir` (
  `id_hadir` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `izin` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sis_hadir`
--

INSERT INTO `sis_hadir` (`id_hadir`, `nis`, `sakit`, `izin`, `alpha`) VALUES
(1, 1, 3, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sis_hadits`
--

CREATE TABLE `sis_hadits` (
  `id_hadits` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama_hadits` varchar(50) NOT NULL,
  `nilai_hadits` varchar(1) NOT NULL,
  `penilaian` varchar(10) NOT NULL,
  `kategori` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sis_hadits`
--

INSERT INTO `sis_hadits` (`id_hadits`, `nis`, `nama_hadits`, `nilai_hadits`, `penilaian`, `kategori`) VALUES
(1, 1, 'Hiasi Al-Quran', 'A', 'Lisan', 'Biasa'),
(2, 1, 'Amal tergantung niat', 'A', 'Lisan', 'Arbain');

-- --------------------------------------------------------

--
-- Table structure for table `sis_hifdzun`
--

CREATE TABLE `sis_hifdzun` (
  `id_hifdzun` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `tulis` varchar(1) NOT NULL,
  `lisan` varchar(1) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sis_hifdzun`
--

INSERT INTO `sis_hifdzun` (`id_hifdzun`, `nis`, `tulis`, `lisan`, `jumlah`) VALUES
(1, 1, 'A', '-', 100);

-- --------------------------------------------------------

--
-- Table structure for table `sis_ibadah`
--

CREATE TABLE `sis_ibadah` (
  `id_ibadah` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `ger_wudhu` varchar(1) NOT NULL,
  `ger_shalat` varchar(1) NOT NULL,
  `baca_wudhu` varchar(1) NOT NULL,
  `baca_shalat` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sis_ibadah`
--

INSERT INTO `sis_ibadah` (`id_ibadah`, `nis`, `ger_wudhu`, `ger_shalat`, `baca_wudhu`, `baca_shalat`) VALUES
(1, 2, 'A', 'A', 'A', 'A'),
(2, 2, 'A', 'A', 'A', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `sis_kualitatif`
--

CREATE TABLE `sis_kualitatif` (
  `id_kualitatif` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `pengagungan_ilmi` varchar(1) NOT NULL,
  `tanggung_jawab` varchar(1) NOT NULL,
  `kejujuran` varchar(1) NOT NULL,
  `manfaat` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sis_kualitatif`
--

INSERT INTO `sis_kualitatif` (`id_kualitatif`, `nis`, `pengagungan_ilmi`, `tanggung_jawab`, `kejujuran`, `manfaat`) VALUES
(1, 2, 'A', 'A', 'A', 'A'),
(2, 2, 'A', 'A', 'A', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `sis_quran`
--

CREATE TABLE `sis_quran` (
  `id_quran` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `tul_istiadzah` int(11) NOT NULL,
  `tul_makharij` int(11) NOT NULL,
  `tul_shifatul` int(11) NOT NULL,
  `lis_istiadzah` int(11) NOT NULL,
  `lis_makharij` int(11) NOT NULL,
  `lis_shifatul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sis_quran`
--

INSERT INTO `sis_quran` (`id_quran`, `nis`, `tul_istiadzah`, `tul_makharij`, `tul_shifatul`, `lis_istiadzah`, `lis_makharij`, `lis_shifatul`) VALUES
(1, 2, 0, 0, 0, 0, 0, 0),
(2, 1, 96, 96, 96, 100, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `sis_tahfiz`
--

CREATE TABLE `sis_tahfiz` (
  `id_tahfiz` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `juz` int(11) NOT NULL,
  `kelancaran` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL,
  `teruji` int(11) NOT NULL,
  `persentase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sis_tahfiz`
--

INSERT INTO `sis_tahfiz` (`id_tahfiz`, `nis`, `juz`, `kelancaran`, `status`, `teruji`, `persentase`) VALUES
(1, 1, 17, 'Mumtaz', 'Tersetifikasi', 17, 85);

-- --------------------------------------------------------

--
-- Table structure for table `smart`
--

CREATE TABLE `smart` (
  `id_smart` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smart`
--

INSERT INTO `smart` (`id_smart`, `nis`, `tgl`, `notes`) VALUES
(1, 3, '2022-07-07', 'tetap semangat');

-- --------------------------------------------------------

--
-- Table structure for table `smart_nilai`
--

CREATE TABLE `smart_nilai` (
  `id_nil_smart` int(11) NOT NULL,
  `id_smart` int(11) NOT NULL,
  `penilaian` varchar(20) NOT NULL,
  `nilai` varchar(1) NOT NULL,
  `kategori` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smart_nilai`
--

INSERT INTO `smart_nilai` (`id_nil_smart`, `id_smart`, `penilaian`, `nilai`, `kategori`) VALUES
(1, 1, 'Manner', 'A', 'Mabit');

-- --------------------------------------------------------

--
-- Table structure for table `smart_score`
--

CREATE TABLE `smart_score` (
  `id_sc_smart` int(11) NOT NULL,
  `id_smart` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `kategori` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smart_score`
--

INSERT INTO `smart_score` (`id_sc_smart`, `id_smart`, `score`, `kategori`) VALUES
(1, 1, 100, 'Mabit');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `id_berita` int(11) NOT NULL,
  `title_berita` varchar(50) NOT NULL,
  `date_berita` date NOT NULL,
  `isi_berita` text NOT NULL,
  `author` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `kelas` int(11) NOT NULL,
  `tahun_pend` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `nama`, `semester`, `kelas`, `tahun_pend`) VALUES
(1, 'Zahrandi', 'Genap', 2, '2023/2024'),
(2, 'Saliim', 'Ganjil', 3, '2023/2024'),
(3, 'Rafi', 'Genap', 2, '2023/2024');

-- --------------------------------------------------------

--
-- Table structure for table `ziyadah`
--

CREATE TABLE `ziyadah` (
  `id_ziyadah` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `nilai` double NOT NULL,
  `juz` int(11) NOT NULL,
  `halaman` double NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ziyadah`
--

INSERT INTO `ziyadah` (`id_ziyadah`, `nis`, `tgl`, `nilai`, `juz`, `halaman`, `notes`) VALUES
(1, 3, '2022-07-07', 1, 30, 16.5, 'tetap semangat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `isi_pengeluaran`
--
ALTER TABLE `isi_pengeluaran`
  ADD PRIMARY KEY (`id_isi`);

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
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `ziyadah`
--
ALTER TABLE `ziyadah`
  ADD PRIMARY KEY (`id_ziyadah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `isi_pengeluaran`
--
ALTER TABLE `isi_pengeluaran`
  MODIFY `id_isi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lomba`
--
ALTER TABLE `lomba`
  MODIFY `id_lomba` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lomba_nilai`
--
ALTER TABLE `lomba_nilai`
  MODIFY `id_nil_lomba` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `murajaah`
--
ALTER TABLE `murajaah`
  MODIFY `id_murajaah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sis_hadir`
--
ALTER TABLE `sis_hadir`
  MODIFY `id_hadir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sis_hadits`
--
ALTER TABLE `sis_hadits`
  MODIFY `id_hadits` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sis_hifdzun`
--
ALTER TABLE `sis_hifdzun`
  MODIFY `id_hifdzun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sis_ibadah`
--
ALTER TABLE `sis_ibadah`
  MODIFY `id_ibadah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sis_kualitatif`
--
ALTER TABLE `sis_kualitatif`
  MODIFY `id_kualitatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sis_quran`
--
ALTER TABLE `sis_quran`
  MODIFY `id_quran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sis_tahfiz`
--
ALTER TABLE `sis_tahfiz`
  MODIFY `id_tahfiz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smart`
--
ALTER TABLE `smart`
  MODIFY `id_smart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smart_nilai`
--
ALTER TABLE `smart_nilai`
  MODIFY `id_nil_smart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smart_score`
--
ALTER TABLE `smart_score`
  MODIFY `id_sc_smart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `nis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ziyadah`
--
ALTER TABLE `ziyadah`
  MODIFY `id_ziyadah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
