-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2021 at 04:41 AM
-- Server version: 10.3.13-MariaDB-log
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(10) UNSIGNED NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_content` longtext NOT NULL,
  `blog_img` varchar(50) DEFAULT '',
  `blog_date` date NOT NULL DEFAULT current_timestamp(),
  `blog_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `blog_title`, `blog_content`, `blog_img`, `blog_date`, `blog_category`) VALUES
(1, 'Ini Dia, 10 Website Universitas Paling Banyak Dikunjungi Awal 2021', '<p><strong>KOMPAS.com - </strong>RevoU, perusahaan rintisan bidang teknologi edukasi (edutech), merilis <a target=\'_self\' class=\'inner-link-tag\' href=\'https://www.kompas.com/tag/pemeringkatan\' style=\'color:#428bca;\'>pemeringkatan</a> <a target=\'_self\' class=\'inner-link-tag\' href=\'https://www.kompas.com/tag/universitas\' style=\'color:#428bca;\'>universitas</a> di Indonesia berbasis akses <a target=\'_self\' class=\'inner-link-tag\' href=\'https://www.kompas.com/tag/website\' style=\'color:#428bca;\'>website</a> dan media sosial untuk kuartal pertama (Januari-Maret) tahun 2021.</p>\r\n<p>Melalui rilis resmi (29/3/2021), RevoU menilai aset digital, baik website dan sosial media menjadi lebih penting guna memastikan ratusan, bahkan ribuan mahasiswa aktif dan juga para calon mahasiswa mereka bisa tetap mengikuti informasi terbaru dari universitas.</p>\r\n<p>Terlebih,&nbsp;perkembangan teknologi yang sangat pesat, Industri 4.0, dan juga kondisi pandemi global menuntut sektor pendidikan <em>go digital,</em> sehingga dibutuhkan tolak ukur guna melihat efektifitas dari platform digital yang digunakan.</p><span class=\"ads-on-body\"><!-- (ads.paragraph.4) --></span>\r\n<h2>Indikator penilaian</h2>\r\n<p>Metodologi pengumpulan data dilakukan RevoU terhadap 30 universitas terpilih di Indonesia, baik negeri maupun swasta berdasarkan jumlah kunjungan bulanan website dan juga jumlah pengikut media sosial (Instagram, Twitter, YouTube, LinkedIn).</p>\r\n<p>Data dikumpulkan pada Maret 2021 ini melihat beberapa indikator data, antara lain:</p><span class=\"ads-on-body\"><!-- (ads.paralax) --></span>\r\n<ul>\r\n<li>Jumlah pengunjung website bulanan (SimilarWeb)</li>\r\n<li>Jumlah pengikut di media sosial (Instagram, Twitter, LinkedIn, dan YouTube)</li>\r\n<li>Jumlah konten di masing-masing media sosial tersebut</li>\r\n<li>Strategi konten di media sosial universitas di Indonesia</li>\r\n</ul>\r\n<p><strong>Baca juga: <a href=\"https://www.kompas.com/edu/read/2021/03/13/130244371/ui-terbaik-di-indonesia-versi-the-2021-peringkat-8-asia-tenggara\" class=\"inner-link-baca-juga\" target=\"_self\">UI Terbaik di Indonesia Versi THE 2021, Peringkat 8 Asia Tenggara</a></strong></p>\r\n<h2><a target=\'_self\' class=\'inner-link-tag\' href=\'https://www.kompas.com/tag/peringkat\' style=\'color:#428bca;\'>Peringkat</a> universitas berdasarkan kunjungan website</h2>\r\n<p>Berdasarkan data dari SimilarWeb, rata-rata waktu yang orang habiskan diuntuk 5 website universitas dengan pengunjung bulanan terbanyak yakni UGM, UI, Binus, ITB, dan Brawijaya adalah 5,5 menit.</p>\r\n<p>Setidaknya ada 2 universitas swasta masuk dalam posisi 10 besar berdasarkan jumlah pengunjung bulanan website adalah Binus University (4.3 juta pengunjung/ bulan) dan Telkom University (1.7 juta pengunjung/ bulan).</p>\r\n<p>Berdasarkan data yang disusun RevoU, berikut universitas dengan pengunjung website resmi terbanyak:</p>\r\n<ol>\r\n<li><a target=\'_self\' class=\'inner-link-tag\' href=\'https://www.kompas.com/tag/universitas\' style=\'color:#428bca;\'>Universitas</a> Gadjah Mada (UGM): 6,1 juta pengunjung</li>\r\n<li>Universitas Indonesia (UI): 5 juta pengunjung</li>\r\n<li>Binus University: 4,3 juta pengunjung</li>\r\n<li>Institut Teknologi Bandung (ITB): 3,9 juta pengunjung</li>\r\n<li>Universitas Brawijaya (UB): 3,5 juta pengunjung</li>\r\n<li>Universitas Airlangga (Unair): 2,2 juta pengunjung</li>\r\n<li>Institut Pertanian Bogor (IPB): 2 juta pengunjung</li>\r\n<li>Telkom University : 1,77 juta pengunjung</li>\r\n<li>Universitas Padjajaran (Unpad): 1,75 juta pengunjung</li>\r\n<li>Universitas Diponegoro: 1,5 juta pengunjung</li>\r\n</ol>', 'blog-1.jpg', '2021-03-31', 'Website'),
(2, 'Bahaya, Spyware Android Sadap Whatsapp dan Foto Diam-diam ', '    Jakarta, CNN Indonesia -- <p>Peneliti keamanan siber memperingatkan pengguna <span style=\"color: #ff0000;\"><strong><a href=\"https://www.cnnindonesia.com/tag/android\"><span style=\"color: #ff0000;\">Android</span></a></strong></span> agar berhati-hati dengan <span style=\"color: #ff0000;\"><strong><em><a href=\"https://www.cnnindonesia.com/tag/spyware\"><span style=\"color: #ff0000;\">spyware</span></a></em></strong></span> yang menyamar sebagai aplikasi pembaruan sistem (<em>system update</em>) yang bisa mengambil foto diam-diam hingga menyadap pesan <span style=\"color: #ff0000;\"><strong><a href=\"https://www.cnnindonesia.com/tag/whatsapp\"><span style=\"color: #ff0000;\">Whatsapp</span></a></strong></span>.</p>\r\n<p>Menurut perusahaan keamanan zLabs, pembaruan sistem ini adalah aplikasi yang didapat dari toko aplikasi pihak ketiga. Sebab ketika dikonfirmasi, Google menyebut aplikasi ini disebut tak pernah masuk ke Google Play Store, toko aplikasi miliknya.</p>\r\n<p>Aplikasi ini menyamar sebagai pembaruan sistem operasi Android. Tapi, alih-alih memberikan pembaruan, ia malah akan menyuntikkan <em>malware</em> untuk memata-matai ponsel korban. <em>Malware</em> yang digunakan untuk mematai-matai ini dikenal dengan sebutan <em>spyware</em>.</p><!-- s: parallax -->\r\n\r\n<table class=\"linksisip\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"lihatjg\">\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Ketika <em>spyware</em> telah disuntikkan, penjahat siber bisa mencuri data pengguna, pesan, foto, hingga mengendalikan ponsel Android pengguna. Begitu ponsel bisa dikendalikan, mereka bisa merekam pembicaraan telepon yang dilakukan pengguna, mengambil foto diam-diam, memeriksa riwayat internet di peramban, hingga mengakses pesan di Whatsapp.</p>\r\n<p><em>Malware</em> ini disebutkan zLab berfungsi sebagai Remote Access Trojan (RAT). Trojan ini akan menerima perintah dari luar untuk mengumpulkan data.</p>\r\n<p>Pengumpulan data bisa dilakukan dengan mencuri percakapan, mengamati peramban, mencari file dengan ekstensi tertentu, merekam suara, mengambil gambar dengan kamera depan dan belakang, hingga memonitor lokasi, seperti tertulis dalam <em><a href=\"https://blog.zimperium.com/new-advanced-android-malware-posing-as-system-update/\">situs resmi</a></em>. </p>\r\n<table class=\"linksisip\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"lihatjg\">\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Berikut daftar hal-hal yang dicuri oleh <em>malware</em> ini.<br />- Mencuri pesan instant messenger;<br />- Mencuri file database instant messenger (jika root tersedia);<br />- Memeriksa bookmark dan penelusuran browser default;<br />- Memeriksa bookmark dan riwayat pencarian dari Google Chrome, Mozilla Firefox, dan Samsung Internet Browser;<br />- Mencari file dengan ekstensi tertentu (termasuk .pdf, .doc, .docx, dan .xls, .xlsx);<br />- Memeriksa data clipboard;<br />- Memeriksa konten notifikasi;<br />- Merekam audio;<br />- Merekam panggilan telepon;<br />- Mengambil foto diam-diam secara berkala (baik melalui kamera depan atau belakang);<br />- Mendaftar aplikasi apa saja yang diinstal;<br />- Mencuri gambar dan video;<br />- Memantau lokasi lewat GPS;<br />- Mencuri pesan SMS;<br />- Mencuri kontak telepon;<br />- Mencuri log panggilan;<br />- Mengeksfiltrasi informasi perangkat (misal aplikasi apa saja yang diinstal, nama perangkat, statistik penyimpanan); dan<br />- Menyamarkan diri dengan menghilangkan ikon aplikasi dari menu aplikasi di Android.</p>\r\n<table class=\"linksisip\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"lihatjg\">\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Uniknya, <em>malware</em> ini lebih canggih dari <em>malware</em> pencuri data lain. Sebab, ia baru beraksi mengumpulkan data setelah ada pemicu. Contoh, ketika <em>spyware</em> mendeteksi adanya panggilan telepon, ia akan terbangun dan merekam percakapan itu. Lantas rekaman percakapan itu akan dikirim ke server penjahat siber yang membuatnya.</p>\r\n<p>Kecanggihan lain, <em>spyware</em> ini hanya mau mengirimkan data terbaru. Misal ada dua data lokasi yang didapat dari atau jaringan seluler. Maka, <em>spyware</em> ini hanya akan mengirimkan salah satu data yang terbaru, seperti dilaporkan <em><a href=\"https://www.techradar.com/news/that-android-system-update-could-actually-be-malware\">TechRadar</a></em>. </p>\r\n<p>Bahkan <em>malware</em> ini bisa menghilangkan jejak dari pendeteksian oleh pengguna. Sebab, ia akan segera menghapus file tambahan apa pun setelah berhasil diunggah. Misal ia mengambil foto diam-diam, maka file foto ini akan langsung terhapus dengan sendirinya begitu selesai diunggah ke si pembuat <em>malware</em>.</p>', 'blog-2.jpg', '2021-04-01', 'Aplikasi'),
(3, 'Mengenal Apa itu Website dan Fungsinya dalam Kehidupan Sehari-Hari', '<p>Mulai dari Google, Facebook, Twitter, dan masih banyak lagi yang lainnya. Ketika membuka layanan-layanan tersebut di perangkat dekstop atau mobile, sebenarnya yang Anda buka adalah website.</p>\r\n    <p>Dalam hal ini, website adalah salah satu media yang paling sering untuk diakses dan digunakan dalam mencari berbagai informasi dan sarana komunikasi. Tentu saja dari berbagai website yang tersedia, memiliki fungsi dan fitur yang berbeda pula, ada yang bergerak di bidang e-commerce, media sosial, bisnis, media informasi, dan lain-lain.</p>\r\n    <p>Meskipun sudah berinteraksi dengan website setiap hari, mungkin banyak dari Anda yang belum mengetahui apa itu website. Berikut ini penjelasan tentang apa itu website, jenis, hingga fungsinya untuk kehidupan sehari-hari yang telah dirangkum oleh Liputan6.com dari berbagai sumber, Kamis (25/03/2021).</p>\r\n    <h2>Apa Itu Website</h2>\r\n    <span>Website</span>\r\n    <p>Website adalah sebuah kumpulan halaman pada suatu domain di internet yang memuat tentang berbagai informasi yang dibuat dengan tujuan tertentu dan saling berhubungan serta dapat diakses secara luas melalui halaman depan atau home page yang menggunakan sebuah browser menggunakan URL website.</p>\r\n    <p>Informasi yang dapat dimuat dalam sebuah website umumnya berisi mengenai konten gambar, ilustrasi, video, dan teks untuk berbagai macam kepentingan. Di dalam sebuah homepage, juga memuat beberapa halaman web turunan yang saling terhubung satu dengan yang lain.</p>\r\n    <h2>Jenis-jenis Website</h2>\r\n    <span>Website. (Dok Bank Permata)</span>\r\n    <p>Setelah mengetahui apa itu website, saatnya untuk memahami berbagai jenis website yang ada. Pada umumnya, perbedaan jenis website dapat dikategorikan berdasarkan server atau konten.</p>\r\n    <p>Berdasarkan server, website dapat dibedakan ke dalam 2 jenis yaitu website static dan website dynamic. Berdasarkan konten, website dapat dibedakan ke belasan jenis. Pengklasifikasian website berdasarkan konten ini merupakan pengklasifikasian yang paling populer. Berikut adalah beberapa jenis website berdasarkan konten.</p>\r\n    <p><strong>1. Pribadi</strong></p>\r\n    <p>Anda bisa mengeluarkan seluruh isi pikiran Anda dengan membuat website pribadi. Apapun itu, dari mulai curhat, opini publik, karya sastra, hingga catatan perjalanan. Jenis website pribadi atau yang lebih dikenal blog ini memang tidak dibuat untuk profit. Namun, dengan isi yang menarik website ini bisa menghasilkan profit dalam jumlah yang tidak dapat diremehkan.</p>\r\n    <p><strong>2. E-Commerce</strong></p>\r\n    <p>Pasar atau toko online bukan lagi sesuatu yang asing di telinga masyarakat dunia. Website e-commerce menyediakan tempat jual beli, baik baru maupun bekas, dari merek ternama hingga tanpa merek sekalipun. Apapun website yang menyediakan fasilitas bertransaksi dapat dikategorikan ke dalam website e-commerce.</p>\r\n    <p><strong>3. Media</strong></p>\r\n    <p>Beragam informasi terkini yang dirilis secara cepat dan akurat, kolom-kolom opini, hasil riset, survei terbaru, hingga wawancara dengan tokoh berpengaruh ditampilkan di website ini. Website media mendapatkan profit biasanya dari iklan.</p>\r\n    <p><strong>4. Hiburan</strong></p>\r\n    <p>Apapun bidangnya, film, video game, musik, komik, dunia selebriti, termasuk sesuatu yang dapat menghibur adalah jadi konten utama dari website atau blog hiburan. Website media dan hiburan memang mirip terutama dalam menyajikan informasi terkini. Bedanya, website hiburan lebih mengutamakan aspek kesenangan.</p>\r\n    <p><strong>5. Organisasi</strong></p>\r\n    <p>Apa itu website organisasi? Website organisasi atau instansi memuat seluruh program yang ditawarkan oleh instansi atau organisasi terkait. Instansi pendidikan, pemerintahan, hingga LSM atau non-profit masuk dalam kategori website organisasi. Konten yang ditawarkan selain ditujukan kepada pegawai atau calon pegawai ditujukan juga untuk khalayak umum.</p>\r\n    <p><strong>6. Komunitas</strong></p>\r\n    <p>Apa itu website komunitas? Website komunitas berisi konten yang dipublikasikan oleh kontributor, baik secara sukarela (bagian dari forum) atau tidak. Contoh website ini adalah Wikipedia, “wiki-wiki” lainnya, dan forum-forum internet. Konten yang dbuat akan bergantung pada partisipasi orang-orang yang ada di forum tersebut.</p>\r\n    <p><strong>7. Perusahaan</strong></p>\r\n    <p>Apa itu website perusahaan? Website ini menampilkan informasi mengenai semua hal yang ingin dipresentasikan perusahaan ke publik. Perbedaan mendasar antara website perusahaan dengan e-commerce adalah website ini tidak menjual produk secara langsung, tetapi sebagai media perkenalan produk sekaligus media pencitraan brand. Jika Anda bingung contohnya website comapny profile.</p>\r\n    <h2>Fungsi Website dalam Kehidupan Sehari-hari</h2>\r\n    <span>Ilustrasi Menjelajah Internet Credit: pexels.com/bongkarn</span>\r\n    <p>Website seakan menjadi konsumsi pokok untuk masyarakat di dunia setia harinya. Tak hanya dimanfaatkan untuk kepentingan organisasi ternama, perusahaan besar atau bahkan pemerintahan saja, melainkan website juga sudah bisa dimanfaatkan untuk berbagai tujuan pribadi.</p>\r\n    <p>Seperti contohnya menulis tutorial, menceritakan pengalaman perjalanan, atau menampilkan berbagai macam karya. Oleh karena itu website memang memberikan segudang fungsi yang bisa didapatkan oleh semua kalangan masyarakat, berikut ini beberapa fungsi dari penggunaan website dalam kehidupan sehari-hari diantaranya.</p>\r\n    <p><strong>1. Sebagai sarana publikasi pada perusahaan</strong></p>\r\n    <p>Sejak dulu website sudah bisa dimanfaatkan sebagai tempat utama untuk mempublikasikan perusahaan khususnya yang berbasis dengan teknologi dan internet. Selain itu melalui website juga sebagai sarana mempromosikan profil dari perusahaan dan mempromosikan berbagai jenis produk yang ingin dijual.</p>\r\n    <p><strong>2.  Sebagai sarana tempat menjual produk</strong></p>\r\n    <p>Saat ini sudah banyak online shop yang memanfaatkan website sebagai sarana untuk dapat menarik pelanggan dengan mempromosikan barang dagangannya melalui website. Semakin menarik tampilan website anda maka akan semakin banyak pelanggan yang berkunjung.</p>\r\n    <p><strong>3.  Mempermudah komunikasi</strong></p>\r\n    <p>Jarak saat ini bukan lagi menjadi halangan untuk kita tetap bisa menjaga silaturahmi dengan para keluarga. Kemudahan teknologi komunikasi melalui sosial media berfungsi sebagai penghubung para penggunanya dari berbagai kota bahkan dilintas negara.</p>\r\n    <h2>Hal yang Dibutuhkan untuk Membuat Website</h2>\r\n\r\n    <p>Sebelum memutuskan mempunyai website Anda sendiri. Maka penting untuk Anda sebagai pemula, harus mempersiapkan beberapa hal berikut ini:</p>\r\n    <ol>\r\n        <li>Hosting, yaitu sebuah tempat untuk menyimpan file website Anda. Bisa dibilang, hosting ini adalah sebuah rumah untuk database website Anda nanti.</li>\r\n        <li>Domain, yaitu sebuah alamat atau nama situs web yang nantinya Anda gunakan sebagai identitas situs dan destinasi website Anda.</li>\r\n        <li>Konten, yaitu artikel berkualitas, dan kombinasi media yang dibutuhkan, seperti gambar, video, dan konten lainnya.</li>\r\n        <li>Aplikasi pengolah gambar yang nantinya dapat Anda gunakan untuk men-desain gambar banner, logo, dan sebagainya. Salah satu software yang direkomendasikan untuk keperluan ini adalah Adobe Photoshop.</li>\r\n    </ol>', 'blog-3.jpg', '2021-03-31', 'Website');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tag`
--

CREATE TABLE `blog_tag` (
  `blog_tag_id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_tag`
--

INSERT INTO `blog_tag` (`blog_tag_id`, `blog_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_session`
--

CREATE TABLE `ci_session` (
  `id` varchar(40) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_session`
