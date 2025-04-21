-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 11, 2025 at 10:12 PM
-- Server version: 10.6.20-MariaDB-cll-lve
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbcynroe_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(5, 'Registrasi ulang', '2025-02-08 19:09:36', 'testing Agenda', '2025-02-04', '2025-02-28', 'GB 2 R.1', '10.30 WIB - 13.30 WIB', 'cc', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(7, 'Fakultas', '2025-02-08 18:39:03', 10, 'admin', 7, '544aa20fb1094f0a1a32d34e94b966cb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(18, 'Mata Kuliah Per semester Administrasi Publik', 'Berisi daftar mata kuliah dari semester 1 -7', '2025-02-08 17:54:59', 'Rian Firnanda Irsyadani ', 0, 'c3e8987437078e7712317e236c604a60.pdf'),
(19, 'Kartu Seminar Proposal', '.', '2025-02-08 17:57:20', 'Rian Firnanda Irsyadani ', 0, 'c240f93dd4e88da31c609cf55a19974a.docx'),
(20, 'Kartu Bimbingan Skripsi', '.', '2025-02-08 17:58:53', 'Admin ', 0, 'ee1bc9730e1dd1643a37f5951e6fd670.docx');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(12, 'Belajar sambil bermain', '2017-01-24 01:31:42', '9df82241493b94d1e06b461129cf57b2.jpg', 4, 1, 'M Fikri Setiadi'),
(13, 'Belajar sambil bermain', '2017-01-24 01:31:55', '5374415f11683ad6dd31572a7bbf8a7b.jpg', 4, 1, 'M Fikri Setiadi'),
(14, 'Belajar komputer programming', '2017-01-24 01:32:24', '82b91bd35706b21c3ab04e205e358eb6.jpg', 4, 1, 'M Fikri Setiadi'),
(15, 'Belajar komputer programming', '2017-01-24 01:32:34', '93048f2a103987bce8c8ec8d6912de06.jpg', 4, 1, 'M Fikri Setiadi'),
(16, 'Belajar komputer programming', '2017-01-24 01:32:44', '41f46be181f2f8452c2041b5e79a05a5.jpg', 4, 1, 'M Fikri Setiadi'),
(17, 'Belajar sambil bermain', '2017-01-24 01:33:08', '2858b0555c252690e293d29b922ba8e6.jpg', 4, 1, 'M Fikri Setiadi'),
(18, 'Makan bersama', '2017-01-24 01:33:24', '90d67328e33a31d3f5eecd7dcb25b55d.jpg', 4, 1, 'M Fikri Setiadi'),
(19, 'Pembelajaran Materi Teknik Industri', '2023-07-17 05:47:43', '393a745757a36ebc1ce8dbc1cdecfac4.jpeg', 5, 10, 'admin'),
(20, 'Foto Bersama Satu Kelas', '2023-07-17 05:49:56', '90b6711f8175604e423b84cde99fad24.jpg', 5, 10, 'admin'),
(21, 'Proses Pembelajaran Analisis', '2023-07-17 05:50:43', '3069efcdbf4c3a2cd5e0520939b8f1d6.jpg', 5, 10, 'admin'),
(22, 'Gedung  Tampak Belakang', '2023-07-17 05:57:04', '5fb77949dcb33a840cc82367fcc46157.jpg', 6, 10, 'admin'),
(23, 'Tampak Gedung Utama', '2023-07-17 05:57:33', '03a2f6ce228a029a8fdbe4adda1a9bf3.jpg', 6, 10, 'admin'),
(24, 'Tampak Gedung Dari Jalan', '2023-07-17 05:58:17', 'dd2f1619bfda7dac85b3052bbaa97eb8.jpg', 6, 10, 'admin'),
(31, 'tmn', '2025-02-11 12:39:57', '6dd64e0d010e22f98de699bf8d66e41b.jpg', 7, 10, 'admin'),
(32, 'tmn', '2025-02-11 12:40:09', '9c9b26cd846e6244ef551a36bcc6b24d.jpg', 7, 10, 'admin'),
(33, 'tmn', '2025-02-11 12:40:31', '00d052f9cdfc2d897f932610771ed270.JPG', 7, 10, 'admin'),
(34, 'tmn', '2025-02-11 12:42:02', '7b9b2132be8fc966a3ce79717bcfe365.jpg', 7, 10, 'admin'),
(35, 'tmn', '2025-02-11 12:42:38', '5e52c72391d7e0240568c19037c69163.jpg', 7, 10, 'admin'),
(36, 'tmn', '2025-02-11 12:43:30', '2e3f777880c0cf32908af27245b74fdb.jpg', 7, 10, 'admin'),
(37, 'tmn', '2025-02-11 12:44:27', '10cb3a1c67f507cee1400103333cc62b.jpg', 7, 10, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_riwayat_pendidikan` text DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_google_scholar` varchar(255) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_riwayat_pendidikan`, `guru_mapel`, `guru_google_scholar`, `guru_photo`, `guru_tgl_input`) VALUES
(39, '1', 'Suratman S.ip, M.si', 'test', 'Kepala Program Studi', 'https://unib.ac.id', '8948aab121a89f7f6904a89d15b983fe.jpg', '2025-02-11 14:22:18'),
(40, '2', 'Abdul Aziz Zulhakim, S.Sos., M.Si', 'test', 'Dosen Mata Kuliah', 'https://scholar.google.com/citations?user=UB94nAUAAAAJ&hl=id', '680af494a894d0869e122faa03060de5.jpg', '2025-02-11 14:37:08'),
(41, '3', 'JATMIKO YOGOPRIYATNO, S.IP., M.Si', 'test', 'Dosen Mata Kuliah', 'https://scholar.google.com/citations?user=Yc7KoJkAAAAJ&hl=id', '726a8bc438e30b8404ff0917cbffabcc.jpg', '2025-02-11 14:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(11, 'Rian Firnanda Irsyadani', 'rianfirnanda1@gmail.com', '0896-0603-2177', 'Test', '2025-02-08 15:12:38', 0),
(12, 'ed2', 'rianfirnanda1@gmail.com', '5465656', 'hjtyj', '2025-02-08 17:29:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(14, 'Publikasi Ilmiah', '2025-02-08 13:29:32'),
(15, 'Pengabdian Masyarakat ', '2025-02-08 13:29:41'),
(16, 'Informasi', '2025-02-08 13:29:48'),
(17, 'Nasional', '2025-02-08 13:29:55'),
(18, 'Internasional', '2025-02-08 13:30:01'),
(19, 'Prestasi', '2025-02-08 13:30:44'),
(21, 'Akademik', '2025-02-08 13:31:57'),
(22, 'Dosen', '2025-02-08 13:32:08'),
(23, 'Mahasiswa', '2025-02-08 13:32:13'),
(24, 'AP News', '2025-02-08 13:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, ' A'),
(2, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(6, 'Jihadan Beckhianosyuhada', 'jihadanb@gmail.com', 'Menarik Sekali', '2023-06-30 18:26:38', '1', 25, 0),
(8, 'jihadanbs', 'jihadanbs11@gmail.com', ' apa ini', '2023-07-16 16:14:15', '1', 28, 0),
(16, 'RIAN FIRNANDA IRSYADANI ', 'rianfirnanda18@outlook.com', 'good', '2025-02-08 13:04:24', '0', 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(10, 'admin', 'semangat hidup', 'L', 'admin1', 'APunggulUNIBhebat', 'admin ap', 'admin@gmail.com', '089606032177', 'adminganteng1', 'adminganteng1', 'adminganteng1', 'adminganteng1', 1, '1', '2023-07-16 08:04:09', '200237b52d23bb230f87c1976549c35b.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(6, 'Pelaksanaan Taman Publik 2025', 'testing', '2025-02-08 18:49:24', 'admin'),
(7, 'Pengumuman Jadwal Sidang Skripsi', 'testing', '2025-02-08 18:49:51', 'admin'),
(8, 'Pengumuman Jadwal Seminar Proposal', 'dapat diakses <b> <a href=\"#\">Disini</a></b>', '2025-02-08 18:51:18', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2021-01-29 00:57:59', '127.0.0.1', 'Firefox'),
(932, '2023-06-23 14:59:10', '::1', 'Chrome'),
(933, '2023-06-24 05:41:53', '::1', 'Chrome'),
(934, '2023-06-28 06:09:19', '::1', 'Chrome'),
(935, '2023-06-28 14:06:02', '127.0.0.1', 'Firefox'),
(936, '2023-06-28 17:00:03', '::1', 'Chrome'),
(937, '2023-06-30 14:32:43', '::1', 'Chrome'),
(938, '2023-06-30 17:39:11', '::1', 'Chrome'),
(939, '2023-07-07 15:44:32', '::1', 'Chrome'),
(940, '2023-07-09 05:00:23', '::1', 'Chrome'),
(941, '2023-07-11 13:16:41', '::1', 'Chrome'),
(942, '2023-07-11 17:03:39', '::1', 'Chrome'),
(943, '2023-07-16 07:40:56', '::1', 'Chrome'),
(944, '2023-07-16 17:00:07', '::1', 'Chrome'),
(945, '2025-02-08 12:56:57', '110.137.74.94', 'Chrome'),
(946, '2025-02-08 12:58:44', '35.165.215.140', 'Other'),
(947, '2025-02-08 12:58:44', '35.165.215.140', 'Other'),
(948, '2025-02-08 13:22:37', '182.1.228.61', 'Chrome'),
(949, '2025-02-08 13:33:19', '103.108.33.87', 'Chrome'),
(950, '2025-02-08 13:37:03', '64.15.129.103', 'Chrome'),
(951, '2025-02-08 13:37:05', '192.175.111.248', 'Chrome'),
(952, '2025-02-08 13:37:08', '64.15.129.120', 'Chrome'),
(953, '2025-02-08 13:37:09', '64.15.129.105', 'Chrome'),
(954, '2025-02-08 13:44:32', '3.230.172.149', 'Chrome'),
(955, '2025-02-08 13:46:31', '141.148.153.213', 'Safari'),
(956, '2025-02-08 13:56:13', '91.242.127.103', 'Other'),
(957, '2025-02-08 13:56:14', '91.242.95.123', 'Chrome'),
(958, '2025-02-08 13:56:15', '186.179.39.145', 'Chrome'),
(959, '2025-02-08 13:58:38', '104.166.80.206', 'Firefox'),
(960, '2025-02-08 14:00:21', '168.151.103.154', 'Safari'),
(961, '2025-02-08 14:01:32', '152.39.253.160', 'Safari'),
(962, '2025-02-08 14:03:23', '103.108.33.84', 'Chrome'),
(963, '2025-02-08 14:06:14', '161.77.135.50', 'Other'),
(964, '2025-02-08 14:06:14', '186.179.47.52', 'Chrome'),
(965, '2025-02-08 14:06:16', '38.154.198.232', 'Chrome'),
(966, '2025-02-08 14:07:54', '51.81.46.212', 'Other'),
(967, '2025-02-08 14:13:26', '100.29.181.217', 'Other'),
(968, '2025-02-08 14:13:50', '100.29.140.0', 'Chrome'),
(969, '2025-02-08 14:15:56', '35.88.185.164', 'Chrome'),
(970, '2025-02-08 14:20:40', '135.148.100.196', 'Other'),
(971, '2025-02-08 14:28:45', '35.94.232.248', 'Chrome'),
(972, '2025-02-08 14:58:47', '34.248.137.227', 'Firefox'),
(973, '2025-02-08 14:58:58', '114.10.41.165', 'Chrome'),
(974, '2025-02-08 16:04:11', '44.199.39.34', 'Chrome'),
(975, '2025-02-08 16:29:44', '104.194.200.139', 'Chrome'),
(976, '2025-02-08 16:35:43', '136.0.100.250', 'Chrome'),
(977, '2025-02-08 16:36:24', '85.254.40.28', 'Chrome'),
(978, '2025-02-08 17:04:53', '110.137.74.94', 'Chrome'),
(979, '2025-02-08 17:22:36', '91.84.87.137', 'Chrome'),
(980, '2025-02-08 17:55:31', '138.199.38.133', 'Chrome'),
(981, '2025-02-08 17:57:39', '107.23.14.41', 'Other'),
(982, '2025-02-08 17:58:00', '44.199.39.34', 'Chrome'),
(983, '2025-02-08 18:24:39', '139.99.237.180', 'Chrome'),
(984, '2025-02-08 18:56:33', '192.133.77.16', 'Other'),
(985, '2025-02-08 19:31:46', '173.252.107.13', 'Other'),
(986, '2025-02-08 19:44:51', '192.155.91.240', 'Safari'),
(987, '2025-02-08 20:06:31', '206.168.34.222', 'Mozilla'),
(988, '2025-02-08 20:09:12', '35.234.176.160', 'Chrome'),
(989, '2025-02-08 23:11:25', '193.56.113.57', 'Chrome'),
(990, '2025-02-08 23:53:37', '193.34.73.81', 'Other'),
(991, '2025-02-08 23:53:38', '64.43.117.157', 'Chrome'),
(992, '2025-02-08 23:53:39', '156.255.6.168', 'Chrome'),
(993, '2025-02-09 01:17:31', '192.67.161.17', 'Other'),
(994, '2025-02-09 01:17:36', '209.127.253.250', 'Chrome'),
(995, '2025-02-09 01:17:38', '209.127.104.156', 'Chrome'),
(996, '2025-02-09 01:23:21', '34.96.52.25', 'Safari'),
(997, '2025-02-09 01:31:13', '198.20.189.73', 'Other'),
(998, '2025-02-09 01:31:17', '156.248.89.62', 'Chrome'),
(999, '2025-02-09 01:31:17', '193.34.73.230', 'Chrome'),
(1000, '2025-02-09 01:48:07', '141.148.153.213', 'Safari'),
(1001, '2025-02-09 01:51:52', '110.137.74.105', 'Chrome'),
(1002, '2025-02-09 02:06:53', '34.170.35.153', 'Chrome'),
(1003, '2025-02-09 02:19:02', '8.41.221.63', 'Firefox'),
(1004, '2025-02-09 02:26:33', '202.43.172.5', 'Chrome'),
(1005, '2025-02-09 02:51:41', '85.203.48.88', 'Firefox'),
(1006, '2025-02-09 04:08:48', '141.95.175.51', 'Safari'),
(1007, '2025-02-09 04:15:44', '162.19.137.220', 'Chrome'),
(1008, '2025-02-09 06:35:54', '94.247.172.129', 'Mozilla'),
(1009, '2025-02-09 08:05:23', '100.29.181.217', 'Other'),
(1010, '2025-02-09 08:29:48', '5.9.94.125', 'Chrome'),
(1011, '2025-02-09 08:48:40', '146.70.107.203', 'Chrome'),
(1012, '2025-02-09 09:02:10', '99.81.233.42', 'Chrome'),
(1013, '2025-02-09 09:03:33', '103.108.33.65', 'Chrome'),
(1014, '2025-02-09 09:13:50', '114.10.41.165', 'Chrome'),
(1015, '2025-02-09 10:55:04', '103.108.33.70', 'Chrome'),
(1016, '2025-02-09 10:55:17', '64.233.173.97', 'Chrome'),
(1017, '2025-02-09 10:55:24', '64.233.173.98', 'Chrome'),
(1018, '2025-02-09 11:11:04', '103.106.216.68', 'Chrome'),
(1019, '2025-02-11 12:11:08', '110.137.74.94', 'Chrome'),
(1020, '2025-02-11 12:11:19', '103.108.33.118', 'Chrome'),
(1021, '2025-02-11 13:41:59', '104.166.80.191', 'Firefox'),
(1022, '2025-02-11 14:00:51', '94.176.57.32', 'Safari'),
(1023, '2025-02-11 14:02:12', '107.173.151.85', 'Safari'),
(1024, '2025-02-11 14:23:49', '106.74.24.66', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(14, '1', 'Rian Firnanda Irsyadani', 'L', 21, 'eee0ed54c7e8abe146b69287ad7e4297.jpg'),
(16, '1', 'test', 'L', 2, 'e6e61b6cf2aac66bf4f38dc93ed4746b.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(30, 'Sejarah Himpunan Mahasiswa Administrasi Publik', '<p><strong>CO GITO ERGO SUM</strong></p>\r\n\r\n<p><strong>BRAVO</strong></p>\r\n\r\n<p><strong>BRAVO</strong></p>\r\n\r\n<p><strong>BRAVO!!!</strong></p>\r\n\r\n<p>Mahasiswa sebagai generasi muda intelektual yang&nbsp;dasar&nbsp;akan hak dan kewajiban serta peran dan tanggung jawab kepada umat dan bangsa, berkat&nbsp;pemberian darma dan baktinya untuk mewujudkan nilai &ndash; nilai ke-Indonesiaan yang berdasarkan Ketuhanan Yang Maha Esa, kemanusiaan yang adil dan beradab, persatuan&nbsp;Indonesia, kerakyatan&nbsp;yang dipimpin oleh hikmat kebijaksanaan dalam permusyawaratan/perwakilan, dan keadilan sosial bagi seluruh rakyat Indonesia.</p>\r\n\r\n<p>Meyakini bahwa tujuan tersebut dapat tercapai dengan restu Tuhan yang maha esa, serta usaha yang terencana dan penuh kebijaksanaan, dengan restu Tuhan yang maha esa demi HIMA ADMINISTRASI PUBLIK Fakultas Ilmu Sosial dan Ilmu Politik Universitas Bengkulu.</p>\r\n\r\n<p>HIMA atau Himpunan Mahasiswa merupakan organisasi intra kampus yang berada dibawah naungan jurusan. Pada awal berdiri pada tahun 1999 jurusan Administrasi Publik bernama Ilmu Administrasi Negara, setelah satu tahun berdiri pada tahun 2000 baru adanya HIMA Administrasi Negara (HIMA ADMIRA). Awal mula berdirinya HIMA ADMIRA di cetuskan oleh 3 Mahasiswa&nbsp;&nbsp;Jurusan Administrasi Negara Angkatan Tahun 1999 bersama dengan dosen Administrasi Negara Bapak Djonet Santoso, mereka berinisiatif untuk mendirikan sebuah organisasi yang berada dibawah naungan Jurusan yang disebut dengan Himpunan Mahasiswa. Ketua Umum pertama pada saat itu bernama Jono Antoni. Himpunan Mahasiswa Administrasi Negara (HIMA ADMIRA) resmi berdiri pada 12 mei 2001, pada tahun tersebut mulai berjalannya program kerja, seperi TAMAN (Tradisi Mahasiswa Administrasi Negara) yang bergerak dibidang sosial. Pencetus Pertama kegiatan TAMAN yaitu Bapak Djonet Santoso, Dosen Administrasi Negara.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pada tahun 2018 Nama Jurusan Administrasi Negara berganti menjadi Administrasi Publik, karena pergatian nama Jurusan tersebut maka Pengurus HIMA ADMIRA Periode 2017-2018 berinisiatif untuk ikut mengganti nama HIMA dikarenakan Nama Jurusan yang telah berganti, kesepakatan tersebut disepakati oleh Forum pada saat Musyawarah Kerja (MUKER) pergantian kepengurusan selanjutnya. Pergantian nama HIMA Administrasi Publik telah berlangsung selama 2 Tahun hingga sampai saat ini.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HIMA Administrasi Publik berkedudukan di jurusan&nbsp;Administrasi Publik&nbsp;Fakultas Ilmu Sosial dan Ilmu Politik Universitas Bengkulu</p>\r\n\r\n<p>Visi Misi Hima Administrasi Publik:</p>\r\n\r\n<p><strong>Visi</strong></p>\r\n\r\n<p>Terwujudnya mahasiswa&nbsp;Administrasi Publik&nbsp;yang berintelektual, kritis, inovatif serta memiliki loyalitas dan solidaritas yang tinggi</p>\r\n\r\n<p><strong>Misi</strong></p>\r\n\r\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;Menjadikan HIMA Administrasi Publik sebagai wadah dalam mengakomodasikan aspirasi mahasiswa&nbsp;Administrasi Publik</p>\r\n\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;Menyatukan persepsi seluruh anggota HIMA Administrasi Publik</p>\r\n\r\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;Membangun dan menciptakan rasa persatuan antara mahasiswa&nbsp;Administrasi Publik</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kepengurusan&nbsp;HIMA Administrasi Publik&nbsp;terdiri dari&nbsp;:</p>\r\n\r\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;DPO (Dewan Penasehat Organisasi)</p>\r\n\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;Ketua umum</p>\r\n\r\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;Sekretaris umum</p>\r\n\r\n<p>4.&nbsp;&nbsp;&nbsp;&nbsp;Bendahara umum</p>\r\n\r\n<p>5.&nbsp;&nbsp;&nbsp;&nbsp;Kepala bidang</p>\r\n\r\n<p>6.&nbsp;&nbsp;&nbsp;&nbsp;Sekretaris bidang</p>\r\n\r\n<p>7.&nbsp;&nbsp;&nbsp;&nbsp;Anggota bidang</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>HIMA Administrasi Publik mempunyai lambang dan atribut yang diatur dalam anggaran rumah tangga</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgNyi8HY_NlcwbXz86QP1fOyUOMeAwAL8J5OyiazXroBlDy3618v3KCuilWjbUaQa4no9HCa2xiy_QXpxVaYaZtFJrSuDOsdt6PgXoziHVmJEDMDqTMAnEcpw8pwak5yR7pD0s7aSc5-jSu/s1277/logo+hima.jpg\"><img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgNyi8HY_NlcwbXz86QP1fOyUOMeAwAL8J5OyiazXroBlDy3618v3KCuilWjbUaQa4no9HCa2xiy_QXpxVaYaZtFJrSuDOsdt6PgXoziHVmJEDMDqTMAnEcpw8pwak5yR7pD0s7aSc5-jSu/s320/logo+hima.jpg\" style=\"height:320px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Makna lambang</p>\r\n\r\n<p>a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bintang melambangkan kejayaan</p>\r\n\r\n<p>b.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rantai melambangkan jalinan persatuan</p>\r\n\r\n<p>c.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Buku, tangan dan tulisan melambangkan kajian himpunan dalam lingkungan&nbsp;Administrasi Publik</p>\r\n\r\n<p>d.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tiga warna bilah melambangkan dinamika dan perbedaan</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mars HIMA Administrasi Publik</p>\r\n\r\n<p><em>Himpunan mahasiswa Administrasi Publik</em></p>\r\n\r\n<p><em>Mewujudkan cita-cita Pancasila</em></p>\r\n\r\n<p><em>Kami hadir untukmu Indonesia</em></p>\r\n\r\n<p><em>&nbsp;</em></p>\r\n\r\n<p><em>Berjuang, belajar dan berkarya</em></p>\r\n\r\n<p><em>Mengembangkan aspirasi mahasiswa</em></p>\r\n\r\n<p><em>Yang berjuang dalam solidaritas</em></p>\r\n\r\n<p><em>&nbsp;</em></p>\r\n\r\n<p><em>Menjunjung tinggi kebersamaan</em></p>\r\n\r\n<p><em>Menghargai segala perbedaan</em></p>\r\n\r\n<p><em>&nbsp;</em></p>\r\n\r\n<p><em>Engkau kan slalu ku banggakan</em></p>\r\n\r\n<p><em>Administrasi publik FISIP UNIB</em></p>\r\n\r\n<p><em>Administrasi publik jaya selalu</em></p>\r\n\r\n<p><em>&nbsp;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>(Pencipta : Zahran Mabrukah Tomimi)</em></p>\r\n', '2025-02-08 18:55:55', 16, 'Informasi', 11, '60e706971c9fc656e9c56aa3a12b9a2a.jpg', 10, 'admin', 0, 'sejarah-himpunan-mahasiswa-administrasi-publik'),
(31, 'SIGAP FAIR, Senator Destita Ungkap Kunci Pendidikan Berkualitas', '<p>Dalam acara SIGAP FAIR 2024 yang mengusung tema &quot;Inovasi Sistem Pendidikan untuk Mewujudkan Generasi Emas 2045 pada Era Modernisasi&quot;, Senator Apt. Destita Khairilisani D.Farm., MSM, menyampaikan pandangannya terkait tantangan dan inovasi dalam sistem pendidikan Indonesia.</p>\r\n\r\n<p>SIGAP FAIR digelar HIMA Administrasi Publik, Fakultas Ilmu Sosial dan Ilmu Politik, Universitas Bengkulu (UNIB) di Gedung Pertemuan II, Rabu (18/12/24), mengangkat tema besar &#39;&#39;Meriahkan Energi Gemilang Administrasi&#39;&#39;.</p>\r\n\r\n<p>Menurut Destita, standar pendidikan yang diterapkan di Indonesia saat ini perlu terus dievaluasi dan disesuaikan agar relevan dengan kondisi daerah, institusi, dan kebutuhan siswa.&nbsp;</p>\r\n\r\n<p>&quot;Standar itu perlu, tetapi implementasinya perlu kita evaluasi melalui monitoring. Apakah standar yang ada sudah sesuai, terlalu berat, atau justru terlalu ringan? Evaluasi diperlukan agar standar tersebut bisa diadaptasi sesuai dengan kebutuhan masing-masing daerah,&quot; ujar Senator DPD RI itu.</p>\r\n\r\n<p>Destita juga menyoroti hambatan perubahan dalam sistem pendidikan. &quot;Perubahan sistem sering kali sulit diterima karena terbiasa dengan pola lama. Tantangan utama adalah meyakinkan pihak-pihak terkait, termasuk mahasiswa dan tenaga pendidik, bahwa perubahan itu diperlukan. Selain itu, dukungan teknologi dan regulasi yang mendukung sangat penting,&quot; katanya.</p>\r\n\r\n<p>Destita menekankan pentingnya profesionalisme guru sebagai pilar utama pendidikan berkualitas. Pemerintah, menurutnya, memiliki peran besar dalam memastikan tenaga pendidik memenuhi standar kompetensi tertentu melalui sertifikasi.&nbsp;</p>\r\n\r\n<p>&quot;Standar kompetensi penting untuk menyamakan kualitas pendidikan, misal saja&nbsp; seperti di Papua maupun di Kalimantan. Kalau standar guru tidak seragam, bagaimana kita bisa memastikan murid mendapatkan kualitas pendidikan yang setara?&quot; jelasnya.</p>\r\n\r\n<p>Ia juga menyoroti aspek remunerasi sebagai bagian dari upaya meningkatkan profesionalisme guru. &quot;Remunerasi yang memadai akan memotivasi tenaga pendidik untuk terus meningkatkan kualitas dan kemampuan mereka,&quot; tambahnya.</p>\r\n\r\n<p>Kemudian Destita menyoroti perbedaan metode pengajaran antara generasi lama dan generasi baru. Ia mendorong adaptasi teknologi dalam pembelajaran, baik bagi dosen maupun mahasiswa.&nbsp;</p>\r\n\r\n<p>&quot;Mahasiswa zaman sekarang sudah terbiasa dengan teknologi, tetapi tidak semua dosen mudah beradaptasi. Ini tantangan yang perlu dijembatani agar sistem pembelajaran lebih efektif,&quot; ujarnya.</p>\r\n\r\n<p>Ia juga menambahkan bahwa perbedaan metode pengajaran maupun berubahnya sistem pendidikan dan kurikulum yang dipakai bisa menjadi peluang bagi mahasiswa untuk belajar beradaptasi dengan berbagai situasi.&nbsp;</p>\r\n\r\n<p>&quot;Adaptasi terhadap berbagai gaya pengajaran itu juga pelajaran berharga untuk kehidupan di masa depan,&quot; kata Destita.</p>\r\n\r\n<p>SIGAP FAIR 2024 menjadi momen penting untuk merumuskan strategi pendidikan yang inovatif, relevan, dan inklusif demi mewujudkan Generasi Emas 2045. &quot;Mari kita jadikan pendidikan sebagai alat utama untuk mencetak generasi masa depan yang unggul, kompetitif, dan siap menghadapi tantangan modernisasi,&quot; pungkas Destita.</p>\r\n', '2025-02-08 19:17:15', 24, 'AP News', 21, 'bd271d93209683a84f287a5589c3399f.jpeg', 10, 'admin', 0, 'sigap-fair,-senator-destita-ungkap-kunci-pendidikan-berkualitas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indexes for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1025;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
