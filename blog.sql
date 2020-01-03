/*
Navicat MySQL Data Transfer

Source Server         : local host
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-01-03 15:01:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_config
-- ----------------------------
DROP TABLE IF EXISTS `admin_config`;
CREATE TABLE `admin_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_config_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_config
-- ----------------------------
INSERT INTO `admin_config` VALUES ('1', '__configx__', 'do not delete', '{\"base.website_title\":{\"options\":[],\"element\":\"normal\",\"help\":null,\"name\":\"\\u7ad9\\u70b9\\u6807\\u9898\",\"order\":15},\"base.website_switch\":{\"options\":[],\"element\":\"yes_or_no\",\"help\":\"\\u7ad9\\u70b9\\u5173\\u95ed\\u540e\\u5c06\\u4e0d\\u80fd\\u8bbf\\u95ee\\uff0c\\u540e\\u53f0\\u53ef\\u6b63\\u5e38\\u767b\\u5f55\",\"name\":\"\\u7ad9\\u70b9\\u5f00\\u5173\",\"order\":5},\"base.website_keyword\":{\"options\":[],\"element\":\"tags\",\"help\":\"\\u7f51\\u7ad9\\u5173\\u952e\\u8bcd\\u5c31\\u662f\\u4e00\\u4e2a\\u7f51\\u7ad9\\u7ed9\\u9996\\u9875\\u8bbe\\u5b9a\\u7684\\u4ee5\\u4fbf\\u7528\\u6237\\u901a\\u8fc7\\u641c\\u7d22\\u5f15\\u64ce\\u80fd\\u641c\\u5230\\u672c\\u7f51\\u7ad9\\u7684\\u8bcd\\u6c47\",\"name\":\"\\u7ad9\\u70b9\\u5173\\u952e\\u8bcd\",\"order\":20},\"base.website_icon\":{\"options\":[],\"element\":\"file\",\"help\":\"\\u914d\\u7f6e\\u7ad9\\u70b9icon\\u56fe\\u6807\",\"name\":\"\\u7ad9\\u70b9ICON\",\"order\":25},\"base.website_desc\":{\"options\":[],\"element\":\"textarea\",\"help\":\"\\u901a\\u8fc7\\u63cf\\u8ff0\\u80fd\\u5438\\u5f15\\u7528\\u6237\\u7684\\u70b9\\u51fb\\uff0c\\u4ece\\u800c\\u6e10\\u63a5\\u63d0\\u5347\\u7f51\\u7ad9\\u7684\\u5173\\u952e\\u8bcd\\u6392\\u540d\",\"name\":\"\\u7ad9\\u70b9\\u63cf\\u8ff0\",\"order\":30},\"base.website_keep\":{\"options\":[],\"element\":\"normal\",\"help\":\"\\u901a\\u8fc7\\u57df\\u540d\\u53ef\\u67e5\\u8be2\\u8be5\\u57df\\u540d\\u662f\\u5426\\u6709\\u5907\\u6848\\u53ca\\u76f8\\u5173\\u7684ICP\\u5907\\u6848\\u8bb8\\u53ef\\u4fe1\\u606f\",\"name\":\"\\u5907\\u6848\\u4fe1\\u606f\",\"order\":35},\"base.new_key_here\":{\"options\":[],\"element\":\"textarea\",\"help\":\"\\u6dfb\\u52a0\\u7b2c\\u4e09\\u65b9\\u5e73\\u53f0\\u4ee3\\u7801,\\u7edf\\u8ba1\\u7f51\\u7ad9\\u8bbf\\u95ee\\u6570\\u636e\\u3002\",\"name\":\"\\u7f51\\u7ad9\\u7edf\\u8ba1\\u4ee3\\u7801\",\"order\":40},\"user_info.user_qq\":{\"options\":[],\"element\":\"normal\",\"help\":null,\"name\":\"\\u4e2a\\u4ebaQQ\",\"order\":30},\"user_info.user_wechat\":{\"options\":[],\"element\":\"normal\",\"help\":null,\"name\":\"\\u4e2a\\u4eba\\u5fae\\u4fe1\",\"order\":35},\"user_info.full_name\":{\"options\":[],\"element\":\"normal\",\"help\":\"\\u7528\\u4e8e\\u5173\\u4e8e\\u6211\\u5c55\\u793a\\u4e2a\\u4eba\\u59d3\\u540d\",\"name\":\"\\u4e2a\\u4eba\\u59d3\\u540d\",\"order\":5},\"user_info.portrait\":{\"options\":[],\"element\":\"image\",\"help\":\"\\u7528\\u4e8e\\u5173\\u4e8e\\u6211\\u4e2d\\u5c55\\u793a\\u4e2a\\u4eba\\u5934\\u50cf\",\"name\":\"\\u4e2a\\u4eba\\u5934\\u50cf\",\"order\":10},\"user_info.background\":{\"options\":[],\"element\":\"image\",\"help\":\"\\u7528\\u4e8e\\u5173\\u4e8e\\u6211\\u4e2d\\u5361\\u7247\\u80cc\\u666f\",\"name\":\"\\u4e2a\\u4eba\\u80cc\\u666f\",\"order\":15},\"user_info.occupation\":{\"options\":[],\"element\":\"normal\",\"help\":\"\\u7528\\u4e8e\\u5173\\u4e8e\\u6211\\u4e2d\\u5c55\\u793a\\u4e2a\\u4eba\\u804c\\u4e1a\",\"name\":\"\\u4e2a\\u4eba\\u804c\\u4e1a\",\"order\":20},\"user_info.motto\":{\"options\":[],\"element\":\"normal\",\"help\":\"\\u7528\\u4e8e\\u5173\\u4e8e\\u6211\\u4e2d\\u5c55\\u793a\\u5ea7\\u53f3\\u94ed\",\"name\":\"\\u4e2a\\u4eba\\u5ea7\\u53f3\\u94ed\",\"order\":25},\"base.motto\":{\"options\":[],\"element\":\"normal\",\"help\":\"\\u7528\\u4e8e\\u9875\\u9762\\u5c3e\\u90e8\\u5c55\\u793a\\u5ea7\\u53f3\\u94ed\",\"name\":\"\\u5c3e\\u90e8\\u5ea7\\u53f3\\u94ed\",\"order\":45},\"base.website_background\":{\"options\":{\"@name\":\"newname\"},\"element\":\"file\",\"help\":\"\\u7528\\u4e8e\\u535a\\u5ba2\\u5404\\u4e2a\\u5bfc\\u822a\\u7684\\u80cc\\u666f\",\"name\":\"\\u535a\\u5ba2\\u80cc\\u666f\",\"order\":55},\"base.website_open_bg\":{\"options\":[],\"element\":\"yes_or_no\",\"help\":null,\"name\":\"\\u542f\\u7528\\u535a\\u5ba2\\u80cc\\u666f\",\"order\":50},\"base.website_seo_title\":{\"options\":[],\"element\":\"normal\",\"help\":\"\\u6b64\\u6807\\u9898\\u7528\\u4e8eSEO\\uff0c\\u53ef\\u4ee5\\u591a\\u52a0\\u4e00\\u4e9b\\u5173\\u952e\\u8bcd\\u3002\",\"name\":\"SEO\\u7ad9\\u70b9\\u6807\\u9898\",\"order\":10}}', '2019-08-29 03:06:19', '2019-10-16 09:30:40');
INSERT INTO `admin_config` VALUES ('4', 'base.website_title', 'Wei博客', '站点标题', '2019-08-29 03:38:36', '2020-01-03 06:47:37');
INSERT INTO `admin_config` VALUES ('5', 'base.website_switch', '1', '站点开关', '2019-08-29 03:40:54', '2019-09-30 09:03:10');
INSERT INTO `admin_config` VALUES ('6', 'base.website_keyword', 'php,博客,blog,建站,Laravel', '站点关键词', '2019-08-29 03:49:08', '2019-10-16 09:43:20');
INSERT INTO `admin_config` VALUES ('7', 'base.website_icon', 'files/85f609c82abf4a56cced64e7acd9701c.ico', '站点ICON', '2019-08-29 03:50:24', '2019-10-08 07:30:03');
INSERT INTO `admin_config` VALUES ('8', 'base.website_desc', '博客', '站点描述', '2019-08-29 03:54:15', '2020-01-03 06:47:37');
INSERT INTO `admin_config` VALUES ('9', 'base.website_keep', '湘ICP备17024317号', '备案信息', '2019-08-29 03:57:55', '2019-08-29 04:07:52');
INSERT INTO `admin_config` VALUES ('10', 'base.new_key_here', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=G-K9FS7QZ0R3\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'G-K9FS7QZ0R3\');\r\n</script>', '网站统计代码', '2019-08-29 03:59:17', '2019-10-22 02:48:54');
INSERT INTO `admin_config` VALUES ('11', 'user_info.user_qq', '1549684884', '个人QQ', '2019-08-29 04:10:20', '2019-08-29 04:11:01');
INSERT INTO `admin_config` VALUES ('12', 'user_info.user_wechat', 'leiyong208', '个人微信', '2019-08-29 04:10:40', '2019-08-29 04:11:01');
INSERT INTO `admin_config` VALUES ('13', 'user_info.full_name', 'wei', '个人姓名', '2019-09-02 09:43:58', '2020-01-03 06:46:15');
INSERT INTO `admin_config` VALUES ('14', 'user_info.portrait', 'images/8f63d894d4edc216ade7b61950ce9244.jpg', '个人头像', '2019-09-02 09:45:30', '2020-01-03 06:46:15');
INSERT INTO `admin_config` VALUES ('15', 'user_info.background', 'images/f3d12e826902d53c39e4b18c61c09f38.jpg', '个人背景', '2019-09-02 09:46:28', '2020-01-03 06:46:15');
INSERT INTO `admin_config` VALUES ('16', 'user_info.occupation', 'PHP世界上最好的语言', '个人职业', '2019-09-02 09:47:11', '2019-10-08 07:22:54');
INSERT INTO `admin_config` VALUES ('17', 'user_info.motto', '老当益壮，宁知白首之心；穷且益坚，不坠青云之志。', '个人座右铭', '2019-09-02 09:47:53', '2019-09-03 03:36:54');
INSERT INTO `admin_config` VALUES ('18', 'base.motto', '路漫漫其修远兮，吾将上下而求索', '尾部座右铭', '2019-09-02 09:56:46', '2019-09-02 09:57:21');
INSERT INTO `admin_config` VALUES ('19', 'base.website_background', 'files/567351328a4d2fc2b143df942b4373d5.jpg', '博客背景', '2019-09-30 08:24:21', '2019-10-17 12:32:53');
INSERT INTO `admin_config` VALUES ('20', 'base.website_open_bg', '0', '启用博客背景', '2019-09-30 08:58:21', '2019-10-17 12:34:42');
INSERT INTO `admin_config` VALUES ('21', 'base.website_seo_title', 'Wei博客', 'SEO站点标题', '2019-10-16 09:30:25', '2020-01-03 06:47:37');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '博客总览', 'fa-bar-chart', '/', null, null, '2019-08-26 04:24:14');
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '后台管理', 'fa-tasks', null, null, null, '2019-08-26 04:24:29');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '管理员', 'fa-users', 'auth/users', null, null, '2019-08-26 04:24:46');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色管理', 'fa-user', 'auth/roles', null, null, '2019-08-26 04:25:09');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '行为日志', 'fa-ban', 'auth/permissions', null, null, '2019-08-26 04:25:26');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单管理', 'fa-bars', 'auth/menu', null, null, '2019-08-26 04:25:36');
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '操作日志', 'fa-history', 'auth/logs', null, null, '2019-08-26 04:25:46');
INSERT INTO `admin_menu` VALUES ('8', '0', '8', '导航管理', 'fa-circle-o', null, null, '2019-08-26 04:26:29', '2019-08-27 08:35:57');
INSERT INTO `admin_menu` VALUES ('9', '8', '9', '导航列表', 'fa-align-justify', 'blog-navs', null, '2019-08-26 04:26:52', '2019-08-27 08:35:57');
INSERT INTO `admin_menu` VALUES ('11', '17', '11', '文章管理', 'fa-file-text-o', 'blog-nav-articles', null, '2019-08-27 08:30:57', '2019-08-27 08:35:57');
INSERT INTO `admin_menu` VALUES ('12', '17', '12', '相册管理', 'fa-photo', 'blog-nav-photos', null, '2019-08-27 08:31:17', '2019-08-27 08:35:57');
INSERT INTO `admin_menu` VALUES ('13', '17', '13', '歌单管理', 'fa-music', 'blog-nav-musics', null, '2019-08-27 08:32:37', '2019-08-27 08:35:57');
INSERT INTO `admin_menu` VALUES ('14', '17', '14', '视频管理', 'fa-video-camera', 'blog-nav-videos', null, '2019-08-27 08:32:54', '2019-08-27 11:20:38');
INSERT INTO `admin_menu` VALUES ('15', '17', '15', '分享卡片一', 'fa-credit-card-alt', 'blog-nav-share-ones', null, '2019-08-27 08:33:49', '2019-08-27 08:35:57');
INSERT INTO `admin_menu` VALUES ('16', '17', '16', '分享卡片二', 'fa-credit-card', 'blog-nav-share-twos', null, '2019-08-27 08:34:16', '2019-08-27 08:35:57');
INSERT INTO `admin_menu` VALUES ('17', '0', '10', '内容管理', 'fa-bars', null, null, '2019-08-27 08:34:52', '2019-08-27 08:35:57');
INSERT INTO `admin_menu` VALUES ('18', '0', '17', '留言管理', 'fa-envelope-o', null, null, '2019-08-28 08:31:21', '2019-08-29 06:08:35');
INSERT INTO `admin_menu` VALUES ('19', '18', '18', '留言列表', 'fa-file-text-o', 'blog-messages', null, '2019-08-28 08:32:24', '2019-08-29 06:08:35');
INSERT INTO `admin_menu` VALUES ('20', '0', '19', '友链管理', 'fa-unlink', null, null, '2019-08-28 14:53:51', '2019-08-29 06:08:35');
INSERT INTO `admin_menu` VALUES ('21', '20', '20', '链接列表', 'fa-link', 'blog-friends', null, '2019-08-28 14:59:05', '2019-08-29 06:08:35');
INSERT INTO `admin_menu` VALUES ('23', '0', '28', '网站管理', 'fa-cog', null, null, '2019-08-29 02:58:14', '2019-08-29 14:20:38');
INSERT INTO `admin_menu` VALUES ('24', '23', '29', '网站配置', 'fa-hospital-o', 'configx/edit', null, '2019-08-29 02:59:01', '2019-08-29 14:20:38');
INSERT INTO `admin_menu` VALUES ('28', '0', '21', '公告管理', 'fa-bullhorn', null, null, '2019-08-29 05:55:14', '2019-08-29 06:08:35');
INSERT INTO `admin_menu` VALUES ('29', '28', '22', '公告列表', 'fa-building-o', 'blog-notices', null, '2019-08-29 05:55:48', '2019-08-29 06:08:35');
INSERT INTO `admin_menu` VALUES ('30', '0', '23', '关于管理', 'fa-adn', null, null, '2019-08-29 06:27:23', '2019-08-29 14:20:38');
INSERT INTO `admin_menu` VALUES ('31', '30', '24', '关于列表', 'fa-align-left', 'blog-abouts', null, '2019-08-29 06:28:04', '2019-08-29 14:20:38');
INSERT INTO `admin_menu` VALUES ('32', '30', '25', '单页管理', 'fa-file-word-o', 'blog-about-articles', null, '2019-08-29 14:18:42', '2019-08-29 14:28:28');
INSERT INTO `admin_menu` VALUES ('33', '30', '26', '卡片管理', 'fa-credit-card', 'blog-about-card-ones', null, '2019-08-29 14:19:49', '2019-08-29 14:20:38');
INSERT INTO `admin_menu` VALUES ('34', '30', '27', '图标管理', 'fa-fonticons', 'blog-about-card-twos', null, '2019-08-29 14:20:18', '2019-08-29 14:20:38');
INSERT INTO `admin_menu` VALUES ('35', '0', '30', '订阅管理', 'fa-calendar-check-o', null, null, '2019-09-15 13:34:16', '2019-09-25 04:07:31');
INSERT INTO `admin_menu` VALUES ('36', '35', '31', '订阅列表', 'fa-bookmark', 'blog-subscribes', null, '2019-09-15 13:37:03', '2019-09-25 04:07:31');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `admin_operation_log_user_id_index` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin/blog-friends', 'GET', '113.109.21.15', '{\"_pjax\":\"#pjax-container\"}', '2019-10-22 06:07:17', '2019-10-22 06:07:17');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin/configx/edit', 'GET', '113.109.21.15', '{\"_pjax\":\"#pjax-container\"}', '2019-10-22 06:48:53', '2019-10-22 06:48:53');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/configx/edit/0', 'GET', '113.109.21.15', '{\"do\":\"new_config\",\"_pjax\":\"#pjax-container\"}', '2019-10-22 06:49:24', '2019-10-22 06:49:24');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin', 'GET', '113.109.21.15', '{\"_pjax\":\"#pjax-container\"}', '2019-10-22 07:29:53', '2019-10-22 07:29:53');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2020-01-03 05:04:58', '2020-01-03 05:04:58');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$WXgjWZV1EuEtTiMWyzakLu2Sf5C3JjbWJtTiqXu\\/B98FHiQxqcr72\",\"password_confirmation\":\"$2y$10$WXgjWZV1EuEtTiMWyzakLu2Sf5C3JjbWJtTiqXu\\/B98FHiQxqcr72\",\"_token\":\"HceyqvIDdsAdCMeWL8HuzhjWVHIX41omkzlOJvJV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/blog-notices\"}', '2020-01-03 05:05:25', '2020-01-03 05:05:25');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2020-01-03 05:05:25', '2020-01-03 05:05:25');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$WXgjWZV1EuEtTiMWyzakLu2Sf5C3JjbWJtTiqXu\\/B98FHiQxqcr72\",\"password_confirmation\":\"$2y$10$WXgjWZV1EuEtTiMWyzakLu2Sf5C3JjbWJtTiqXu\\/B98FHiQxqcr72\",\"_token\":\"HceyqvIDdsAdCMeWL8HuzhjWVHIX41omkzlOJvJV\",\"_method\":\"PUT\"}', '2020-01-03 05:05:34', '2020-01-03 05:05:34');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2020-01-03 05:05:34', '2020-01-03 05:05:34');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:05:41', '2020-01-03 05:05:41');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/blog-navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:05:45', '2020-01-03 05:05:45');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/blog-nav-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:05:47', '2020-01-03 05:05:47');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/blog-nav-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:05:50', '2020-01-03 05:05:50');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/blog-nav-articles', 'POST', '127.0.0.1', '{\"nav_id\":\"3\",\"article_title\":\"laravel\\u521d\\u5b66\",\"article_tag\":[\"php\",null],\"article_describe\":\"Laravel \\u662f\\u4f18\\u96c5\\u7684 PHP Web \\u5f00\\u53d1\\u6846\\u67b6\\u3002\\u5177\\u6709\\u9ad8\\u6548\\u3001\\u7b80\\u6d01\\u3001\\u5bcc\\u4e8e\\u8868\\u8fbe\\u529b\\u7b49\\u4f18\\u70b9\\u3002\\u91c7\\u7528 MVC \\u8bbe\\u8ba1\\uff0c\\u662f\\u5d07\\u5c1a\\u5f00\\u53d1\\u6548\\u7387\\u7684\\u5168\\u6808\\u6846\\u67b6\\u3002\\u662f\\u6700\\u53d7\\u5173\\u6ce8\\u7684 PHP \\u6846\\u67b6\\u3002\",\"article_content\":\"Laravel 6.0\\r\\nLaravel 6.0\\uff08LTS\\uff09\\u901a\\u8fc7\\u5f15\\u5165\\u8bed\\u4e49\\u5316\\u7248\\u672c\\u3001\\u4e0e Laravel Vapor \\u7684\\u517c\\u5bb9\\u6027\\u3001\\u4f18\\u5316\\u4e86\\u6388\\u6743\\u54cd\\u5e94\\u3001\\u4efb\\u52a1\\u4e2d\\u95f4\\u4ef6\\u3001\\u61d2\\u96c6\\u5408\\u3001\\u5b50\\u67e5\\u8be2\\u4f18\\u5316\\u3001\\u5e76\\u5c06\\u524d\\u7aef\\u811a\\u624b\\u67b6\\u5355\\u72ec\\u5206\\u79bb\\u5230 laravel\\/ui Composer \\u8f6f\\u4ef6\\u5305\\uff0c\\u4ee5\\u53ca\\u5176\\u4ed6\\u5404\\u79cd\\u9519\\u8bef\\u4fee\\u590d\\u548c\\u53ef\\u7528\\u6027\\u6539\\u8fdb\\u3002\\r\\n\\r\\n\\u8bed\\u4e49\\u7248\\u672c\\u63a7\\u5236\\r\\nlaravel \\u6846\\u67b6\\u6269\\u5c55\\u5305\\u73b0\\u5728\\u5f00\\u59cb\\u4f7f\\u7528\\u8bed\\u4e49\\u5316\\u7248\\u672c\\u3002\\u8fd9\\u4f7f\\u5f97\\u6846\\u67b6\\u4e0e\\u5df2\\u7ecf\\u9075\\u5faa\\u6b64\\u7248\\u672c\\u63a7\\u5236\\u6807\\u51c6\\u7684\\u5176\\u4ed6\\u7b2c\\u4e00\\u65b9 Laravel \\u5305\\u4fdd\\u6301\\u4e00\\u81f4\\u3002Laravel \\u53d1\\u5e03\\u5468\\u671f\\u5c06\\u4fdd\\u6301\\u4e0d\\u53d8\\u3002\\r\\n\\r\\nLaravel Vapor \\u517c\\u5bb9\\u6027\\r\\nLaravel Vapor \\u7531 Taylor Otwell \\u5f00\\u53d1\\u3002\\r\\n\\r\\nLaravel 6.0 \\u63d0\\u4f9b\\u4e86\\u4e0e Laravel Vapor \\u7684\\u517c\\u5bb9\\u6027\\uff0c\\u8fd9\\u662f\\u4e00\\u4e2a\\u7528\\u4e8e Laravel \\u7684\\u81ea\\u52a8\\u4f38\\u7f29\\u65e0\\u670d\\u52a1\\u5668\\u90e8\\u7f72\\u5e73\\u53f0\\u3002vapor \\u62bd\\u8c61\\u4e86\\u7ba1\\u7406 aws lambda \\u4e0a\\u7684 laravel \\u5e94\\u7528\\u7a0b\\u5e8f\\u7684\\u590d\\u6742\\u6027\\uff0c\\u4ee5\\u53ca\\u5c06\\u8fd9\\u4e9b\\u5e94\\u7528\\u7a0b\\u5e8f\\u4e0e sqs \\u961f\\u5217\\u3001\\u6570\\u636e\\u5e93\\u3001redis \\u96c6\\u7fa4\\u3001\\u7f51\\u7edc\\u3001 CloudFront CDN \\u7b49\\u63a5\\u53e3\\u7684\\u590d\\u6742\\u6027\\u3002\\r\\n\\r\\n\\u6539\\u8fdb\\u7684\\u5f02\\u5e38\\uff1aIgnition\\r\\nLaravel \\u81ea\\u5e26\\u4e86 Ignition\\uff0c\\u8fd9\\u662f\\u4e00\\u4e2a\\u7531 Freek Van der Herten \\u4e0e Marcel Pociot \\u521b\\u5efa\\u7684\\u5173\\u4e8e\\u5f02\\u5e38\\u8be6\\u60c5\\u9875\\u9762\\u7684\\u65b0\\u7684\\u5f00\\u6e90\\u9879\\u76ee\\u3002\\u76f8\\u8f83\\u4e4b\\u524d\\u7684\\u7248\\u672c\\uff0cIgnition \\u5177\\u6709\\u8bb8\\u591a\\u4f18\\u52bf\\uff0c\\u6bd4\\u5982\\u6539\\u8fdb\\u7684\\u9519\\u8bef\\u9875\\u9762 Blade \\u6587\\u4ef6\\u4e0e\\u884c\\u53f7\\u5904\\u7406\\u3001\\u5bf9\\u5e38\\u89c1\\u95ee\\u9898\\u7684\\u8fd0\\u884c\\u65f6\\u89e3\\u51b3\\u3001\\u4ee3\\u7801\\u7f16\\u8f91\\u3001\\u5f02\\u5e38\\u5171\\u4eab\\u4ee5\\u53ca\\u6539\\u8fdb\\u7684\\u7528\\u6237\\u4f53\\u9a8c\\u3002\\r\\n\\r\\n\\u6539\\u8fdb\\u7684\\u6388\\u6743\\u54cd\\u5e94\\r\\n\\u6539\\u8fdb\\u7684\\u6388\\u6743\\u54cd\\u5e94\\u7531 Gary Green \\u5b9e\\u73b0\\u3002\\r\\n\\r\\n\\u5728\\u4e4b\\u524d\\u7684 Laravel \\u7248\\u672c\\u4e2d\\uff0c\\u5f88\\u96be\\u63d0\\u53d6\\u5e76\\u5411\\u6700\\u7ec8\\u7684\\u7528\\u6237\\u5c55\\u793a\\u81ea\\u5b9a\\u4e49\\u7684\\u6388\\u6743\\u6d88\\u606f\\uff0c\\u8fd9\\u5c31\\u5bfc\\u81f4\\u4e86\\u5f88\\u96be\\u8ddf\\u6700\\u7ec8\\u7528\\u6237\\u89e3\\u91ca\\u67d0\\u4e2a\\u7279\\u5b9a\\u8bf7\\u6c42\\u4e3a\\u4ec0\\u4e48\\u4f1a\\u88ab\\u62d2\\u7edd\\u3002\\u5728 Laravel 6.0 \\u4e2d\\uff0c\\u4f7f\\u7528\\u6388\\u6743\\u54cd\\u5e94\\u6d88\\u606f\\u548c\\u65b0\\u65b9\\u6cd5 Gate::inspect \\u5c06\\u4f1a\\u8ba9\\u4e8b\\u60c5\\u53d8\\u5f97\\u66f4\\u52a0\\u5bb9\\u6613\\u3002\\u6bd4\\u5982\\uff0c\\u7ed9\\u5b9a\\u4ee5\\u4e0b\\u6388\\u6743\\u7b56\\u7565\\uff08Policy\\uff09\\u65b9\\u6cd5\\uff1a\",\"article_click\":\"0\",\"article_sort\":\"100\",\"article_show\":\"on\",\"_token\":\"HceyqvIDdsAdCMeWL8HuzhjWVHIX41omkzlOJvJV\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/blog-nav-articles\"}', '2020-01-03 05:07:28', '2020-01-03 05:07:28');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/blog-nav-articles', 'GET', '127.0.0.1', '[]', '2020-01-03 05:07:29', '2020-01-03 05:07:29');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/blog-nav-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:07:33', '2020-01-03 05:07:33');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/blog-nav-articles', 'POST', '127.0.0.1', '{\"nav_id\":\"3\",\"article_title\":\"laravel eloquent ORM\",\"article_tag\":[\"ORM\",\"php\",null],\"article_describe\":\"Eloquent \\u662f Laravel \\u7684 \'ORM\'\\uff0c\\u5373 \'Object Relational Mapping\'\\uff0c\\u5bf9\\u8c61\\u5173\\u7cfb\\u6620\\u5c04\\u3002ORM \\u7684\\u51fa\\u73b0\\u662f\\u4e3a\\u4e86\\u5e2e\\u6211\\u4eec\\u628a\\u5bf9\\u6570\\u636e\\u5e93\\u7684\\u64cd\\u4f5c\\u53d8\\u5f97\\u66f4\\u52a0\\u5730\\u65b9\\u4fbf\\u3002\\r\\n\\r\\nEloquent \\u8ba9\\u4e00\\u4e2a \'Model\\u7c7b\' \\u5bf9\\u5e94\\u4e00\\u5f20\\u6570\\u636e\\u5e93\\u8868\\uff0c\\u5e76\\u4e14\\u5728\\u5e95\\u5c42\\u5c01\\u88c5\\u4e86\\u5f88\\u591a \'function\'\\uff0c\\u53ef\\u4ee5\\u8ba9 Model \\u7c7b\\u975e\\u5e38\\u65b9\\u4fbf\\u5730\\u8c03\\u7528\\u3002\",\"article_content\":\"1. \\u6bcf\\u4e00\\u4e2a\\u7ee7\\u627f\\u4e86 Eloquent \\u7684\\u7c7b\\u90fd\\u6709\\u4e24\\u4e2a \'\\u56fa\\u5b9a\\u7528\\u6cd5\' \'Article::find($number)\' \'Article::all()\'\\uff0c\\u524d\\u8005\\u4f1a\\u5f97\\u5230\\u4e00\\u4e2a\\u5e26\\u6709\\u6570\\u636e\\u5e93\\u4e2d\\u53d6\\u51fa\\u6765\\u503c\\u7684\\u5bf9\\u8c61\\uff0c\\u540e\\u8005\\u4f1a\\u5f97\\u5230\\u4e00\\u4e2a\\u5305\\u542b\\u6574\\u4e2a\\u6570\\u636e\\u5e93\\u7684\\u5bf9\\u8c61\\u5408\\u96c6\\u3002\\r\\n\\r\\n2. \\u6240\\u6709\\u7684\\u4e2d\\u95f4\\u65b9\\u6cd5\\u5982 \'where()\' \'orderBy()\' \\u7b49\\u90fd\\u80fd\\u591f\\u540c\\u65f6\\u652f\\u6301 \'\\u9759\\u6001\' \\u548c \'\\u975e\\u9759\\u6001\\u94fe\\u5f0f\' \\u4e24\\u79cd\\u65b9\\u5f0f\\u8c03\\u7528\\uff0c\\u5373 \'Article::where()...\' \\u548c \'Article::....->where()\'\\u3002\\r\\n\\r\\n3. \\u6240\\u6709\\u7684 \'\\u975e\\u56fa\\u5b9a\\u7528\\u6cd5\' \\u7684\\u8c03\\u7528\\u6700\\u540e\\u90fd\\u9700\\u8981\\u4e00\\u4e2a\\u64cd\\u4f5c\\u6765 \'\\u6536\\u5c3e\'\\uff0c\\u672c\\u7247\\u6559\\u7a0b\\u4e2d\\u6709\\u4e24\\u4e2a \'\\u6536\\u5c3e\\u64cd\\u4f5c\'\\uff1a\'->get()\' \\u548c \'->first()\'\\u3002\\r\\n\\r\\n4. \\u5982\\u679c\\u4f60\\u4e0d\\u7406\\u89e3\\u4e3a\\u4ec0\\u4e48 \'Article\' \\u8fd9\\u4e2a\\u7c7b\\u53ef\\u4ee5\\u4f7f\\u7528 \'->where()\' \'->get()\' \\u7b49\\u5f88\\u591a\\u65b9\\u6cd5\\u7684\\u8bdd\\uff0c\\u8bf4\\u660e\\u4f60\\u9700\\u8981\\u53bb\\u8bfb\\u4e00\\u4e0b PHP \\u5bf9\\u8c61\\u7ee7\\u627f\\u7684\\u6587\\u6863\\u4e86\\uff1a\\u5bf9\\u8c61\\u7ee7\\u627f\\u3002\",\"article_click\":\"0\",\"article_sort\":\"100\",\"article_show\":\"on\",\"_token\":\"HceyqvIDdsAdCMeWL8HuzhjWVHIX41omkzlOJvJV\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/blog-nav-articles\"}', '2020-01-03 05:08:54', '2020-01-03 05:08:54');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/blog-nav-articles', 'GET', '127.0.0.1', '[]', '2020-01-03 05:08:54', '2020-01-03 05:08:54');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/blog-nav-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:09:02', '2020-01-03 05:09:02');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/blog-nav-articles', 'POST', '127.0.0.1', '{\"nav_id\":\"3\",\"article_title\":\"laravel artisan\",\"article_tag\":[\"laravel\",\"php\",\"artisan\",null],\"article_describe\":\"Artisan \\u662f Laravel \\u4e2d\\u81ea\\u5e26\\u7684\\u547d\\u4ee4\\u884c\\u5de5\\u5177\\u7684\\u540d\\u79f0\\u3002\\u5b83\\u63d0\\u4f9b\\u4e86\\u4e00\\u4e9b\\u5bf9\\u60a8\\u7684\\u5e94\\u7528\\u5f00\\u53d1\\u6709\\u5e2e\\u52a9\\u7684\\u547d\\u4ee4\\u3002\\u5b83\\u662f\\u7531\\u5f3a\\u5927\\u7684 Symfony Console \\u7ec4\\u4ef6\\u9a71\\u52a8\\u7684\\u3002\",\"article_content\":\"\\u8def\\u7531\\u64cd\\u4f5c\\r\\n\\u67e5\\u770b\\u8def\\u7531\\u5217\\u8868\\r\\n\\r\\nphp artisan route:list\\r\\n\\u751f\\u6210\\u8def\\u7531\\u7f13\\u5b58\\r\\n\\r\\nphp artisan route:cache\\r\\n\\u6e05\\u695a\\u8def\\u7531\\u7f13\\u5b58\\r\\n\\r\\nphp artisan route:clear\\r\\n\\u5efa\\u8bae\\u9879\\u76ee\\u4e0a\\u7ebf\\u65f6\\u521b\\u5efa\\u8def\\u7531\\u7f13\\u5b58\\r\\n\\r\\n\\u751f\\u6210\\u6587\\u4ef6\\u64cd\\u4f5c\\r\\n\\u521b\\u5efa\\u6a21\\u578b\\r\\n\\r\\nphp artisan make:model ModelName\\r\\n\\u4e00\\u5e76\\u521b\\u5efa\\u8fc1\\u79fb\\u6587\\u4ef6\\uff0c\\u672b\\u5c3e\\u8ffd\\u52a0 -m \\uff08migration \\u7684\\u610f\\u601d\\uff09\\r\\n\\r\\n php artisan make:model ModelName -m\\r\\n\\u6307\\u5b9a\\u76ee\\u5f55\\u521b\\u5efa\\uff0c\\u6a21\\u578b\\u9ed8\\u8ba4\\u521b\\u5efa\\u5728 App \\u547d\\u4ee4\\u7a7a\\u95f4\\u4e0b\\r\\n\\r\\n php artisan make:model FileName\\/ModelName -m\\r\\n\\u521b\\u5efa\\u63a7\\u5236\\u5668\\r\\n\\r\\nphp artisan make:controller IndexController\\r\\n\\u6307\\u5b9a\\u76ee\\u5f55\\u521b\\u5efa\\uff0c\\u9ed8\\u8ba4\\u521b\\u5efa\\u5728 App\\\\Http\\\\Controllers \\u547d\\u540d\\u7a7a\\u95f4\\u4e0b\\r\\n\\r\\nphp artisan make:controller FileName\\/IndexController\\r\\n\\u521b\\u5efa Rest \\u98ce\\u683c\\u8d44\\u6e90\\u63a7\\u5236\\u5668\\uff08\\u5e26\\u6709 index\\u3001create\\u3001store\\u3001edit\\u3001update\\u3001destroy\\u3001show \\u65b9\\u6cd5\\uff09\\uff0c\\u53ea\\u9700\\u8981\\u5728\\u672b\\u5c3e\\u8ffd\\u52a0 --resource\\r\\n\\r\\nphp artisan make:controller IndexController --resource\\r\\n\\u521b\\u5efa\\u4e2d\\u95f4\\u4ef6\\r\\n\\r\\nphp artisan make:middleware MiddlewareName\",\"article_click\":\"0\",\"article_sort\":\"100\",\"article_show\":\"on\",\"_token\":\"HceyqvIDdsAdCMeWL8HuzhjWVHIX41omkzlOJvJV\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/blog-nav-articles\"}', '2020-01-03 05:11:11', '2020-01-03 05:11:11');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/blog-nav-articles', 'GET', '127.0.0.1', '[]', '2020-01-03 05:11:12', '2020-01-03 05:11:12');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/blog-notices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:36:21', '2020-01-03 05:36:21');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/blog-notices/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:36:23', '2020-01-03 05:36:23');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/blog-notices', 'POST', '127.0.0.1', '{\"notice_title\":\"\\u521d\\u6b21\\u89c1\\u9762\",\"notice_content\":\"<p>\\u6b22\\u8fce\\u4f60\\u8bbf\\u95ee\\u672c\\u535a\\u5ba2<\\/p>\",\"notice_sort\":\"100\",\"notice_show\":\"on\",\"_token\":\"HceyqvIDdsAdCMeWL8HuzhjWVHIX41omkzlOJvJV\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/blog-notices\"}', '2020-01-03 05:36:44', '2020-01-03 05:36:44');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/blog-notices', 'GET', '127.0.0.1', '[]', '2020-01-03 05:36:44', '2020-01-03 05:36:44');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/blog-nav-musics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:56:37', '2020-01-03 05:56:37');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/blog-nav-musics/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:56:39', '2020-01-03 05:56:39');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/blog-nav-videos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:57:09', '2020-01-03 05:57:09');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/blog-nav-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:58:52', '2020-01-03 05:58:52');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/blog-nav-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:58:54', '2020-01-03 05:58:54');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/blog-abouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:59:13', '2020-01-03 05:59:13');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/blog-about-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:59:20', '2020-01-03 05:59:20');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:59:38', '2020-01-03 05:59:38');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/blog-subscribes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 05:59:56', '2020-01-03 05:59:56');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/blog-navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:00:10', '2020-01-03 06:00:10');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/blog-navs', 'POST', '127.0.0.1', '{\"nav_pid\":\"1\",\"nav_title\":\"git\",\"nav_type\":\"0\",\"nav_open\":\"on\",\"nav_sort\":\"98\",\"_token\":\"HceyqvIDdsAdCMeWL8HuzhjWVHIX41omkzlOJvJV\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/blog-subscribes\"}', '2020-01-03 06:00:30', '2020-01-03 06:00:30');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/blog-subscribes', 'GET', '127.0.0.1', '[]', '2020-01-03 06:00:30', '2020-01-03 06:00:30');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:00:36', '2020-01-03 06:00:36');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/blog-navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:00:37', '2020-01-03 06:00:37');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/blog-nav-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:00:45', '2020-01-03 06:00:45');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/blog-nav-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:00:46', '2020-01-03 06:00:46');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/blog-nav-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:00:57', '2020-01-03 06:00:57');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/blog-navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:01:05', '2020-01-03 06:01:05');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/blog-navs/19', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"HceyqvIDdsAdCMeWL8HuzhjWVHIX41omkzlOJvJV\"}', '2020-01-03 06:01:13', '2020-01-03 06:01:13');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/blog-navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:01:13', '2020-01-03 06:01:13');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/blog-navs', 'POST', '127.0.0.1', '{\"nav_pid\":\"0\",\"nav_title\":\"git\",\"nav_type\":\"0\",\"nav_open\":\"on\",\"nav_sort\":\"100\",\"_token\":\"HceyqvIDdsAdCMeWL8HuzhjWVHIX41omkzlOJvJV\"}', '2020-01-03 06:01:17', '2020-01-03 06:01:17');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/blog-navs', 'GET', '127.0.0.1', '[]', '2020-01-03 06:01:18', '2020-01-03 06:01:18');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/blog-nav-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:01:23', '2020-01-03 06:01:23');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/blog-nav-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:01:24', '2020-01-03 06:01:24');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/blog-navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:01:41', '2020-01-03 06:01:41');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/blog-navs/20', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"HceyqvIDdsAdCMeWL8HuzhjWVHIX41omkzlOJvJV\"}', '2020-01-03 06:01:50', '2020-01-03 06:01:50');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/blog-navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:01:50', '2020-01-03 06:01:50');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/blog-navs', 'POST', '127.0.0.1', '{\"nav_pid\":\"1\",\"nav_title\":\"git\",\"nav_type\":\"0\",\"nav_open\":\"on\",\"nav_sort\":\"100\",\"_token\":\"HceyqvIDdsAdCMeWL8HuzhjWVHIX41omkzlOJvJV\"}', '2020-01-03 06:01:55', '2020-01-03 06:01:55');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/blog-navs', 'GET', '127.0.0.1', '[]', '2020-01-03 06:01:55', '2020-01-03 06:01:55');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/blog-nav-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:02:01', '2020-01-03 06:02:01');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/blog-nav-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:02:02', '2020-01-03 06:02:02');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/blog-nav-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:02:16', '2020-01-03 06:02:16');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/blog-navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:02:20', '2020-01-03 06:02:20');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/blog-navs/21/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:02:24', '2020-01-03 06:02:24');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/blog-navs/21', 'PUT', '127.0.0.1', '{\"nav_pid\":\"1\",\"nav_title\":\"git\",\"nav_type\":\"1\",\"nav_open\":\"on\",\"nav_sort\":\"100\",\"_token\":\"HceyqvIDdsAdCMeWL8HuzhjWVHIX41omkzlOJvJV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/blog-navs\"}', '2020-01-03 06:02:31', '2020-01-03 06:02:31');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/blog-navs', 'GET', '127.0.0.1', '[]', '2020-01-03 06:02:31', '2020-01-03 06:02:31');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/blog-nav-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:02:36', '2020-01-03 06:02:36');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/blog-nav-articles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:02:38', '2020-01-03 06:02:38');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/blog-nav-articles', 'POST', '127.0.0.1', '{\"nav_id\":\"21\",\"article_title\":\"git\\u7b80\\u5355\\u4f7f\\u7528\",\"article_tag\":[\"git\",null],\"article_describe\":\"git \\u5de5\\u4f5c\\u5e38\\u7528\",\"article_content\":\"git\\r\\n\\r\\ngit branch \'test\'  \\u521b\\u5efa\\u5206\\u652f\\r\\ngit branch  \\u67e5\\u770b\\u6240\\u6709\\u5206\\u652f\\r\\ngit checkout \'test\' \\u5207\\u6362\\u5206\\u652f              \\t  \\r\\ngit add .  \\u63d0\\u4ea4\\u5230\\u4e0a\\u4f20\\u4f4d\\u7f6e\\r\\ngit commit -m \'dsaf\' \\u4e0a\\u4f20\\u6587\\u4ef6\\u6dfb\\u52a0\\u5bf9\\u5e94\\u5907\\u6ce8\\u4fe1\\u606f\\r\\ngit push origin test  \\u63d0\\u4ea4\\u4ee3\\u7801\\u5230\\u5bf9\\u5e94\\u5206\\u652f \\r\\n\\r\\ngit checkout master  \\u5207\\u6362\\u5230master\\u4e3b\\u5206\\u652f\\r\\ngit merge test \\u5408\\u5e76\\u5206\\u652f\\r\\ngit push    \\u63d0\\u4ea4\\u5230\\u4e3b\\u5206\\u652f\\r\\n\\r\\n\\u4e3b\\u5206\\u652f\\u5207\\u6362\\u5176\\u4ed6\\u5206\\u652f\\u9700\\u8981 git checkout  test  \\r\\n\\u5176\\u4ed6\\u5206\\u652f\\u5207\\u6362\\u4e3b\\u5206\\u652f\\u9700\\u8981 git checkout -b test\\r\\n\\r\\ngit\\u4e0a\\u4f20\\u51b2\\u7a81\\r\\ngit status \\u67e5\\u770b\\u662f\\u5426\\u62a5\\u9519\\r\\n\\u5982\\u679c\\u62a5\\u9519 \\u662f\\u540c\\u4e00\\u5904\\u4ee3\\u7801\\u51b2\\u7a81 \\u9700\\u91cd\\u65b0\\u62c9\\u4ee3\\u7801\\uff0c\\u8fdb\\u884c\\u4fee\\u6539\\r\\n\\u672a\\u62a5\\u9519 \\u4e0d\\u662f\\u540c\\u4e00\\u5904\\u4ee3\\u7801\\u51b2\\u7a81\",\"article_click\":\"3\",\"article_sort\":\"100\",\"article_show\":\"on\",\"_token\":\"HceyqvIDdsAdCMeWL8HuzhjWVHIX41omkzlOJvJV\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/blog-nav-articles\"}', '2020-01-03 06:03:19', '2020-01-03 06:03:19');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/blog-nav-articles', 'GET', '127.0.0.1', '[]', '2020-01-03 06:03:19', '2020-01-03 06:03:19');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/blog-navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:45:27', '2020-01-03 06:45:27');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:45:35', '2020-01-03 06:45:35');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/blog-navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:45:37', '2020-01-03 06:45:37');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/blog-nav-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:45:41', '2020-01-03 06:45:41');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/blog-notices', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:45:47', '2020-01-03 06:45:47');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/blog-abouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:45:48', '2020-01-03 06:45:48');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/blog-about-articles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:45:53', '2020-01-03 06:45:53');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/blog-about-card-ones', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:45:55', '2020-01-03 06:45:55');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/blog-about-card-twos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:45:56', '2020-01-03 06:45:56');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:45:59', '2020-01-03 06:45:59');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"c_5_\":\"1\",\"c_21_\":\"Laravel\\u8bd7\\u8bcd\\u535a\\u5ba2_\\u96f7\\u52c7\\u535a\\u5ba2_Laravel\\u535a\\u5ba2_Laravel\\u6846\\u67b6_PHP\\u6846\\u67b6\",\"c_4_\":\"Laravel\\u8bd7\\u8bcd\\u535a\\u5ba2\",\"c_6_\":[\"php\",\"\\u535a\\u5ba2\",\"blog\",\"\\u5efa\\u7ad9\",\"Laravel\",null],\"c_8_\":\"\\u535a\\u5ba2\\uff0c\\u4e2a\\u4eba\\u535a\\u5ba2\\uff0c\\u535a\\u5ba2\\u6a21\\u677f\\uff0c\\u96f7\\u52c7\\u4e2a\\u4eba\\u535a\\u5ba2\\uff0c\\u96f7\\u52c7PHP\\u535a\\u5ba2\\uff0claravel\\u5b66\\u4e60\\uff0claravel\\u535a\\u5ba2\\uff0claravel\\u8bba\\u575b\\uff0cPHP\\u8bba\\u575b\\uff0cPHP\\u535a\\u5ba2\\uff0c\\u7f51\\u7ad9\\u6a21\\u677f\\uff0c\\u535a\\u5ba2\\u7f51\\u7ad9\\uff0c\\u4e2a\\u4eba\\u7f51\\u7ad9\\uff0c\\u4e2a\\u4eba\\u535a\\u5ba2\\u6a21\\u677f\\uff0c\\u4e2a\\u4eba\\u535a\\u5ba2\\u7f51\\u7ad9\\uff0c\\u4e2a\\u4eba\\u7f51\\u7ad9\\u6a21\\u677f\\uff0c\\u539f\\u521b\\u7f51\\u7ad9\\u6a21\\u677f\\uff0c\\u539f\\u521b\\u535a\\u5ba2\\u6a21\\u677f\\uff0c\\u4e2a\\u4eba\\u539f\\u521b\\u6a21\\u677f\\uff0c\\u514d\\u8d39\\u7f51\\u7ad9\\u6a21\\u677f\\uff0c\\u4e2a\\u4eba\\u535a\\u5ba2\\u514d\\u8d39\\u6a21\\u677f\\uff0c\\u4e2a\\u4eba\\u7f51\\u7ad9\\u514d\\u8d39\\u6a21\\u677f\\uff0c\\u4e2a\\u4eba\\u535a\\u5ba2\\u6a21\\u677f\\u514d\\u8d39\\u4e0b\\u8f7d\\uff0c\\u4e2a\\u4eba\\u7f51\\u7ad9\\u6a21\\u677f\\u514d\\u8d39\\u4e0b\\u8f7d\",\"c_9_\":\"\\u6e58ICP\\u590717024317\\u53f7\",\"c_10_\":\"<!-- Global site tag (gtag.js) - Google Analytics -->\\r\\n<script async src=\\\"https:\\/\\/www.googletagmanager.com\\/gtag\\/js?id=G-K9FS7QZ0R3\\\"><\\/script>\\r\\n<script>\\r\\n  window.dataLayer = window.dataLayer || [];\\r\\n  function gtag(){dataLayer.push(arguments);}\\r\\n  gtag(\'js\', new Date());\\r\\n\\r\\n  gtag(\'config\', \'G-K9FS7QZ0R3\');\\r\\n<\\/script>\",\"c_18_\":\"\\u8def\\u6f2b\\u6f2b\\u5176\\u4fee\\u8fdc\\u516e\\uff0c\\u543e\\u5c06\\u4e0a\\u4e0b\\u800c\\u6c42\\u7d22\",\"c_20_\":\"0\",\"c_13_\":\"wei\",\"c_16_\":\"PHP\\u4e16\\u754c\\u4e0a\\u6700\\u597d\\u7684\\u8bed\\u8a00\",\"c_17_\":\"\\u8001\\u5f53\\u76ca\\u58ee\\uff0c\\u5b81\\u77e5\\u767d\\u9996\\u4e4b\\u5fc3\\uff1b\\u7a77\\u4e14\\u76ca\\u575a\\uff0c\\u4e0d\\u5760\\u9752\\u4e91\\u4e4b\\u5fd7\\u3002\",\"c_11_\":\"1549684884\",\"c_12_\":\"leiyong208\",\"tabindex\":\"1\",\"do\":null,\"_token\":\"HceyqvIDdsAdCMeWL8HuzhjWVHIX41omkzlOJvJV\"}', '2020-01-03 06:46:15', '2020-01-03 06:46:15');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2020-01-03 06:46:15', '2020-01-03 06:46:15');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"c_5_\":\"1\",\"c_21_\":\"Wei\\u535a\\u5ba2\",\"c_4_\":\"Wei\\u535a\\u5ba2\",\"c_6_\":[\"php\",\"\\u535a\\u5ba2\",\"blog\",\"\\u5efa\\u7ad9\",\"Laravel\",null],\"c_8_\":\"\\u535a\\u5ba2\",\"c_9_\":\"\\u6e58ICP\\u590717024317\\u53f7\",\"c_10_\":\"<!-- Global site tag (gtag.js) - Google Analytics -->\\r\\n<script async src=\\\"https:\\/\\/www.googletagmanager.com\\/gtag\\/js?id=G-K9FS7QZ0R3\\\"><\\/script>\\r\\n<script>\\r\\n  window.dataLayer = window.dataLayer || [];\\r\\n  function gtag(){dataLayer.push(arguments);}\\r\\n  gtag(\'js\', new Date());\\r\\n\\r\\n  gtag(\'config\', \'G-K9FS7QZ0R3\');\\r\\n<\\/script>\",\"c_18_\":\"\\u8def\\u6f2b\\u6f2b\\u5176\\u4fee\\u8fdc\\u516e\\uff0c\\u543e\\u5c06\\u4e0a\\u4e0b\\u800c\\u6c42\\u7d22\",\"c_20_\":\"0\",\"c_13_\":\"wei\",\"c_16_\":\"PHP\\u4e16\\u754c\\u4e0a\\u6700\\u597d\\u7684\\u8bed\\u8a00\",\"c_17_\":\"\\u8001\\u5f53\\u76ca\\u58ee\\uff0c\\u5b81\\u77e5\\u767d\\u9996\\u4e4b\\u5fc3\\uff1b\\u7a77\\u4e14\\u76ca\\u575a\\uff0c\\u4e0d\\u5760\\u9752\\u4e91\\u4e4b\\u5fd7\\u3002\",\"c_11_\":\"1549684884\",\"c_12_\":\"leiyong208\",\"tabindex\":\"0\",\"do\":null,\"_token\":\"HceyqvIDdsAdCMeWL8HuzhjWVHIX41omkzlOJvJV\"}', '2020-01-03 06:47:37', '2020-01-03 06:47:37');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2020-01-03 06:47:37', '2020-01-03 06:47:37');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-03 06:50:36', '2020-01-03 06:50:36');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_permissions_name_unique` (`name`) USING BTREE,
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `admin_permissions` VALUES ('6', 'Admin Configx', 'ext.configx', null, '/configx/*', '2019-08-29 02:56:32', '2019-08-29 02:56:32');
INSERT INTO `admin_permissions` VALUES ('7', 'Admin Config', 'ext.config', null, '/config*', '2019-08-29 03:05:14', '2019-08-29 03:05:14');
INSERT INTO `admin_permissions` VALUES ('10', 'Redis Manager', 'ext.redis-manager', null, '/redis*', '2019-10-07 08:26:10', '2019-10-07 08:26:10');

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_roles_name_unique` (`name`) USING BTREE,
  UNIQUE KEY `admin_roles_slug_unique` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2019-08-26 04:18:57', '2019-08-26 04:18:57');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_users_username_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$WXgjWZV1EuEtTiMWyzakLu2Sf5C3JjbWJtTiqXu/B98FHiQxqcr72', 'Administrator', 'images/5dd53c68cfbc0de3bc0eb13721706ce1.jpg', '90pf4cYtTfayIFGhh7o6ZeXhhtmMdPJ4NB1WpxEAZPusKFAaLiUb7XguJyg0', '2019-08-26 04:18:57', '2020-01-03 05:05:34');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for blog_about
-- ----------------------------
DROP TABLE IF EXISTS `blog_about`;
CREATE TABLE `blog_about` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `about_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关于标题',
  `about_describe` text COLLATE utf8mb4_unicode_ci COMMENT '关于描述',
  `about_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关于类型【1单页2卡片页3图标页】',
  `about_sort` int(11) NOT NULL DEFAULT '100' COMMENT '关于排序',
  `about_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示【1是2否】',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_about
-- ----------------------------
INSERT INTO `blog_about` VALUES ('1', '自我介绍', '海鲜，尤其是虾，砷的含量比较高。特别是当今海水和海鲜都不同程度受到污染，海水里和海鲜里砷的含量也相对比以前高。因为海鲜里含有的砷为五价砷，人食用 后是无毒的。但是，如果将海鲜与维生素C一起食用，因为后者具有还原作用，会将五价砷转变成三价砷（三氧化二砷），而三价砷就是砒霜，是有毒的。', '1', '100', '1', '2019-08-29 07:35:54', '2019-10-08 09:43:59');
INSERT INTO `blog_about` VALUES ('2', '我的技能', '炖鸡、鸭、蹄汤里面油脂成分太重，建议吃肉不喝汤；补钙请喝牛奶，吃钙片；哦，对了，正常科学饮食、喝奶奶、可晒温热太阳的小朋友就不用额外补钙了。', '2', '100', '1', '2019-08-29 07:36:03', '2019-10-08 09:44:44');
INSERT INTO `blog_about` VALUES ('3', '我的爱好', '朋友在网上卖蓝牙耳机的，这天跟我说买家给了个好评，差点没把我笑趴下。评论是这样写的;耳机真心不错，信号场强，听着电话逛了三条街才发现手机被偷了。', '3', '100', '1', '2019-08-29 07:36:17', '2019-10-09 07:24:41');

-- ----------------------------
-- Table structure for blog_about_articles
-- ----------------------------
DROP TABLE IF EXISTS `blog_about_articles`;
CREATE TABLE `blog_about_articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `articles_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '单页标题',
  `articles_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '单页内容',
  `article_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示【1是2否】',
  `article_sort` int(11) NOT NULL DEFAULT '100' COMMENT '单页排序',
  `notice_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属关于id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_about_articles
-- ----------------------------

-- ----------------------------
-- Table structure for blog_about_card_ones
-- ----------------------------
DROP TABLE IF EXISTS `blog_about_card_ones`;
CREATE TABLE `blog_about_card_ones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `card_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '卡片标题',
  `card_icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '卡片ICON',
  `card_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '卡片描述',
  `card_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示【1是2否】',
  `card_sort` int(11) NOT NULL DEFAULT '100' COMMENT '卡片排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notice_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属关于id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_about_card_ones
-- ----------------------------

-- ----------------------------
-- Table structure for blog_about_card_twos
-- ----------------------------
DROP TABLE IF EXISTS `blog_about_card_twos`;
CREATE TABLE `blog_about_card_twos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `card_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '卡片标题',
  `card_icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '卡片ICON',
  `card_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示【1是2否】',
  `card_sort` int(11) NOT NULL DEFAULT '100' COMMENT '卡片排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `card_background` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卡片背景',
  `updated_at` timestamp NULL DEFAULT NULL,
  `notice_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属关于id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_about_card_twos
-- ----------------------------

-- ----------------------------
-- Table structure for blog_apply
-- ----------------------------
DROP TABLE IF EXISTS `blog_apply`;
CREATE TABLE `blog_apply` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `apply_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '申请人博客名称',
  `apply_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '申请人博客网址',
  `apply_contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '申请人联系方式',
  `apply_ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '申请人IP',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_apply
-- ----------------------------

-- ----------------------------
-- Table structure for blog_friends
-- ----------------------------
DROP TABLE IF EXISTS `blog_friends`;
CREATE TABLE `blog_friends` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `friends_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '博客名称',
  `friends_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '博客链接',
  `friends_describe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '博客描述',
  `friends_contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系方式',
  `friends_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示【1是2否】',
  `friends_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '添加方式【1申请添加2后台添加】',
  `friends_sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `friends_recommend` tinyint(1) NOT NULL DEFAULT '2' COMMENT '是否推荐【1是2否】',
  `friends_examine` tinyint(1) DEFAULT '2' COMMENT '审核状态【1通过2正在审核3审核失败】',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_friends
-- ----------------------------
INSERT INTO `blog_friends` VALUES ('1', 'Laravel诗词博客', 'https://qqphp.com', 'Laravel诗词博客-匠心编程，热爱生活。', 'https://qqphp.com', '1', '2', '999999', '2', '1', '2019-10-12 11:54:15', '2019-10-16 07:54:05');
INSERT INTO `blog_friends` VALUES ('2', 'LearnKu', 'https://learnku.com', '专为终身学习者定制的编程知识社区', 'https://learnku.com', '1', '2', '100', '1', '1', '2019-10-12 11:58:15', '2019-10-12 11:58:55');
INSERT INTO `blog_friends` VALUES ('4', 'Laravel-admin', 'https://laravel-admin.org/', '在十分钟内构建一个功能齐全的管理后台', 'https://laravel-admin.org/', '1', '2', '100', '1', '1', '2019-10-12 12:31:51', '2019-10-12 12:31:51');
INSERT INTO `blog_friends` VALUES ('5', '创意蒂姆', 'https://creative-tim.com/', '完全编码的UI工具可创建Web和移动应用。', 'https://creative-tim.com/', '1', '2', '100', '1', '1', '2019-10-12 12:32:46', '2019-10-12 12:32:46');
INSERT INTO `blog_friends` VALUES ('8', '宝塔面板', 'https://www.bt.cn', '简单好用的服务器运维面板。', 'https://www.bt.cn', '1', '2', '100', '1', '1', '2019-10-16 07:43:01', '2019-10-16 07:43:14');
INSERT INTO `blog_friends` VALUES ('9', 'PhpStudy', 'https://www.xp.cn', '为服务器环境提供最优配置的解决方案。', 'https://www.xp.cn', '1', '2', '100', '1', '1', '2019-10-16 07:44:36', '2019-10-16 07:44:42');
INSERT INTO `blog_friends` VALUES ('10', 'Layui', 'https://www.layui.com', '经典模块化前端框架', 'https://www.layui.com', '1', '2', '100', '1', '1', '2019-10-16 07:47:31', '2019-10-16 07:47:31');
INSERT INTO `blog_friends` VALUES ('11', 'Editor.md', 'http://editor.md.ipandao.com/', '开源在线 Markdown 编辑器', 'http://editor.md.ipandao.com/', '1', '2', '100', '1', '1', '2019-10-16 07:49:57', '2019-10-16 07:49:57');
INSERT INTO `blog_friends` VALUES ('12', 'Laravel', 'https://laravel.com/', 'Web Artisans的PHP框架。', 'https://laravel.com/', '1', '2', '100', '1', '1', '2019-10-16 07:51:04', '2019-10-16 07:51:04');
INSERT INTO `blog_friends` VALUES ('13', 'JetBrains', 'https://www.jetbrains.com', '专业人员和团队的开发工具', 'https://www.jetbrains.com', '1', '2', '100', '1', '1', '2019-10-16 07:53:02', '2019-10-16 07:53:02');
INSERT INTO `blog_friends` VALUES ('14', '阿里云', 'https://www.aliyun.com', '上云就上阿里云', 'https://www.aliyun.com', '1', '2', '100', '1', '1', '2019-10-16 07:53:50', '2019-10-16 07:53:50');
INSERT INTO `blog_friends` VALUES ('15', 'ThinkPHP', 'http://www.thinkphp.cn', '中文最佳实践PHP开源框架,专注WEB应用快速开发8年！', 'http://www.thinkphp.cn', '1', '2', '100', '1', '1', '2019-10-17 07:41:07', '2019-10-17 07:41:07');
INSERT INTO `blog_friends` VALUES ('16', 'Composer', 'https://getcomposer.org', 'Composer是用于PHP中的依赖项管理的工具。', 'https://getcomposer.org', '1', '2', '100', '1', '1', '2019-10-17 07:42:25', '2019-10-17 07:42:25');

-- ----------------------------
-- Table structure for blog_message
-- ----------------------------
DROP TABLE IF EXISTS `blog_message`;
CREATE TABLE `blog_message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `msg_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '留言内容',
  `msg_blog_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '留言博客名称',
  `msg_blog_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '留言博客链接',
  `msg_blog_contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '留言联系方式',
  `msg_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '留言人ip',
  `msg_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示【1是2否】',
  `msg_type` tinyint(4) DEFAULT '0' COMMENT '留言类型【1文章2视频3留言板块】',
  `foreign_id` int(11) DEFAULT '0' COMMENT '所属类型主键id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_message
-- ----------------------------
INSERT INTO `blog_message` VALUES ('1', '的说三道四的所多所多', 'asd', 'http://www.qqphp.com/messaged', '223', '59.41.117.32', '1', '3', '0', '2019-10-08 07:24:31', '2019-10-08 07:24:31');
INSERT INTO `blog_message` VALUES ('2', '的说三道四的所多所多电动车', 'asd', 'http://www.qqphp.com/messaged', '223', '59.41.117.32', '1', '3', '0', '2019-10-08 07:24:35', '2019-10-08 07:24:35');
INSERT INTO `blog_message` VALUES ('3', '的说三道四的所多所多电动车从vcxvcxv', 'asd', 'http://www.qqphp.com/messaged', '223', '59.41.117.32', '1', '3', '0', '2019-10-08 07:24:38', '2019-10-08 07:24:38');
INSERT INTO `blog_message` VALUES ('4', '的说三道四的所多所多电动车从vcxvcxv胜多负少的是多大的多多多多多多多多多多多多多多多多多多多多多多多多多多多', 'asd', 'http://www.qqphp.com/messaged', '223', '59.41.117.32', '1', '3', '0', '2019-10-08 07:24:42', '2019-10-08 07:24:42');
INSERT INTO `blog_message` VALUES ('5', '的说三道四的所多所多电动车从vcxvcxv胜多负少的是多大的多多多多多多多多多多多多多多多多多多多多多多多多多多多，的说三道四的所多所多电动车从vcxvcxv胜多负少的是多大的多多多多多多多多多多多多多多多多多多多多多多多多多多多得到的说三道四的所多所多电动车从vcxvcxv胜多负少的是多大的多多多', 'asd', 'http://www.qqphp.com/messaged', '223', '59.41.117.32', '1', '3', '0', '2019-10-08 07:25:11', '2019-10-08 07:25:11');
INSERT INTO `blog_message` VALUES ('6', '的说三道四的所多所多电动车从vcxvcxv胜多负少的是多大的多多多多多多多多多多多多多多多多多多多多多多多多多多多，的说三道四的所多所多电动车从vcxvcxv胜多负少的是多大的多多多多多多多多多多多多多多多多多多多多多多多多多多多得到的说三道四的所多所多电动车从vcxvcxv胜多负少的是多大的多多多', 'asd', 'http://www.qqphp.com/messaged', '223', '59.41.117.32', '1', '3', '0', '2019-10-08 07:25:34', '2019-10-08 07:25:34');
INSERT INTO `blog_message` VALUES ('7', '的说三道四的所多所多电动车从vcxvcxv胜多负少的是多大的多多多多多多多多多多多多多多多多多多多多多多多多多多多，的说三道四的所多所多电动车从vcxvcxv胜多负少的是多大的多多多多多多多多多多多多多多多多多多多多多多多多多多多得到的说三道四的所多所多电动车从vcxvcxv胜多负少的是多大的多多多', 'asd', 'http://www.qqphp.com/messaged', '223', '59.41.117.32', '1', '3', '0', '2019-10-08 07:25:36', '2019-10-08 07:25:36');

-- ----------------------------
-- Table structure for blog_nav
-- ----------------------------
DROP TABLE IF EXISTS `blog_nav`;
CREATE TABLE `blog_nav` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nav_title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '导航名称',
  `nav_type` int(11) NOT NULL DEFAULT '0' COMMENT '导航类型【1文章2照片3音乐4视频5软件(分享1)6图书(分享2)】',
  `nav_open` tinyint(4) NOT NULL DEFAULT '1' COMMENT '导航是否启用【1启用2关闭】',
  `nav_sort` int(11) NOT NULL DEFAULT '100' COMMENT '导航排序',
  `nav_pid` int(11) NOT NULL DEFAULT '0' COMMENT '导航上级id',
  `nav_route` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '导航前端路由',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_nav
-- ----------------------------
INSERT INTO `blog_nav` VALUES ('1', '我的博文', '0', '1', '1', '0', '', '2019-08-27 04:14:32', '2019-09-03 03:08:53');
INSERT INTO `blog_nav` VALUES ('3', 'PHP', '1', '1', '2', '1', 'article', '2019-08-27 04:33:43', '2019-09-25 04:25:32');
INSERT INTO `blog_nav` VALUES ('5', '我的记录', '0', '1', '7', '0', '', '2019-08-27 08:38:41', '2019-10-08 09:03:51');
INSERT INTO `blog_nav` VALUES ('6', '我的相册', '2', '1', '10', '5', 'photo', '2019-08-27 08:39:16', '2019-10-08 09:03:51');
INSERT INTO `blog_nav` VALUES ('7', '我的音乐', '3', '1', '9', '5', 'music', '2019-08-27 08:39:24', '2019-10-08 09:03:51');
INSERT INTO `blog_nav` VALUES ('8', '我的视频', '4', '1', '8', '5', 'video', '2019-08-27 08:39:33', '2019-10-08 09:03:51');
INSERT INTO `blog_nav` VALUES ('9', '我的分享', '0', '1', '11', '0', '', '2019-08-27 08:39:48', '2019-09-25 04:36:33');
INSERT INTO `blog_nav` VALUES ('10', 'Tp5扩展', '5', '1', '12', '9', 'card1', '2019-08-27 08:40:18', '2019-10-10 01:48:56');
INSERT INTO `blog_nav` VALUES ('11', 'Laravel扩展', '5', '1', '13', '9', 'card1', '2019-08-27 08:40:37', '2019-10-10 01:49:04');
INSERT INTO `blog_nav` VALUES ('12', '我的读书', '6', '1', '14', '9', 'card2', '2019-08-27 08:44:55', '2019-09-25 04:36:33');
INSERT INTO `blog_nav` VALUES ('13', '我的电影', '6', '1', '15', '9', 'card2', '2019-08-27 08:45:07', '2019-09-25 04:36:33');
INSERT INTO `blog_nav` VALUES ('15', '报错日记', '1', '1', '5', '1', 'article', '2019-10-08 06:30:13', '2019-10-16 01:56:22');
INSERT INTO `blog_nav` VALUES ('16', '解决方案', '1', '1', '6', '1', 'article', '2019-10-08 06:31:32', '2019-10-08 09:03:58');
INSERT INTO `blog_nav` VALUES ('17', '随想杂谈', '1', '1', '100', '1', 'article', '2019-10-16 01:57:50', '2019-10-16 01:57:50');
INSERT INTO `blog_nav` VALUES ('18', '工具推荐', '5', '1', '100', '9', 'card1', '2019-10-16 08:26:55', '2019-10-16 08:26:55');
INSERT INTO `blog_nav` VALUES ('21', 'git', '1', '1', '100', '1', 'article', '2020-01-03 06:01:55', '2020-01-03 06:02:31');

-- ----------------------------
-- Table structure for blog_nav_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_nav_article`;
CREATE TABLE `blog_nav_article` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `article_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章标题',
  `article_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文章标签',
  `article_describe` text COLLATE utf8mb4_unicode_ci COMMENT '文章描述',
  `article_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章内容',
  `article_click` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `article_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示【1是2否】',
  `article_sort` int(11) NOT NULL DEFAULT '100' COMMENT '文章排序',
  `nav_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属导航id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_nav_article
-- ----------------------------
INSERT INTO `blog_nav_article` VALUES ('1', 'laravel初学', 'php', 'Laravel 是优雅的 PHP Web 开发框架。具有高效、简洁、富于表达力等优点。采用 MVC 设计，是崇尚开发效率的全栈框架。是最受关注的 PHP 框架。', 'Laravel 6.0\r\nLaravel 6.0（LTS）通过引入语义化版本、与 Laravel Vapor 的兼容性、优化了授权响应、任务中间件、懒集合、子查询优化、并将前端脚手架单独分离到 laravel/ui Composer 软件包，以及其他各种错误修复和可用性改进。\r\n\r\n语义版本控制\r\nlaravel 框架扩展包现在开始使用语义化版本。这使得框架与已经遵循此版本控制标准的其他第一方 Laravel 包保持一致。Laravel 发布周期将保持不变。\r\n\r\nLaravel Vapor 兼容性\r\nLaravel Vapor 由 Taylor Otwell 开发。\r\n\r\nLaravel 6.0 提供了与 Laravel Vapor 的兼容性，这是一个用于 Laravel 的自动伸缩无服务器部署平台。vapor 抽象了管理 aws lambda 上的 laravel 应用程序的复杂性，以及将这些应用程序与 sqs 队列、数据库、redis 集群、网络、 CloudFront CDN 等接口的复杂性。\r\n\r\n改进的异常：Ignition\r\nLaravel 自带了 Ignition，这是一个由 Freek Van der Herten 与 Marcel Pociot 创建的关于异常详情页面的新的开源项目。相较之前的版本，Ignition 具有许多优势，比如改进的错误页面 Blade 文件与行号处理、对常见问题的运行时解决、代码编辑、异常共享以及改进的用户体验。\r\n\r\n改进的授权响应\r\n改进的授权响应由 Gary Green 实现。\r\n\r\n在之前的 Laravel 版本中，很难提取并向最终的用户展示自定义的授权消息，这就导致了很难跟最终用户解释某个特定请求为什么会被拒绝。在 Laravel 6.0 中，使用授权响应消息和新方法 Gate::inspect 将会让事情变得更加容易。比如，给定以下授权策略（Policy）方法：', '5', '1', '100', '3', '2020-01-03 05:07:28', '2020-01-03 06:03:23');
INSERT INTO `blog_nav_article` VALUES ('2', 'laravel eloquent ORM', 'ORM,php', 'Eloquent 是 Laravel 的 \'ORM\'，即 \'Object Relational Mapping\'，对象关系映射。ORM 的出现是为了帮我们把对数据库的操作变得更加地方便。\r\n\r\nEloquent 让一个 \'Model类\' 对应一张数据库表，并且在底层封装了很多 \'function\'，可以让 Model 类非常方便地调用。', '1. 每一个继承了 Eloquent 的类都有两个 \'固定用法\' \'Article::find($number)\' \'Article::all()\'，前者会得到一个带有数据库中取出来值的对象，后者会得到一个包含整个数据库的对象合集。\r\n\r\n2. 所有的中间方法如 \'where()\' \'orderBy()\' 等都能够同时支持 \'静态\' 和 \'非静态链式\' 两种方式调用，即 \'Article::where()...\' 和 \'Article::....->where()\'。\r\n\r\n3. 所有的 \'非固定用法\' 的调用最后都需要一个操作来 \'收尾\'，本片教程中有两个 \'收尾操作\'：\'->get()\' 和 \'->first()\'。\r\n\r\n4. 如果你不理解为什么 \'Article\' 这个类可以使用 \'->where()\' \'->get()\' 等很多方法的话，说明你需要去读一下 PHP 对象继承的文档了：对象继承。', '19', '1', '100', '3', '2020-01-03 05:08:54', '2020-01-03 05:53:30');
INSERT INTO `blog_nav_article` VALUES ('3', 'laravel artisan', 'laravel,php,artisan', 'Artisan 是 Laravel 中自带的命令行工具的名称。它提供了一些对您的应用开发有帮助的命令。它是由强大的 Symfony Console 组件驱动的。', '路由操作\r\n查看路由列表\r\n\r\nphp artisan route:list\r\n生成路由缓存\r\n\r\nphp artisan route:cache\r\n清楚路由缓存\r\n\r\nphp artisan route:clear\r\n建议项目上线时创建路由缓存\r\n\r\n生成文件操作\r\n创建模型\r\n\r\nphp artisan make:model ModelName\r\n一并创建迁移文件，末尾追加 -m （migration 的意思）\r\n\r\n php artisan make:model ModelName -m\r\n指定目录创建，模型默认创建在 App 命令空间下\r\n\r\n php artisan make:model FileName/ModelName -m\r\n创建控制器\r\n\r\nphp artisan make:controller IndexController\r\n指定目录创建，默认创建在 App\\Http\\Controllers 命名空间下\r\n\r\nphp artisan make:controller FileName/IndexController\r\n创建 Rest 风格资源控制器（带有 index、create、store、edit、update、destroy、show 方法），只需要在末尾追加 --resource\r\n\r\nphp artisan make:controller IndexController --resource\r\n创建中间件\r\n\r\nphp artisan make:middleware MiddlewareName', '7', '1', '100', '3', '2020-01-03 05:11:11', '2020-01-03 05:53:57');
INSERT INTO `blog_nav_article` VALUES ('4', 'git简单使用', 'git', 'git 工作常用', 'git\r\n\r\ngit branch \'test\'  创建分支\r\ngit branch  查看所有分支\r\ngit checkout \'test\' 切换分支              	  \r\ngit add .  提交到上传位置\r\ngit commit -m \'dsaf\' 上传文件添加对应备注信息\r\ngit push origin test  提交代码到对应分支 \r\n\r\ngit checkout master  切换到master主分支\r\ngit merge test 合并分支\r\ngit push    提交到主分支\r\n\r\n主分支切换其他分支需要 git checkout  test  \r\n其他分支切换主分支需要 git checkout -b test\r\n\r\ngit上传冲突\r\ngit status 查看是否报错\r\n如果报错 是同一处代码冲突 需重新拉代码，进行修改\r\n未报错 不是同一处代码冲突', '9', '1', '100', '21', '2020-01-03 06:03:19', '2020-01-03 06:47:46');

-- ----------------------------
-- Table structure for blog_nav_music
-- ----------------------------
DROP TABLE IF EXISTS `blog_nav_music`;
CREATE TABLE `blog_nav_music` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `music_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '歌单标题',
  `music_describe` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '歌单描述',
  `music_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '歌单标签',
  `music_json` text COLLATE utf8mb4_unicode_ci COMMENT '歌单上传歌曲',
  `music_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '歌单封面',
  `music_click` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `music_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示【1是2否】',
  `music_play` tinyint(4) NOT NULL DEFAULT '1' COMMENT '添加播放列表【1是2否】',
  `music_sort` int(11) NOT NULL DEFAULT '100' COMMENT '歌单排序',
  `nav_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属导航id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_nav_music
-- ----------------------------

-- ----------------------------
-- Table structure for blog_nav_photo
-- ----------------------------
DROP TABLE IF EXISTS `blog_nav_photo`;
CREATE TABLE `blog_nav_photo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `photo_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '相册标题',
  `photo_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '相册封面',
  `photo_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '相册标签',
  `photo_json` text COLLATE utf8mb4_unicode_ci COMMENT '相册上传图片',
  `photo_click` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `photo_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示【1是2否】',
  `photo_sort` int(11) NOT NULL DEFAULT '100' COMMENT '相册排序',
  `nav_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属导航id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_nav_photo
-- ----------------------------

-- ----------------------------
-- Table structure for blog_nav_share1
-- ----------------------------
DROP TABLE IF EXISTS `blog_nav_share1`;
CREATE TABLE `blog_nav_share1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `share_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分享标题',
  `share_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'icon图标',
  `share_src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分享封面',
  `share_intro` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `share_describe` text COLLATE utf8mb4_unicode_ci COMMENT '内容详情',
  `share_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '访问链接',
  `share_sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `share_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示【1是2否】',
  `nav_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属导航id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_nav_share1
-- ----------------------------

-- ----------------------------
-- Table structure for blog_nav_share2
-- ----------------------------
DROP TABLE IF EXISTS `blog_nav_share2`;
CREATE TABLE `blog_nav_share2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `share_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分享标题',
  `share_describe` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分享描述',
  `share_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分享副标题',
  `share_src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分享封面',
  `share_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分享链接',
  `share_sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `share_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示【1是2否】',
  `nav_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属导航id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_nav_share2
-- ----------------------------

-- ----------------------------
-- Table structure for blog_nav_video
-- ----------------------------
DROP TABLE IF EXISTS `blog_nav_video`;
CREATE TABLE `blog_nav_video` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `video_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '视频标题',
  `video_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '视频标签',
  `video_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '视频封面',
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '视频路径',
  `video_click` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `video_sort` int(11) NOT NULL DEFAULT '100' COMMENT '视频排序',
  `video_recommend` int(11) NOT NULL DEFAULT '2' COMMENT '是否推荐【1是2否】',
  `video_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示【1是2否】',
  `nav_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属导航id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_describe` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '视频描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_nav_video
-- ----------------------------

-- ----------------------------
-- Table structure for blog_notices
-- ----------------------------
DROP TABLE IF EXISTS `blog_notices`;
CREATE TABLE `blog_notices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告标题',
  `notice_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告内容',
  `notice_sort` int(11) NOT NULL DEFAULT '100' COMMENT '公告排序',
  `notice_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示【1是2否】',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_notices
-- ----------------------------
INSERT INTO `blog_notices` VALUES ('1', '初次见面', '<p>欢迎你访问本博客</p>', '100', '1', '2020-01-03 05:36:44', '2020-01-03 05:36:44');

-- ----------------------------
-- Table structure for blog_subscribes
-- ----------------------------
DROP TABLE IF EXISTS `blog_subscribes`;
CREATE TABLE `blog_subscribes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '申请邮箱',
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '申请IP',
  `is_pass` tinyint(4) NOT NULL DEFAULT '1' COMMENT '审核状态【1待审核2审核通过3冻结封禁】',
  `add_mode` tinyint(4) NOT NULL DEFAULT '1' COMMENT '申请方式【1申请添加2后台添加】',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `aid` int(11) DEFAULT '0' COMMENT '文章id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_subscribes
-- ----------------------------
INSERT INTO `blog_subscribes` VALUES ('1', '1549684884@qq.com', null, '2', '2', '2019-10-08 09:19:57', '2019-10-10 03:18:24', '0');

-- ----------------------------
-- Table structure for blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `blog_tags`;
CREATE TABLE `blog_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag_content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标签内容',
  `tag_click` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `a_id` int(11) NOT NULL DEFAULT '0' COMMENT '文章id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_tags
-- ----------------------------
INSERT INTO `blog_tags` VALUES ('1', 'php', '1', '1', '2020-01-03 05:07:28', '2020-01-03 05:51:36');
INSERT INTO `blog_tags` VALUES ('2', 'ORM', '1', '2', '2020-01-03 05:08:54', '2020-01-03 05:51:40');
INSERT INTO `blog_tags` VALUES ('3', 'php', '1', '2', '2020-01-03 05:08:54', '2020-01-03 05:51:36');
INSERT INTO `blog_tags` VALUES ('4', 'laravel', '1', '3', '2020-01-03 05:11:11', '2020-01-03 05:51:42');
INSERT INTO `blog_tags` VALUES ('5', 'php', '1', '3', '2020-01-03 05:11:11', '2020-01-03 05:51:36');
INSERT INTO `blog_tags` VALUES ('6', 'artisan', '0', '3', '2020-01-03 05:11:11', '2020-01-03 05:11:11');
INSERT INTO `blog_tags` VALUES ('7', 'git', '0', '4', '2020-01-03 06:03:19', '2020-01-03 06:03:19');

-- ----------------------------
-- Table structure for blog_upload_files
-- ----------------------------
DROP TABLE IF EXISTS `blog_upload_files`;
CREATE TABLE `blog_upload_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `img_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件名称',
  `img_src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件路径',
  `img_suffix` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件后缀',
  `img_type` int(11) NOT NULL COMMENT '文件类型【1EditorMD编辑器文件2Simditor编辑器文件】',
  `img_ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '上传ip',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of blog_upload_files
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `jobs_queue_index` (`queue`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO `jobs` VALUES ('1', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendReminderEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendReminderEmail\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\SendReminderEmail\\\":11:{s:33:\\\"\\u0000App\\\\Jobs\\\\SendReminderEmail\\u0000tries\\\";i:3;s:35:\\\"\\u0000App\\\\Jobs\\\\SendReminderEmail\\u0000timeout\\\";i:30;s:17:\\\"\\u0000*\\u0000blogNavArticle\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:25:\\\"App\\\\Models\\\\BlogNavArticle\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";N;}s:8:\\\"\\u0000*\\u0000email\\\";s:17:\\\"1549684884@qq.com\\\";s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', '0', null, '1578028048', '1578028048');
INSERT INTO `jobs` VALUES ('2', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendReminderEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendReminderEmail\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\SendReminderEmail\\\":11:{s:33:\\\"\\u0000App\\\\Jobs\\\\SendReminderEmail\\u0000tries\\\";i:3;s:35:\\\"\\u0000App\\\\Jobs\\\\SendReminderEmail\\u0000timeout\\\";i:30;s:17:\\\"\\u0000*\\u0000blogNavArticle\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:25:\\\"App\\\\Models\\\\BlogNavArticle\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";N;}s:8:\\\"\\u0000*\\u0000email\\\";s:17:\\\"1549684884@qq.com\\\";s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', '0', null, '1578028134', '1578028134');
INSERT INTO `jobs` VALUES ('3', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendReminderEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendReminderEmail\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\SendReminderEmail\\\":11:{s:33:\\\"\\u0000App\\\\Jobs\\\\SendReminderEmail\\u0000tries\\\";i:3;s:35:\\\"\\u0000App\\\\Jobs\\\\SendReminderEmail\\u0000timeout\\\";i:30;s:17:\\\"\\u0000*\\u0000blogNavArticle\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:25:\\\"App\\\\Models\\\\BlogNavArticle\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";N;}s:8:\\\"\\u0000*\\u0000email\\\";s:17:\\\"1549684884@qq.com\\\";s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', '0', null, '1578028271', '1578028271');
INSERT INTO `jobs` VALUES ('4', 'default', '{\"displayName\":\"App\\\\Jobs\\\\SendReminderEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendReminderEmail\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\SendReminderEmail\\\":11:{s:33:\\\"\\u0000App\\\\Jobs\\\\SendReminderEmail\\u0000tries\\\";i:3;s:35:\\\"\\u0000App\\\\Jobs\\\\SendReminderEmail\\u0000timeout\\\";i:30;s:17:\\\"\\u0000*\\u0000blogNavArticle\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:25:\\\"App\\\\Models\\\\BlogNavArticle\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";N;}s:8:\\\"\\u0000*\\u0000email\\\";s:17:\\\"1549684884@qq.com\\\";s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', '0', null, '1578031399', '1578031399');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('108', '2019_08_24_022201_create_blog_nav_table', '2');
INSERT INTO `migrations` VALUES ('109', '2019_08_24_025115_create_blog_nav_article_table', '2');
INSERT INTO `migrations` VALUES ('110', '2019_08_24_025134_create_blog_nav_photo_table', '2');
INSERT INTO `migrations` VALUES ('111', '2019_08_24_025151_create_blog_nav_music_table', '2');
INSERT INTO `migrations` VALUES ('112', '2019_08_24_025209_create_blog_nav_video_table', '2');
INSERT INTO `migrations` VALUES ('113', '2019_08_24_025230_create_blog_nav_share1_table', '2');
INSERT INTO `migrations` VALUES ('114', '2019_08_24_025240_create_blog_nav_share2_table', '2');
INSERT INTO `migrations` VALUES ('115', '2019_08_25_102118_create_blog_message_table', '2');
INSERT INTO `migrations` VALUES ('116', '2019_08_25_131502_create_blog_friends_table', '2');
INSERT INTO `migrations` VALUES ('117', '2019_08_26_021306_create_blog_apply_table', '2');
INSERT INTO `migrations` VALUES ('118', '2019_08_26_021945_create_blog_about_table', '2');
INSERT INTO `migrations` VALUES ('119', '2019_08_26_104822_create_blog_upload_files_table', '2');
INSERT INTO `migrations` VALUES ('120', '2017_07_17_040159_create_config_table', '3');
INSERT INTO `migrations` VALUES ('121', '2019_08_29_042857_create_blog_notices_table', '4');
INSERT INTO `migrations` VALUES ('125', '2019_08_29_140729_create_blog_about_articles_table', '5');
INSERT INTO `migrations` VALUES ('126', '2019_08_29_140755_create_blog_about_card_ones_table', '5');
INSERT INTO `migrations` VALUES ('127', '2019_08_29_140807_create_blog_about_card_twos_table', '5');
INSERT INTO `migrations` VALUES ('130', '2019_09_15_132631_create_blog_subscribes_table', '6');
INSERT INTO `migrations` VALUES ('131', '2019_09_27_084944_create_blog_tags_table', '7');
INSERT INTO `migrations` VALUES ('133', '2019_10_07_060955_create_jobs_table', '8');
INSERT INTO `migrations` VALUES ('134', '2019_10_07_071533_create_failed_jobs_table', '9');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users
-- ----------------------------
