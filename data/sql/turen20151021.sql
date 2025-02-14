﻿# Host: localhost  (Version: 5.6.16)
# Date: 2015-10-21 23:45:50
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "t_attribute"
#

CREATE TABLE `t_attribute` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品类型',
  `attr_name` varchar(60) NOT NULL DEFAULT '' COMMENT '属性名称',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '当添加商品时,该属性的添加类别; 0为手功输入;1为选择输入;2为多行文本输入',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '属性是否多选; 0否; 1是 如果可以多选,则可以自定义属性,并且可以根据值的不同定不同的价',
  `attr_values` text NOT NULL COMMENT '即选择输入,则attr_name对应的值的取值就是该这字段值',
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '属性是否可以检索;0不需要检索; 1关键字检索2范围检索,该属性应该是如果检索的话,可以通过该属性找到有该属性的商品',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '属性显示的顺序,数字越大越靠前,如果数字一样则按id顺序',
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否关联,0 不关联 1关联; 如果关联, 那么用户在购买该商品时,具有有该属性相同的商品将被推荐给用户',
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '属性分组,相同的为一个属性组应该取自ecs_goods_type的attr_group的值的顺序',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

#
# Data for table "t_attribute"
#

INSERT INTO `t_attribute` VALUES (172,9,'上市日期',1,0,'2008年01月\r\n2008年02月\r\n2008年03月\r\n2008年04月\r\n2008年05月\r\n2008年06月\r\n2008年07月\r\n2008年08月\r\n2008年09月\r\n2008年10月\r\n2008年11月\r\n2008年12月\r\n2007年01月\r\n2007年02月\r\n2007年03月\r\n2007年04月\r\n2007年05月\r\n2007年06月\r\n2007年07月\r\n2007年08月\r\n2007年09月\r\n2007年10月\r\n2007年11月\r\n2007年12月',1,0,0,0),(173,9,'手机制式',1,0,'GSM,850,900,1800,1900\r\nGSM,900,1800,1900,2100\r\nCDMA\r\n双模（GSM,900,1800,CDMA 1X）\r\n3G(GSM,900,1800,1900,TD-SCDMA )',1,1,1,0),(178,9,'外观样式',1,0,'翻盖\r\n滑盖\r\n直板\r\n折叠',1,6,1,0),(185,9,'颜色',1,1,'黑色\r\n白色\r\n蓝色\r\n金色\r\n粉色\r\n银色\r\n灰色\r\n深李色\r\n黑红色\r\n黑蓝色\r\n白紫色',1,0,0,0),(186,9,'屏幕颜色',1,0,'1600万\r\n262144万',1,0,1,1),(187,9,'屏幕材质',1,0,'TFT',0,0,0,1),(188,9,'屏幕分辨率',1,0,'320×240 像素\r\n240×400 像素\r\n240×320 像素\r\n176x220 像素',1,0,0,1),(210,9,'配件',1,2,'线控耳机\r\n蓝牙耳机\r\n数据线',0,0,0,0),(211,10,'功效',1,0,'美白\r\n修护\r\n保湿\r\n控油\r\n活肤\r\n卸妆\r\n收缩\r\n毛孔\r\n抗敏感\r\n排毒\r\n祛斑\r\n抗菌消炎\r\n去角质\r\n去黑头\r\n均匀肤色\r\n镇静舒缓\r\n去黑色素\r\n调理肌肤\r\n清洁\r\n抗衰老\r\n祛痘\r\n补水\r\n去死皮\r\n淡斑\r\n提亮肤色\r\n清洁毛孔\r\n抗氧化\r\n水油平衡',0,0,0,0),(212,10,'肤质',1,0,'油性 \r\n干性 \r\n中性 \r\n混合型 \r\n敏感性',0,0,0,0),(213,11,'外        观',1,1,'红色\r\n黄色\r\n金色',0,0,0,0),(214,11,'商品品牌',0,0,'',0,0,0,0),(215,11,'商品功效',0,0,'',0,0,0,0),(216,11,'商品规格',0,0,'',0,0,0,0),(217,11,'生产日期',0,0,'',0,0,0,0),(218,11,'商品产地',0,0,'',0,0,0,0),(219,11,'商品包装',0,0,'',0,0,0,0),(220,11,'适宜人群',0,0,'',0,0,0,0),(221,11,'温馨提示',0,0,'',0,0,0,0),(222,11,'物品说明',0,0,'',0,0,0,0);

#
# Structure for table "t_auth_rule"
#

CREATE TABLE `t_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "t_auth_rule"
#


#
# Structure for table "t_auth_item"
#

CREATE TABLE `t_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `t_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `t_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "t_auth_item"
#

INSERT INTO `t_auth_item` VALUES ('auth/auth',3,'auth auth',NULL,NULL,1441634596,1441634596),('auth/auth-item',3,'auth auth item',NULL,NULL,1441634394,1441634394),('auth/auth-item/create',2,'auth auth item create',NULL,NULL,1441634401,1441634401),('auth/auth-item/delete',2,'auth auth item delete',NULL,NULL,1441724574,1441724574),('auth/auth-item/index',2,'auth auth item index',NULL,NULL,1441634394,1441634394),('auth/auth-item/update',2,'auth auth item update',NULL,NULL,1441634730,1441634730),('auth/auth-item/view',2,'auth auth item view',NULL,NULL,1441634616,1441634616),('auth/auth/config',2,'auth auth config',NULL,NULL,1441634631,1441634631),('auth/auth/index',2,'auth auth index',NULL,NULL,1441634596,1441634596),('cms/ad',3,'cms ad',NULL,NULL,1441634212,1441634212),('cms/ad-type',3,'cms ad type',NULL,NULL,1441634233,1441634233),('cms/ad-type/',2,'cms ad type ',NULL,NULL,1441724845,1441724845),('cms/ad-type/create',2,'cms ad type create',NULL,NULL,1444538029,1444538029),('cms/ad-type/delete',2,'cms ad type delete',NULL,NULL,1444534206,1444534206),('cms/ad-type/index',2,'cms ad type index',NULL,NULL,1441634233,1441634233),('cms/ad-type/switch-status',2,'cms ad type switch status',NULL,NULL,1444534033,1444534033),('cms/ad-type/switch-stauts',2,'cms ad type switch stauts',NULL,NULL,1441725154,1441725154),('cms/ad-type/update',2,'cms ad type update',NULL,NULL,1444538010,1444538010),('cms/ad/delete',2,'cms ad delete',NULL,NULL,1444534391,1444534391),('cms/ad/index',2,'cms ad index',NULL,NULL,1441634212,1441634212),('cms/ad/switch-status',2,'cms ad switch status',NULL,NULL,1444534384,1444534384),('cms/cms-class',3,'cms cms class',NULL,NULL,1445052623,1445052623),('cms/cms-class/order',2,'cms cms class order',NULL,NULL,1445052623,1445052623),('cms/cms-page',3,'cms cms page',NULL,NULL,1443019313,1443019313),('cms/cms-page/index',2,'cms cms page index',NULL,NULL,1443019313,1443019313),('cms/column',3,'cms column',NULL,NULL,1441634226,1441634226),('cms/column/',2,'cms column ',NULL,NULL,1442241299,1442241299),('cms/column/create',2,'cms column create',NULL,NULL,1441634239,1441634239),('cms/column/delete',2,'cms column delete',NULL,NULL,1444530042,1444530042),('cms/column/index',2,'cms column index',NULL,NULL,1441634226,1441634226),('cms/column/sizzle.min.map',2,'cms column sizzle.min.map',NULL,NULL,1442242498,1442242498),('cms/column/switch-status',2,'cms column switch status',NULL,NULL,1444530219,1444530219),('cms/column/switch-stauts',2,'cms column switch stauts',NULL,NULL,1444401797,1444401797),('cms/column/update',2,'cms column update',NULL,NULL,1441634248,1441634248),('cms/column/uploadify',2,'cms column uploadify',NULL,NULL,1442241297,1442241297),('cms/column/view',2,'cms column view',NULL,NULL,1441634245,1441634245),('cms/download',3,'cms download',NULL,NULL,1441634231,1441634231),('cms/download/',2,'cms download ',NULL,NULL,1442024251,1442024251),('cms/download/delete',2,'cms download delete',NULL,NULL,1444533595,1444533595),('cms/download/index',2,'cms download index',NULL,NULL,1441634231,1441634231),('cms/download/switch-status',2,'cms download switch status',NULL,NULL,1444533589,1444533589),('cms/flag',3,'cms flag',NULL,NULL,1444535794,1444535794),('cms/flag/create',2,'cms flag create',NULL,NULL,1444536480,1444536480),('cms/flag/index',2,'cms flag index',NULL,NULL,1444535802,1444535802),('cms/flag/sizzle.min.map',2,'cms flag sizzle.min.map',NULL,NULL,1444537299,1444537299),('cms/flag/update',2,'cms flag update',NULL,NULL,1444536853,1444536853),('cms/flag/view',2,'cms flag view',NULL,NULL,1444535794,1444535794),('cms/img',3,'cms img',NULL,NULL,1441634230,1441634230),('cms/img/create',2,'cms img create',NULL,NULL,1445076144,1445076144),('cms/img/index',2,'cms img index',NULL,NULL,1441634230,1441634230),('cms/img/switch-status',2,'cms img switch status',NULL,NULL,1444533572,1444533572),('cms/img/update',2,'cms img update',NULL,NULL,1443842746,1443842746),('cms/img/view',2,'cms img view',NULL,NULL,1445076158,1445076158),('cms/page',3,'cms page',NULL,NULL,1441634227,1441634227),('cms/page/index',2,'cms page index',NULL,NULL,1441634227,1441634227),('cms/page/sizzle.min.map',2,'cms page sizzle.min.map',NULL,NULL,1445052325,1445052325),('cms/page/switch-status',2,'cms page switch status',NULL,NULL,1444533156,1444533156),('cms/page/ueditor',2,'cms page ueditor',NULL,NULL,1441725252,1441725252),('cms/page/update',2,'cms page update',NULL,NULL,1441725250,1441725250),('cms/page/view',2,'cms page view',NULL,NULL,1441810959,1441810959),('cms/post',3,'cms post',NULL,NULL,1441634228,1441634228),('cms/post/',2,'cms post ',NULL,NULL,1444918701,1444918701),('cms/post/create',2,'cms post create',NULL,NULL,1443051438,1443051438),('cms/post/delete',2,'cms post delete',NULL,NULL,1444533339,1444533339),('cms/post/index',2,'cms post index',NULL,NULL,1441634228,1441634228),('cms/post/switch-status',2,'cms post switch status',NULL,NULL,1444533333,1444533333),('cms/post/switch-stauts',2,'cms post switch stauts',NULL,NULL,1443230695,1443230695),('cms/post/update',2,'cms post update',NULL,NULL,1442240205,1442240205),('cms/post/view',2,'cms post view',NULL,NULL,1444533417,1444533417),('customer/customer-address',3,'customer customer address',NULL,NULL,1444918720,1444918720),('customer/customer-address/index',2,'customer customer address index',NULL,NULL,1444918720,1444918720),('customer/customer-group',3,'customer customer group',NULL,NULL,1444918713,1444918713),('customer/customer-group/',2,'customer customer group ',NULL,NULL,1444918734,1444918734),('customer/customer-group/index',2,'customer customer group index',NULL,NULL,1444918713,1444918713),('debug/default',3,'debug default',NULL,NULL,1444407548,1444407548),('debug/default/view',2,'debug default view',NULL,NULL,1444407548,1444407548),('dist/img',3,'dist img',NULL,NULL,1444654551,1444654551),('dist/img/default-50x50.gif',2,'dist img default 50x50.gif',NULL,NULL,1444654551,1444654551),('extend/comment',3,'extend comment',NULL,NULL,1442046119,1442046119),('extend/comment/create',2,'extend comment create',NULL,NULL,1442070016,1442070016),('extend/comment/index',2,'extend comment index',NULL,NULL,1442046119,1442046119),('extend/comment/view',2,'extend comment view',NULL,NULL,1444535649,1444535649),('extend/fragment',3,'extend fragment',NULL,NULL,1442239740,1442239740),('extend/fragment/create',2,'extend fragment create',NULL,NULL,1442239896,1442239896),('extend/fragment/delete',2,'extend fragment delete',NULL,NULL,1442239826,1442239826),('extend/fragment/index',2,'extend fragment index',NULL,NULL,1442239741,1442239741),('extend/fragment/switch-status',2,'extend fragment switch status',NULL,NULL,1444535540,1444535540),('extend/fragment/switch-stauts',2,'extend fragment switch stauts',NULL,NULL,1442239740,1442239740),('extend/job',3,'extend job',NULL,NULL,1442045280,1442045280),('extend/job/create',2,'extend job create',NULL,NULL,1442045604,1442045604),('extend/job/delete',2,'extend job delete',NULL,NULL,1442045767,1442045767),('extend/job/index',2,'extend job index',NULL,NULL,1442045280,1442045280),('extend/job/switch-status',2,'extend job switch status',NULL,NULL,1444535226,1444535226),('extend/job/switch-stauts',2,'extend job switch stauts',NULL,NULL,1442239517,1442239517),('extend/job/update',2,'extend job update',NULL,NULL,1442069827,1442069827),('extend/link',3,'extend link',NULL,NULL,1442032046,1442032046),('extend/link-type',3,'extend link type',NULL,NULL,1442040737,1442040737),('extend/link-type/create',2,'extend link type create',NULL,NULL,1442041241,1442041241),('extend/link-type/delete',2,'extend link type delete',NULL,NULL,1442041779,1442041779),('extend/link-type/index',2,'extend link type index',NULL,NULL,1442040737,1442040737),('extend/link-type/switch-status',2,'extend link type switch status',NULL,NULL,1444535090,1444535090),('extend/link-type/switch-stauts',2,'extend link type switch stauts',NULL,NULL,1442072137,1442072137),('extend/link-type/update',2,'extend link type update',NULL,NULL,1442041454,1442041454),('extend/link-type/view',2,'extend link type view',NULL,NULL,1442041451,1442041451),('extend/link/create',2,'extend link create',NULL,NULL,1442963145,1442963145),('extend/link/delete',2,'extend link delete',NULL,NULL,1444535350,1444535350),('extend/link/index',2,'extend link index',NULL,NULL,1442032046,1442032046),('extend/link/switch-status',2,'extend link switch status',NULL,NULL,1444535347,1444535347),('extend/message',3,'extend message',NULL,NULL,1442045793,1442045793),('extend/message/create',2,'extend message create',NULL,NULL,1442046107,1442046107),('extend/message/delete',2,'extend message delete',NULL,NULL,1444535457,1444535457),('extend/message/index',2,'extend message index',NULL,NULL,1442045793,1442045793),('extend/message/switch-status',2,'extend message switch status',NULL,NULL,1444535450,1444535450),('extend/message/switch-stauts',2,'extend message switch stauts',NULL,NULL,1442239572,1442239572),('extend/message/update',2,'extend message update',NULL,NULL,1442069933,1442069933),('extend/nav',3,'extend nav',NULL,NULL,1442040734,1442040734),('extend/nav/',2,'extend nav ',NULL,NULL,1442073185,1442073185),('extend/nav/1',2,'extend nav 1',NULL,NULL,1444405592,1444405592),('extend/nav/create',2,'extend nav create',NULL,NULL,1442153505,1442153505),('extend/nav/delete',2,'extend nav delete',NULL,NULL,1442072692,1442072692),('extend/nav/index',2,'extend nav index',NULL,NULL,1442040734,1442040734),('extend/nav/sizzle.min.map',2,'extend nav sizzle.min.map',NULL,NULL,1442072997,1442072997),('extend/nav/status',2,'extend nav status',NULL,NULL,1444486270,1444486270),('extend/nav/switch-status',2,'extend nav switch status',NULL,NULL,1444482596,1444482596),('extend/nav/switch-stauts',2,'extend nav switch stauts',NULL,NULL,1442239309,1442239309),('extend/nav/update',2,'extend nav update',NULL,NULL,1442073165,1442073165),('extend/nav/view',2,'extend nav view',NULL,NULL,1442153547,1442153547),('GM',1,'普通管理员',NULL,NULL,1441634616,1441634616),('help/help',3,'help help',NULL,NULL,1442029811,1442029811),('help/help/create',2,'help help create',NULL,NULL,1442029813,1442029813),('help/help/delete',2,'help help delete',NULL,NULL,1442030195,1442030195),('help/help/index',2,'help help index',NULL,NULL,1442029811,1442029811),('help/help/switch-stauts',2,'help help switch stauts',NULL,NULL,1442031877,1442031877),('help/help/update',2,'help help update',NULL,NULL,1442030111,1442030111),('help/help/view',2,'help help view',NULL,NULL,1442030083,1442030083),('order/call',3,'order call',NULL,NULL,1444923570,1444923570),('order/call/create',2,'order call create',NULL,NULL,1444923691,1444923691),('order/call/delete',2,'order call delete',NULL,NULL,1444923645,1444923645),('order/call/index',2,'order call index',NULL,NULL,1444923570,1444923570),('order/call/update',2,'order call update',NULL,NULL,1444923922,1444923922),('order/call/view',2,'order call view',NULL,NULL,1444923705,1444923705),('order/info',3,'order info',NULL,NULL,1444923430,1444923430),('order/info/create',2,'order info create',NULL,NULL,1444923556,1444923556),('order/info/delete',2,'order info delete',NULL,NULL,1444924147,1444924147),('order/info/index',2,'order info index',NULL,NULL,1444923430,1444923430),('order/info/update',2,'order info update',NULL,NULL,1444923500,1444923500),('order/info/view',2,'order info view',NULL,NULL,1444924137,1444924137),('system/cascade-data',3,'system cascade data',NULL,NULL,1444918787,1444918787),('system/cascade-data/create',2,'system cascade data create',NULL,NULL,1445346604,1445346604),('system/cascade-data/demo',2,'system cascade data demo',NULL,NULL,1445346599,1445346599),('system/cascade-data/index',2,'system cascade data index',NULL,NULL,1444918787,1444918787),('system/config',3,'system config',NULL,NULL,1443051485,1443051485),('system/config/',2,'system config ',NULL,NULL,1444029545,1444029545),('system/config/config',2,'system config config',NULL,NULL,1443051485,1443051485),('user/common',3,'user common',NULL,NULL,1441634235,1441634235),('user/common/',2,'user common ',NULL,NULL,1444030430,1444030430),('user/common/about',2,'user common about',NULL,NULL,1442071874,1442071874),('user/common/captcha',2,'user common captcha',NULL,NULL,1443660214,1443660214),('user/common/default',2,'user common default',NULL,NULL,1441634235,1441634235),('user/common/login',2,'user common login',NULL,NULL,1443660213,1443660213),('user/common/logout',2,'user common logout',NULL,NULL,1444030269,1444030269),('user/user',3,'user user',NULL,NULL,1441634745,1441634745),('user/user/create',2,'user user create',NULL,NULL,1441724274,1441724274),('user/user/index',2,'user user index',NULL,NULL,1441634745,1441634745),('user/user/update',2,'user user update',NULL,NULL,1441634749,1441634749);

#
# Structure for table "t_auth_item_child"
#

CREATE TABLE `t_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `t_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `t_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `t_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "t_auth_item_child"
#

INSERT INTO `t_auth_item_child` VALUES ('auth/auth','auth/auth/config'),('auth/auth','auth/auth/index'),('auth/auth-item','auth/auth-item/create'),('auth/auth-item','auth/auth-item/delete'),('auth/auth-item','auth/auth-item/index'),('auth/auth-item','auth/auth-item/update'),('auth/auth-item','auth/auth-item/view'),('cms/ad','cms/ad/delete'),('cms/ad','cms/ad/index'),('cms/ad','cms/ad/switch-status'),('cms/ad-type','cms/ad-type/'),('cms/ad-type','cms/ad-type/create'),('cms/ad-type','cms/ad-type/delete'),('cms/ad-type','cms/ad-type/index'),('cms/ad-type','cms/ad-type/switch-status'),('cms/ad-type','cms/ad-type/switch-stauts'),('cms/ad-type','cms/ad-type/update'),('cms/cms-class','cms/cms-class/order'),('cms/cms-page','cms/cms-page/index'),('cms/column','cms/column/'),('cms/column','cms/column/create'),('cms/column','cms/column/delete'),('cms/column','cms/column/index'),('cms/column','cms/column/sizzle.min.map'),('cms/column','cms/column/switch-status'),('cms/column','cms/column/switch-stauts'),('cms/column','cms/column/update'),('cms/column','cms/column/uploadify'),('cms/column','cms/column/view'),('cms/download','cms/download/'),('cms/download','cms/download/delete'),('cms/download','cms/download/index'),('cms/download','cms/download/switch-status'),('cms/flag','cms/flag/create'),('cms/flag','cms/flag/index'),('cms/flag','cms/flag/sizzle.min.map'),('cms/flag','cms/flag/update'),('cms/flag','cms/flag/view'),('cms/img','cms/img/create'),('cms/img','cms/img/index'),('cms/img','cms/img/switch-status'),('cms/img','cms/img/update'),('cms/img','cms/img/view'),('cms/page','cms/page/index'),('cms/page','cms/page/sizzle.min.map'),('cms/page','cms/page/switch-status'),('cms/page','cms/page/ueditor'),('cms/page','cms/page/update'),('cms/page','cms/page/view'),('cms/post','cms/post/'),('cms/post','cms/post/create'),('cms/post','cms/post/delete'),('cms/post','cms/post/index'),('cms/post','cms/post/switch-status'),('cms/post','cms/post/switch-stauts'),('cms/post','cms/post/update'),('cms/post','cms/post/view'),('customer/customer-address','customer/customer-address/index'),('customer/customer-group','customer/customer-group/'),('customer/customer-group','customer/customer-group/index'),('debug/default','debug/default/view'),('dist/img','dist/img/default-50x50.gif'),('extend/comment','extend/comment/create'),('extend/comment','extend/comment/index'),('extend/comment','extend/comment/view'),('extend/fragment','extend/fragment/create'),('extend/fragment','extend/fragment/delete'),('extend/fragment','extend/fragment/index'),('extend/fragment','extend/fragment/switch-status'),('extend/fragment','extend/fragment/switch-stauts'),('extend/job','extend/job/create'),('extend/job','extend/job/delete'),('extend/job','extend/job/index'),('extend/job','extend/job/switch-status'),('extend/job','extend/job/switch-stauts'),('extend/job','extend/job/update'),('extend/link','extend/link/create'),('extend/link','extend/link/delete'),('extend/link','extend/link/index'),('extend/link','extend/link/switch-status'),('extend/link-type','extend/link-type/create'),('extend/link-type','extend/link-type/delete'),('extend/link-type','extend/link-type/index'),('extend/link-type','extend/link-type/switch-status'),('extend/link-type','extend/link-type/switch-stauts'),('extend/link-type','extend/link-type/update'),('extend/link-type','extend/link-type/view'),('extend/message','extend/message/create'),('extend/message','extend/message/delete'),('extend/message','extend/message/index'),('extend/message','extend/message/switch-status'),('extend/message','extend/message/switch-stauts'),('extend/message','extend/message/update'),('extend/nav','extend/nav/'),('extend/nav','extend/nav/1'),('extend/nav','extend/nav/create'),('extend/nav','extend/nav/delete'),('extend/nav','extend/nav/index'),('extend/nav','extend/nav/sizzle.min.map'),('extend/nav','extend/nav/status'),('extend/nav','extend/nav/switch-status'),('extend/nav','extend/nav/switch-stauts'),('extend/nav','extend/nav/update'),('extend/nav','extend/nav/view'),('GM','auth/auth'),('GM','auth/auth-item'),('GM','cms/ad'),('GM','cms/ad-type'),('GM','cms/column'),('GM','cms/download'),('GM','cms/img'),('GM','cms/page'),('GM','cms/post'),('GM','user/common'),('GM','user/user'),('help/help','help/help/create'),('help/help','help/help/delete'),('help/help','help/help/index'),('help/help','help/help/switch-stauts'),('help/help','help/help/update'),('help/help','help/help/view'),('order/call','order/call/create'),('order/call','order/call/delete'),('order/call','order/call/index'),('order/call','order/call/update'),('order/call','order/call/view'),('order/info','order/info/create'),('order/info','order/info/delete'),('order/info','order/info/index'),('order/info','order/info/update'),('order/info','order/info/view'),('system/cascade-data','system/cascade-data/create'),('system/cascade-data','system/cascade-data/demo'),('system/cascade-data','system/cascade-data/index'),('system/config','system/config/'),('system/config','system/config/config'),('user/common','user/common/'),('user/common','user/common/about'),('user/common','user/common/captcha'),('user/common','user/common/default'),('user/common','user/common/login'),('user/common','user/common/logout'),('user/user','user/user/create'),('user/user','user/user/index'),('user/user','user/user/update');

#
# Structure for table "t_auth_assignment"
#

CREATE TABLE `t_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `t_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `t_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "t_auth_assignment"
#

INSERT INTO `t_auth_assignment` VALUES ('GM','30',1441724269),('GM','31',1441724259),('GM','32',1441724265);

#
# Structure for table "t_brand"
#

CREATE TABLE `t_brand` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '品牌id',
  `name` varchar(120) NOT NULL DEFAULT '' COMMENT '品牌名',
  `image` varchar(500) NOT NULL DEFAULT '' COMMENT '品牌图片',
  `desc` text NOT NULL COMMENT '品牌描述',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '外链',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `is_show` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='品牌表';

#
# Data for table "t_brand"
#

INSERT INTO `t_brand` VALUES (1,'兰蔻','1385070090962310856.jpg','','http://',50,1,0,1439863910),(2,'雅诗兰黛','1385070574091897739.jpg','','http://',50,1,0,0),(14,'迪奥','1385071888294863849.jpg','','http://',50,1,0,0),(24,'思亲肤','1385076375210486006.jpg','','http://',50,1,0,0),(41,'兰芝','1385080502608521813.jpg','','http://',50,1,0,0),(52,'可莱丝','','','',50,1,0,0),(53,'泊美','','','',50,1,0,0),(54,'欧珀莱','','','',50,1,0,0),(55,'丝塔芙','','','',50,1,0,0),(56,'植村秀','','','',50,1,0,0),(57,'婵真','','','',50,1,0,0),(58,'嘉娜宝','','','',50,1,0,0),(59,'英国AA网','','','',50,1,0,0),(66,'理肤泉','','','',50,1,0,0),(67,'蓓丽','','','',50,1,0,0),(68,'曼秀雷敦','','','',50,1,0,0),(69,'肌研','','','',50,1,0,0);

#
# Structure for table "t_cascade_data"
#

CREATE TABLE `t_cascade_data` (
  `id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '主id',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `name` varchar(120) NOT NULL DEFAULT '' COMMENT '名称',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '层级标识',
  `data_group` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '层级组',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `updated_at` (`updated_at`),
  KEY `level` (`level`) COMMENT '层级索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公共数据表';

#
# Data for table "t_cascade_data"
#

