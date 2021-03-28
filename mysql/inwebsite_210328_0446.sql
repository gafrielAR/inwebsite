-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 28, 2021 at 08:45 PM
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
('g1us3s23n3pttjfavrpe9c8rc0tquqh0', NULL, '127.0.0.1', 1616947034, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363934373033343b),
('gb3kt2huqn8ndhinelh1t0d06u6489uk', NULL, '127.0.0.1', 1616833468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363833333436383b),
('k837maskd8als08ru48814e39cmq0p4j', NULL, '127.0.0.1', 1616822177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363733363736363b),
('lkaj2gnft3j5osh9ji2sut52li9lsjcg', NULL, '127.0.0.1', 1616963796, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363832363534343b),
('sgi7mfqo1o00i35nmmqed6gf7p5567sm', NULL, '127.0.0.1', 1616719911, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363637333630353b);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) UNSIGNED NOT NULL,
  `content_category` int(11) DEFAULT NULL,
  `content_img` varchar(50) DEFAULT NULL,
  `content_title` varchar(255) DEFAULT NULL,
  `content_desc` text DEFAULT NULL,
  `content_icon` varchar(50) DEFAULT NULL,
  `content_main_class` varchar(255) DEFAULT NULL,
  `content_sub_class` varchar(255) DEFAULT NULL,
  `content_color` varchar(50) DEFAULT NULL,
  `content_id_link` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `content_category`, `content_img`, `content_title`, `content_desc`, `content_icon`, `content_main_class`, `content_sub_class`, `content_color`, `content_id_link`) VALUES
