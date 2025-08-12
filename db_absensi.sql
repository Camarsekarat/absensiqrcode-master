-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Mar 2025 pada 04.51
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_absensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gedung`
--

CREATE TABLE `gedung` (
  `gedung_id` int(11) NOT NULL,
  `nama_gedung` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `gedung`
--

INSERT INTO `gedung` (`gedung_id`, `nama_gedung`, `alamat`) VALUES
(12, 'XII ANM 1', 'XII ANM 1'),
(13, 'XII DKV 2', 'XII DKV 2'),
(14, 'XII DKV 1', 'XII DKV 1'),
(15, 'XII ANM 2', 'XII ANM 2'),
(16, 'XI DKV 1', 'XI DKV 1'),
(17, 'XI DKV 2', 'XI DKV 2'),
(18, 'XI DKV 3', 'XI DKV3'),
(19, 'XI ANM 1', 'XI ANM 1'),
(20, 'XI ANM 2', 'XI ANM 2'),
(21, 'X DKV 1', 'X DKV 1'),
(22, 'X DKV 2', 'X DKV 2'),
(23, 'X ANM 1', 'X ANM 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(3, 'Operator', 'Operator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(5, 'SISWA'),
(6, 'GURU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `id_karyawan` varchar(20) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `jabatan` int(11) NOT NULL,
  `id_shift` int(20) NOT NULL,
  `gedung_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id`, `id_karyawan`, `nama_karyawan`, `jabatan`, `id_shift`, `gedung_id`) VALUES
(132, 'M2503131', 'Hakim', 6, 5, 12),
(133, 'S2503132', 'ADITYA YUSUF WICAKSONO', 5, 5, 14),
(134, 'S2503133', 'AGUNA PARAMA SASTRA', 5, 5, 14),
(135, 'S2503134', 'AKSAN ABDUL AZIZ', 5, 5, 14),
(136, 'S2503135', 'AZKA FAKIH SULTONI', 5, 5, 14),
(137, 'S2503136', 'BADARUZAMAN ZUHRI ALMAHIY', 5, 5, 14),
(138, 'S2503137', 'BOBBY JOENATAN ARDITYA', 5, 5, 14),
(139, 'S2503138', 'DAFFA EKA SETIAWAN', 5, 5, 14),
(140, 'S2503139', 'DAWUD AJI WARDANA', 5, 5, 14),
(141, 'S2503140', 'DESFA READI ALFIN PRATAMA', 5, 5, 14),
(142, 'S2503141', 'DIOCTO RYAVI WAHID PUTRA', 5, 5, 14),
(143, 'S2503142', 'FAHRIL ARDIANSYAH', 5, 5, 14),
(144, 'S2503143', 'FAIZAL SAPUTRA', 5, 5, 14),
(145, 'S2503144', 'GALANG NOVFARREL MORENO', 5, 5, 14),
(146, 'S2503145', 'KAYSA DANI FIRMANSYAH', 5, 5, 14),
(147, 'S2503146', 'LUQMAN NUR HAKEEM OLAJUWON', 5, 5, 14),
(148, 'S2503147', 'MADKHAL HABIBULLOH', 5, 5, 14),
(149, 'S2503148', 'MOH. KHOIRUL ANNAS', 5, 5, 14),
(150, 'S2503149', 'MUHAMMAD FAHZA ALFIAN CANNAVAR', 5, 5, 14),
(151, 'S2503150', 'MUHAMMAD HEIGAR\n', 5, 5, 14),
(152, 'S2503151', 'MUHAMMAD KHARISMANING JAGAD RA', 5, 5, 14),
(153, 'S2503152', 'NOFANI TANZILUR RACHMAN', 5, 5, 14),
(154, 'S2503153', 'RADITYA IBNU PRASETYANTORO', 5, 5, 14),
(155, 'S2503154', 'RENDY IZZA FADHILAH', 5, 5, 14),
(156, 'S2503155', 'RICHARD YONING ARYZZAQI', 5, 5, 14),
(157, 'S2503156', 'RICO YUSTISIA SIDIQ', 5, 5, 14),
(158, 'S2503157', 'RIEKHAN YUSUF IZZATA', 5, 5, 14),
(159, 'S2503158', 'ROYAN ABDUL FATTAH', 5, 5, 14),
(160, 'S2503159', 'SAIFUDINHO JT. OKLAILANA PUTRA', 5, 5, 14),
(161, 'S2503160', 'SYAHRIL AULIANSYAH', 5, 5, 14),
(162, 'S2503161', 'ZIBRAN ARDANDIKA AP', 5, 5, 14),
(163, 'S2503162', 'ARIMBI ESTININGSIH', 5, 5, 13),
(164, 'S2503163', 'ARSI AULIA', 5, 5, 13),
(165, 'S2503164', 'AZKA FEBRIANI AZIZAH', 5, 5, 13),
(166, 'S2503165', 'AZKA SABILA SYIFA', 5, 5, 13),
(167, 'S2503166', 'BALIN BAITIKA', 5, 5, 13),
(168, 'S2503167', 'BETI DWI SULISTYOWATI', 5, 5, 13),
(169, 'S2503168', 'CANTIKA MEYSIE ERLIAWATI', 5, 5, 13),
(170, 'S2503169', 'DIAN LAILA NUR HIDAYATULAH', 5, 5, 13),
(171, 'S2503170', 'DIANI DARUSSALAM', 5, 5, 13),
(172, 'S2503171', 'DINDA AZKA FAUZIA', 5, 5, 13),
(173, 'S2503172', 'DITA ARMINATAMA BAYANA', 5, 5, 13),
(174, 'S2503173', 'ESA NUR FADHILA', 5, 5, 13),
(175, 'S2503174', 'FITRIANA RAMADANI', 5, 5, 13),
(176, 'S2503175', 'HARTANTI', 5, 5, 13),
(177, 'S2503176', 'IZZA SALSABILA FIRDAUS', 5, 5, 13),
(178, 'S2503177', 'KAILA ANANDYA YUSTINA', 5, 5, 13),
(179, 'S2503178', 'KARISMA AMELIANI AZ ZAHRA', 5, 5, 13),
(180, 'S2503179', 'KEISHA FAZA AZZAHRA', 5, 5, 13),
(181, 'S2503180', 'LESTARI NURUL WIDYANINGSIH', 5, 5, 13),
(182, 'S2503181', 'MAISUN AL HASNA', 5, 5, 13),
(183, 'S2503182', 'MUTHIAH HANIF SALSABILLA', 5, 5, 13),
(184, 'S2503183', 'NADYA AULIA SALSABILA', 5, 5, 13),
(185, 'S2503184', 'NASYWA SAYYIDA ASAUSAN DHARMA ', 5, 5, 13),
(186, 'S2503185', 'NAYSHILA RAMANDA AA', 5, 5, 13),
(187, 'S2503186', 'NINDYA SHAKILA', 5, 5, 13),
(188, 'S2503187', 'SALWA MASIKTA', 5, 5, 13),
(189, 'S2503188', 'SHERIENA NISFU RAMADHANI', 5, 5, 13),
(190, 'S2503189', 'SHOFARAHAJENG RAHASTYANA', 5, 5, 13),
(191, 'S2503190', 'SISKA SAKINAH LARASATI', 5, 5, 13),
(192, 'S2503191', 'VANESYA AURELYA NUR FADILLA A.', 5, 5, 13),
(193, 'S2503192', 'YUNDA PUSPITA AULIYA RAHMADANI', 5, 5, 13),
(194, 'S2503193', 'ER VANIA ARIESTA MILANISTI PUT', 5, 5, 13),
(195, 'S2503194', 'ADI GUNA FIRMANSYAH', 5, 5, 12),
(196, 'S2503195', 'AFIF AL FARISIY', 5, 5, 12),
(197, 'S2503196', 'AHMAD KHOIRUDIN ADI WIBOWO', 5, 5, 12),
(198, 'S2503197', 'ALFIN FEBRIAN AL KHAFIDZ', 5, 5, 12),
(199, 'S2503198', 'ANDI FARHAN', 5, 5, 12),
(200, 'S2503199', 'BAHRUDIN ABI MANSURIN', 5, 5, 12),
(201, 'S2503200', 'DAVID IBROHIM MABRUR AULIYA\'', 5, 5, 12),
(202, 'S2503201', 'DIMAS DWI SAMUROH', 5, 5, 12),
(203, 'S2503202', 'FANDY ARBA\'AL MUZAQI', 5, 5, 12),
(204, 'S2503203', 'IHSAN DWI SETIAWAN', 5, 5, 12),
(205, 'S2503204', 'IQBAL MIFTAHUR ROYAN', 5, 5, 12),
(206, 'S2503205', 'KHOIRUL YOGA PRATAMA', 5, 5, 12),
(207, 'S2503206', 'LUTHFI ZAKI HERMAWAN', 5, 5, 12),
(208, 'S2503207', 'MUHAMMAD ADAM ALUBAIDAH L', 5, 5, 12),
(209, 'S2503208', 'MUHAMMAD FAWAZ ALDIANSYAH', 5, 5, 12),
(210, 'S2503209', 'MUHAMMAD FIKRI', 5, 5, 12),
(211, 'S2503210', 'MUHAMMAD KHOIRU GAZA', 5, 5, 12),
(212, 'S2503211', 'MUHAMMAD RISKA MALDINI', 5, 5, 12),
(213, 'S2503212', 'MUHAMMAD WAHYU PRASETYO', 5, 5, 12),
(214, 'S2503213', 'NOVIA CATUR FEBIANSAH', 5, 5, 12),
(215, 'S2503214', 'PANJI ROFIK SAMUDRA', 5, 5, 12),
(216, 'S2503215', 'RAJA FIRDAUS ALAMSYAH', 5, 5, 12),
(217, 'S2503216', 'RENCANG AJINING CAHYO', 5, 5, 12),
(218, 'S2503217', 'RIDHO RO\'IS FADILAH', 5, 5, 12),
(219, 'S2503218', 'RIDWAN KHOIRUL HUDA', 5, 5, 12),
(220, 'S2503219', 'WILDAN CAHAYA', 5, 5, 12),
(221, 'S2503220', 'YUDI RUSTAMIAJI', 5, 5, 12),
(222, 'S2503221', 'ADHEA SALSABILA PUTRI', 5, 5, 15),
(223, 'S2503222', 'ANELA LEILANI ZHAFIRAH', 5, 5, 15),
(224, 'S2503223', 'ARIF RIFQI ANDRIANA RAMADHANI', 5, 5, 15),
(225, 'S2503224', 'CANTIKA AGUSTRIN ALJANAH', 5, 5, 15),
(226, 'S2503225', 'FIRDA AULIA', 5, 5, 15),
(227, 'S2503226', 'HANIK FADILAH', 5, 5, 15),
(228, 'S2503227', 'INNA KHOIRUNNISA', 5, 5, 15),
(229, 'S2503228', 'INTAN SIRILLAH RAMADANI', 5, 5, 15),
(230, 'S2503229', 'ISNAITA PUTRI RIFQI RAMADHANI', 5, 5, 15),
(231, 'S2503230', 'JULIA FIRNANDA AULIYANA', 5, 5, 15),
(232, 'S2503231', 'KURNIA AZZAWAJALA', 5, 5, 15),
(233, 'S2503232', 'LASTIANTI ADINDA KUSUMA PUTRI', 5, 5, 15),
(234, 'S2503233', 'LATYFA SHIFANY ARTA MARETA', 5, 5, 15),
(235, 'S2503234', 'NAJWA PRILIA KEYLANI', 5, 5, 15),
(236, 'S2503235', 'NIKMAH NUR AINI', 5, 5, 15),
(237, 'S2503236', 'NOVITA SALSABILA', 5, 5, 15),
(238, 'S2503237', 'OVI RINDA EMILIA', 5, 5, 15),
(239, 'S2503238', 'RIRIN AL AFINA FADHILATU UNSA', 5, 5, 15),
(240, 'S2503239', 'SAFIRA SYIFAUL YASFIN', 5, 5, 15),
(241, 'S2503240', 'SALSABILA RIZA RUSTINA', 5, 5, 15),
(242, 'S2503241', 'ZAHRAH FAIZ SYAM', 5, 5, 15),
(243, 'S2503242', 'ZEMIMMA DANY AMARTA JELITA', 5, 5, 15),
(244, 'S2503243', 'REVALIA AKHIRUN NAHARI', 5, 5, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id_khd` int(11) NOT NULL,
  `nama_khd` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kehadiran`
--

INSERT INTO `kehadiran` (`id_khd`, `nama_khd`) VALUES
(1, 'Hadir'),
(2, 'Sakit'),
(3, 'Ijin'),
(4, 'Alpha'),
(5, 'Lepas/Off');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `protected` tinyint(4) DEFAULT NULL,
  `is_active` int(1) NOT NULL,
  `is_parent` int(1) UNSIGNED NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `icon`, `protected`, `is_active`, `is_parent`, `sort`) VALUES
(15, 'menu management', 'menu', 'fa fa-list-alt', NULL, 1, 42, 14),
(16, 'master data', 'sdf', 'fa fa-folder', NULL, 1, 0, 1),
(18, 'Data Siswa', 'karyawan', 'fa fa-user', NULL, 1, 16, 2),
(19, 'data Jabatan', 'jabatan', 'fa fa-briefcase', NULL, 1, 16, 3),
(21, 'Data Shift', 'Data Shift', 'fa fa-retweet', NULL, 0, 16, 4),
(22, 'data Lokasi', 'lokasi', 'fa fa-location-arrow', NULL, 1, 16, 5),
(31, 'Ambil QR Code', 'GenBar', 'fa fa-qrcode', NULL, 1, 0, 6),
(33, 'Scan QRCODE', 'scan', 'fa fa-search-plus', NULL, 1, 0, 7),
(35, 'User management', 'users', 'fa fa-users', NULL, 1, 42, 13),
(36, 'Histori Absensi', 'presensi', 'fa fa-paperclip', NULL, 1, 41, 9),
(39, 'Rekap Absensi', 'rekap', 'fa fa-list-alt', NULL, 1, 41, 10),
(41, 'Data Absensi', 'dataabs', 'far fa-folder-open', NULL, 1, 0, 8),
(42, 'setting', 'setting', 'fas fa-cogs', NULL, 1, 0, 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi`
--

