-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2018 at 07:06 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usafact`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Ryan/usafact', 'yes'),
(2, 'home', 'http://localhost/Ryan/usafact', 'yes'),
(3, 'blogname', 'USAFACT', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'Tarmira1993@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=29&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:18:\"Screening Services\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '29', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', '', 'yes'),
(95, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:13:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"header-top-bar-left\";a:0:{}s:20:\"header-top-bar-right\";a:5:{i:0;s:19:\"font-awesome-link-2\";i:1;s:20:\"font-awesome-link-14\";i:2;s:20:\"font-awesome-link-15\";i:3;s:20:\"font-awesome-link-16\";i:4;s:20:\"font-awesome-link-17\";}s:6:\"slider\";a:0:{}s:9:\"preface-a\";a:0:{}s:7:\"sidebar\";a:12:{i:0;s:6:\"text-2\";i:1;s:19:\"font-awesome-link-3\";i:2;s:19:\"font-awesome-link-4\";i:3;s:19:\"font-awesome-link-5\";i:4;s:19:\"font-awesome-link-6\";i:5;s:19:\"font-awesome-link-7\";i:6;s:19:\"font-awesome-link-8\";i:7;s:19:\"font-awesome-link-9\";i:8;s:20:\"font-awesome-link-10\";i:9;s:20:\"font-awesome-link-11\";i:10;s:20:\"font-awesome-link-13\";i:11;s:20:\"font-awesome-link-12\";}s:12:\"postscript-a\";a:0:{}s:6:\"footer\";a:0:{}s:8:\"footer-a\";a:1:{i:0;s:10:\"nav_menu-2\";}s:8:\"footer-b\";a:1:{i:0;s:10:\"nav_menu-3\";}s:8:\"footer-c\";a:1:{i:0;s:10:\"nav_menu-4\";}s:8:\"footer-d\";a:1:{i:0;s:13:\"custom_html-9\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'nonce_key', '=K+h: LP&8Gsy+^jY_ZSfZ,5%]UB4v,n<9e1##!~vo1R773Kaf+0(UlB]QN{NF<!', 'no'),
(108, 'nonce_salt', 'CAXihDE5M{J#JJg[AW{4n2 z~?`b<+V)2PsS^_6O>j(K&?,0|(f~gIg;*Mz1GT+`', 'no'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:4:{i:2;a:2:{s:5:\"title\";s:8:\"Services\";s:8:\"nav_menu\";i:3;}i:3;a:2:{s:5:\"title\";s:10:\"Industries\";s:8:\"nav_menu\";i:4;}i:4;a:2:{s:5:\"title\";s:16:\"Software & Tools\";s:8:\"nav_menu\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:2:{i:9;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:274:\"<center>\r\n	<img src=\"http://localhost/Ryan/usafact/wp-content/uploads/2018/03/iPhone-6-7-8-Plus-–-1-image10.png\" alt=\"\" with=\"150px\">\r\n	<a href=\"#\">CA Private Investigator <br>Licence #1589</a>\r\n	<br>\r\n 	<a href=\"#\">NJ Private Investigator <br>License #8439</a>\r\n</center>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:4:{i:1522776815;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1522810236;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1522853478;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1521816745;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(127, 'auth_key', '3[V7tT3LoY,lw~J)<QwK=Y^f_kBRMTp]Q1lC](<HIubjQWL]z#<S U=g=s7[m}y?', 'no'),
(128, 'auth_salt', 'ZOM(`M/#PbHO^ox-J=X5(O,,|)L>LIcyx~wp>oiA G`)w~EX3f3EZ$@G}fQRUIBt', 'no'),
(129, 'logged_in_key', 'M>Sq!O@XUA1b[rD%_EwC6>9mx^);QsX@{[fk}t/KMIo.!eiDeLd1mUAdf@}[n=?d', 'no'),
(130, 'logged_in_salt', 'begb!]6CoH@s/v$&H#0Gl)?JVe!aua[6_+`r5G^YW0-oA|sQfp3?d`0v2zSD?WV_', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(147, 'current_theme', 'LemonPress', 'yes'),
(148, 'theme_mods_lemonroots', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:18:\"primary_navigation\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:71;s:14:\"themeslug_logo\";s:81:\"http://localhost/Ryan/usafact/wp-content/uploads/2018/03/Web-1920-–-1-image.png\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1522169211;s:4:\"data\";a:12:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"header-top-bar-left\";a:0:{}s:20:\"header-top-bar-right\";a:5:{i:0;s:17:\"header-top-link-3\";i:1;s:17:\"header-top-link-4\";i:2;s:17:\"header-top-link-5\";i:3;s:17:\"header-top-link-6\";i:4;s:17:\"header-top-link-7\";}s:6:\"slider\";a:0:{}s:9:\"preface-a\";a:0:{}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"postscript-a\";a:0:{}s:6:\"footer\";a:0:{}s:8:\"footer-a\";a:1:{i:0;s:10:\"nav_menu-2\";}s:8:\"footer-b\";a:1:{i:0;s:13:\"custom_html-7\";}s:8:\"footer-c\";a:1:{i:0;s:13:\"custom_html-8\";}s:8:\"footer-d\";a:1:{i:0;s:13:\"custom_html-9\";}}}}', 'yes'),
(149, 'theme_switched', '', 'yes'),
(154, 'new_admin_email', 'Tarmira1993@gmail.com', 'yes'),
(157, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1522769179;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(166, 'recently_activated', 'a:0:{}', 'yes'),
(173, 'acf_version', '4.4.12', 'yes'),
(178, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(183, 'widget_header-top-link', 'a:17:{i:3;a:3:{s:9:\"link-text\";s:14:\"Dispute Report\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:21:\"fas fa-clipboard-list\";}i:4;a:3:{s:9:\"link-text\";s:13:\"Contact Sales\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:15:\"fas fa-envelope\";}i:5;a:3:{s:9:\"link-text\";s:14:\"Customer Login\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:18:\"fas fa-user-circle\";}i:6;a:3:{s:9:\"link-text\";s:11:\"Get Pricing\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:19:\"fas fa-check-circle\";}i:7;a:3:{s:9:\"link-text\";s:27:\"Get Support: 1-800-283-2463\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:25:\"fas fa-phone fa-rotate-90\";}i:8;a:3:{s:9:\"link-text\";s:23:\"Credit Record & History\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:9;a:3:{s:9:\"link-text\";s:26:\"Criminal Background Checks\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:10;a:3:{s:9:\"link-text\";s:15:\"Identity Checks\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:11;a:3:{s:9:\"link-text\";s:23:\"Drug & Health Screening\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:12;a:3:{s:9:\"link-text\";s:14:\"I-9 & E-Verify\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:13;a:3:{s:9:\"link-text\";s:19:\"Workforce Screening\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:14;a:3:{s:9:\"link-text\";s:18:\"Employment History\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:15;a:3:{s:9:\"link-text\";s:17:\"Loan Originations\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:16;a:3:{s:9:\"link-text\";s:15:\"Driving Records\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:17;a:3:{s:9:\"link-text\";s:31:\"Citizenship & Legal Work Status\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:18;a:3:{s:9:\"link-text\";s:16:\"Global Screening\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(203, 'theme_mods_lemon', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:18:\"primary_navigation\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:4;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1522169220;s:4:\"data\";a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:6:\"slider\";a:0:{}s:9:\"preface-a\";a:0:{}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"postscript-a\";a:0:{}s:6:\"footer\";a:0:{}s:8:\"footer-a\";a:1:{i:0;s:10:\"nav_menu-2\";}s:8:\"footer-b\";a:1:{i:0;s:13:\"custom_html-7\";}s:8:\"footer-c\";a:1:{i:0;s:13:\"custom_html-8\";}s:8:\"footer-d\";a:1:{i:0;s:13:\"custom_html-9\";}}}}', 'yes'),
(215, '_site_transient_timeout_browser_55d0b8cd8b38c66e779c44349abd068c', '1522795201', 'no'),
(216, '_site_transient_browser_55d0b8cd8b38c66e779c44349abd068c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.181\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(227, 'category_children', 'a:0:{}', 'yes'),
(297, '_site_transient_timeout_browser_c34fbe0893b504a8f7ca5b8e754e60a9', '1523033044', 'no'),
(298, '_site_transient_browser_c34fbe0893b504a8f7ca5b8e754e60a9', 'a:10:{s:4:\"name\";s:14:\"Microsoft Edge\";s:7:\"version\";s:8:\"16.16299\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:8:\"15.15063\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(305, 'ai1wm_secret_key', 'MTa0RjxMvqPM', 'yes'),
(309, 'ai1wm_updater', 'a:0:{}', 'yes'),
(319, '_site_transient_timeout_browser_efc56fe28520bcd166ef136f44025003', '1523293132', 'no'),
(320, '_site_transient_browser_efc56fe28520bcd166ef136f44025003', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(324, '_transient_timeout_plugin_slugs', '1522797066', 'no'),
(325, '_transient_plugin_slugs', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:3;s:9:\"hello.php\";}', 'no'),
(340, 'widget_font-awesome-link', 'a:17:{i:2;a:3:{s:9:\"link-text\";s:14:\"Dispute Report\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:21:\"fas fa-clipboard-list\";}i:3;a:3:{s:9:\"link-text\";s:26:\"Criminal Background Checks\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:4;a:3:{s:9:\"link-text\";s:23:\"Credit Record & History\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:5;a:3:{s:9:\"link-text\";s:15:\"Identity Checks\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:6;a:3:{s:9:\"link-text\";s:23:\"Drug & Health Screening\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:7;a:3:{s:9:\"link-text\";s:14:\"I-9 & E-Verify\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:8;a:3:{s:9:\"link-text\";s:19:\"Workforce Screening\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:9;a:3:{s:9:\"link-text\";s:18:\"Employment History\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:10;a:3:{s:9:\"link-text\";s:17:\"Loan Originations\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:11;a:3:{s:9:\"link-text\";s:15:\"Driving Records\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:12;a:3:{s:9:\"link-text\";s:16:\"Global Screening\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:13;a:3:{s:9:\"link-text\";s:31:\"Citizenship & Legal Work Status\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:27:\"fas fa-chevron-circle-right\";}i:14;a:3:{s:9:\"link-text\";s:13:\"Contact Sales\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:15:\"fas fa-envelope\";}i:15;a:3:{s:9:\"link-text\";s:14:\"Customer Login\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:18:\"fas fa-user-circle\";}i:16;a:3:{s:9:\"link-text\";s:11:\"Get Pricing\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:12:\"check-circle\";}i:17;a:3:{s:9:\"link-text\";s:27:\"Get Support: 1-800-283-2463\";s:9:\"link-href\";s:0:\"\";s:9:\"link-icon\";s:25:\"fas fa-phone fa-rotate-90\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(343, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1522769184;s:7:\"checked\";a:2:{s:5:\"lemon\";s:3:\"1.0\";s:10:\"lemonroots\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(346, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";}', 'yes'),
(347, 'template', 'lemonroots', 'yes'),
(348, 'stylesheet', 'lemonroots', 'yes'),
(349, 'jetpack_active_modules', 'a:0:{}', 'yes'),
(350, 'ai1wm_status', 'a:3:{s:4:\"type\";s:4:\"done\";s:7:\"message\";s:527:\"You need to perform two more steps:<br /><strong>1. You must save your permalinks structure twice. <a class=\"ai1wm-no-underline\" href=\"http://localhost/Ryan/usafact/wp-admin/options-permalink.php#submit\" target=\"_blank\">Permalinks Settings</a></strong> <small>(opens a new window)</small><br /><strong>2. <a class=\"ai1wm-no-underline\" href=\"https://wordpress.org/support/view/plugin-reviews/all-in-one-wp-migration?rate=5#postform\" target=\"_blank\">Optionally, review the plugin</a>.</strong> <small>(opens a new window)</small>\";s:5:\"title\";s:41:\"Your data has been imported successfully!\";}', 'yes'),
(351, '_site_transient_timeout_theme_roots', '1522770983', 'no'),
(352, '_site_transient_theme_roots', 'a:2:{s:5:\"lemon\";s:7:\"/themes\";s:10:\"lemonroots\";s:7:\"/themes\";}', 'no'),
(353, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1522769185;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.65\";s:9:\"hello.php\";s:3:\"1.6\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:7:\"default\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.65\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.65.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=1268186\";s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1268186\";s:7:\"default\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1268186\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1691996\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=1691996\";s:7:\"default\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1691996\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_wp_attached_file', '2018/03/Web-1920-–-1-image.png'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:81;s:4:\"file\";s:32:\"2018/03/Web-1920-–-1-image.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Web-1920-–-1-image-150x81.png\";s:5:\"width\";i:150;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4, 5, '_wp_trash_meta_status', 'publish'),
(5, 5, '_wp_trash_meta_time', '1521825466'),
(8, 7, '_wp_attached_file', '2018/03/Lorem-ipsum-4.jpg'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2018/03/Lorem-ipsum-4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Lorem-ipsum-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Lorem-ipsum-4-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Lorem-ipsum-4-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"Lorem-ipsum-4-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(84, 20, '_wp_trash_meta_status', 'publish'),
(85, 20, '_wp_trash_meta_time', '1521837794'),
(86, 21, '_menu_item_type', 'custom'),
(87, 21, '_menu_item_menu_item_parent', '0'),
(88, 21, '_menu_item_object_id', '21'),
(89, 21, '_menu_item_object', 'custom'),
(90, 21, '_menu_item_target', ''),
(91, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 21, '_menu_item_xfn', ''),
(93, 21, '_menu_item_url', '//localhost:3000/Ryan/usafact/'),
(94, 21, '_menu_item_orphaned', '1521837818'),
(104, 23, '_menu_item_type', 'custom'),
(105, 23, '_menu_item_menu_item_parent', '0'),
(106, 23, '_menu_item_object_id', '23'),
(107, 23, '_menu_item_object', 'custom'),
(108, 23, '_menu_item_target', ''),
(109, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(110, 23, '_menu_item_xfn', ''),
(111, 23, '_menu_item_url', '//localhost:3000/Ryan/usafact/'),
(112, 23, '_menu_item_orphaned', '1521837833'),
(122, 25, '_wp_trash_meta_status', 'publish'),
(123, 25, '_wp_trash_meta_time', '1521838501'),
(124, 26, '_wp_trash_meta_status', 'publish'),
(125, 26, '_wp_trash_meta_time', '1521838590'),
(126, 27, '_wp_trash_meta_status', 'publish'),
(127, 27, '_wp_trash_meta_time', '1521838710'),
(130, 29, '_edit_last', '1'),
(131, 29, '_edit_lock', '1522087616:1'),
(132, 29, '_wp_page_template', 'page-templates/home-page.php'),
(133, 31, '_wp_trash_meta_status', 'publish'),
(134, 31, '_wp_trash_meta_time', '1521839025'),
(135, 32, '_wp_trash_meta_status', 'publish'),
(136, 32, '_wp_trash_meta_time', '1521839178'),
(137, 33, '_wp_trash_meta_status', 'publish'),
(138, 33, '_wp_trash_meta_time', '1521839509'),
(139, 34, '_wp_trash_meta_status', 'publish'),
(140, 34, '_wp_trash_meta_time', '1521839564'),
(157, 35, '_wp_trash_meta_status', 'publish'),
(158, 35, '_wp_trash_meta_time', '1521841712'),
(159, 38, '_wp_trash_meta_status', 'publish'),
(160, 38, '_wp_trash_meta_time', '1521842549'),
(169, 39, '_wp_trash_meta_status', 'publish'),
(170, 39, '_wp_trash_meta_time', '1522085202'),
(171, 41, '_wp_trash_meta_status', 'publish'),
(172, 41, '_wp_trash_meta_time', '1522085326'),
(174, 42, '_customize_changeset_uuid', '7d4488cf-06e3-4d0d-b470-6da363dfa97e'),
(176, 43, '_customize_changeset_uuid', '7d4488cf-06e3-4d0d-b470-6da363dfa97e'),
(178, 44, '_customize_changeset_uuid', '7d4488cf-06e3-4d0d-b470-6da363dfa97e'),
(180, 45, '_customize_changeset_uuid', '7d4488cf-06e3-4d0d-b470-6da363dfa97e'),
(181, 51, '_menu_item_type', 'post_type'),
(182, 51, '_menu_item_menu_item_parent', '0'),
(183, 51, '_menu_item_object_id', '42'),
(184, 51, '_menu_item_object', 'page'),
(185, 51, '_menu_item_target', ''),
(186, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(187, 51, '_menu_item_xfn', ''),
(188, 51, '_menu_item_url', ''),
(189, 52, '_menu_item_type', 'post_type'),
(190, 52, '_menu_item_menu_item_parent', '0'),
(191, 52, '_menu_item_object_id', '43'),
(192, 52, '_menu_item_object', 'page'),
(193, 52, '_menu_item_target', ''),
(194, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(195, 52, '_menu_item_xfn', ''),
(196, 52, '_menu_item_url', ''),
(197, 53, '_menu_item_type', 'post_type'),
(198, 53, '_menu_item_menu_item_parent', '0'),
(199, 53, '_menu_item_object_id', '44'),
(200, 53, '_menu_item_object', 'page'),
(201, 53, '_menu_item_target', ''),
(202, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(203, 53, '_menu_item_xfn', ''),
(204, 53, '_menu_item_url', ''),
(213, 46, '_wp_trash_meta_status', 'publish'),
(214, 46, '_wp_trash_meta_time', '1522086941'),
(221, 57, '_wp_attached_file', '2018/03/iPhone-6-7-8-Plus-–-1-image10.png'),
(222, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:315;s:6:\"height\";i:255;s:4:\"file\";s:43:\"2018/03/iPhone-6-7-8-Plus-–-1-image10.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"iPhone-6-7-8-Plus-–-1-image10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"iPhone-6-7-8-Plus-–-1-image10-300x243.png\";s:5:\"width\";i:300;s:6:\"height\";i:243;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 58, '_customize_changeset_uuid', '9b66f41c-5db4-40e0-8d4b-b356722ec48a'),
(225, 59, '_edit_lock', '1522098955:1'),
(227, 60, '_customize_changeset_uuid', '9b66f41c-5db4-40e0-8d4b-b356722ec48a'),
(229, 61, '_customize_changeset_uuid', '9b66f41c-5db4-40e0-8d4b-b356722ec48a'),
(230, 65, '_menu_item_type', 'post_type'),
(231, 65, '_menu_item_menu_item_parent', '0'),
(232, 65, '_menu_item_object_id', '58'),
(233, 65, '_menu_item_object', 'page'),
(234, 65, '_menu_item_target', ''),
(235, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(236, 65, '_menu_item_xfn', ''),
(237, 65, '_menu_item_url', ''),
(238, 66, '_menu_item_type', 'post_type'),
(239, 66, '_menu_item_menu_item_parent', '0'),
(240, 66, '_menu_item_object_id', '60'),
(241, 66, '_menu_item_object', 'page'),
(242, 66, '_menu_item_target', ''),
(243, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(244, 66, '_menu_item_xfn', ''),
(245, 66, '_menu_item_url', ''),
(246, 67, '_menu_item_type', 'post_type'),
(247, 67, '_menu_item_menu_item_parent', '0'),
(248, 67, '_menu_item_object_id', '61'),
(249, 67, '_menu_item_object', 'page'),
(250, 67, '_menu_item_target', ''),
(251, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(252, 67, '_menu_item_xfn', ''),
(253, 67, '_menu_item_url', ''),
(254, 59, '_wp_trash_meta_status', 'publish'),
(255, 59, '_wp_trash_meta_time', '1522098961'),
(256, 68, '_edit_lock', '1522104760:1'),
(257, 69, '_menu_item_type', 'custom'),
(258, 69, '_menu_item_menu_item_parent', '0'),
(259, 69, '_menu_item_object_id', '69'),
(260, 69, '_menu_item_object', 'custom'),
(261, 69, '_menu_item_target', ''),
(262, 69, '_menu_item_classes', 'a:1:{i:0;s:13:\"telephone-btn\";}'),
(263, 69, '_menu_item_xfn', ''),
(264, 69, '_menu_item_url', 'tel:201-800-547-0263'),
(265, 68, '_wp_trash_meta_status', 'publish'),
(266, 68, '_wp_trash_meta_time', '1522104762'),
(267, 70, '_wp_trash_meta_status', 'publish'),
(268, 70, '_wp_trash_meta_time', '1522165794'),
(269, 71, '_wp_attached_file', '2018/03/logo.png'),
(270, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:81;s:4:\"file\";s:16:\"2018/03/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x81.png\";s:5:\"width\";i:150;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(271, 72, '_wp_trash_meta_status', 'publish'),
(272, 72, '_wp_trash_meta_time', '1522173758'),
(274, 73, '_customize_changeset_uuid', '5e06c7ad-d880-454a-bddc-de3faa52abb0'),
(276, 74, '_customize_changeset_uuid', '5e06c7ad-d880-454a-bddc-de3faa52abb0'),
(278, 75, '_customize_changeset_uuid', '5e06c7ad-d880-454a-bddc-de3faa52abb0'),
(280, 76, '_customize_changeset_uuid', '5e06c7ad-d880-454a-bddc-de3faa52abb0'),
(282, 77, '_customize_changeset_uuid', '5e06c7ad-d880-454a-bddc-de3faa52abb0'),
(284, 78, '_customize_changeset_uuid', '5e06c7ad-d880-454a-bddc-de3faa52abb0'),
(286, 79, '_customize_changeset_uuid', '5e06c7ad-d880-454a-bddc-de3faa52abb0'),
(288, 80, '_customize_changeset_uuid', '5e06c7ad-d880-454a-bddc-de3faa52abb0'),
(289, 90, '_menu_item_type', 'post_type'),
(290, 90, '_menu_item_menu_item_parent', '0'),
(291, 90, '_menu_item_object_id', '73'),
(292, 90, '_menu_item_object', 'page'),
(293, 90, '_menu_item_target', ''),
(294, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(295, 90, '_menu_item_xfn', ''),
(296, 90, '_menu_item_url', ''),
(297, 91, '_menu_item_type', 'post_type'),
(298, 91, '_menu_item_menu_item_parent', '0'),
(299, 91, '_menu_item_object_id', '74'),
(300, 91, '_menu_item_object', 'page'),
(301, 91, '_menu_item_target', ''),
(302, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(303, 91, '_menu_item_xfn', ''),
(304, 91, '_menu_item_url', ''),
(305, 92, '_menu_item_type', 'post_type'),
(306, 92, '_menu_item_menu_item_parent', '0'),
(307, 92, '_menu_item_object_id', '75'),
(308, 92, '_menu_item_object', 'page'),
(309, 92, '_menu_item_target', ''),
(310, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(311, 92, '_menu_item_xfn', ''),
(312, 92, '_menu_item_url', ''),
(313, 93, '_menu_item_type', 'post_type'),
(314, 93, '_menu_item_menu_item_parent', '0'),
(315, 93, '_menu_item_object_id', '76'),
(316, 93, '_menu_item_object', 'page'),
(317, 93, '_menu_item_target', ''),
(318, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(319, 93, '_menu_item_xfn', ''),
(320, 93, '_menu_item_url', ''),
(321, 94, '_menu_item_type', 'post_type'),
(322, 94, '_menu_item_menu_item_parent', '0'),
(323, 94, '_menu_item_object_id', '77'),
(324, 94, '_menu_item_object', 'page'),
(325, 94, '_menu_item_target', ''),
(326, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(327, 94, '_menu_item_xfn', ''),
(328, 94, '_menu_item_url', ''),
(329, 95, '_menu_item_type', 'post_type'),
(330, 95, '_menu_item_menu_item_parent', '0'),
(331, 95, '_menu_item_object_id', '78'),
(332, 95, '_menu_item_object', 'page'),
(333, 95, '_menu_item_target', ''),
(334, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(335, 95, '_menu_item_xfn', ''),
(336, 95, '_menu_item_url', ''),
(337, 96, '_menu_item_type', 'post_type'),
(338, 96, '_menu_item_menu_item_parent', '0'),
(339, 96, '_menu_item_object_id', '79'),
(340, 96, '_menu_item_object', 'page'),
(341, 96, '_menu_item_target', ''),
(342, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(343, 96, '_menu_item_xfn', ''),
(344, 96, '_menu_item_url', ''),
(345, 97, '_menu_item_type', 'post_type'),
(346, 97, '_menu_item_menu_item_parent', '0'),
(347, 97, '_menu_item_object_id', '80'),
(348, 97, '_menu_item_object', 'page'),
(349, 97, '_menu_item_target', ''),
(350, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(351, 97, '_menu_item_xfn', ''),
(352, 97, '_menu_item_url', ''),
(353, 81, '_wp_trash_meta_status', 'publish'),
(354, 81, '_wp_trash_meta_time', '1522191649'),
(355, 98, '_edit_lock', '1522191761:1'),
(357, 99, '_customize_changeset_uuid', '1b2777f5-b7a4-4d2c-9498-3173fda9c4f7'),
(359, 100, '_customize_changeset_uuid', '1b2777f5-b7a4-4d2c-9498-3173fda9c4f7'),
(361, 101, '_customize_changeset_uuid', '1b2777f5-b7a4-4d2c-9498-3173fda9c4f7'),
(363, 102, '_customize_changeset_uuid', '1b2777f5-b7a4-4d2c-9498-3173fda9c4f7'),
(365, 103, '_customize_changeset_uuid', '1b2777f5-b7a4-4d2c-9498-3173fda9c4f7'),
(367, 104, '_customize_changeset_uuid', '1b2777f5-b7a4-4d2c-9498-3173fda9c4f7'),
(369, 105, '_customize_changeset_uuid', '1b2777f5-b7a4-4d2c-9498-3173fda9c4f7'),
(371, 106, '_customize_changeset_uuid', '1b2777f5-b7a4-4d2c-9498-3173fda9c4f7'),
(373, 107, '_customize_changeset_uuid', '1b2777f5-b7a4-4d2c-9498-3173fda9c4f7'),
(375, 108, '_customize_changeset_uuid', '1b2777f5-b7a4-4d2c-9498-3173fda9c4f7'),
(377, 109, '_customize_changeset_uuid', '1b2777f5-b7a4-4d2c-9498-3173fda9c4f7'),
(378, 121, '_menu_item_type', 'post_type'),
(379, 121, '_menu_item_menu_item_parent', '0'),
(380, 121, '_menu_item_object_id', '99'),
(381, 121, '_menu_item_object', 'page'),
(382, 121, '_menu_item_target', ''),
(383, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(384, 121, '_menu_item_xfn', ''),
(385, 121, '_menu_item_url', ''),
(386, 122, '_menu_item_type', 'post_type'),
(387, 122, '_menu_item_menu_item_parent', '0'),
(388, 122, '_menu_item_object_id', '100'),
(389, 122, '_menu_item_object', 'page'),
(390, 122, '_menu_item_target', ''),
(391, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(392, 122, '_menu_item_xfn', ''),
(393, 122, '_menu_item_url', ''),
(394, 123, '_menu_item_type', 'post_type'),
(395, 123, '_menu_item_menu_item_parent', '0'),
(396, 123, '_menu_item_object_id', '101'),
(397, 123, '_menu_item_object', 'page'),
(398, 123, '_menu_item_target', ''),
(399, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(400, 123, '_menu_item_xfn', ''),
(401, 123, '_menu_item_url', ''),
(402, 124, '_menu_item_type', 'post_type'),
(403, 124, '_menu_item_menu_item_parent', '0'),
(404, 124, '_menu_item_object_id', '102'),
(405, 124, '_menu_item_object', 'page'),
(406, 124, '_menu_item_target', ''),
(407, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(408, 124, '_menu_item_xfn', ''),
(409, 124, '_menu_item_url', ''),
(410, 125, '_menu_item_type', 'post_type'),
(411, 125, '_menu_item_menu_item_parent', '0'),
(412, 125, '_menu_item_object_id', '103'),
(413, 125, '_menu_item_object', 'page'),
(414, 125, '_menu_item_target', ''),
(415, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(416, 125, '_menu_item_xfn', ''),
(417, 125, '_menu_item_url', ''),
(418, 126, '_menu_item_type', 'post_type'),
(419, 126, '_menu_item_menu_item_parent', '0'),
(420, 126, '_menu_item_object_id', '104'),
(421, 126, '_menu_item_object', 'page'),
(422, 126, '_menu_item_target', ''),
(423, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(424, 126, '_menu_item_xfn', ''),
(425, 126, '_menu_item_url', ''),
(426, 127, '_menu_item_type', 'post_type'),
(427, 127, '_menu_item_menu_item_parent', '0'),
(428, 127, '_menu_item_object_id', '105'),
(429, 127, '_menu_item_object', 'page'),
(430, 127, '_menu_item_target', ''),
(431, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(432, 127, '_menu_item_xfn', ''),
(433, 127, '_menu_item_url', ''),
(434, 128, '_menu_item_type', 'post_type'),
(435, 128, '_menu_item_menu_item_parent', '0'),
(436, 128, '_menu_item_object_id', '106'),
(437, 128, '_menu_item_object', 'page'),
(438, 128, '_menu_item_target', ''),
(439, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(440, 128, '_menu_item_xfn', ''),
(441, 128, '_menu_item_url', ''),
(442, 129, '_menu_item_type', 'post_type'),
(443, 129, '_menu_item_menu_item_parent', '0'),
(444, 129, '_menu_item_object_id', '107'),
(445, 129, '_menu_item_object', 'page'),
(446, 129, '_menu_item_target', ''),
(447, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(448, 129, '_menu_item_xfn', ''),
(449, 129, '_menu_item_url', ''),
(450, 130, '_menu_item_type', 'post_type'),
(451, 130, '_menu_item_menu_item_parent', '0'),
(452, 130, '_menu_item_object_id', '108'),
(453, 130, '_menu_item_object', 'page'),
(454, 130, '_menu_item_target', ''),
(455, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(456, 130, '_menu_item_xfn', ''),
(457, 130, '_menu_item_url', ''),
(458, 131, '_menu_item_type', 'post_type'),
(459, 131, '_menu_item_menu_item_parent', '0'),
(460, 131, '_menu_item_object_id', '109'),
(461, 131, '_menu_item_object', 'page'),
(462, 131, '_menu_item_target', ''),
(463, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(464, 131, '_menu_item_xfn', ''),
(465, 131, '_menu_item_url', ''),
(466, 98, '_wp_trash_meta_status', 'publish'),
(467, 98, '_wp_trash_meta_time', '1522191804'),
(469, 132, '_customize_changeset_uuid', 'c63d5b8e-3647-4e44-87eb-40e6f2e03560'),
(471, 133, '_customize_changeset_uuid', 'c63d5b8e-3647-4e44-87eb-40e6f2e03560'),
(473, 134, '_customize_changeset_uuid', 'c63d5b8e-3647-4e44-87eb-40e6f2e03560'),
(474, 139, '_menu_item_type', 'post_type'),
(475, 139, '_menu_item_menu_item_parent', '0'),
(476, 139, '_menu_item_object_id', '132'),
(477, 139, '_menu_item_object', 'page'),
(478, 139, '_menu_item_target', ''),
(479, 139, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(480, 139, '_menu_item_xfn', ''),
(481, 139, '_menu_item_url', ''),
(482, 140, '_menu_item_type', 'post_type'),
(483, 140, '_menu_item_menu_item_parent', '0'),
(484, 140, '_menu_item_object_id', '133'),
(485, 140, '_menu_item_object', 'page'),
(486, 140, '_menu_item_target', ''),
(487, 140, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(488, 140, '_menu_item_xfn', ''),
(489, 140, '_menu_item_url', ''),
(490, 141, '_menu_item_type', 'post_type'),
(491, 141, '_menu_item_menu_item_parent', '0'),
(492, 141, '_menu_item_object_id', '134'),
(493, 141, '_menu_item_object', 'page'),
(494, 141, '_menu_item_target', ''),
(495, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(496, 141, '_menu_item_xfn', ''),
(497, 141, '_menu_item_url', ''),
(498, 135, '_wp_trash_meta_status', 'publish'),
(499, 135, '_wp_trash_meta_time', '1522191842'),
(501, 142, '_wp_attached_file', '2018/03/14732458361707.jpg'),
(502, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:674;s:6:\"height\";i:420;s:4:\"file\";s:26:\"2018/03/14732458361707.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"14732458361707-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"14732458361707-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(514, 145, '_wp_attached_file', '2018/03/empleados.jpg'),
(515, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:358;s:4:\"file\";s:21:\"2018/03/empleados.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"empleados-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"empleados-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(516, 146, '_wp_attached_file', '2018/03/empleados-1.jpg'),
(517, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:358;s:4:\"file\";s:23:\"2018/03/empleados-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"empleados-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"empleados-1-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(525, 148, '_wp_attached_file', '2018/03/background-footer-top.jpg'),
(526, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1999;s:6:\"height\";i:926;s:4:\"file\";s:33:\"2018/03/background-footer-top.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"background-footer-top-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"background-footer-top-300x139.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"background-footer-top-768x356.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:356;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"background-footer-top-1024x474.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(641, 160, '_wp_attached_file', '2018/03/download.jpg'),
(642, 160, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:20:\"2018/03/download.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"download-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(678, 58, '_edit_lock', '1522287296:1'),
(679, 58, '_edit_last', '1'),
(680, 58, '_wp_page_template', 'page-templates/inner-page.php'),
(812, 199, '_edit_last', '1'),
(813, 199, '_edit_lock', '1522706719:1'),
(828, 208, '_edit_last', '1'),
(829, 208, 'field_5abc459a36b1d', 'a:11:{s:3:\"key\";s:19:\"field_5abc459a36b1d\";s:5:\"label\";s:10:\"Background\";s:4:\"name\";s:10:\"background\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:12:\"Insert image\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(830, 208, 'field_5abc45bd36b1e', 'a:14:{s:3:\"key\";s:19:\"field_5abc45bd36b1e\";s:5:\"label\";s:7:\"Excerpt\";s:4:\"name\";s:7:\"excerpt\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:13:\"Insert sumary\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(831, 208, 'field_5abc45dc36b1f', 'a:11:{s:3:\"key\";s:19:\"field_5abc45dc36b1f\";s:5:\"label\";s:6:\"button\";s:4:\"name\";s:6:\"button\";s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:9:\"post_type\";a:1:{i:0;s:3:\"all\";}s:10:\"allow_null\";s:1:\"0\";s:8:\"multiple\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(832, 208, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(833, 208, 'position', 'acf_after_title'),
(834, 208, 'layout', 'no_box'),
(835, 208, 'hide_on_screen', ''),
(836, 208, '_edit_lock', '1522688303:1'),
(839, 209, 'background', '148'),
(840, 209, '_background', 'field_5abc459a36b1d'),
(841, 209, 'excerpt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco  .laboris nisi ut aliquip ex ea '),
(842, 209, '_excerpt', 'field_5abc45bd36b1e'),
(843, 209, 'button', '58'),
(844, 209, '_button', 'field_5abc45dc36b1f'),
(845, 199, 'background', '148'),
(846, 199, '_background', 'field_5abc459a36b1d'),
(847, 199, 'excerpt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco  .laboris nisi ut aliquip ex ea '),
(848, 199, '_excerpt', 'field_5abc45bd36b1e'),
(849, 199, 'button', '58'),
(850, 199, '_button', 'field_5abc45dc36b1f'),
(853, 210, 'background', '148'),
(854, 210, '_background', 'field_5abc459a36b1d'),
(855, 210, 'excerpt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco  .laboris nisi ut aliquip ex ea '),
(856, 210, '_excerpt', 'field_5abc45bd36b1e'),
(857, 210, 'button', '58'),
(858, 210, '_button', 'field_5abc45dc36b1f'),
(861, 211, 'background', '148'),
(862, 211, '_background', 'field_5abc459a36b1d'),
(863, 211, 'excerpt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco  .laboris nisi ut aliquip ex ea '),
(864, 211, '_excerpt', 'field_5abc45bd36b1e'),
(865, 211, 'button', '58'),
(866, 211, '_button', 'field_5abc45dc36b1f'),
(869, 212, 'background', '148'),
(870, 212, '_background', 'field_5abc459a36b1d'),
(871, 212, 'excerpt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco  .laboris nisi ut aliquip ex ea '),
(872, 212, '_excerpt', 'field_5abc45bd36b1e'),
(873, 212, 'button', '58'),
(874, 212, '_button', 'field_5abc45dc36b1f'),
(877, 213, 'background', '148'),
(878, 213, '_background', 'field_5abc459a36b1d'),
(879, 213, 'excerpt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco  .laboris nisi ut aliquip ex ea '),
(880, 213, '_excerpt', 'field_5abc45bd36b1e'),
(881, 213, 'button', '58'),
(882, 213, '_button', 'field_5abc45dc36b1f'),
(883, 204, 'background', '148'),
(884, 204, '_background', 'field_5abc459a36b1d'),
(885, 204, 'excerpt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco  .laboris nisi ut aliquip ex ea '),
(886, 204, '_excerpt', 'field_5abc45bd36b1e'),
(887, 204, 'button', '58'),
(888, 204, '_button', 'field_5abc45dc36b1f'),
(891, 214, 'background', '148'),
(892, 214, '_background', 'field_5abc459a36b1d'),
(893, 214, 'excerpt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco  .laboris nisi ut aliquip ex ea '),
(894, 214, '_excerpt', 'field_5abc45bd36b1e'),
(895, 214, 'button', '58'),
(896, 214, '_button', 'field_5abc45dc36b1f'),
(899, 215, 'background', '148'),
(900, 215, '_background', 'field_5abc459a36b1d'),
(901, 215, 'excerpt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco  .laboris nisi ut aliquip ex ea '),
(902, 215, '_excerpt', 'field_5abc45bd36b1e'),
(903, 215, 'button', '58'),
(904, 215, '_button', 'field_5abc45dc36b1f'),
(905, 216, '_edit_last', '1'),
(906, 216, '_edit_lock', '1522688344:1'),
(907, 216, '_thumbnail_id', '57'),
(910, 217, 'background', '160'),
(911, 217, '_background', 'field_5abc459a36b1d'),
(912, 217, 'excerpt', 'Lorem es un texto generico'),
(913, 217, '_excerpt', 'field_5abc45bd36b1e'),
(914, 217, 'button', '199'),
(915, 217, '_button', 'field_5abc45dc36b1f'),
(916, 216, 'background', '160'),
(917, 216, '_background', 'field_5abc459a36b1d'),
(918, 216, 'excerpt', 'Lorem es un texto generico'),
(919, 216, '_excerpt', 'field_5abc45bd36b1e'),
(920, 216, 'button', '199'),
(921, 216, '_button', 'field_5abc45dc36b1f'),
(924, 219, 'background', '148'),
(925, 219, '_background', 'field_5abc459a36b1d'),
(926, 219, 'excerpt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco  .laboris nisi ut aliquip ex ea '),
(927, 219, '_excerpt', 'field_5abc45bd36b1e'),
(928, 219, 'button', '58'),
(929, 219, '_button', 'field_5abc45dc36b1f'),
(932, 220, 'background', '148'),
(933, 220, '_background', 'field_5abc459a36b1d'),
(934, 220, 'excerpt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco  .laboris nisi ut aliquip ex ea '),
(935, 220, '_excerpt', 'field_5abc45bd36b1e'),
(936, 220, 'button', '58'),
(937, 220, '_button', 'field_5abc45dc36b1f'),
(940, 221, 'background', '148'),
(941, 221, '_background', 'field_5abc459a36b1d'),
(942, 221, 'excerpt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco  .laboris nisi ut aliquip ex ea '),
(943, 221, '_excerpt', 'field_5abc45bd36b1e'),
(944, 221, 'button', '58'),
(945, 221, '_button', 'field_5abc45dc36b1f'),
(948, 199, '_thumbnail_id', '148'),
(951, 222, '_edit_last', '1'),
(952, 222, '_edit_lock', '1522701860:1'),
(953, 222, '_thumbnail_id', '146'),
(956, 223, 'background', '142'),
(957, 223, '_background', 'field_5abc459a36b1d'),
(958, 223, 'excerpt', 'Hola como estas'),
(959, 223, '_excerpt', 'field_5abc45bd36b1e'),
(960, 223, 'button', '199'),
(961, 223, '_button', 'field_5abc45dc36b1f'),
(962, 222, 'background', '142'),
(963, 222, '_background', 'field_5abc459a36b1d'),
(964, 222, 'excerpt', 'Hola como estas'),
(965, 222, '_excerpt', 'field_5abc45bd36b1e'),
(966, 222, 'button', '199'),
(967, 222, '_button', 'field_5abc45dc36b1f'),
(968, 224, '_edit_last', '1'),
(969, 224, '_edit_lock', '1522702935:1'),
(970, 225, '_wp_attached_file', '2018/04/1d.jpg'),
(971, 225, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1600;s:4:\"file\";s:14:\"2018/04/1d.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"1d-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"1d-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"1d-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"1d-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(972, 224, '_thumbnail_id', '225'),
(975, 226, 'background', '225'),
(976, 226, '_background', 'field_5abc459a36b1d'),
(977, 226, 'excerpt', 'The beach is a best place to play.'),
(978, 226, '_excerpt', 'field_5abc45bd36b1e'),
(979, 226, 'button', '199'),
(980, 226, '_button', 'field_5abc45dc36b1f'),
(981, 224, 'background', '225'),
(982, 224, '_background', 'field_5abc459a36b1d'),
(983, 224, 'excerpt', 'The beach is a best place to play.'),
(984, 224, '_excerpt', 'field_5abc45bd36b1e'),
(985, 224, 'button', '199'),
(986, 224, '_button', 'field_5abc45dc36b1f'),
(987, 227, '_wp_attached_file', '2018/04/1d-1.jpg'),
(988, 227, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1600;s:4:\"file\";s:16:\"2018/04/1d-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"1d-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"1d-1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"1d-1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"1d-1-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(991, 228, 'background', '225'),
(992, 228, '_background', 'field_5abc459a36b1d'),
(993, 228, 'excerpt', 'The beach is a best place to play.'),
(994, 228, '_excerpt', 'field_5abc45bd36b1e'),
(995, 228, 'button', '199'),
(996, 228, '_button', 'field_5abc45dc36b1f'),
(997, 229, '_edit_last', '1'),
(998, 229, '_edit_lock', '1522705377:1'),
(1001, 230, 'background', '225'),
(1002, 230, '_background', 'field_5abc459a36b1d'),
(1003, 230, 'excerpt', 'The beach'),
(1004, 230, '_excerpt', 'field_5abc45bd36b1e'),
(1005, 230, 'button', '224'),
(1006, 230, '_button', 'field_5abc45dc36b1f'),
(1007, 229, 'background', '225'),
(1008, 229, '_background', 'field_5abc459a36b1d'),
(1009, 229, 'excerpt', 'The beach'),
(1010, 229, '_excerpt', 'field_5abc45bd36b1e'),
(1011, 229, 'button', '224'),
(1012, 229, '_button', 'field_5abc45dc36b1f'),
(1013, 229, '_thumbnail_id', '7'),
(1016, 232, 'background', '225'),
(1017, 232, '_background', 'field_5abc459a36b1d'),
(1018, 232, 'excerpt', 'The beach'),
(1019, 232, '_excerpt', 'field_5abc45bd36b1e'),
(1020, 232, 'button', '224'),
(1021, 232, '_button', 'field_5abc45dc36b1f'),
(1024, 233, 'background', '225'),
(1025, 233, '_background', 'field_5abc459a36b1d'),
(1026, 233, 'excerpt', 'The beach'),
(1027, 233, '_excerpt', 'field_5abc45bd36b1e'),
(1028, 233, 'button', '224'),
(1029, 233, '_button', 'field_5abc45dc36b1f'),
(1032, 234, 'background', '225'),
(1033, 234, '_background', 'field_5abc459a36b1d'),
(1034, 234, 'excerpt', 'The beach'),
(1035, 234, '_excerpt', 'field_5abc45bd36b1e'),
(1036, 234, 'button', '224'),
(1037, 234, '_button', 'field_5abc45dc36b1f'),
(1040, 235, 'background', '225'),
(1041, 235, '_background', 'field_5abc459a36b1d'),
(1042, 235, 'excerpt', 'The beach'),
(1043, 235, '_excerpt', 'field_5abc45bd36b1e'),
(1044, 235, 'button', '224'),
(1045, 235, '_button', 'field_5abc45dc36b1f'),
(1048, 236, 'background', '148'),
(1049, 236, '_background', 'field_5abc459a36b1d'),
(1050, 236, 'excerpt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco  .laboris nisi ut aliquip ex ea '),
(1051, 236, '_excerpt', 'field_5abc45bd36b1e'),
(1052, 236, 'button', '58'),
(1053, 236, '_button', 'field_5abc45dc36b1f');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2018-03-23 17:17:41', '2018-03-23 17:17:41', '', 'Web 1920 – 1-image', '', 'inherit', 'open', 'closed', '', 'web-1920-1-image', '', '', '2018-03-23 17:17:41', '2018-03-23 17:17:41', '', 0, 'http://localhost/Ryan/usafact/wp-content/uploads/2018/03/Web-1920-–-1-image.png', 0, 'attachment', 'image/png', 0),
(5, 1, '2018-03-23 17:17:46', '2018-03-23 17:17:46', '{\n    \"lemonroots::custom_logo\": {\n        \"value\": 4,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 17:17:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'abf11e3b-c968-4578-9c22-150898a2a6bc', '', '', '2018-03-23 17:17:46', '2018-03-23 17:17:46', '', 0, 'http://localhost/Ryan/usafact/2018/03/23/abf11e3b-c968-4578-9c22-150898a2a6bc/', 0, 'customize_changeset', '', 0),
(7, 1, '2018-03-23 17:35:45', '2018-03-23 17:35:45', '', 'Lorem-ipsum-4', '', 'inherit', 'open', 'closed', '', 'lorem-ipsum-4', '', '', '2018-03-23 17:35:45', '2018-03-23 17:35:45', '', 0, 'http://localhost/Ryan/usafact/wp-content/uploads/2018/03/Lorem-ipsum-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-03-23 20:43:14', '2018-03-23 20:43:14', '{\n    \"nav_menu[2]\": {\n        \"value\": {\n            \"name\": \"Menu 1\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 20:43:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fbd5d192-67fe-4289-9c55-1448fbfe9633', '', '', '2018-03-23 20:43:14', '2018-03-23 20:43:14', '', 0, 'http://localhost/Ryan/usafact/2018/03/23/fbd5d192-67fe-4289-9c55-1448fbfe9633/', 0, 'customize_changeset', '', 0),
(21, 1, '2018-03-23 20:43:38', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-23 20:43:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/Ryan/usafact/?p=21', 1, 'nav_menu_item', '', 0),
(23, 1, '2018-03-23 20:43:53', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-23 20:43:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/Ryan/usafact/?p=23', 1, 'nav_menu_item', '', 0),
(25, 1, '2018-03-23 20:55:00', '2018-03-23 20:55:00', '{\n    \"lemonroots::themeslug_logo\": {\n        \"value\": \"http://localhost/Ryan/usafact/wp-content/uploads/2018/03/Web-1920-\\u2013-1-image.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 20:55:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aa978883-95a3-4211-aefb-b6197810f239', '', '', '2018-03-23 20:55:00', '2018-03-23 20:55:00', '', 0, 'http://localhost/Ryan/usafact/2018/03/23/aa978883-95a3-4211-aefb-b6197810f239/', 0, 'customize_changeset', '', 0),
(26, 1, '2018-03-23 20:56:29', '2018-03-23 20:56:29', '{\n    \"lemonroots::themeslug_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 20:56:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '84eb053e-87bd-4d99-8821-d35e6e382739', '', '', '2018-03-23 20:56:29', '2018-03-23 20:56:29', '', 0, 'http://localhost/Ryan/usafact/2018/03/23/84eb053e-87bd-4d99-8821-d35e6e382739/', 0, 'customize_changeset', '', 0),
(27, 1, '2018-03-23 20:58:29', '2018-03-23 20:58:29', '{\n    \"lemonroots::themeslug_logo\": {\n        \"value\": \"http://localhost/Ryan/usafact/wp-content/uploads/2018/03/Web-1920-\\u2013-1-image.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 20:58:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '121b371c-3daa-45d1-9843-d24fd4a280d2', '', '', '2018-03-23 20:58:29', '2018-03-23 20:58:29', '', 0, 'http://localhost/Ryan/usafact/2018/03/23/121b371c-3daa-45d1-9843-d24fd4a280d2/', 0, 'customize_changeset', '', 0),
(29, 1, '2018-03-23 21:03:23', '2018-03-23 21:03:23', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-03-26 17:59:20', '2018-03-26 17:59:20', '', 0, 'http://localhost/Ryan/usafact/?page_id=29', 0, 'page', '', 0),
(31, 1, '2018-03-23 21:03:44', '2018-03-23 21:03:44', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 21:03:44\"\n    },\n    \"page_on_front\": {\n        \"value\": \"29\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 21:03:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ebfddeea-1785-4515-9b8b-15c9a46bce10', '', '', '2018-03-23 21:03:44', '2018-03-23 21:03:44', '', 0, 'http://localhost/Ryan/usafact/2018/03/23/ebfddeea-1785-4515-9b8b-15c9a46bce10/', 0, 'customize_changeset', '', 0),
(32, 1, '2018-03-23 21:06:18', '2018-03-23 21:06:18', '{\n    \"page_for_posts\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 21:06:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '162b9f46-ad00-4d56-bb98-7d84b1d5fb34', '', '', '2018-03-23 21:06:18', '2018-03-23 21:06:18', '', 0, 'http://localhost/Ryan/usafact/2018/03/23/162b9f46-ad00-4d56-bb98-7d84b1d5fb34/', 0, 'customize_changeset', '', 0),
(33, 1, '2018-03-23 21:11:49', '2018-03-23 21:11:49', '{\n    \"lemonroots::themeslug_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 21:11:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '61b48aaf-6af0-4c9a-8ebc-48277fd5a971', '', '', '2018-03-23 21:11:49', '2018-03-23 21:11:49', '', 0, 'http://localhost/Ryan/usafact/2018/03/23/61b48aaf-6af0-4c9a-8ebc-48277fd5a971/', 0, 'customize_changeset', '', 0),
(34, 1, '2018-03-23 21:12:43', '2018-03-23 21:12:43', '{\n    \"lemonroots::themeslug_logo\": {\n        \"value\": \"http://localhost/Ryan/usafact/wp-content/uploads/2018/03/Web-1920-\\u2013-1-image.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 21:12:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8c3e307c-dbf9-4358-a0c9-461e2ba268ea', '', '', '2018-03-23 21:12:43', '2018-03-23 21:12:43', '', 0, 'http://localhost/Ryan/usafact/2018/03/23/8c3e307c-dbf9-4358-a0c9-461e2ba268ea/', 0, 'customize_changeset', '', 0),
(35, 1, '2018-03-23 21:48:31', '2018-03-23 21:48:31', '{\n    \"lemonroots::nav_menu_locations[primary_navigation]\": {\n        \"value\": -59848669,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 21:48:31\"\n    },\n    \"nav_menu[-59848669]\": {\n        \"value\": {\n            \"name\": \"Main\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 21:48:31\"\n    },\n    \"nav_menu_item[-1000784927]\": {\n        \"value\": {\n            \"object_id\": 29,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/Ryan/usafact/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -59848669,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 21:48:31\"\n    },\n    \"nav_menu_item[-1530436535]\": {\n        \"value\": {\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"P\\u00e1gina de ejemplo\",\n            \"url\": \"http://localhost/Ryan/usafact/pagina-ejemplo/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"P\\u00e1gina de ejemplo\",\n            \"nav_menu_term_id\": -59848669,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 21:48:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1b4b499c-8022-4703-b3ff-ea8f30ee4220', '', '', '2018-03-23 21:48:31', '2018-03-23 21:48:31', '', 0, 'http://localhost/Ryan/usafact/2018/03/23/1b4b499c-8022-4703-b3ff-ea8f30ee4220/', 0, 'customize_changeset', '', 0),
(38, 1, '2018-03-23 22:02:27', '2018-03-23 22:02:27', '{\n    \"lemonroots::nav_menu_locations[primary_navigation]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 22:02:27\"\n    },\n    \"nav_menu[3]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-23 22:02:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7ca323f0-72f8-4a3f-957a-f6fd24f012b4', '', '', '2018-03-23 22:02:27', '2018-03-23 22:02:27', '', 0, 'http://localhost/Ryan/usafact/2018/03/23/7ca323f0-72f8-4a3f-957a-f6fd24f012b4/', 0, 'customize_changeset', '', 0),
(39, 1, '2018-03-26 17:26:41', '2018-03-26 17:26:41', '{\n    \"lemonroots::nav_menu_locations[primary_navigation]\": {\n        \"value\": -456257670,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 17:26:41\"\n    },\n    \"nav_menu[-456257670]\": {\n        \"value\": {\n            \"name\": \"Main\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 17:26:41\"\n    },\n    \"nav_menu_item[-1008446142]\": {\n        \"value\": {\n            \"object_id\": 29,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/Ryan/usafact/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -456257670,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 17:26:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd3553503-fb16-46b5-bbaf-4b29c78f5a94', '', '', '2018-03-26 17:26:41', '2018-03-26 17:26:41', '', 0, 'http://localhost/Ryan/usafact/2018/03/26/d3553503-fb16-46b5-bbaf-4b29c78f5a94/', 0, 'customize_changeset', '', 0),
(41, 1, '2018-03-26 17:28:45', '2018-03-26 17:28:45', '{\n    \"nav_menu[2]\": {\n        \"value\": {\n            \"name\": \"Main\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 17:28:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8a443da3-f3b3-42a9-94e8-99c9af4e4552', '', '', '2018-03-26 17:28:45', '2018-03-26 17:28:45', '', 0, 'http://localhost/Ryan/usafact/2018/03/26/8a443da3-f3b3-42a9-94e8-99c9af4e4552/', 0, 'customize_changeset', '', 0),
(42, 1, '2018-03-26 17:55:39', '2018-03-26 17:55:39', '', 'Screening Solutions', '', 'publish', 'closed', 'closed', '', 'screening-solutions', '', '', '2018-03-26 17:55:39', '2018-03-26 17:55:39', '', 0, 'http://localhost/Ryan/usafact/?page_id=42', 0, 'page', '', 0),
(43, 1, '2018-03-26 17:55:39', '2018-03-26 17:55:39', '', 'Company', '', 'publish', 'closed', 'closed', '', 'company', '', '', '2018-03-26 17:55:39', '2018-03-26 17:55:39', '', 0, 'http://localhost/Ryan/usafact/?page_id=43', 0, 'page', '', 0),
(44, 1, '2018-03-26 17:55:39', '2018-03-26 17:55:39', '', 'Get a Quote', '', 'publish', 'closed', 'closed', '', 'get-a-quote', '', '', '2018-03-26 17:55:39', '2018-03-26 17:55:39', '', 0, 'http://localhost/Ryan/usafact/?page_id=44', 0, 'page', '', 0),
(45, 1, '2018-03-26 17:55:39', '2018-03-26 17:55:39', '', '1-800-547-0263', '', 'publish', 'closed', 'closed', '', '1-800-547-0263', '', '', '2018-03-26 17:55:39', '2018-03-26 17:55:39', '', 0, 'http://localhost/Ryan/usafact/?page_id=45', 0, 'page', '', 0),
(46, 1, '2018-03-26 17:55:38', '2018-03-26 17:55:38', '{\n    \"nav_menu_item[40]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 17:55:38\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            42,\n            43,\n            44,\n            45\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 17:55:38\"\n    },\n    \"nav_menu_item[-1335405912]\": {\n        \"value\": {\n            \"object_id\": 42,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Screening Solutions\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=42\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Screening Solutions\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 17:55:38\"\n    },\n    \"nav_menu_item[-1117303572]\": {\n        \"value\": {\n            \"object_id\": 43,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Company\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=43\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Company\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 17:55:38\"\n    },\n    \"nav_menu_item[-521216147]\": {\n        \"value\": {\n            \"object_id\": 44,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Get a Quote\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=44\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Get a Quote\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 17:55:38\"\n    },\n    \"nav_menu_item[-182869276]\": {\n        \"value\": {\n            \"object_id\": 45,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"1-800-547-0263\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=45\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"1-800-547-0263\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 17:55:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7d4488cf-06e3-4d0d-b470-6da363dfa97e', '', '', '2018-03-26 17:55:38', '2018-03-26 17:55:38', '', 0, 'http://localhost/Ryan/usafact/2018/03/26/7d4488cf-06e3-4d0d-b470-6da363dfa97e/', 0, 'customize_changeset', '', 0),
(51, 1, '2018-03-26 17:55:39', '2018-03-26 17:55:39', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2018-03-27 22:41:15', '2018-03-27 22:41:15', '', 0, 'http://localhost/Ryan/usafact/2018/03/26/51/', 1, 'nav_menu_item', '', 0),
(52, 1, '2018-03-26 17:55:40', '2018-03-26 17:55:40', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2018-03-27 22:41:15', '2018-03-27 22:41:15', '', 0, 'http://localhost/Ryan/usafact/2018/03/26/52/', 2, 'nav_menu_item', '', 0),
(53, 1, '2018-03-26 17:55:40', '2018-03-26 17:55:40', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2018-03-27 22:41:15', '2018-03-27 22:41:15', '', 0, 'http://localhost/Ryan/usafact/2018/03/26/53/', 3, 'nav_menu_item', '', 0),
(57, 1, '2018-03-26 20:54:19', '2018-03-26 20:54:19', '', 'iPhone 6-7-8 Plus – 1-image10', '', 'inherit', 'open', 'closed', '', 'iphone-6-7-8-plus-1-image10', '', '', '2018-03-26 20:54:19', '2018-03-26 20:54:19', '', 0, 'http://localhost/Ryan/usafact/wp-content/uploads/2018/03/iPhone-6-7-8-Plus-–-1-image10.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2018-03-26 21:15:59', '2018-03-26 21:15:59', '', 'Criminal Background Checks', '', 'publish', 'closed', 'closed', '', 'criminal-background-checks', '', '', '2018-03-29 01:26:01', '2018-03-29 01:26:01', '', 0, 'http://localhost/Ryan/usafact/?page_id=58', 0, 'page', '', 0),
(59, 1, '2018-03-26 21:15:59', '2018-03-26 21:15:59', '{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            58,\n            60,\n            61\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 21:15:45\"\n    },\n    \"nav_menu[-1109871526]\": {\n        \"value\": {\n            \"name\": \"services\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 21:15:23\"\n    },\n    \"nav_menu_item[-607348359]\": {\n        \"value\": {\n            \"object_id\": 58,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Criminal BAckground Checks\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=58\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Criminal BAckground Checks\",\n            \"nav_menu_term_id\": -1109871526,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 21:15:23\"\n    },\n    \"nav_menu_item[-1814186689]\": {\n        \"value\": {\n            \"object_id\": 60,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Credit Record & History\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=60\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Credit Record & History\",\n            \"nav_menu_term_id\": -1109871526,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 21:15:45\"\n    },\n    \"nav_menu_item[-215341107]\": {\n        \"value\": {\n            \"object_id\": 61,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Identity Checks\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=61\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Identity Checks\",\n            \"nav_menu_term_id\": -1109871526,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 21:15:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9b66f41c-5db4-40e0-8d4b-b356722ec48a', '', '', '2018-03-26 21:15:59', '2018-03-26 21:15:59', '', 0, 'http://localhost/Ryan/usafact/?p=59', 0, 'customize_changeset', '', 0),
(60, 1, '2018-03-26 21:15:59', '2018-03-26 21:15:59', '', 'Credit Record & History', '', 'publish', 'closed', 'closed', '', 'credit-record-history', '', '', '2018-03-26 21:15:59', '2018-03-26 21:15:59', '', 0, 'http://localhost/Ryan/usafact/?page_id=60', 0, 'page', '', 0),
(61, 1, '2018-03-26 21:15:59', '2018-03-26 21:15:59', '', 'Identity Checks', '', 'publish', 'closed', 'closed', '', 'identity-checks', '', '', '2018-03-26 21:15:59', '2018-03-26 21:15:59', '', 0, 'http://localhost/Ryan/usafact/?page_id=61', 0, 'page', '', 0),
(65, 1, '2018-03-26 21:16:00', '2018-03-26 21:16:00', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2018-03-26 21:16:00', '2018-03-26 21:16:00', '', 0, 'http://localhost/Ryan/usafact/2018/03/26/65/', 1, 'nav_menu_item', '', 0),
(66, 1, '2018-03-26 21:16:00', '2018-03-26 21:16:00', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2018-03-26 21:16:00', '2018-03-26 21:16:00', '', 0, 'http://localhost/Ryan/usafact/2018/03/26/66/', 2, 'nav_menu_item', '', 0),
(67, 1, '2018-03-26 21:16:01', '2018-03-26 21:16:01', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2018-03-26 21:16:01', '2018-03-26 21:16:01', '', 0, 'http://localhost/Ryan/usafact/2018/03/26/67/', 3, 'nav_menu_item', '', 0),
(68, 1, '2018-03-26 22:52:41', '2018-03-26 22:52:41', '{\n    \"nav_menu_item[54]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 22:52:40\"\n    },\n    \"nav_menu_item[-76940516]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"custom\",\n            \"title\": \"1-800-547-0263\",\n            \"url\": \"tel: 1-800-547-0263\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"1-800-547-0263\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-26 22:52:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '42b33d36-69fd-420c-9a61-a32b325060ae', '', '', '2018-03-26 22:52:41', '2018-03-26 22:52:41', '', 0, 'http://localhost/Ryan/usafact/?p=68', 0, 'customize_changeset', '', 0),
(69, 1, '2018-03-26 22:52:42', '2018-03-26 22:52:42', '', '1-800-547-0263', '', 'publish', 'closed', 'closed', '', '1-800-547-0263', '', '', '2018-03-27 22:41:15', '2018-03-27 22:41:15', '', 0, 'http://localhost/Ryan/usafact/2018/03/26/1-800-547-0263/', 4, 'nav_menu_item', '', 0),
(70, 1, '2018-03-27 15:49:54', '2018-03-27 15:49:54', '{\n    \"lemon::custom_logo\": {\n        \"value\": 4,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 15:49:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4bdea3d7-cc56-4403-95c0-95bbfd9fcd46', '', '', '2018-03-27 15:49:54', '2018-03-27 15:49:54', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/4bdea3d7-cc56-4403-95c0-95bbfd9fcd46/', 0, 'customize_changeset', '', 0),
(71, 1, '2018-03-27 18:02:31', '2018-03-27 18:02:31', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-03-27 18:02:31', '2018-03-27 18:02:31', '', 0, 'http://localhost/Ryan/usafact/wp-content/uploads/2018/03/logo.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2018-03-27 18:02:38', '2018-03-27 18:02:38', '{\n    \"lemonroots::custom_logo\": {\n        \"value\": 71,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 18:02:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'afbf35ad-3e45-429a-a6cb-e577abd01e50', '', '', '2018-03-27 18:02:38', '2018-03-27 18:02:38', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/afbf35ad-3e45-429a-a6cb-e577abd01e50/', 0, 'customize_changeset', '', 0),
(73, 1, '2018-03-27 23:00:41', '2018-03-27 23:00:41', '', 'Drug & Health Screening', '', 'publish', 'closed', 'closed', '', 'drug-health-screening', '', '', '2018-03-27 23:00:41', '2018-03-27 23:00:41', '', 0, 'http://localhost/Ryan/usafact/?page_id=73', 0, 'page', '', 0),
(74, 1, '2018-03-27 23:00:41', '2018-03-27 23:00:41', '', 'I-9 & E-Verify', '', 'publish', 'closed', 'closed', '', 'i-9-e-verify', '', '', '2018-03-27 23:00:41', '2018-03-27 23:00:41', '', 0, 'http://localhost/Ryan/usafact/?page_id=74', 0, 'page', '', 0),
(75, 1, '2018-03-27 23:00:41', '2018-03-27 23:00:41', '', 'Workforce Screening', '', 'publish', 'closed', 'closed', '', 'workforce-screening', '', '', '2018-03-27 23:00:41', '2018-03-27 23:00:41', '', 0, 'http://localhost/Ryan/usafact/?page_id=75', 0, 'page', '', 0),
(76, 1, '2018-03-27 23:00:41', '2018-03-27 23:00:41', '', 'Employment History', '', 'publish', 'closed', 'closed', '', 'employment-history', '', '', '2018-03-27 23:00:41', '2018-03-27 23:00:41', '', 0, 'http://localhost/Ryan/usafact/?page_id=76', 0, 'page', '', 0),
(77, 1, '2018-03-27 23:00:42', '2018-03-27 23:00:42', '', 'Loan Originations', '', 'publish', 'closed', 'closed', '', 'loan-originations', '', '', '2018-03-27 23:00:42', '2018-03-27 23:00:42', '', 0, 'http://localhost/Ryan/usafact/?page_id=77', 0, 'page', '', 0),
(78, 1, '2018-03-27 23:00:42', '2018-03-27 23:00:42', '', 'Driving Records', '', 'publish', 'closed', 'closed', '', 'driving-records', '', '', '2018-03-27 23:00:42', '2018-03-27 23:00:42', '', 0, 'http://localhost/Ryan/usafact/?page_id=78', 0, 'page', '', 0),
(79, 1, '2018-03-27 23:00:42', '2018-03-27 23:00:42', '', 'Citizenship & Legal Work Status', '', 'publish', 'closed', 'closed', '', 'citizenship-legal-work-status', '', '', '2018-03-27 23:00:42', '2018-03-27 23:00:42', '', 0, 'http://localhost/Ryan/usafact/?page_id=79', 0, 'page', '', 0),
(80, 1, '2018-03-27 23:00:42', '2018-03-27 23:00:42', '', 'Global Screening', '', 'publish', 'closed', 'closed', '', 'global-screening', '', '', '2018-03-27 23:00:42', '2018-03-27 23:00:42', '', 0, 'http://localhost/Ryan/usafact/?page_id=80', 0, 'page', '', 0),
(81, 1, '2018-03-27 23:00:40', '2018-03-27 23:00:40', '{\n    \"nav_menu[3]\": {\n        \"value\": {\n            \"name\": \"Services\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:00:40\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            73,\n            74,\n            75,\n            76,\n            77,\n            78,\n            79,\n            80\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:00:40\"\n    },\n    \"nav_menu_item[-737309314]\": {\n        \"value\": {\n            \"object_id\": 73,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Drug & Health Screening\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=73\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Drug & Health Screening\",\n            \"nav_menu_term_id\": 3,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:00:40\"\n    },\n    \"nav_menu_item[-969563086]\": {\n        \"value\": {\n            \"object_id\": 74,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"I-9 & E-Verify\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=74\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"I-9 & E-Verify\",\n            \"nav_menu_term_id\": 3,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:00:40\"\n    },\n    \"nav_menu_item[-856967230]\": {\n        \"value\": {\n            \"object_id\": 75,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Workforce Screening\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=75\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Workforce Screening\",\n            \"nav_menu_term_id\": 3,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:00:40\"\n    },\n    \"nav_menu_item[-1504026174]\": {\n        \"value\": {\n            \"object_id\": 76,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"Employment History\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=76\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Employment History\",\n            \"nav_menu_term_id\": 3,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:00:40\"\n    },\n    \"nav_menu_item[-838040587]\": {\n        \"value\": {\n            \"object_id\": 77,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"post_type\",\n            \"title\": \"Loan Originations\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=77\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Loan Originations\",\n            \"nav_menu_term_id\": 3,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:00:40\"\n    },\n    \"nav_menu_item[-2045651647]\": {\n        \"value\": {\n            \"object_id\": 78,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 9,\n            \"type\": \"post_type\",\n            \"title\": \"Driving Records\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=78\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Driving Records\",\n            \"nav_menu_term_id\": 3,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:00:40\"\n    },\n    \"nav_menu_item[-1584127984]\": {\n        \"value\": {\n            \"object_id\": 79,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 10,\n            \"type\": \"post_type\",\n            \"title\": \"Citizenship & Legal Work Status\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=79\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Citizenship & Legal Work Status\",\n            \"nav_menu_term_id\": 3,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:00:40\"\n    },\n    \"nav_menu_item[-2135285840]\": {\n        \"value\": {\n            \"object_id\": 80,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 11,\n            \"type\": \"post_type\",\n            \"title\": \"Global Screening\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=80\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Global Screening\",\n            \"nav_menu_term_id\": 3,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:00:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5e06c7ad-d880-454a-bddc-de3faa52abb0', '', '', '2018-03-27 23:00:40', '2018-03-27 23:00:40', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/5e06c7ad-d880-454a-bddc-de3faa52abb0/', 0, 'customize_changeset', '', 0),
(90, 1, '2018-03-27 23:00:43', '2018-03-27 23:00:43', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2018-03-27 23:00:43', '2018-03-27 23:00:43', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/90/', 4, 'nav_menu_item', '', 0),
(91, 1, '2018-03-27 23:00:43', '2018-03-27 23:00:43', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2018-03-27 23:00:43', '2018-03-27 23:00:43', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/91/', 5, 'nav_menu_item', '', 0),
(92, 1, '2018-03-27 23:00:44', '2018-03-27 23:00:44', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2018-03-27 23:00:44', '2018-03-27 23:00:44', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/92/', 6, 'nav_menu_item', '', 0),
(93, 1, '2018-03-27 23:00:45', '2018-03-27 23:00:45', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2018-03-27 23:00:45', '2018-03-27 23:00:45', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/93/', 7, 'nav_menu_item', '', 0),
(94, 1, '2018-03-27 23:00:46', '2018-03-27 23:00:46', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2018-03-27 23:00:46', '2018-03-27 23:00:46', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/94/', 8, 'nav_menu_item', '', 0),
(95, 1, '2018-03-27 23:00:47', '2018-03-27 23:00:47', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2018-03-27 23:00:47', '2018-03-27 23:00:47', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/95/', 9, 'nav_menu_item', '', 0),
(96, 1, '2018-03-27 23:00:48', '2018-03-27 23:00:48', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2018-03-27 23:00:48', '2018-03-27 23:00:48', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/96/', 10, 'nav_menu_item', '', 0),
(97, 1, '2018-03-27 23:00:48', '2018-03-27 23:00:48', ' ', '', '', 'publish', 'closed', 'closed', '', '97', '', '', '2018-03-27 23:00:48', '2018-03-27 23:00:48', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/97/', 11, 'nav_menu_item', '', 0),
(98, 1, '2018-03-27 23:03:13', '2018-03-27 23:03:13', '{\n    \"nav_menu[-532119040]\": {\n        \"value\": {\n            \"name\": \"Industries\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:01:41\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            99,\n            100,\n            101,\n            102,\n            103,\n            104,\n            105,\n            106,\n            107,\n            108,\n            109\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:03:13\"\n    },\n    \"nav_menu_item[-1682717878]\": {\n        \"value\": {\n            \"object_id\": 99,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Financial\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=99\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Financial\",\n            \"nav_menu_term_id\": -532119040,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:02:41\"\n    },\n    \"nav_menu_item[-1143471584]\": {\n        \"value\": {\n            \"object_id\": 100,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Healthcare\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=100\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Healthcare\",\n            \"nav_menu_term_id\": -532119040,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:02:41\"\n    },\n    \"nav_menu_item[-1259230469]\": {\n        \"value\": {\n            \"object_id\": 101,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Distribution\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=101\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Distribution\",\n            \"nav_menu_term_id\": -532119040,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:02:41\"\n    },\n    \"nav_menu_item[-1417006433]\": {\n        \"value\": {\n            \"object_id\": 102,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Security\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=102\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Security\",\n            \"nav_menu_term_id\": -532119040,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:02:41\"\n    },\n    \"nav_menu_item[-1707445939]\": {\n        \"value\": {\n            \"object_id\": 103,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"Construction\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=103\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Construction\",\n            \"nav_menu_term_id\": -532119040,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:02:41\"\n    },\n    \"nav_menu_item[-1518457741]\": {\n        \"value\": {\n            \"object_id\": 104,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Staffing Agencies\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=104\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Staffing Agencies\",\n            \"nav_menu_term_id\": -532119040,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:02:41\"\n    },\n    \"nav_menu_item[-226468282]\": {\n        \"value\": {\n            \"object_id\": 105,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"Food Services & Restaurants\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=105\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Food Services & Restaurants\",\n            \"nav_menu_term_id\": -532119040,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:02:41\"\n    },\n    \"nav_menu_item[-1336103176]\": {\n        \"value\": {\n            \"object_id\": 106,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"post_type\",\n            \"title\": \"Insurance\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=106\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Insurance\",\n            \"nav_menu_term_id\": -532119040,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:03:13\"\n    },\n    \"nav_menu_item[-711801644]\": {\n        \"value\": {\n            \"object_id\": 107,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 9,\n            \"type\": \"post_type\",\n            \"title\": \"Government Municipalities\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=107\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Government Municipalities\",\n            \"nav_menu_term_id\": -532119040,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:03:13\"\n    },\n    \"nav_menu_item[-1123207074]\": {\n        \"value\": {\n            \"object_id\": 108,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 10,\n            \"type\": \"post_type\",\n            \"title\": \"Trasnportation\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=108\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Trasnportation\",\n            \"nav_menu_term_id\": -532119040,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:03:13\"\n    },\n    \"nav_menu_item[-422763261]\": {\n        \"value\": {\n            \"object_id\": 109,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 11,\n            \"type\": \"post_type\",\n            \"title\": \"Non-Profit\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=109\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Non-Profit\",\n            \"nav_menu_term_id\": -532119040,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:03:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1b2777f5-b7a4-4d2c-9498-3173fda9c4f7', '', '', '2018-03-27 23:03:13', '2018-03-27 23:03:13', '', 0, 'http://localhost/Ryan/usafact/?p=98', 0, 'customize_changeset', '', 0),
(99, 1, '2018-03-27 23:03:13', '2018-03-27 23:03:13', '', 'Financial', '', 'publish', 'closed', 'closed', '', 'financial', '', '', '2018-03-27 23:03:13', '2018-03-27 23:03:13', '', 0, 'http://localhost/Ryan/usafact/?page_id=99', 0, 'page', '', 0),
(100, 1, '2018-03-27 23:03:13', '2018-03-27 23:03:13', '', 'Healthcare', '', 'publish', 'closed', 'closed', '', 'healthcare', '', '', '2018-03-27 23:03:13', '2018-03-27 23:03:13', '', 0, 'http://localhost/Ryan/usafact/?page_id=100', 0, 'page', '', 0),
(101, 1, '2018-03-27 23:03:14', '2018-03-27 23:03:14', '', 'Distribution', '', 'publish', 'closed', 'closed', '', 'distribution', '', '', '2018-03-27 23:03:14', '2018-03-27 23:03:14', '', 0, 'http://localhost/Ryan/usafact/?page_id=101', 0, 'page', '', 0),
(102, 1, '2018-03-27 23:03:14', '2018-03-27 23:03:14', '', 'Security', '', 'publish', 'closed', 'closed', '', 'security', '', '', '2018-03-27 23:03:14', '2018-03-27 23:03:14', '', 0, 'http://localhost/Ryan/usafact/?page_id=102', 0, 'page', '', 0),
(103, 1, '2018-03-27 23:03:14', '2018-03-27 23:03:14', '', 'Construction', '', 'publish', 'closed', 'closed', '', 'construction', '', '', '2018-03-27 23:03:14', '2018-03-27 23:03:14', '', 0, 'http://localhost/Ryan/usafact/?page_id=103', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(104, 1, '2018-03-27 23:03:14', '2018-03-27 23:03:14', '', 'Staffing Agencies', '', 'publish', 'closed', 'closed', '', 'staffing-agencies', '', '', '2018-03-27 23:03:14', '2018-03-27 23:03:14', '', 0, 'http://localhost/Ryan/usafact/?page_id=104', 0, 'page', '', 0),
(105, 1, '2018-03-27 23:03:14', '2018-03-27 23:03:14', '', 'Food Services & Restaurants', '', 'publish', 'closed', 'closed', '', 'food-services-restaurants', '', '', '2018-03-27 23:03:14', '2018-03-27 23:03:14', '', 0, 'http://localhost/Ryan/usafact/?page_id=105', 0, 'page', '', 0),
(106, 1, '2018-03-27 23:03:15', '2018-03-27 23:03:15', '', 'Insurance', '', 'publish', 'closed', 'closed', '', 'insurance', '', '', '2018-03-27 23:03:15', '2018-03-27 23:03:15', '', 0, 'http://localhost/Ryan/usafact/?page_id=106', 0, 'page', '', 0),
(107, 1, '2018-03-27 23:03:15', '2018-03-27 23:03:15', '', 'Government Municipalities', '', 'publish', 'closed', 'closed', '', 'government-municipalities', '', '', '2018-03-27 23:03:15', '2018-03-27 23:03:15', '', 0, 'http://localhost/Ryan/usafact/?page_id=107', 0, 'page', '', 0),
(108, 1, '2018-03-27 23:03:15', '2018-03-27 23:03:15', '', 'Trasnportation', '', 'publish', 'closed', 'closed', '', 'trasnportation', '', '', '2018-03-27 23:03:15', '2018-03-27 23:03:15', '', 0, 'http://localhost/Ryan/usafact/?page_id=108', 0, 'page', '', 0),
(109, 1, '2018-03-27 23:03:16', '2018-03-27 23:03:16', '', 'Non-Profit', '', 'publish', 'closed', 'closed', '', 'non-profit', '', '', '2018-03-27 23:03:16', '2018-03-27 23:03:16', '', 0, 'http://localhost/Ryan/usafact/?page_id=109', 0, 'page', '', 0),
(121, 1, '2018-03-27 23:03:16', '2018-03-27 23:03:16', ' ', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2018-03-27 23:03:16', '2018-03-27 23:03:16', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/121/', 1, 'nav_menu_item', '', 0),
(122, 1, '2018-03-27 23:03:17', '2018-03-27 23:03:17', ' ', '', '', 'publish', 'closed', 'closed', '', '122', '', '', '2018-03-27 23:03:17', '2018-03-27 23:03:17', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/122/', 2, 'nav_menu_item', '', 0),
(123, 1, '2018-03-27 23:03:17', '2018-03-27 23:03:17', ' ', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2018-03-27 23:03:17', '2018-03-27 23:03:17', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/123/', 3, 'nav_menu_item', '', 0),
(124, 1, '2018-03-27 23:03:18', '2018-03-27 23:03:18', ' ', '', '', 'publish', 'closed', 'closed', '', '124', '', '', '2018-03-27 23:03:18', '2018-03-27 23:03:18', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/124/', 4, 'nav_menu_item', '', 0),
(125, 1, '2018-03-27 23:03:18', '2018-03-27 23:03:18', ' ', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2018-03-27 23:03:18', '2018-03-27 23:03:18', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/125/', 5, 'nav_menu_item', '', 0),
(126, 1, '2018-03-27 23:03:19', '2018-03-27 23:03:19', ' ', '', '', 'publish', 'closed', 'closed', '', '126', '', '', '2018-03-27 23:03:19', '2018-03-27 23:03:19', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/126/', 6, 'nav_menu_item', '', 0),
(127, 1, '2018-03-27 23:03:20', '2018-03-27 23:03:20', ' ', '', '', 'publish', 'closed', 'closed', '', '127', '', '', '2018-03-27 23:03:20', '2018-03-27 23:03:20', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/127/', 7, 'nav_menu_item', '', 0),
(128, 1, '2018-03-27 23:03:21', '2018-03-27 23:03:21', ' ', '', '', 'publish', 'closed', 'closed', '', '128', '', '', '2018-03-27 23:03:21', '2018-03-27 23:03:21', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/128/', 8, 'nav_menu_item', '', 0),
(129, 1, '2018-03-27 23:03:22', '2018-03-27 23:03:22', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2018-03-27 23:03:22', '2018-03-27 23:03:22', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/129/', 9, 'nav_menu_item', '', 0),
(130, 1, '2018-03-27 23:03:22', '2018-03-27 23:03:22', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2018-03-27 23:03:22', '2018-03-27 23:03:22', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/130/', 10, 'nav_menu_item', '', 0),
(131, 1, '2018-03-27 23:03:23', '2018-03-27 23:03:23', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2018-03-27 23:03:23', '2018-03-27 23:03:23', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/131/', 11, 'nav_menu_item', '', 0),
(132, 1, '2018-03-27 23:03:58', '2018-03-27 23:03:58', '', 'Rapid Fact', '', 'publish', 'closed', 'closed', '', 'rapid-fact', '', '', '2018-03-27 23:03:58', '2018-03-27 23:03:58', '', 0, 'http://localhost/Ryan/usafact/?page_id=132', 0, 'page', '', 0),
(133, 1, '2018-03-27 23:03:58', '2018-03-27 23:03:58', '', 'Lend Fact', '', 'publish', 'closed', 'closed', '', 'lend-fact', '', '', '2018-03-27 23:03:58', '2018-03-27 23:03:58', '', 0, 'http://localhost/Ryan/usafact/?page_id=133', 0, 'page', '', 0),
(134, 1, '2018-03-27 23:03:59', '2018-03-27 23:03:59', '', 'USA Tenant', '', 'publish', 'closed', 'closed', '', 'usa-tenant', '', '', '2018-03-27 23:03:59', '2018-03-27 23:03:59', '', 0, 'http://localhost/Ryan/usafact/?page_id=134', 0, 'page', '', 0),
(135, 1, '2018-03-27 23:03:58', '2018-03-27 23:03:58', '{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            132,\n            133,\n            134\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:03:58\"\n    },\n    \"nav_menu[-1370173684]\": {\n        \"value\": {\n            \"name\": \"Software & Tools\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:03:58\"\n    },\n    \"nav_menu_item[-563326518]\": {\n        \"value\": {\n            \"object_id\": 132,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Rapid Fact\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=132\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Rapid Fact\",\n            \"nav_menu_term_id\": -1370173684,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:03:58\"\n    },\n    \"nav_menu_item[-782590452]\": {\n        \"value\": {\n            \"object_id\": 133,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Lend Fact\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=133\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Lend Fact\",\n            \"nav_menu_term_id\": -1370173684,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:03:58\"\n    },\n    \"nav_menu_item[-284989442]\": {\n        \"value\": {\n            \"object_id\": 134,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"USA Tenant\",\n            \"url\": \"http://localhost/Ryan/usafact/?page_id=134\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"USA Tenant\",\n            \"nav_menu_term_id\": -1370173684,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-27 23:03:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c63d5b8e-3647-4e44-87eb-40e6f2e03560', '', '', '2018-03-27 23:03:58', '2018-03-27 23:03:58', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/c63d5b8e-3647-4e44-87eb-40e6f2e03560/', 0, 'customize_changeset', '', 0),
(139, 1, '2018-03-27 23:03:59', '2018-03-27 23:03:59', ' ', '', '', 'publish', 'closed', 'closed', '', '139', '', '', '2018-03-27 23:03:59', '2018-03-27 23:03:59', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/139/', 1, 'nav_menu_item', '', 0),
(140, 1, '2018-03-27 23:04:00', '2018-03-27 23:04:00', ' ', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2018-03-27 23:04:00', '2018-03-27 23:04:00', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/140/', 2, 'nav_menu_item', '', 0),
(141, 1, '2018-03-27 23:04:01', '2018-03-27 23:04:01', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2018-03-27 23:04:01', '2018-03-27 23:04:01', '', 0, 'http://localhost/Ryan/usafact/2018/03/27/141/', 3, 'nav_menu_item', '', 0),
(142, 1, '2018-03-28 20:34:06', '2018-03-28 20:34:06', '', '14732458361707', '', 'inherit', 'open', 'closed', '', '14732458361707', '', '', '2018-03-29 01:40:04', '2018-03-29 01:40:04', '', 199, 'http://localhost/Ryan/usafact/wp-content/uploads/2018/03/14732458361707.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2018-03-28 20:36:27', '2018-03-28 20:36:27', '', 'empleados', '', 'inherit', 'open', 'closed', '', 'empleados', '', '', '2018-03-29 01:56:34', '2018-03-29 01:56:34', '', 199, 'http://localhost/Ryan/usafact/wp-content/uploads/2018/03/empleados.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2018-03-28 20:36:35', '2018-03-28 20:36:35', '', 'empleados', '', 'inherit', 'open', 'closed', '', 'empleados-2', '', '', '2018-03-28 20:36:35', '2018-03-28 20:36:35', '', 0, 'http://localhost/Ryan/usafact/wp-content/uploads/2018/03/empleados-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2018-03-28 21:01:14', '2018-03-28 21:01:14', '', 'background-footer-top', '', 'inherit', 'open', 'closed', '', 'background-footer-top', '', '', '2018-03-29 01:39:44', '2018-03-29 01:39:44', '', 199, 'http://localhost/Ryan/usafact/wp-content/uploads/2018/03/background-footer-top.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2018-03-28 23:51:24', '2018-03-28 23:51:24', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2018-03-28 23:51:24', '2018-03-28 23:51:24', '', 0, 'http://localhost/Ryan/usafact/wp-content/uploads/2018/03/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2018-03-29 00:03:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-29 00:03:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/Ryan/usafact/?p=162', 0, 'post', '', 0),
(196, 1, '2018-03-29 01:20:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-29 01:20:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/Ryan/usafact/?p=196', 0, 'post', '', 0),
(197, 1, '2018-03-29 01:21:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-29 01:21:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/Ryan/usafact/?p=197', 0, 'post', '', 0),
(198, 1, '2018-03-29 01:36:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-29 01:36:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/Ryan/usafact/?post_type=acf&p=198', 0, 'acf', '', 0),
(199, 1, '2018-03-29 01:40:24', '2018-03-29 01:40:24', '<h1><img class=\" wp-image-145 alignright\" src=\"http://localhost/Ryan/usafact/wp-content/uploads/2018/03/empleados-300x215.jpg\" alt=\"\" width=\"350\" height=\"250\" /></h1>\r\nThis is the first line of defense for your business or organization.\r\n\r\n<a href=\"https://es.lipsum.com/\" target=\"_blank\" rel=\"noopener\">Lorem ipsum</a> dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n\r\nDoloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.Doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.Doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\n<h2><img class=\"size-medium wp-image-142 alignleft\" src=\"http://localhost/Ryan/usafact/wp-content/uploads/2018/03/14732458361707-300x187.jpg\" alt=\"\" width=\"350\" height=\"250\" />Ordering a Thorough Criminal Background Check</h2>\r\nDoloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. magni dolores eos qui ratione voluptatem sequi nesciunt.\r\n\r\nDoloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\n<h2>Why USAFact?</h2>\r\nDoloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\r\n\r\n&nbsp;', 'Criminal Background Check', '', 'publish', 'open', 'open', '', 'criminal-background-check', '', '', '2018-04-02 22:07:40', '2018-04-02 22:07:40', '', 0, 'http://localhost/Ryan/usafact/?p=199', 0, 'post', '', 0),
(208, 1, '2018-03-29 01:48:37', '2018-03-29 01:48:37', '', 'Post', '', 'publish', 'closed', 'closed', '', 'acf_post', '', '', '2018-03-29 01:48:37', '2018-03-29 01:48:37', '', 0, 'http://localhost/Ryan/usafact/?post_type=acf&#038;p=208', 0, 'acf', '', 0),
(216, 1, '2018-04-02 16:58:31', '2018-04-02 16:58:31', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\r\n<h2>Lorem</h2>\r\n</div>\r\n<div>\r\n\r\nEs un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).\r\n\r\n</div>', 'Lorem', '', 'publish', 'open', 'open', '', 'lorem', '', '', '2018-04-02 16:58:31', '2018-04-02 16:58:31', '', 0, 'http://localhost/Ryan/usafact/?p=216', 0, 'post', '', 0),
(218, 1, '2018-04-02 16:58:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-02 16:58:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/Ryan/usafact/?p=218', 0, 'post', '', 0),
(222, 1, '2018-04-02 20:09:21', '2018-04-02 20:09:21', 'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.', 'Hola', '', 'publish', 'open', 'open', '', 'hola', '', '', '2018-04-02 20:09:21', '2018-04-02 20:09:21', '', 0, 'http://localhost/Ryan/usafact/?p=222', 0, 'post', '', 0),
(224, 1, '2018-04-02 20:49:10', '2018-04-02 20:49:10', 'Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\r\n\r\nEl trozo de texto estándar de Lorem Ipsum usado desde el año 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \"de Finibus Bonorum et Malorum\" por Cicero son también reproducidas en su forma original exacta, acompañadas por versiones en Inglés de la traducción realizada en 1914 por H. Rackham.\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-large wp-image-227\" src=\"http://localhost/Ryan/usafact/wp-content/uploads/2018/04/1d-1-1024x640.jpg\" alt=\"\" width=\"1024\" height=\"640\" />', 'The beach', '', 'publish', 'open', 'open', '', 'the-beach', '', '', '2018-04-02 20:57:57', '2018-04-02 20:57:57', '', 0, 'http://localhost/Ryan/usafact/?p=224', 0, 'post', '', 0),
(225, 1, '2018-04-02 20:48:00', '2018-04-02 20:48:00', '', '1d', '', 'inherit', 'open', 'closed', '', '1d', '', '', '2018-04-02 20:48:00', '2018-04-02 20:48:00', '', 224, 'http://localhost/Ryan/usafact/wp-content/uploads/2018/04/1d.jpg', 0, 'attachment', 'image/jpeg', 0),
(227, 1, '2018-04-02 20:57:41', '2018-04-02 20:57:41', '', '1d', '', 'inherit', 'open', 'closed', '', '1d-2', '', '', '2018-04-02 20:57:41', '2018-04-02 20:57:41', '', 224, 'http://localhost/Ryan/usafact/wp-content/uploads/2018/04/1d-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(229, 1, '2018-04-02 21:14:29', '2018-04-02 21:14:29', '<strong><img class=\"wp-image-227 alignright\" src=\"//localhost:81/Ryan/usafact/wp-content/uploads/2018/04/1d-1-1024x640.jpg\" alt=\"\" width=\"322\" height=\"201\" />Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido<a href=\"http://www.google.com\" target=\"_blank\" rel=\"noopener\"> usó</a> una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\r\n<h2>¿Por qué lo usamos?</h2>\r\nEs un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).\r\n\r\n&nbsp;', 'Beach', '', 'publish', 'open', 'open', '', 'beach', '', '', '2018-04-02 21:43:56', '2018-04-02 21:43:56', '', 0, 'http://localhost/Ryan/usafact/?p=229', 0, 'post', '', 0),
(231, 1, '2018-04-02 21:16:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-02 21:16:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/Ryan/usafact/?post_type=acf&p=231', 0, 'acf', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Main', 'main', 0),
(3, 'Services', 'services', 0),
(4, 'Industries', 'industries', 0),
(5, 'Software &amp; Tools', 'software-tools', 0),
(6, 'Featured', 'featured', 0),
(7, 'Work', 'work', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(51, 2, 0),
(52, 2, 0),
(53, 2, 0),
(65, 3, 0),
(66, 3, 0),
(67, 3, 0),
(69, 2, 0),
(90, 3, 0),
(91, 3, 0),
(92, 3, 0),
(93, 3, 0),
(94, 3, 0),
(95, 3, 0),
(96, 3, 0),
(97, 3, 0),
(121, 4, 0),
(122, 4, 0),
(123, 4, 0),
(124, 4, 0),
(125, 4, 0),
(126, 4, 0),
(127, 4, 0),
(128, 4, 0),
(129, 4, 0),
(130, 4, 0),
(131, 4, 0),
(139, 5, 0),
(140, 5, 0),
(141, 5, 0),
(199, 6, 0),
(199, 7, 0),
(216, 1, 0),
(216, 6, 0),
(222, 6, 0),
(222, 7, 0),
(224, 6, 0),
(224, 7, 0),
(229, 6, 0),
(229, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 11),
(4, 4, 'nav_menu', '', 0, 11),
(5, 5, 'nav_menu', '', 0, 3),
(6, 6, 'category', '', 0, 5),
(7, 7, 'category', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"f3a442a4e5d506a751e32dd5aff748983c53e68a9397158f6b020e1ea22c8511\";a:4:{s:10:\"expiration\";i:1523026275;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1521816675;}s:64:\"f8575f5a03ba4ec1ad6d02e8b326d54110e7db44f36bd1452e6eb2338c9c7c6b\";a:4:{s:10:\"expiration\";i:1522851504;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1522678704;}s:64:\"1b5be3ed4f0f12481bffbe07f8daaa69922518b05a7672507caedca0778b025f\";a:4:{s:10:\"expiration\";i:1522885475;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1522712675;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '218'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1&advImgDetails=show&post_dfw=on&editor=tinymce&imgsize=large'),
(20, 1, 'wp_user-settings-time', '1522702675'),
(21, 1, 'closedpostboxes_acf', 'a:0:{}'),
(22, 1, 'metaboxhidden_acf', 'a:0:{}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, 'nav_menu_recently_edited', '2'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B18EgIU8BArpZ8Tsc2AJTWPVLX1S.t.', 'admin', 'Tarmira1993@gmail.com', '', '2018-03-23 14:50:33', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1054;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
