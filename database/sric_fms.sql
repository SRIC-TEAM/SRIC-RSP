/*
 Navicat Premium Data Transfer

 Source Server         : SRIC
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : sric_fms

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 20/03/2024 00:22:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_h_video
-- ----------------------------
DROP TABLE IF EXISTS `data_h_video`;
CREATE TABLE `data_h_video`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件名称',
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '番号',
  `mosaic` int UNSIGNED NOT NULL COMMENT '修正（1：无修正，2：有修正，）',
  `category` int NOT NULL COMMENT '类型（1：REAL，2：3D MMD，3：2D，）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of data_h_video
-- ----------------------------
INSERT INTO `data_h_video` VALUES (1, 'pornhub@meeHuTao', '1.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (2, '浆果儿-SM-1', '2.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (3, '浆果儿-SM-2', '3.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (4, '一本道DRP', '4.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (5, 'KARBO-LAB', '5.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (6, '内个-1', '6.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (7, '内个-2', '7.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (8, '内个-3', '8.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (9, '91制片厂-朋友的妹妹', '9.mp4', '91CM-101', 1, 1);
INSERT INTO `data_h_video` VALUES (10, '91制片厂-七夕-潘甜甜', '10.mp4', '91CM-166', 1, 1);
INSERT INTO `data_h_video` VALUES (11, '91制片厂-手机的秘密-潘甜甜', '11.mp4', '91CM-182', 1, 1);
INSERT INTO `data_h_video` VALUES (12, '2048社区-白色眼罩', '12.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (13, 'エミリを可愛がってください 丘咲エミリ', '13.mp4', '022417-380-carib', 1, 1);
INSERT INTO `data_h_video` VALUES (14, 'Alexa Flaxy', '14.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (15, 'Gf Experience Pov Cowgirl & Creampie', '15.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (16, 'Hardcore Sex With 2b Thigh Shot', '16.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (17, 'Hardcore Sex In Kitchen & Facial', '17.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (18, '日本-小女仆', '18.mp4', 'FC2-PPV-1702264', 1, 1);
INSERT INTO `data_h_video` VALUES (19, 'Do-S Makes You Her Sex Slave Full POV', '19.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (20, '永野一夏-无码流出', '20.mp4', 'stars-145-C', 1, 1);
INSERT INTO `data_h_video` VALUES (21, 'super girl', '21.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (22, 'bronia', '22.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (23, 'CumCovers', '23.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (24, 'CockNinjaStudios', '24.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (25, '阳光-特写', '25.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (26, 'cospori', '26.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (27, 'directorTONG', '27.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (28, 'dorcelclub', '28.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (29, 'Dylann Vox - Stripper With Double D’s Hops on The Bus', '29.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (30, 'Dylann Vox - Getting Even With Some Semen', '30.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (31, 'Dylann', '31.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (32, 'Eliana Rose & Dylann Vox Fuck Each Other And Share Two Cocks! ', '32.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (33, '分叉舌头片片', '33.mp4', 'FC2-PPV-1568660', 1, 1);

-- ----------------------------
-- Table structure for data_h_video_tags
-- ----------------------------
DROP TABLE IF EXISTS `data_h_video_tags`;
CREATE TABLE `data_h_video_tags`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'tag名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of data_h_video_tags
-- ----------------------------
INSERT INTO `data_h_video_tags` VALUES (1, 'tag1');
INSERT INTO `data_h_video_tags` VALUES (2, 'tag2');
INSERT INTO `data_h_video_tags` VALUES (3, 'tag3');

-- ----------------------------
-- Table structure for relation_h_video_tag
-- ----------------------------
DROP TABLE IF EXISTS `relation_h_video_tag`;
CREATE TABLE `relation_h_video_tag`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tagid` int UNSIGNED NOT NULL COMMENT '对应tag的id',
  `videoid` int NOT NULL COMMENT '对应视频的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of relation_h_video_tag
-- ----------------------------
INSERT INTO `relation_h_video_tag` VALUES (1, 1, 1);
INSERT INTO `relation_h_video_tag` VALUES (2, 2, 1);
INSERT INTO `relation_h_video_tag` VALUES (3, 3, 1);

SET FOREIGN_KEY_CHECKS = 1;
