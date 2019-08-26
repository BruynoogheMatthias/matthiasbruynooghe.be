-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2019 at 01:20 PM
-- Server version: 10.1.41-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matthi1q_wp548`
--

-- --------------------------------------------------------

--
-- Table structure for table `wplm_commentmeta`
--

CREATE TABLE `wplm_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wplm_comments`
--

CREATE TABLE `wplm_comments` (
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

--
-- Dumping data for table `wplm_comments`
--

INSERT INTO `wplm_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-08-10 14:34:55', '2019-08-10 14:34:55', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wplm_links`
--

CREATE TABLE `wplm_links` (
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
-- Table structure for table `wplm_options`
--

CREATE TABLE `wplm_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wplm_options`
--

INSERT INTO `wplm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://wordpress.matthiasbruynooghe.be', 'yes'),
(2, 'home', 'https://wordpress.matthiasbruynooghe.be', 'yes'),
(3, 'blogname', 'Matthias Bruynooghe', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@wordpress.matthiasbruynooghe.be', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'business-form', 'yes'),
(41, 'stylesheet', 'business-form', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:20:\"sfsi_Unistall_plugin\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wplm_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:16:\"homepage_widgets\";a:0:{}s:7:\"footer1\";a:0:{}s:7:\"footer2\";a:0:{}s:7:\"footer3\";a:0:{}s:7:\"footer4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1566812095;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1566830095;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1566830096;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566835212;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566835213;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1566230611;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1566809239;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(135, '_site_transient_timeout_browser_666332998c62658cc43216116351bf1f', '1566835213', 'no'),
(136, '_site_transient_browser_666332998c62658cc43216116351bf1f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"76.0.3809.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(137, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1566835213', 'no'),
(138, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(146, 'can_compress_scripts', '1', 'no'),
(157, 'widget_ct-social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(158, 'theme_mods_euphony', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1566230696;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(160, 'current_theme', 'Business Form', 'yes'),
(161, 'theme_switched', '', 'yes'),
(162, 'theme_switched_via_customizer', '', 'yes'),
(163, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(166, 'theme_mods_dank-portfolio', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1566230817;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(168, '_transient_dank_portfolio_categories', '1', 'yes'),
(171, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1566809241;s:7:\"checked\";a:6:{s:13:\"business-form\";s:5:\"0.0.3\";s:14:\"dank-portfolio\";s:5:\"1.0.6\";s:7:\"euphony\";s:5:\"1.1.2\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(172, 'theme_mods_business-form', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(173, 'widget_business-form-quote-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(174, 'widget_business_team_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(175, 'widget_business_testimonials_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(176, 'widget_business-form-recent-post-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(177, 'widget_business-form-our-work-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(178, 'widget_business_about_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(179, 'widget_business-form-faq-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(180, 'widget_business_services_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(181, 'widget_business_form_contact', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(182, 'category_children', 'a:0:{}', 'yes'),
(185, 'recently_activated', 'a:0:{}', 'yes'),
(190, 'analyst_cache', 's:6:\"a:0:{}\";', 'yes'),
(192, 'show_new_notification', 'yes', 'yes'),
(193, 'show_premium_cumulative_count_notification', 'no', 'yes'),
(194, 'sfsi_custom_icons', 'no', 'yes'),
(195, 'sfsi_section1_options', 's:511:\"a:14:{s:16:\"sfsi_rss_display\";s:3:\"yes\";s:18:\"sfsi_email_display\";s:3:\"yes\";s:21:\"sfsi_facebook_display\";s:2:\"no\";s:20:\"sfsi_twitter_display\";s:2:\"no\";s:20:\"sfsi_youtube_display\";s:2:\"no\";s:22:\"sfsi_pinterest_display\";s:2:\"no\";s:21:\"sfsi_telegram_display\";s:2:\"no\";s:15:\"sfsi_vk_display\";s:2:\"no\";s:15:\"sfsi_ok_display\";s:2:\"no\";s:19:\"sfsi_wechat_display\";s:2:\"no\";s:18:\"sfsi_weibo_display\";s:2:\"no\";s:21:\"sfsi_linkedin_display\";s:3:\"yes\";s:22:\"sfsi_instagram_display\";s:2:\"no\";s:17:\"sfsi_custom_files\";s:0:\"\";}\";', 'yes'),
(196, 'sfsi_curlErrorNotices', 'yes', 'yes'),
(197, 'sfsi_curlErrorMessage', 'cURL error 28: Operation timed out after 5001 milliseconds with 0 bytes received', 'yes'),
(198, 'sfsi_section2_options', 's:1752:\"a:44:{s:12:\"sfsi_rss_url\";s:45:\"https://wordpress.matthiasbruynooghe.be/feed/\";s:17:\"sfsi_rss_blogName\";s:0:\"\";s:18:\"sfsi_rss_blogEmail\";s:0:\"\";s:14:\"sfsi_rss_icons\";s:5:\"email\";s:14:\"sfsi_email_url\";N;s:24:\"sfsi_facebookPage_option\";s:0:\"\";s:21:\"sfsi_facebookPage_url\";s:0:\"\";s:24:\"sfsi_facebookLike_option\";s:0:\"\";s:25:\"sfsi_facebookShare_option\";s:0:\"\";s:21:\"sfsi_twitter_followme\";s:0:\"\";s:27:\"sfsi_twitter_followUserName\";s:0:\"\";s:22:\"sfsi_twitter_aboutPage\";s:0:\"\";s:17:\"sfsi_twitter_page\";s:0:\"\";s:20:\"sfsi_twitter_pageURL\";s:0:\"\";s:26:\"sfsi_twitter_aboutPageText\";s:82:\"Hey, check out this cool site I found: www.yourname.com #Topic via@my_twitter_name\";s:20:\"sfsi_youtube_pageUrl\";s:0:\"\";s:17:\"sfsi_youtube_page\";s:0:\"\";s:19:\"sfsi_youtube_follow\";s:0:\"\";s:24:\"sfsi_youtubeusernameorid\";s:0:\"\";s:15:\"sfsi_ytube_user\";s:0:\"\";s:17:\"sfsi_ytube_chnlid\";s:0:\"\";s:19:\"sfsi_pinterest_page\";s:0:\"\";s:22:\"sfsi_pinterest_pageUrl\";s:0:\"\";s:23:\"sfsi_pinterest_pingBlog\";s:0:\"\";s:22:\"sfsi_instagram_pageUrl\";s:0:\"\";s:18:\"sfsi_linkedin_page\";s:3:\"yes\";s:21:\"sfsi_linkedin_pageURL\";s:58:\"https://www.linkedin.com/in/matthias-bruynooghe-480506154/\";s:20:\"sfsi_linkedin_follow\";s:2:\"no\";s:27:\"sfsi_linkedin_followCompany\";i:0;s:23:\"sfsi_linkedin_SharePage\";s:3:\"yes\";s:30:\"sfsi_linkedin_recommendBusines\";s:2:\"no\";s:30:\"sfsi_linkedin_recommendCompany\";s:0:\"\";s:32:\"sfsi_linkedin_recommendProductId\";i:0;s:21:\"sfsi_CustomIcon_links\";s:0:\"\";s:18:\"sfsi_telegram_page\";s:2:\"no\";s:21:\"sfsi_telegram_pageURL\";s:0:\"\";s:21:\"sfsi_telegram_message\";s:0:\"\";s:22:\"sfsi_telegram_username\";s:0:\"\";s:15:\"sfsi_weibo_page\";s:0:\"\";s:18:\"sfsi_weibo_pageURL\";s:0:\"\";s:12:\"sfsi_vk_page\";s:0:\"\";s:15:\"sfsi_vk_pageURL\";s:0:\"\";s:12:\"sfsi_ok_page\";s:0:\"\";s:15:\"sfsi_ok_pageURL\";s:0:\"\";}\";', 'yes'),
(199, 'sfsi_section3_options', 's:382:\"a:9:{s:14:\"sfsi_mouseOver\";s:2:\"no\";s:21:\"sfsi_mouseOver_effect\";s:7:\"fade_in\";s:26:\"sfsi_mouseOver_effect_type\";s:10:\"same_icons\";s:39:\"mouseover_other_icons_transition_effect\";s:4:\"flip\";s:18:\"sfsi_shuffle_icons\";s:2:\"no\";s:22:\"sfsi_shuffle_Firstload\";s:2:\"no\";s:21:\"sfsi_shuffle_interval\";s:2:\"no\";s:25:\"sfsi_shuffle_intervalTime\";s:0:\"\";s:18:\"sfsi_actvite_theme\";s:7:\"default\";}\";', 'yes'),
(200, 'sfsi_section4_options', 's:2149:\"a:54:{s:19:\"sfsi_display_counts\";s:2:\"no\";s:24:\"sfsi_email_countsDisplay\";s:2:\"no\";s:21:\"sfsi_email_countsFrom\";s:6:\"source\";s:23:\"sfsi_email_manualCounts\";s:2:\"20\";s:22:\"sfsi_rss_countsDisplay\";s:2:\"no\";s:21:\"sfsi_rss_manualCounts\";s:2:\"20\";s:22:\"sfsi_facebook_PageLink\";s:0:\"\";s:27:\"sfsi_facebook_countsDisplay\";s:2:\"no\";s:24:\"sfsi_facebook_countsFrom\";s:6:\"manual\";s:26:\"sfsi_facebook_manualCounts\";s:2:\"20\";s:26:\"sfsi_twitter_countsDisplay\";s:2:\"no\";s:23:\"sfsi_twitter_countsFrom\";s:6:\"manual\";s:25:\"sfsi_twitter_manualCounts\";s:2:\"20\";s:27:\"sfsi_linkedIn_countsDisplay\";s:2:\"no\";s:24:\"sfsi_linkedIn_countsFrom\";s:6:\"manual\";s:26:\"sfsi_linkedIn_manualCounts\";s:2:\"20\";s:27:\"sfsi_telegram_countsDisplay\";s:2:\"no\";s:24:\"sfsi_telegram_countsFrom\";s:6:\"manual\";s:26:\"sfsi_telegram_manualCounts\";s:2:\"20\";s:21:\"sfsi_vk_countsDisplay\";s:2:\"no\";s:18:\"sfsi_vk_countsFrom\";s:6:\"manual\";s:20:\"sfsi_vk_manualCounts\";s:2:\"20\";s:21:\"sfsi_ok_countsDisplay\";s:2:\"no\";s:18:\"sfsi_ok_countsFrom\";s:6:\"manual\";s:20:\"sfsi_ok_manualCounts\";s:2:\"20\";s:24:\"sfsi_weibo_countsDisplay\";s:2:\"no\";s:21:\"sfsi_weibo_countsFrom\";s:6:\"manual\";s:23:\"sfsi_weibo_manualCounts\";s:2:\"20\";s:25:\"sfsi_wechat_countsDisplay\";s:2:\"no\";s:22:\"sfsi_wechat_countsFrom\";s:6:\"manual\";s:24:\"sfsi_wechat_manualCounts\";s:2:\"20\";s:10:\"ln_api_key\";s:0:\"\";s:13:\"ln_secret_key\";s:0:\"\";s:19:\"ln_oAuth_user_token\";s:0:\"\";s:10:\"ln_company\";s:0:\"\";s:24:\"sfsi_youtubeusernameorid\";s:4:\"name\";s:17:\"sfsi_youtube_user\";s:0:\"\";s:22:\"sfsi_youtube_channelId\";s:0:\"\";s:17:\"sfsi_ytube_chnlid\";s:0:\"\";s:26:\"sfsi_youtube_countsDisplay\";s:2:\"no\";s:23:\"sfsi_youtube_countsFrom\";s:6:\"manual\";s:25:\"sfsi_youtube_manualCounts\";s:2:\"20\";s:28:\"sfsi_pinterest_countsDisplay\";s:2:\"no\";s:25:\"sfsi_pinterest_countsFrom\";s:6:\"manual\";s:27:\"sfsi_pinterest_manualCounts\";s:2:\"20\";s:19:\"sfsi_pinterest_user\";s:0:\"\";s:20:\"sfsi_pinterest_board\";s:0:\"\";s:25:\"sfsi_instagram_countsFrom\";s:6:\"manual\";s:28:\"sfsi_instagram_countsDisplay\";s:2:\"no\";s:27:\"sfsi_instagram_manualCounts\";s:2:\"20\";s:19:\"sfsi_instagram_User\";s:0:\"\";s:23:\"sfsi_instagram_clientid\";s:0:\"\";s:21:\"sfsi_instagram_appurl\";s:0:\"\";s:20:\"sfsi_instagram_token\";s:0:\"\";}\";', 'yes'),
(201, 'sfsi_section5_options', 's:1529:\"a:37:{s:15:\"sfsi_icons_size\";s:2:\"40\";s:18:\"sfsi_icons_spacing\";s:1:\"5\";s:20:\"sfsi_icons_Alignment\";s:4:\"left\";s:17:\"sfsi_icons_perRow\";s:1:\"5\";s:24:\"sfsi_icons_ClickPageOpen\";s:3:\"yes\";s:26:\"sfsi_icons_suppress_errors\";s:2:\"no\";s:16:\"sfsi_icons_stick\";s:2:\"no\";s:18:\"sfsi_rssIcon_order\";s:1:\"1\";s:20:\"sfsi_emailIcon_order\";s:1:\"2\";s:23:\"sfsi_facebookIcon_order\";s:1:\"3\";s:22:\"sfsi_twitterIcon_order\";s:1:\"4\";s:22:\"sfsi_youtubeIcon_order\";s:1:\"5\";s:24:\"sfsi_pinterestIcon_order\";s:1:\"7\";s:23:\"sfsi_linkedinIcon_order\";s:1:\"8\";s:24:\"sfsi_instagramIcon_order\";s:1:\"9\";s:23:\"sfsi_telegramIcon_order\";s:2:\"11\";s:17:\"sfsi_vkIcon_order\";s:2:\"12\";s:17:\"sfsi_okIcon_order\";s:2:\"13\";s:20:\"sfsi_weiboIcon_order\";s:2:\"14\";s:21:\"sfsi_wechatIcon_order\";s:2:\"15\";s:22:\"sfsi_CustomIcons_order\";s:0:\"\";s:22:\"sfsi_rss_MouseOverText\";s:3:\"RSS\";s:24:\"sfsi_email_MouseOverText\";s:15:\"Follow by Email\";s:26:\"sfsi_twitter_MouseOverText\";s:7:\"Twitter\";s:27:\"sfsi_facebook_MouseOverText\";s:8:\"Facebook\";s:27:\"sfsi_linkedIn_MouseOverText\";s:8:\"LinkedIn\";s:28:\"sfsi_pinterest_MouseOverText\";s:9:\"Pinterest\";s:28:\"sfsi_instagram_MouseOverText\";s:9:\"Instagram\";s:26:\"sfsi_youtube_MouseOverText\";s:7:\"YouTube\";s:27:\"sfsi_telegram_MouseOverText\";s:8:\"Telegram\";s:21:\"sfsi_vk_MouseOverText\";s:2:\"VK\";s:21:\"sfsi_ok_MouseOverText\";s:2:\"OK\";s:24:\"sfsi_weibo_MouseOverText\";s:5:\"Weibo\";s:25:\"sfsi_wechat_MouseOverText\";s:6:\"WeChat\";s:26:\"sfsi_custom_MouseOverTexts\";s:0:\"\";s:23:\"sfsi_custom_social_hide\";s:3:\"yes\";s:32:\"sfsi_pplus_icons_suppress_errors\";s:2:\"no\";}\";', 'yes'),
(202, 'sfsi_section6_options', 's:1299:\"a:15:{s:17:\"sfsi_show_Onposts\";s:2:\"no\";s:22:\"sfsi_icons_postPositon\";s:0:\"\";s:20:\"sfsi_icons_alignment\";s:4:\"left\";s:20:\"sfsi_textBefor_icons\";s:26:\"Please follow and like us:\";s:24:\"sfsi_icons_DisplayCounts\";s:2:\"no\";s:12:\"sfsi_rectsub\";s:3:\"yes\";s:11:\"sfsi_rectfb\";s:3:\"yes\";s:12:\"sfsi_rectshr\";s:2:\"no\";s:13:\"sfsi_recttwtr\";s:3:\"yes\";s:14:\"sfsi_rectpinit\";s:3:\"yes\";s:16:\"sfsi_rectfbshare\";s:3:\"yes\";s:21:\"sfsi_responsive_icons\";a:3:{s:13:\"default_icons\";a:3:{s:8:\"facebook\";a:3:{s:6:\"active\";s:3:\"yes\";s:4:\"text\";s:17:\"Share on Facebook\";s:3:\"url\";s:0:\"\";}s:7:\"Twitter\";a:3:{s:6:\"active\";s:3:\"yes\";s:4:\"text\";s:5:\"Tweet\";s:3:\"url\";s:0:\"\";}s:6:\"Follow\";a:3:{s:6:\"active\";s:3:\"yes\";s:4:\"text\";s:9:\"Follow us\";s:3:\"url\";s:0:\"\";}}s:8:\"settings\";a:12:{s:9:\"icon_size\";s:6:\"Medium\";s:15:\"icon_width_type\";s:16:\"Fully responsive\";s:15:\"icon_width_size\";s:3:\"240\";s:9:\"edge_type\";s:5:\"Round\";s:11:\"edge_radius\";s:1:\"5\";s:5:\"style\";s:8:\"Gradient\";s:6:\"margin\";s:2:\"10\";s:10:\"text_align\";s:8:\"Centered\";s:10:\"show_count\";s:2:\"no\";s:13:\"counter_color\";s:7:\"#aaaaaa\";s:16:\"counter_bg_color\";s:4:\"#fff\";s:16:\"share_count_text\";s:6:\"SHARES\";}s:12:\"custom_icons\";a:0:{}}s:24:\"sfsi_display_button_type\";s:17:\"responsive_button\";s:16:\"sfsi_share_count\";s:2:\"no\";s:30:\"sfsi_responsive_icons_end_post\";s:3:\"yes\";}\";', 'yes'),
(203, 'sfsi_section7_options', 's:666:\"a:15:{s:15:\"sfsi_show_popup\";s:2:\"no\";s:15:\"sfsi_popup_text\";s:42:\"Enjoy this blog? Please spread the word :)\";s:27:\"sfsi_popup_background_color\";s:7:\"#eff7f7\";s:23:\"sfsi_popup_border_color\";s:7:\"#f3faf2\";s:27:\"sfsi_popup_border_thickness\";s:1:\"1\";s:24:\"sfsi_popup_border_shadow\";s:3:\"yes\";s:15:\"sfsi_popup_font\";s:26:\"Helvetica,Arial,sans-serif\";s:19:\"sfsi_popup_fontSize\";s:2:\"30\";s:20:\"sfsi_popup_fontStyle\";s:6:\"normal\";s:20:\"sfsi_popup_fontColor\";s:7:\"#000000\";s:17:\"sfsi_Show_popupOn\";s:4:\"none\";s:25:\"sfsi_Show_popupOn_PageIDs\";s:0:\"\";s:14:\"sfsi_Shown_pop\";s:8:\"ETscroll\";s:24:\"sfsi_Shown_popupOnceTime\";s:0:\"\";s:32:\"sfsi_Shown_popuplimitPerUserTime\";s:0:\"\";}\";', 'yes'),
(204, 'sfsi_section8_options', 's:1208:\"a:26:{s:20:\"sfsi_form_adjustment\";s:3:\"yes\";s:16:\"sfsi_form_height\";s:3:\"180\";s:15:\"sfsi_form_width\";s:3:\"230\";s:16:\"sfsi_form_border\";s:2:\"no\";s:26:\"sfsi_form_border_thickness\";s:1:\"1\";s:22:\"sfsi_form_border_color\";s:7:\"#b5b5b5\";s:20:\"sfsi_form_background\";s:7:\"#ffffff\";s:22:\"sfsi_form_heading_text\";s:22:\"Get new posts by email\";s:22:\"sfsi_form_heading_font\";s:26:\"Helvetica,Arial,sans-serif\";s:27:\"sfsi_form_heading_fontstyle\";s:4:\"bold\";s:27:\"sfsi_form_heading_fontcolor\";s:7:\"#000000\";s:26:\"sfsi_form_heading_fontsize\";s:2:\"16\";s:27:\"sfsi_form_heading_fontalign\";s:6:\"center\";s:20:\"sfsi_form_field_text\";s:9:\"Subscribe\";s:20:\"sfsi_form_field_font\";s:26:\"Helvetica,Arial,sans-serif\";s:25:\"sfsi_form_field_fontstyle\";s:6:\"normal\";s:25:\"sfsi_form_field_fontcolor\";s:7:\"#000000\";s:24:\"sfsi_form_field_fontsize\";s:2:\"14\";s:25:\"sfsi_form_field_fontalign\";s:6:\"center\";s:21:\"sfsi_form_button_text\";s:9:\"Subscribe\";s:21:\"sfsi_form_button_font\";s:26:\"Helvetica,Arial,sans-serif\";s:26:\"sfsi_form_button_fontstyle\";s:4:\"bold\";s:26:\"sfsi_form_button_fontcolor\";s:7:\"#000000\";s:25:\"sfsi_form_button_fontsize\";s:2:\"16\";s:26:\"sfsi_form_button_fontalign\";s:6:\"center\";s:27:\"sfsi_form_button_background\";s:7:\"#dedede\";}\";', 'yes'),
(205, 'sfsi_section9_options', 's:410:\"a:10:{s:20:\"sfsi_show_via_widget\";s:3:\"yes\";s:16:\"sfsi_icons_float\";s:2:\"no\";s:24:\"sfsi_icons_floatPosition\";s:12:\"center-right\";s:26:\"sfsi_icons_floatMargin_top\";i:0;s:29:\"sfsi_icons_floatMargin_bottom\";i:0;s:27:\"sfsi_icons_floatMargin_left\";i:0;s:28:\"sfsi_icons_floatMargin_right\";i:0;s:23:\"sfsi_disable_floaticons\";s:2:\"no\";s:23:\"sfsi_show_via_shortcode\";s:2:\"no\";s:24:\"sfsi_show_via_afterposts\";s:3:\"yes\";}\";', 'yes'),
(206, 'sfsi_feed_id', '', 'yes'),
(207, 'sfsi_redirect_url', '', 'yes'),
(208, 'sfsi_installDate', '2019-08-19 04:08:14', 'yes'),
(209, 'sfsi_RatingDiv', 'no', 'yes'),
(210, 'sfsi_footer_sec', 'no', 'yes'),
(211, 'sfsi_activate', '0', 'yes'),
(212, 'sfsi_instagram_sf_count', 's:126:\"a:4:{s:7:\"date_sf\";i:1566172800;s:14:\"date_instagram\";s:0:\"\";s:13:\"sfsi_sf_count\";s:1:\"O\";s:20:\"sfsi_instagram_count\";s:0:\"\";}\";', 'yes'),
(213, 'sfsi_error_reporting_notice_dismissed', '1', 'yes'),
(214, 'adding_tags', 'yes', 'yes'),
(215, 'widget_sfsi-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(216, 'widget_subscriber_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(217, 'sfsi_pluginVersion', '2.33', 'yes'),
(218, 'sfsi_serverphpVersionnotification', 'yes', 'yes'),
(219, 'show_premium_notification', 'no', 'yes'),
(220, 'show_notification', 'yes', 'yes'),
(221, 'show_mobile_notification', 'yes', 'yes'),
(222, 'sfsi_languageNotice', 'yes', 'yes'),
(223, 'sfsi_pplus_error_reporting_notice_dismissed', '1', 'yes'),
(224, 'sfsi_addThis_icon_removal_notice_dismissed', '1', 'yes'),
(308, '_site_transient_timeout_theme_roots', '1566811040', 'no'),
(309, '_site_transient_theme_roots', 'a:6:{s:13:\"business-form\";s:7:\"/themes\";s:14:\"dank-portfolio\";s:7:\"/themes\";s:7:\"euphony\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(310, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1566809241;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:5:\"2.3.3\";}s:8:\"response\";a:1:{s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:41:\"w.org/plugins/ultimate-social-media-icons\";s:4:\"slug\";s:27:\"ultimate-social-media-icons\";s:6:\"plugin\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:11:\"new_version\";s:5:\"2.3.7\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/ultimate-social-media-icons/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/ultimate-social-media-icons.2.3.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/ultimate-social-media-icons/assets/icon-128x128.png?rev=1598977\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/ultimate-social-media-icons/assets/banner-772x250.png?rev=1032920\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:21:\"<p>Please upgrade</p>\";s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wplm_postmeta`
--

CREATE TABLE `wplm_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wplm_postmeta`
--

INSERT INTO `wplm_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_trash_meta_status', 'publish'),
(4, 5, '_wp_trash_meta_time', '1566230611'),
(5, 6, '_wp_trash_meta_status', 'publish'),
(6, 6, '_wp_trash_meta_time', '1566230633'),
(7, 7, '_wp_trash_meta_status', 'publish'),
(8, 7, '_wp_trash_meta_time', '1566230696'),
(9, 8, '_edit_lock', '1566230936:1');

-- --------------------------------------------------------

--
-- Table structure for table `wplm_posts`
--

CREATE TABLE `wplm_posts` (
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
-- Dumping data for table `wplm_posts`
--

INSERT INTO `wplm_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-08-10 14:34:55', '2019-08-10 14:34:55', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-08-10 14:34:55', '2019-08-10 14:34:55', '', 0, 'https://wordpress.matthiasbruynooghe.be/?p=1', 0, 'post', '', 1),
(2, 1, '2019-08-10 14:34:55', '2019-08-10 14:34:55', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://wordpress.matthiasbruynooghe.be/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-08-10 14:34:55', '2019-08-10 14:34:55', '', 0, 'https://wordpress.matthiasbruynooghe.be/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-08-10 14:34:55', '2019-08-10 14:34:55', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://wordpress.matthiasbruynooghe.be.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-08-10 14:34:55', '2019-08-10 14:34:55', '', 0, 'https://wordpress.matthiasbruynooghe.be/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-08-19 16:00:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-08-19 16:00:13', '0000-00-00 00:00:00', '', 0, 'https://wordpress.matthiasbruynooghe.be/?p=4', 0, 'post', '', 0),
(5, 1, '2019-08-19 16:03:31', '2019-08-19 16:03:31', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-19 16:03:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '33d337d5-0e34-463e-859d-1a0c27170cd0', '', '', '2019-08-19 16:03:31', '2019-08-19 16:03:31', '', 0, 'https://wordpress.matthiasbruynooghe.be/2019/08/19/33d337d5-0e34-463e-859d-1a0c27170cd0/', 0, 'customize_changeset', '', 0),
(6, 1, '2019-08-19 16:03:52', '2019-08-19 16:03:52', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-19 16:03:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '516e375c-54c8-47f3-8535-b0d7cc2c8f68', '', '', '2019-08-19 16:03:52', '2019-08-19 16:03:52', '', 0, 'https://wordpress.matthiasbruynooghe.be/2019/08/19/516e375c-54c8-47f3-8535-b0d7cc2c8f68/', 0, 'customize_changeset', '', 0),
(7, 1, '2019-08-19 16:04:56', '2019-08-19 16:04:56', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-19 16:04:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '34036f40-907d-446e-8c51-44bbb3333cab', '', '', '2019-08-19 16:04:56', '2019-08-19 16:04:56', '', 0, 'https://wordpress.matthiasbruynooghe.be/2019/08/19/34036f40-907d-446e-8c51-44bbb3333cab/', 0, 'customize_changeset', '', 0),
(8, 1, '2019-08-19 16:11:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-08-19 16:11:04', '0000-00-00 00:00:00', '', 0, 'https://wordpress.matthiasbruynooghe.be/?p=8', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wplm_termmeta`
--

CREATE TABLE `wplm_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wplm_terms`
--

CREATE TABLE `wplm_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wplm_terms`
--

INSERT INTO `wplm_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wplm_term_relationships`
--

CREATE TABLE `wplm_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wplm_term_relationships`
--

INSERT INTO `wplm_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wplm_term_taxonomy`
--

CREATE TABLE `wplm_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wplm_term_taxonomy`
--

INSERT INTO `wplm_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wplm_usermeta`
--

CREATE TABLE `wplm_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wplm_usermeta`
--

INSERT INTO `wplm_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'wplm_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wplm_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"6b8bf74951268d90a8c26537b9e7a5c8c45cc1c56e76cc72ba4a6232f6442f8b\";a:4:{s:10:\"expiration\";i:1566403212;s:2:\"ip\";s:39:\"2a02:1811:a41e:6c00:fd13:815a:8551:1050\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36\";s:5:\"login\";i:1566230412;}}'),
(17, 1, 'wplm_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:21:\"2a02:1811:a41e:6c00::\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wplm_users`
--

CREATE TABLE `wplm_users` (
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
-- Dumping data for table `wplm_users`
--

INSERT INTO `wplm_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BenSzOEvJzEH/0L73Pnr5YYf0E7HMG.', 'admin', 'admin@wordpress.matthiasbruynooghe.be', '', '2019-08-10 14:34:55', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wplm_commentmeta`
--
ALTER TABLE `wplm_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wplm_comments`
--
ALTER TABLE `wplm_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wplm_links`
--
ALTER TABLE `wplm_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wplm_options`
--
ALTER TABLE `wplm_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wplm_postmeta`
--
ALTER TABLE `wplm_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wplm_posts`
--
ALTER TABLE `wplm_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wplm_termmeta`
--
ALTER TABLE `wplm_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wplm_terms`
--
ALTER TABLE `wplm_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wplm_term_relationships`
--
ALTER TABLE `wplm_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wplm_term_taxonomy`
--
ALTER TABLE `wplm_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wplm_usermeta`
--
ALTER TABLE `wplm_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wplm_users`
--
ALTER TABLE `wplm_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wplm_commentmeta`
--
ALTER TABLE `wplm_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplm_comments`
--
ALTER TABLE `wplm_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wplm_links`
--
ALTER TABLE `wplm_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplm_options`
--
ALTER TABLE `wplm_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `wplm_postmeta`
--
ALTER TABLE `wplm_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wplm_posts`
--
ALTER TABLE `wplm_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wplm_termmeta`
--
ALTER TABLE `wplm_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wplm_terms`
--
ALTER TABLE `wplm_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wplm_term_taxonomy`
--
ALTER TABLE `wplm_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wplm_usermeta`
--
ALTER TABLE `wplm_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wplm_users`
--
ALTER TABLE `wplm_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
