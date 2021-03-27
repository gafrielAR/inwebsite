-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2021 at 07:00 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

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
('k837maskd8als08ru48814e39cmq0p4j', NULL, '127.0.0.1', 1616822177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363733363736363b),
('sgi7mfqo1o00i35nmmqed6gf7p5567sm', NULL, '127.0.0.1', 1616719911, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631363637333630353b);

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
(1, 'Home', NULL, NULL, 0, 1, 1, '2021-03-26 21:39:07', '2021-03-27 11:06:49'),
(2, 'About', '#about', NULL, 0, 1, 1, '2021-03-26 21:39:22', '2021-03-27 11:07:22'),
(3, 'Layanan', '#services', NULL, 2, 1, 2, '2021-03-26 21:39:41', '2021-03-27 13:02:04'),
(4, 'Portofolio', '#portfolio', NULL, 2, 1, 2, '2021-03-26 21:40:46', '2021-03-27 13:02:06'),
(5, 'Blog', 'blog', NULL, 0, 1, 1, '2021-03-26 21:41:23', '2021-03-27 11:09:39'),
(6, 'Dropdown', '#', NULL, 0, 1, 1, '2021-03-26 21:41:39', '2021-03-27 11:09:37'),
(7, 'dropdown 1', '#', NULL, 6, 1, 2, '2021-03-27 11:10:16', '2021-03-27 11:10:46'),
(8, 'dropdown 2', '#', NULL, 6, 1, 2, '2021-03-27 11:10:33', '2021-03-27 11:10:48'),
(9, 'Hubungi Kami', '#contact', NULL, 0, 1, 1, '2021-03-27 11:11:19', '2021-03-27 04:10:59');

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
  MODIFY `menus_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