INSERT INTO `t_cascade_data` VALUES (1,0,'中国',0,0,1438073858),(2,1,'北京',1,0,0),(3,1,'安徽',1,0,0),(4,1,'福建',1,0,0),(5,1,'甘肃',1,0,0),(6,1,'广东',1,0,0),(7,1,'广西',1,0,0),(8,1,'贵州',1,0,0),(9,1,'海南',1,0,0),(10,1,'河北',1,0,0),(11,1,'河南',1,0,0),(12,1,'黑龙江',1,0,0),(13,1,'湖北',1,0,0),(14,1,'湖南',1,0,0),(15,1,'吉林',1,0,0),(16,1,'江苏',1,0,0),(17,1,'江西',1,0,0),(18,1,'辽宁',1,0,0),(19,1,'内蒙古',1,0,0),(20,1,'宁夏',1,0,0),(21,1,'青海',1,0,0),(22,1,'山东',1,0,0),(23,1,'山西',1,0,0),(24,1,'陕西',1,0,0),(25,1,'上海',1,0,0),(26,1,'四川',1,0,0),(27,1,'天津',1,0,0),(28,1,'西藏',1,0,0),(29,1,'新疆',1,0,0),(30,1,'云南',1,0,0),(31,1,'浙江',1,0,0),(32,1,'重庆',1,0,0),(33,1,'香港',1,0,0),(34,1,'澳门',1,0,0),(35,1,'台湾',1,0,0),(36,3,'安庆',2,0,0),(37,3,'蚌埠',2,0,0),(38,3,'巢湖',2,0,0),(39,3,'池州',2,0,0),(40,3,'滁州',2,0,0),(41,3,'阜阳',2,0,0),(42,3,'淮北',2,0,0),(43,3,'淮南',2,0,0),(44,3,'黄山',2,0,0),(45,3,'六安',2,0,0),(46,3,'马鞍山',2,0,0),(47,3,'宿州',2,0,0),(48,3,'铜陵',2,0,0),(49,3,'芜湖',2,0,0),(50,3,'宣城',2,0,0),(51,3,'亳州',2,0,0),(52,2,'北京',2,0,0),(53,4,'福州',2,0,0),(54,4,'龙岩',2,0,0),(55,4,'南平',2,0,0),(56,4,'宁德',2,0,0),(57,4,'莆田',2,0,0),(58,4,'泉州',2,0,0),(59,4,'三明',2,0,0),(60,4,'厦门',2,0,0),(61,4,'漳州',2,0,0),(62,5,'兰州',2,0,0),(63,5,'白银',2,0,0),(64,5,'定西',2,0,0),(65,5,'甘南',2,0,0),(66,5,'嘉峪关',2,0,0),(67,5,'金昌',2,0,0),(68,5,'酒泉',2,0,0),(69,5,'临夏',2,0,0),(70,5,'陇南',2,0,0),(71,5,'平凉',2,0,0),(72,5,'庆阳',2,0,0),(73,5,'天水',2,0,0),(74,5,'武威',2,0,0),(75,5,'张掖',2,0,0),(76,6,'广州',2,0,0),(77,6,'深圳',2,0,0),(78,6,'潮州',2,0,0),(79,6,'东莞',2,0,0),(80,6,'佛山',2,0,0),(81,6,'河源',2,0,0),(82,6,'惠州',2,0,0),(83,6,'江门',2,0,0),(84,6,'揭阳',2,0,0),(85,6,'茂名',2,0,0),(86,6,'梅州',2,0,0),(87,6,'清远',2,0,0),(88,6,'汕头',2,0,0),(89,6,'汕尾',2,0,0),(90,6,'韶关',2,0,0),(91,6,'阳江',2,0,0),(92,6,'云浮',2,0,0),(93,6,'湛江',2,0,0),(94,6,'肇庆',2,0,0),(95,6,'中山',2,0,0),(96,6,'珠海',2,0,0),(97,7,'南宁',2,0,0),(98,7,'桂林',2,0,0),(99,7,'百色',2,0,0),(100,7,'北海',2,0,0),(101,7,'崇左',2,0,0),(102,7,'防城港',2,0,0),(103,7,'贵港',2,0,0),(104,7,'河池',2,0,0),(105,7,'贺州',2,0,0),(106,7,'来宾',2,0,0),(107,7,'柳州',2,0,0),(108,7,'钦州',2,0,0),(109,7,'梧州',2,0,0),(110,7,'玉林',2,0,0),(111,8,'贵阳',2,0,0),(112,8,'安顺',2,0,0),(113,8,'毕节',2,0,0),(114,8,'六盘水',2,0,0),(115,8,'黔东南',2,0,0),(116,8,'黔南',2,0,0),(117,8,'黔西南',2,0,0),(118,8,'铜仁',2,0,0),(119,8,'遵义',2,0,0),(120,9,'海口',2,0,0),(121,9,'三亚',2,0,0),(122,9,'白沙',2,0,0),(123,9,'保亭',2,0,0),(124,9,'昌江',2,0,0),(125,9,'澄迈县',2,0,0),(126,9,'定安县',2,0,0),(127,9,'东方',2,0,0),(128,9,'乐东',2,0,0),(129,9,'临高县',2,0,0),(130,9,'陵水',2,0,0),(131,9,'琼海',2,0,0),(132,9,'琼中',2,0,0),(133,9,'屯昌县',2,0,0),(134,9,'万宁',2,0,0),(135,9,'文昌',2,0,0),(136,9,'五指山',2,0,0),(137,9,'儋州',2,0,0),(138,10,'石家庄',2,0,0),(139,10,'保定',2,0,0),(140,10,'沧州',2,0,0),(141,10,'承德',2,0,0),(142,10,'邯郸',2,0,0),(143,10,'衡水',2,0,0),(144,10,'廊坊',2,0,0),(145,10,'秦皇岛',2,0,0),(146,10,'唐山',2,0,0),(147,10,'邢台',2,0,0),(148,10,'张家口',2,0,0),(149,11,'郑州',2,0,0),(150,11,'洛阳',2,0,0),(151,11,'开封',2,0,0),(152,11,'安阳',2,0,0),(153,11,'鹤壁',2,0,0),(154,11,'济源',2,0,0),(155,11,'焦作',2,0,0),(156,11,'南阳',2,0,0),(157,11,'平顶山',2,0,0),(158,11,'三门峡',2,0,0),(159,11,'商丘',2,0,0),(160,11,'新乡',2,0,0),(161,11,'信阳',2,0,0),(162,11,'许昌',2,0,0),(163,11,'周口',2,0,0),(164,11,'驻马店',2,0,0),(165,11,'漯河',2,0,0),(166,11,'濮阳',2,0,0),(167,12,'哈尔滨',2,0,0),(168,12,'大庆',2,0,0),(169,12,'大兴安岭',2,0,0),(170,12,'鹤岗',2,0,0),(171,12,'黑河',2,0,0),(172,12,'鸡西',2,0,0),(173,12,'佳木斯',2,0,0),(174,12,'牡丹江',2,0,0),(175,12,'七台河',2,0,0),(176,12,'齐齐哈尔',2,0,0),(177,12,'双鸭山',2,0,0),(178,12,'绥化',2,0,0),(179,12,'伊春',2,0,0),(180,13,'武汉',2,0,0),(181,13,'仙桃',2,0,0),(182,13,'鄂州',2,0,0),(183,13,'黄冈',2,0,0),(184,13,'黄石',2,0,0),(185,13,'荆门',2,0,0),(186,13,'荆州',2,0,0),(187,13,'潜江',2,0,0),(188,13,'神农架林区',2,0,0),(189,13,'十堰',2,0,0),(190,13,'随州',2,0,0),(191,13,'天门',2,0,0),(192,13,'咸宁',2,0,0),(193,13,'襄樊',2,0,0),(194,13,'孝感',2,0,0),(195,13,'宜昌',2,0,0),(196,13,'恩施',2,0,0),(197,14,'长沙',2,0,0),(198,14,'张家界',2,0,0),(199,14,'常德',2,0,0),(200,14,'郴州',2,0,0),(201,14,'衡阳',2,0,0),(202,14,'怀化',2,0,0),(203,14,'娄底',2,0,0),(204,14,'邵阳',2,0,0),(205,14,'湘潭',2,0,0),(206,14,'湘西',2,0,0),(207,14,'益阳',2,0,0),(208,14,'永州',2,0,0),(209,14,'岳阳',2,0,0),(210,14,'株洲',2,0,0),(211,15,'长春',2,0,0),(212,15,'吉林',2,0,0),(213,15,'白城',2,0,0),(214,15,'白山',2,0,0),(215,15,'辽源',2,0,0),(216,15,'四平',2,0,0),(217,15,'松原',2,0,0),(218,15,'通化',2,0,0),(219,15,'延边',2,0,0),(220,16,'南京',2,0,0),(221,16,'苏州',2,0,0),(222,16,'无锡',2,0,0),(223,16,'常州',2,0,0),(224,16,'淮安',2,0,0),(225,16,'连云港',2,0,0),(226,16,'南通',2,0,0),(227,16,'宿迁',2,0,0),(228,16,'泰州',2,0,0),(229,16,'徐州',2,0,0),(230,16,'盐城',2,0,0),(231,16,'扬州',2,0,0),(232,16,'镇江',2,0,0),(233,17,'南昌',2,0,0),(234,17,'抚州',2,0,0),(235,17,'赣州',2,0,0),(236,17,'吉安',2,0,0),(237,17,'景德镇',2,0,0),(238,17,'九江',2,0,0),(239,17,'萍乡',2,0,0),(240,17,'上饶',2,0,0),(241,17,'新余',2,0,0),(242,17,'宜春',2,0,0),(243,17,'鹰潭',2,0,0),(244,18,'沈阳',2,0,0),(245,18,'大连',2,0,0),(246,18,'鞍山',2,0,0),(247,18,'本溪',2,0,0),(248,18,'朝阳',2,0,0),(249,18,'丹东',2,0,0),(250,18,'抚顺',2,0,0),(251,18,'阜新',2,0,0),(252,18,'葫芦岛',2,0,0),(253,18,'锦州',2,0,0),(254,18,'辽阳',2,0,0),(255,18,'盘锦',2,0,0),(256,18,'铁岭',2,0,0),(257,18,'营口',2,0,0),(258,19,'呼和浩特',2,0,0),(259,19,'阿拉善盟',2,0,0),(260,19,'巴彦淖尔盟',2,0,0),(261,19,'包头',2,0,0),(262,19,'赤峰',2,0,0),(263,19,'鄂尔多斯',2,0,0),(264,19,'呼伦贝尔',2,0,0),(265,19,'通辽',2,0,0),(266,19,'乌海',2,0,0),(267,19,'乌兰察布市',2,0,0),(268,19,'锡林郭勒盟',2,0,0),(269,19,'兴安盟',2,0,0),(270,20,'银川',2,0,0),(271,20,'固原',2,0,0),(272,20,'石嘴山',2,0,0),(273,20,'吴忠',2,0,0),(274,20,'中卫',2,0,0),(275,21,'西宁',2,0,0),(276,21,'果洛',2,0,0),(277,21,'海北',2,0,0),(278,21,'海东',2,0,0),(279,21,'海南',2,0,0),(280,21,'海西',2,0,0),(281,21,'黄南',2,0,0),(282,21,'玉树',2,0,0),(283,22,'济南',2,0,0),(284,22,'青岛',2,0,0),(285,22,'滨州',2,0,0),(286,22,'德州',2,0,0),(287,22,'东营',2,0,0),(288,22,'菏泽',2,0,0),(289,22,'济宁',2,0,0),(290,22,'莱芜',2,0,0),(291,22,'聊城',2,0,0),(292,22,'临沂',2,0,0),(293,22,'日照',2,0,0),(294,22,'泰安',2,0,0),(295,22,'威海',2,0,0),(296,22,'潍坊',2,0,0),(297,22,'烟台',2,0,0),(298,22,'枣庄',2,0,0),(299,22,'淄博',2,0,0),(300,23,'太原',2,0,0),(301,23,'长治',2,0,0),(302,23,'大同',2,0,0),(303,23,'晋城',2,0,0),(304,23,'晋中',2,0,0),(305,23,'临汾',2,0,0),(306,23,'吕梁',2,0,0),(307,23,'朔州',2,0,0),(308,23,'忻州',2,0,0),(309,23,'阳泉',2,0,0),(310,23,'运城',2,0,0),(311,24,'西安',2,0,0),(312,24,'安康',2,0,0),(313,24,'宝鸡',2,0,0),(314,24,'汉中',2,0,0),(315,24,'商洛',2,0,0),(316,24,'铜川',2,0,0),(317,24,'渭南',2,0,0),(318,24,'咸阳',2,0,0),(319,24,'延安',2,0,0),(320,24,'榆林',2,0,0),(321,25,'上海',2,0,0),(322,26,'成都',2,0,0),(323,26,'绵阳',2,0,0),(324,26,'阿坝',2,0,0),(325,26,'巴中',2,0,0),(326,26,'达州',2,0,0),(327,26,'德阳',2,0,0),(328,26,'甘孜',2,0,0),(329,26,'广安',2,0,0),(330,26,'广元',2,0,0),(331,26,'乐山',2,0,0),(332,26,'凉山',2,0,0),(333,26,'眉山',2,0,0),(334,26,'南充',2,0,0),(335,26,'内江',2,0,0),(336,26,'攀枝花',2,0,0),(337,26,'遂宁',2,0,0),(338,26,'雅安',2,0,0),(339,26,'宜宾',2,0,0),(340,26,'资阳',2,0,0),(341,26,'自贡',2,0,0),(342,26,'泸州',2,0,0),(343,27,'天津',2,0,0),(344,28,'拉萨',2,0,0),(345,28,'阿里',2,0,0),(346,28,'昌都',2,0,0),(347,28,'林芝',2,0,0),(348,28,'那曲',2,0,0),(349,28,'日喀则',2,0,0),(350,28,'山南',2,0,0),(351,29,'乌鲁木齐',2,0,0),(352,29,'阿克苏',2,0,0),(353,29,'阿拉尔',2,0,0),(354,29,'巴音郭楞',2,0,0),(355,29,'博尔塔拉',2,0,0),(356,29,'昌吉',2,0,0),(357,29,'哈密',2,0,0),(358,29,'和田',2,0,0),(359,29,'喀什',2,0,0),(360,29,'克拉玛依',2,0,0),(361,29,'克孜勒苏',2,0,0),(362,29,'石河子',2,0,0),(363,29,'图木舒克',2,0,0),(364,29,'吐鲁番',2,0,0),(365,29,'五家渠',2,0,0),(366,29,'伊犁',2,0,0),(367,30,'昆明',2,0,0),(368,30,'怒江',2,0,0),(369,30,'普洱',2,0,0),(370,30,'丽江',2,0,0),(371,30,'保山',2,0,0),(372,30,'楚雄',2,0,0),(373,30,'大理',2,0,0),(374,30,'德宏',2,0,0),(375,30,'迪庆',2,0,0),(376,30,'红河',2,0,0),(377,30,'临沧',2,0,0),(378,30,'曲靖',2,0,0),(379,30,'文山',2,0,0),(380,30,'西双版纳',2,0,0),(381,30,'玉溪',2,0,0),(382,30,'昭通',2,0,0),(383,31,'杭州',2,0,0),(384,31,'湖州',2,0,0),(385,31,'嘉兴',2,0,0),(386,31,'金华',2,0,0),(387,31,'丽水',2,0,0),(388,31,'宁波',2,0,0),(389,31,'绍兴',2,0,0),(390,31,'台州',2,0,0),(391,31,'温州',2,0,0),(392,31,'舟山',2,0,0),(393,31,'衢州',2,0,0),(394,32,'重庆',2,0,0),(395,33,'香港',2,0,0),(396,34,'澳门',2,0,0),(397,35,'台湾',2,0,0),(398,36,'迎江区',3,0,0),(399,36,'大观区',3,0,0),(400,36,'宜秀区',3,0,0),(401,36,'桐城市',3,0,0),(402,36,'怀宁县',3,0,0),(403,36,'枞阳县',3,0,0),(404,36,'潜山县',3,0,0),(405,36,'太湖县',3,0,0),(406,36,'宿松县',3,0,0),(407,36,'望江县',3,0,0),(408,36,'岳西县',3,0,0),(409,37,'中市区',3,0,0),(410,37,'东市区',3,0,0),(411,37,'西市区',3,0,0),(412,37,'郊区',3,0,0),(413,37,'怀远县',3,0,0),(414,37,'五河县',3,0,0),(415,37,'固镇县',3,0,0),(416,38,'居巢区',3,0,0),(417,38,'庐江县',3,0,0),(418,38,'无为县',3,0,0),(419,38,'含山县',3,0,0),(420,38,'和县',3,0,0),(421,39,'贵池区',3,0,0),(422,39,'东至县',3,0,0),(423,39,'石台县',3,0,0),(424,39,'青阳县',3,0,0),(425,40,'琅琊区',3,0,0),(426,40,'南谯区',3,0,0),(427,40,'天长市',3,0,0),(428,40,'明光市',3,0,0),(429,40,'来安县',3,0,0),(430,40,'全椒县',3,0,0),(431,40,'定远县',3,0,0),(432,40,'凤阳县',3,0,0),(433,41,'蚌山区',3,0,0),(434,41,'龙子湖区',3,0,0),(435,41,'禹会区',3,0,0),(436,41,'淮上区',3,0,0),(437,41,'颍州区',3,0,0),(438,41,'颍东区',3,0,0),(439,41,'颍泉区',3,0,0),(440,41,'界首市',3,0,0),(441,41,'临泉县',3,0,0),(442,41,'太和县',3,0,0),(443,41,'阜南县',3,0,0),(444,41,'颖上县',3,0,0),(445,42,'相山区',3,0,0),(446,42,'杜集区',3,0,0),(447,42,'烈山区',3,0,0),(448,42,'濉溪县',3,0,0),(449,43,'田家庵区',3,0,0),(450,43,'大通区',3,0,0),(451,43,'谢家集区',3,0,0),(452,43,'八公山区',3,0,0),(453,43,'潘集区',3,0,0),(454,43,'凤台县',3,0,0),(455,44,'屯溪区',3,0,0),(456,44,'黄山区',3,0,0),(457,44,'徽州区',3,0,0),(458,44,'歙县',3,0,0),(459,44,'休宁县',3,0,0),(460,44,'黟县',3,0,0),(461,44,'祁门县',3,0,0),(462,45,'金安区',3,0,0),(463,45,'裕安区',3,0,0),(464,45,'寿县',3,0,0),(465,45,'霍邱县',3,0,0),(466,45,'舒城县',3,0,0),(467,45,'金寨县',3,0,0),(468,45,'霍山县',3,0,0),(469,46,'雨山区',3,0,0),(470,46,'花山区',3,0,0),(471,46,'金家庄区',3,0,0),(472,46,'当涂县',3,0,0),(473,47,'埇桥区',3,0,0),(474,47,'砀山县',3,0,0),(475,47,'萧县',3,0,0),(476,47,'灵璧县',3,0,0),(477,47,'泗县',3,0,0),(478,48,'铜官山区',3,0,0),(479,48,'狮子山区',3,0,0),(480,48,'郊区',3,0,0),(481,48,'铜陵县',3,0,0),(482,49,'镜湖区',3,0,0),(483,49,'弋江区',3,0,0),(484,49,'鸠江区',3,0,0),(485,49,'三山区',3,0,0),(486,49,'芜湖县',3,0,0),(487,49,'繁昌县',3,0,0),(488,49,'南陵县',3,0,0),(489,50,'宣州区',3,0,0),(490,50,'宁国市',3,0,0),(491,50,'郎溪县',3,0,0),(492,50,'广德县',3,0,0),(493,50,'泾县',3,0,0),(494,50,'绩溪县',3,0,0),(495,50,'旌德县',3,0,0),(496,51,'涡阳县',3,0,0),(497,51,'蒙城县',3,0,0),(498,51,'利辛县',3,0,0),(499,51,'谯城区',3,0,0),(500,52,'东城区',3,0,0),(501,52,'西城区',3,0,0),(502,52,'海淀区',3,0,0),(503,52,'朝阳区',3,0,0),(504,52,'崇文区',3,0,0),(505,52,'宣武区',3,0,0),(506,52,'丰台区',3,0,0),(507,52,'石景山区',3,0,0),(508,52,'房山区',3,0,0),(509,52,'门头沟区',3,0,0),(510,52,'通州区',3,0,0),(511,52,'顺义区',3,0,0),(512,52,'昌平区',3,0,0),(513,52,'怀柔区',3,0,0),(514,52,'平谷区',3,0,0),(515,52,'大兴区',3,0,0),(516,52,'密云县',3,0,0),(517,52,'延庆县',3,0,0),(518,53,'鼓楼区',3,0,0),(519,53,'台江区',3,0,0),(520,53,'仓山区',3,0,0),(521,53,'马尾区',3,0,0),(522,53,'晋安区',3,0,0),(523,53,'福清市',3,0,0),(524,53,'长乐市',3,0,0),(525,53,'闽侯县',3,0,0),(526,53,'连江县',3,0,0),(527,53,'罗源县',3,0,0),(528,53,'闽清县',3,0,0),(529,53,'永泰县',3,0,0),(530,53,'平潭县',3,0,0),(531,54,'新罗区',3,0,0),(532,54,'漳平市',3,0,0),(533,54,'长汀县',3,0,0),(534,54,'永定县',3,0,0),(535,54,'上杭县',3,0,0),(536,54,'武平县',3,0,0),(537,54,'连城县',3,0,0),(538,55,'延平区',3,0,0),(539,55,'邵武市',3,0,0),(540,55,'武夷山市',3,0,0),(541,55,'建瓯市',3,0,0),(542,55,'建阳市',3,0,0),(543,55,'顺昌县',3,0,0),(544,55,'浦城县',3,0,0),(545,55,'光泽县',3,0,0),(546,55,'松溪县',3,0,0),(547,55,'政和县',3,0,0),(548,56,'蕉城区',3,0,0),(549,56,'福安市',3,0,0),(550,56,'福鼎市',3,0,0),(551,56,'霞浦县',3,0,0),(552,56,'古田县',3,0,0),(553,56,'屏南县',3,0,0),(554,56,'寿宁县',3,0,0),(555,56,'周宁县',3,0,0),(556,56,'柘荣县',3,0,0),(557,57,'城厢区',3,0,0),(558,57,'涵江区',3,0,0),(559,57,'荔城区',3,0,0),(560,57,'秀屿区',3,0,0),(561,57,'仙游县',3,0,0),(562,58,'鲤城区',3,0,0),(563,58,'丰泽区',3,0,0),(564,58,'洛江区',3,0,0),(565,58,'清濛开发区',3,0,0),(566,58,'泉港区',3,0,0),(567,58,'石狮市',3,0,0),(568,58,'晋江市',3,0,0),(569,58,'南安市',3,0,0),(570,58,'惠安县',3,0,0),(571,58,'安溪县',3,0,0),(572,58,'永春县',3,0,0),(573,58,'德化县',3,0,0),(574,58,'金门县',3,0,0),(575,59,'梅列区',3,0,0),(576,59,'三元区',3,0,0),(577,59,'永安市',3,0,0),(578,59,'明溪县',3,0,0),(579,59,'清流县',3,0,0),(580,59,'宁化县',3,0,0),(581,59,'大田县',3,0,0),(582,59,'尤溪县',3,0,0),(583,59,'沙县',3,0,0),(584,59,'将乐县',3,0,0),(585,59,'泰宁县',3,0,0),(586,59,'建宁县',3,0,0),(587,60,'思明区',3,0,0),(588,60,'海沧区',3,0,0),(589,60,'湖里区',3,0,0),(590,60,'集美区',3,0,0),(591,60,'同安区',3,0,0),(592,60,'翔安区',3,0,0),(593,61,'芗城区',3,0,0),(594,61,'龙文区',3,0,0),(595,61,'龙海市',3,0,0),(596,61,'云霄县',3,0,0),(597,61,'漳浦县',3,0,0),(598,61,'诏安县',3,0,0),(599,61,'长泰县',3,0,0),(600,61,'东山县',3,0,0),(601,61,'南靖县',3,0,0),(602,61,'平和县',3,0,0),(603,61,'华安县',3,0,0),(604,62,'皋兰县',3,0,0),(605,62,'城关区',3,0,0),(606,62,'七里河区',3,0,0),(607,62,'西固区',3,0,0),(608,62,'安宁区',3,0,0),(609,62,'红古区',3,0,0),(610,62,'永登县',3,0,0),(611,62,'榆中县',3,0,0),(612,63,'白银区',3,0,0),(613,63,'平川区',3,0,0),(614,63,'会宁县',3,0,0),(615,63,'景泰县',3,0,0),(616,63,'靖远县',3,0,0),(617,64,'临洮县',3,0,0),(618,64,'陇西县',3,0,0),(619,64,'通渭县',3,0,0),(620,64,'渭源县',3,0,0),(621,64,'漳县',3,0,0),(622,64,'岷县',3,0,0),(623,64,'安定区',3,0,0),(624,64,'安定区',3,0,0),(625,65,'合作市',3,0,0),(626,65,'临潭县',3,0,0),(627,65,'卓尼县',3,0,0),(628,65,'舟曲县',3,0,0),(629,65,'迭部县',3,0,0),(630,65,'玛曲县',3,0,0),(631,65,'碌曲县',3,0,0),(632,65,'夏河县',3,0,0),(633,66,'嘉峪关市',3,0,0),(634,67,'金川区',3,0,0),(635,67,'永昌县',3,0,0),(636,68,'肃州区',3,0,0),(637,68,'玉门市',3,0,0),(638,68,'敦煌市',3,0,0),(639,68,'金塔县',3,0,0),(640,68,'瓜州县',3,0,0),(641,68,'肃北',3,0,0),(642,68,'阿克塞',3,0,0),(643,69,'临夏市',3,0,0),(644,69,'临夏县',3,0,0),(645,69,'康乐县',3,0,0),(646,69,'永靖县',3,0,0),(647,69,'广河县',3,0,0),(648,69,'和政县',3,0,0),(649,69,'东乡族自治县',3,0,0),(650,69,'积石山',3,0,0),(651,70,'成县',3,0,0),(652,70,'徽县',3,0,0),(653,70,'康县',3,0,0),(654,70,'礼县',3,0,0),(655,70,'两当县',3,0,0),(656,70,'文县',3,0,0),(657,70,'西和县',3,0,0),(658,70,'宕昌县',3,0,0),(659,70,'武都区',3,0,0),(660,71,'崇信县',3,0,0),(661,71,'华亭县',3,0,0),(662,71,'静宁县',3,0,0),(663,71,'灵台县',3,0,0),(664,71,'崆峒区',3,0,0),(665,71,'庄浪县',3,0,0),(666,71,'泾川县',3,0,0),(667,72,'合水县',3,0,0),(668,72,'华池县',3,0,0),(669,72,'环县',3,0,0),(670,72,'宁县',3,0,0),(671,72,'庆城县',3,0,0),(672,72,'西峰区',3,0,0),(673,72,'镇原县',3,0,0),(674,72,'正宁县',3,0,0),(675,73,'甘谷县',3,0,0),(676,73,'秦安县',3,0,0),(677,73,'清水县',3,0,0),(678,73,'秦州区',3,0,0),(679,73,'麦积区',3,0,0),(680,73,'武山县',3,0,0),(681,73,'张家川',3,0,0),(682,74,'古浪县',3,0,0),(683,74,'民勤县',3,0,0),(684,74,'天祝',3,0,0),(685,74,'凉州区',3,0,0),(686,75,'高台县',3,0,0),(687,75,'临泽县',3,0,0),(688,75,'民乐县',3,0,0),(689,75,'山丹县',3,0,0),(690,75,'肃南',3,0,0),(691,75,'甘州区',3,0,0),(692,76,'从化市',3,0,0),(693,76,'天河区',3,0,0),(694,76,'东山区',3,0,0),(695,76,'白云区',3,0,0),(696,76,'海珠区',3,0,0),(697,76,'荔湾区',3,0,0),(698,76,'越秀区',3,0,0),(699,76,'黄埔区',3,0,0),(700,76,'番禺区',3,0,0),(701,76,'花都区',3,0,0),(702,76,'增城区',3,0,0),(703,76,'从化区',3,0,0),(704,76,'市郊',3,0,0),(705,77,'福田区',3,0,0),(706,77,'罗湖区',3,0,0),(707,77,'南山区',3,0,0),(708,77,'宝安区',3,0,0),(709,77,'龙岗区',3,0,0),(710,77,'盐田区',3,0,0),(711,78,'湘桥区',3,0,0),(712,78,'潮安县',3,0,0),(713,78,'饶平县',3,0,0),(714,79,'南城区',3,0,0),(715,79,'东城区',3,0,0),(716,79,'万江区',3,0,0),(717,79,'莞城区',3,0,0),(718,79,'石龙镇',3,0,0),(719,79,'虎门镇',3,0,0),(720,79,'麻涌镇',3,0,0),(721,79,'道滘镇',3,0,0),(722,79,'石碣镇',3,0,0),(723,79,'沙田镇',3,0,0),(724,79,'望牛墩镇',3,0,0),(725,79,'洪梅镇',3,0,0),(726,79,'茶山镇',3,0,0),(727,79,'寮步镇',3,0,0),(728,79,'大岭山镇',3,0,0),(729,79,'大朗镇',3,0,0),(730,79,'黄江镇',3,0,0),(731,79,'樟木头',3,0,0),(732,79,'凤岗镇',3,0,0),(733,79,'塘厦镇',3,0,0),(734,79,'谢岗镇',3,0,0),(735,79,'厚街镇',3,0,0),(736,79,'清溪镇',3,0,0),(737,79,'常平镇',3,0,0),(738,79,'桥头镇',3,0,0),(739,79,'横沥镇',3,0,0),(740,79,'东坑镇',3,0,0),(741,79,'企石镇',3,0,0),(742,79,'石排镇',3,0,0),(743,79,'长安镇',3,0,0),(744,79,'中堂镇',3,0,0),(745,79,'高埗镇',3,0,0),(746,80,'禅城区',3,0,0),(747,80,'南海区',3,0,0),(748,80,'顺德区',3,0,0),(749,80,'三水区',3,0,0),(750,80,'高明区',3,0,0),(751,81,'东源县',3,0,0),(752,81,'和平县',3,0,0),(753,81,'源城区',3,0,0),(754,81,'连平县',3,0,0),(755,81,'龙川县',3,0,0),(756,81,'紫金县',3,0,0),(757,82,'惠阳区',3,0,0),(758,82,'惠城区',3,0,0),(759,82,'大亚湾',3,0,0),(760,82,'博罗县',3,0,0),(761,82,'惠东县',3,0,0),(762,82,'龙门县',3,0,0),(763,83,'江海区',3,0,0),(764,83,'蓬江区',3,0,0),(765,83,'新会区',3,0,0),(766,83,'台山市',3,0,0),(767,83,'开平市',3,0,0),(768,83,'鹤山市',3,0,0),(769,83,'恩平市',3,0,0),(770,84,'榕城区',3,0,0),(771,84,'普宁市',3,0,0),(772,84,'揭东县',3,0,0),(773,84,'揭西县',3,0,0),(774,84,'惠来县',3,0,0),(775,85,'茂南区',3,0,0),(776,85,'茂港区',3,0,0),(777,85,'高州市',3,0,0),(778,85,'化州市',3,0,0),(779,85,'信宜市',3,0,0),(780,85,'电白县',3,0,0),(781,86,'梅县',3,0,0),(782,86,'梅江区',3,0,0),(783,86,'兴宁市',3,0,0),(784,86,'大埔县',3,0,0),(785,86,'丰顺县',3,0,0),(786,86,'五华县',3,0,0),(787,86,'平远县',3,0,0),(788,86,'蕉岭县',3,0,0),(789,87,'清城区',3,0,0),(790,87,'英德市',3,0,0),(791,87,'连州市',3,0,0),(792,87,'佛冈县',3,0,0),(793,87,'阳山县',3,0,0),(794,87,'清新县',3,0,0),(795,87,'连山',3,0,0),(796,87,'连南',3,0,0),(797,88,'南澳县',3,0,0),(798,88,'潮阳区',3,0,0),(799,88,'澄海区',3,0,0),(800,88,'龙湖区',3,0,0),(801,88,'金平区',3,0,0),(802,88,'濠江区',3,0,0),(803,88,'潮南区',3,0,0),(804,89,'城区',3,0,0),(805,89,'陆丰市',3,0,0),(806,89,'海丰县',3,0,0),(807,89,'陆河县',3,0,0),(808,90,'曲江县',3,0,0),(809,90,'浈江区',3,0,0),(810,90,'武江区',3,0,0),(811,90,'曲江区',3,0,0),(812,90,'乐昌市',3,0,0),(813,90,'南雄市',3,0,0),(814,90,'始兴县',3,0,0),(815,90,'仁化县',3,0,0),(816,90,'翁源县',3,0,0),(817,90,'新丰县',3,0,0),(818,90,'乳源',3,0,0),(819,91,'江城区',3,0,0),(820,91,'阳春市',3,0,0),(821,91,'阳西县',3,0,0),(822,91,'阳东县',3,0,0),(823,92,'云城区',3,0,0),(824,92,'罗定市',3,0,0),(825,92,'新兴县',3,0,0),(826,92,'郁南县',3,0,0),(827,92,'云安县',3,0,0),(828,93,'赤坎区',3,0,0),(829,93,'霞山区',3,0,0),(830,93,'坡头区',3,0,0),(831,93,'麻章区',3,0,0),(832,93,'廉江市',3,0,0),(833,93,'雷州市',3,0,0),(834,93,'吴川市',3,0,0),(835,93,'遂溪县',3,0,0),(836,93,'徐闻县',3,0,0),(837,94,'肇庆市',3,0,0),(838,94,'高要市',3,0,0),(839,94,'四会市',3,0,0),(840,94,'广宁县',3,0,0),(841,94,'怀集县',3,0,0),(842,94,'封开县',3,0,0),(843,94,'德庆县',3,0,0),(844,95,'石岐街道',3,0,0),(845,95,'东区街道',3,0,0),(846,95,'西区街道',3,0,0),(847,95,'环城街道',3,0,0),(848,95,'中山港街道',3,0,0),(849,95,'五桂山街道',3,0,0),(850,96,'香洲区',3,0,0),(851,96,'斗门区',3,0,0),(852,96,'金湾区',3,0,0),(853,97,'邕宁区',3,0,0),(854,97,'青秀区',3,0,0),(855,97,'兴宁区',3,0,0),(856,97,'良庆区',3,0,0),(857,97,'西乡塘区',3,0,0),(858,97,'江南区',3,0,0),(859,97,'武鸣县',3,0,0),(860,97,'隆安县',3,0,0),(861,97,'马山县',3,0,0),(862,97,'上林县',3,0,0),(863,97,'宾阳县',3,0,0),(864,97,'横县',3,0,0),(865,98,'秀峰区',3,0,0),(866,98,'叠彩区',3,0,0),(867,98,'象山区',3,0,0),(868,98,'七星区',3,0,0),(869,98,'雁山区',3,0,0),(870,98,'阳朔县',3,0,0),(871,98,'临桂县',3,0,0),(872,98,'灵川县',3,0,0),(873,98,'全州县',3,0,0),(874,98,'平乐县',3,0,0),(875,98,'兴安县',3,0,0),(876,98,'灌阳县',3,0,0),(877,98,'荔浦县',3,0,0),(878,98,'资源县',3,0,0),(879,98,'永福县',3,0,0),(880,98,'龙胜',3,0,0),(881,98,'恭城',3,0,0),(882,99,'右江区',3,0,0),(883,99,'凌云县',3,0,0),(884,99,'平果县',3,0,0),(885,99,'西林县',3,0,0),(886,99,'乐业县',3,0,0),(887,99,'德保县',3,0,0),(888,99,'田林县',3,0,0),(889,99,'田阳县',3,0,0),(890,99,'靖西县',3,0,0),(891,99,'田东县',3,0,0),(892,99,'那坡县',3,0,0),(893,99,'隆林',3,0,0),(894,100,'海城区',3,0,0),(895,100,'银海区',3,0,0),(896,100,'铁山港区',3,0,0),(897,100,'合浦县',3,0,0),(898,101,'江州区',3,0,0),(899,101,'凭祥市',3,0,0),(900,101,'宁明县',3,0,0),(901,101,'扶绥县',3,0,0),(902,101,'龙州县',3,0,0),(903,101,'大新县',3,0,0),(904,101,'天等县',3,0,0),(905,102,'港口区',3,0,0),(906,102,'防城区',3,0,0),(907,102,'东兴市',3,0,0),(908,102,'上思县',3,0,0),(909,103,'港北区',3,0,0),(910,103,'港南区',3,0,0),(911,103,'覃塘区',3,0,0),(912,103,'桂平市',3,0,0),(913,103,'平南县',3,0,0),(914,104,'金城江区',3,0,0),(915,104,'宜州市',3,0,0),(916,104,'天峨县',3,0,0),(917,104,'凤山县',3,0,0),(918,104,'南丹县',3,0,0),(919,104,'东兰县',3,0,0),(920,104,'都安',3,0,0),(921,104,'罗城',3,0,0),(922,104,'巴马',3,0,0),(923,104,'环江',3,0,0),(924,104,'大化',3,0,0),(925,105,'八步区',3,0,0),(926,105,'钟山县',3,0,0),(927,105,'昭平县',3,0,0),(928,105,'富川',3,0,0),(929,106,'兴宾区',3,0,0),(930,106,'合山市',3,0,0),(931,106,'象州县',3,0,0),(932,106,'武宣县',3,0,0),(933,106,'忻城县',3,0,0),(934,106,'金秀',3,0,0),(935,107,'城中区',3,0,0),(936,107,'鱼峰区',3,0,0),(937,107,'柳北区',3,0,0),(938,107,'柳南区',3,0,0),(939,107,'柳江县',3,0,0),(940,107,'柳城县',3,0,0),(941,107,'鹿寨县',3,0,0),(942,107,'融安县',3,0,0),(943,107,'融水',3,0,0),(944,107,'三江',3,0,0),(945,108,'钦南区',3,0,0),(946,108,'钦北区',3,0,0),(947,108,'灵山县',3,0,0),(948,108,'浦北县',3,0,0),(949,109,'万秀区',3,0,0),(950,109,'蝶山区',3,0,0),(951,109,'长洲区',3,0,0),(952,109,'岑溪市',3,0,0),(953,109,'苍梧县',3,0,0),(954,109,'藤县',3,0,0),(955,109,'蒙山县',3,0,0),(956,110,'玉州区',3,0,0),(957,110,'北流市',3,0,0),(958,110,'容县',3,0,0),(959,110,'陆川县',3,0,0),(960,110,'博白县',3,0,0),(961,110,'兴业县',3,0,0),(962,111,'南明区',3,0,0),(963,111,'云岩区',3,0,0),(964,111,'花溪区',3,0,0),(965,111,'乌当区',3,0,0),(966,111,'白云区',3,0,0),(967,111,'小河区',3,0,0),(968,111,'金阳新区',3,0,0),(969,111,'新天园区',3,0,0),(970,111,'清镇市',3,0,0),(971,111,'开阳县',3,0,0),(972,111,'修文县',3,0,0),(973,111,'息烽县',3,0,0),(974,112,'西秀区',3,0,0),(975,112,'关岭',3,0,0),(976,112,'镇宁',3,0,0),(977,112,'紫云',3,0,0),(978,112,'平坝县',3,0,0),(979,112,'普定县',3,0,0),(980,113,'毕节市',3,0,0),(981,113,'大方县',3,0,0),(982,113,'黔西县',3,0,0),(983,113,'金沙县',3,0,0),(984,113,'织金县',3,0,0),(985,113,'纳雍县',3,0,0),(986,113,'赫章县',3,0,0),(987,113,'威宁',3,0,0),(988,114,'钟山区',3,0,0),(989,114,'六枝特区',3,0,0),(990,114,'水城县',3,0,0),(991,114,'盘县',3,0,0),(992,115,'凯里市',3,0,0),(993,115,'黄平县',3,0,0),(994,115,'施秉县',3,0,0),(995,115,'三穗县',3,0,0),(996,115,'镇远县',3,0,0),(997,115,'岑巩县',3,0,0),(998,115,'天柱县',3,0,0),(999,115,'锦屏县',3,0,0),(1000,115,'剑河县',3,0,0),(1001,115,'台江县',3,0,0),(1002,115,'黎平县',3,0,0),(1003,115,'榕江县',3,0,0),(1004,115,'从江县',3,0,0),(1005,115,'雷山县',3,0,0),(1006,115,'麻江县',3,0,0),(1007,115,'丹寨县',3,0,0),(1008,116,'都匀市',3,0,0),(1009,116,'福泉市',3,0,0),(1010,116,'荔波县',3,0,0),(1011,116,'贵定县',3,0,0),(1012,116,'瓮安县',3,0,0),(1013,116,'独山县',3,0,0),(1014,116,'平塘县',3,0,0),(1015,116,'罗甸县',3,0,0),(1016,116,'长顺县',3,0,0),(1017,116,'龙里县',3,0,0),(1018,116,'惠水县',3,0,0),(1019,116,'三都',3,0,0),(1020,117,'兴义市',3,0,0),(1021,117,'兴仁县',3,0,0),(1022,117,'普安县',3,0,0),(1023,117,'晴隆县',3,0,0),(1024,117,'贞丰县',3,0,0),(1025,117,'望谟县',3,0,0),(1026,117,'册亨县',3,0,0),(1027,117,'安龙县',3,0,0),(1028,118,'铜仁市',3,0,0),(1029,118,'江口县',3,0,0),(1030,118,'石阡县',3,0,0),(1031,118,'思南县',3,0,0),(1032,118,'德江县',3,0,0),(1033,118,'玉屏',3,0,0),(1034,118,'印江',3,0,0),(1035,118,'沿河',3,0,0),(1036,118,'松桃',3,0,0),(1037,118,'万山特区',3,0,0),(1038,119,'红花岗区',3,0,0),(1039,119,'务川县',3,0,0),(1040,119,'道真县',3,0,0),(1041,119,'汇川区',3,0,0),(1042,119,'赤水市',3,0,0),(1043,119,'仁怀市',3,0,0),(1044,119,'遵义县',3,0,0),(1045,119,'桐梓县',3,0,0),(1046,119,'绥阳县',3,0,0),(1047,119,'正安县',3,0,0),(1048,119,'凤冈县',3,0,0),(1049,119,'湄潭县',3,0,0),(1050,119,'余庆县',3,0,0),(1051,119,'习水县',3,0,0),(1052,119,'道真',3,0,0),(1053,119,'务川',3,0,0),(1054,120,'秀英区',3,0,0),(1055,120,'龙华区',3,0,0),(1056,120,'琼山区',3,0,0),(1057,120,'美兰区',3,0,0),(1058,137,'市区',3,0,0),(1059,137,'洋浦开发区',3,0,0),(1060,137,'那大镇',3,0,0),(1061,137,'王五镇',3,0,0),(1062,137,'雅星镇',3,0,0),(1063,137,'大成镇',3,0,0),(1064,137,'中和镇',3,0,0),(1065,137,'峨蔓镇',3,0,0),(1066,137,'南丰镇',3,0,0),(1067,137,'白马井镇',3,0,0),(1068,137,'兰洋镇',3,0,0),(1069,137,'和庆镇',3,0,0),(1070,137,'海头镇',3,0,0),(1071,137,'排浦镇',3,0,0),(1072,137,'东成镇',3,0,0),(1073,137,'光村镇',3,0,0),(1074,137,'木棠镇',3,0,0),(1075,137,'新州镇',3,0,0),(1076,137,'三都镇',3,0,0),(1077,137,'其他',3,0,0),(1078,138,'长安区',3,0,0),(1079,138,'桥东区',3,0,0),(1080,138,'桥西区',3,0,0),(1081,138,'新华区',3,0,0),(1082,138,'裕华区',3,0,0),(1083,138,'井陉矿区',3,0,0),(1084,138,'高新区',3,0,0),(1085,138,'辛集市',3,0,0),(1086,138,'藁城市',3,0,0),(1087,138,'晋州市',3,0,0),(1088,138,'新乐市',3,0,0),(1089,138,'鹿泉市',3,0,0),(1090,138,'井陉县',3,0,0),(1091,138,'正定县',3,0,0),(1092,138,'栾城县',3,0,0),(1093,138,'行唐县',3,0,0),(1094,138,'灵寿县',3,0,0),(1095,138,'高邑县',3,0,0),(1096,138,'深泽县',3,0,0),(1097,138,'赞皇县',3,0,0),(1098,138,'无极县',3,0,0),(1099,138,'平山县',3,0,0),(1100,138,'元氏县',3,0,0),(1101,138,'赵县',3,0,0),(1102,139,'新市区',3,0,0),(1103,139,'南市区',3,0,0),(1104,139,'北市区',3,0,0),(1105,139,'涿州市',3,0,0),(1106,139,'定州市',3,0,0),(1107,139,'安国市',3,0,0),(1108,139,'高碑店市',3,0,0),(1109,139,'满城县',3,0,0),(1110,139,'清苑县',3,0,0),(1111,139,'涞水县',3,0,0),(1112,139,'阜平县',3,0,0),(1113,139,'徐水县',3,0,0),(1114,139,'定兴县',3,0,0),(1115,139,'唐县',3,0,0),(1116,139,'高阳县',3,0,0),(1117,139,'容城县',3,0,0),(1118,139,'涞源县',3,0,0),(1119,139,'望都县',3,0,0),(1120,139,'安新县',3,0,0),(1121,139,'易县',3,0,0),(1122,139,'曲阳县',3,0,0),(1123,139,'蠡县',3,0,0),(1124,139,'顺平县',3,0,0),(1125,139,'博野县',3,0,0),(1126,139,'雄县',3,0,0),(1127,140,'运河区',3,0,0),(1128,140,'新华区',3,0,0),(1129,140,'泊头市',3,0,0),(1130,140,'任丘市',3,0,0),(1131,140,'黄骅市',3,0,0),(1132,140,'河间市',3,0,0),(1133,140,'沧县',3,0,0),(1134,140,'青县',3,0,0),(1135,140,'东光县',3,0,0),(1136,140,'海兴县',3,0,0),(1137,140,'盐山县',3,0,0),(1138,140,'肃宁县',3,0,0),(1139,140,'南皮县',3,0,0),(1140,140,'吴桥县',3,0,0),(1141,140,'献县',3,0,0),(1142,140,'孟村',3,0,0),(1143,141,'双桥区',3,0,0),(1144,141,'双滦区',3,0,0),(1145,141,'鹰手营子矿区',3,0,0),(1146,141,'承德县',3,0,0),(1147,141,'兴隆县',3,0,0),(1148,141,'平泉县',3,0,0),(1149,141,'滦平县',3,0,0),(1150,141,'隆化县',3,0,0),(1151,141,'丰宁',3,0,0),(1152,141,'宽城',3,0,0),(1153,141,'围场',3,0,0),(1154,142,'从台区',3,0,0),(1155,142,'复兴区',3,0,0),(1156,142,'邯山区',3,0,0),(1157,142,'峰峰矿区',3,0,0),(1158,142,'武安市',3,0,0),(1159,142,'邯郸县',3,0,0),(1160,142,'临漳县',3,0,0),(1161,142,'成安县',3,0,0),(1162,142,'大名县',3,0,0),(1163,142,'涉县',3,0,0),(1164,142,'磁县',3,0,0),(1165,142,'肥乡县',3,0,0),(1166,142,'永年县',3,0,0),(1167,142,'邱县',3,0,0),(1168,142,'鸡泽县',3,0,0),(1169,142,'广平县',3,0,0),(1170,142,'馆陶县',3,0,0),(1171,142,'魏县',3,0,0),(1172,142,'曲周县',3,0,0),(1173,143,'桃城区',3,0,0),(1174,143,'冀州市',3,0,0),(1175,143,'深州市',3,0,0),(1176,143,'枣强县',3,0,0),(1177,143,'武邑县',3,0,0),(1178,143,'武强县',3,0,0),(1179,143,'饶阳县',3,0,0),(1180,143,'安平县',3,0,0),(1181,143,'故城县',3,0,0),(1182,143,'景县',3,0,0),(1183,143,'阜城县',3,0,0),(1184,144,'安次区',3,0,0),(1185,144,'广阳区',3,0,0),(1186,144,'霸州市',3,0,0),(1187,144,'三河市',3,0,0),(1188,144,'固安县',3,0,0),(1189,144,'永清县',3,0,0),(1190,144,'香河县',3,0,0),(1191,144,'大城县',3,0,0),(1192,144,'文安县',3,0,0),(1193,144,'大厂',3,0,0),(1194,145,'海港区',3,0,0),(1195,145,'山海关区',3,0,0),(1196,145,'北戴河区',3,0,0),(1197,145,'昌黎县',3,0,0),(1198,145,'抚宁县',3,0,0),(1199,145,'卢龙县',3,0,0),(1200,145,'青龙',3,0,0),(1201,146,'路北区',3,0,0),(1202,146,'路南区',3,0,0),(1203,146,'古冶区',3,0,0),(1204,146,'开平区',3,0,0),(1205,146,'丰南区',3,0,0),(1206,146,'丰润区',3,0,0),(1207,146,'遵化市',3,0,0),(1208,146,'迁安市',3,0,0),(1209,146,'滦县',3,0,0),(1210,146,'滦南县',3,0,0),(1211,146,'乐亭县',3,0,0),(1212,146,'迁西县',3,0,0),(1213,146,'玉田县',3,0,0),(1214,146,'唐海县',3,0,0),(1215,147,'桥东区',3,0,0),(1216,147,'桥西区',3,0,0),(1217,147,'南宫市',3,0,0),(1218,147,'沙河市',3,0,0),(1219,147,'邢台县',3,0,0),(1220,147,'临城县',3,0,0),(1221,147,'内丘县',3,0,0),(1222,147,'柏乡县',3,0,0),(1223,147,'隆尧县',3,0,0),(1224,147,'任县',3,0,0),(1225,147,'南和县',3,0,0),(1226,147,'宁晋县',3,0,0),(1227,147,'巨鹿县',3,0,0),(1228,147,'新河县',3,0,0),(1229,147,'广宗县',3,0,0),(1230,147,'平乡县',3,0,0),(1231,147,'威县',3,0,0),(1232,147,'清河县',3,0,0),(1233,147,'临西县',3,0,0),(1234,148,'桥西区',3,0,0),(1235,148,'桥东区',3,0,0),(1236,148,'宣化区',3,0,0),(1237,148,'下花园区',3,0,0),(1238,148,'宣化县',3,0,0),(1239,148,'张北县',3,0,0),(1240,148,'康保县',3,0,0),(1241,148,'沽源县',3,0,0),(1242,148,'尚义县',3,0,0),(1243,148,'蔚县',3,0,0),(1244,148,'阳原县',3,0,0),(1245,148,'怀安县',3,0,0),(1246,148,'万全县',3,0,0),(1247,148,'怀来县',3,0,0),(1248,148,'涿鹿县',3,0,0),(1249,148,'赤城县',3,0,0),(1250,148,'崇礼县',3,0,0),(1251,149,'金水区',3,0,0),(1252,149,'邙山区',3,0,0),(1253,149,'二七区',3,0,0),(1254,149,'管城区',3,0,0),(1255,149,'中原区',3,0,0),(1256,149,'上街区',3,0,0),(1257,149,'惠济区',3,0,0),(1258,149,'郑东新区',3,0,0),(1259,149,'经济技术开发区',3,0,0),(1260,149,'高新开发区',3,0,0),(1261,149,'出口加工区',3,0,0),(1262,149,'巩义市',3,0,0),(1263,149,'荥阳市',3,0,0),(1264,149,'新密市',3,0,0),(1265,149,'新郑市',3,0,0),(1266,149,'登封市',3,0,0),(1267,149,'中牟县',3,0,0),(1268,150,'西工区',3,0,0),(1269,150,'老城区',3,0,0),(1270,150,'涧西区',3,0,0),(1271,150,'瀍河回族区',3,0,0),(1272,150,'洛龙区',3,0,0),(1273,150,'吉利区',3,0,0),(1274,150,'偃师市',3,0,0),(1275,150,'孟津县',3,0,0),(1276,150,'新安县',3,0,0),(1277,150,'栾川县',3,0,0),(1278,150,'嵩县',3,0,0),(1279,150,'汝阳县',3,0,0),(1280,150,'宜阳县',3,0,0),(1281,150,'洛宁县',3,0,0),(1282,150,'伊川县',3,0,0),(1283,151,'鼓楼区',3,0,0),(1284,151,'龙亭区',3,0,0),(1285,151,'顺河回族区',3,0,0),(1286,151,'金明区',3,0,0),(1287,151,'禹王台区',3,0,0),(1288,151,'杞县',3,0,0),(1289,151,'通许县',3,0,0),(1290,151,'尉氏县',3,0,0),(1291,151,'开封县',3,0,0),(1292,151,'兰考县',3,0,0),(1293,152,'北关区',3,0,0),(1294,152,'文峰区',3,0,0),(1295,152,'殷都区',3,0,0),(1296,152,'龙安区',3,0,0),(1297,152,'林州市',3,0,0),(1298,152,'安阳县',3,0,0),(1299,152,'汤阴县',3,0,0),(1300,152,'滑县',3,0,0),(1301,152,'内黄县',3,0,0),(1302,153,'淇滨区',3,0,0),(1303,153,'山城区',3,0,0),(1304,153,'鹤山区',3,0,0),(1305,153,'浚县',3,0,0),(1306,153,'淇县',3,0,0),(1307,154,'济源市',3,0,0),(1308,155,'解放区',3,0,0),(1309,155,'中站区',3,0,0),(1310,155,'马村区',3,0,0),(1311,155,'山阳区',3,0,0),(1312,155,'沁阳市',3,0,0),(1313,155,'孟州市',3,0,0),(1314,155,'修武县',3,0,0),(1315,155,'博爱县',3,0,0),(1316,155,'武陟县',3,0,0),(1317,155,'温县',3,0,0),(1318,156,'卧龙区',3,0,0),(1319,156,'宛城区',3,0,0),(1320,156,'邓州市',3,0,0),(1321,156,'南召县',3,0,0),(1322,156,'方城县',3,0,0),(1323,156,'西峡县',3,0,0),(1324,156,'镇平县',3,0,0),(1325,156,'内乡县',3,0,0),(1326,156,'淅川县',3,0,0),(1327,156,'社旗县',3,0,0),(1328,156,'唐河县',3,0,0),(1329,156,'新野县',3,0,0),(1330,156,'桐柏县',3,0,0),(1331,157,'新华区',3,0,0),(1332,157,'卫东区',3,0,0),(1333,157,'湛河区',3,0,0),(1334,157,'石龙区',3,0,0),(1335,157,'舞钢市',3,0,0),(1336,157,'汝州市',3,0,0),(1337,157,'宝丰县',3,0,0),(1338,157,'叶县',3,0,0),(1339,157,'鲁山县',3,0,0),(1340,157,'郏县',3,0,0),(1341,158,'湖滨区',3,0,0),(1342,158,'义马市',3,0,0),(1343,158,'灵宝市',3,0,0),(1344,158,'渑池县',3,0,0),(1345,158,'陕县',3,0,0),(1346,158,'卢氏县',3,0,0),(1347,159,'梁园区',3,0,0),(1348,159,'睢阳区',3,0,0),(1349,159,'永城市',3,0,0),(1350,159,'民权县',3,0,0),(1351,159,'睢县',3,0,0),(1352,159,'宁陵县',3,0,0),(1353,159,'虞城县',3,0,0),(1354,159,'柘城县',3,0,0),(1355,159,'夏邑县',3,0,0),(1356,160,'卫滨区',3,0,0),(1357,160,'红旗区',3,0,0),(1358,160,'凤泉区',3,0,0),(1359,160,'牧野区',3,0,0),(1360,160,'卫辉市',3,0,0),(1361,160,'辉县市',3,0,0),(1362,160,'新乡县',3,0,0),(1363,160,'获嘉县',3,0,0),(1364,160,'原阳县',3,0,0),(1365,160,'延津县',3,0,0),(1366,160,'封丘县',3,0,0),(1367,160,'长垣县',3,0,0),(1368,161,'浉河区',3,0,0),(1369,161,'平桥区',3,0,0),(1370,161,'罗山县',3,0,0),(1371,161,'光山县',3,0,0),(1372,161,'新县',3,0,0),(1373,161,'商城县',3,0,0),(1374,161,'固始县',3,0,0),(1375,161,'潢川县',3,0,0),(1376,161,'淮滨县',3,0,0),(1377,161,'息县',3,0,0),(1378,162,'魏都区',3,0,0),(1379,162,'禹州市',3,0,0),(1380,162,'长葛市',3,0,0),(1381,162,'许昌县',3,0,0),(1382,162,'鄢陵县',3,0,0),(1383,162,'襄城县',3,0,0),(1384,163,'川汇区',3,0,0),(1385,163,'项城市',3,0,0),(1386,163,'扶沟县',3,0,0),(1387,163,'西华县',3,0,0),(1388,163,'商水县',3,0,0),(1389,163,'沈丘县',3,0,0),(1390,163,'郸城县',3,0,0),(1391,163,'淮阳县',3,0,0),(1392,163,'太康县',3,0,0),(1393,163,'鹿邑县',3,0,0),(1394,164,'驿城区',3,0,0),(1395,164,'西平县',3,0,0),(1396,164,'上蔡县',3,0,0),(1397,164,'平舆县',3,0,0),(1398,164,'正阳县',3,0,0),(1399,164,'确山县',3,0,0),(1400,164,'泌阳县',3,0,0),(1401,164,'汝南县',3,0,0),(1402,164,'遂平县',3,0,0),(1403,164,'新蔡县',3,0,0),(1404,165,'郾城区',3,0,0),(1405,165,'源汇区',3,0,0),(1406,165,'召陵区',3,0,0),(1407,165,'舞阳县',3,0,0),(1408,165,'临颍县',3,0,0),(1409,166,'华龙区',3,0,0),(1410,166,'清丰县',3,0,0),(1411,166,'南乐县',3,0,0),(1412,166,'范县',3,0,0),(1413,166,'台前县',3,0,0),(1414,166,'濮阳县',3,0,0),(1415,167,'道里区',3,0,0),(1416,167,'南岗区',3,0,0),(1417,167,'动力区',3,0,0),(1418,167,'平房区',3,0,0),(1419,167,'香坊区',3,0,0),(1420,167,'太平区',3,0,0),(1421,167,'道外区',3,0,0),(1422,167,'阿城区',3,0,0),(1423,167,'呼兰区',3,0,0),(1424,167,'松北区',3,0,0),(1425,167,'尚志市',3,0,0),(1426,167,'双城市',3,0,0),(1427,167,'五常市',3,0,0),(1428,167,'方正县',3,0,0),(1429,167,'宾县',3,0,0),(1430,167,'依兰县',3,0,0),(1431,167,'巴彦县',3,0,0),(1432,167,'通河县',3,0,0),(1433,167,'木兰县',3,0,0),(1434,167,'延寿县',3,0,0),(1435,168,'萨尔图区',3,0,0),(1436,168,'红岗区',3,0,0),(1437,168,'龙凤区',3,0,0),(1438,168,'让胡路区',3,0,0),(1439,168,'大同区',3,0,0),(1440,168,'肇州县',3,0,0),(1441,168,'肇源县',3,0,0),(1442,168,'林甸县',3,0,0),(1443,168,'杜尔伯特',3,0,0),(1444,169,'呼玛县',3,0,0),(1445,169,'漠河县',3,0,0),(1446,169,'塔河县',3,0,0),(1447,170,'兴山区',3,0,0),(1448,170,'工农区',3,0,0),(1449,170,'南山区',3,0,0),(1450,170,'兴安区',3,0,0),(1451,170,'向阳区',3,0,0),(1452,170,'东山区',3,0,0),(1453,170,'萝北县',3,0,0),(1454,170,'绥滨县',3,0,0),(1455,171,'爱辉区',3,0,0),(1456,171,'五大连池市',3,0,0),(1457,171,'北安市',3,0,0),(1458,171,'嫩江县',3,0,0),(1459,171,'逊克县',3,0,0),(1460,171,'孙吴县',3,0,0),(1461,172,'鸡冠区',3,0,0),(1462,172,'恒山区',3,0,0),(1463,172,'城子河区',3,0,0),(1464,172,'滴道区',3,0,0),(1465,172,'梨树区',3,0,0),(1466,172,'虎林市',3,0,0),(1467,172,'密山市',3,0,0),(1468,172,'鸡东县',3,0,0),(1469,173,'前进区',3,0,0),(1470,173,'郊区',3,0,0),(1471,173,'向阳区',3,0,0),(1472,173,'东风区',3,0,0),(1473,173,'同江市',3,0,0),(1474,173,'富锦市',3,0,0),(1475,173,'桦南县',3,0,0),(1476,173,'桦川县',3,0,0),(1477,173,'汤原县',3,0,0),(1478,173,'抚远县',3,0,0),(1479,174,'爱民区',3,0,0),(1480,174,'东安区',3,0,0),(1481,174,'阳明区',3,0,0),(1482,174,'西安区',3,0,0),(1483,174,'绥芬河市',3,0,0),(1484,174,'海林市',3,0,0),(1485,174,'宁安市',3,0,0),(1486,174,'穆棱市',3,0,0),(1487,174,'东宁县',3,0,0),(1488,174,'林口县',3,0,0),(1489,175,'桃山区',3,0,0),(1490,175,'新兴区',3,0,0),(1491,175,'茄子河区',3,0,0),(1492,175,'勃利县',3,0,0),(1493,176,'龙沙区',3,0,0),(1494,176,'昂昂溪区',3,0,0),(1495,176,'铁峰区',3,0,0),(1496,176,'建华区',3,0,0),(1497,176,'富拉尔基区',3,0,0),(1498,176,'碾子山区',3,0,0),(1499,176,'梅里斯达斡尔区',3,0,0),(1500,176,'讷河市',3,0,0),(1501,176,'龙江县',3,0,0),(1502,176,'依安县',3,0,0),(1503,176,'泰来县',3,0,0),(1504,176,'甘南县',3,0,0),(1505,176,'富裕县',3,0,0),(1506,176,'克山县',3,0,0),(1507,176,'克东县',3,0,0),(1508,176,'拜泉县',3,0,0),(1509,177,'尖山区',3,0,0),(1510,177,'岭东区',3,0,0),(1511,177,'四方台区',3,0,0),(1512,177,'宝山区',3,0,0),(1513,177,'集贤县',3,0,0),(1514,177,'友谊县',3,0,0),(1515,177,'宝清县',3,0,0),(1516,177,'饶河县',3,0,0),(1517,178,'北林区',3,0,0),(1518,178,'安达市',3,0,0),(1519,178,'肇东市',3,0,0),(1520,178,'海伦市',3,0,0),(1521,178,'望奎县',3,0,0),(1522,178,'兰西县',3,0,0),(1523,178,'青冈县',3,0,0),(1524,178,'庆安县',3,0,0),(1525,178,'明水县',3,0,0),(1526,178,'绥棱县',3,0,0),(1527,179,'伊春区',3,0,0),(1528,179,'带岭区',3,0,0),(1529,179,'南岔区',3,0,0),(1530,179,'金山屯区',3,0,0),(1531,179,'西林区',3,0,0),(1532,179,'美溪区',3,0,0),(1533,179,'乌马河区',3,0,0),(1534,179,'翠峦区',3,0,0),(1535,179,'友好区',3,0,0),(1536,179,'上甘岭区',3,0,0),(1537,179,'五营区',3,0,0),(1538,179,'红星区',3,0,0),(1539,179,'新青区',3,0,0),(1540,179,'汤旺河区',3,0,0),(1541,179,'乌伊岭区',3,0,0),(1542,179,'铁力市',3,0,0),(1543,179,'嘉荫县',3,0,0),(1544,180,'江岸区',3,0,0),(1545,180,'武昌区',3,0,0),(1546,180,'江汉区',3,0,0),(1547,180,'硚口区',3,0,0),(1548,180,'汉阳区',3,0,0),(1549,180,'青山区',3,0,0),(1550,180,'洪山区',3,0,0),(1551,180,'东西湖区',3,0,0),(1552,180,'汉南区',3,0,0),(1553,180,'蔡甸区',3,0,0),(1554,180,'江夏区',3,0,0),(1555,180,'黄陂区',3,0,0),(1556,180,'新洲区',3,0,0),(1557,180,'经济开发区',3,0,0),(1558,181,'仙桃市',3,0,0),(1559,182,'鄂城区',3,0,0),(1560,182,'华容区',3,0,0),(1561,182,'梁子湖区',3,0,0),(1562,183,'黄州区',3,0,0),(1563,183,'麻城市',3,0,0),(1564,183,'武穴市',3,0,0),(1565,183,'团风县',3,0,0),(1566,183,'红安县',3,0,0),(1567,183,'罗田县',3,0,0),(1568,183,'英山县',3,0,0),(1569,183,'浠水县',3,0,0),(1570,183,'蕲春县',3,0,0),(1571,183,'黄梅县',3,0,0),(1572,184,'黄石港区',3,0,0),(1573,184,'西塞山区',3,0,0),(1574,184,'下陆区',3,0,0),(1575,184,'铁山区',3,0,0),(1576,184,'大冶市',3,0,0),(1577,184,'阳新县',3,0,0),(1578,185,'东宝区',3,0,0),(1579,185,'掇刀区',3,0,0),(1580,185,'钟祥市',3,0,0),(1581,185,'京山县',3,0,0),(1582,185,'沙洋县',3,0,0),(1583,186,'沙市区',3,0,0),(1584,186,'荆州区',3,0,0),(1585,186,'石首市',3,0,0),(1586,186,'洪湖市',3,0,0),(1587,186,'松滋市',3,0,0),(1588,186,'公安县',3,0,0),(1589,186,'监利县',3,0,0),(1590,186,'江陵县',3,0,0),(1591,187,'潜江市',3,0,0),(1592,188,'神农架林区',3,0,0),(1593,189,'张湾区',3,0,0),(1594,189,'茅箭区',3,0,0),(1595,189,'丹江口市',3,0,0),(1596,189,'郧县',3,0,0),(1597,189,'郧西县',3,0,0),(1598,189,'竹山县',3,0,0),(1599,189,'竹溪县',3,0,0),(1600,189,'房县',3,0,0),(1601,190,'曾都区',3,0,0),(1602,190,'广水市',3,0,0),(1603,191,'天门市',3,0,0),(1604,192,'咸安区',3,0,0),(1605,192,'赤壁市',3,0,0),(1606,192,'嘉鱼县',3,0,0),(1607,192,'通城县',3,0,0),(1608,192,'崇阳县',3,0,0),(1609,192,'通山县',3,0,0),(1610,193,'襄城区',3,0,0),(1611,193,'樊城区',3,0,0),(1612,193,'襄阳区',3,0,0),(1613,193,'老河口市',3,0,0),(1614,193,'枣阳市',3,0,0),(1615,193,'宜城市',3,0,0),(1616,193,'南漳县',3,0,0),(1617,193,'谷城县',3,0,0),(1618,193,'保康县',3,0,0),(1619,194,'孝南区',3,0,0),(1620,194,'应城市',3,0,0),(1621,194,'安陆市',3,0,0),(1622,194,'汉川市',3,0,0),(1623,194,'孝昌县',3,0,0),(1624,194,'大悟县',3,0,0),(1625,194,'云梦县',3,0,0),(1626,195,'长阳',3,0,0),(1627,195,'五峰',3,0,0),(1628,195,'西陵区',3,0,0),(1629,195,'伍家岗区',3,0,0),(1630,195,'点军区',3,0,0),(1631,195,'猇亭区',3,0,0),(1632,195,'夷陵区',3,0,0),(1633,195,'宜都市',3,0,0),(1634,195,'当阳市',3,0,0),(1635,195,'枝江市',3,0,0),(1636,195,'远安县',3,0,0),(1637,195,'兴山县',3,0,0),(1638,195,'秭归县',3,0,0),(1639,196,'恩施市',3,0,0),(1640,196,'利川市',3,0,0),(1641,196,'建始县',3,0,0),(1642,196,'巴东县',3,0,0),(1643,196,'宣恩县',3,0,0),(1644,196,'咸丰县',3,0,0),(1645,196,'来凤县',3,0,0),(1646,196,'鹤峰县',3,0,0),(1647,197,'岳麓区',3,0,0),(1648,197,'芙蓉区',3,0,0),(1649,197,'天心区',3,0,0),(1650,197,'开福区',3,0,0),(1651,197,'雨花区',3,0,0),(1652,197,'开发区',3,0,0),(1653,197,'浏阳市',3,0,0),(1654,197,'长沙县',3,0,0),(1655,197,'望城县',3,0,0),(1656,197,'宁乡县',3,0,0),(1657,198,'永定区',3,0,0),(1658,198,'武陵源区',3,0,0),(1659,198,'慈利县',3,0,0),(1660,198,'桑植县',3,0,0),(1661,199,'武陵区',3,0,0),(1662,199,'鼎城区',3,0,0),(1663,199,'津市市',3,0,0),(1664,199,'安乡县',3,0,0),(1665,199,'汉寿县',3,0,0),(1666,199,'澧县',3,0,0),(1667,199,'临澧县',3,0,0),(1668,199,'桃源县',3,0,0),(1669,199,'石门县',3,0,0),(1670,200,'北湖区',3,0,0),(1671,200,'苏仙区',3,0,0),(1672,200,'资兴市',3,0,0),(1673,200,'桂阳县',3,0,0),(1674,200,'宜章县',3,0,0),(1675,200,'永兴县',3,0,0),(1676,200,'嘉禾县',3,0,0),(1677,200,'临武县',3,0,0),(1678,200,'汝城县',3,0,0),(1679,200,'桂东县',3,0,0),(1680,200,'安仁县',3,0,0),(1681,201,'雁峰区',3,0,0),(1682,201,'珠晖区',3,0,0),(1683,201,'石鼓区',3,0,0),(1684,201,'蒸湘区',3,0,0),(1685,201,'南岳区',3,0,0),(1686,201,'耒阳市',3,0,0),(1687,201,'常宁市',3,0,0),(1688,201,'衡阳县',3,0,0),(1689,201,'衡南县',3,0,0),(1690,201,'衡山县',3,0,0),(1691,201,'衡东县',3,0,0),(1692,201,'祁东县',3,0,0),(1693,202,'鹤城区',3,0,0),(1694,202,'靖州',3,0,0),(1695,202,'麻阳',3,0,0),(1696,202,'通道',3,0,0),(1697,202,'新晃',3,0,0),(1698,202,'芷江',3,0,0),(1699,202,'沅陵县',3,0,0),(1700,202,'辰溪县',3,0,0),(1701,202,'溆浦县',3,0,0),(1702,202,'中方县',3,0,0),(1703,202,'会同县',3,0,0),(1704,202,'洪江市',3,0,0),(1705,203,'娄星区',3,0,0),(1706,203,'冷水江市',3,0,0),(1707,203,'涟源市',3,0,0),(1708,203,'双峰县',3,0,0),(1709,203,'新化县',3,0,0),(1710,204,'城步',3,0,0),(1711,204,'双清区',3,0,0),(1712,204,'大祥区',3,0,0),(1713,204,'北塔区',3,0,0),(1714,204,'武冈市',3,0,0),(1715,204,'邵东县',3,0,0),(1716,204,'新邵县',3,0,0),(1717,204,'邵阳县',3,0,0),(1718,204,'隆回县',3,0,0),(1719,204,'洞口县',3,0,0),(1720,204,'绥宁县',3,0,0),(1721,204,'新宁县',3,0,0),(1722,205,'岳塘区',3,0,0),(1723,205,'雨湖区',3,0,0),(1724,205,'湘乡市',3,0,0),(1725,205,'韶山市',3,0,0),(1726,205,'湘潭县',3,0,0),(1727,206,'吉首市',3,0,0),(1728,206,'泸溪县',3,0,0),(1729,206,'凤凰县',3,0,0),(1730,206,'花垣县',3,0,0),(1731,206,'保靖县',3,0,0),(1732,206,'古丈县',3,0,0),(1733,206,'永顺县',3,0,0),(1734,206,'龙山县',3,0,0),(1735,207,'赫山区',3,0,0),(1736,207,'资阳区',3,0,0),(1737,207,'沅江市',3,0,0),(1738,207,'南县',3,0,0),(1739,207,'桃江县',3,0,0),(1740,207,'安化县',3,0,0),(1741,208,'江华',3,0,0),(1742,208,'冷水滩区',3,0,0),(1743,208,'零陵区',3,0,0),(1744,208,'祁阳县',3,0,0),(1745,208,'东安县',3,0,0),(1746,208,'双牌县',3,0,0),(1747,208,'道县',3,0,0),(1748,208,'江永县',3,0,0),(1749,208,'宁远县',3,0,0),(1750,208,'蓝山县',3,0,0),(1751,208,'新田县',3,0,0),(1752,209,'岳阳楼区',3,0,0),(1753,209,'君山区',3,0,0),(1754,209,'云溪区',3,0,0),(1755,209,'汨罗市',3,0,0),(1756,209,'临湘市',3,0,0),(1757,209,'岳阳县',3,0,0),(1758,209,'华容县',3,0,0),(1759,209,'湘阴县',3,0,0),(1760,209,'平江县',3,0,0),(1761,210,'天元区',3,0,0),(1762,210,'荷塘区',3,0,0),(1763,210,'芦淞区',3,0,0),(1764,210,'石峰区',3,0,0),(1765,210,'醴陵市',3,0,0),(1766,210,'株洲县',3,0,0),(1767,210,'攸县',3,0,0),(1768,210,'茶陵县',3,0,0),(1769,210,'炎陵县',3,0,0),(1770,211,'朝阳区',3,0,0),(1771,211,'宽城区',3,0,0),(1772,211,'二道区',3,0,0),(1773,211,'南关区',3,0,0),(1774,211,'绿园区',3,0,0),(1775,211,'双阳区',3,0,0),(1776,211,'净月潭开发区',3,0,0),(1777,211,'高新技术开发区',3,0,0),(1778,211,'经济技术开发区',3,0,0),(1779,211,'汽车产业开发区',3,0,0),(1780,211,'德惠市',3,0,0),(1781,211,'九台市',3,0,0),(1782,211,'榆树市',3,0,0),(1783,211,'农安县',3,0,0),(1784,212,'船营区',3,0,0),(1785,212,'昌邑区',3,0,0),(1786,212,'龙潭区',3,0,0),(1787,212,'丰满区',3,0,0),(1788,212,'蛟河市',3,0,0),(1789,212,'桦甸市',3,0,0),(1790,212,'舒兰市',3,0,0),(1791,212,'磐石市',3,0,0),(1792,212,'永吉县',3,0,0),(1793,213,'洮北区',3,0,0),(1794,213,'洮南市',3,0,0),(1795,213,'大安市',3,0,0),(1796,213,'镇赉县',3,0,0),(1797,213,'通榆县',3,0,0),(1798,214,'江源区',3,0,0),(1799,214,'八道江区',3,0,0),(1800,214,'长白',3,0,0),(1801,214,'临江市',3,0,0),(1802,214,'抚松县',3,0,0),(1803,214,'靖宇县',3,0,0),(1804,215,'龙山区',3,0,0),(1805,215,'西安区',3,0,0),(1806,215,'东丰县',3,0,0),(1807,215,'东辽县',3,0,0),(1808,216,'铁西区',3,0,0),(1809,216,'铁东区',3,0,0),(1810,216,'伊通',3,0,0),(1811,216,'公主岭市',3,0,0),(1812,216,'双辽市',3,0,0),(1813,216,'梨树县',3,0,0),(1814,217,'前郭尔罗斯',3,0,0),(1815,217,'宁江区',3,0,0),(1816,217,'长岭县',3,0,0),(1817,217,'乾安县',3,0,0),(1818,217,'扶余县',3,0,0),(1819,218,'东昌区',3,0,0),(1820,218,'二道江区',3,0,0),(1821,218,'梅河口市',3,0,0),(1822,218,'集安市',3,0,0),(1823,218,'通化县',3,0,0),(1824,218,'辉南县',3,0,0),(1825,218,'柳河县',3,0,0),(1826,219,'延吉市',3,0,0),(1827,219,'图们市',3,0,0),(1828,219,'敦化市',3,0,0),(1829,219,'珲春市',3,0,0),(1830,219,'龙井市',3,0,0),(1831,219,'和龙市',3,0,0),(1832,219,'安图县',3,0,0),(1833,219,'汪清县',3,0,0),(1834,220,'玄武区',3,0,0),(1835,220,'鼓楼区',3,0,0),(1836,220,'白下区',3,0,0),(1837,220,'建邺区',3,0,0),(1838,220,'秦淮区',3,0,0),(1839,220,'雨花台区',3,0,0),(1840,220,'下关区',3,0,0),(1841,220,'栖霞区',3,0,0),(1842,220,'浦口区',3,0,0),(1843,220,'江宁区',3,0,0),(1844,220,'六合区',3,0,0),(1845,220,'溧水县',3,0,0),(1846,220,'高淳县',3,0,0),(1847,221,'沧浪区',3,0,0),(1848,221,'金阊区',3,0,0),(1849,221,'平江区',3,0,0),(1850,221,'虎丘区',3,0,0),(1851,221,'吴中区',3,0,0),(1852,221,'相城区',3,0,0),(1853,221,'园区',3,0,0),(1854,221,'新区',3,0,0),(1855,221,'常熟市',3,0,0),(1856,221,'张家港市',3,0,0),(1857,221,'玉山镇',3,0,0),(1858,221,'巴城镇',3,0,0),(1859,221,'周市镇',3,0,0),(1860,221,'陆家镇',3,0,0),(1861,221,'花桥镇',3,0,0),(1862,221,'淀山湖镇',3,0,0),(1863,221,'张浦镇',3,0,0),(1864,221,'周庄镇',3,0,0),(1865,221,'千灯镇',3,0,0),(1866,221,'锦溪镇',3,0,0),(1867,221,'开发区',3,0,0),(1868,221,'吴江市',3,0,0),(1869,221,'太仓市',3,0,0),(1870,222,'崇安区',3,0,0),(1871,222,'北塘区',3,0,0),(1872,222,'南长区',3,0,0),(1873,222,'锡山区',3,0,0),(1874,222,'惠山区',3,0,0),(1875,222,'滨湖区',3,0,0),(1876,222,'新区',3,0,0),(1877,222,'江阴市',3,0,0),(1878,222,'宜兴市',3,0,0),(1879,223,'天宁区',3,0,0),(1880,223,'钟楼区',3,0,0),(1881,223,'戚墅堰区',3,0,0),(1882,223,'郊区',3,0,0),(1883,223,'新北区',3,0,0),(1884,223,'武进区',3,0,0),(1885,223,'溧阳市',3,0,0),(1886,223,'金坛市',3,0,0),(1887,224,'清河区',3,0,0),(1888,224,'清浦区',3,0,0),(1889,224,'楚州区',3,0,0),(1890,224,'淮阴区',3,0,0),(1891,224,'涟水县',3,0,0),(1892,224,'洪泽县',3,0,0),(1893,224,'盱眙县',3,0,0),(1894,224,'金湖县',3,0,0),(1895,225,'新浦区',3,0,0),(1896,225,'连云区',3,0,0),(1897,225,'海州区',3,0,0),(1898,225,'赣榆县',3,0,0),(1899,225,'东海县',3,0,0),(1900,225,'灌云县',3,0,0),(1901,225,'灌南县',3,0,0),(1902,226,'崇川区',3,0,0),(1903,226,'港闸区',3,0,0),(1904,226,'经济开发区',3,0,0),(1905,226,'启东市',3,0,0),(1906,226,'如皋市',3,0,0),(1907,226,'通州市',3,0,0),(1908,226,'海门市',3,0,0),(1909,226,'海安县',3,0,0),(1910,226,'如东县',3,0,0),(1911,227,'宿城区',3,0,0),(1912,227,'宿豫区',3,0,0),(1913,227,'宿豫县',3,0,0),(1914,227,'沭阳县',3,0,0),(1915,227,'泗阳县',3,0,0),(1916,227,'泗洪县',3,0,0),(1917,228,'海陵区',3,0,0),(1918,228,'高港区',3,0,0),(1919,228,'兴化市',3,0,0),(1920,228,'靖江市',3,0,0),(1921,228,'泰兴市',3,0,0),(1922,228,'姜堰市',3,0,0),(1923,229,'云龙区',3,0,0),(1924,229,'鼓楼区',3,0,0),(1925,229,'九里区',3,0,0),(1926,229,'贾汪区',3,0,0),(1927,229,'泉山区',3,0,0),(1928,229,'新沂市',3,0,0),(1929,229,'邳州市',3,0,0),(1930,229,'丰县',3,0,0),(1931,229,'沛县',3,0,0),(1932,229,'铜山县',3,0,0),(1933,229,'睢宁县',3,0,0),(1934,230,'城区',3,0,0),(1935,230,'亭湖区',3,0,0),(1936,230,'盐都区',3,0,0),(1937,230,'盐都县',3,0,0),(1938,230,'东台市',3,0,0),(1939,230,'大丰市',3,0,0),(1940,230,'响水县',3,0,0),(1941,230,'滨海县',3,0,0),(1942,230,'阜宁县',3,0,0),(1943,230,'射阳县',3,0,0),(1944,230,'建湖县',3,0,0),(1945,231,'广陵区',3,0,0),(1946,231,'维扬区',3,0,0),(1947,231,'邗江区',3,0,0),(1948,231,'仪征市',3,0,0),(1949,231,'高邮市',3,0,0),(1950,231,'江都市',3,0,0),(1951,231,'宝应县',3,0,0),(1952,232,'京口区',3,0,0),(1953,232,'润州区',3,0,0),(1954,232,'丹徒区',3,0,0),(1955,232,'丹阳市',3,0,0),(1956,232,'扬中市',3,0,0),(1957,232,'句容市',3,0,0),(1958,233,'东湖区',3,0,0),(1959,233,'西湖区',3,0,0),(1960,233,'青云谱区',3,0,0),(1961,233,'湾里区',3,0,0),(1962,233,'青山湖区',3,0,0),(1963,233,'红谷滩新区',3,0,0),(1964,233,'昌北区',3,0,0),(1965,233,'高新区',3,0,0),(1966,233,'南昌县',3,0,0),(1967,233,'新建县',3,0,0),(1968,233,'安义县',3,0,0),(1969,233,'进贤县',3,0,0),(1970,234,'临川区',3,0,0),(1971,234,'南城县',3,0,0),(1972,234,'黎川县',3,0,0),(1973,234,'南丰县',3,0,0),(1974,234,'崇仁县',3,0,0),(1975,234,'乐安县',3,0,0),(1976,234,'宜黄县',3,0,0),(1977,234,'金溪县',3,0,0),(1978,234,'资溪县',3,0,0),(1979,234,'东乡县',3,0,0),(1980,234,'广昌县',3,0,0),(1981,235,'章贡区',3,0,0),(1982,235,'于都县',3,0,0),(1983,235,'瑞金市',3,0,0),(1984,235,'南康市',3,0,0),(1985,235,'赣县',3,0,0),(1986,235,'信丰县',3,0,0),(1987,235,'大余县',3,0,0),(1988,235,'上犹县',3,0,0),(1989,235,'崇义县',3,0,0),(1990,235,'安远县',3,0,0),(1991,235,'龙南县',3,0,0),(1992,235,'定南县',3,0,0),(1993,235,'全南县',3,0,0),(1994,235,'宁都县',3,0,0),(1995,235,'兴国县',3,0,0),(1996,235,'会昌县',3,0,0),(1997,235,'寻乌县',3,0,0),(1998,235,'石城县',3,0,0),(1999,236,'安福县',3,0,0),(2000,236,'吉州区',3,0,0),(2001,236,'青原区',3,0,0),(2002,236,'井冈山市',3,0,0),(2003,236,'吉安县',3,0,0),(2004,236,'吉水县',3,0,0),(2005,236,'峡江县',3,0,0),(2006,236,'新干县',3,0,0),(2007,236,'永丰县',3,0,0),(2008,236,'泰和县',3,0,0),(2009,236,'遂川县',3,0,0),(2010,236,'万安县',3,0,0),(2011,236,'永新县',3,0,0),(2012,237,'珠山区',3,0,0),(2013,237,'昌江区',3,0,0),(2014,237,'乐平市',3,0,0),(2015,237,'浮梁县',3,0,0),(2016,238,'浔阳区',3,0,0),(2017,238,'庐山区',3,0,0),(2018,238,'瑞昌市',3,0,0),(2019,238,'九江县',3,0,0),(2020,238,'武宁县',3,0,0),(2021,238,'修水县',3,0,0),(2022,238,'永修县',3,0,0),(2023,238,'德安县',3,0,0),(2024,238,'星子县',3,0,0),(2025,238,'都昌县',3,0,0),(2026,238,'湖口县',3,0,0),(2027,238,'彭泽县',3,0,0),(2028,239,'安源区',3,0,0),(2029,239,'湘东区',3,0,0),(2030,239,'莲花县',3,0,0),(2031,239,'芦溪县',3,0,0),(2032,239,'上栗县',3,0,0),(2033,240,'信州区',3,0,0),(2034,240,'德兴市',3,0,0),(2035,240,'上饶县',3,0,0),(2036,240,'广丰县',3,0,0),(2037,240,'玉山县',3,0,0),(2038,240,'铅山县',3,0,0),(2039,240,'横峰县',3,0,0),(2040,240,'弋阳县',3,0,0),(2041,240,'余干县',3,0,0),(2042,240,'波阳县',3,0,0),(2043,240,'万年县',3,0,0),(2044,240,'婺源县',3,0,0),(2045,241,'渝水区',3,0,0),(2046,241,'分宜县',3,0,0),(2047,242,'袁州区',3,0,0),(2048,242,'丰城市',3,0,0),(2049,242,'樟树市',3,0,0),(2050,242,'高安市',3,0,0),(2051,242,'奉新县',3,0,0),(2052,242,'万载县',3,0,0),(2053,242,'上高县',3,0,0),(2054,242,'宜丰县',3,0,0),(2055,242,'靖安县',3,0,0),(2056,242,'铜鼓县',3,0,0),(2057,243,'月湖区',3,0,0),(2058,243,'贵溪市',3,0,0),(2059,243,'余江县',3,0,0),(2060,244,'沈河区',3,0,0),(2061,244,'皇姑区',3,0,0),(2062,244,'和平区',3,0,0),(2063,244,'大东区',3,0,0),(2064,244,'铁西区',3,0,0),(2065,244,'苏家屯区',3,0,0),(2066,244,'东陵区',3,0,0),(2067,244,'沈北新区',3,0,0),(2068,244,'于洪区',3,0,0),(2069,244,'浑南新区',3,0,0),(2070,244,'新民市',3,0,0),(2071,244,'辽中县',3,0,0),(2072,244,'康平县',3,0,0),(2073,244,'法库县',3,0,0),(2074,245,'西岗区',3,0,0),(2075,245,'中山区',3,0,0),(2076,245,'沙河口区',3,0,0),(2077,245,'甘井子区',3,0,0),(2078,245,'旅顺口区',3,0,0),(2079,245,'金州区',3,0,0),(2080,245,'开发区',3,0,0),(2081,245,'瓦房店市',3,0,0),(2082,245,'普兰店市',3,0,0),(2083,245,'庄河市',3,0,0),(2084,245,'长海县',3,0,0),(2085,246,'铁东区',3,0,0),(2086,246,'铁西区',3,0,0),(2087,246,'立山区',3,0,0),(2088,246,'千山区',3,0,0),(2089,246,'岫岩',3,0,0),(2090,246,'海城市',3,0,0),(2091,246,'台安县',3,0,0),(2092,247,'本溪',3,0,0),(2093,247,'平山区',3,0,0),(2094,247,'明山区',3,0,0),(2095,247,'溪湖区',3,0,0),(2096,247,'南芬区',3,0,0),(2097,247,'桓仁',3,0,0),(2098,248,'双塔区',3,0,0),(2099,248,'龙城区',3,0,0),(2100,248,'喀喇沁左翼蒙古族自治县',3,0,0),(2101,248,'北票市',3,0,0),(2102,248,'凌源市',3,0,0),(2103,248,'朝阳县',3,0,0),(2104,248,'建平县',3,0,0),(2105,249,'振兴区',3,0,0),(2106,249,'元宝区',3,0,0),(2107,249,'振安区',3,0,0),(2108,249,'宽甸',3,0,0),(2109,249,'东港市',3,0,0),(2110,249,'凤城市',3,0,0),(2111,250,'顺城区',3,0,0),(2112,250,'新抚区',3,0,0),(2113,250,'东洲区',3,0,0),(2114,250,'望花区',3,0,0),(2115,250,'清原',3,0,0),(2116,250,'新宾',3,0,0),(2117,250,'抚顺县',3,0,0),(2118,251,'阜新',3,0,0),(2119,251,'海州区',3,0,0),(2120,251,'新邱区',3,0,0),(2121,251,'太平区',3,0,0),(2122,251,'清河门区',3,0,0),(2123,251,'细河区',3,0,0),(2124,251,'彰武县',3,0,0),(2125,252,'龙港区',3,0,0),(2126,252,'南票区',3,0,0),(2127,252,'连山区',3,0,0),(2128,252,'兴城市',3,0,0),(2129,252,'绥中县',3,0,0),(2130,252,'建昌县',3,0,0),(2131,253,'太和区',3,0,0),(2132,253,'古塔区',3,0,0),(2133,253,'凌河区',3,0,0),(2134,253,'凌海市',3,0,0),(2135,253,'北镇市',3,0,0),(2136,253,'黑山县',3,0,0),(2137,253,'义县',3,0,0),(2138,254,'白塔区',3,0,0),(2139,254,'文圣区',3,0,0),(2140,254,'宏伟区',3,0,0),(2141,254,'太子河区',3,0,0),(2142,254,'弓长岭区',3,0,0),(2143,254,'灯塔市',3,0,0),(2144,254,'辽阳县',3,0,0),(2145,255,'双台子区',3,0,0),(2146,255,'兴隆台区',3,0,0),(2147,255,'大洼县',3,0,0),(2148,255,'盘山县',3,0,0),(2149,256,'银州区',3,0,0),(2150,256,'清河区',3,0,0),(2151,256,'调兵山市',3,0,0),(2152,256,'开原市',3,0,0),(2153,256,'铁岭县',3,0,0),(2154,256,'西丰县',3,0,0),(2155,256,'昌图县',3,0,0),(2156,257,'站前区',3,0,0),(2157,257,'西市区',3,0,0),(2158,257,'鲅鱼圈区',3,0,0),(2159,257,'老边区',3,0,0),(2160,257,'盖州市',3,0,0),(2161,257,'大石桥市',3,0,0),(2162,258,'回民区',3,0,0),(2163,258,'玉泉区',3,0,0),(2164,258,'新城区',3,0,0),(2165,258,'赛罕区',3,0,0),(2166,258,'清水河县',3,0,0),(2167,258,'土默特左旗',3,0,0),(2168,258,'托克托县',3,0,0),(2169,258,'和林格尔县',3,0,0),(2170,258,'武川县',3,0,0),(2171,259,'阿拉善左旗',3,0,0),(2172,259,'阿拉善右旗',3,0,0),(2173,259,'额济纳旗',3,0,0),(2174,260,'临河区',3,0,0),(2175,260,'五原县',3,0,0),(2176,260,'磴口县',3,0,0),(2177,260,'乌拉特前旗',3,0,0),(2178,260,'乌拉特中旗',3,0,0),(2179,260,'乌拉特后旗',3,0,0),(2180,260,'杭锦后旗',3,0,0),(2181,261,'昆都仑区',3,0,0),(2182,261,'青山区',3,0,0),(2183,261,'东河区',3,0,0),(2184,261,'九原区',3,0,0),(2185,261,'石拐区',3,0,0),(2186,261,'白云矿区',3,0,0),(2187,261,'土默特右旗',3,0,0),(2188,261,'固阳县',3,0,0),(2189,261,'达尔罕茂明安联合旗',3,0,0),(2190,262,'红山区',3,0,0),(2191,262,'元宝山区',3,0,0),(2192,262,'松山区',3,0,0),(2193,262,'阿鲁科尔沁旗',3,0,0),(2194,262,'巴林左旗',3,0,0),(2195,262,'巴林右旗',3,0,0),(2196,262,'林西县',3,0,0),(2197,262,'克什克腾旗',3,0,0),(2198,262,'翁牛特旗',3,0,0),(2199,262,'喀喇沁旗',3,0,0),(2200,262,'宁城县',3,0,0),(2201,262,'敖汉旗',3,0,0),(2202,263,'东胜区',3,0,0),(2203,263,'达拉特旗',3,0,0),(2204,263,'准格尔旗',3,0,0),(2205,263,'鄂托克前旗',3,0,0),(2206,263,'鄂托克旗',3,0,0),(2207,263,'杭锦旗',3,0,0),(2208,263,'乌审旗',3,0,0),(2209,263,'伊金霍洛旗',3,0,0),(2210,264,'海拉尔区',3,0,0),(2211,264,'莫力达瓦',3,0,0),(2212,264,'满洲里市',3,0,0),(2213,264,'牙克石市',3,0,0),(2214,264,'扎兰屯市',3,0,0),(2215,264,'额尔古纳市',3,0,0),(2216,264,'根河市',3,0,0),(2217,264,'阿荣旗',3,0,0),(2218,264,'鄂伦春自治旗',3,0,0),(2219,264,'鄂温克族自治旗',3,0,0),(2220,264,'陈巴尔虎旗',3,0,0),(2221,264,'新巴尔虎左旗',3,0,0),(2222,264,'新巴尔虎右旗',3,0,0),(2223,265,'科尔沁区',3,0,0),(2224,265,'霍林郭勒市',3,0,0),(2225,265,'科尔沁左翼中旗',3,0,0),(2226,265,'科尔沁左翼后旗',3,0,0),(2227,265,'开鲁县',3,0,0),(2228,265,'库伦旗',3,0,0),(2229,265,'奈曼旗',3,0,0),(2230,265,'扎鲁特旗',3,0,0),(2231,266,'海勃湾区',3,0,0),(2232,266,'乌达区',3,0,0),(2233,266,'海南区',3,0,0),(2234,267,'化德县',3,0,0),(2235,267,'集宁区',3,0,0),(2236,267,'丰镇市',3,0,0),(2237,267,'卓资县',3,0,0),(2238,267,'商都县',3,0,0),(2239,267,'兴和县',3,0,0),(2240,267,'凉城县',3,0,0),(2241,267,'察哈尔右翼前旗',3,0,0),(2242,267,'察哈尔右翼中旗',3,0,0),(2243,267,'察哈尔右翼后旗',3,0,0),(2244,267,'四子王旗',3,0,0),(2245,268,'二连浩特市',3,0,0),(2246,268,'锡林浩特市',3,0,0),(2247,268,'阿巴嘎旗',3,0,0),(2248,268,'苏尼特左旗',3,0,0),(2249,268,'苏尼特右旗',3,0,0),(2250,268,'东乌珠穆沁旗',3,0,0),(2251,268,'西乌珠穆沁旗',3,0,0),(2252,268,'太仆寺旗',3,0,0),(2253,268,'镶黄旗',3,0,0),(2254,268,'正镶白旗',3,0,0),(2255,268,'正蓝旗',3,0,0),(2256,268,'多伦县',3,0,0),(2257,269,'乌兰浩特市',3,0,0),(2258,269,'阿尔山市',3,0,0),(2259,269,'科尔沁右翼前旗',3,0,0),(2260,269,'科尔沁右翼中旗',3,0,0),(2261,269,'扎赉特旗',3,0,0),(2262,269,'突泉县',3,0,0),(2263,270,'西夏区',3,0,0),(2264,270,'金凤区',3,0,0),(2265,270,'兴庆区',3,0,0),(2266,270,'灵武市',3,0,0),(2267,270,'永宁县',3,0,0),(2268,270,'贺兰县',3,0,0),(2269,271,'原州区',3,0,0),(2270,271,'海原县',3,0,0),(2271,271,'西吉县',3,0,0),(2272,271,'隆德县',3,0,0),(2273,271,'泾源县',3,0,0),(2274,271,'彭阳县',3,0,0),(2275,272,'惠农县',3,0,0),(2276,272,'大武口区',3,0,0),(2277,272,'惠农区',3,0,0),(2278,272,'陶乐县',3,0,0),(2279,272,'平罗县',3,0,0),(2280,273,'利通区',3,0,0),(2281,273,'中卫县',3,0,0),(2282,273,'青铜峡市',3,0,0),(2283,273,'中宁县',3,0,0),(2284,273,'盐池县',3,0,0),(2285,273,'同心县',3,0,0),(2286,274,'沙坡头区',3,0,0),(2287,274,'海原县',3,0,0),(2288,274,'中宁县',3,0,0),(2289,275,'城中区',3,0,0),(2290,275,'城东区',3,0,0),(2291,275,'城西区',3,0,0),(2292,275,'城北区',3,0,0),(2293,275,'湟中县',3,0,0),(2294,275,'湟源县',3,0,0),(2295,275,'大通',3,0,0),(2296,276,'玛沁县',3,0,0),(2297,276,'班玛县',3,0,0),(2298,276,'甘德县',3,0,0),(2299,276,'达日县',3,0,0),(2300,276,'久治县',3,0,0),(2301,276,'玛多县',3,0,0),(2302,277,'海晏县',3,0,0),(2303,277,'祁连县',3,0,0),(2304,277,'刚察县',3,0,0),(2305,277,'门源',3,0,0),(2306,278,'平安县',3,0,0),(2307,278,'乐都县',3,0,0),(2308,278,'民和',3,0,0),(2309,278,'互助',3,0,0),(2310,278,'化隆',3,0,0),(2311,278,'循化',3,0,0),(2312,279,'共和县',3,0,0),(2313,279,'同德县',3,0,0),(2314,279,'贵德县',3,0,0),(2315,279,'兴海县',3,0,0),(2316,279,'贵南县',3,0,0),(2317,280,'德令哈市',3,0,0),(2318,280,'格尔木市',3,0,0),(2319,280,'乌兰县',3,0,0),(2320,280,'都兰县',3,0,0),(2321,280,'天峻县',3,0,0),(2322,281,'同仁县',3,0,0),(2323,281,'尖扎县',3,0,0),(2324,281,'泽库县',3,0,0),(2325,281,'河南蒙古族自治县',3,0,0),(2326,282,'玉树县',3,0,0),(2327,282,'杂多县',3,0,0),(2328,282,'称多县',3,0,0),(2329,282,'治多县',3,0,0),(2330,282,'囊谦县',3,0,0),(2331,282,'曲麻莱县',3,0,0),(2332,283,'市中区',3,0,0),(2333,283,'历下区',3,0,0),(2334,283,'天桥区',3,0,0),(2335,283,'槐荫区',3,0,0),(2336,283,'历城区',3,0,0),(2337,283,'长清区',3,0,0),(2338,283,'章丘市',3,0,0),(2339,283,'平阴县',3,0,0),(2340,283,'济阳县',3,0,0),(2341,283,'商河县',3,0,0),(2342,284,'市南区',3,0,0),(2343,284,'市北区',3,0,0),(2344,284,'城阳区',3,0,0),(2345,284,'四方区',3,0,0),(2346,284,'李沧区',3,0,0),(2347,284,'黄岛区',3,0,0),(2348,284,'崂山区',3,0,0),(2349,284,'胶州市',3,0,0),(2350,284,'即墨市',3,0,0),(2351,284,'平度市',3,0,0),(2352,284,'胶南市',3,0,0),(2353,284,'莱西市',3,0,0),(2354,285,'滨城区',3,0,0),(2355,285,'惠民县',3,0,0),(2356,285,'阳信县',3,0,0),(2357,285,'无棣县',3,0,0),(2358,285,'沾化县',3,0,0),(2359,285,'博兴县',3,0,0),(2360,285,'邹平县',3,0,0),(2361,286,'德城区',3,0,0),(2362,286,'陵县',3,0,0),(2363,286,'乐陵市',3,0,0),(2364,286,'禹城市',3,0,0),(2365,286,'宁津县',3,0,0),(2366,286,'庆云县',3,0,0),(2367,286,'临邑县',3,0,0),(2368,286,'齐河县',3,0,0),(2369,286,'平原县',3,0,0),(2370,286,'夏津县',3,0,0),(2371,286,'武城县',3,0,0),(2372,287,'东营区',3,0,0),(2373,287,'河口区',3,0,0),(2374,287,'垦利县',3,0,0),(2375,287,'利津县',3,0,0),(2376,287,'广饶县',3,0,0),(2377,288,'牡丹区',3,0,0),(2378,288,'曹县',3,0,0),(2379,288,'单县',3,0,0),(2380,288,'成武县',3,0,0),(2381,288,'巨野县',3,0,0),(2382,288,'郓城县',3,0,0),(2383,288,'鄄城县',3,0,0),(2384,288,'定陶县',3,0,0),(2385,288,'东明县',3,0,0),(2386,289,'市中区',3,0,0),(2387,289,'任城区',3,0,0),(2388,289,'曲阜市',3,0,0),(2389,289,'兖州市',3,0,0),(2390,289,'邹城市',3,0,0),(2391,289,'微山县',3,0,0),(2392,289,'鱼台县',3,0,0),(2393,289,'金乡县',3,0,0),(2394,289,'嘉祥县',3,0,0),(2395,289,'汶上县',3,0,0),(2396,289,'泗水县',3,0,0),(2397,289,'梁山县',3,0,0),(2398,290,'莱城区',3,0,0),(2399,290,'钢城区',3,0,0),(2400,291,'东昌府区',3,0,0),(2401,291,'临清市',3,0,0),(2402,291,'阳谷县',3,0,0),(2403,291,'莘县',3,0,0),(2404,291,'茌平县',3,0,0),(2405,291,'东阿县',3,0,0),(2406,291,'冠县',3,0,0),(2407,291,'高唐县',3,0,0),(2408,292,'兰山区',3,0,0),(2409,292,'罗庄区',3,0,0),(2410,292,'河东区',3,0,0),(2411,292,'沂南县',3,0,0),(2412,292,'郯城县',3,0,0),(2413,292,'沂水县',3,0,0),(2414,292,'苍山县',3,0,0),(2415,292,'费县',3,0,0),(2416,292,'平邑县',3,0,0),(2417,292,'莒南县',3,0,0),(2418,292,'蒙阴县',3,0,0),(2419,292,'临沭县',3,0,0),(2420,293,'东港区',3,0,0),(2421,293,'岚山区',3,0,0),(2422,293,'五莲县',3,0,0),(2423,293,'莒县',3,0,0),(2424,294,'泰山区',3,0,0),(2425,294,'岱岳区',3,0,0),(2426,294,'新泰市',3,0,0),(2427,294,'肥城市',3,0,0),(2428,294,'宁阳县',3,0,0),(2429,294,'东平县',3,0,0),(2430,295,'荣成市',3,0,0),(2431,295,'乳山市',3,0,0),(2432,295,'环翠区',3,0,0),(2433,295,'文登市',3,0,0),(2434,296,'潍城区',3,0,0),(2435,296,'寒亭区',3,0,0),(2436,296,'坊子区',3,0,0),(2437,296,'奎文区',3,0,0),(2438,296,'青州市',3,0,0),(2439,296,'诸城市',3,0,0),(2440,296,'寿光市',3,0,0),(2441,296,'安丘市',3,0,0),(2442,296,'高密市',3,0,0),(2443,296,'昌邑市',3,0,0),(2444,296,'临朐县',3,0,0),(2445,296,'昌乐县',3,0,0),(2446,297,'芝罘区',3,0,0),(2447,297,'福山区',3,0,0),(2448,297,'牟平区',3,0,0),(2449,297,'莱山区',3,0,0),(2450,297,'开发区',3,0,0),(2451,297,'龙口市',3,0,0),(2452,297,'莱阳市',3,0,0),(2453,297,'莱州市',3,0,0),(2454,297,'蓬莱市',3,0,0),(2455,297,'招远市',3,0,0),(2456,297,'栖霞市',3,0,0),(2457,297,'海阳市',3,0,0),(2458,297,'长岛县',3,0,0),(2459,298,'市中区',3,0,0),(2460,298,'山亭区',3,0,0),(2461,298,'峄城区',3,0,0),(2462,298,'台儿庄区',3,0,0),(2463,298,'薛城区',3,0,0),(2464,298,'滕州市',3,0,0),(2465,299,'张店区',3,0,0),(2466,299,'临淄区',3,0,0),(2467,299,'淄川区',3,0,0),(2468,299,'博山区',3,0,0),(2469,299,'周村区',3,0,0),(2470,299,'桓台县',3,0,0),(2471,299,'高青县',3,0,0),(2472,299,'沂源县',3,0,0),(2473,300,'杏花岭区',3,0,0),(2474,300,'小店区',3,0,0),(2475,300,'迎泽区',3,0,0),(2476,300,'尖草坪区',3,0,0),(2477,300,'万柏林区',3,0,0),(2478,300,'晋源区',3,0,0),(2479,300,'高新开发区',3,0,0),(2480,300,'民营经济开发区',3,0,0),(2481,300,'经济技术开发区',3,0,0),(2482,300,'清徐县',3,0,0),(2483,300,'阳曲县',3,0,0),(2484,300,'娄烦县',3,0,0),(2485,300,'古交市',3,0,0),(2486,301,'城区',3,0,0),(2487,301,'郊区',3,0,0),(2488,301,'沁县',3,0,0),(2489,301,'潞城市',3,0,0),(2490,301,'长治县',3,0,0),(2491,301,'襄垣县',3,0,0),(2492,301,'屯留县',3,0,0),(2493,301,'平顺县',3,0,0),(2494,301,'黎城县',3,0,0),(2495,301,'壶关县',3,0,0),(2496,301,'长子县',3,0,0),(2497,301,'武乡县',3,0,0),(2498,301,'沁源县',3,0,0),(2499,302,'城区',3,0,0),(2500,302,'矿区',3,0,0),(2501,302,'南郊区',3,0,0),(2502,302,'新荣区',3,0,0),(2503,302,'阳高县',3,0,0),(2504,302,'天镇县',3,0,0),(2505,302,'广灵县',3,0,0),(2506,302,'灵丘县',3,0,0),(2507,302,'浑源县',3,0,0),(2508,302,'左云县',3,0,0),(2509,302,'大同县',3,0,0),(2510,303,'城区',3,0,0),(2511,303,'高平市',3,0,0),(2512,303,'沁水县',3,0,0),(2513,303,'阳城县',3,0,0),(2514,303,'陵川县',3,0,0),(2515,303,'泽州县',3,0,0),(2516,304,'榆次区',3,0,0),(2517,304,'介休市',3,0,0),(2518,304,'榆社县',3,0,0),(2519,304,'左权县',3,0,0),(2520,304,'和顺县',3,0,0),(2521,304,'昔阳县',3,0,0),(2522,304,'寿阳县',3,0,0),(2523,304,'太谷县',3,0,0),(2524,304,'祁县',3,0,0),(2525,304,'平遥县',3,0,0),(2526,304,'灵石县',3,0,0),(2527,305,'尧都区',3,0,0),(2528,305,'侯马市',3,0,0),(2529,305,'霍州市',3,0,0),(2530,305,'曲沃县',3,0,0),(2531,305,'翼城县',3,0,0),(2532,305,'襄汾县',3,0,0),(2533,305,'洪洞县',3,0,0),(2534,305,'吉县',3,0,0),(2535,305,'安泽县',3,0,0),(2536,305,'浮山县',3,0,0),(2537,305,'古县',3,0,0),(2538,305,'乡宁县',3,0,0),(2539,305,'大宁县',3,0,0),(2540,305,'隰县',3,0,0),(2541,305,'永和县',3,0,0),(2542,305,'蒲县',3,0,0),(2543,305,'汾西县',3,0,0),(2544,306,'离石市',3,0,0),(2545,306,'离石区',3,0,0),(2546,306,'孝义市',3,0,0),(2547,306,'汾阳市',3,0,0),(2548,306,'文水县',3,0,0),(2549,306,'交城县',3,0,0),(2550,306,'兴县',3,0,0),(2551,306,'临县',3,0,0),(2552,306,'柳林县',3,0,0),(2553,306,'石楼县',3,0,0),(2554,306,'岚县',3,0,0),(2555,306,'方山县',3,0,0),(2556,306,'中阳县',3,0,0),(2557,306,'交口县',3,0,0),(2558,307,'朔城区',3,0,0),(2559,307,'平鲁区',3,0,0),(2560,307,'山阴县',3,0,0),(2561,307,'应县',3,0,0),(2562,307,'右玉县',3,0,0),(2563,307,'怀仁县',3,0,0),(2564,308,'忻府区',3,0,0),(2565,308,'原平市',3,0,0),(2566,308,'定襄县',3,0,0),(2567,308,'五台县',3,0,0),(2568,308,'代县',3,0,0),(2569,308,'繁峙县',3,0,0),(2570,308,'宁武县',3,0,0),(2571,308,'静乐县',3,0,0),(2572,308,'神池县',3,0,0),(2573,308,'五寨县',3,0,0),(2574,308,'岢岚县',3,0,0),(2575,308,'河曲县',3,0,0),(2576,308,'保德县',3,0,0),(2577,308,'偏关县',3,0,0),(2578,309,'城区',3,0,0),(2579,309,'矿区',3,0,0),(2580,309,'郊区',3,0,0),(2581,309,'平定县',3,0,0),(2582,309,'盂县',3,0,0),(2583,310,'盐湖区',3,0,0),(2584,310,'永济市',3,0,0),(2585,310,'河津市',3,0,0),(2586,310,'临猗县',3,0,0),(2587,310,'万荣县',3,0,0),(2588,310,'闻喜县',3,0,0),(2589,310,'稷山县',3,0,0),(2590,310,'新绛县',3,0,0),(2591,310,'绛县',3,0,0),(2592,310,'垣曲县',3,0,0),(2593,310,'夏县',3,0,0),(2594,310,'平陆县',3,0,0),(2595,310,'芮城县',3,0,0),(2596,311,'莲湖区',3,0,0),(2597,311,'新城区',3,0,0),(2598,311,'碑林区',3,0,0),(2599,311,'雁塔区',3,0,0),(2600,311,'灞桥区',3,0,0),(2601,311,'未央区',3,0,0),(2602,311,'阎良区',3,0,0),(2603,311,'临潼区',3,0,0),(2604,311,'长安区',3,0,0),(2605,311,'蓝田县',3,0,0),(2606,311,'周至县',3,0,0),(2607,311,'户县',3,0,0),(2608,311,'高陵县',3,0,0),(2609,312,'汉滨区',3,0,0),(2610,312,'汉阴县',3,0,0),(2611,312,'石泉县',3,0,0),(2612,312,'宁陕县',3,0,0),(2613,312,'紫阳县',3,0,0),(2614,312,'岚皋县',3,0,0),(2615,312,'平利县',3,0,0),(2616,312,'镇坪县',3,0,0),(2617,312,'旬阳县',3,0,0),(2618,312,'白河县',3,0,0),(2619,313,'陈仓区',3,0,0),(2620,313,'渭滨区',3,0,0),(2621,313,'金台区',3,0,0),(2622,313,'凤翔县',3,0,0),(2623,313,'岐山县',3,0,0),(2624,313,'扶风县',3,0,0),(2625,313,'眉县',3,0,0),(2626,313,'陇县',3,0,0),(2627,313,'千阳县',3,0,0),(2628,313,'麟游县',3,0,0),(2629,313,'凤县',3,0,0),(2630,313,'太白县',3,0,0),(2631,314,'汉台区',3,0,0),(2632,314,'南郑县',3,0,0),(2633,314,'城固县',3,0,0),(2634,314,'洋县',3,0,0),(2635,314,'西乡县',3,0,0),(2636,314,'勉县',3,0,0),(2637,314,'宁强县',3,0,0),(2638,314,'略阳县',3,0,0),(2639,314,'镇巴县',3,0,0),(2640,314,'留坝县',3,0,0),(2641,314,'佛坪县',3,0,0),(2642,315,'商州区',3,0,0),(2643,315,'洛南县',3,0,0),(2644,315,'丹凤县',3,0,0),(2645,315,'商南县',3,0,0),(2646,315,'山阳县',3,0,0),(2647,315,'镇安县',3,0,0),(2648,315,'柞水县',3,0,0),(2649,316,'耀州区',3,0,0),(2650,316,'王益区',3,0,0),(2651,316,'印台区',3,0,0),(2652,316,'宜君县',3,0,0),(2653,317,'临渭区',3,0,0),(2654,317,'韩城市',3,0,0),(2655,317,'华阴市',3,0,0),(2656,317,'华县',3,0,0),(2657,317,'潼关县',3,0,0),(2658,317,'大荔县',3,0,0),(2659,317,'合阳县',3,0,0),(2660,317,'澄城县',3,0,0),(2661,317,'蒲城县',3,0,0),(2662,317,'白水县',3,0,0),(2663,317,'富平县',3,0,0),(2664,318,'秦都区',3,0,0),(2665,318,'渭城区',3,0,0),(2666,318,'杨陵区',3,0,0),(2667,318,'兴平市',3,0,0),(2668,318,'三原县',3,0,0),(2669,318,'泾阳县',3,0,0),(2670,318,'乾县',3,0,0),(2671,318,'礼泉县',3,0,0),(2672,318,'永寿县',3,0,0),(2673,318,'彬县',3,0,0),(2674,318,'长武县',3,0,0),(2675,318,'旬邑县',3,0,0),(2676,318,'淳化县',3,0,0),(2677,318,'武功县',3,0,0),(2678,319,'吴起县',3,0,0),(2679,319,'宝塔区',3,0,0),(2680,319,'延长县',3,0,0),(2681,319,'延川县',3,0,0),(2682,319,'子长县',3,0,0),(2683,319,'安塞县',3,0,0),(2684,319,'志丹县',3,0,0),(2685,319,'甘泉县',3,0,0),(2686,319,'富县',3,0,0),(2687,319,'洛川县',3,0,0),(2688,319,'宜川县',3,0,0),(2689,319,'黄龙县',3,0,0),(2690,319,'黄陵县',3,0,0),(2691,320,'榆阳区',3,0,0),(2692,320,'神木县',3,0,0),(2693,320,'府谷县',3,0,0),(2694,320,'横山县',3,0,0),(2695,320,'靖边县',3,0,0),(2696,320,'定边县',3,0,0),(2697,320,'绥德县',3,0,0),(2698,320,'米脂县',3,0,0),(2699,320,'佳县',3,0,0),(2700,320,'吴堡县',3,0,0),(2701,320,'清涧县',3,0,0),(2702,320,'子洲县',3,0,0),(2703,321,'长宁区',3,0,0),(2704,321,'闸北区',3,0,0),(2705,321,'闵行区',3,0,0),(2706,321,'徐汇区',3,0,0),(2707,321,'浦东新区',3,0,0),(2708,321,'杨浦区',3,0,0),(2709,321,'普陀区',3,0,0),(2710,321,'静安区',3,0,0),(2711,321,'卢湾区',3,0,0),(2712,321,'虹口区',3,0,0),(2713,321,'黄浦区',3,0,0),(2714,321,'南汇区',3,0,0),(2715,321,'松江区',3,0,0),(2716,321,'嘉定区',3,0,0),(2717,321,'宝山区',3,0,0),(2718,321,'青浦区',3,0,0),(2719,321,'金山区',3,0,0),(2720,321,'奉贤区',3,0,0),(2721,321,'崇明县',3,0,0),(2722,322,'青羊区',3,0,0),(2723,322,'锦江区',3,0,0),(2724,322,'金牛区',3,0,0),(2725,322,'武侯区',3,0,0),(2726,322,'成华区',3,0,0),(2727,322,'龙泉驿区',3,0,0),(2728,322,'青白江区',3,0,0),(2729,322,'新都区',3,0,0),(2730,322,'温江区',3,0,0),(2731,322,'高新区',3,0,0),(2732,322,'高新西区',3,0,0),(2733,322,'都江堰市',3,0,0),(2734,322,'彭州市',3,0,0),(2735,322,'邛崃市',3,0,0),(2736,322,'崇州市',3,0,0),(2737,322,'金堂县',3,0,0),(2738,322,'双流县',3,0,0),(2739,322,'郫县',3,0,0),(2740,322,'大邑县',3,0,0),(2741,322,'蒲江县',3,0,0),(2742,322,'新津县',3,0,0),(2743,322,'都江堰市',3,0,0),(2744,322,'彭州市',3,0,0),(2745,322,'邛崃市',3,0,0),(2746,322,'崇州市',3,0,0),(2747,322,'金堂县',3,0,0),(2748,322,'双流县',3,0,0),(2749,322,'郫县',3,0,0),(2750,322,'大邑县',3,0,0),(2751,322,'蒲江县',3,0,0),(2752,322,'新津县',3,0,0),(2753,323,'涪城区',3,0,0),(2754,323,'游仙区',3,0,0),(2755,323,'江油市',3,0,0),(2756,323,'盐亭县',3,0,0),(2757,323,'三台县',3,0,0),(2758,323,'平武县',3,0,0),(2759,323,'安县',3,0,0),(2760,323,'梓潼县',3,0,0),(2761,323,'北川县',3,0,0),(2762,324,'马尔康县',3,0,0),(2763,324,'汶川县',3,0,0),(2764,324,'理县',3,0,0),(2765,324,'茂县',3,0,0),(2766,324,'松潘县',3,0,0),(2767,324,'九寨沟县',3,0,0),(2768,324,'金川县',3,0,0),(2769,324,'小金县',3,0,0),(2770,324,'黑水县',3,0,0),(2771,324,'壤塘县',3,0,0),(2772,324,'阿坝县',3,0,0),(2773,324,'若尔盖县',3,0,0),(2774,324,'红原县',3,0,0),(2775,325,'巴州区',3,0,0),(2776,325,'通江县',3,0,0),(2777,325,'南江县',3,0,0),(2778,325,'平昌县',3,0,0),(2779,326,'通川区',3,0,0),(2780,326,'万源市',3,0,0),(2781,326,'达县',3,0,0),(2782,326,'宣汉县',3,0,0),(2783,326,'开江县',3,0,0),(2784,326,'大竹县',3,0,0),(2785,326,'渠县',3,0,0),(2786,327,'旌阳区',3,0,0),(2787,327,'广汉市',3,0,0),(2788,327,'什邡市',3,0,0),(2789,327,'绵竹市',3,0,0),(2790,327,'罗江县',3,0,0),(2791,327,'中江县',3,0,0),(2792,328,'康定县',3,0,0),(2793,328,'丹巴县',3,0,0),(2794,328,'泸定县',3,0,0),(2795,328,'炉霍县',3,0,0),(2796,328,'九龙县',3,0,0),(2797,328,'甘孜县',3,0,0),(2798,328,'雅江县',3,0,0),(2799,328,'新龙县',3,0,0),(2800,328,'道孚县',3,0,0),(2801,328,'白玉县',3,0,0),(2802,328,'理塘县',3,0,0),(2803,328,'德格县',3,0,0),(2804,328,'乡城县',3,0,0),(2805,328,'石渠县',3,0,0),(2806,328,'稻城县',3,0,0),(2807,328,'色达县',3,0,0),(2808,328,'巴塘县',3,0,0),(2809,328,'得荣县',3,0,0),(2810,329,'广安区',3,0,0),(2811,329,'华蓥市',3,0,0),(2812,329,'岳池县',3,0,0),(2813,329,'武胜县',3,0,0),(2814,329,'邻水县',3,0,0),(2815,330,'利州区',3,0,0),(2816,330,'元坝区',3,0,0),(2817,330,'朝天区',3,0,0),(2818,330,'旺苍县',3,0,0),(2819,330,'青川县',3,0,0),(2820,330,'剑阁县',3,0,0),(2821,330,'苍溪县',3,0,0),(2822,331,'峨眉山市',3,0,0),(2823,331,'乐山市',3,0,0),(2824,331,'犍为县',3,0,0),(2825,331,'井研县',3,0,0),(2826,331,'夹江县',3,0,0),(2827,331,'沐川县',3,0,0),(2828,331,'峨边',3,0,0),(2829,331,'马边',3,0,0),(2830,332,'西昌市',3,0,0),(2831,332,'盐源县',3,0,0),(2832,332,'德昌县',3,0,0),(2833,332,'会理县',3,0,0),(2834,332,'会东县',3,0,0),(2835,332,'宁南县',3,0,0),(2836,332,'普格县',3,0,0),(2837,332,'布拖县',3,0,0),(2838,332,'金阳县',3,0,0),(2839,332,'昭觉县',3,0,0),(2840,332,'喜德县',3,0,0),(2841,332,'冕宁县',3,0,0),(2842,332,'越西县',3,0,0),(2843,332,'甘洛县',3,0,0),(2844,332,'美姑县',3,0,0),(2845,332,'雷波县',3,0,0),(2846,332,'木里',3,0,0),(2847,333,'东坡区',3,0,0),(2848,333,'仁寿县',3,0,0),(2849,333,'彭山县',3,0,0),(2850,333,'洪雅县',3,0,0),(2851,333,'丹棱县',3,0,0),(2852,333,'青神县',3,0,0),(2853,334,'阆中市',3,0,0),(2854,334,'南部县',3,0,0),(2855,334,'营山县',3,0,0),(2856,334,'蓬安县',3,0,0),(2857,334,'仪陇县',3,0,0),(2858,334,'顺庆区',3,0,0),(2859,334,'高坪区',3,0,0),(2860,334,'嘉陵区',3,0,0),(2861,334,'西充县',3,0,0),(2862,335,'市中区',3,0,0),(2863,335,'东兴区',3,0,0),(2864,335,'威远县',3,0,0),(2865,335,'资中县',3,0,0),(2866,335,'隆昌县',3,0,0),(2867,336,'东  区',3,0,0),(2868,336,'西  区',3,0,0),(2869,336,'仁和区',3,0,0),(2870,336,'米易县',3,0,0),(2871,336,'盐边县',3,0,0),(2872,337,'船山区',3,0,0),(2873,337,'安居区',3,0,0),(2874,337,'蓬溪县',3,0,0),(2875,337,'射洪县',3,0,0),(2876,337,'大英县',3,0,0),(2877,338,'雨城区',3,0,0),(2878,338,'名山县',3,0,0),(2879,338,'荥经县',3,0,0),(2880,338,'汉源县',3,0,0),(2881,338,'石棉县',3,0,0),(2882,338,'天全县',3,0,0),(2883,338,'芦山县',3,0,0),(2884,338,'宝兴县',3,0,0),(2885,339,'翠屏区',3,0,0),(2886,339,'宜宾县',3,0,0),(2887,339,'南溪县',3,0,0),(2888,339,'江安县',3,0,0),(2889,339,'长宁县',3,0,0),(2890,339,'高县',3,0,0),(2891,339,'珙县',3,0,0),(2892,339,'筠连县',3,0,0),(2893,339,'兴文县',3,0,0),(2894,339,'屏山县',3,0,0),(2895,340,'雁江区',3,0,0),(2896,340,'简阳市',3,0,0),(2897,340,'安岳县',3,0,0),(2898,340,'乐至县',3,0,0),(2899,341,'大安区',3,0,0),(2900,341,'自流井区',3,0,0),(2901,341,'贡井区',3,0,0),(2902,341,'沿滩区',3,0,0),(2903,341,'荣县',3,0,0),(2904,341,'富顺县',3,0,0),(2905,342,'江阳区',3,0,0),(2906,342,'纳溪区',3,0,0),(2907,342,'龙马潭区',3,0,0),(2908,342,'泸县',3,0,0),(2909,342,'合江县',3,0,0),(2910,342,'叙永县',3,0,0),(2911,342,'古蔺县',3,0,0),(2912,343,'和平区',3,0,0),(2913,343,'河西区',3,0,0),(2914,343,'南开区',3,0,0),(2915,343,'河北区',3,0,0),(2916,343,'河东区',3,0,0),(2917,343,'红桥区',3,0,0),(2918,343,'东丽区',3,0,0),(2919,343,'津南区',3,0,0),(2920,343,'西青区',3,0,0),(2921,343,'北辰区',3,0,0),(2922,343,'塘沽区',3,0,0),(2923,343,'汉沽区',3,0,0),(2924,343,'大港区',3,0,0),(2925,343,'武清区',3,0,0),(2926,343,'宝坻区',3,0,0),(2927,343,'经济开发区',3,0,0),(2928,343,'宁河县',3,0,0),(2929,343,'静海县',3,0,0),(2930,343,'蓟县',3,0,0),(2931,344,'城关区',3,0,0),(2932,344,'林周县',3,0,0),(2933,344,'当雄县',3,0,0),(2934,344,'尼木县',3,0,0),(2935,344,'曲水县',3,0,0),(2936,344,'堆龙德庆县',3,0,0),(2937,344,'达孜县',3,0,0),(2938,344,'墨竹工卡县',3,0,0),(2939,345,'噶尔县',3,0,0),(2940,345,'普兰县',3,0,0),(2941,345,'札达县',3,0,0),(2942,345,'日土县',3,0,0),(2943,345,'革吉县',3,0,0),(2944,345,'改则县',3,0,0),(2945,345,'措勤县',3,0,0),(2946,346,'昌都县',3,0,0),(2947,346,'江达县',3,0,0),(2948,346,'贡觉县',3,0,0),(2949,346,'类乌齐县',3,0,0),(2950,346,'丁青县',3,0,0),(2951,346,'察雅县',3,0,0),(2952,346,'八宿县',3,0,0),(2953,346,'左贡县',3,0,0),(2954,346,'芒康县',3,0,0),(2955,346,'洛隆县',3,0,0),(2956,346,'边坝县',3,0,0),(2957,347,'林芝县',3,0,0),(2958,347,'工布江达县',3,0,0),(2959,347,'米林县',3,0,0),(2960,347,'墨脱县',3,0,0),(2961,347,'波密县',3,0,0),(2962,347,'察隅县',3,0,0),(2963,347,'朗县',3,0,0),(2964,348,'那曲县',3,0,0),(2965,348,'嘉黎县',3,0,0),(2966,348,'比如县',3,0,0),(2967,348,'聂荣县',3,0,0),(2968,348,'安多县',3,0,0),(2969,348,'申扎县',3,0,0),(2970,348,'索县',3,0,0),(2971,348,'班戈县',3,0,0),(2972,348,'巴青县',3,0,0),(2973,348,'尼玛县',3,0,0),(2974,349,'日喀则市',3,0,0),(2975,349,'南木林县',3,0,0),(2976,349,'江孜县',3,0,0),(2977,349,'定日县',3,0,0),(2978,349,'萨迦县',3,0,0),(2979,349,'拉孜县',3,0,0),(2980,349,'昂仁县',3,0,0),(2981,349,'谢通门县',3,0,0),(2982,349,'白朗县',3,0,0),(2983,349,'仁布县',3,0,0),(2984,349,'康马县',3,0,0),(2985,349,'定结县',3,0,0),(2986,349,'仲巴县',3,0,0),(2987,349,'亚东县',3,0,0),(2988,349,'吉隆县',3,0,0),(2989,349,'聂拉木县',3,0,0),(2990,349,'萨嘎县',3,0,0),(2991,349,'岗巴县',3,0,0),(2992,350,'乃东县',3,0,0),(2993,350,'扎囊县',3,0,0),(2994,350,'贡嘎县',3,0,0),(2995,350,'桑日县',3,0,0),(2996,350,'琼结县',3,0,0),(2997,350,'曲松县',3,0,0),(2998,350,'措美县',3,0,0),(2999,350,'洛扎县',3,0,0),(3000,350,'加查县',3,0,0),(3001,350,'隆子县',3,0,0),(3002,350,'错那县',3,0,0),(3003,350,'浪卡子县',3,0,0),(3004,351,'天山区',3,0,0),(3005,351,'沙依巴克区',3,0,0),(3006,351,'新市区',3,0,0),(3007,351,'水磨沟区',3,0,0),(3008,351,'头屯河区',3,0,0),(3009,351,'达坂城区',3,0,0),(3010,351,'米东区',3,0,0),(3011,351,'乌鲁木齐县',3,0,0),(3012,352,'阿克苏市',3,0,0),(3013,352,'温宿县',3,0,0),(3014,352,'库车县',3,0,0),(3015,352,'沙雅县',3,0,0),(3016,352,'新和县',3,0,0),(3017,352,'拜城县',3,0,0),(3018,352,'乌什县',3,0,0),(3019,352,'阿瓦提县',3,0,0),(3020,352,'柯坪县',3,0,0),(3021,353,'阿拉尔市',3,0,0),(3022,354,'库尔勒市',3,0,0),(3023,354,'轮台县',3,0,0),(3024,354,'尉犁县',3,0,0),(3025,354,'若羌县',3,0,0),(3026,354,'且末县',3,0,0),(3027,354,'焉耆',3,0,0),(3028,354,'和静县',3,0,0),(3029,354,'和硕县',3,0,0),(3030,354,'博湖县',3,0,0),(3031,355,'博乐市',3,0,0),(3032,355,'精河县',3,0,0),(3033,355,'温泉县',3,0,0),(3034,356,'呼图壁县',3,0,0),(3035,356,'米泉市',3,0,0),(3036,356,'昌吉市',3,0,0),(3037,356,'阜康市',3,0,0),(3038,356,'玛纳斯县',3,0,0),(3039,356,'奇台县',3,0,0),(3040,356,'吉木萨尔县',3,0,0),(3041,356,'木垒',3,0,0),(3042,357,'哈密市',3,0,0),(3043,357,'伊吾县',3,0,0),(3044,357,'巴里坤',3,0,0),(3045,358,'和田市',3,0,0),(3046,358,'和田县',3,0,0),(3047,358,'墨玉县',3,0,0),(3048,358,'皮山县',3,0,0),(3049,358,'洛浦县',3,0,0),(3050,358,'策勒县',3,0,0),(3051,358,'于田县',3,0,0),(3052,358,'民丰县',3,0,0),(3053,359,'喀什市',3,0,0),(3054,359,'疏附县',3,0,0),(3055,359,'疏勒县',3,0,0),(3056,359,'英吉沙县',3,0,0),(3057,359,'泽普县',3,0,0),(3058,359,'莎车县',3,0,0),(3059,359,'叶城县',3,0,0),(3060,359,'麦盖提县',3,0,0),(3061,359,'岳普湖县',3,0,0),(3062,359,'伽师县',3,0,0),(3063,359,'巴楚县',3,0,0),(3064,359,'塔什库尔干',3,0,0),(3065,360,'克拉玛依市',3,0,0),(3066,361,'阿图什市',3,0,0),(3067,361,'阿克陶县',3,0,0),(3068,361,'阿合奇县',3,0,0),(3069,361,'乌恰县',3,0,0),(3070,362,'石河子市',3,0,0),(3071,363,'图木舒克市',3,0,0),(3072,364,'吐鲁番市',3,0,0),(3073,364,'鄯善县',3,0,0),(3074,364,'托克逊县',3,0,0),(3075,365,'五家渠市',3,0,0),(3076,366,'阿勒泰市',3,0,0),(3077,366,'布克赛尔',3,0,0),(3078,366,'伊宁市',3,0,0),(3079,366,'布尔津县',3,0,0),(3080,366,'奎屯市',3,0,0),(3081,366,'乌苏市',3,0,0),(3082,366,'额敏县',3,0,0),(3083,366,'富蕴县',3,0,0),(3084,366,'伊宁县',3,0,0),(3085,366,'福海县',3,0,0),(3086,366,'霍城县',3,0,0),(3087,366,'沙湾县',3,0,0),(3088,366,'巩留县',3,0,0),(3089,366,'哈巴河县',3,0,0),(3090,366,'托里县',3,0,0),(3091,366,'青河县',3,0,0),(3092,366,'新源县',3,0,0),(3093,366,'裕民县',3,0,0),(3094,366,'和布克赛尔',3,0,0),(3095,366,'吉木乃县',3,0,0),(3096,366,'昭苏县',3,0,0),(3097,366,'特克斯县',3,0,0),(3098,366,'尼勒克县',3,0,0),(3099,366,'察布查尔',3,0,0),(3100,367,'盘龙区',3,0,0),(3101,367,'五华区',3,0,0),(3102,367,'官渡区',3,0,0),(3103,367,'西山区',3,0,0),(3104,367,'东川区',3,0,0),(3105,367,'安宁市',3,0,0),(3106,367,'呈贡县',3,0,0),(3107,367,'晋宁县',3,0,0),(3108,367,'富民县',3,0,0),(3109,367,'宜良县',3,0,0),(3110,367,'嵩明县',3,0,0),(3111,367,'石林县',3,0,0),(3112,367,'禄劝',3,0,0),(3113,367,'寻甸',3,0,0),(3114,368,'兰坪',3,0,0),(3115,368,'泸水县',3,0,0),(3116,368,'福贡县',3,0,0),(3117,368,'贡山',3,0,0),(3118,369,'宁洱',3,0,0),(3119,369,'思茅区',3,0,0),(3120,369,'墨江',3,0,0),(3121,369,'景东',3,0,0),(3122,369,'景谷',3,0,0),(3123,369,'镇沅',3,0,0),(3124,369,'江城',3,0,0),(3125,369,'孟连',3,0,0),(3126,369,'澜沧',3,0,0),(3127,369,'西盟',3,0,0),(3128,370,'古城区',3,0,0),(3129,370,'宁蒗',3,0,0),(3130,370,'玉龙',3,0,0),(3131,370,'永胜县',3,0,0),(3132,370,'华坪县',3,0,0),(3133,371,'隆阳区',3,0,0),(3134,371,'施甸县',3,0,0),(3135,371,'腾冲县',3,0,0),(3136,371,'龙陵县',3,0,0),(3137,371,'昌宁县',3,0,0),(3138,372,'楚雄市',3,0,0),(3139,372,'双柏县',3,0,0),(3140,372,'牟定县',3,0,0),(3141,372,'南华县',3,0,0),(3142,372,'姚安县',3,0,0),(3143,372,'大姚县',3,0,0),(3144,372,'永仁县',3,0,0),(3145,372,'元谋县',3,0,0),(3146,372,'武定县',3,0,0),(3147,372,'禄丰县',3,0,0),(3148,373,'大理市',3,0,0),(3149,373,'祥云县',3,0,0),(3150,373,'宾川县',3,0,0),(3151,373,'弥渡县',3,0,0),(3152,373,'永平县',3,0,0),(3153,373,'云龙县',3,0,0),(3154,373,'洱源县',3,0,0),(3155,373,'剑川县',3,0,0),(3156,373,'鹤庆县',3,0,0),(3157,373,'漾濞',3,0,0),(3158,373,'南涧',3,0,0),(3159,373,'巍山',3,0,0),(3160,374,'潞西市',3,0,0),(3161,374,'瑞丽市',3,0,0),(3162,374,'梁河县',3,0,0),(3163,374,'盈江县',3,0,0),(3164,374,'陇川县',3,0,0),(3165,375,'香格里拉县',3,0,0),(3166,375,'德钦县',3,0,0),(3167,375,'维西',3,0,0),(3168,376,'泸西县',3,0,0),(3169,376,'蒙自县',3,0,0),(3170,376,'个旧市',3,0,0),(3171,376,'开远市',3,0,0),(3172,376,'绿春县',3,0,0),(3173,376,'建水县',3,0,0),(3174,376,'石屏县',3,0,0),(3175,376,'弥勒县',3,0,0),(3176,376,'元阳县',3,0,0),(3177,376,'红河县',3,0,0),(3178,376,'金平',3,0,0),(3179,376,'河口',3,0,0),(3180,376,'屏边',3,0,0),(3181,377,'临翔区',3,0,0),(3182,377,'凤庆县',3,0,0),(3183,377,'云县',3,0,0),(3184,377,'永德县',3,0,0),(3185,377,'镇康县',3,0,0),(3186,377,'双江',3,0,0),(3187,377,'耿马',3,0,0),(3188,377,'沧源',3,0,0),(3189,378,'麒麟区',3,0,0),(3190,378,'宣威市',3,0,0),(3191,378,'马龙县',3,0,0),(3192,378,'陆良县',3,0,0),(3193,378,'师宗县',3,0,0),(3194,378,'罗平县',3,0,0),(3195,378,'富源县',3,0,0),(3196,378,'会泽县',3,0,0),(3197,378,'沾益县',3,0,0),(3198,379,'文山县',3,0,0),(3199,379,'砚山县',3,0,0),(3200,379,'西畴县',3,0,0),(3201,379,'麻栗坡县',3,0,0),(3202,379,'马关县',3,0,0),(3203,379,'丘北县',3,0,0),(3204,379,'广南县',3,0,0),(3205,379,'富宁县',3,0,0),(3206,380,'景洪市',3,0,0),(3207,380,'勐海县',3,0,0),(3208,380,'勐腊县',3,0,0),(3209,381,'红塔区',3,0,0),(3210,381,'江川县',3,0,0),(3211,381,'澄江县',3,0,0),(3212,381,'通海县',3,0,0),(3213,381,'华宁县',3,0,0),(3214,381,'易门县',3,0,0),(3215,381,'峨山',3,0,0),(3216,381,'新平',3,0,0),(3217,381,'元江',3,0,0),(3218,382,'昭阳区',3,0,0),(3219,382,'鲁甸县',3,0,0),(3220,382,'巧家县',3,0,0),(3221,382,'盐津县',3,0,0),(3222,382,'大关县',3,0,0),(3223,382,'永善县',3,0,0),(3224,382,'绥江县',3,0,0),(3225,382,'镇雄县',3,0,0),(3226,382,'彝良县',3,0,0),(3227,382,'威信县',3,0,0),(3228,382,'水富县',3,0,0),(3229,383,'西湖区',3,0,0),(3230,383,'上城区',3,0,0),(3231,383,'下城区',3,0,0),(3232,383,'拱墅区',3,0,0),(3233,383,'滨江区',3,0,0),(3234,383,'江干区',3,0,0),(3235,383,'萧山区',3,0,0),(3236,383,'余杭区',3,0,0),(3237,383,'市郊',3,0,0),(3238,383,'建德市',3,0,0),(3239,383,'富阳市',3,0,0),(3240,383,'临安市',3,0,0),(3241,383,'桐庐县',3,0,0),(3242,383,'淳安县',3,0,0),(3243,384,'吴兴区',3,0,0),(3244,384,'南浔区',3,0,0),(3245,384,'德清县',3,0,0),(3246,384,'长兴县',3,0,0),(3247,384,'安吉县',3,0,0),(3248,385,'南湖区',3,0,0),(3249,385,'秀洲区',3,0,0),(3250,385,'海宁市',3,0,0),(3251,385,'嘉善县',3,0,0),(3252,385,'平湖市',3,0,0),(3253,385,'桐乡市',3,0,0),(3254,385,'海盐县',3,0,0),(3255,386,'婺城区',3,0,0),(3256,386,'金东区',3,0,0),(3257,386,'兰溪市',3,0,0),(3258,386,'市区',3,0,0),(3259,386,'佛堂镇',3,0,0),(3260,386,'上溪镇',3,0,0),(3261,386,'义亭镇',3,0,0),(3262,386,'大陈镇',3,0,0),(3263,386,'苏溪镇',3,0,0),(3264,386,'赤岸镇',3,0,0),(3265,386,'东阳市',3,0,0),(3266,386,'永康市',3,0,0),(3267,386,'武义县',3,0,0),(3268,386,'浦江县',3,0,0),(3269,386,'磐安县',3,0,0),(3270,387,'莲都区',3,0,0),(3271,387,'龙泉市',3,0,0),(3272,387,'青田县',3,0,0),(3273,387,'缙云县',3,0,0),(3274,387,'遂昌县',3,0,0),(3275,387,'松阳县',3,0,0),(3276,387,'云和县',3,0,0),(3277,387,'庆元县',3,0,0),(3278,387,'景宁',3,0,0),(3279,388,'海曙区',3,0,0),(3280,388,'江东区',3,0,0),(3281,388,'江北区',3,0,0),(3282,388,'镇海区',3,0,0),(3283,388,'北仑区',3,0,0),(3284,388,'鄞州区',3,0,0),(3285,388,'余姚市',3,0,0),(3286,388,'慈溪市',3,0,0),(3287,388,'奉化市',3,0,0),(3288,388,'象山县',3,0,0),(3289,388,'宁海县',3,0,0),(3290,389,'越城区',3,0,0),(3291,389,'上虞市',3,0,0),(3292,389,'嵊州市',3,0,0),(3293,389,'绍兴县',3,0,0),(3294,389,'新昌县',3,0,0),(3295,389,'诸暨市',3,0,0),(3296,390,'椒江区',3,0,0),(3297,390,'黄岩区',3,0,0),(3298,390,'路桥区',3,0,0),(3299,390,'温岭市',3,0,0),(3300,390,'临海市',3,0,0),(3301,390,'玉环县',3,0,0),(3302,390,'三门县',3,0,0),(3303,390,'天台县',3,0,0),(3304,390,'仙居县',3,0,0),(3305,391,'鹿城区',3,0,0),(3306,391,'龙湾区',3,0,0),(3307,391,'瓯海区',3,0,0),(3308,391,'瑞安市',3,0,0),(3309,391,'乐清市',3,0,0),(3310,391,'洞头县',3,0,0),(3311,391,'永嘉县',3,0,0),(3312,391,'平阳县',3,0,0),(3313,391,'苍南县',3,0,0),(3314,391,'文成县',3,0,0),(3315,391,'泰顺县',3,0,0),(3316,392,'定海区',3,0,0),(3317,392,'普陀区',3,0,0),(3318,392,'岱山县',3,0,0),(3319,392,'嵊泗县',3,0,0),(3320,393,'衢州市',3,0,0),(3321,393,'江山市',3,0,0),(3322,393,'常山县',3,0,0),(3323,393,'开化县',3,0,0),(3324,393,'龙游县',3,0,0),(3325,394,'合川区',3,0,0),(3326,394,'江津区',3,0,0),(3327,394,'南川区',3,0,0),(3328,394,'永川区',3,0,0),(3329,394,'南岸区',3,0,0),(3330,394,'渝北区',3,0,0),(3331,394,'万盛区',3,0,0),(3332,394,'大渡口区',3,0,0),(3333,394,'万州区',3,0,0),(3334,394,'北碚区',3,0,0),(3335,394,'沙坪坝区',3,0,0),(3336,394,'巴南区',3,0,0),(3337,394,'涪陵区',3,0,0),(3338,394,'江北区',3,0,0),(3339,394,'九龙坡区',3,0,0),(3340,394,'渝中区',3,0,0),(3341,394,'黔江开发区',3,0,0),(3342,394,'长寿区',3,0,0),(3343,394,'双桥区',3,0,0),(3344,394,'綦江县',3,0,0),(3345,394,'潼南县',3,0,0),(3346,394,'铜梁县',3,0,0),(3347,394,'大足县',3,0,0),(3348,394,'荣昌县',3,0,0),(3349,394,'璧山县',3,0,0),(3350,394,'垫江县',3,0,0),(3351,394,'武隆县',3,0,0),(3352,394,'丰都县',3,0,0),(3353,394,'城口县',3,0,0),(3354,394,'梁平县',3,0,0),(3355,394,'开县',3,0,0),(3356,394,'巫溪县',3,0,0),(3357,394,'巫山县',3,0,0),(3358,394,'奉节县',3,0,0),(3359,394,'云阳县',3,0,0),(3360,394,'忠县',3,0,0),(3361,394,'石柱',3,0,0),(3362,394,'彭水',3,0,0),(3363,394,'酉阳',3,0,0),(3364,394,'秀山',3,0,0),(3365,395,'沙田区',3,0,0),(3366,395,'东区',3,0,0),(3367,395,'观塘区',3,0,0),(3368,395,'黄大仙区',3,0,0),(3369,395,'九龙城区',3,0,0),(3370,395,'屯门区',3,0,0),(3371,395,'葵青区',3,0,0),(3372,395,'元朗区',3,0,0),(3373,395,'深水埗区',3,0,0),(3374,395,'西贡区',3,0,0),(3375,395,'大埔区',3,0,0),(3376,395,'湾仔区',3,0,0),(3377,395,'油尖旺区',3,0,0),(3378,395,'北区',3,0,0),(3379,395,'南区',3,0,0),(3380,395,'荃湾区',3,0,0),(3381,395,'中西区',3,0,0),(3382,395,'离岛区',3,0,0),(3383,396,'澳门',3,0,0),(3384,397,'台北',3,0,0),(3385,397,'高雄',3,0,0),(3386,397,'基隆',3,0,0),(3387,397,'台中',3,0,0),(3388,397,'台南',3,0,0),(3389,397,'新竹',3,0,0),(3390,397,'嘉义',3,0,0),(3391,397,'宜兰县',3,0,0),(3392,397,'桃园县',3,0,0),(3393,397,'苗栗县',3,0,0),(3394,397,'彰化县',3,0,0),(3395,397,'南投县',3,0,0),(3396,397,'云林县',3,0,0),(3397,397,'屏东县',3,0,0),(3398,397,'台东县',3,0,0),(3399,397,'花莲县',3,0,0),(3400,397,'澎湖县',3,0,0),(3401,3,'合肥',2,0,0),(3402,3401,'庐阳区',3,0,0),(3403,3401,'瑶海区',3,0,0),(3404,3401,'蜀山区',3,0,0),(3405,3401,'包河区',3,0,0),(3406,3401,'长丰县',3,0,0),(3407,3401,'肥东县',3,0,0),(3408,3401,'肥西县',3,0,0),(3409,0,'United States',0,0,1438073903),(3410,3409,'New York',1,0,1438074007);

