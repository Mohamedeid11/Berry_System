-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 22, 2020 at 12:46 PM
-- Server version: 10.2.34-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berry74_berry_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `content_en` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `image`, `title`, `content`, `title_en`, `content_en`) VALUES
(1, 'http://www.berry74.com/new/system/api/uploads/about/78-785827_user-profile-avatar-login-account-male-user-icon.png', 'البري', 'معلومات عن الشركه باللغه العربيه', 'Berry', 'Some information about the company in English');

-- --------------------------------------------------------

--
-- Table structure for table `about_project`
--

CREATE TABLE `about_project` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `desc_en` text CHARACTER SET utf8 DEFAULT NULL,
  `desc_ar` text CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about_project`
--

INSERT INTO `about_project` (`id`, `project_id`, `desc_en`, `desc_ar`, `date`) VALUES
(7, 144, 'Dolor necessitatibus minim in architecto magni architecto tenetur natus dolor consequuntur et sed est blanditiis facilis et', 'تفاصيل باللغه العربيه', '2020-10-20 16:32:56'),
(8, 141, 'Sint elit cum possimus expedita natus minus', 'تفاصيل باللغه العربيه', '2020-10-20 16:33:59'),
(9, 145, 'Quia sint deserunt inventore consequuntur labore commodi fugiat praesentium', 'تفاصيل باللغه العربيه', '2020-10-20 16:34:06'),
(10, 144, 'Molestiae cupiditate voluptatem ipsum et et esse exercitation reiciendis sed sit enim veritatis pariatur Ratione', 'تفاصيل باللغه العربيه', '2020-10-20 16:34:12'),
(11, 149, 'Eius veritatis veniam culpa quo sunt in', 'تفاصيل باللغه العربيه', '2020-10-20 16:34:18'),
(12, 149, 'Impedit est in culpa alias sint qui eaque cupidatat ut voluptatum temporibus distinctio Quibusdam nisi vel facere est et et', 'تفاصيل باللغه العربيه', '2020-10-20 16:34:26'),
(13, 140, 'Excepteur amet natus esse cupidatat irure quas eum fugiat labore modi sapiente labore temporibus rerum voluptas nulla doloribus placeat enim', 'تفاصيل باللغه العربيه', '2020-10-20 16:34:38'),
(14, 140, 'Inventore fuga Qui ratione molestias', 'تفاصيل باللغه العربيه', '2020-10-20 16:34:46'),
(15, 140, 'Ducimus omnis sequi deserunt adipisicing', 'تفاصيل باللغه العربيه', '2020-10-20 16:35:05'),
(16, 150, 'Officiis nostrum commodo dicta pariatur Et ea adipisci ullamco pariatur Qui rem reprehenderit ut ullamco assumenda laboris', 'تفاصيل عن المشروع باللغه العربيه', '2020-10-21 15:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `client_name_en` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_name_ar` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `client_password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_phone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_verify` int(11) DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `client_name_en`, `client_name_ar`, `client_password`, `client_email`, `client_phone`, `client_verify`, `date`) VALUES
(49, 'James Booker', 'اسم العميل باللفه العربيه', 'e10adc3949ba59abbe56e057f20f883e', 'pylet@mailinator.com', '011011', NULL, '2020-10-21 15:46:15'),
(50, 'Allegra Campos', 'Anjolie Kinney', 'e10adc3949ba59abbe56e057f20f883e', 'fatobagy@mailinator.com', '+1 (267) 865-2078', NULL, '2020-10-21 15:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `client_addresses`
--

CREATE TABLE `client_addresses` (
  `client_address_id` int(11) NOT NULL,
  `lat` varchar(255) CHARACTER SET utf8 NOT NULL,
  `lang` varchar(255) CHARACTER SET utf8 NOT NULL,
  `region` varchar(50) CHARACTER SET utf8 NOT NULL,
  `block` varchar(255) CHARACTER SET utf8 NOT NULL,
  `road` varchar(255) CHARACTER SET utf8 NOT NULL,
  `building` varchar(255) CHARACTER SET utf8 NOT NULL,
  `flat_number` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_phone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `client_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `client_addresses`
--

INSERT INTO `client_addresses` (`client_address_id`, `lat`, `lang`, `region`, `block`, `road`, `building`, `flat_number`, `client_phone`, `note`, `client_id`, `date`) VALUES
(2, '', '', '84', '323232', '874 Runnymede Rd, Woodside, CA 94062, USA', '323232', '322', '3232323', '333', '9', '2020-06-15 09:39:47'),
(3, '', '', '83', 'eeewewew', '27887 Baker Ln, Los Altos Hills, CA 94022, USA', '22', 'e2', 'ds', 'ewe we', '7', '2020-06-16 11:42:18'),
(4, '', '', '', '', 'King Faisal Hwy, Manama, Bahrain', '', '', '', '', '14', '2020-06-18 17:41:16'),
(5, '0', '0', '86', 'block 10', 'street 9', 'building 11', 'flat 21', '01224300', 'Added notes', '15', '2020-07-16 15:45:19'),
(6, '31.07887346292744', '29.74619351327419', '85', '088', 'Earthy Pass', 'building', '58', '01554898751', '', '18', '2020-07-21 17:23:31'),
(7, '26.2371310651502', '50.57821489870548', '85', '222', '383 Government Ave', '555', '', '33340388', '', '19', '2020-07-22 22:46:25'),
(9, '', '', '83', '125', '1748', '125', '1', '33405497', '', '22', '2020-07-25 20:17:57'),
(10, '25.829337020136', '50.609143058715', '35', '226', '2648', '2339', '', '33683333', '', '23', '2020-07-26 11:56:05'),
(11, '26.223095546569', '50.667187505938', '6', '366?', '6678', '667', '', '38883747', '', '24', '2020-07-26 12:19:39'),
(12, '', '', '76', '345', '543', '5435', '543', '01090083525', '', '1', '2020-07-27 14:26:38'),
(13, '26.222521025658', '50.662804508001', '51', '115', '1508', '44', '', '34216769', '', '26', '2020-08-09 11:14:31'),
(14, '26.19802946300285', '50.46638656407595', '4', '551', 'Rd No 5105', '85', '', '33825259', '', '27', '2020-08-17 20:51:41'),
(15, '26.198022844645823', '50.466386899352074', '68', '525', 'Rd No 5105', '77', '', '33825259', '', '27', '2020-08-17 23:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address_en` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `address`, `address_en`, `phone`, `mobile`, `email`, `instagram`, `twitter`, `facebook`, `website`) VALUES
(1, 'بيري 74', 'Berry 74', '38371330', '38371330', 'berry@gmail..com', 'www.intagram.com', 'www.twitter.com', 'www.facebook.com', 'www.berry.com');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(225) CHARACTER SET utf8 NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 NOT NULL,
  `subject` text CHARACTER SET utf8 NOT NULL,
  `date_added` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `title`, `subject`, `date_added`) VALUES
