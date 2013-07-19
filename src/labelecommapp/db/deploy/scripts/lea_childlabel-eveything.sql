-- Adminer 3.7.1 MySQL dump

SET NAMES utf8;
SET foreign_key_checks = 0;
SET time_zone = '-07:00';
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `acos`;
CREATE TABLE `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1,	NULL,	NULL,	NULL,	'controllers',	1,	186),
(2,	1,	NULL,	NULL,	'Groups',	2,	13),
(3,	2,	NULL,	NULL,	'index',	3,	4),
(4,	2,	NULL,	NULL,	'view',	5,	6),
(5,	2,	NULL,	NULL,	'add',	7,	8),
(6,	2,	NULL,	NULL,	'edit',	9,	10),
(7,	2,	NULL,	NULL,	'delete',	11,	12),
(8,	1,	NULL,	NULL,	'Pages',	14,	19),
(9,	8,	NULL,	NULL,	'display',	15,	16),
(10,	1,	NULL,	NULL,	'ProductGroups',	20,	41),
(11,	10,	NULL,	NULL,	'index',	21,	22),
(12,	10,	NULL,	NULL,	'view',	23,	24),
(13,	10,	NULL,	NULL,	'add',	25,	26),
(14,	10,	NULL,	NULL,	'edit',	27,	28),
(15,	10,	NULL,	NULL,	'delete',	29,	30),
(16,	10,	NULL,	NULL,	'admin_index',	31,	32),
(17,	10,	NULL,	NULL,	'admin_view',	33,	34),
(18,	10,	NULL,	NULL,	'admin_add',	35,	36),
(19,	10,	NULL,	NULL,	'admin_edit',	37,	38),
(20,	10,	NULL,	NULL,	'admin_delete',	39,	40),
(21,	1,	NULL,	NULL,	'ProductVariants',	42,	57),
(22,	21,	NULL,	NULL,	'index',	43,	44),
(23,	21,	NULL,	NULL,	'admin_index_by_product',	45,	46),
(24,	21,	NULL,	NULL,	'view',	47,	48),
(25,	21,	NULL,	NULL,	'admin_add_by_product',	49,	50),
(26,	21,	NULL,	NULL,	'admin_edit_by_product',	51,	52),
(27,	21,	NULL,	NULL,	'admin_delete_by_product',	53,	54),
(28,	1,	NULL,	NULL,	'Products',	58,	73),
(29,	28,	NULL,	NULL,	'index',	59,	60),
(30,	28,	NULL,	NULL,	'view',	61,	62),
(31,	28,	NULL,	NULL,	'admin_index',	63,	64),
(32,	28,	NULL,	NULL,	'admin_view',	65,	66),
(33,	28,	NULL,	NULL,	'admin_add',	67,	68),
(34,	28,	NULL,	NULL,	'admin_edit',	69,	70),
(35,	28,	NULL,	NULL,	'admin_delete',	71,	72),
(36,	1,	NULL,	NULL,	'ProductsInGroups',	74,	95),
(37,	36,	NULL,	NULL,	'index',	75,	76),
(38,	36,	NULL,	NULL,	'view',	77,	78),
(39,	36,	NULL,	NULL,	'add',	79,	80),
(40,	36,	NULL,	NULL,	'edit',	81,	82),
(41,	36,	NULL,	NULL,	'delete',	83,	84),
(42,	36,	NULL,	NULL,	'admin_index',	85,	86),
(43,	36,	NULL,	NULL,	'admin_view',	87,	88),
(44,	36,	NULL,	NULL,	'admin_add',	89,	90),
(45,	36,	NULL,	NULL,	'admin_edit',	91,	92),
(46,	36,	NULL,	NULL,	'admin_delete',	93,	94),
(47,	1,	NULL,	NULL,	'Users',	96,	137),
(48,	47,	NULL,	NULL,	'index',	97,	98),
(49,	47,	NULL,	NULL,	'view',	99,	100),
(50,	47,	NULL,	NULL,	'add',	101,	102),
(51,	47,	NULL,	NULL,	'edit',	103,	104),
(52,	47,	NULL,	NULL,	'delete',	105,	106),
(53,	47,	NULL,	NULL,	'send_enquiry_email',	107,	108),
(54,	47,	NULL,	NULL,	'login',	109,	110),
(55,	47,	NULL,	NULL,	'admin_login',	111,	112),
(56,	47,	NULL,	NULL,	'admin_logout',	113,	114),
(57,	47,	NULL,	NULL,	'logout',	115,	116),
(58,	47,	NULL,	NULL,	'admin_forget_password',	117,	118),
(59,	47,	NULL,	NULL,	'admin_view_my_own_profile',	119,	120),
(60,	47,	NULL,	NULL,	'admin_edit_my_own_profile',	121,	122),
(61,	47,	NULL,	NULL,	'admin_change_my_own_password',	123,	124),
(62,	47,	NULL,	NULL,	'forget_password',	125,	126),
(63,	47,	NULL,	NULL,	'reset_password',	127,	128),
(64,	1,	NULL,	NULL,	'AclExtras',	138,	139),
(65,	1,	NULL,	NULL,	'AssetCompress',	140,	141),
(66,	1,	NULL,	NULL,	'ClearCache',	142,	151),
(67,	66,	NULL,	NULL,	'ClearCache',	143,	150),
(68,	67,	NULL,	NULL,	'files',	144,	145),
(69,	67,	NULL,	NULL,	'engines',	146,	147),
(70,	67,	NULL,	NULL,	'groups',	148,	149),
(71,	1,	NULL,	NULL,	'Migrations',	152,	153),
(72,	1,	NULL,	NULL,	'PermissionsExtras',	154,	155),
(73,	1,	NULL,	NULL,	'UtilityLib',	156,	157),
(74,	47,	NULL,	NULL,	'admin_reset_password',	129,	130),
(75,	47,	NULL,	NULL,	'admin_index',	131,	132),
(76,	47,	NULL,	NULL,	'admin_add',	133,	134),
(77,	47,	NULL,	NULL,	'admin_edit',	135,	136),
(78,	8,	NULL,	NULL,	'admin_display',	17,	18),
(79,	1,	NULL,	NULL,	'ProductImages',	158,	181),
(80,	79,	NULL,	NULL,	'index',	159,	160),
(81,	79,	NULL,	NULL,	'view',	161,	162),
(82,	79,	NULL,	NULL,	'add',	163,	164),
(83,	79,	NULL,	NULL,	'edit',	165,	166),
(84,	79,	NULL,	NULL,	'delete',	167,	168),
(85,	79,	NULL,	NULL,	'admin_add_by_product',	169,	170),
(86,	1,	NULL,	NULL,	'Upload',	182,	183),
(87,	1,	NULL,	NULL,	'UtilityBehaviors',	184,	185),
(88,	79,	NULL,	NULL,	'admin_index_by_product',	171,	172),
(89,	79,	NULL,	NULL,	'admin_delete_by_product',	173,	174),
(90,	79,	NULL,	NULL,	'admin_edit_by_product',	175,	176),
(91,	79,	NULL,	NULL,	'admin_view_by_product',	177,	178),
(92,	79,	NULL,	NULL,	'admin_swap_order',	179,	180),
(93,	21,	NULL,	NULL,	'admin_swap_order',	55,	56);

DROP TABLE IF EXISTS `aros`;
CREATE TABLE `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1,	NULL,	'Group',	1,	NULL,	1,	6),
(2,	NULL,	'Group',	2,	NULL,	2,	5),
(3,	2,	'Group',	3,	NULL,	3,	4);

