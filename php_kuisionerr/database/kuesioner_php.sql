-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2020 at 06:42 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuesioner_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `id_pertanyaan` int(10) NOT NULL,
  `pertanyaan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pertanyaan`
--

INSERT INTO `tb_pertanyaan` (`id_pertanyaan`, `pertanyaan`) VALUES
(1, 'Saya pergi keluar rumah'),
(2, 'Saya menggunakan transportasi umum: online, angkot, bus, taksi, kereta api'),
(3, 'Saya tidak memakai masker pada saat berkumpul dengan orang lain'),
(4, 'Saya berjabat tangan dengan orang lain'),
(5, 'Saya tidak membersihkan tangan dengan hand sanitizer / tissue basah sebelum pegang kemudi mobil/motor'),
(6, 'Saya menyentuh benda / uang yang juga disentuh orang lain'),
(7, 'Saya tidak menjaga jarak 1.5 meter dengan orang lain ketika: belanja, bekerja, belajar, beribadah'),
(8, 'Saya makan diluar rumah (warung / restaurant)'),
(9, 'Saya tidak minum hangat dan cuci tangan dengan sabun setelah tiba di tujuan'),
(10, 'Saya berada di wilayah kelurahan tempat pasien tertular'),
(11, 'Saya tidak pasang hand sanitizer di depan pintu masuk, untuk bersihkan tangan sebelum pegang gagang (handle) pintu masuk rumah'),
(12, 'Saya tidak mencuci tangan dengan sabun setelah tiba di rumah'),
(13, 'Saya tidak menyediakan: tissue basah/antiseptic, masker, sabun antiseptic bagi keluarga di rumah'),
(14, 'Saya tidak segera merendam baju dan celana bekas pakai di luar rumah kedalam air panas/sabun'),
(15, 'Saya tidak segera mandi keramas setelah saya tiba dirumah'),
(16, 'Saya tidak mensosialisasikan check list penilaian resiko pribadi ini kepada keluarga di rumah'),
(17, 'Saya dalam sehari tidak kena cahaya matahari minimal 15 menit'),
(18, 'Saya tidak jalan kaki / berolah raga minimal 30 menit setiap hari'),
(19, 'Saya jarang minum vitamin C dan E, dan kurang tidur'),
(20, 'Usia saya diatas 60 tahun'),
(21, 'Saya mempunyai penyakit: jantung/diabetes/gangguan pernafasan kronik');

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE `tb_status` (
  `id_pertanyaan` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`id_pertanyaan`, `status`) VALUES
(1, 'Iya'),
(2, 'Iya'),
(3, 'Iya'),
(4, 'Iya'),
(5, 'Iya'),
(6, 'Iya'),
(7, 'Iya'),
(8, 'Iya'),
(9, 'Iya'),
(10, 'Iya'),
(11, 'Iya'),
(12, 'Iya'),
(13, 'Iya'),
(14, 'Iya'),
(15, 'Iya'),
(16, 'Iya'),
(17, 'Iya'),
(18, 'Iya'),
(19, 'Iya'),
(20, 'Iya'),
(21, 'Iya'),
(21, 'Iya'),
(21, 'Iya'),
(1, 'Iya'),
(2, 'Iya'),
(3, 'Iya'),
(4, 'Iya'),
(5, 'Iya'),
(6, 'Iya'),
(7, 'Iya'),
(8, 'Iya'),
(9, 'Iya'),
(10, 'Iya'),
(11, 'Iya'),
(12, 'Iya'),
(13, 'Iya'),
(14, 'Iya'),
(15, 'Iya'),
(16, 'Iya'),
(17, 'Iya'),
(18, 'Iya'),
(18, 'Iya'),
(18, 'Iya'),
(18, 'Iya'),
(19, 'Iya'),
(20, 'Iya'),
(21, 'Iya'),
(1, 'Iya'),
(2, 'Iya'),
(3, 'Iya'),
(3, 'Iya'),
(3, 'Iya'),
(3, 'Iya'),
(3, 'Iya'),
(3, 'Iya'),
(4, 'Iya'),
(5, 'Iya'),
(6, 'Iya'),
(7, 'Iya'),
(8, 'Iya'),
(9, 'Iya'),
(10, 'Iya'),
(11, 'Iya'),
(12, 'Iya'),
(13, 'Iya'),
(14, 'Iya'),
(15, 'Iya'),
(16, 'Iya'),
(17, 'Iya'),
(18, 'Iya'),
(19, 'Iya'),
(20, 'Iya'),
(21, 'Iya'),
(20, 'Iya'),
(21, 'Iya'),
(1, 'Iya'),
(1, 'Iya'),
(1, 'Iya'),
(2, 'Iya'),
(6, 'Iya'),
(14, 'Iya'),
(15, 'Iya'),
(17, 'Iya'),
(19, 'Iya'),
(1, 'Iya'),
(6, 'Iya'),
(14, 'Iya'),
(15, 'Iya'),
(17, 'Iya'),
(19, 'Iya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `usia` int(20) DEFAULT NULL,
  `jk` varchar(20) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `usia`, `jk`, `alamat`) VALUES
(1, 'Marchella', 16, 'Perempuan', 'Cigombong'),
(2, 'Marchell', 16, 'Perempuan', 'Tempat tinggal'),
(3, 'MPS', 16, 'Perempuan', 'rumah'),
(4, 'acel', 16, 'Perempuan', 'rumah'),
(5, 'cel', 16, 'Perempuan', 'rumah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
