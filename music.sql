/*
 Navicat Premium Data Transfer

 Source Server         : 10.27
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : 2023music

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 25/04/2022 21:19:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add 评论', 7, 'add_comment');
INSERT INTO `auth_permission` VALUES (26, 'Can change 评论', 7, 'change_comment');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 评论', 7, 'delete_comment');
INSERT INTO `auth_permission` VALUES (28, 'Can view 评论', 7, 'view_comment');
INSERT INTO `auth_permission` VALUES (29, 'Can add 音乐', 8, 'add_movie');
INSERT INTO `auth_permission` VALUES (30, 'Can change 音乐', 8, 'change_movie');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 音乐', 8, 'delete_movie');
INSERT INTO `auth_permission` VALUES (32, 'Can view 音乐', 8, 'view_movie');
INSERT INTO `auth_permission` VALUES (33, 'Can add 标签', 9, 'add_tags');
INSERT INTO `auth_permission` VALUES (34, 'Can change 标签', 9, 'change_tags');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 标签', 9, 'delete_tags');
INSERT INTO `auth_permission` VALUES (36, 'Can view 标签', 9, 'view_tags');
INSERT INTO `auth_permission` VALUES (37, 'Can add 用户', 10, 'add_user');
INSERT INTO `auth_permission` VALUES (38, 'Can change 用户', 10, 'change_user');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 用户', 10, 'delete_user');
INSERT INTO `auth_permission` VALUES (40, 'Can view 用户', 10, 'view_user');
INSERT INTO `auth_permission` VALUES (41, 'Can add 用户偏好', 11, 'add_usertagprefer');
INSERT INTO `auth_permission` VALUES (42, 'Can change 用户偏好', 11, 'change_usertagprefer');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 用户偏好', 11, 'delete_usertagprefer');
INSERT INTO `auth_permission` VALUES (44, 'Can view 用户偏好', 11, 'view_usertagprefer');
INSERT INTO `auth_permission` VALUES (45, 'Can add 评分信息', 12, 'add_rate');
INSERT INTO `auth_permission` VALUES (46, 'Can change 评分信息', 12, 'change_rate');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 评分信息', 12, 'delete_rate');
INSERT INTO `auth_permission` VALUES (48, 'Can view 评分信息', 12, 'view_rate');
INSERT INTO `auth_permission` VALUES (49, 'Can add 评论点赞', 13, 'add_likecomment');
INSERT INTO `auth_permission` VALUES (50, 'Can change 评论点赞', 13, 'change_likecomment');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 评论点赞', 13, 'delete_likecomment');
INSERT INTO `auth_permission` VALUES (52, 'Can view 评论点赞', 13, 'view_likecomment');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$150000$xPMJNPn1sUuE$0hmTZ1uM711jt2YfaiydN0+ldZbVcFq9vIgvYIuijdc=', '2022-03-20 15:49:40.083533', 1, 'admins', '', '', 'admins@qq.com', 1, 1, '2021-05-16 15:23:25.248208');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$150000$mVAhVCDbJQki$YICOVtcht0DRlOz/oemBnTv9R3LdG4QS8rX9fK70z7I=', '2022-03-18 14:56:40.325027', 1, 'test0001', '', '', '999@qq.com', 1, 1, '2022-03-18 14:56:28.709088');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2022-03-20 15:50:10.865028', '35', '105.0', 1, '[{\"added\": {}}]', 11, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'music', 'comment');
INSERT INTO `django_content_type` VALUES (13, 'music', 'likecomment');
INSERT INTO `django_content_type` VALUES (8, 'music', 'movie');
INSERT INTO `django_content_type` VALUES (12, 'music', 'rate');
INSERT INTO `django_content_type` VALUES (9, 'music', 'tags');
INSERT INTO `django_content_type` VALUES (10, 'music', 'user');
INSERT INTO `django_content_type` VALUES (11, 'music', 'usertagprefer');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2021-05-14 15:52:13.035811');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2021-05-14 15:52:13.276865');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2021-05-14 15:52:13.977022');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-05-14 15:52:14.117066');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-14 15:52:14.129058');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2021-05-14 15:52:14.265090');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2021-05-14 15:52:14.342109');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2021-05-14 15:52:14.441127');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2021-05-14 15:52:14.450129');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2021-05-14 15:52:14.613167');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2021-05-14 15:52:14.623171');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-14 15:52:14.635172');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2021-05-14 15:52:14.744197');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-14 15:52:14.818216');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2021-05-14 15:52:14.947242');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2021-05-14 15:52:14.957246');
INSERT INTO `django_migrations` VALUES (17, 'music', '0001_initial', '2021-05-14 15:52:15.332335');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2021-05-14 15:52:16.630625');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0smybyhfr5b3fmuwqgeogilm8o2w90nl', 'MTBhMTdhMDZjMGQ5YTNiOGU4OGIzMmRiYjc3OWYyYTFkNGI3ZDIwYTp7Im9yZGVyIjpudWxsLCJsb2dpbl9pbiI6dHJ1ZSwidXNlcl9pZCI6MTgwNywibmFtZSI6ImFkbWlucyJ9', '2022-05-07 15:33:11.240156');
INSERT INTO `django_session` VALUES ('0yp66yhsx8pymz9jtkcawjxeltloh1ab', 'MDRmZGViNWNiNzY2MDdjN2E0NTVlMzJkMDI0MjAwZmViNmIxMGJmNDp7Im9yZGVyIjpudWxsLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGQ0NjRkNTI2MjlhZjBhMzNhZWE3OGQ0NDRlZjYyYjVkMzAwZWNiNyIsInNpbXBsZXVpXzIwMjIwMzE4Ijp0cnVlfQ==', '2022-04-01 14:56:40.453050');
INSERT INTO `django_session` VALUES ('31b6c5d8md6uc8x7hk9ehvqz28grwjyd', 'ZjBjNTM5ZmFmNTY1NzI1OTM4ZGM0N2NiNjQ5YWZiZDI1ZDQ4OGJjYzp7Im9yZGVyIjpudWxsfQ==', '2022-04-03 15:41:52.657041');
INSERT INTO `django_session` VALUES ('6w9tfs55p31ox7erls3hf6n7o5r0u6k0', 'MDg0MThjNDk5MTNmNGJjODFhMjM1NTg2NzM4NWMwZTliM2JlNDc1ZTp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxODA3LCJuYW1lIjoiYWRtaW5zIiwib3JkZXIiOm51bGx9', '2021-05-28 15:59:52.529946');
INSERT INTO `django_session` VALUES ('97fkdo796he4zu6eej6dpbmbbts4fetw', 'MTBhMTdhMDZjMGQ5YTNiOGU4OGIzMmRiYjc3OWYyYTFkNGI3ZDIwYTp7Im9yZGVyIjpudWxsLCJsb2dpbl9pbiI6dHJ1ZSwidXNlcl9pZCI6MTgwNywibmFtZSI6ImFkbWlucyJ9', '2021-05-28 15:55:34.058264');
INSERT INTO `django_session` VALUES ('i0eie7it7kplem3xxtgq250yopdr589l', 'ZjBjNTM5ZmFmNTY1NzI1OTM4ZGM0N2NiNjQ5YWZiZDI1ZDQ4OGJjYzp7Im9yZGVyIjpudWxsfQ==', '2021-05-28 15:56:10.861781');
INSERT INTO `django_session` VALUES ('ka70fvuwfdj3fdrvhmv447cg8j70noh9', 'MTBhMTdhMDZjMGQ5YTNiOGU4OGIzMmRiYjc3OWYyYTFkNGI3ZDIwYTp7Im9yZGVyIjpudWxsLCJsb2dpbl9pbiI6dHJ1ZSwidXNlcl9pZCI6MTgwNywibmFtZSI6ImFkbWlucyJ9', '2021-05-28 15:58:31.676601');
INSERT INTO `django_session` VALUES ('nxfshevgswhefktzvnnh19cy52k1vj6p', 'ZjBjNTM5ZmFmNTY1NzI1OTM4ZGM0N2NiNjQ5YWZiZDI1ZDQ4OGJjYzp7Im9yZGVyIjpudWxsfQ==', '2022-04-01 13:33:58.619504');
INSERT INTO `django_session` VALUES ('q9oxs6beowqo5bkalbgsb6rtvv5y42xe', 'MTBhMTdhMDZjMGQ5YTNiOGU4OGIzMmRiYjc3OWYyYTFkNGI3ZDIwYTp7Im9yZGVyIjpudWxsLCJsb2dpbl9pbiI6dHJ1ZSwidXNlcl9pZCI6MTgwNywibmFtZSI6ImFkbWlucyJ9', '2022-05-07 16:37:18.264386');
INSERT INTO `django_session` VALUES ('sj53ctqlkxlyuvjpfv9gzwn9u2loqm5f', 'MTBhMTdhMDZjMGQ5YTNiOGU4OGIzMmRiYjc3OWYyYTFkNGI3ZDIwYTp7Im9yZGVyIjpudWxsLCJsb2dpbl9pbiI6dHJ1ZSwidXNlcl9pZCI6MTgwNywibmFtZSI6ImFkbWlucyJ9', '2022-05-07 16:10:49.532079');
INSERT INTO `django_session` VALUES ('szarf2vf200vaemr61h4qngt8li4ygru', 'ZjBjNTM5ZmFmNTY1NzI1OTM4ZGM0N2NiNjQ5YWZiZDI1ZDQ4OGJjYzp7Im9yZGVyIjpudWxsfQ==', '2021-06-09 09:25:59.505713');
INSERT INTO `django_session` VALUES ('uykdhjftp7tzmu26q9h761sus7llic1u', 'ZjBjNTM5ZmFmNTY1NzI1OTM4ZGM0N2NiNjQ5YWZiZDI1ZDQ4OGJjYzp7Im9yZGVyIjpudWxsfQ==', '2022-04-01 12:55:33.936597');
INSERT INTO `django_session` VALUES ('vhedynnu92638mttaeep62h9k4r3hjtq', 'MDcxNWJlZWU2NjE1MjQ0ZGI1ODQ3ZTQ2ZTYzY2U3ZWIwMDkyZTE2ODp7Im9yZGVyIjoibnVtcyJ9', '2022-04-03 15:40:25.457203');
INSERT INTO `django_session` VALUES ('vnk7a266lfjkbv7697hef22kkg7b7ngt', 'ODhhYWFlODI1YWVlMTFmZTM4YmY3N2ZkNDNjYzRhNjAzYTgzZDc3MDp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxODA3LCJuYW1lIjoiYWRtaW5zIiwib3JkZXIiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NGI0MjAyZTViZmU1NjE1YTlhMmU5NDI2YzZmMDllYzRiMGRkMjY1Iiwic2ltcGxldWlfMjAyMTA1MTYiOnRydWV9', '2021-05-30 15:25:15.232478');
INSERT INTO `django_session` VALUES ('wwxl0d0eq3z82ehzn3amd612lh2js5m9', 'NmM1MjM2NzNkZDI4MzRhZTgyNzkzOTZkYTYwNGZiMDVhMGIxYWVlNjp7Im9yZGVyIjpudWxsLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTRiNDIwMmU1YmZlNTYxNWE5YTJlOTQyNmM2ZjA5ZWM0YjBkZDI2NSJ9', '2021-06-09 09:36:57.867351');
INSERT INTO `django_session` VALUES ('xif29gpd1cf3y5exau4uzay1kx0jai6k', 'MDg0MThjNDk5MTNmNGJjODFhMjM1NTg2NzM4NWMwZTliM2JlNDc1ZTp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxODA3LCJuYW1lIjoiYWRtaW5zIiwib3JkZXIiOm51bGx9', '2021-05-28 16:01:08.895072');
INSERT INTO `django_session` VALUES ('z6bcy3gvluhmu4tawab4xtn5tpscamo1', 'ZTkxZjJlZTNkZDBkM2MyMzE2NzAwZTI4Y2JiMGUyZGFkNzdlMmFhNjp7Im9yZGVyIjpudWxsLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTRiNDIwMmU1YmZlNTYxNWE5YTJlOTQyNmM2ZjA5ZWM0YjBkZDI2NSIsInNpbXBsZXVpXzIwMjIwMzIwIjp0cnVlfQ==', '2022-04-03 15:50:28.729934');
INSERT INTO `django_session` VALUES ('zw1201wifi4ud2z76xz56la5op24p7qg', 'ZjBjNTM5ZmFmNTY1NzI1OTM4ZGM0N2NiNjQ5YWZiZDI1ZDQ4OGJjYzp7Im9yZGVyIjpudWxsfQ==', '2021-05-28 15:54:11.581720');

-- ----------------------------
-- Table structure for music_comment
-- ----------------------------
DROP TABLE IF EXISTS `music_comment`;
CREATE TABLE `music_comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `movie_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `music_comment_movie_id_e40becfc_fk_music_movie_id`(`movie_id`) USING BTREE,
  INDEX `music_comment_user_id_0d3cd408_fk_music_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `music_comment_movie_id_e40becfc_fk_music_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `music_movie` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `music_comment_user_id_0d3cd408_fk_music_user_id` FOREIGN KEY (`user_id`) REFERENCES `music_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music_comment
-- ----------------------------
INSERT INTO `music_comment` VALUES (1, '999999999', '2021-05-16 15:21:39.608810', 2186, 1807);
INSERT INTO `music_comment` VALUES (2, '666666666666', '2021-05-16 15:22:26.630087', 2181, 1807);
INSERT INTO `music_comment` VALUES (3, '777777', '2021-05-16 15:24:51.715738', 2181, 1807);
INSERT INTO `music_comment` VALUES (4, '百听不厌', '2022-03-20 15:33:56.396110', 2183, 1809);
INSERT INTO `music_comment` VALUES (5, '好听！', '2022-03-20 15:34:26.908882', 2175, 1809);
INSERT INTO `music_comment` VALUES (6, '非常好听！', '2022-03-20 15:48:25.538406', 2181, 1811);

-- ----------------------------
-- Table structure for music_likecomment
-- ----------------------------
DROP TABLE IF EXISTS `music_likecomment`;
CREATE TABLE `music_likecomment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `comment_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `music_likecomment_comment_id_8621862e_fk_music_comment_id`(`comment_id`) USING BTREE,
  INDEX `music_likecomment_user_id_f5bedae1_fk_music_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `music_likecomment_comment_id_8621862e_fk_music_comment_id` FOREIGN KEY (`comment_id`) REFERENCES `music_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `music_likecomment_user_id_f5bedae1_fk_music_user_id` FOREIGN KEY (`user_id`) REFERENCES `music_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music_likecomment
-- ----------------------------
INSERT INTO `music_likecomment` VALUES (1, 1, 1807);
INSERT INTO `music_likecomment` VALUES (2, 2, 1807);
INSERT INTO `music_likecomment` VALUES (3, 4, 1809);
INSERT INTO `music_likecomment` VALUES (4, 5, 1809);
INSERT INTO `music_likecomment` VALUES (5, 6, 1811);
INSERT INTO `music_likecomment` VALUES (6, 3, 1811);

-- ----------------------------
-- Table structure for music_movie
-- ----------------------------
DROP TABLE IF EXISTS `music_movie`;
CREATE TABLE `music_movie`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `director` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `years` date NULL DEFAULT NULL,
  `leader` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `d_rate_nums` int(0) NULL DEFAULT NULL,
  `d_rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `intro` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `num` int(0) NULL DEFAULT NULL,
  `origin_image_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imdb_link` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2187 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music_movie
-- ----------------------------
INSERT INTO `music_movie` VALUES (1, 'Let Go 2.0', '黄礼格', '国语 ', '2021-01-25', '索尼音乐 ', 10000, '4', NULL, 100007, 'https://y.qq.com/music/photo_new/T002R800x800M000003o6YRG2Cs1r5_1.jpg?max_age=2592000', 'picture/1.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (2, 'BANG BANG BANG (뱅뱅뱅)', 'BIGBANG (빅뱅)', ' 韩语 ', '2015-06-01', 'YG Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003UYgaO2wuwht_1.jpg?max_age=2592000', 'picture/2.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004AlfUb0cVkN1.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (3, '我是如此相信', '周杰伦', '国语 ', '2019-12-15', '杰威尔音乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001hGx1Z0so1YX_1.jpg?max_age=2592000', 'picture/3.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000025NhlN2yWrP4.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (4, '沦陷1', '王靖雯', '国语 ', '2021-02-26', 'Hikoon Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002FeANX3LpaRB_3.jpg?max_age=2592000', 'picture/4.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YetSZ06c9c9.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (5, 'Fantastic Baby', 'BIGBANG (빅뱅)', ' 韩语 ', '2012-02-29', 'YG Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001FFpMe09To1V_1.jpg?max_age=2592000', 'picture/5.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004AlfUb0cVkN1.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (6, '等你归来', '程响', '国语 ', '2021-01-17', '金翼龙唱片 ', 10000, '4', NULL, 100003, 'https://y.qq.com/music/photo_new/T002R800x800M0000013wRP23awiiU_2.jpg?max_age=2592000', 'picture/6.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003iPzNg35cWzp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (7, '忘了没有', '王靖雯', '国语 ', '2020-12-18', 'Hikoon Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003cbaVJ3d7ExY_1.jpg?max_age=2592000', 'picture/7.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YetSZ06c9c9.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (8, '晴天', '周杰伦', '国语 ', '2003-07-31', '杰威尔音乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000MkMni19ClKG_3.jpg?max_age=2592000', 'picture/8.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000025NhlN2yWrP4.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (9, '说说话', '王靖雯', '国语 ', '2022-01-26', 'Hikoon Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004P9KLM2d61rG_1.jpg?max_age=2592000', 'picture/9.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YetSZ06c9c9.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (10, '世界这么大还是遇见你', '程响', '国语 ', '2020-01-02', '金翼龙唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003Ls5Jo4EFBIH_3.jpg?max_age=2592000', 'picture/10.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003iPzNg35cWzp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (11, '善变', '王靖雯', '国语 ', '2020-09-30', '武汉一寸光年文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001qaUeM0o3g8Q_2.jpg?max_age=2592000', 'picture/11.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YetSZ06c9c9.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (12, '花海', '周杰伦', '国语 ', '2008-10-15', '杰威尔音乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002Neh8l0uciQZ_1.jpg?max_age=2592000', 'picture/12.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000025NhlN2yWrP4.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (13, 'LOSER (失败者)', 'BIGBANG (빅뱅)', ' 韩语 ', '2015-05-01', 'YG Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M00000078fT84A2h6x_1.jpg?max_age=2592000', 'picture/13.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004AlfUb0cVkN1.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (14, '七里香', '周杰伦', '国语 ', '2004-08-03', '杰威尔音乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003DFRzD192KKD_1.jpg?max_age=2592000', 'picture/14.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000025NhlN2yWrP4.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (15, '不再联系', '程响', '国语 ', '2012-06-01', '金翼龙唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000hz05a0H3mRE_2.jpg?max_age=2592000', 'picture/15.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003iPzNg35cWzp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (16, '反方向的钟2', '周杰伦', '国语 ', '2000-11-07', '杰威尔音乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000f01724fd7TH_1.jpg?max_age=2592000', 'picture/16.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000025NhlN2yWrP4.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (17, 'FLOWER ROAD (꽃 길)', 'BIGBANG (빅뱅)', ' 韩语 ', '2018-03-13', 'YG Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000OFmEW1IGy5k_1.jpg?max_age=2592000', 'picture/17.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004AlfUb0cVkN1.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (18, '夜曲', '周杰伦', '国语 ', '2005-11-01', '杰威尔音乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000024bjiL2aocxT_3.jpg?max_age=2592000', 'picture/18.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000025NhlN2yWrP4.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (19, '不知所措', '王靖雯', '国语 ', '2020-07-27', 'Hikoon Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001N1sHC0KHx4s_1.jpg?max_age=2592000', 'picture/19.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YetSZ06c9c9.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (20, '稻香', '周杰伦', '国语 ', '2008-10-15', '杰威尔音乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002Neh8l0uciQZ_1.jpg?max_age=2592000', 'picture/20.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000025NhlN2yWrP4.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (21, '麻雀', '李荣浩', '国语 ', '2020-07-30', '一样音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003P3ByD1n8nBK_1.jpg?max_age=2592000', 'picture/21.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000aHmbL2aPXWH.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (22, '人间烟火', '程响', '国语 ', '2022-03-20', '金翼龙音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001RBXSr0Fv3mh_2.jpg?max_age=2592000', 'picture/22.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003iPzNg35cWzp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (23, '会吗', '王靖雯', '国语 ', '2020-12-28', '武汉伯乐爱乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000TNQnH2uGPHD_2.jpg?max_age=2592000', 'picture/23.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YetSZ06c9c9.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (24, '年少有为', '李荣浩', '国语 ', '2018-07-19', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000GDpgK1rBvDC_2.jpg?max_age=2592000', 'picture/24.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000aHmbL2aPXWH.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (25, '时光洪流 (DJ快猫版)', '程响', '国语 ', '2021-08-17', '金翼龙音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000028W4QN0xB85F_1.jpg?max_age=2592000', 'picture/25.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003iPzNg35cWzp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (26, '兰亭序', '周杰伦', '国语 ', '2008-10-15', '杰威尔音乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002Neh8l0uciQZ_1.jpg?max_age=2592000', 'picture/26.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000025NhlN2yWrP4.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (27, '模特', '李荣浩', '国语 ', '2013-09-17', '一样音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004AhJHV3slLjN_1.jpg?max_age=2592000', 'picture/27.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000aHmbL2aPXWH.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (28, '一路向北', '周杰伦', '国语 ', '2005-06-24', '杰威尔音乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002MAeob3zLXwZ_2.jpg?max_age=2592000', 'picture/28.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000025NhlN2yWrP4.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (29, '遗憾也值得', '王靖雯', '国语 ', '2020-11-13', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000044szW31MkekN_1.jpg?max_age=2592000', 'picture/29.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YetSZ06c9c9.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (30, '千里共婵娟', '程响', '国语 ', '2019-07-25', '金翼龙唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004at5qX0o5DIb_2.jpg?max_age=2592000', 'picture/30.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003iPzNg35cWzp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (31, '青花瓷', '周杰伦', '国语 ', '2007-11-02', '杰威尔音乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002eFUFm2XYZ7z_1.jpg?max_age=2592000', 'picture/31.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000025NhlN2yWrP4.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (32, '说说话 (Live)', '王靖雯', '国语 ', '2021-10-08', '梦响强音 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000l2wUJ0SaXrC_1.jpg?max_age=2592000', 'picture/32.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YetSZ06c9c9.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (33, '孤勇者', '陈奕迅', '国语 ', '2021-11-08', 'Universal Music Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001uaPM93kxk1R_3.jpg?max_age=2592000', 'picture/33.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Nz2So3XXYek.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (34, '爱，存在', '王靖雯', '国语 ', '2020-06-19', 'Hikoon Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001gconQ395bKn_1.jpg?max_age=2592000', 'picture/34.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YetSZ06c9c9.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (35, '想起了你', '程响', '国语 ', '2018-12-13', '金翼龙唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001hRg6L2eWevf_2.jpg?max_age=2592000', 'picture/35.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003iPzNg35cWzp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (36, '富士山下', '陈奕迅', ' 粤语 ', '2006-11-23', 'Cinepoly Records Co. Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003nMzes28P7wv_1.jpg?max_age=2592000', 'picture/36.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Nz2So3XXYek.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (37, '不将就', '李荣浩', '国语 ', '2016-01-22', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001fi1zG0EjU2u_1.jpg?max_age=2592000', 'picture/37.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000aHmbL2aPXWH.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (38, '空欢喜', '王靖雯', '国语 ', '2021-06-12', '海域文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000030axUF4ChSUm_1.jpg?max_age=2592000', 'picture/38.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YetSZ06c9c9.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (39, '十年', '陈奕迅', '国语 ', '2003-04-15', '英皇唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000GDz8k03UOaI_1.jpg?max_age=2592000', 'picture/39.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Nz2So3XXYek.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (40, '演员', '薛之谦', '国语 ', '2015-06-05', '海蝶音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003y8dsH2wBHlo_1.jpg?max_age=2592000', 'picture/40.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002J4UUk29y8BY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (41, '红玫瑰', '陈奕迅', '国语 ', '2007-04-24', 'Cinepoly Records Co. Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003yQidc3s7P65_1.jpg?max_age=2592000', 'picture/41.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Nz2So3XXYek.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (42, '戒烟3', '李荣浩', '国语 ', '2017-11-17', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003PTZBu0IXqg2_1.jpg?max_age=2592000', 'picture/42.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000aHmbL2aPXWH.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (43, '天外来物', '薛之谦', '国语 ', '2020-12-31', '潮石音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000K9Zp13TZp5s_1.jpg?max_age=2592000', 'picture/43.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002J4UUk29y8BY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (44, '单车', '陈奕迅', ' 粤语 ', '2001-04-13', '英皇唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004S8YQr3UmEbG_1.jpg?max_age=2592000', 'picture/44.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Nz2So3XXYek.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (45, '在他乡', '程响', '国语 ', '2022-01-26', '金翼龙音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001dh1WQ0RLN4o_2.jpg?max_age=2592000', 'picture/45.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003iPzNg35cWzp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (46, '我好像在哪见过你', '薛之谦', '国语 ', '2016-07-18', '海蝶音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000dcZ9I1nzO62_1.jpg?max_age=2592000', 'picture/46.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002J4UUk29y8BY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (47, '老街', '李荣浩', '国语 ', '2010-09-09', '一样音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001LP8hk0a6pOp_1.jpg?max_age=2592000', 'picture/47.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000aHmbL2aPXWH.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (48, '不要说话', '陈奕迅', '国语 ', '2008-06-30', 'Cinepoly Records Co. Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000J1pJ50cDCVE_3.jpg?max_age=2592000', 'picture/48.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Nz2So3XXYek.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (49, '刚刚好', '薛之谦', '国语 ', '2016-07-18', '海蝶音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000dcZ9I1nzO62_1.jpg?max_age=2592000', 'picture/49.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002J4UUk29y8BY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (50, '爱情转移', '陈奕迅', '国语 ', '2007-04-24', 'Cinepoly Records Co. Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003yQidc3s7P65_1.jpg?max_age=2592000', 'picture/50.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Nz2So3XXYek.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (51, '渐暖', '时代少年团', '国语 ', '2022-02-14', '索尼音乐x时代峰峻 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001emlRT0JbjwS_4.jpg?max_age=2592000', 'picture/51.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000039JTTG0s4SCv.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (52, '戒烟4', '李荣浩', '国语 ', '2017-11-14', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003EenCA2q0MWF_1.jpg?max_age=2592000', 'picture/52.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000aHmbL2aPXWH.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (53, '绅士', '薛之谦', '国语 ', '2015-06-05', '海蝶音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003y8dsH2wBHlo_1.jpg?max_age=2592000', 'picture/53.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002J4UUk29y8BY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (54, '你还要我怎样', '薛之谦', '国语 ', '2013-11-11', '潮石音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000QgFcm0v8WaF_1.jpg?max_age=2592000', 'picture/54.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002J4UUk29y8BY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (55, '哪吒', '时代少年团', '国语 ', '2021-11-11', '北京时代峰峻文化艺术发展有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003bVz1O0yPOxF_1.jpg?max_age=2592000', 'picture/55.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000039JTTG0s4SCv.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (56, '爸爸妈妈', '李荣浩', '国语 ', '2016-01-22', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001fi1zG0EjU2u_1.jpg?max_age=2592000', 'picture/56.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000aHmbL2aPXWH.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (57, '我喜欢你', '时代少年团', '国语 ', '2021-07-26', '北京时代峰峻文化艺术发展有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004UvCbG14o93g_2.jpg?max_age=2592000', 'picture/57.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000039JTTG0s4SCv.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (58, '李白', '李荣浩', '国语 ', '2013-09-17', '一样音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004AhJHV3slLjN_1.jpg?max_age=2592000', 'picture/58.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000aHmbL2aPXWH.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (59, '意外', '薛之谦', '国语 ', '2013-11-11', '潮石音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000QgFcm0v8WaF_1.jpg?max_age=2592000', 'picture/59.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002J4UUk29y8BY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (60, '好久不见', '陈奕迅', '国语 ', '2007-04-24', 'Cinepoly Records Co. Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003yQidc3s7P65_1.jpg?max_age=2592000', 'picture/60.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Nz2So3XXYek.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (61, '女儿国5', '张靓颖', '国语 ', '2017-12-04', '燃音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004Rs5Fb0Zn5OG_1.jpg?max_age=2592000', 'picture/61.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000aw4WC2EQYTv.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (62, '认真的雪', '薛之谦', '国语 ', '2006-06-09', '潮石音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003mUYW22JXKVK_1.jpg?max_age=2592000', 'picture/62.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002J4UUk29y8BY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (63, '男儿歌', '时代少年团', '国语 ', '2021-11-11', '北京时代峰峻文化艺术发展有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003bVz1O0yPOxF_1.jpg?max_age=2592000', 'picture/63.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000039JTTG0s4SCv.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (64, '其实', '薛之谦', '国语 ', '2013-11-11', '潮石音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000QgFcm0v8WaF_1.jpg?max_age=2592000', 'picture/64.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002J4UUk29y8BY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (65, '春泥 (女版)', '旺仔小乔', '国语 ', '2022-03-13', '点点繁星 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003ULNjm31qxM3_2.jpg?max_age=2592000', 'picture/65.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000045G50v35VUMG.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (66, '醉', '时代少年团', '国语 ', '2021-11-11', '北京时代峰峻文化艺术发展有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003bVz1O0yPOxF_1.jpg?max_age=2592000', 'picture/66.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000039JTTG0s4SCv.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (67, '怪咖', '薛之谦', '国语 ', '2018-12-31', '潮石音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000015rUVB2OUdGA_1.jpg?max_age=2592000', 'picture/67.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002J4UUk29y8BY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (68, '浮夸', '陈奕迅', ' 粤语 ', '2005-01-01', 'Cinepoly Records Co. Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003J6fvc0bVJon_1.jpg?max_age=2592000', 'picture/68.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Nz2So3XXYek.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (69, '起风了6', '周深', '国语 ', '2020-09-03', '上海宽娱数码科技有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000CVCqK4aEW0M_2.jpg?max_age=2592000', 'picture/69.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003fA5G40k6hKc.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (70, '爱丫爱丫 (女版)', '旺仔小乔', '国语 ', '2022-03-23', '娱咖文化/点点繁星 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002ecOab383WIi_1.jpg?max_age=2592000', 'picture/70.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000045G50v35VUMG.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (71, '有你', '时代少年团', '国语 ', '2021-12-25', '北京时代峰峻文化艺术发展有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003iBcLa2mLPRT_2.jpg?max_age=2592000', 'picture/71.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000039JTTG0s4SCv.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (72, '大鱼', '周深', '国语 ', '2016-05-20', '霍尔果斯彩条屋影业有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004Y7V4s3ug4cC_1.jpg?max_age=2592000', 'picture/72.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003fA5G40k6hKc.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (73, '淘汰', '陈奕迅', '国语 ', '2007-04-24', 'Cinepoly Records Co. Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003yQidc3s7P65_1.jpg?max_age=2592000', 'picture/73.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Nz2So3XXYek.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (74, '说声你好', '周深', '国语 ', '2021-12-20', 'TME影音+ ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001REfoa2F5VT8_1.jpg?max_age=2592000', 'picture/74.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003fA5G40k6hKc.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (75, '年轮7', '旺仔小乔', '国语 ', '2021-08-19', '漫吞吞文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002AEAmF1o7Gs3_1.jpg?max_age=2592000', 'picture/75.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000045G50v35VUMG.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (76, '美人鱼', '林俊杰', '国语 ', '2004-06-04', '海蝶音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000y5gq7449K9I_2.jpg?max_age=2592000', 'picture/76.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BLpXF2DyJe2.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (77, '玫瑰少年 (Live)', '周深', '国语 ', '2022-04-01', '浙江卫视 ', 10000, '4', NULL, 100007, 'https://y.qq.com/music/photo_new/T002R800x800M000001oX53W4dFtMR_1.jpg?max_age=2592000', 'picture/77.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003fA5G40k6hKc.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (78, '新地球', '林俊杰', '国语 ', '2014-12-27', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000033R2xQ2I0Uyf_1.jpg?max_age=2592000', 'picture/78.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BLpXF2DyJe2.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (79, '鲛人之歌', '周深', '国语 ', '2022-03-28', '华策音乐（天津）有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002QbhHl2pkvxR_1.jpg?max_age=2592000', 'picture/79.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003fA5G40k6hKc.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (80, '江南', '林俊杰', '国语 ', '2004-06-04', '海蝶音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000y5gq7449K9I_2.jpg?max_age=2592000', 'picture/80.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BLpXF2DyJe2.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (81, '光字片', '周深', '国语 ', '2022-02-16', '看见网络科技（上海）有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000024Nayf2wuQGL_1.jpg?max_age=2592000', 'picture/81.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003fA5G40k6hKc.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (82, '可惜没如果', '林俊杰', '国语 ', '2014-12-27', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000033R2xQ2I0Uyf_1.jpg?max_age=2592000', 'picture/82.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BLpXF2DyJe2.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (83, '算你狠 (Live)', '周深', '国语 ', '2022-03-19', '浙江卫视 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000HQ3Rm3aGYKb_1.jpg?max_age=2592000', 'picture/83.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003fA5G40k6hKc.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (84, '修炼爱情', '林俊杰', '国语 ', '2013-03-13', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001gqOnU3DTg2S_2.jpg?max_age=2592000', 'picture/84.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BLpXF2DyJe2.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (85, '睡个好觉', '周深', '国语 ', '2022-03-21', '银河方舟StarNation ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000027tFco1kk7Yv_1.jpg?max_age=2592000', 'picture/85.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003fA5G40k6hKc.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (86, '我们的爱 (Live)8', '林俊杰', '国语 ', '2018-01-12', '浙江卫视 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004Uk9Ap0NscR0_1.jpg?max_age=2592000', 'picture/86.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BLpXF2DyJe2.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (87, '为敌', '旺仔小乔', '国语 ', '2020-12-10', '武汉伯乐爱乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002Jlxwj0PuWyD_1.jpg?max_age=2592000', 'picture/87.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000045G50v35VUMG.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (88, '背对背拥抱', '林俊杰', '国语 ', '2009-12-18', '海蝶音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002C0kX720gMQi_2.jpg?max_age=2592000', 'picture/88.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BLpXF2DyJe2.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (89, '朱雀', '时代少年团', '国语 ', '2021-07-26', '北京时代峰峻文化艺术发展有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004UvCbG14o93g_2.jpg?max_age=2592000', 'picture/89.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000039JTTG0s4SCv.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (90, '化身孤岛的鲸', '周深', '国语 ', '2020-07-28', '上海劲焱文化传媒有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002G9aKI3UbdsG_1.jpg?max_age=2592000', 'picture/90.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003fA5G40k6hKc.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (91, '沦陷9', '旺仔小乔', '国语 ', '2021-05-15', 'Hikoon Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002xYLYH3oReB6_1.jpg?max_age=2592000', 'picture/91.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000045G50v35VUMG.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (92, '和光同尘', '周深', '国语 ', '2020-12-20', '正午阳光影业 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003CypGl0p7fek_1.jpg?max_age=2592000', 'picture/92.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003fA5G40k6hKc.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (93, '花田错 (Live)', '时代少年团', '国语 ', '2021-12-18', '北京时代峰峻文化艺术发展有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002X4tmk3xT53T_1.jpg?max_age=2592000', 'picture/93.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000039JTTG0s4SCv.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (94, '花败', '旺仔小乔', '国语 ', '2021-03-27', 'Hikoon Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002PZhPS0oOBjt_1.jpg?max_age=2592000', 'picture/94.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000045G50v35VUMG.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (95, '阿拉斯加海湾', '蓝心羽', '国语 ', '2020-12-05', 'BLUE STUDIO ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003QU3EZ3Sfm6B_1.jpg?max_age=2592000', 'picture/95.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Rc7tU01TXKL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (96, '傻瓜', '时代少年团', '国语 ', '2021-07-26', '北京时代峰峻文化艺术发展有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004UvCbG14o93g_2.jpg?max_age=2592000', 'picture/96.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000039JTTG0s4SCv.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (97, '倒影', '蓝心羽', '国语 ', '2022-01-03', 'BLUE STUDIO ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002OSFnv1uC33N_1.jpg?max_age=2592000', 'picture/97.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Rc7tU01TXKL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (98, '春泥 (Live)', '旺仔小乔', '国语 ', '2018-05-01', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000.jpg?max_age=2592000', 'picture/98.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000045G50v35VUMG.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (99, '星辰不坠落', '蓝心羽', '国语 ', '2021-07-15', 'BLUE STUDIO ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002v6xYS0Z3UJk_2.jpg?max_age=2592000', 'picture/99.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Rc7tU01TXKL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (100, '美人鱼 (Live)', '林俊杰', '国语 ', '2007-01-24', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000032QSzJ1XHsdG_1.jpg?max_age=2592000', 'picture/100.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BLpXF2DyJe2.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (101, '樱花树下的约定 (Live)', '旺仔小乔', '国语 ', '2018-05-01', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000.jpg?max_age=2592000', 'picture/101.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000045G50v35VUMG.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (102, '记忆停留', '蓝心羽', '国语 ', '2021-04-16', 'BLUE STUDIO ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002gMEz44d5sFf_1.jpg?max_age=2592000', 'picture/102.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Rc7tU01TXKL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (103, '那些你很冒险的梦', '林俊杰', '国语 ', '2011-12-31', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002PQCmo2azasb_1.jpg?max_age=2592000', 'picture/103.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BLpXF2DyJe2.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (104, '星空剪影', '蓝心羽', '国语 ', '2020-09-16', '扭湃哇音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002NikDf0vDPwq_1.jpg?max_age=2592000', 'picture/104.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Rc7tU01TXKL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (105, '起风了10', '旺仔小乔', '国语 ', '2021-10-08', '腾讯音乐娱乐集团 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000dO8421RDHCW_1.jpg?max_age=2592000', 'picture/105.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000045G50v35VUMG.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (106, 'Always Online', '林俊杰', '国语 ', '2008-10-18', '海蝶音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002g6zv02X7SNi_1.jpg?max_age=2592000', 'picture/106.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BLpXF2DyJe2.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (107, '突然一场雨', '蓝心羽', '国语 ', '2022-03-30', 'BLUE STUDIO ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002cuuKy15973j_1.jpg?max_age=2592000', 'picture/107.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Rc7tU01TXKL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (108, '哪里都是你', '队长', '国语 ', '2017-07-03', '哗啦哗啦 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000Vwygr4Y8BPi_2.jpg?max_age=2592000', 'picture/108.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002rHyN14UyyaW.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (109, '小宇', '蓝心羽', '国语 ', '2019-02-01', '极韵文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003U5BKh17EpaO_1.jpg?max_age=2592000', 'picture/109.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Rc7tU01TXKL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (110, '11', '队长', '国语 ', '2022-01-01', '索尼音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003XitlT0wAVFh_2.jpg?max_age=2592000', 'picture/110.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002rHyN14UyyaW.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (111, '孤勇者 (Live)14', '旺仔小乔', '国语 ', '2018-05-01', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000.jpg?max_age=2592000', 'picture/111.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000045G50v35VUMG.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (112, '晚风快递', '蓝心羽', '国语 ', '2022-03-14', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003YSZg51KkZQI_1.jpg?max_age=2592000', 'picture/112.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Rc7tU01TXKL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (113, '楼顶上的小斑鸠', '队长', '国语 ', '2021-05-25', 'Believe Artist Service/队长 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004FNl1w0wD0Zh_1.jpg?max_age=2592000', 'picture/113.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002rHyN14UyyaW.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (114, '寂寞烟火', '蓝心羽', '国语 ', '2018-11-08', '极韵文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001fqR3749jFpE_1.jpg?max_age=2592000', 'picture/114.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Rc7tU01TXKL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (115, '姐姐真漂亮', '时代少年团', '国语 ', '2021-07-18', '北京时代峰峻文化艺术发展有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000io1950KoJSv_1.jpg?max_age=2592000', 'picture/115.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000039JTTG0s4SCv.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (116, '辈分歌', '郭德纲', '国语 ', '2018-01-27', '北京自在天浩文化娱乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003w4SnA4gNVTm_1.jpg?max_age=2592000', 'picture/116.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004bwEMD0ssUPi.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (117, '哪里都是你2.0', '队长', '国语 ', '2019-05-07', '哗啦哗啦 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002qLNzu4Vq0gV_1.jpg?max_age=2592000', 'picture/117.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002rHyN14UyyaW.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (118, '夏天的风12', '蓝心羽', '国语 ', '2020-04-28', 'BLUE STUDIO ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001GVP441g4PB3_1.jpg?max_age=2592000', 'picture/118.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Rc7tU01TXKL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (119, 'Let Go', '黄礼格', '国语 ', '2020-07-30', '索尼音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000019YWFC040se0_1.jpg?max_age=2592000', 'picture/119.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (120, '摩天动物园', 'G.E.M. 邓紫棋', '国语 ', '2019-12-27', 'G Nation ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000049MVh824D7bM_1.jpg?max_age=2592000', 'picture/120.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001fNHEf1SFEFN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (121, '照花台', '郭德纲', '国语 ', '2018-05-01', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000.jpg?max_age=2592000', 'picture/121.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004bwEMD0ssUPi.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (122, '从前说', '小阿七', '国语 ', '2021-12-29', '武汉一寸光年文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001en2Lq0PZK7i_3.jpg?max_age=2592000', 'picture/122.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000DT3kC3IGHjR.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (123, '泡沫', 'G.E.M. 邓紫棋', '国语 ', '2012-07-05', '蜂鸟音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002YFufr4bXZyI_1.jpg?max_age=2592000', 'picture/123.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001fNHEf1SFEFN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (124, '探清水河 (Live)', '郭德纲', '国语 ', '2005-01-01', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003GW5l62zVkIB_2.jpg?max_age=2592000', 'picture/124.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004bwEMD0ssUPi.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (125, '酒家', '小阿七', '国语 ', '2020-05-22', '天果文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003EpdQ83eWaSz_1.jpg?max_age=2592000', 'picture/125.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000DT3kC3IGHjR.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (126, '光年之外', 'G.E.M. 邓紫棋', '国语 ', '2016-12-30', '蜂鸟音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001mTkmb4GJlh4_1.jpg?max_age=2592000', 'picture/126.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001fNHEf1SFEFN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (127, '十三州府', '队长', '国语 ', '2022-03-13', '闪光星球 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004LiCl01JTB9b_2.jpg?max_age=2592000', 'picture/127.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002rHyN14UyyaW.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (128, '手心的蔷薇', '林俊杰', '国语 ', '2014-12-27', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000033R2xQ2I0Uyf_1.jpg?max_age=2592000', 'picture/128.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BLpXF2DyJe2.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (129, '可能', '队长', '国语 ', '2021-05-25', 'Believe Artist Service/队长 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004FNl1w0wD0Zh_1.jpg?max_age=2592000', 'picture/129.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002rHyN14UyyaW.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (130, '《于谦的风流人生》郭德纲于谦2017精选相声', '郭德纲', '国语 ', '2020-09-18', '海宁博瑞芳乔文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003ZhUI22lPkvA_1.jpg?max_age=2592000', 'picture/130.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004bwEMD0ssUPi.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (131, '再见', 'G.E.M. 邓紫棋', '国语 ', '2015-11-06', '蜂鸟音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003c616O2Zlswm_1.jpg?max_age=2592000', 'picture/131.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001fNHEf1SFEFN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (132, '夜行', '队长', '国语 ', '2019-04-30', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M00000365NbR21S2EZ_1.jpg?max_age=2592000', 'picture/132.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002rHyN14UyyaW.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (133, '多远都要在一起', 'G.E.M. 邓紫棋', '国语 ', '2015-11-06', '蜂鸟音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003c616O2Zlswm_1.jpg?max_age=2592000', 'picture/133.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001fNHEf1SFEFN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (134, '飞到你心里', '队长', '国语 ', '2021-05-25', 'Believe Artist Service/队长 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004FNl1w0wD0Zh_1.jpg?max_age=2592000', 'picture/134.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002rHyN14UyyaW.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (135, '《于氏父子轶事》郭德纲 于谦', '郭德纲', ' 其他 ', '2020-09-18', '海宁博瑞芳乔文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003ZhUI22lPkvA_1.jpg?max_age=2592000', 'picture/135.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004bwEMD0ssUPi.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (136, '倒数', 'G.E.M. 邓紫棋', '国语 ', '2018-08-16', '蜂鸟音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003cKIKZ1J4Yyu_1.jpg?max_age=2592000', 'picture/136.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001fNHEf1SFEFN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (137, '我是大侦探', '郭德纲', '国语 ', '2018-09-14', '北京太声文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000025itwn0b4Bs9_1.jpg?max_age=2592000', 'picture/137.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004bwEMD0ssUPi.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (138, '不谓侠', '小阿七', '国语 ', '2019-11-15', '启韵传媒 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001Sx1rf0RsKl0_1.jpg?max_age=2592000', 'picture/138.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000DT3kC3IGHjR.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (139, '01于谦爸爸讲究生活', '郭德纲', '国语 ', '2020-08-07', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004GQCez29m2MZ_1.jpg?max_age=2592000', 'picture/139.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004bwEMD0ssUPi.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (140, '五十年以后', '小阿七', '国语 ', '2021-10-27', '坚诚文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001Ual6d3360F3_1.jpg?max_age=2592000', 'picture/140.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000DT3kC3IGHjR.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (141, '句号', 'G.E.M. 邓紫棋', '国语 ', '2019-12-27', 'G Nation ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000049MVh824D7bM_1.jpg?max_age=2592000', 'picture/141.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001fNHEf1SFEFN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (142, '十三香 (Live)', '郭德纲', '国语 ', '2018-05-01', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000.jpg?max_age=2592000', 'picture/142.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004bwEMD0ssUPi.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (143, '那女孩对我说13', '小阿七', '国语 ', '2019-09-28', '武汉伯乐爱乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000qRFbH3Yw6gq_2.jpg?max_age=2592000', 'picture/143.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000DT3kC3IGHjR.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (144, '喜欢你15', 'G.E.M. 邓紫棋', ' 粤语 ', '2014-08-15', '蜂鸟音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000cFPKx3ZGzks_1.jpg?max_age=2592000', 'picture/144.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001fNHEf1SFEFN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (145, '来自天堂的魔鬼', 'G.E.M. 邓紫棋', '国语 ', '2015-11-06', '蜂鸟音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003c616O2Zlswm_1.jpg?max_age=2592000', 'picture/145.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001fNHEf1SFEFN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (146, '一定要爱你 (女生版)', '小阿七', '国语 ', '2021-12-21', '无乐不作 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000I6Ftl4PuMTO_1.jpg?max_age=2592000', 'picture/146.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000DT3kC3IGHjR.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (147, '踏雪', '等什么君(邓寓君)', '国语 ', '2021-12-04', '广州齐鼓文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002SMWjY2t4OsV_6.jpg?max_age=2592000', 'picture/147.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001B2drs3Jq4EX.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (148, '笑红尘 (女版)', '小阿七', '国语 ', '2022-03-29', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002K3mdj1HiwJr_1.jpg?max_age=2592000', 'picture/148.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000DT3kC3IGHjR.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (149, '辞九门回忆16', '等什么君(邓寓君)', '国语 ', '2019-03-19', '坚诚文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001Jegbz00ePg5_2.jpg?max_age=2592000', 'picture/149.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001B2drs3Jq4EX.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (150, '从前说 (DJ阿卓版)', '小阿七', '国语 ', '2021-12-29', '武汉一寸光年文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001en2Lq0PZK7i_3.jpg?max_age=2592000', 'picture/150.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000DT3kC3IGHjR.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (151, '关山酒', '等什么君(邓寓君)', '国语 ', '2019-08-31', '鲸鱼向海 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000Q5EDB1gg5I2_1.jpg?max_age=2592000', 'picture/151.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001B2drs3Jq4EX.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (152, '《日本小妹》郭德纲于谦2016精选相声', '郭德纲', '国语 ', '2018-02-06', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002RJsBI3d9h0N_1.jpg?max_age=2592000', 'picture/152.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004bwEMD0ssUPi.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (153, '忽而今夏', '汪苏泷', '国语 ', '2018-05-11', '大象无形 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001bKb3S0HmWvs_1.jpg?max_age=2592000', 'picture/153.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001z2JmX09LLgL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (154, '春庭雪', '等什么君(邓寓君)', '国语 ', '2020-07-11', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000vtKmF3OEIbF_2.jpg?max_age=2592000', 'picture/154.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001B2drs3Jq4EX.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (155, '我想要', '小阿七', '国语 ', '2021-06-17', '武汉一寸光年文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000JAN1A1cFlyK_1.jpg?max_age=2592000', 'picture/155.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000DT3kC3IGHjR.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (156, '闪耀', '汪苏泷', '国语 ', '2019-08-02', '白鲸音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001BNlnT2A6CmL_1.jpg?max_age=2592000', 'picture/156.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001z2JmX09LLgL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (157, '难渡', '等什么君(邓寓君)', '国语 ', '2021-03-25', '广州齐鼓文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002eB94D2rJ9py_1.jpg?max_age=2592000', 'picture/157.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001B2drs3Jq4EX.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (158, '《智障禅师》 郭德纲于谦2016精选相声', '郭德纲', '国语 ', '2018-02-06', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002RJsBI3d9h0N_1.jpg?max_age=2592000', 'picture/158.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004bwEMD0ssUPi.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (159, '曾经的我们', '小阿七', '国语 ', '2019-12-27', '风靡时代 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002yyesi1Ib0e2_1.jpg?max_age=2592000', 'picture/159.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000DT3kC3IGHjR.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (160, '天下17', '等什么君(邓寓君)', '国语 ', '2020-05-23', '讯飞音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004Zztul2MQ89W_1.jpg?max_age=2592000', 'picture/160.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001B2drs3Jq4EX.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (161, '巴赫旧约', '汪苏泷', '国语 ', '2010-11-15', '大象无形 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003LHL270LMLgx_2.jpg?max_age=2592000', 'picture/161.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001z2JmX09LLgL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (162, '慕夏', '等什么君(邓寓君)', '国语 ', '2019-08-03', '武汉嗨库文化传媒有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003ReM8w0VP9fU_1.jpg?max_age=2592000', 'picture/162.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001B2drs3Jq4EX.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (163, '光的方向', '张碧晨', '国语 ', '2021-04-26', '华策音乐（天津）有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004BVn1D1Na3jw_1.jpg?max_age=2592000', 'picture/163.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000003ZpE43ypssl.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (164, '这世界那么多人', '莫文蔚', '国语 ', '2021-05-07', '索尼音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001fN0ks2oUDvX_1.jpg?max_age=2592000', 'picture/164.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000cISVf2QqLc6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (165, '水星记', '郭顶', '国语 ', '2016-11-21', '环球唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000016jBpl0vMqbb_1.jpg?max_age=2592000', 'picture/165.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000002ankM4d5yZI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (166, '踏雪 (DJ阿卓版)', '等什么君(邓寓君)', '国语 ', '2022-03-12', '爆浆牛丸 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003ldEGX1MMXhB_1.jpg?max_age=2592000', 'picture/166.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001B2drs3Jq4EX.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (167, '只要平凡18', '张杰', '国语 ', '2018-06-25', '上海霓虹兽 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000K7srf1rZtOX_2.jpg?max_age=2592000', 'picture/167.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002azErJ0UcDN6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (168, '归寻', '等什么君(邓寓君)', '国语 ', '2019-05-31', '武汉嗨库文化传媒有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000023vbXv1LwkhI_1.jpg?max_age=2592000', 'picture/168.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001B2drs3Jq4EX.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (169, '千年之恋 (Live)19', '杨丞琳', '国语 ', '2021-12-25', '浙江卫视 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002rWWU34eygRc_4.jpg?max_age=2592000', 'picture/169.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000ZVS6E1f6f0d.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (170, '慢慢喜欢你', '莫文蔚', '国语 ', '2018-05-31', '索尼音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001XtPF21kfMXb_1.jpg?max_age=2592000', 'picture/170.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000cISVf2QqLc6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (171, '赤伶20', '等什么君(邓寓君)', '国语 ', '2019-07-17', '坚诚文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000LiCt43zobpA_1.jpg?max_age=2592000', 'picture/171.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001B2drs3Jq4EX.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (172, '如故', '张碧晨', '国语 ', '2021-09-01', '上海韶愔音乐娱乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001KAoLS1rFRz4_2.jpg?max_age=2592000', 'picture/172.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000003ZpE43ypssl.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (173, '我们俩', '郭顶', '国语 ', '2009-08-18', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003sMyYb4HZAAz_1.jpg?max_age=2592000', 'picture/173.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000002ankM4d5yZI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (174, 'Letting Go', '蔡健雅', '国语 ', '2011-11-18', '亚神音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001aC9dM35U6KB_2.jpg?max_age=2592000', 'picture/174.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000hNnWC3kko2c.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (175, '盛夏的果实', '莫文蔚', '国语 ', '2000-06-01', '滚石唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000KeV8l1PIjxt_1.jpg?max_age=2592000', 'picture/175.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000cISVf2QqLc6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (176, '年轮21', '张碧晨', '国语 ', '2015-07-16', '海蝶音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000044dYsD2Y0lfN_1.jpg?max_age=2592000', 'picture/176.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000003ZpE43ypssl.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (177, '红色高跟鞋22', '蔡健雅', '国语 ', '2009-08-19', '亚神音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002dOge41xlS8x_1.jpg?max_age=2592000', 'picture/177.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000hNnWC3kko2c.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (178, '保留', '郭顶', '国语 ', '2016-11-25', 'Go East Music Entertainment Consulting Limited ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003Rjfrr0BXKpX_2.jpg?max_age=2592000', 'picture/178.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000002ankM4d5yZI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (179, '凉凉23', '杨宗纬', '国语 ', '2017-02-18', '上海希瓜音乐制作有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000011IIJE3XYf9L_2.jpg?max_age=2592000', 'picture/179.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003tMm0y0TuewY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (180, '一生所爱', '卢冠廷', ' 粤语 ', '1995-05-01', '滚石唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001UAAKE4QJguW_1.jpg?max_age=2592000', 'picture/180.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (181, '思念是一种病', '张震岳', '国语 ', '2007-07-06', '滚石唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000044oT0A0isMzR_1.jpg?max_age=2592000', 'picture/181.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (182, '不要忘记我爱你', '张碧晨', '国语 ', '2015-08-25', '北京灿途音乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003A7AJz3StLoY_1.jpg?max_age=2592000', 'picture/182.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000003ZpE43ypssl.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (183, '凄美地', '郭顶', '国语 ', '2016-10-21', '环球唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003WwY5s1LXijO_1.jpg?max_age=2592000', 'picture/183.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000002ankM4d5yZI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (184, '越来越不懂24', '蔡健雅', '国语 ', '2007-10-05', '亚神音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001VqGlj2Oj52k_1.jpg?max_age=2592000', 'picture/184.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000hNnWC3kko2c.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (185, '星空剪影 (Live)', '张碧晨', '国语 ', '2021-04-10', '字跳网络 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000x3W5p3EkZyJ_1.jpg?max_age=2592000', 'picture/185.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000003ZpE43ypssl.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (186, '忽然之间', '莫文蔚', '国语 ', '1999-12-01', '滚石唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003q2Hji2dzAyI_1.jpg?max_age=2592000', 'picture/186.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000cISVf2QqLc6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (187, 'Letting Go (Live)', '蔡健雅', '国语 ', '2013-12-03', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004Beu0y3VV7yB_1.jpg?max_age=2592000', 'picture/187.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000hNnWC3kko2c.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (188, '骗', '张碧晨', '国语 ', '2020-12-08', '光线影业 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001hlNSm3W2JyL_1.jpg?max_age=2592000', 'picture/188.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000003ZpE43ypssl.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (189, '想着你', '郭顶', '国语 ', '2016-11-25', 'Go East Music Entertainment Consulting Limited ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003Rjfrr0BXKpX_2.jpg?max_age=2592000', 'picture/189.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000002ankM4d5yZI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (190, '被驯服的象', '蔡健雅', '国语 ', '2013-09-24', '亚神音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001mQj2U1r3FDQ_1.jpg?max_age=2592000', 'picture/190.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000hNnWC3kko2c.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (191, '情歌两三首', '郭顶', '国语 ', '2009-08-18', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003sMyYb4HZAAz_1.jpg?max_age=2592000', 'picture/191.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000002ankM4d5yZI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (192, 'Beautiful Love', '蔡健雅', '国语 ', '2007-05-08', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004bsze91nxcUd_1.jpg?max_age=2592000', 'picture/192.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000hNnWC3kko2c.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (193, '阴天', '莫文蔚', '国语 ', '1999-04-20', '滚石唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000hTTJN3oScZr_2.jpg?max_age=2592000', 'picture/193.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000cISVf2QqLc6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (194, '奇迹再现 (Live)25', '萧敬腾', '国语 ', '2022-01-29', '浙江卫视 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003EnUWF1h3vdf_2.jpg?max_age=2592000', 'picture/194.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (195, '失物招领', '蔡健雅', '国语 ', '2021-12-31', '天津光合世纪文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003eIGiA0pleAM_1.jpg?max_age=2592000', 'picture/195.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000hNnWC3kko2c.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (196, '每个眼神都只身荒野', '郭顶', '国语 ', '2016-11-25', 'Go East Music Entertainment Consulting Limited ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003Rjfrr0BXKpX_2.jpg?max_age=2592000', 'picture/196.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000002ankM4d5yZI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (197, '其实都没有', '杨宗纬', '国语 ', '2013-03-29', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000KL9de0YaLIR_1.jpg?max_age=2592000', 'picture/197.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003tMm0y0TuewY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (198, '电台情歌', '莫文蔚', '国语 ', '1997-10-29', '滚石唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004eNxMk2QyCn4_1.jpg?max_age=2592000', 'picture/198.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000cISVf2QqLc6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (199, '空白格', '蔡健雅', '国语 ', '2007-10-05', '亚神音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001VqGlj2Oj52k_1.jpg?max_age=2592000', 'picture/199.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000hNnWC3kko2c.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (200, '凉凉26', '杨宗纬', '国语 ', '2017-02-18', '上海希瓜音乐制作有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000011IIJE3XYf9L_2.jpg?max_age=2592000', 'picture/200.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003tMm0y0TuewY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (201, '在云端', '郭顶', '国语 ', '2016-11-25', 'Go East Music Entertainment Consulting Limited ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003Rjfrr0BXKpX_2.jpg?max_age=2592000', 'picture/201.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000002ankM4d5yZI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (202, '洋葱', '杨宗纬', '国语 ', '2008-01-11', '滚石唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002BvmMD3KqaWi_1.jpg?max_age=2592000', 'picture/202.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003tMm0y0TuewY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (203, '落地之前', '郭顶', '国语 ', '2016-11-25', 'Go East Music Entertainment Consulting Limited ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003Rjfrr0BXKpX_2.jpg?max_age=2592000', 'picture/203.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000002ankM4d5yZI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (204, '一次就好', '杨宗纬', '国语 ', '2016-02-02', '呆猫互娱 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000025kG2e30vs69_1.jpg?max_age=2592000', 'picture/204.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003tMm0y0TuewY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (205, '如果没有你', '莫文蔚', '国语 ', '2006-04-07', '索尼音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001ztzln3msZZL_3.jpg?max_age=2592000', 'picture/205.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000cISVf2QqLc6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (206, '越来越不懂27', '蔡健雅', '国语 ', '2007-10-03', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000008RguB0cTfXl_1.jpg?max_age=2592000', 'picture/206.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000hNnWC3kko2c.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (207, '我想要 (Live)', '杨宗纬', '国语 ', '2022-04-09', '字跳网络 ', 10000, '4', NULL, 100005, 'https://y.qq.com/music/photo_new/T002R800x800M000003VVHR42OENf9_1.jpg?max_age=2592000', 'picture/207.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003tMm0y0TuewY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (208, '幸运大门', '郭顶', '国语 ', '2009-08-18', 'null', 10000, '4', NULL, 100006, 'https://y.qq.com/music/photo_new/T002R800x800M000003sMyYb4HZAAz_1.jpg?max_age=2592000', 'picture/208.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000002ankM4d5yZI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (209, '봄여름가을겨울 (Still Life)', 'BIGBANG (빅뱅)', ' 韩语 ', '2022-04-05', 'YG Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003eNXft4QQa3G_4.jpg?max_age=2592000', 'picture/209.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004AlfUb0cVkN1.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (210, '我们好像在哪见过', '叶蓓', '国语 ', '2013-10-29', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003XRJ3n4NVGbB_1.jpg?max_age=2592000', 'picture/210.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (211, '飞鸟和蝉', '任然', '国语 ', '2020-07-03', '北京千和世纪文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004C9Kg7275J7H_1.jpg?max_age=2592000', 'picture/211.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M00000067r4p0wBDDN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (212, 'IF YOU', 'BIGBANG (빅뱅)', ' 韩语 ', '2015-07-01', 'YG Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001xpUdt2jEjWu_1.jpg?max_age=2592000', 'picture/212.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004AlfUb0cVkN1.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (213, 'Haru Haru (一天一天)', 'BIGBANG (빅뱅)', ' 韩语 ', '2008-08-08', 'YG Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002Z9cl22TWRYU_1.jpg?max_age=2592000', 'picture/213.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004AlfUb0cVkN1.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (214, '无人之岛', '任然', '国语 ', '2017-08-31', '北京千和世纪文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002lMPc30c4rOO_1.jpg?max_age=2592000', 'picture/214.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M00000067r4p0wBDDN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (215, '红尘来去一场梦 (Live)', '杨宗纬', '国语 ', '2015-08-23', '梦响强音 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000sUgE748GowL_1.jpg?max_age=2592000', 'picture/215.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003tMm0y0TuewY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (216, '那么爱你为什么', '莫文蔚', '国语 ', '2001-12-28', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002HVChM0mrWY3_1.jpg?max_age=2592000', 'picture/216.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000cISVf2QqLc6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (217, '这一路走来', '杨宗纬', '国语 ', '2013-03-29', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000KL9de0YaLIR_1.jpg?max_age=2592000', 'picture/217.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003tMm0y0TuewY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (218, '落海', '任然', '国语 ', '2021-04-20', '北京千和世纪文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002itQ603eFWOf_1.jpg?max_age=2592000', 'picture/218.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M00000067r4p0wBDDN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (219, '他不爱我', '莫文蔚', '国语 ', '1997-10-29', '滚石唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004eNxMk2QyCn4_1.jpg?max_age=2592000', 'picture/219.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000cISVf2QqLc6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (220, '凉凉 (Live)', '张碧晨', '国语 ', '2017-04-15', '快乐阳光 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000yiVfk1EpZIs_1.jpg?max_age=2592000', 'picture/220.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000003ZpE43ypssl.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (221, '疑心病', '任然', '国语 ', '2016-01-15', '北京千和世纪文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000021k5Yo0IpMDy_1.jpg?max_age=2592000', 'picture/221.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M00000067r4p0wBDDN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (222, '像我这样的人 (Live)', '毛不易', '国语 ', '2017-08-05', '哇唧唧哇 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000001n7a82gh6IY_1.jpg?max_age=2592000', 'picture/222.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BHDR33FZVZ0.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (223, '空白格 (《一生一世》电影片尾曲)', '杨宗纬', ' 纯音乐 ', '2014-08-12', '巨人网络 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000ndvXv1aYZnt_3.jpg?max_age=2592000', 'picture/223.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003tMm0y0TuewY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (224, '后继者', '任然', '国语 ', '2016-11-25', '北京千和世纪文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000008nl2Y1HlxUm_1.jpg?max_age=2592000', 'picture/224.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M00000067r4p0wBDDN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (225, '지나갈 테니 (Been Through) (顺其自然)', 'EXO (엑소)', ' 韩语 ', '2017-12-26', 'SM Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003UGjMD2pfIlS_1.jpg?max_age=2592000', 'picture/225.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001QVwtq3l8cKC.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (226, '消愁 (Live)', '毛不易', '国语 ', '2017-07-29', '哇唧唧哇 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002xoonH2Bk7FR_1.jpg?max_age=2592000', 'picture/226.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BHDR33FZVZ0.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (227, 'Love Shot', 'EXO (엑소)', ' 韩语 ', '2018-12-14', 'SM Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002PXZL92HpaNt_1.jpg?max_age=2592000', 'picture/227.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001QVwtq3l8cKC.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (228, '台风', '任然', '国语 ', '2022-03-10', '北京千和世纪文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003KTgDq2hD81T_1.jpg?max_age=2592000', 'picture/228.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M00000067r4p0wBDDN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (229, '如你所想', '毛不易', '国语 ', '2022-03-28', '华策音乐（天津）有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002QbhHl2pkvxR_1.jpg?max_age=2592000', 'picture/229.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BHDR33FZVZ0.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (230, 'Lies (谎言)', 'BIGBANG (빅뱅)', ' 韩语 ', '2007-08-16', 'YG Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000048pbv04daWud_1.jpg?max_age=2592000', 'picture/230.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004AlfUb0cVkN1.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (231, '凉城', '任然', '国语 ', '2016-11-25', '北京千和世纪文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000008nl2Y1HlxUm_1.jpg?max_age=2592000', 'picture/231.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M00000067r4p0wBDDN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (232, '牧马城市', '毛不易', '国语 ', '2018-03-29', '上海希瓜音乐制作有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001yHQzz2rm3lk_1.jpg?max_age=2592000', 'picture/232.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BHDR33FZVZ0.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (233, 'Blue', 'BIGBANG (빅뱅)', ' 韩语 ', '2012-02-29', 'YG Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001FFpMe09To1V_1.jpg?max_age=2592000', 'picture/233.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004AlfUb0cVkN1.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (234, '空空如也', '任然', '国语 ', '2017-12-28', '无限可能音乐（北京）有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001cZsHj3fzHH5_1.jpg?max_age=2592000', 'picture/234.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M00000067r4p0wBDDN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (235, '으르렁(Growl) (咆哮)', 'EXO (엑소)', ' 韩语 ', '2013-08-05', 'SM Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001YeIvi3YhiDC_1.jpg?max_age=2592000', 'picture/235.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001QVwtq3l8cKC.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (236, 'Let\'s not fall in love (우리 사랑하지 말아요)', 'BIGBANG (빅뱅)', ' 韩语 ', '2015-08-05', 'YG Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003C2NkS1qpM7U_1.jpg?max_age=2592000', 'picture/236.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004AlfUb0cVkN1.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (237, '无名的人', '毛不易', '国语 ', '2021-12-14', '太合麦田（天津）音乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002mPgSG01LLtu_1.jpg?max_age=2592000', 'picture/237.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BHDR33FZVZ0.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (238, 'Baby, Don\'t Cry (인어의 눈물) (人鱼的眼泪)', 'EXO (엑소)', ' 韩语 ', '2013-06-03', 'SM Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000g5cRu1VNAt6_1.jpg?max_age=2592000', 'picture/238.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001QVwtq3l8cKC.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (239, '借 (Live)', '毛不易', '国语 ', '2017-08-26', '哇唧唧哇 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000.jpg?max_age=2592000', 'picture/239.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BHDR33FZVZ0.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (240, '雀跃', '任然', '国语 ', '2021-07-16', '北京千和世纪文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000b1Lhv3pK4uN_1.jpg?max_age=2592000', 'picture/240.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M00000067r4p0wBDDN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (241, '咆哮(Growl) (Chinese Ver.)', 'EXO (엑소)', '国语 ', '2013-08-05', 'SM Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001YeIvi3YhiDC_1.jpg?max_age=2592000', 'picture/241.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001QVwtq3l8cKC.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (242, '呓语 (Live)', '毛不易', '国语 ', '2019-05-03', '爱奇艺 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004RZwia4aBTHJ_1.jpg?max_age=2592000', 'picture/242.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BHDR33FZVZ0.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (243, '走不出的回忆', '任然', '国语 ', '2016-10-25', '北京千和世纪文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002NctSK10Kan8_1.jpg?max_age=2592000', 'picture/243.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M00000067r4p0wBDDN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (244, 'CALL ME BABY', 'EXO (엑소)', ' 韩语 ', '2015-03-30', 'SM Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004OaxIS2rWUHv_1.jpg?max_age=2592000', 'picture/244.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001QVwtq3l8cKC.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (245, '不染', '毛不易', '国语 ', '2018-12-12', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003tk3ou4JeoAf_1.jpg?max_age=2592000', 'picture/245.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BHDR33FZVZ0.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (246, '踏山河', '七叔（叶泽浩）', '国语 ', '2020-11-19', '青风音乐Cheerful Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000LNpPn0efhTG_2.jpg?max_age=2592000', 'picture/246.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004gGNH91beMrM.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (247, 'Ko Ko Bop (叩叩趴)', 'EXO (엑소)', ' 韩语 ', '2017-07-18', 'SM Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003rMN7p3T3L27_1.jpg?max_age=2592000', 'picture/247.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001QVwtq3l8cKC.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (248, '나비소녀(Don\'t Go) (蝴蝶少女)', 'EXO (엑소)', ' 韩语 ', '2013-06-03', 'SM Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000g5cRu1VNAt6_1.jpg?max_age=2592000', 'picture/248.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001QVwtq3l8cKC.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (249, '梅香如故', '毛不易', '国语 ', '2018-09-20', '北京仁溪文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002WRmky2bSX30_1.jpg?max_age=2592000', 'picture/249.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BHDR33FZVZ0.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (250, '半生雪', '七叔（叶泽浩）', '国语 ', '2021-05-14', '青风音乐Cheerful Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003Idz5n3qz6PV_1.jpg?max_age=2592000', 'picture/250.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004gGNH91beMrM.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (251, '전야 (前夜) (The Eve)', 'EXO (엑소)', ' 韩语 ', '2017-07-18', 'SM Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003rMN7p3T3L27_1.jpg?max_age=2592000', 'picture/251.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001QVwtq3l8cKC.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (252, '平凡的一天 (Live)', '毛不易', '国语 ', '2018-11-16', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002HRHRB004tH9_1.jpg?max_age=2592000', 'picture/252.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001BHDR33FZVZ0.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (253, '蝴蝶少女 (Don\'t go)', 'EXO (엑소)', '国语 ', '2013-06-03', 'SM Entertainment ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000g5cRu1VNAt6_1.jpg?max_age=2592000', 'picture/253.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001QVwtq3l8cKC.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (254, '燕无歇', '七叔（叶泽浩）', '国语 ', '2020-10-21', '好乐无荒 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000000PlWG1tS3LL_2.jpg?max_age=2592000', 'picture/254.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004gGNH91beMrM.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (255, '好想抱住你', '程佳佳', '国语 ', '2021-11-26', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000dznhp4PMrPj_1.jpg?max_age=2592000', 'picture/255.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003gFfHo4H6AHY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (256, '玫瑰少年', '五月天', '国语 ', '2019-08-08', '相信音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001YhoWf2XcCS7_2.jpg?max_age=2592000', 'picture/256.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000Sp0Bz4JXH0o.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (257, '好想抱住你 (DJR7版)', '程佳佳', '国语 ', '2021-11-26', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100003, 'https://y.qq.com/music/photo_new/T002R800x800M000000dznhp4PMrPj_1.jpg?max_age=2592000', 'picture/257.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003gFfHo4H6AHY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (258, '踏山河（DJ Yaha）', '七叔（叶泽浩）', '国语 ', '2020-11-19', '青风音乐Cheerful Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000LNpPn0efhTG_2.jpg?max_age=2592000', 'picture/258.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004gGNH91beMrM.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (259, '突然好想你', '五月天', '国语 ', '2008-10-23', '相信音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000020I7sO0ayXhN_1.jpg?max_age=2592000', 'picture/259.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000Sp0Bz4JXH0o.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (260, '嚣张', 'en', '国语 ', '2019-08-07', '武汉嗨库文化传媒有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002lJJi244utqN_1.jpg?max_age=2592000', 'picture/260.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001IkitI4Gcu5u.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (261, '别错过 (DJ阿卓版)', '程佳佳', '国语 ', '2021-02-01', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000047rC1g2q9NES_2.jpg?max_age=2592000', 'picture/261.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003gFfHo4H6AHY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (262, '燕无歇（DJ黑桃A）feat.是七叔呢', '七叔（叶泽浩）', '国语 ', '2020-11-09', '好乐无荒 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000030KzwZ0MqxH4_1.jpg?max_age=2592000', 'picture/262.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004gGNH91beMrM.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (263, '温柔', '五月天', '国语 ', '2000-07-07', '滚石唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000042miPf28nzum_1.jpg?max_age=2592000', 'picture/263.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000Sp0Bz4JXH0o.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (264, '山楂树の恋28', '程佳佳', '国语 ', '2019-08-08', '坚诚文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004exjMO1lm27e_1.jpg?max_age=2592000', 'picture/264.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003gFfHo4H6AHY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (265, '知足', '五月天', '国语 ', '2005-08-26', '滚石唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003PIMo40rxcAn_1.jpg?max_age=2592000', 'picture/265.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000Sp0Bz4JXH0o.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (266, '别错过', '程佳佳', '国语 ', '2021-02-01', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000047rC1g2q9NES_2.jpg?max_age=2592000', 'picture/266.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003gFfHo4H6AHY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (267, '诛神诀(DJ R7)', '七叔（叶泽浩）', '国语 ', '2021-10-10', '乐无限 ETERNAL MUSIC ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000RdJGJ0GqNF6_1.jpg?max_age=2592000', 'picture/267.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004gGNH91beMrM.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (268, '间距', 'en', '国语 ', '2020-11-10', '听感时代 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000000aStq0SsOZz_6.jpg?max_age=2592000', 'picture/268.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001IkitI4Gcu5u.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (269, '倔强', '五月天', '国语 ', '2004-11-05', '滚石唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002plCgA0zOyYF_1.jpg?max_age=2592000', 'picture/269.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000Sp0Bz4JXH0o.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (270, '外婆说', '程佳佳', '国语 ', '2021-08-24', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000tBMkw2blvil_2.jpg?max_age=2592000', 'picture/270.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003gFfHo4H6AHY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (271, '后来的我们', '五月天', '国语 ', '2016-07-21', '相信音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002fRO0N4FftzY_1.jpg?max_age=2592000', 'picture/271.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000Sp0Bz4JXH0o.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (272, '诛神诀', '七叔（叶泽浩）', '国语 ', '2021-10-10', '乐无限 ETERNAL MUSIC ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000RdJGJ0GqNF6_1.jpg?max_age=2592000', 'picture/272.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004gGNH91beMrM.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (273, '曲终人亦散', 'en', '国语 ', '2021-09-05', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002uymlo25K0Rx_1.jpg?max_age=2592000', 'picture/273.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001IkitI4Gcu5u.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (274, '你不是真正的快乐', '五月天', '国语 ', '2008-10-23', '相信音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000020I7sO0ayXhN_1.jpg?max_age=2592000', 'picture/274.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000Sp0Bz4JXH0o.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (275, '金玉良缘', '七叔（叶泽浩）', '国语 ', '2021-11-23', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002mRf7O4VPJZT_3.jpg?max_age=2592000', 'picture/275.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004gGNH91beMrM.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (276, '逾矩', 'en', '国语 ', '2022-02-19', 'Hikoon Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000043fFNb1Lk1Zo_1.jpg?max_age=2592000', 'picture/276.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001IkitI4Gcu5u.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (277, '玫瑰少年（合唱版|Live）29', '蔡依林', '国语 ', '2018-05-01', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000030lak94GN5Ad_0.jpg?max_age=2592000', 'picture/277.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000027pdHE4STooO.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (278, '客子光阴', '七叔（叶泽浩）', '国语 ', '2020-12-23', '青风音乐Cheerful Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000sq1E21iCVXO_1.jpg?max_age=2592000', 'picture/278.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004gGNH91beMrM.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (279, '知足 (07 最知足版)', '五月天', '国语 ', '2007-07-20', '相信音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002PYDbl3I5L2k_1.jpg?max_age=2592000', 'picture/279.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000Sp0Bz4JXH0o.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (280, '我不愿 让你一个人', '五月天', '国语 ', '2011-12-16', '相信音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001fbipy4azgKM_1.jpg?max_age=2592000', 'picture/280.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000Sp0Bz4JXH0o.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (281, '莫问归期', '蒋雪儿', '国语 ', '2021-08-18', '青风音乐Cheerful Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000yLsJb02aifc_2.jpg?max_age=2592000', 'picture/281.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (282, '陨落', '不是花火呀', '国语 ', '2020-09-30', '昌禾文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003mQHQc0hIREQ_2.jpg?max_age=2592000', 'picture/282.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003LABmP0dTIWp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (283, 'TA', '不是花火呀', '国语 ', '2021-01-22', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000mb7jp46v4JN_4.jpg?max_age=2592000', 'picture/283.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003LABmP0dTIWp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (284, '暗示分离', 'en', '国语 ', '2019-08-23', '武汉伯乐爱乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001p1iI02XWphk_1.jpg?max_age=2592000', 'picture/284.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001IkitI4Gcu5u.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (285, '有何不可', '许嵩', '国语 ', '2009-01-10', '华宇世博 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002KSDg90IaScI_1.jpg?max_age=2592000', 'picture/285.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000CK5xN3yZDJt.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (286, 'Ring Ring Ring', '不是花火呀', '国语 ', '2021-06-25', '红人唱唱BANG ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003nL9vS3cgDRJ_2.jpg?max_age=2592000', 'picture/286.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003LABmP0dTIWp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (287, '我爱你', '程佳佳', '国语 ', '2020-02-18', '坚诚文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000039Rnk60ZLKHx_1.jpg?max_age=2592000', 'picture/287.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003gFfHo4H6AHY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (288, '微风悄悄', '不是花火呀', '国语 ', '2021-10-10', '武汉三叶草音乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004cjPqU1FEQ8i_1.jpg?max_age=2592000', 'picture/288.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003LABmP0dTIWp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (289, '还是会长大', '程佳佳', '国语 ', '2020-12-25', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002XeUCk1BRgN1_1.jpg?max_age=2592000', 'picture/289.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003gFfHo4H6AHY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (290, '云水谣', 'en', '国语 ', '2019-07-15', '武汉伯乐爱乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000021fOwC3b1Gzj_1.jpg?max_age=2592000', 'picture/290.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001IkitI4Gcu5u.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (291, '如一', '不是花火呀', '国语 ', '2020-11-18', '讯飞音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001WUPfr1QVAZ6_1.jpg?max_age=2592000', 'picture/291.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003LABmP0dTIWp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (292, '好想抱住你 (DJ阿卓版)', '程佳佳', '国语 ', '2021-11-26', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000dznhp4PMrPj_1.jpg?max_age=2592000', 'picture/292.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003gFfHo4H6AHY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (293, '奉劝', 'en', '国语 ', '2020-06-30', '耳森音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000IpIFv4MgyAC_1.jpg?max_age=2592000', 'picture/293.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001IkitI4Gcu5u.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (294, '年轮30', '不是花火呀', '国语 ', '2021-08-22', '闻艺赋兴 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002KD9iK1ECFJ0_1.jpg?max_age=2592000', 'picture/294.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003LABmP0dTIWp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (295, '山楂树の恋31', '程佳佳', ' 其他 ', '2019-04-01', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000011yjK81o1nsZ_1.jpg?max_age=2592000', 'picture/295.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003gFfHo4H6AHY.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (296, '分你一半', '不是花火呀', '国语 ', '2021-04-14', '扭湃哇音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003xbZYd1zLLWT_3.jpg?max_age=2592000', 'picture/296.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003LABmP0dTIWp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (297, '北纬23°26’', 'en', '国语 ', '2021-11-20', 'Hikoon Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000025RQ971VRXiw_2.jpg?max_age=2592000', 'picture/297.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001IkitI4Gcu5u.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (298, '素颜', '许嵩', '国语 ', '2010-08-18', '华宇世博 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000035f8nw11cjkf_1.jpg?max_age=2592000', 'picture/298.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000CK5xN3yZDJt.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (299, '落日与晚风32', 'IN-K', '国语 ', '2021-07-02', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003DkOPK0hLEcG_3.jpg?max_age=2592000', 'picture/299.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (300, '反方向的钟33', '不是花火呀', '国语 ', '2020-07-28', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000005uot43L1sSm_2.jpg?max_age=2592000', 'picture/300.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003LABmP0dTIWp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (301, '清空34', '王忻辰', '国语 ', '2021-01-23', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001L99pg0s70sp_3.jpg?max_age=2592000', 'picture/301.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004W8PqQ0EYrEr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (302, '代名词', 'en', '国语 ', '2020-09-15', '坚诚文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000bN9k72TFs0a_1.jpg?max_age=2592000', 'picture/302.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001IkitI4Gcu5u.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (303, '等风吹', '不是花火呀', '国语 ', '2021-04-03', '讯飞音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002WOYLv1qnIks_1.jpg?max_age=2592000', 'picture/303.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003LABmP0dTIWp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (304, '迷失幻境35', 'IN-K', '国语 ', '2020-09-27', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003YQu7349cT7g_3.jpg?max_age=2592000', 'picture/304.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (305, '如果当时', '许嵩', '国语 ', '2009-01-10', '华宇世博 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002KSDg90IaScI_1.jpg?max_age=2592000', 'picture/305.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000CK5xN3yZDJt.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (306, '放空36', 'en', '国语 ', '2021-03-16', '坚诚文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003hdYov2gVOT7_2.jpg?max_age=2592000', 'picture/306.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001IkitI4Gcu5u.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (307, '去年花开37', '王忻辰', '国语 ', '2021-04-29', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002jnIIR0WLpHN_1.jpg?max_age=2592000', 'picture/307.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004W8PqQ0EYrEr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (308, '放晴38', '王忻辰', '国语 ', '2022-01-24', '瑞辰文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000032O8Ao4FojT9_1.jpg?max_age=2592000', 'picture/308.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004W8PqQ0EYrEr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (309, '只要平凡39', '张杰', '国语 ', '2018-06-25', '上海霓虹兽 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000K7srf1rZtOX_2.jpg?max_age=2592000', 'picture/309.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002azErJ0UcDN6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (310, '迷失幻境 (DJ版)40', 'IN-K', '国语 ', '2020-09-27', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003YQu7349cT7g_3.jpg?max_age=2592000', 'picture/310.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (311, '雪龙吟', '张杰', '国语 ', '2022-01-25', '银河方舟StarNation ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003p3eFp2DQ2YI_3.jpg?max_age=2592000', 'picture/311.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002azErJ0UcDN6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (312, '多余的解释', '许嵩', '国语 ', '2009-01-10', '华宇世博 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002KSDg90IaScI_1.jpg?max_age=2592000', 'picture/312.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000CK5xN3yZDJt.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (313, '某些喜欢', '不是花火呀', '国语 ', '2021-04-19', '听感时代 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004KDKkV2pc6J3_2.jpg?max_age=2592000', 'picture/313.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003LABmP0dTIWp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (314, '天下41', '张杰', '国语 ', '2020-07-23', '行星文化Planet Culture ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000pVkCf3KsUQ9_1.jpg?max_age=2592000', 'picture/314.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002azErJ0UcDN6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (315, '玫瑰花的葬礼', '许嵩', '国语 ', '2007-06-02', '华宇世博 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001jmC6x1RMfh0_2.jpg?max_age=2592000', 'picture/315.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000CK5xN3yZDJt.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (316, '如愿', '王菲', '国语 ', '2021-09-25', 'KC DIGITAL LIMITED ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004Kbn3m2HV9Y3_1.jpg?max_age=2592000', 'picture/316.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000GDDuQ3sGQiT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (317, '他不懂', '张杰', '国语 ', '2020-07-23', '行星文化Planet Culture ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000pVkCf3KsUQ9_1.jpg?max_age=2592000', 'picture/317.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002azErJ0UcDN6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (318, '雅俗共赏', '许嵩', '国语 ', '2016-06-27', '海蝶音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000LfSb70Ewn3w_1.jpg?max_age=2592000', 'picture/318.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000CK5xN3yZDJt.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (319, '落差 (DJ版)42', 'IN-K', '国语 ', '2020-10-29', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003B7Uad3mnAu5_4.jpg?max_age=2592000', 'picture/319.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (320, '逆战', '张杰', '国语 ', '2012-09-29', '腾讯 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002gnOZC4T8gXF_1.jpg?max_age=2592000', 'picture/320.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002azErJ0UcDN6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (321, '时间沦陷', '王忻辰', '国语 ', '2021-08-20', '北京美星无限音乐有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004dZEjv0Uj6ke_1.jpg?max_age=2592000', 'picture/321.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004W8PqQ0EYrEr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (322, '三生三世', '张杰', '国语 ', '2017-02-18', '上海希瓜音乐制作有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000011IIJE3XYf9L_2.jpg?max_age=2592000', 'picture/322.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002azErJ0UcDN6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (323, '断桥残雪', '许嵩', '国语 ', '2007-06-02', '华宇世博 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001jmC6x1RMfh0_2.jpg?max_age=2592000', 'picture/323.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000CK5xN3yZDJt.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (324, '落差43', 'IN-K', '国语 ', '2020-10-29', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003B7Uad3mnAu5_4.jpg?max_age=2592000', 'picture/324.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (325, '明天过后', '张杰', '国语 ', '2020-07-23', '行星文化Planet Culture ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000pVkCf3KsUQ9_1.jpg?max_age=2592000', 'picture/325.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002azErJ0UcDN6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (326, '庐州月', '许嵩', '国语 ', '2010-01-06', '华宇世博 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002CJON012PxwU_1.jpg?max_age=2592000', 'picture/326.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000CK5xN3yZDJt.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (327, '匆匆那年', '王菲', '国语 ', '2014-11-05', 'KC DIGITAL LIMITED ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000036eU2A4VBjo2_1.jpg?max_age=2592000', 'picture/327.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000GDDuQ3sGQiT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (328, '清明雨上', '许嵩', '国语 ', '2007-06-02', '华宇世博 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001jmC6x1RMfh0_2.jpg?max_age=2592000', 'picture/328.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000CK5xN3yZDJt.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (329, '少年中国说', '张杰', '国语 ', '2021-10-10', '行星文化Planet Culture ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000tTSP43URC3L_1.jpg?max_age=2592000', 'picture/329.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002azErJ0UcDN6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (330, '因为爱情', '陈奕迅', '国语 ', '2010-02-13', '环球唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000iBJcZ1lSKKz_1.jpg?max_age=2592000', 'picture/330.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003Nz2So3XXYek.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (331, '天龙八部之宿敌', '许嵩', '国语 ', '2011-09-21', '海蝶音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002JzRQD2zjvxG_1.jpg?max_age=2592000', 'picture/331.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000CK5xN3yZDJt.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (332, '红豆', '王菲', '国语 ', '1998-10-02', 'KC DIGITAL LIMITED ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001gn7g54ZEIKb_3.jpg?max_age=2592000', 'picture/332.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000GDDuQ3sGQiT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (333, '这就是爱', '张杰', '国语 ', '2020-07-23', '行星文化Planet Culture ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000pVkCf3KsUQ9_1.jpg?max_age=2592000', 'picture/333.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002azErJ0UcDN6.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (334, '百年孤寂', '王菲', '国语 ', '1999-09-10', 'KC DIGITAL LIMITED ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003j0loN16WKM8_2.jpg?max_age=2592000', 'picture/334.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000GDDuQ3sGQiT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (335, '时光洪流', '程响', '国语 ', '2021-08-17', '金翼龙音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000028W4QN0xB85F_1.jpg?max_age=2592000', 'picture/335.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003iPzNg35cWzp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (336, 'Adrenaline (feat. 张杰)', 'James Blunt', ' 英语 ', '2022-03-18', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003cFRek2B5vDb_1.jpg?max_age=2592000', 'picture/336.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (337, '容易受伤的女人', '王菲', ' 粤语 ', '1992-08-13', 'Cinepoly Records Co. Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003PpJPZ11T8rK_4.jpg?max_age=2592000', 'picture/337.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000GDDuQ3sGQiT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (338, '四季予你', '程响', '国语 ', '2020-12-19', '金翼龙唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M00000431aJU0XFrgv_3.jpg?max_age=2592000', 'picture/338.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003iPzNg35cWzp.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (339, '人间', '王菲', '国语 ', '1997-09-26', 'KC DIGITAL LIMITED ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000nfgwP0D6qxd_1.jpg?max_age=2592000', 'picture/339.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000GDDuQ3sGQiT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (340, '有点甜44', '汪苏泷', '国语 ', '2012-07-16', '唐羽文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001HUiKw0QsiUb_1.jpg?max_age=2592000', 'picture/340.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001z2JmX09LLgL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (341, '暧昧', '王菲', ' 粤语 ', '1995-12-01', 'Cinepoly Records Co. Ltd. ', 10000, '4', NULL, 100001, 'https://y.qq.com/music/photo_new/T002R800x800M000001JfsnK1Tje4U_4.jpg?max_age=2592000', 'picture/341.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000GDDuQ3sGQiT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (342, '约定', '王菲', ' 粤语 ', '1997-02-01', 'Universal Music Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002XR1EP3zmFeP_3.jpg?max_age=2592000', 'picture/342.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000GDDuQ3sGQiT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (343, '传奇', '王菲', '国语 ', '2010-02-13', 'KC DIGITAL LIMITED ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002jYUVQ3I0XyX_1.jpg?max_age=2592000', 'picture/343.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000GDDuQ3sGQiT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (344, '我是真的爱上你45', '半吨兄弟', '国语 ', '2021-12-04', '讯猛龙音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000036Mm0K3GKRYA_1.jpg?max_age=2592000', 'picture/344.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000KBVw62Xyb2H.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (345, '伤心城市', '半吨兄弟', '国语 ', '2022-03-07', '风行音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001QQIdq4OFenB_1.jpg?max_age=2592000', 'picture/345.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000KBVw62Xyb2H.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (346, '剑魂', '汪苏泷', '国语 ', '2021-11-15', '大象无形 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001mosUW3Uk8Zk_1.jpg?max_age=2592000', 'picture/346.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001z2JmX09LLgL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (347, '飞蛾扑火', '半吨兄弟', '国语 ', '2019-12-26', '壹嘉音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003sBOaR0rz1nF_1.jpg?max_age=2592000', 'picture/347.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000KBVw62Xyb2H.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (348, '秋天不回来 (烟嗓版)', '半吨兄弟', '国语 ', '2021-09-08', '讯猛龙音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001vSyB01fGiYD_1.jpg?max_age=2592000', 'picture/348.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000KBVw62Xyb2H.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (349, '风雨无阻', '半吨兄弟', '国语 ', '2022-01-26', '讯猛龙音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004U8ORR1EBAmU_1.jpg?max_age=2592000', 'picture/349.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000KBVw62Xyb2H.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (350, '不分手的恋爱', '汪苏泷', '国语 ', '2010-11-15', '大象无形 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003LHL270LMLgx_2.jpg?max_age=2592000', 'picture/350.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001z2JmX09LLgL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (351, '一笑倾城', '汪苏泷', '国语 ', '2016-08-25', '大象无形 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003RxTdZ0sJLwo_3.jpg?max_age=2592000', 'picture/351.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001z2JmX09LLgL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (352, '后会无期', '汪苏泷', '国语 ', '2011-12-26', '唐羽文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002apRhZ4Bq99d_1.jpg?max_age=2592000', 'picture/352.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001z2JmX09LLgL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (353, '落日与晚风 (DJ版)', 'IN-K', '国语 ', '2021-07-02', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003DkOPK0hLEcG_3.jpg?max_age=2592000', 'picture/353.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (354, '万有引力', '汪苏泷', '国语 ', '2010-11-15', '大象无形 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003LHL270LMLgx_2.jpg?max_age=2592000', 'picture/354.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001z2JmX09LLgL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (355, '小星星', '汪苏泷', '国语 ', '2010-11-15', '大象无形 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003LHL270LMLgx_2.jpg?max_age=2592000', 'picture/355.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001z2JmX09LLgL.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (356, '清晰', 'IN-K', '国语 ', '2021-03-11', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000DrYZS1aoIIW_1.jpg?max_age=2592000', 'picture/356.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (357, '结冰(Lonely)', 'IN-K', '国语 ', '2021-05-24', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000019FoKW3gw0XF_1.jpg?max_age=2592000', 'picture/357.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (358, '哭泣站台', '王小帅', '国语 ', '2021-11-10', '索尼音乐x大酱音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000037W3BJ4UeFBf_2.jpg?max_age=2592000', 'picture/358.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000013xwfx03qjvN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (359, '怨苍天变了心 (吉他版)', '王小帅', '国语 ', '2021-08-11', '大酱音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M00000418GDv33JeGx_1.jpg?max_age=2592000', 'picture/359.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000013xwfx03qjvN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (360, '你头顶的风', '王小帅', '国语 ', '2021-02-01', '大酱音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000MW6N0148EBo_3.jpg?max_age=2592000', 'picture/360.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000013xwfx03qjvN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (361, '不是因为寂寞才想你', '王小帅', '国语 ', '2019-09-15', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002sMDfi2EcVEJ_1.jpg?max_age=2592000', 'picture/361.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000013xwfx03qjvN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (362, '最近', '王小帅', '国语 ', '2019-03-27', '大酱音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004RZVLC4KcME3_1.jpg?max_age=2592000', 'picture/362.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000013xwfx03qjvN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (363, '谎话46', '王忻辰', '国语 ', '2021-10-29', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000Rh21h38X6lg_2.jpg?max_age=2592000', 'picture/363.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004W8PqQ0EYrEr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (364, '我爱他47', '王小帅', '国语 ', '2019-12-22', '大酱音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003dGF5w0V3RkQ_1.jpg?max_age=2592000', 'picture/364.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000013xwfx03qjvN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (365, '海阔天空', 'BEYOND', ' 粤语 ', '1992-07-31', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003kZ85M1cfaEF_2.jpg?max_age=2592000', 'picture/365.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002pUZT93gF4Cu.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (366, '真的爱你', 'BEYOND', ' 粤语 ', '1989-07-01', 'Cinepoly Records Co. Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000eOgmK1fN8Cs_2.jpg?max_age=2592000', 'picture/366.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002pUZT93gF4Cu.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (367, '其实我真的真的爱你', '王小帅', '国语 ', '2022-02-18', '大酱音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000xYtmc49ftuz_2.jpg?max_age=2592000', 'picture/367.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000013xwfx03qjvN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (368, '灰色轨迹', 'BEYOND', ' 粤语 ', '1992-01-01', '环球唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004EOVA73heGrc_1.jpg?max_age=2592000', 'picture/368.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002pUZT93gF4Cu.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (369, '不再犹豫', 'BEYOND', ' 粤语 ', '1991-09-06', 'Cinepoly Records Co. Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001Gikfw1MiLRm_2.jpg?max_age=2592000', 'picture/369.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002pUZT93gF4Cu.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (370, '辞九门回忆48', '王小帅', '国语 ', '2020-09-17', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000035v1iR44ZVix_1.jpg?max_age=2592000', 'picture/370.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000013xwfx03qjvN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (371, '光辉岁月', 'BEYOND', '国语 ', '1991-04-01', 'Universal Music Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002NjjUr2s6ktp_2.jpg?max_age=2592000', 'picture/371.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002pUZT93gF4Cu.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (372, '不爱我这件事', '王小帅', '国语 ', '2022-01-05', '索尼音乐x大酱音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000008HVfv3ac1oe_2.jpg?max_age=2592000', 'picture/372.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000013xwfx03qjvN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (373, '冷雨夜', 'BEYOND', ' 粤语 ', '1988-03-01', 'Cinepoly Records Co. Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002MGTsZ3Zl6JH_2.jpg?max_age=2592000', 'picture/373.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002pUZT93gF4Cu.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (374, '红色高跟鞋49', '王小帅', '国语 ', '2020-05-20', '大酱音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004YMzpl3RM8sY_1.jpg?max_age=2592000', 'picture/374.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000013xwfx03qjvN.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (375, '大地', 'BEYOND', ' 粤语 ', '1988-09-06', 'Universal Music Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001oHxZZ1pAQn4_2.jpg?max_age=2592000', 'picture/375.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002pUZT93gF4Cu.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (376, '谁伴我闯荡', 'BEYOND', ' 粤语 ', '1991-09-06', 'Cinepoly Records Co. Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001Gikfw1MiLRm_2.jpg?max_age=2592000', 'picture/376.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002pUZT93gF4Cu.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (377, '破茧', '张韶涵', '国语 ', '2020-05-23', '制作家 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001gTzQA1I61B3_2.jpg?max_age=2592000', 'picture/377.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002raUWw3PXdkT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (378, '喜欢你50', 'BEYOND', ' 粤语 ', '1988-09-06', 'Universal Music Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001oHxZZ1pAQn4_2.jpg?max_age=2592000', 'picture/378.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002pUZT93gF4Cu.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (379, '孤勇者 (Live)51', '张韶涵', '国语 ', '2022-03-11', '浙江卫视 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004B3UNm36ZG5v_1.jpg?max_age=2592000', 'picture/379.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002raUWw3PXdkT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (380, '小城小爱', 'Uu (刘梦妤)', '国语 ', '2021-06-18', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000tbVed3gD1Yz_1.jpg?max_age=2592000', 'picture/380.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003yGiqM2qF7Gm.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (381, '口是心非 (烟嗓版)', '半吨兄弟', '国语 ', '2020-03-15', '讯飞音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001WB9DV1V8blV_1.jpg?max_age=2592000', 'picture/381.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000KBVw62Xyb2H.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (382, '淋雨一直走', '张韶涵', '国语 ', '2012-10-12', '发现梦想 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004NbEqF406qjd_1.jpg?max_age=2592000', 'picture/382.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002raUWw3PXdkT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (383, '情人', 'BEYOND', ' 粤语 ', '1992-07-31', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003kZ85M1cfaEF_2.jpg?max_age=2592000', 'picture/383.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002pUZT93gF4Cu.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (384, '爱情错觉', '半吨兄弟', '国语 ', '2019-06-06', '重低音文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000012LGgV3ehDCI_1.jpg?max_age=2592000', 'picture/384.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000KBVw62Xyb2H.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (385, '全名', 'Uu (刘梦妤)', '国语 ', '2021-08-20', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003SbvQO2rCvja_1.jpg?max_age=2592000', 'picture/385.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003yGiqM2qF7Gm.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (386, '下个，路口，见', '李宇春', '国语 ', '2009-12-22', '太合麦田 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004Z4sId156J79_1.jpg?max_age=2592000', 'picture/386.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002ZOuVm3Qn20Y.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (387, '我这一生', '半吨兄弟', '国语 ', '2020-03-10', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003pYx7E2y0Ubv_1.jpg?max_age=2592000', 'picture/387.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000KBVw62Xyb2H.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (388, '阿刁 (Live)', '张韶涵', '国语 ', '2018-01-19', '快乐阳光 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001Qgi2X1alT0s_1.jpg?max_age=2592000', 'picture/388.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002raUWw3PXdkT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (389, '和你一样', '李宇春', '国语 ', '2008-12-10', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002uzpt23Wa87j_1.jpg?max_age=2592000', 'picture/389.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002ZOuVm3Qn20Y.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (390, '那些年', 'Uu (刘梦妤)', '国语 ', '2020-06-28', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M00000070sdy2Q6C4X_1.jpg?max_age=2592000', 'picture/390.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003yGiqM2qF7Gm.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (391, '北京欢迎你52', '陈天佳', '国语 ', '2014-10-07', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000038tWWu3MO4W8_1.jpg?max_age=2592000', 'picture/391.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (392, '亲爱的，那不是爱情', '张韶涵', '国语 ', '2007-12-14', '福茂唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000018sneN4AVNIV_1.jpg?max_age=2592000', 'picture/392.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002raUWw3PXdkT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (393, '无价之姐53', '李宇春', '国语 ', '2020-06-18', '黄色石头 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002BoA052LxnoQ_1.jpg?max_age=2592000', 'picture/393.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002ZOuVm3Qn20Y.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (394, '漠河舞厅54', '半吨兄弟', '国语 ', '2021-11-19', '讯猛龙音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002JmpEs2Z1ePT_3.jpg?max_age=2592000', 'picture/394.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000KBVw62Xyb2H.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (395, '自卑感', 'Uu (刘梦妤)', '国语 ', '2019-08-17', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002h5ZWn20YaJm_1.jpg?max_age=2592000', 'picture/395.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003yGiqM2qF7Gm.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (396, '快乐崇拜', '张韶涵', '国语 ', '2004-12-01', '福茂唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001ACTlE01fU6a_2.jpg?max_age=2592000', 'picture/396.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002raUWw3PXdkT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (397, '歌曲：时代感 (Live)', '邓超', '国语 ', '2022-01-31', '中央电视台 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001TPuHh1cmcjJ_1.jpg?max_age=2592000', 'picture/397.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (398, '偏爱', '半吨兄弟', '国语 ', '2021-09-01', '制作家/讯飞音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002ylPPq1B6V8E_1.jpg?max_age=2592000', 'picture/398.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000KBVw62Xyb2H.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (399, '1987我不知会遇见你', '李宇春', '国语 ', '2018-04-01', '黄色石头 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003UqEXI3NvbEl_1.jpg?max_age=2592000', 'picture/399.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002ZOuVm3Qn20Y.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (400, '那男孩还好吗', 'Uu (刘梦妤)', '国语 ', '2019-11-08', '鲸鱼向海/新鲜制造 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002auLbZ4cxhiY_1.jpg?max_age=2592000', 'picture/400.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003yGiqM2qF7Gm.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (501, '披星戴月的想你', '告五人', '国语 ', '2018-10-30', '华宇世博 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002Gl5vg0wiTW8_1.jpg?max_age=2592000', 'picture/501.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002pfVN53lKI7x.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (502, '遥远的她', '张学友', ' 粤语 ', '1986-01-05', 'Universal Music Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003JFTRs26XoK9_2.jpg?max_age=2592000', 'picture/502.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004Be55m1SJaLk.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (503, 'PS5', 'salem ilese', ' 英语 ', '2022-02-23', 'Homemade Projects / 10K Projects ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002RglyN4SC09C_1.jpg?max_age=2592000', 'picture/503.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (504, '离岸', '糯米Nomi', '国语 ', '2019-08-21', '听感时代 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004RZ3RK4VkiPD_1.jpg?max_age=2592000', 'picture/504.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003DfmxP2btxSX.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (505, '温蒂公主的侍卫', '告五人', '国语 ', '2020-12-31', '华宇世博 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000P4Dod0GzRlM_1.jpg?max_age=2592000', 'picture/505.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002pfVN53lKI7x.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (506, '情书', '张学友', '国语 ', '1996-06-12', 'Universal Music Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001DQJ5G0ErywD_2.jpg?max_age=2592000', 'picture/506.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004Be55m1SJaLk.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (507, '饿狼传说', '张学友', ' 粤语 ', '1994-05-20', 'Universal Music Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002ff1p84YIroM_2.jpg?max_age=2592000', 'picture/507.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004Be55m1SJaLk.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (508, '调查中《开端bgm》歌词版', '糯米Nomi', '国语 ', '2022-01-29', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003cN2kB3WPUwB_1.jpg?max_age=2592000', 'picture/508.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003DfmxP2btxSX.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (509, '执迷不悟', '小乐哥（王唯乐）', '国语 ', '2020-09-04', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000021brYM11q58W_3.jpg?max_age=2592000', 'picture/509.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002ul7D70CpXpI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (510, '等你等到我心痛', '张学友', ' 粤语 ', '1993-07-24', 'Universal Music Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004dQKid1SiV2C_2.jpg?max_age=2592000', 'picture/510.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004Be55m1SJaLk.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (511, '不甘 (Live)', '弦子', '国语 ', '2022-04-01', '浙江卫视 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001oX53W4dFtMR_1.jpg?max_age=2592000', 'picture/511.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (512, '草木', '糯米Nomi', '国语 ', '2019-09-12', '巨人网络科技有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001e2bNp18ayiR_4.jpg?max_age=2592000', 'picture/512.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003DfmxP2btxSX.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (513, '慢慢64', '张学友', '国语 ', '1996-06-12', 'Universal Music Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001DQJ5G0ErywD_2.jpg?max_age=2592000', 'picture/513.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004Be55m1SJaLk.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (514, '忘情冷雨夜', '张学友', ' 粤语 ', '1989-12-15', 'Universal Music Ltd. ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001H25AR1n6MNl_2.jpg?max_age=2592000', 'picture/514.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004Be55m1SJaLk.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (515, '执迷不悟 (DJ版)', '小乐哥（王唯乐）', '国语 ', '2020-09-04', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000021brYM11q58W_3.jpg?max_age=2592000', 'picture/515.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002ul7D70CpXpI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (516, '等雨', '糯米Nomi', '国语 ', '2020-06-05', '北京中视鸣达文化传媒有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001uop5m0zf99I_1.jpg?max_age=2592000', 'picture/516.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003DfmxP2btxSX.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (517, '遇见', '孙燕姿', '国语 ', '2003-08-22', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002ehzTm0TxXC2_3.jpg?max_age=2592000', 'picture/517.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001pWERg3vFgg8.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (518, '不甘', '小乐哥（王唯乐）', '国语 ', '2022-03-22', '武汉一寸光年文化传播有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000u5hxS38lnp6_1.jpg?max_age=2592000', 'picture/518.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002ul7D70CpXpI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (519, '我怀念的', '孙燕姿', '国语 ', '2007-03-22', '金牌大风 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000P3l050Olt27_4.jpg?max_age=2592000', 'picture/519.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001pWERg3vFgg8.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (520, '一别两宽', '段弋', '国语 ', '2020-03-27', '北京中视鸣达文化传媒有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001OAani2q9kdI_1.jpg?max_age=2592000', 'picture/520.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (521, '开始懂了', '孙燕姿', '国语 ', '2000-12-07', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004KRIQr1oCp2A_5.jpg?max_age=2592000', 'picture/521.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001pWERg3vFgg8.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (522, '慢慢65', '小乐哥（王唯乐）', '国语 ', '2020-10-16', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000028WWim1ATO4Z_1.jpg?max_age=2592000', 'picture/522.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002ul7D70CpXpI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (523, '广寒宫', '糯米Nomi', '国语 ', '2020-04-20', '邻游天下 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000VcCvI17W6UM_1.jpg?max_age=2592000', 'picture/523.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000003DfmxP2btxSX.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (524, '天黑黑', '孙燕姿', '国语 ', '2000-06-08', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002UZ9ob4Ecg0S_5.jpg?max_age=2592000', 'picture/524.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001pWERg3vFgg8.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (525, '慢慢 (DJ名龙版)', '小乐哥（王唯乐）', '国语 ', '2020-10-16', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000028WWim1ATO4Z_1.jpg?max_age=2592000', 'picture/525.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002ul7D70CpXpI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (526, '逆光', '孙燕姿', '国语 ', '2007-03-22', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000P3l050Olt27_4.jpg?max_age=2592000', 'picture/526.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001pWERg3vFgg8.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (527, '高攀', '小乐哥（王唯乐）', '国语 ', '2021-09-29', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003gUnA73PHHHs_1.jpg?max_age=2592000', 'picture/527.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002ul7D70CpXpI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (528, '绿光', '孙燕姿', '国语 ', '2001-07-12', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004U2Cn83dZlWt_2.jpg?max_age=2592000', 'picture/528.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001pWERg3vFgg8.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (529, '温柔 #MaydayBlue20th', '五月天', '国语 ', '2020-01-01', '相信音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003suBZs1Cy3uA_1.jpg?max_age=2592000', 'picture/529.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000Sp0Bz4JXH0o.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (530, '浪漫至死不渝', '小乐哥（王唯乐）', '国语 ', '2021-09-10', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002fhydX2OHXOm_1.jpg?max_age=2592000', 'picture/530.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002ul7D70CpXpI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (531, '第一天', '孙燕姿', '国语 ', '2005-10-07', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000019FoJV2aPJiz_2.jpg?max_age=2592000', 'picture/531.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001pWERg3vFgg8.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (532, '终于等到这一句', '小乐哥（王唯乐）', '国语 ', '2021-02-15', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002ksL5a0hO4A1_1.jpg?max_age=2592000', 'picture/532.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002ul7D70CpXpI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (533, '红', '告五人', '国语 ', '2019-06-14', '华宇世博 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003uVIiJ1SQEHm_1.jpg?max_age=2592000', 'picture/533.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002pfVN53lKI7x.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (534, '我不难过', '孙燕姿', '国语 ', '2003-01-10', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004VSvF52mQoQp_2.jpg?max_age=2592000', 'picture/534.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001pWERg3vFgg8.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (535, '带我去找夜生活 - 健康版', '告五人', '国语 ', '2019-12-14', '华宇世博 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001Df8vS1OVHzR_3.jpg?max_age=2592000', 'picture/535.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002pfVN53lKI7x.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (536, '寂寞留白', '告五人', '国语 ', '2021-11-05', '奔跑怪物 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000Ww5RT1ZA0yO_1.jpg?max_age=2592000', 'picture/536.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002pfVN53lKI7x.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (537, '兰亭序 (Live)', '小乐哥（王唯乐）', '国语 ', '2018-05-01', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000.jpg?max_age=2592000', 'picture/537.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002ul7D70CpXpI.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (538, '克卜勒', '孙燕姿', '国语 ', '2014-02-27', 'Universal Music Taiwan ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003C5V434Vbijq_1.jpg?max_age=2592000', 'picture/538.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001pWERg3vFgg8.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (539, '落日与晚风66', 'IN-K', '国语 ', '2021-07-02', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003DkOPK0hLEcG_3.jpg?max_age=2592000', 'picture/539.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (540, '千年之恋 (Live)67', '杨丞琳', '国语 ', '2021-12-25', '浙江卫视 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002rWWU34eygRc_4.jpg?max_age=2592000', 'picture/540.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000ZVS6E1f6f0d.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (541, '危险派对', '王以太', '国语 ', '2021-09-17', 'StarNation ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001NRUEr1kqBSo_3.jpg?max_age=2592000', 'picture/541.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (542, '迷失幻境68', 'IN-K', '国语 ', '2020-09-27', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003YQu7349cT7g_3.jpg?max_age=2592000', 'picture/542.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (543, '时光背面的我', '刘至佳', '国语 ', '2021-07-06', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000000UaIC0Sqk9p_1.jpg?max_age=2592000', 'picture/543.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YRzYC2hbgDT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (545, '迷失幻境 (DJ版)69', 'IN-K', '国语 ', '2020-09-27', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003YQu7349cT7g_3.jpg?max_age=2592000', 'picture/545.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (546, '鲸语', '刘至佳', '国语 ', '2022-01-11', 'J.T Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000BpJbJ4Z2xU6_1.jpg?max_age=2592000', 'picture/546.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YRzYC2hbgDT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (547, '雨爱', '杨丞琳', '国语 ', '2010-01-04', '索尼音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000jcKFG0sQrD0_1.jpg?max_age=2592000', 'picture/547.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000ZVS6E1f6f0d.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (548, '你的眼睛像星星 (女版)', '刘至佳', '国语 ', '2021-05-28', 'J.T Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003oVGNE2UldCD_1.jpg?max_age=2592000', 'picture/548.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YRzYC2hbgDT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (549, '落差 (DJ版)70', 'IN-K', '国语 ', '2020-10-29', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003B7Uad3mnAu5_4.jpg?max_age=2592000', 'picture/549.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (550, '摩登爱情 (女版)', '刘至佳', '国语 ', '2021-09-08', 'J.T Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004DGkNJ3dltJL_2.jpg?max_age=2592000', 'picture/550.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YRzYC2hbgDT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (551, '落差71', 'IN-K', '国语 ', '2020-10-29', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003B7Uad3mnAu5_4.jpg?max_age=2592000', 'picture/551.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (552, '说爱你72', '刘至佳', '国语 ', '2018-12-12', '鲸鱼向海（北京）文化有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000016lk1t0LgKw6_1.jpg?max_age=2592000', 'picture/552.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YRzYC2hbgDT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (553, '温柔孤岛', 'IN-K', '国语 ', '2021-05-21', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002R2iAn2veYFG_2.jpg?max_age=2592000', 'picture/553.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (554, '孤勇者 (Live)73', '杨坤', '国语 ', '2022-01-22', '浙江卫视 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004dF2My3fGu9y_3.jpg?max_age=2592000', 'picture/554.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (555, '摩登爱情 (DJ阿卓版)', '刘至佳', '国语 ', '2021-09-08', 'J.T Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004DGkNJ3dltJL_2.jpg?max_age=2592000', 'picture/555.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YRzYC2hbgDT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (556, '你的眼睛像星星 (DJ阿卓版)', '刘至佳', '国语 ', '2021-05-28', 'J.T Music ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003oVGNE2UldCD_1.jpg?max_age=2592000', 'picture/556.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YRzYC2hbgDT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (557, '匿名的好友', '杨丞琳', '国语 ', '2010-01-04', '索尼音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000jcKFG0sQrD0_1.jpg?max_age=2592000', 'picture/557.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000ZVS6E1f6f0d.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (558, '夏天', '刘至佳', '国语 ', '2019-05-23', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000006aO2K3UtDMe_1.jpg?max_age=2592000', 'picture/558.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YRzYC2hbgDT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (559, '回忆观影券', 'IN-K', '国语 ', '2020-08-19', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002CPuo31idf0E_2.jpg?max_age=2592000', 'picture/559.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (560, '月牙湾', '刘至佳', '国语 ', '2019-02-01', '北京新昌瑞文化发展有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002rWc0539KOwa_1.jpg?max_age=2592000', 'picture/560.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002YRzYC2hbgDT.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (561, '萱草花 (Live)', '杨坤', '国语 ', '2022-01-08', '浙江卫视 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002b855z4LLeHj_2.jpg?max_age=2592000', 'picture/561.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (562, 'Love Story', 'Taylor Swift', ' 英语 ', '2008-11-11', 'Big Machine Records, LLC ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002Q1XUj3HBAzw_1.jpg?max_age=2592000', 'picture/562.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000qrPik2w6lDr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (563, 'exile', 'Taylor Swift', ' 英语 ', '2020-07-24', '环球唱片 ', 10000, '4', NULL, 100001, 'https://y.qq.com/music/photo_new/T002R800x800M000004JYFa61vPS88_2.jpg?max_age=2592000', 'picture/563.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000qrPik2w6lDr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (564, '左边', '杨丞琳', '国语 ', '2006-03-17', '索尼音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000045iyum28ISvd_1.jpg?max_age=2592000', 'picture/564.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000ZVS6E1f6f0d.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (565, '年轮说', '杨丞琳', '国语 ', '2016-09-30', 'EMI百代唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000004ciegP39o1BK_1.jpg?max_age=2592000', 'picture/565.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000ZVS6E1f6f0d.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (566, 'Cruel Summer', 'Taylor Swift', ' 英语 ', '2019-08-23', '环球唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002MRY88057AhY_1.jpg?max_age=2592000', 'picture/566.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000qrPik2w6lDr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (567, 'Blank Space', 'Taylor Swift', ' 英语 ', '2014-10-27', '环球唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002Kz5Jo1uzHjz_1.jpg?max_age=2592000', 'picture/567.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000qrPik2w6lDr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (568, '生活总该迎着光亮 (Live)', '杨丞琳', '国语 ', '2022-03-12', '浙江卫视 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002fJuVE1xXdB0_2.jpg?max_age=2592000', 'picture/568.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000ZVS6E1f6f0d.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (569, 'Welcome To New York', 'Taylor Swift', ' 英语 ', '2014-10-27', '环球唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002Kz5Jo1uzHjz_1.jpg?max_age=2592000', 'picture/569.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000qrPik2w6lDr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (570, '我们的歌', '王力宏', '国语 ', '2007-07-13', '宏声音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002Zwh5p4HgecI_1.jpg?max_age=2592000', 'picture/570.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001JDzPT3JdvqK.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (571, '慢慢喜欢你 (Live)', '杨丞琳', '国语 ', '2022-02-12', '浙江卫视 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001DF9G63PCsEO_2.jpg?max_age=2592000', 'picture/571.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000ZVS6E1f6f0d.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (572, '花田错', '王力宏', '国语 ', '2005-12-30', '宏声音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001a0Dts37jw2M_1.jpg?max_age=2592000', 'picture/572.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001JDzPT3JdvqK.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (573, '落日与晚风74', 'IN-K', '国语 ', '2021-07-02', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003DkOPK0hLEcG_3.jpg?max_age=2592000', 'picture/573.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002yupVT2XEFaA.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (574, '唯一75', '王力宏', '国语 ', '2001-09-23', '索尼音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000D1ceU2ibOvS_1.jpg?max_age=2592000', 'picture/574.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001JDzPT3JdvqK.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (575, '依然爱你', '王力宏', '国语 ', '2011-09-30', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001fMFxM1tq1aI_1.jpg?max_age=2592000', 'picture/575.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000001JDzPT3JdvqK.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (576, '清空76', '王忻辰', '国语 ', '2021-01-23', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001L99pg0s70sp_3.jpg?max_age=2592000', 'picture/576.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004W8PqQ0EYrEr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (577, 'The Joker And The Queen (feat. Taylor Swift)', 'Ed Sheeran', ' 英语 ', '2022-02-11', '华纳唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003ZkgJl0DaEpx_1.jpg?max_age=2592000', 'picture/577.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (578, '日不落', '蔡依林', '国语 ', '2007-09-21', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001tQgfA2o2Nra_1.jpg?max_age=2592000', 'picture/578.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000027pdHE4STooO.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (579, 'Look What You Made Me Do', 'Taylor Swift', ' 英语 ', '2017-11-10', '环球唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003OK4yP2MBOip_1.jpg?max_age=2592000', 'picture/579.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000qrPik2w6lDr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (580, '布拉格广场', '蔡依林', '国语 ', '2003-03-07', '索尼音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000q5U9S2OLNg4_1.jpg?max_age=2592000', 'picture/580.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000027pdHE4STooO.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (581, '风吹过八千里', '苏星婕', '国语 ', '2021-09-17', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000FFtYv2kIpa1_2.jpg?max_age=2592000', 'picture/581.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002lKaDq2lLLtk.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (582, 'Lover', 'Taylor Swift', ' 英语 ', '2019-08-23', '环球唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002MRY88057AhY_1.jpg?max_age=2592000', 'picture/582.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000qrPik2w6lDr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (583, '说爱你77', '蔡依林', '国语 ', '2003-03-07', '索尼音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000q5U9S2OLNg4_1.jpg?max_age=2592000', 'picture/583.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000027pdHE4STooO.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (584, '去年花开78', '王忻辰', '国语 ', '2021-04-29', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002jnIIR0WLpHN_1.jpg?max_age=2592000', 'picture/584.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004W8PqQ0EYrEr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (585, 'I Knew You Were Trouble', 'Taylor Swift', ' 英语 ', '2012-10-09', '环球唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003XgDKL12X3J1_1.jpg?max_age=2592000', 'picture/585.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000qrPik2w6lDr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (586, '今天你要嫁给我', '蔡依林', '国语 ', '2006-09-17', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000001dBnKO0Qb5G5_1.jpg?max_age=2592000', 'picture/586.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000027pdHE4STooO.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (587, 'Style', 'Taylor Swift', ' 英语 ', '2014-10-27', '环球唱片 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000002Kz5Jo1uzHjz_1.jpg?max_age=2592000', 'picture/587.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000000qrPik2w6lDr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (588, '玫瑰少年（合唱版|Live）79', '蔡依林', '国语 ', '2018-05-01', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000030lak94GN5Ad_0.jpg?max_age=2592000', 'picture/588.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000027pdHE4STooO.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (589, '放晴80', '王忻辰', '国语 ', '2022-01-24', '瑞辰文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000032O8Ao4FojT9_1.jpg?max_age=2592000', 'picture/589.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004W8PqQ0EYrEr.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (590, '我爱你不问归期', '白小白', '国语 ', '2020-04-17', '风靡时代 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003Z67tp1En5jM_1.jpg?max_age=2592000', 'picture/590.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004GZcGF2ZgJYo.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (591, '倒带', '蔡依林', '国语 ', '2004-02-27', '索尼音乐 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000022ANm11dQfRY_1.jpg?max_age=2592000', 'picture/591.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000027pdHE4STooO.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (592, '爱不得忘不舍', '白小白', '国语 ', '2020-01-09', '风靡时代 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000008leq12aiwhc_2.jpg?max_age=2592000', 'picture/592.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004GZcGF2ZgJYo.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (593, '等一场大雨', '苏星婕', '国语 ', '2021-05-21', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000XHm3D09oMsI_1.jpg?max_age=2592000', 'picture/593.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002lKaDq2lLLtk.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (594, '心引力', '王俊凯', '国语 ', '2019-11-02', '北京时代峰峻文化艺术发展有限公司 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000003qOjYQ2TlNFt_1.jpg?max_age=2592000', 'picture/594.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (595, '我们终究是错过', '白小白', '国语 ', '2018-07-17', '独立发行 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000016CxtJ15EscY_1.jpg?max_age=2592000', 'picture/595.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004GZcGF2ZgJYo.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (596, '刻在我心底的名字 (Live)', '蔡依林', '国语 ', '2018-05-01', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000030lak94GN5Ad_0.jpg?max_age=2592000', 'picture/596.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M0000027pdHE4STooO.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (597, '爱不得忘不舍 (DJ版)', '白小白', '国语 ', '2020-01-09', '风靡时代 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000008leq12aiwhc_2.jpg?max_age=2592000', 'picture/597.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004GZcGF2ZgJYo.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (598, '时空缝隙', '苏星婕', '国语 ', '2021-03-10', '音炬文化 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M000000a1yAs267uW4_1.jpg?max_age=2592000', 'picture/598.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000002lKaDq2lLLtk.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (599, '北京欢迎你81', '陈天佳', '国语 ', '2014-10-07', 'null', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000038tWWu3MO4W8_1.jpg?max_age=2592000', 'picture/599.jpg', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.lapin365.com%2Fproductpictures%2Fnewcoupons%2Fqqmusic.png&refer=http%3A%2F%2Fimg.lapin365.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653018676&t=2b364cd82257265f6aacb288251cd464');
INSERT INTO `music_movie` VALUES (600, '最后我们没在一起', '白小白', '国语 ', '2018-02-06', '启韵传媒 ', 10000, '4', NULL, 100000, 'https://y.qq.com/music/photo_new/T002R800x800M0000040SScr4LxG99_1.jpg?max_age=2592000', 'picture/600.jpg', 'https://y.qq.com/music/photo_new/T001R300x300M000004GZcGF2ZgJYo.jpg?max_age=2592000');
INSERT INTO `music_movie` VALUES (2173, '那女孩对我说', 'UU', '中国', '2019-06-19', '那女孩对我说', 5, '5', NULL, 10, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'music_cover/01_dN736r2.png', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `music_movie` VALUES (2174, '一百万个可能', 'Christine Welch', '中国', '2018-08-28', '一百万个可能', 5, '5', NULL, 9, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'music_cover/02_MMlI4VG.png', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `music_movie` VALUES (2175, '一曲相思', '封银沙', '中国', '2018-09-21', '相思', 5, '5', NULL, 16, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'music_cover/03_LAih4BK.png', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `music_movie` VALUES (2176, '心如止水', 'Ice Paper', '中国', '2019-04-18', '成语接龙', 5, '5', NULL, 12, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'music_cover/04_NfypWBs.png', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `music_movie` VALUES (2177, '知否知否', '郭心雨', '中国大陆', '2018-12-24', '知否知否', 5, '5', NULL, 5, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'music_cover/05_tcMJlAq.png', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `music_movie` VALUES (2178, '等下一个他', '习谱予', '中国大陆', '2019-12-24', '习谱予', 5, '5', NULL, 7, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'music_cover/06_FKDSM0u.png', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `music_movie` VALUES (2179, '像鱼', '王贰浪', '中国大陆', '2019-05-13', '像鱼', 5, '5', NULL, 10, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'music_cover/07_o7haWnX.png', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `music_movie` VALUES (2180, '你走', '李宗锦（松紧先生）', '中国大陆', '2018-05-06', '你走', 5, '5', NULL, 11, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'music_cover/08_jXRzQYe.png', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `music_movie` VALUES (2181, '星辰大海', '黄霄雲', '中国大陆', '2021-01-15', '星辰大海', 5, '5', NULL, 38, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'music_cover/09_3gyEALd.png', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `music_movie` VALUES (2182, '错位时空', '艾辰', '中国大陆', '2021-01-01', '错位时空', 5, '5', NULL, 16, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'music_cover/10_S7LjCvK.png', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `music_movie` VALUES (2183, '云与海', 'kiki', '中国', '2020-09-26', '云与海', 5, '5', NULL, 18, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'music_cover/11_DTSGqX1.png', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `music_movie` VALUES (2184, 'Moonlight', 'lil MILK', '欧美', '2016-02-20', 'Moonlight', 5, '5', NULL, 5, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'music_cover/12_fkJ3d0b.png', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `music_movie` VALUES (2185, 'Sold Out', 'Hawk Nelson', '欧美', '2020-08-18', 'Diamonds', 5, '5', NULL, 4, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'music_cover/13_MnXgTZ9.png', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');
INSERT INTO `music_movie` VALUES (2186, 'One Day', 'Matisyahu', '欧美', '2020-05-01', 'One Day', 5, '5', NULL, 12, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg', 'music_cover/14_UURO5SJ.png', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1085832721,3822736927&fm=26&gp=0.jpg');

-- ----------------------------
-- Table structure for music_movie_collect
-- ----------------------------
DROP TABLE IF EXISTS `music_movie_collect`;
CREATE TABLE `music_movie_collect`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `movie_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `music_movie_collect_movie_id_user_id_e880b0dc_uniq`(`movie_id`, `user_id`) USING BTREE,
  INDEX `music_movie_collect_user_id_ef0172c8_fk_music_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `music_movie_collect_movie_id_f2748097_fk_music_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `music_movie` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `music_movie_collect_user_id_ef0172c8_fk_music_user_id` FOREIGN KEY (`user_id`) REFERENCES `music_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 724 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music_movie_collect
-- ----------------------------
INSERT INTO `music_movie_collect` VALUES (722, 1, 1807);
INSERT INTO `music_movie_collect` VALUES (720, 6, 1807);
INSERT INTO `music_movie_collect` VALUES (723, 77, 1807);
INSERT INTO `music_movie_collect` VALUES (721, 207, 1807);
INSERT INTO `music_movie_collect` VALUES (625, 2173, 1796);
INSERT INTO `music_movie_collect` VALUES (626, 2173, 1797);
INSERT INTO `music_movie_collect` VALUES (627, 2173, 1798);
INSERT INTO `music_movie_collect` VALUES (628, 2173, 1799);
INSERT INTO `music_movie_collect` VALUES (629, 2173, 1800);
INSERT INTO `music_movie_collect` VALUES (630, 2173, 1801);
INSERT INTO `music_movie_collect` VALUES (631, 2173, 1802);
INSERT INTO `music_movie_collect` VALUES (632, 2173, 1803);
INSERT INTO `music_movie_collect` VALUES (633, 2173, 1804);
INSERT INTO `music_movie_collect` VALUES (634, 2173, 1805);
INSERT INTO `music_movie_collect` VALUES (635, 2173, 1806);
INSERT INTO `music_movie_collect` VALUES (709, 2173, 1807);
INSERT INTO `music_movie_collect` VALUES (636, 2174, 1796);
INSERT INTO `music_movie_collect` VALUES (637, 2174, 1797);
INSERT INTO `music_movie_collect` VALUES (638, 2174, 1798);
INSERT INTO `music_movie_collect` VALUES (639, 2174, 1799);
INSERT INTO `music_movie_collect` VALUES (640, 2174, 1800);
INSERT INTO `music_movie_collect` VALUES (641, 2174, 1801);
INSERT INTO `music_movie_collect` VALUES (642, 2174, 1802);
INSERT INTO `music_movie_collect` VALUES (643, 2174, 1803);
INSERT INTO `music_movie_collect` VALUES (644, 2174, 1806);
INSERT INTO `music_movie_collect` VALUES (645, 2175, 1796);
INSERT INTO `music_movie_collect` VALUES (646, 2175, 1797);
INSERT INTO `music_movie_collect` VALUES (647, 2175, 1798);
INSERT INTO `music_movie_collect` VALUES (648, 2175, 1802);
INSERT INTO `music_movie_collect` VALUES (649, 2175, 1803);
INSERT INTO `music_movie_collect` VALUES (650, 2175, 1804);
INSERT INTO `music_movie_collect` VALUES (651, 2175, 1805);
INSERT INTO `music_movie_collect` VALUES (652, 2175, 1806);
INSERT INTO `music_movie_collect` VALUES (716, 2175, 1807);
INSERT INTO `music_movie_collect` VALUES (712, 2175, 1809);
INSERT INTO `music_movie_collect` VALUES (653, 2176, 1796);
INSERT INTO `music_movie_collect` VALUES (654, 2176, 1797);
INSERT INTO `music_movie_collect` VALUES (655, 2176, 1798);
INSERT INTO `music_movie_collect` VALUES (656, 2176, 1799);
INSERT INTO `music_movie_collect` VALUES (657, 2176, 1800);
INSERT INTO `music_movie_collect` VALUES (658, 2176, 1801);
INSERT INTO `music_movie_collect` VALUES (659, 2176, 1802);
INSERT INTO `music_movie_collect` VALUES (660, 2176, 1803);
INSERT INTO `music_movie_collect` VALUES (661, 2176, 1804);
INSERT INTO `music_movie_collect` VALUES (662, 2176, 1805);
INSERT INTO `music_movie_collect` VALUES (663, 2176, 1806);
INSERT INTO `music_movie_collect` VALUES (665, 2177, 1796);
INSERT INTO `music_movie_collect` VALUES (667, 2177, 1799);
INSERT INTO `music_movie_collect` VALUES (664, 2177, 1801);
INSERT INTO `music_movie_collect` VALUES (666, 2177, 1805);
INSERT INTO `music_movie_collect` VALUES (670, 2178, 1797);
INSERT INTO `music_movie_collect` VALUES (668, 2178, 1800);
INSERT INTO `music_movie_collect` VALUES (669, 2178, 1802);
INSERT INTO `music_movie_collect` VALUES (719, 2178, 1807);
INSERT INTO `music_movie_collect` VALUES (671, 2179, 1801);
INSERT INTO `music_movie_collect` VALUES (672, 2179, 1802);
INSERT INTO `music_movie_collect` VALUES (673, 2179, 1804);
INSERT INTO `music_movie_collect` VALUES (674, 2179, 1805);
INSERT INTO `music_movie_collect` VALUES (675, 2179, 1806);
INSERT INTO `music_movie_collect` VALUES (717, 2179, 1807);
INSERT INTO `music_movie_collect` VALUES (679, 2180, 1799);
INSERT INTO `music_movie_collect` VALUES (676, 2180, 1801);
INSERT INTO `music_movie_collect` VALUES (677, 2180, 1802);
INSERT INTO `music_movie_collect` VALUES (678, 2180, 1803);
INSERT INTO `music_movie_collect` VALUES (718, 2180, 1807);
INSERT INTO `music_movie_collect` VALUES (680, 2181, 1796);
INSERT INTO `music_movie_collect` VALUES (681, 2181, 1797);
INSERT INTO `music_movie_collect` VALUES (682, 2181, 1798);
INSERT INTO `music_movie_collect` VALUES (683, 2181, 1799);
INSERT INTO `music_movie_collect` VALUES (684, 2181, 1800);
INSERT INTO `music_movie_collect` VALUES (685, 2181, 1801);
INSERT INTO `music_movie_collect` VALUES (686, 2181, 1802);
INSERT INTO `music_movie_collect` VALUES (687, 2181, 1803);
INSERT INTO `music_movie_collect` VALUES (688, 2181, 1804);
INSERT INTO `music_movie_collect` VALUES (689, 2181, 1805);
INSERT INTO `music_movie_collect` VALUES (690, 2181, 1806);
INSERT INTO `music_movie_collect` VALUES (708, 2181, 1807);
INSERT INTO `music_movie_collect` VALUES (710, 2181, 1808);
INSERT INTO `music_movie_collect` VALUES (713, 2181, 1810);
INSERT INTO `music_movie_collect` VALUES (714, 2181, 1811);
INSERT INTO `music_movie_collect` VALUES (691, 2182, 1796);
INSERT INTO `music_movie_collect` VALUES (692, 2182, 1797);
INSERT INTO `music_movie_collect` VALUES (693, 2182, 1798);
INSERT INTO `music_movie_collect` VALUES (694, 2182, 1799);
INSERT INTO `music_movie_collect` VALUES (695, 2182, 1800);
INSERT INTO `music_movie_collect` VALUES (696, 2182, 1801);
INSERT INTO `music_movie_collect` VALUES (697, 2182, 1802);
INSERT INTO `music_movie_collect` VALUES (698, 2182, 1803);
INSERT INTO `music_movie_collect` VALUES (699, 2182, 1804);
INSERT INTO `music_movie_collect` VALUES (700, 2182, 1805);
INSERT INTO `music_movie_collect` VALUES (701, 2182, 1806);
INSERT INTO `music_movie_collect` VALUES (711, 2182, 1808);
INSERT INTO `music_movie_collect` VALUES (704, 2183, 1796);
INSERT INTO `music_movie_collect` VALUES (702, 2183, 1800);
INSERT INTO `music_movie_collect` VALUES (703, 2183, 1802);
INSERT INTO `music_movie_collect` VALUES (715, 2183, 1807);
INSERT INTO `music_movie_collect` VALUES (707, 2185, 1798);
INSERT INTO `music_movie_collect` VALUES (705, 2185, 1801);
INSERT INTO `music_movie_collect` VALUES (706, 2185, 1805);

-- ----------------------------
-- Table structure for music_movie_tags
-- ----------------------------
DROP TABLE IF EXISTS `music_movie_tags`;
CREATE TABLE `music_movie_tags`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `movie_id` int(0) NOT NULL,
  `tags_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `music_movie_tags_movie_id_tags_id_dd873684_uniq`(`movie_id`, `tags_id`) USING BTREE,
  INDEX `music_movie_tags_tags_id_65a1d438_fk_music_tags_id`(`tags_id`) USING BTREE,
  CONSTRAINT `music_movie_tags_movie_id_5ba65da1_fk_music_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `music_movie` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `music_movie_tags_tags_id_65a1d438_fk_music_tags_id` FOREIGN KEY (`tags_id`) REFERENCES `music_tags` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5552 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music_movie_tags
-- ----------------------------
INSERT INTO `music_movie_tags` VALUES (1, 1, 1);
INSERT INTO `music_movie_tags` VALUES (2, 2, 2);
INSERT INTO `music_movie_tags` VALUES (3, 3, 1);
INSERT INTO `music_movie_tags` VALUES (4, 4, 1);
INSERT INTO `music_movie_tags` VALUES (5, 5, 2);
INSERT INTO `music_movie_tags` VALUES (6, 6, 1);
INSERT INTO `music_movie_tags` VALUES (7, 7, 1);
INSERT INTO `music_movie_tags` VALUES (8, 8, 1);
INSERT INTO `music_movie_tags` VALUES (9, 9, 1);
INSERT INTO `music_movie_tags` VALUES (10, 10, 1);
INSERT INTO `music_movie_tags` VALUES (11, 11, 1);
INSERT INTO `music_movie_tags` VALUES (12, 12, 1);
INSERT INTO `music_movie_tags` VALUES (13, 13, 2);
INSERT INTO `music_movie_tags` VALUES (14, 14, 1);
INSERT INTO `music_movie_tags` VALUES (15, 15, 1);
INSERT INTO `music_movie_tags` VALUES (16, 16, 1);
INSERT INTO `music_movie_tags` VALUES (17, 17, 2);
INSERT INTO `music_movie_tags` VALUES (18, 18, 1);
INSERT INTO `music_movie_tags` VALUES (19, 19, 1);
INSERT INTO `music_movie_tags` VALUES (20, 20, 1);
INSERT INTO `music_movie_tags` VALUES (21, 21, 1);
INSERT INTO `music_movie_tags` VALUES (22, 22, 1);
INSERT INTO `music_movie_tags` VALUES (23, 23, 1);
INSERT INTO `music_movie_tags` VALUES (24, 24, 1);
INSERT INTO `music_movie_tags` VALUES (25, 25, 1);
INSERT INTO `music_movie_tags` VALUES (26, 26, 1);
INSERT INTO `music_movie_tags` VALUES (27, 27, 1);
INSERT INTO `music_movie_tags` VALUES (28, 28, 1);
INSERT INTO `music_movie_tags` VALUES (29, 29, 1);
INSERT INTO `music_movie_tags` VALUES (30, 30, 1);
INSERT INTO `music_movie_tags` VALUES (31, 31, 1);
INSERT INTO `music_movie_tags` VALUES (32, 32, 1);
INSERT INTO `music_movie_tags` VALUES (33, 33, 1);
INSERT INTO `music_movie_tags` VALUES (34, 34, 1);
INSERT INTO `music_movie_tags` VALUES (35, 35, 1);
INSERT INTO `music_movie_tags` VALUES (36, 36, 3);
INSERT INTO `music_movie_tags` VALUES (37, 37, 1);
INSERT INTO `music_movie_tags` VALUES (38, 38, 1);
INSERT INTO `music_movie_tags` VALUES (39, 39, 1);
INSERT INTO `music_movie_tags` VALUES (40, 40, 1);
INSERT INTO `music_movie_tags` VALUES (41, 41, 1);
INSERT INTO `music_movie_tags` VALUES (42, 42, 1);
INSERT INTO `music_movie_tags` VALUES (43, 43, 1);
INSERT INTO `music_movie_tags` VALUES (44, 44, 3);
INSERT INTO `music_movie_tags` VALUES (45, 45, 1);
INSERT INTO `music_movie_tags` VALUES (46, 46, 1);
INSERT INTO `music_movie_tags` VALUES (47, 47, 1);
INSERT INTO `music_movie_tags` VALUES (48, 48, 1);
INSERT INTO `music_movie_tags` VALUES (49, 49, 1);
INSERT INTO `music_movie_tags` VALUES (50, 50, 1);
INSERT INTO `music_movie_tags` VALUES (51, 51, 1);
INSERT INTO `music_movie_tags` VALUES (52, 52, 1);
INSERT INTO `music_movie_tags` VALUES (53, 53, 1);
INSERT INTO `music_movie_tags` VALUES (54, 54, 1);
INSERT INTO `music_movie_tags` VALUES (55, 55, 1);
INSERT INTO `music_movie_tags` VALUES (56, 56, 1);
INSERT INTO `music_movie_tags` VALUES (57, 57, 1);
INSERT INTO `music_movie_tags` VALUES (58, 58, 1);
INSERT INTO `music_movie_tags` VALUES (59, 59, 1);
INSERT INTO `music_movie_tags` VALUES (60, 60, 1);
INSERT INTO `music_movie_tags` VALUES (61, 61, 1);
INSERT INTO `music_movie_tags` VALUES (62, 62, 1);
INSERT INTO `music_movie_tags` VALUES (63, 63, 1);
INSERT INTO `music_movie_tags` VALUES (64, 64, 1);
INSERT INTO `music_movie_tags` VALUES (65, 65, 1);
INSERT INTO `music_movie_tags` VALUES (66, 66, 1);
INSERT INTO `music_movie_tags` VALUES (67, 67, 1);
INSERT INTO `music_movie_tags` VALUES (68, 68, 3);
INSERT INTO `music_movie_tags` VALUES (69, 69, 1);
INSERT INTO `music_movie_tags` VALUES (70, 70, 1);
INSERT INTO `music_movie_tags` VALUES (71, 71, 1);
INSERT INTO `music_movie_tags` VALUES (72, 72, 1);
INSERT INTO `music_movie_tags` VALUES (73, 73, 1);
INSERT INTO `music_movie_tags` VALUES (74, 74, 1);
INSERT INTO `music_movie_tags` VALUES (75, 75, 1);
INSERT INTO `music_movie_tags` VALUES (76, 76, 1);
INSERT INTO `music_movie_tags` VALUES (77, 77, 1);
INSERT INTO `music_movie_tags` VALUES (78, 78, 1);
INSERT INTO `music_movie_tags` VALUES (79, 79, 1);
INSERT INTO `music_movie_tags` VALUES (80, 80, 1);
INSERT INTO `music_movie_tags` VALUES (81, 81, 1);
INSERT INTO `music_movie_tags` VALUES (82, 82, 1);
INSERT INTO `music_movie_tags` VALUES (83, 83, 1);
INSERT INTO `music_movie_tags` VALUES (84, 84, 1);
INSERT INTO `music_movie_tags` VALUES (85, 85, 1);
INSERT INTO `music_movie_tags` VALUES (86, 86, 1);
INSERT INTO `music_movie_tags` VALUES (87, 87, 1);
INSERT INTO `music_movie_tags` VALUES (88, 88, 1);
INSERT INTO `music_movie_tags` VALUES (89, 89, 1);
INSERT INTO `music_movie_tags` VALUES (90, 90, 1);
INSERT INTO `music_movie_tags` VALUES (91, 91, 1);
INSERT INTO `music_movie_tags` VALUES (92, 92, 1);
INSERT INTO `music_movie_tags` VALUES (93, 93, 1);
INSERT INTO `music_movie_tags` VALUES (94, 94, 1);
INSERT INTO `music_movie_tags` VALUES (95, 95, 1);
INSERT INTO `music_movie_tags` VALUES (96, 96, 1);
INSERT INTO `music_movie_tags` VALUES (97, 97, 1);
INSERT INTO `music_movie_tags` VALUES (98, 98, 1);
INSERT INTO `music_movie_tags` VALUES (99, 99, 1);
INSERT INTO `music_movie_tags` VALUES (100, 100, 1);
INSERT INTO `music_movie_tags` VALUES (101, 101, 1);
INSERT INTO `music_movie_tags` VALUES (102, 102, 1);
INSERT INTO `music_movie_tags` VALUES (103, 103, 1);
INSERT INTO `music_movie_tags` VALUES (104, 104, 1);
INSERT INTO `music_movie_tags` VALUES (105, 105, 1);
INSERT INTO `music_movie_tags` VALUES (106, 106, 1);
INSERT INTO `music_movie_tags` VALUES (107, 107, 1);
INSERT INTO `music_movie_tags` VALUES (108, 108, 1);
INSERT INTO `music_movie_tags` VALUES (109, 109, 1);
INSERT INTO `music_movie_tags` VALUES (110, 110, 1);
INSERT INTO `music_movie_tags` VALUES (111, 111, 1);
INSERT INTO `music_movie_tags` VALUES (112, 112, 1);
INSERT INTO `music_movie_tags` VALUES (113, 113, 1);
INSERT INTO `music_movie_tags` VALUES (114, 114, 1);
INSERT INTO `music_movie_tags` VALUES (115, 115, 1);
INSERT INTO `music_movie_tags` VALUES (116, 116, 1);
INSERT INTO `music_movie_tags` VALUES (117, 117, 1);
INSERT INTO `music_movie_tags` VALUES (118, 118, 1);
INSERT INTO `music_movie_tags` VALUES (119, 119, 1);
INSERT INTO `music_movie_tags` VALUES (120, 120, 1);
INSERT INTO `music_movie_tags` VALUES (121, 121, 1);
INSERT INTO `music_movie_tags` VALUES (122, 122, 1);
INSERT INTO `music_movie_tags` VALUES (123, 123, 1);
INSERT INTO `music_movie_tags` VALUES (124, 124, 1);
INSERT INTO `music_movie_tags` VALUES (125, 125, 1);
INSERT INTO `music_movie_tags` VALUES (126, 126, 1);
INSERT INTO `music_movie_tags` VALUES (127, 127, 1);
INSERT INTO `music_movie_tags` VALUES (128, 128, 1);
INSERT INTO `music_movie_tags` VALUES (129, 129, 1);
INSERT INTO `music_movie_tags` VALUES (130, 130, 1);
INSERT INTO `music_movie_tags` VALUES (131, 131, 1);
INSERT INTO `music_movie_tags` VALUES (132, 132, 1);
INSERT INTO `music_movie_tags` VALUES (133, 133, 1);
INSERT INTO `music_movie_tags` VALUES (134, 134, 1);
INSERT INTO `music_movie_tags` VALUES (135, 135, 4);
INSERT INTO `music_movie_tags` VALUES (136, 136, 1);
INSERT INTO `music_movie_tags` VALUES (137, 137, 1);
INSERT INTO `music_movie_tags` VALUES (138, 138, 1);
INSERT INTO `music_movie_tags` VALUES (139, 139, 1);
INSERT INTO `music_movie_tags` VALUES (140, 140, 1);
INSERT INTO `music_movie_tags` VALUES (141, 141, 1);
INSERT INTO `music_movie_tags` VALUES (142, 142, 1);
INSERT INTO `music_movie_tags` VALUES (143, 143, 1);
INSERT INTO `music_movie_tags` VALUES (144, 144, 3);
INSERT INTO `music_movie_tags` VALUES (145, 145, 1);
INSERT INTO `music_movie_tags` VALUES (146, 146, 1);
INSERT INTO `music_movie_tags` VALUES (147, 147, 1);
INSERT INTO `music_movie_tags` VALUES (148, 148, 1);
INSERT INTO `music_movie_tags` VALUES (149, 149, 1);
INSERT INTO `music_movie_tags` VALUES (150, 150, 1);
INSERT INTO `music_movie_tags` VALUES (151, 151, 1);
INSERT INTO `music_movie_tags` VALUES (152, 152, 1);
INSERT INTO `music_movie_tags` VALUES (153, 153, 1);
INSERT INTO `music_movie_tags` VALUES (154, 154, 1);
INSERT INTO `music_movie_tags` VALUES (155, 155, 1);
INSERT INTO `music_movie_tags` VALUES (156, 156, 1);
INSERT INTO `music_movie_tags` VALUES (157, 157, 1);
INSERT INTO `music_movie_tags` VALUES (158, 158, 1);
INSERT INTO `music_movie_tags` VALUES (159, 159, 1);
INSERT INTO `music_movie_tags` VALUES (160, 160, 1);
INSERT INTO `music_movie_tags` VALUES (161, 161, 1);
INSERT INTO `music_movie_tags` VALUES (162, 162, 1);
INSERT INTO `music_movie_tags` VALUES (163, 163, 1);
INSERT INTO `music_movie_tags` VALUES (164, 164, 1);
INSERT INTO `music_movie_tags` VALUES (165, 165, 1);
INSERT INTO `music_movie_tags` VALUES (166, 166, 1);
INSERT INTO `music_movie_tags` VALUES (167, 167, 1);
INSERT INTO `music_movie_tags` VALUES (168, 168, 1);
INSERT INTO `music_movie_tags` VALUES (169, 169, 1);
INSERT INTO `music_movie_tags` VALUES (170, 170, 1);
INSERT INTO `music_movie_tags` VALUES (171, 171, 1);
INSERT INTO `music_movie_tags` VALUES (172, 172, 1);
INSERT INTO `music_movie_tags` VALUES (173, 173, 1);
INSERT INTO `music_movie_tags` VALUES (174, 174, 1);
INSERT INTO `music_movie_tags` VALUES (175, 175, 1);
INSERT INTO `music_movie_tags` VALUES (176, 176, 1);
INSERT INTO `music_movie_tags` VALUES (177, 177, 1);
INSERT INTO `music_movie_tags` VALUES (178, 178, 1);
INSERT INTO `music_movie_tags` VALUES (179, 179, 1);
INSERT INTO `music_movie_tags` VALUES (180, 180, 3);
INSERT INTO `music_movie_tags` VALUES (181, 181, 1);
INSERT INTO `music_movie_tags` VALUES (182, 182, 1);
INSERT INTO `music_movie_tags` VALUES (183, 183, 1);
INSERT INTO `music_movie_tags` VALUES (184, 184, 1);
INSERT INTO `music_movie_tags` VALUES (185, 185, 1);
INSERT INTO `music_movie_tags` VALUES (186, 186, 1);
INSERT INTO `music_movie_tags` VALUES (187, 187, 1);
INSERT INTO `music_movie_tags` VALUES (188, 188, 1);
INSERT INTO `music_movie_tags` VALUES (189, 189, 1);
INSERT INTO `music_movie_tags` VALUES (190, 190, 1);
INSERT INTO `music_movie_tags` VALUES (191, 191, 1);
INSERT INTO `music_movie_tags` VALUES (192, 192, 1);
INSERT INTO `music_movie_tags` VALUES (193, 193, 1);
INSERT INTO `music_movie_tags` VALUES (194, 194, 1);
INSERT INTO `music_movie_tags` VALUES (195, 195, 1);
INSERT INTO `music_movie_tags` VALUES (196, 196, 1);
INSERT INTO `music_movie_tags` VALUES (197, 197, 1);
INSERT INTO `music_movie_tags` VALUES (198, 198, 1);
INSERT INTO `music_movie_tags` VALUES (199, 199, 1);
INSERT INTO `music_movie_tags` VALUES (200, 200, 1);
INSERT INTO `music_movie_tags` VALUES (201, 201, 1);
INSERT INTO `music_movie_tags` VALUES (202, 202, 1);
INSERT INTO `music_movie_tags` VALUES (203, 203, 1);
INSERT INTO `music_movie_tags` VALUES (204, 204, 1);
INSERT INTO `music_movie_tags` VALUES (205, 205, 1);
INSERT INTO `music_movie_tags` VALUES (206, 206, 1);
INSERT INTO `music_movie_tags` VALUES (207, 207, 1);
INSERT INTO `music_movie_tags` VALUES (208, 208, 1);
INSERT INTO `music_movie_tags` VALUES (209, 209, 2);
INSERT INTO `music_movie_tags` VALUES (210, 210, 1);
INSERT INTO `music_movie_tags` VALUES (211, 211, 1);
INSERT INTO `music_movie_tags` VALUES (212, 212, 2);
INSERT INTO `music_movie_tags` VALUES (213, 213, 2);
INSERT INTO `music_movie_tags` VALUES (214, 214, 1);
INSERT INTO `music_movie_tags` VALUES (215, 215, 1);
INSERT INTO `music_movie_tags` VALUES (216, 216, 1);
INSERT INTO `music_movie_tags` VALUES (217, 217, 1);
INSERT INTO `music_movie_tags` VALUES (218, 218, 1);
INSERT INTO `music_movie_tags` VALUES (219, 219, 1);
INSERT INTO `music_movie_tags` VALUES (220, 220, 1);
INSERT INTO `music_movie_tags` VALUES (221, 221, 1);
INSERT INTO `music_movie_tags` VALUES (222, 222, 1);
INSERT INTO `music_movie_tags` VALUES (223, 223, 5);
INSERT INTO `music_movie_tags` VALUES (224, 224, 1);
INSERT INTO `music_movie_tags` VALUES (225, 225, 2);
INSERT INTO `music_movie_tags` VALUES (226, 226, 1);
INSERT INTO `music_movie_tags` VALUES (227, 227, 2);
INSERT INTO `music_movie_tags` VALUES (228, 228, 1);
INSERT INTO `music_movie_tags` VALUES (229, 229, 1);
INSERT INTO `music_movie_tags` VALUES (230, 230, 2);
INSERT INTO `music_movie_tags` VALUES (231, 231, 1);
INSERT INTO `music_movie_tags` VALUES (232, 232, 1);
INSERT INTO `music_movie_tags` VALUES (233, 233, 2);
INSERT INTO `music_movie_tags` VALUES (234, 234, 1);
INSERT INTO `music_movie_tags` VALUES (235, 235, 2);
INSERT INTO `music_movie_tags` VALUES (236, 236, 2);
INSERT INTO `music_movie_tags` VALUES (237, 237, 1);
INSERT INTO `music_movie_tags` VALUES (238, 238, 2);
INSERT INTO `music_movie_tags` VALUES (239, 239, 1);
INSERT INTO `music_movie_tags` VALUES (240, 240, 1);
INSERT INTO `music_movie_tags` VALUES (241, 241, 1);
INSERT INTO `music_movie_tags` VALUES (242, 242, 1);
INSERT INTO `music_movie_tags` VALUES (243, 243, 1);
INSERT INTO `music_movie_tags` VALUES (244, 244, 2);
INSERT INTO `music_movie_tags` VALUES (245, 245, 1);
INSERT INTO `music_movie_tags` VALUES (246, 246, 1);
INSERT INTO `music_movie_tags` VALUES (247, 247, 2);
INSERT INTO `music_movie_tags` VALUES (248, 248, 2);
INSERT INTO `music_movie_tags` VALUES (249, 249, 1);
INSERT INTO `music_movie_tags` VALUES (250, 250, 1);
INSERT INTO `music_movie_tags` VALUES (251, 251, 2);
INSERT INTO `music_movie_tags` VALUES (252, 252, 1);
INSERT INTO `music_movie_tags` VALUES (253, 253, 1);
INSERT INTO `music_movie_tags` VALUES (254, 254, 1);
INSERT INTO `music_movie_tags` VALUES (255, 255, 1);
INSERT INTO `music_movie_tags` VALUES (256, 256, 1);
INSERT INTO `music_movie_tags` VALUES (257, 257, 1);
INSERT INTO `music_movie_tags` VALUES (258, 258, 1);
INSERT INTO `music_movie_tags` VALUES (259, 259, 1);
INSERT INTO `music_movie_tags` VALUES (260, 260, 1);
INSERT INTO `music_movie_tags` VALUES (261, 261, 1);
INSERT INTO `music_movie_tags` VALUES (262, 262, 1);
INSERT INTO `music_movie_tags` VALUES (263, 263, 1);
INSERT INTO `music_movie_tags` VALUES (264, 264, 1);
INSERT INTO `music_movie_tags` VALUES (265, 265, 1);
INSERT INTO `music_movie_tags` VALUES (266, 266, 1);
INSERT INTO `music_movie_tags` VALUES (267, 267, 1);
INSERT INTO `music_movie_tags` VALUES (268, 268, 1);
INSERT INTO `music_movie_tags` VALUES (269, 269, 1);
INSERT INTO `music_movie_tags` VALUES (270, 270, 1);
INSERT INTO `music_movie_tags` VALUES (271, 271, 1);
INSERT INTO `music_movie_tags` VALUES (272, 272, 1);
INSERT INTO `music_movie_tags` VALUES (273, 273, 1);
INSERT INTO `music_movie_tags` VALUES (274, 274, 1);
INSERT INTO `music_movie_tags` VALUES (275, 275, 1);
INSERT INTO `music_movie_tags` VALUES (276, 276, 1);
INSERT INTO `music_movie_tags` VALUES (277, 277, 1);
INSERT INTO `music_movie_tags` VALUES (278, 278, 1);
INSERT INTO `music_movie_tags` VALUES (279, 279, 1);
INSERT INTO `music_movie_tags` VALUES (280, 280, 1);
INSERT INTO `music_movie_tags` VALUES (281, 281, 1);
INSERT INTO `music_movie_tags` VALUES (282, 282, 1);
INSERT INTO `music_movie_tags` VALUES (283, 283, 1);
INSERT INTO `music_movie_tags` VALUES (284, 284, 1);
INSERT INTO `music_movie_tags` VALUES (285, 285, 1);
INSERT INTO `music_movie_tags` VALUES (286, 286, 1);
INSERT INTO `music_movie_tags` VALUES (287, 287, 1);
INSERT INTO `music_movie_tags` VALUES (288, 288, 1);
INSERT INTO `music_movie_tags` VALUES (289, 289, 1);
INSERT INTO `music_movie_tags` VALUES (290, 290, 1);
INSERT INTO `music_movie_tags` VALUES (291, 291, 1);
INSERT INTO `music_movie_tags` VALUES (292, 292, 1);
INSERT INTO `music_movie_tags` VALUES (293, 293, 1);
INSERT INTO `music_movie_tags` VALUES (294, 294, 1);
INSERT INTO `music_movie_tags` VALUES (295, 295, 4);
INSERT INTO `music_movie_tags` VALUES (296, 296, 1);
INSERT INTO `music_movie_tags` VALUES (297, 297, 1);
INSERT INTO `music_movie_tags` VALUES (298, 298, 1);
INSERT INTO `music_movie_tags` VALUES (299, 299, 1);
INSERT INTO `music_movie_tags` VALUES (300, 300, 1);
INSERT INTO `music_movie_tags` VALUES (301, 301, 1);
INSERT INTO `music_movie_tags` VALUES (302, 302, 1);
INSERT INTO `music_movie_tags` VALUES (303, 303, 1);
INSERT INTO `music_movie_tags` VALUES (304, 304, 1);
INSERT INTO `music_movie_tags` VALUES (305, 305, 1);
INSERT INTO `music_movie_tags` VALUES (306, 306, 1);
INSERT INTO `music_movie_tags` VALUES (307, 307, 1);
INSERT INTO `music_movie_tags` VALUES (308, 308, 1);
INSERT INTO `music_movie_tags` VALUES (309, 309, 1);
INSERT INTO `music_movie_tags` VALUES (310, 310, 1);
INSERT INTO `music_movie_tags` VALUES (311, 311, 1);
INSERT INTO `music_movie_tags` VALUES (312, 312, 1);
INSERT INTO `music_movie_tags` VALUES (313, 313, 1);
INSERT INTO `music_movie_tags` VALUES (314, 314, 1);
INSERT INTO `music_movie_tags` VALUES (315, 315, 1);
INSERT INTO `music_movie_tags` VALUES (316, 316, 1);
INSERT INTO `music_movie_tags` VALUES (317, 317, 1);
INSERT INTO `music_movie_tags` VALUES (318, 318, 1);
INSERT INTO `music_movie_tags` VALUES (319, 319, 1);
INSERT INTO `music_movie_tags` VALUES (320, 320, 1);
INSERT INTO `music_movie_tags` VALUES (321, 321, 1);
INSERT INTO `music_movie_tags` VALUES (322, 322, 1);
INSERT INTO `music_movie_tags` VALUES (323, 323, 1);
INSERT INTO `music_movie_tags` VALUES (324, 324, 1);
INSERT INTO `music_movie_tags` VALUES (325, 325, 1);
INSERT INTO `music_movie_tags` VALUES (326, 326, 1);
INSERT INTO `music_movie_tags` VALUES (327, 327, 1);
INSERT INTO `music_movie_tags` VALUES (328, 328, 1);
INSERT INTO `music_movie_tags` VALUES (329, 329, 1);
INSERT INTO `music_movie_tags` VALUES (330, 330, 1);
INSERT INTO `music_movie_tags` VALUES (331, 331, 1);
INSERT INTO `music_movie_tags` VALUES (332, 332, 1);
INSERT INTO `music_movie_tags` VALUES (333, 333, 1);
INSERT INTO `music_movie_tags` VALUES (334, 334, 1);
INSERT INTO `music_movie_tags` VALUES (335, 335, 1);
INSERT INTO `music_movie_tags` VALUES (336, 336, 6);
INSERT INTO `music_movie_tags` VALUES (337, 337, 3);
INSERT INTO `music_movie_tags` VALUES (338, 338, 1);
INSERT INTO `music_movie_tags` VALUES (339, 339, 1);
INSERT INTO `music_movie_tags` VALUES (340, 340, 1);
INSERT INTO `music_movie_tags` VALUES (341, 341, 3);
INSERT INTO `music_movie_tags` VALUES (342, 342, 3);
INSERT INTO `music_movie_tags` VALUES (343, 343, 1);
INSERT INTO `music_movie_tags` VALUES (344, 344, 1);
INSERT INTO `music_movie_tags` VALUES (345, 345, 1);
INSERT INTO `music_movie_tags` VALUES (346, 346, 1);
INSERT INTO `music_movie_tags` VALUES (347, 347, 1);
INSERT INTO `music_movie_tags` VALUES (348, 348, 1);
INSERT INTO `music_movie_tags` VALUES (349, 349, 1);
INSERT INTO `music_movie_tags` VALUES (350, 350, 1);
INSERT INTO `music_movie_tags` VALUES (351, 351, 1);
INSERT INTO `music_movie_tags` VALUES (352, 352, 1);
INSERT INTO `music_movie_tags` VALUES (353, 353, 1);
INSERT INTO `music_movie_tags` VALUES (354, 354, 1);
INSERT INTO `music_movie_tags` VALUES (355, 355, 1);
INSERT INTO `music_movie_tags` VALUES (356, 356, 1);
INSERT INTO `music_movie_tags` VALUES (357, 357, 1);
INSERT INTO `music_movie_tags` VALUES (358, 358, 1);
INSERT INTO `music_movie_tags` VALUES (359, 359, 1);
INSERT INTO `music_movie_tags` VALUES (360, 360, 1);
INSERT INTO `music_movie_tags` VALUES (361, 361, 1);
INSERT INTO `music_movie_tags` VALUES (362, 362, 1);
INSERT INTO `music_movie_tags` VALUES (363, 363, 1);
INSERT INTO `music_movie_tags` VALUES (364, 364, 1);
INSERT INTO `music_movie_tags` VALUES (365, 365, 3);
INSERT INTO `music_movie_tags` VALUES (366, 366, 3);
INSERT INTO `music_movie_tags` VALUES (367, 367, 1);
INSERT INTO `music_movie_tags` VALUES (368, 368, 3);
INSERT INTO `music_movie_tags` VALUES (369, 369, 3);
INSERT INTO `music_movie_tags` VALUES (370, 370, 1);
INSERT INTO `music_movie_tags` VALUES (371, 371, 1);
INSERT INTO `music_movie_tags` VALUES (372, 372, 1);
INSERT INTO `music_movie_tags` VALUES (373, 373, 3);
INSERT INTO `music_movie_tags` VALUES (374, 374, 1);
INSERT INTO `music_movie_tags` VALUES (375, 375, 3);
INSERT INTO `music_movie_tags` VALUES (376, 376, 3);
INSERT INTO `music_movie_tags` VALUES (377, 377, 1);
INSERT INTO `music_movie_tags` VALUES (378, 378, 3);
INSERT INTO `music_movie_tags` VALUES (379, 379, 1);
INSERT INTO `music_movie_tags` VALUES (380, 380, 1);
INSERT INTO `music_movie_tags` VALUES (381, 381, 1);
INSERT INTO `music_movie_tags` VALUES (382, 382, 1);
INSERT INTO `music_movie_tags` VALUES (383, 383, 3);
INSERT INTO `music_movie_tags` VALUES (384, 384, 1);
INSERT INTO `music_movie_tags` VALUES (385, 385, 1);
INSERT INTO `music_movie_tags` VALUES (386, 386, 1);
INSERT INTO `music_movie_tags` VALUES (387, 387, 1);
INSERT INTO `music_movie_tags` VALUES (388, 388, 1);
INSERT INTO `music_movie_tags` VALUES (389, 389, 1);
INSERT INTO `music_movie_tags` VALUES (390, 390, 1);
INSERT INTO `music_movie_tags` VALUES (391, 391, 1);
INSERT INTO `music_movie_tags` VALUES (392, 392, 1);
INSERT INTO `music_movie_tags` VALUES (393, 393, 1);
INSERT INTO `music_movie_tags` VALUES (394, 394, 1);
INSERT INTO `music_movie_tags` VALUES (395, 395, 1);
INSERT INTO `music_movie_tags` VALUES (396, 396, 1);
INSERT INTO `music_movie_tags` VALUES (397, 397, 1);
INSERT INTO `music_movie_tags` VALUES (398, 398, 1);
INSERT INTO `music_movie_tags` VALUES (399, 399, 1);
INSERT INTO `music_movie_tags` VALUES (400, 400, 1);
INSERT INTO `music_movie_tags` VALUES (401, 2173, 4);
INSERT INTO `music_movie_tags` VALUES (402, 2174, 4);
INSERT INTO `music_movie_tags` VALUES (403, 2175, 4);
INSERT INTO `music_movie_tags` VALUES (404, 2176, 4);
INSERT INTO `music_movie_tags` VALUES (405, 2177, 4);
INSERT INTO `music_movie_tags` VALUES (406, 2178, 4);
INSERT INTO `music_movie_tags` VALUES (407, 2179, 4);
INSERT INTO `music_movie_tags` VALUES (408, 2180, 4);
INSERT INTO `music_movie_tags` VALUES (409, 2181, 4);
INSERT INTO `music_movie_tags` VALUES (410, 2182, 4);
INSERT INTO `music_movie_tags` VALUES (411, 2183, 4);
INSERT INTO `music_movie_tags` VALUES (412, 2185, 4);

-- ----------------------------
-- Table structure for music_rate
-- ----------------------------
DROP TABLE IF EXISTS `music_rate`;
CREATE TABLE `music_rate`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `mark` double NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `movie_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `music_rate_movie_id_28eac1d9_fk_music_movie_id`(`movie_id`) USING BTREE,
  INDEX `music_rate_user_id_5d7dcbf7_fk_music_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `music_rate_movie_id_28eac1d9_fk_music_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `music_movie` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `music_rate_user_id_5d7dcbf7_fk_music_user_id` FOREIGN KEY (`user_id`) REFERENCES `music_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music_rate
-- ----------------------------
INSERT INTO `music_rate` VALUES (1, 4, '2021-05-14 16:01:17.173665', 2175, 1807);
INSERT INTO `music_rate` VALUES (2, 5, '2021-05-26 09:32:33.155911', 2181, 1808);
INSERT INTO `music_rate` VALUES (3, 5, '2021-05-26 09:32:41.231303', 2182, 1808);
INSERT INTO `music_rate` VALUES (4, 5, '2022-03-20 15:45:33.170280', 2181, 1810);
INSERT INTO `music_rate` VALUES (5, 5, '2022-03-20 15:48:13.636848', 2181, 1811);
INSERT INTO `music_rate` VALUES (6, 5, '2022-04-23 15:30:55.753166', 2183, 1807);
INSERT INTO `music_rate` VALUES (7, 3, '2022-04-23 15:54:18.440376', 2179, 1807);
INSERT INTO `music_rate` VALUES (8, 5, '2022-04-23 15:57:02.164224', 2176, 1807);
INSERT INTO `music_rate` VALUES (9, 3, '2022-04-23 15:57:06.999407', 2180, 1807);
INSERT INTO `music_rate` VALUES (11, 5, '2022-04-23 16:07:55.283859', 2182, 1807);
INSERT INTO `music_rate` VALUES (12, 5, '2022-04-23 16:08:44.899893', 257, 1807);
INSERT INTO `music_rate` VALUES (13, 5, '2022-04-23 16:09:08.672383', 6, 1807);
INSERT INTO `music_rate` VALUES (14, 5, '2022-04-23 16:18:00.732495', 1, 1807);
INSERT INTO `music_rate` VALUES (15, 3, '2022-04-23 16:29:32.538897', 77, 1807);

-- ----------------------------
-- Table structure for music_tags
-- ----------------------------
DROP TABLE IF EXISTS `music_tags`;
CREATE TABLE `music_tags`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music_tags
-- ----------------------------
INSERT INTO `music_tags` VALUES (4, '其他');
INSERT INTO `music_tags` VALUES (1, '国语');
INSERT INTO `music_tags` VALUES (8, '意大利语');
INSERT INTO `music_tags` VALUES (3, '粤语');
INSERT INTO `music_tags` VALUES (5, '纯音乐');
INSERT INTO `music_tags` VALUES (6, '英语');
INSERT INTO `music_tags` VALUES (7, '西班牙语');
INSERT INTO `music_tags` VALUES (2, '韩语');

-- ----------------------------
-- Table structure for music_user
-- ----------------------------
DROP TABLE IF EXISTS `music_user`;
CREATE TABLE `music_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1812 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music_user
-- ----------------------------
INSERT INTO `music_user` VALUES (83, 'dvadt', 'dvadt', 'dvadt@163.com', '2021-07-29 00:00:00.000000');
INSERT INTO `music_user` VALUES (84, 'twkbi', 'twkbi', 'twkbi@163.com', '2021-07-30 00:00:00.000000');
INSERT INTO `music_user` VALUES (85, 'bzgbd', 'bzgbd', 'bzgbd@163.com', '2021-07-31 00:00:00.000000');
INSERT INTO `music_user` VALUES (86, 'skksy', 'skksy', 'skksy@163.com', '2021-08-01 00:00:00.000000');
INSERT INTO `music_user` VALUES (87, 'smile001', '123456', '123@qq.com', '2021-08-02 00:00:00.000000');
INSERT INTO `music_user` VALUES (88, 'xgbke', 'xgbke', 'xgbke@163.com', '2021-08-03 00:00:00.000000');
INSERT INTO `music_user` VALUES (89, 'goezp', 'goezp', 'goezp@163.com', '2021-08-04 00:00:00.000000');
INSERT INTO `music_user` VALUES (90, '_e_po', '_e_po', '_e_po@163.com', '2021-08-05 00:00:00.000000');
INSERT INTO `music_user` VALUES (91, 'prhms', 'prhms', 'prhms@163.com', '2021-08-06 00:00:00.000000');
INSERT INTO `music_user` VALUES (92, 'xf_kw', 'xf_kw', 'xf_kw@163.com', '2021-08-07 00:00:00.000000');
INSERT INTO `music_user` VALUES (93, 'g_wzu', 'g_wzu', 'g_wzu@163.com', '2021-08-08 00:00:00.000000');
INSERT INTO `music_user` VALUES (94, 'jhssx', 'jhssx', 'jhssx@163.com', '2021-08-09 00:00:00.000000');
INSERT INTO `music_user` VALUES (95, 'aeu_n', 'aeu_n', 'aeu_n@163.com', '2021-08-10 00:00:00.000000');
INSERT INTO `music_user` VALUES (96, 'adpgc', 'adpgc', 'adpgc@163.com', '2021-08-11 00:00:00.000000');
INSERT INTO `music_user` VALUES (97, 'nc_ka', 'nc_ka', 'nc_ka@163.com', '2021-08-12 00:00:00.000000');
INSERT INTO `music_user` VALUES (98, 'ptgey', 'ptgey', 'ptgey@163.com', '2021-08-13 00:00:00.000000');
INSERT INTO `music_user` VALUES (99, '_azna', '_azna', '_azna@163.com', '2021-08-14 00:00:00.000000');
INSERT INTO `music_user` VALUES (100, 'uonjb', 'uonjb', 'uonjb@163.com', '2021-08-15 00:00:00.000000');
INSERT INTO `music_user` VALUES (101, 'zyopa', 'zyopa', 'zyopa@163.com', '2021-08-16 00:00:00.000000');
INSERT INTO `music_user` VALUES (102, 'qwugs', 'qwugs', 'qwugs@163.com', '2021-08-17 00:00:00.000000');
INSERT INTO `music_user` VALUES (103, 'vdqmw', 'vdqmw', 'vdqmw@163.com', '2021-08-18 00:00:00.000000');
INSERT INTO `music_user` VALUES (104, 'ino_m', 'ino_m', 'ino_m@163.com', '2021-08-19 00:00:00.000000');
INSERT INTO `music_user` VALUES (105, 'igtjg', 'igtjg', 'igtjg@163.com', '2021-08-20 00:00:00.000000');
INSERT INTO `music_user` VALUES (106, 'njmpi', 'njmpi', 'njmpi@163.com', '2021-08-21 00:00:00.000000');
INSERT INTO `music_user` VALUES (107, 'yukhk', 'yukhk', 'yukhk@163.com', '2021-08-22 00:00:00.000000');
INSERT INTO `music_user` VALUES (108, 'wyaod', 'wyaod', 'wyaod@163.com', '2021-08-23 00:00:00.000000');
INSERT INTO `music_user` VALUES (109, 'ceufo', 'ceufo', 'ceufo@163.com', '2021-08-24 00:00:00.000000');
INSERT INTO `music_user` VALUES (110, 'ogxec', 'ogxec', 'ogxec@163.com', '2021-08-25 00:00:00.000000');
INSERT INTO `music_user` VALUES (111, 'rbhnj', 'rbhnj', 'rbhnj@163.com', '2021-08-26 00:00:00.000000');
INSERT INTO `music_user` VALUES (112, 'hyovs', 'hyovs', 'hyovs@163.com', '2021-08-27 00:00:00.000000');
INSERT INTO `music_user` VALUES (113, 'jknwn', 'jknwn', 'jknwn@163.com', '2021-08-28 00:00:00.000000');
INSERT INTO `music_user` VALUES (114, 'kowgn', 'kowgn', 'kowgn@163.com', '2021-08-29 00:00:00.000000');
INSERT INTO `music_user` VALUES (115, 'zxgjq', 'zxgjq', 'zxgjq@163.com', '2021-08-30 00:00:00.000000');
INSERT INTO `music_user` VALUES (116, 'pntaz', 'pntaz', 'pntaz@163.com', '2021-08-31 00:00:00.000000');
INSERT INTO `music_user` VALUES (117, 'eq_uj', 'eq_uj', 'eq_uj@163.com', '2021-09-01 00:00:00.000000');
INSERT INTO `music_user` VALUES (118, 'quetq', 'quetq', 'quetq@163.com', '2021-09-02 00:00:00.000000');
INSERT INTO `music_user` VALUES (119, 'bxvhr', 'bxvhr', 'bxvhr@163.com', '2021-09-03 00:00:00.000000');
INSERT INTO `music_user` VALUES (120, 'mznpr', 'mznpr', 'mznpr@163.com', '2021-09-04 00:00:00.000000');
INSERT INTO `music_user` VALUES (121, 'nnigz', 'nnigz', 'nnigz@163.com', '2021-09-05 00:00:00.000000');
INSERT INTO `music_user` VALUES (122, 'cax_j', 'cax_j', 'cax_j@163.com', '2021-09-06 00:00:00.000000');
INSERT INTO `music_user` VALUES (123, '_knkw', '_knkw', '_knkw@163.com', '2021-09-07 00:00:00.000000');
INSERT INTO `music_user` VALUES (124, 'mpkue', 'mpkue', 'mpkue@163.com', '2021-09-08 00:00:00.000000');
INSERT INTO `music_user` VALUES (125, 'pauzq', 'pauzq', 'pauzq@163.com', '2021-09-09 00:00:00.000000');
INSERT INTO `music_user` VALUES (126, 'cjjya', 'cjjya', 'cjjya@163.com', '2021-09-10 00:00:00.000000');
INSERT INTO `music_user` VALUES (127, 'frkyc', 'frkyc', 'frkyc@163.com', '2021-09-11 00:00:00.000000');
INSERT INTO `music_user` VALUES (128, 'rsj_e', 'rsj_e', 'rsj_e@163.com', '2021-09-12 00:00:00.000000');
INSERT INTO `music_user` VALUES (129, 'fvwdy', 'fvwdy', 'fvwdy@163.com', '2021-09-13 00:00:00.000000');
INSERT INTO `music_user` VALUES (130, 'deedh', 'deedh', 'deedh@163.com', '2021-09-14 00:00:00.000000');
INSERT INTO `music_user` VALUES (131, '_esdf', '_esdf', '_esdf@163.com', '2021-09-15 00:00:00.000000');
INSERT INTO `music_user` VALUES (132, 'phmpw', 'phmpw', 'phmpw@163.com', '2021-09-16 00:00:00.000000');
INSERT INTO `music_user` VALUES (133, 'wbs_s', 'wbs_s', 'wbs_s@163.com', '2021-09-17 00:00:00.000000');
INSERT INTO `music_user` VALUES (134, 'rswqf', 'rswqf', 'rswqf@163.com', '2021-09-18 00:00:00.000000');
INSERT INTO `music_user` VALUES (135, 'rbitd', 'rbitd', 'rbitd@163.com', '2021-09-19 00:00:00.000000');
INSERT INTO `music_user` VALUES (136, 'fnamp', 'fnamp', 'fnamp@163.com', '2021-09-20 00:00:00.000000');
INSERT INTO `music_user` VALUES (137, 'ytqbx', 'ytqbx', 'ytqbx@163.com', '2021-09-21 00:00:00.000000');
INSERT INTO `music_user` VALUES (138, 'rgfkg', 'rgfkg', 'rgfkg@163.com', '2021-09-22 00:00:00.000000');
INSERT INTO `music_user` VALUES (139, 'mdcqp', 'mdcqp', 'mdcqp@163.com', '2021-09-23 00:00:00.000000');
INSERT INTO `music_user` VALUES (140, 'wewxh', 'wewxh', 'wewxh@163.com', '2021-09-24 00:00:00.000000');
INSERT INTO `music_user` VALUES (141, 'rraes', 'rraes', 'rraes@163.com', '2021-09-25 00:00:00.000000');
INSERT INTO `music_user` VALUES (142, 'ksdia', 'ksdia', 'ksdia@163.com', '2021-09-26 00:00:00.000000');
INSERT INTO `music_user` VALUES (143, 'ftjvg', 'ftjvg', 'ftjvg@163.com', '2021-09-27 00:00:00.000000');
INSERT INTO `music_user` VALUES (144, 'kkteg', 'kkteg', 'kkteg@163.com', '2021-09-28 00:00:00.000000');
INSERT INTO `music_user` VALUES (145, 'rfkn_', 'rfkn_', 'rfkn_@163.com', '2021-09-29 00:00:00.000000');
INSERT INTO `music_user` VALUES (146, 'zqv_r', 'zqv_r', 'zqv_r@163.com', '2021-09-30 00:00:00.000000');
INSERT INTO `music_user` VALUES (147, 'pcyrr', 'pcyrr', 'pcyrr@163.com', '2021-10-01 00:00:00.000000');
INSERT INTO `music_user` VALUES (148, 'drcmq', 'drcmq', 'drcmq@163.com', '2021-10-02 00:00:00.000000');
INSERT INTO `music_user` VALUES (149, 'sjzm_', 'sjzm_', 'sjzm_@163.com', '2021-10-03 00:00:00.000000');
INSERT INTO `music_user` VALUES (150, 'ofdef', 'ofdef', 'ofdef@163.com', '2021-10-04 00:00:00.000000');
INSERT INTO `music_user` VALUES (151, 'ianhq', 'ianhq', 'ianhq@163.com', '2021-10-05 00:00:00.000000');
INSERT INTO `music_user` VALUES (152, 'cqxoj', 'cqxoj', 'cqxoj@163.com', '2021-10-06 00:00:00.000000');
INSERT INTO `music_user` VALUES (153, 'wjspg', 'wjspg', 'wjspg@163.com', '2021-10-07 00:00:00.000000');
INSERT INTO `music_user` VALUES (154, 'eyktr', 'eyktr', 'eyktr@163.com', '2021-10-08 00:00:00.000000');
INSERT INTO `music_user` VALUES (155, 'rcyg_', 'rcyg_', 'rcyg_@163.com', '2021-10-09 00:00:00.000000');
INSERT INTO `music_user` VALUES (156, 'dfytb', 'dfytb', 'dfytb@163.com', '2021-10-10 00:00:00.000000');
INSERT INTO `music_user` VALUES (157, 'pjuds', 'pjuds', 'pjuds@163.com', '2021-10-11 00:00:00.000000');
INSERT INTO `music_user` VALUES (158, 'droek', 'droek', 'droek@163.com', '2021-10-12 00:00:00.000000');
INSERT INTO `music_user` VALUES (159, 'fqaex', 'fqaex', 'fqaex@163.com', '2021-10-13 00:00:00.000000');
INSERT INTO `music_user` VALUES (160, 'ttwoe', 'ttwoe', 'ttwoe@163.com', '2021-10-14 00:00:00.000000');
INSERT INTO `music_user` VALUES (161, 'xdfon', 'xdfon', 'xdfon@163.com', '2021-10-15 00:00:00.000000');
INSERT INTO `music_user` VALUES (162, 'hujda', 'hujda', 'hujda@163.com', '2021-10-16 00:00:00.000000');
INSERT INTO `music_user` VALUES (163, 'ezshg', 'ezshg', 'ezshg@163.com', '2021-10-17 00:00:00.000000');
INSERT INTO `music_user` VALUES (164, 'bscmv', 'bscmv', 'bscmv@163.com', '2021-10-18 00:00:00.000000');
INSERT INTO `music_user` VALUES (165, 'ezcat', 'ezcat', 'ezcat@163.com', '2021-10-19 00:00:00.000000');
INSERT INTO `music_user` VALUES (166, 'rkjud', 'rkjud', 'rkjud@163.com', '2021-10-20 00:00:00.000000');
INSERT INTO `music_user` VALUES (167, 'ny_nm', 'ny_nm', 'ny_nm@163.com', '2021-10-21 00:00:00.000000');
INSERT INTO `music_user` VALUES (168, 'piuwj', 'piuwj', 'piuwj@163.com', '2021-10-22 00:00:00.000000');
INSERT INTO `music_user` VALUES (169, 'vuxhf', 'vuxhf', 'vuxhf@163.com', '2021-10-23 00:00:00.000000');
INSERT INTO `music_user` VALUES (170, 'ebmh_', 'ebmh_', 'ebmh_@163.com', '2021-10-24 00:00:00.000000');
INSERT INTO `music_user` VALUES (171, 'qases', 'qases', 'qases@163.com', '2021-10-25 00:00:00.000000');
INSERT INTO `music_user` VALUES (172, 'qx_pt', 'qx_pt', 'qx_pt@163.com', '2021-10-26 00:00:00.000000');
INSERT INTO `music_user` VALUES (173, 'nbxnt', 'nbxnt', 'nbxnt@163.com', '2021-10-27 00:00:00.000000');
INSERT INTO `music_user` VALUES (174, 'jcbfy', 'jcbfy', 'jcbfy@163.com', '2021-10-28 00:00:00.000000');
INSERT INTO `music_user` VALUES (175, 'hgzwf', 'hgzwf', 'hgzwf@163.com', '2021-10-29 00:00:00.000000');
INSERT INTO `music_user` VALUES (176, 'csxxu', 'csxxu', 'csxxu@163.com', '2021-10-30 00:00:00.000000');
INSERT INTO `music_user` VALUES (177, 'hg_rq', 'hg_rq', 'hg_rq@163.com', '2021-10-31 00:00:00.000000');
INSERT INTO `music_user` VALUES (178, 'hroua', 'hroua', 'hroua@163.com', '2021-11-01 00:00:00.000000');
INSERT INTO `music_user` VALUES (179, 'svfu_', 'svfu_', 'svfu_@163.com', '2021-11-02 00:00:00.000000');
INSERT INTO `music_user` VALUES (180, 'zhrtr', 'zhrtr', 'zhrtr@163.com', '2021-11-03 00:00:00.000000');
INSERT INTO `music_user` VALUES (181, 'zcqwe', 'zcqwe', 'zcqwe@163.com', '2021-11-04 00:00:00.000000');
INSERT INTO `music_user` VALUES (182, 'q_vjz', 'q_vjz', 'q_vjz@163.com', '2021-11-05 00:00:00.000000');
INSERT INTO `music_user` VALUES (183, 'fykya', 'fykya', 'fykya@163.com', '2021-11-06 00:00:00.000000');
INSERT INTO `music_user` VALUES (184, 'zjuti', 'zjuti', 'zjuti@163.com', '2021-11-07 00:00:00.000000');
INSERT INTO `music_user` VALUES (185, 'gkaom', 'gkaom', 'gkaom@163.com', '2021-11-08 00:00:00.000000');
INSERT INTO `music_user` VALUES (186, 'yrbry', 'yrbry', 'yrbry@163.com', '2021-11-09 00:00:00.000000');
INSERT INTO `music_user` VALUES (187, 'qmbvf', 'qmbvf', 'qmbvf@163.com', '2021-11-10 00:00:00.000000');
INSERT INTO `music_user` VALUES (188, 'dyfxj', 'dyfxj', 'dyfxj@163.com', '2021-11-11 00:00:00.000000');
INSERT INTO `music_user` VALUES (189, 'qgfhy', 'qgfhy', 'qgfhy@163.com', '2021-11-12 00:00:00.000000');
INSERT INTO `music_user` VALUES (190, 'uyhmf', 'uyhmf', 'uyhmf@163.com', '2021-11-13 00:00:00.000000');
INSERT INTO `music_user` VALUES (191, 'gwger', 'gwger', 'gwger@163.com', '2021-11-14 00:00:00.000000');
INSERT INTO `music_user` VALUES (192, 'mtzcd', 'mtzcd', 'mtzcd@163.com', '2021-11-15 00:00:00.000000');
INSERT INTO `music_user` VALUES (193, 'hvnpt', 'hvnpt', 'hvnpt@163.com', '2021-11-16 00:00:00.000000');
INSERT INTO `music_user` VALUES (194, 'ruzjo', 'ruzjo', 'ruzjo@163.com', '2021-11-17 00:00:00.000000');
INSERT INTO `music_user` VALUES (195, 'rid_j', 'rid_j', 'rid_j@163.com', '2021-11-18 00:00:00.000000');
INSERT INTO `music_user` VALUES (196, 'mvzzj', 'mvzzj', 'mvzzj@163.com', '2021-11-19 00:00:00.000000');
INSERT INTO `music_user` VALUES (197, 'xocdu', 'xocdu', 'xocdu@163.com', '2021-11-20 00:00:00.000000');
INSERT INTO `music_user` VALUES (198, 'dwvww', 'dwvww', 'dwvww@163.com', '2021-11-21 00:00:00.000000');
INSERT INTO `music_user` VALUES (199, 'sadss', 'sadss', 'sadss@163.com', '2021-11-22 00:00:00.000000');
INSERT INTO `music_user` VALUES (200, 'd_ryi', 'd_ryi', 'd_ryi@163.com', '2021-11-23 00:00:00.000000');
INSERT INTO `music_user` VALUES (201, 'cjce_', 'cjce_', 'cjce_@163.com', '2021-11-24 00:00:00.000000');
INSERT INTO `music_user` VALUES (202, 'vaygv', 'vaygv', 'vaygv@163.com', '2021-11-25 00:00:00.000000');
INSERT INTO `music_user` VALUES (203, 'xdcpd', 'xdcpd', 'xdcpd@163.com', '2021-11-26 00:00:00.000000');
INSERT INTO `music_user` VALUES (204, 'yhgwk', 'yhgwk', 'yhgwk@163.com', '2021-11-27 00:00:00.000000');
INSERT INTO `music_user` VALUES (205, 'wjwpd', 'wjwpd', 'wjwpd@163.com', '2021-11-28 00:00:00.000000');
INSERT INTO `music_user` VALUES (206, 'nkydb', 'nkydb', 'nkydb@163.com', '2021-11-29 00:00:00.000000');
INSERT INTO `music_user` VALUES (207, 'aqkev', 'aqkev', 'aqkev@163.com', '2021-11-30 00:00:00.000000');
INSERT INTO `music_user` VALUES (208, 'mykwi', 'mykwi', 'mykwi@163.com', '2021-12-01 00:00:00.000000');
INSERT INTO `music_user` VALUES (209, 'wqhfa', 'wqhfa', 'wqhfa@163.com', '2021-12-02 00:00:00.000000');
INSERT INTO `music_user` VALUES (210, 'uzkro', 'uzkro', 'uzkro@163.com', '2021-12-03 00:00:00.000000');
INSERT INTO `music_user` VALUES (211, 'egbpc', 'egbpc', 'egbpc@163.com', '2021-12-04 00:00:00.000000');
INSERT INTO `music_user` VALUES (212, 'ywjkg', 'ywjkg', 'ywjkg@163.com', '2021-12-05 00:00:00.000000');
INSERT INTO `music_user` VALUES (213, 'aktuj', 'aktuj', 'aktuj@163.com', '2021-12-06 00:00:00.000000');
INSERT INTO `music_user` VALUES (214, 'dhqmt', 'dhqmt', 'dhqmt@163.com', '2021-12-07 00:00:00.000000');
INSERT INTO `music_user` VALUES (215, 'bd_af', 'bd_af', 'bd_af@163.com', '2021-12-08 00:00:00.000000');
INSERT INTO `music_user` VALUES (216, 'pxvcx', 'pxvcx', 'pxvcx@163.com', '2021-12-09 00:00:00.000000');
INSERT INTO `music_user` VALUES (217, 'ojsqm', 'ojsqm', 'ojsqm@163.com', '2021-12-10 00:00:00.000000');
INSERT INTO `music_user` VALUES (218, 't_vaj', 't_vaj', 't_vaj@163.com', '2021-12-11 00:00:00.000000');
INSERT INTO `music_user` VALUES (219, '_shcn', '_shcn', '_shcn@163.com', '2021-12-12 00:00:00.000000');
INSERT INTO `music_user` VALUES (220, 'preep', 'preep', 'preep@163.com', '2021-12-13 00:00:00.000000');
INSERT INTO `music_user` VALUES (221, 'g_maj', 'g_maj', 'g_maj@163.com', '2021-12-14 00:00:00.000000');
INSERT INTO `music_user` VALUES (222, 'kasmw', 'kasmw', 'kasmw@163.com', '2021-12-15 00:00:00.000000');
INSERT INTO `music_user` VALUES (223, 'acptu', 'acptu', 'acptu@163.com', '2021-12-16 00:00:00.000000');
INSERT INTO `music_user` VALUES (224, 'dwcvr', 'dwcvr', 'dwcvr@163.com', '2021-12-17 00:00:00.000000');
INSERT INTO `music_user` VALUES (225, 'ueqkj', 'ueqkj', 'ueqkj@163.com', '2021-12-18 00:00:00.000000');
INSERT INTO `music_user` VALUES (226, 'isdbz', 'isdbz', 'isdbz@163.com', '2021-12-19 00:00:00.000000');
INSERT INTO `music_user` VALUES (227, 'puxqk', 'puxqk', 'puxqk@163.com', '2021-12-20 00:00:00.000000');
INSERT INTO `music_user` VALUES (228, 'jciyg', 'jciyg', 'jciyg@163.com', '2021-12-21 00:00:00.000000');
INSERT INTO `music_user` VALUES (229, 'k_oaq', 'k_oaq', 'k_oaq@163.com', '2021-12-22 00:00:00.000000');
INSERT INTO `music_user` VALUES (230, 'kfajf', 'kfajf', 'kfajf@163.com', '2021-12-23 00:00:00.000000');
INSERT INTO `music_user` VALUES (231, 'sd_qv', 'sd_qv', 'sd_qv@163.com', '2021-12-24 00:00:00.000000');
INSERT INTO `music_user` VALUES (232, 'oeu_w', 'oeu_w', 'oeu_w@163.com', '2021-12-25 00:00:00.000000');
INSERT INTO `music_user` VALUES (233, 'ttzqk', 'ttzqk', 'ttzqk@163.com', '2021-12-26 00:00:00.000000');
INSERT INTO `music_user` VALUES (234, 'miniq', 'miniq', 'miniq@163.com', '2021-12-27 00:00:00.000000');
INSERT INTO `music_user` VALUES (235, 'fxtgs', 'fxtgs', 'fxtgs@163.com', '2021-12-28 00:00:00.000000');
INSERT INTO `music_user` VALUES (236, 'rjqrh', 'rjqrh', 'rjqrh@163.com', '2021-12-29 00:00:00.000000');
INSERT INTO `music_user` VALUES (237, 'tbsdr', 'tbsdr', 'tbsdr@163.com', '2021-12-30 00:00:00.000000');
INSERT INTO `music_user` VALUES (238, 'kiek_', 'kiek_', 'kiek_@163.com', '2021-12-31 00:00:00.000000');
INSERT INTO `music_user` VALUES (239, 'ekaiw', 'ekaiw', 'ekaiw@163.com', '2022-01-01 00:00:00.000000');
INSERT INTO `music_user` VALUES (240, 'npn_v', 'npn_v', 'npn_v@163.com', '2022-01-02 00:00:00.000000');
INSERT INTO `music_user` VALUES (241, 'cuexz', 'cuexz', 'cuexz@163.com', '2022-01-03 00:00:00.000000');
INSERT INTO `music_user` VALUES (242, 'cbhub', 'cbhub', 'cbhub@163.com', '2022-01-04 00:00:00.000000');
INSERT INTO `music_user` VALUES (243, 'bpeym', 'bpeym', 'bpeym@163.com', '2022-01-05 00:00:00.000000');
INSERT INTO `music_user` VALUES (244, 'dqgzq', 'dqgzq', 'dqgzq@163.com', '2022-01-06 00:00:00.000000');
INSERT INTO `music_user` VALUES (245, 'wvtzv', 'wvtzv', 'wvtzv@163.com', '2022-01-07 00:00:00.000000');
INSERT INTO `music_user` VALUES (246, 'ebzn_', 'ebzn_', 'ebzn_@163.com', '2022-01-08 00:00:00.000000');
INSERT INTO `music_user` VALUES (247, 'expvh', 'expvh', 'expvh@163.com', '2022-01-09 00:00:00.000000');
INSERT INTO `music_user` VALUES (248, 'ggjia', 'ggjia', 'ggjia@163.com', '2022-01-10 00:00:00.000000');
INSERT INTO `music_user` VALUES (249, 'mvqpm', 'mvqpm', 'mvqpm@163.com', '2022-01-11 00:00:00.000000');
INSERT INTO `music_user` VALUES (250, 'xtpmb', 'xtpmb', 'xtpmb@163.com', '2022-01-12 00:00:00.000000');
INSERT INTO `music_user` VALUES (251, '_otwp', '_otwp', '_otwp@163.com', '2022-01-13 00:00:00.000000');
INSERT INTO `music_user` VALUES (252, 'vfwir', 'vfwir', 'vfwir@163.com', '2022-01-14 00:00:00.000000');
INSERT INTO `music_user` VALUES (253, 'rngjc', 'rngjc', 'rngjc@163.com', '2022-01-15 00:00:00.000000');
INSERT INTO `music_user` VALUES (254, 'ekevm', 'ekevm', 'ekevm@163.com', '2022-01-16 00:00:00.000000');
INSERT INTO `music_user` VALUES (255, 'qenaw', 'qenaw', 'qenaw@163.com', '2022-01-17 00:00:00.000000');
INSERT INTO `music_user` VALUES (256, 'qggkk', 'qggkk', 'qggkk@163.com', '2022-01-18 00:00:00.000000');
INSERT INTO `music_user` VALUES (257, 'pyyjo', 'pyyjo', 'pyyjo@163.com', '2022-01-19 00:00:00.000000');
INSERT INTO `music_user` VALUES (258, 'wbupe', 'wbupe', 'wbupe@163.com', '2022-01-20 00:00:00.000000');
INSERT INTO `music_user` VALUES (259, 'eegbq', 'eegbq', 'eegbq@163.com', '2022-01-21 00:00:00.000000');
INSERT INTO `music_user` VALUES (260, 'gmrb_', 'gmrb_', 'gmrb_@163.com', '2022-01-22 00:00:00.000000');
INSERT INTO `music_user` VALUES (261, 'tfxrr', 'tfxrr', 'tfxrr@163.com', '2022-01-23 00:00:00.000000');
INSERT INTO `music_user` VALUES (262, 'eujzo', 'eujzo', 'eujzo@163.com', '2022-01-24 00:00:00.000000');
INSERT INTO `music_user` VALUES (263, 'iswnq', 'iswnq', 'iswnq@163.com', '2022-01-25 00:00:00.000000');
INSERT INTO `music_user` VALUES (264, 'ikzdn', 'ikzdn', 'ikzdn@163.com', '2022-01-26 00:00:00.000000');
INSERT INTO `music_user` VALUES (265, 'awhen', 'awhen', 'awhen@163.com', '2022-01-27 00:00:00.000000');
INSERT INTO `music_user` VALUES (266, 'ebmmk', 'ebmmk', 'ebmmk@163.com', '2022-01-28 00:00:00.000000');
INSERT INTO `music_user` VALUES (267, 'rn_mn', 'rn_mn', 'rn_mn@163.com', '2022-01-29 00:00:00.000000');
INSERT INTO `music_user` VALUES (268, 'em_xz', 'em_xz', 'em_xz@163.com', '2022-01-30 00:00:00.000000');
INSERT INTO `music_user` VALUES (269, 'cbkdf', 'cbkdf', 'cbkdf@163.com', '2022-01-31 00:00:00.000000');
INSERT INTO `music_user` VALUES (270, 'afzca', 'afzca', 'afzca@163.com', '2022-02-01 00:00:00.000000');
INSERT INTO `music_user` VALUES (271, 'gvkqr', 'gvkqr', 'gvkqr@163.com', '2022-02-02 00:00:00.000000');
INSERT INTO `music_user` VALUES (272, 'ibuc_', 'ibuc_', 'ibuc_@163.com', '2022-02-03 00:00:00.000000');
INSERT INTO `music_user` VALUES (273, 'kwtjd', 'kwtjd', 'kwtjd@163.com', '2022-02-04 00:00:00.000000');
INSERT INTO `music_user` VALUES (274, 'yhkun', 'yhkun', 'yhkun@163.com', '2022-02-05 00:00:00.000000');
INSERT INTO `music_user` VALUES (275, 'cogyb', 'cogyb', 'cogyb@163.com', '2022-02-06 00:00:00.000000');
INSERT INTO `music_user` VALUES (276, 'yp_vu', 'yp_vu', 'yp_vu@163.com', '2022-02-07 00:00:00.000000');
INSERT INTO `music_user` VALUES (277, 'abogb', 'abogb', 'abogb@163.com', '2022-02-08 00:00:00.000000');
INSERT INTO `music_user` VALUES (278, 'stgto', 'stgto', 'stgto@163.com', '2022-02-09 00:00:00.000000');
INSERT INTO `music_user` VALUES (279, 'pwkea', 'pwkea', 'pwkea@163.com', '2022-02-10 00:00:00.000000');
INSERT INTO `music_user` VALUES (280, 'ivibc', 'ivibc', 'ivibc@163.com', '2022-02-11 00:00:00.000000');
INSERT INTO `music_user` VALUES (281, 'vofth', 'vofth', 'vofth@163.com', '2022-02-12 00:00:00.000000');
INSERT INTO `music_user` VALUES (282, 'j_dtf', 'j_dtf', 'j_dtf@163.com', '2022-02-13 00:00:00.000000');
INSERT INTO `music_user` VALUES (283, 'gmt__', 'gmt__', 'gmt__@163.com', '2022-02-14 00:00:00.000000');
INSERT INTO `music_user` VALUES (284, 'fgqiy', 'fgqiy', 'fgqiy@163.com', '2022-02-15 00:00:00.000000');
INSERT INTO `music_user` VALUES (285, 'eaozb', 'eaozb', 'eaozb@163.com', '2022-02-16 00:00:00.000000');
INSERT INTO `music_user` VALUES (286, 'bxbfe', 'bxbfe', 'bxbfe@163.com', '2022-02-17 00:00:00.000000');
INSERT INTO `music_user` VALUES (287, '_myux', '_myux', '_myux@163.com', '2022-02-18 00:00:00.000000');
INSERT INTO `music_user` VALUES (288, 'ppzec', 'ppzec', 'ppzec@163.com', '2022-02-19 00:00:00.000000');
INSERT INTO `music_user` VALUES (289, 'ovzds', 'ovzds', 'ovzds@163.com', '2022-02-20 00:00:00.000000');
INSERT INTO `music_user` VALUES (290, 'mkenb', 'mkenb', 'mkenb@163.com', '2022-02-21 00:00:00.000000');
INSERT INTO `music_user` VALUES (291, 'qcbs_', 'qcbs_', 'qcbs_@163.com', '2022-02-22 00:00:00.000000');
INSERT INTO `music_user` VALUES (292, 'iwbg_', 'iwbg_', 'iwbg_@163.com', '2022-02-23 00:00:00.000000');
INSERT INTO `music_user` VALUES (293, 'vtpbi', 'vtpbi', 'vtpbi@163.com', '2022-02-24 00:00:00.000000');
INSERT INTO `music_user` VALUES (294, 'xwiiq', 'xwiiq', 'xwiiq@163.com', '2022-02-25 00:00:00.000000');
INSERT INTO `music_user` VALUES (295, 'cozdh', 'cozdh', 'cozdh@163.com', '2022-02-26 00:00:00.000000');
INSERT INTO `music_user` VALUES (296, 'wnxpn', 'wnxpn', 'wnxpn@163.com', '2022-02-27 00:00:00.000000');
INSERT INTO `music_user` VALUES (297, 'pk_uu', 'pk_uu', 'pk_uu@163.com', '2022-02-28 00:00:00.000000');
INSERT INTO `music_user` VALUES (298, 'hnpbb', 'hnpbb', 'hnpbb@163.com', '2022-03-01 00:00:00.000000');
INSERT INTO `music_user` VALUES (299, 'bojqh', 'bojqh', 'bojqh@163.com', '2022-03-02 00:00:00.000000');
INSERT INTO `music_user` VALUES (300, 'tvcds', 'tvcds', 'tvcds@163.com', '2022-03-03 00:00:00.000000');
INSERT INTO `music_user` VALUES (301, 'eshnf', 'eshnf', 'eshnf@163.com', '2022-03-04 00:00:00.000000');
INSERT INTO `music_user` VALUES (302, 'xkihh', 'xkihh', 'xkihh@163.com', '2022-03-05 00:00:00.000000');
INSERT INTO `music_user` VALUES (303, 'oisqe', 'oisqe', 'oisqe@163.com', '2022-03-06 00:00:00.000000');
INSERT INTO `music_user` VALUES (304, 'hagpu', 'hagpu', 'hagpu@163.com', '2022-03-07 00:00:00.000000');
INSERT INTO `music_user` VALUES (305, 'oudvw', 'oudvw', 'oudvw@163.com', '2022-03-08 00:00:00.000000');
INSERT INTO `music_user` VALUES (306, 'fwrqv', 'fwrqv', 'fwrqv@163.com', '2022-03-09 00:00:00.000000');
INSERT INTO `music_user` VALUES (307, 'fkwfq', 'fkwfq', 'fkwfq@163.com', '2022-03-10 00:00:00.000000');
INSERT INTO `music_user` VALUES (308, 'swxiv', 'swxiv', 'swxiv@163.com', '2022-03-11 00:00:00.000000');
INSERT INTO `music_user` VALUES (309, 'qgnpr', 'qgnpr', 'qgnpr@163.com', '2022-03-12 00:00:00.000000');
INSERT INTO `music_user` VALUES (310, 'ifdpu', 'ifdpu', 'ifdpu@163.com', '2022-03-13 00:00:00.000000');
INSERT INTO `music_user` VALUES (311, 'xqrpu', 'xqrpu', 'xqrpu@163.com', '2022-03-14 00:00:00.000000');
INSERT INTO `music_user` VALUES (312, 'xbezg', 'xbezg', 'xbezg@163.com', '2022-03-15 00:00:00.000000');
INSERT INTO `music_user` VALUES (313, 'bqgou', 'bqgou', 'bqgou@163.com', '2022-03-16 00:00:00.000000');
INSERT INTO `music_user` VALUES (314, 'qeeuv', 'qeeuv', 'qeeuv@163.com', '2022-03-17 00:00:00.000000');
INSERT INTO `music_user` VALUES (315, 'sybqw', 'sybqw', 'sybqw@163.com', '2022-03-18 00:00:00.000000');
INSERT INTO `music_user` VALUES (316, 'rosfp', 'rosfp', 'rosfp@163.com', '2022-03-19 00:00:00.000000');
INSERT INTO `music_user` VALUES (317, 'oupac', 'oupac', 'oupac@163.com', '2022-03-20 00:00:00.000000');
INSERT INTO `music_user` VALUES (318, 'opcnz', 'opcnz', 'opcnz@163.com', '2022-03-21 00:00:00.000000');
INSERT INTO `music_user` VALUES (319, 'nyoeu', 'nyoeu', 'nyoeu@163.com', '2022-03-22 00:00:00.000000');
INSERT INTO `music_user` VALUES (320, 'nioje', 'nioje', 'nioje@163.com', '2022-03-23 00:00:00.000000');
INSERT INTO `music_user` VALUES (321, 'ejnoa', 'ejnoa', 'ejnoa@163.com', '2022-03-24 00:00:00.000000');
INSERT INTO `music_user` VALUES (322, 'sxqdu', 'sxqdu', 'sxqdu@163.com', '2022-03-25 00:00:00.000000');
INSERT INTO `music_user` VALUES (323, 'qnpks', 'qnpks', 'qnpks@163.com', '2022-03-26 00:00:00.000000');
INSERT INTO `music_user` VALUES (324, 'zdixw', 'zdixw', 'zdixw@163.com', '2022-03-27 00:00:00.000000');
INSERT INTO `music_user` VALUES (325, 'dedhu', 'dedhu', 'dedhu@163.com', '2022-03-28 00:00:00.000000');
INSERT INTO `music_user` VALUES (326, 'kzvpt', 'kzvpt', 'kzvpt@163.com', '2022-03-29 00:00:00.000000');
INSERT INTO `music_user` VALUES (327, 'jhynn', 'jhynn', 'jhynn@163.com', '2022-03-30 00:00:00.000000');
INSERT INTO `music_user` VALUES (328, 'bssrr', 'bssrr', 'bssrr@163.com', '2022-03-31 00:00:00.000000');
INSERT INTO `music_user` VALUES (329, 'iwgo_', 'iwgo_', 'iwgo_@163.com', '2022-04-01 00:00:00.000000');
INSERT INTO `music_user` VALUES (330, 'vi_rx', 'vi_rx', 'vi_rx@163.com', '2022-04-02 00:00:00.000000');
INSERT INTO `music_user` VALUES (331, 'ipbku', 'ipbku', 'ipbku@163.com', '2022-04-03 00:00:00.000000');
INSERT INTO `music_user` VALUES (332, 'jbppb', 'jbppb', 'jbppb@163.com', '2022-04-04 00:00:00.000000');
INSERT INTO `music_user` VALUES (333, 'pehja', 'pehja', 'pehja@163.com', '2022-04-05 00:00:00.000000');
INSERT INTO `music_user` VALUES (334, 'kzvuq', 'kzvuq', 'kzvuq@163.com', '2022-04-06 00:00:00.000000');
INSERT INTO `music_user` VALUES (335, 'yuwc_', 'yuwc_', 'yuwc_@163.com', '2022-04-07 00:00:00.000000');
INSERT INTO `music_user` VALUES (336, '_hnby', '_hnby', '_hnby@163.com', '2022-04-08 00:00:00.000000');
INSERT INTO `music_user` VALUES (337, 'uofci', 'uofci', 'uofci@163.com', '2022-04-09 00:00:00.000000');
INSERT INTO `music_user` VALUES (338, 'putfz', 'putfz', 'putfz@163.com', '2022-04-10 00:00:00.000000');
INSERT INTO `music_user` VALUES (339, 'bwsxh', 'bwsxh', 'bwsxh@163.com', '2022-04-11 00:00:00.000000');
INSERT INTO `music_user` VALUES (340, 'eqjpd', 'eqjpd', 'eqjpd@163.com', '2022-04-12 00:00:00.000000');
INSERT INTO `music_user` VALUES (341, 'inqvm', 'inqvm', 'inqvm@163.com', '2022-04-13 00:00:00.000000');
INSERT INTO `music_user` VALUES (342, 'musbx', 'musbx', 'musbx@163.com', '2022-04-14 00:00:00.000000');
INSERT INTO `music_user` VALUES (343, 'easyk', 'easyk', 'easyk@163.com', '2022-04-15 00:00:00.000000');
INSERT INTO `music_user` VALUES (344, 'kjbmq', 'kjbmq', 'kjbmq@163.com', '2022-04-16 00:00:00.000000');
INSERT INTO `music_user` VALUES (345, 'yvqpa', 'yvqpa', 'yvqpa@163.com', '2022-04-17 00:00:00.000000');
INSERT INTO `music_user` VALUES (346, 'pizvq', 'pizvq', 'pizvq@163.com', '2022-04-18 00:00:00.000000');
INSERT INTO `music_user` VALUES (347, 'igydb', 'igydb', 'igydb@163.com', '2022-04-19 00:00:00.000000');
INSERT INTO `music_user` VALUES (348, 'm_urf', 'm_urf', 'm_urf@163.com', '2022-04-20 00:00:00.000000');
INSERT INTO `music_user` VALUES (349, 'ttiux', 'ttiux', 'ttiux@163.com', '2022-04-21 00:00:00.000000');
INSERT INTO `music_user` VALUES (350, '_mzj_', '_mzj_', '_mzj_@163.com', '2022-04-22 00:00:00.000000');
INSERT INTO `music_user` VALUES (351, 'hnfyv', 'hnfyv', 'hnfyv@163.com', '2022-04-23 00:00:00.000000');
INSERT INTO `music_user` VALUES (352, 'ccxeu', 'ccxeu', 'ccxeu@163.com', '2022-04-24 00:00:00.000000');
INSERT INTO `music_user` VALUES (353, 'epsqv', 'epsqv', 'epsqv@163.com', '2022-04-25 00:00:00.000000');
INSERT INTO `music_user` VALUES (354, 'df_bn', 'df_bn', 'df_bn@163.com', '2022-04-26 00:00:00.000000');
INSERT INTO `music_user` VALUES (355, 'i_itf', 'i_itf', 'i_itf@163.com', '2022-04-27 00:00:00.000000');
INSERT INTO `music_user` VALUES (356, 'jxqwp', 'jxqwp', 'jxqwp@163.com', '2022-04-28 00:00:00.000000');
INSERT INTO `music_user` VALUES (357, 'eaoqw', 'eaoqw', 'eaoqw@163.com', '2022-04-29 00:00:00.000000');
INSERT INTO `music_user` VALUES (358, 'atxdr', 'atxdr', 'atxdr@163.com', '2022-04-30 00:00:00.000000');
INSERT INTO `music_user` VALUES (359, 'xgmec', 'xgmec', 'xgmec@163.com', '2022-05-01 00:00:00.000000');
INSERT INTO `music_user` VALUES (360, 'rqqdx', 'rqqdx', 'rqqdx@163.com', '2022-05-02 00:00:00.000000');
INSERT INTO `music_user` VALUES (361, 'qfxju', 'qfxju', 'qfxju@163.com', '2022-05-03 00:00:00.000000');
INSERT INTO `music_user` VALUES (362, 'dhjqx', 'dhjqx', 'dhjqx@163.com', '2022-05-04 00:00:00.000000');
INSERT INTO `music_user` VALUES (363, 'kyeib', 'kyeib', 'kyeib@163.com', '2022-05-05 00:00:00.000000');
INSERT INTO `music_user` VALUES (364, 'ymaxi', 'ymaxi', 'ymaxi@163.com', '2022-05-06 00:00:00.000000');
INSERT INTO `music_user` VALUES (365, 'zbfii', 'zbfii', 'zbfii@163.com', '2022-05-07 00:00:00.000000');
INSERT INTO `music_user` VALUES (366, 'ygyaz', 'ygyaz', 'ygyaz@163.com', '2022-05-08 00:00:00.000000');
INSERT INTO `music_user` VALUES (367, 'riguq', 'riguq', 'riguq@163.com', '2022-05-09 00:00:00.000000');
INSERT INTO `music_user` VALUES (368, 'qz_fu', 'qz_fu', 'qz_fu@163.com', '2022-05-10 00:00:00.000000');
INSERT INTO `music_user` VALUES (369, 'cqibf', 'cqibf', 'cqibf@163.com', '2022-05-11 00:00:00.000000');
INSERT INTO `music_user` VALUES (370, 'sgwwm', 'sgwwm', 'sgwwm@163.com', '2022-05-12 00:00:00.000000');
INSERT INTO `music_user` VALUES (371, 'vrzrb', 'vrzrb', 'vrzrb@163.com', '2022-05-13 00:00:00.000000');
INSERT INTO `music_user` VALUES (372, 'tuxgr', 'tuxgr', 'tuxgr@163.com', '2022-05-14 00:00:00.000000');
INSERT INTO `music_user` VALUES (373, 'muhky', 'muhky', 'muhky@163.com', '2022-05-15 00:00:00.000000');
INSERT INTO `music_user` VALUES (374, 'aqonn', 'aqonn', 'aqonn@163.com', '2022-05-16 00:00:00.000000');
INSERT INTO `music_user` VALUES (375, 'icdtd', 'icdtd', 'icdtd@163.com', '2022-05-17 00:00:00.000000');
INSERT INTO `music_user` VALUES (376, 'kwvxx', 'kwvxx', 'kwvxx@163.com', '2022-05-18 00:00:00.000000');
INSERT INTO `music_user` VALUES (377, 'zqhpj', 'zqhpj', 'zqhpj@163.com', '2022-05-19 00:00:00.000000');
INSERT INTO `music_user` VALUES (378, 'iuewp', 'iuewp', 'iuewp@163.com', '2022-05-20 00:00:00.000000');
INSERT INTO `music_user` VALUES (379, 'nxxei', 'nxxei', 'nxxei@163.com', '2022-05-21 00:00:00.000000');
INSERT INTO `music_user` VALUES (380, '_e_we', '_e_we', '_e_we@163.com', '2022-05-22 00:00:00.000000');
INSERT INTO `music_user` VALUES (381, 'ziiwp', 'ziiwp', 'ziiwp@163.com', '2022-05-23 00:00:00.000000');
INSERT INTO `music_user` VALUES (382, 'qcjix', 'qcjix', 'qcjix@163.com', '2022-05-24 00:00:00.000000');
INSERT INTO `music_user` VALUES (1796, '1', '1', '1@163.com', '2021-05-07 12:12:37.270469');
INSERT INTO `music_user` VALUES (1797, '2', '2', '2@163.com', '2021-05-07 12:12:41.054592');
INSERT INTO `music_user` VALUES (1798, '3', '3', '3@163.com', '2021-05-07 12:12:44.361121');
INSERT INTO `music_user` VALUES (1799, '4', '4', '4@qq.com', '2021-05-10 04:56:36.844936');
INSERT INTO `music_user` VALUES (1800, '5', '5', '5@qq.com', '2021-05-10 04:56:40.162418');
INSERT INTO `music_user` VALUES (1801, '6', '6', '6@qq.com', '2021-05-10 04:56:43.054905');
INSERT INTO `music_user` VALUES (1802, '7', '7', '7@qq.com', '2021-05-10 04:56:46.804833');
INSERT INTO `music_user` VALUES (1803, '8', '8', '8@qq.com', '2021-05-10 04:56:49.998316');
INSERT INTO `music_user` VALUES (1804, '9', '9', '9@qq.com', '2021-05-10 04:56:52.830207');
INSERT INTO `music_user` VALUES (1805, '10', '10', '10@qq.com', '2021-05-10 04:56:55.935792');
INSERT INTO `music_user` VALUES (1806, '11', '11', '11@qq.com', '2021-05-10 04:56:59.657542');
INSERT INTO `music_user` VALUES (1807, 'admins', 'admins', 'admins@qq.com', '2021-05-14 15:55:16.852713');
INSERT INTO `music_user` VALUES (1808, '6666666', '6666666', '6666666@qq.com', '2021-05-26 09:30:19.578938');
INSERT INTO `music_user` VALUES (1809, 'test0001', 'test0001', '123456@qq.com', '2022-03-20 15:33:34.771842');
INSERT INTO `music_user` VALUES (1810, 'test0002', 'test0002', '123456@qq.com', '2022-03-20 15:45:03.850040');
INSERT INTO `music_user` VALUES (1811, 'test0003', 'test0003', '123456@qq.com', '2022-03-20 15:47:29.058050');

-- ----------------------------
-- Table structure for music_usertagprefer
-- ----------------------------
DROP TABLE IF EXISTS `music_usertagprefer`;
CREATE TABLE `music_usertagprefer`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `score` double NOT NULL,
  `tag_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `music_usertagprefer_tag_id_fd71f19f_fk_music_tags_id`(`tag_id`) USING BTREE,
  INDEX `music_usertagprefer_user_id_90db7c39_fk_music_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `music_usertagprefer_tag_id_fd71f19f_fk_music_tags_id` FOREIGN KEY (`tag_id`) REFERENCES `music_tags` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `music_usertagprefer_user_id_90db7c39_fk_music_user_id` FOREIGN KEY (`user_id`) REFERENCES `music_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music_usertagprefer
-- ----------------------------
INSERT INTO `music_usertagprefer` VALUES (1, 5, 1, 1807);
INSERT INTO `music_usertagprefer` VALUES (2, 3, 2, 84);
INSERT INTO `music_usertagprefer` VALUES (3, 3, 3, 85);
INSERT INTO `music_usertagprefer` VALUES (4, 4, 4, 86);
INSERT INTO `music_usertagprefer` VALUES (5, 3, 5, 87);
INSERT INTO `music_usertagprefer` VALUES (6, 4, 6, 88);
INSERT INTO `music_usertagprefer` VALUES (7, 4, 7, 89);
INSERT INTO `music_usertagprefer` VALUES (8, 4, 8, 1807);
INSERT INTO `music_usertagprefer` VALUES (9, 5, 1, 84);
INSERT INTO `music_usertagprefer` VALUES (10, 3, 2, 85);
INSERT INTO `music_usertagprefer` VALUES (11, 5, 3, 86);
INSERT INTO `music_usertagprefer` VALUES (12, 5, 4, 87);
INSERT INTO `music_usertagprefer` VALUES (13, 5, 5, 88);
INSERT INTO `music_usertagprefer` VALUES (14, 3, 6, 89);
INSERT INTO `music_usertagprefer` VALUES (15, 5, 7, 90);
INSERT INTO `music_usertagprefer` VALUES (16, 5, 8, 91);
INSERT INTO `music_usertagprefer` VALUES (17, 5, 1, 92);
INSERT INTO `music_usertagprefer` VALUES (18, 5, 2, 93);
INSERT INTO `music_usertagprefer` VALUES (19, 5, 3, 94);
INSERT INTO `music_usertagprefer` VALUES (20, 5, 4, 95);
INSERT INTO `music_usertagprefer` VALUES (21, 5, 5, 96);
INSERT INTO `music_usertagprefer` VALUES (22, 5, 6, 97);
INSERT INTO `music_usertagprefer` VALUES (23, 3, 7, 83);
INSERT INTO `music_usertagprefer` VALUES (24, 5, 4, 1807);
INSERT INTO `music_usertagprefer` VALUES (25, 5, 1, 85);
INSERT INTO `music_usertagprefer` VALUES (26, 5, 2, 86);
INSERT INTO `music_usertagprefer` VALUES (27, 5, 3, 87);
INSERT INTO `music_usertagprefer` VALUES (28, 5, 4, 88);
INSERT INTO `music_usertagprefer` VALUES (29, 5, 5, 89);
INSERT INTO `music_usertagprefer` VALUES (30, 3, 6, 90);
INSERT INTO `music_usertagprefer` VALUES (31, 3, 7, 91);
INSERT INTO `music_usertagprefer` VALUES (32, 5, 8, 92);
INSERT INTO `music_usertagprefer` VALUES (33, 5, 1, 93);
INSERT INTO `music_usertagprefer` VALUES (34, 5, 2, 94);
INSERT INTO `music_usertagprefer` VALUES (35, 5, 3, 1807);
INSERT INTO `music_usertagprefer` VALUES (36, 5, 4, 96);
INSERT INTO `music_usertagprefer` VALUES (37, 3, 5, 97);
INSERT INTO `music_usertagprefer` VALUES (38, 3, 6, 98);
INSERT INTO `music_usertagprefer` VALUES (46, 3, 1, 1807);

SET FOREIGN_KEY_CHECKS = 1;