DROP TABLE IF EXISTS `aros_acos`;
CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1,	1,	1,	'1',	'1',	'1',	'1'),
(2,	2,	1,	'-1',	'-1',	'-1',	'-1'),
(3,	2,	57,	'1',	'1',	'1',	'1'),
(4,	2,	8,	'1',	'1',	'1',	'1'),
(5,	3,	28,	'1',	'1',	'1',	'1'),
(6,	3,	47,	'1',	'1',	'1',	'1');

DROP TABLE IF EXISTS `attachments`;
CREATE TABLE `attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model` varchar(20) NOT NULL,
  `foreign_key` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `display_name` varchar(30) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_NAME` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `groups` (`id`, `name`, `display_name`, `created`, `modified`, `parent_id`) VALUES
(1,	'Super Administrators',	'Super Admin',	'2013-06-28 03:01:06',	'2013-06-28 03:01:06',	NULL),
(2,	'Users',	'Users',	'2013-06-28 03:01:57',	'2013-06-28 03:01:57',	NULL),
(3,	'Shop Administrators',	'Shop Admin',	'2013-06-28 03:02:48',	'2013-06-28 03:02:48',	2);

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `created` datetime NOT NULL,
  `product_variant_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `products` (`id`, `name`, `description`, `price`, `created`, `product_variant_count`) VALUES
