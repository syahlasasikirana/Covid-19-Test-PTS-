-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Apr 2020 pada 07.16
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

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
-- Struktur dari tabel `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `id_pertanyaan` int(10) NOT NULL,
  `pertanyaan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pertanyaan`
--

INSERT INTO `tb_pertanyaan` (`id_pertanyaan`, `pertanyaan`) VALUES
(1, '1. Apakah anda pergi keluar rumah?'),
(2, '2. Apakah anda mengggunakan transportasi umum? (online, angkot, bus, taksi, kereta api)'),
(3, '3. Apakah anda tidak memakai masker pada saat berkumpul dengan orang lain?'),
(4, '4. Apakah anda berjabat tangan dengan orang lain?'),
(5, '5. Apakah anda tidak membersihkan tangan dengan hand sanitizer / tissue basah sebelum pegang kemudi mobil/motor?'),
(6, '6. Apakah anda menyentuh benda / uang yang juga disentuh orang lain?'),
(7, '7. Apakah anda tidak menjaga jarak 1,5 meter dengan orang lain? (Belanja, bekerja, belajar, beribadah)'),
(8, '8. Apakah anda makan diluar rumah? (Warung / restaurant)'),
(9, '9. Apakah anda tidak minum air hangat dan cuci tangan dengan sabun setelah tiba di tujuan?'),
(10, '10. Apakah anda berada di wilayah kelurahan tempat pasien tertular?'),
(11, '11. Apakah anda tidak menyiapkan hand sanitizer di depan pintu masuk? Untuk bersihkan tangan sebelum pegang gagang (handle) pintu masuk rumah.'),
(12, '12. Apakah anda tidak mencuci tangan dengan sabun setelah tiba di rumah?'),
(13, '13. Apakah anda tidak menyediakan tissue basah/antiseptic, masker, sabun antiseptic bagi keluarga di rumah?'),
(14, '14. Apakah anda tidak segera merendam baju dan celana bekas pakai di luar rumah kedalam air panas / sabun?'),
(15, '15. Apakah anda tidak segera mandi dan keramas setelah anda tiba dirumah?'),
(16, '16. Apakah anda tidak mensosialisasikan check list penilaian resiko pribadi ini kepada keluarga di rumah?'),
(17, '17. Apakah anda dalam sehari tidak terkena cahaya matahari selama 15 menit?'),
(18, '18. Apakah anda tidak jalan kaki / berolah raga minimal 30 menit setiap hari?'),
(19, '19. Apakah anda jarang minum vitamin C & E, dan kurang tidur?'),
(20, '20. Apakah usia anda diatas 60 tahun?'),
(21, '21. Apakah anda mempunyai penyakit serius?(Jantung/diabetes/gangguan pernafasan kronik)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_status`
--

CREATE TABLE `tb_status` (
  `id_pertanyaan` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `usia` int(20) DEFAULT NULL,
  `jk` varchar(20) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `usia`, `jk`, `alamat`) VALUES
(12, 'Syahla Sasikirana', 17, 'Perempuan', 'Kp. seuseupan'),
(13, 'Syahla Sasikirana', 17, 'Perempuan', 'Kp. seuseupan'),
(14, 'Syahla Sasikirana', 17, 'Perempuan', 'Kp. seuseupan'),
(15, 'Syahla Sasikirana', 17, 'Perempuan', 'Kp. seuseupan'),
(16, 'Syahla Sasikirana', 17, 'Perempuan', 'Kp. seuseupan'),
(17, 'Syahla Sasikirana', 17, 'Perempuan', 'Kp. seuseupan'),
(18, 'Syahla Sasikirana', 17, 'Perempuan', 'Kp. seuseupan'),
(19, 'Syahla Sasikirana', 17, 'Perempuan', 'Kp. seuseupan'),
(20, 'Syahla Sasikirana', 17, 'Perempuan', 'Kp. seuseupan'),
(21, 'Syahla Sasikirana', 17, 'Perempuan', 'Kp. seuseupan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
