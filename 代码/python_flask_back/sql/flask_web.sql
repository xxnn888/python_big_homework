/*
 Navicat Premium Data Transfer

 Source Server         : my_db_01
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : flask_web

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 15/12/2022 15:23:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alembic_version
-- ----------------------------
DROP TABLE IF EXISTS `alembic_version`;
CREATE TABLE `alembic_version`  (
  `version_num` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`version_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alembic_version
-- ----------------------------
INSERT INTO `alembic_version` VALUES ('d49aa9d8219c');

-- ----------------------------
-- Table structure for csv_position_py
-- ----------------------------
DROP TABLE IF EXISTS `csv_position_py`;
CREATE TABLE `csv_position_py`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `positionName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publishtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `posturl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jobNature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 319 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of csv_position_py
-- ----------------------------
INSERT INTO `csv_position_py` VALUES (195, 'java开发工程师', '成都·武侯区', '13:14发布', '10k-18k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/4C/AA/Ciqc1F9Ye9KAN691AAA0-nOavZs868.png', '五险一金 绩效奖励 股票期权');
INSERT INTO `csv_position_py` VALUES (198, '行政人事专员 周末双休带薪年假', '成都', '13:40发布', '3k-6k', '经验不限 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M01/94/B1/CgoB5luwl4-AWn1hAAAiFBuOuHc784.jpg', '做行政工作，拿高薪');
INSERT INTO `csv_position_py` VALUES (199, '运营经理', '北京·朝阳区', '13:35发布', '8k-15k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/10/212482e870ab461c8c368da0fe07e418.png', '乡村振兴、高速成长、五险一金、扁平管理');
INSERT INTO `csv_position_py` VALUES (200, '男频同人编辑', '北京·大望路', '13:34发布', '12k-18k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/5C/18/CgpEMlmJZoiAPeuTAABKbRsMlIw819.png', '双休，高薪资，管理人才培养');
INSERT INTO `csv_position_py` VALUES (201, '区域经理', '成都', '13:30发布', '7k-13k', '经验1-3年 / 不限', 'https://www.lgstatic.com/thumbnail_120x120/10/13cc36e3dc1e48ba99ccb6196b620f9c.png', '优异者可签署期权奖励协议且可套现');
INSERT INTO `csv_position_py` VALUES (202, '电话销售顾问', '上海·唐镇', '13:29发布', '15k-20k', '经验不限 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/i/image3/M00/2A/F1/CgpOIFqdbTOAfTfnAACOCmos5RY655.jpg', '周末双休，免费体检，宿舍食堂');
INSERT INTO `csv_position_py` VALUES (203, '机构业务部总经理', '北京·王府井', '13:29发布', '15k-30k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/10/85cccf4eeb3746f39dbc5284790b6feb.png', '待遇和福利不错 晋升空间大 不坐班');
INSERT INTO `csv_position_py` VALUES (204, '销售管理合伙人', '北京·百子湾', '13:28发布', '25k-50k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/63/7A/CgpFT1mfXuWADBSiAAAWrpqjxLc851.png', '动荡年代，机遇或挑战，你觉得呢？');
INSERT INTO `csv_position_py` VALUES (205, 'python开发工程师', '上海·浦东新区', '13:26发布', '20k-40k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M01/83/80/Cgp9HWKIqsGAJRA2AABh330ROP8544.jpg', '五险一金、弹性工作、带薪年假、宝藏老板');
INSERT INTO `csv_position_py` VALUES (206, '深度学习算法工程师（工业视觉 校招+社招）', '北京·西三旗', '13:26发布', '22k-40k', '经验不限 / 硕士', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/81/76/Cgp9HWJrmbGAdeYQAABTv6cNVvE610.jpg', '\"清华浙大团队');
INSERT INTO `csv_position_py` VALUES (207, '催收专员', '太原', '13:24发布', '3k-4k', '经验不限 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/images/logo_default.png', '有五险和节假日福利');
INSERT INTO `csv_position_py` VALUES (208, '高薪优秀青春足浴技师', '长沙', '13:18发布', '8k-12k', '经验不限 / 不限', 'https://www.lgstatic.com/thumbnail_120x120/images/logo_default.png', '钱多多、真实招聘');
INSERT INTO `csv_position_py` VALUES (209, '客服专员', '南昌·南昌县', '13:14发布', '4k-8k', '经验不限 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/5C/33/CgqCHl-BIQGANglVAACfaDRn6ik386.png', '房补 餐补');
INSERT INTO `csv_position_py` VALUES (210, 'java开发工程师', '成都·武侯区', '13:14发布', '10k-18k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/4C/AA/Ciqc1F9Ye9KAN691AAA0-nOavZs868.png', '五险一金 绩效奖励 股票期权');
INSERT INTO `csv_position_py` VALUES (211, 'java工程师', '海口·美兰区', '2天前发布', '7k-12k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/image1/M00/27/FD/Cgo8PFVdWXGANjCiAAB5LF4TccM534.png', '五险一金 年度体检 各种补贴');
INSERT INTO `csv_position_py` VALUES (212, '客服专员', '北京·中关村', '2天前发布', '6k-8k', '经验1-3年 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/48/94/CioPOWDVmDyAerHSAABjTx5KPhA005.PNG', '气氛活跃，年轻人多，团队活力满满，福利优越');
INSERT INTO `csv_position_py` VALUES (213, '社区运营实习生', '北京·大望路', '00:25发布', '8k-15k', '经验在校/应届 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/5C/18/CgpEMlmJZoiAPeuTAABKbRsMlIw819.png', '发展空间大，可转正');
INSERT INTO `csv_position_py` VALUES (214, '打印机维护技术员', '深圳·福田区', '00:23发布', '6k-8k', '经验1-3年 / 不限', 'https://www.lgstatic.com/thumbnail_120x120/i/image3/M00/1D/FD/Cgq2xlqPfCeACg_SAAAO6drqkmE381.jpg', '公司包住有伙食补贴保险等');
INSERT INTO `csv_position_py` VALUES (215, 'Java开发经理', '广州·棠下', '00:16发布', '15k-25k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image3/M00/50/60/CgpOIFr45QuALHpbAABO8AJgrn8609.png', '六险一金，福利好，大平台，项目稳定');
INSERT INTO `csv_position_py` VALUES (216, '高级 Go 开发工程师（Mocha）', '深圳·南山区', '00:15发布', '20k-40k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M01/A3/E0/CgotOV2_33OAJMbDAAAoozKUaSQ386.png', '朝阳行业、国际化视野');
INSERT INTO `csv_position_py` VALUES (217, '运维工程师', '上海·浦东新区', '00:04发布', '13k-15k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M01/83/80/Cgp9HWKIqsGAJRA2AABh330ROP8544.jpg', '五险一金、弹性工作、带薪年假、宝藏老板');
INSERT INTO `csv_position_py` VALUES (218, '运维开发工程师', '深圳·车公庙', '00:00发布', '20k-35k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image3/M01/55/DA/Cgq2xl3t-TGAVnlIAAOS6_9yToQ749.jpg', '重点项目 团队氛围佳');
INSERT INTO `csv_position_py` VALUES (219, 'python开发工程师', '上海·陆家嘴', '00:00发布', '20k-35k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image3/M01/76/76/Cgq2xl5wh4GAWNvTAAAmbwQ7z4M010.png', '集团大平台，科技中台，场景丰富');
INSERT INTO `csv_position_py` VALUES (221, '技术专家', '深圳·南山区', '00:00发布', '30k-45k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M01/BF/1E/CgotOVwoXjWAaYcXAAId3oqS-kM912.jpg', '人工智能赋能医疗健康');
INSERT INTO `csv_position_py` VALUES (222, '324168-C端产品经理', '上海·杨浦区', '00:00发布', '20k-35k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M01/0A/92/CgpVE2ASRCqAOBQEAAByexBGjfE293.jpg', '\"五险一金');
INSERT INTO `csv_position_py` VALUES (223, '0841GT-PMO项目管理（中级）', '上海·陆家嘴', '00:00发布', '20k-35k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M01/E8/5B/CgoB5lx1_HCARYzLAABSNToQ7C4496.png', '\"五险一金');
INSERT INTO `csv_position_py` VALUES (224, '1251AR-账务核算岗', '上海·浦东新区', '00:00发布', '2k-4k', '经验在校/应届 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M01/D3/D9/CgotOVxGg0iAd1bdAAC4LFhy1bk038.png', '\"餐补');
INSERT INTO `csv_position_py` VALUES (225, '0951BP-测试开发工程师', '上海·龙华', '00:00发布', '20k-25k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/32/1B/CgpEMlk2QY6ALjE-AAAgG0ZzJzM580.jpg', '\"五险一金');
INSERT INTO `csv_position_py` VALUES (226, 'linux运维工程师（高薪+周末双休）', '珠海·香洲区', '12:38发布', '13k-20k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/65/46/CioPOWGprYKAJMvZAAPBLPU6rns024.png', '周末双休 五险一金 技术先进 房补');
INSERT INTO `csv_position_py` VALUES (227, '服务端全栈', '北京·五道口', '2022-11-28', '20k-30k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/62/CD/Cgp3O1f_T4yAPyXBAAAlYRx8y2I935.png', '真刀真枪、路径灵活、年轻人的PICK');
INSERT INTO `csv_position_py` VALUES (228, 'erp实施顾问', '上海·田林', '13:40发布', '10k-13k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/5E/BF/CioPOWF5IUiAbg81AAEJ8cJ9VfU546.png', '福利好 、发展前景好、领导好、团队好');
INSERT INTO `csv_position_py` VALUES (229, '游戏关卡策划', '广州·赤岗', '13:40发布', '8k-16k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M01/73/66/CioPOWIVlvmANg0tAAALwkdmyiI104.png', '大厂成员，成熟团队，机会多，前景广阔');
INSERT INTO `csv_position_py` VALUES (230, '市场部实习生', '上海·浦东新区', '13:40发布', '3k-4k', '经验不限 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/5C/34/Cgp3O1fjUKKAOqM0AAAZaAHJLiw076.png', '国企 免费午餐 办公环境佳 留用机会');
INSERT INTO `csv_position_py` VALUES (231, '音视频开发工程师', '厦门·思明区', '13:40发布', '10k-15k', '经验在校/应届 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M01/7C/54/Cgp9HWJBeT2AGcIKAAAdXnDSl6U981.png', '前景好，成长快，氛围好');
INSERT INTO `csv_position_py` VALUES (232, 'python后端开发工程师', '广州·珠江新城', '13:39发布', '8k-13k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M01/71/5F/Cgp9HWIMn2uAYxLnAAAL2yq_0x8433.png', '发展前景好');
INSERT INTO `csv_position_py` VALUES (233, '新媒体编辑', '上海·龙柏', '13:39发布', '2k-3k', '经验在校/应届 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/image1/M00/3C/7D/CgYXBlW1qqeAOAYlAAAEiJ_raYw171.png', '可转正');
INSERT INTO `csv_position_py` VALUES (235, '安卓音视频开发工程师（杭州）', '杭州·西湖区', '13:39发布', '25k-40k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M01/18/D4/Cgp9HWBJecaAfBKCAAAMLndXyL0824.jpg', '六险一金 带薪年假 零食下午茶');
INSERT INTO `csv_position_py` VALUES (236, '功能测试工程师', '北京·灯市口', '13:39发布', '12k-18k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/4F/A5/CioPOWD6YxGAD-CWAAAsgCdp12U635.jpg', '六险一金 周末双休 团队大牛');
INSERT INTO `csv_position_py` VALUES (237, '软件产品经理（ERP/物联网/低代码）', '广州·番禺区', '13:39发布', '15k-25k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/image1/M00/20/C4/CgYXBlU4l8-AZwKoAAA-3UZ50tc569.png', '五险一金，年终奖金，上市公司，周末双休');
INSERT INTO `csv_position_py` VALUES (238, '渠道销售经理', '杭州·西兴', '13:38发布', '10k-20k', '经验3-5年 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/i/image3/M01/78/D1/Cgq2xl50kKKAUBk4AAARoJGQwA4961.png', '周末双休、朝九晚六、业绩提成、节日福利');
INSERT INTO `csv_position_py` VALUES (239, 'Java开发工程师', '深圳·福田区', '13:38发布', '12k-22k', '经验不限 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/65/46/CioPOWGprYKAJMvZAAPBLPU6rns024.png', '五险一金，双休，节假日福利');
INSERT INTO `csv_position_py` VALUES (240, '数据合规专家', '北京', '13:38发布', '20k-40k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/63/21/Cgp9HWGd39yANcwZAAA5GiRJFxA257.png', '大平台，团队氛围佳');
INSERT INTO `csv_position_py` VALUES (241, 'linux运维工程师（高薪+周末双休）', '珠海·香洲区', '12:38发布', '13k-20k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/65/46/CioPOWGprYKAJMvZAAPBLPU6rns024.png', '周末双休 五险一金 技术先进 房补');
INSERT INTO `csv_position_py` VALUES (242, '服务端全栈', '北京·五道口', '2022-11-28', '20k-30k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/62/CD/Cgp3O1f_T4yAPyXBAAAlYRx8y2I935.png', '真刀真枪、路径灵活、年轻人的PICK');
INSERT INTO `csv_position_py` VALUES (243, 'erp实施顾问', '上海·田林', '13:40发布', '10k-13k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/5E/BF/CioPOWF5IUiAbg81AAEJ8cJ9VfU546.png', '福利好 、发展前景好、领导好、团队好');
INSERT INTO `csv_position_py` VALUES (244, '游戏关卡策划', '广州·赤岗', '13:40发布', '8k-16k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M01/73/66/CioPOWIVlvmANg0tAAALwkdmyiI104.png', '大厂成员，成熟团队，机会多，前景广阔');
INSERT INTO `csv_position_py` VALUES (245, '市场部实习生', '上海·浦东新区', '13:40发布', '3k-4k', '经验不限 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/5C/34/Cgp3O1fjUKKAOqM0AAAZaAHJLiw076.png', '国企 免费午餐 办公环境佳 留用机会');
INSERT INTO `csv_position_py` VALUES (246, '音视频开发工程师', '厦门·思明区', '13:40发布', '10k-15k', '经验在校/应届 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M01/7C/54/Cgp9HWJBeT2AGcIKAAAdXnDSl6U981.png', '前景好，成长快，氛围好');
INSERT INTO `csv_position_py` VALUES (247, 'python后端开发工程师', '广州·珠江新城', '13:39发布', '8k-13k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M01/71/5F/Cgp9HWIMn2uAYxLnAAAL2yq_0x8433.png', '发展前景好');
INSERT INTO `csv_position_py` VALUES (248, '新媒体编辑', '上海·龙柏', '13:39发布', '2k-3k', '经验在校/应届 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/image1/M00/3C/7D/CgYXBlW1qqeAOAYlAAAEiJ_raYw171.png', '可转正');
INSERT INTO `csv_position_py` VALUES (249, '大数据开发工程师', '北京·双榆树', '13:39发布', '15k-25k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/44/C5/CgqCHl8_RPOATc7aAAARlUfCjGs088.jpg', '发展空间大 成长迅速');
INSERT INTO `csv_position_py` VALUES (250, '安卓音视频开发工程师（杭州）', '杭州·西湖区', '13:39发布', '25k-40k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M01/18/D4/Cgp9HWBJecaAfBKCAAAMLndXyL0824.jpg', '六险一金 带薪年假 零食下午茶');
INSERT INTO `csv_position_py` VALUES (251, '功能测试工程师', '北京·灯市口', '13:39发布', '12k-18k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/4F/A5/CioPOWD6YxGAD-CWAAAsgCdp12U635.jpg', '六险一金 周末双休 团队大牛');
INSERT INTO `csv_position_py` VALUES (252, '软件产品经理（ERP/物联网/低代码）', '广州·番禺区', '13:39发布', '15k-25k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/image1/M00/20/C4/CgYXBlU4l8-AZwKoAAA-3UZ50tc569.png', '五险一金，年终奖金，上市公司，周末双休');
INSERT INTO `csv_position_py` VALUES (253, '渠道销售经理', '杭州·西兴', '13:38发布', '10k-20k', '经验3-5年 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/i/image3/M01/78/D1/Cgq2xl50kKKAUBk4AAARoJGQwA4961.png', '周末双休、朝九晚六、业绩提成、节日福利');
INSERT INTO `csv_position_py` VALUES (254, 'Java开发工程师', '深圳·福田区', '13:38发布', '12k-22k', '经验不限 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/65/46/CioPOWGprYKAJMvZAAPBLPU6rns024.png', '五险一金，双休，节假日福利');
INSERT INTO `csv_position_py` VALUES (255, '数据合规专家', '北京', '13:38发布', '20k-40k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/63/21/Cgp9HWGd39yANcwZAAA5GiRJFxA257.png', '大平台，团队氛围佳');
INSERT INTO `csv_position_py` VALUES (256, '服务端全栈', '北京·五道口', '2022-11-28', '20k-30k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/62/CD/Cgp3O1f_T4yAPyXBAAAlYRx8y2I935.png', '真刀真枪、路径灵活、年轻人的PICK');
INSERT INTO `csv_position_py` VALUES (257, '创意文案策划', '广州·南洲', '1天前发布', '6k-9k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/7F/8B/Cgp9HWJWtwWAF4U4ABYvtih5j4A796.jpg', '双休 ，入司就买五险，办公环境舒适');
INSERT INTO `csv_position_py` VALUES (258, 'ADAS应用软件工程师', '北京·西北旺', '19:21发布', '25k-50k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/90/61/CgpEMlrz4ZeADD25AAA4Y-lUeXc084.jpg', '等等');
INSERT INTO `csv_position_py` VALUES (259, '高级3D动作', '广州·天园', '19:20发布', '15k-30k', '经验3-5年 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/9E/C3/CgqKkVilByKALMiCAAAQ37kraOc960.jpg', '七险一金、双休、三餐水果、年底双薪、项目奖');
INSERT INTO `csv_position_py` VALUES (260, 'java高级开发工程师', '杭州·余杭区', '19:19发布', '25k-50k', '经验3-5年 / 硕士', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/42/CE/CgpFT1ld-4yAZLJ6AAAv0QGHSIM153.png', '互联网，阿里巴巴');
INSERT INTO `csv_position_py` VALUES (262, '中/高级系统运维工程师', '广州', '19:17发布', '15k-30k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M01/67/8A/Cgp9HWG5RpCAIbDYAAEIP882p3Y508.jpg', '央企');
INSERT INTO `csv_position_py` VALUES (263, '内容营销/内容运营', '北京·望京', '19:17发布', '10k-18k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/3F/FE/Ciqc1F8yApuACavkAABpNRApTNo816.png', '港股上市公司 全球化视野 绩效奖金');
INSERT INTO `csv_position_py` VALUES (264, '社区策略产品经理', '北京·学院路', '19:16发布', '30k-60k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/9A/FC/CgqKkVihobyAPNbQAAAYVWeM11w136.png', '年终奖金 租房补贴 免费三餐 弹性不打卡');
INSERT INTO `csv_position_py` VALUES (265, '创作者运营', '北京·大望路', '19:16发布', '12k-18k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/5C/18/CgpEMlmJZoiAPeuTAABKbRsMlIw819.png', '发展空间，双休，带薪');
INSERT INTO `csv_position_py` VALUES (266, '电力售前技术支持工程师', '广州·五山', '19:15发布', '18k-35k', '经验不限 / 硕士', 'https://www.lgstatic.com/thumbnail_120x120/image1/M00/27/FD/Cgo8PFVdWXGANjCiAAB5LF4TccM534.png', '五险一金 双休 大牛带队 各种补助');
INSERT INTO `csv_position_py` VALUES (267, '海外推广（小语种/市场/品牌/kol）', '深圳·大冲', '19:15发布', '8k-15k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/27/B6/CgpFT1kk4LmAfBN6AAASgpA5Fp0344.png', '生日会年终旅游');
INSERT INTO `csv_position_py` VALUES (268, 'python软件工程师', '上海·浦东新区', '19:13发布', '20k-40k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M01/83/80/Cgp9HWKIqsGAJRA2AABh330ROP8544.jpg', '五险一金、弹性工作、带薪年假、宝藏老板');
INSERT INTO `csv_position_py` VALUES (269, '电话销售', '北京·海淀区', '19:13发布', '15k-25k', '经验1-3年 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/48/94/CioPOWDVmDyAerHSAABjTx5KPhA005.PNG', '六险一金，不打卡，高额提成，交通补助');
INSERT INTO `csv_position_py` VALUES (270, '财务经理', '北京', '19:13发布', '20k-30k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/10/e1198dde70244e69abd56e30ec86b12e.png', '牛人带队、公司期权');
INSERT INTO `csv_position_py` VALUES (271, '网络文学编辑', '杭州·余杭区', '1天前发布', '5k-7k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/60/FA/CioPOWGM4CmAUF1UAACf43xXEjQ935.png', '行业发展前景无限，公司团队氛围好');
INSERT INTO `csv_position_py` VALUES (272, 'linux运维工程师（高薪+周末双休）', '珠海·香洲区', '18:02发布', '13k-20k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/65/46/CioPOWGprYKAJMvZAAPBLPU6rns024.png', '周末双休 五险一金 技术先进 房补');
INSERT INTO `csv_position_py` VALUES (273, '渠道业务部HRBP', '北京·朝阳区', '20:30发布', '35k-60k', '经验不限 / 不限', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M01/03/84/CgpVE1_ch26AEM8AAAAxNiZmyCE990.png', '大平台');
INSERT INTO `csv_position_py` VALUES (274, '房产经纪人房地产顾问', '上海·真如', '20:29发布', '15k-30k', '经验不限 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/5E/02/CgpFT1mTuCOAG0v_AABDOcgAmFY341.jpg', '985.211高学历待遇更加丰厚');
INSERT INTO `csv_position_py` VALUES (275, '培训助理', '北京', '20:28发布', '6k-8k', '经验不限 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/10/06991ad794964ebc8d270cf999a8b8a8.png', '接受应届生、工作氛围好');
INSERT INTO `csv_position_py` VALUES (276, '销售管理合伙人', '北京·百子湾', '20:27发布', '25k-50k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/63/7A/CgpFT1mfXuWADBSiAAAWrpqjxLc851.png', '动荡年代，机遇或挑战，你觉得呢？');
INSERT INTO `csv_position_py` VALUES (277, 'JAVA工程师', '福州·鳌峰', '20:27发布', '13k-26k', '经验不限 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M01/79/CC/CgotOVttVjSAesI6AAKE45VCRRc354.png', '科技金融、银行');
INSERT INTO `csv_position_py` VALUES (278, '谷歌落地页投放', '成都', '20:24发布', '7k-12k', '经验3-5年 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/images/logo_default.png', '高待遇');
INSERT INTO `csv_position_py` VALUES (279, '海外广告优化师', '广州', '20:22发布', '13k-26k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/84/66/CioPOWKUNxGAToFQAAQMmWbhucE438.png', '年终奖，不打卡，期权，绩效奖金');
INSERT INTO `csv_position_py` VALUES (280, '组织发展经理', '深圳·华强北', '20:22发布', '25k-40k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/10/dd437551831f4a49934c4f15d8f431b5.png', '不打卡 假期多 免息贷款买房');
INSERT INTO `csv_position_py` VALUES (281, 'java开发工程师', '深圳·福田区', '20:22发布', '15k-20k', '经验3-5年 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/78/32/CioPOWIqruWAAliMAABUoME6ZXg405.png', '年终奖');
INSERT INTO `csv_position_py` VALUES (282, '海外推广（小语种/市场/品牌/kol）', '深圳·大冲', '20:21发布', '8k-15k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/27/B6/CgpFT1kk4LmAfBN6AAASgpA5Fp0344.png', '生日会年终旅游');
INSERT INTO `csv_position_py` VALUES (283, '内容审核', '杭州·滨江区', '20:21发布', '2k-4k', '经验在校/应届 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/70/B2/CioPOWIJt_aARXpzAAY0Pq7O-KU838.png', '畅玩3A大作，畅享零食');
INSERT INTO `csv_position_py` VALUES (284, '广告产品运营', '深圳·龙华新区', '20:20发布', '25k-35k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M00/54/14/CgoB5lsYneyAOuKBAAELsIpsjZA662.jpg', '行业龙头，亿级用户');
INSERT INTO `csv_position_py` VALUES (285, 'Java开发工程师-BJ', '北京', '20:20发布', '15k-25k', '经验1-3年 / 不限', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M01/A4/6C/CgoB5l3BSkmAeXgoAAAStq1WNt4401.jpg', '稳定');
INSERT INTO `csv_position_py` VALUES (288, '网络文学编辑', '杭州·余杭区', '1天前发布', '5k-7k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/60/FA/CioPOWGM4CmAUF1UAACf43xXEjQ935.png', '行业发展前景无限，公司团队氛围好');
INSERT INTO `csv_position_py` VALUES (289, 'linux运维工程师（高薪+周末双休）', '珠海·香洲区', '18:02发布', '13k-20k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/65/46/CioPOWGprYKAJMvZAAPBLPU6rns024.png', '周末双休 五险一金 技术先进 房补');
INSERT INTO `csv_position_py` VALUES (290, '渠道业务部HRBP', '北京·朝阳区', '20:30发布', '35k-60k', '经验不限 / 不限', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M01/03/84/CgpVE1_ch26AEM8AAAAxNiZmyCE990.png', '大平台');
INSERT INTO `csv_position_py` VALUES (291, '房产经纪人房地产顾问', '上海·真如', '20:29发布', '15k-30k', '经验不限 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/5E/02/CgpFT1mTuCOAG0v_AABDOcgAmFY341.jpg', '985.211高学历待遇更加丰厚');
INSERT INTO `csv_position_py` VALUES (292, '培训助理', '北京', '20:28发布', '6k-8k', '经验不限 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/10/06991ad794964ebc8d270cf999a8b8a8.png', '接受应届生、工作氛围好');
INSERT INTO `csv_position_py` VALUES (293, '销售管理合伙人', '北京·百子湾', '20:27发布', '25k-50k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/63/7A/CgpFT1mfXuWADBSiAAAWrpqjxLc851.png', '动荡年代，机遇或挑战，你觉得呢？');
INSERT INTO `csv_position_py` VALUES (294, 'JAVA工程师', '福州·鳌峰', '20:27发布', '13k-26k', '经验不限 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M01/79/CC/CgotOVttVjSAesI6AAKE45VCRRc354.png', '科技金融、银行');
INSERT INTO `csv_position_py` VALUES (295, '谷歌落地页投放', '成都', '20:24发布', '7k-12k', '经验3-5年 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/images/logo_default.png', '高待遇');
INSERT INTO `csv_position_py` VALUES (296, '海外广告优化师', '广州', '20:22发布', '13k-26k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/84/66/CioPOWKUNxGAToFQAAQMmWbhucE438.png', '年终奖，不打卡，期权，绩效奖金');
INSERT INTO `csv_position_py` VALUES (297, '组织发展经理', '深圳·华强北', '20:22发布', '25k-40k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/10/dd437551831f4a49934c4f15d8f431b5.png', '不打卡 假期多 免息贷款买房');
INSERT INTO `csv_position_py` VALUES (298, 'java开发工程师', '深圳·福田区', '20:22发布', '15k-20k', '经验3-5年 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/78/32/CioPOWIqruWAAliMAABUoME6ZXg405.png', '年终奖');
INSERT INTO `csv_position_py` VALUES (299, '海外推广（小语种/市场/品牌/kol）', '深圳·大冲', '20:21发布', '8k-15k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/27/B6/CgpFT1kk4LmAfBN6AAASgpA5Fp0344.png', '生日会年终旅游');
INSERT INTO `csv_position_py` VALUES (300, '内容审核', '杭州·滨江区', '20:21发布', '2k-4k', '经验在校/应届 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/70/B2/CioPOWIJt_aARXpzAAY0Pq7O-KU838.png', '畅玩3A大作，畅享零食');
INSERT INTO `csv_position_py` VALUES (301, '广告产品运营', '深圳·龙华新区', '20:20发布', '25k-35k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M00/54/14/CgoB5lsYneyAOuKBAAELsIpsjZA662.jpg', '行业龙头，亿级用户');
INSERT INTO `csv_position_py` VALUES (302, 'Java开发工程师-BJ', '北京', '20:20发布', '15k-25k', '经验1-3年 / 不限', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M01/A4/6C/CgoB5l3BSkmAeXgoAAAStq1WNt4401.jpg', '稳定');
INSERT INTO `csv_position_py` VALUES (303, '销售经理', '深圳·南山区', '1天前发布', '10k-15k', '经验3-5年 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/68/55/Ciqc1F-jqRyAPd71AAAKXPkbIVI872.png', '与实力创业团队一起共创辉煌！');
INSERT INTO `csv_position_py` VALUES (304, '客服专员', '北京·中关村', '1天前发布', '6k-8k', '经验1-3年 / 大专', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M00/48/94/CioPOWDVmDyAerHSAABjTx5KPhA005.PNG', '气氛活跃，年轻人多，团队活力满满，福利优越');
INSERT INTO `csv_position_py` VALUES (305, 'python开发工程师', '上海·浦东新区', '00:24发布', '20k-40k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image6/M01/83/80/Cgp9HWKIqsGAJRA2AABh330ROP8544.jpg', '五险一金、弹性工作、带薪年假、宝藏老板');
INSERT INTO `csv_position_py` VALUES (306, '产品经理', '北京·大望路', '00:21发布', '15k-25k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/5C/18/CgpEMlmJZoiAPeuTAABKbRsMlIw819.png', '高薪资，发展空间 ，14薪，');
INSERT INTO `csv_position_py` VALUES (307, '产品经理', '深圳·上沙', '00:16发布', '11k-22k', '经验1-3年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/63/62/CgqCHl-WROWAat1JAAGHaTTaq_4840.png', '长期稳定无出差 周末双休 加班费 优质平台');
INSERT INTO `csv_position_py` VALUES (308, '销售助理/一对一培训/零经验要求/', '长沙·五一广场', '00:15发布', '5k-10k', '经验不限 / 不限', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/67/27/Ciqc1F-g5zaASgqZAACa76ZYjpg259.png', '全长沙就近安排，包住，餐补');
INSERT INTO `csv_position_py` VALUES (309, '部门行政', '长沙·雨花区', '00:12发布', '2k-4k', '经验在校/应届 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image3/M00/27/80/CgpOIFqaHLWAdEGWAABm1UkrT9c828.png', '\"准上市公司');
INSERT INTO `csv_position_py` VALUES (311, 'Java开发经理', '广州·棠下', '00:03发布', '15k-25k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image3/M00/50/60/CgpOIFr45QuALHpbAABO8AJgrn8609.png', '六险一金，福利好，大平台，项目稳定');
INSERT INTO `csv_position_py` VALUES (312, '高级IT产品经理（办公）', '深圳·车公庙', '00:00发布', '30k-45k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image3/M01/55/DA/Cgq2xl3t-TGAVnlIAAOS6_9yToQ749.jpg', '公司规模大');
INSERT INTO `csv_position_py` VALUES (313, 'python开发工程师', '上海·陆家嘴', '00:00发布', '20k-35k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image3/M01/76/76/Cgq2xl5wh4GAWNvTAAAmbwQ7z4M010.png', '集团大平台，科技中台，场景丰富');
INSERT INTO `csv_position_py` VALUES (314, 'BK52PL-AI中台团队产品经理', '深圳·福田区', '00:00发布', '15k-25k', '经验1-3年 / 硕士', 'https://www.lgstatic.com/thumbnail_120x120/i/image/M00/4C/9E/CgqKkVejBKmAHMnyAAAm8UxY6s0839.PNG', '\"五险一金');
INSERT INTO `csv_position_py` VALUES (316, '技术专家', '深圳·南山区', '00:00发布', '30k-45k', '经验5-10年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M01/BF/1E/CgotOVwoXjWAaYcXAAId3oqS-kM912.jpg', '人工智能赋能医疗健康');
INSERT INTO `csv_position_py` VALUES (317, '324168-C端产品经理', '上海·杨浦区', '00:00发布', '20k-35k', '经验3-5年 / 本科', 'https://www.lgstatic.com/thumbnail_120x120/i/image2/M01/0A/92/CgpVE2ASRCqAOBQEAAByexBGjfE293.jpg', '\"五险一金');

-- ----------------------------
-- Table structure for email_captcha
-- ----------------------------
DROP TABLE IF EXISTS `email_captcha`;
CREATE TABLE `email_captcha`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `captcha` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of email_captcha
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Join_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', '12345', '2022-11-24 15:23:37');
INSERT INTO `user` VALUES (4, '1234', 'qwe2345', '1521891733@qq.com', '2022-11-26 12:36:10');
INSERT INTO `user` VALUES (11, '5673324', '546636w3434', '233424', '2022-12-13 12:40:14');
INSERT INTO `user` VALUES (20, '324324', 'ewfq34324', 'xxnn808@qq.com', '2022-12-14 13:31:01');

SET FOREIGN_KEY_CHECKS = 1;
