-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 13, 2019 at 10:36 AM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add site', 7, 'add_site'),
(26, 'Can change site', 7, 'change_site'),
(27, 'Can delete site', 7, 'delete_site'),
(28, 'Can view site', 7, 'view_site'),
(29, 'Can add email address', 8, 'add_emailaddress'),
(30, 'Can change email address', 8, 'change_emailaddress'),
(31, 'Can delete email address', 8, 'delete_emailaddress'),
(32, 'Can view email address', 8, 'view_emailaddress'),
(33, 'Can add email confirmation', 9, 'add_emailconfirmation'),
(34, 'Can change email confirmation', 9, 'change_emailconfirmation'),
(35, 'Can delete email confirmation', 9, 'delete_emailconfirmation'),
(36, 'Can view email confirmation', 9, 'view_emailconfirmation'),
(37, 'Can add social account', 10, 'add_socialaccount'),
(38, 'Can change social account', 10, 'change_socialaccount'),
(39, 'Can delete social account', 10, 'delete_socialaccount'),
(40, 'Can view social account', 10, 'view_socialaccount'),
(41, 'Can add social application', 11, 'add_socialapp'),
(42, 'Can change social application', 11, 'change_socialapp'),
(43, 'Can delete social application', 11, 'delete_socialapp'),
(44, 'Can view social application', 11, 'view_socialapp'),
(45, 'Can add social application token', 12, 'add_socialtoken'),
(46, 'Can change social application token', 12, 'change_socialtoken'),
(47, 'Can delete social application token', 12, 'delete_socialtoken'),
(48, 'Can view social application token', 12, 'view_socialtoken'),
(49, 'Can add category', 13, 'add_category'),
(50, 'Can change category', 13, 'change_category'),
(51, 'Can delete category', 13, 'delete_category'),
(52, 'Can view category', 13, 'view_category'),
(53, 'Can add item', 14, 'add_item'),
(54, 'Can change item', 14, 'change_item'),
(55, 'Can delete item', 14, 'delete_item'),
(56, 'Can view item', 14, 'view_item'),
(57, 'Can add order items', 15, 'add_orderitems'),
(58, 'Can change order items', 15, 'change_orderitems'),
(59, 'Can delete order items', 15, 'delete_orderitems'),
(60, 'Can view order items', 15, 'view_orderitems'),
(61, 'Can add order', 16, 'add_order'),
(62, 'Can change order', 16, 'change_order'),
(63, 'Can delete order', 16, 'delete_order'),
(64, 'Can view order', 16, 'view_order'),
(65, 'Can add product', 17, 'add_product'),
(66, 'Can change product', 17, 'change_product'),
(67, 'Can delete product', 17, 'delete_product'),
(68, 'Can view product', 17, 'view_product');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$CR9OPbMNQqqz$AN4rXIm7en+2wTiZVS7gL0ALPloFc+EGeHb0uScuXwc=', '2019-11-13 04:01:32.016316', 1, 'admin', '', '', 'admin@in.com', 1, 1, '2019-11-13 04:00:20.246341');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `core_category`
--

CREATE TABLE `core_category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created` datetime(6) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `core_category`
--