(1,	'Rectangle Sticker Labels',	'With our classic vinyl rectangle sticker labels, you\'ll be able to label in style. Personalize all your kid\'s belongings and never lose another item again. \r\n\r\nDetails:\r\n51.5mm x 24mm\r\nPack contains 48 labels',	19.95,	'0000-00-00 00:00:00',	1),
(2,	'Circle Sticker Labels',	'These supercute round vinyl labels are perfect for everything, ranging from bottles and bowls to sippy cups and snack boxes. Like all our sticker labels, they\'re waterproof, sterilizer-safe, microwavable and dishwasher-friendly. \r\n\r\nDetails: \r\n37.5 mm \r\nPack contains 42 labels ',	20.00,	'0000-00-00 00:00:00',	1),
(3,	'Chinese Name Sticker Labels',	'Love Chinese? We do too! Identify belongings and teach your kids to write their Chinese names with these Chinese Name Sticker Labels. \r\n\r\nDetails: \r\n51.5mm x 24mm \r\nPack contains 48 labels ',	21.00,	'0000-00-00 00:00:00',	2),
(4,	'Birthday Sticker Labels',	'Birthday Labels are a great way to say Happy Birthday! Instead of scribbling your name on wrappers with a marker, just stick on a personalized Birthday Label and you\'re good to go.  \r\n\r\nDetails: \r\n63mm x 29mm \r\nPack contains 27 labels ',	22.00,	'0000-00-00 00:00:00',	1),
(5,	'Book Sticker Labels',	'Book labels are great for storybooks, textbooks, workbooks, notebooks, jotter books, coloring books and even sticker books. \r\n\r\nDetails: \r\n63mm x 29mm \r\nPack contains 27 labels  ',	23.00,	'0000-00-00 00:00:00',	1),
(6,	'Split Dual Name Pack (Sticker Labels)',	'Instead of buying 2 separate packs for 2 kids, share a pack and combine both names in a Split Dual Name Pack. Sharing for the win!\r\n\r\nDetails:\r\nApplicable to all products.\r\nOnly 1 design per pack.\r\n\r\n\r\n',	24.00,	'0000-00-00 00:00:00',	4),
(7,	'Split English/Chinese Pack (Sticker Labels)',	'Canâ€™t decide between having the labels in English or Chinese? Have the best of both worlds with our Split English/Chinese Pack. \r\n\r\nDetails:\r\nApplicable to all except circle labels\r\nLimited to 1 design per pack',	25.00,	'0000-00-00 00:00:00',	3),
(8,	'Rectangle Iron On Labels',	'We\'ve taken all the awesomeness of our classic vinyl rectangle sticker labels and made it into iron on labels because tiny clothes need label love too. Safe for washing machines and dryers. \r\n\r\nDetails: \r\n45mm x 18mm \r\nPack contains 40 labels ',	26.00,	'0000-00-00 00:00:00',	1),
(9,	'Circle Iron On Labels',	'Our round iron on labels look unbelievably on tiny clothes. Plus you won\'t have to worry about getting their clothes mixed up in preschool ever again. We\'d say it\'s a win-win!\r\n\r\nDetails: \r\n30 mm \r\nPack contains 36 labels ',	27.00,	'0000-00-00 00:00:00',	1),
(10,	'Split Dual Name Pack (Iron On Labels)',	'Instead of buying 2 separate packs for 2 kids, share a pack and combine both names in a Split Dual Name Pack. Sharing for the win! \r\n\r\nDetails: \r\nApplicable to both rectangles and circles. \r\nOnly 1 design per pack.  ',	28.00,	'0000-00-00 00:00:00',	2),
(11,	'Split English/Chinese Pack (Iron On Labels)',	'Canâ€™t decide between having the labels in English or Chinese? Have the best of both worlds with our Split English/Chinese Pack. \r\n\r\nDetails: \r\nApplicable to rectangle labels only \r\nLimited to 1 design per pack ',	29.00,	'0000-00-00 00:00:00',	1),
(12,	'Get Me Started Value Pack',	'A Combo Pack to get you started!\r\n\r\n32 x Small Rectangle Sticker Labels\r\n14 x Circle Sticker Labels\r\n40 x Rectangle Iron Ons',	30.00,	'0000-00-00 00:00:00',	1),
(14,	'Give Me Everything Pack',	'A super duper value pack!\r\n\r\n32 x Small Rectangle Sticker Labels\r\n32 x Chinese Name Sticker Labels\r\n28 x Circle Sticker Labels\r\n20 x Rectangle Iron Ons\r\n18 x Circle Iron Ons',	50.00,	'0000-00-00 00:00:00',	1),
(15,	'Chinese Name Iron On Labels',	'Love Chinese? We do too! Identify belongings and teach your kids to write their Chinese names with these Chinese Name Sticker Labels. \r\n\r\nDetails: \r\n45mm x 18mm \r\nPack contains 40 labels  ',	15.00,	'0000-00-00 00:00:00',	2);