(1, 1, 'aset/img/hero-img.png', 'Kami Menawarkan Solusi Modern Untuk Pembuatan Website', 'Hubungi Kami', 'bi bi-arrow-right', 'col-lg-6 d-flex flex-column justify-content-center', 'col-lg-6 hero-img', NULL, NULL),
(2, 2, 'aset/img/values-1.png', 'Tampilan Yang Menarik', 'Website yang kami buat pastinya memiliki tampilan yang menarik.', NULL, NULL, NULL, NULL, NULL),
(3, 2, 'aset/img/values-2.png', 'Responsive', 'Kami membuat website dengan tampilan responsive.', NULL, NULL, NULL, NULL, NULL),
(4, 2, 'aset/img/values-3.png', 'Tidak memakan waktu', 'Kami akan selalu tepat waktu dalam mengerjakan website yang anda pesan.', NULL, NULL, NULL, NULL, NULL),
(5, 3, '', 'Pelanggan Puas', '232', 'bi bi-emoji-smile', 'col-lg-3 col-md-6', 'count-box', 'style=\"color: #4154f1;\"', NULL),
(6, 3, '', 'Projek', '20', 'bi bi-journal-richtext', 'col-lg-3 col-md-6', 'count-box', 'style=\"color: #ee6c20;\"', NULL),
(7, 3, '', 'Jam Pengerjaan', '96', 'bi bi-headset', 'col-lg-3 col-md-6', 'count-box', 'style=\"color: #15be56;\"', NULL),
(8, 3, '', 'Pekerja', '9', 'bi bi-people', 'col-lg-3 col-md-6', 'count-box', 'style=\"color: #bb0852;\"', NULL),
(9, 4, '', 'Web Penjualan / ECommerce', NULL, 'bi bi-check', 'col-md-6', 'feature-box d-flex align-items-center', NULL, NULL),
(10, 4, '', 'Web Sistem Kantor', NULL, 'bi bi-check', 'col-md-6', 'feature-box d-flex align-items-center', NULL, NULL),
(11, 4, '', 'Web Inventaris', NULL, 'bi bi-check', 'col-md-6', 'feature-box d-flex align-items-center', NULL, NULL),
(12, 4, '', 'Web Profil Perusahaan', NULL, 'bi bi-check', 'col-md-6', 'feature-box d-flex align-items-center', NULL, NULL),
(13, 4, '', 'Web Portal Berita', NULL, 'bi bi-check', 'col-md-6', 'feature-box d-flex align-items-center', NULL, NULL),
(14, 4, '', 'Blog', NULL, 'bi bi-check', 'col-md-6', 'feature-box d-flex align-items-center', NULL, NULL),
(15, 5, 'aset/img/features.png', NULL, NULL, NULL, 'col-lg-6', 'img-fluid', NULL, NULL),
(19, 6, NULL, 'Visi', NULL, NULL, 'nav-link active', NULL, NULL, NULL),
(20, 6, '', 'Misi', NULL, NULL, 'nav-link', '', NULL, NULL),
(21, 7, NULL, 'Visi', 'Menjadi perusahaan Teknologi Informasi dan Komunikasi profesional yang memberikan solusi serta layanan terintegritasi dan mengikuti perkembangan dunia teknologi Informasi.', NULL, 'tab-pane fade show active', NULL, NULL, NULL),
(22, 8, NULL, 'Misi', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 9, 'aset/img/features-2.png', NULL, NULL, NULL, 'col-lg-6', 'img-fluid', NULL, NULL),
(24, 10, 'aset/img/features-3.png', NULL, NULL, NULL, 'col-xl-4 text-center', 'img-fluid p-4', NULL, NULL),
(25, 11, NULL, 'Berpengalaman', 'Kami telah berpengalan dalam pembuatan web.', 'ri-line-chart-line', 'col-md-6 icon-box', NULL, NULL, NULL),
(26, 11, NULL, 'Berpengalaman', 'Kami telah berpengalan dalam pembuatan web.', 'ri-line-chart-line', 'col-md-6 icon-box', NULL, NULL, NULL),
(27, 11, NULL, 'Berpengalaman', 'Kami telah berpengalan dalam pembuatan web.', 'ri-line-chart-line', 'col-md-6 icon-box', NULL, NULL, NULL),
(28, 11, NULL, 'Berpengalaman', 'Kami telah berpengalan dalam pembuatan web.', 'ri-line-chart-line', 'col-md-6 icon-box', NULL, NULL, NULL),
(29, 11, NULL, 'Berpengalaman', 'Kami telah berpengalan dalam pembuatan web.', 'ri-line-chart-line', 'col-md-6 icon-box', NULL, NULL, NULL),
(30, 11, NULL, 'Berpengalaman', 'Kami telah berpengalan dalam pembuatan web.', 'ri-line-chart-line', 'col-md-6 icon-box', NULL, NULL, NULL),
(31, 12, NULL, 'Perbedaan Domain dan Hosting?', 'Sebagai dua hal yang paling esensial dalam suatu website,', NULL, 'accordion-item', NULL, NULL, NULL),
(32, 12, NULL, 'Perbedaan Domain dan Hosting?', 'Sebagai dua hal yang paling esensial dalam suatu website,', NULL, 'accordion-item', NULL, NULL, NULL),
(33, 13, 'aset/img/testimonials/testimonials-1.jpg', 'Pengerjaan sangat cepat dan tidak memakan waktu banyak', 'Syafiq Maulana', 'bi bi-star-fill', 'swiper-slide', 'testimonial-item', NULL, NULL),
(34, 13, 'aset/img/testimonials/testimonials-1.jpg', 'Pengerjaan sangat cepat dan tidak memakan waktu banyak', 'Syafiq Maulana', 'bi bi-star-fill', 'swiper-slide', 'testimonial-item', NULL, NULL),
(35, 13, 'aset/img/testimonials/testimonials-1.jpg', 'Pengerjaan sangat cepat dan tidak memakan waktu banyak', 'Syafiq Maulana', 'bi bi-star-fill', 'swiper-slide', 'testimonial-item', NULL, NULL),
(36, 13, 'aset/img/testimonials/testimonials-1.jpg', 'Pengerjaan sangat cepat dan tidak memakan waktu banyak', 'Syafiq Maulana', 'bi bi-star-fill', 'swiper-slide', 'testimonial-item', NULL, NULL),
(37, 13, 'aset/img/testimonials/testimonials-1.jpg', 'Pengerjaan sangat cepat dan tidak memakan waktu banyak', 'Syafiq Maulana', 'bi bi-star-fill', 'swiper-slide', 'testimonial-item', NULL, NULL),
(38, 14, 'aset/img/blog/blog-1.jpg', 'Mengenal Apa itu Website dan Fungsinya dalam Kehidupan Sehari-Hari', 'Selasa, Maret 23', 'bi bi-arrow-right', 'col-lg-4', 'post-box', NULL, NULL),
(39, 14, 'aset/img/blog/blog-1.jpg', 'Mengenal Apa itu Website dan Fungsinya dalam Kehidupan Sehari-Hari', 'Selasa, Maret 23', 'bi bi-arrow-right', 'col-lg-4', 'post-box', NULL, NULL),
(40, 14, 'aset/img/blog/blog-1.jpg', 'Mengenal Apa itu Website dan Fungsinya dalam Kehidupan Sehari-Hari', 'Selasa, Maret 23', 'bi bi-arrow-right', 'col-lg-4', 'post-box', NULL, NULL),
(41, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(2, 'About', 'page/tentang', NULL, 0, 1, 1, '2021-03-26 21:39:22', '2021-03-29 00:40:19'),
(3, 'Layanan', 'page/layanan', NULL, 0, 1, 1, '2021-03-26 21:39:41', '2021-03-27 18:50:03'),
(4, 'Portofolio', 'page/portofolio', NULL, 0, 1, 1, '2021-03-26 21:40:46', '2021-03-28 14:48:03'),
(5, 'Blog', 'page/blog', NULL, 0, 1, 1, '2021-03-26 21:41:23', '2021-03-28 14:48:10'),
(6, 'Dropdown', '#', NULL, 0, 1, 1, '2021-03-26 21:41:39', '2021-03-27 11:09:37'),
(7, 'dropdown 1', '#', NULL, 6, 1, 2, '2021-03-27 11:10:16', '2021-03-27 18:12:03'),
(8, 'dropdown 2', '#', NULL, 6, 1, 2, '2021-03-27 11:10:33', '2021-03-27 18:17:16'),
(9, 'Hubungi Kami', 'page/hubungi', NULL, 0, 1, 1, '2021-03-27 11:11:19', '2021-03-28 14:48:23'),
(10, 'Home', NULL, NULL, 0, 2, 2, '2021-03-26 21:39:07', '2021-03-27 18:26:21'),
(11, 'Tentang', 'page/tentang', NULL, 0, 2, 2, '2021-03-26 21:39:07', '2021-03-28 14:48:40'),
(12, 'Layanan', 'page/layanan', NULL, 0, 2, 2, '2021-03-26 21:39:07', '2021-03-28 14:50:23'),
(13, 'Persyaratan Layanan', 'page/persyaratan', NULL, 0, 2, 2, '2021-03-28 15:55:34', '2021-03-28 15:55:34'),
(14, 'Kebijakan', 'page/kebijakan', NULL, 0, 2, 2, '2021-03-28 15:56:46', '2021-03-28 15:56:47'),
(15, 'Web Design', 'page/design', NULL, 0, 3, 2, '2021-03-28 16:03:02', '2021-03-28 16:05:55'),
(16, 'Web Development', 'page/development', NULL, 0, 3, 2, '2021-03-28 16:03:02', '2021-03-28 16:03:07'),
(17, 'Product Management', 'page/management', NULL, 0, 3, 2, '2021-03-28 16:03:02', '2021-03-28 16:03:07'),
(18, 'Marketing', 'page/market', NULL, 0, 3, 2, '2021-03-28 16:03:02', '2021-03-28 16:03:07'),
(19, 'Graphic Design', 'page/market', NULL, 0, 3, 2, '2021-03-28 16:03:02', '2021-03-28 16:03:07');

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
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

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
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `hyperlink`
--
ALTER TABLE `hyperlink`
  MODIFY `hyperlink_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `menu_hyperlink`
--
ALTER TABLE `menu_hyperlink`
  ADD CONSTRAINT `hyperlink_fk` FOREIGN KEY (`hyperlink_id`) REFERENCES `hyperlink` (`hyperlink_id`),
  ADD CONSTRAINT `menu_fk` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
