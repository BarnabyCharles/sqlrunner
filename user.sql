/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80041 (8.0.41)
 Source Host           : localhost:3306
 Source Schema         : talk

 Target Server Type    : MySQL
 Target Server Version : 80041 (8.0.41)
 File Encoding         : 65001

 Date: 23/05/2025 11:31:33
*/

SET NAMES utf8mb4;


-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `d_user`;
CREATE TABLE `d_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `avatar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '头像URL',
  `gender` int NULL DEFAULT 3 COMMENT '性别 1男，2女 3 未知',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` int NULL DEFAULT 1 COMMENT '状态：1=正常，0=禁用',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `delete_time` datetime NULL DEFAULT NULL COMMENT '软删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of d_user
-- ----------------------------
INSERT INTO `d_user` VALUES (1, 'admin', '安奕泽', 'https://image.baidu.com/search/detail?ct=503316480&z=0&tn=baiduimagedetail&ipn=d&cl=2&cm=1&sc=0&lm=-1&ie=gb18030&pn=0&rn=1&di=46137345&ln=0&word=%C0%AF%B1%CA%D0%A1%D0%C2%CD%B7%CF%F1&os=2809752645,1272551519&cs=3767353998,52577599&objurl=http%3A%2F%2Fwx1.sinaimg.cn%2Fmw690%2F00810c6tly1hyc3petqi9j30u00veq6c.jpg&bdtype=11&simid=3767353998,52577599&pi=0&adpicid=0&timingneed=&spn=0&is=0,0', 3, 'ryilj141@sohu.com', '23145268390', 1, '2025-05-22 06:13:51', 'e10adc3949ba59abbe56e057f20f883e', '2025-05-22 06:13:51', NULL);
INSERT INTO `d_user` VALUES (2, 'admin2', 'sdfdsf', 'https://image.baidu.com/search/detail?ct=503316480&z=0&tn=baiduimagedetail&ipn=d&cl=2&cm=1&sc=0&lm=-1&ie=gb18030&pn=0&rn=1&di=46137345&ln=0&word=%C0%AF%B1%CA%D0%A1%D0%C2%CD%B7%CF%F1&os=2809752645,1272551519&cs=3767353998,52577599&objurl=http%3A%2F%2Fwx1.sinaimg.cn%2Fmw690%2F00810c6tly1hyc3petqi9j30u00veq6c.jpg&bdtype=11&simid=3767353998,52577599&pi=0&adpicid=0&timingneed=&spn=0&is=0,0', 3, 'sdfdf@sohu.com', '23145268390', 1, '2025-05-22 08:00:16', 'e10adc3949ba59abbe56e057f20f883e', '2025-05-22 08:00:16', NULL);