DROP TABLE IF EXISTS `products_in_groups`;
CREATE TABLE `products_in_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `product_groups`;
CREATE TABLE `product_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `product_groups` (`id`, `name`, `type`, `created`, `modified`) VALUES
(1,	'Rectangle',	'Sticker',	'2013-06-27 20:20:10',	'2013-06-27 20:20:20');

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE `product_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order` int(3) unsigned NOT NULL DEFAULT '0',
  `left` int(3) unsigned NOT NULL DEFAULT '0',
  `right` int(3) unsigned NOT NULL DEFAULT '999',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `product_id` int(11) unsigned NOT NULL,
  `product_variant_id` int(11) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL,
  `mimetype` varchar(255) NOT NULL,
  `filesize` int(11) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `product_images` (`id`, `order`, `left`, `right`, `type`, `product_id`, `product_variant_id`, `filename`, `dir`, `mimetype`, `filesize`, `created`, `modified`) VALUES
(3,	0,	0,	4,	0,	1,	5,	'Tiny Dancer Rectangles.jpg',	'3',	'',	0,	'2013-07-10 22:46:33',	'2013-07-16 03:37:33'),
(4,	1,	3,	5,	0,	1,	5,	'Mushroom Rectangles.jpg',	'4',	'',	0,	'2013-07-10 22:46:34',	'2013-07-16 03:37:33'),
(5,	2,	4,	6,	0,	1,	5,	'Girl Patterns Rectangles.jpg',	'5',	'',	0,	'2013-07-10 22:46:34',	'2013-07-16 03:37:33'),
(6,	3,	5,	7,	0,	1,	5,	'Aliens rectangles.jpg',	'6',	'',	0,	'2013-07-10 22:46:34',	'2013-07-16 03:37:13'),
(7,	4,	6,	8,	0,	1,	5,	'Boys Patterns rectangles.jpg',	'7',	'',	0,	'2013-07-10 22:48:21',	'2013-07-10 22:48:21'),
(8,	5,	7,	9,	0,	1,	5,	'Space Rectangles.jpg',	'8',	'',	0,	'2013-07-10 22:48:21',	'2013-07-10 22:48:21'),
(9,	6,	8,	10,	0,	1,	5,	'Under the Sea rectangles.jpg',	'9',	'',	0,	'2013-07-10 22:48:22',	'2013-07-10 22:48:22'),
(10,	7,	9,	11,	0,	1,	5,	'Vrooom Rectangles.jpg',	'10',	'',	0,	'2013-07-10 22:48:22',	'2013-07-10 22:48:22'),
(11,	8,	10,	12,	0,	1,	5,	'Cupcake Rectangles.jpg',	'11',	'',	0,	'2013-07-10 22:48:48',	'2013-07-16 03:37:54'),
(12,	9,	11,	13,	0,	1,	5,	'Cutie crawlies rectangles.jpg',	'12',	'',	0,	'2013-07-10 22:48:48',	'2013-07-17 23:22:57'),
(13,	10,	12,	999,	0,	1,	5,	'Dinos rectangles.jpg',	'13',	'',	0,	'2013-07-10 22:48:48',	'2013-07-17 23:22:57');

DROP TABLE IF EXISTS `product_variants`;
CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `left` int(3) unsigned NOT NULL DEFAULT '0',
  `right` int(3) unsigned NOT NULL DEFAULT '999',
  `order` int(3) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `product_variants` (`id`, `product_id`, `created`, `left`, `right`, `order`, `modified`, `name`) VALUES
