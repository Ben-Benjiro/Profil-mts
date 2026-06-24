-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Feb 2026 pada 03.53
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$6BnDUB1E594ZPdy7rSjOpe5fgBAzXzThRh31o5H5lNQKQgUdqlwte');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(100) NOT NULL,
  `judul_berita` varchar(200) NOT NULL,
  `isi_berita` text NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `judul_berita`, `isi_berita`, `gambar`) VALUES
(1, 'PMBM MTs Muhammadiyah 2 Karanganyar', 'Assalamuaalaikum wr wb\r\nHalloo semuanya,kak admin ada sedikit informasi lho buat siswa kelas VI SD/MI yang masih bingung untuk cari sekolah lanjut,sini-sini kak admin kasih tahu, Mtsmuhdua Karanganyar Mts Boarding sudah buka pendaftaran siswa baru lhoooo,segera bergabung yukkk,jangan sampai ketinggalan ya !!!', '69854f5b70620.jpeg'),
(2, 'Siswa terbaik Semester gasal 2025/2026 MTs Muhammadiyah 2 Karanganyar', 'Congratulations ...... \r\nJangan pernah putus semangat ketika sudah mendapatkan hasil yang diinginkan,ingatlah sebuah impian jika tidak dicapai maka impian itu tak akan bisa didapat\r\nSemangat terus dalam berproses\r\n#kejarlahterusmimpiitu\r\n#semuaorangberhakbermimpi', '698550ed947b1.jpeg'),
(3, 'Tapak Suci MTs Muhammadiyah 2 Karanganyar', 'Prestasi membanggakan kembali diraih oleh siswa MTs Muhammadiyah 2 Karanganyar. Tim Perguruan Seni Bela Diri Tapak Suci berhasil meraih sejumlah penghargaan dalam ajang kejuaraan, sebagai hasil dari latihan disiplin, semangat juang tinggi, dan bimbingan pembina. Prestasi ini diharapkan dapat memotivasi siswa lain untuk terus berprestasi dan mengharumkan nama madrasah.', '698553b99c330.jpeg'),
(4, 'Upacara MTs Muhammadiyah 2 Karanganyar', 'Siswa-siswi MTs Muhammadiyah 2 Karanganyar menunjukkan sikap disiplin dan khidmat saat mengikuti upacara bendera di halaman madrasah. Dengan mengenakan seragam identitas yang rapi lengkap dengan peci dan jilbab, seluruh peserta upacara melakukan penghormatan bendera sebagai bentuk penanaman jiwa nasionalisme dan cinta tanah air sejak dini.\r\n\r\nKegiatan rutin ini bukan sekadar formalitas, melainkan sarana penting untuk membentuk karakter dan mentalitas siswa yang tangguh. Melalui barisan yang tertib di bawah bimbingan para guru, madrasah berkomitmen untuk terus mencetak generasi yang tidak hanya unggul dalam akademik, tetapi juga memiliki adab dan rasa tanggung jawab yang tinggi terhadap bangsa.', '69840d682ecb1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `judul_blog` varchar(200) NOT NULL,
  `isi_blog` varchar(2000) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `blog`
--

INSERT INTO `blog` (`id`, `judul_blog`, `isi_blog`, `gambar`) VALUES
(3, 'Tapak Suci ', ' Pendekar Muda Tapak Suci MTs Muhammadiyah 2 Karanganyar \r\nSemangat juang dan dedikasi tinggi kembali ditunjukkan oleh Siswa MTs Muhammadiyah 2 Karanganyar (Muhammadiyah 2 Kra). Dalam balutan seragam merah khas Tapak Suci Putera Muhammadiyah, para pendekar muda kita berhasil membawa pulang sederet medali dan piagam penghargaan dalam kejuaraan pencak silat baru-baru ini.\r\n\r\nKeberhasilan ini bukan sekadar tentang kemenangan, tetapi bukti nyata dari kedisiplinan latihan dan mentalitas &quot;Dengan Iman dan Akhlak saya menjadi kuat, tanpa Iman dan Akhlak saya menjadi lemah.&quot; Pihak sekolah sangat mengapresiasi kerja keras para siswa serta bimbingan dari para pelatih. Semoga prestasi ini menjadi motivasi bagi seluruh siswa MTs Muhammadiyah 2 Kra untuk terus menggali potensi diri, baik di bidang akademik maupun non-akademik.\r\n', '698aa35ab2ee1.jpeg'),
(4, 'Siswa MTs Muhammadiyah 2 Karanganyar Raih Juara di Surakarta Open Competition 1 2025', 'Borong Juara! Pendekar MTs Muhammadiyah 2 Karanganyar Berjaya di Piala Walikota Solo 2025\r\nKabar gembira dan membanggakan kembali datang dari dunia olahraga bela diri! Siswa-siswi terbaik MTs Muhammadiyah 2 Karanganyar berhasil menorehkan prestasi gemilang dalam ajang Surakarta Open Competition 1 - Piala Walikota Solo 2025.\r\n\r\nKeluarga besar sekolah mengucapkan selamat dan sukses atas pencapaian luar biasa yang diraih oleh:\r\n\r\n? Prasetyo Nur Febriansyah (Kelas VIII) – Juara 1 (Kelas N Putra)\r\n\r\n\r\nKeberhasilan ini tidak lepas dari disiplin latihan yang tinggi serta bimbingan intensif dari Head Coach Mrs. Rahayu. Prestasi ini membuktikan bahwa semangat juang santri kita mampu bersinar di tingkat regional, membawa nama baik sekolah dan organisasi Tapak Suci Putera Muhammadiyah.\r\n\r\nWujudkan Prestasimu Bersama Kami!\r\nKami percaya setiap anak memiliki potensi unik.', '698aa43126756.jpeg'),
(6, 'Siswa MTs Muhammadiyah 2 Karanganyar Raih Juara di Surakarta Open Competition 1 2025', 'Keluarga besar sekolah mengucapkan selamat dan sukses atas pencapaian luar biasa yang diraih oleh:\r\n\r\nGayus Apriliyanto\r\n\r\nKeberhasilan ini tidak lepas dari disiplin latihan yang tinggi serta bimbingan intensif dari Head Coach Mrs. Rahayu. Prestasi ini membuktikan bahwa semangat juang santri kita mampu bersinar di tingkat regional, membawa nama baik sekolah dan organisasi Tapak Suci Putera Muhammadiyah.\r\n\r\nWujudkan Prestasimu Bersama Kami!\r\nKami percaya setiap anak memiliki potensi unik. Di MTs Muhammadiyah 2 Karanganyar, kami mendukung penuh pengembangan bakat siswa baik di bidang akademik maupun non-akademik seperti pencak silat.', '698aa50a02ac9.jpeg'),
(7, 'Siswa MTs Muhammadiyah 2 Karanganyar Raih Juara di Surakarta Open Competition 1 2025', 'Keluarga besar MTs Muhammadiyah 2 Karanganyar kembali mengukir prestasi membanggakan di bidang olahraga bela diri. Kali ini, apresiasi setinggi-tingginya diberikan kepada saudari Riyana Fitri Ramadani, siswi kelas VIII, yang telah berhasil meraih:\r\n\r\n? Juara 3 (Kelas C Putri) ? Surakarta Open Competition 1 - Piala Walikota Solo 2025\r\n\r\nKeberhasilan ini merupakan hasil kerja keras Riyana di bawah bimbingan Head Coach Mrs. Rahayu. Prestasi di tingkat regional ini membuktikan bahwa santri MTs Muhammadiyah 2 Kra mampu bersaing dan menunjukkan taringnya di kancah yang lebih luas.\r\nMari Bergabung Bersama Kami!\r\nPrestasi Riyana adalah salah satu bukti nyata dari pengembangan bakat minat di sekolah kami. Bagi Bapak/Ibu yang ingin putra-putrinya berprestasi sekaligus memiliki pemahaman agama yang kuat.', '698aa3e25c628.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `eskul`
--

CREATE TABLE `eskul` (
  `id` int(11) NOT NULL,
  `eskul` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `eskul`
--

INSERT INTO `eskul` (`id`, `eskul`) VALUES
(1, '1. Tapak Suci'),
(2, '2. Hisbul Wathon '),
(3, '3. Footsal'),
(4, '4. Bola Basket'),
(5, '5. Paskibra'),
(6, ''),
(7, ''),
(8, ''),
(9, ''),
(10, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `galeri` varchar(200) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id`, `galeri`, `keterangan`) VALUES
(2, '698aa941777d1.jpeg', 'Guru MTs Muh 2 Kra'),
(3, '698ab8e201c60.jpg', 'Siswa Rapi'),
(5, '698aa8ddf342d.jpg', 'Upacara'),
(6, '698aa01c5767f.jpeg', 'Bersama KKN UMS'),
(9, '698be76daca29.png', 'Bersama Mahasiswa UMUKA'),
(11, '698aa21d20533.jpg', 'Gedung'),
(12, '698aa11d53da0.jpeg', 'Outing Class'),
(14, '698aa23898105.jpeg', 'Outing Class'),
(17, '698ab97474a4d.jpg', 'Gedung'),
(18, '698be5c86a335.jpg', 'Lapangan Olahraga'),
(19, '698be5d89ce8c.jpg', 'Perpustakaan'),
(20, '698be78205fe9.png', 'Belajar Mengajar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `guru` varchar(200) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `guru`, `foto`) VALUES
(1, 'Dra.,Siti Khoiriyah', '698ab63957993.png'),
(2, 'Sri Wahyuni, S.Pd', '698ab643387b5.png'),
(3, 'Luvi Sari Chusnul Chotimah,S.Pd', '698ab651cb87c.png'),
(4, 'Heru Adiminoto,S.Pd', '698ab65cc054f.png'),
(5, 'Hendro Prayitno, S.Sn ', '698ab66a39a3b.png'),
(6, 'Sutiyem, S.Pd', '698ab6755880f.png'),
(7, 'Umamah Khoirunnisaa S.Pd.', '698ab681a94e2.png'),
(8, 'Khusnul Amalia,S.Pd', '698ab69313a8e.png'),
(9, 'Atha Zha Zha Zaky, S.Pd', '698ab69f59c7d.png'),
(10, 'Alwam Wijaya, S.Pd', '698ab6ab2208d.png'),
(11, 'Agus Winarno,S.Pd', '698aad8addb63.jpeg'),
(12, 'Shintya Yahya,S.Pd', '698ab6c116f12.png'),
(13, 'Rahmatullah Ridhwan', '698ab6db8b13e.png'),
(14, ' Wachid Anang Mustofa,S.S', '698ab6e8245d3.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home`
--

CREATE TABLE `home` (
  `id` int(100) NOT NULL,
  `judul_slogan` varchar(200) NOT NULL,
  `isi_slogan` varchar(200) NOT NULL,
  `gambar_slogan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `home`
--

INSERT INTO `home` (`id`, `judul_slogan`, `isi_slogan`, `gambar_slogan`) VALUES
(1, 'Berakhlaq Karimah', 'Cerdas, Terampil, Dan Mandiri', '6984282c57745.jpg'),
(2, '“Islami, Aktif, Berprestasi” ', 'Mendidik generasi islami yang siap bersaing.', '69842b7b6d8f7.jpeg'),
(3, '“Belajar Asyik, Akhlak Baik” ', ' Suasana belajar positif dan islami.', '69842bd1c9ed4.jpeg'),
(4, '“Berakhlak Kuat, Berilmu Hebat”  ', 'Madrasah islami yang membentuk siswa berkarakter dan berprestasi.', '69842b24104ab.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepsek`
--

CREATE TABLE `kepsek` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `sambutan` text NOT NULL,
  `foto_kepsek` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kepsek`
--

INSERT INTO `kepsek` (`id`, `nama`, `sambutan`, `foto_kepsek`) VALUES
(1, 'Dra.,Siti Khoiriyah', 'Assalamu’alaikum Warahmatullahi wa barokatuh,\r\nPuji syukur kehadirat Allah SWT yang senantiasa memberikan kepada kita kenikmatan yang banyak sekali. pada kesempatan ini kami selaku Kepala Madrasah, akan menyampaikan beberapa patah kata dalam rangka pembuatan profile  MTs Muhammadiyah 2 Karanganyar. Harapan kami dengan penyampaian profile MTs Muhammadiyah 2 Karanganyar. Masyarakat luas lebih mengenal secara mendalam tentang madrasah ini, dan diharapkan juga semakin banyak orang tua yang menyekolahkan putra putrinya di MTs Muhammadiyah 2 Karanganyar. Besar harapan kami, ini dapat meningkatkan kemajuan madrasah kedepannya. Demikian sambutan dari kami, terimakasih atas perhatian dan kerjasamanya. \r\nWassalamu’alaikum Warahmatullahi wa barokatuh', '69842261b3d5f.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saranaprasarana`
--

CREATE TABLE `saranaprasarana` (
  `id` int(11) NOT NULL,
  `isi` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `saranaprasarana`
--

INSERT INTO `saranaprasarana` (`id`, `isi`) VALUES
(1, '1. 34 ruang belajar berbasis ICT dan berAC.'),
(2, '2. Laboratorium: Fisika, Kimia, Biologi.'),
(3, '3. Perpustakaan '),
(4, '4. lapangan olah raga: voly, basket, footsal, tenis dan badminton;'),
(5, '5. Ruang serbaguna;'),
(6, '6. Mushola dan area parkir (motor);'),
(7, '7. Wifi dan Hotspot '),
(8, '8. Taman Toga'),
(9, '9. Ruang kegiatan siswa (OSIS, UKS) dan kantin.'),
(10, '10. Alat Olahraga dan Kepanduan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarah`
--

CREATE TABLE `sejarah` (
  `id` int(11) NOT NULL,
  `judul_sejarah` varchar(200) NOT NULL,
  `isi_sejarah` varchar(5000) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sejarah`
--

INSERT INTO `sejarah` (`id`, `judul_sejarah`, `isi_sejarah`, `gambar`) VALUES
(1, 'Sejarah MTs Muhammadiyah 2 Karanganyar', 'Madrasah Tsanawiyah Muhammadiyah 2 Karanganyar di Sroyo Kecamatan Jaten didirikan oleh para tokoh Muhammadiyah (Persyarikatan Muhammadiyah) yang berdomisili di wilayah Sroyo dan sekitarnya. Sebelum menjadi Madrasah Tsanawiyah, dulunya bernama PGA 4 Th Muhammadiyah dengan Nomor Piagam : K/04/III.d/75, didirikan pada tanggal 1 Januari 1969 oleh persyarikatan Muhammadiyah dan telah diakui syah serta tercatat dalam buku Stambuk Inspeksi Pendidikan Agama Perwakilan Departemen Agama Propinsi Jawa Tengah sebagai Lembaga Pendidikan Swasta dengan nomor induk : 251.\r\n\r\nSeiring berjalannya waktu dan perkembangan pendidikan di Indonesia, pada tahun 1978 berdasarkan SK Menteri Agama Republik Indonesia tentang penghapusan PGA swasta dan penyederhanaan PGA Negeri, maka PGA 4 Th Muhammadiyah Sroyo diubah menjadi MTs Muhammadiyah Sroyo yang sekarang menjadi MTs Muhammadiyah 2 Karanganyar dengan alamat Jl. Sroyo-Sragen Km. 10 Sroyo, Jaten Karanganyar Kode Pos : 57771', '69842e9c3642a.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `kelas` varchar(200) NOT NULL,
  `jumlah` int(200) NOT NULL,
  `jenis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `kelas`, `jumlah`, `jenis`) VALUES
(1, 'Siswa Kelas VII', 20, 'vii'),
(2, 'Siswa Kelas VIII', 27, 'viii'),
(3, 'Siswa Kelas IX', 15, 'xi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `staf`
--

CREATE TABLE `staf` (
  `id` int(11) NOT NULL,
  `staf` varchar(200) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `staf`
--

INSERT INTO `staf` (`id`, `staf`, `foto`) VALUES
(1, 'Siti Sundari ', '698ab6f5c4014.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(2, 'salah', '$2y$10$ivIFN.i8nGtbps.161CGg.2ShhejPhQZ7Aecad89JBFZ3HGwKKLsS', 'admin'),
(3, 'mtsmuh2kra', '$2y$10$BgRuSMY.nanDGHEFwcKc3uVPlkmibwPv9GPfr92p7nCWxRaHfC5Im', 'admin'),
(7, 'annas', '$2y$10$nHAnjoOKfiV7bgqLtEj.Cu9VBcT4uVv.NIsPQOF5dQmzq81aB8.eq', 'admin'),
(10, 'adnan', '$2y$10$aP3iMRzW75s1RgfjQQzYC.LhYHeMBpPV.YrjIyFUoJzRP3qD.6gSG', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visimisi`
--

CREATE TABLE `visimisi` (
  `id` int(11) NOT NULL,
  `visimisi` text NOT NULL,
  `isi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `visimisi`
--

INSERT INTO `visimisi` (`id`, `visimisi`, `isi`) VALUES
(1, 'Visi', '“Membentuk generasi Qur’ani yang unggul dalam prestasi, disipin, kreatif, Berakhlaqul Karimah dan berkemajuan”\r\n\r\n1.Qur’ani, artinya mampu membaca, menghafal dan mengamalkan Al Qur’an serta memiliki sikap dan perilaku patuh dalam melaksanakan ajaran  agama Islam.\r\n2.Unggul dalam prestasi, memiliki prestasi  yang unggul dalam bidang akademik maupun non  akademik\r\n3.Disiplin, taat dan patuh terhadap tata tertib dan aturan yang berlaku.\r\n4.Kreatif, memiliki keterampilan abad 21, yaitu berpikir kritis, kreatif, komunikasi, dan kolaboratif.\r\n5.Berakhlaqul Karimah, memiliki akhlak yang baik, yaitu mempunyai sopan santun, tata krama, cinta kebersihan dll seperti yang dicontohkan  Nabi Muhammad SAW.\r\n6.Berkemajuan, memiliki kemampuan IT yang memadai dan mampu berkomunikasi dengan bahasa Inggris  dan bahasa Arab'),
(2, 'Misi', '1.Menanamkan  aqidah  islamiyah yang  kuat  melalui tindakan dan  pembiasaan ibadah dalam  kehidupan sehari-hari.\r\n2.Meningkatkan kemampuan membaca dan memahami Alqur’an  dan Al Hadits.\r\n3.Menumbuhkembangkan  budaya  akhlakul karimah dalam kehidupan sehari-hari.\r\n4.Menumbuhkan  sikap  gigih dalam berkompetisi meraih prestasi belajar.\r\n5.Mengembangkan potensi  peserta didik baik akademik maupun non akademik  melalui proses pembelajaran  berkualitas  yang berbasis  imtaq  dan iptek.\r\n6.Meningkatkan dan mengembangkan sarana prasarana pendidikan\r\n7.Mewujudkan madrasah yang bersih, sehat, disiplin dan bertanggung jawab.\r\n8.Menyelenggarakan pembinaan dan pelatihan  life skill untuk menggali dan menumbuhkembangkan minat dan bakat.\r\n9.Meningkatkan kemampuan berkomunikasi dengan Bahasa Inggris dan Bahasa Arab.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `eskul`
--
ALTER TABLE `eskul`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kepsek`
--
ALTER TABLE `kepsek`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `saranaprasarana`
--
ALTER TABLE `saranaprasarana`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sejarah`
--
ALTER TABLE `sejarah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `staf`
--
ALTER TABLE `staf`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `visimisi`
--
ALTER TABLE `visimisi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `eskul`
--
ALTER TABLE `eskul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `home`
--
ALTER TABLE `home`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kepsek`
--
ALTER TABLE `kepsek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `saranaprasarana`
--
ALTER TABLE `saranaprasarana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `staf`
--
ALTER TABLE `staf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `visimisi`
--
ALTER TABLE `visimisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