--

INSERT INTO `ci_session` (`id`, `user_id`, `ip_address`, `timestamp`, `data`) VALUES
('0kp05l8t59sisntr5m3oi0ce0e86c5e7', NULL, '127.0.0.1', 1618011324, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383031313332333b),
('2fqla497mg1j685f35tshps1m4aqsfq4', NULL, '127.0.0.1', 1617430812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373433303739333b),
('2incnq8je7jnq1f39ptaulen02e4ntf5', NULL, '127.0.0.1', 1617253551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373235333535313b),
('41anr3cu1ubnh1cn2l6vu44ifvorb9d5', NULL, '127.0.0.1', 1617786065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373738363036353b),
('484s4e4hkidhbel0aumgg0rp831p4vsd', NULL, '127.0.0.1', 1617268113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373236383131333b),
('4uvjnmlpm9j0eu7gfbqu5mougkuhe36k', NULL, '127.0.0.1', 1617268459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373236383435393b),
('5v8rd3of1k2dud3i1v60ef83jjkua2am', NULL, '127.0.0.1', 1617163309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373136333330393b),
('6mu6596eghga2crrv301rue11reo87ds', NULL, '127.0.0.1', 1617001020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373030313032303b),
('a9o7v7c23floiof8n25djl6c0fj9gs4b', NULL, '127.0.0.1', 1617269281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373236393238313b),
('g1us3s23n3pttjfavrpe9c8rc0tquqh0', NULL, '127.0.0.1', 1616947034, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363934373033343b),
('gan14akh09qjvldr67aviqq4ugs9m1rq', NULL, '127.0.0.1', 1618029393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383032393339333b),
('gb3kt2huqn8ndhinelh1t0d06u6489uk', NULL, '127.0.0.1', 1616833468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363833333436383b),
('i01k0p0le57gnbkg30m822pn1c9bt4us', NULL, '127.0.0.1', 1617268085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373236383038353b),
('k837maskd8als08ru48814e39cmq0p4j', NULL, '127.0.0.1', 1616822177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363733363736363b),
('m4bagv260irgqmv4rtej1p9t8muhbt56', NULL, '127.0.0.1', 1617425568, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373432353536383b),
('pas8abh8uh2pricn2sr64l0p6l7us3qf', NULL, '127.0.0.1', 1618029616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373738353236363b),
('qdk8gq8u5r479qh1j5dig6nm5tlnma9g', NULL, '127.0.0.1', 1617423009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373432333030393b),
('ro7n6lacic64bjap4s6mkvid9tbrljue', NULL, '127.0.0.1', 1617955905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373935353930353b),
('sgi7mfqo1o00i35nmmqed6gf7p5567sm', NULL, '127.0.0.1', 1616719911, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363637333630353b),
('u8eusl4odah5o1i860g3ria5dahmtqs1', NULL, '127.0.0.1', 1617268085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373236383038353b);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) UNSIGNED NOT NULL,
  `content_category` int(11) NOT NULL,
  `content_parent` int(11) NOT NULL DEFAULT 0,
  `content_img` varchar(50) DEFAULT NULL,
  `content_title` varchar(255) DEFAULT NULL,
  `content_desc` text DEFAULT NULL,
  `content_href` varchar(255) DEFAULT NULL,
  `content_icon` varchar(50) DEFAULT NULL,
  `content_color` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `content_category`, `content_parent`, `content_img`, `content_title`, `content_desc`, `content_href`, `content_icon`, `content_color`) VALUES