#
# Structure for table "t_category"
#

CREATE TABLE `t_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '分类关键词',
  `brief` varchar(255) NOT NULL DEFAULT '' COMMENT '分类简述',
  `name` varchar(120) NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` text NOT NULL COMMENT '分类详情',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '分类图片',
  `top` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '分类顶置',
  `column` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '排版布局',
  `sort` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '显示状态',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `sort` (`sort`),
  KEY `updated_at` (`updated_at`),
  KEY `主查询` (`sort`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COMMENT='产品分类表';

#
# Data for table "t_category"
#

INSERT INTO `t_category` VALUES (1,0,'','彩妆','彩妆','<p>1</p>','/images/origin/category/2015-08/2.jpg',0,0,50,1,0,1439169879),(8,6,'','眼部护理','眼部护理','','',1,0,50,1,0,0),(14,12,'','面部护理','面部护理','','',0,0,1,1,0,0),(19,7,'','洁面','洁面','','',0,0,50,1,0,0),(82,46,'','活肤','活肤','asd','',0,0,50,1,0,0),(91,86,'','花香调','花香调','','',0,0,50,1,0,0),(92,86,'','迪奥','迪奥','','',0,0,50,1,0,0);

#
# Structure for table "t_cms_ad"
#

CREATE TABLE `t_cms_ad` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '信息id',
  `ad_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '投放范围(广告位)',
  `title` varchar(30) NOT NULL COMMENT '广告标识',
  `mode` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '广告展示模式',
  `pic_url` varchar(100) NOT NULL DEFAULT '' COMMENT '上传内容地址',
  `text` text NOT NULL COMMENT '展示内容',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `order` smallint(5) unsigned NOT NULL DEFAULT '10' COMMENT '排列排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '发布状态',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已经删除',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='广告图表';

#
# Data for table "t_cms_ad"
#

INSERT INTO `t_cms_ad` VALUES (1,1,'QQ电脑管家',1,'','','http://guanjia.qq.com/',1,1,0,1444534387,1326771010),(2,2,'迅雷看看',2,'','','http://www.xunlei.com/',2,1,0,1444534391,1326771024);

#
# Structure for table "t_cms_ad_statistics"
#

CREATE TABLE `t_cms_ad_statistics` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告统计';

#
# Data for table "t_cms_ad_statistics"
#


#
# Structure for table "t_cms_ad_type"
#

CREATE TABLE `t_cms_ad_type` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告位id',
  `short_code` varchar(20) NOT NULL DEFAULT '' COMMENT '调用广告位，短码',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '广告位名称',
  `wh_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '宽高类型',
  `width` smallint(5) unsigned NOT NULL COMMENT '广告位宽度',
  `height` smallint(5) unsigned NOT NULL COMMENT '广告位高度',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '发布状态',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已经删除',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='广告图类型表';

#
# Data for table "t_cms_ad_type"
#

INSERT INTO `t_cms_ad_type` VALUES (1,'abc','首页广告位',2,1003,80,1,0,0,1444534035),(2,'abc_d','子页广告位',1,100,70,1,0,0,1441339137),(3,'test','测试',1,1333,5345,1,0,1441339418,1444534242);

#
# Structure for table "t_cms_column"
#

CREATE TABLE `t_cms_column` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目上级id',
  `parent_str` varchar(50) NOT NULL DEFAULT '' COMMENT '栏目上级id字符串',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '栏目类型',
  `short_code` varchar(50) NOT NULL DEFAULT '' COMMENT '用户简码',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `pic_url` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图片',
  `pic_width` varchar(5) NOT NULL DEFAULT '' COMMENT '缩略图宽度',
  `pic_height` varchar(5) NOT NULL DEFAULT '' COMMENT '缩略图高度',
  `seo_title` varchar(80) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(50) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排列排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '审核状态，表示前台是否显示',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已经回收，除了回收站，其它地方都不可见',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `deleted排序` (`deleted`,`updated_at`),
  KEY `status排序` (`updated_at`,`status`) COMMENT 'status排序',
  KEY `type and order` (`type`,`order`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='栏目表';

#
# Data for table "t_cms_column"
#

INSERT INTO `t_cms_column` VALUES (1,34,'0,',1,'contact','联系我们','','','','','','','',20,1,0,1440947151,1445057409),(2,34,'0,',1,'about','关于我们','','','','','','','',1,1,0,1440947151,1445057426),(4,35,'0,',2,'news','新闻中心','','','','','asdfaw','','',45,1,0,1440947151,1445064718),(5,35,'0,',3,'xianchang','搬运现场','','','','','','','',56,1,0,1440947151,1445064732),(8,35,'0,',3,'anli','案例展示','','','','','','','',144,1,0,1440947151,1445064695),(11,0,'0,',4,'ziyuan','资源下载','','','','','','','',200,1,0,1440947151,1445054023),(19,2,'',1,'about-brief ','关于我们简述','','','','','','','关于我们简述',5,1,0,1440947151,1445052972),(25,34,'',1,'fee','收费标准','','','','','','','',15,1,0,1444578515,1445057416),(26,34,'',1,'flow','搬家流程','','','','','','','',10,1,0,1444578691,1445057421),(27,2,'',1,'bottom-about-brief','首页底部简述','','','','','','','',6,1,0,1445053391,1445053453),(28,34,'',1,'service','服务流程','','','','','','','',21,1,0,1445053559,1445057403),(30,35,'',2,'baike','搬家百科','','','','','','','',46,1,0,1445053721,1445064713),(31,35,'',2,'changshi','搬家常识','','','','','','','',47,1,0,1445054110,1445064709),(32,35,'',2,'dongtai','行业动态','','','','','','','',48,1,0,1445054196,1445064705),(33,35,'',2,'gaoshi','公司告示','','','','','','','',49,1,0,1445054235,1445064700),(34,0,'',0,'base','基本内容','','','','','','','',0,1,0,1445057305,1445057305),(35,0,'',0,'main','主体结构','','','','','','','',10,1,0,1445064652,1445064652);

#
# Structure for table "t_cms_download"
#

CREATE TABLE `t_cms_download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `column_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '所属栏目id',
  `title` varchar(80) NOT NULL COMMENT '标题',
  `colorval` char(10) NOT NULL COMMENT '字体颜色',
  `boldval` char(10) NOT NULL COMMENT '字体加粗',
  `flag` varchar(30) NOT NULL DEFAULT 'g' COMMENT '标记',
  `file_type` char(5) NOT NULL DEFAULT '' COMMENT '文件类型',
  `language` char(10) NOT NULL COMMENT '界面语言',
  `accredit` char(10) NOT NULL COMMENT '授权方式',
  `file_size` varchar(10) NOT NULL DEFAULT '' COMMENT '文件大小',
  `unit` char(4) NOT NULL COMMENT '软件大小单位',
  `run_os` varchar(50) NOT NULL DEFAULT '' COMMENT '运行环境',
  `down_url` varchar(255) NOT NULL DEFAULT '' COMMENT '下载地址',
  `source` varchar(50) NOT NULL COMMENT '文章来源',
  `author` varchar(50) NOT NULL COMMENT '作者编辑',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `keywords` varchar(50) NOT NULL COMMENT '关键字',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `content` mediumtext NOT NULL COMMENT '内容',
  `picurl` varchar(100) NOT NULL COMMENT '缩略图片',
  `picarr` text NOT NULL COMMENT '组图',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击次数',
  `order` int(10) unsigned NOT NULL DEFAULT '10' COMMENT '排列排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '发布状态',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `publish_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '内容发布时间，显示在前台',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "t_cms_download"
#

INSERT INTO `t_cms_download` VALUES (1,11,'腾讯QQ','','','g','.exe','简体中文','免费软件','51.3','MB','Win7/WinXP/WinNT','http://im.qq.com/','','admin','','QQ,QQ2012,腾讯QQ2012','免费的即时通讯平台，带来更多的沟通乐趣。','腾讯推出的即时通讯工具。支持在线聊天、视频电话、点对点断点续传文件、共享文件、网络硬盘、自定义面板、QQ邮箱等多种功能。免费的通讯平台，给您带来更多沟通乐趣。','templates/default/images/imgdata/qqlogo.gif','',132,1,1,0,0,1444533595,1346030443),(2,11,'掌上百度','','','g','.rar','简体中文','免费软件','2.8','MB','Win7/WinXP/WinNT','http://shouji.baidu.com/zhangbai/indexb.html','','admin','','','掌上百度是百度公司专门为手机用户打造的一款客户端软件。','掌上百度是百度公司专门为手机用户打造的一款客户端软件。除了强大的无线搜索功能外，还整合了百度贴吧、知道这两个最大的社区平台。即使没有电脑，你也可以轻松享用百度的产品和服务，绝对是你出门在外、上下班途中、课间休闲时的绝佳伴侣！<br />\r\n<br />\r\n掌上百度将带给你全新的手机上网的体验。界面简洁、清晰，完全免费。<br />\r\n<br />\r\n掌上百度专门为手机用户精心设计了人性化的功能，你可以直接拍照上传至贴吧及知道，用于发贴、提问，并且全过程都没有验证码的干扰。有了掌上百度，你可以不受终端限制、随时随地、轻松自如地和兴趣相投的网友讨论交流。<br />\r\n<br />\r\n掌上百度还有许多贴心实用的小功能，比如实时更新当前最新最热的关键词；根据你当前所在位置，实时更新所在城市天气；保留你的搜索历史、关键词，减少手机输入带来的不便……<br />\r\n<br />\r\n马上下载掌上百度，体验一下无“线”的乐趣吧~！','templates/default/images/imgdata/mobliebaidulogo.jpg','',241,2,1,0,0,1441554490,1346033182),(3,11,'土人系统免费下载','#b42e2e','700','g','土人系统免','土人系统免费下载','土人系统免费下载','土人系统免费下载','土人系统','土人系统免费下载','土人系统免费下载','','jorry','','土人系统免费下载','土人系统免费下载','土人系统免费下载','土人系统免费下载','土人系统免费下载',100,10,1,0,0,1441554488,1441296029);

#
# Structure for table "t_cms_flag"
#

CREATE TABLE `t_cms_flag` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '信息标记id',
  `flag` varchar(30) NOT NULL COMMENT '标记名称',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '标记标识',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '标记删除状态',
  `order` smallint(5) unsigned NOT NULL DEFAULT '10' COMMENT '排列排序',
  PRIMARY KEY (`id`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='栏目标记';

#
# Data for table "t_cms_flag"
#

INSERT INTO `t_cms_flag` VALUES (0,'g','默认',0,0),(1,'h','头条',0,1),(2,'c','推荐',0,2),(3,'f','幻灯',0,3),(4,'a','特荐',0,4),(5,'s','滚动',0,5),(6,'j','跳转',0,6);

#
# Structure for table "t_cms_img"
#

CREATE TABLE `t_cms_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片信息id',
  `column_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '所属栏目id',
  `title` varchar(80) NOT NULL COMMENT '标题',
  `colorval` char(10) NOT NULL COMMENT '字体颜色',
  `boldval` char(10) NOT NULL COMMENT '字体加粗',
  `flag` varchar(30) NOT NULL DEFAULT 'g' COMMENT '标记',
  `source` varchar(50) NOT NULL COMMENT '文章来源',
  `author` varchar(50) NOT NULL COMMENT '作者编辑',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `keywords` varchar(50) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '摘要',
  `content` mediumtext NOT NULL COMMENT '详细内容',
  `pic_url` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图片',
  `picarr` text NOT NULL COMMENT '组图',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击次数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为删除状态',
  `publish_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '内容发布时间，显示在前台',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='栏目图片类型表';

#
# Data for table "t_cms_img"
#

INSERT INTO `t_cms_img` VALUES (1,8,'苹果iPhone 4S 白色版','','','g,c','','admin','','白色版','','fsafasdf','templates/default/images/imgdata/iphone4s_w.jpg','',57,1,0,0,1445078273,1326770071),(2,8,'苹果iphone 4s','','','g,c','','admin','','黑色版','','dsfsdf','templates/default/images/imgdata/iphone4s.jpg','',118,1,0,0,1445078320,1326770089),(3,8,'苹果iPad 2 16GB/WIFI版','','','g,c','','admin','','16GB/WIFI版','','fasfdf','templates/default/images/imgdata/ipad2.jpg','',85,1,0,0,1445078268,1326770110),(4,8,'苹果iPod touch 4','','','g,c','','admin','','白色','','asfasfd','templates/default/images/imgdata/iPod.jpg','',159,1,0,0,1445078264,1326770133),(5,8,'苹果MacBook Pro','','','g,c','','admin','','MC725CH/A','','fsafadf\r\n','templates/default/images/imgdata/macbook.jpg','',86,1,0,0,1445078258,1326770162),(6,8,'苹果iMac','','','g,c','','admin','','MC814CH/A','','safasdfsf','templates/default/images/imgdata/iMac.jpg','',160,1,0,0,1445078252,1326770178),(7,8,'361度——腾讯大运会梦想传递','','','g,c','','admin','','','火炬传递将是拉开2011年深圳世界大运会全民眼帘的幕布，政府首次以官方身份举办的网络虚拟火炬传递活动。将火炬虚拟传递举办成为深圳世界大运会的一次互联网传播盛会，361度借此机遇搭载腾讯大平台，迅速使其品牌在深圳世界大运会全面曝光，从而达到361度传播品牌，提升品牌形象的目的。','fasf','templates/default/images/imgdata/361du.jpg','',107,1,0,0,1445078334,1326770200),(17,5,'搬运现场','','','g,c','','jorry','','','','搬运现场','','',100,1,0,1445076120,1445078277,1445076157);

#
# Structure for table "t_cms_page"
#

CREATE TABLE `t_cms_page` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '单页id',
  `column_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '所属栏目id',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `pic_url` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图片',
  `content` mediumtext NOT NULL COMMENT '内容',
  `order` int(11) unsigned NOT NULL DEFAULT '10' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为删除状态',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='单页面类型表';

#
# Data for table "t_cms_page"
#

INSERT INTO `t_cms_page` VALUES (1,1,'','','<p><br/></p><p style=\"line-height: 16px;\"><img style=\"vertical-align: middle; margin-right: 2px;\" src=\"http://localhost/turen/backend/web/assets/ead506a3/dialogs/attachment/fileTypeImages/icon_txt.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/turen/backend/web/upload/file/20150905/1441464580401959.txt\" title=\"yii系统博客.txt\">yii系统博客.txt</a></p><p><br/></p><p><br/><img alt=\"2011113009183877dd.jpg\" src=\"/upload/image/20150909/1441810956113819.jpg\" title=\"1441810956113819.jpg\"/></p>',1,1,0,0,1326769494),(2,2,'','','<p>集团旗下全资子公司易极付，从2011年拿到第三方支付牌照那一刻起，就一直表现出一种“混搭”文化：它成功地无缝连接了互联网和金融业。易极付旗下几条产品线，范围涵盖了B2C购物、二手房交易、大宗商品交易、航旅机票、生活服务、金融理财、P2P等众多方面。其中，国内外17家银行以及银联和“人行通”等都已与我们建立了深入的战略合作关系，加上西部地区唯一一块境外支付牌照拥有者，截止2015年初，易极付已经成为金融机构在电子支付领域最为信任的合作伙伴之一。</p><p>除此之外，博恩科技控股集团还有着国内最好的天使投资公司——易一天使，成立一年多以来，截止2015年初，所投企业已经超过了47家，处于PE阶段的企业已经有了三家。另外围绕易极付，还有更多的P2P公司、众筹公司、小金融类金融公司以及正在申请的网络银行等，这些公司互相影响和发展，博恩科技控股集\r\n团正在逐渐形成为一个互联网金融生态圈。</p>',10,1,0,0,1326769513),(9,19,'','','<p><span class=\"title\">深圳市快兔搬家有限公司</span>是一家具有独立法人资格的专业搬家公司，成立于1996年。公司拥有各种大小厢式货车、吊车、叉车、平板车等专业搬家车辆数十台，并拥有一支训练有素的搬家队伍，他们经过严格的专业培训，熟练掌握物品的包装、拆卸及搬运的技能，让客户在搬家时省心、放心。</p><p>&nbsp; &nbsp;\r\n\t\t鹏程蚂蚁搬家公司将是您最佳的选择，我们将真诚为您服务。\r\n本公司的主要业务是大型企业搬迁、工厂搬迁、写字楼搬迁、学院搬迁、个人搬家、拆装空调、拆装家具等。\r\n本公司自成立迄今，深蒙广大客户支持鼓励，业绩不断成长，口碑尚称良好。我们以服务客户为己任，追求安全、高效、及时、认真的服务宗旨。</p>',10,1,0,0,1326769548),(13,25,'','','<p>收费标准<br/></p>',10,1,0,0,1326769548),(14,26,'','','<p>搬家流程</p>',10,1,0,0,1326769548),(15,27,'','','',10,1,0,0,1326769548),(16,28,'','','',10,1,0,0,1326769548);

#
# Structure for table "t_cms_post"
#

CREATE TABLE `t_cms_post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '列表信息id',
  `column_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '所属栏目id',
  `title` varchar(80) NOT NULL COMMENT '标题',
  `colorval` char(10) NOT NULL COMMENT '字体颜色',
  `boldval` char(10) NOT NULL COMMENT '字体加粗',
  `flag` varchar(30) NOT NULL DEFAULT 'g' COMMENT '标记',
  `source` varchar(50) NOT NULL COMMENT '文章来源',
  `author` varchar(50) NOT NULL COMMENT '作者编辑',
  `linkurl` varchar(255) NOT NULL COMMENT '跳转链接',
  `keywords` varchar(50) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '摘要',
  `content` mediumtext NOT NULL COMMENT '详细内容',
  `pic_url` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图片',
  `picarr` text NOT NULL COMMENT '组图',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击次数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为删除状态',
  `publish_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '内容发布时间，显示在前台',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='栏目列表类型表';

#
# Data for table "t_cms_post"
#

INSERT INTO `t_cms_post` VALUES (1,4,'百度数据报告进入全国两会引起各界代表热议广受好评','green','16px','g,h','asfasf','admin','sfasfda','asfasfd','asfdasdf','<p>\r\n\t“统计显示，2010年3月以来，网民最关注的社会民生热点是住房问题，搜索占比高达34.84%，其次是金融类内容、社会保障、物价/通胀等。总体来看，与人民生活息息相关的吃住行、医疗、社保等民生问题占到了关注热点的绝大多数……”\r\n</p>\r\n<p>\r\n\t百度作为全球最大的中文搜索引擎，覆盖95%以上中国网民，每天响应数十亿次搜索请求。这份两会专题报告，即是百度科学统计搜索关键词数据库，真实客观地反映一年来中国网民的关注和兴趣点，获得众多两会代表的广泛热议。\r\n</p>\r\n<p>\r\n\t“可以看出，百度数据研究中心秉承专业严谨、科学客观的研究态度，用明确的数据分析，表达了网民和老百姓的心声与期待。”全国人大代表、河南省工商联副主席王刚向记者表示。他指出，根据百度数据报告可以看出，住房和消费是老百姓最关心的问题，特别是最近相继出台的“限购令”，更是让老百姓处于不知所从的状态。在王刚看来，限购只是一种手段，不应该是成为一种长久执行的政策。中国经济要保持目前的增长速度，关键是调整结构，扩展经济增长空间，让消费成为拉动经济的最重要力量。政府要加大保障房建设力度，解决了低收入家庭住房问题后，房地产限购应逐步放开，让市场真正符合市场经济发展。但未来中国消费潜能要得到真正释放，必须解决社会保障体系，人们才敢放手去消费。百度的数据报告，有理有据地传达出了普通民众的心声。<br />\r\n2011年3月5日、3月3日，第十一届全国人民代表大会第四次会议和政协第十一届全国委员会第四次会议在京正式拉开帷幕。今年的两会现场，代表们案头所翻阅的资料中，多了一份来自中国4.57亿网民的集体心声。\r\n</p>\r\n<p>\r\n\t这便是来自百度数据研究中心的《2011两会专题研究数据报告》。\r\n</p>\r\n<p>\r\n\t<br />\r\n全国人大代表、体操名将杨威告诉记者，“会议现场我看到了百度《2011两会专题研究数据报告》，花了几分钟读完之后，感觉报告数据真实展现了中国老百姓的关注热点，对‘两会’代表更深入了解人民呼声、参政议政有很重要参考价值，非常值得一读。”\r\n</p>\r\n<p>\r\n\t“中国正处于经济转型期，如何更好地洞察民众消费需求，捕捉技术发展趋势，都是迫在眉睫的命题。百度两会数据报告，真实反映了中国四亿多网民的关注和需求所在，堪称一份\'来自互联网亿万网民的民生提案\'，对于国家经济发展意义重大！”全国人大代表周厚健表示，网络问政对经济进一步健康发展尤为重要，已渐渐成为一种趋势。\r\n</p>\r\n<p>\r\n\t全国政协委员张征宇则指出“去年在网上发布《中华人民共和国车船税法(草案)》后，2万多网友近10万条意见。决策前充分论证、听取多方意见，能更好地平衡各方利益，有利于科学决策。百度《2011两会专题研究数据报告》这种形式，正是我们所需要的理性问政数据支撑。希望百度能在此基础上，不断改进数据统计方式，充分发挥网络技术优势，逐步建立和发挥网络智库的作用，为各方的决策提供更多更好的参考建议。”\r\n</p>\r\n<p>\r\n\t3月3日，全国政协主席贾庆林在3日在全国政协十一届四次会议开幕会上向大会报告工作时指出，要积极探索利用互联网收集社情民意的新方式，成为党和政府舆情汇集和分析机制的重要方面。\r\n</p>\r\n<p>\r\n\t而此次百度数据报告进入两会并广受好评，即是对贾庆林主席这番话语的有力支持。\r\n</p>','','sfasfd',67,1,0,1445076060,1440946205,1326769561),(2,4,'首届百度高校互联网产品设计大赛开幕','#ef1212','700','g,c','','admin','','','','<p>\r\n\t近日，由全球最大的中文搜索引擎公司百度发起的首届“2011高校互联网产品设计大赛”在北京大学正式启动，百度产品总监李健以互动演讲拉开了大赛序幕。据悉，该赛是互联网企业首次面相全日制在校大学生举办的产品设计比赛，旨在推动大学生增强互联网创新实践，为大学生提供实现自我价值的平台，同时也为互联网创新发展积蓄人才力量。\r\n</p>\r\n<p>\r\n\t据了解，首届比赛仅接受北京地区的参赛选手，整个活动将从3月中旬一直持续到5月底。参赛同学可组团通过线上报名方式（<a href=\"http://pmstar.baidu.com/\">http://pmstar.baidu.com</a>）提交方案，方案可涉及网页产品、客户端产品和无线应用产品，进入复赛的团队将得到百度资深产品设计人员的一对一指导。\r\n</p>\r\n<p>\r\n\t最终筛选出获奖团队6支，他们不仅可以获得金额从5000元至2万元不等的“校园产品之星”奖学金，还将获得2011百度产品部暑期实习的绿色通道，有机会在企业一线体验互联网产品设计和创新实践。\r\n</p>\r\n<p>\r\n\t李健表示：“互联网行业发展一日千里，需要更多优秀而有创新精神的人才加入，而大学生正是创新的生力军的新鲜血液，百度希望能够为他们提供一个平台，发现并施展自己的价值，为推动互联网创新发掘更多新生力量。”\r\n</p>\r\n<p>\r\n\t启动仪式现场，来自北大、清华、中科院、北邮、北航等多所高校的上千名学生兴致勃勃滴聆听了李健的演讲，现场掌声不断，同学们踊跃发言并提出了自己关心的各种问题，涉及最多的话题是sns社交网络和移动互联网，还有不少同学在现场立即通过大赛官网报名参赛。\r\n</p>\r\n<p>\r\n\t一名来自北航的学生表示讲和宿舍同学一起组团报名，他说：“最近两年互联网发展太快，我们在学校有深切的体会，参加这样的比赛，能有机会进行实战锻炼，还有机会和专业人士一对一地切磋交流，对大学生是个难得的机会。”\r\n</p>\r\n<p>\r\n\t一位身处互联网多年的人士指出，高校一直是互联网创新的发源地，不仅在国内，在国际，类似facebook这样具有代表性的互联网公司，都是诞生在大学校园，他们为全球互联网技术和形态的创新发展做出了开创性的定义。而中国目前已经拥有超过4.57亿的互联网用户，也是全球最大的互联网市场，每一项互联网创新技术应用都会在这个巨大的市场中经受考验和培育，从而影响整个市场。\r\n</p>','','',55,1,0,1445076060,1445080358,1441255177),(8,4,'百度与音著协达成合作 与音乐人分享著作权收益','','','g,a','','admin','','','','3月31日下午消息，百度公司与中国音乐著作权协会(简称音著协)宣布达成合作，双方将共同建立音乐词曲著作权合作主渠道，这意味着音乐词曲权利人可以通过音著协这个主渠道，获得相关著作权收益。<br />\r\n<br />\r\n在互联网上，各类音乐著作权人分布非常广泛，如何找到一个有效的授权方式是数字音乐正版化的一个巨大挑战。百度是第一家与音著协共建著作权合作主渠道的互联网企业。<br />\r\n<br />\r\n据透露，从2008年开始，百度就开始通过与滚石、索亚、EMI等词曲权利人直接合作，获得了相关词曲作品在百度上的使用权。基于此次百度与音著协的合作，进一步建立了音乐作品数字化环境下的授权主渠道，相关音乐作品的许可使用费由百度支付给音著协，并由音著协按照有关规定转交相关权利人。<br />\r\n<br />\r\n百度市场与公关副总裁朱光表示，百度一贯重视知识产权保护工作，并将通过自身努力，积极与相关机构合作，主动探索回馈音乐著作权人的新模式。网络音乐是中国 4亿网民非常喜爱的一项网络应用，百度音乐平台一方面将用更好的产品和技术，免费为网民提供更加优质的音乐体验；另一方面，我们始终认为词曲作者是数字音乐产业繁荣的根本推 动力量，此次和音著协达成的合作，是我们长期坚持数字音乐正版化和回馈版权方的一个重大里程碑。<br />\r\n<br />\r\n中国音乐著作权协会副总干事刘平表示，音著协是中国唯一的音乐著作权集体管理组织，代表着国内国际最广泛的音乐词曲著作权人权益，而百度是中国最大的数字音乐分享平台，上面汇聚了4亿多网民的需求。双方发挥各自的优势，以实际行动解决行业内多年以来悬而未决的数字音乐版权授权难题，这对中国整个数字音乐产业来说，具有开天辟地的历史意义。<br />\r\n<br />\r\n百度音乐事业部总经理梁康妮透露，从去年11月开始，百度就与音著协积极探讨保护词曲权利人权益的有效方式，并根据百度音乐平台的整体使用情况对分成方案进行认真细致的制定和评估，百度将定期向音著协提供每一首歌曲的播放和下载数据报表，这种计算方式此前已经运作超过一年，并获得合作机构认可。而为了保证该项合作能真正向词曲版权方做到公正和透明，百度也在开发新的系统，将支持所有词曲作品版权方获取自身作品在百度音乐平台上播放下载次数统计。<br />\r\n<br />\r\n梁康妮同时介绍，目前音乐著作权主要包括词曲著作权和邻接权，前者的权益主体主要是词曲作者和词曲著作权机构，后者的权益主体主要是艺人和唱片公司。除了词曲著作权方面的合作，目前百度也已经与全球范围内80多家唱片机构就邻接权签订了分成合作协议，目前还在进一步与其他唱片机构展开合作谈判。','','',140,1,0,1445076060,1445080340,1326769736),(14,4,'CBSI全面牵手百度联盟蜜月吸金','','','g,c','','admin','','','','“CBSI旗下所有媒体都跟百度有全面而深入的合作，我希望‘蜜月期’能一直持续下去。” CBSI(中国)高级副总裁刘小东在2011年百度联盟峰会上对记者说。\r\n作为全球最大的专业互动内容网络，2007年，CBSI中国的互联网业务翻开了全新一页，成为百度联盟中众多联盟伙伴的一员。这绝不是CBSI高层一拍脑袋所做出的行为，事实上，2007年时百度已覆盖全中国95%的网民，CBSI(中国)高级副总裁刘小东对此很有感触，“而且，百度的联盟合作伙伴在过去几年发展非常快”，这两点最终促成了CBSI与百度的牵手。\r\n蜜月“吸金”\r\n“达成3000万人民币是我们跟百度联盟合作的一个目标。”刘小东说。真正达成这个目标却比他预想的要快，“我们在2007年脱离Google系统，进入到百度系统，2008年比2007年我们的收入翻了10倍，当然也是因为2007年基数比较小的原因”。\r\nCBSI的追求不止于此。随后，无论是旗下1.0的媒体，还是2.0的社区，CBSI都将其纳入百度联盟系统。至此，CBSI开始了与百度的“蜜月期”，与百度进行全面合作。甚至2010年新收购的闺蜜网和周公解梦也被其迅速纳入百度联盟系统。“通过收入分成模式，百度的收益已经慢慢成为我们的一个重要收入来源。”刘小东坦言。\r\n除带来实实在在的收益外，百度还帮联盟伙伴节省了大量经费。刘小东以55BBS举例说，“作为一家2.0的社区网站，55BBS通过与百度联盟的合作，像百度统计、百度广告管家，都可以使用百度免费提供的，不用浪费资源自己再建一个强大的团队来做。”\r\n据百度财报数据，2004年百度联盟给伙伴分成达到1090万元，2010年百度联盟的分成收入达到了7.6亿，6年来，百度给联盟合作伙伴带来的收益增长了70倍，甚至超过自己的增长速度。2011年，百度将分给联盟合作伙伴多少？“突破10亿”，百度联盟总经理褚达晨很有信心。\r\n流量品牌双助益\r\n对于百度这些联盟伙伴来说，网站导流和品牌宣传也很关键。百度能否在这两方面交给联盟伙伴一份完美的答卷？刘小东给出的答案是肯定的。他还以 55BBS为例，这个女性的城市社区，涉及婚假、购物等众多领域，如果再建一个庞大销售团队的话，对资金链压力也颇大。“透过百度联盟的合作，包括鸿媒体，百度TV的合作，可以带给网站更多高质量内容的用户、客户。”他说。\r\n据悉，目前百度联盟注册会员近50万，针对他们在互联网创业生命周期中不同阶段的诉求，百度联盟从服务平台、成长计划、站长工具、沟通平台四个方面为会员提供着全方位的运营支持。\r\n刘小东对此深有体会，“包括常青藤、包括先锋论坛，可以给我们很多，让我们认识到国内更多的优秀的战略，优秀的互联网专家，让大家的知识汇聚在一起，让我们整个联盟伙伴对于互联网的应用能力包括技术开发能力都有所提高。”他认为，这些对增加网站管理人员的专业水平具有积极意义。\r\n2010年8月，百度联盟还推出“互联网创业者俱乐部”。成立以来，它开展了9场互联网培训活动，活动辐射全国数百万互联网创业者，其中，互联网的站长超过了1万名。从沟通、收益、成长、融资方面给予创业者支持。\r\n业内人士认为，百度对于合作伙伴的持续大力扶持，加之全面开放的战略，将帮助更多网站和网络开发者、创业者们更好地成长和成功，并带动整个产业进一步发展和繁荣，迎来一个全新的互联网开放时代。','','',162,1,0,1445076060,1445080355,1326769846),(15,18,'2011中国慈善排行榜出炉 百度入选年度十大慈善企业','','','g','','admin','','','','<p>\r\n\t2011年4月26日，由民政部指导发布的第八届中国慈善排行榜在国家会议中心正式揭晓。百度作为唯一入围的互联网企业，获评年度十大慈善企业称号。\r\n</p>\r\n<p>\r\n\t“在刚刚过去的2010年，百度用自己的努力和坚持，积极践行公益事业、回馈社会，这也是其此次获奖的原因所在。”大会主办方评价称，无论是成立百度公益基金会，用更专业的管理践行公益；还是推行“阳光行动”，荡涤互联网不良信息；或是积极投身教育，为乡村教师送到最新的资讯和最先进的课件；以及扶贫基金会联合启动“爱心包裹”，为孩子们送去欢笑，百度公益像七色阳光一样，看似平淡朴实，却有着阳光般的温暖和力量。\r\n</p>\r\n<p>\r\n\t在颁奖仪式上，百度总裁助理张东晨表示，互联网时代的新公益已经成为媒体和社会普遍关注的热点话题，而互联网也已经成为社会了解公益信息、参与公益活动的主要渠道。“百度希望能以技术创新推动公益创新，充分利用互联网平台的影响力，在互联网推动公益事业方面有更大突破。”\r\n</p>\r\n<p>\r\n\t近年来，百度先后参与并发起了一系列公益活动，今年初还特别成立了百度基金会，围绕知识教育、环境保护、灾难救助等领域，更加系统规范地管理和践行公益事业。就在几天前，百度一手打造的全国首个互联网公益开放平台也正式上线试运行，旨在为全国公益组织提供免费推广。目前，包括中国扶贫基金会、中国红十字会基金会、中国宋庆龄基金会在内的多家5A级公益机构已经成为这一公益平台的首批受益者，而其他有意向的公益机构目前也已经可以通过百度公益官方网站（gongyi.baidu.com）报名申请加入公益开放平台，经百度后台审核通过之后，公益组织即可获得百度的免费推广服务。预计未来几年，全国两千多家基金会也将陆续加入，从而形成透明度最高、参与规模最大、门槛最低的公益生态网络。\r\n</p>\r\n<p>\r\n\t中国基金会中心网首席执行官程刚表示：“全民公益是公益发展的必然趋势。百度通过自身巨大的平台影响力和网络资源，为公益信息的公开和透明做出了巨大贡献。未来，希望有更多基金会和企业共同携手，更好地利用互联网来践行网络公益。”在他看来，百度在公益方面的系列举措，将充分调动和释放互联网平台在社会公益层面的影响力，为公众获取公益信息、参与公益行动提供更便捷畅通的渠道，进一步推动整个社会全民公益目标的实现。\r\n</p>\r\n<p>\r\n\t就在此次入围民政部“年度十大慈善企业”榜单之前，百度刚刚荣获了中国扶贫基金会颁发的“中国全民公益突出贡献奖”。而历年来，“2010地球一小时企业最佳创意奖”、“中国企业社会责任特别大奖”等一连串沉甸甸的慈善及社会责任奖项，不仅是对百度在践行公益方面的认可，也意味着百度在公益创新发展的道路上，已经成为互联网行业的先锋力量。\r\n</p>','','',101,1,1,1445076060,1445053204,1326769867),(19,18,'爱佑华夏联合百度在京举办“爱由心生”慈善晚宴','','','g','','admin','','','2011年5月14日晚，国内首家非公募基金会爱佑华夏慈善基金会（简称爱佑华夏）联合百度公司在北京盘古酒店4层大宴会厅举办了以2011“爱由心生”为主题的慈善晚宴。','<p>\r\n\t2011年5月14日晚，国内首家非公募基金会爱佑华夏慈善基金会（简称爱佑华夏）联合百度公司在北京盘古酒店4层大宴会厅举办了以2011“爱由心生”为主题的慈善晚宴。出席此次晚宴的嘉宾有爱佑华夏慈善基金会理事长王兵、百度公司董事长兼CEO李彦宏、新浪网CEO曹国伟、腾讯公司董事长马化腾、北京万通实业股份有限公司董事长冯仑、上海巨人网络科技有限公司董事长史玉柱、恒基兆业地产集团副主席李家杰等众多中国知名企业家，此次晚宴旨在向基金会的发起人、捐赠人和社会各界展示基金会7年多的发展历程和极致透明的特点，探讨爱佑华夏以及中国慈善基金会未来的发展前景。\r\n</p>\r\n<p>\r\n\t目前，爱佑华夏慈善基金会已完成1万名先天心脏病儿童的救助工作，下一阶段将重点关注白血病儿童的救治和援助。今年是爱佑华夏基金成立七周年，百度公司董事长兼CEO李彦宏、新浪网CEO曹国伟受邀正式加入爱佑华夏慈善基金会并成为新的理事。爱佑华夏基金会理事、恒基兆业副主席李家杰宣布向基金会捐款1000万。\r\n</p>\r\n<p>\r\n\t爱佑华夏慈善基金会理事长王兵表示，爱佑华夏已经成长为产品型基金会，随着基金会的发展规模和法律法规的完善，爱佑华夏也会出现新的变化。在未来5 到10年，爱佑华夏致力于发展为平台型的基金会，让更多的慈善组织都能通过这个平台找到合适的公益项目。把爱佑华夏打造为社区型的基金会，为慈善基金会的发展提供一个新的视角。愿意始终坚持以企业家的精神，让每一份捐赠不留遗憾的使命，以热忱、正直、高效、创新的价值观不断提醒每一位热心公益的爱心人士，给生命一次机会，给孩子一个未来，推动中国慈善事业的发展。\r\n</p>\r\n<hr style=\"page-break-after:always;\" class=\"ke-pagebreak\" /><p>\r\n\t较早前，爱佑华夏基金也加入了百度公益开放平台，通过互联网的开放平台，为基金会及其下爱佑童心等公益项目在全国范围进行免费推广，集结全社会的爱心力量，让更多需要帮助的孩子通过网络平台得到救助。据悉，百度公益开放平台旨在为全国公益组织提供免费推广，将公益组织的官方权威信息及资源与公众直接对接，为公众了解公益信息提供便利；目前已有包括中国扶贫基金会、红十字会基金会、宋庆龄基金会等5A级基金会在内的首批公益机构加入。百度公益基金会秘书长张东晨表示：“百度公益基金会还将持续关注并支持爱佑华夏基金会各类慈善项目，在资助青少年、弱势群体、贫困地区与公益机构提高信息技术应用水平方面做更多贡献。”\r\n</p>','templates/default/images/imgdata/newsimg.png','',165,1,1,1445076060,1445053210,1326769925),(20,4,'test','','','g,c','','','','','','fasfsdfasf','','',100,1,0,1445076060,1445080378,1326769846),(21,4,'fasdfsadf','#981515','700','c','','jorry','','','','fasfd','','',100,1,0,1445076060,1445080363,1441303260),(36,4,'小三测试','','','c,a,j','http://www.baidu.com','jorry','http://www.baidu.com','小三','描述','主体内容','图片地址','组图',100,1,0,1445076060,1441283266,1441303800),(39,30,'搬家百科01','','','g,c','','jorry','','','搬家百科01','搬家百科01','','',100,1,0,1445076060,1445078192,1445075147),(40,31,'搬家常识','','','c','','jorry','','','','dddd','','',100,1,0,1445076060,1445076090,1445076090),(41,32,'行业动态','','','g,c','','jorry','','','','dddddd','','',100,1,0,1445076060,1445078161,1445076114),(42,33,'公司告示','','','g,c','','jorry','','','','公司告示','','',100,1,0,1445076060,1445078200,1445076128);

#
# Structure for table "t_customer"
#

CREATE TABLE `t_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL DEFAULT '0' COMMENT '分组',
  `username` varchar(64) NOT NULL COMMENT '姓名',
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '生日',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  `telephone` varchar(32) NOT NULL DEFAULT '' COMMENT '电话',
  `mobile_phone` varchar(16) NOT NULL COMMENT '手机',
  `point` int(11) unsigned DEFAULT '0' COMMENT '总积分',
  `default_address_id` int(11) unsigned DEFAULT NULL COMMENT '默认地址',
  `auth_key` varchar(32) NOT NULL DEFAULT '' COMMENT '密匙',
  `password_hash` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `password_reset_token` varchar(255) DEFAULT NULL COMMENT '密码重置令牌',
  `status` smallint(6) NOT NULL DEFAULT '1' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '增加日期',
  `updated_at` int(11) NOT NULL DEFAULT '0' COMMENT '修改日期',
  `register_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='前台用户表';

#
# Data for table "t_customer"
#

INSERT INTO `t_customer` VALUES (37,5,'jorry','jorry',1,525650400,'980522557@qq.com','13725514524','13725514524',100,4,'VzZG11IoY771oA-VGCSfjjNDVknCcweS','$2y$13$Z9CkShCmn3VkRAneNRQqeeAQVlTjQ4twVmU80iWfP4USCbX36nGza',NULL,1,1436861752,1437960208,0,0),(40,5,'王二小','jorry110',1,287794800,'980522557110@qq.com','13725514524','13725514524',548,4,'','$2y$13$ilMsk47YffU7HnYz4TNADOm7TbfXRh4L.69L2laAKDRmMqf9/dJ9.',NULL,1,1437960272,1437960272,0,0),(41,0,'jorry2008','',0,0,'9805225575@qq.com','','',0,NULL,'1ndSqZW2sCYMZOSSsqhLaP1LZ4gegHGo','$2y$13$lbJIkpziPsHoMR5dLfk/zuisJbrG4uI8ZtdkfLo2vRPAFZQFfRQn.',NULL,10,1443772415,1443772415,0,0),(42,0,'jorry123','',0,0,'98052255754@qq.com','','',0,NULL,'7PaD4kyYfjizqXKUroIUI9J4S-EitqsO','$2y$13$eUTdz1bOfbI5me22FhJGQ.IrPuFi3zhmIhH62OqAgZAzwTvf1leWS',NULL,10,1443780504,1443780504,0,0),(43,0,'jorryddd','',0,0,'jjjjj@qq.com','','',0,NULL,'zfdwq0oOolvkRywsJZXkl_ONCR3AH0my','$2y$13$B/4BmMalkfTpF4f91Jqk1.WLwphcyyt2cC2avWWs5SPxVriX0nZs.',NULL,10,1444831025,1444831025,0,0);

#
# Structure for table "t_customer_address"
#

CREATE TABLE `t_customer_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `consignee` varchar(60) NOT NULL DEFAULT '' COMMENT '收件人',
  `address` varchar(128) NOT NULL DEFAULT '' COMMENT '街道地址',
  `telephone` varchar(32) NOT NULL DEFAULT '' COMMENT '电话',
  `mobile_phone` varchar(16) NOT NULL DEFAULT '' COMMENT '移动电话',
  `district_id` smallint(5) NOT NULL DEFAULT '0' COMMENT '城区',
  `city_id` smallint(5) NOT NULL DEFAULT '0' COMMENT '城市',
  `province_id` smallint(5) NOT NULL DEFAULT '0' COMMENT '省份',
  `country_id` smallint(5) NOT NULL DEFAULT '0' COMMENT '国家',
  `postcode` varchar(10) NOT NULL DEFAULT '' COMMENT '邮政编码',
  `is_default` tinyint(1) unsigned DEFAULT '0' COMMENT '是否设置为默认地址',
  `created_at` int(11) NOT NULL COMMENT '增加日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='前台用户地址表';

#
# Data for table "t_customer_address"
#

INSERT INTO `t_customer_address` VALUES (34,37,'夏又桥','asfasdf','13725514524','13725514524',0,77,6,1,'561455',0,1439188251),(35,40,'zdsfvfsf','testtest','13888888888','13888888888',0,52,2,1,'234324',0,1439255965);

#
# Structure for table "t_customer_group"
#

CREATE TABLE `t_customer_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `description` text,
  `is_default` tinyint(1) unsigned DEFAULT '0' COMMENT '默认分组',
  `sort` smallint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='前台用户组';

#
# Data for table "t_customer_group"
#

INSERT INTO `t_customer_group` VALUES (1,1,'普通用户组','普通用户组描述',0,2),(2,1,'VIP用户组','VIP用户组描述',1,2),(5,1,'钻石用户组','钻石用户组描述',0,5),(9,1,'自定义组','自定义组描述',0,85);

#
# Structure for table "t_extend_comment"
#

CREATE TABLE `t_extend_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `relative_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '相关联的信息id',
  `mode` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '信息类型',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `customer_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `content` text NOT NULL COMMENT '评论内容',
  `reply` text NOT NULL COMMENT '回复内容',
  `link` varchar(200) NOT NULL COMMENT '评论网址',
  `ip` varchar(30) NOT NULL COMMENT '评论ip',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '前台是否显示(默认不显示)',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户评论';

#
# Data for table "t_extend_comment"
#

INSERT INTO `t_extend_comment` VALUES (1,234,123,2342,'sfsf','saf','saf','sdfsd','',1,0,1444535648,1444535648);

#
# Structure for table "t_extend_fragment"
#

CREATE TABLE `t_extend_fragment` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '碎片数据id',
  `title` varchar(30) NOT NULL COMMENT '碎片数据名称',
  `short_code` varchar(50) NOT NULL DEFAULT '' COMMENT '调用简码',
  `pic_url` varchar(80) NOT NULL DEFAULT '' COMMENT '碎片数据缩略图',
  `link_url` varchar(80) NOT NULL DEFAULT '' COMMENT '碎片数据连接',
  `content` mediumtext NOT NULL COMMENT '碎片数据内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '前台是否发布',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已经删除',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "t_extend_fragment"
#

INSERT INTO `t_extend_fragment` VALUES (1,'碎片测试','test','','','主体内容',1,0,1442153072,1444535598),(2,'sfa','safda','','','fasfd',1,0,1442239639,1442239826),(3,'fas','dfasdf','','','asdf',1,0,1442239645,1442239889),(4,'fasfdas','dfasd','','','fasdf',1,0,1442239651,1442239891),(5,'fdasdfas','dfasdfsad','','','asfdasfd',1,0,1442239658,1442239893);

#
# Structure for table "t_extend_job"
#

CREATE TABLE `t_extend_job` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '招聘信息id',
  `title` varchar(50) NOT NULL COMMENT '位岗名称',
  `address` varchar(80) NOT NULL DEFAULT '' COMMENT '工作地点',
  `description` varchar(50) NOT NULL DEFAULT '' COMMENT '工作性质',
  `num` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '招聘人数',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '性别要求',
  `treatment` varchar(50) NOT NULL COMMENT '工资待遇',
  `usefullife` varchar(50) NOT NULL COMMENT '有效期',
  `experience` varchar(50) NOT NULL COMMENT '工作经验',
  `education` varchar(80) NOT NULL COMMENT '学历要求',
  `lang` varchar(50) NOT NULL DEFAULT '' COMMENT '言语能力',
  `workdesc` mediumtext NOT NULL COMMENT '职位描述',
  `content` mediumtext NOT NULL COMMENT '职位要求',
  `post_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `order` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '排列排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '前台显示状态',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='招聘';

#
# Data for table "t_extend_job"
#

INSERT INTO `t_extend_job` VALUES (1,'销售运营专员','北京','市场及销售',1,1,'面议','6个月','2年以上','本科','较好','- 客户管理项目及系统功能推广，指导销售录入和管理客户信息数据&nbsp;<br />\r\n- 监控和维护CRM，监测数据异常并设置系统规则、参数，如行业，政策，销售范围等&nbsp;<br />\r\n- 通过数据分析监控客户开发情况，有重点分析并寻找客户开发规则及方法优化方案&nbsp;<br />\r\n- 根据销售、服务等业务需求处理数据，提供有效报告&nbsp;<br />\r\n- 监督销售员客户销售漏斗及拜访覆盖情况，及时反馈其各级主管并推动工作&nbsp;<br />\r\n- 合同流程管理及监控，对业务流进行分析和优化，如：合同审批流分析及优化&nbsp;<br />\r\n- 新产品流程、系统、产品线准备；老产品流程更新&nbsp;<br />\r\n- 协助部门管理相关工作，如销售人员KPI制定及计算&nbsp;<br />','<p>\r\n\t- 本科以上学历，统计学、计算机或商业管理等相关专业 <br />\r\n- 一年以上互联网企业工作经验 <br />\r\n- 极强的数据分析和逻辑能力 <br />\r\n- 有优秀的统计学知识背景，并对商业运作有自身的理解 <br />\r\n- 熟悉excel、spss的使用及powerpoint的制作 <br />\r\n- 对数据库有一定了解，熟悉基本的使用操作 <br />\r\n- 学习能力强，责任心强，具有优秀的沟通表达和理解能力，团队合作能力 <br />\r\n- 思维活跃，有创新精神，能承受工作压力\r\n</p>',1326770483,1,1,0,0,1444535230),(2,'IOS/Android无线研发工程师','上海','技术',0,1,'面议','3个月','2年以上','本科以以上学历','较好','- 负责垂直类目安卓、IOS系统的软件设计，研发&nbsp;<br />\r\n- 快速进行Demo研发&nbsp;<br />\r\n- 依据项目进度与需求，能按时完成所需功能开发&nbsp;<br />','<p>\r\n\t- 本科或本科以上学历,计算机相关专业 <br />\r\n- 精通C/C++，熟悉Objective-C，有独立分析和解决问题的能力 <br />\r\n- 一年以上iPhone平台应用程序开发经验，有志于在手机平台方向发展，对技术有热忱 <br />\r\n- 熟悉手机应用软件的设计和开发；同时具有多种手机平台，IOS、android经验者优先 <br />\r\n- 学习能力强，拥有优秀的逻辑思维能力 <br />\r\n- 自我管理能力强，有良好的时间意识 <br />\r\n- 有较好的沟通交流能力\r\n</p>',1326770537,2,1,0,0,1442239562),(3,'数据中心主管','北京','管理支持',1,1,'面议','1个月','5年以上管理经验','博士','较强','- 部门日常事务的协助与支持，活动组织、会务安排、会议记录等&nbsp;<br />\r\n- 整理周报及相关技术文档&nbsp;<br />\r\n- 协助负责人对项目进行技术评估及进度跟进&nbsp;<br />\r\n- 部门各项规章制度监督与执行&nbsp;<br />\r\n- 经理及项目负责人交办其他任务的督办、协调及落实&nbsp;<br />','<p>\r\n\t- 大学本科以上，具有企业管理、市场营销、电子商务等专业知识 <br />\r\n- 一年以上电话销售相关工作经验专业技能 <br />\r\n- 认同公司企业文化，能够承受工作压力，有优秀的销售能力 <br />\r\n- 对客户信息采集有独到的见解 <br />\r\n- 具有优秀的组织和协调能力 <br />\r\n- 具有优秀的演讲和培训能力 <br />\r\n- 有学习意识和团队意识 <br />\r\n- 良好的服务意识、耐心和责任心，工作积极主动 <br />\r\n- 良好的语言表达能力和人际沟通能力\r\n</p>',1326770577,3,1,0,0,1442239563),(4,'软件配置管理工程师','北京','技术',3,1,'面议','长期','2年以上','本科','较好','（至少包含下列一项）&nbsp;<br />\r\n- 部门版本控制系统的维护&nbsp;<br />\r\n- 软件的版本控制&nbsp;<br />\r\n- 版本控制，软件构建工具的开发<br />','<p>\r\n\t- 熟悉CVS,SVN；<br />\r\n- 熟悉软件配置管理、产品数据管理的相关理论； <br />\r\n- 熟悉软件开发过程； <br />\r\n- 熟悉Linux系统基础操作和命令，及Linux环境下版本构建，软件部署； <br />\r\n- 有Python,Perl, ,Shell其中之一脚本语言编程经验者优先考虑； <br />\r\n- 有构建持续集成经验者优先。\r\n</p>',1326770633,4,1,0,0,1442239564),(5,'高级软件工程师(Java)','上海','技术',6,1,'面议','长期','2年以上开发经验','不限制','英语四级','- 承担商业产品业务系统功能模块的设计开发工作&nbsp;<br />\r\n- 开展Java相关技术的调研工作&nbsp;<br />\r\n- 采用敏捷的软件流程方法推进项目实施&nbsp;<br />','<p>\r\n\t- 深刻理解OOA/OOD/OOP编程思想,掌握多种常用的设计模式 <br />\r\n- 熟悉现有主流的java框架(Spring、Struts、Spring mvc、Hibernate、Ibatis、Freemarker等)的基本原理，具备基于之上研发能力<br />\r\n- 关注新技术，了解Groovy，Jruby，熟悉ROR、COC、RESTful编程风格 <br />\r\n- 热爱软件开发，编码基本功扎实，追求完美，有上进心和很强的学习能力 <br />\r\n- 有丰富的web架构设计经验，对web站点的性能调优、站点扩展和内容集成有深刻的理解 <br />\r\n- 熟悉cache原理及主流的cache框架，有集群系统的开发经验优先考虑 <br />\r\n- 有软件项目管理、企业知识管理、研发流程体系管理经验者优先考虑 <br />\r\n- 有互联网互动产品设计开发经验、企业搜索经验者优先考虑 <br />\r\n- 此职位需要三年以上的软件产品研发经验\r\n</p>',1326770671,5,1,0,0,1442239565);

#
# Structure for table "t_extend_link"
#

CREATE TABLE `t_extend_link` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接id',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '链接名称',
  `description` varchar(200) NOT NULL DEFAULT '' COMMENT '描述',
  `pic_url` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图片',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排列排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '前台发布状态',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='友情链接';

#
# Data for table "t_extend_link"
#

INSERT INTO `t_extend_link` VALUES (1,1,'腾讯','生活精彩，在线更精彩','http://mat1.gtimg.com/www/iskin960/qqcomlogo.png','http://www.qq.com/',1,1,0,1,1444535350),(2,1,'百度','百度一下，你就知道','http://www.baidu.com/img/baidu_sylogo1.gif','http://www.baidu.com/',2,1,0,1,1444535358),(3,1,'phpMyWind','我们追求速度与舒适度','','http://phpmywind.com/',3,1,0,1,1444535360);

#
# Structure for table "t_extend_link_type"
#

CREATE TABLE `t_extend_link_type` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接类型id',
  `short_code` varchar(50) NOT NULL DEFAULT '' COMMENT '友链调用简码',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '分类名称',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排列顺序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '前台显示',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='友链分类';

#
# Data for table "t_extend_link_type"
#

INSERT INTO `t_extend_link_type` VALUES (1,'sdgf_sfs','默认分类',14,1,0,0,1444535093),(2,'sdgf_sfsdsf','左侧友情链接',10,1,0,1442041451,1444535105),(3,'asfasdf','saffd',10,1,0,1442042521,1444535109);

#
# Structure for table "t_extend_message"
#

CREATE TABLE `t_extend_message` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `nickname` varchar(30) NOT NULL COMMENT '昵称',
  `contact` varchar(50) NOT NULL COMMENT '联系方式',
  `content` text NOT NULL COMMENT '留言内容',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `is_recommend` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `ip` char(20) NOT NULL COMMENT '留言IP',
  `order` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '排列排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '前台是否显示',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='客户留言';

#
# Data for table "t_extend_message"
#

INSERT INTO `t_extend_message` VALUES (1,'游客','QQ：10000','站点很好很漂亮，超喜欢，赞！',0,1,'127.0.0.1',1,1,0,0,1444535457);

#
# Structure for table "t_extend_nav"
#

CREATE TABLE `t_extend_nav` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '导航id',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '导航分类',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '导航名称',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `re_link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '重写地址',
  `pic_url` varchar(100) NOT NULL DEFAULT '' COMMENT '导航图片',
  `target` varchar(30) NOT NULL COMMENT '打开方式',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排列排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '前台显示状态',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='导航菜单';

#
# Data for table "t_extend_nav"
#

INSERT INTO `t_extend_nav` VALUES (1,0,'main','','','','',10,1,0,1444400585,1444572990),(2,1,'关于我们','http://turen.pw?r=site/page/view&name=about','','','',1,1,0,1444400622,1444576893),(3,1,'搬家流程','http://turen.pw?r=site/page/view&name=flow','','','',5,1,0,1444400661,1445348921),(4,1,'收费标准','http://turen.pw?r=site/page/view&name=fee','','','',15,1,0,1444400669,1445348928),(5,1,'案例展示','http://turen.pw?r=site/anli/list','','','',25,1,0,1444400678,1445348938),(6,1,'在线预约','http://turen.pw?r=site/order/online-call','','','',20,1,0,1444400717,1445353873),(7,1,'联系我们','http://turen.pw?r=site/page/view&name=contact','','','',10,1,0,1444400731,1444578828),(8,0,'sub-main','','','','',10,1,0,1444400761,1444406859),(9,8,'人才招聘','','','','',10,1,0,1444400808,1444400808),(10,8,'搬家常识','','','','',10,1,0,1444400848,1444401224),(11,8,'空调移机','','','','',10,1,0,1444400860,1444400860),(12,8,'长途货运','','','','',10,1,0,1444400869,1444400869),(13,8,'留言反馈','','','','',10,1,0,1444400883,1444400899),(14,8,'网站地图','','','','',10,1,0,1444400889,1444406075),(15,0,'bottom','','','','',10,1,0,1444573065,1444573065),(16,1,'搬家吉日','http://turen.pw?r=site/jiri/index','','','',22,1,0,1445348865,1445348967);

#
# Structure for table "t_help"
#

CREATE TABLE `t_help` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '帮助标题',
  `short_code` varchar(50) NOT NULL DEFAULT '' COMMENT '引用简码',
  `user_content` text NOT NULL COMMENT '用户帮助',
  `dev_content` text NOT NULL COMMENT '开发者帮助',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '跳转到官方的链接地址',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除了',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统帮助';

#
# Data for table "t_help"
#

INSERT INTO `t_help` VALUES (1,'栏目帮助','column_help','faf','fafdf','http://www.baidu.com',1,0,0,1442031878);

#
# Structure for table "t_migration"
#

CREATE TABLE `t_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "t_migration"
#

INSERT INTO `t_migration` VALUES ('m130524_201442_init',1435135860),('m140506_102106_rbac_init',1435889983);

#
# Structure for table "t_order_call"
#

CREATE TABLE `t_order_call` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `customer_id` mediumint(8) unsigned DEFAULT NULL COMMENT '前台用户id',
  `username` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人的姓名',
  `contact` varchar(60) NOT NULL DEFAULT '' COMMENT '联系方式',
  `call_note` varchar(255) NOT NULL DEFAULT '' COMMENT '内页预约时填写的内容',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `is_view` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已读',
  `is_send` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮件是否发送',
  `deleted` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='预约单';

#
# Data for table "t_order_call"
#

INSERT INTO `t_order_call` VALUES (49,37,'fish','0755-466857','留言测试','',1,0,1,1441538842,1445266664),(50,37,'fish','0755-466857','留言测试','',1,0,1,1441539040,1445266667),(51,37,'fish','0755-466857','留言测试','',1,0,0,1441593217,1445266371),(52,37,'fish','0755-466857','留言测试','',1,0,0,1441595399,1445266372),(58,37,'fish','0755-466857','留言测试','',1,0,0,1441596365,1445266374),(59,37,'fish','0755-466857','留言测试','',1,0,0,1441596365,1445266372),(60,37,'fish','0755-466857','留言测试','',1,0,0,1441596366,1445266375),(61,37,'fish','0755-466857','留言测试','',1,0,0,1441867708,1445266378),(62,37,'fish','0755-466857','留言测试','',1,0,0,1441867708,1445266377),(65,37,'fish','0755-466857','留言测试','',1,0,0,1441882429,1445266380),(66,37,'fish','0755-466857','留言测试','',1,0,0,1441882429,1445266661),(67,37,'fish','0755-466857','留言测试','',1,0,0,1441939775,1445266406),(68,37,'fish','0755-466857','留言测试','',1,0,0,1441939775,1445266659),(69,37,'fish','0755-466857','留言测试','',1,0,0,1441939895,1445266405),(70,37,'fish','0755-466857','留言测试','',1,0,0,1441939895,1445266657),(71,37,'fish','0755-466857','留言测试','',1,0,0,1441940040,1445266360),(72,37,'fish','0755-466857','留言测试','',1,0,0,1441940040,1445266404),(74,37,'fish','0755-466857','空','',1,0,1,1442213621,1445266656),(75,37,'fish','','','',1,0,1,1442388435,1445266654),(81,37,'fish','','','',1,0,1,1443000210,1445266666),(82,37,'fish','','','',1,0,1,1443001045,1445266648),(83,37,'fish','','','',1,0,1,1443001384,1445266651),(84,37,'fish','','','',1,0,1,1443149357,1445266645),(85,NULL,'qqqq','qqqqq','','',1,0,0,1445270133,1445270740),(86,NULL,'qqqq','qqqqq','','',0,0,0,1445270799,1445270799),(87,NULL,'qqqq','qqqqq','','',0,0,0,1445270800,1445270800),(88,NULL,'qqqq','qqqqq','','',0,0,0,1445270800,1445270800),(89,NULL,'qqqq','qqqqq','','',0,0,0,1445270800,1445270800),(90,NULL,'qqqq','qqqqq','','',0,0,0,1445270800,1445270800),(91,NULL,'qqqq','qqqqq','','',1,0,0,1445270801,1445347900),(92,NULL,'qqqq','qqqqq','','',1,0,0,1445270801,1445347908),(93,NULL,'qqqq','qqqqq','','',1,0,0,1445270801,1445347958),(94,NULL,'qqqq','qqqqq','','',1,0,0,1445270801,1445347910),(95,NULL,'qqqq','qqqqq','','',1,0,0,1445270801,1445347913),(96,NULL,'qqqq','qqqqq','','',0,0,0,1445270801,1445270801),(97,NULL,'qqqq','qqqqq','','',0,0,0,1445270801,1445270801),(98,NULL,'qqqq','qqqqq','','',0,0,0,1445270801,1445270801),(99,NULL,'qqqq','qqqqq','','',0,0,0,1445270801,1445270801),(100,NULL,'qqqq','qqqqq','','',1,0,0,1445270802,1445345961),(101,NULL,'qqqq','qqqqq','','',1,0,0,1445270802,1445347891),(102,NULL,'qqqq','qqqqq','','',1,0,0,1445270802,1445347895),(103,NULL,'qqqq','qqqqq','','',1,0,0,1445270802,1445347897),(104,NULL,'夏又桥','13725514524','','',1,0,0,1445345212,1445345950),(105,NULL,'','','','',1,0,1,1445347685,1445347690),(106,NULL,'夏又桥','13725514524','','127.0.0.1',1,0,0,1445355345,1445355369),(107,NULL,'夏又桥','13725514524','','127.0.0.1',0,0,0,1445440333,1445440333),(108,NULL,'夏又桥','13725514524','','127.0.0.1',0,0,0,1445440341,1445440341),(109,NULL,'夏又桥','13725514524','','127.0.0.1',0,0,0,1445440851,1445440851),(110,NULL,'夏又桥','13725514524','','127.0.0.1',0,0,0,1445440898,1445440898),(111,NULL,'夏又桥','13725514524','','127.0.0.1',0,0,0,1445441711,1445441711),(112,NULL,'夏又桥','13725514524','','127.0.0.1',0,0,0,1445441852,1445441852),(113,NULL,'夏又桥','13725514524','','127.0.0.1',0,0,0,1445441949,1445441949),(114,NULL,'夏又桥','13725514524','','127.0.0.1',0,0,0,1445442059,1445442059),(115,NULL,'夏又桥','13725514524','','127.0.0.1',0,0,0,1445442134,1445442134),(116,NULL,'夏又桥','13725514524','','127.0.0.1',0,0,0,1445442205,1445442205),(117,NULL,'夏又桥','13725514524','','127.0.0.1',0,0,0,1445442236,1445442236);

#
# Structure for table "t_order_info"
#

CREATE TABLE `t_order_info` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_no` varchar(50) NOT NULL DEFAULT '' COMMENT '订单号，唯一',
  `customer_id` mediumint(8) unsigned DEFAULT NULL COMMENT '前台用户id',
  `consignee` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人的姓名',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '收货人的国家',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '收货人的省份',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '收货人的城市',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '收货人区或者县',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人的详细地址',
  `zipcode` varchar(60) DEFAULT NULL COMMENT '收货人的邮编',
  `tel` varchar(60) DEFAULT NULL COMMENT '收货人的电话',
  `mobile` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人的手机',
  `email` varchar(60) DEFAULT NULL COMMENT '收货人的邮箱',
  `order_note` varchar(255) DEFAULT NULL COMMENT '订单留言，由用户提交订单前填写',
  `order_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单应付款金额',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '折扣金额',
  `cms_ad_id` smallint(5) unsigned DEFAULT NULL COMMENT '站内广告id',
  `referer` varchar(255) DEFAULT NULL COMMENT '订单的来源页面url',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订单生成时间',
  `confirm_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订单确认时间',
  `payment_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订单付款时间',
  `payment_note` varchar(255) DEFAULT NULL COMMENT '付款相关备注',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `is_send` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否发送邮件',
  `is_view` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否查看',
  `deleted` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单';

#
# Data for table "t_order_info"
#

INSERT INTO `t_order_info` VALUES (47,'ORDER_20150902035028',37,'夏又桥',1,6,77,0,'asfasdf','561455','13725514524','13725514524','980522557@qq.com','',5100.00,0.00,0,'',0,0,0,'','',0,1,1,1441158628,1444924148),(48,'ORDER_20150906050345',37,'',0,0,0,0,'','','','','','',0.00,0.00,0,'',0,0,0,'','',0,1,0,1441508626,1441508626),(49,'ORDER_20150906012722',37,'fish',0,0,0,0,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441538842,1441538842),(50,'ORDER_20150906013040',37,'fish',0,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441539040,1441539040),(51,'you-541561414-001',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441593217,1445266631),(52,'ORDER_20150907050959',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441595399,1445266626),(58,'ORDER_20150907052605744',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441596365,1441596365),(59,'ORDER_20150907052605239',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441596365,1445266620),(60,'ORDER_20150907052606967',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441596366,1441855786),(61,'ORDER_20150910084828842',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441867708,1445266571),(62,'ORDER_20150910084828783',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441867708,1441867708),(65,'ORDER_20150910125349443',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441882429,1445266570),(66,'ORDER_20150910125349547',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441882429,1445266570),(67,'ORDER_20150911044935745',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441939775,1441939775),(68,'ORDER_20150911044935468',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441939775,1445266569),(69,'ORDER_20150911045135181',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441939895,1445266561),(70,'ORDER_20150911045135861',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441939895,1441939895),(71,'ORDER_20150911045400862',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441940040,1445266560),(72,'ORDER_20150911045400476',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','留言测试',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1441940040,1445266561),(73,'ORDER_20150914085341804',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','空',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1442213621,1445266557),(74,'ORDER_20150914085341745',37,'fish',1,2,52,502,'南山科技园二期十栋4楼','438200','0755-466857','13725514524','980522557@qq.com','空',1210.00,0.00,0,'微信公众平台',0,0,0,'','',0,1,0,1442213621,1442213621),(75,'yjt20150916032715163',37,'fish',1,2,52,502,'栽植asfsgfasdfasf','9585','','5159615','9845984','',5151.00,0.00,0,'',0,0,0,'','',0,1,0,1442388435,1445266556),(76,'yjt20150918122212694',37,'fish',1,2,52,502,'9849494四方达sdfa','','','156455454','','',44154.00,0.00,0,'',0,0,0,'','',0,1,0,1442550132,1445266556),(77,'yjt20150921052247467',37,'fish',1,2,52,502,'9849494四方达sdfa','','','156455454','','',84754.00,0.00,0,'111',0,0,0,'','',0,1,0,1442827367,1445266555),(78,'yjt20150921052305142',37,'fish',1,2,52,502,'9849494四方达sdfa','','','156455454','','',84754.00,0.00,0,'111',0,0,0,'','',0,1,0,1442827385,1445266553),(79,'yjt20150921052334664',37,'fish',1,2,52,502,'9849494四方达sdfa','','','156455454','','',84754.00,0.00,0,'111',0,0,0,'','',0,1,0,1442827414,1442827414),(80,'yjt20150923041136155',43,'郭雄',1,6,77,707,'软件园2期，10栋，401','','','15172377475','','',0.01,0.00,0,'c-yz',0,0,0,'','',0,1,0,1442995896,1445266551),(81,'yjt20150923052330175',37,'fish',1,2,52,502,'9849494四方达sdfa','','','156455454','','',84754.00,0.00,0,'111',0,0,0,'','',0,1,0,1443000210,1445347847),(82,'yjt20150923053725833',37,'fish',1,2,52,502,'9849494四方达sdfa','','','156455454','','',84754.00,0.00,0,'111',0,0,0,'','',0,1,1,1443001045,1445181299),(83,'yjt20150923054304595',37,'fish',1,2,52,502,'9849494四方达sdfa','','','156455454','','',84754.00,0.00,0,'111',0,0,0,'','',0,1,1,1443001384,1443147892),(84,'yjt20150925104917552',37,'fish',1,2,52,502,'9849494四方达sdfa','','','156455454','','',84754.00,0.00,0,'111',0,0,0,'','',0,1,1,1443149357,1444924770);

#
# Structure for table "t_product"
#

CREATE TABLE `t_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `name` varchar(120) NOT NULL DEFAULT '' COMMENT '产品名',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '产品关键词',
  `brief` varchar(255) NOT NULL DEFAULT '' COMMENT '产品简述',
  `description` text NOT NULL COMMENT '产品详情',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '产品类型',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '产品已删除',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '产品是否热销',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为新品',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否最畅销',
  `is_free_shipping` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否免运费',
  `location` varchar(128) NOT NULL DEFAULT '' COMMENT '产地',
  `quantity` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '产品数量',
  `stock_status` varchar(120) NOT NULL DEFAULT '0' COMMENT '库存状态',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '图片相对路径',
  `brand_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '制造商/品牌',
  `shipping` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否支持运输',
  `price` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '产品实际价格',
  `market_price` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '产品市场价',
  `shop_price` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '产品销售价',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否为实物产品',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '产品是否促销',
  `promote_price` decimal(15,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '产品促销价',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '促销开始时间',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '销售结束时间',
  `points` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `tax_class_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '税',
  `date_available` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '产品有效期',
  `weight` decimal(15,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '重量',
  `length` decimal(15,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '长',
  `width` decimal(15,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '宽',
  `height` decimal(15,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '高',
  `mini_mum` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '最小购买量',
  `viewed` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `exemption_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '免征金额',
  `regulatory_category_mark` varchar(128) NOT NULL DEFAULT '' COMMENT '监管类别标志',
  `brand_country` varchar(32) NOT NULL DEFAULT '' COMMENT '品牌国',
  `origin_country` varchar(32) NOT NULL DEFAULT '' COMMENT '原产国',
  `manu_facture` varchar(128) NOT NULL DEFAULT '' COMMENT '生产企业',
  `unit` int(11) NOT NULL DEFAULT '0' COMMENT '计量单位',
  `basis` varchar(128) NOT NULL DEFAULT '' COMMENT '主要成分',
  `upc` varchar(128) NOT NULL DEFAULT '' COMMENT '商品通用条码',
  `declare_category` varchar(32) NOT NULL DEFAULT '' COMMENT '申报币种',
  `declare_value` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '申报价值',
  `declare_name` varchar(128) NOT NULL DEFAULT '' COMMENT '申报品名',
  `tax_rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '税率',
  `tax_code` varchar(128) NOT NULL DEFAULT '' COMMENT '税号',
  `hs_code` varchar(128) NOT NULL DEFAULT '' COMMENT '海关编码',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='产品表';

#
# Data for table "t_product"
#

INSERT INTO `t_product` VALUES (28,1,'Product 1','MI69456146','小米Note','小米','小米描述','<p><img alt=\"1.jpeg\" src=\"/upload/image/20150804/1438652374690100.jpeg\" title=\"1438652374690100.jpeg\"/>小米描述详情</p><p><img src=\"http://img.tvhome.com/uploads/2015/01/16/8821d5d9f6d1f2028afa1e31d2102570.png\" alt=\"8821d5d9f6d1f2028afa1e31d2102570.png\"/></p>',8,0,1,1,1,1,'Made In China',939000000,'2','data/demo/htc_touch_hd_1.jpg,/images/origin/product/2015-08/1.jpeg,/images/origin/product/2015-08/27bOOOPICf3.jpg',1,1,1500.0000,2100.0000,1999.0000,1,0,0.0000,1130277600,1614898800,1999,9,20090203,146.40000000,253.00000000,254.00000000,154.00000000,1,200000001,25,0.00,'','','','',0,'','','',0.00,'',0.00,'','',1,4294967295,1438652384),(29,1,'','Iphone4s','Iphone4s','','','<p>ffffgg<br/></p>',5,0,1,1,1,1,'7dfgdsg',54156,'2','',2,1,2588.0000,3000.0000,3100.0000,1,0,0.0000,0,0,0,0,0,254.00000000,5745.00000000,757.00000000,757.00000000,1,651651,0,0.00,'','','','',0,'','','',0.00,'',0.00,'','',1,1438760180,1438760180),(103,19,'','ECS000106','嘉娜宝芦荟泡沫洗面奶110g','','','',10,0,0,0,0,1,'',0,'0','images/201311/goods_img/106_G_1385664056941.jpg,images/201311/goods_img/106_P_1385664056766.png',58,1,0.0000,110.0000,39.0000,1,0,0.0000,0,0,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,1,0,100,0.00,'','','','',0,'','','',0.00,'',0.00,'','',1,1,1385666152),(104,19,'','ECS000104','植村秀绿茶舒润洁颜油150ml','','','',10,0,0,0,0,1,'',0,'0','images/201311/goods_img/104_G_1385663955450.jpg,images/201311/goods_img/104_P_1385663955432.png',56,1,0.0000,320.0000,229.0000,1,0,0.0000,0,0,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,1,0,100,0.00,'','','','',0,'','','',0.00,'',0.00,'','',1,1,1385666184),(105,19,'','ECS000103','丝塔芙温和洁面乳237ml','','','',10,0,0,0,0,1,'',0,'0','images/201311/goods_img/103_G_1385663900299.jpg,images/201311/goods_img/103_P_1385663900814.png',55,1,0.0000,98.0000,79.0000,1,0,0.0000,0,0,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,1,0,100,0.00,'','','','',0,'','','',0.00,'',0.00,'','',1,1,1385666202),(106,19,'','ECS000102','欧珀莱柔润洁面膏125g','','','',10,0,0,0,0,1,'',0,'0','images/201311/goods_img/102_G_1385663846352.jpg,images/201311/goods_img/102_P_1385663846204.png',54,1,0.0000,90.0000,71.9000,1,0,0.0000,0,0,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,1,0,100,0.00,'','','','',0,'','','',0.00,'',0.00,'','',1,1,1385666220),(107,19,'','ECS000109','兰芝多效四合一泡沫洗面奶180ml','','','',10,0,0,0,0,1,'',0,'0','images/201311/goods_img/109_G_1385664262001.jpg,images/201311/goods_img/109_P_1385664262819.png',41,1,0.0000,205.0000,129.0000,1,1,120.0000,1386230400,1764921600,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,1,0,100,0.00,'','','','',0,'','','',0.00,'',0.00,'','',1,1,1386281019),(108,19,'','ECS000107','英国AA网洋甘菊手工皂125g','','','',10,0,0,0,0,1,'',0,'0','images/201311/goods_img/107_G_1385664113015.jpg,images/201311/goods_img/107_P_1385664113396.png',59,1,0.0000,75.0000,29.9000,1,0,0.0000,0,0,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,1,0,100,0.00,'','','','',0,'','','',0.00,'',0.00,'','',1,1,1385666137),(109,19,'','ECS000105','婵真银杏天然泡沫洁面霜200g','','','',10,0,0,0,0,1,'',0,'0','images/201311/goods_img/105_G_1385664010688.jpg,images/201311/goods_img/105_P_1385664010650.png',57,1,0.0000,118.0000,59.0000,1,0,0.0000,0,0,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,1,0,100,0.00,'','','','',0,'','','',0.00,'',0.00,'','',1,1,1385666168),(110,19,'','ECS000101','泊美植物奢白致臻悦白洁面膏120g','','','',0,0,0,0,0,1,'',0,'0','images/201311/goods_img/101_G_1385663770228.jpg,images/201311/goods_img/101_P_1385663770698.png',53,1,0.0000,110.0000,69.0000,1,0,0.0000,0,0,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,1,0,100,0.00,'','','','',0,'','','',0.00,'',0.00,'','',1,1,1385663770),(111,19,'','ECS000100','可莱丝茶树油洗面奶170ml','','','',10,0,0,0,0,1,'',0,'0','images/201311/goods_img/100_G_1385663712050.jpg,images/201311/goods_img/100_P_1385663712028.png',52,1,0.0000,120.0000,55.0000,1,0,0.0000,0,0,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,1,0,100,0.00,'','','','',0,'','','',0.00,'',0.00,'','',1,1,1385666237),(112,19,'','ECS000099','雅诗兰黛深层净肌洁面泡沫150ml','','','',10,0,0,0,0,1,'',0,'0','images/201311/goods_img/99_G_1385663653247.jpg,images/201311/goods_img/99_P_1385663653442.png',2,1,0.0000,310.0000,199.0000,1,0,0.0000,0,0,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,1,0,100,0.00,'','','','',0,'','','',0.00,'',0.00,'','',1,1,1385666254),(113,91,'','ECS0000001','希思黎轻柔护肤西柚柔肤水250ml','LG 3g 876 支持 双模 2008年04月 灰色 GSM,850,900,1800,1900','平衡肌肤PH值，及时补充水分，给予肌肤清新舒爽的感受！','<p>\r\n\t很多朋友都已经抢先体验了3G网络的可视通话、高速上网等功能。LG KD876手机<span style=\"font-size:x-large;\"><span style=\"color:#FF0000;\"><strong>支持TD-SCDMA/GSM双模单待</strong></span></span>，便于测试初期GSM网络和TD网络之间的切换和共享。\r\n</p>\r\n<p>\r\n\tLG KD876手机整体采用银色塑料材质，<strong><span style=\"font-size:x-large;\"><span style=\"color:#FF0000;\">特殊的旋转屏设计是本机的亮点</span></span></strong>，而机身背部的300万像素摄像头也是首发的六款TD-SCDMA手机中配置最高的。LG KD876手机屏幕下方设置有外键盘，该键盘由左/右软键、通话/挂机键、返回键、五维摇杆组成，摇杆灵敏度很高，定位准确。KD876的内键盘由标准12个电话键和三个功能键、一个内置摄像头组成。三个功能键分别为视频通话、MP3、和菜单键，所有按键的手感都比较一般，键程适中，当由于按键排列过于紧密，快速发短信时很容易误按，用户在使用时一定要多加注意。LG KD876手机机身周边的接口设计非常简洁，手机的厚度主要来自屏幕旋转轴的长度，如果舍弃旋屏设计的话，估计<span style=\"font-size:x-large;\"><strong><span style=\"color:#FF0000;\">厚度可以做到10mm以下</span></strong></span>。<img src=\"/includes/kindeditor/php/../../../images/image/20150817/20150817124039_85327.png\" alt=\"\" /><img src=\"/includes/kindeditor/php/../../../images/image/20150817/20150817124039_39319.png\" alt=\"\" />\r\n</p>',0,0,1,0,0,1,'',0,'0','images/ECS000000/goods_img/145_G_1439356199239.jpg,images/ECS000000/goods_img/145_P_1439356200676.jpg,images/ECS000000/goods_img/145_P_1439356200347.jpg,images/ECS000000/goods_img/145_P_1439356200017.jpg,images/ECS000000/goods_img/145_P_1439356199607.jpg,',0,1,0.0000,620.0000,399.0000,1,0,0.0000,0,0,0,0,0,0.11000000,0.00000000,0.00000000,0.00000000,1,0,100,500.00,'','','','',0,'','','',0.00,'',20.00,'','',1,1,1439800842),(114,92,'100ml','ECS000123','迪奥红毒女士香水EDT 50ml 555','','','<div style=\"margin: 0px; padding: 0px; width: 666px;\" class=\"inLeft_orderDetail_in\">\r\n<p style=\"margin: 0px; padding: 0px; line-height: 24px; color: rgb(76, 76, 76); font-size: 14px;\"><span style=\"font-family: Arial;\"><img style=\"margin: 0px; padding: 0px; vertical-align: top; border: 0px;\" alt=\"\" src=\"http://img.miqi.cn/static/team/2012/0530/13383634752884.jpg\" />HYPNOTIC POISON蛊媚奇葩也是John Galliano，这位当代最富才华的设计师加入Dior后创作的第一款香水，在丰盈、馥郁而迷幻的香调间，HYPNOTIC POISON准确地捕捉到了激情的释放点，恰如一道神秘的咒语演绎着一种幻象，HYPNOTIC POISON在极端感性与激荡之间令人无法抗拒，诠释出令人目眩神迷的诱惑。<br />\r\n<strong><span style=\"color: rgb(255, 102, 102);\">精致瓶身：</span></strong>同POISON系列的其他款式一样，HYPNOTIC POISON蛊媚奇葩的瓶身亦十分贴合它自身的主题，人造红宝石闪动着深邃的魅力，诱惑一触即发。<br />\r\n<strong><span style=\"color: rgb(255, 102, 102);\">矛盾的香调：</span></strong>异常矛盾的一款香水，犹如女人的内心一般捉摸不定，散发神秘的魅力！<br />\r\n<strong><span style=\"color: rgb(255, 102, 102);\">清澈的前味：</span></strong>黎巴嫩玫瑰的清新娇艳让人一瞥惊鸿，清澈的酸味让人耳目一新。</span></p>\r\n<p style=\"margin: 0px; padding: 0px; line-height: 24px; color: rgb(76, 76, 76); font-size: 14px;\"><span style=\"font-family: Arial; color: rgb(255, 102, 102);\"><strong>温暖厚重的中味：</strong></span><span style=\"font-family: Arial;\">乳脂的香味绵软厚重，久久不绝。轻嗅着温暖的乳香，心灵在慰藉中渐渐放松。Hypnotic，宛如催眠般的魔法蛊惑。<br />\r\n&nbsp;</span><strong><span style=\"color: rgb(255, 102, 102);\">矛盾复杂的后味：</span></strong><span style=\"font-family: Arial;\">乳脂香气中混合着辛咸，肉桂隐隐出没其间。那是一种极其复杂的情感。味道就像是好吃的咸奶油。乳脂的绵软厚重，包裹着咸味辛味的克制与压抑&mdash;&mdash;就像是传说中的&ldquo;禁欲主义者&rdquo;。那是一种极端的刻意压制&mdash;&mdash;只为保持身心的独立和清醒。如此压抑如此低迷，就连空气中都弥漫起一种理智和隐忍味道。这简直就像是理智与情感的斗争！理智压抑，情感冲击，就在这反反复复的矛盾纠结中，情感终于绽放出最热烈的诱惑！<br />\r\n</span></p>\r\n<p style=\"margin: 0px; padding: 0px; line-height: 24px; color: rgb(76, 76, 76); font-size: 14px;\"><span style=\"font-family: Arial;\"><span style=\"color: rgb(255, 102, 102);\"><strong>香调：</strong></span>东方香调<br />\r\n<span style=\"color: rgb(255, 102, 102);\"><strong>前调：</strong></span>苦杏仁：生长于意大利寒冷的南方，前调透着隐约的苦味。<br />\r\n<span style=\"color: rgb(255, 102, 102);\"><strong>中调：</strong></span>茉莉：是女性柔美的象征。茉莉花是世界上香水提炼中最常用到的香料，它是有自己独特的香味又非常易碎的花种，时而狂野和奔放，时而又像朝露一般纯洁。<br />\r\n<span style=\"color: rgb(255, 102, 102);\"><strong>后调：</strong></span>香草：有一点甜甜的味道。</span></p>\r\n<div><span style=\"font-family: Arial;\"><br />\r\n</span></div>\r\n</div>',11,0,0,0,0,1,'',0,'0','images/201312/goods_img/123_G_1385945992313.jpg,images/201312/goods_img/123_P_1385945992047.jpg,images/201312/goods_img/123_P_1385946747210.jpg,images/201312/goods_img/123_P_1385946897215.jpg,images/201312/goods_img/123_P_1385946654885.jpg,images/201312/g',14,1,0.0000,0.0100,0.0100,1,1,0.0100,1390316400,1705849200,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,1,0,100,500.00,'8998888','us','us','china',1,'水','ESC123123','CNY',100.00,'香水',20.00,'11111111','CESHI123',1,1,1439287898),(115,8,'','ECS000114','思亲肤绿茶泡沫洁面摩丝160ml','','能补充肌肤的胶原蛋白含量，维持和增强肌肤的弹性，同时强化肌肤的支撑系统，延缓皱纹的生成，让肌肤长期保持柔滑紧致。','',10,0,0,0,1,1,'',0,'0','images/201311/goods_img/114_G_1385664673888.jpg,images/201311/goods_img/114_P_1385664673819.png',24,1,0.0000,105.0000,59.0000,1,0,0.0000,0,0,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,1,0,100,0.00,'','','','',0,'','','',0.00,'',0.00,'','',1,1,1390431790),(116,14,'','ECS000030','移动20元充值卡','2008年02月 1600万 176x220 像素 黑色 金色 GSM,850,900,1800,1900 翻盖','','',9,0,1,0,1,1,'',0,'0','images/200905/goods_img/30_G_1241973114234.jpg,images/200905/goods_img/30_P_1241973114554.jpg',0,1,0.0000,0.0100,0.0100,1,0,0.0000,0,0,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,1,0,100,0.00,'','','','',0,'','','',0.00,'',0.00,'','',1,1,1440116239),(117,14,'','E33569874','ceshi_virtual_experience','','','',0,0,0,0,0,1,'',0,'0','',0,1,0.0000,0.0100,0.0100,1,0,0.0000,0,0,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,1,0,100,0.00,'','','','',0,'','','',0.00,'',0.00,'','',1,1,1440116488),(118,8,'','ECS000002','诺基亚原装5800耳机','','','',6,0,0,0,0,1,'',0,'0','images/200905/goods_img/3_G_1241422082168.jpg,images/200905/goods_img/3_P_1241422082461.jpg',1,1,0.0000,81.6000,68.0000,1,0,0.0000,0,0,0,0,0,0.00000000,0.00000000,0.00000000,0.00000000,1,0,100,100.00,'','','','',0,'','','',0.00,'',20.00,'','',1,1,1440667834);

#
# Structure for table "t_product_type"
#

CREATE TABLE `t_product_type` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cat_name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='产品类型表';

#
# Data for table "t_product_type"
#

INSERT INTO `t_product_type` VALUES (12,'液晶电视',1,'主体\r\n显示\r\n音频'),(14,'服装',1,''),(15,'时尚影音',1,''),(16,'手机,ipad',1,'IPOD\r\n主体\r\n属性参数\r\n屏幕参数\r\n视频参数\r\n音频参数\r\n功能参数\r\n接口参数\r\n电池参数\r\n规格参数\r\n特性'),(17,'ipad',1,'选择颜色\r\n选择规格');

#
# Structure for table "t_products_attr"
#

CREATE TABLE `t_products_attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '属性类型的id',
  `attr_value` text NOT NULL COMMENT '属性的值',
  `attr_price` varchar(255) NOT NULL DEFAULT '' COMMENT '对应在商品原价格上要加的价格',
  PRIMARY KEY (`id`),
  KEY `products_id` (`products_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8 COMMENT='产品属性';

#
# Data for table "t_products_attr"
#

INSERT INTO `t_products_attr` VALUES (243,98,211,'修护','0'),(244,98,212,'干性','0'),(245,99,211,'保湿','0'),(246,99,212,'中性','0'),(247,100,211,'控油','0'),(248,100,212,'混合型','0'),(249,101,211,'活肤','0'),(250,101,212,'敏感性','0'),(251,102,211,'卸妆','0'),(252,102,212,'敏感性','0'),(257,115,211,'抗敏感','0'),(258,115,212,'干性','0'),(267,107,211,'去黑头','0'),(268,107,212,'干性','0'),(271,108,211,'镇静舒缓','0'),(272,108,212,'混合型','0'),(273,103,211,'去黑色素','0'),(274,103,212,'混合型','0'),(275,109,211,'调理肌肤','0'),(276,109,212,'中性','0'),(277,104,211,'清洁','0'),(278,104,212,'油性','0'),(279,105,211,'抗衰老','0'),(280,105,212,'干性','0'),(281,106,211,'祛痘','0'),(282,106,212,'中性','0'),(283,111,211,'补水','0'),(284,111,212,'干性','0'),(285,112,211,'去死皮','0'),(286,112,212,'油性','0'),(297,97,213,'红色',''),(298,97,213,'黄色',''),(299,97,213,'金色',''),(300,97,214,'迪奥(Dior)','0'),(301,97,215,'东方香调，主要采用苦杏仁、茉莉和香草的香气','0'),(302,97,216,'50ml','0'),(303,97,217,'2012年9月','0'),(304,97,218,'法国','0'),(305,97,219,'全新专柜正装，有外盒有塑封。产品分有/无标签两种版本，随机发货','0'),(306,97,220,'所有女性，尤其适合成熟女性','0'),(307,97,221,'请将本品置于避光处保存，以免变质','0'),(308,97,222,'本产品属于贵重商品，售出之后无质量问题不支持退换货哦！请MM们注意哦！','0'),(324,116,172,'2008年02月','0'),(325,116,186,'1600万','0'),(326,116,187,'TFT','0'),(327,116,188,'176x220 像素','0'),(328,116,185,'黑色','0'),(329,116,185,'金色','10'),(330,116,210,'蓝牙耳机','0'),(331,116,173,'GSM,850,900,1800,1900','0'),(332,116,178,'翻盖','0');

#
# Structure for table "t_session"
#

CREATE TABLE `t_session` (
  `id` char(40) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会话';

#
# Data for table "t_session"
#

INSERT INTO `t_session` VALUES ('aalui29tg4sknjci22ea1mfd45',1444486963,X'5F5F666C6173687C613A303A7B7D5F5F747572656E5F69647C693A33303B'),('dqq2eu1gd83vv33see8f2u7hb7',1444494875,X'5F5F666C6173687C613A303A7B7D5F5F747572656E5F69647C693A33303B'),('oe2fevrvmfmb7gvdiispjbuau6',1444494874,X'5F5F666C6173687C613A303A7B7D5F5F747572656E5F69647C693A33303B');

#
# Structure for table "t_setting"
#

CREATE TABLE `t_setting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '<未定义>' COMMENT '配置描述名',
  `code` varchar(32) NOT NULL DEFAULT '' COMMENT '用于形成配置块',
  `key` varchar(64) NOT NULL DEFAULT '' COMMENT '用来标识一个唯一的配置',
  `value` text NOT NULL COMMENT '配置值',
  `is_visible` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '当前配置项是否可见',
  `is_array` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否序列化处理',
  PRIMARY KEY (`id`),
  KEY `is visible` (`is_visible`)
) ENGINE=InnoDB AUTO_INCREMENT=652 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

#
# Data for table "t_setting"
#

INSERT INTO `t_setting` VALUES (634,'站点名称','any','config_site_name','搬家啦',1,0),(635,'网站管理员','any','config_site_owner','Jorry',1,0),(636,'联系地址','any','config_address','南山科技园',1,0),(637,'电子邮件','any','config_email','jorry@turen.com',1,0),(638,'联系电话','any','config_tel','13725514524',1,0),(640,'前台语言','any','config_front_language','zh_cn',1,0),(641,'后台语言','any','config_back_language','zh_cn',1,0),(644,'允许访问动作','access','config_access_action','',1,0),(645,'禁止访问控制器','access','config_access_controller','',1,0),(646,'禁止访问ip','access','config_access_ip','',1,0),(647,'禁止访问提交','access','config_access_verb','',1,0),(648,'上传图片格式','pic','config_pic_extension','*.jpg;*.png;*.gif;*.jpeg',1,0),(649,'上传图片大小','pic','config_pic_size','500KB',1,0),(650,'后台标题长度','site','config_site_title_length','16',1,0),(651,'默认点击次数','site','config_site_default_hits','100',1,0),(652,'邮件主机','email','config_email_host','smtp.163.com',1,0),(653,'服务器邮箱','email','config_email_username','xiayouqiao2008@163.com',1,0),(654,'服务器密码','email','config_email_password','13635862687xyqss',1,0),(655,'端口','email','config_email_port','25',1,0),(656,'默认收件人','email','config_email_to','2971030686@qq.com',1,0),(657,'密送人','email','config_email_bcc','980522557@qq.com',1,0);

#
# Structure for table "t_user"
#

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) unsigned DEFAULT '0',
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为管理员',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '未设置' COMMENT '管理员本人真名',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '管理员角色名',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='后台管理员表';

#
# Data for table "t_user"
#

INSERT INTO `t_user` VALUES (30,8,1,'jorry','夏又桥','PbSLNPQ0B4EO0rgt7Ie53_ZNrsOipI_X','$2y$13$5f4GeOsMO71jW3g03N92ye6JQet9Z2aj8.N7FvS2a.Hb72ASHomwq',NULL,'980522557@qq.com','GM',1,1437442547,1441724269),(31,10,0,'fish','张鱼','6wgWk3-J-j-K7hfYbY3cTOf4hOBX782H','$2y$13$22vLOQ/Y4DrMf4ybgzYpcOJjOCXOzB5xEhljlQVlK9NRRZQxU6MDu',NULL,'222@qq.com','GM',1,1437444357,1441724259),(32,8,0,'xiong123','郭熊','Z4AlVGre3znusvIJe22yxymcm2zxXbS8','$2y$13$9tbtEr7uOD8Zpho.qTpp5uJYEheMUU4xCAm6Z/OBoI8g5/TsxhAj6',NULL,'51@qq.com','GM',1,1437444402,1441724265);

#
# Structure for table "t_user_group"
#

CREATE TABLE `t_user_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '组名',
  `description` tinytext COMMENT '管理员组描述',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COMMENT='管理分组';

#
# Data for table "t_user_group"
#

INSERT INTO `t_user_group` VALUES (8,'设计部','设计部描述',40,1),(10,'运营部','运营部描述',20,1),(101,'推广部','推广部描述',10,1),(102,'研发部','研发部描述',52,1),(103,'技术部','技术部描述',1,1);
