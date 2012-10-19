-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 06/07/2012 às 15h22min
-- Versão do Servidor: 5.5.20
-- Versão do PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `unbgama`
--
CREATE DATABASE `unbgama` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_cs;
USE `unbgama`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Sr. WordPress', '', 'http://wordpress.org/', '', '2012-06-21 22:30:32', '2012-06-21 22:30:32', 'Olá, isto é um comentário.<br />Para excluir um comentário, faça o login e veja os comentários dos posts. Lá você vai ter a opção de editá-los ou excluí-los.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `wp_links`
--

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wordpress.org/pt-br:Página_Inicial', 'Documentação', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://wordpress.org/news/', 'Blog do WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://wordpress.org/news/feed/'),
(3, 'http://br.forums.wordpress.org/', 'Fórum de Suporte', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/extend/plugins/', 'Plugins', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/themes/', 'Temas', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, 'http://br.forums.wordpress.org/forum/pedidos-e-feedback', 'Feedback', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://planet.wordpress.org/', 'Planeta WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=404 ;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/unbgama', 'yes'),
(2, 'blogname', 'UnB Gama', 'yes'),
(3, 'blogdescription', 'O novo endereço da tecnologia', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'eduardo.mobinet@gmail.com', 'yes'),
(6, 'start_of_week', '0', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'default_post_edit_rows', '20', 'yes'),
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y G:i', 'yes'),
(26, 'links_recently_updated_prepend', '<em>', 'yes'),
(27, 'links_recently_updated_append', '</em>', 'yes'),
(28, 'links_recently_updated_time', '120', 'yes'),
(29, 'comment_moderation', '0', 'yes'),
(30, 'moderation_notify', '1', 'yes'),
(31, 'permalink_structure', '', 'yes'),
(32, 'gzipcompression', '0', 'yes'),
(33, 'hack_file', '0', 'yes'),
(34, 'blog_charset', 'UTF-8', 'yes'),
(35, 'moderation_keys', '', 'no'),
(36, 'active_plugins', 'a:4:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:32:"global-translator/translator.php";i:3;s:27:"wp-pagenavi/wp-pagenavi.php";}', 'yes'),
(37, 'home', 'http://localhost/unbgama', 'yes'),
(38, 'category_base', '', 'yes'),
(39, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(40, 'advanced_edit', '0', 'yes'),
(41, 'comment_max_links', '2', 'yes'),
(42, 'gmt_offset', '0', 'yes'),
(43, 'default_email_category', '1', 'yes'),
(44, 'recently_edited', 'a:2:{i:0;s:73:"C:\\wamp\\www\\wordpress/wp-content/plugins/global-translator/translator.php";i:1;s:0:"";}', 'no'),
(45, 'template', 'unbgama', 'yes'),
(46, 'stylesheet', 'unbgama', 'yes'),
(47, 'comment_whitelist', '1', 'yes'),
(48, 'blacklist_keys', '', 'no'),
(49, 'comment_registration', '0', 'yes'),
(50, 'html_type', 'text/html', 'yes'),
(51, 'use_trackback', '0', 'yes'),
(52, 'default_role', 'subscriber', 'yes'),
(53, 'db_version', '21115', 'yes'),
(54, 'uploads_use_yearmonth_folders', '1', 'yes'),
(55, 'upload_path', '', 'yes'),
(56, 'blog_public', '0', 'yes'),
(57, 'default_link_category', '2', 'yes'),
(58, 'show_on_front', 'posts', 'yes'),
(59, 'tag_base', '', 'yes'),
(60, 'show_avatars', '1', 'yes'),
(61, 'avatar_rating', 'G', 'yes'),
(62, 'upload_url_path', '', 'yes'),
(63, 'thumbnail_size_w', '150', 'yes'),
(64, 'thumbnail_size_h', '150', 'yes'),
(65, 'thumbnail_crop', '1', 'yes'),
(66, 'medium_size_w', '300', 'yes'),
(67, 'medium_size_h', '300', 'yes'),
(68, 'avatar_default', 'mystery', 'yes'),
(69, 'enable_app', '0', 'yes'),
(70, 'enable_xmlrpc', '0', 'yes'),
(71, 'large_size_w', '1024', 'yes'),
(72, 'large_size_h', '1024', 'yes'),
(73, 'image_default_link_type', 'file', 'yes'),
(74, 'image_default_size', '', 'yes'),
(75, 'image_default_align', '', 'yes'),
(76, 'close_comments_for_old_posts', '0', 'yes'),
(77, 'close_comments_days_old', '14', 'yes'),
(78, 'thread_comments', '1', 'yes'),
(79, 'thread_comments_depth', '5', 'yes'),
(80, 'page_comments', '0', 'yes'),
(81, 'comments_per_page', '50', 'yes'),
(82, 'default_comments_page', 'newest', 'yes'),
(83, 'comment_order', 'asc', 'yes'),
(84, 'sticky_posts', 'a:0:{}', 'yes'),
(85, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:10:"Categorias";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(86, 'widget_text', 'a:0:{}', 'yes'),
(87, 'widget_rss', 'a:0:{}', 'yes'),
(88, 'uninstall_plugins', 'a:1:{s:27:"wp-pagenavi/wp-pagenavi.php";s:14:"__return_false";}', 'no'),
(89, 'timezone_string', '', 'yes'),
(90, 'embed_autourls', '1', 'yes'),
(91, 'embed_size_w', '', 'yes'),
(92, 'embed_size_h', '600', 'yes'),
(93, 'page_for_posts', '0', 'yes'),
(94, 'page_on_front', '0', 'yes'),
(95, 'default_post_format', '0', 'yes'),
(96, 'initial_db_version', '20596', 'yes'),
(97, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(98, 'widget_search', 'a:4:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:9:"Pesquisar";}i:4;a:1:{s:5:"title";s:9:"Pesquisar";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:14:"Posts Recentes";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:6:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:4:"Meta";}i:4;a:1:{s:5:"title";s:7:"Metaaaa";}i:5;a:1:{s:5:"title";s:3:"123";}i:6;a:1:{s:5:"title";s:4:"Meta";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:6:{i:0;s:6:"meta-6";i:1;s:10:"calendar-2";i:2;s:6:"meta-3";i:3;s:6:"meta-4";i:4;s:6:"meta-5";i:5;s:8:"search-3";}s:10:"barra_home";a:4:{i:0;s:8:"search-2";i:1;s:17:"recent-comments-2";i:2;s:10:"archives-2";i:3;s:6:"meta-2";}s:18:"orphaned_widgets_1";a:1:{i:0;s:10:"calendar-3";}s:18:"orphaned_widgets_2";a:3:{i:0;s:8:"search-4";i:1;s:12:"categories-2";i:2;s:14:"recent-posts-2";}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:4:{i:1341613837;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1341614512;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1341616249;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":3:{s:12:"last_checked";i:1341581563;s:7:"checked";a:4:{s:7:"projeto";s:0:"";s:12:"twentyeleven";s:3:"1.4";s:9:"twentyten";s:3:"1.4";s:7:"unbgama";s:3:"1.0";}s:8:"response";a:0:{}}', 'yes'),
(111, '_site_transient_timeout_browser_b9b67149893cf58ea98c6d61dc5cbb5c', '1340923312', 'yes'),
(112, '_site_transient_browser_b9b67149893cf58ea98c6d61dc5cbb5c', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:5:"9.0.1";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"12";s:7:"upgrade";b:1;s:8:"insecure";b:0;}', 'yes'),
(113, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:24:"http://localhost/unbgama";s:4:"link";s:100:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/unbgama/";s:3:"url";s:135:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/wordpress/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:17:"Blog do WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:29:"Outras notícias do WordPress";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(151, 'theme_mods_twentyeleven', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1340318527;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}}}}', 'yes'),
(152, 'current_theme', 'UnB Gama', 'yes'),
(153, 'theme_mods_projeto', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1341104178;s:4:"data";a:3:{s:18:"orphaned_widgets_1";a:1:{i:0;s:10:"calendar-3";}s:19:"wp_inactive_widgets";a:10:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:6:"meta-6";i:3;s:8:"search-2";i:4;s:17:"recent-comments-2";i:5;s:10:"calendar-2";i:6;s:6:"meta-3";i:7;s:6:"meta-4";i:8;s:6:"meta-5";i:9;s:8:"search-3";}s:5:"barra";a:3:{i:0;s:8:"search-4";i:1;s:12:"categories-2";i:2;s:14:"recent-posts-2";}}}}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(163, 'category_children', 'a:0:{}', 'yes'),
(205, 'widget_calendar', 'a:3:{i:2;a:1:{s:5:"title";s:4:"jhhj";}i:3;a:1:{s:5:"title";s:3:"123";}s:12:"_multiwidget";i:1;}', 'yes'),
(207, 'recently_activated', 'a:0:{}', 'yes'),
(208, 'wpcf7', 'a:1:{s:7:"version";s:3:"3.2";}', 'yes'),
(211, 'pagenavi_options', 'a:15:{s:10:"pages_text";s:39:"Página %CURRENT_PAGE% de %TOTAL_PAGES%";s:12:"current_text";s:13:"%PAGE_NUMBER%";s:9:"page_text";s:13:"%PAGE_NUMBER%";s:10:"first_text";s:16:"&laquo; Primeira";s:9:"last_text";s:15:"Última &raquo;";s:9:"prev_text";s:7:"&laquo;";s:9:"next_text";s:7:"&raquo;";s:12:"dotleft_text";s:3:"...";s:13:"dotright_text";s:3:"...";s:9:"num_pages";i:5;s:23:"num_larger_page_numbers";i:3;s:28:"larger_page_numbers_multiple";i:10;s:11:"always_show";b:0;s:16:"use_pagenavi_css";b:1;s:5:"style";i:1;}', 'yes'),
(291, 'theme_mods_unbgama', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:18:"menu-acesso-rapido";i:6;s:14:"menu-principal";i:7;s:18:"sub-menu-principal";i:8;}}', 'yes'),
(292, 'gltr_base_lang', 'en', 'yes'),
(293, 'gltr_col_num', '3', 'yes'),
(294, 'gltr_html_bar_tag', 'DIV', 'yes'),
(295, 'gltr_my_translation_engine', 'google', 'yes'),
(296, 'gltr_preferred_languages', 'a:2:{i:5;s:2:"de";i:7;s:2:"es";}', 'yes'),
(297, 'gltr_ban_prevention', '1', 'yes'),
(298, 'gltr_enable_debug', '', 'yes'),
(299, 'gltr_conn_interval', '300', 'yes'),
(300, 'gltr_sitemap_integration', '', 'yes'),
(301, 'gltr_last_connection_time', '1341083615', 'yes'),
(302, 'gltr_translation_status', 'unknown', 'yes'),
(303, 'gltr_cache_expire_time', '15', 'yes'),
(304, 'gltr_use_302', '', 'yes'),
(305, 'gltr_compress_cache', '', 'yes'),
(310, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(311, 'db_upgraded', '', 'yes'),
(312, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:2:{i:0;O:8:"stdClass":9:{s:8:"response";s:6:"latest";s:8:"download";s:49:"http://br.wordpress.org/wordpress-3.4.1-pt_BR.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:49:"http://br.wordpress.org/wordpress-3.4.1-pt_BR.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;}s:7:"current";s:5:"3.4.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.2";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":9:{s:8:"response";s:6:"latest";s:8:"download";s:40:"http://wordpress.org/wordpress-3.4.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:40:"http://wordpress.org/wordpress-3.4.1.zip";s:10:"no_content";s:51:"http://wordpress.org/wordpress-3.4.1-no-content.zip";s:11:"new_bundled";s:52:"http://wordpress.org/wordpress-3.4.1-new-bundled.zip";s:7:"partial";b:0;}s:7:"current";s:5:"3.4.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.2";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1341581562;s:15:"version_checked";s:5:"3.4.1";}', 'yes'),
(313, 'can_compress_scripts', '0', 'yes'),
(316, '_site_transient_timeout_wporg_theme_feature_list', '1341114979', 'yes'),
(317, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:5:"Width";a:2:{i:0;s:11:"fixed-width";i:1;s:14:"flexible-width";}s:8:"Features";a:18:{i:0;s:8:"blavatar";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:20:"front-page-post-form";i:10;s:19:"full-width-template";i:11;s:12:"microformats";i:12;s:12:"post-formats";i:13;s:20:"rtl-language-support";i:14;s:11:"sticky-post";i:15;s:13:"theme-options";i:16;s:17:"threaded-comments";i:17;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(354, 'acf_version', '3.2.6', 'yes'),
(355, '_site_transient_update_plugins', 'O:8:"stdClass":2:{s:12:"last_checked";i:1341581562;s:8:"response";a:0:{}}', 'yes'),
(359, '_site_transient_timeout_browser_3ce42cb6fd492b9c5f022e96a5f641f5', '1342122255', 'yes'),
(360, '_site_transient_browser_3ce42cb6fd492b9c5f022e96a5f641f5', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:6:"13.0.1";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"12";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(381, '_transient_timeout_plugin_slugs', '1341603862', 'no'),
(382, '_transient_plugin_slugs', 'a:6:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:32:"global-translator/translator.php";i:4;s:9:"hello.php";i:5;s:27:"wp-pagenavi/wp-pagenavi.php";}', 'no'),
(392, '_site_transient_timeout_theme_roots', '1341583363', 'yes'),
(393, '_site_transient_theme_roots', 'a:4:{s:7:"projeto";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:7:"unbgama";s:7:"/themes";}', 'yes'),
(394, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1341624780', 'no'),
(395, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erro de RSS</strong>: WP HTTP Error: Não foi possível conectar a http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/wordpress/</p>', 'no'),
(396, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1341624781', 'no'),
(397, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erro de RSS</strong>: WP HTTP Error: Não foi possível conectar a http://planet.wordpress.org/feed/</p></div>', 'no'),
(398, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1341624782', 'no'),
(399, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erro de RSS</strong>: WP HTTP Error: Não foi possível conectar a http://wordpress.org/news/feed/</p></div>', 'no'),
(400, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1341624786', 'no'),
(401, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=273 ;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1340326839:1'),
(5, 1, '_edit_lock', '1340325633:1'),
(6, 1, '_edit_last', '1'),
(10, 2, '_edit_lock', '1340326847:1'),
(11, 2, '_wp_trash_meta_status', 'publish'),
(12, 2, '_wp_trash_meta_time', '1340326972'),
(13, 12, '_edit_last', '1'),
(14, 12, '_edit_lock', '1340326932:1'),
(15, 14, '_edit_last', '1'),
(16, 14, '_edit_lock', '1340757746:1'),
(17, 17, '_edit_last', '1'),
(18, 17, '_edit_lock', '1340750299:1'),
(20, 19, '_edit_last', '1'),
(21, 19, '_edit_lock', '1340750336:1'),
(23, 21, '_edit_last', '1'),
(24, 21, '_edit_lock', '1340750364:1'),
(26, 23, '_edit_last', '1'),
(27, 23, '_edit_lock', '1340750835:1'),
(29, 26, 'form', '<p>Seu nome (obrigatório)<br />\n    [text* your-name] </p>\n\n<p>Seu e-mail (obrigatório)<br />\n    [email* your-email] </p>\n\n<p>Assunto<br />\n    [text your-subject] </p>\n\n<p>Sua mensagem<br />\n    [textarea your-message] </p>\n\n<p>Anexe o PDF<br />\n   [file* arquivo-pdf] </p>\n\n<p>[submit "Enviar"]</p>'),
(30, 26, 'mail', 'a:7:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"[your-name] <[your-email]>";s:4:"body";s:184:"De: [your-name] <[your-email]>\nAssunto: [your-subject]\n\nCorpo da mensagem: \n[your-message]\n\n--\nEste email foi enviado via formulário de contato em Articles+ http://localhost/wordpress";s:9:"recipient";s:25:"eduardo.mobinet@gmail.com";s:18:"additional_headers";s:0:"";s:11:"attachments";s:13:"[arquivo-pdf]";s:8:"use_html";s:0:"";}'),
(31, 26, 'mail_2', 'a:8:{s:6:"active";s:0:"";s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"[your-name] <[your-email]>";s:4:"body";s:127:"Corpo da mensagem:\n[your-message]\n\n--\nEste email foi enviado via formulário de contato em Articles+ http://localhost/wordpress";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";s:0:"";}'),
(32, 26, 'messages', 'a:13:{s:12:"mail_sent_ok";s:47:"Sua mensagem foi enviada com sucesso. Obrigado.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:77:"Ocorreram erros de validação. Por favor confira os dados e envie novamente.";s:12:"accept_terms";s:43:"Por favor aceite os termos para prosseguir.";s:13:"invalid_email";s:39:"O endereço de e-mail parece inválido.";s:16:"invalid_required";s:43:"Por favor preencha este campo obrigatório.";s:17:"akismet_says_spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:17:"captcha_not_match";s:35:"O código digitado está incorreto.";s:13:"upload_failed";s:27:"Falha no upload do arquivo.";s:24:"upload_file_type_invalid";s:39:"Este tipo de arquivo não é permitido.";s:21:"upload_file_too_large";s:30:"Este arquivo é grande demais.";s:23:"upload_failed_php_error";s:27:"Falha no upload do arquivo.";s:23:"quiz_answer_not_correct";s:29:"Sua resposta está incorreta.";}'),
(33, 26, 'additional_settings', ''),
(34, 28, '_edit_last', '1'),
(35, 28, '_edit_lock', '1340757779:1'),
(37, 30, '_edit_last', '1'),
(38, 30, '_edit_lock', '1340757797:1'),
(40, 32, '_edit_last', '1'),
(41, 32, '_edit_lock', '1340757819:1'),
(43, 34, '_edit_last', '1'),
(44, 34, '_edit_lock', '1340758454:1'),
(48, 40, '_edit_last', '1'),
(49, 40, '_edit_lock', '1341094359:1'),
(50, 42, '_edit_last', '1'),
(51, 42, '_edit_lock', '1341094335:1'),
(52, 44, '_edit_last', '1'),
(53, 44, '_edit_lock', '1341094311:1'),
(54, 46, '_edit_last', '1'),
(55, 46, '_edit_lock', '1341094293:1'),
(56, 49, '_edit_last', '1'),
(57, 49, '_edit_lock', '1341094276:1'),
(58, 51, '_edit_last', '1'),
(59, 51, '_edit_lock', '1341094108:1'),
(60, 51, '_wp_trash_meta_status', 'publish'),
(61, 51, '_wp_trash_meta_time', '1341094222'),
(62, 61, '_edit_last', '1'),
(63, 61, '_edit_lock', '1341095907:1'),
(64, 64, '_menu_item_type', 'custom'),
(65, 64, '_menu_item_menu_item_parent', '0'),
(66, 64, '_menu_item_object_id', '64'),
(67, 64, '_menu_item_object', 'custom'),
(68, 64, '_menu_item_target', ''),
(69, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 64, '_menu_item_xfn', ''),
(71, 64, '_menu_item_url', 'index.php'),
(73, 12, '_wp_trash_meta_status', 'publish'),
(74, 12, '_wp_trash_meta_time', '1341096338'),
(75, 14, '_wp_trash_meta_status', 'publish'),
(76, 14, '_wp_trash_meta_time', '1341096347'),
(77, 68, '_edit_last', '1'),
(78, 68, '_edit_lock', '1341096266:1'),
(79, 70, '_edit_last', '1'),
(80, 70, '_edit_lock', '1341096289:1'),
(81, 72, '_edit_last', '1'),
(82, 72, '_edit_lock', '1341096310:1'),
(83, 74, '_edit_last', '1'),
(84, 74, '_edit_lock', '1341096341:1'),
(85, 78, '_edit_last', '1'),
(86, 78, '_edit_lock', '1341096372:1'),
(87, 72, '_wp_trash_meta_status', 'publish'),
(88, 72, '_wp_trash_meta_time', '1341096778'),
(89, 81, '_menu_item_type', 'post_type'),
(90, 81, '_menu_item_menu_item_parent', '0'),
(91, 81, '_menu_item_object_id', '78'),
(92, 81, '_menu_item_object', 'page'),
(93, 81, '_menu_item_target', ''),
(94, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(95, 81, '_menu_item_xfn', ''),
(96, 81, '_menu_item_url', ''),
(98, 82, '_menu_item_type', 'post_type'),
(99, 82, '_menu_item_menu_item_parent', '0'),
(100, 82, '_menu_item_object_id', '74'),
(101, 82, '_menu_item_object', 'page'),
(102, 82, '_menu_item_target', ''),
(103, 82, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(104, 82, '_menu_item_xfn', ''),
(105, 82, '_menu_item_url', ''),
(107, 83, '_menu_item_type', 'post_type'),
(108, 83, '_menu_item_menu_item_parent', '0'),
(109, 83, '_menu_item_object_id', '70'),
(110, 83, '_menu_item_object', 'page'),
(111, 83, '_menu_item_target', ''),
(112, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(113, 83, '_menu_item_xfn', ''),
(114, 83, '_menu_item_url', ''),
(116, 84, '_menu_item_type', 'post_type'),
(117, 84, '_menu_item_menu_item_parent', '0'),
(118, 84, '_menu_item_object_id', '68'),
(119, 84, '_menu_item_object', 'page'),
(120, 84, '_menu_item_target', ''),
(121, 84, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(122, 84, '_menu_item_xfn', ''),
(123, 84, '_menu_item_url', ''),
(125, 85, '_menu_item_type', 'post_type'),
(126, 85, '_menu_item_menu_item_parent', '0'),
(127, 85, '_menu_item_object_id', '78'),
(128, 85, '_menu_item_object', 'page'),
(129, 85, '_menu_item_target', ''),
(130, 85, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(131, 85, '_menu_item_xfn', ''),
(132, 85, '_menu_item_url', ''),
(134, 86, '_menu_item_type', 'post_type'),
(135, 86, '_menu_item_menu_item_parent', '0'),
(136, 86, '_menu_item_object_id', '74'),
(137, 86, '_menu_item_object', 'page'),
(138, 86, '_menu_item_target', ''),
(139, 86, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(140, 86, '_menu_item_xfn', ''),
(141, 86, '_menu_item_url', ''),
(143, 87, '_menu_item_type', 'post_type'),
(144, 87, '_menu_item_menu_item_parent', '0'),
(145, 87, '_menu_item_object_id', '70'),
(146, 87, '_menu_item_object', 'page'),
(147, 87, '_menu_item_target', ''),
(148, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(149, 87, '_menu_item_xfn', ''),
(150, 87, '_menu_item_url', ''),
(152, 88, '_menu_item_type', 'post_type'),
(153, 88, '_menu_item_menu_item_parent', '0'),
(154, 88, '_menu_item_object_id', '68'),
(155, 88, '_menu_item_object', 'page'),
(156, 88, '_menu_item_target', ''),
(157, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(158, 88, '_menu_item_xfn', ''),
(159, 88, '_menu_item_url', ''),
(161, 89, '_menu_item_type', 'post_type'),
(162, 89, '_menu_item_menu_item_parent', '0'),
(163, 89, '_menu_item_object_id', '74'),
(164, 89, '_menu_item_object', 'page'),
(165, 89, '_menu_item_target', ''),
(166, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(167, 89, '_menu_item_xfn', ''),
(168, 89, '_menu_item_url', ''),
(179, 91, '_menu_item_type', 'post_type'),
(180, 91, '_menu_item_menu_item_parent', '0'),
(181, 91, '_menu_item_object_id', '78'),
(182, 91, '_menu_item_object', 'page'),
(183, 91, '_menu_item_target', ''),
(184, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(185, 91, '_menu_item_xfn', ''),
(186, 91, '_menu_item_url', ''),
(188, 92, '_menu_item_type', 'post_type'),
(189, 92, '_menu_item_menu_item_parent', '0'),
(190, 92, '_menu_item_object_id', '74'),
(191, 92, '_menu_item_object', 'page'),
(192, 92, '_menu_item_target', ''),
(193, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(194, 92, '_menu_item_xfn', ''),
(195, 92, '_menu_item_url', ''),
(196, 92, '_menu_item_orphaned', '1341101795'),
(197, 93, '_menu_item_type', 'post_type'),
(198, 93, '_menu_item_menu_item_parent', '0'),
(199, 93, '_menu_item_object_id', '70'),
(200, 93, '_menu_item_object', 'page'),
(201, 93, '_menu_item_target', ''),
(202, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(203, 93, '_menu_item_xfn', ''),
(204, 93, '_menu_item_url', ''),
(206, 94, '_menu_item_type', 'post_type'),
(207, 94, '_menu_item_menu_item_parent', '0'),
(208, 94, '_menu_item_object_id', '68'),
(209, 94, '_menu_item_object', 'page'),
(210, 94, '_menu_item_target', ''),
(211, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(212, 94, '_menu_item_xfn', ''),
(213, 94, '_menu_item_url', ''),
(214, 96, '_edit_last', '1'),
(215, 96, 'field_4ff43be79e9fb', 'a:9:{s:5:"label";s:6:"Titulo";s:4:"name";s:6:"titulo";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"none";s:3:"key";s:19:"field_4ff43be79e9fb";s:8:"order_no";s:1:"0";}'),
(216, 96, 'field_4ff43be79f567', 'a:9:{s:5:"label";s:10:"Sub-Titulo";s:4:"name";s:9:"subtitulo";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"none";s:3:"key";s:19:"field_4ff43be79f567";s:8:"order_no";s:1:"1";}'),
(217, 96, 'field_4ff43be7a0144', 'a:8:{s:5:"label";s:4:"Data";s:4:"name";s:4:"data";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"date_format";s:8:"dd/mm/yy";s:3:"key";s:19:"field_4ff43be7a0144";s:8:"order_no";s:1:"2";}'),
(218, 96, 'allorany', 'all'),
(219, 96, 'rule', 'a:4:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"banners";s:8:"order_no";s:1:"0";}'),
(220, 96, 'position', 'normal'),
(221, 96, 'layout', 'default'),
(222, 96, 'hide_on_screen', ''),
(223, 96, '_edit_lock', '1341406184:1'),
(227, 97, '_edit_last', '1'),
(228, 97, 'titulo', 'Evento de Software'),
(229, 97, '_titulo', 'field_4ff43be79e9fb'),
(230, 97, 'subtitulo', 'Palesta com engenheiro da computação'),
(231, 97, '_subtitulo', 'field_4ff43be79f567'),
(232, 97, 'data', '24/08/2012'),
(233, 97, '_data', 'field_4ff43be7a0144'),
(234, 97, '_edit_lock', '1341525728:1'),
(235, 100, '_edit_last', '1'),
(236, 100, '_edit_lock', '1341525205:1'),
(240, 100, 'titulo', 'Evento de Aeroespacial'),
(241, 100, '_titulo', 'field_4ff43be79e9fb'),
(242, 100, 'subtitulo', 'Palesta com engenheiro aeroespacial'),
(243, 100, '_subtitulo', 'field_4ff43be79f567'),
(244, 100, 'data', '26/07/2012'),
(245, 100, '_data', 'field_4ff43be7a0144'),
(246, 105, '_edit_last', '1'),
(247, 105, '_edit_lock', '1341407300:1'),
(248, 106, '_wp_attached_file', '2012/07/bannerPrincipal1.png'),
(249, 106, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"940";s:6:"height";s:3:"218";s:14:"hwstring_small";s:23:"height=''29'' width=''128''";s:4:"file";s:28:"2012/07/bannerPrincipal1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:28:"bannerPrincipal1-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:27:"bannerPrincipal1-300x69.png";s:5:"width";s:3:"300";s:6:"height";s:2:"69";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(250, 105, '_thumbnail_id', '106'),
(251, 105, 'titulo', 'Evento de Automotiva'),
(252, 105, '_titulo', 'field_4ff43be79e9fb'),
(253, 105, 'subtitulo', 'encontro de designers'),
(254, 105, '_subtitulo', 'field_4ff43be79f567'),
(255, 105, 'data', '07/09/2012'),
(256, 105, '_data', 'field_4ff43be7a0144'),
(257, 105, '_wp_trash_meta_status', 'publish'),
(258, 105, '_wp_trash_meta_time', '1341517474'),
(259, 110, '_wp_attached_file', '2012/07/bannerPrincipal2.jpg'),
(260, 110, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1020";s:6:"height";s:3:"217";s:14:"hwstring_small";s:23:"height=''27'' width=''128''";s:4:"file";s:28:"2012/07/bannerPrincipal2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:28:"bannerPrincipal2-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:27:"bannerPrincipal2-300x63.jpg";s:5:"width";s:3:"300";s:6:"height";s:2:"63";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(261, 97, '_thumbnail_id', '116'),
(262, 112, '_wp_attached_file', '2012/07/bannerPrincipal-e1341518673282.jpg'),
(263, 112, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"961";s:6:"height";s:3:"216";s:14:"hwstring_small";s:23:"height=''28'' width=''128''";s:4:"file";s:42:"2012/07/bannerPrincipal-e1341518673282.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:42:"bannerPrincipal-e1341518673282-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:41:"bannerPrincipal-e1341518673282-300x67.jpg";s:5:"width";s:3:"300";s:6:"height";s:2:"67";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(265, 112, '_wp_attachment_backup_sizes', 'a:3:{s:9:"full-orig";a:3:{s:5:"width";s:4:"1020";s:6:"height";s:3:"217";s:4:"file";s:19:"bannerPrincipal.jpg";}s:14:"thumbnail-orig";a:3:{s:4:"file";s:27:"bannerPrincipal-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:11:"medium-orig";a:3:{s:4:"file";s:26:"bannerPrincipal-300x63.jpg";s:5:"width";s:3:"300";s:6:"height";s:2:"63";}}'),
(266, 114, '_wp_attached_file', '2012/07/bannerPrincipal1.jpg'),
(267, 114, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1020";s:6:"height";s:3:"217";s:14:"hwstring_small";s:23:"height=''27'' width=''128''";s:4:"file";s:28:"2012/07/bannerPrincipal1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:28:"bannerPrincipal1-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:27:"bannerPrincipal1-300x63.jpg";s:5:"width";s:3:"300";s:6:"height";s:2:"63";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(268, 115, '_wp_attached_file', '2012/07/bannerPrincipal3.jpg'),
(269, 115, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"940";s:6:"height";s:3:"217";s:14:"hwstring_small";s:23:"height=''29'' width=''128''";s:4:"file";s:28:"2012/07/bannerPrincipal3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:28:"bannerPrincipal3-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:27:"bannerPrincipal3-300x69.jpg";s:5:"width";s:3:"300";s:6:"height";s:2:"69";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(270, 100, '_thumbnail_id', '115'),
(271, 116, '_wp_attached_file', '2012/07/bannerPrincipal21.jpg'),
(272, 116, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"940";s:6:"height";s:3:"217";s:14:"hwstring_small";s:23:"height=''29'' width=''128''";s:4:"file";s:29:"2012/07/bannerPrincipal21.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:3:{s:4:"file";s:29:"bannerPrincipal21-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:28:"bannerPrincipal21-300x69.jpg";s:5:"width";s:3:"300";s:6:"height";s:2:"69";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2012-06-21 22:30:32', '2012-06-21 22:30:32', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed tellus ligula, id congue neque. Curabitur vehicula arcu nec odio tempor iaculis. Morbi pharetra tincidunt arcu, eget luctus arcu convallis ut. Nulla dapibus imperdiet dolor volutpat fringilla. Proin faucibus massa sit amet lorem iaculis ac hendrerit velit laoreet. Morbi adipiscing egestas sapien a vulputate. Nullam ultricies est non odio adipiscing a vulputate nisl dignissim. Suspendisse consectetur condimentum mi vel fringilla. In elementum velit ut orci bibendum sed dapibus dui ornare. Praesent ac nisl at tellus sodales ornare vel id ante. Nulla mattis tincidunt accumsan. Mauris tempor semper leo vitae malesuada. Suspendisse imperdiet enim at tortor vestibulum auctor.\r\n\r\nIn lobortis imperdiet porttitor. Sed aliquet venenatis egestas. In eget mauris nec erat ultrices lacinia tincidunt sed diam. Vivamus nec sem elit. Maecenas dapibus elit vitae justo placerat sed porta massa vestibulum. Nullam semper diam sit amet orci facilisis pulvinar. Praesent vitae nulla erat, sit amet tincidunt leo. Duis ipsum odio, scelerisque at tincidunt eu, egestas id felis. Quisque ut nisl mi, ut ornare ligula. Nunc adipiscing posuere eleifend.\r\n\r\nSuspendisse aliquam cursus sagittis. Mauris eget libero vitae ligula tempor dictum quis at orci. Donec sed mauris vel neque condimentum euismod ac fermentum nisi. Praesent gravida tellus vitae mauris facilisis dapibus eu sed velit. Vestibulum nisi dui, ornare id porttitor ac, dictum id lorem. Donec eget enim vitae nisi tempor faucibus non at lacus. Maecenas at orci justo, vitae mattis metus. Sed in sem velit. Suspendisse tristique imperdiet massa, a hendrerit mauris sollicitudin eget.\r\n\r\n</div>', 'Hello, World!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2012-06-21 23:44:53', '2012-06-21 23:44:53', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2012-06-21 22:30:32', '2012-06-21 22:30:32', 'Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página ''Sobre'' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\n\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins-de-semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\n\n...ou algo como:\n\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\n\nComo um novo usuário WordPress, vá ao seu <a href="http://localhost/wordpress/wp-admin/">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!', 'Página de Exemplo', '', 'trash', 'open', 'open', '', 'pagina-exemplo', '', '', '2012-06-22 01:02:52', '2012-06-22 01:02:52', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2012-06-21 23:11:30', '2012-06-21 23:11:30', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pretium accumsan nunc at luctus. Ut porta nibh sed urna condimentum dictum. Mauris volutpat pulvinar dignissim. Maecenas lobortis pharetra mi, sed volutpat nisi congue ut. Nunc dignissim dictum erat et varius. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur dapibus suscipit nibh sed viverra.\r\n\r\nAliquam erat volutpat. Sed vel tempor eros. Mauris dolor urna, placerat sit amet suscipit in, posuere ut mi. Integer ut augue nec diam feugiat rutrum. Mauris purus libero, commodo nec dignissim a, vulputate quis est. Nulla ligula lectus, tristique lobortis volutpat a, sodales euismod mauris. Suspendisse non odio justo.\r\n\r\nEtiam imperdiet consequat consequat. Nulla luctus, est at aliquam mattis, est est laoreet ipsum, nec tristique mauris mauris vitae lacus. Mauris posuere eros id purus placerat aliquam. In aliquam molestie erat at sodales. Praesent viverra, nibh scelerisque laoreet vehicula, purus eros egestas ipsum, a consectetur nisi quam ut arcu. Duis blandit laoreet dictum. Curabitur leo magna, lobortis nec porttitor sit amet, laoreet sed quam. Sed elit leo, pretium vel tempor id, bibendum sit amet enim. Quisque eget diam vel nibh suscipit iaculis eu sit amet turpis. Phasellus erat nibh, sodales eu rhoncus non, eleifend ut tellus.\r\n\r\nNam sed viverra felis. Donec quam felis, tempor nec consectetur vel, ullamcorper quis odio. Nullam volutpat vestibulum erat ac fringilla. Morbi eget condimentum velit. Aenean elit massa, viverra vitae rutrum luctus, porttitor vitae leo. Aenean id erat mi. Praesent id lectus ligula. Curabitur et sapien enim, ac mollis nisl. Sed molestie est eu nisi faucibus tristique. Duis justo massa, ullamcorper hendrerit feugiat vel, blandit id nibh. Aliquam erat volutpat. Proin porta dui sit amet erat sagittis mollis. Praesent est dolor, blandit eget egestas nec, pretium a erat. Proin nec sem erat, eget euismod quam. Aenean molestie purus quis mi sollicitudin malesuada. In accumsan condimentum purus sit amet porttitor.\r\n\r\nNullam congue ligula vitae dui suscipit tincidunt. Vivamus placerat magna eu urna eleifend tincidunt convallis diam porta. Etiam vitae turpis elit, quis venenatis diam. Praesent tempor neque ac nisl cursus ut commodo ipsum dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque blandit luctus congue. Integer tempus, orci id gravida fringilla, dolor lacus iaculis nibh, eget consectetur sem justo eu magna. Nullam et enim sit amet arcu pulvinar ornare. Nullam sed sem ante, ac sollicitudin enim. Vivamus nec arcu lorem. Nullam id ligula vel arcu rutrum consectetur. Vivamus ultricies egestas molestie. Donec dictum dui eget sapien consectetur quis tincidunt dui pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sit amet diam erat, quis facilisis libero. Donec fermentum velit a enim rhoncus sagittis.\r\n\r\n</div>', 'Tio Loren!', '', 'publish', 'open', 'open', '', 'post1', '', '', '2012-06-22 00:42:39', '2012-06-22 00:42:39', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2012-06-21 23:10:58', '2012-06-21 23:10:58', '', 'POST1', '', 'inherit', 'open', 'open', '', '4-revision', '', '', '2012-06-21 23:10:58', '2012-06-21 23:10:58', '', 4, 'http://localhost/wordpress/?p=5', 0, 'revision', '', 0),
(6, 1, '2012-06-22 00:43:40', '2012-06-22 00:43:40', '<div id="lipsum">\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pretium accumsan nunc at luctus. Ut porta nibh sed urna condimentum dictum. Mauris volutpat pulvinar dignissim. Maecenas lobortis pharetra mi, sed volutpat nisi congue ut. Nunc dignissim dictum erat et varius. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur dapibus suscipit nibh sed viverra.\n\nAliquam erat volutpat. Sed vel tempor eros. Mauris dolor urna, placerat sit amet suscipit in, posuere ut mi. Integer ut augue nec diam feugiat rutrum. Mauris purus libero, commodo nec dignissim a, vulputate quis est. Nulla ligula lectus, tristique lobortis volutpat a, sodales euismod mauris. Suspendisse non odio justo.\n\nEtiam imperdiet consequat consequat. Nulla luctus, est at aliquam mattis, est est laoreet ipsum, nec tristique mauris mauris vitae lacus. Mauris posuere eros id purus placerat aliquam. In aliquam molestie erat at sodales. Praesent viverra, nibh scelerisque laoreet vehicula, purus eros egestas ipsum, a consectetur nisi quam ut arcu. Duis blandit laoreet dictum. Curabitur leo magna, lobortis nec porttitor sit amet, laoreet sed quam. Sed elit leo, pretium vel tempor id, bibendum sit amet enim. Quisque eget diam vel nibh suscipit iaculis eu sit amet turpis. Phasellus erat nibh, sodales eu rhoncus non, eleifend ut tellus.\n\nNam sed viverra felis. Donec quam felis, tempor nec consectetur vel, ullamcorper quis odio. Nullam volutpat vestibulum erat ac fringilla. Morbi eget condimentum velit. Aenean elit massa, viverra vitae rutrum luctus, porttitor vitae leo. Aenean id erat mi. Praesent id lectus ligula. Curabitur et sapien enim, ac mollis nisl. Sed molestie est eu nisi faucibus tristique. Duis justo massa, ullamcorper hendrerit feugiat vel, blandit id nibh. Aliquam erat volutpat. Proin porta dui sit amet erat sagittis mollis. Praesent est dolor, blandit eget egestas nec, pretium a erat. Proin nec sem erat, eget euismod quam. Aenean molestie purus quis mi sollicitudin malesuada. In accumsan condimentum purus sit amet porttitor.\n\nNullam congue ligula vitae dui suscipit tincidunt. Vivamus placerat magna eu urna eleifend tincidunt convallis diam porta. Etiam vitae turpis elit, quis venenatis diam. Praesent tempor neque ac nisl cursus ut commodo ipsum dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque blandit luctus congue. Integer tempus, orci id gravida fringilla, dolor lacus iaculis nibh, eget consectetur sem justo eu magna. Nullam et enim sit amet arcu pulvinar ornare. Nullam sed sem ante, ac sollicitudin enim. Vivamus nec arcu lorem. Nullam id ligula vel arcu rutrum consectetur. Vivamus ultricies egestas molestie. Donec dictum dui eget sapien consectetur quis tincidunt dui pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sit amet diam erat, quis facilisis libero. Donec fermentum velit a enim rhoncus sagittis.\n\n</div>', 'Tio Loren!', '', 'inherit', 'open', 'open', '', '4-autosave', '', '', '2012-06-22 00:43:40', '2012-06-22 00:43:40', '', 4, 'http://localhost/wordpress/?p=6', 0, 'revision', '', 0),
(7, 1, '2012-06-22 00:38:36', '2012-06-22 00:38:36', '<div id="lipsum">\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed tellus ligula, id congue neque. Curabitur vehicula arcu nec odio tempor iaculis. Morbi pharetra tincidunt arcu, eget luctus arcu convallis ut. Nulla dapibus imperdiet dolor volutpat fringilla. Proin faucibus massa sit amet lorem iaculis ac hendrerit velit laoreet. Morbi adipiscing egestas sapien a vulputate. Nullam ultricies est non odio adipiscing a vulputate nisl dignissim. Suspendisse consectetur condimentum mi vel fringilla. In elementum velit ut orci bibendum sed dapibus dui ornare. Praesent ac nisl at tellus sodales ornare vel id ante. Nulla mattis tincidunt accumsan. Mauris tempor semper leo vitae malesuada. Suspendisse imperdiet enim at tortor vestibulum auctor.\n\nIn lobortis imperdiet porttitor. Sed aliquet venenatis egestas. In eget mauris nec erat ultrices lacinia tincidunt sed diam. Vivamus nec sem elit. Maecenas dapibus elit vitae justo placerat sed porta massa vestibulum. Nullam semper diam sit amet orci facilisis pulvinar. Praesent vitae nulla erat, sit amet tincidunt leo. Duis ipsum odio, scelerisque at tincidunt eu, egestas id felis. Quisque ut nisl mi, ut ornare ligula. Nunc adipiscing posuere eleifend.\n\nSuspendisse aliquam cursus sagittis. Mauris eget libero vitae ligula tempor dictum quis at orci. Donec sed mauris vel neque condimentum euismod ac fermentum nisi. Praesent gravida tellus vitae mauris facilisis dapibus eu sed velit. Vestibulum nisi dui, ornare id porttitor ac, dictum id lorem. Donec eget enim vitae nisi tempor faucibus non at lacus. Maecenas at orci justo, vitae mattis metus. Sed in sem velit. Suspendisse tristique imperdiet massa, a hendrerit mauris sollicitudin eget.\n\n</div>', 'Hello, World!', '', 'inherit', 'open', 'open', '', '1-autosave', '', '', '2012-06-22 00:38:36', '2012-06-22 00:38:36', '', 1, 'http://localhost/wordpress/?p=7', 0, 'revision', '', 0),
(8, 1, '2012-06-21 22:30:32', '2012-06-21 22:30:32', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a publicar!', 'Olá, mundo!', '', 'inherit', 'open', 'open', '', '1-revision', '', '', '2012-06-21 22:30:32', '2012-06-21 22:30:32', '', 1, 'http://localhost/wordpress/?p=8', 0, 'revision', '', 0),
(9, 1, '2012-06-21 23:28:31', '2012-06-21 23:28:31', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed tellus ligula, id congue neque. Curabitur vehicula arcu nec odio tempor iaculis. Morbi pharetra tincidunt arcu, eget luctus arcu convallis ut. Nulla dapibus imperdiet dolor volutpat fringilla. Proin faucibus massa sit amet lorem iaculis ac hendrerit velit laoreet. Morbi adipiscing egestas sapien a vulputate. Nullam ultricies est non odio adipiscing a vulputate nisl dignissim. Suspendisse consectetur condimentum mi vel fringilla. In elementum velit ut orci bibendum sed dapibus dui ornare. Praesent ac nisl at tellus sodales ornare vel id ante. Nulla mattis tincidunt accumsan. Mauris tempor semper leo vitae malesuada. Suspendisse imperdiet enim at tortor vestibulum auctor.\r\n\r\nIn lobortis imperdiet porttitor. Sed aliquet venenatis egestas. In eget mauris nec erat ultrices lacinia tincidunt sed diam. Vivamus nec sem elit. Maecenas dapibus elit vitae justo placerat sed porta massa vestibulum. Nullam semper diam sit amet orci facilisis pulvinar. Praesent vitae nulla erat, sit amet tincidunt leo. Duis ipsum odio, scelerisque at tincidunt eu, egestas id felis. Quisque ut nisl mi, ut ornare ligula. Nunc adipiscing posuere eleifend.\r\n\r\nSuspendisse aliquam cursus sagittis. Mauris eget libero vitae ligula tempor dictum quis at orci. Donec sed mauris vel neque condimentum euismod ac fermentum nisi. Praesent gravida tellus vitae mauris facilisis dapibus eu sed velit. Vestibulum nisi dui, ornare id porttitor ac, dictum id lorem. Donec eget enim vitae nisi tempor faucibus non at lacus. Maecenas at orci justo, vitae mattis metus. Sed in sem velit. Suspendisse tristique imperdiet massa, a hendrerit mauris sollicitudin eget.\r\n\r\n</div>', 'Hello, World!', '', 'inherit', 'open', 'open', '', '1-revision-2', '', '', '2012-06-21 23:28:31', '2012-06-21 23:28:31', '', 1, 'http://localhost/wordpress/?p=9', 0, 'revision', '', 0),
(10, 1, '2012-06-21 23:11:30', '2012-06-21 23:11:30', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pretium accumsan nunc at luctus. Ut porta nibh sed urna condimentum dictum. Mauris volutpat pulvinar dignissim. Maecenas lobortis pharetra mi, sed volutpat nisi congue ut. Nunc dignissim dictum erat et varius. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur dapibus suscipit nibh sed viverra.\r\n\r\nAliquam erat volutpat. Sed vel tempor eros. Mauris dolor urna, placerat sit amet suscipit in, posuere ut mi. Integer ut augue nec diam feugiat rutrum. Mauris purus libero, commodo nec dignissim a, vulputate quis est. Nulla ligula lectus, tristique lobortis volutpat a, sodales euismod mauris. Suspendisse non odio justo.\r\n\r\nEtiam imperdiet consequat consequat. Nulla luctus, est at aliquam mattis, est est laoreet ipsum, nec tristique mauris mauris vitae lacus. Mauris posuere eros id purus placerat aliquam. In aliquam molestie erat at sodales. Praesent viverra, nibh scelerisque laoreet vehicula, purus eros egestas ipsum, a consectetur nisi quam ut arcu. Duis blandit laoreet dictum. Curabitur leo magna, lobortis nec porttitor sit amet, laoreet sed quam. Sed elit leo, pretium vel tempor id, bibendum sit amet enim. Quisque eget diam vel nibh suscipit iaculis eu sit amet turpis. Phasellus erat nibh, sodales eu rhoncus non, eleifend ut tellus.\r\n\r\nNam sed viverra felis. Donec quam felis, tempor nec consectetur vel, ullamcorper quis odio. Nullam volutpat vestibulum erat ac fringilla. Morbi eget condimentum velit. Aenean elit massa, viverra vitae rutrum luctus, porttitor vitae leo. Aenean id erat mi. Praesent id lectus ligula. Curabitur et sapien enim, ac mollis nisl. Sed molestie est eu nisi faucibus tristique. Duis justo massa, ullamcorper hendrerit feugiat vel, blandit id nibh. Aliquam erat volutpat. Proin porta dui sit amet erat sagittis mollis. Praesent est dolor, blandit eget egestas nec, pretium a erat. Proin nec sem erat, eget euismod quam. Aenean molestie purus quis mi sollicitudin malesuada. In accumsan condimentum purus sit amet porttitor.\r\n\r\nNullam congue ligula vitae dui suscipit tincidunt. Vivamus placerat magna eu urna eleifend tincidunt convallis diam porta. Etiam vitae turpis elit, quis venenatis diam. Praesent tempor neque ac nisl cursus ut commodo ipsum dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque blandit luctus congue. Integer tempus, orci id gravida fringilla, dolor lacus iaculis nibh, eget consectetur sem justo eu magna. Nullam et enim sit amet arcu pulvinar ornare. Nullam sed sem ante, ac sollicitudin enim. Vivamus nec arcu lorem. Nullam id ligula vel arcu rutrum consectetur. Vivamus ultricies egestas molestie. Donec dictum dui eget sapien consectetur quis tincidunt dui pharetra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sit amet diam erat, quis facilisis libero. Donec fermentum velit a enim rhoncus sagittis.\r\n\r\n</div>', 'POST1', '', 'inherit', 'open', 'open', '', '4-revision-2', '', '', '2012-06-21 23:11:30', '2012-06-21 23:11:30', '', 4, 'http://localhost/wordpress/?p=10', 0, 'revision', '', 0),
(11, 1, '2012-06-21 22:30:32', '2012-06-21 22:30:32', 'Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página ''Sobre'' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\n\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins-de-semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\n\n...ou algo como:\n\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\n\nComo um novo usuário WordPress, vá ao seu <a href="http://localhost/wordpress/wp-admin/">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!', 'Página de Exemplo', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2012-06-21 22:30:32', '2012-06-21 22:30:32', '', 2, 'http://localhost/wordpress/?p=11', 0, 'revision', '', 0),
(12, 1, '2012-06-22 01:03:46', '2012-06-22 01:03:46', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis malesuada ante vel lorem faucibus malesuada. Proin commodo volutpat posuere. Quisque laoreet porttitor elementum. Phasellus mauris mi, porttitor at rutrum venenatis, suscipit vel turpis. Duis ornare, risus nec ultricies porttitor, mauris arcu scelerisque arcu, ut consectetur orci ante a sapien. Duis at mauris quis quam scelerisque congue. Phasellus id nisl semper turpis lobortis egestas ac nec mi. Fusce luctus varius massa, nec semper enim vulputate vel. Suspendisse lorem nibh, bibendum quis consectetur dapibus, viverra ut urna. Sed suscipit nulla non felis vehicula euismod. Cras tristique, nulla ut commodo porta, arcu arcu mattis eros, at aliquam ante libero vel ligula.\r\n\r\nSed posuere, sem ut cursus volutpat, enim odio pretium tortor, et mattis nunc urna eget turpis. Phasellus sollicitudin consectetur mauris ut lobortis. Aliquam imperdiet sodales velit. Pellentesque malesuada elementum massa id mollis. Phasellus ac libero sapien. Etiam vestibulum pellentesque magna, nec venenatis nisi venenatis a. Sed id eros non lectus ultrices ullamcorper vitae id enim. In arcu eros, interdum in volutpat eu, convallis nec eros. Nullam lacinia blandit libero at dictum. Cras non leo at mi dapibus porttitor eu non mauris. Nulla eu erat mauris. Etiam ac adipiscing ipsum. In sagittis pretium risus eget bibendum. Vivamus vulputate tellus ullamcorper sem commodo tincidunt. Praesent et ipsum et purus mollis scelerisque eu vel dui.\r\n\r\nNunc scelerisque, tortor sit amet tempus tempor, massa mauris fringilla massa, id dictum diam eros a est. Aenean varius erat nec ante pellentesque condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eget justo quis arcu fermentum euismod commodo non magna. Etiam interdum, quam ut sollicitudin ultrices, eros nisi egestas risus, nec consectetur orci odio quis erat. Quisque auctor venenatis urna, a volutpat lacus suscipit nec. Phasellus condimentum faucibus nunc, eu laoreet eros viverra ac. Ut iaculis bibendum nibh, lacinia egestas ante laoreet nec. Etiam non urna turpis, vitae venenatis leo. Mauris at lacus quis nibh egestas facilisis.\r\n\r\nUt at odio nulla, id venenatis nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum ac sagittis orci. Suspendisse at turpis nec turpis aliquam pellentesque sed eu nulla. In non felis et justo ornare sodales. Proin vel auctor urna. Nunc ac nulla sem, ut consectetur eros. Ut quis sagittis tortor. Fusce pulvinar imperdiet leo, eu sollicitudin ipsum pharetra lobortis. Nunc non sapien urna, sit amet tincidunt metus. Praesent bibendum lacus non orci venenatis mollis. Morbi orci nunc, laoreet a scelerisque in, auctor nec nisl. Nulla viverra ipsum in libero consectetur at mattis turpis ullamcorper. Vivamus venenatis auctor consequat. Fusce fermentum magna in erat tincidunt quis sollicitudin mauris mattis. Nulla vitae sem ut urna tincidunt ullamcorper.\r\n\r\nCras iaculis lacinia tortor a ornare. Sed tortor odio, cursus vel imperdiet id, faucibus vitae augue. Donec feugiat posuere erat a sollicitudin. Maecenas nec ante purus. Nullam sit amet velit nunc. In fringilla leo at felis faucibus bibendum. Pellentesque semper dolor nec velit euismod lacinia. Nulla et placerat justo. Nulla tempor imperdiet odio vel consequat. Aliquam a libero et mi aliquam auctor. In hac habitasse platea dictumst. Nulla facilisi. Praesent in quam sapien, nec elementum urna. Nam vitae justo a risus pellentesque tempor id at sem.\r\n\r\n</div>', 'Articles+', '', 'trash', 'open', 'open', '', 'articles', '', '', '2012-06-30 22:45:38', '2012-06-30 22:45:38', '', 0, 'http://localhost/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2012-06-22 01:03:05', '2012-06-22 01:03:05', '', 'Articles+', '', 'inherit', 'open', 'open', '', '12-revision', '', '', '2012-06-22 01:03:05', '2012-06-22 01:03:05', '', 12, 'http://localhost/wordpress/?p=13', 0, 'revision', '', 0),
(14, 1, '2012-06-22 01:04:20', '2012-06-22 01:04:20', '<div id="lipsum">\r\n\r\nMaecenas turpis purus, vehicula vel aliquet ac, porttitor vel risus. Aenean varius massa at massa molestie quis vulputate nulla commodo. Donec cursus turpis vitae lorem sollicitudin euismod porta tortor sollicitudin. Mauris id ornare metus. Duis ultricies risus metus. Nunc et mi eros. Sed eros sem, facilisis malesuada bibendum eget, scelerisque a mauris. Nunc sit amet tincidunt dolor.\r\n\r\n[contact-form-7 id="26" title="Contato"]\r\n\r\n</div>', 'Contato', '', 'trash', 'open', 'open', '', 'contato', '', '', '2012-06-30 22:45:47', '2012-06-30 22:45:47', '', 0, 'http://localhost/wordpress/?page_id=14', 0, 'page', '', 0),
(15, 1, '2012-06-22 01:04:11', '2012-06-22 01:04:11', '', 'Contato', '', 'inherit', 'open', 'open', '', '14-revision', '', '', '2012-06-22 01:04:11', '2012-06-22 01:04:11', '', 14, 'http://localhost/wordpress/?p=15', 0, 'revision', '', 0),
(16, 1, '2012-06-26 23:32:49', '2012-06-26 23:32:49', '<div id="lipsum">\n\nMaecenas turpis purus, vehicula vel aliquet ac, porttitor vel risus. Aenean varius massa at massa molestie quis vulputate nulla commodo. Donec cursus turpis vitae lorem sollicitudin euismod porta tortor sollicitudin. Mauris id ornare metus. Duis ultricies risus metus. Nunc et mi eros. Sed eros sem, facilisis malesuada bibendum eget, scelerisque a mauris. Nunc sit amet tincidunt dolor.\n\n[contact-form-7 id="26" title="Contato"]\n\n</div>', 'Contato', '', 'inherit', 'open', 'open', '', '14-autosave', '', '', '2012-06-26 23:32:49', '2012-06-26 23:32:49', '', 14, 'http://localhost/wordpress/?p=16', 0, 'revision', '', 0),
(17, 1, '2012-06-26 22:40:07', '2012-06-26 22:40:07', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu vestibulum justo. Mauris ut scelerisque velit. Aenean at augue elit, ut ultrices mauris. Maecenas lectus neque, mollis sit amet elementum eget, pharetra viverra velit. Aliquam erat volutpat. Phasellus gravida lacinia pellentesque. Praesent interdum sem quis ipsum laoreet sagittis. Nulla at elit leo, ac auctor nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vel lacus vitae orci gravida ultrices in vitae nisi. Nunc scelerisque odio massa, in ultricies sem.\r\n\r\nEtiam porta sodales odio, adipiscing semper neque laoreet non. Etiam aliquam semper dictum. Phasellus ac imperdiet nulla. Cras ut nulla id dolor ultricies auctor. Aliquam massa lacus, bibendum quis lacinia non, feugiat id metus. Pellentesque vel lacinia lorem. Nunc imperdiet sapien at sapien rhoncus ac sodales sem aliquam.\r\n\r\nNulla facilisi. Suspendisse molestie condimentum enim, quis suscipit libero rutrum quis. In porta ligula et odio laoreet ultrices vitae eu velit. Vivamus porttitor massa aliquet est tristique porta. Quisque quis convallis massa. Nullam scelerisque, turpis ac iaculis pellentesque, turpis erat eleifend ligula, vel pretium nisi ligula vel enim. Sed placerat aliquet diam scelerisque vulputate. Vivamus a enim ligula. Aenean hendrerit gravida velit, vel iaculis felis fermentum ut. Praesent pellentesque, eros in fringilla tristique, nisi sem mollis nulla, at facilisis tortor nunc ut lectus. Praesent eu tortor sapien, vel faucibus purus. Proin euismod urna vel lectus vehicula placerat. Etiam urna eros, dapibus a scelerisque eu, malesuada in risus.\r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut placerat magna vitae velit placerat malesuada. In in rhoncus mi. Vestibulum ipsum tortor, porta et ullamcorper sed, porta id velit. Vestibulum at felis magna. Quisque aliquet tincidunt leo nec euismod. Morbi non erat vitae quam porta iaculis a varius elit.\r\n\r\nSuspendisse id placerat mi. Cras gravida lacus non nibh ornare vitae molestie purus tincidunt. Donec iaculis, ipsum sit amet facilisis consectetur, lectus nisl euismod dolor, adipiscing rhoncus lacus augue et nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec id tellus massa. Maecenas ligula dui, viverra in ullamcorper vitae, pretium eu leo. Phasellus tristique aliquet ipsum, quis imperdiet leo venenatis id. Quisque ac ligula orci. In vulputate, tortor et sodales molestie, nisl sapien fermentum ligula, et malesuada leo mi at diam. Curabitur lorem mauris, egestas nec tincidunt ac, suscipit eu nibh. Mauris interdum velit mi, a bibendum dolor. Aenean sed mauris quis ligula semper porttitor. Maecenas vestibulum, quam at facilisis accumsan, eros ante pharetra risus, vitae venenatis tellus orci ut magna.\r\n\r\nNunc vestibulum, lorem vel rhoncus congue, ante nunc ullamcorper magna, lacinia hendrerit velit felis vel neque. Maecenas ut tortor ac sem ullamcorper condimentum. Integer ultricies sollicitudin sapien ac aliquet. Duis varius mauris sit amet tellus lobortis aliquet. Morbi faucibus ipsum cursus nibh egestas volutpat. Duis laoreet diam ac risus accumsan sit amet pharetra lacus tempus. Integer congue libero a dolor auctor vitae tincidunt lectus elementum. Vivamus cursus adipiscing arcu, sed tristique sapien imperdiet id. Vivamus eleifend arcu a metus commodo in bibendum tellus porttitor. Suspendisse quis fringilla magna.\r\n\r\n</div>', 'Mais um post...', '', 'publish', 'open', 'open', '', 'mais-um-post', '', '', '2012-06-26 22:40:07', '2012-06-26 22:40:07', '', 0, 'http://localhost/wordpress/?p=17', 0, 'post', '', 0),
(18, 1, '2012-06-26 22:40:01', '2012-06-26 22:40:01', '', 'Mais um post...', '', 'inherit', 'open', 'open', '', '17-revision', '', '', '2012-06-26 22:40:01', '2012-06-26 22:40:01', '', 17, 'http://localhost/wordpress/?p=18', 0, 'revision', '', 0),
(19, 1, '2012-06-26 22:40:47', '2012-06-26 22:40:47', '<div id="lipsum">Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut placerat magna vitae velit placerat malesuada. In in rhoncus mi. Vestibulum ipsum tortor, porta et ullamcorper sed, porta id velit. Vestibulum at felis magna. Quisque aliquet tincidunt leo nec euismod. Morbi non erat vitae quam porta iaculis a varius elit.Suspendisse id placerat mi. Cras gravida lacus non nibh ornare vitae molestie purus tincidunt. Donec iaculis, ipsum sit amet facilisis consectetur, lectus nisl euismod dolor, adipiscing rhoncus lacus augue et nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec id tellus massa. Maecenas ligula dui, viverra in ullamcorper vitae, pretium eu leo. Phasellus tristique aliquet ipsum, quis imperdiet leo venenatis id. Quisque ac ligula orci. In vulputate, tortor et sodales molestie, nisl sapien fermentum ligula, et malesuada leo mi at diam. Curabitur lorem mauris, egestas nec tincidunt ac, suscipit eu nibh. Mauris interdum velit mi, a bibendum dolor. Aenean sed mauris quis ligula semper porttitor. Maecenas vestibulum, quam at facilisis accumsan, eros ante pharetra risus, vitae venenatis tellus orci ut magna.\r\n\r\nNunc vestibulum, lorem vel rhoncus congue, ante nunc ullamcorper magna, lacinia hendrerit velit felis vel neque. Maecenas ut tortor ac sem ullamcorper condimentum. Integer ultricies sollicitudin sapien ac aliquet. Duis varius mauris sit amet tellus lobortis aliquet. Morbi faucibus ipsum cursus nibh egestas volutpat. Duis laoreet diam ac risus accumsan sit amet pharetra lacus tempus. Integer congue libero a dolor auctor vitae tincidunt lectus elementum. Vivamus cursus adipiscing arcu, sed tristique sapien imperdiet id. Vivamus eleifend arcu a metus commodo in bibendum tellus porttitor. Suspendisse quis fringilla magna.\r\n\r\n</div>', 'Post #4', '', 'publish', 'open', 'open', '', 'post-4', '', '', '2012-06-26 22:40:47', '2012-06-26 22:40:47', '', 0, 'http://localhost/wordpress/?p=19', 0, 'post', '', 0),
(20, 1, '2012-06-26 22:40:26', '2012-06-26 22:40:26', '', 'Post #4', '', 'inherit', 'open', 'open', '', '19-revision', '', '', '2012-06-26 22:40:26', '2012-06-26 22:40:26', '', 19, 'http://localhost/wordpress/?p=20', 0, 'revision', '', 0),
(21, 1, '2012-06-26 22:41:16', '2012-06-26 22:41:16', '<div id="lipsum">Nulla facilisi. Suspendisse molestie condimentum enim, quis suscipit libero rutrum quis. In porta ligula et odio laoreet ultrices vitae eu velit. Vivamus porttitor massa aliquet est tristique porta. Quisque quis convallis massa. Nullam scelerisque, turpis ac iaculis pellentesque, turpis erat eleifend ligula, vel pretium nisi ligula vel enim. Sed placerat aliquet diam scelerisque vulputate. Vivamus a enim ligula. Aenean hendrerit gravida velit, vel iaculis felis fermentum ut. Praesent pellentesque, eros in fringilla tristique, nisi sem mollis nulla, at facilisis tortor nunc ut lectus. Praesent eu tortor sapien, vel faucibus purus. Proin euismod urna vel lectus vehicula placerat. Etiam urna eros, dapibus a scelerisque eu, malesuada in risus.Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut placerat magna vitae velit placerat malesuada. In in rhoncus mi. Vestibulum ipsum tortor, porta et ullamcorper sed, porta id velit. Vestibulum at felis magna. Quisque aliquet tincidunt leo nec euismod. Morbi non erat vitae quam porta iaculis a varius elit.\r\n\r\nSuspendisse id placerat mi. Cras gravida lacus non nibh ornare vitae molestie purus tincidunt. Donec iaculis, ipsum sit amet facilisis consectetur, lectus nisl euismod dolor, adipiscing rhoncus lacus augue et nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec id tellus massa. Maecenas ligula dui, viverra in ullamcorper vitae, pretium eu leo. Phasellus tristique aliquet ipsum, quis imperdiet leo venenatis id. Quisque ac ligula orci. In vulputate, tortor et sodales molestie, nisl sapien fermentum ligula, et malesuada leo mi at diam. Curabitur lorem mauris, egestas nec tincidunt ac, suscipit eu nibh. Mauris interdum velit mi, a bibendum dolor. Aenean sed mauris quis ligula semper porttitor. Maecenas vestibulum, quam at facilisis accumsan, eros ante pharetra risus, vitae venenatis tellus orci ut magna.\r\n\r\nNunc vestibulum, lorem vel rhoncus congue, ante nunc ullamcorper magna, lacinia hendrerit velit felis vel neque. Maecenas ut tortor ac sem ullamcorper condimentum. Integer ultricies sollicitudin sapien ac aliquet. Duis varius mauris sit amet tellus lobortis aliquet. Morbi faucibus ipsum cursus nibh egestas volutpat. Duis laoreet diam ac risus accumsan sit amet pharetra lacus tempus. Integer congue libero a dolor auctor vitae tincidunt lectus elementum. Vivamus cursus adipiscing arcu, sed tristique sapien imperdiet id. Vivamus eleifend arcu a metus commodo in bibendum tellus porttitor. Suspendisse quis fringilla magna.\r\n\r\n</div>', 'Loren Ipsum', '', 'publish', 'open', 'open', '', 'loren-ipsum', '', '', '2012-06-26 22:41:16', '2012-06-26 22:41:16', '', 0, 'http://localhost/wordpress/?p=21', 0, 'post', '', 0),
(22, 1, '2012-06-26 22:41:03', '2012-06-26 22:41:03', '', 'Loren Ipsun', '', 'inherit', 'open', 'open', '', '21-revision', '', '', '2012-06-26 22:41:03', '2012-06-26 22:41:03', '', 21, 'http://localhost/wordpress/?p=22', 0, 'revision', '', 0),
(23, 1, '2012-06-26 22:41:46', '2012-06-26 22:41:46', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat scelerisque tristique. Quisque sed erat diam, sit amet pulvinar dolor. Nam lacinia justo cursus lacus pharetra vulputate. Aliquam eleifend augue ac elit faucibus a molestie augue imperdiet. Suspendisse potenti. Duis fringilla nisi a odio lacinia quis consectetur lectus consectetur. Nulla condimentum mollis lectus, sed facilisis magna tempor id. Nunc a lacus enim, et suscipit nunc. Integer interdum mattis tortor sagittis molestie. Nunc libero magna, faucibus sodales scelerisque quis, dignissim ac odio. Aliquam erat volutpat. Phasellus sit amet orci mauris. Fusce tempor leo ac libero placerat quis vulputate est ullamcorper.\r\n\r\nSuspendisse tincidunt tempor est eu eleifend. Nam porttitor pharetra ligula hendrerit congue. Cras et mollis nulla. Nulla gravida quam fringilla justo tincidunt vehicula nec vitae tortor. Donec in consectetur urna. Nunc et risus ac ante scelerisque semper. Sed mi ligula, scelerisque sed euismod eget, rutrum nec risus. Integer in mi nulla, a sollicitudin nisi. Maecenas a velit nibh. Morbi et posuere arcu. Donec fermentum, eros vel gravida pretium, enim diam suscipit libero, quis pharetra neque odio id neque. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur vel felis lacus, fringilla elementum nisi. Aenean dolor turpis, aliquam nec posuere eget, lobortis ac massa. Ut euismod sagittis urna ac laoreet.\r\n\r\nFusce nunc risus, egestas in vulputate non, euismod et turpis. Curabitur a magna libero. Quisque elit est, sollicitudin quis viverra vitae, placerat in ligula. Aliquam a tortor odio. Nulla convallis pellentesque tortor sed porta. Duis aliquet eleifend gravida. Fusce condimentum leo et ligula sodales varius. Quisque eget ullamcorper metus. Cras et nibh nec lacus faucibus elementum nec eget elit. Nunc dignissim vestibulum ligula eu fermentum. Quisque sed urna sem, at tristique sapien. Aenean at sodales erat. Vestibulum ultricies sem ac ligula eleifend elementum.\r\n\r\nNunc mi orci, pharetra in venenatis pretium, faucibus eget mauris. Quisque euismod odio vel orci venenatis rutrum. Duis iaculis tellus est. In hac habitasse platea dictumst. Curabitur bibendum, nulla sit amet gravida rhoncus, turpis diam cursus nibh, a mollis mauris erat a magna. Fusce ac lacus gravida arcu rhoncus fringilla. Vivamus ac libero libero, et hendrerit nulla. Phasellus et tellus vitae lectus blandit vehicula. Etiam in nisi purus, at mollis augue.\r\n\r\nVivamus tortor lacus, interdum ut tincidunt sit amet, iaculis id tellus. Morbi non molestie metus. Etiam tincidunt velit eget ipsum semper sagittis. Vivamus non lorem nec urna pharetra euismod. Fusce facilisis justo et turpis vulputate ac venenatis enim rutrum. Praesent pulvinar urna in elit aliquam a semper libero blandit. Praesent molestie eleifend turpis a suscipit. Quisque pellentesque ornare elit, a porttitor turpis sollicitudin id. Curabitur iaculis turpis ut turpis fringilla in pellentesque est feugiat. Sed id justo augue, sed gravida massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi et mi massa.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse vel elit urna, non rhoncus sem. Phasellus in diam in arcu elementum rhoncus sed ultrices justo. Phasellus lectus turpis, ultrices sit amet convallis ut, tincidunt ut metus. Quisque nec nibh ligula, ut pellentesque tellus. Curabitur tempor, dui et bibendum vulputate, eros ante venenatis felis, id condimentum erat justo non neque. Fusce molestie, massa ut elementum laoreet, neque mauris commodo orci, nec imperdiet eros justo quis velit. Vestibulum at lacus eget mi consequat vestibulum.\r\n\r\nQuisque et porta risus. Aenean tempor sapien et dolor ullamcorper id hendrerit nisl porttitor. Donec ut justo est, at mattis nulla. Etiam fermentum, urna id luctus malesuada, neque nulla eleifend velit, et mattis quam eros sed diam. Maecenas congue nisl sed leo iaculis convallis. Sed venenatis libero eget augue ullamcorper porttitor. Praesent lorem ligula, pellentesque eu commodo a, viverra sed odio. Donec quis nisl lorem. Praesent sit amet odio dolor, sed facilisis sem. Nullam ac porttitor urna. Etiam pretium purus in nisl venenatis laoreet. Ut ac tellus lacus. Vestibulum tempor aliquet interdum. Curabitur auctor viverra dictum. Proin venenatis urna in ante feugiat placerat. Nunc in quam nunc, quis ultrices est.\r\n\r\nAenean a neque elit, in euismod augue. Maecenas et turpis eu elit convallis bibendum nec in tortor. Cras nisi velit, interdum quis imperdiet in, vehicula id tellus. Donec faucibus rhoncus tincidunt. Mauris laoreet commodo dolor sed pharetra. Nulla sit amet lectus dolor, ac aliquam metus. Maecenas id nibh orci. Curabitur eget purus ac nibh hendrerit posuere. Aenean ac libero odio. Morbi auctor leo interdum enim suscipit et fermentum erat vestibulum.\r\n\r\n</div>', 'Post #6', '', 'publish', 'open', 'open', '', 'post-6', '', '', '2012-06-26 22:41:46', '2012-06-26 22:41:46', '', 0, 'http://localhost/wordpress/?p=23', 0, 'post', '', 0),
(24, 1, '2012-06-26 22:41:45', '2012-06-26 22:41:45', '', 'Post #6', '', 'inherit', 'open', 'open', '', '23-revision', '', '', '2012-06-26 22:41:45', '2012-06-26 22:41:45', '', 23, 'http://localhost/wordpress/?p=24', 0, 'revision', '', 0),
(25, 1, '2012-06-26 22:42:48', '2012-06-26 22:42:48', '<div id="lipsum">\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat scelerisque tristique. Quisque sed erat diam, sit amet pulvinar dolor. Nam lacinia justo cursus lacus pharetra vulputate. Aliquam eleifend augue ac elit faucibus a molestie augue imperdiet. Suspendisse potenti. Duis fringilla nisi a odio lacinia quis consectetur lectus consectetur. Nulla condimentum mollis lectus, sed facilisis magna tempor id. Nunc a lacus enim, et suscipit nunc. Integer interdum mattis tortor sagittis molestie. Nunc libero magna, faucibus sodales scelerisque quis, dignissim ac odio. Aliquam erat volutpat. Phasellus sit amet orci mauris. Fusce tempor leo ac libero placerat quis vulputate est ullamcorper.\n\nSuspendisse tincidunt tempor est eu eleifend. Nam porttitor pharetra ligula hendrerit congue. Cras et mollis nulla. Nulla gravida quam fringilla justo tincidunt vehicula nec vitae tortor. Donec in consectetur urna. Nunc et risus ac ante scelerisque semper. Sed mi ligula, scelerisque sed euismod eget, rutrum nec risus. Integer in mi nulla, a sollicitudin nisi. Maecenas a velit nibh. Morbi et posuere arcu. Donec fermentum, eros vel gravida pretium, enim diam suscipit libero, quis pharetra neque odio id neque. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur vel felis lacus, fringilla elementum nisi. Aenean dolor turpis, aliquam nec posuere eget, lobortis ac massa. Ut euismod sagittis urna ac laoreet.\n\nFusce nunc risus, egestas in vulputate non, euismod et turpis. Curabitur a magna libero. Quisque elit est, sollicitudin quis viverra vitae, placerat in ligula. Aliquam a tortor odio. Nulla convallis pellentesque tortor sed porta. Duis aliquet eleifend gravida. Fusce condimentum leo et ligula sodales varius. Quisque eget ullamcorper metus. Cras et nibh nec lacus faucibus elementum nec eget elit. Nunc dignissim vestibulum ligula eu fermentum. Quisque sed urna sem, at tristique sapien. Aenean at sodales erat. Vestibulum ultricies sem ac ligula eleifend elementum.\n\nNunc mi orci, pharetra in venenatis pretium, faucibus eget mauris. Quisque euismod odio vel orci venenatis rutrum. Duis iaculis tellus est. In hac habitasse platea dictumst. Curabitur bibendum, nulla sit amet gravida rhoncus, turpis diam cursus nibh, a mollis mauris erat a magna. Fusce ac lacus gravida arcu rhoncus fringilla. Vivamus ac libero libero, et hendrerit nulla. Phasellus et tellus vitae lectus blandit vehicula. Etiam in nisi purus, at mollis augue.\n\nVivamus tortor lacus, interdum ut tincidunt sit amet, iaculis id tellus. Morbi non molestie metus. Etiam tincidunt velit eget ipsum semper sagittis. Vivamus non lorem nec urna pharetra euismod. Fusce facilisis justo et turpis vulputate ac venenatis enim rutrum. Praesent pulvinar urna in elit aliquam a semper libero blandit. Praesent molestie eleifend turpis a suscipit. Quisque pellentesque ornare elit, a porttitor turpis sollicitudin id. Curabitur iaculis turpis ut turpis fringilla in pellentesque est feugiat. Sed id justo augue, sed gravida massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi et mi massa.\n\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse vel elit urna, non rhoncus sem. Phasellus in diam in arcu elementum rhoncus sed ultrices justo. Phasellus lectus turpis, ultrices sit amet convallis ut, tincidunt ut metus. Quisque nec nibh ligula, ut pellentesque tellus. Curabitur tempor, dui et bibendum vulputate, eros ante venenatis felis, id condimentum erat justo non neque. Fusce molestie, massa ut elementum laoreet, neque mauris commodo orci, nec imperdiet eros justo quis velit. Vestibulum at lacus eget mi consequat vestibulum.\n\nQuisque et porta risus. Aenean tempor sapien et dolor ullamcorper id hendrerit nisl porttitor. Donec ut justo est, at mattis nulla. Etiam fermentum, urna id luctus malesuada, neque nulla eleifend velit, et mattis quam eros sed diam. Maecenas congue nisl sed leo iaculis convallis. Sed venenatis libero eget augue ullamcorper porttitor. Praesent lorem ligula, pellentesque eu commodo a, viverra sed odio. Donec quis nisl lorem. Praesent sit amet odio dolor, sed facilisis sem. Nullam ac porttitor urna. Etiam pretium purus in nisl venenatis laoreet. Ut ac tellus lacus. Vestibulum tempor aliquet interdum. Curabitur auctor viverra dictum. Proin venenatis urna in ante feugiat placerat. Nunc in quam nunc, quis ultrices est.\n\nAenean a neque elit, in euismod augue. Maecenas et turpis eu elit convallis bibendum nec in tortor. Cras nisi velit, interdum quis imperdiet in, vehicula id tellus. Donec faucibus rhoncus tincidunt. Mauris laoreet commodo dolor sed pharetra. Nulla sit amet lectus dolor, ac aliquam metus. Maecenas id nibh orci. Curabitur eget purus ac nibh hendrerit posuere. Aenean ac libero odio. Morbi auctor leo interdum enim suscipit et fermentum erat vestibulum.\n\n</div>', 'Post #6', '', 'inherit', 'open', 'open', '', '23-autosave', '', '', '2012-06-26 22:42:48', '2012-06-26 22:42:48', '', 23, 'http://localhost/wordpress/?p=25', 0, 'revision', '', 0),
(26, 1, '2012-06-26 23:21:42', '2012-06-26 23:21:42', '<p>Seu nome (obrigatório)<br />\r\n    [text* your-name] </p>\r\n\r\n<p>Seu e-mail (obrigatório)<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Assunto<br />\r\n    [text your-subject] </p>\r\n\r\n<p>Sua mensagem<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>Anexe o PDF<br />\r\n   [file* arquivo-pdf] </p>\r\n\r\n<p>[submit "Enviar"]</p>\n[your-subject]\n[your-name] <[your-email]>\nDe: [your-name] <[your-email]>\r\nAssunto: [your-subject]\r\n\r\nCorpo da mensagem: \r\n[your-message]\r\n\r\n--\r\nEste email foi enviado via formulário de contato em Articles+ http://localhost/wordpress\neduardo.mobinet@gmail.com\n\n[arquivo-pdf]\n\n\n[your-subject]\n[your-name] <[your-email]>\nCorpo da mensagem:\r\n[your-message]\r\n\r\n--\r\nEste email foi enviado via formulário de contato em Articles+ http://localhost/wordpress\n[your-email]\n\n\n\nSua mensagem foi enviada com sucesso. Obrigado.\nFailed to send your message. Please try later or contact the administrator by another method.\nOcorreram erros de validação. Por favor confira os dados e envie novamente.\nPor favor aceite os termos para prosseguir.\nO endereço de e-mail parece inválido.\nPor favor preencha este campo obrigatório.\nFailed to send your message. Please try later or contact the administrator by another method.\nO código digitado está incorreto.\nFalha no upload do arquivo.\nEste tipo de arquivo não é permitido.\nEste arquivo é grande demais.\nFalha no upload do arquivo.\nSua resposta está incorreta.', 'Contato', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2012-06-26 23:31:22', '2012-06-26 23:31:22', '', 0, 'http://localhost/wordpress/?wpcf7_contact_form=contact-form-1', 0, 'wpcf7_contact_form', '', 0),
(27, 1, '2012-06-22 01:04:20', '2012-06-22 01:04:20', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac nulla sit amet massa tristique rutrum nec in justo. Nam venenatis blandit mi. Phasellus at massa vel erat facilisis auctor. Nulla convallis scelerisque est, eu luctus nulla eleifend vitae. Quisque sit amet felis dui. Proin venenatis scelerisque mi vel elementum. Nullam nec fringilla elit. Nam imperdiet convallis venenatis. Curabitur fringilla ipsum ac velit congue faucibus. Aenean rhoncus bibendum nisl, vel fringilla leo imperdiet at. Nulla tellus diam, laoreet et pulvinar eget, pellentesque ac nibh. Aliquam erat volutpat. Sed porta facilisis metus ac rutrum. Fusce in erat ut dui pretium congue. Cras sit amet urna vel sapien auctor porttitor eget ut turpis. Morbi lectus orci, vehicula eu blandit ac, sollicitudin sed nisl.\r\n\r\nMaecenas turpis purus, vehicula vel aliquet ac, porttitor vel risus. Aenean varius massa at massa molestie quis vulputate nulla commodo. Donec cursus turpis vitae lorem sollicitudin euismod porta tortor sollicitudin. Mauris id ornare metus. Duis ultricies risus metus. Nunc et mi eros. Sed eros sem, facilisis malesuada bibendum eget, scelerisque a mauris. Nunc sit amet tincidunt dolor.\r\n\r\nVestibulum vulputate risus vel elit consectetur sed porta libero hendrerit. Nunc in ipsum lorem, ac accumsan enim. Vestibulum iaculis lacinia diam egestas aliquet. Sed ac arcu non libero volutpat aliquet ac in neque. In porta nunc vitae tortor auctor quis ultricies magna imperdiet. Duis dictum ligula sit amet diam mattis auctor. Aliquam euismod libero at neque accumsan rutrum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec convallis consequat congue. Phasellus lacus tortor, luctus eget pretium sit amet, varius a metus. Duis faucibus nisi in arcu euismod et auctor libero auctor. Aliquam bibendum pretium vestibulum. Nullam posuere tincidunt turpis iaculis iaculis.\r\n\r\n</div>', 'Contato', '', 'inherit', 'open', 'open', '', '14-revision-2', '', '', '2012-06-22 01:04:20', '2012-06-22 01:04:20', '', 14, 'http://localhost/wordpress/?p=27', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(28, 1, '2012-06-27 00:44:43', '2012-06-27 00:44:43', 'Nunc mi orci, pharetra in venenatis pretium, faucibus eget mauris. Quisque euismod odio vel orci venenatis rutrum. Duis iaculis tellus est. In hac habitasse platea dictumst. Curabitur bibendum, nulla sit amet gravida rhoncus, turpis diam cursus nibh, a mollis mauris erat a magna. Fusce ac lacus gravida arcu rhoncus fringilla. Vivamus ac libero libero, et hendrerit nulla. Phasellus et tellus vitae lectus blandit vehicula. Etiam in nisi purus, at mollis augue.\r\n\r\nVivamus tortor lacus, interdum ut tincidunt sit amet, iaculis id tellus. Morbi non molestie metus. Etiam tincidunt velit eget ipsum semper sagittis. Vivamus non lorem nec urna pharetra euismod. Fusce facilisis justo et turpis vulputate ac venenatis enim rutrum. Praesent pulvinar urna in elit aliquam a semper libero blandit. Praesent molestie eleifend turpis a suscipit. Quisque pellentesque ornare elit, a porttitor turpis sollicitudin id. Curabitur iaculis turpis ut turpis fringilla in pellentesque est feugiat. Sed id justo augue, sed gravida massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi et mi massa.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse vel elit urna, non rhoncus sem. Phasellus in diam in arcu elementum rhoncus sed ultrices justo. Phasellus lectus turpis, ultrices sit amet convallis ut, tincidunt ut metus. Quisque nec nibh ligula, ut pellentesque tellus. Curabitur tempor, dui et bibendum vulputate, eros ante venenatis felis, id condimentum erat justo non neque. Fusce molestie, massa ut elementum laoreet, neque mauris commodo orci, nec imperdiet eros justo quis velit. Vestibulum at lacus eget mi consequat vestibulum.', 'Post #7', '', 'publish', 'open', 'open', '', 'post-7', '', '', '2012-06-27 00:44:43', '2012-06-27 00:44:43', '', 0, 'http://localhost/wordpress/?p=28', 0, 'post', '', 0),
(29, 1, '2012-06-27 00:44:31', '2012-06-27 00:44:31', '', 'Post #7', '', 'inherit', 'open', 'open', '', '28-revision', '', '', '2012-06-27 00:44:31', '2012-06-27 00:44:31', '', 28, 'http://localhost/wordpress/?p=29', 0, 'revision', '', 0),
(30, 1, '2012-06-27 00:45:10', '2012-06-27 00:45:10', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse vel elit urna, non rhoncus sem. Phasellus in diam in arcu elementum rhoncus sed ultrices justo. Phasellus lectus turpis, ultrices sit amet convallis ut, tincidunt ut metus. Quisque nec nibh ligula, ut pellentesque tellus. Curabitur tempor, dui et bibendum vulputate, eros ante venenatis felis, id condimentum erat justo non neque. Fusce molestie, massa ut elementum laoreet, neque mauris commodo orci, nec imperdiet eros justo quis velit. Vestibulum at lacus eget mi consequat vestibulum.', 'Post #8', '', 'publish', 'open', 'open', '', 'post-8', '', '', '2012-06-27 00:45:10', '2012-06-27 00:45:10', '', 0, 'http://localhost/wordpress/?p=30', 0, 'post', '', 0),
(31, 1, '2012-06-27 00:44:59', '2012-06-27 00:44:59', '', 'Post #8', '', 'inherit', 'open', 'open', '', '30-revision', '', '', '2012-06-27 00:44:59', '2012-06-27 00:44:59', '', 30, 'http://localhost/wordpress/?p=31', 0, 'revision', '', 0),
(32, 1, '2012-06-27 00:45:30', '2012-06-27 00:45:30', 'Vivamus tortor lacus, interdum ut tincidunt sit amet, iaculis id tellus. Morbi non molestie metus. Etiam tincidunt velit eget ipsum semper sagittis. Vivamus non lorem nec urna pharetra euismod. Fusce facilisis justo et turpis vulputate ac venenatis enim rutrum. Praesent pulvinar urna in elit aliquam a semper libero blandit. Praesent molestie eleifend turpis a suscipit. Quisque pellentesque ornare elit, a porttitor turpis sollicitudin id. Curabitur iaculis turpis ut turpis fringilla in pellentesque est feugiat. Sed id justo augue, sed gravida massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi et mi massa.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse vel elit urna, non rhoncus sem. Phasellus in diam in arcu elementum rhoncus sed ultrices justo. Phasellus lectus turpis, ultrices sit amet convallis ut, tincidunt ut metus. Quisque nec nibh ligula, ut pellentesque tellus. Curabitur tempor, dui et bibendum vulputate, eros ante venenatis felis, id condimentum erat justo non neque. Fusce molestie, massa ut elementum laoreet, neque mauris commodo orci, nec imperdiet eros justo quis velit. Vestibulum at lacus eget mi consequat vestibulum.', 'Post #9', '', 'publish', 'open', 'open', '', 'post-9', '', '', '2012-06-27 00:45:30', '2012-06-27 00:45:30', '', 0, 'http://localhost/wordpress/?p=32', 0, 'post', '', 0),
(33, 1, '2012-06-27 00:45:19', '2012-06-27 00:45:19', '', 'Post #9', '', 'inherit', 'open', 'open', '', '32-revision', '', '', '2012-06-27 00:45:19', '2012-06-27 00:45:19', '', 32, 'http://localhost/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2012-06-27 00:46:02', '2012-06-27 00:46:02', 'Donec at mauris urna. Integer porta diam quis leo eleifend interdum. Vivamus arcu sem, suscipit a imperdiet vel, fermentum et lectus. Etiam suscipit, mi id vestibulum pretium, elit ipsum pharetra urna, at dapibus nunc diam quis neque. Ut iaculis tortor vitae libero vestibulum a lobortis orci fringilla. Donec at mauris eu purus blandit molestie. Aliquam faucibus felis vel sapien interdum a sollicitudin eros adipiscing.\r\n\r\nVestibulum a odio et eros adipiscing tristique vel sed nibh. Cras suscipit scelerisque gravida. Maecenas vel nisl sem. Curabitur at elit vitae dolor laoreet iaculis. Integer auctor urna massa. Nam lectus nunc, convallis ut molestie ac, venenatis venenatis ligula. Pellentesque nunc ipsum, semper nec pellentesque sed, tincidunt ut nunc. Aliquam tempor, lorem lobortis congue dignissim, lacus lacus molestie lacus, a euismod metus sapien ut felis. Nullam ut mi ut turpis aliquet facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nDonec et sodales ante. Etiam risus enim, ullamcorper sed consequat et, congue quis odio. Suspendisse convallis neque at nulla lobortis scelerisque. Sed sit amet ante ipsum, ut gravida mauris. Ut sed ante felis, quis vulputate eros. Vivamus semper urna non felis bibendum posuere. Morbi tortor elit, posuere ut porttitor ut, luctus vitae diam. Donec venenatis pulvinar velit quis sodales. Donec justo ligula, dignissim ac tincidunt viverra, condimentum at dui. Nulla et enim nec erat pulvinar convallis volutpat eget odio. In hac habitasse platea dictumst.\r\n\r\nAliquam luctus tincidunt fermentum. Ut lacinia faucibus neque, eu ornare elit rutrum in. Phasellus scelerisque feugiat felis eget euismod. Etiam bibendum diam at justo dictum vel rutrum arcu molestie. Aliquam ac mi non odio vestibulum placerat eget sed felis. Maecenas nec nibh quis justo vestibulum faucibus eget eu sapien. Sed quis ornare massa. Mauris mauris est, rhoncus eget sodales a, consectetur at sem. Integer feugiat lacus sit amet sem fringilla porta. Donec sodales mattis lacus, sit amet varius nisl mollis at. Curabitur erat dui, adipiscing at molestie in, tincidunt at urna. Pellentesque quis lectus ante.', 'Post #10', '', 'publish', 'open', 'open', '', 'post-10', '', '', '2012-06-27 00:46:02', '2012-06-27 00:46:02', '', 0, 'http://localhost/wordpress/?p=34', 0, 'post', '', 0),
(35, 1, '2012-06-27 00:45:43', '2012-06-27 00:45:43', '', 'Post #10', '', 'inherit', 'open', 'open', '', '34-revision', '', '', '2012-06-27 00:45:43', '2012-06-27 00:45:43', '', 34, 'http://localhost/wordpress/?p=35', 0, 'revision', '', 0),
(36, 1, '2012-06-27 00:47:03', '2012-06-27 00:47:03', 'Donec at mauris urna. Integer porta diam quis leo eleifend interdum. Vivamus arcu sem, suscipit a imperdiet vel, fermentum et lectus. Etiam suscipit, mi id vestibulum pretium, elit ipsum pharetra urna, at dapibus nunc diam quis neque. Ut iaculis tortor vitae libero vestibulum a lobortis orci fringilla. Donec at mauris eu purus blandit molestie. Aliquam faucibus felis vel sapien interdum a sollicitudin eros adipiscing.\n\nVestibulum a odio et eros adipiscing tristique vel sed nibh. Cras suscipit scelerisque gravida. Maecenas vel nisl sem. Curabitur at elit vitae dolor laoreet iaculis. Integer auctor urna massa. Nam lectus nunc, convallis ut molestie ac, venenatis venenatis ligula. Pellentesque nunc ipsum, semper nec pellentesque sed, tincidunt ut nunc. Aliquam tempor, lorem lobortis congue dignissim, lacus lacus molestie lacus, a euismod metus sapien ut felis. Nullam ut mi ut turpis aliquet facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n\nDonec et sodales ante. Etiam risus enim, ullamcorper sed consequat et, congue quis odio. Suspendisse convallis neque at nulla lobortis scelerisque. Sed sit amet ante ipsum, ut gravida mauris. Ut sed ante felis, quis vulputate eros. Vivamus semper urna non felis bibendum posuere. Morbi tortor elit, posuere ut porttitor ut, luctus vitae diam. Donec venenatis pulvinar velit quis sodales. Donec justo ligula, dignissim ac tincidunt viverra, condimentum at dui. Nulla et enim nec erat pulvinar convallis volutpat eget odio. In hac habitasse platea dictumst.\n\nAliquam luctus tincidunt fermentum. Ut lacinia faucibus neque, eu ornare elit rutrum in. Phasellus scelerisque feugiat felis eget euismod. Etiam bibendum diam at justo dictum vel rutrum arcu molestie. Aliquam ac mi non odio vestibulum placerat eget sed felis. Maecenas nec nibh quis justo vestibulum faucibus eget eu sapien. Sed quis ornare massa. Mauris mauris est, rhoncus eget sodales a, consectetur at sem. Integer feugiat lacus sit amet sem fringilla porta. Donec sodales mattis lacus, sit amet varius nisl mollis at. Curabitur erat dui, adipiscing at molestie in, tincidunt at urna. Pellentesque quis lectus ante.', 'Post #10', '', 'inherit', 'open', 'open', '', '34-autosave', '', '', '2012-06-27 00:47:03', '2012-06-27 00:47:03', '', 34, 'http://localhost/wordpress/?p=36', 0, 'revision', '', 0),
(37, 1, '2012-06-30 18:41:52', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-06-30 18:41:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=37', 0, 'post', '', 0),
(38, 1, '2012-06-22 01:03:46', '2012-06-22 01:03:46', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis malesuada ante vel lorem faucibus malesuada. Proin commodo volutpat posuere. Quisque laoreet porttitor elementum. Phasellus mauris mi, porttitor at rutrum venenatis, suscipit vel turpis. Duis ornare, risus nec ultricies porttitor, mauris arcu scelerisque arcu, ut consectetur orci ante a sapien. Duis at mauris quis quam scelerisque congue. Phasellus id nisl semper turpis lobortis egestas ac nec mi. Fusce luctus varius massa, nec semper enim vulputate vel. Suspendisse lorem nibh, bibendum quis consectetur dapibus, viverra ut urna. Sed suscipit nulla non felis vehicula euismod. Cras tristique, nulla ut commodo porta, arcu arcu mattis eros, at aliquam ante libero vel ligula.\r\n\r\nSed posuere, sem ut cursus volutpat, enim odio pretium tortor, et mattis nunc urna eget turpis. Phasellus sollicitudin consectetur mauris ut lobortis. Aliquam imperdiet sodales velit. Pellentesque malesuada elementum massa id mollis. Phasellus ac libero sapien. Etiam vestibulum pellentesque magna, nec venenatis nisi venenatis a. Sed id eros non lectus ultrices ullamcorper vitae id enim. In arcu eros, interdum in volutpat eu, convallis nec eros. Nullam lacinia blandit libero at dictum. Cras non leo at mi dapibus porttitor eu non mauris. Nulla eu erat mauris. Etiam ac adipiscing ipsum. In sagittis pretium risus eget bibendum. Vivamus vulputate tellus ullamcorper sem commodo tincidunt. Praesent et ipsum et purus mollis scelerisque eu vel dui.\r\n\r\nNunc scelerisque, tortor sit amet tempus tempor, massa mauris fringilla massa, id dictum diam eros a est. Aenean varius erat nec ante pellentesque condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eget justo quis arcu fermentum euismod commodo non magna. Etiam interdum, quam ut sollicitudin ultrices, eros nisi egestas risus, nec consectetur orci odio quis erat. Quisque auctor venenatis urna, a volutpat lacus suscipit nec. Phasellus condimentum faucibus nunc, eu laoreet eros viverra ac. Ut iaculis bibendum nibh, lacinia egestas ante laoreet nec. Etiam non urna turpis, vitae venenatis leo. Mauris at lacus quis nibh egestas facilisis.\r\n\r\nUt at odio nulla, id venenatis nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum ac sagittis orci. Suspendisse at turpis nec turpis aliquam pellentesque sed eu nulla. In non felis et justo ornare sodales. Proin vel auctor urna. Nunc ac nulla sem, ut consectetur eros. Ut quis sagittis tortor. Fusce pulvinar imperdiet leo, eu sollicitudin ipsum pharetra lobortis. Nunc non sapien urna, sit amet tincidunt metus. Praesent bibendum lacus non orci venenatis mollis. Morbi orci nunc, laoreet a scelerisque in, auctor nec nisl. Nulla viverra ipsum in libero consectetur at mattis turpis ullamcorper. Vivamus venenatis auctor consequat. Fusce fermentum magna in erat tincidunt quis sollicitudin mauris mattis. Nulla vitae sem ut urna tincidunt ullamcorper.\r\n\r\nCras iaculis lacinia tortor a ornare. Sed tortor odio, cursus vel imperdiet id, faucibus vitae augue. Donec feugiat posuere erat a sollicitudin. Maecenas nec ante purus. Nullam sit amet velit nunc. In fringilla leo at felis faucibus bibendum. Pellentesque semper dolor nec velit euismod lacinia. Nulla et placerat justo. Nulla tempor imperdiet odio vel consequat. Aliquam a libero et mi aliquam auctor. In hac habitasse platea dictumst. Nulla facilisi. Praesent in quam sapien, nec elementum urna. Nam vitae justo a risus pellentesque tempor id at sem.\r\n\r\n</div>', 'Articles+', '', 'inherit', 'open', 'open', '', '12-revision-2', '', '', '2012-06-22 01:03:46', '2012-06-22 01:03:46', '', 12, 'http://localhost/wordpress/?p=38', 0, 'revision', '', 0),
(39, 1, '2012-06-30 19:05:33', '2012-06-30 19:05:33', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis malesuada ante vel lorem faucibus malesuada. Proin commodo volutpat posuere. Quisque laoreet porttitor elementum. Phasellus mauris mi, porttitor at rutrum venenatis, suscipit vel turpis. Duis ornare, risus nec ultricies porttitor, mauris arcu scelerisque arcu, ut consectetur orci ante a sapien. Duis at mauris quis quam scelerisque congue. Phasellus id nisl semper turpis lobortis egestas ac nec mi. Fusce luctus varius massa, nec semper enim vulputate vel. Suspendisse lorem nibh, bibendum quis consectetur dapibus, viverra ut urna. Sed suscipit nulla non felis vehicula euismod. Cras tristique, nulla ut commodo porta, arcu arcu mattis eros, at aliquam ante libero vel ligula.\r\n\r\nSed posuere, sem ut cursus volutpat, enim odio pretium tortor, et mattis nunc urna eget turpis. Phasellus sollicitudin consectetur mauris ut lobortis. Aliquam imperdiet sodales velit. Pellentesque malesuada elementum massa id mollis. Phasellus ac libero sapien. Etiam vestibulum pellentesque magna, nec venenatis nisi venenatis a. Sed id eros non lectus ultrices ullamcorper vitae id enim. In arcu eros, interdum in volutpat eu, convallis nec eros. Nullam lacinia blandit libero at dictum. Cras non leo at mi dapibus porttitor eu non mauris. Nulla eu erat mauris. Etiam ac adipiscing ipsum. In sagittis pretium risus eget bibendum. Vivamus vulputate tellus ullamcorper sem commodo tincidunt. Praesent et ipsum et purus mollis scelerisque eu vel dui.\r\n\r\nNunc scelerisque, tortor sit amet tempus tempor, massa mauris fringilla massa, id dictum diam eros a est. Aenean varius erat nec ante pellentesque condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eget justo quis arcu fermentum euismod commodo non magna. Etiam interdum, quam ut sollicitudin ultrices, eros nisi egestas risus, nec consectetur orci odio quis erat. Quisque auctor venenatis urna, a volutpat lacus suscipit nec. Phasellus condimentum faucibus nunc, eu laoreet eros viverra ac. Ut iaculis bibendum nibh, lacinia egestas ante laoreet nec. Etiam non urna turpis, vitae venenatis leo. Mauris at lacus quis nibh egestas facilisis.\r\n\r\nUt at odio nulla, id venenatis nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum ac sagittis orci. Suspendisse at turpis nec turpis aliquam pellentesque sed eu nulla. In non felis et justo ornare sodales. Proin vel auctor urna. Nunc ac nulla sem, ut consectetur eros. Ut quis sagittis tortor. Fusce pulvinar imperdiet leo, eu sollicitudin ipsum pharetra lobortis. Nunc non sapien urna, sit amet tincidunt metus. Praesent bibendum lacus non orci venenatis mollis. Morbi orci nunc, laoreet a scelerisque in, auctor nec nisl. Nulla viverra ipsum in libero consectetur at mattis turpis ullamcorper. Vivamus venenatis auctor consequat. Fusce fermentum magna in erat tincidunt quis sollicitudin mauris mattis. Nulla vitae sem ut urna tincidunt ullamcorper.\r\n\r\nCras iaculis lacinia tortor a ornare. Sed tortor odio, cursus vel imperdiet id, faucibus vitae augue. Donec feugiat posuere erat a sollicitudin. Maecenas nec ante purus. Nullam sit amet velit nunc. In fringilla leo at felis faucibus bibendum. Pellentesque semper dolor nec velit euismod lacinia. Nulla et placerat justo. Nulla tempor imperdiet odio vel consequat. Aliquam a libero et mi aliquam auctor. In hac habitasse platea dictumst. Nulla facilisi. Praesent in quam sapien, nec elementum urna. Nam vitae justo a risus pellentesque tempor id at sem.\r\n\r\n</div>', 'Articles+', '', 'inherit', 'open', 'open', '', '12-revision-3', '', '', '2012-06-30 19:05:33', '2012-06-30 19:05:33', '', 12, 'http://localhost/wordpress/?p=39', 0, 'revision', '', 0),
(40, 1, '2012-06-30 21:20:44', '2012-06-30 21:20:44', 'Descriçao evento 1', 'INT', '', 'publish', 'closed', 'closed', '', 'evento-1', '', '', '2012-06-30 22:12:39', '2012-06-30 22:12:39', '', 0, 'http://localhost/wordpress/?post_type=eventos&#038;p=40', 0, 'eventos', '', 0),
(41, 1, '2012-06-30 21:20:30', '2012-06-30 21:20:30', '', 'Evento 1', '', 'inherit', 'open', 'open', '', '40-revision', '', '', '2012-06-30 21:20:30', '2012-06-30 21:20:30', '', 40, 'http://localhost/wordpress/?p=41', 0, 'revision', '', 0),
(42, 1, '2012-06-30 21:22:39', '2012-06-30 21:22:39', 'Descriçao evento 2', 'Comissão de Ética', '', 'publish', 'closed', 'closed', '', 'evento-2', '', '', '2012-06-30 22:12:15', '2012-06-30 22:12:15', '', 0, 'http://localhost/wordpress/?post_type=eventos&#038;p=42', 0, 'eventos', '', 0),
(43, 1, '2012-06-30 21:22:28', '2012-06-30 21:22:28', '', 'Evento 2', '', 'inherit', 'open', 'open', '', '42-revision', '', '', '2012-06-30 21:22:28', '2012-06-30 21:22:28', '', 42, 'http://localhost/wordpress/?p=43', 0, 'revision', '', 0),
(44, 1, '2012-06-30 21:23:01', '2012-06-30 21:23:01', 'Descriçao evento 3', 'Hospital Universitário', '', 'publish', 'closed', 'closed', '', 'evento-3', '', '', '2012-06-30 22:11:51', '2012-06-30 22:11:51', '', 0, 'http://localhost/wordpress/?post_type=eventos&#038;p=44', 0, 'eventos', '', 0),
(45, 1, '2012-06-30 21:22:55', '2012-06-30 21:22:55', '', 'Evento 3', '', 'inherit', 'open', 'open', '', '44-revision', '', '', '2012-06-30 21:22:55', '2012-06-30 21:22:55', '', 44, 'http://localhost/wordpress/?p=45', 0, 'revision', '', 0),
(46, 1, '2012-06-30 21:23:16', '2012-06-30 21:23:16', 'Descriçao evento 4', 'Congresso Estatuinte 2012', '', 'publish', 'closed', 'closed', '', 'evento-4', '', '', '2012-06-30 22:11:33', '2012-06-30 22:11:33', '', 0, 'http://localhost/wordpress/?post_type=eventos&#038;p=46', 0, 'eventos', '', 0),
(47, 1, '2012-06-30 21:23:12', '2012-06-30 21:23:12', '', 'Evento 4', '', 'inherit', 'open', 'open', '', '46-revision', '', '', '2012-06-30 21:23:12', '2012-06-30 21:23:12', '', 46, 'http://localhost/wordpress/?p=47', 0, 'revision', '', 0),
(48, 1, '2012-06-30 21:23:16', '2012-06-30 21:23:16', 'Descriçao evento 5', 'Evento 4', '', 'inherit', 'open', 'open', '', '46-revision-2', '', '', '2012-06-30 21:23:16', '2012-06-30 21:23:16', '', 46, 'http://localhost/wordpress/?p=48', 0, 'revision', '', 0),
(49, 1, '2012-06-30 21:23:40', '2012-06-30 21:23:40', 'Descriçao evento 5', 'Assistência Estudantil', '', 'publish', 'closed', 'closed', '', 'evento-5', '', '', '2012-06-30 22:11:16', '2012-06-30 22:11:16', '', 0, 'http://localhost/wordpress/?post_type=eventos&#038;p=49', 0, 'eventos', '', 0),
(50, 1, '2012-06-30 21:23:36', '2012-06-30 21:23:36', '', 'Evento 5', '', 'inherit', 'open', 'open', '', '49-revision', '', '', '2012-06-30 21:23:36', '2012-06-30 21:23:36', '', 49, 'http://localhost/wordpress/?p=50', 0, 'revision', '', 0),
(51, 1, '2012-06-30 21:23:52', '2012-06-30 21:23:52', 'Descriçao evento 6', 'Evento 6', '', 'trash', 'closed', 'closed', '', 'evento-6', '', '', '2012-06-30 22:10:22', '2012-06-30 22:10:22', '', 0, 'http://localhost/wordpress/?post_type=eventos&#038;p=51', 0, 'eventos', '', 0),
(52, 1, '2012-06-30 21:23:49', '2012-06-30 21:23:49', '', 'Evento 6', '', 'inherit', 'open', 'open', '', '51-revision', '', '', '2012-06-30 21:23:49', '2012-06-30 21:23:49', '', 51, 'http://localhost/wordpress/?p=52', 0, 'revision', '', 0),
(53, 1, '2012-06-30 21:24:53', '2012-06-30 21:24:53', 'Descriçao evento 6', 'Evento 6', '', 'inherit', 'open', 'open', '', '51-autosave', '', '', '2012-06-30 21:24:53', '2012-06-30 21:24:53', '', 51, 'http://localhost/wordpress/?p=53', 0, 'revision', '', 0),
(54, 1, '2012-06-30 21:23:52', '2012-06-30 21:23:52', 'Descriçao evento 6', 'Evento 6', '', 'inherit', 'open', 'open', '', '51-revision-2', '', '', '2012-06-30 21:23:52', '2012-06-30 21:23:52', '', 51, 'http://localhost/wordpress/?p=54', 0, 'revision', '', 0),
(55, 1, '2012-06-30 21:20:44', '2012-06-30 21:20:44', 'Descriçao evento 1', 'Evento 1', '', 'inherit', 'open', 'open', '', '40-revision-2', '', '', '2012-06-30 21:20:44', '2012-06-30 21:20:44', '', 40, 'http://localhost/wordpress/?p=55', 0, 'revision', '', 0),
(56, 1, '2012-06-30 21:23:40', '2012-06-30 21:23:40', 'Descriçao evento 5', 'Evento 5', '', 'inherit', 'open', 'open', '', '49-revision-2', '', '', '2012-06-30 21:23:40', '2012-06-30 21:23:40', '', 49, 'http://localhost/wordpress/?p=56', 0, 'revision', '', 0),
(57, 1, '2012-06-30 21:23:28', '2012-06-30 21:23:28', 'Descriçao evento 4', 'Evento 4', '', 'inherit', 'open', 'open', '', '46-revision-3', '', '', '2012-06-30 21:23:28', '2012-06-30 21:23:28', '', 46, 'http://localhost/wordpress/?p=57', 0, 'revision', '', 0),
(58, 1, '2012-06-30 21:23:01', '2012-06-30 21:23:01', 'Descriçao evento 3', 'Evento 3', '', 'inherit', 'open', 'open', '', '44-revision-2', '', '', '2012-06-30 21:23:01', '2012-06-30 21:23:01', '', 44, 'http://localhost/wordpress/?p=58', 0, 'revision', '', 0),
(59, 1, '2012-06-30 21:22:39', '2012-06-30 21:22:39', 'Descriçao evento 2', 'Evento 2', '', 'inherit', 'open', 'open', '', '42-revision-2', '', '', '2012-06-30 21:22:39', '2012-06-30 21:22:39', '', 42, 'http://localhost/wordpress/?p=59', 0, 'revision', '', 0),
(60, 1, '2012-06-30 22:10:49', '2012-06-30 22:10:49', 'Descriçao evento 1', 'Assistência Estudantil', '', 'inherit', 'open', 'open', '', '40-revision-3', '', '', '2012-06-30 22:10:49', '2012-06-30 22:10:49', '', 40, 'http://localhost/wordpress/?p=60', 0, 'revision', '', 0),
(61, 1, '2012-06-30 22:13:10', '2012-06-30 22:13:10', 'Descrição evento 6', 'Aprender UnB', '', 'publish', 'closed', 'closed', '', 'aprender-unb', '', '', '2012-06-30 22:13:10', '2012-06-30 22:13:10', '', 0, 'http://localhost/wordpress/?post_type=eventos&#038;p=61', 0, 'eventos', '', 0),
(62, 1, '2012-06-30 22:12:57', '2012-06-30 22:12:57', '', 'Aprender UnB', '', 'inherit', 'open', 'open', '', '61-revision', '', '', '2012-06-30 22:12:57', '2012-06-30 22:12:57', '', 61, 'http://localhost/wordpress/?p=62', 0, 'revision', '', 0),
(63, 1, '2012-06-30 22:14:11', '2012-06-30 22:14:11', 'Descrição evento 6', 'Aprender UnB', '', 'inherit', 'open', 'open', '', '61-autosave', '', '', '2012-06-30 22:14:11', '2012-06-30 22:14:11', '', 61, 'http://localhost/wordpress/?p=63', 0, 'revision', '', 0),
(64, 1, '2012-06-30 22:44:36', '2012-06-30 22:44:36', '', 'Início', '', 'publish', 'open', 'open', '', 'inicio', '', '', '2012-06-30 23:05:19', '2012-06-30 23:05:19', '', 0, 'http://localhost/wordpress/?p=64', 1, 'nav_menu_item', '', 0),
(65, 1, '2012-06-30 22:44:45', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-06-30 22:44:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=65', 0, 'page', '', 0),
(66, 1, '2012-06-30 19:05:41', '2012-06-30 19:05:41', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis malesuada ante vel lorem faucibus malesuada. Proin commodo volutpat posuere. Quisque laoreet porttitor elementum. Phasellus mauris mi, porttitor at rutrum venenatis, suscipit vel turpis. Duis ornare, risus nec ultricies porttitor, mauris arcu scelerisque arcu, ut consectetur orci ante a sapien. Duis at mauris quis quam scelerisque congue. Phasellus id nisl semper turpis lobortis egestas ac nec mi. Fusce luctus varius massa, nec semper enim vulputate vel. Suspendisse lorem nibh, bibendum quis consectetur dapibus, viverra ut urna. Sed suscipit nulla non felis vehicula euismod. Cras tristique, nulla ut commodo porta, arcu arcu mattis eros, at aliquam ante libero vel ligula.\r\n\r\nSed posuere, sem ut cursus volutpat, enim odio pretium tortor, et mattis nunc urna eget turpis. Phasellus sollicitudin consectetur mauris ut lobortis. Aliquam imperdiet sodales velit. Pellentesque malesuada elementum massa id mollis. Phasellus ac libero sapien. Etiam vestibulum pellentesque magna, nec venenatis nisi venenatis a. Sed id eros non lectus ultrices ullamcorper vitae id enim. In arcu eros, interdum in volutpat eu, convallis nec eros. Nullam lacinia blandit libero at dictum. Cras non leo at mi dapibus porttitor eu non mauris. Nulla eu erat mauris. Etiam ac adipiscing ipsum. In sagittis pretium risus eget bibendum. Vivamus vulputate tellus ullamcorper sem commodo tincidunt. Praesent et ipsum et purus mollis scelerisque eu vel dui.\r\n\r\nNunc scelerisque, tortor sit amet tempus tempor, massa mauris fringilla massa, id dictum diam eros a est. Aenean varius erat nec ante pellentesque condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus eget justo quis arcu fermentum euismod commodo non magna. Etiam interdum, quam ut sollicitudin ultrices, eros nisi egestas risus, nec consectetur orci odio quis erat. Quisque auctor venenatis urna, a volutpat lacus suscipit nec. Phasellus condimentum faucibus nunc, eu laoreet eros viverra ac. Ut iaculis bibendum nibh, lacinia egestas ante laoreet nec. Etiam non urna turpis, vitae venenatis leo. Mauris at lacus quis nibh egestas facilisis.\r\n\r\nUt at odio nulla, id venenatis nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum ac sagittis orci. Suspendisse at turpis nec turpis aliquam pellentesque sed eu nulla. In non felis et justo ornare sodales. Proin vel auctor urna. Nunc ac nulla sem, ut consectetur eros. Ut quis sagittis tortor. Fusce pulvinar imperdiet leo, eu sollicitudin ipsum pharetra lobortis. Nunc non sapien urna, sit amet tincidunt metus. Praesent bibendum lacus non orci venenatis mollis. Morbi orci nunc, laoreet a scelerisque in, auctor nec nisl. Nulla viverra ipsum in libero consectetur at mattis turpis ullamcorper. Vivamus venenatis auctor consequat. Fusce fermentum magna in erat tincidunt quis sollicitudin mauris mattis. Nulla vitae sem ut urna tincidunt ullamcorper.\r\n\r\nCras iaculis lacinia tortor a ornare. Sed tortor odio, cursus vel imperdiet id, faucibus vitae augue. Donec feugiat posuere erat a sollicitudin. Maecenas nec ante purus. Nullam sit amet velit nunc. In fringilla leo at felis faucibus bibendum. Pellentesque semper dolor nec velit euismod lacinia. Nulla et placerat justo. Nulla tempor imperdiet odio vel consequat. Aliquam a libero et mi aliquam auctor. In hac habitasse platea dictumst. Nulla facilisi. Praesent in quam sapien, nec elementum urna. Nam vitae justo a risus pellentesque tempor id at sem.\r\n\r\n</div>', 'Articles+', '', 'inherit', 'open', 'open', '', '12-revision-4', '', '', '2012-06-30 19:05:41', '2012-06-30 19:05:41', '', 12, 'http://localhost/wordpress/?p=66', 0, 'revision', '', 0),
(67, 1, '2012-06-26 23:28:20', '2012-06-26 23:28:20', '<div id="lipsum">\r\n\r\nMaecenas turpis purus, vehicula vel aliquet ac, porttitor vel risus. Aenean varius massa at massa molestie quis vulputate nulla commodo. Donec cursus turpis vitae lorem sollicitudin euismod porta tortor sollicitudin. Mauris id ornare metus. Duis ultricies risus metus. Nunc et mi eros. Sed eros sem, facilisis malesuada bibendum eget, scelerisque a mauris. Nunc sit amet tincidunt dolor.\r\n\r\n[contact-form-7 id="26" title="Contato"]\r\n\r\n</div>', 'Contato', '', 'inherit', 'open', 'open', '', '14-revision-3', '', '', '2012-06-26 23:28:20', '2012-06-26 23:28:20', '', 14, 'http://localhost/wordpress/?p=67', 0, 'revision', '', 0),
(68, 1, '2012-06-30 22:46:16', '2012-06-30 22:46:16', '', 'Graduação', '', 'publish', 'open', 'open', '', 'graduacao', '', '', '2012-06-30 22:46:16', '2012-06-30 22:46:16', '', 0, 'http://localhost/wordpress/?page_id=68', 0, 'page', '', 0),
(69, 1, '2012-06-30 22:46:09', '2012-06-30 22:46:09', '', 'Graduação', '', 'inherit', 'open', 'open', '', '68-revision', '', '', '2012-06-30 22:46:09', '2012-06-30 22:46:09', '', 68, 'http://localhost/wordpress/?p=69', 0, 'revision', '', 0),
(70, 1, '2012-06-30 22:46:38', '2012-06-30 22:46:38', '', 'Pós-Graduação', '', 'publish', 'open', 'open', '', 'pos-graduacao', '', '', '2012-06-30 22:46:38', '2012-06-30 22:46:38', '', 0, 'http://localhost/wordpress/?page_id=70', 0, 'page', '', 0),
(71, 1, '2012-06-30 22:46:21', '2012-06-30 22:46:21', '', 'Rascunho automático', '', 'inherit', 'open', 'open', '', '70-revision', '', '', '2012-06-30 22:46:21', '2012-06-30 22:46:21', '', 70, 'http://localhost/wordpress/?p=71', 0, 'revision', '', 0),
(72, 1, '2012-06-30 22:46:52', '2012-06-30 22:46:52', '', 'Projetos', '', 'trash', 'open', 'open', '', 'projetos', '', '', '2012-06-30 22:52:58', '2012-06-30 22:52:58', '', 0, 'http://localhost/wordpress/?page_id=72', 0, 'page', '', 0),
(73, 1, '2012-06-30 22:46:44', '2012-06-30 22:46:44', '', 'Rascunho automático', '', 'inherit', 'open', 'open', '', '72-revision', '', '', '2012-06-30 22:46:44', '2012-06-30 22:46:44', '', 72, 'http://localhost/wordpress/?p=73', 0, 'revision', '', 0),
(74, 1, '2012-06-30 22:47:13', '2012-06-30 22:47:13', '', 'Downloads', '', 'publish', 'open', 'open', '', 'downloas', '', '', '2012-06-30 22:47:32', '2012-06-30 22:47:32', '', 0, 'http://localhost/wordpress/?page_id=74', 0, 'page', '', 0),
(75, 1, '2012-06-30 22:47:05', '2012-06-30 22:47:05', '', 'Rascunho automático', '', 'inherit', 'open', 'open', '', '74-revision', '', '', '2012-06-30 22:47:05', '2012-06-30 22:47:05', '', 74, 'http://localhost/wordpress/?p=75', 0, 'revision', '', 0),
(76, 1, '2012-06-30 22:47:17', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-06-30 22:47:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=76', 0, 'page', '', 0),
(77, 1, '2012-06-30 22:47:13', '2012-06-30 22:47:13', '', 'Downloas', '', 'inherit', 'open', 'open', '', '74-revision-2', '', '', '2012-06-30 22:47:13', '2012-06-30 22:47:13', '', 74, 'http://localhost/wordpress/?p=77', 0, 'revision', '', 0),
(78, 1, '2012-06-30 22:47:43', '2012-06-30 22:47:43', '', 'História', '', 'publish', 'open', 'open', '', 'historia', '', '', '2012-06-30 22:47:43', '2012-06-30 22:47:43', '', 0, 'http://localhost/wordpress/?page_id=78', 0, 'page', '', 0),
(79, 1, '2012-06-30 22:47:35', '2012-06-30 22:47:35', '', 'Rascunho automático', '', 'inherit', 'open', 'open', '', '78-revision', '', '', '2012-06-30 22:47:35', '2012-06-30 22:47:35', '', 78, 'http://localhost/wordpress/?p=79', 0, 'revision', '', 0),
(80, 1, '2012-06-30 22:46:52', '2012-06-30 22:46:52', '', 'Projetos', '', 'inherit', 'open', 'open', '', '72-revision-2', '', '', '2012-06-30 22:46:52', '2012-06-30 22:46:52', '', 72, 'http://localhost/wordpress/?p=80', 0, 'revision', '', 0),
(81, 1, '2012-06-30 23:05:19', '2012-06-30 23:05:19', ' ', '', '', 'publish', 'open', 'open', '', '81', '', '', '2012-06-30 23:05:19', '2012-06-30 23:05:19', '', 0, 'http://localhost/wordpress/?p=81', 5, 'nav_menu_item', '', 0),
(82, 1, '2012-06-30 23:05:19', '2012-06-30 23:05:19', ' ', '', '', 'publish', 'open', 'open', '', '82', '', '', '2012-06-30 23:05:19', '2012-06-30 23:05:19', '', 0, 'http://localhost/wordpress/?p=82', 4, 'nav_menu_item', '', 0),
(83, 1, '2012-06-30 23:05:19', '2012-06-30 23:05:19', ' ', '', '', 'publish', 'open', 'open', '', '83', '', '', '2012-06-30 23:05:19', '2012-06-30 23:05:19', '', 0, 'http://localhost/wordpress/?p=83', 3, 'nav_menu_item', '', 0),
(84, 1, '2012-06-30 23:05:19', '2012-06-30 23:05:19', ' ', '', '', 'publish', 'open', 'open', '', '84', '', '', '2012-06-30 23:05:19', '2012-06-30 23:05:19', '', 0, 'http://localhost/wordpress/?p=84', 2, 'nav_menu_item', '', 0),
(85, 1, '2012-06-30 23:40:51', '2012-06-30 23:40:51', ' ', '', '', 'publish', 'open', 'open', '', '85', '', '', '2012-06-30 23:40:51', '2012-06-30 23:40:51', '', 0, 'http://localhost/wordpress/?p=85', 1, 'nav_menu_item', '', 0),
(86, 1, '2012-06-30 23:40:51', '2012-06-30 23:40:51', ' ', '', '', 'publish', 'open', 'open', '', '86', '', '', '2012-06-30 23:40:52', '2012-06-30 23:40:52', '', 0, 'http://localhost/wordpress/?p=86', 2, 'nav_menu_item', '', 0),
(87, 1, '2012-06-30 23:40:52', '2012-06-30 23:40:52', ' ', '', '', 'publish', 'open', 'open', '', '87', '', '', '2012-06-30 23:40:52', '2012-06-30 23:40:52', '', 0, 'http://localhost/wordpress/?p=87', 3, 'nav_menu_item', '', 0),
(88, 1, '2012-06-30 23:40:52', '2012-06-30 23:40:52', ' ', '', '', 'publish', 'open', 'open', '', '88', '', '', '2012-06-30 23:40:52', '2012-06-30 23:40:52', '', 0, 'http://localhost/wordpress/?p=88', 4, 'nav_menu_item', '', 0),
(89, 1, '2012-07-01 00:14:20', '2012-07-01 00:14:20', ' ', '', '', 'publish', 'open', 'open', '', '89', '', '', '2012-07-01 00:16:54', '2012-07-01 00:16:54', '', 0, 'http://localhost/wordpress/?p=89', 1, 'nav_menu_item', '', 0),
(91, 1, '2012-07-01 00:16:54', '2012-07-01 00:16:54', ' ', '', '', 'publish', 'open', 'open', '', '91', '', '', '2012-07-01 00:16:54', '2012-07-01 00:16:54', '', 0, 'http://localhost/wordpress/?p=91', 2, 'nav_menu_item', '', 0),
(92, 1, '2012-07-01 00:16:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2012-07-01 00:16:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=92', 1, 'nav_menu_item', '', 0),
(93, 1, '2012-07-01 00:16:54', '2012-07-01 00:16:54', ' ', '', '', 'publish', 'open', 'open', '', '93', '', '', '2012-07-01 00:16:54', '2012-07-01 00:16:54', '', 0, 'http://localhost/wordpress/?p=93', 3, 'nav_menu_item', '', 0),
(94, 1, '2012-07-01 00:16:54', '2012-07-01 00:16:54', ' ', '', '', 'publish', 'open', 'open', '', '94', '', '', '2012-07-01 00:16:54', '2012-07-01 00:16:54', '', 0, 'http://localhost/wordpress/?p=94', 4, 'nav_menu_item', '', 0),
(95, 1, '2012-07-04 12:47:38', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-07-04 12:47:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=banners&p=95', 0, 'banners', '', 0),
(96, 1, '2012-07-04 12:49:43', '2012-07-04 12:49:43', '', 'Banners', '', 'publish', 'closed', 'closed', '', 'acf_banners', '', '', '2012-07-04 12:49:43', '2012-07-04 12:49:43', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=96', 0, 'acf', '', 0),
(97, 1, '2012-07-04 12:50:43', '2012-07-04 12:50:43', '', 'Banner1', '', 'publish', 'closed', 'closed', '', '97', '', '', '2012-07-05 19:45:56', '2012-07-05 19:45:56', '', 0, 'http://localhost/wordpress/?post_type=banners&#038;p=97', 0, 'banners', '', 0),
(99, 1, '2012-07-04 12:49:50', '2012-07-04 12:49:50', '', 'Rascunho automático', '', 'inherit', 'open', 'open', '', '97-revision', '', '', '2012-07-04 12:49:50', '2012-07-04 12:49:50', '', 97, 'http://localhost/wordpress/?p=99', 0, 'revision', '', 0),
(100, 1, '2012-07-04 12:51:42', '2012-07-04 12:51:42', '', 'Banner2', '', 'publish', 'closed', 'closed', '', 'banner2', '', '', '2012-07-04 12:51:42', '2012-07-04 12:51:42', '', 0, 'http://localhost/wordpress/?post_type=banners&#038;p=100', 0, 'banners', '', 0),
(102, 1, '2012-07-04 12:50:59', '2012-07-04 12:50:59', '', 'Banner2', '', 'inherit', 'open', 'open', '', '100-revision', '', '', '2012-07-04 12:50:59', '2012-07-04 12:50:59', '', 100, 'http://localhost/wordpress/?p=102', 0, 'revision', '', 0),
(103, 1, '2012-07-04 12:50:43', '2012-07-04 12:50:43', '', '', '', 'inherit', 'open', 'open', '', '97-revision-2', '', '', '2012-07-04 12:50:43', '2012-07-04 12:50:43', '', 97, 'http://localhost/wordpress/?p=103', 0, 'revision', '', 0),
(104, 1, '2012-07-05 21:56:24', '2012-07-05 21:56:24', '', 'Banner1', '', 'inherit', 'open', 'open', '', '97-autosave', '', '', '2012-07-05 21:56:24', '2012-07-05 21:56:24', '', 97, 'http://localhost/wordpress/?p=104', 0, 'revision', '', 0),
(105, 1, '2012-07-04 13:04:26', '2012-07-04 13:04:26', '', 'sdgfasdfzsdv', '', 'trash', 'closed', 'closed', '', 'sdgfasdfzsdv', '', '', '2012-07-05 19:44:34', '2012-07-05 19:44:34', '', 0, 'http://localhost/wordpress/?post_type=banners&#038;p=105', 0, 'banners', '', 0),
(106, 1, '2012-07-04 13:04:19', '2012-07-04 13:04:19', '', 'bannerPrincipal', '', 'inherit', 'open', 'open', '', 'bannerprincipal-2', '', '', '2012-07-04 13:04:19', '2012-07-04 13:04:19', '', 105, 'http://localhost/wordpress/wp-content/uploads/2012/07/bannerPrincipal1.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2012-07-04 13:03:30', '2012-07-04 13:03:30', '', 'sdgfasdfzsdv', '', 'inherit', 'open', 'open', '', '105-revision', '', '', '2012-07-04 13:03:30', '2012-07-04 13:03:30', '', 105, 'http://localhost/wordpress/?p=107', 0, 'revision', '', 0),
(108, 1, '2012-07-04 13:05:28', '2012-07-04 13:05:28', '', 'sdgfasdfzsdv', '', 'inherit', 'open', 'open', '', '105-autosave', '', '', '2012-07-04 13:05:28', '2012-07-04 13:05:28', '', 105, 'http://localhost/wordpress/?p=108', 0, 'revision', '', 0),
(109, 1, '2012-07-04 13:04:26', '2012-07-04 13:04:26', '', 'sdgfasdfzsdv', '', 'inherit', 'open', 'open', '', '105-revision-2', '', '', '2012-07-04 13:04:26', '2012-07-04 13:04:26', '', 105, 'http://localhost/wordpress/?p=109', 0, 'revision', '', 0),
(110, 1, '2012-07-05 19:45:43', '2012-07-05 19:45:43', '', 'bannerPrincipal2', '', 'inherit', 'open', 'open', '', 'bannerprincipal2', '', '', '2012-07-05 19:45:43', '2012-07-05 19:45:43', '', 97, 'http://localhost/wordpress/wp-content/uploads/2012/07/bannerPrincipal2.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2012-07-04 12:51:57', '2012-07-04 12:51:57', '', 'Banner1', '', 'inherit', 'open', 'open', '', '97-revision-3', '', '', '2012-07-04 12:51:57', '2012-07-04 12:51:57', '', 97, 'http://localhost/wordpress/?p=111', 0, 'revision', '', 0),
(112, 1, '2012-07-05 19:46:21', '2012-07-05 19:46:21', '', 'bannerPrincipal', '', 'inherit', 'open', 'open', '', 'bannerprincipal', '', '', '2012-07-05 19:46:21', '2012-07-05 19:46:21', '', 100, 'http://localhost/wordpress/wp-content/uploads/2012/07/bannerPrincipal.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2012-07-05 21:54:54', '2012-07-05 21:54:54', '', 'Banner2', '', 'inherit', 'open', 'open', '', '100-autosave', '', '', '2012-07-05 21:54:54', '2012-07-05 21:54:54', '', 100, 'http://localhost/wordpress/?p=113', 0, 'revision', '', 0),
(114, 1, '2012-07-05 21:54:03', '2012-07-05 21:54:03', '', 'bannerPrincipal', '', 'inherit', 'open', 'open', '', 'bannerprincipal-3', '', '', '2012-07-05 21:54:03', '2012-07-05 21:54:03', '', 100, 'http://localhost/wordpress/wp-content/uploads/2012/07/bannerPrincipal1.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2012-07-05 21:54:27', '2012-07-05 21:54:27', '', 'bannerPrincipal', '', 'inherit', 'open', 'open', '', 'bannerprincipal-4', '', '', '2012-07-05 21:54:27', '2012-07-05 21:54:27', '', 100, 'http://localhost/wordpress/wp-content/uploads/2012/07/bannerPrincipal3.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2012-07-05 21:55:33', '2012-07-05 21:55:33', '', 'bannerPrincipal2', '', 'inherit', 'open', 'open', '', 'bannerprincipal2-2', '', '', '2012-07-05 21:55:33', '2012-07-05 21:55:33', '', 97, 'http://localhost/wordpress/wp-content/uploads/2012/07/bannerPrincipal21.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(2, 2, 0),
(3, 2, 0),
(4, 1, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(17, 3, 0),
(17, 4, 0),
(19, 1, 0),
(21, 1, 0),
(23, 1, 0),
(28, 3, 0),
(28, 4, 0),
(30, 1, 0),
(32, 1, 0),
(34, 1, 0),
(64, 7, 0),
(81, 7, 0),
(82, 7, 0),
(83, 7, 0),
(84, 7, 0),
(85, 8, 0),
(86, 8, 0),
(87, 8, 0),
(88, 8, 0),
(89, 6, 0),
(91, 6, 0),
(93, 6, 0),
(94, 6, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 8),
(2, 2, 'link_category', '', 0, 7),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 3),
(5, 5, 'category', '', 0, 1),
(6, 6, 'nav_menu', '', 0, 4),
(7, 7, 'nav_menu', '', 0, 5),
(8, 8, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Lista de Links', 'lista-de-links', 0),
(3, 'Artigos', 'artigos', 0),
(4, 'Curiosidades', 'curiosidades', 0),
(5, 'Tutoriais', 'tutoriais', 0),
(6, 'Acessos Externos', 'acessos-externos', 0),
(7, 'Menu Principal', 'menu-principal', 0),
(8, 'Sub-Menu Principal', 'sub-menu-principal', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'master'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '37'),
(15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:8:"add-post";i:1;s:11:"add-eventos";i:2;s:10:"add-cursos";i:3;s:15:"add-professores";i:4;s:12:"add-projetos";i:5;s:12:"add-post_tag";}'),
(17, 1, 'nav_menu_recently_edited', '6'),
(18, 1, 'wp_user-settings', 'imgsize=full'),
(19, 1, 'wp_user-settings-time', '1341406239');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'master', '$P$BUaT4yg42OWwFHWP4fITzbKsNFKu4e1', 'master', 'eduardo.mobinet@gmail.com', '', '2012-06-21 22:30:30', '', 0, 'master');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