(1, 1, 0, 'aset/img/hero-img.png', 'Kami Menawarkan Solusi Modern Untuk Pembuatan Website', '', NULL, '', NULL),
(2, 2, 0, 'aset/img/values-1.png', 'Tampilan yang menarik', 'Website yang kami buat pastinya memiliki tampilan yang menarik.', NULL, NULL, NULL),
(3, 2, 0, 'aset/img/values-2.png', 'Responsive', 'Kami membuat website dengan tampilan responsive.', NULL, NULL, NULL),
(4, 2, 0, 'aset/img/values-3.png', 'Tidak memakan waktu', 'Kami akan selalu tepat waktu dalam mengerjakan website yang anda pesan.', NULL, NULL, NULL),
(5, 3, 0, '', 'Pelanggan Puas', '232', NULL, 'bi bi-emoji-smile', 'style=\"color: #4154f1;\"'),
(6, 3, 0, '', 'Projek', '20', NULL, 'bi bi-journal-richtext', 'style=\"color: #ee6c20;\"'),
(7, 3, 0, '', 'Jam Pengerjaan', '96', NULL, 'bi bi-headset', 'style=\"color: #15be56;\"'),
(8, 3, 0, '', 'Pekerja', '9', NULL, 'bi bi-people', 'style=\"color: #bb0852;\"'),
(9, 4, 0, '', 'Web Penjualan / E-Commerce', NULL, NULL, 'bi bi-check', NULL),
(10, 4, 0, '', 'Web Sistem Kantor', NULL, NULL, 'bi bi-check', NULL),
(11, 4, 0, '', 'Web Inventaris', NULL, NULL, 'bi bi-check', NULL),
(12, 4, 0, '', 'Web Profil Perusahaan', NULL, NULL, 'bi bi-check', NULL),
(13, 4, 0, '', 'Web Portal Berita', NULL, NULL, 'bi bi-check', NULL),
(14, 4, 0, '', 'Blog', NULL, NULL, 'bi bi-check', NULL),
(15, 5, 0, 'aset/img/features.png', NULL, NULL, NULL, NULL, NULL),
(19, 6, 0, NULL, 'Visi', 'active', NULL, NULL, NULL),
(20, 6, 0, '', 'Misi', NULL, NULL, NULL, NULL),
(21, 6, 19, NULL, 'Visi', 'Menjadi perusahaan Teknologi Informasi dan Komunikasi profesional yang memberikan solusi serta layanan terintegritasi dan mengikuti perkembangan dunia teknologi Informasi.', NULL, NULL, NULL),
(22, 6, 20, NULL, 'Misi 1', 'Memberikan solusi dan layanan terpadu dalam setiap layanan Teknologi Informasi yang kami berikan.', NULL, 'bi bi-check2', NULL),
(23, 9, 0, 'aset/img/features-2.png', NULL, NULL, NULL, NULL, NULL),
(24, 10, 0, 'aset/img/features-3.png', NULL, NULL, NULL, NULL, NULL),
(25, 11, 0, NULL, 'Berpengalaman', 'Kami telah berpengalan dalam pembuatan web.', NULL, 'ri-line-chart-line', NULL),
(26, 11, 0, NULL, 'Tim yang handal', 'Memiliki team yang handal dan telah banyak menciptakan web dan aplikasi.', NULL, 'ri-stack-line', NULL),
(27, 11, 0, NULL, 'Berkualitas', 'Dalam mengembangkan system aplikasi kami senantiasa mengedepankan kualitas. ', NULL, 'ri-brush-4-line', NULL),
(28, 11, 0, NULL, 'Berinovasi', 'Membuat aplikasi dan menerapkan teknologi terkini serta memberikan solusi terbaik dari setiap ide dan usulan dari Anda. ', NULL, 'ri-magic-line', NULL),
(29, 11, 0, NULL, 'Harga kompetitif', 'Kami memberikan penawaran harga yang flexible dan negotable', NULL, 'ri-command-line', NULL),
(30, 11, 0, NULL, 'Customize Web / Aplikasi', 'Desain dan rancangan aplikasi akan mengikuti kebutuhan dan selera Anda ', NULL, 'ri-radar-line', NULL),
(31, 12, 0, NULL, 'Perbedaan Domain dan Hosting?', 'Sebagai dua hal yang paling esensial dalam suatu website,', NULL, NULL, NULL),
(32, 12, 0, NULL, 'Apakah Website yang di buat Responsive?', 'Pastinya website yang kami kerjakan responsive.', NULL, NULL, NULL),
(33, 13, 0, 'aset/img/testimonials/testimonials-2.jpg', 'Sistem Webnya Terintegritasi Dengan Sangat Baik', 'Rixy Midya', NULL, 'bi bi-star-fill', NULL),
(34, 13, 0, 'aset/img/testimonials/testimonials-3.jpg', 'Tampilan Desktop, Tablet dan Mobile Sangat Bagusdan Tidak Berantakan', 'Ervin Maulida', NULL, 'bi bi-star-fill', NULL),
(35, 13, 0, 'aset/img/testimonials/testimonials-4.jpg', 'Harganya Sangat Terjangkau untuk Pembuatan Website yang Sangat Bagus', 'Hokky Kurniawan', NULL, 'bi bi-star-fill', NULL),
(36, 13, 0, 'aset/img/testimonials/testimonials-5.jpg', 'Website yang di Buat Sangat Sesuai Dengan yang Saya Minta dan Juga Mengikuti Teknologi Terbaru', 'Gafriel Alfarizhi', NULL, 'bi bi-star-fill', NULL),
(37, 13, 0, 'aset/img/testimonials/testimonials-1.jpg', 'Pengerjaan Sangat Cepat dan Tidak Memakan Banyak Waktu', 'Syafiq Maulana', NULL, 'bi bi-star-fill', NULL),
(42, 6, 20, NULL, 'Misi 2', 'Memberikan Produk dan Layanan terpadu dalam setiap layanan purna jual ke semua pelanggan.', NULL, 'bi bi-check2', NULL),
(43, 15, 0, 'aset/img/about.jpg', 'Kami adalah Tim yang memiliki banyak pengalaman dalam pembuatan Website', 'BOSWEB mempertimbangkan setiap detail kecil untuk memastikan sistem berjalan dengan lancar dan responsif. BOSWEB menggunakan teknik baru yang disebut Minified Technology untuk mengamankan database pelanggan & membangun firewall yang sangat rahasia.', NULL, NULL, NULL),
(44, 16, 0, NULL, 'IT Design', 'Kami menyediakan design yang responsive dan fungsional untuk perusahaan dan bisnis anda.', NULL, 'ri-discuss-line icon', 'blue'),
(45, 16, 0, NULL, 'IT Management', 'Memungkinkan untuk secara bersamaan mengelola dan mengubah informasi dari satu server ke server lainnya.', NULL, 'ri-discuss-line icon', 'orange'),
(46, 16, 0, NULL, 'Data Security', 'backup database Anda, simpan di tempat yang aman dan terlindungi dengan tetap menjaga aksesibilitasnya.', NULL, 'ri-discuss-line icon', 'green'),
(47, 16, 0, NULL, 'Infrastructure Plan', 'BOSWEB memperhitungkan semua kondisi dan anggaran yang dibutuhkan untuk membangun rencana infrastruktur.', NULL, 'ri-discuss-line icon', 'red'),
(48, 16, 0, NULL, 'Firewall Advancement', 'Meningkatkan kekuatan dan keamanan firewall untuk melindungi data online dari sumber berbahaya.', NULL, 'ri-discuss-line icon', 'purple'),
(49, 16, 0, NULL, 'Desktop Computing', 'Pemrograman ditangani oleh spesialis kami yang berpengalaman dan profesional dalam manajemen TI.', NULL, 'ri-discuss-line icon', 'pink'),
(50, 12, 0, NULL, 'Berapa Lama Waktu Pengerjaan Website?', 'untuk waktu pengerjaan setiap website pasti berbeda, tergantung jenis website yang ingin di buat.', NULL, NULL, NULL),
(51, 12, 0, NULL, 'Estimasi Harga untuk Satu Website', 'Harga untuk pembuatan website beragam, tergantung website yang ingin anda buat.', NULL, NULL, NULL),
(52, 17, 0, NULL, 'Alamat', '<p>Balikpapan Regency<br>Cluster de Castarica<br>Blok JE9 no</p>', '\'https://g.page/inkomputer?share\',\'_blank\'', 'bi bi-geo-alt', NULL),
(53, 17, 0, NULL, 'Telpon', '                                <p>+62 811 590 890</p>', '\'tel:085710021257\',\'_blank\'', 'bi bi-telephone', NULL),
(54, 17, 0, NULL, 'Email', '<p>office@inkomputer.id</p>', '\'mailto:office@inkomputer.id?subject=Hai Admin Bos.Web.id, Saya dapat info dari website....\',\'_blank\'', 'bi bi-envelope', NULL),
(55, 17, 0, NULL, 'WhatsApp', '                                <p>+62 811 590 890</p>', '\'https://wa.me/6285710021257?text=Hi bos.web.id, Saya ingin....\',\'_blank\'', 'bi bi-whatsapp', NULL),
(56, 18, 0, NULL, 'twitter', '', '\'https://twitter.com/inkomputer\',\'_blank\'', 'bi bi-twitter', NULL),
(57, 18, 0, NULL, 'facebook', '', '\'https://fb.com/inkomputer.id\',\'_blank\'', 'bi bi-facebook', NULL),
(58, 18, 0, NULL, 'instagram', '', '\'https://instagram.com/inkomputer\',\'_blank\'', 'bi bi-instagram bx bxl-instagram', NULL),
(59, 18, 0, NULL, 'linkedin', '', '\'https://linkedin.com/company/inkomputer\',\'_blank\'', 'bi bi-linkedin', NULL),
(60, 1, 1, '', 'Whatsapp', '', '\'https://wa.me/6285710021257?text=Hi bos.web.id, Saya ingin....\',\'_blank\'', 'bi bi-whatsapp', 'style=\"background-color: #19c119;\"'),
(61, 1, 1, '', 'Telpon', '', '\'tel:085710021257\',\'_blank\'', 'bi bi-telephone', NULL),
(62, 17, 0, NULL, 'Jam Kerja', '<p>\r\n                                    Senin - Jumat<br>9:00 - 17:00\r\n                                    <br>\r\n                                    Sabtu<br>9:00 - 15:00\r\n                                </p>', '#', 'bi bi-clock', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hyperlink`
--

CREATE TABLE `hyperlink` (
  `hyperlink_id` int(11) NOT NULL,
  `hyperlink_name` varchar(20) NOT NULL,
  `hyperlink_url` varchar(300) NOT NULL,
  `hyperlink_target` varchar(15) NOT NULL,
  `disabled` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hyperlink`
--

INSERT INTO `hyperlink` (`hyperlink_id`, `hyperlink_name`, `hyperlink_url`, `hyperlink_target`, `disabled`) VALUES
(1, 'Home', '#', '', 0),
(2, 'About', '#', '', 0),
(3, 'Services', '#', '', 0),
(4, 'Portfolio', '#', '#', 0),
(5, 'Team', '#', '', 0),
(6, 'blog', 'blog', '', 0),
(7, 'Drop Down', '#', '', 0),
(8, 'Contact', '#', '', 0),
(9, 'dd1', '#', '', 0),
(10, 'dd2', '#', '', 0),
(11, 'dd3', '', '#', 0);

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

CREATE TABLE `konsultasi` (
  `konsultasi_id` int(10) UNSIGNED NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `hp_pelanggan` int(11) NOT NULL,
  `wa_pelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsultasi`
--

INSERT INTO `konsultasi` (`konsultasi_id`, `nama_pelanggan`, `hp_pelanggan`, `wa_pelanggan`) VALUES
(1, 'asd', 123, 123),
(2, 'asd', 123, 123),
(3, 'asdassd', 123123, 123123);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(15) NOT NULL,
  `disabled` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `disabled`) VALUES
(1, 'Frontend - Top', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menus_id` int(11) UNSIGNED NOT NULL,
  `menus_name` varchar(255) DEFAULT NULL,
  `menus_href` varchar(255) DEFAULT NULL,
  `menus_target` varchar(255) DEFAULT NULL,
  `menus_parent` int(11) DEFAULT 0,
  `menus_category` int(11) DEFAULT 1,
  `menus_level` int(11) DEFAULT 1,
  `created` datetime DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menus_id`, `menus_name`, `menus_href`, `menus_target`, `menus_parent`, `menus_category`, `menus_level`, `created`, `updated`) VALUES
(1, 'Home', NULL, NULL, 0, 1, 1, '2021-03-26 21:39:07', '2021-03-27 17:39:05'),
(2, 'Tentang', 'tentang', NULL, 0, 1, 1, '2021-03-26 21:39:22', '2021-04-10 12:09:23'),
(3, 'Layanan', 'layanan', NULL, 0, 1, 1, '2021-03-26 21:39:41', '2021-04-10 12:15:15'),
(4, 'Portofolio', 'portfolio', NULL, 0, 1, 1, '2021-03-26 21:40:46', '2021-04-01 17:25:21'),
(5, 'Blog', 'blog', NULL, 0, 1, 1, '2021-03-26 21:41:23', '2021-04-01 15:09:56'),
(9, 'Hubungi Kami', 'hubungi', NULL, 0, 1, 1, '2021-03-27 11:11:19', '2021-04-10 12:15:34'),
(10, 'Home', NULL, NULL, 0, 2, 2, '2021-03-26 21:39:07', '2021-03-27 18:26:21'),
(11, 'Tentang', 'tentang', NULL, 0, 2, 2, '2021-03-26 21:39:07', '2021-04-10 12:15:18'),
(12, 'Layanan', 'layanan', NULL, 0, 2, 2, '2021-03-26 21:39:07', '2021-04-10 12:15:21'),
(13, 'Persyaratan Layanan', '#persyaratan', NULL, 0, 2, 2, '2021-03-28 15:55:34', '2021-04-10 12:29:57'),
(14, 'Kebijakan', '#kebijakan', NULL, 0, 2, 2, '2021-03-28 15:56:46', '2021-04-10 12:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_hyperlink`
--

CREATE TABLE `menu_hyperlink` (
  `menu_hyperlink_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `hyperlink_id` int(11) NOT NULL,
  `menu_hyperlink_parent` int(11) NOT NULL DEFAULT 0,
  `disabled` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_hyperlink`
--

INSERT INTO `menu_hyperlink` (`menu_hyperlink_id`, `menu_id`, `hyperlink_id`, `menu_hyperlink_parent`, `disabled`) VALUES
(1, 1, 1, 0, 0),
(6, 1, 2, 0, 0),
(7, 1, 3, 0, 0),
(8, 1, 4, 0, 0),
(9, 1, 5, 0, 0),
(10, 1, 6, 0, 0),
(11, 1, 7, 0, 0),
(12, 1, 8, 0, 0),
(13, 1, 9, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `portfolio_id` int(10) UNSIGNED NOT NULL,
  `portfolio_category` varchar(50) NOT NULL DEFAULT '',
  `portfolio_client` varchar(50) NOT NULL DEFAULT '',
  `portfolio_date` date NOT NULL DEFAULT current_timestamp(),
  `portfolio_url` varchar(50) DEFAULT NULL,
  `portfolio_title` varchar(50) NOT NULL,
  `portfolio_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`portfolio_id`, `portfolio_category`, `portfolio_client`, `portfolio_date`, `portfolio_url`, `portfolio_title`, `portfolio_desc`) VALUES
(1, 'Website', 'Si.Se.Sa', '2017-03-31', 'http://sisesa.co.id/', 'Website sisesa', 'Pembuatan Website Si.Se.Sa'),
(2, 'Aplikasi', 'Pemerintahan Balikpapan', '2018-03-31', '', 'Digital Government Balikpapan', 'Pembuatan Aplikasi Digital Goverment Balikpapan');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_image`
--

CREATE TABLE `portfolio_image` (
  `portfolio_image_id` int(11) UNSIGNED NOT NULL,
  `portfolio_id` int(11) NOT NULL,
  `portfolio_image_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio_image`
--

INSERT INTO `portfolio_image` (`portfolio_image_id`, `portfolio_id`, `portfolio_image_name`) VALUES
(1, 1, 'portfolio-1.png'),
(2, 2, 'portfolio-2.png');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_title` varchar(50) NOT NULL DEFAULT '0',
  `product_price` varchar(50) NOT NULL DEFAULT '0',
  `product_desc` longtext NOT NULL,
  `product_image` varchar(50) NOT NULL DEFAULT '0',
  `product_color` varchar(50) NOT NULL DEFAULT '0',
  `product_featured` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_color`, `product_featured`) VALUES
(1, 'Compro Statis', '<sup>Rp.</sup> 1.300.000', '                            <li>3 - 5 Halaman</li>\r\n                            <li>Unlimited Bandwidth</li>\r\n                            <li>Google Search</li>\r\n                            <li>Email Perusahaan</li>\r\n                            <li>1GB Disk Space</li>\r\n                            <li class=\"na\">Aplikasi Android</li>\r\n                            <li class=\"na\">Gratis Domain</li>\r\n                            <li>&nbsp;</li>', 'pricing-free.png', 'style=\"color: #07d5c0;\"', NULL),
(2, 'Compro Dinamis', '<sup>Rp.</sup> 3.500.000', '<li>Halaman Tak Terbatas</li>\r\n                            <li>Unlimited Bandwidth</li>\r\n                            <li>Google Search</li>\r\n                            <li>Email Perusahaan</li>\r\n                            <li>3GB Disk Space</li>\r\n                            <li>Gratis Domain</li>\r\n                            <li><sup>(.com / .id/ .co.id / .net / .info)</sup></li>\r\n                            <li class=\"na\">Aplikasi Android</li>', 'pricing-starter.png', 'style=\"color: #65c600;\"', '<span class=\"featured\">Featured</span>'),
(3, 'Toko Online', '<sup>Rp.</sup> 6.250.000', '<li>Halaman Tak Terbatas</li>\r\n                            <li>Unlimited Bandwidth</li>\r\n                            <li>Google Search</li>\r\n                            <li>Email Perusahaan</li>\r\n                            <li>10GB Disk Space</li>\r\n                            <li>Aplikasi Android</li>\r\n                            <li>Gratis Domain</li>\r\n                            <li><sup>(.com / .id/ .co.id / .net / .info)</sup></li>', 'pricing-business.png', 'style=\"color: #ff901c;\"', NULL),
(4, 'Software / Aplikasi', 'Hubungi Kami', '<li>Kostumisasi Sesuai Kebutuhan Pelanggan</li>', 'pricing-ultimate.png', 'style=\"color: #ff0071;\"', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL,
  `setting_value` varchar(50) NOT NULL,
  `setting_description` varchar(100) NOT NULL,
  `setting_group` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `subscribe_id` int(10) UNSIGNED NOT NULL,
  `subscribe_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`subscribe_id`, `subscribe_email`) VALUES
(1, 'gafrielalfa02@gmail.com'),
(2, 'gafrielalfa02@gmail.com'),
(3, 'gafrielalfa02@gmail.com'),
(4, 'gafrielalfa02@gmail.com'),
(5, 'admin@mail.com'),
(6, 'gafrielalfa02@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `tag_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES
(1, 'Web'),
(2, 'Aplikasi');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `template_id` int(11) NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `aktif` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`template_id`, `template_name`, `aktif`) VALUES
(1, 'default', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_verification_code` varchar(255) DEFAULT NULL,
  `user_level` enum('1','2','3','4','5','6') DEFAULT '1',
  `user_name_first` varchar(255) DEFAULT NULL,
  `user_name_last` varchar(255) DEFAULT NULL,
  `user_birthdate` date DEFAULT NULL,
  `user_gender` enum('1','2','3') DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `kelurahan_id` int(11) DEFAULT NULL,
  `user_avatar` varchar(255) DEFAULT NULL,
  `user_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `user_disabled` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_email`, `user_password`, `user_verification_code`, `user_level`, `user_name_first`, `user_name_last`, `user_birthdate`, `user_gender`, `user_phone`, `kelurahan_id`, `user_avatar`, `user_created`, `user_updated`, `user_disabled`) VALUES
(1, 'samuel@gmail.com', '9050d12fae607c0926896a7853ccebba64a3265b', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-03 08:28:45', NULL, 0),
(2, 'admin@admin.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-03 08:28:45', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD PRIMARY KEY (`blog_tag_id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `ci_session`
--
ALTER TABLE `ci_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `hyperlink`
--
ALTER TABLE `hyperlink`
  ADD PRIMARY KEY (`hyperlink_id`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`konsultasi_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menus_id`);

--
-- Indexes for table `menu_hyperlink`
--
ALTER TABLE `menu_hyperlink`
  ADD PRIMARY KEY (`menu_hyperlink_id`),
  ADD KEY `hyperlink_fk` (`hyperlink_id`),
  ADD KEY `menu_fk` (`menu_id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`portfolio_id`);

--
-- Indexes for table `portfolio_image`
--
ALTER TABLE `portfolio_image`
  ADD PRIMARY KEY (`portfolio_image_id`),
  ADD KEY `portfolio_id` (`portfolio_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `blog_tag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `hyperlink`
--
ALTER TABLE `hyperlink`
  MODIFY `hyperlink_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `konsultasi_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menus_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `menu_hyperlink`
--
ALTER TABLE `menu_hyperlink`
  MODIFY `menu_hyperlink_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `portfolio_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `portfolio_image`
--
ALTER TABLE `portfolio_image`
  MODIFY `portfolio_image_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `subscribe_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD CONSTRAINT `blog_tag_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`),
  ADD CONSTRAINT `blog_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`);

--
-- Constraints for table `menu_hyperlink`
--
ALTER TABLE `menu_hyperlink`
  ADD CONSTRAINT `hyperlink_fk` FOREIGN KEY (`hyperlink_id`) REFERENCES `hyperlink` (`hyperlink_id`),
  ADD CONSTRAINT `menu_fk` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