(11, 'تجريب', 'safyeissa208@gmail.com', 'teeest', 'safy', '2020-07-25 15:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `device_token_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `login` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `device_token_id`, `client_id`, `login`, `date_added`) VALUES
(10, 10, 4, 1, '2020-06-06 19:31:41'),
(9, 9, 5, 1, '2020-06-04 22:37:33'),
(8, 8, 5, 1, '2020-06-04 22:37:33'),
(7, 7, 4, 1, '2020-06-04 22:07:28'),
(11, 11, 6, 1, '2020-06-07 08:55:41'),
(12, 12, 6, 1, '2020-06-07 08:55:41'),
(13, 13, 7, 1, '2020-06-07 20:38:04'),
(14, 14, 7, 1, '2020-06-07 20:38:04'),
(15, 15, 1, 1, '2020-06-07 20:47:49'),
(16, 16, 1, 1, '2020-06-07 20:47:49'),
(17, 17, 4, 1, '2020-06-08 11:57:31'),
(18, 18, 7, 1, '2020-06-12 01:13:06'),
(19, 19, 7, 1, '2020-06-13 23:17:54'),
(20, 20, 7, 1, '2020-06-14 11:53:13'),
(21, 21, 7, 1, '2020-06-14 12:03:29'),
(22, 22, 7, 1, '2020-06-14 13:11:54'),
(23, 23, 8, 1, '2020-06-14 19:46:41'),
(24, 24, 9, 1, '2020-06-14 20:11:07'),
(25, 25, 10, 1, '2020-06-15 19:48:12'),
(26, 26, 7, 1, '2020-06-16 13:22:12'),
(27, 27, 7, 1, '2020-06-17 00:26:17'),
(28, 28, 11, 1, '2020-06-17 12:43:28'),
(29, 29, 12, 1, '2020-06-17 13:23:45'),
(30, 30, 13, 1, '2020-06-17 13:24:17'),
(31, 31, 14, 1, '2020-06-18 17:28:52'),
(32, 32, 2, 1, '2020-06-18 19:48:35'),
(33, 33, 7, 1, '2020-06-19 16:34:43'),
(34, 34, 7, 1, '2020-06-19 20:26:16'),
(35, 35, 15, 1, '2020-07-14 10:14:51'),
(36, 36, 15, 1, '2020-07-19 15:25:29'),
(37, 37, 15, 1, '2020-07-19 15:56:24'),
(38, 38, 16, 1, '2020-07-19 16:05:45'),
(39, 39, 15, 1, '2020-07-19 16:16:16'),
(40, 40, 15, 1, '2020-07-19 23:39:05'),
(41, 41, 15, 1, '2020-07-20 01:44:23'),
(42, 154, 17, 1, '2020-07-21 15:14:59'),
(43, 161, 18, 1, '2020-07-21 15:38:02'),
(44, 179, 19, 1, '2020-07-22 18:00:26'),
(45, 183, 20, 1, '2020-07-23 01:44:17'),
(46, 196, 23, 1, '2020-07-26 11:53:27'),
(47, 197, 24, 1, '2020-07-26 12:08:24'),
(48, 198, 25, 1, '2020-07-26 12:13:21'),
(49, 200, 15, 1, '2020-07-27 18:16:15'),
(50, 207, 26, 1, '2020-08-09 11:11:12'),
(51, 214, 27, 1, '2020-08-17 18:59:47'),
(52, 222, 28, 1, '2020-08-25 03:36:20'),
(53, 236, 29, 1, '2020-09-12 18:42:04'),
(54, 239, 1, 1, '2020-09-16 00:23:49'),
(55, 243, 15, 1, '2020-09-16 14:34:53'),
(56, 244, 2, 1, '2020-09-17 11:57:20'),
(57, 246, 22, 1, '2020-09-17 12:06:28'),
(58, 252, 31, 1, '2020-09-17 12:24:02'),
(59, 254, 1, 1, '2020-09-17 12:31:37'),
(60, 262, 30, 1, '2020-09-20 15:42:02'),
(61, 266, 38, 1, '2020-10-20 12:36:59'),
(62, 267, 45, 1, '2020-10-20 16:33:45'),
(63, 268, 46, 1, '2020-10-20 16:35:42'),
(64, 269, 47, 1, '2020-10-20 16:35:59'),
(65, 270, 48, 1, '2020-10-20 16:37:15'),
(66, 271, 38, 1, '2020-10-20 23:39:17'),
(67, 272, 38, 1, '2020-10-21 01:33:33'),
(68, 273, 45, 1, '2020-10-21 15:01:32'),
(69, 274, 48, 1, '2020-10-21 15:02:21'),
(70, 275, 51, 1, '2020-10-21 17:12:35'),
(71, 276, 49, 1, '2020-10-21 17:16:45'),
(72, 277, 49, 1, '2020-10-22 00:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `device_token`
--

CREATE TABLE `device_token` (
  `id` int(11) NOT NULL,
  `device_token` varchar(200) CHARACTER SET utf8 NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device_token`
--

INSERT INTO `device_token` (`id`, `device_token`, `type`, `date_added`) VALUES
(10, '', 'android', '2020-06-06 19:31:41'),
(8, '', 'android', '2020-06-04 22:37:33'),
(9, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-06-04 22:37:33'),
(7, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-06-04 22:07:28'),
(11, '', 'android', '2020-06-07 08:55:41'),
(12, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-06-07 08:55:41'),
(13, '', 'android', '2020-06-07 20:38:04'),
(14, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-06-07 20:38:04'),
(15, '', 'android', '2020-06-07 20:47:49'),
(16, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-06-07 20:47:49'),
(17, 'eVRZrmcPzik:APA91bE3jYljB_j8Tk69_pdmsME-k-mW3UXgV4OuIDBvCr_gyYxc7XKo2FIWRy9CYnNysleNRlrpVvF7MdJLWngYnt7Xu1O1D37eNrIPH3OwyZR1NQv-dVnq4Xsv7SzOfvKGfkjIOC5J', 'android', '2020-06-08 11:57:31'),
(18, 'fzUl9juvwEhEt9h20Yvm_I:APA91bFklVcD17CHmp-ECP0I2wro3StqxWCDuoAFf0PHUSXNxwb3tKuf2C0crcbOpkg9tIGUlr7ZSWT9HQXmuthrZiIvSeDE_Y00okFPcgwt0YUqlXa3tzpgvteK5V9oc82rGkZ5YbG4', '1', '2020-06-12 01:13:06'),
(19, 'eNgFEMzDNUtWpFjVvWo3sj:APA91bEvtl96ULH_aXDsWoxO6YWJzf2DqZx5KwqSFUik7Nj5Fsbg6XX7MCqf0nfVJM-pmpAlljPzQwNsUK84TQIkOQG-xWdQa-rrDm5G8Ug8r4mibn9RYgjnJq-kVWvSUDwo86cn72Zl', '1', '2020-06-13 23:17:54'),
(20, 'e3gWeXzUfUNshtgnffRELl:APA91bEXVlNzuq4yn-RS7VgVDBhjrVdGxYtxXQgRapbblUoKyUdLiz337Nw3EvKqAQUcQH9Sp8uqs1E3LP6MqKjohoTtnZnzVYLRBwAS68CqZ9i_bQ1Qo-5zDcBDaOkpBijKpeEGfj3M', '1', '2020-06-14 11:53:13'),
(21, 'fcUOzNWJ10SqjTZiO-vbhN:APA91bH8Ud3SwqL1ybkGu-wxnb4ClJoTt45xo_yJOy4y73HF9ffI5d0eDfXQSgKioIb1R0F8oRzCewbUGIzIUP4EODiftgkpe4D_zOYwXTgxDKm_pq7c8Eg-Lv5XkKnpzwoBNb8Y3c-V', '1', '2020-06-14 12:03:29'),
(22, 'fE02w1a_V0chlihSXCaaY_:APA91bEW-8c6Wqy8CnS6AuS5lCrZI0Sp9Utraw7wiTBgVvqbsarnDHzGVUutA_TFBucuhwQKUyhYUN2P_AL6wQOywD1qEJsgU7ihqmHhveylSN4RpWr8fUbSfwqvTowCiJ5wYvEjjzL_', '1', '2020-06-14 13:11:54'),
(23, 'fE02w1a_V0chlihSXCaaY_:APA91bEW-8c6Wqy8CnS6AuS5lCrZI0Sp9Utraw7wiTBgVvqbsarnDHzGVUutA_TFBucuhwQKUyhYUN2P_AL6wQOywD1qEJsgU7ihqmHhveylSN4RpWr8fUbSfwqvTowCiJ5wYvEjjzL_', '', '2020-06-14 19:46:41'),
(24, 'fE02w1a_V0chlihSXCaaY_:APA91bEW-8c6Wqy8CnS6AuS5lCrZI0Sp9Utraw7wiTBgVvqbsarnDHzGVUutA_TFBucuhwQKUyhYUN2P_AL6wQOywD1qEJsgU7ihqmHhveylSN4RpWr8fUbSfwqvTowCiJ5wYvEjjzL_', '', '2020-06-14 20:11:07'),
(25, 'dPRcmGAfDdY:APA91bFHAiOzYJedTk5nX_TJt2-SNsnXZ0Zry6Hp_wfb7wvB_tAOsN8B2uxzMBlolQpygina1e8wvTnN-Tc_5Pl4d5_ksOWHJF_2P98I8G2Ko-qjXi7v4GDf-j1FLy4oxx1rTE1MskDu', 'android', '2020-06-15 19:48:12'),
(26, 'cfcail_MqkHCgYVDprK3Ao:APA91bHQzFTz2U4DQCqFvrFZYU7FLSrGC1talGepr3MjO3U04X8xjBhHVAyP8ogTxFkaORnY91vWAQRnWXUa0r_CZmxOVzp7eUDfoqT9IgFyUfiAb5Fpek1Mmtj4YpQyll9-Y5o7jmCi', '1', '2020-06-16 13:22:12'),
(27, 'd-sVIwNP7Exoh0FdzDAZyI:APA91bE16awxxvt-7SC2jvmnQfJDlZsSHPC_THEVwJ0vgXjb0Upbrd9JbY2xpsJKsTKW8PKLUw03IpHAnTgXRH-S9FVPeGWI9MJNfVjGk53jam7MqO_58drhRc5WdN4rBPn2Rr55vwYL', '1', '2020-06-17 00:26:17'),
(28, 'dl0xbQW7zhY:APA91bHb8i8ZFxnLkeiIHJjDXsEwK_7SfHY_O4CP89ZaWrepgp08MH_79fKaZ3eFgYseaCXnlLqTdVDs8Kb7u3kk-rPgceLT7eqCvo09oiaVjM05YYQSvDmrsDI5FuPkPqwscAG528ox', 'android', '2020-06-17 12:43:28'),
(29, 'fE02w1a_V0chlihSXCaaY_:APA91bEW-8c6Wqy8CnS6AuS5lCrZI0Sp9Utraw7wiTBgVvqbsarnDHzGVUutA_TFBucuhwQKUyhYUN2P_AL6wQOywD1qEJsgU7ihqmHhveylSN4RpWr8fUbSfwqvTowCiJ5wYvEjjzL_', '', '2020-06-17 13:23:45'),
(30, 'fE02w1a_V0chlihSXCaaY_:APA91bEW-8c6Wqy8CnS6AuS5lCrZI0Sp9Utraw7wiTBgVvqbsarnDHzGVUutA_TFBucuhwQKUyhYUN2P_AL6wQOywD1qEJsgU7ihqmHhveylSN4RpWr8fUbSfwqvTowCiJ5wYvEjjzL_', '', '2020-06-17 13:24:17'),
(31, 'dJf4tKx7z0_CoR-QXCU20K:APA91bFDYiOcnf84Tk5Z5qnCLO3hxtBUnDtdC9eZg1_FddSVmOnqfWwCFU1UKQo85PdkdgOU4vn4NbAqD4vBspOLwee1v0XipWHPFR56Cez8VF-tj2lywhl8GlFJd6fONk-fTP_nEWpS', '', '2020-06-18 17:28:52'),
(32, 'c6OuBroqgk1Lj63_Muke2u:APA91bHj2d9HKY9am9EtMwV8YDS_9xWHV5jcKEM1JVyxXwDit60pgXgOl2ddjmh0lKVOD1Up4nWW5o4cQm-6VsYm6bf0iIrAQbGZg_3G47xyAeJtqcgzDHEqq1Ro4Rhh0edrghnjy6HS', '1', '2020-06-18 19:48:35'),
(33, 'cswKUHBet08Wu9yBTWflbM:APA91bEQQAjPYDr0Y7k0214rewXNaqTqrZxiA8BVKpQmfWU2uXlpv1BnzjWWEXylLZEA50bLIUPiBvlaNMAnzD1s4nZPn4InoFbnHNTmr5wGrC0CvZLnec9DzeCxJhHSYPzECax3n0dM', '1', '2020-06-19 16:34:43'),
(34, 'dhKw7uGmnElEtvpX2QQ7Ib:APA91bGerA6U1P1TzaU9m0eydbjKJlcQzNKFhuGoZCirxyLEf5Kiror04C1Zmpo-GJ0ljzQAF5jInXpCzimLi1qccKwg5HmRMOG_FujmfETqkHgd2_J8e5HTdiNYrKPvYGwLnG16AeCg', '1', '2020-06-19 20:26:16'),
(35, 'eqz2Ao42v088kfxMEZR-Jm:APA91bGbwNBdBkqqTqRTmFHn1nD9JgM39ghuCeV8rDolKygaAMP6h6AbTrv224739lE1GLqEPALCCxTGj4KY9yV7mQ0luC4sFSY9Gxrf5lX_fpnszZBWAmKoZgf2Kwex0Zx_Qb6K6od6', 'ios', '2020-07-14 10:14:51'),
(36, 'efhq47RurUWUsA5hN7H4v3:APA91bHloNAt585sHxlNB_PPXoE6cSF3x7X8DZXCGVRdog-bWcjnf5klVr7Kqs2J6-spUQITpGvOuhmgIMbjhgb60N6XAeQxHhqNmozkraO4xqlW4-5hrk1rKGaUC84XGXR1ugHdBr2s', 'ios', '2020-07-19 15:25:29'),
(37, 'f9GmVLbx_ULpjeDkwTtUKc:APA91bHagHbsgRHSKYiTxLlbn4nuFEYKb21STZsE9oAWHnwnzv5AN41tUR6Vo7pPOpRQXAGQkJdkkwe4WmUUOdYUfMw5I7C3DG0mkJGptXpUTBkLgY9PX28OVCdOe-1xtn2N9t9FG47P', 'ios', '2020-07-19 15:56:24'),
(38, 'f9GmVLbx_ULpjeDkwTtUKc:APA91bHagHbsgRHSKYiTxLlbn4nuFEYKb21STZsE9oAWHnwnzv5AN41tUR6Vo7pPOpRQXAGQkJdkkwe4WmUUOdYUfMw5I7C3DG0mkJGptXpUTBkLgY9PX28OVCdOe-1xtn2N9t9FG47P', 'ios', '2020-07-19 16:05:45'),
(39, 'figrXCRD40cbjuCAVqo76A:APA91bHqxuXBwdD3QCn7LWvwiTQ4pEMhY7T-N_CZhJEgIS0vX75uPo0gjswHRBoeuZ39cbWYYzMYOn6EcdvBAIJltOIAISrfP9mIazwbZXymUKRyFuNwT4_Btxj6PRsP-W8PXUr5IDWr', 'ios', '2020-07-19 16:16:16'),
(40, 'd3KgggDs_0YtlrWLkTFQJC:APA91bGQLggydY71-Fe8gVdfOePFhiIAnGfuPxDcuedZnY3NvQtnkIOZLGLAUtUOjAZsYsRR-_FqqgV7C06Yvk6JBJPrl5pGlaoZlzhlp1rSiLY3vge3XS1reScs3neXcLC5Dd3F6oDO', 'ios', '2020-07-19 23:39:05'),
(41, 'eyKeSEntN0jEjFgNQj3ezk:APA91bFLUUrvwzpcFcm5Lzv1mpZk66JTn_COZzWkKD8tLKFmuoTXuuLU5ybKmCcXP8fhAKT3NYfB1ICtNqj-QM2UwkfQZBuOah9hwzNZTQBk6KoHAdq7dAZ3EGYhn2mVhhGhVsOYqsWZ', 'ios', '2020-07-20 01:44:23'),
(42, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 20:02:22'),
(43, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 20:04:48'),
(44, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 20:44:52'),
(45, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 21:06:45'),
(46, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 21:09:26'),
(47, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 21:12:38'),
(48, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:16:59'),
(49, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:32:09'),
(50, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:33:49'),
(51, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:34:31'),
(52, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:35:24'),
(53, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:35:55'),
(54, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:36:32'),
(55, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:37:36'),
(56, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:37:58'),
(57, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:39:53'),
(58, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:41:33'),
(59, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:42:18'),
(60, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:42:38'),
(61, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:43:47'),
(62, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:46:12'),
(63, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:46:40'),
(64, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:47:29'),
(65, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:48:07'),
(66, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:52:29'),
(67, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:53:34'),
(68, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:54:30'),
(69, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:55:00'),
(70, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:00:00'),
(71, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:02:43'),
(72, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:06:45'),
(73, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:07:34'),
(74, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:09:51'),
(75, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:13:46'),
(76, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:14:35'),
(77, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:15:34'),
(78, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:22:14'),
(79, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:36:40'),
(80, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:38:53'),
(81, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:40:18'),
(82, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:42:14'),
(83, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:42:40'),
(84, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:45:36'),
(85, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:46:46'),
(86, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:47:58'),
(87, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:08:57'),
(88, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:10:27'),
(89, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:17:28'),
(90, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:17:39'),
(91, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:18:56'),
(92, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:20:03'),
(93, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:20:24'),
(94, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:24:11'),
(95, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:27:11'),
(96, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:34:48'),
(97, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:07:35'),
(98, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:09:12'),
(99, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:16:35'),
(100, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:23:20'),
(101, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:33:24'),
(102, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:38:12'),
(103, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:39:28'),
(104, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:39:38'),
(105, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:40:27'),
(106, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:42:49'),
(107, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:43:42'),
(108, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:44:31'),
(109, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:44:53'),
(110, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:46:38'),
(111, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:58:27'),
(112, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:00:37'),
(113, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:04:24'),
(114, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:15:07'),
(115, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:17:27'),
(116, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:19:13'),
(117, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:20:32'),
(118, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:21:21'),
(119, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:23:15'),
(120, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:25:01'),
(121, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:26:32'),
(122, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:27:59'),
(123, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:35:08'),
(124, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:50:49'),
(125, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:52:46'),
(126, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:54:15'),
(127, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:57:13'),
(128, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:01:54'),
(129, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:03:19'),
(130, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:05:17'),
(131, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:06:45'),
(132, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:15:05'),
(133, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:17:12'),
(134, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:20:44'),
(135, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:21:34'),
(136, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:23:58'),
(137, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:25:32'),
(138, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:29:42'),
(139, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:32:30'),
(140, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:34:27'),
(141, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:48:35'),
(142, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:49:22'),
(143, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:49:57'),
(144, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:50:27'),
(145, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:53:35'),
(146, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:54:57'),
(147, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:56:13'),
(148, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:58:19'),
(149, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:04:26'),
(150, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:08:42'),
(151, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:10:33'),
(152, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:12:29'),
(153, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:14:29'),
(154, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:14:59'),
(155, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:20:13'),
(156, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:24:48'),
(157, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:28:35'),
(158, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:34:12'),
(159, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:35:45'),
(160, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:37:25'),
(161, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:38:02'),
(162, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:38:11'),
(163, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 18:46:17'),
(164, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 18:52:14'),
(165, '', 'android', '2020-07-21 19:08:42'),
(166, '', 'android', '2020-07-21 19:19:13'),
(167, '', 'android', '2020-07-21 19:20:56'),
(168, 'elc_coWbxWU:APA91bG2v9JMHtmEE3rpxRN0Et0YKKpijbZMLhzf11IwFY15VlIeQY5Ve7e1HpI2KsKwA38X38TS0Y1Qe1eeZc0IA_i02BoiHAb2Wn6W5NGiBzbvX3qLCimErF417fE-L1jpNoDpIgAp', 'android', '2020-07-21 20:45:24'),
(169, '', 'android', '2020-07-21 21:10:27'),
(170, '', 'android', '2020-07-21 21:11:19'),
(171, '', 'android', '2020-07-21 21:14:15'),
(172, 'cwt_7nt25C0:APA91bHMs9aP2zcinxIlG5P7DyF8kzRNVQ9VxYT5hZ3PJC9-sSlqVSCGQIiDfaST3sscwA1jjlq6zm-8nCFQyYPWIneY3BEIsiChDxWd-T2yp30Cx5frBT2iMHbLN8Bx50aaqW4W-v56', 'android', '2020-07-22 02:46:25'),
(173, 'd1knWfaLstk:APA91bFeqOoxMIp-zDWgzvflvMGghshy1nbGKhGMxvKUtLVM4IRCdSX0yCtUG86L5kuflVOde3cSwq0ukfJjMZI_iLlCV0kTJVjy7IkgA3KSoxEEK8PrcCPnaHD14HaFydyznaXduDtx', 'android', '2020-07-22 02:46:36'),
(174, 'c1Za-icThyk:APA91bEHK3f_cQuJvuqC7C6al9R-_nISisgB4xdrkDlC_xvub2BHch4ElwwdA1qYgCGUKihMBs3qQ1KFvsa6j_FL62gy3NiFHuEt5EhTlDhDLbBJ2-Pa-ab13C2JH6IdtH1b4qx7cNKS', 'android', '2020-07-22 02:53:24'),
(175, 'c1Za-icThyk:APA91bEHK3f_cQuJvuqC7C6al9R-_nISisgB4xdrkDlC_xvub2BHch4ElwwdA1qYgCGUKihMBs3qQ1KFvsa6j_FL62gy3NiFHuEt5EhTlDhDLbBJ2-Pa-ab13C2JH6IdtH1b4qx7cNKS', 'android', '2020-07-22 02:57:33'),
(176, '', 'android', '2020-07-22 11:54:00'),
(177, 'dkh4Dz3Tfko:APA91bHewMknvTkzAqyCY7x_KAkAlT3ibbxVFgr6-Q6-sPDiwqfDGva6MjkeghbwV4VYx_Fy9L6u_8_zQMCwC-pMIrZ5oxXToDCRFZMTo3eB-rHJN1zQB3HZOZEpR0UN74BeWY8KhBWC', 'android', '2020-07-22 16:47:36'),
(178, 'fuRiQRT_c7c:APA91bHofv0UWCoqcB7Fa8aLKB9jZXddru51ycrX4rkX_gEl1jxbHq8GafA8cIXuE2cBqmjd2oexnMDpCndSfLRJBjQaNhCBo8pgm61t1nVHNhN4tG8mfAAUkzPtshuhIgmrllRNl4X8', 'android', '2020-07-22 17:59:09'),
(179, 'fuRiQRT_c7c:APA91bHofv0UWCoqcB7Fa8aLKB9jZXddru51ycrX4rkX_gEl1jxbHq8GafA8cIXuE2cBqmjd2oexnMDpCndSfLRJBjQaNhCBo8pgm61t1nVHNhN4tG8mfAAUkzPtshuhIgmrllRNl4X8', 'android', '2020-07-22 18:00:26'),
(180, 'dkh4Dz3Tfko:APA91bHewMknvTkzAqyCY7x_KAkAlT3ibbxVFgr6-Q6-sPDiwqfDGva6MjkeghbwV4VYx_Fy9L6u_8_zQMCwC-pMIrZ5oxXToDCRFZMTo3eB-rHJN1zQB3HZOZEpR0UN74BeWY8KhBWC', 'android', '2020-07-22 18:52:41'),
(181, 'dkh4Dz3Tfko:APA91bHewMknvTkzAqyCY7x_KAkAlT3ibbxVFgr6-Q6-sPDiwqfDGva6MjkeghbwV4VYx_Fy9L6u_8_zQMCwC-pMIrZ5oxXToDCRFZMTo3eB-rHJN1zQB3HZOZEpR0UN74BeWY8KhBWC', 'android', '2020-07-23 00:07:33'),
(182, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:44:03'),
(183, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:44:17'),
(184, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:44:24'),
(185, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:48:43'),
(186, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:50:06'),
(187, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:50:44'),
(188, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:51:56'),
(189, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:53:56'),
(190, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:55:03'),
(191, '', 'android', '2020-07-23 03:23:08'),
(192, '', 'android', '2020-07-23 03:33:46'),
(193, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-07-23 11:37:14'),
(194, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-07-23 15:47:48'),
(195, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-07-23 16:08:53'),
(196, 'd4HcJqTe0kmjpAKT86C_yE:APA91bF47kL9aGMS3SP9nzTyjHLKjrYyt0og3FoMBcXhBhyYnF3aK0h8knl9sG7bkC8lNMfKq78C4votQ59eo-RNDAaUKJ38gWcp4hbU8BH1MCPw3kDRJ5YgjZEnd66waN5K0tCD5_w_', 'ios', '2020-07-26 11:53:27'),
(197, 'fPx4coVBckQyoB75y8Wth2:APA91bGv-XHtYQoCY2jDu1SITO6la6wa6BB9eeOEEENQWRHHhghOLudLliyf7QzlGWcJNZ_lbwFBE22P8JcWHurtyyxiK5aZ5-5KgH8GL2QIW2v1AjqnSvBRvd7Nwwmg1IKAucA743R-', 'ios', '2020-07-26 12:08:24'),
(198, 'd44vmR8GSkJpit30c-9mrY:APA91bE3iahwsCGzWkAHjTBaMMgMDyVEgwiVxOB8Cb6S8paL-lFqCDIjRK-fSvCJvni6kjRLxH6dKwKeZ3u-zZH0QP90bng0r8lDsVTIpNg69JRpnRZpsx2UJrPakpIOWO00ArEMsj4q', 'ios', '2020-07-26 12:13:21'),
(199, 'fuRiQRT_c7c:APA91bHofv0UWCoqcB7Fa8aLKB9jZXddru51ycrX4rkX_gEl1jxbHq8GafA8cIXuE2cBqmjd2oexnMDpCndSfLRJBjQaNhCBo8pgm61t1nVHNhN4tG8mfAAUkzPtshuhIgmrllRNl4X8', 'android', '2020-07-26 12:43:05'),
(200, 'csrqol9gTkT3ieLkB49sCF:APA91bHi_GwXAdv6wxG-1NvuD1Io48XG1NEuLsRyhSX61AHxVKp6keFcsoKhbEPmOj4bAb0Hp3IW9osLPbJLVzHqsCMJ8L0GtK7ETdat_B_S1URngk-mcyrYsaUv7E_AdqWXlWSqKetD', 'ios', '2020-07-27 18:16:15'),
(201, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-29 00:29:19'),
(202, '', 'android', '2020-07-29 10:00:09'),
(203, '', 'android', '2020-07-29 10:03:35'),
(204, '', 'android', '2020-08-06 10:28:39'),
(205, '', 'android', '2020-08-06 10:31:24'),
(206, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-08-08 19:47:52'),
(207, 'ehHiFnf070ouurQUr6Lpdi:APA91bEcWtY6SaL5O4iGbjBUxvzSRCiOV0RUjEKCYn1qqRH0TOXtgW83T0Wca9rkruvPdupUebMkQdrJj8R-cLJ6hNId7GN7gT2WOsKvJZdMCH430Wo7onboRBAmUeth0LsCBXnWOid8', 'ios', '2020-08-09 11:11:12'),
(208, 'cDsu_tz9kK4:APA91bEOfCOBMgqcWBeBlLrIjtO1f9I-W4OUszBpHqO7lYYTtPrIMBsonJ-_qTDm1DFo7syqAXS52J9bzz1zuDZKPWDhYsOPxdiY9XboeLrpOatfNJgv77pYy9i4KuDJVSHHSX5Yyrfl', 'android', '2020-08-09 17:08:10'),
(209, 'cDsu_tz9kK4:APA91bEOfCOBMgqcWBeBlLrIjtO1f9I-W4OUszBpHqO7lYYTtPrIMBsonJ-_qTDm1DFo7syqAXS52J9bzz1zuDZKPWDhYsOPxdiY9XboeLrpOatfNJgv77pYy9i4KuDJVSHHSX5Yyrfl', 'android', '2020-08-09 17:10:09'),
(210, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-08-16 12:33:37'),
(211, 'eOo1rG0L6xc:APA91bEBTCoEwJ2fRTaXXIUsw9hPxQTNabMSPDBFhZqVBdjynRmHSl2k9JVe2tBipbLMSBRSL7jHEev_DgCaebwdHSMOZbBn-5QOVf7JKIHz-qXtZ9ABzNtCJh5pj9dfMTRVajn5GqTf', 'android', '2020-08-17 17:53:26'),
(212, 'eOo1rG0L6xc:APA91bEBTCoEwJ2fRTaXXIUsw9hPxQTNabMSPDBFhZqVBdjynRmHSl2k9JVe2tBipbLMSBRSL7jHEev_DgCaebwdHSMOZbBn-5QOVf7JKIHz-qXtZ9ABzNtCJh5pj9dfMTRVajn5GqTf', 'android', '2020-08-17 17:53:45'),
(213, 'eOo1rG0L6xc:APA91bEBTCoEwJ2fRTaXXIUsw9hPxQTNabMSPDBFhZqVBdjynRmHSl2k9JVe2tBipbLMSBRSL7jHEev_DgCaebwdHSMOZbBn-5QOVf7JKIHz-qXtZ9ABzNtCJh5pj9dfMTRVajn5GqTf', 'android', '2020-08-17 18:59:19'),
(214, 'eOo1rG0L6xc:APA91bEBTCoEwJ2fRTaXXIUsw9hPxQTNabMSPDBFhZqVBdjynRmHSl2k9JVe2tBipbLMSBRSL7jHEev_DgCaebwdHSMOZbBn-5QOVf7JKIHz-qXtZ9ABzNtCJh5pj9dfMTRVajn5GqTf', 'android', '2020-08-17 18:59:47'),
(215, 'eCzoDdyYB_M:APA91bEiQtUoXvrwhssFHWO-AOZjbhpUHInPihKCP9MVugErjfNkP7KtxYavgxx9oHifFRJA310hJaYuqkV4_aYFp3KyjjobZkqHWLBIEgun6EPJS15tqBH80nxgMA0pSyT5HRLm5yUV', 'android', '2020-08-17 19:48:07'),
(216, '', 'android', '2020-08-17 20:46:59'),
(217, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-08-19 16:36:34'),
(218, '', 'android', '2020-08-19 20:42:34'),
(219, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-08-20 15:26:04'),
(220, 'easybBdNrgs:APA91bEanzsdtMuypFDfX0FbDpss_jVgBAF5dn7MJUbiVzHtRodW6bCtkqNTY5t7W3DYzc_U4-OnYpGpu5eGxCDrZFEGSNSvng-bj5mxQO-XTm8TlLrjj8OdeKI2aE1UNUODohcJ5YFv', 'android', '2020-08-20 18:15:30'),
(221, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-08-24 17:15:19'),
(222, 'epPGUXzREk-UpQcBdkkkj7:APA91bHo5pHMhaz3_hgz43FBnmjF9wmrQpIBCS4snOa0c5JT6v9YUO8OGqiwb3cqnLSgHVOGZJXpv0DscpGQV92c3KRI-4Qh1lQYlYo7dnHgzkE6llNqgzCZF5vgEYe8v4n_K_AEHBkK', 'ios', '2020-08-25 03:36:20'),
(223, 'fwBWlKkKvCU:APA91bG6aQ4heLSAYRUNURxthPOv7JLIbRiDb2qI-4zqKnX4eaoi1R0umbjt_2j71iunX_wnblroKH9pu-KiDJcFmdqr5b4QJkObasTWCZd3CAxRrmmPEW0B9DrTq8NNv12IDxvJZwwF', 'android', '2020-09-01 13:31:50'),
(224, 'fwBWlKkKvCU:APA91bG6aQ4heLSAYRUNURxthPOv7JLIbRiDb2qI-4zqKnX4eaoi1R0umbjt_2j71iunX_wnblroKH9pu-KiDJcFmdqr5b4QJkObasTWCZd3CAxRrmmPEW0B9DrTq8NNv12IDxvJZwwF', 'android', '2020-09-01 13:56:06'),
(225, 'fwBWlKkKvCU:APA91bG6aQ4heLSAYRUNURxthPOv7JLIbRiDb2qI-4zqKnX4eaoi1R0umbjt_2j71iunX_wnblroKH9pu-KiDJcFmdqr5b4QJkObasTWCZd3CAxRrmmPEW0B9DrTq8NNv12IDxvJZwwF', 'android', '2020-09-01 14:34:29'),
(226, 'fwBWlKkKvCU:APA91bG6aQ4heLSAYRUNURxthPOv7JLIbRiDb2qI-4zqKnX4eaoi1R0umbjt_2j71iunX_wnblroKH9pu-KiDJcFmdqr5b4QJkObasTWCZd3CAxRrmmPEW0B9DrTq8NNv12IDxvJZwwF', 'android', '2020-09-01 15:14:05'),
(227, 'ciGR8ZCERl0:APA91bENmZw5pDnYd7jyxsb9auQAzsy0hTOWlsL-cvh92tk4bmzfjp73wX8d7--AKiWWzMDIQom08Sl-dsOFGxujQTl9wsQLHcvCG-IszIaLU4zA0N1Lm3ElRVotpL0nGJTW2jxWjwWq', 'android', '2020-09-03 00:55:35'),
(228, 'ciGR8ZCERl0:APA91bENmZw5pDnYd7jyxsb9auQAzsy0hTOWlsL-cvh92tk4bmzfjp73wX8d7--AKiWWzMDIQom08Sl-dsOFGxujQTl9wsQLHcvCG-IszIaLU4zA0N1Lm3ElRVotpL0nGJTW2jxWjwWq', 'android', '2020-09-03 00:55:43'),
(229, '', 'android', '2020-09-04 08:29:01'),
(230, '', 'android', '2020-09-04 08:30:24'),
(231, '', 'android', '2020-09-04 08:30:43'),
(232, '', 'android', '2020-09-04 08:32:25'),
(233, '', 'android', '2020-09-06 09:38:26'),
(234, '', 'android', '2020-09-06 09:42:28'),
(235, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-09-06 16:36:42'),
(236, 'cA1VrjWkzEswk5Y9kQs3EI:APA91bF10k0o4cCKQAy70q5G-44jYM3lpILjynRrOTrfMV6ZihX1JLq2C0BYxkrSNPwdd1myGiR_fe5o_CNMZdODxLua5VKRwF9McjGXmu2jfJFpBFGH-_qoWHH0k5i_Vmvuz43WyHes', 'ios', '2020-09-12 18:42:04'),
(237, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-16 00:23:21'),
(238, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-16 00:23:25'),
(239, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-16 00:23:49'),
(240, '', 'android', '2020-09-16 01:34:43'),
(241, '', 'android', '2020-09-16 01:46:03'),
(242, '', 'android', '2020-09-16 01:47:38'),
(243, 'fdSxCr6LME_wiWF9a24JRf:APA91bEV-h_KQKYbfURCBHMHK9gver-w0xKx3_-7fMEXWPf9Ir83Pz1fG_gRAoVleKatbw9bY8VPlGCavKHvfloYzyAHSlfYkq4CJ_hPbeohtNJ_CCn1SFleK8p9-v2_5MNU3kqtt_o_', 'ios', '2020-09-16 14:34:53'),
(244, '', '', '2020-09-17 11:57:20'),
(245, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-17 12:05:22'),
(246, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-17 12:06:28'),
(247, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-17 12:06:34'),
(248, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-17 12:15:44'),
(249, '', 'android', '2020-09-17 12:20:33'),
(250, '', 'android', '2020-09-17 12:22:50'),
(251, 'frTT6R_QUqE:APA91bH8NQjS_q0tTpnGG3ol_Q3iOlkj7TQyKo-8RGg9WZwaoWg__V-TrJ2dio6i42FF9ZM76AVaWAqCeXdNh2rAtfp-jwB_T4DmSJrRORbPWAEL8sAHIhaIxiZGwnkjnRAgAkwDXKkS', 'android', '2020-09-17 12:22:55'),
(252, 'frTT6R_QUqE:APA91bH8NQjS_q0tTpnGG3ol_Q3iOlkj7TQyKo-8RGg9WZwaoWg__V-TrJ2dio6i42FF9ZM76AVaWAqCeXdNh2rAtfp-jwB_T4DmSJrRORbPWAEL8sAHIhaIxiZGwnkjnRAgAkwDXKkS', 'android', '2020-09-17 12:24:02'),
(253, 'dBlbxoFAxms:APA91bHX5_4uufu9kIgAe--hAW_y999daJNXcccu-lswavW3Fi3lvCdp91uYcewbnq-89EoSJnffF1GowIF4gjsg0rCHjdCV9M6tNLsRWA1mwKonP-sTGm-1iWdb_2wL68A_F2wPrFXD', 'android', '2020-09-17 12:31:16'),
(254, 'dBlbxoFAxms:APA91bHX5_4uufu9kIgAe--hAW_y999daJNXcccu-lswavW3Fi3lvCdp91uYcewbnq-89EoSJnffF1GowIF4gjsg0rCHjdCV9M6tNLsRWA1mwKonP-sTGm-1iWdb_2wL68A_F2wPrFXD', 'android', '2020-09-17 12:31:37'),
(255, 'eODigwI96dY:APA91bFxyLL7jeCdM5wOvhaXNdc7M6wOYcWZo5r9Rli1uO8wXeLkAxfED70Yc3JI5KQ2rqU7zYG0EiUvCQmG_qnZbupwGKSbXg259aIlwrnETr4r9XS-zyLflmK2ehv6bXe0fwwIUr8J', 'android', '2020-09-17 22:03:19'),
(256, 'eODigwI96dY:APA91bFxyLL7jeCdM5wOvhaXNdc7M6wOYcWZo5r9Rli1uO8wXeLkAxfED70Yc3JI5KQ2rqU7zYG0EiUvCQmG_qnZbupwGKSbXg259aIlwrnETr4r9XS-zyLflmK2ehv6bXe0fwwIUr8J', 'android', '2020-09-19 10:09:22'),
(257, 'ccpRvxS7nes:APA91bGzwEJ04Kw7_Rgou8vm2BatcEMPsJlr3qLh9gJ5-zQCaNtveGYo6JH6S40hAgRAUUjfTmOq1PiCQPklQn9IiiVCidt1lBN4Zr2aoUJRzVKyGCArbFrapJye3UAX_Xw8bhdOEsb-', 'android', '2020-09-19 10:56:23'),
(258, 'ccpRvxS7nes:APA91bGzwEJ04Kw7_Rgou8vm2BatcEMPsJlr3qLh9gJ5-zQCaNtveGYo6JH6S40hAgRAUUjfTmOq1PiCQPklQn9IiiVCidt1lBN4Zr2aoUJRzVKyGCArbFrapJye3UAX_Xw8bhdOEsb-', 'android', '2020-09-19 11:21:21'),
(259, 'ccpRvxS7nes:APA91bGzwEJ04Kw7_Rgou8vm2BatcEMPsJlr3qLh9gJ5-zQCaNtveGYo6JH6S40hAgRAUUjfTmOq1PiCQPklQn9IiiVCidt1lBN4Zr2aoUJRzVKyGCArbFrapJye3UAX_Xw8bhdOEsb-', 'android', '2020-09-19 15:56:04'),
(260, 'ccpRvxS7nes:APA91bGzwEJ04Kw7_Rgou8vm2BatcEMPsJlr3qLh9gJ5-zQCaNtveGYo6JH6S40hAgRAUUjfTmOq1PiCQPklQn9IiiVCidt1lBN4Zr2aoUJRzVKyGCArbFrapJye3UAX_Xw8bhdOEsb-', 'android', '2020-09-20 09:48:01'),
(261, 'd7rBQmScPvE:APA91bFwg3IuiigOOQ3nnJKlRT12EgXYoqtk7Rn6C1rguqg921hjOvaSMP5rATVamAcnUwZAqWCVeglEjOkTimJRgHo3QX5KEJFy9t02ehghxEq3LYv7K7AHHDJ1BAvCpY85a7tp3znb', 'android', '2020-09-20 15:41:07'),
(262, 'd7rBQmScPvE:APA91bFwg3IuiigOOQ3nnJKlRT12EgXYoqtk7Rn6C1rguqg921hjOvaSMP5rATVamAcnUwZAqWCVeglEjOkTimJRgHo3QX5KEJFy9t02ehghxEq3LYv7K7AHHDJ1BAvCpY85a7tp3znb', 'android', '2020-09-20 15:42:02'),
(263, 'eODigwI96dY:APA91bFxyLL7jeCdM5wOvhaXNdc7M6wOYcWZo5r9Rli1uO8wXeLkAxfED70Yc3JI5KQ2rqU7zYG0EiUvCQmG_qnZbupwGKSbXg259aIlwrnETr4r9XS-zyLflmK2ehv6bXe0fwwIUr8J', 'android', '2020-09-21 22:02:07'),
(264, 'ccpRvxS7nes:APA91bGzwEJ04Kw7_Rgou8vm2BatcEMPsJlr3qLh9gJ5-zQCaNtveGYo6JH6S40hAgRAUUjfTmOq1PiCQPklQn9IiiVCidt1lBN4Zr2aoUJRzVKyGCArbFrapJye3UAX_Xw8bhdOEsb-', 'android', '2020-09-24 14:03:15'),
(265, 'dl464-tQ4UA:APA91bFRVQkTCkJVzd7SxPBjtkWGcBPnxyaU84C181yqLqp82D49_WMIrMYpfm8Xpoi8TY2Uuc3wegKbYFLMyNJzshs6I_GIwMiRhqeZkp96pXQ-zIOWqms5zEQrevY0TLs8PfWwc8UB', 'android', '2020-09-26 01:26:49'),
(266, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-10-20 12:36:59'),
(267, 'tokn', 'android', '2020-10-20 16:33:45'),
(268, 'tokn', 'android', '2020-10-20 16:35:42'),
(269, 'tokn', 'android', '2020-10-20 16:35:59'),
(270, 'tokn', 'android', '2020-10-20 16:37:15'),
(271, 'fYU0P0QY50eArxXg7ger4g:APA91bF4oLePkd7rXpj4I-Ygax5ZNgFlmnegynNHbXGHpwcPJf_LfYJPVX3MS-l7QTQctufn5tDpG5c5eBF4xlHZoFrPdDLESWxH9lwyh1aOPIGCBL8alPcRLB0TjMcWZhMmvFvQkEov', 'ios', '2020-10-20 23:39:17'),
(272, 'cQc58H43JUwpq4p7-i4_4X:APA91bENSDp1rw7DBwvJHaNVsSC6KUPv54EvNn77YofZ3mrpOoGipgZ1qk790ACcte1kOihRNVGQLVxo7K14A7r9R6HtOcbg0bGaW7oqNUL83dYphof62P7vCVsM-ZosWA2zSt4LP8WZ', 'ios', '2020-10-21 01:33:33'),
(273, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-10-21 15:01:32'),
(274, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-10-21 15:02:21'),
(275, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-10-21 17:12:35'),
(276, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-10-21 17:16:45'),
(277, 'fYU0P0QY50eArxXg7ger4g:APA91bF4oLePkd7rXpj4I-Ygax5ZNgFlmnegynNHbXGHpwcPJf_LfYJPVX3MS-l7QTQctufn5tDpG5c5eBF4xlHZoFrPdDLESWxH9lwyh1aOPIGCBL8alPcRLB0TjMcWZhMmvFvQkEov', 'ios', '2020-10-22 00:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `engineering_drawing`
--

CREATE TABLE `engineering_drawing` (
  `id` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `subject_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_ar` text CHARACTER SET utf8 DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT '  ',
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title_en`, `title_ar`, `subject_en`, `subject_ar`, `photo`, `date`) VALUES
(139, 'Qui doloribus quod s', 'Qui sed odio volupta', 'Illum in culpa labore atque dolor ratione', 'Fugit molestiae eum ipsam sed', 'http://www.berry74.com/new/system/api/uploads/News/139/الإستضافة والسيرفرات.jpg', '2020-10-18 14:35:45'),
(140, 'Excepturi adipisci q', 'Dolorum qui cillum v', 'Veniam deserunt velit et consectetur ut et officiis amet aut ab itaque quas voluptatibus doloribus sit', 'In sed velit harum rerum ut explicabo Unde culpa ab nostrud ex veritatis ipsum consectetur', 'http://www.berry74.com/new/system/api/uploads/News/140/جوجل ads.jpg', '2020-10-18 14:45:23'),
(141, 'Tempora in ad ut ass', 'عنوان باللغه العربيه', 'Adipisicing fugiat duis nihil minima sed cupiditate', 'الموضوع باللغه العربيه', 'http://www.berry74.com/new/system/api/uploads/News/141/التسويق الإلكترونى.jpg', '2020-10-21 12:26:20'),
(142, 'Non aliquip incidunt', 'عنوان باللغه العربيه', 'Magnam ut vero ea eiusmod blanditiis ullam perferendis qui nesciunt eius consequuntur repudiandae quidem facere', 'الموضوع باللغه العربيه', 'http://www.berry74.com/new/system/api/uploads/News/142/التصوير.jpg', '2020-10-21 12:26:37'),
(143, 'Commodi eius non rer', 'عنوان باللغه العربيه', 'Occaecat animi molestias quisquam sequi qui rem soluta ea pariatur Do quia magni neque quisquam aspernatur deserunt officia placeat', 'الموضوع باللغه العربيه', 'http://www.berry74.com/new/system/api/uploads/News/143/الرسوم المتحركة.jpg', '2020-10-21 12:26:57'),
(144, 'Rerum voluptas sint', 'عنوان باللغه العربيه', 'At doloribus fugiat rem aut aliquid ut qui', 'مقال باللغه العربيه', 'http://www.berry74.com/new/system/api/uploads/News/144/ورش العمل.jpg', '2020-10-21 16:43:45');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `project_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_name_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `project_desc_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_desc_ar` text CHARACTER SET utf8 DEFAULT NULL,
  `project_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT '  ',
  `client_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_name_en`, `project_name_ar`, `project_desc_en`, `project_desc_ar`, `project_image`, `client_id`, `date`) VALUES
(140, 'Wade Campbell', 'الاسم باللغه العربيه', 'Provident vel quia ipsam error ad sed aut voluptatem cum et fsdf', 'التفاصيل باللغه العربيهfsdf', 'http://www.berry74.com/new/system/api/uploads/Projects/140/تطبيقات سطح المكتب.jpg', 42, '2020-10-20 12:11:25'),
(141, 'Dillon Dillard', 'الاسم باللغه العربيه', 'Quam ab qui ea iure quia aut odit sed repudiandae in', 'التفاصيل باللغه العربيه', 'http://www.berry74.com/new/system/api/uploads/Projects/141/الإستضافة والسيرفرات.jpg', 38, '2020-10-20 12:14:18'),
(144, 'Stephen Johns', 'الاسم بالعربي', 'In maiores nulla ratione qui consectetur commodo quis alias ut saepe ut deleniti qui quis beatae ex velit adipisicing', 'تفاصيل باللغه العربيه', 'http://www.berry74.com/new/system/api/uploads/Projects/144/1603198883.jpg', 44, '2020-10-20 16:01:22'),
(145, 'Noble Vargas', 'الاسم بالعربيه', 'Occaecat cum deleniti sint mollit hic sit ea nulla est veritatis esse aute illo nostrud', 'تفاصيل اللغه العربيه', 'http://www.berry74.com/new/system/api/uploads/Projects/145/1603198912.jpg', 39, '2020-10-20 16:01:52'),
(147, 'Daquan Simon', 'الاسم بالعربيه', 'Quis porro reprehenderit blanditiis labore ex enim sunt aliquip repellendus Esse excepteur molestiae sint excepteur enim', 'تفاصيل اللغه العربيه', 'http://www.berry74.com/new/system/api/uploads/Projects/147/1603198948.jpg', 39, '2020-10-20 16:02:27'),
(148, 'Shoshana Simmons', 'الاسم بالعربيه', 'Porro sunt amet officiis nesciunt non amet doloribus et non inventore iusto officia aperiam reprehenderit magni impedit', 'تفاصيل اللغه العربيه', 'http://www.berry74.com/new/system/api/uploads/Projects/148/1603198983.jpg', 39, '2020-10-20 16:03:02'),
(149, 'Evangeline Eaton', 'الاسم بالعربيه', 'Similique ipsum qui delectus adipisicing quam asperiores fuga Modi enim ipsum mollitia veritatis error voluptatibus voluptates accusantium consectetur in', 'تفاصيل اللغه العربيه', 'http://www.berry74.com/new/system/api/uploads/Projects/149/1603199020.jpg', 39, '2020-10-20 16:03:40'),
(150, 'Leilani Martin', 'اسم المشروع باللغه العربيه', 'Molestias nihil debitis velit magnam sint quis dolores sequi eveniet porro ratione sit reprehenderit quos iusto', 'تفاصيل عن المشروع باللغه العربيه', 'http://www.berry74.com/new/system/api/uploads/Projects/150/1603288014.jpg', 49, '2020-10-21 16:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `project_drawing`
--

CREATE TABLE `project_drawing` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `project_drawing`
--

INSERT INTO `project_drawing` (`id`, `project_id`, `image`, `date_added`) VALUES
(138, 140, 'http://www.berry74.com/new/system/api/uploads/Engineering_Drawing/138/التسويق الإلكترونى.jpg', '2020-10-20 15:17:19'),
(139, 140, 'http://www.berry74.com/new/system/api/uploads/Engineering_Drawing/139/التصوير.jpg', '2020-10-20 15:17:19'),
(140, 140, 'http://www.berry74.com/new/system/api/uploads/Engineering_Drawing/140/الرسوم المتحركة.jpg', '2020-10-20 15:17:19'),
(141, 140, 'http://www.berry74.com/new/system/api/uploads/Engineering_Drawing/141/انتاج فيديو.jpg', '2020-10-20 15:17:19'),
(142, 140, 'http://www.berry74.com/new/system/api/uploads/Engineering_Drawing/142/رسائل.jpg', '2020-10-20 15:17:19'),
(143, 140, 'http://www.berry74.com/new/system/api/uploads/Engineering_Drawing/143/طباعة.jpg', '2020-10-20 15:17:19'),
(144, 140, 'http://www.berry74.com/new/system/api/uploads/Engineering_Drawing/144/وسائل التواصل الاجتماعي.jpg', '2020-10-20 15:17:19'),
(145, 150, 'http://www.berry74.com/new/system/api/uploads/Engineering_Drawing/145/الإستضافة والسيرفرات.jpg', '2020-10-21 14:21:05'),
(146, 150, 'http://www.berry74.com/new/system/api/uploads/Engineering_Drawing/146/الدعم الفنى.jpg', '2020-10-21 14:21:05'),
(147, 150, 'http://www.berry74.com/new/system/api/uploads/Engineering_Drawing/147/تطبيقات سطح المكتب.jpg', '2020-10-21 14:21:05'),
(148, 150, 'http://www.berry74.com/new/system/api/uploads/Engineering_Drawing/148/جوجل ads.jpg', '2020-10-21 14:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `project_finishing`
--

CREATE TABLE `project_finishing` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `in_desc_en` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `in_desc_ar` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `out_desc_en` text CHARACTER SET utf8 DEFAULT NULL,
  `out_desc_ar` text CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_finishing`
--

INSERT INTO `project_finishing` (`id`, `project_id`, `in_desc_en`, `in_desc_ar`, `out_desc_en`, `out_desc_ar`, `date`) VALUES
(13, 140, 'Sit reprehenderit illo eveniet dicta autem mollitia rerum quia voluptatem consequuntur earum incididunt praesentium ut mollitia pariatur Saepe eius', 'تفاصيل باللغه العربيه', 'Perspiciatis fugiat nisi cumque adipisci sint aut aut quibusdam consequuntur facilis rerum sit molestiae temporibus labore ut et officiis', 'تفاصيل باللغه العربيه', '2020-10-20 18:21:10'),
(14, 140, 'Nostrum magna magna dolores nostrud sint deleniti soluta nostrum iure recusandae Possimus ut', 'تفاصيل باللغه العربيه', 'Impedit ea ipsam cupidatat quia quas', 'تفاصيل باللغه العربيه', '2020-10-20 18:21:24'),
(15, 140, 'Maiores consequat Fuga Consequatur irure sunt provident voluptatem molestiae velit', 'تفاصيل باللغه العربيه', 'Est incididunt fugit laudantium enim', 'تفاصيل باللغه العربيه', '2020-10-20 18:21:32'),
(16, 140, 'In veniam quia sunt omnis deserunt rerum fuga Exercitation dolor in sit', 'تفاصيل باللغه العربيه', 'Explicabo Minima temporibus assumenda delectus tempor cupidatat nesciunt aliquam sit adipisci cum vel voluptas maxime et totam totam voluptatem', 'تفاصيل باللغه العربيه', '2020-10-20 18:21:43'),
(17, 140, 'Fuga Voluptas et non autem vitae in vero eaque vitae earum odio eligendi ut ea repudiandae aut', 'تفاصيل باللغه العربيه', 'Nihil omnis placeat accusamus dolor et in dolor debitis veritatis recusandae Neque quibusdam fuga Omnis', 'تفاصيل باللغه العربيه', '2020-10-20 18:21:56'),
(18, 150, 'Dolor ad repudiandae aut cupidatat', 'تفاصيل عن التشطيب الداخلي باللغه العربيه', 'Ad quibusdam et et quia sit recusandae Ex eos autem assumenda vel neque voluptas', 'تفاصيل عن التشطيب الخارجي باللغه العربيه', '2020-10-21 16:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `project_images`
--

CREATE TABLE `project_images` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `project_images`
--

INSERT INTO `project_images` (`id`, `project_id`, `image`, `date_added`) VALUES
(127, 140, 'http://www.berry74.com/new/system/api/uploads/project_images/127/التسويق الإلكترونى.jpg', '2020-10-20 15:06:58'),
(128, 140, 'http://www.berry74.com/new/system/api/uploads/project_images/128/التصوير.jpg', '2020-10-20 15:06:58'),
(129, 140, 'http://www.berry74.com/new/system/api/uploads/project_images/129/الرسوم المتحركة.jpg', '2020-10-20 15:06:58'),
(130, 140, 'http://www.berry74.com/new/system/api/uploads/project_images/130/رسائل.jpg', '2020-10-20 15:06:58'),
(131, 140, 'http://www.berry74.com/new/system/api/uploads/project_images/131/طباعة.jpg', '2020-10-20 15:06:58'),
(132, 140, 'http://www.berry74.com/new/system/api/uploads/project_images/132/وسائل التواصل الاجتماعي.jpg', '2020-10-20 15:06:58'),
(133, 150, 'http://www.berry74.com/new/system/api/uploads/project_images/133/التسويق الإلكترونى.jpg', '2020-10-21 14:17:53'),
(134, 150, 'http://www.berry74.com/new/system/api/uploads/project_images/134/التصوير.jpg', '2020-10-21 14:17:53'),
(135, 150, 'http://www.berry74.com/new/system/api/uploads/project_images/135/الرسوم المتحركة.jpg', '2020-10-21 14:17:53'),
(136, 150, 'http://www.berry74.com/new/system/api/uploads/project_images/136/رسائل.jpg', '2020-10-21 14:17:53'),
(137, 150, 'http://www.berry74.com/new/system/api/uploads/project_images/137/طباعة.jpg', '2020-10-21 14:17:53'),
(138, 150, 'http://www.berry74.com/new/system/api/uploads/project_images/138/وسائل التواصل الاجتماعي.jpg', '2020-10-21 14:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `project_location`
--

CREATE TABLE `project_location` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_location`
--

INSERT INTO `project_location` (`id`, `project_id`, `location`, `date`) VALUES
(14, 140, 'https://goo.gl/maps/DBx8Ui4CBkcfuJii6', '2020-10-20 18:29:32'),
(15, 140, 'https://goo.gl/maps/iBXiL9qkgneJw8rq5', '2020-10-20 18:29:42'),
(16, 141, 'https://goo.gl/maps/tAtLUD6DXCapdmxEA', '2020-10-20 18:29:50'),
(17, 144, 'https://goo.gl/maps/QMgNfTSHxoJ6cdFr8', '2020-10-20 18:29:59'),
(18, 145, 'https://goo.gl/maps/tAtLUD6DXCapdmxEA', '2020-10-20 18:30:09'),
(19, 150, 'https://goo.gl/maps/tAtLUD6DXCapdmxEA', '2020-10-21 16:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `project_service`
--

CREATE TABLE `project_service` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `desc_en` text CHARACTER SET utf8 DEFAULT NULL,
  `desc_ar` text CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_service`
--

INSERT INTO `project_service` (`id`, `project_id`, `desc_en`, `desc_ar`, `date`) VALUES
(9, 148, 'Culpa voluptatum voluptas sit non illo', 'تفاصيل باللفه العربيه', '2020-10-20 16:57:50'),
(10, 140, 'Anim saepe nulla qui consequuntur autem quia sint aliquip', 'تفاصيل باللغه العربيه', '2020-10-20 16:58:02'),
(11, 140, 'In quo a quia doloremque sint sunt dolorum asperiores dolor ut irure minim veritatis repellendus Aliqua Fugiat enim cillum', 'تفاصيل باللغه العربيه', '2020-10-20 16:58:06'),
(12, 140, 'Veritatis nesciunt quas vel nemo pariatur Et rerum quasi maxime minima beatae ut amet', 'تفاصيل باللغه العربيه', '2020-10-20 16:58:13'),
(13, 140, 'Rerum omnis duis voluptas hic animi sint debitis quo voluptates nihil sunt qui voluptates blanditiis rem animi cillum omnis porro', 'تفاصيل باللغه العربيه', '2020-10-20 16:58:18'),
(14, 140, 'Exercitationem atque proident quia aliqua Iste', 'تفاصيل باللغه العربيه', '2020-10-20 16:58:25'),
(15, 140, 'Dolores quidem et quisquam consequat Cumque aspernatur', 'تفاصيل باللغه العربيه', '2020-10-20 16:58:33'),
(16, 150, 'Optio incididunt dicta qui anim', 'خدمات المشروع باللغه العربيه', '2020-10-21 15:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `footer_caption` text CHARACTER SET utf8 NOT NULL,
  `footer_caption_en` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `footer_caption`, `footer_caption_en`) VALUES
(1, '© حقوق الطبع والنشر © 2020 جميع الحقوق محفوظة البري', '© Copyright © 2020 All Right Reserved by Berry');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `desc_en` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `desc_ar` text CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `desc_en`, `desc_ar`, `image`, `link`, `date_added`) VALUES
(44, 'Cumque pariatur Ratione sit excepteur repellendus Cupidatat autem anim modi', 'Sed omnis voluptatem ea ipsam ipsum possimus proident explicabo Ipsum dignissimos reprehenderit dolor deserunt dolore', 'http://www.berry74.com/new/system/api/uploads/slider/44/78-785827_user-profile-avatar-login-account-male-user-icon.png', 'Ea qui quibusdam tem', '2020-10-14 15:44:21'),
(45, 'Est qui ipsa dolorum laborum Vero', 'Amet quia reprehenderit enim quis', 'http://www.berry74.com/new/system/api/uploads/slider/45/الإستضافة والسيرفرات.jpg', 'Reprehenderit ut no', '2020-10-18 13:30:48'),
(46, 'Quisquam eos qui ipsum pariatur Ab molestias nihil omnis et tempora at', 'نص باللغه العربيه', 'http://www.berry74.com/new/system/api/uploads/slider/46/التسويق الإلكترونى.jpg', 'In impedit atque od', '2020-10-21 14:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` tinyint(2) NOT NULL,
  `orders` int(11) NOT NULL,
  `users` int(11) NOT NULL,
  `clients` int(11) NOT NULL,
  `statics` int(11) NOT NULL,
  `problems` int(11) NOT NULL,
  `comments` int(11) NOT NULL,
  `reports` int(11) NOT NULL,
  `about` int(11) NOT NULL,
  `regions` int(11) NOT NULL,
  `messages` int(11) NOT NULL,
  `dishs` int(11) NOT NULL,
  `adds_and_removes` int(11) NOT NULL,
  `cat_and_sub` int(11) NOT NULL,
  `date_added` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_email`, `user_phone`, `user_image`, `user_type`, `orders`, `users`, `clients`, `statics`, `problems`, `comments`, `reports`, `about`, `regions`, `messages`, `dishs`, `adds_and_removes`, `cat_and_sub`, `date_added`) VALUES
(1, 'admin', '123456emcan', 'admin@gmail.com', '01200320004', '78-785827_user-profile-avatar-login-account-male-user-icon.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-10-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_project`
--
ALTER TABLE `about_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `client_addresses`
--
ALTER TABLE `client_addresses`
  ADD PRIMARY KEY (`client_address_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_token`
--
ALTER TABLE `device_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engineering_drawing`
--
ALTER TABLE `engineering_drawing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_drawing`
--
ALTER TABLE `project_drawing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_finishing`
--
ALTER TABLE `project_finishing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_images`
--
ALTER TABLE `project_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_location`
--
ALTER TABLE `project_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_service`
--
ALTER TABLE `project_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_project`
--
ALTER TABLE `about_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `client_addresses`
--
ALTER TABLE `client_addresses`
  MODIFY `client_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `device_token`
--
ALTER TABLE `device_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT for table `engineering_drawing`
--
ALTER TABLE `engineering_drawing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `project_drawing`
--
ALTER TABLE `project_drawing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `project_finishing`
--
ALTER TABLE `project_finishing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `project_images`
--
ALTER TABLE `project_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `project_location`
--
ALTER TABLE `project_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `project_service`
--
ALTER TABLE `project_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
