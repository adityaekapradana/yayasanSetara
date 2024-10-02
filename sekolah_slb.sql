-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Okt 2024 pada 06.04
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah_slb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_alur`
--

CREATE TABLE `tbl_alur` (
  `id_alur` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar_alur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_alur`
--

INSERT INTO `tbl_alur` (`id_alur`, `judul`, `deskripsi`, `gambar_alur`) VALUES
(1, 'Registerasi hfgh', 'Sebelum Melakukan Pendaftaran silahkan Lakukan Registerasi Akun Terlebih Dahulu Supaya Memiliki Akun', 'alur-26012022da48f06eb9.png'),
(2, 'Lengkapi Berkas', 'Setelah Melengkapi Berkas Silahkan Untuk Melengkapi Berkas Yang Ada Supaya Dapat Melanjutkan Ke Proses Selanjutnya', 'alur-2601202268e28289f3.png'),
(3, 'Lengkapi berkas', 'Setelah Melengkapi Biodata Silahkan Untuk Melakukan Proses Melengkapi Berkas Yang Ada Untuk Dapat Melanjutkan Proses Pnedaftaran Yang Ada', 'alur-260120220846cd95ad.png'),
(4, 'Daftar Sekolah', 'Setelah Berkas Lengkap Silahkan Melakuka Pendaftaran dan Pilih Jurusan Yang Anda Minati, Terdapat Berbagai Jurusan Yang Dapat Anda Pilih', 'alur-26012022ae6d25274d.png'),
(5, 'Menunggu Hasil', 'Setelah Mendaftar, Tunggu Hasil dan Cek Secara Berkala Pada Menu Daftar Berkas Yang Ada Pada Sub Menu Profil', 'alur-260120227dc482823b.png'),
(6, 'Selesai', 'Semua Proses Wajib Di Ikuti Secara Urut Untuk Dapat Mendaftar Pada Sekolahan Kami, Terimakasih dan Semoga Diterima', 'alur-260120228d907c820f.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_kelas`
--

CREATE TABLE `tbl_detail_kelas` (
  `id_detail_kelas` int(11) NOT NULL,
  `id_murid` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_detail_kelas`
--

INSERT INTO `tbl_detail_kelas` (`id_detail_kelas`, `id_murid`, `id_kelas`, `id_users`) VALUES
(22, 12, 6, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `id_galeri` int(11) NOT NULL,
  `galeri_gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`id_galeri`, `galeri_gambar`) VALUES
(17, '388-WhatsApp Image 2023-10-07 at 22.04.36 (1).jpeg'),
(19, '364-WEB-LIA.jpg'),
(21, '218-WhatsApp Image 2023-10-07 at 22.04.36.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_informasi`
--

CREATE TABLE `tbl_informasi` (
  `id_informasi` int(11) NOT NULL,
  `judul` varchar(1000) NOT NULL,
  `deskripsi` text NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `gambar_informasi` varchar(200) NOT NULL,
  `tgl_informasi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_informasi`
--

INSERT INTO `tbl_informasi` (`id_informasi`, `judul`, `deskripsi`, `penulis`, `gambar_informasi`, `tgl_informasi`) VALUES
(1, 'Yayasan Setara dan UNICEF Gelar Pelatihan Pencegahan Kekerasan Seksual di Ranah Online bagi Agen Perubahan', 'Dalam upaya untuk memberikan pemahaman yang lebih baik tentang Pencegahan Kekerasan Seksual Online Anak (OCSEA) serta mempersiapkan siswa Agen Perubahan untuk berperan aktif dalam mencegah kasus OCSEA (Online Children Sexual Exploitation and Abuse), Yayasan Setara bekerja sama dengan UNICEF dan Pemerintah Provinsi Jawa Tengah menggelar pelatihan pencegahan kekerasan seksual online bagi siswa agen perubahan dari tingkat SMP/MTs, SMA/SMK. Acara yang diselenggarakan pada hari Sabtu, 04 Mei 2024 melalui platform Zoom Meeting ini bertujuan untuk memberdayakan siswa sebagai agen perubahan dalam melawan kekerasan seksual online.\r\n\r\nPelatihan ini dihadiri oleh sejumlah fasilitator muda yang ahli di bidangnya, antara lain Kak Cristina Setianingrum dari Mitra Muda UNICEF, Kak Kayla Dea Aosa dari Fasilitator Forum Anak Jawa Tengah, dan Kak Dandy Resando selaku Ketua Forum Anak Jawa Tengah. \r\n\r\nRangkaian acara dimulai dengan sambutan pembukaan, di mana perwakilan dari Yayasan Setara yaitu Ayah Odi Shalahuddin menyampaikan harapannya acara ini bisa memberikan manfaat, memberikan wawasan, dan melahirkan inspirasi bagi siswa-siswi untuk melakukan gerakan setidak-tidaknya bisa untuk melindungi diri sendiri, orang-orang terdekat, dan melindungi seluruh anak-anak di Provinsi Jawa Tengah.\r\n\r\nSelain itu, sambutan juga disampaikan oleh perwakilan UNICEF yaitu Bunda Naning Puji Julianingsih. Bunda berharap pelatihan ini berguna bagi para peserta agar bisa menjadikannya sebagai referensi pribadi sehingga turut menyebarluaskan hasil pelatihan ini untuk saling berbagi mengenai kesadaran OCSEA.\r\n\r\nTerakhir, DP3AP2KB Provinsi Jawa Tengah menyampaikan komitmen mereka dalam melindungi anak-anak dari kekerasan seksual online serta pentingnya peran aktif anak dalam upaya pencegahan dan penanganan kasus OCSEA. \r\n\r\nPelatihan  dilanjutkan dengan presentasi tentang Kekerasan Seksual Anak Online oleh Kak Cristina Setianingrum yang memberikan gambaran mendalam tentang fenomena tersebut, termasuk dampaknya dan faktor-faktor yang berkontribusi terhadap peningkatan kasus OCSEA. Peserta juga  diajak untuk berpartisipasi dalam latihan mengidentifikasi aspek positif dan negatif dari internet serta diskusi tentang mekanisme perlindungan anak.\r\n\r\nSalah satu poin penting dalam acara ini adalah aktivitas bermain peran, di mana peserta  berperan dalam skenario kekerasan online dan bertukar pikiran tentang cara menghadapi situasi tersebut. Diskusi dan pertukaran ide  menjadi inti dari acara ini dengan harapan peserta dapat menghasilkan rencana aksi konkret untuk mencegah kekerasan seksual online di komunitas mereka.\r\n\r\nPeserta diharapkan untuk menyelesaikan pre-test, post-test, serta berpartisipasi dalam aktivitas rencana aksi untuk mendapatkan sertifikat. \r\n\r\nMelalui pelatihan ini, diharapkan peserta  mampu mengaplikasikan pengetahuan yang didapat untuk melindungi diri dan sesama dari ancaman kekerasan seksual online, serta menjadi agen perubahan yang aktif dalam membangun lingkungan digital yang aman dan inklusif.', 'Yayasan Setara ', 'Pelatihan Yayasan Setara dan Unicef.png', '2024-10-01 05:37:42'),
(2, 'Bersama Mencegah OCSEA, Yayasan Setara dan Layar Liar Hadirkan Diskusi dan Film Inspiratif', 'Yayasan Setara berkolaborasi dengan Layar Liar menyelenggarakan acara bertajuk “Kelas Aktivis x Layar Liar untuk Pencegahan OCSEA” di Auditorium Gedung A, FISIP Undip. Acara yang diadakan secara gratis ini bertujuan untuk meningkatkan kesadaran dan edukasi mengenai kekerasan seksual, khususnya eksploitasi dan pelecehan seksual anak di dunia online atau OCSEA (Online Children Sexual Exploitation and Abuse).\r\n\r\nAcara yang diadakan pada Sabtu, 18 Mei 2024, dari pukul 14.30 hingga 18.30 WIB ini, dibuka oleh MC Aiko Hanantyo. Film pertama yang diputar berjudul #JAGABARENG: BUDI DAN ANCAMAN DARING, sebuah film produksi UNICEF Indonesia. Film ini menggambarkan kisah Budi yang harus menghadapi situasi sulit terkait kekerasan dan eksploitasi seksual di media sosial dan keberaniannya untuk mengungkapkan hal tersebut kepada ibunya.\r\n\r\nSetelah pemutaran film, acara dilanjutkan dengan pemaparan materi oleh Yuli Sulistyanto, Program Manager Yayasan Setara, atau yang akrab disapa Mas N. Materi ini mengulas ancaman dan dampak dari OCSEA. Diskusi ini berlangsung interaktif dengan peserta yang hadir di ruangan.\r\n\r\nBerlanjut ke sesi berikutnya, dua film diputar secara berturut-turut. Film kedua berjudul MY CLOUDED MIND yang disutradarai oleh Annisa Adjam. Film ini mengisahkan Naura, seorang gadis 19 tahun yang mengalami trauma setelah foto-foto pribadinya tersebar di internet dan bagaimana dia berjuang untuk bangkit. \r\n\r\nFilm ketiga, PAYUNG DARA yang disutradarai oleh Reni Apriliana, mengisahkan Dara, seorang gadis 13 tahun yang mengalami kebingungan dan ketidaknyamanan saat tubuhnya mulai berkembang, serta usaha yang dia lakukan untuk memahami perubahan tubuhnya.\r\n\r\nSetelah pemutaran kedua film tersebut, acara dilanjutkan dengan sesi diskusi dan sharing session yang dipandu oleh moderator Valdi Merviano Alfredo. Diskusi ini menghadirkan tiga narasumber utama: Yuli Sulistyanto (Program Manager Yayasan Setara), Petrus Kristianto (Program Director Layar Liar), dan Ratna Asih S. (Akademisi Film).\r\n\r\nDiskusi ini sangat interaktif dan banyak diikuti oleh peserta yang antusias untuk bertanya dan berbagi pandangan mereka mengenai tema yang diangkat. Sebagai penutup, diberikan penghargaan kepada peserta paling aktif selama sesi diskusi.\r\n\r\nYuli Sulistyanto menyatakan, “Isu eksploitasi seksual atau kekerasan seksual secara online atau yang kita kenal dengan OCSEA, ini mungkin isu yang belum banyak dikenali orang. Artinya hanya beberapa kelompok orang-orang tertentu saja yang sudah mengenalnya. Sehingga penting, tontonan-tontonan film tadi bisa menjadi satu media diskusi di berbagai kalangan. Akan meletakkan berbagai pengetahuan yang mendalam bagi mereka. Setidaknya ada diskusi pada keluarga atau diskusi pada circle mereka.”\r\n\r\nRatna Asih juga menambahkan, “Seru banget sih, karena sebetulnya memang film yang bicara soal anak-anak, terutama yang remaja, memang perlu banyak direpresentasikan pengalaman-pengalaman mereka untuk tumbuh, tanpa support system, berupa seks edukasi yang cukup. Jadi film-film ini bisa jadi refleksi mereka untuk apa yang refleksi, bahwa tidak tahu pada usia mereka itu tidak apa-apa.”\r\n\r\nAcara ini diharapkan dapat memberikan pemahaman lebih mendalam dan membangun kesadaran kolektif tentang pentingnya pencegahan kekerasan seksual, baik secara luring maupun daring. Kegiatan ini merupakan langkah penting dalam memberikan edukasi dan melibatkan berbagai elemen masyarakat untuk bersama-sama mencegah kekerasan seksual dan mendukung para korban untuk berani berbicara dan melawan ketidakadilan yang mereka hadapi.', 'Yayasan Setara ', 'Bersama Mencegah OCSEA.jpg', '2024-05-18 05:37:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(7, 'Autisme'),
(8, 'Tunagrahita'),
(9, 'Tunadaksa'),
(10, 'Tunanetra');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id_kelas` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_kelas` varchar(255) NOT NULL,
  `id_periode` int(11) NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `id_kategori`, `nama_kelas`, `id_periode`, `id_users`) VALUES
(3, 3, 'Kelas 1', 1, 7),
(5, 6, 'Kelas 1', 1, 7),
(6, 7, 'Kelas 1', 1, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_konsultasi`
--

CREATE TABLE `tbl_konsultasi` (
  `id_konsultasi` int(11) NOT NULL,
  `tanggal_konsultasi` date NOT NULL,
  `jam_konsultasi` time NOT NULL,
  `konsultasi` varchar(255) NOT NULL,
  `status_konsultasi` enum('diajukan','approve','ditunda') NOT NULL,
  `jawaban_konsultasi` varchar(255) DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  `id_wali_murid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_konsultasi`
--

INSERT INTO `tbl_konsultasi` (`id_konsultasi`, `tanggal_konsultasi`, `jam_konsultasi`, `konsultasi`, `status_konsultasi`, `jawaban_konsultasi`, `id_users`, `id_wali_murid`) VALUES
(8, '2023-11-25', '21:15:00', 'sadsd', 'approve', 'sadsdadasd', 7, 8),
(9, '2024-09-20', '16:29:00', 'test', 'approve', 'baik ', 7, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_laporan_belajar`
--

CREATE TABLE `tbl_laporan_belajar` (
  `id_laporan_belajar` int(11) NOT NULL,
  `nilai_pengetahuan` int(11) NOT NULL,
  `deskripsi_pengetahuan` varchar(255) DEFAULT NULL,
  `id_murid` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `date_penilaian` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_mata_pelajaran` int(11) NOT NULL,
  `nilai_ketrampilan` int(11) NOT NULL,
  `deskripsi_ketrampilan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_laporan_belajar`
--

INSERT INTO `tbl_laporan_belajar` (`id_laporan_belajar`, `nilai_pengetahuan`, `deskripsi_pengetahuan`, `id_murid`, `id_users`, `id_kelas`, `date_penilaian`, `id_mata_pelajaran`, `nilai_ketrampilan`, `deskripsi_ketrampilan`) VALUES
(7, 80, 'test', 12, 7, 6, '2023-09-25 13:21:44', 3, 70, 'test');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mata_pelajaran`
--

CREATE TABLE `tbl_mata_pelajaran` (
  `id_mata_pelajaran` int(11) NOT NULL,
  `mata_pelajaran` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_mata_pelajaran`
--

INSERT INTO `tbl_mata_pelajaran` (`id_mata_pelajaran`, `mata_pelajaran`) VALUES
(3, 'Pendidikan Agama dan Budi Pekerti'),
(4, 'Pendidikan Pancasila dan Kewarganegaraan'),
(5, 'Seni Budaya'),
(6, 'Bahasa Indonesia'),
(7, 'Bahasa Indonesia'),
(8, 'Matematika'),
(9, 'Pendidikan Jasmani, Olahraga dam Kesehatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_monitoring`
--

CREATE TABLE `tbl_monitoring` (
  `id_monitoring` int(11) NOT NULL,
  `id_murid` int(11) NOT NULL,
  `perkembangan` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL,
  `date_monitoring` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_monitoring`
--

INSERT INTO `tbl_monitoring` (`id_monitoring`, `id_murid`, `perkembangan`, `id_users`, `date_monitoring`) VALUES
(3, 12, 'dsfdsfdsfdsfdsf', 7, '2023-11-25 13:18:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_murid`
--

CREATE TABLE `tbl_murid` (
  `id_murid` int(11) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `agama` varchar(200) NOT NULL DEFAULT 'admin',
  `status_murid` enum('menunggu hasil','diterima','tidak') NOT NULL DEFAULT 'diterima'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_murid`
--

INSERT INTO `tbl_murid` (`id_murid`, `nik`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `gambar`, `alamat`, `agama`, `status_murid`) VALUES
(12, '567890', 'Alfin Erfendo', 'Laki-laki', 'Pekalongan', '2023-11-14', '137-Rock Lee.jpg', 'Blora', 'Kristen', 'diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_periode`
--

CREATE TABLE `tbl_periode` (
  `id_periode` int(11) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_periode`
--

INSERT INTO `tbl_periode` (`id_periode`, `periode`) VALUES
(1, '2022-2023'),
(3, '2021-2022'),
(4, '2023-2024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_profile`
--

CREATE TABLE `tbl_profile` (
  `id_profile_sekolah` int(11) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `id_users` int(11) NOT NULL,
  `gambar_sekolah` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_profile`
--

INSERT INTO `tbl_profile` (`id_profile_sekolah`, `nama_sekolah`, `deskripsi`, `visi`, `misi`, `no_hp`, `facebook`, `email`, `instagram`, `id_users`, `gambar_sekolah`, `alamat`) VALUES
(1, 'YAYASAN SETARA', 'Yayasan Setara adalah sebuah Organisasi Non Pemerintah yang bekerja pada isu hak-hak anak. Yayasan Setara didirikan pada tanggal 11 Maret 1999 dan di aktanotariskan pada tanggal 21 April 1999.', 'Terwujudnya Pelayanan Bagi Penegak Hak-hak Anak Bersama Yayasan Setara', '<p>Terwujudnya Pelayanan Bagi Penegak Hak-hak Anak Bersama Yayasan Setara<br></p>', '+62 248318464', 'Yayasan Setara', 'yase@indo.net.id', 'yayasansetara', 1, 'Profile.jpg', 'Jl. Sampangan Baru Gg.V Blok A No.14, Bendan Ngisor Kec. Gajahmungkur, Kota Semarang, Jawa Tengah 50233');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_quisioner`
--

CREATE TABLE `tbl_quisioner` (
  `id_quisioner` int(11) NOT NULL,
  `q1` int(11) NOT NULL,
  `q2` int(11) NOT NULL,
  `q3` int(11) NOT NULL,
  `q4` int(11) NOT NULL,
  `q5` int(11) NOT NULL,
  `id_wali_murid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_quisioner`
--

INSERT INTO `tbl_quisioner` (`id_quisioner`, `q1`, `q2`, `q3`, `q4`, `q5`, `id_wali_murid`) VALUES
(8, 5, 4, 4, 3, 2, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_users` int(11) NOT NULL,
  `nama_users` varchar(255) DEFAULT NULL,
  `alamat_users` varchar(255) DEFAULT NULL,
  `email_users` varchar(200) DEFAULT NULL,
  `no_telp_users` varchar(15) DEFAULT NULL,
  `hak_akses` enum('kepala sekolah','admin','guru') DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` enum('aktiv','non-aktiv') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`id_users`, `nama_users`, `alamat_users`, `email_users`, `no_telp_users`, `hak_akses`, `username`, `password`, `status`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '56464', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'aktiv'),
(2, 'admin2 sad sadad', 'admin2', 'admin2@gmail.com', '38924829', 'admin', 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'aktiv'),
(3, 'Kepala sekolah', 'Kepala Sekolah', 'kepalasekolah@gmail.com', '08888838383393', 'kepala sekolah', 'kepalasekolah', 'ad9e9366bd65e665fa808da635512230', 'aktiv'),
(5, 'test', 'test', 'test@gmail.com', '453534345', 'admin', 'test', '098f6bcd4621d373cade4e832627b4f6', 'non-aktiv'),
(6, 'update', 'yogyakarta', 'test@gmail.com', '85912628', 'admin', 'dsfdsf', 'b0dc8efe2d5326a92982ce4e6535c97e', 'non-aktiv'),
(7, 'guru', 'teste', 'guru@gmail.com', '983243289', 'guru', 'guru', '77e69c137812518e359196bb2f5e9bb9', 'aktiv'),
(8, 'sadsa', 'Menco, Berahan Wetan, Wedung,', 'zahwatulizzah@gmail.com', '081229677253', 'guru', 'as', '4d18db80e353e526ad6d42a62aaa29be', 'non-aktiv'),
(9, 'guru 2', 'Menco, Berahan ', 'guru@gmail.com', '32423432', 'guru', 'guru2', '440a21bd2b3a7c686cf3238883dd34e9', 'aktiv');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wali_murid`
--

CREATE TABLE `tbl_wali_murid` (
  `id_wali_murid` int(11) NOT NULL,
  `nama_ayah` varchar(200) NOT NULL,
  `nama_ibu` varchar(200) NOT NULL,
  `pekerjaan_ayah` varchar(200) DEFAULT NULL,
  `pekerjaan_ibu` varchar(200) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `id_murid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_wali_murid`
--

INSERT INTO `tbl_wali_murid` (`id_wali_murid`, `nama_ayah`, `nama_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `alamat`, `no_telp`, `email`, `username`, `password`, `id_murid`) VALUES
(8, 'sayaA', 'saya', 'saya', 'saya', 'saya', '085326719122', 'saya@gmail.com', 'saya', '7881e048251930c056418ff4c64ec86f', 12);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_alur`
--
ALTER TABLE `tbl_alur`
  ADD PRIMARY KEY (`id_alur`);

--
-- Indeks untuk tabel `tbl_detail_kelas`
--
ALTER TABLE `tbl_detail_kelas`
  ADD PRIMARY KEY (`id_detail_kelas`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_murid` (`id_murid`),
  ADD KEY `id_users` (`id_users`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_periode` (`id_periode`),
  ADD KEY `id_users` (`id_users`);

--
-- Indeks untuk tabel `tbl_konsultasi`
--
ALTER TABLE `tbl_konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_wali_murid` (`id_wali_murid`);

--
-- Indeks untuk tabel `tbl_laporan_belajar`
--
ALTER TABLE `tbl_laporan_belajar`
  ADD PRIMARY KEY (`id_laporan_belajar`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_murid` (`id_murid`),
  ADD KEY `id_mata_pelajaran` (`id_mata_pelajaran`);

--
-- Indeks untuk tabel `tbl_mata_pelajaran`
--
ALTER TABLE `tbl_mata_pelajaran`
  ADD PRIMARY KEY (`id_mata_pelajaran`);

--
-- Indeks untuk tabel `tbl_monitoring`
--
ALTER TABLE `tbl_monitoring`
  ADD PRIMARY KEY (`id_monitoring`),
  ADD KEY `id_murid` (`id_murid`),
  ADD KEY `id_users` (`id_users`);

--
-- Indeks untuk tabel `tbl_murid`
--
ALTER TABLE `tbl_murid`
  ADD PRIMARY KEY (`id_murid`);

--
-- Indeks untuk tabel `tbl_periode`
--
ALTER TABLE `tbl_periode`
  ADD PRIMARY KEY (`id_periode`);

--
-- Indeks untuk tabel `tbl_profile`
--
ALTER TABLE `tbl_profile`
  ADD PRIMARY KEY (`id_profile_sekolah`),
  ADD KEY `kd_admin` (`id_users`);

--
-- Indeks untuk tabel `tbl_quisioner`
--
ALTER TABLE `tbl_quisioner`
  ADD PRIMARY KEY (`id_quisioner`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_users`);

--
-- Indeks untuk tabel `tbl_wali_murid`
--
ALTER TABLE `tbl_wali_murid`
  ADD PRIMARY KEY (`id_wali_murid`),
  ADD KEY `tbl_wali_murid_ibfk_1` (`id_murid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_alur`
--
ALTER TABLE `tbl_alur`
  MODIFY `id_alur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_kelas`
--
ALTER TABLE `tbl_detail_kelas`
  MODIFY `id_detail_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
  MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_konsultasi`
--
ALTER TABLE `tbl_konsultasi`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_laporan_belajar`
--
ALTER TABLE `tbl_laporan_belajar`
  MODIFY `id_laporan_belajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_mata_pelajaran`
--
ALTER TABLE `tbl_mata_pelajaran`
  MODIFY `id_mata_pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_monitoring`
--
ALTER TABLE `tbl_monitoring`
  MODIFY `id_monitoring` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_murid`
--
ALTER TABLE `tbl_murid`
  MODIFY `id_murid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_periode`
--
ALTER TABLE `tbl_periode`
  MODIFY `id_periode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_profile`
--
ALTER TABLE `tbl_profile`
  MODIFY `id_profile_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_quisioner`
--
ALTER TABLE `tbl_quisioner`
  MODIFY `id_quisioner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_wali_murid`
--
ALTER TABLE `tbl_wali_murid`
  MODIFY `id_wali_murid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_detail_kelas`
--
ALTER TABLE `tbl_detail_kelas`
  ADD CONSTRAINT `tbl_detail_kelas_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `tbl_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_kelas_ibfk_2` FOREIGN KEY (`id_murid`) REFERENCES `tbl_murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_kelas_ibfk_3` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`);

--
-- Ketidakleluasaan untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD CONSTRAINT `tbl_kelas_ibfk_1` FOREIGN KEY (`id_periode`) REFERENCES `tbl_periode` (`id_periode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_kelas_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`);

--
-- Ketidakleluasaan untuk tabel `tbl_konsultasi`
--
ALTER TABLE `tbl_konsultasi`
  ADD CONSTRAINT `tbl_konsultasi_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_konsultasi_ibfk_2` FOREIGN KEY (`id_wali_murid`) REFERENCES `tbl_wali_murid` (`id_wali_murid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_laporan_belajar`
--
ALTER TABLE `tbl_laporan_belajar`
  ADD CONSTRAINT `tbl_laporan_belajar_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_laporan_belajar_ibfk_2` FOREIGN KEY (`id_murid`) REFERENCES `tbl_murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_laporan_belajar_ibfk_3` FOREIGN KEY (`id_mata_pelajaran`) REFERENCES `tbl_mata_pelajaran` (`id_mata_pelajaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_monitoring`
--
ALTER TABLE `tbl_monitoring`
  ADD CONSTRAINT `tbl_monitoring_ibfk_1` FOREIGN KEY (`id_murid`) REFERENCES `tbl_murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_monitoring_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `tbl_users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_wali_murid`
--
ALTER TABLE `tbl_wali_murid`
  ADD CONSTRAINT `tbl_wali_murid_ibfk_1` FOREIGN KEY (`id_murid`) REFERENCES `tbl_murid` (`id_murid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