CREATE TABLE `presensi` (
  `id_absen` int(11) NOT NULL,
  `id_karyawan` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `jam_msk` time NOT NULL,
  `jam_klr` time NOT NULL,
  `id_khd` int(11) DEFAULT NULL,
  `ket` varchar(150) NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `presensi`
--

INSERT INTO `presensi` (`id_absen`, `id_karyawan`, `tgl`, `jam_msk`, `jam_klr`, `id_khd`, `ket`, `id_status`) VALUES
(64, 'S2008001', '2020-08-02', '12:52:43', '12:52:46', 1, '', 2),
(65, 'S2008130', '2025-03-14', '12:25:58', '12:26:31', 1, '', 2),
(67, 'S2503133', '2025-03-14', '07:05:00', '00:00:00', 1, '', 1),
(68, 'S2503132', '2025-03-14', '01:43:14', '01:43:25', 1, '', 2),
(70, 'M2503131', '2025-03-14', '01:48:04', '01:48:04', 1, '', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shift`
--

CREATE TABLE `shift` (
  `id_shift` int(11) NOT NULL,
  `nama_shift` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `shift`
--

INSERT INTO `shift` (`id_shift`, `nama_shift`) VALUES
(5, 'SHIFT 1'),
(6, 'SHIFT 2'),
(7, 'SHIFT 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stts`
--

CREATE TABLE `stts` (
  `id_status` int(11) NOT NULL,
  `nama_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `stts`
--

INSERT INTO `stts` (`id_status`, `nama_status`) VALUES
(1, 'Masuk'),
(2, 'Pulang'),
(3, 'tidak hadir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(26, '::1', 'admin@admin.com', '$2y$12$MPcQlOck9fzd/5UjJ6iIXuhZivhkXdfoVD2xFXpZTnZ2IWQw/nFhW', 'admin@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1556798313, 1742172136, 1, 'admin', 'nistator', NULL, '123412341234'),
(34, '::1', 'jefrimaruli@gmail.com', '$2y$12$yt3Qu8yQzdT3zYSgbDyDsOCi6d6TMtIrCTzB.nJaruVCO5hDMdtm2', 'jefrimaruli@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1560355548, 1560524242, 1, 'Jeff', 'Maruli', NULL, '9832349234'),
(46, '::1', 'operator@operator.com', '$2y$10$ibxBt.RYG7jib0JxBxB1.usc9pzjqUqPPTvwLgPp1gMRKg6VMLLei', 'operator@operator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1562178403, 1596347698, 1, 'operator', '2', NULL, '34890234809238490'),
(47, '::1', 'staff@staff.com', '$2y$12$RHPXgho6UJLQWv8W3F9oJekbSnFYXyhNADZvuqaYmGEoUD6Yl1Hd.', 'staff@staff.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1564294648, 1564294659, 1, 'staf', 'staff', NULL, '239423849234890'),
(48, '::1', 'isamentot@gmail.com', '$2y$12$c8VBN6q3f1Xujfs4cx7B3uGWf.jWC0OIC.Q7.ZQaTRe5GuTpKzjJ2', 'isamentot@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1741938761, 1742014383, 1, 'irfanka ichtisan', 'shoeh abdillah', 'Nama Perusahaan', '087865666858');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(29, 26, 1),
(37, 34, 1),
(49, 46, 3),
(50, 47, 1),
(51, 48, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gedung`
--
ALTER TABLE `gedung`
  ADD PRIMARY KEY (`gedung_id`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id_khd`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indeks untuk tabel `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id_shift`);

--
-- Indeks untuk tabel `stts`
--
ALTER TABLE `stts`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gedung`
--
ALTER TABLE `gedung`
  MODIFY `gedung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id_khd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `shift`
--
ALTER TABLE `shift`
  MODIFY `id_shift` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `stts`
--
ALTER TABLE `stts`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
