/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : common_db

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 09/10/2023 22:01:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for api-platform_info
-- ----------------------------
DROP TABLE IF EXISTS `api-platform_info`;
CREATE TABLE `api-platform_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '接口名称',
  `url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '接口地址',
  `type` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求类型',
  `requestHeader` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '请求头',
  `responseHeader` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '响应头',
  `status` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '接口状态 ',
  `createTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'api接口信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of api-platform_info
-- ----------------------------
INSERT INTO `api-platform_info` VALUES (1, 'imrPa', 'http://lorempixel.com/300/400/', 'post', 'PM-1', 'PM-1', '3', '2018-04-03 22:13:53', '2018-04-01 15:25:00');
INSERT INTO `api-platform_info` VALUES (2, 'wRILh', 'http://lorempixel.com/300/400/', 'post', 'PM-2', 'PM-2', '1', '2018-04-01 01:34:08', '2018-04-01 02:17:29');
INSERT INTO `api-platform_info` VALUES (3, 'IqEdG', 'http://lorempixel.com/300/400/', 'delete', 'PM-3', 'PM-3', '3', '2018-04-02 13:18:29', '2018-04-01 11:09:00');
INSERT INTO `api-platform_info` VALUES (4, 'P8opC', 'http://lorempixel.com/300/400/', 'get', 'PM-4', 'PM-4', '0', '2018-04-02 13:03:53', '2018-04-03 19:03:28');
INSERT INTO `api-platform_info` VALUES (5, 'usLSw', 'http://lorempixel.com/300/400/', 'delete', 'PM-5', 'PM-5', '3', '2018-04-01 00:40:40', '2018-04-02 19:17:56');
INSERT INTO `api-platform_info` VALUES (6, 'uLYVk', 'http://lorempixel.com/300/400/', 'delete', 'PM-6', 'PM-6', '3', '2018-04-02 05:46:16', '2018-04-03 06:28:43');
INSERT INTO `api-platform_info` VALUES (7, 'fB8VB', 'http://lorempixel.com/300/400/', 'get', 'PM-7', 'PM-7', '1', '2018-04-02 08:51:16', '2018-04-03 21:45:29');
INSERT INTO `api-platform_info` VALUES (8, 'ZY0iQ', 'http://lorempixel.com/300/400/', 'put', 'PM-8', 'PM-8', '1', '2018-04-03 05:08:53', '2018-04-02 14:26:06');
INSERT INTO `api-platform_info` VALUES (9, 'vYSsw', 'http://lorempixel.com/300/400/', 'post', 'PM-9', 'PM-9', '3', '2018-04-03 18:39:01', '2018-04-03 15:50:44');
INSERT INTO `api-platform_info` VALUES (10, '8L2As', 'http://lorempixel.com/300/400/', 'post', 'PM-10', 'PM-10', '0', '2018-04-03 16:09:59', '2018-04-02 16:45:28');
INSERT INTO `api-platform_info` VALUES (11, '8eFDZ', 'http://lorempixel.com/300/400/', 'post', 'PM-11', 'PM-11', '3', '2018-04-03 17:56:06', '2018-04-01 07:58:39');
INSERT INTO `api-platform_info` VALUES (12, 'kMdmk', 'http://lorempixel.com/300/400/', 'delete', 'PM-12', 'PM-12', '1', '2018-04-03 13:09:04', '2018-04-01 12:41:54');
INSERT INTO `api-platform_info` VALUES (13, 'yJJz3', 'http://lorempixel.com/300/400/', 'delete', 'PM-13', 'PM-13', '0', '2018-04-02 05:23:13', '2018-04-01 23:19:08');
INSERT INTO `api-platform_info` VALUES (14, 'rdIZZ', 'http://lorempixel.com/300/400/', 'get', 'PM-14', 'PM-14', '1', '2018-04-03 02:41:45', '2018-04-02 20:42:21');
INSERT INTO `api-platform_info` VALUES (15, 'LyzOm', 'http://lorempixel.com/300/400/', 'get', 'PM-15', 'PM-15', '2', '2018-04-03 02:29:50', '2018-04-02 20:37:22');
INSERT INTO `api-platform_info` VALUES (16, 'n9MCD', 'http://lorempixel.com/300/400/', 'post', 'PM-16', 'PM-16', '2', '2018-04-02 01:37:41', '2018-04-01 21:54:38');
INSERT INTO `api-platform_info` VALUES (17, '1J1HH', 'http://lorempixel.com/300/400/', 'post', 'PM-17', 'PM-17', '1', '2018-04-01 17:24:40', '2018-04-01 04:16:44');
INSERT INTO `api-platform_info` VALUES (18, 'X5P4c', 'http://lorempixel.com/300/400/', 'put', 'PM-18', 'PM-18', '3', '2018-04-02 17:20:35', '2018-04-03 05:13:39');
INSERT INTO `api-platform_info` VALUES (19, '9tqrF', 'http://lorempixel.com/300/400/', 'post', 'PM-19', 'PM-19', '3', '2018-04-03 00:46:08', '2018-04-01 12:42:52');
INSERT INTO `api-platform_info` VALUES (20, 'wXAXh', 'http://lorempixel.com/300/400/', 'post', 'PM-20', 'PM-20', '1', '2018-04-01 10:18:16', '2018-04-01 00:28:07');
INSERT INTO `api-platform_info` VALUES (21, '9Atlm', 'http://lorempixel.com/300/400/', 'post', 'PM-21', 'PM-21', '3', '2018-04-03 06:45:10', '2018-04-01 23:15:55');
INSERT INTO `api-platform_info` VALUES (22, 'ciaKR', 'http://lorempixel.com/300/400/', 'delete', 'PM-22', 'PM-22', '1', '2018-04-01 23:36:00', '2018-04-03 20:26:36');
INSERT INTO `api-platform_info` VALUES (23, 'XdG6m', 'http://lorempixel.com/300/400/', 'put', 'PM-23', 'PM-23', '2', '2018-04-01 04:03:45', '2018-04-02 11:17:03');
INSERT INTO `api-platform_info` VALUES (24, 'nsg72', 'http://lorempixel.com/300/400/', 'get', 'PM-24', 'PM-24', '3', '2018-04-03 00:16:33', '2018-04-02 16:03:25');
INSERT INTO `api-platform_info` VALUES (25, 'NLj0p', 'http://lorempixel.com/300/400/', 'delete', 'PM-25', 'PM-25', '3', '2018-04-03 07:54:33', '2018-04-02 09:10:19');
INSERT INTO `api-platform_info` VALUES (26, 'iBELb', 'http://lorempixel.com/300/400/', 'delete', 'PM-26', 'PM-26', '3', '2018-04-03 04:16:17', '2018-04-03 02:12:18');
INSERT INTO `api-platform_info` VALUES (27, 'UQJh5', 'http://lorempixel.com/300/400/', 'get', 'PM-27', 'PM-27', '3', '2018-04-01 21:00:45', '2018-04-01 04:40:26');
INSERT INTO `api-platform_info` VALUES (28, 'LonvD', 'http://lorempixel.com/300/400/', 'post', 'PM-28', 'PM-28', '0', '2018-04-02 23:26:26', '2018-04-02 15:22:05');
INSERT INTO `api-platform_info` VALUES (29, '17ohP', 'http://lorempixel.com/300/400/', 'get', 'PM-29', 'PM-29', '0', '2018-04-02 05:23:46', '2018-04-01 22:57:58');
INSERT INTO `api-platform_info` VALUES (30, 'CBxQY', 'http://lorempixel.com/300/400/', 'get', 'PM-30', 'PM-30', '1', '2018-04-01 13:59:46', '2018-04-01 18:01:33');
INSERT INTO `api-platform_info` VALUES (31, 'I4VXv', 'http://lorempixel.com/300/400/', 'delete', 'PM-31', 'PM-31', '2', '2018-04-01 14:09:08', '2018-04-03 20:11:13');
INSERT INTO `api-platform_info` VALUES (32, 'b9d5H', 'http://lorempixel.com/300/400/', 'post', 'PM-32', 'PM-32', '0', '2018-04-02 13:32:12', '2018-04-01 06:24:02');
INSERT INTO `api-platform_info` VALUES (33, 'kN5kG', 'http://lorempixel.com/300/400/', 'post', 'PM-33', 'PM-33', '0', '2018-04-02 13:37:42', '2018-04-01 09:27:28');
INSERT INTO `api-platform_info` VALUES (34, 'zm23Y', 'http://lorempixel.com/300/400/', 'delete', 'PM-34', 'PM-34', '1', '2018-04-03 22:48:44', '2018-04-01 12:16:48');
INSERT INTO `api-platform_info` VALUES (35, 'zo4yS', 'http://lorempixel.com/300/400/', 'put', 'PM-35', 'PM-35', '1', '2018-04-01 03:32:21', '2018-04-02 22:31:57');
INSERT INTO `api-platform_info` VALUES (36, 'd7inp', 'http://lorempixel.com/300/400/', 'get', 'PM-36', 'PM-36', '0', '2018-04-03 21:56:42', '2018-04-03 06:29:01');
INSERT INTO `api-platform_info` VALUES (37, 'Kmfrj', 'http://lorempixel.com/300/400/', 'post', 'PM-37', 'PM-37', '1', '2018-04-01 02:12:55', '2018-04-03 23:01:42');
INSERT INTO `api-platform_info` VALUES (38, 'tMkVn', 'http://lorempixel.com/300/400/', 'post', 'PM-38', 'PM-38', '2', '2018-04-03 06:49:34', '2018-04-01 04:53:12');
INSERT INTO `api-platform_info` VALUES (39, 'z7gQr', 'http://lorempixel.com/300/400/', 'delete', 'PM-39', 'PM-39', '2', '2018-04-02 02:35:24', '2018-04-02 11:35:58');
INSERT INTO `api-platform_info` VALUES (40, 'N6ayS', 'http://lorempixel.com/300/400/', 'delete', 'PM-40', 'PM-40', '2', '2018-04-03 16:41:41', '2018-04-03 02:22:30');
INSERT INTO `api-platform_info` VALUES (41, 'lNPo7', 'http://lorempixel.com/300/400/', 'delete', 'PM-41', 'PM-41', '2', '2018-04-03 16:51:43', '2018-04-03 18:37:12');
INSERT INTO `api-platform_info` VALUES (42, 'hnCOB', 'http://lorempixel.com/300/400/', 'delete', 'PM-42', 'PM-42', '2', '2018-04-02 13:27:09', '2018-04-03 12:45:14');
INSERT INTO `api-platform_info` VALUES (43, 'i9OpJ', 'http://lorempixel.com/300/400/', 'post', 'PM-43', 'PM-43', '2', '2018-04-01 18:30:19', '2018-04-02 03:24:04');
INSERT INTO `api-platform_info` VALUES (44, 'FGmZt', 'http://lorempixel.com/300/400/', 'get', 'PM-44', 'PM-44', '3', '2018-04-01 05:18:37', '2018-04-01 19:33:26');
INSERT INTO `api-platform_info` VALUES (45, 'P9BGx', 'http://lorempixel.com/300/400/', 'post', 'PM-45', 'PM-45', '2', '2018-04-03 20:52:12', '2018-04-01 20:11:11');
INSERT INTO `api-platform_info` VALUES (46, '452C1', 'http://lorempixel.com/300/400/', 'put', 'PM-46', 'PM-46', '0', '2018-04-03 04:52:32', '2018-04-03 14:40:23');
INSERT INTO `api-platform_info` VALUES (47, 'kEi6v', 'http://lorempixel.com/300/400/', 'put', 'PM-47', 'PM-47', '0', '2018-04-01 23:16:39', '2018-04-03 00:45:55');
INSERT INTO `api-platform_info` VALUES (48, 'Ifym3', 'http://lorempixel.com/300/400/', 'put', 'PM-48', 'PM-48', '0', '2018-04-02 14:26:05', '2018-04-02 14:54:51');
INSERT INTO `api-platform_info` VALUES (49, 'YSa2U', 'http://lorempixel.com/300/400/', 'delete', 'PM-49', 'PM-49', '2', '2018-04-01 19:09:28', '2018-04-02 22:53:33');
INSERT INTO `api-platform_info` VALUES (50, '0Gisn', 'http://lorempixel.com/300/400/', 'put', 'PM-50', 'PM-50', '3', '2018-04-02 01:43:47', '2018-04-02 19:05:23');

-- ----------------------------
-- Table structure for common_user
-- ----------------------------
DROP TABLE IF EXISTS `common_user`;
CREATE TABLE `common_user`  (
  `username` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userAccount` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '账号',
  `avatarUrl` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户头像',
  `gender` int NULL DEFAULT NULL COMMENT '性别 0 - 男 1 - 女',
  `userPassword` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `phone` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `userStatus` int NULL DEFAULT 0 COMMENT '状态 0 - 正常',
  `isValidate` int NULL DEFAULT NULL COMMENT '是否有效 ',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户账号创建时间',
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '用户账号更新时间',
  `userRole` int NULL DEFAULT 0 COMMENT '用户角色 0 - 普通用户 1 - 管理员',
  `isDeleted` int NULL DEFAULT NULL COMMENT '是否逻辑删除 0 - 未删除 1 - 已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2023456770 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of common_user