INSERT INTO `core_category` (`id`, `name`, `slug`, `created`, `parent_id`, `user_id`) VALUES
(1, 'Drum Handling', 'DH001', '2019-11-13 04:08:43.363984', NULL, 1),
(2, 'Drum Carts', 'DC001', '2019-11-13 04:09:13.246913', 1, 1),
(3, 'Carts', 'CA001', '2019-11-13 04:11:00.432137', NULL, 1),
(4, 'Durm Covers', 'HC002', '2019-11-13 04:11:42.049793', 1, 1),
(5, 'Bin', 'BIN01', '2019-11-13 04:12:49.246247', NULL, 1),
(6, 'Mobile Carts', 'MBIN02', '2019-11-13 04:13:09.259019', 5, 1),
(7, 'Bulk Tub Carts', 'BTC03', '2019-11-13 04:14:18.917875', 6, 1),
(8, 'Dump Hoppers', 'DHP001', '2019-11-13 04:14:41.158789', NULL, 1),
(9, 'Portable Hoppers', 'PH002', '2019-11-13 04:15:03.771935', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_item`
--

CREATE TABLE `core_item` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `discount_price` double NOT NULL,
  `label` varchar(1) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext,
  `product_id` int(11) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `item_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `core_item`
--

INSERT INTO `core_item` (`id`, `title`, `price`, `discount_price`, `label`, `slug`, `description`, `product_id`, `created`, `item_image`) VALUES
(1, 'H13CU-L-GY', 203.18, 182.86, 'P', 'H13CU-L-GY', 'Larger capacity and molded body make these trucks lightweight and economical. Molded wheel wells with inboard, high-quality wheels allow multiple units to nest for freight savings. Protects walls and doorways from impact damage. Optional hinged lids available for all 6 sizes, see Related Itemstab. Available in Gray, Blue, White, Red, Green, Yellow, Black or Orange body colors. 3.0 cu. yd. models in Gray only. FOB Shipping Point.', 1, '2019-11-13 04:11:42.049793', 'H13CU-HD-GY_1k63aE3.jpg'),
(2, 'H13CU-HD-GY', 467.77, 420.99, 'P', 'H13CU-HD-GY', 'Larger capacity and molded body make these trucks lightweight and economical. Molded wheel wells with inboard, high-quality wheels allow multiple units to nest for freight savings. Protects walls and doorways from impact damage. Optional hinged lids available for all 6 sizes, see Related Itemstab. Available in Gray, Blue, White, Red, Green, Yellow, Black or Orange body colors. 3.0 cu. yd. models in Gray only. FOB Shipping Point.', 1, '2019-11-13 04:11:42.049793', 'H13CU-HD-GY.jpg'),
(3, 'H26750', 129.54, 116.59, 'S', 'H26750', 'Self-closing units feature fusible link in lid that melts at 165°F snapping lid closed to protect contents from external fire or snuff out fire that might start inside. Manual drum cover with gasket and vent for 55 gal. drums available. Attaches with screwdriver and wrench. Durable steel with tough powder coat paint finish. FOB Shipping Point.', 2, '2019-11-13 04:51:48.144090', 'H26753_ma5cjS9.jpg'),
(4, 'H26753', 336.21, 302.59, 'P', 'H26753', 'Self-closing units feature fusible link in lid that melts at 165°F snapping lid closed to protect contents from external fire or snuff out fire that might start inside. Manual drum cover with gasket and vent for 55 gal. drums available. Attaches with screwdriver and wrench. Durable steel with tough powder coat paint finish. FOB Shipping Point.', 2, '2019-11-13 04:52:30.584857', 'H26753.jpg'),
(5, 'H20120-1', 1600, 1440, 'P', 'H20120-1', 'Mix contents of a sealed drum. Sealed drum mixing eliminates worker exposure and reduces clean-up. Motor is also available in 3 phase versions.\r\nCompact portable industrial drum mixer and drain stand rolls a closed drum on its side to agitate the contents. Utilize important ingredients that would otherwise be in unmixed sediment. Built-in retractable tipping lever to assist loading. Also use as drain stand to dispense from drum. AC Motor is 1/2 HP 60 Hz. Capacity 500 lbs. liquid load and up to 400 lbs. dry load. FOB Shipping Point.', 3, '2019-11-13 04:54:12.873559', 'H20120-E1_YHjNOxw.jpg'),
(6, 'H20120-E1', 1860, 1674, 'S', 'H20120-E1', 'Mix contents of a sealed drum. Sealed drum mixing eliminates worker exposure and reduces clean-up. Motor is also available in 3 phase versions.\r\nCompact portable industrial drum mixer and drain stand rolls a closed drum on its side to agitate the contents. Utilize important ingredients that would otherwise be in unmixed sediment. Built-in retractable tipping lever to assist loading. Also use as drain stand to dispense from drum. AC Motor is 1/2 HP 60 Hz. Capacity 500 lbs. liquid load and up to 400 lbs. dry load. FOB Shipping Point.\r\n\r\nBenefits of mixing in closed shipping drums....\r\nRemix settled ingredients.\r\nEliminate transfer, clean-up and special vessels.\r\nNo conatainer to purge between batches.\r\nNothing to insert into drum mix.', 3, '2019-11-13 04:54:45.609643', 'H20120-E1.jpg'),
(7, 'NIS2577', 568.51, 511.66, 'P', 'NIS2577', 'NIS Self Dumping Hoppers are perfectly balanced to roll forward when loaded, dump completely and automatically return to upright, locked position ready for reloading. Continuous welding helps to prevent leaking or dripping of wet materials from the hoppers. Formed smooth edge around top and pouring lip for safety and strength. Extended sides prevent side-wise scattering of material. The stacking feature (standard on 1/2 through 1 cubic yard models) on some of our hoppers permits stacking of empty hoppers. Our self dumping steel hoppers also have a strong, easy-to-operate latching mechanism.\r\n\r\nStainless Steel and Quantity Discounts Available.', 3, '2019-11-13 04:56:36.693874', 'NIS10077_zlGXFOi.jpg'),
(8, 'NIS10077', 849.29, 764.36, 'S', 'NIS10077', 'NIS Self Dumping Hoppers are perfectly balanced to roll forward when loaded, dump completely and automatically return to upright, locked position ready for reloading. Continuous welding helps to prevent leaking or dripping of wet materials from the hoppers. Formed smooth edge around top and pouring lip for safety and strength. Extended sides prevent side-wise scattering of material. The stacking feature (standard on 1/2 through 1 cubic yard models) on some of our hoppers permits stacking of empty hoppers. Our self dumping steel hoppers also have a strong, easy-to-operate latching mechanism.\r\n\r\nStainless Steel and Quantity Discounts Available.', 3, '2019-11-13 04:57:21.875187', 'NIS10077.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `core_order`
--

CREATE TABLE `core_order` (
  `id` int(11) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `ordered_date` datetime(6) NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `core_order_item`
--

CREATE TABLE `core_order_item` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `core_order_items`
--

CREATE TABLE `core_order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `orderitems_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `core_product`
--

CREATE TABLE `core_product` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `code` varchar(50) NOT NULL,
  `created` datetime(6) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `core_product`
--

INSERT INTO `core_product` (`id`, `name`, `code`, `created`, `category_id`, `user_id`) VALUES
(1, 'TUBS AND LIDS', 'TAL', '2019-11-13 04:30:22.708197', 7, 1),
(2, 'DRUM COVERS', 'DC002', '2019-11-13 04:50:45.421936', 4, 1),
(3, 'Portable Drum Rotator', 'PDR01', '2019-11-13 04:53:37.144634', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-11-13 04:08:07.529843', '3', 'Drum Handling', 1, '[{\"added\": {}}]', 13, 1),
(2, '2019-11-13 04:08:43.364694', '1', 'Drum Handling', 1, '[{\"added\": {}}]', 13, 1),
(3, '2019-11-13 04:09:13.247443', '2', 'Drum Carts', 1, '[{\"added\": {}}]', 13, 1),
(4, '2019-11-13 04:11:00.432828', '3', 'Carts', 1, '[{\"added\": {}}]', 13, 1),
(5, '2019-11-13 04:11:42.050728', '4', 'HEAVY DUTY CART', 1, '[{\"added\": {}}]', 13, 1),
(6, '2019-11-13 04:12:49.246750', '5', 'Bin', 1, '[{\"added\": {}}]', 13, 1),
(7, '2019-11-13 04:13:09.259703', '6', 'Mobile Carts', 1, '[{\"added\": {}}]', 13, 1),
(8, '2019-11-13 04:14:18.918619', '7', 'TUBS AND LIDS', 1, '[{\"added\": {}}]', 13, 1),
(9, '2019-11-13 04:14:41.159695', '8', 'Hoppers', 1, '[{\"added\": {}}]', 13, 1),
(10, '2019-11-13 04:15:03.772714', '9', 'Portable Hoppers', 1, '[{\"added\": {}}]', 13, 1),
(11, '2019-11-13 04:15:54.507482', '7', 'BULK TUB CARTS', 2, '[{\"changed\": {\"fields\": [\"name\", \"slug\"]}}]', 13, 1),
(12, '2019-11-13 04:30:22.708942', '1', 'TUBS AND LIDS', 1, '[{\"added\": {}}]', 17, 1),
(13, '2019-11-13 04:31:25.585674', '1', 'H13CU-L-GY', 1, '[{\"added\": {}}]', 14, 1),
(14, '2019-11-13 04:32:22.816226', '2', 'H13CU-HD-GY', 1, '[{\"added\": {}}]', 14, 1),
(15, '2019-11-13 04:42:09.787655', '8', 'Dump Hoppers', 2, '[{\"changed\": {\"fields\": [\"name\", \"slug\"]}}]', 13, 1),
(16, '2019-11-13 04:43:32.554544', '4', 'Durm Covers', 2, '[{\"changed\": {\"fields\": [\"name\", \"slug\", \"parent\"]}}]', 13, 1),
(17, '2019-11-13 04:43:49.664004', '7', 'Bulk Tub Carts', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 13, 1),
(18, '2019-11-13 04:50:45.422932', '2', 'DRUM COVERS', 1, '[{\"added\": {}}]', 17, 1),
(19, '2019-11-13 04:51:48.144903', '3', 'H26750', 1, '[{\"added\": {}}]', 14, 1),
(20, '2019-11-13 04:52:30.585496', '4', 'H26753', 1, '[{\"added\": {}}]', 14, 1),
(21, '2019-11-13 04:53:37.145427', '3', 'Portable Drum Rotator', 1, '[{\"added\": {}}]', 17, 1),
(22, '2019-11-13 04:54:12.874088', '5', 'H20120-1', 1, '[{\"added\": {}}]', 14, 1),
(23, '2019-11-13 04:54:45.610575', '6', 'H20120-E1', 1, '[{\"added\": {}}]', 14, 1),
(24, '2019-11-13 04:56:36.694653', '7', 'NIS2577', 1, '[{\"added\": {}}]', 14, 1),
(25, '2019-11-13 04:57:21.875725', '8', 'NIS10077', 1, '[{\"added\": {}}]', 14, 1),
(26, '2019-11-13 05:01:21.577471', '8', 'NIS10077', 2, '[{\"changed\": {\"fields\": [\"item_image\"]}}]', 14, 1),
(27, '2019-11-13 05:01:42.326568', '7', 'NIS2577', 2, '[{\"changed\": {\"fields\": [\"item_image\"]}}]', 14, 1),
(28, '2019-11-13 05:02:10.907885', '6', 'H20120-E1', 2, '[{\"changed\": {\"fields\": [\"item_image\"]}}]', 14, 1),
(29, '2019-11-13 05:02:28.554393', '5', 'H20120-1', 2, '[{\"changed\": {\"fields\": [\"item_image\"]}}]', 14, 1),
(30, '2019-11-13 05:02:55.398436', '4', 'H26753', 2, '[{\"changed\": {\"fields\": [\"item_image\"]}}]', 14, 1),
(31, '2019-11-13 05:03:25.018357', '3', 'H26750', 2, '[{\"changed\": {\"fields\": [\"item_image\"]}}]', 14, 1),
(32, '2019-11-13 05:04:04.062767', '2', 'H13CU-HD-GY', 2, '[{\"changed\": {\"fields\": [\"item_image\"]}}]', 14, 1),
(33, '2019-11-13 05:04:23.484595', '1', 'H13CU-L-GY', 2, '[{\"changed\": {\"fields\": [\"item_image\"]}}]', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'account', 'emailaddress'),
(9, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'core', 'category'),
(14, 'core', 'item'),
(16, 'core', 'order'),
(15, 'core', 'orderitems'),
(17, 'core', 'product'),
(6, 'sessions', 'session'),
(7, 'sites', 'site'),
(10, 'socialaccount', 'socialaccount'),
(11, 'socialaccount', 'socialapp'),
(12, 'socialaccount', 'socialtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-11-13 03:59:57.192352'),
(2, 'auth', '0001_initial', '2019-11-13 03:59:57.345233'),
(3, 'account', '0001_initial', '2019-11-13 03:59:57.800105'),
(4, 'account', '0002_email_max_length', '2019-11-13 03:59:57.945651'),
(5, 'admin', '0001_initial', '2019-11-13 03:59:57.984523'),
(6, 'admin', '0002_logentry_remove_auto_add', '2019-11-13 03:59:58.085329'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2019-11-13 03:59:58.099816'),
(8, 'contenttypes', '0002_remove_content_type_name', '2019-11-13 03:59:58.181961'),
(9, 'auth', '0002_alter_permission_name_max_length', '2019-11-13 03:59:58.224980'),
(10, 'auth', '0003_alter_user_email_max_length', '2019-11-13 03:59:58.273384'),
(11, 'auth', '0004_alter_user_username_opts', '2019-11-13 03:59:58.285891'),
(12, 'auth', '0005_alter_user_last_login_null', '2019-11-13 03:59:58.329611'),
(13, 'auth', '0006_require_contenttypes_0002', '2019-11-13 03:59:58.332874'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2019-11-13 03:59:58.344535'),
(15, 'auth', '0008_alter_user_username_max_length', '2019-11-13 03:59:58.396525'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2019-11-13 03:59:58.441496'),
(17, 'auth', '0010_alter_group_name_max_length', '2019-11-13 03:59:58.486044'),
(18, 'auth', '0011_update_proxy_permissions', '2019-11-13 03:59:58.497091'),
(19, 'core', '0001_initial', '2019-11-13 03:59:58.611809'),
(20, 'sessions', '0001_initial', '2019-11-13 03:59:58.893906'),
(21, 'sites', '0001_initial', '2019-11-13 03:59:58.929608'),
(22, 'sites', '0002_alter_domain_unique', '2019-11-13 03:59:58.948617'),
(23, 'socialaccount', '0001_initial', '2019-11-13 03:59:59.116223'),
(24, 'socialaccount', '0002_token_max_lengths', '2019-11-13 03:59:59.365606'),
(25, 'socialaccount', '0003_extra_data_default_dict', '2019-11-13 03:59:59.382665'),
(26, 'core', '0002_category_user', '2019-11-13 04:07:02.530432'),
(27, 'core', '0003_auto_20191113_0429', '2019-11-13 04:29:09.537288'),
(28, 'core', '0004_item_created', '2019-11-13 04:48:35.631288'),
(29, 'core', '0005_item_item_image', '2019-11-13 04:58:58.969683');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('f5twvgp28uzas9uhi366u5oayuxmf00v', 'ZWE4OTZmMDI0YzNmNzI2YzUxMzgwNmRlNzBlNzRhZTI3ZDM1Y2I3OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNzM1YjUxMjBlZjk5OWRlZGNmMWMzMWU1ZmM5ODM4MmM3NTFjMGI5In0=', '2019-11-27 04:01:32.020060');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` int(11) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `core_category`
--
ALTER TABLE `core_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_category_slug_parent_id_25657443_uniq` (`slug`,`parent_id`),
  ADD KEY `core_category_parent_id_f82a0951_fk_core_category_id` (`parent_id`),
  ADD KEY `core_category_slug_384eca9c` (`slug`),
  ADD KEY `core_category_user_id_d4f5e86c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `core_item`
--
ALTER TABLE `core_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_item_slug_07f502d0` (`slug`),
  ADD KEY `core_item_product_id_fa3fae1b_fk_core_product_id` (`product_id`);

--
-- Indexes for table `core_order`
--
ALTER TABLE `core_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_order_user_id_b03bbffd_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `core_order_item`
--
ALTER TABLE `core_order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_order_item_item_id_05cfad56_fk_core_item_id` (`item_id`);

--
-- Indexes for table `core_order_items`
--
ALTER TABLE `core_order_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_order_items_order_id_orderitems_id_4c61603a_uniq` (`order_id`,`orderitems_id`),
  ADD KEY `core_order_items_orderitems_id_0ac55b02_fk_core_order_item_id` (`orderitems_id`);

--
-- Indexes for table `core_product`
--
ALTER TABLE `core_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_product_category_id_b9d8ff9f_fk_core_category_id` (`category_id`),
  ADD KEY `core_product_user_id_794bff72_fk_auth_user_id` (`user_id`),
  ADD KEY `core_product_code_c6a8505c` (`code`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `core_category`
--
ALTER TABLE `core_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `core_item`
--
ALTER TABLE `core_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `core_order`
--
ALTER TABLE `core_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `core_order_item`
--
ALTER TABLE `core_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `core_order_items`
--
ALTER TABLE `core_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `core_product`
--
ALTER TABLE `core_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_category`
--
ALTER TABLE `core_category`
  ADD CONSTRAINT `core_category_parent_id_f82a0951_fk_core_category_id` FOREIGN KEY (`parent_id`) REFERENCES `core_category` (`id`),
  ADD CONSTRAINT `core_category_user_id_d4f5e86c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_item`
--
ALTER TABLE `core_item`
  ADD CONSTRAINT `core_item_product_id_fa3fae1b_fk_core_product_id` FOREIGN KEY (`product_id`) REFERENCES `core_product` (`id`);

--
-- Constraints for table `core_order`
--
ALTER TABLE `core_order`
  ADD CONSTRAINT `core_order_user_id_b03bbffd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_order_item`
--
ALTER TABLE `core_order_item`
  ADD CONSTRAINT `core_order_item_item_id_05cfad56_fk_core_item_id` FOREIGN KEY (`item_id`) REFERENCES `core_item` (`id`);

--
-- Constraints for table `core_order_items`
--
ALTER TABLE `core_order_items`
  ADD CONSTRAINT `core_order_items_order_id_c5dde6c1_fk_core_order_id` FOREIGN KEY (`order_id`) REFERENCES `core_order` (`id`),
  ADD CONSTRAINT `core_order_items_orderitems_id_0ac55b02_fk_core_order_item_id` FOREIGN KEY (`orderitems_id`) REFERENCES `core_order_item` (`id`);

--
-- Constraints for table `core_product`
--
ALTER TABLE `core_product`
  ADD CONSTRAINT `core_product_category_id_b9d8ff9f_fk_core_category_id` FOREIGN KEY (`category_id`) REFERENCES `core_category` (`id`),
  ADD CONSTRAINT `core_product_user_id_794bff72_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
