-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Set-2018 às 16:53
-- Versão do servidor: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
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

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-03 12:27:15', '2018-09-03 12:27:15', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
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
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'C&amp;J Soluções', 'yes'),
(4, 'blogdescription', 'Oferecer as melhores experências em informática', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jv-10-victor@live.com', 'yes'),
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
(29, 'rewrite_rules', 'a:183:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"wishlist/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"wishlist/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"wishlist/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"wishlist/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"wishlist/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"wishlist/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"wishlist/([^/]+)/embed/?$\";s:41:\"index.php?wishlist=$matches[1]&embed=true\";s:29:\"wishlist/([^/]+)/trackback/?$\";s:35:\"index.php?wishlist=$matches[1]&tb=1\";s:37:\"wishlist/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?wishlist=$matches[1]&paged=$matches[2]\";s:44:\"wishlist/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?wishlist=$matches[1]&cpage=$matches[2]\";s:34:\"wishlist/([^/]+)/wc-api(/(.*))?/?$\";s:49:\"index.php?wishlist=$matches[1]&wc-api=$matches[3]\";s:40:\"wishlist/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"wishlist/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"wishlist/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?wishlist=$matches[1]&page=$matches[2]\";s:25:\"wishlist/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"wishlist/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"wishlist/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"wishlist/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"wishlist/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"wishlist/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"wishlist-tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?wishlist_tags=$matches[1]&feed=$matches[2]\";s:49:\"wishlist-tags/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?wishlist_tags=$matches[1]&feed=$matches[2]\";s:30:\"wishlist-tags/([^/]+)/embed/?$\";s:46:\"index.php?wishlist_tags=$matches[1]&embed=true\";s:42:\"wishlist-tags/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?wishlist_tags=$matches[1]&paged=$matches[2]\";s:24:\"wishlist-tags/([^/]+)/?$\";s:35:\"index.php?wishlist_tags=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:19:\"akismet/akismet.php\";i:1;s:23:\"elementor/elementor.php\";i:2;s:9:\"hello.php\";i:3;s:39:\"ocean-demo-import/ocean-demo-import.php\";i:4;s:27:\"ocean-extra/ocean-extra.php\";i:5;s:21:\"wishlist/wishlist.php\";i:6;s:25:\"woo-bulk-editor/index.php\";i:7;s:49:\"woo-variation-swatches/woo-variation-swatches.php\";i:8;s:39:\"woocommerce-currency-switcher/index.php\";i:9;s:37:\"woocommerce-products-filter/index.php\";i:10;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'oceanwp', 'yes'),
(41, 'stylesheet', 'oceanwp', 'yes'),
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
(66, 'image_default_link_type', 'file', 'yes'),
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
(81, 'uninstall_plugins', 'a:1:{s:23:\"elementor/elementor.php\";a:2:{i:0;s:21:\"Elementor\\Maintenance\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '30', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:2:{i:0;s:8:\"search-2\";i:1;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:14:\"search_sidebar\";a:0:{}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}s:11:\"footer-four\";a:0:{}s:11:\"woo_sidebar\";a:1:{i:0;s:33:\"woocommerce_layered_nav_filters-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:13:{i:1536160661;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1536161236;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1536162145;a:1:{s:28:\"elementor/tracker/send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536164448;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536175248;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1536192000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536193637;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1536239459;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536240048;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536240058;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536240468;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538438400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535980562;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"last_checked\";i:1536150438;}', 'no'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1536156284;}', 'no'),
(121, 'can_compress_scripts', '1', 'no'),
(128, 'current_theme', 'OceanWP', 'yes'),
(129, 'theme_mods_advance-ecommerce-store', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535985571;s:4:\"data\";a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:16:\"homepage-sidebar\";a:0:{}s:6:\"social\";a:0:{}}}}', 'yes'),
(130, 'theme_switched', '', 'yes'),
(131, 'widget_advance_ecommerce_store_social_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(136, 'recently_activated', 'a:0:{}', 'yes'),
(139, 'woocommerce_store_address', 'r. coronel francisco soares 71', 'yes'),
(140, 'woocommerce_store_address_2', '', 'yes'),
(141, 'woocommerce_store_city', 'nova iguaçu', 'yes'),
(142, 'woocommerce_default_country', 'BR:RJ', 'yes'),
(143, 'woocommerce_store_postcode', '26220031', 'yes'),
(144, 'woocommerce_allowed_countries', 'all', 'yes'),
(145, 'woocommerce_all_except_countries', '', 'yes'),
(146, 'woocommerce_specific_allowed_countries', '', 'yes'),
(147, 'woocommerce_ship_to_countries', '', 'yes'),
(148, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(149, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(150, 'woocommerce_calc_taxes', 'no', 'yes'),
(151, 'woocommerce_enable_coupons', 'yes', 'yes'),
(152, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(153, 'woocommerce_currency', 'BRL', 'yes'),
(154, 'woocommerce_currency_pos', 'left', 'yes'),
(155, 'woocommerce_price_thousand_sep', '.', 'yes'),
(156, 'woocommerce_price_decimal_sep', ',', 'yes'),
(157, 'woocommerce_price_num_decimals', '2', 'yes'),
(158, 'woocommerce_shop_page_id', '6', 'yes'),
(159, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(160, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(161, 'woocommerce_weight_unit', 'kg', 'yes'),
(162, 'woocommerce_dimension_unit', 'cm', 'yes'),
(163, 'woocommerce_enable_reviews', 'yes', 'yes'),
(164, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(165, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(166, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(167, 'woocommerce_review_rating_required', 'yes', 'no'),
(168, 'woocommerce_manage_stock', 'yes', 'yes'),
(169, 'woocommerce_hold_stock_minutes', '60', 'no'),
(170, 'woocommerce_notify_low_stock', 'yes', 'no'),
(171, 'woocommerce_notify_no_stock', 'yes', 'no'),
(172, 'woocommerce_stock_email_recipient', 'jv-10-victor@live.com', 'no'),
(173, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(174, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(175, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(176, 'woocommerce_stock_format', '', 'yes'),
(177, 'woocommerce_file_download_method', 'force', 'no'),
(178, 'woocommerce_downloads_require_login', 'no', 'no'),
(179, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(180, 'woocommerce_prices_include_tax', 'no', 'yes'),
(181, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(182, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(183, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(184, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(185, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(186, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(187, 'woocommerce_price_display_suffix', '', 'yes'),
(188, 'woocommerce_tax_total_display', 'itemized', 'no'),
(189, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(190, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(191, 'woocommerce_ship_to_destination', 'billing', 'no'),
(192, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(193, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(194, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(195, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(196, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(197, 'woocommerce_registration_generate_username', 'yes', 'no'),
(198, 'woocommerce_registration_generate_password', 'yes', 'no'),
(199, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(200, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(201, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(202, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(203, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(204, 'woocommerce_trash_pending_orders', '', 'no'),
(205, 'woocommerce_trash_failed_orders', '', 'no'),
(206, 'woocommerce_trash_cancelled_orders', '', 'no'),
(207, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(208, 'woocommerce_email_from_name', 'C&amp;J Soluções', 'no'),
(209, 'woocommerce_email_from_address', 'jv-10-victor@live.com', 'no'),
(210, 'woocommerce_email_header_image', '', 'no'),
(211, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(212, 'woocommerce_email_base_color', '#96588a', 'no'),
(213, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(214, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(215, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(216, 'woocommerce_cart_page_id', '7', 'yes'),
(217, 'woocommerce_checkout_page_id', '8', 'yes'),
(218, 'woocommerce_myaccount_page_id', '9', 'yes'),
(219, 'woocommerce_terms_page_id', '', 'no'),
(220, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(221, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(222, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(223, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(224, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(225, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(226, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(227, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(228, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(229, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(230, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(231, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(232, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(233, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(234, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(235, 'woocommerce_api_enabled', 'no', 'yes'),
(236, 'woocommerce_single_image_width', '600', 'yes'),
(237, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(238, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(239, 'woocommerce_demo_store', 'no', 'no'),
(240, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(241, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(242, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(243, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(244, 'product_cat_children', 'a:0:{}', 'yes'),
(245, 'default_product_cat', '15', 'yes'),
(250, 'woocommerce_admin_notices', 'a:3:{i:0;s:20:\"no_secure_connection\";i:1;s:19:\"no_shipping_methods\";i:2;s:21:\"jetpack_install_error\";}', 'yes'),
(253, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(254, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(255, 'widget_woocommerce_layered_nav_filters', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:6:\"Filtro\";}}', 'yes'),
(256, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(257, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(258, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(259, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(265, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'woocommerce_version', '3.4.5', 'yes'),
(269, 'woocommerce_db_version', '3.4.5', 'yes'),
(273, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(277, '_transient_timeout_external_ip_address_127.0.0.1', '1536585660', 'no'),
(278, '_transient_external_ip_address_127.0.0.1', '0.0.0.0', 'no'),
(279, 'woocommerce_product_type', 'both', 'yes'),
(280, 'woocommerce_allow_tracking', 'yes', 'yes'),
(282, 'woocommerce_tracker_last_send', '1535981082', 'yes'),
(285, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";s:21:\"jv-10-victor@live.com\";}', 'yes'),
(286, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(287, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(288, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(289, 'woocommerce_admin_notice_ppec_paypal_install_error', 'WooCommerce PayPal Express Checkout Gateway could not be installed (An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href=\"https://wordpress.org/support/\">support forums</a>.). <a href=\"http://localhost/wp-admin/index.php?wc-install-plugin-redirect=woocommerce-gateway-paypal-express-checkout\">Please install it manually by clicking here.</a>', 'yes'),
(296, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(300, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(301, 'woocommerce_admin_notice_mailchimp-for-woocommerce_install_error', 'MailChimp for WooCommerce could not be installed (An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href=\"https://wordpress.org/support/\">support forums</a>.). <a href=\"http://localhost/wp-admin/index.php?wc-install-plugin-redirect=mailchimp-for-woocommerce\">Please install it manually by clicking here.</a>', 'yes'),
(302, 'woocommerce_admin_notice_jetpack_install_error', 'Jetpack could not be installed (An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href=\"https://wordpress.org/support/\">support forums</a>.). <a href=\"http://localhost/wp-admin/index.php?wc-install-plugin-redirect=jetpack\">Please install it manually by clicking here.</a>', 'yes'),
(303, '_site_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1536150459;}', 'no'),
(305, '_transient_shipping-transient-version', '1535981268', 'yes'),
(308, '_transient_product_query-transient-version', '1535985138', 'yes'),
(310, '_transient_timeout_wc_shipping_method_count_0_1535981268', '1538573337', 'no'),
(311, '_transient_wc_shipping_method_count_0_1535981268', '0', 'no'),
(320, '_transient_timeout_external_ip_address_::1', '1536586159', 'no'),
(321, '_transient_external_ip_address_::1', '0.0.0.0', 'no'),
(325, '_transient_product-transient-version', '1535985138', 'yes'),
(332, '_transient_timeout_wc_shipping_method_count_1_1535981268', '1538573513', 'no'),
(333, '_transient_wc_shipping_method_count_1_1535981268', '0', 'no'),
(339, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(341, '_transient_timeout_wc_term_counts', '1538577180', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(342, '_transient_wc_term_counts', 'a:1:{i:15;s:1:\"2\";}', 'no'),
(350, 'theme_mods_oceanwp', 'a:11:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:11:\"topbar_menu\";i:17;s:9:\"main_menu\";i:16;s:11:\"footer_menu\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:16:\"header_textcolor\";s:0:\"\";s:23:\"ocean_customzer_styling\";s:4:\"head\";s:19:\"ocean_primary_color\";s:7:\"#13aff0\";s:25:\"ocean_hover_primary_color\";s:7:\"#0b7cac\";s:23:\"ocean_main_border_color\";s:7:\"#e9e9e9\";s:23:\"ocean_main_layout_style\";s:4:\"wide\";s:26:\"ocean_main_container_width\";s:4:\"1200\";s:24:\"ocean_page_single_layout\";s:13:\"right-sidebar\";}', 'yes'),
(351, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(358, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(359, '_transient_timeout_external_ip_address_10.69.131.87', '1536590900', 'no'),
(360, '_transient_external_ip_address_10.69.131.87', '0.0.0.0', 'no'),
(363, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(364, 'wp_installer_settings', 'eJxNzEEOgzAMBdG7+AQxgVZ8H8Yy1ItIqERxWCHuDkvW8zSGjDPAA6h53aP0vRUPEkPCeQWGEbRZdH1nPerPupMU8JQ/PKU0Z3k2X5DW5sqadN3c/o8kWcBy3XAnIvg=', 'yes'),
(365, 'widget_woof_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(366, 'woof_first_init', '1', 'yes'),
(367, 'woof_set_automatically', '0', 'yes'),
(368, 'woof_autosubmit', '1', 'yes'),
(369, 'woof_show_count', '1', 'yes'),
(370, 'woof_show_count_dynamic', '0', 'yes'),
(371, 'woof_hide_dynamic_empty_pos', '0', 'yes'),
(372, 'woof_try_ajax', '0', 'yes'),
(373, 'woof_checkboxes_slide', '1', 'yes'),
(374, 'woof_hide_red_top_panel', '0', 'yes'),
(375, 'woof_sort_terms_checked', '0', 'yes'),
(376, 'woof_filter_btn_txt', '', 'yes'),
(377, 'woof_reset_btn_txt', '', 'yes'),
(378, 'woof_settings', 'a:1:{s:10:\"use_chosen\";i:1;}', 'yes'),
(379, 'woof_version', '1.2.1', 'yes'),
(380, 'woof_alert', 'a:2:{s:29:\"woocommerce_currency_switcher\";s:0:\"\";s:23:\"woocommerce_bulk_editor\";s:0:\"\";}', 'no'),
(385, 'woocs_first_activation', '1', 'yes'),
(386, 'woocs_drop_down_view', 'ddslick', 'yes'),
(387, 'woocs_currencies_aggregator', 'free_converter', 'yes'),
(388, 'woocs_welcome_currency', 'BRL', 'yes'),
(389, 'woocs_is_multiple_allowed', '0', 'yes'),
(390, 'woocs_is_fixed_enabled', '0', 'yes'),
(391, 'woocs_is_fixed_shipping', '0', 'yes'),
(392, 'woocs_is_fixed_coupon', '0', 'yes'),
(393, 'woocs_force_pay_bygeoip_rules', '0', 'yes'),
(394, 'woocs_is_geoip_manipulation', '0', 'yes'),
(395, 'woocs_show_flags', '1', 'yes'),
(396, 'woocs_show_money_signs', '1', 'yes'),
(397, 'woocs_customer_signs', '', 'yes'),
(398, 'woocs_customer_price_format', '', 'yes'),
(399, 'woocs_currencies_rate_auto_update', 'no', 'yes'),
(400, 'woocs_rate_auto_update_email', '0', 'yes'),
(401, 'woocs_storage', 'transient', 'yes'),
(402, 'woocs_geo_rules', '', 'yes'),
(403, 'woocs_hide_cents', '', 'yes'),
(404, 'woocs_decimals', 'a:0:{}', 'yes'),
(405, 'woocs_price_info', '0', 'yes'),
(406, 'woocs_no_cents', '', 'yes'),
(407, 'woocs_restrike_on_checkout_page', '0', 'yes'),
(408, 'woocs_shop_is_cached', '0', 'yes'),
(409, 'woocs_show_approximate_amount', '0', 'yes'),
(410, 'woocs_is_auto_switcher', '0', 'yes'),
(411, 'woocs_auto_switcher_skin', 'classic_blocks', 'yes'),
(412, 'woocs_auto_switcher_side', 'left', 'yes'),
(413, 'woocs_auto_switcher_top_margin', '100px', 'yes'),
(414, 'woocs_auto_switcher_color', '#222222', 'yes'),
(415, 'woocs_auto_switcher_hover_color', '#3b5998', 'yes'),
(416, 'woocs_auto_switcher_basic_field', '__CODE__ __SIGN__', 'yes'),
(417, 'woocs_auto_switcher_additional_field', '__DESCR__', 'yes'),
(418, 'woocs_auto_switcher_show_page', '', 'yes'),
(419, 'woocs_auto_switcher_hide_page', '', 'yes'),
(420, 'woocs_auto_switcher_mobile_show', '0', 'yes'),
(421, 'woocs_auto_switcher_roll_px', '90', 'yes'),
(424, 'widget_woocs_selector', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(425, 'widget_woocs_rates', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(426, 'widget_woocs_converter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(427, 'woocs_woo_version', '3.4.5', 'yes'),
(428, 'woocs_version', '1.2.5', 'yes'),
(429, 'woocs_alert', 'a:1:{s:23:\"woocommerce_bulk_editor\";s:0:\"\";}', 'no'),
(430, '_transient_timeout_geoip_::1', '1536592547', 'no'),
(431, '_transient_geoip_::1', '', 'no'),
(432, '_transient_timeout_geoip_0.0.0.0', '1536592551', 'no'),
(433, '_transient_geoip_0.0.0.0', '', 'no'),
(434, '_transient_timeout_wc_low_stock_count', '1538579802', 'no'),
(435, '_transient_wc_low_stock_count', '0', 'no'),
(436, '_transient_timeout_wc_outofstock_count', '1538579802', 'no'),
(437, '_transient_wc_outofstock_count', '0', 'no'),
(443, 'ocean-demo-import-version', '1.0.9', 'yes'),
(444, 'ocean-extra-version', '1.4.23', 'yes'),
(445, 'widget_ocean_about_me', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(446, 'widget_ocean_contact_info', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(447, 'widget_ocean_custom_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(448, 'widget_ocean_custom_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(449, 'widget_ocean_facebook', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(450, 'widget_ocean_flickr', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(451, 'widget_ocean_instagram', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(452, 'widget_ocean_mailchimp', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(453, 'widget_ocean_recent_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(454, 'widget_ocean_social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(455, 'widget_ocean_social_share', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(456, 'widget_ocean_tags', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(457, 'widget_ocean_twitter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(458, 'widget_ocean_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(459, 'widget_ocean_custom_header_logo', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(460, 'widget_ocean_custom_header_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(461, 'ocean_extra_installed_time', '1535988772', 'yes'),
(463, 'woobe_options_1', 'a:1:{s:6:\"fields\";a:50:{s:9:\"__checker\";a:2:{s:4:\"show\";i:1;s:5:\"title\";s:54:\"<input type=\"checkbox\" class=\"all_products_checker\" />\";}s:2:\"ID\";a:2:{s:4:\"show\";i:1;s:5:\"title\";s:2:\"ID\";}s:13:\"_thumbnail_id\";a:2:{s:4:\"show\";i:1;s:5:\"title\";s:9:\"Thumbnail\";}s:7:\"gallery\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:7:\"Gallery\";}s:10:\"post_title\";a:2:{s:4:\"show\";i:1;s:5:\"title\";s:5:\"Title\";}s:12:\"post_content\";a:2:{s:4:\"show\";i:1;s:5:\"title\";s:11:\"Description\";}s:12:\"post_excerpt\";a:2:{s:4:\"show\";i:1;s:5:\"title\";s:11:\"Short Desc.\";}s:9:\"post_name\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:4:\"Slug\";}s:12:\"product_type\";a:2:{s:4:\"show\";i:1;s:5:\"title\";s:4:\"Type\";}s:11:\"post_status\";a:2:{s:4:\"show\";i:1;s:5:\"title\";s:6:\"Status\";}s:18:\"catalog_visibility\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:18:\"Catalog Visibility\";}s:8:\"featured\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:8:\"Featured\";}s:13:\"regular_price\";a:2:{s:4:\"show\";i:1;s:5:\"title\";s:13:\"Regular price\";}s:10:\"sale_price\";a:2:{s:4:\"show\";i:1;s:5:\"title\";s:10:\"Sale price\";}s:17:\"date_on_sale_from\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:14:\"Sale time from\";}s:15:\"date_on_sale_to\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:12:\"Sale time to\";}s:12:\"downloadable\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:12:\"Downloadable\";}s:14:\"download_files\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:10:\"Down.Files\";}s:14:\"download_limit\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:14:\"Download limit\";}s:15:\"download_expiry\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:15:\"Download expiry\";}s:10:\"tax_status\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:10:\"Tax status\";}s:9:\"tax_class\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:9:\"Tax class\";}s:3:\"sku\";a:2:{s:4:\"show\";i:1;s:5:\"title\";s:3:\"SKU\";}s:12:\"manage_stock\";a:2:{s:4:\"show\";i:1;s:5:\"title\";s:12:\"Manage stock\";}s:14:\"stock_quantity\";a:2:{s:4:\"show\";i:1;s:5:\"title\";s:14:\"Stock quantity\";}s:12:\"stock_status\";a:2:{s:4:\"show\";i:1;s:5:\"title\";s:12:\"Stock status\";}s:10:\"backorders\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:16:\"Allow backorders\";}s:17:\"sold_individually\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:17:\"Sold individually\";}s:6:\"weight\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:6:\"Weight\";}s:6:\"length\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:6:\"Length\";}s:5:\"width\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:5:\"Width\";}s:6:\"height\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:6:\"Height\";}s:22:\"product_shipping_class\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:14:\"Shipping class\";}s:10:\"upsell_ids\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:7:\"Upsells\";}s:14:\"cross_sell_ids\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:11:\"Cross-sells\";}s:11:\"grouped_ids\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:16:\"Grouped products\";}s:13:\"purchase_note\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:13:\"Purchase note\";}s:10:\"menu_order\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:10:\"Menu order\";}s:15:\"reviews_allowed\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:15:\"Reviews allowed\";}s:11:\"product_url\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:11:\"Product url\";}s:11:\"button_text\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:15:\"Aff.Button text\";}s:7:\"virtual\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:7:\"Virtual\";}s:11:\"post_author\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:6:\"Author\";}s:11:\"total_sales\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:11:\"Total sales\";}s:12:\"review_count\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:12:\"Review count\";}s:14:\"average_rating\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:14:\"Average rating\";}s:9:\"post_date\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:14:\"Date Published\";}s:11:\"post_parent\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:6:\"Parent\";}s:11:\"product_cat\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:10:\"Categories\";}s:11:\"product_tag\";a:2:{s:4:\"show\";i:0;s:5:\"title\";s:4:\"Tags\";}}}', 'yes'),
(464, 'woobe_filter_profiles_1', 'a:1:{s:7:\"default\";a:2:{s:5:\"title\";s:17:\"Variable products\";s:4:\"data\";a:1:{s:12:\"product_type\";s:8:\"variable\";}}}', 'yes'),
(465, 'woobe_profiles_1', 'a:5:{s:7:\"default\";a:2:{s:5:\"title\";s:7:\"Default\";s:4:\"data\";a:15:{i:0;s:9:\"__checker\";i:1;s:2:\"ID\";i:2;s:13:\"_thumbnail_id\";i:3;s:10:\"post_title\";i:4;s:12:\"post_content\";i:5;s:12:\"post_excerpt\";i:6;s:12:\"product_type\";i:7;s:11:\"post_status\";i:8;s:13:\"regular_price\";i:9;s:10:\"sale_price\";i:10;s:3:\"sku\";i:11;s:12:\"manage_stock\";i:12;s:14:\"stock_quantity\";i:13;s:12:\"stock_status\";i:14;s:7:\"gallery\";}}s:14:\"for_variations\";a:2:{s:5:\"title\";s:26:\"For variations fields only\";s:4:\"data\";a:25:{i:0;s:9:\"__checker\";i:1;s:2:\"ID\";i:2;s:13:\"_thumbnail_id\";i:3;s:10:\"post_title\";i:4;s:14:\"stock_quantity\";i:5;s:12:\"post_content\";i:6;s:13:\"regular_price\";i:7;s:10:\"sale_price\";i:8;s:17:\"date_on_sale_from\";i:9;s:15:\"date_on_sale_to\";i:10;s:3:\"sku\";i:11;s:12:\"manage_stock\";i:12;s:12:\"stock_status\";i:13;s:7:\"virtual\";i:14;s:12:\"downloadable\";i:15;s:14:\"download_files\";i:16;s:14:\"download_limit\";i:17;s:15:\"download_expiry\";i:18;s:9:\"tax_class\";i:19;s:10:\"backorders\";i:20;s:6:\"weight\";i:21;s:6:\"height\";i:22;s:5:\"width\";i:23;s:6:\"length\";i:24;s:11:\"post_parent\";}}s:9:\"for_stock\";a:2:{s:5:\"title\";s:5:\"Stock\";s:4:\"data\";a:7:{i:0;s:9:\"__checker\";i:1;s:2:\"ID\";i:2;s:13:\"_thumbnail_id\";i:3;s:10:\"post_title\";i:4;s:12:\"manage_stock\";i:5;s:14:\"stock_quantity\";i:6;s:12:\"stock_status\";}}s:10:\"for_prices\";a:2:{s:5:\"title\";s:6:\"Prices\";s:4:\"data\";a:8:{i:0;s:9:\"__checker\";i:1;s:2:\"ID\";i:2;s:13:\"_thumbnail_id\";i:3;s:10:\"post_title\";i:4;s:13:\"regular_price\";i:5;s:10:\"sale_price\";i:6;s:17:\"date_on_sale_from\";i:7;s:15:\"date_on_sale_to\";}}s:15:\"for_attachments\";a:2:{s:5:\"title\";s:41:\"Downloads, Cross-sells, Up-sells, Grouped\";s:4:\"data\";a:11:{i:0;s:9:\"__checker\";i:1;s:2:\"ID\";i:2;s:13:\"_thumbnail_id\";i:3;s:10:\"post_title\";i:4;s:12:\"downloadable\";i:5;s:14:\"download_files\";i:6;s:14:\"download_limit\";i:7;s:15:\"download_expiry\";i:8;s:14:\"cross_sell_ids\";i:9;s:10:\"upsell_ids\";i:10;s:11:\"grouped_ids\";}}}', 'yes'),
(466, 'pickplugins_wl_default_wishlist_id', '26', 'yes'),
(470, 'elementor_version', '2.2.1', 'yes'),
(471, 'elementor_scheme_color', 'a:4:{i:1;s:7:\"#6ec1e4\";i:2;s:7:\"#54595f\";i:3;s:7:\"#7a7a7a\";i:4;s:7:\"#61ce70\";}', 'yes'),
(472, 'elementor_scheme_typography', 'a:4:{i:1;a:2:{s:11:\"font_family\";s:6:\"Roboto\";s:11:\"font_weight\";s:3:\"600\";}i:2;a:2:{s:11:\"font_family\";s:11:\"Roboto Slab\";s:11:\"font_weight\";s:3:\"400\";}i:3;a:2:{s:11:\"font_family\";s:6:\"Roboto\";s:11:\"font_weight\";s:3:\"400\";}i:4;a:2:{s:11:\"font_family\";s:6:\"Roboto\";s:11:\"font_weight\";s:3:\"500\";}}', 'yes'),
(473, 'elementor_scheme_color-picker', 'a:8:{i:1;s:7:\"#6ec1e4\";i:2;s:7:\"#54595f\";i:3;s:7:\"#7a7a7a\";i:4;s:7:\"#61ce70\";i:5;s:7:\"#4054b2\";i:6;s:7:\"#23a455\";i:7;s:4:\"#000\";i:8;s:4:\"#fff\";}', 'yes'),
(474, '_elementor_installed_time', '1535989381', 'yes'),
(482, 'elementor_debug_log', 'a:4:{i:0;a:8:{s:4:\"type\";s:9:\"TypeError\";s:9:\"timestamp\";s:10:\"1536153738\";s:7:\"message\";s:40:\"Cannot read property \\\'indexOf\\\' of null\";s:3:\"url\";s:79:\"http://localhost/wp-content/plugins/elementor/assets/js/editor.min.js?ver=2.2.1\";s:4:\"line\";s:1:\"2\";s:6:\"column\";s:6:\"130705\";s:12:\"customFields\";a:0:{}s:5:\"times\";i:2;}i:1;a:8:{s:4:\"type\";s:9:\"TypeError\";s:9:\"timestamp\";s:10:\"1536156549\";s:7:\"message\";s:43:\"n.attributes[t.name].each is not a function\";s:3:\"url\";s:79:\"http://localhost/wp-content/plugins/elementor/assets/js/editor.min.js?ver=2.2.1\";s:4:\"line\";s:1:\"2\";s:6:\"column\";s:4:\"9152\";s:12:\"customFields\";a:0:{}s:5:\"times\";i:5;}i:2;a:7:{s:4:\"type\";s:9:\"TypeError\";s:9:\"timestamp\";s:10:\"1536156562\";s:7:\"message\";s:35:\"this.ui.apply.add is not a function\";s:3:\"url\";s:79:\"http://localhost/wp-content/plugins/elementor/assets/js/editor.min.js?ver=2.2.1\";s:4:\"line\";s:1:\"2\";s:6:\"column\";s:6:\"152198\";s:12:\"customFields\";a:0:{}}i:3;a:7:{s:4:\"type\";s:9:\"TypeError\";s:9:\"timestamp\";s:10:\"1536158642\";s:7:\"message\";s:43:\"n.attributes[t.name].each is not a function\";s:3:\"url\";s:79:\"http://localhost/wp-content/plugins/elementor/assets/js/editor.min.js?ver=2.2.1\";s:4:\"line\";s:1:\"2\";s:6:\"column\";s:4:\"9152\";s:12:\"customFields\";a:0:{}}}', 'yes'),
(483, '_elementor_global_css', 'a:4:{s:4:\"time\";i:1535989516;s:5:\"fonts\";a:2:{i:0;s:6:\"Roboto\";i:12;s:11:\"Roboto Slab\";}s:6:\"status\";s:4:\"file\";i:0;b:0;}', 'yes'),
(486, 'woocommerce_tracker_ua', 'a:1:{i:0;s:114:\"mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/68.0.3440.106 safari/537.36\";}', 'yes'),
(487, '_transient_timeout_837ec5754f503cfaaee0929fd48974e7', '1536245621', 'no'),
(488, '_transient_837ec5754f503cfaaee0929fd48974e7', 'a:5:{s:22:\"woocs_current_currency\";s:3:\"BRL\";s:24:\"woocs_first_unique_visit\";s:1:\"1\";s:22:\"woocs_default_currency\";s:3:\"BRL\";s:18:\"woocs_user_country\";s:0:\"\";s:24:\"woocs_first_unique_geoip\";s:1:\"1\";}', 'no'),
(490, '_transient_timeout_f528764d624db129b32c21fbca0cb8d6', '1536244046', 'no'),
(491, '_transient_f528764d624db129b32c21fbca0cb8d6', 'a:3:{s:22:\"woocs_current_currency\";s:3:\"BRL\";s:24:\"woocs_first_unique_visit\";s:1:\"1\";s:22:\"woocs_default_currency\";s:3:\"BRL\";}', 'no'),
(498, '_transient_timeout_wc_related_13', '1536242017', 'no'),
(499, '_transient_wc_related_13', 'a:1:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=13\";a:1:{i:0;s:2:\"11\";}}', 'no'),
(500, '_transient_timeout_elementor_remote_info_api_data_2.2.1', '1536157351', 'no'),
(501, '_transient_elementor_remote_info_api_data_2.2.1', 'a:0:{}', 'no'),
(503, '_transient_timeout_owp_feed_data_4160b56c6811147b535098f09e780ee9', '1536193653', 'no'),
(504, '_transient_owp_feed_data_4160b56c6811147b535098f09e780ee9', '<p><strong>RSS Error:</strong> WP HTTP Error: cURL error 7: Failed to connect to oceanwp.org port 443: Timed out</p>', 'no'),
(505, '_transient_timeout_wc_report_sales_by_date', '1536242846', 'no'),
(506, '_transient_wc_report_sales_by_date', 'a:72:{s:32:\"6ecf9810ab892b74742e467ce5104f42\";a:0:{}s:32:\"b1e2db127338a2114e41beb7d276a799\";a:0:{}s:32:\"6405589ffc6c9e006d0698aebde7d34b\";a:0:{}s:32:\"bbf41e6fbe25f618285a2389772cf725\";N;s:32:\"f90125bc3083a936c12e44a4f0852b8d\";a:0:{}s:32:\"74356bf1e344ed8652f2f7e8b3379ff3\";a:0:{}s:32:\"d55dcb088d746ce5a1160df597b50501\";a:0:{}s:32:\"84bd33f4178ebd3a38202cd3b8a98cf7\";a:0:{}s:32:\"375f5deccda4c8a3a6a46eba7ad5e6a8\";a:0:{}s:32:\"e5eb49ccdd9929d136bf52015441cf77\";a:0:{}s:32:\"568b8c3988c5a7ff593875e88ac21ac4\";a:0:{}s:32:\"be8fe2bb0154d59e37b521ee63993529\";N;s:32:\"206f713f8b025e00d9aaf70b16a3ae14\";a:0:{}s:32:\"81127cfe22f571527f91d690aa18a8fb\";a:0:{}s:32:\"f0f2b47229b9a49a6275009473a317db\";a:0:{}s:32:\"1c3ea2645c7f385750255a8b12f043cd\";a:0:{}s:32:\"d47ee15c5f1bf3f9b83d3e510b43ffa0\";a:0:{}s:32:\"32d10e014ad0d18391b4c0debf5b242e\";a:0:{}s:32:\"89fe3514cd048044349373fdf7f08a5e\";a:0:{}s:32:\"b82e92556e7c5b162cd119d88dc281b0\";N;s:32:\"6aa2d10c23ab983850a7225f609d0721\";a:0:{}s:32:\"0598ef5026a0e0f31b70bf32a3c3ae8d\";a:0:{}s:32:\"aa86fc69ed162f4a35214213b941272c\";a:0:{}s:32:\"c841963cd0d2ad8830f2495b68814f15\";a:0:{}s:32:\"a9ef4a7bdb48fd4108c01c1dc25de81e\";a:0:{}s:32:\"ba212d1ffc0488219e1e89c05b6bf749\";a:0:{}s:32:\"5b1a0de21c61325355e887daf7e021dc\";a:0:{}s:32:\"0e92368c82681488830648aa81fb24bf\";N;s:32:\"14ff04b7fb28e4f28c076b9c9a87e0ba\";a:0:{}s:32:\"902b540beb17c7c218adda1c7f363d3e\";a:0:{}s:32:\"8b85b2a771d1d2ea6033e3aae373206d\";a:0:{}s:32:\"76e3ad1b1c94f8d585889a3b3540c379\";a:0:{}s:32:\"5238ef5433b17e38bdf477e0645d58da\";a:0:{}s:32:\"105a7dc847e3ef5d48d0480f554e303b\";a:0:{}s:32:\"db9e37f3842c73c70943cf46a09480ef\";a:0:{}s:32:\"1522fcdc51873a522367ae022599159f\";N;s:32:\"376b21b4d0f67e629458ebd5cfa3c9c2\";a:0:{}s:32:\"a0315da5ce25f4fdb02534bd42f55228\";a:0:{}s:32:\"9f05d26dfabf75b08fb8fbf4fa3acb3f\";a:0:{}s:32:\"fb60c71c0190a2acda527225a1731af7\";a:0:{}s:32:\"b5e04bf66b355130b9a1be64fac567cf\";a:0:{}s:32:\"61a39efc24f8f1e0bf56edb2e0497588\";a:0:{}s:32:\"50c828ea2e9a03ad08447affca780ffb\";a:0:{}s:32:\"5ff22e81cc8412d61ee549eef130fea1\";N;s:32:\"19b68c921bc994a36c5675a9dab7a6f8\";a:0:{}s:32:\"8ec299f797ddf733c286f63296b2bba0\";a:0:{}s:32:\"5a60b8f722c4dd0600f8eb75cfd8f17d\";a:0:{}s:32:\"908c151147efcaae8f68d9fb5070c71b\";a:0:{}s:32:\"2ff3e1b7ef2713a88d85d0d35b7f8828\";a:0:{}s:32:\"01e2295464b26598b50a44b48814d13c\";a:0:{}s:32:\"2e78a6037979074af76dc7bf402c6fd5\";a:0:{}s:32:\"acda8382283c0c95a1851a0897878489\";N;s:32:\"4268085ae99227775d90014b30cef3ac\";a:0:{}s:32:\"bc4aee5fa715b28023b5b65901d9b13b\";a:0:{}s:32:\"fcac273e8dbe33d249ba591430b916ba\";a:0:{}s:32:\"6f0f4a23a11556f0762e393e1e1b8f2e\";a:0:{}s:32:\"1b813c39d2e2f2bc2e67de65093b1479\";a:0:{}s:32:\"21bb92f5358b926af4fec4990acbe9ec\";a:0:{}s:32:\"4b2811a604795db683b78e0ab3cb9fa7\";a:0:{}s:32:\"db0d3d6566fbf192f38d5f65235e6a84\";N;s:32:\"5bdeb92bb02ca448dcbf4858064aa4d3\";a:0:{}s:32:\"312644efccc6d4226795ddc624a03c11\";a:0:{}s:32:\"55a565ff8cff73fef483c81948d7235e\";a:0:{}s:32:\"c4dc6a858ac63ea7cb856bcbb49b3760\";a:0:{}s:32:\"45f962851452c5cd8fe601cc904c1485\";a:0:{}s:32:\"501361cabb5679bb3ed818c3e9c6a398\";a:0:{}s:32:\"b8607d17a04d166bf0deb70fd57ccb16\";a:0:{}s:32:\"d60237278510ea9acb475def2dadf64a\";N;s:32:\"a7092d40108817d5ffd64df91c498514\";a:0:{}s:32:\"29104c322b516533a710cc79d3cc25c7\";a:0:{}s:32:\"1af3a2968057b90b86720dfa7c56d4c4\";a:0:{}s:32:\"ef6800c716fc1b803c00768ea71d062e\";a:0:{}}', 'no'),
(507, '_transient_timeout_wc_admin_report', '1536236854', 'no'),
(508, '_transient_wc_admin_report', 'a:1:{s:32:\"1c5beb07c0f86c108a9876bb1d9da8b4\";a:0:{}}', 'no'),
(509, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1536193677', 'no'),
(510, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10000 milliseconds</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10015 milliseconds</p></div>', 'no'),
(511, 'ocean_extra_dismiss_notice', '1', 'yes'),
(520, '_site_transient_timeout_theme_roots', '1536157083', 'no'),
(521, '_site_transient_theme_roots', 'a:5:{s:23:\"advance-ecommerce-store\";s:7:\"/themes\";s:7:\"oceanwp\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(524, '_transient_timeout__woocommerce_helper_updates', '1536198483', 'no'),
(525, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1536155283;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(526, '_transient_timeout_d1983bbdb73f7d57c4d5ab97104cbe59', '1536242792', 'no'),
(527, '_transient_d1983bbdb73f7d57c4d5ab97104cbe59', 'a:5:{s:22:\"woocs_current_currency\";s:3:\"BRL\";s:24:\"woocs_first_unique_visit\";s:1:\"1\";s:22:\"woocs_default_currency\";s:3:\"BRL\";s:18:\"woocs_user_country\";s:0:\"\";s:24:\"woocs_first_unique_geoip\";s:1:\"1\";}', 'no'),
(528, '_transient_timeout_geoip_10.69.131.87', '1536760171', 'no'),
(529, '_transient_geoip_10.69.131.87', '', 'no'),
(530, '_transient_timeout__woocommerce_helper_subscriptions', '1536157184', 'no'),
(531, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_pickplugins_wl_data`
--

CREATE TABLE `wp_pickplugins_wl_data` (
  `id` int(100) NOT NULL,
  `wishlist_id` int(100) NOT NULL,
  `post_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 10, '_wc_review_count', '0'),
(5, 10, '_wc_rating_count', 'a:0:{}'),
(6, 10, '_wc_average_rating', '0'),
(7, 11, '_wc_review_count', '0'),
(8, 11, '_wc_rating_count', 'a:0:{}'),
(9, 11, '_wc_average_rating', '0'),
(10, 11, '_edit_last', '1'),
(11, 11, '_edit_lock', '1535984860:1'),
(12, 12, '_wp_attached_file', '2018/09/bx80684i38100.jpg'),
(13, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:500;s:4:\"file\";s:25:\"2018/09/bx80684i38100.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"bx80684i38100-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"bx80684i38100-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:38:\"advance-ecommerce-store-homepage-thumb\";a:4:{s:4:\"file\";s:25:\"bx80684i38100-250x145.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"bx80684i38100-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"bx80684i38100-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"bx80684i38100-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"bx80684i38100-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"bx80684i38100-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"bx80684i38100-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 11, '_sku', ''),
(15, 11, '_regular_price', '681.70'),
(16, 11, '_sale_price', '599.90'),
(17, 11, '_sale_price_dates_from', ''),
(18, 11, '_sale_price_dates_to', ''),
(19, 11, 'total_sales', '0'),
(20, 11, '_tax_status', 'taxable'),
(21, 11, '_tax_class', ''),
(22, 11, '_manage_stock', 'no'),
(23, 11, '_backorders', 'no'),
(24, 11, '_sold_individually', 'no'),
(25, 11, '_weight', ''),
(26, 11, '_length', ''),
(27, 11, '_width', ''),
(28, 11, '_height', ''),
(29, 11, '_upsell_ids', 'a:0:{}'),
(30, 11, '_crosssell_ids', 'a:0:{}'),
(31, 11, '_purchase_note', ''),
(32, 11, '_default_attributes', 'a:0:{}'),
(33, 11, '_virtual', 'no'),
(34, 11, '_downloadable', 'no'),
(35, 11, '_product_image_gallery', ''),
(36, 11, '_download_limit', '-1'),
(37, 11, '_download_expiry', '-1'),
(38, 11, '_stock', NULL),
(39, 11, '_stock_status', 'instock'),
(40, 11, '_product_version', '3.4.5'),
(41, 11, '_price', '599.90'),
(42, 13, '_wc_review_count', '0'),
(43, 13, '_wc_rating_count', 'a:0:{}'),
(44, 13, '_wc_average_rating', '0'),
(45, 13, '_edit_last', '1'),
(46, 13, '_edit_lock', '1536155161:1'),
(47, 14, '_wp_attached_file', '2018/09/trippler-azul1.jpg'),
(48, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:500;s:4:\"file\";s:26:\"2018/09/trippler-azul1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"trippler-azul1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"trippler-azul1-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:38:\"advance-ecommerce-store-homepage-thumb\";a:4:{s:4:\"file\";s:26:\"trippler-azul1-250x145.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"trippler-azul1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"trippler-azul1-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"trippler-azul1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"trippler-azul1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"trippler-azul1-600x500.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"trippler-azul1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 13, '_sku', ''),
(50, 13, '_regular_price', '579.44'),
(51, 13, '_sale_price', '509.91'),
(52, 13, '_sale_price_dates_from', ''),
(53, 13, '_sale_price_dates_to', ''),
(54, 13, 'total_sales', '0'),
(55, 13, '_tax_status', 'taxable'),
(56, 13, '_tax_class', ''),
(57, 13, '_manage_stock', 'no'),
(58, 13, '_backorders', 'no'),
(59, 13, '_sold_individually', 'no'),
(60, 13, '_weight', ''),
(61, 13, '_length', ''),
(62, 13, '_width', ''),
(63, 13, '_height', ''),
(64, 13, '_upsell_ids', 'a:0:{}'),
(65, 13, '_crosssell_ids', 'a:0:{}'),
(66, 13, '_purchase_note', ''),
(67, 13, '_default_attributes', 'a:0:{}'),
(68, 13, '_virtual', 'no'),
(69, 13, '_downloadable', 'no'),
(70, 13, '_product_image_gallery', ''),
(71, 13, '_download_limit', '-1'),
(72, 13, '_download_expiry', '-1'),
(73, 13, '_stock', NULL),
(74, 13, '_stock_status', 'instock'),
(75, 13, '_product_version', '3.4.5'),
(76, 13, '_price', '509.91'),
(77, 5, '_customize_restore_dismissed', '1'),
(78, 15, '_edit_lock', '1535985877:1'),
(79, 16, '_wp_attached_file', '2018/09/informatica-logo.png'),
(80, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:500;s:4:\"file\";s:28:\"2018/09/informatica-logo.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"informatica-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"informatica-logo-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"informatica-logo-768x417.png\";s:5:\"width\";i:768;s:6:\"height\";i:417;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"informatica-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"informatica-logo-600x326.png\";s:5:\"width\";i:600;s:6:\"height\";i:326;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"informatica-logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"informatica-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"informatica-logo-600x326.png\";s:5:\"width\";i:600;s:6:\"height\";i:326;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"informatica-logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 15, '_wp_trash_meta_status', 'publish'),
(82, 15, '_wp_trash_meta_time', '1535985916'),
(83, 17, '_edit_lock', '1535985997:1'),
(84, 18, '_menu_item_type', 'post_type'),
(85, 18, '_menu_item_menu_item_parent', '0'),
(86, 18, '_menu_item_object_id', '9'),
(87, 18, '_menu_item_object', 'page'),
(88, 18, '_menu_item_target', ''),
(89, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(90, 18, '_menu_item_xfn', ''),
(91, 18, '_menu_item_url', ''),
(92, 18, '_menu_item_template', ''),
(93, 18, '_menu_item_mega_template', ''),
(94, 18, '_menu_item_nolink', ''),
(95, 18, '_menu_item_category_post', ''),
(96, 18, '_menu_item_megamenu', ''),
(97, 18, '_menu_item_megamenu_auto_width', ''),
(98, 18, '_menu_item_megamenu_col', ''),
(99, 18, '_menu_item_megamenu_heading', ''),
(100, 18, '_menu_item_megamenu_widgetarea', ''),
(101, 18, '_menu_item_icon', ''),
(102, 19, '_menu_item_type', 'post_type'),
(103, 19, '_menu_item_menu_item_parent', '0'),
(104, 19, '_menu_item_object_id', '7'),
(105, 19, '_menu_item_object', 'page'),
(106, 19, '_menu_item_target', ''),
(107, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 19, '_menu_item_xfn', ''),
(109, 19, '_menu_item_url', ''),
(110, 19, '_menu_item_template', ''),
(111, 19, '_menu_item_mega_template', ''),
(112, 19, '_menu_item_nolink', ''),
(113, 19, '_menu_item_category_post', ''),
(114, 19, '_menu_item_megamenu', ''),
(115, 19, '_menu_item_megamenu_auto_width', ''),
(116, 19, '_menu_item_megamenu_col', ''),
(117, 19, '_menu_item_megamenu_heading', ''),
(118, 19, '_menu_item_megamenu_widgetarea', ''),
(119, 19, '_menu_item_icon', ''),
(120, 20, '_menu_item_type', 'post_type'),
(121, 20, '_menu_item_menu_item_parent', '0'),
(122, 20, '_menu_item_object_id', '6'),
(123, 20, '_menu_item_object', 'page'),
(124, 20, '_menu_item_target', ''),
(125, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(126, 20, '_menu_item_xfn', ''),
(127, 20, '_menu_item_url', ''),
(128, 20, '_menu_item_template', ''),
(129, 20, '_menu_item_mega_template', ''),
(130, 20, '_menu_item_nolink', ''),
(131, 20, '_menu_item_category_post', ''),
(132, 20, '_menu_item_megamenu', ''),
(133, 20, '_menu_item_megamenu_auto_width', ''),
(134, 20, '_menu_item_megamenu_col', ''),
(135, 20, '_menu_item_megamenu_heading', ''),
(136, 20, '_menu_item_megamenu_widgetarea', ''),
(137, 20, '_menu_item_icon', ''),
(138, 17, '_wp_trash_meta_status', 'publish'),
(139, 17, '_wp_trash_meta_time', '1535986044'),
(140, 21, '_edit_lock', '1535986322:1'),
(141, 22, '_menu_item_type', 'custom'),
(142, 22, '_menu_item_menu_item_parent', '0'),
(143, 22, '_menu_item_object_id', '22'),
(144, 22, '_menu_item_object', 'custom'),
(145, 22, '_menu_item_target', ''),
(146, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(147, 22, '_menu_item_xfn', ''),
(148, 22, '_menu_item_url', 'http://localhost'),
(149, 22, '_menu_item_template', ''),
(150, 22, '_menu_item_mega_template', ''),
(151, 22, '_menu_item_nolink', ''),
(152, 22, '_menu_item_category_post', ''),
(153, 22, '_menu_item_megamenu', ''),
(154, 22, '_menu_item_megamenu_auto_width', ''),
(155, 22, '_menu_item_megamenu_col', ''),
(156, 22, '_menu_item_megamenu_heading', ''),
(157, 22, '_menu_item_megamenu_widgetarea', ''),
(158, 22, '_menu_item_icon', ''),
(159, 21, '_wp_trash_meta_status', 'publish'),
(160, 21, '_wp_trash_meta_time', '1535986343'),
(161, 24, '_edit_lock', '1535988034:1'),
(162, 24, '_wp_trash_meta_status', 'publish'),
(163, 24, '_wp_trash_meta_time', '1535988087'),
(164, 25, '_edit_lock', '1535988334:1'),
(165, 25, '_wp_trash_meta_status', 'publish'),
(166, 25, '_wp_trash_meta_time', '1535988381'),
(167, 26, 'wishlist_status', 'public'),
(168, 27, '_elementor_edit_mode', 'builder'),
(169, 27, '_elementor_template_type', 'post'),
(170, 27, '_edit_lock', '1535989901:1'),
(172, 27, '_wp_page_template', 'default'),
(173, 27, '_elementor_data', '[{\"id\":\"823c31c\",\"elType\":\"section\",\"settings\":[],\"elements\":[{\"id\":\"419fcb1\",\"elType\":\"column\",\"settings\":{\"_column_size\":100},\"elements\":[{\"id\":\"efbaa59\",\"elType\":\"widget\",\"settings\":{\"carousel\":[{\"id\":12,\"url\":\"http:\\/\\/localhost\\/wp-content\\/uploads\\/2018\\/09\\/bx80684i38100.jpg\"},{\"id\":14,\"url\":\"http:\\/\\/localhost\\/wp-content\\/uploads\\/2018\\/09\\/trippler-azul1.jpg\"}]},\"elements\":[],\"widgetType\":\"image-carousel\"}],\"isInner\":false}],\"isInner\":false}]'),
(174, 27, '_elementor_version', '0.4'),
(179, 27, '_elementor_css', 'a:5:{s:4:\"time\";i:1535989807;s:5:\"fonts\";a:0:{}s:6:\"status\";s:5:\"empty\";i:0;s:0:\"\";s:3:\"css\";s:0:\"\";}'),
(180, 7, '_edit_lock', '1535989954:1'),
(181, 29, '_wp_attached_file', '2018/09/cropped-informatica-logo.png'),
(182, 29, '_wp_attachment_context', 'site-icon'),
(183, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:36:\"2018/09/cropped-informatica-logo.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-informatica-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"cropped-informatica-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"cropped-informatica-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-informatica-logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"cropped-informatica-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-informatica-logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:36:\"cropped-informatica-logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:36:\"cropped-informatica-logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:36:\"cropped-informatica-logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:34:\"cropped-informatica-logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 30, '_wp_attached_file', '2018/09/cropped-informatica-logo-1.png'),
(185, 30, '_wp_attachment_context', 'site-icon'),
(186, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:38:\"2018/09/cropped-informatica-logo-1.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"cropped-informatica-logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"cropped-informatica-logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"cropped-informatica-logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"cropped-informatica-logo-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:38:\"cropped-informatica-logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"cropped-informatica-logo-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:38:\"cropped-informatica-logo-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:38:\"cropped-informatica-logo-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:38:\"cropped-informatica-logo-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:36:\"cropped-informatica-logo-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 31, '_edit_lock', '1536152264:1'),
(188, 32, '_menu_item_type', 'custom'),
(189, 32, '_menu_item_menu_item_parent', '0'),
(190, 32, '_menu_item_object_id', '32'),
(191, 32, '_menu_item_object', 'custom'),
(192, 32, '_menu_item_target', '_blank'),
(193, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(194, 32, '_menu_item_xfn', ''),
(195, 32, '_menu_item_url', 'https://goo.gl/maps/wz2RHngufj92'),
(196, 32, '_menu_item_template', ''),
(197, 32, '_menu_item_mega_template', ''),
(198, 32, '_menu_item_nolink', ''),
(199, 32, '_menu_item_category_post', ''),
(200, 32, '_menu_item_megamenu', ''),
(201, 32, '_menu_item_megamenu_auto_width', ''),
(202, 32, '_menu_item_megamenu_col', ''),
(203, 32, '_menu_item_megamenu_heading', ''),
(204, 32, '_menu_item_megamenu_widgetarea', ''),
(205, 32, '_menu_item_icon', ''),
(206, 33, '_menu_item_type', 'custom'),
(207, 33, '_menu_item_menu_item_parent', '0'),
(208, 33, '_menu_item_object_id', '33'),
(209, 33, '_menu_item_object', 'custom'),
(210, 33, '_menu_item_target', ''),
(211, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(212, 33, '_menu_item_xfn', ''),
(213, 33, '_menu_item_url', 'http://localhost'),
(214, 33, '_menu_item_template', ''),
(215, 33, '_menu_item_mega_template', ''),
(216, 33, '_menu_item_nolink', ''),
(217, 33, '_menu_item_category_post', ''),
(218, 33, '_menu_item_megamenu', ''),
(219, 33, '_menu_item_megamenu_auto_width', ''),
(220, 33, '_menu_item_megamenu_col', ''),
(221, 33, '_menu_item_megamenu_heading', ''),
(222, 33, '_menu_item_megamenu_widgetarea', ''),
(223, 33, '_menu_item_icon', ''),
(224, 34, '_menu_item_type', 'custom'),
(225, 34, '_menu_item_menu_item_parent', '0'),
(226, 34, '_menu_item_object_id', '34'),
(227, 34, '_menu_item_object', 'custom'),
(228, 34, '_menu_item_target', ''),
(229, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(230, 34, '_menu_item_xfn', ''),
(231, 34, '_menu_item_url', 'http://localhost'),
(232, 34, '_menu_item_template', ''),
(233, 34, '_menu_item_mega_template', ''),
(234, 34, '_menu_item_nolink', ''),
(235, 34, '_menu_item_category_post', ''),
(236, 34, '_menu_item_megamenu', ''),
(237, 34, '_menu_item_megamenu_auto_width', ''),
(238, 34, '_menu_item_megamenu_col', ''),
(239, 34, '_menu_item_megamenu_heading', ''),
(240, 34, '_menu_item_megamenu_widgetarea', ''),
(241, 34, '_menu_item_icon', ''),
(242, 31, '_wp_trash_meta_status', 'publish'),
(243, 31, '_wp_trash_meta_time', '1536152291'),
(245, 36, '_elementor_template_type', 'page'),
(246, 36, '_elementor_edit_mode', 'builder'),
(247, 36, '_edit_lock', '1536159222:1'),
(248, 36, '_wp_page_template', 'default'),
(249, 36, '_elementor_data', '[{\"id\":\"87bc69c\",\"elType\":\"section\",\"settings\":{\"structure\":\"20\"},\"elements\":[{\"id\":\"2b291b0\",\"elType\":\"column\",\"settings\":{\"_column_size\":50,\"_inline_size\":27.992},\"elements\":[{\"id\":\"8418474\",\"elType\":\"widget\",\"settings\":{\"title\":\"Categorias\",\"header_size\":\"h3\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"d74e784\",\"elType\":\"widget\",\"settings\":{\"tabs\":[{\"tab_title\":\"Processador\",\"tab_content\":\"\",\"_id\":\"87abbbc\"},{\"tab_title\":\"Placa-M\\u00e3e\",\"tab_content\":\"Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"93358a1\"},{\"tab_title\":\"Placa de V\\u00eddeo\",\"tab_content\":\"Toggle Content\",\"_id\":\"695567a\"},{\"tab_title\":\"Celular\",\"tab_content\":\"Toggle Content\",\"_id\":\"a0eb1e9\"},{\"tab_title\":\"Impressora\",\"tab_content\":\"Toggle Content\",\"_id\":\"d2531e4\"}]},\"elements\":[],\"widgetType\":\"toggle\"}],\"isInner\":false},{\"id\":\"87c53d8\",\"elType\":\"column\",\"settings\":{\"_column_size\":50,\"_inline_size\":71.978},\"elements\":[{\"id\":\"424e40e\",\"elType\":\"widget\",\"settings\":{\"carousel\":[{\"id\":16,\"url\":\"http:\\/\\/localhost\\/wp-content\\/uploads\\/2018\\/09\\/informatica-logo.png\"}],\"thumbnail_size\":\"woocommerce_thumbnail\",\"arrows_size\":{\"unit\":\"px\",\"size\":20},\"_margin\":{\"unit\":\"%\",\"top\":\"1\",\"right\":\"1\",\"bottom\":\"1\",\"left\":\"1\",\"isLinked\":false},\"_padding\":{\"unit\":\"%\",\"top\":\"3\",\"right\":\"3\",\"bottom\":\"3\",\"left\":\"3\",\"isLinked\":true},\"_border_width\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":true}},\"elements\":[],\"widgetType\":\"image-carousel\"}],\"isInner\":false}],\"isInner\":false}]'),
(250, 36, '_elementor_version', '0.4'),
(259, 37, '_elementor_template_type', 'page'),
(260, 37, '_elementor_edit_mode', 'builder'),
(261, 37, '_wp_page_template', 'default'),
(262, 37, '_elementor_data', '[{\"id\":\"87bc69c\",\"elType\":\"section\",\"settings\":{\"structure\":\"20\"},\"elements\":[{\"id\":\"2b291b0\",\"elType\":\"column\",\"settings\":{\"_column_size\":50,\"_inline_size\":27.992},\"elements\":[{\"id\":\"4f8eb33\",\"elType\":\"widget\",\"settings\":{\"tabs\":[{\"tab_title\":\"Processador\",\"tab_content\":\"\",\"_id\":\"a3ef618\"},{\"tab_title\":\"Placa-M\\u00e3e\",\"tab_content\":\"\",\"_id\":\"4924080\"},{\"tab_title\":\"Periferico\",\"tab_content\":\"\",\"_id\":\"27c843b\"},{\"tab_title\":\"Fonte\",\"tab_content\":\"<a href=\\\"http:\\/\\/localhost\\/checkout\\/fonte\\\"><\\/a>\",\"_id\":\"35978b4\"}],\"icon\":\"\",\"icon_active\":\"\"},\"elements\":[],\"widgetType\":\"toggle\"}],\"isInner\":false},{\"id\":\"87c53d8\",\"elType\":\"column\",\"settings\":{\"_column_size\":50,\"_inline_size\":71.978},\"elements\":[{\"id\":\"424e40e\",\"elType\":\"widget\",\"settings\":{\"carousel\":[{\"id\":14,\"url\":\"http:\\/\\/localhost\\/wp-content\\/uploads\\/2018\\/09\\/trippler-azul1.jpg\"},{\"id\":12,\"url\":\"http:\\/\\/localhost\\/wp-content\\/uploads\\/2018\\/09\\/bx80684i38100.jpg\"}],\"thumbnail_size\":\"woocommerce_thumbnail\",\"arrows_size\":{\"unit\":\"px\",\"size\":20},\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"100\",\"isLinked\":false}},\"elements\":[],\"widgetType\":\"image-carousel\"}],\"isInner\":false}],\"isInner\":false}]'),
(263, 37, '_elementor_version', '0.4'),
(264, 37, '_elementor_css', 'a:4:{s:4:\"time\";i:1536155184;s:5:\"fonts\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(266, 35, '_customize_restore_dismissed', '1'),
(276, 40, '_elementor_template_type', 'page'),
(277, 40, '_elementor_edit_mode', 'builder'),
(278, 40, '_wp_page_template', 'default'),
(279, 40, '_elementor_data', '[{\"id\":\"87bc69c\",\"elType\":\"section\",\"settings\":{\"structure\":\"20\"},\"elements\":[{\"id\":\"2b291b0\",\"elType\":\"column\",\"settings\":{\"_column_size\":50,\"_inline_size\":27.992},\"elements\":[{\"id\":\"8418474\",\"elType\":\"widget\",\"settings\":{\"title\":\"Categorias\",\"header_size\":\"h3\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"d74e784\",\"elType\":\"widget\",\"settings\":{\"tabs\":[{\"tab_title\":\"Processador\",\"tab_content\":\"\",\"_id\":\"87abbbc\"},{\"tab_title\":\"Placa-M\\u00e3e\",\"tab_content\":\"Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"_id\":\"93358a1\"},{\"tab_title\":\"Placa de V\\u00eddeo\",\"tab_content\":\"Toggle Content\",\"_id\":\"695567a\"},{\"tab_title\":\"Celular\",\"tab_content\":\"Toggle Content\",\"_id\":\"a0eb1e9\"},{\"tab_title\":\"Impressora\",\"tab_content\":\"Toggle Content\",\"_id\":\"d2531e4\"}]},\"elements\":[],\"widgetType\":\"toggle\"}],\"isInner\":false},{\"id\":\"87c53d8\",\"elType\":\"column\",\"settings\":{\"_column_size\":50,\"_inline_size\":71.978},\"elements\":[{\"id\":\"424e40e\",\"elType\":\"widget\",\"settings\":{\"carousel\":[{\"id\":16,\"url\":\"http:\\/\\/localhost\\/wp-content\\/uploads\\/2018\\/09\\/informatica-logo.png\"}],\"thumbnail_size\":\"woocommerce_thumbnail\",\"arrows_size\":{\"unit\":\"px\",\"size\":20},\"_margin\":{\"unit\":\"%\",\"top\":\"1\",\"right\":\"1\",\"bottom\":\"1\",\"left\":\"1\",\"isLinked\":false},\"_padding\":{\"unit\":\"%\",\"top\":\"3\",\"right\":\"3\",\"bottom\":\"3\",\"left\":\"3\",\"isLinked\":true},\"_border_width\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":true}},\"elements\":[],\"widgetType\":\"image-carousel\"}],\"isInner\":false}],\"isInner\":false}]'),
(280, 40, '_elementor_version', '0.4'),
(281, 40, '_elementor_css', 'a:4:{s:4:\"time\";i:1536159153;s:5:\"fonts\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(282, 36, '_elementor_css', 'a:4:{s:4:\"time\";i:1536159171;s:5:\"fonts\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
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
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-03 12:27:15', '2018-09-03 12:27:15', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-09-03 12:27:15', '2018-09-03 12:27:15', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-03 12:27:15', '2018-09-03 12:27:15', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-09-03 12:27:15', '2018-09-03 12:27:15', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-03 12:27:15', '2018-09-03 12:27:15', '<h2>Who we are</h2><p>Our website address is: http://localhost.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-09-03 12:27:15', '2018-09-03 12:27:15', '', 0, 'http://localhost/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-09-03 12:27:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-03 12:27:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=4', 0, 'post', '', 0),
(5, 1, '2018-09-03 13:17:36', '0000-00-00 00:00:00', '{\n    \"advance-ecommerce-store::advance_ecommerce_store_layout_options\": {\n        \"value\": \"One Column\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 13:17:36\"\n    },\n    \"advance-ecommerce-store::advance_ecommerce_store_slider_hide\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 13:17:36\"\n    },\n    \"advance-ecommerce-store::advance_ecommerce_store_slider_page3\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 13:17:36\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '1045031f-21c6-4224-9fd7-ffc20995dd26', '', '', '2018-09-03 13:17:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=5', 0, 'customize_changeset', '', 0),
(6, 1, '2018-09-03 13:24:40', '2018-09-03 13:24:40', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-09-03 13:24:40', '2018-09-03 13:24:40', '', 0, 'http://localhost/shop/', 0, 'page', '', 0),
(7, 1, '2018-09-03 13:24:41', '2018-09-03 13:24:41', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-09-03 13:24:41', '2018-09-03 13:24:41', '', 0, 'http://localhost/cart/', 0, 'page', '', 0),
(8, 1, '2018-09-03 13:24:41', '2018-09-03 13:24:41', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-09-03 13:24:41', '2018-09-03 13:24:41', '', 0, 'http://localhost/checkout/', 0, 'page', '', 0),
(9, 1, '2018-09-03 13:24:41', '2018-09-03 13:24:41', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-09-03 13:24:41', '2018-09-03 13:24:41', '', 0, 'http://localhost/my-account/', 0, 'page', '', 0),
(10, 1, '2018-09-03 13:27:48', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-09-03 13:27:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=product&p=10', 0, 'product', '', 0),
(11, 1, '2018-09-03 13:31:23', '2018-09-03 13:31:23', '<img class=\"alignnone size-medium wp-image-12\" src=\"http://localhost/wp-content/uploads/2018/09/bx80684i38100-300x250.jpg\" alt=\"\" width=\"300\" height=\"250\" />', 'PROCESSADOR INTEL CORE I3-8100 COFFEE LAKE LGA 1151 3.6GHZ 6MB CACHE, BX80684I38100', '', 'publish', 'open', 'closed', '', 'processador-intel-core-i3-8100-coffee-lake-lga-1151-3-6ghz-6mb-cache-bx80684i38100', '', '', '2018-09-03 13:31:26', '2018-09-03 13:31:26', '', 0, 'http://localhost/?post_type=product&#038;p=11', 0, 'product', '', 0),
(12, 1, '2018-09-03 13:30:28', '2018-09-03 13:30:28', '', 'bx80684i38100', 'Processador Core i3', 'inherit', 'open', 'closed', '', 'bx80684i38100', '', '', '2018-09-05 13:35:48', '2018-09-05 13:35:48', '', 11, 'http://localhost/wp-content/uploads/2018/09/bx80684i38100.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-09-03 14:32:16', '2018-09-03 14:32:16', '<img class=\"alignnone size-medium wp-image-14\" src=\"http://localhost/wp-content/uploads/2018/09/trippler-azul1-300x250.jpg\" alt=\"\" width=\"300\" height=\"250\" />', 'CADEIRA PICHAU GAMING TIPPLER AZUL, BY-8105-AZUL', '<b>A nova linha de cadeiras Pichau Gaming Tippler inspirada na raça de pombos que levam o mesmo nome, por serem conhecidos por sua aptidão para voos longos e altíssima resistência, esta linha possui um couro sintético de alta qualidade e, devido a sua forma ergonômico, oferece um alto nível de conforto mesmo após horas de jogo.</b>\r\n<p style=\"text-align: right;\"><b>ASSENTO DE ALTO CONFORTO</b>\r\n\r\n</p>\r\nAssento inteiramente inspirado na plumagem dos pombos Tippler, sendo forjada com a melhor espuma, proporcionando conforto', 'publish', 'open', 'closed', '', 'cadeira-pichau-gaming-tippler-azul-by-8105-azul', '', '', '2018-09-03 14:32:18', '2018-09-03 14:32:18', '', 0, 'http://localhost/?post_type=product&#038;p=13', 0, 'product', '', 0),
(14, 1, '2018-09-03 14:30:15', '2018-09-03 14:30:15', '', 'trippler-azul1', 'Cadeira PICHAU', 'inherit', 'open', 'closed', '', 'trippler-azul1', '', '', '2018-09-05 13:35:32', '2018-09-05 13:35:32', '', 13, 'http://localhost/wp-content/uploads/2018/09/trippler-azul1.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-09-03 14:45:16', '2018-09-03 14:45:16', '{\n    \"blogdescription\": {\n        \"value\": \"Oferecer as melhores exper\\u00eancias em inform\\u00e1tica\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 14:43:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5d5aab50-4ed4-4913-b5ed-3d863b64bdb0', '', '', '2018-09-03 14:45:16', '2018-09-03 14:45:16', '', 0, 'http://localhost/?p=15', 0, 'customize_changeset', '', 0),
(16, 1, '2018-09-03 14:44:26', '2018-09-03 14:44:26', '', 'informatica-logo', '', 'inherit', 'open', 'closed', '', 'informatica-logo', '', '', '2018-09-03 14:44:26', '2018-09-03 14:44:26', '', 0, 'http://localhost/wp-content/uploads/2018/09/informatica-logo.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2018-09-03 14:47:20', '2018-09-03 14:47:20', '{\n    \"oceanwp::header_textcolor\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 14:46:25\"\n    },\n    \"oceanwp::nav_menu_locations[topbar_menu]\": {\n        \"value\": -668861873,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 14:47:20\"\n    },\n    \"oceanwp::nav_menu_locations[main_menu]\": {\n        \"value\": -668861873,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 14:47:20\"\n    },\n    \"oceanwp::nav_menu_locations[footer_menu]\": {\n        \"value\": -668861873,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 14:47:20\"\n    },\n    \"nav_menu[-668861873]\": {\n        \"value\": {\n            \"name\": \"Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 14:47:20\"\n    },\n    \"nav_menu_item[-1430896747]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"My account\",\n            \"url\": \"http://localhost/my-account/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"My account\",\n            \"nav_menu_term_id\": -668861873,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 14:47:20\"\n    },\n    \"nav_menu_item[-134231190]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Cart\",\n            \"url\": \"http://localhost/cart/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Cart\",\n            \"nav_menu_term_id\": -668861873,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 14:47:20\"\n    },\n    \"nav_menu_item[-1264773419]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Shop\",\n            \"url\": \"http://localhost/shop/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Shop\",\n            \"nav_menu_term_id\": -668861873,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 14:47:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4818e0dd-e184-4e8e-bc29-8c4f975ac2fb', '', '', '2018-09-03 14:47:20', '2018-09-03 14:47:20', '', 0, 'http://localhost/?p=17', 0, 'customize_changeset', '', 0),
(18, 1, '2018-09-03 14:47:21', '2018-09-03 14:47:21', '', 'Minha Conta', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-09-05 12:58:07', '2018-09-05 12:58:07', '', 0, 'http://localhost/2018/09/03/18/', 3, 'nav_menu_item', '', 0),
(19, 1, '2018-09-03 14:47:22', '2018-09-03 14:47:22', '', 'Carrinho', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-09-05 12:58:07', '2018-09-05 12:58:07', '', 0, 'http://localhost/2018/09/03/19/', 4, 'nav_menu_item', '', 0),
(20, 1, '2018-09-03 14:47:23', '2018-09-03 14:47:23', '', 'Loja', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-09-05 12:58:07', '2018-09-05 12:58:07', '', 0, 'http://localhost/2018/09/03/20/', 2, 'nav_menu_item', '', 0),
(21, 1, '2018-09-03 14:52:22', '2018-09-03 14:52:22', '{\n    \"nav_menu_item[-1619314447]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 14:48:26\"\n    },\n    \"oceanwp::nav_menu_locations[topbar_menu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 14:51:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eb3d51db-50d3-451a-8a90-f50756d7bc9f', '', '', '2018-09-03 14:52:22', '2018-09-03 14:52:22', '', 0, 'http://localhost/?p=21', 0, 'customize_changeset', '', 0),
(22, 1, '2018-09-03 14:52:22', '2018-09-03 14:52:22', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-09-05 12:58:07', '2018-09-05 12:58:07', '', 0, 'http://localhost/2018/09/03/home/', 1, 'nav_menu_item', '', 0),
(23, 1, '2018-09-03 15:06:14', '2018-09-03 15:06:14', '', 'CADEIRA PICHAU GAMING TIPPLER AZUL, BY-8105-AZUL', '<b><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><a href=\"http://localhost/wp-content/uploads/2018/09/trippler-azul1.jpg\"><img class=\"alignnone size-medium wp-image-14\" src=\"http://localhost/wp-content/uploads/2018/09/trippler-azul1-300x250.jpg\" alt=\"\" width=\"300\" height=\"250\" /></a>A nova linha de cadeiras Pichau Gaming Tippler inspirada na raça de levar o mesmo nome, por maiorias e mais devido à sua forma ergonômica, oferece um alto nível de conforto mesmo após horas de jogo.</span></span></b>\n<p style=\"text-align: right;\"><b><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">ASSENTO DE ALTO CONFORTO</span></span></b></p>\n<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Assorted inteiramente inspirado na plumagem dos pombos, sendo forjada com a melhor espuma, proporcionando conforto</span></span>', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2018-09-03 15:06:14', '2018-09-03 15:06:14', '', 13, 'http://localhost/2018/09/03/13-autosave-v1/', 0, 'revision', '', 0),
(24, 1, '2018-09-03 15:21:27', '2018-09-03 15:21:27', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 15:20:33\"\n    },\n    \"page_on_front\": {\n        \"value\": \"7\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 15:20:33\"\n    },\n    \"sidebars_widgets[sidebar]\": {\n        \"value\": [\n            \"search-2\",\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 15:21:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd3586ce8-9788-4474-9b8e-4491749fcbfd', '', '', '2018-09-03 15:21:27', '2018-09-03 15:21:27', '', 0, 'http://localhost/?p=24', 0, 'customize_changeset', '', 0),
(25, 1, '2018-09-03 15:26:21', '2018-09-03 15:26:21', '{\n    \"sidebars_widgets[woo_sidebar]\": {\n        \"value\": [\n            \"woocommerce_layered_nav_filters-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 15:22:34\"\n    },\n    \"widget_woocommerce_layered_nav_filters[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IkZpbHRybyI7fQ==\",\n            \"title\": \"Filtro\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"6a5edfb8aef84162063528940b82dff3\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 15:22:34\"\n    },\n    \"page_on_front\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 15:23:34\"\n    },\n    \"oceanwp::ocean_customzer_styling\": {\n        \"value\": \"head\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 15:24:34\"\n    },\n    \"oceanwp::ocean_primary_color\": {\n        \"value\": \"#13aff0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 15:24:34\"\n    },\n    \"oceanwp::ocean_hover_primary_color\": {\n        \"value\": \"#0b7cac\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 15:24:34\"\n    },\n    \"oceanwp::ocean_main_border_color\": {\n        \"value\": \"#e9e9e9\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 15:25:34\"\n    },\n    \"oceanwp::ocean_main_layout_style\": {\n        \"value\": \"wide\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 15:26:21\"\n    },\n    \"oceanwp::ocean_main_container_width\": {\n        \"value\": \"1200\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 15:26:21\"\n    },\n    \"oceanwp::ocean_page_single_layout\": {\n        \"value\": \"right-sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-03 15:26:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a397ad0b-36c6-472e-945c-383504979264', '', '', '2018-09-03 15:26:21', '2018-09-03 15:26:21', '', 0, 'http://localhost/?p=25', 0, 'customize_changeset', '', 0),
(26, 1, '2018-09-03 15:37:20', '2018-09-03 15:37:20', '', 'Products I Love', '', 'publish', 'closed', 'closed', '', 'products-i-love', '', '', '2018-09-03 15:37:20', '2018-09-03 15:37:20', '', 0, 'http://localhost/2018/09/03/products-i-love/', 0, 'wishlist', '', 0),
(27, 1, '2018-09-03 15:50:06', '0000-00-00 00:00:00', '<figure><img src=\"http://localhost/wp-content/uploads/2018/09/bx80684i38100-150x150.jpg\" alt=\"bx80684i38100\" /></figure><figure><img src=\"http://localhost/wp-content/uploads/2018/09/trippler-azul1-150x150.jpg\" alt=\"trippler-azul1\" /></figure>', 'Elementor #27', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-03 15:50:06', '2018-09-03 15:50:06', '', 0, 'http://localhost/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-09-03 15:42:50', '2018-09-03 15:42:50', '', 'Elementor #27', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-09-03 15:42:50', '2018-09-03 15:42:50', '', 27, 'http://localhost/2018/09/03/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-09-05 12:50:45', '2018-09-05 12:50:45', 'http://localhost/wp-content/uploads/2018/09/cropped-informatica-logo.png', 'cropped-informatica-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-informatica-logo-png', '', '', '2018-09-05 12:50:45', '2018-09-05 12:50:45', '', 0, 'http://localhost/wp-content/uploads/2018/09/cropped-informatica-logo.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2018-09-05 12:51:20', '2018-09-05 12:51:20', 'http://localhost/wp-content/uploads/2018/09/cropped-informatica-logo-1.png', 'cropped-informatica-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-informatica-logo-1-png', '', '', '2018-09-05 12:51:20', '2018-09-05 12:51:20', '', 0, 'http://localhost/wp-content/uploads/2018/09/cropped-informatica-logo-1.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2018-09-05 12:58:07', '2018-09-05 12:58:07', '{\n    \"site_icon\": {\n        \"value\": 30,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 12:51:37\"\n    },\n    \"oceanwp::nav_menu_locations[topbar_menu]\": {\n        \"value\": -1465281858,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 12:53:12\"\n    },\n    \"nav_menu_item[18]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/my-account/\",\n            \"title\": \"Minha Conta\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"template\": \"\",\n            \"mega_template\": \"\",\n            \"nolink\": \"\",\n            \"category_post\": \"\",\n            \"megamenu\": \"\",\n            \"megamenu_auto_width\": \"\",\n            \"megamenu_col\": \"\",\n            \"megamenu_heading\": \"\",\n            \"megamenu_widgetarea\": \"\",\n            \"icon\": \"\",\n            \"nav_menu_term_id\": 16,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"My account\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 12:52:37\"\n    },\n    \"nav_menu_item[19]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/cart/\",\n            \"title\": \"Carrinho\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"template\": \"\",\n            \"mega_template\": \"\",\n            \"nolink\": \"\",\n            \"category_post\": \"\",\n            \"megamenu\": \"\",\n            \"megamenu_auto_width\": \"\",\n            \"megamenu_col\": \"\",\n            \"megamenu_heading\": \"\",\n            \"megamenu_widgetarea\": \"\",\n            \"icon\": \"\",\n            \"nav_menu_term_id\": 16,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"Cart\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 12:52:37\"\n    },\n    \"nav_menu_item[20]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/\",\n            \"title\": \"Loja\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"template\": \"\",\n            \"mega_template\": \"\",\n            \"nolink\": \"\",\n            \"category_post\": \"\",\n            \"megamenu\": \"\",\n            \"megamenu_auto_width\": \"\",\n            \"megamenu_col\": \"\",\n            \"megamenu_heading\": \"\",\n            \"megamenu_widgetarea\": \"\",\n            \"icon\": \"\",\n            \"nav_menu_term_id\": 16,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Shop\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 12:52:37\"\n    },\n    \"nav_menu_item[22]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 22,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Custom Link\",\n            \"title\": \"Inicio\",\n            \"url\": \"http://localhost\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"template\": \"\",\n            \"mega_template\": \"\",\n            \"nolink\": \"\",\n            \"category_post\": \"\",\n            \"megamenu\": \"\",\n            \"megamenu_auto_width\": \"\",\n            \"megamenu_col\": \"\",\n            \"megamenu_heading\": \"\",\n            \"megamenu_widgetarea\": \"\",\n            \"icon\": \"\",\n            \"nav_menu_term_id\": 16,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 12:52:37\"\n    },\n    \"nav_menu[16]\": {\n        \"value\": {\n            \"name\": \"NAVBAR 2\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 12:53:12\"\n    },\n    \"nav_menu[-1465281858]\": {\n        \"value\": {\n            \"name\": \"NAVBAR 1\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 12:53:12\"\n    },\n    \"nav_menu_item[-2126475838]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"R. Cel. Carlos Matos, 86 - Centro, Nova Igua\\u00e7u\",\n            \"url\": \"https://goo.gl/maps/wz2RHngufj92\",\n            \"target\": \"_blank\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1465281858,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 12:55:55\"\n    },\n    \"nav_menu_item[-1308621077]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"+55 21 935253325\",\n            \"url\": \"http://localhost\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1465281858,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 12:56:48\"\n    },\n    \"nav_menu_item[-2129930843]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Sei l\\u00e1 oq\",\n            \"url\": \"http://localhost\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1465281858,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 12:58:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8e4fb6c5-5a1a-4fb0-a243-22fc4241e1ec', '', '', '2018-09-05 12:58:07', '2018-09-05 12:58:07', '', 0, 'http://localhost/?p=31', 0, 'customize_changeset', '', 0),
(32, 1, '2018-09-05 12:58:08', '2018-09-05 12:58:08', '', 'R. Cel. Carlos Matos, 86 - Centro, Nova Iguaçu', '', 'publish', 'closed', 'closed', '', 'r-cel-carlos-matos-86-centro-nova-iguacu', '', '', '2018-09-05 12:58:08', '2018-09-05 12:58:08', '', 0, 'http://localhost/2018/09/05/r-cel-carlos-matos-86-centro-nova-iguacu/', 1, 'nav_menu_item', '', 0),
(33, 1, '2018-09-05 12:58:09', '2018-09-05 12:58:09', '', '+55 21 935253325', '', 'publish', 'closed', 'closed', '', '55-21-935253325', '', '', '2018-09-05 12:58:09', '2018-09-05 12:58:09', '', 0, 'http://localhost/2018/09/05/55-21-935253325/', 2, 'nav_menu_item', '', 0),
(34, 1, '2018-09-05 12:58:10', '2018-09-05 12:58:10', '', 'Sei lá oq', '', 'publish', 'closed', 'closed', '', 'sei-la-oq', '', '', '2018-09-05 12:58:10', '2018-09-05 12:58:10', '', 0, 'http://localhost/2018/09/05/sei-la-oq/', 3, 'nav_menu_item', '', 0),
(35, 1, '2018-09-05 13:05:53', '0000-00-00 00:00:00', '{\n    \"sidebars_widgets[footer-one]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 12:59:16\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"9\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:00:16\"\n    },\n    \"widget_ocean_about_me[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 12:59:16\"\n    },\n    \"oceanwp::ocean_primary_color\": {\n        \"value\": \"#13aff0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:00:16\"\n    },\n    \"oceanwp::ocean_hover_primary_color\": {\n        \"value\": \"#0b7cac\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:00:16\"\n    },\n    \"oceanwp::ocean_main_border_color\": {\n        \"value\": \"#e9e9e9\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:00:16\"\n    },\n    \"oceanwp::ocean_background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:01:16\"\n    },\n    \"oceanwp::ocean_links_color\": {\n        \"value\": \"#333333\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:01:16\"\n    },\n    \"oceanwp::ocean_links_color_hover\": {\n        \"value\": \"#13aff0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:01:16\"\n    },\n    \"oceanwp::ocean_main_container_width\": {\n        \"value\": \"1200\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:01:16\"\n    },\n    \"oceanwp::ocean_schema_markup\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:01:16\"\n    },\n    \"oceanwp::ocean_page_single_layout\": {\n        \"value\": \"right-sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:01:53\"\n    },\n    \"oceanwp::ocean_search_custom_sidebar\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:01:53\"\n    },\n    \"oceanwp::ocean_open_graph\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:01:53\"\n    },\n    \"oceanwp::ocean_twitter_handle\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:01:53\"\n    },\n    \"oceanwp::ocean_facebook_page_url\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:01:53\"\n    },\n    \"oceanwp::ocean_facebook_appid\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:01:53\"\n    },\n    \"oceanwp::ocean_page_header_heading_tag\": {\n        \"value\": \"h1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:02:53\"\n    },\n    \"oceanwp::ocean_page_header_background\": {\n        \"value\": \"#f5f5f5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:02:53\"\n    },\n    \"oceanwp::ocean_page_header_title_color\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:02:53\"\n    },\n    \"oceanwp::ocean_breadcrumbs\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:02:53\"\n    },\n    \"oceanwp::ocean_breadcrumbs_text_color\": {\n        \"value\": \"#c6c6c6\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:03:53\"\n    },\n    \"oceanwp::ocean_breadcrumbs_seperator_color\": {\n        \"value\": \"#c6c6c6\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:03:53\"\n    },\n    \"oceanwp::ocean_breadcrumbs_link_color\": {\n        \"value\": \"#333333\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:03:53\"\n    },\n    \"oceanwp::ocean_breadcrumbs_link_color_hover\": {\n        \"value\": \"#13aff0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:03:53\"\n    },\n    \"oceanwp::ocean_scroll_top_arrow\": {\n        \"value\": \"fa fa-chevron-up\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:03:53\"\n    },\n    \"oceanwp::ocean_scroll_top_position\": {\n        \"value\": \"right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:03:53\"\n    },\n    \"oceanwp::ocean_pagination_align\": {\n        \"value\": \"right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:04:53\"\n    },\n    \"oceanwp::ocean_pagination_font_size\": {\n        \"value\": \"18\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:04:53\"\n    },\n    \"oceanwp::ocean_pagination_bg\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:04:53\"\n    },\n    \"oceanwp::ocean_label_color\": {\n        \"value\": \"#929292\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:04:53\"\n    },\n    \"oceanwp::ocean_theme_button_bg\": {\n        \"value\": \"#13aff0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:05:53\"\n    },\n    \"oceanwp::ocean_disable_google_font\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:05:53\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '10f3f4f9-4c86-46f0-b7ad-3fb535f2ff6d', '', '', '2018-09-05 13:05:53', '2018-09-05 13:05:53', '', 0, 'http://localhost/?p=35', 0, 'customize_changeset', '', 0),
(36, 1, '2018-09-05 13:46:23', '2018-09-05 13:46:23', '<h3>Categorias</h3>		\n												Processador					\n												Placa-Mãe					\n					Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n												Placa de Vídeo					\n					Toggle Content\n												Celular					\n					Toggle Content\n												Impressora					\n					Toggle Content\n				<figure><img src=\"http://localhost/wp-content/uploads/2018/09/informatica-logo-300x300.png\" alt=\"informatica-logo\" /></figure>', 'principal', '', 'publish', 'closed', 'closed', '', 'principal', '', '', '2018-09-05 14:52:49', '2018-09-05 14:52:49', '', 0, 'http://localhost/?post_type=elementor_library&#038;p=36', 0, 'elementor_library', '', 0),
(37, 1, '2018-09-05 13:47:39', '2018-09-05 13:47:39', 'Processador					\n												Placa-Mãe					\n												Periferico					\n												Fonte					\n					<a href=\"http://localhost/checkout/fonte\"></a>\n				<figure><img src=\"http://localhost/wp-content/uploads/2018/09/trippler-azul1-300x300.jpg\" alt=\"Cadeira PICHAU\" /></figure><figure><img src=\"http://localhost/wp-content/uploads/2018/09/bx80684i38100-300x300.jpg\" alt=\"Processador Core i3\" /></figure>', 'principal', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-09-05 13:47:39', '2018-09-05 13:47:39', '', 36, 'http://localhost/2018/09/05/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-09-05 14:04:20', '0000-00-00 00:00:00', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 13:50:00\"\n    },\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-05 14:03:28\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '27963ad8-59a4-4cc2-b01f-66477b4ef392', '', '', '2018-09-05 14:04:20', '2018-09-05 14:04:20', '', 0, 'http://localhost/?p=38', 0, 'customize_changeset', '', 0),
(40, 1, '2018-09-05 14:52:49', '2018-09-05 14:52:49', '<h3>Categorias</h3>		\n												Processador					\n												Placa-Mãe					\n					Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n												Placa de Vídeo					\n					Toggle Content\n												Celular					\n					Toggle Content\n												Impressora					\n					Toggle Content\n				<figure><img src=\"http://localhost/wp-content/uploads/2018/09/informatica-logo-300x300.png\" alt=\"informatica-logo\" /></figure>', 'principal', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-09-05 14:52:49', '2018-09-05 14:52:49', '', 36, 'http://localhost/2018/09/05/36-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'NAVBAR 2', 'navbar-2', 0),
(17, 'NAVBAR 1', 'navbar-1', 0),
(18, 'page', 'page', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 2, 0),
(11, 15, 0),
(13, 2, 0),
(13, 15, 0),
(18, 16, 0),
(19, 16, 0),
(20, 16, 0),
(22, 16, 0),
(32, 17, 0),
(33, 17, 0),
(34, 17, 0),
(36, 18, 0),
(39, 18, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
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
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 2),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 2),
(16, 16, 'nav_menu', '', 0, 4),
(17, 17, 'nav_menu', '', 0, 3),
(18, 18, 'elementor_library_type', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jvictor1996'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&post_dfw=off&editor=tinymce'),
(19, 1, 'wp_user-settings-time', '1536155285'),
(20, 1, 'wc_last_active', '1536105600'),
(21, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(22, 1, 'closedpostboxes_product', 'a:0:{}'),
(23, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(24, 1, 'session_tokens', 'a:4:{s:64:\"846e724cbc96b95d66579f2985f1a4b5055cc54ef84724801fb8599a43929ce0\";a:4:{s:10:\"expiration\";i:1536322873;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1536150073;}s:64:\"9e36e61a0335653305fb97b8847db03bd4e556f5b29e4e4a503a96deef5bd7d4\";a:4:{s:10:\"expiration\";i:1536328829;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1536156029;}s:64:\"27852f31a2e461960adf5538291377b4e913dfed68670c62bc1c307196a3ea6c\";a:4:{s:10:\"expiration\";i:1536328917;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1536156117;}s:64:\"9449c10f05eae99ebe9a751696614bf66a19e9741a1b4f1cc958490492a50ea1\";a:4:{s:10:\"expiration\";i:1536328930;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1536156130;}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
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
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jvictor1996', '$P$BTEY7n0P.FAGxgH2fsiVLYXt7vHZzo.', 'jvictor1996', 'jv-10-victor@live.com', '', '2018-09-03 12:27:14', '', 0, 'jvictor1996');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(19, '1', 'a:1:{s:8:\"customer\";s:713:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"RJ\";s:7:\"country\";s:2:\"BR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"RJ\";s:16:\"shipping_country\";s:2:\"BR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"jv-10-victor@live.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1536162911),
(35, '4cdb788c32fa6e83a62e0aa5ce9cac81', 'a:9:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:830:\"a:2:{s:32:\"c51ce410c124a10e0db5e4b97fc2af39\";a:11:{s:3:\"key\";s:32:\"c51ce410c124a10e0db5e4b97fc2af39\";s:10:\"product_id\";i:13;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1529.73;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1529.73;s:8:\"line_tax\";i:0;}s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:11:{s:3:\"key\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:10:\"product_id\";i:11;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:599.9;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:599.9;s:8:\"line_tax\";i:0;}}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:713:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"RJ\";s:7:\"country\";s:2:\"BR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"RJ\";s:16:\"shipping_country\";s:2:\"BR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"jv-10-victor@live.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:21:\"chosen_payment_method\";s:0:\"\";}', 1536322802);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

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
-- Indexes for table `wp_pickplugins_wl_data`
--
ALTER TABLE `wp_pickplugins_wl_data`
  ADD UNIQUE KEY `id` (`id`);

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
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=534;

--
-- AUTO_INCREMENT for table `wp_pickplugins_wl_data`
--
ALTER TABLE `wp_pickplugins_wl_data`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