(5,	1,	'2013-06-30 03:31:44',	0,	6,	0,	'2013-06-30 03:31:44',	'DEFAULT'),
(6,	2,	'2013-06-30 03:32:10',	5,	7,	1,	'2013-07-17 22:35:59',	'DEFAULT'),
(7,	3,	'2013-06-30 03:32:29',	6,	8,	2,	'2013-07-17 22:35:59',	'Horizontal'),
(8,	3,	'2013-06-30 03:32:37',	7,	9,	3,	'2013-07-17 22:35:59',	'Vertical'),
(9,	4,	'2013-06-30 03:33:25',	8,	11,	4,	'2013-07-17 22:35:59',	'DEFAULT'),
(11,	5,	'2013-06-30 03:34:21',	9,	12,	5,	'2013-06-30 03:34:21',	'DEFAULT'),
(12,	6,	'2013-06-30 03:34:48',	11,	13,	6,	'2013-06-30 03:34:48',	'Small Rectangle Labels'),
(13,	6,	'2013-06-30 03:34:59',	12,	14,	7,	'2013-06-30 03:34:59',	'Circle Labels'),
(14,	6,	'2013-06-30 03:37:23',	13,	15,	8,	'2013-06-30 03:37:23',	'Birthday Labels'),
(15,	6,	'2013-06-30 03:37:34',	14,	17,	9,	'2013-06-30 03:37:34',	'Book Labels'),
(17,	7,	'2013-06-30 03:37:58',	15,	18,	10,	'2013-06-30 03:37:58',	'Small Rectangle Labels'),
(18,	7,	'2013-06-30 03:38:08',	17,	20,	11,	'2013-06-30 03:38:08',	'Birthday Labels'),
(20,	7,	'2013-06-30 03:38:39',	18,	21,	12,	'2013-06-30 03:38:39',	'Book Labels'),
(21,	8,	'2013-06-30 03:38:58',	20,	22,	13,	'2013-06-30 03:38:58',	'DEFAULT'),
(22,	9,	'2013-06-30 03:39:19',	21,	23,	14,	'2013-06-30 03:39:19',	'DEFAULT'),
(23,	10,	'2013-06-30 03:39:38',	22,	24,	15,	'2013-06-30 03:39:38',	'Rectangle Labels'),
(24,	10,	'2013-06-30 03:39:49',	23,	25,	16,	'2013-06-30 03:39:49',	'Circle Labels'),
(25,	11,	'2013-06-30 03:44:09',	24,	26,	17,	'2013-06-30 03:44:09',	'DEFAULT'),
(26,	12,	'2013-06-30 03:44:35',	25,	27,	18,	'2013-06-30 03:44:35',	'DEFAULT'),
(27,	14,	'2013-06-30 03:45:06',	26,	28,	19,	'2013-06-30 03:45:06',	'DEFAULT'),
(28,	15,	'2013-06-30 03:45:31',	27,	29,	20,	'2013-06-30 03:45:31',	'Horizontal'),
(29,	15,	'2013-06-30 03:45:40',	28,	30,	21,	'2013-06-30 03:45:40',	'Vertical'),
(30,	19,	'2013-07-09 07:07:17',	29,	31,	22,	'2013-07-09 07:07:17',	''),
(31,	20,	'2013-07-09 07:10:20',	30,	32,	23,	'2013-07-09 07:10:20',	''),
(32,	21,	'2013-07-09 07:11:30',	31,	33,	24,	'2013-07-09 07:11:30',	''),
(33,	22,	'2013-07-09 07:15:15',	32,	34,	25,	'2013-07-09 07:15:15',	'DEFAULT'),
(34,	23,	'2013-07-09 07:16:09',	33,	35,	26,	'2013-07-09 07:16:09',	'DEFAULT'),
(35,	24,	'2013-07-09 07:25:59',	34,	999,	27,	'2013-07-09 07:25:59',	'DEFAULT');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `short_name` varchar(20) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_EMAIL` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `short_name`, `token`, `group_id`, `created`, `modified`) VALUES
(1,	'ks',	'kimcity@gmail.com',	NULL,	NULL,	NULL,	0,	'2013-06-22 18:51:26',	'2013-06-22 18:51:26'),
(2,	'KimSia',	'kimsia@oppoin.com',	'9c1a57615fd9c4fd9361b8264c0c4ad06aaf9ad9',	'KimSia',	'',	1,	'2013-06-28 13:51:12',	'2013-06-28 13:51:12'),
(3,	'AikChun1',	'aikchun616@gmail.com',	'275108ab67a27356dab9dcff38275c044766397f',	'AikChun1',	NULL,	1,	'2013-06-28 13:51:57',	'2013-06-30 09:04:43'),
(4,	'Daphne Ling',	'daphne@motherinc.org',	'275108ab67a27356dab9dcff38275c044766397f',	'Daphne',	'NULL',	3,	'2013-07-02 09:30:20',	'2013-07-02 09:30:20');

-- 2013-07-18 06:16:30