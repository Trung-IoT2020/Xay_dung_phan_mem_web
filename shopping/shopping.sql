-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 05, 2021 at 04:17 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Quần áo', 0, 'quan-ao', '2020-11-29 07:06:47', '2020-11-29 07:06:47', NULL),
(2, 'Giầy dép', 0, 'giay-dep', '2020-11-29 07:07:10', '2020-11-29 07:07:10', NULL),
(3, 'Giường Tủ', 0, 'giuong-tu', '2020-11-29 07:07:39', '2020-12-02 12:50:40', '2020-12-02 12:50:40'),
(4, 'Quần áo nam', 1, 'quan-ao-nam', '2020-11-29 07:08:04', '2020-11-29 07:08:04', NULL),
(5, 'Quần áo nữ', 1, 'quan-ao-nu', '2020-11-29 07:08:22', '2020-11-29 07:08:22', NULL),
(6, 'Quần áo nam mùa đông', 4, 'quan-ao-nam-mua-dong', '2020-11-29 07:08:49', '2020-12-02 12:49:03', '2020-12-02 12:49:03'),
(7, 'Giày dép nam', 2, 'giay-dep-nam', '2020-11-29 07:09:16', '2020-11-29 07:09:16', NULL),
(8, 'Giường tủ gia đình', 1, 'giuong-tu-gia-dinh', '2020-11-29 07:09:32', '2020-11-29 09:53:56', '2020-11-29 09:53:56'),
(10, 'Nike', 2, 'nike', '2020-11-30 03:14:45', '2020-11-30 03:17:48', '2020-11-30 03:17:48'),
(11, 'Nike', 2, 'nike', '2020-11-30 03:17:40', '2020-11-30 03:17:43', '2020-11-30 03:17:43'),
(12, 'Điện Thoại', 0, 'dien-thoai', '2020-12-01 10:11:44', '2020-12-02 12:49:00', '2020-12-02 12:49:00'),
(13, 'Điện Thoại', 0, 'dien-thoai', '2020-12-06 05:53:22', '2020-12-06 05:53:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `created_at`, `updated_at`, `slug`, `deleted_at`) VALUES
(1, 'Menu 1', 0, NULL, '2020-12-05 11:04:06', '', '2020-12-05 11:04:06'),
(2, 'Menu 2', 0, NULL, '2020-12-06 15:09:18', '', '2020-12-06 15:09:18'),
(3, 'Menu 3', 0, NULL, NULL, '', NULL),
(4, 'Menu 1.1 234', 1, NULL, '2020-12-02 12:50:45', 'menu-11-234', '2020-12-02 12:50:45'),
(5, 'Menu 1.2', 1, NULL, NULL, '', NULL),
(6, 'Menu 1.1.1', 4, NULL, NULL, '', NULL),
(7, 'Menu 1.2.1', 5, NULL, NULL, '', NULL),
(8, 'Menu 2.1', 2, NULL, NULL, '', NULL),
(9, 'Menu 3.1', 3, NULL, NULL, '', NULL),
(10, 'Menu 1.1.1.1', 6, '2020-11-30 00:30:53', '2020-11-30 00:30:53', '', NULL),
(11, 'Menu 5.1', 9, '2020-11-30 00:54:48', '2020-11-30 02:02:44', 'menu-51', '2020-11-30 02:02:44'),
(12, 'Adidas', 1, '2020-11-30 03:18:18', '2020-11-30 03:18:18', 'adidas', NULL),
(13, 'Adidas', 4, '2020-11-30 03:19:36', '2020-11-30 03:19:36', 'adidas', NULL),
(14, 'iphone', 1, '2020-12-03 03:12:12', '2020-12-03 03:12:12', 'iphone', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_11_27_150330_create_categories_table', 1),
(4, '2020_11_29_164550_add_column_deleted_at_table_categories', 2),
(5, '2020_11_29_165557_create_menus_table', 3),
(6, '2020_11_30_074713_add_column_slug_to_menus_table', 4),
(7, '2020_11_30_085249_add_column_soft_delete_to_menus_table', 5),
(8, '2020_11_30_102641_create_products_table', 6),
(9, '2020_11_30_103135_create_product_images_table', 6),
(10, '2020_11_30_103329_create_tags_table', 6),
(11, '2020_11_30_103502_create_product_tags_table', 6),
(12, '2020_12_01_064545_add_column_feature_image_name', 7),
(13, '2020_12_01_075005_add_column_image_name_to_table_product_image', 8),
(14, '2020_12_02_202758_add_column_delete_at_to_product_table', 9),
(15, '2020_12_02_224115_create_sliders_table', 10),
(16, '2020_12_03_112058_create_settings_table', 11),
(17, '2020_12_03_210947_add_column_type_settings_table', 12),
(18, '2020_12_04_134012_create_roles_table', 13),
(19, '2020_12_04_134100_create_permissions_table', 13),
(20, '2020_12_04_134228_create_table_user_role', 13),
(21, '2020_12_04_134454_create_table_permission_role', 13),
(22, '2020_12_04_135422_add_column_parent_id_permission', 14),
(23, '2020_12_05_231854_add_column_deleted_at_table_user', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `key_code` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `parent_id`, `key_code`) VALUES
(1, 'Danh mục sản phẩm', 'danh mục sản phẩm', NULL, NULL, 0, ''),
(2, 'Danh sách danh mục', 'Danh sách danh mục ', NULL, NULL, 1, 'list_category'),
(3, 'Thêm danh mục sản phẩm', 'Thêm danh mục', NULL, NULL, 1, 'add_category'),
(4, 'Sửa danh mục', 'Sửa danh mục', NULL, NULL, 1, 'edit_category'),
(5, 'Xóa danh mục', 'Xóa danh mục', NULL, NULL, 1, 'delete_category'),
(6, 'Menu', 'Menu', NULL, NULL, 0, ''),
(7, 'Danh sách Menu', 'Danh sách menu', NULL, NULL, 6, 'list_menu'),
(8, 'Thêm Menu', ' Thêm Menu', NULL, NULL, 6, 'add_menu'),
(9, 'Sửa Menu', 'Sửa Menu', NULL, NULL, 6, 'edit_menu'),
(10, 'Xóa Menu', 'Xóa Menu', NULL, NULL, 6, 'delete_menu'),
(11, 'Slider', 'Slider', NULL, NULL, 0, ''),
(12, 'Danh sách Slider', 'Danh sách Slider', NULL, NULL, 11, 'list_slider'),
(13, 'Thêm danh sách Slider', 'Thêm Slider', NULL, NULL, 11, 'add_slider'),
(14, 'Sửa danh sách Slider', 'Sửa Slider', NULL, NULL, 11, 'edit_slider'),
(15, 'Xóa danh sách Slider', 'Xóa Slider', NULL, NULL, 11, 'delete_slider'),
(16, 'Sản phẩm', 'Sản Phẩm', NULL, NULL, 0, ''),
(17, 'Danh sách Sản phẩm', 'Danh sách Sản Phẩm', NULL, NULL, 16, 'list_product'),
(18, 'Thêm Danh sách Sản phẩm', 'THêm Sản Phẩm', NULL, NULL, 16, 'add_product'),
(19, 'Sửa Danh sách Sản phẩm', 'SỬa Sản Phẩm', NULL, NULL, 16, 'edit_product'),
(20, 'Xóa Danh sách Sản phẩm', 'Xóa Sản Phẩm', NULL, NULL, 16, 'delete_product'),
(21, 'Setting', 'Setting', NULL, NULL, 0, ''),
(22, 'Danh sách Setting', 'Danh sách Setting', NULL, NULL, 21, 'list_setting'),
(23, 'Thêm Danh sách Setting', 'Thêm Setting', NULL, NULL, 21, 'add_setting'),
(24, 'Sửa Danh sách Setting', 'Sửa Setting', NULL, NULL, 21, 'edit_setting'),
(25, 'Xóa Danh sách Setting', 'Xóa Setting', NULL, NULL, 21, 'delete_setting'),
(26, ' Nhân viên', 'nhân viên', NULL, NULL, 0, ''),
(27, 'Danh sách Nhân viên', 'Danh sách nhân viên', NULL, NULL, 26, 'list_user'),
(28, 'Thêm Danh sách Nhân viên', 'Thêm Danh sách nhân viên', NULL, NULL, 26, 'add_user'),
(29, 'Sửa Danh sách Nhân viên', 'Sửa Danh sách nhân viên', NULL, NULL, 26, 'edit_user'),
(30, 'Xóa Danh sách Nhân viên', 'XÓa Danh sách nhân viên', NULL, NULL, 26, 'delete_user'),
(31, 'Vai trò', 'Vai trò', NULL, NULL, 0, ''),
(32, 'Vai trò', 'Vai trò', NULL, NULL, 31, 'list_role'),
(33, 'Thêm Vai trò', 'Thêm Vai trò', NULL, NULL, 31, 'add_role'),
(34, ' Sửa Vai trò', 'Sửa Vai trò', NULL, NULL, 31, 'edit_role'),
(35, ' Xóa Vai trò', 'Xóa vai trò', NULL, NULL, 31, 'delete_role');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 5, 2, NULL, NULL),
(2, 5, 3, NULL, NULL),
(3, 5, 4, NULL, NULL),
(4, 5, 5, NULL, NULL),
(5, 5, 7, NULL, NULL),
(6, 5, 8, NULL, NULL),
(7, 5, 9, NULL, NULL),
(8, 5, 10, NULL, NULL),
(9, 6, 2, NULL, NULL),
(10, 6, 3, NULL, NULL),
(11, 6, 4, NULL, NULL),
(12, 6, 5, NULL, NULL),
(13, 6, 7, NULL, NULL),
(14, 6, 8, NULL, NULL),
(15, 6, 9, NULL, NULL),
(16, 6, 10, NULL, NULL),
(17, 7, 2, NULL, NULL),
(18, 7, 3, NULL, NULL),
(19, 7, 4, NULL, NULL),
(20, 7, 5, NULL, NULL),
(21, 7, 7, NULL, NULL),
(22, 7, 8, NULL, NULL),
(23, 7, 9, NULL, NULL),
(24, 7, 10, NULL, NULL),
(29, 8, 7, NULL, NULL),
(30, 8, 8, NULL, NULL),
(33, 8, 17, NULL, NULL),
(34, 8, 18, NULL, NULL),
(35, 8, 19, NULL, NULL),
(36, 8, 20, NULL, NULL),
(37, 8, 22, NULL, NULL),
(38, 8, 23, NULL, NULL),
(39, 8, 24, NULL, NULL),
(40, 8, 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `feature_image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `feature_image_name`, `deleted_at`) VALUES
(0, 'iphone 12', '30000000', '/storage/product/1/J7POFRHI2EZEhZTE.JPG', '<p>sSA</p>', 1, 3, '2020-12-01 00:44:19', '2020-12-01 00:44:19', '8bf72491bafe59f4dceeb47c8f96fabf.JPG', NULL),
(2, 'iphone 12', '30000000', '/storage/product/1/Y0uBlcHhaAb7SAtx.jpg', '<p>ip 12 gi&aacute; rẻ</p>', 1, 12, '2020-12-01 10:20:43', '2020-12-01 10:20:43', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg', NULL),
(3, 'iphone 12 promax', '30000000', '/storage/product/1/SHaQFrhKW2Zl0tMA.jpg', '<p>asdsad</p>', 1, 12, '2020-12-01 10:30:51', '2020-12-01 10:30:51', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg', NULL),
(4, 'iphone 12 promax', '30000000', '/storage/product/1/35ZSoPtRkadeCqsg.jpg', '<p>sadasds</p>', 1, 12, '2020-12-01 10:34:07', '2020-12-01 10:34:07', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg', NULL),
(5, 'ip 12 mini', '20000000', '/storage/product/1/2XVooW7TmltnHVPN.jpg', '<p>ip nhỏ gọn</p>', 1, 12, '2020-12-01 10:36:20', '2020-12-01 10:36:20', 'tinh-nang-iPhone-12-face.jpg', NULL),
(6, 'ip 12 mini', '20000000', '/storage/product/1/0RBNDx4vzMfQZWFM.jpg', '<p>ip nhỏ gọn hay</p>\r\n<p>&nbsp;&aacute;dsa</p>', 1, 1, '2020-12-01 10:39:39', '2020-12-05 11:04:18', 'tinh-nang-iPhone-12-face.jpg', '2020-12-05 11:04:18'),
(7, 'ip 12 mini', '20000000', '/storage/product/1/BG31MNK46IaMdsmF.jpg', '<p>ip nhỏ gọn</p>', 1, 12, '2020-12-01 10:40:22', '2020-12-03 17:08:23', 'tinh-nang-iPhone-12-face.jpg', '2020-12-03 17:08:23'),
(8, 'ip 12 mini', '20000000', '/storage/product/1/2dDDBYKzHnaSmhGC.jpg', '<p>ip nhỏ gọn</p>', 1, 12, '2020-12-01 10:40:39', '2020-12-02 19:45:22', 'tinh-nang-iPhone-12-face.jpg', '2020-12-02 19:45:22'),
(9, 'ip 12 xxx', '20000000', '/storage/product/1/q7XHSAjFEqk9O3ng.jpg', '<p>ip sadda</p>', 1, 12, '2020-12-01 10:42:50', '2020-12-02 13:54:48', 'tinh-nang-iPhone-12-face.jpg', '2020-12-02 13:54:48'),
(10, 'iphone 12 pro', '32000000', '/storage/product/1/bmpdDRw5C6aj5Ohf.jpg', '<p>beautiful</p>', 1, 12, '2020-12-01 10:51:27', '2020-12-02 13:44:34', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg', '2020-12-02 13:44:34'),
(20, 'dasdas', '150000000', '/storage/product/1/U6vwD626LzKJAYqw.JPG', '<p><strong>Si&ecirc;u rẻ</strong></p>', 1, 1, '2020-12-02 06:32:59', '2020-12-02 13:54:44', 'IMG_1181.JPG', '2020-12-02 13:54:44'),
(21, 'ip  XR', '12000000', '/storage/product/1/QAxxXyYej0FjOLWH.JPG', '<p>asd</p>', 1, 1, '2020-12-02 06:37:12', '2020-12-02 13:44:29', 'd5aee2a4a40a9fa8f14b2771532873cc.JPG', '2020-12-02 13:44:29'),
(36, 'trần thế anh', '20000000', NULL, '<p>&aacute;dasdsds</p>', 1, 2, '2020-12-02 15:16:00', '2020-12-02 15:16:51', NULL, '2020-12-02 15:16:51'),
(37, 'trần thế anh 12312321', '30000000', NULL, '<p>&aacute;dasdsh</p>', 1, 2, '2020-12-02 15:29:02', '2020-12-02 15:31:16', NULL, '2020-12-02 15:31:16'),
(38, 'iphone 12 pro xxxx', '231232', NULL, '<p>12312</p>', 1, 2, '2020-12-02 15:30:18', '2020-12-02 15:31:11', NULL, '2020-12-02 15:31:11'),
(39, 'iphone 12 pro xxxxxxx', '30000000', '/storage/product/1/1DkMxoToVfJWPyLT.jpg', '<p>sdsads</p>', 1, 2, '2020-12-02 15:31:44', '2020-12-02 18:53:46', 'iphone12dummylineup_800x450.jpg', '2020-12-02 18:53:46'),
(40, 'iphone 12 xxxx', '20000000', '/storage/product/1/R4kY73xoHVYEA620.JPG', '<p>asdas</p>', 1, 1, '2020-12-03 08:48:15', '2020-12-03 17:08:18', 'd5aee2a4a40a9fa8f14b2771532873cc.JPG', '2020-12-03 17:08:18'),
(41, 'iphone 12 x a dxad', '30000000', '/storage/product/1/p2YPucrtGnX4TynU.jpg', '<p>sadasds</p>', 1, 2, '2020-12-03 17:09:05', '2020-12-04 06:25:19', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg', '2020-12-04 06:25:19'),
(42, 'ádassadasdasds', '30000000', '/storage/product/1/FqGMczzsapvo3oL4.jpg', '<p>sadasdsa</p>', 1, 1, '2020-12-04 06:29:48', '2020-12-04 06:33:12', 'iphone12dummylineup_800x450.jpg', '2020-12-04 06:33:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `imgae_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `imgae_path`, `product_id`, `created_at`, `updated_at`, `image_name`) VALUES
(1, '/storage/product/1/DV9FMC9baGE1mvmU.jpg', 4, '2020-12-01 10:34:07', '2020-12-01 10:34:07', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(2, '/storage/product/1/oWF1pQzF57sY59K5.jpg', 4, '2020-12-01 10:34:07', '2020-12-01 10:34:07', 'iphone12dummylineup_800x450.jpg'),
(3, '/storage/product/1/8y44S5RdwAvlEV5N.jpg', 4, '2020-12-01 10:34:07', '2020-12-01 10:34:07', 'tinh-nang-iPhone-12-face.jpg'),
(4, '/storage/product/1/EVRcOQxhi6rVBkXy.jpg', 5, '2020-12-01 10:36:20', '2020-12-01 10:36:20', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(5, '/storage/product/1/5jpSORLhGtcKxAde.jpg', 6, '2020-12-01 10:39:39', '2020-12-01 10:39:39', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(6, '/storage/product/1/PImq2Mockpsm79mN.jpg', 7, '2020-12-01 10:40:22', '2020-12-01 10:40:22', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(7, '/storage/product/1/SCnee3qsemEHvqGw.jpg', 8, '2020-12-01 10:40:39', '2020-12-01 10:40:39', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(8, '/storage/product/1/79YT5Ft5xozFvVVu.jpg', 9, '2020-12-01 10:42:50', '2020-12-01 10:42:50', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(9, '/storage/product/1/npZaIBoIZ3fJRovY.jpg', 12, '2020-12-01 10:58:17', '2020-12-01 10:58:17', 'tinh-nang-iPhone-12-face.jpg'),
(10, '/storage/product/1/0Sr6Dq9phOp1Lrjw.jpg', 13, '2020-12-01 15:01:25', '2020-12-01 15:01:25', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(11, '/storage/product/1/IQ3MDa8VK5wQcEVM.jpg', 13, '2020-12-01 15:01:25', '2020-12-01 15:01:25', 'iphone12dummylineup_800x450.jpg'),
(12, '/storage/product/1/HhW2Fl5LaRqt1qVu.jpg', 13, '2020-12-01 15:01:25', '2020-12-01 15:01:25', 'tinh-nang-iPhone-12-face.jpg'),
(13, '/storage/product/1/hMWnuZzbDIL4qdyX.jpg', 14, '2020-12-01 15:02:13', '2020-12-01 15:02:13', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(14, '/storage/product/1/6nQtz3wzViCmAhNW.jpg', 14, '2020-12-01 15:02:13', '2020-12-01 15:02:13', 'iphone12dummylineup_800x450.jpg'),
(15, '/storage/product/1/Qb0aCPuKYY2DOnht.jpg', 14, '2020-12-01 15:02:13', '2020-12-01 15:02:13', 'tinh-nang-iPhone-12-face.jpg'),
(16, '/storage/product/1/wlHT3K3VB2HVNfaN.jpg', 15, '2020-12-01 15:03:23', '2020-12-01 15:03:23', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(17, '/storage/product/1/8UanwHEpeowN9HUr.jpg', 15, '2020-12-01 15:03:23', '2020-12-01 15:03:23', 'iphone12dummylineup_800x450.jpg'),
(18, '/storage/product/1/HccrEPw8xIFaSiML.jpg', 15, '2020-12-01 15:03:23', '2020-12-01 15:03:23', 'tinh-nang-iPhone-12-face.jpg'),
(19, '/storage/product/1/ult01Qd3s25AdfAv.jpg', 16, '2020-12-01 15:21:09', '2020-12-01 15:21:09', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(20, '/storage/product/1/KhhpYUNJQoqsbduH.jpg', 16, '2020-12-01 15:21:09', '2020-12-01 15:21:09', 'iphone12dummylineup_800x450.jpg'),
(21, '/storage/product/1/2lqRks2KnVfIDL4B.jpg', 16, '2020-12-01 15:21:09', '2020-12-01 15:21:09', 'tinh-nang-iPhone-12-face.jpg'),
(22, '/storage/product/1/9H3uUSuEhqof3Z9q.jpg', 17, '2020-12-01 15:22:45', '2020-12-01 15:22:45', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(23, '/storage/product/1/DAVWPnnCFuvV1czv.jpg', 17, '2020-12-01 15:22:45', '2020-12-01 15:22:45', 'iphone12dummylineup_800x450.jpg'),
(24, '/storage/product/1/rmWTJpdls8REjg3R.jpg', 17, '2020-12-01 15:22:45', '2020-12-01 15:22:45', 'tinh-nang-iPhone-12-face.jpg'),
(25, '/storage/product/1/rhYROuARVwsM3gsi.jpg', 18, '2020-12-01 15:26:06', '2020-12-01 15:26:06', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(26, '/storage/product/1/Z8ilUoFtrTjLKA4U.jpg', 18, '2020-12-01 15:26:06', '2020-12-01 15:26:06', 'iphone12dummylineup_800x450.jpg'),
(27, '/storage/product/1/9i7rptpmZRVUnWk1.jpg', 18, '2020-12-01 15:26:06', '2020-12-01 15:26:06', 'tinh-nang-iPhone-12-face.jpg'),
(28, '/storage/product/1/G6GgIz84xPeCzOOR.jpg', 19, '2020-12-02 00:11:42', '2020-12-02 00:11:42', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(29, '/storage/product/1/tQWBqJDE04DRV6t6.jpg', 19, '2020-12-02 00:11:42', '2020-12-02 00:11:42', 'iphone12dummylineup_800x450.jpg'),
(30, '/storage/product/1/hbuhtpBacY3FNOB8.jpg', 19, '2020-12-02 00:11:42', '2020-12-02 00:11:42', 'tinh-nang-iPhone-12-face.jpg'),
(31, '/storage/product/1/PRWxE2TBZVVOXF65.JPG', 20, '2020-12-02 06:32:59', '2020-12-02 06:32:59', 'd5aee2a4a40a9fa8f14b2771532873cc.JPG'),
(32, '/storage/product/1/u0wPNq2WwOx83fc6.JPG', 20, '2020-12-02 06:32:59', '2020-12-02 06:32:59', 'fd2f1435c80e147a815f9ea157f028df.JPG'),
(33, '/storage/product/1/MLTuPLypS13FriFP.JPG', 20, '2020-12-02 06:32:59', '2020-12-02 06:32:59', 'IMG_1181.JPG'),
(34, '/storage/product/1/D1DhuLdjboY6UysX.JPG', 21, '2020-12-02 06:37:12', '2020-12-02 06:37:12', 'd5aee2a4a40a9fa8f14b2771532873cc.JPG'),
(35, '/storage/product/1/0bflMehezIVq1hm6.JPG', 22, '2020-12-02 06:38:03', '2020-12-02 06:38:03', 'd5aee2a4a40a9fa8f14b2771532873cc.JPG'),
(36, '/storage/product/1/YDHOE6N214RNIZFR.JPG', 23, '2020-12-02 06:39:47', '2020-12-02 06:39:47', 'd5aee2a4a40a9fa8f14b2771532873cc.JPG'),
(37, '/storage/product/1/e2tWN1HrldjTNDMl.JPG', 24, '2020-12-02 06:41:36', '2020-12-02 06:41:36', 'd5aee2a4a40a9fa8f14b2771532873cc.JPG'),
(38, '/storage/product/1/DcMKuSpYBs1PxQdA.JPG', 24, '2020-12-02 06:41:36', '2020-12-02 06:41:36', 'fd2f1435c80e147a815f9ea157f028df.JPG'),
(39, '/storage/product/1/3c3x3D6Wpb8W6bGM.JPG', 24, '2020-12-02 06:41:36', '2020-12-02 06:41:36', 'IMG_1181.JPG'),
(40, '/storage/product/1/EGtTgxi0GgqzGl0K.JPG', 25, '2020-12-02 06:42:59', '2020-12-02 06:42:59', 'd5aee2a4a40a9fa8f14b2771532873cc.JPG'),
(41, '/storage/product/1/oZL2ZAfTVJ4XNxN4.JPG', 25, '2020-12-02 06:42:59', '2020-12-02 06:42:59', 'fd2f1435c80e147a815f9ea157f028df.JPG'),
(42, '/storage/product/1/2GwYSxr3lJ0tsxY5.JPG', 25, '2020-12-02 06:42:59', '2020-12-02 06:42:59', 'IMG_1181.JPG'),
(43, '/storage/product/1/tCSQYAEVHZUZb9Rj.JPG', 26, '2020-12-02 06:43:30', '2020-12-02 06:43:30', 'd5aee2a4a40a9fa8f14b2771532873cc.JPG'),
(44, '/storage/product/1/5P3dycG6c1lFoLcv.JPG', 26, '2020-12-02 06:43:30', '2020-12-02 06:43:30', 'fd2f1435c80e147a815f9ea157f028df.JPG'),
(45, '/storage/product/1/ARj5xS5Fwty1UYz4.JPG', 26, '2020-12-02 06:43:30', '2020-12-02 06:43:30', 'IMG_1181.JPG'),
(46, '/storage/product/1/1qv3r3AXNX1kUHup.JPG', 32, '2020-12-02 09:07:35', '2020-12-02 09:07:35', 'd5aee2a4a40a9fa8f14b2771532873cc.JPG'),
(47, '/storage/product/1/VDmQyRT6D9fnAQ4k.JPG', 32, '2020-12-02 09:07:35', '2020-12-02 09:07:35', 'fd2f1435c80e147a815f9ea157f028df.JPG'),
(48, '/storage/product/1/UbB51MrYggzrO8iO.JPG', 32, '2020-12-02 09:07:35', '2020-12-02 09:07:35', 'IMG_1181.JPG'),
(49, '/storage/product/1/QJbuh3x0v2Wfs0v8.JPG', 33, '2020-12-02 09:08:20', '2020-12-02 09:08:20', 'fd2f1435c80e147a815f9ea157f028df.JPG'),
(50, '/storage/product/1/3DCKZm8R7kJAvAkA.JPG', 34, '2020-12-02 10:12:15', '2020-12-02 10:12:15', 'd5aee2a4a40a9fa8f14b2771532873cc.JPG'),
(51, '/storage/product/1/CuxQ8p71InWDgAkB.JPG', 34, '2020-12-02 10:12:15', '2020-12-02 10:12:15', 'fd2f1435c80e147a815f9ea157f028df.JPG'),
(52, '/storage/product/1/Lruf4aYzxzT0ISCf.JPG', 34, '2020-12-02 10:12:15', '2020-12-02 10:12:15', 'IMG_1181.JPG'),
(53, '/storage/product/1/eVsJf2STJCzj4b1R.jpg', 35, '2020-12-02 11:01:11', '2020-12-02 11:01:11', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(54, '/storage/product/1/zxTLy5Ux2Wad0wuG.jpg', 35, '2020-12-02 11:01:11', '2020-12-02 11:01:11', 'iphone12dummylineup_800x450.jpg'),
(55, '/storage/product/1/K8lAN5rtCdz9Stjc.jpg', 35, '2020-12-02 11:01:11', '2020-12-02 11:01:11', 'tinh-nang-iPhone-12-face.jpg'),
(56, '/storage/product/1/SF8oYEjpeQDrhbVb.JPG', 35, '2020-12-02 11:07:47', '2020-12-02 11:07:47', '993dd852113c1f9e0ea5946403358b72.JPG'),
(57, '/storage/product/1/xmeAdMpronor0wFM.jpg', 39, '2020-12-02 15:31:44', '2020-12-02 15:31:44', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(58, '/storage/product/1/0N2jtH9svqzNVck4.jpg', 39, '2020-12-02 15:31:44', '2020-12-02 15:31:44', 'iphone12dummylineup_800x450.jpg'),
(59, '/storage/product/1/FN5hL1etOTtGrSjm.jpg', 39, '2020-12-02 15:31:44', '2020-12-02 15:31:44', 'tinh-nang-iPhone-12-face.jpg'),
(60, '/storage/product/1/5K3IHhuQVP7pbpPQ.JPG', 40, '2020-12-03 08:48:15', '2020-12-03 08:48:15', 'd5aee2a4a40a9fa8f14b2771532873cc.JPG'),
(61, '/storage/product/1/EAVliK7lQhd4rAlJ.JPG', 40, '2020-12-03 08:48:15', '2020-12-03 08:48:15', 'fd2f1435c80e147a815f9ea157f028df.JPG'),
(62, '/storage/product/1/XbS3DDv94iWNADeX.JPG', 40, '2020-12-03 08:48:15', '2020-12-03 08:48:15', 'IMG_1181.JPG'),
(63, '/storage/product/1/rAlZNUOJwiXHEnSd.jpg', 41, '2020-12-03 17:09:05', '2020-12-03 17:09:05', '1588587037-792-chua-trinh-lang-iphone-12-da-bi-lo-phien-ban-mau-do-hut-mat-960x0-1588574937-width660height549.jpg'),
(64, '/storage/product/1/BdyCdvyQgP2xuMQ7.jpg', 41, '2020-12-03 17:09:05', '2020-12-03 17:09:05', 'iphone12dummylineup_800x450.jpg'),
(65, '/storage/product/1/7xnF806pWBXCu0mc.jpg', 41, '2020-12-03 17:09:05', '2020-12-03 17:09:05', 'tinh-nang-iPhone-12-face.jpg'),
(66, '/storage/product/1/zS4ZcGUYbwijcEaT.jpg', 42, '2020-12-04 06:29:48', '2020-12-04 06:29:48', 'iphone12dummylineup_800x450.jpg'),
(67, '/storage/product/1/1gjmXt7F9hQEog9l.jpg', 42, '2020-12-04 06:29:48', '2020-12-04 06:29:48', 'tinh-nang-iPhone-12-face.jpg'),
(68, '/storage/product/1/HlRpLzZYcN080XnJ.jpg', 6, '2020-12-04 06:37:56', '2020-12-04 06:37:56', 'iphone12dummylineup_800x450.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

DROP TABLE IF EXISTS `product_tags`;
CREATE TABLE IF NOT EXISTS `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 15, 2, '2020-12-01 15:03:23', '2020-12-01 15:03:23'),
(2, 18, 5, '2020-12-01 15:26:06', '2020-12-01 15:26:06'),
(3, 19, 6, '2020-12-02 00:11:42', '2020-12-02 00:11:42'),
(4, 20, 7, '2020-12-02 06:33:00', '2020-12-02 06:33:00'),
(5, 26, 8, '2020-12-02 06:43:30', '2020-12-02 06:43:30'),
(6, 32, 9, '2020-12-02 09:07:35', '2020-12-02 09:07:35'),
(7, 33, 10, '2020-12-02 09:08:21', '2020-12-02 09:08:21'),
(8, 34, 11, '2020-12-02 10:12:15', '2020-12-02 10:12:15'),
(9, 34, 12, '2020-12-02 10:12:15', '2020-12-02 10:12:15'),
(10, 35, 13, '2020-12-02 11:01:11', '2020-12-02 11:01:11'),
(11, 35, 14, '2020-12-02 11:06:56', '2020-12-02 11:06:56'),
(12, 35, 15, '2020-12-02 11:06:56', '2020-12-02 11:06:56'),
(13, 35, 13, '2020-12-02 11:07:47', '2020-12-02 11:07:47'),
(14, 35, 15, '2020-12-02 11:07:47', '2020-12-02 11:07:47'),
(15, 36, 16, '2020-12-02 15:16:00', '2020-12-02 15:16:00'),
(16, 38, 17, '2020-12-02 15:30:18', '2020-12-02 15:30:18'),
(17, 39, 17, '2020-12-02 15:31:44', '2020-12-02 15:31:44'),
(18, 40, 18, '2020-12-03 08:48:15', '2020-12-03 08:48:15'),
(19, 41, 16, '2020-12-03 17:09:05', '2020-12-03 17:09:05'),
(20, 42, 19, '2020-12-04 06:29:48', '2020-12-04 06:29:48'),
(21, 6, 16, '2020-12-04 06:37:56', '2020-12-04 06:37:56'),
(22, 6, 16, '2020-12-04 06:38:14', '2020-12-04 06:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Quản trị hệ thống', NULL, NULL),
(2, 'guest', 'Khách hàng', NULL, NULL),
(3, 'developer', 'Phát triển hệ thống', NULL, NULL),
(4, 'content', 'Chỉnh nội dung', NULL, NULL),
(5, 'editor', 'soạn thảo văn bản', '2020-12-06 04:28:29', '2020-12-06 04:28:29'),
(6, 'editor', 'sửa chữa soạn thảo', '2020-12-06 04:31:50', '2020-12-06 04:31:50'),
(7, 'editor', 'sửa chữa soạn thảo', '2020-12-06 04:37:11', '2020-12-06 04:37:11'),
(8, 'editor check', 'good chop !!!', '2020-12-06 04:38:47', '2020-12-06 05:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 5, 1, NULL, NULL),
(4, 5, 2, NULL, NULL),
(5, 1, 3, NULL, NULL),
(6, 1, 4, NULL, NULL),
(7, 6, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `config_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`, `type`) VALUES
(2, 'facebookl', 'https://www.facebook.com/theanh.tran.50552338', '2020-12-03 11:54:50', '2020-12-03 11:54:50', ''),
(4, 'facebookldsdsd', 'sadasdasd', '2020-12-03 14:06:18', '2020-12-03 14:06:18', '');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgae_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'iphone hot', '2020-12-01 15:02:13', '2020-12-01 15:02:13'),
(2, 'hot', '2020-12-01 15:03:23', '2020-12-01 15:03:23'),
(3, 'ip sieeu rer', '2020-12-01 15:21:09', '2020-12-01 15:21:09'),
(4, 'ip hot', '2020-12-01 15:22:45', '2020-12-01 15:22:45'),
(5, 'siêu khuyến mãi', '2020-12-01 15:26:06', '2020-12-01 15:26:06'),
(6, 'dien thoai', '2020-12-02 00:11:42', '2020-12-02 00:11:42'),
(7, 'Best sale!!!', '2020-12-02 06:33:00', '2020-12-02 06:33:00'),
(8, 'sdsa', '2020-12-02 06:43:30', '2020-12-02 06:43:30'),
(9, 'sadsa', '2020-12-02 09:07:35', '2020-12-02 09:07:35'),
(10, '123', '2020-12-02 09:08:21', '2020-12-02 09:08:21'),
(11, 'asd', '2020-12-02 10:12:15', '2020-12-02 10:12:15'),
(12, 'sadas', '2020-12-02 10:12:15', '2020-12-02 10:12:15'),
(13, 'Rẻ bèo', '2020-12-02 11:01:11', '2020-12-02 11:01:11'),
(14, 'thế anh', '2020-12-02 11:06:56', '2020-12-02 11:06:56'),
(15, 'trần', '2020-12-02 11:06:56', '2020-12-02 11:06:56'),
(16, 'sad', '2020-12-02 15:16:00', '2020-12-02 15:16:00'),
(17, 'ád', '2020-12-02 15:30:18', '2020-12-02 15:30:18'),
(18, 'asdas', '2020-12-03 08:48:15', '2020-12-03 08:48:15'),
(19, 'dsd', '2020-12-04 06:29:48', '2020-12-04 06:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Thế Anh test zxc', 'trantheanh041@gmail.com.vn', NULL, '$2y$10$OZffFdNA4OnszF.CJi0mv.a3aql7UtuniCIHaRrBxssYNK4yEUuuG', NULL, NULL, '2020-12-05 17:01:32', '2020-12-05 17:01:32'),
(2, 'Trần Thế Anh', 'dh51705057@student.stu.edu.vn', NULL, '$2y$10$LrJ3vA3Ihuj8HtNhqLFcB.Ebvc9G.5pcyUJsCYUB8TTqwF0n7I3Ba', NULL, '2020-12-05 15:24:04', '2020-12-05 15:24:04', NULL),
(3, 'trần thế anh', 'trantheanh@gmail.com', NULL, '$2y$10$v7BA0WZ2PrcMYZGD4L6q4u5J5AFI9q6Heht3eZSw/ucXFbO1CJX9K', NULL, '2020-12-05 15:26:06', '2020-12-05 15:26:06', NULL),
(4, 'trần thế anh', 'trantheanh041123@gmail.com', NULL, '$2y$10$4DXOy8Q0nOqSv0i1OpAo/OLgN5v4/oJGuItSOXxjJ5W3URyxchWHq', NULL, '2020-12-05 15:31:44', '2020-12-05 15:31:44', NULL),
(5, 'Thế Anh', 'trantheanh123@gmail.com', NULL, '$2y$10$43K8Tg.hEN823.TloZyemuUM.66FcWpIOHOp56NikqBRgMY.FAxYe', NULL, '2020-12-05 15:34:40', '2020-12-05 15:34:40', NULL),
(6, 'trần thế anh asdasd', 'trantheanh041@gmail.com.vn.xxxx', NULL, '$2y$10$xkT9MXkSsq5c91qKsCijsOkApiDvwp6.7fvNm6UZN81ok7/zkYaEO', NULL, '2020-12-05 16:55:28', '2020-12-05 17:01:40', '2020-12-05 17:01:40');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