-- ----------------------------
INSERT INTO `common_user` VALUES ('user-1', 1, 'account-1', 'http://lorempixel.com/300/400/', 0, 'R9v71', '59', 'P9U2v', 2, 0, '2018-04-02 17:55:01', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-2', 2, 'account-2', 'http://lorempixel.com/300/400/', 1, 'm9nr5', '93', 'I5llA', 1, 0, '2018-04-03 12:26:02', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-3', 3, 'account-3', 'http://lorempixel.com/300/400/', 0, 'piiKj', '5', '6UELP', 1, 0, '2018-04-02 12:41:07', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-4', 4, 'account-4', 'http://lorempixel.com/300/400/', 0, 'V8BUt', '98', 'KnsUb', 3, 0, '2018-04-01 07:26:12', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-5', 5, 'account-5', 'http://lorempixel.com/300/400/', 0, 'nXvQI', '84', 'ciDz2', 0, 0, '2018-04-02 11:50:30', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-6', 6, 'account-6', 'http://lorempixel.com/300/400/', 0, 'vhnvN', '4', 'BCELh', 3, 0, '2018-04-02 21:40:04', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-7', 7, 'account-7', 'http://lorempixel.com/300/400/', 1, 'FojBm', '63', 'Y955f', 0, 0, '2018-04-03 22:27:48', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-8', 8, 'account-8', 'http://lorempixel.com/300/400/', 1, 'BCP6x', '33', '0clZJ', 1, 0, '2018-04-02 02:13:51', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-9', 9, 'account-9', 'http://lorempixel.com/300/400/', 0, 'MMSN6', '17', 'SvSvg', 1, 0, '2018-04-01 08:19:57', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-10', 10, 'account-10', 'http://lorempixel.com/300/400/', 0, '2URQn', '5', 'S3wXg', 3, 0, '2018-04-03 14:52:51', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-11', 11, 'account-11', 'http://lorempixel.com/300/400/', 0, 'f9gHJ', '12', 'gAoFx', 0, 0, '2018-04-03 15:18:34', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-12', 12, 'account-12', 'http://lorempixel.com/300/400/', 0, 'iESf7', '21', 'gdmX5', 0, 0, '2018-04-03 20:00:02', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-13', 13, 'account-13', 'http://lorempixel.com/300/400/', 1, 'lr1pG', '68', 'khDOG', 3, 0, '2018-04-03 20:33:03', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-14', 14, 'account-14', 'http://lorempixel.com/300/400/', 1, 'bPuyn', '91', 'MPDrf', 1, 0, '2018-04-02 11:09:11', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-15', 15, 'account-15', 'http://lorempixel.com/300/400/', 0, 'orEj8', '58', '3kYaB', 2, 0, '2018-04-01 13:00:59', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-16', 16, 'account-16', 'http://lorempixel.com/300/400/', 1, 'WNJ8Y', '30', 'O7bUq', 0, 0, '2018-04-01 16:09:14', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-17', 17, 'account-17', 'http://lorempixel.com/300/400/', 0, '2DsmU', '54', 'oqG5D', 3, 0, '2018-04-03 09:21:47', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-18', 18, 'account-18', 'http://lorempixel.com/300/400/', 1, 'E7aRE', '46', 'RcHA5', 2, 0, '2018-04-03 05:22:00', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-19', 19, 'account-19', 'http://lorempixel.com/300/400/', 0, 'y8LJs', '96', '3Ci0V', 0, 0, '2018-04-01 12:05:25', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-20', 20, 'account-20', 'http://lorempixel.com/300/400/', 0, 'VOjOd', '100', 'WxvV5', 2, 0, '2018-04-03 18:39:56', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-21', 21, 'account-21', 'http://lorempixel.com/300/400/', 1, 'UwkDK', '17', 'MiQvM', 1, 0, '2018-04-02 22:43:43', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-22', 22, 'account-22', 'http://lorempixel.com/300/400/', 0, 'LQLna', '40', 'Qx9dJ', 0, 0, '2018-04-02 01:07:44', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-23', 23, 'account-23', 'http://lorempixel.com/300/400/', 1, 'JpNxb', '78', 'kfgI3', 0, 0, '2018-04-03 09:22:57', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-24', 24, 'account-24', 'http://lorempixel.com/300/400/', 0, 'wa1Fo', '98', 'DHDxc', 3, 0, '2018-04-03 02:05:27', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-25', 25, 'account-25', 'http://lorempixel.com/300/400/', 1, 'nMjxT', '58', 'jZNXk', 2, 0, '2018-04-03 02:15:38', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-26', 26, 'account-26', 'http://lorempixel.com/300/400/', 1, 'TIyHO', '40', '4IlS5', 2, 0, '2018-04-02 13:29:15', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-27', 27, 'account-27', 'http://lorempixel.com/300/400/', 1, 'cIc5V', '59', 'us46i', 0, 0, '2018-04-03 12:42:14', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-28', 28, 'account-28', 'http://lorempixel.com/300/400/', 0, 'rgvJg', '6', 'QDw5I', 0, 0, '2018-04-03 21:41:14', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-29', 29, 'account-29', 'http://lorempixel.com/300/400/', 1, 'XX9Gg', '79', 'utdYW', 2, 0, '2018-04-03 01:43:55', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-30', 30, 'account-30', 'http://lorempixel.com/300/400/', 1, 'SjidE', '79', '9OLaG', 1, 0, '2018-04-01 23:37:31', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-31', 31, 'account-31', 'http://lorempixel.com/300/400/', 0, 'aKyGg', '46', 'ijaBp', 3, 0, '2018-04-02 02:41:30', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-32', 32, 'account-32', 'http://lorempixel.com/300/400/', 0, 'mZpfW', '65', 'C3KkZ', 3, 0, '2018-04-01 14:03:14', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-33', 33, 'account-33', 'http://lorempixel.com/300/400/', 1, '8wbHT', '66', 'bDaA3', 0, 0, '2018-04-03 17:33:35', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-34', 34, 'account-34', 'http://lorempixel.com/300/400/', 1, 'RSidq', '58', 'LKYLC', 3, 0, '2018-04-02 10:50:23', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-35', 35, 'account-35', 'http://lorempixel.com/300/400/', 1, 'w1HqF', '54', 'TdMIM', 2, 0, '2018-04-03 00:06:41', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-36', 36, 'account-36', 'http://lorempixel.com/300/400/', 1, '2hhsu', '39', 'VEctt', 2, 0, '2018-04-02 15:19:03', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-37', 37, 'account-37', 'http://lorempixel.com/300/400/', 1, 'yd91j', '61', 'GT9zu', 0, 0, '2018-04-02 15:38:59', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-38', 38, 'account-38', 'http://lorempixel.com/300/400/', 0, 'UUEUM', '70', 'aZ7HZ', 3, 0, '2018-04-02 00:08:34', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-39', 39, 'account-39', 'http://lorempixel.com/300/400/', 0, 'kGYNd', '68', 'W7B7E', 2, 0, '2018-04-03 10:32:00', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-40', 40, 'account-40', 'http://lorempixel.com/300/400/', 1, 'MlYQc', '33', 'g0Eu4', 3, 0, '2018-04-01 22:23:15', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-41', 41, 'account-41', 'http://lorempixel.com/300/400/', 1, 'mLFJ9', '70', 'd21sS', 2, 0, '2018-04-03 04:35:21', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-42', 42, 'account-42', 'http://lorempixel.com/300/400/', 1, 'Uyuo3', '61', 'Te34n', 1, 0, '2018-04-02 17:59:07', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-43', 43, 'account-43', 'http://lorempixel.com/300/400/', 0, 'X56Us', '56', 'DW4VL', 0, 0, '2018-04-02 07:54:17', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-44', 44, 'account-44', 'http://lorempixel.com/300/400/', 1, 'HPbNP', '10', 'G9FwV', 2, 0, '2018-04-03 02:06:30', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-45', 45, 'account-45', 'http://lorempixel.com/300/400/', 0, 'jZ1E8', '80', 'GIcBi', 1, 0, '2018-04-02 17:18:44', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-46', 46, 'account-46', 'http://lorempixel.com/300/400/', 0, 'f9gw3', '12', 'NBBEG', 1, 0, '2018-04-01 15:21:34', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-47', 47, 'account-47', 'http://lorempixel.com/300/400/', 1, 'bpHQU', '67', 'PlqLb', 1, 0, '2018-04-02 13:12:53', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-48', 48, 'account-48', 'http://lorempixel.com/300/400/', 1, 'dPT7r', '14', 'aMQ45', 2, 0, '2018-04-02 05:44:48', '2023-10-02 22:39:23', 1, 0);
INSERT INTO `common_user` VALUES ('user-49', 49, 'account-49', 'http://lorempixel.com/300/400/', 1, 'o6m1u', '70', 'CcVHx', 3, 0, '2018-04-02 02:18:41', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES ('user-50', 50, 'account-50', 'http://lorempixel.com/300/400/', 1, 'XkgRF', '14', '6ljsE', 2, 0, '2018-04-01 21:34:41', '2023-10-02 22:39:23', 0, 0);
INSERT INTO `common_user` VALUES (NULL, 1813700609, 'coderWorldTest6', NULL, NULL, '997972284a3348424a85ae598e513129', NULL, NULL, 0, NULL, '2023-10-04 22:23:01', '2023-10-04 22:23:01', 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
