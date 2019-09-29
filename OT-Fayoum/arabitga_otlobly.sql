/*
 Navicat Premium Data Transfer

 Source Server         : 167.86.67.9
 Source Server Type    : MySQL
 Source Server Version : 100318
 Source Host           : 167.86.67.9:3306
 Source Schema         : arabitga_otlobly

 Target Server Type    : MySQL
 Target Server Version : 100318
 File Encoding         : 65001

 Date: 26/09/2019 16:59:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart_detail
-- ----------------------------
DROP TABLE IF EXISTS `cart_detail`;
CREATE TABLE `cart_detail` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `items` longtext DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES (2, 'فطار اطلبلي', 'category/cde8de9a76ae9d69d08ff944f7c9b14a.jpg', 1, 1, '2018-09-25 10:29:57', 7, '2019-09-07 17:15:36');
INSERT INTO `category` VALUES (3, 'الوجبات الرئيسيه', 'category/17839ead6c4a2562c5970dbd7ee87c4a.jpg', 1, 1, '2018-09-25 10:30:24', 7, '2019-09-07 17:16:19');
INSERT INTO `category` VALUES (4, 'التحليه', 'category/40e5a869ebf19bae30389eef4d4a3e89.jpg', 1, 1, '2018-09-25 10:30:59', 7, '2019-09-07 17:16:31');
INSERT INTO `category` VALUES (5, 'مشروبات', 'category/fa512f1fa1867ec520cf17ff0b53fad1.jpg', 1, 1, '2018-10-04 06:03:24', 7, '2019-09-07 17:16:46');
INSERT INTO `category` VALUES (6, 'وجبات موصى بها', 'category/b6bfc02deb21354f8b5b50e10dd52842.gif', 1, 7, '2019-09-04 22:51:10', 7, '2019-09-07 17:17:15');
INSERT INTO `category` VALUES (7, 'احجزلي', 'category/c04fbd68700e028539063f6ed5b8c2b7.jpg', 1, 7, '2019-09-07 14:18:48', 1, '2019-09-07 22:11:52');
COMMIT;

-- ----------------------------
-- Table structure for cms
-- ----------------------------
DROP TABLE IF EXISTS `cms`;
CREATE TABLE `cms` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `CMSSlug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` int(11) DEFAULT NULL,
  `created_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cms
-- ----------------------------
BEGIN;
INSERT INTO `cms` VALUES (1, 'About Us', 'about-us', '<p>To keep your operations, smooth, it is very important to have a reliable Point of Sale (POS) system. With Eatance, you will have a POS system that is specifically designed to manage the eatery business. There is no aspect of restaurants that is left uncovered with this application.&nbsp;<br />\r\nEatance is a very user-friendly interface which enables restaurant managers to oversee and control every single operation, whether it&rsquo;s in the kitchen or at the tables. It can handle everything, sourcing ingredients, order&nbsp;</p>', NULL, 1, '', '', '', 1, 1, 2018, NULL);
INSERT INTO `cms` VALUES (2, 'Contact US', 'contact-us-1', '<embed src=\"https://tawk.to/chat/5d6bb31477aa790be331d5d2/default\"?', NULL, 1, '', '', '', 1, 1, 2019, NULL);
INSERT INTO `cms` VALUES (3, 'Privacy Policy', 'privacy-policy-1', '<p><strong>Privacy Policy:</strong></p>\r\n\r\n<p>Eatance was built by Evince Development Pvt. Ltd. as an Open Source Application and it is available for the usage of the end user for no cost at all. By choosing to use our service, you agree to our Privacy Policy.</p>\r\n\r\n<p>This page intends to provide our visitors with information regarding our policies on the collection, use, and disclosure of their personal information, in case they decide to use our service. All the information collected by us is used to provide and improve our service. Your personal information will not be used or shared with any third party, except as described in this Privacy Policy.</p>\r\n\r\n<p>The terms used in this privacy policy have the same meanings as in our Terms and Conditions, which is accessible at Eatance unless otherwise defined in this Privacy Policy.</p>\r\n\r\n<p><strong>Information Collection and Use</strong></p>\r\n\r\n<p>To provide you with a great user experience, while using our service, we may ask you to provide us with your personal information. The information collected will be retained by us and will be used only as stated in this privacy policy.</p>\r\n\r\n<p>Eatance also uses third-party services which may collect your personal information and use it for your identification.</p>\r\n\r\n<p>Please find below the link to the privacy policy of our third-party service provider:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.google.com/policies/privacy/\"><u>Google Play Services</u></a></li>\r\n</ul>\r\n\r\n<p><strong>Log Data</strong></p>\r\n\r\n<p>While using our services if an unexpected error occurs, we collect data (through third-party products) from your phone which is known as &lsquo;Log Data.&rsquo; The collected data may include information like your IP address, the name of your device, operating system version, the time and date when the service is used, the configuration of the app when utilizing our Service, and the configuration of the application while utilizing our service and other such statistics.</p>\r\n\r\n<p><strong>Cookies</strong></p>\r\n\r\n<p>Cookies are archives stored on your device with the small amount of information about the user and the website, it can be used as anonymous unique identifiers. These archives are sent to your browser from the websites visited by you and are stored on the internal memory of your device.</p>\r\n\r\n<p>Eatance does not use these cookies explicitly. However, it does uses third-party codes and libraries, which may use cookies to gather information to improve their service and user experience. You can choose to accept or decline these cookies and be in control of when and how these cookies are being used. If you refuse to use cookies by Eatance, you might not be able to use some parts of the service.</p>\r\n\r\n<p><strong>Service Providers</strong></p>\r\n\r\n<p>We may utilize third-party companies and individuals for the following:</p>\r\n\r\n<ul>\r\n	<li>To aid our service;</li>\r\n	<li>To deliver the service on behalf of us;</li>\r\n	<li>To execute related services; or</li>\r\n	<li>To support us in evaluating how our service is being used.</li>\r\n</ul>\r\n\r\n<p>We want our users to be well informed that these third-parties have access to your personal data. They collect and use your information to perform the various tasks assigned to them, on our behalf. However, they are obligated not to use this information for any other purpose, and not to disclose it with others.</p>\r\n\r\n<p><strong>Security</strong></p>\r\n\r\n<p>We appreciate and value the level of trust you put in us by providing your personal information and therefore we are determined to use the best commercially acceptable means to protect it. But there is no mode of transmission on the internet or electronic storage that is 100% safe, secure and reliable, and we cannot guarantee its absolute security.</p>\r\n\r\n<p><strong>Links to Other Sites</strong></p>\r\n\r\n<p>Our application contains links to other sites. By clicking on these link you will be navigated to their site. These external sites are not operated by us and therefore we strongly recommend you to review their privacy policies. We do not control those sites and accept no responsibility for the content, privacy policies, or practices of any such third-party sites.</p>\r\n\r\n<p><strong>Children&rsquo;s Privacy</strong></p>\r\n\r\n<p>Our services do not address anyone below the age of thirteen. We do not collect any kind of personally identifiable data from children below the age of thirteen. If we find out that a child under the age of 13 has provided us with some personal data, we take immediate action to remove it from our servers.</p>\r\n\r\n<p>If your child has accidentally provided us with personal information, kindly contact us so that we can take all the necessary steps to remove it.</p>\r\n\r\n<p><strong>Changes to This Privacy Policy</strong></p>\r\n\r\n<p>We may update our privacy policy at times. We advise you to review this page at regular intervals to stay informed. In case of any changes in our privacy policy, we will notify you by updating it on this page. Such changes would effective immediately after being posted here.</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>Please feel free to contact us in case of any query or suggestions regarding our privacy policy.</p>', NULL, 1, '', '', '', 1, 1, 2018, NULL);
COMMIT;

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount_type` enum('Percentage','Amount') DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `max_amount` decimal(10,2) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for email_template
-- ----------------------------
DROP TABLE IF EXISTS `email_template`;
CREATE TABLE `email_template` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `no_of_people` varchar(50) DEFAULT NULL,
  `no_of_table` varchar(50) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `tax_rate` decimal(10,2) DEFAULT NULL,
  `tax_type` enum('Percentage','Amount') DEFAULT NULL,
  `coupon_amount` decimal(10,2) DEFAULT NULL,
  `coupon_type` enum('Percentage','Amount') DEFAULT NULL,
  `event_status` enum('pending','onGoing','completed','cancel') DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for event_detail
-- ----------------------------
DROP TABLE IF EXISTS `event_detail`;
CREATE TABLE `event_detail` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `restaurant_detail` longtext DEFAULT NULL,
  `user_detail` longtext DEFAULT NULL,
  `package_detail` longtext DEFAULT NULL,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of event_detail
-- ----------------------------
BEGIN;
INSERT INTO `event_detail` VALUES (1, 1, 'O:8:\"stdClass\":10:{s:4:\"name\";s:6:\"Honest\";s:5:\"image\";s:47:\"restaurant/7d0ff701a3019ceb215990a4507bb89d.jpg\";s:12:\"phone_number\";s:10:\"9865321457\";s:5:\"email\";s:15:\"honest@mail.com\";s:11:\"amount_type\";s:10:\"Percentage\";s:6:\"amount\";s:4:\"3.00\";s:7:\"address\";s:53:\"G-8-9, Ground Floor, Shapath Hexa, Beside Domino’s,\";s:8:\"landmark\";s:24:\"Opp. Gujarat High Court,\";s:7:\"zipcode\";s:6:\"380060\";s:4:\"city\";s:9:\"Ahmedabad\";}', 'a:2:{s:10:\"first_name\";s:6:\"عمر\";s:9:\"last_name\";s:0:\"\";}', '');
INSERT INTO `event_detail` VALUES (2, 2, 'O:8:\"stdClass\":10:{s:4:\"name\";s:7:\"Sankalp\";s:5:\"image\";s:47:\"restaurant/976378ef4ee0b893f9f6e46199916bae.jpg\";s:12:\"phone_number\";s:10:\"7896541236\";s:5:\"email\";s:16:\"sankalp@mail.com\";s:11:\"amount_type\";s:10:\"Percentage\";s:6:\"amount\";s:4:\"5.00\";s:7:\"address\";s:27:\"6, Local Rd, Vishwas City 1\";s:8:\"landmark\";s:12:\"Sola Village\";s:7:\"zipcode\";s:6:\"380061\";s:4:\"city\";s:9:\"Ahmedabad\";}', 'a:2:{s:10:\"first_name\";s:4:\"Omar\";s:9:\"last_name\";s:0:\"\";}', '');
COMMIT;

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_title` varchar(255) DEFAULT NULL,
  `notification_description` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of notifications
-- ----------------------------
BEGIN;
INSERT INTO `notifications` VALUES (9, 'notification test', 'test', 1);
INSERT INTO `notifications` VALUES (10, 'test', 'test', 1);
INSERT INTO `notifications` VALUES (11, 'tarek', 'tareeek', 1);
INSERT INTO `notifications` VALUES (12, 'test', 'test', 1);
INSERT INTO `notifications` VALUES (13, 'test', 'test', 1);
INSERT INTO `notifications` VALUES (14, 'omar', 'omaraaaaaa', 1);
INSERT INTO `notifications` VALUES (15, 'omar', 'omar', 1);
INSERT INTO `notifications` VALUES (16, 'tex1', 'tewsdgdsg', 1);
INSERT INTO `notifications` VALUES (17, 'gdfgdfg', 'dfhdfhdfgdfh', 1);
COMMIT;

-- ----------------------------
-- Table structure for notifications_users
-- ----------------------------
DROP TABLE IF EXISTS `notifications_users`;
CREATE TABLE `notifications_users` (
  `map_id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`map_id`) USING BTREE,
  KEY `user_notification_fk` (`notification_id`) USING BTREE,
  CONSTRAINT `user_notification_fk` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `user_detail` longtext DEFAULT NULL,
  `restaurant_detail` longtext DEFAULT NULL,
  `item_detail` longtext DEFAULT NULL,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
BEGIN;
INSERT INTO `order_detail` VALUES (12, 12, 'a:6:{s:10:\"first_name\";s:4:\"Omar\";s:9:\"last_name\";s:0:\"\";s:7:\"address\";s:4:\"Test\";s:8:\"landmark\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:4:\"city\";s:0:\"\";}', 'O:8:\"stdClass\":10:{s:4:\"name\";s:6:\"Honest\";s:5:\"image\";s:47:\"restaurant/7d0ff701a3019ceb215990a4507bb89d.jpg\";s:12:\"phone_number\";s:10:\"9865321457\";s:5:\"email\";s:15:\"honest@mail.com\";s:11:\"amount_type\";s:10:\"Percentage\";s:6:\"amount\";s:4:\"3.00\";s:7:\"address\";s:53:\"G-8-9, Ground Floor, Shapath Hexa, Beside Domino’s,\";s:8:\"landmark\";s:24:\"Opp. Gujarat High Court,\";s:7:\"zipcode\";s:6:\"380060\";s:4:\"city\";s:9:\"Ahmedabad\";}', 'a:1:{i:0;a:5:{s:9:\"item_name\";s:15:\"Harabhara Kabab\";s:7:\"item_id\";s:1:\"7\";s:6:\"qty_no\";i:1;s:4:\"rate\";s:6:\"100.00\";s:8:\"order_id\";i:12;}}');
INSERT INTO `order_detail` VALUES (13, 13, 'a:6:{s:10:\"first_name\";s:4:\"Omar\";s:9:\"last_name\";s:0:\"\";s:7:\"address\";s:4:\"Test\";s:8:\"landmark\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:4:\"city\";s:0:\"\";}', 'O:8:\"stdClass\":10:{s:4:\"name\";s:6:\"Honest\";s:5:\"image\";s:47:\"restaurant/7d0ff701a3019ceb215990a4507bb89d.jpg\";s:12:\"phone_number\";s:10:\"9865321457\";s:5:\"email\";s:15:\"honest@mail.com\";s:11:\"amount_type\";s:10:\"Percentage\";s:6:\"amount\";s:4:\"3.00\";s:7:\"address\";s:53:\"G-8-9, Ground Floor, Shapath Hexa, Beside Domino’s,\";s:8:\"landmark\";s:24:\"Opp. Gujarat High Court,\";s:7:\"zipcode\";s:6:\"380060\";s:4:\"city\";s:9:\"Ahmedabad\";}', 'a:1:{i:0;a:5:{s:9:\"item_name\";s:15:\"Harabhara Kabab\";s:7:\"item_id\";s:1:\"7\";s:6:\"qty_no\";i:1;s:4:\"rate\";s:6:\"100.00\";s:8:\"order_id\";i:13;}}');
INSERT INTO `order_detail` VALUES (14, 14, 'a:6:{s:10:\"first_name\";s:4:\"Omar\";s:9:\"last_name\";s:0:\"\";s:7:\"address\";s:4:\"Test\";s:8:\"landmark\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:4:\"city\";s:0:\"\";}', 'O:8:\"stdClass\":10:{s:4:\"name\";s:6:\"Honest\";s:5:\"image\";s:47:\"restaurant/7d0ff701a3019ceb215990a4507bb89d.jpg\";s:12:\"phone_number\";s:10:\"9865321457\";s:5:\"email\";s:15:\"honest@mail.com\";s:11:\"amount_type\";s:10:\"Percentage\";s:6:\"amount\";s:4:\"3.00\";s:7:\"address\";s:53:\"G-8-9, Ground Floor, Shapath Hexa, Beside Domino’s,\";s:8:\"landmark\";s:24:\"Opp. Gujarat High Court,\";s:7:\"zipcode\";s:6:\"380060\";s:4:\"city\";s:9:\"Ahmedabad\";}', 'a:3:{i:0;a:5:{s:9:\"item_name\";s:15:\"Harabhara Kabab\";s:7:\"item_id\";s:1:\"7\";s:6:\"qty_no\";i:2;s:4:\"rate\";s:6:\"100.00\";s:8:\"order_id\";i:14;}i:1;a:5:{s:9:\"item_name\";s:6:\"Browny\";s:7:\"item_id\";s:1:\"8\";s:6:\"qty_no\";i:1;s:4:\"rate\";s:6:\"100.00\";s:8:\"order_id\";i:14;}i:2;a:5:{s:9:\"item_name\";s:4:\"Soup\";s:7:\"item_id\";s:1:\"1\";s:6:\"qty_no\";i:1;s:4:\"rate\";s:6:\"200.00\";s:8:\"order_id\";i:14;}}');
INSERT INTO `order_detail` VALUES (15, 15, 'a:6:{s:10:\"first_name\";s:4:\"Omar\";s:9:\"last_name\";s:0:\"\";s:7:\"address\";s:4:\"Test\";s:8:\"landmark\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:4:\"city\";s:0:\"\";}', 'O:8:\"stdClass\":10:{s:4:\"name\";s:7:\"Crinkle\";s:5:\"image\";s:47:\"restaurant/9996639aa45adfc82c9ed2bafac0afee.png\";s:12:\"phone_number\";s:11:\"01011787017\";s:5:\"email\";s:17:\"rl@mailinator.com\";s:11:\"amount_type\";s:10:\"Percentage\";s:6:\"amount\";s:5:\"14.00\";s:7:\"address\";s:94:\"الفيوم, الجامعة، Ahmed Shawqi, Qesm Al Fayoum, Faiyum, Faiyum Governorate, Egypt\";s:8:\"landmark\";s:22:\"S.G HIghway, Ahmedabad\";s:7:\"zipcode\";s:5:\"63512\";s:4:\"city\";s:6:\"Fayoum\";}', 'a:1:{i:0;a:5:{s:9:\"item_name\";s:11:\"Mega Strips\";s:7:\"item_id\";s:2:\"34\";s:6:\"qty_no\";i:1;s:4:\"rate\";s:6:\"139.00\";s:8:\"order_id\";i:15;}}');
INSERT INTO `order_detail` VALUES (16, 16, 'a:6:{s:10:\"first_name\";s:12:\"Hossam Ahmed\";s:9:\"last_name\";s:0:\"\";s:7:\"address\";s:7:\"Laporta\";s:8:\"landmark\";s:0:\"\";s:7:\"zipcode\";s:0:\"\";s:4:\"city\";s:0:\"\";}', 'O:8:\"stdClass\":10:{s:4:\"name\";s:7:\"Crinkle\";s:5:\"image\";s:47:\"restaurant/9996639aa45adfc82c9ed2bafac0afee.png\";s:12:\"phone_number\";s:11:\"01011787017\";s:5:\"email\";s:17:\"rl@mailinator.com\";s:11:\"amount_type\";s:10:\"Percentage\";s:6:\"amount\";s:5:\"14.00\";s:7:\"address\";s:94:\"الفيوم, الجامعة، Ahmed Shawqi, Qesm Al Fayoum, Faiyum, Faiyum Governorate, Egypt\";s:8:\"landmark\";s:22:\"S.G HIghway, Ahmedabad\";s:7:\"zipcode\";s:5:\"63512\";s:4:\"city\";s:6:\"Fayoum\";}', 'a:1:{i:0;a:5:{s:9:\"item_name\";s:11:\"Mega Strips\";s:7:\"item_id\";s:2:\"34\";s:6:\"qty_no\";i:1;s:4:\"rate\";s:6:\"139.00\";s:8:\"order_id\";i:16;}}');
COMMIT;

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `qty_no` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of order_item
-- ----------------------------
BEGIN;
INSERT INTO `order_item` VALUES (12, 7, 'Harabhara Kabab', 1, 100.00, 12);
INSERT INTO `order_item` VALUES (13, 7, 'Harabhara Kabab', 1, 100.00, 13);
INSERT INTO `order_item` VALUES (14, 7, 'Harabhara Kabab', 2, 100.00, 14);
INSERT INTO `order_item` VALUES (15, 8, 'Browny', 1, 100.00, 14);
INSERT INTO `order_item` VALUES (16, 1, 'Soup', 1, 200.00, 14);
INSERT INTO `order_item` VALUES (17, 34, 'Mega Strips', 1, 139.00, 15);
INSERT INTO `order_item` VALUES (18, 34, 'Mega Strips', 1, 139.00, 16);
COMMIT;

-- ----------------------------
-- Table structure for order_master
-- ----------------------------
DROP TABLE IF EXISTS `order_master`;
CREATE TABLE `order_master` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `total_rate` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `tax_rate` decimal(10,2) DEFAULT NULL,
  `tax_type` enum('Percentage','Amount') DEFAULT NULL,
  `coupon_discount` decimal(10,2) DEFAULT NULL,
  `coupon_name` varchar(30) DEFAULT NULL,
  `coupon_amount` decimal(10,2) DEFAULT NULL,
  `coupon_type` enum('Percentage','Amount') DEFAULT NULL,
  `order_status` enum('placed','delivered','onGoing','cancel','preparing') DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of order_master
-- ----------------------------
BEGIN;
INSERT INTO `order_master` VALUES (12, 19, 1, 1, 0, 103.00, 100.00, 3.00, 'Percentage', 0.00, '', 0.00, '', 'placed', '2019-09-14 19:08:00', 1, NULL, '2019-09-14 19:08:28', NULL, NULL);
INSERT INTO `order_master` VALUES (13, 19, 1, 1, 0, 103.00, 100.00, 3.00, 'Percentage', 0.00, '', 0.00, '', 'preparing', '2019-09-25 21:06:00', 1, NULL, '2019-09-25 21:06:18', NULL, NULL);
INSERT INTO `order_master` VALUES (14, 19, 1, 1, 0, 515.00, 500.00, 3.00, 'Percentage', 0.00, '', 0.00, '', 'placed', '2019-09-25 22:44:00', 1, NULL, '2019-09-25 22:44:03', NULL, NULL);
INSERT INTO `order_master` VALUES (15, 19, 13, 1, 0, 158.46, 139.00, 14.00, 'Percentage', 0.00, '', 0.00, '', 'delivered', '2019-09-26 13:50:00', 1, NULL, '2019-09-26 13:50:02', NULL, NULL);
INSERT INTO `order_master` VALUES (16, 20, 13, 2, 0, 158.46, 139.00, 14.00, 'Percentage', 0.00, '', 0.00, '', 'preparing', '2019-09-26 13:51:00', 1, NULL, '2019-09-26 13:51:49', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for order_notification
-- ----------------------------
DROP TABLE IF EXISTS `order_notification`;
CREATE TABLE `order_notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_order_id` int(11) NOT NULL,
  `order_count` int(11) NOT NULL,
  `view_status` tinyint(4) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`notification_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for order_status
-- ----------------------------
DROP TABLE IF EXISTS `order_status`;
CREATE TABLE `order_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status` enum('placed','preparing','delivered','onGoing','cancel') DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`status_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for restaurant
-- ----------------------------
DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE `restaurant` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_entity_id` int(11) DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `capacity` varchar(100) DEFAULT NULL,
  `no_of_table` varchar(100) DEFAULT NULL,
  `no_of_hall` varchar(100) DEFAULT NULL,
  `hall_capacity` varchar(100) DEFAULT NULL,
  `amount_type` enum('Percentage','Amount') DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `enable_hours` tinyint(4) NOT NULL,
  `timings` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_veg` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '1- active',
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 STATS_AUTO_RECALC=0 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of restaurant
-- ----------------------------
BEGIN;
INSERT INTO `restaurant` VALUES (1, 0, 'Honest', '9865321457', 'honest@mail.com', '1000', '200', '2', '500', 'Percentage', 3.00, 1, 'a:7:{s:6:\"monday\";a:3:{s:4:\"open\";s:8:\"08:00 AM\";s:5:\"close\";s:8:\"11:00 PM\";s:3:\"off\";s:1:\"1\";}s:7:\"tuesday\";a:3:{s:4:\"open\";s:8:\"08:00 AM\";s:5:\"close\";s:8:\"11:00 PM\";s:3:\"off\";s:1:\"1\";}s:9:\"wednesday\";a:3:{s:4:\"open\";s:8:\"08:00 AM\";s:5:\"close\";s:8:\"11:00 PM\";s:3:\"off\";s:1:\"1\";}s:8:\"thursday\";a:3:{s:4:\"open\";s:5:\"10:00\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}s:6:\"friday\";a:3:{s:4:\"open\";s:5:\"10:00\";s:5:\"close\";s:5:\"22:00\";s:3:\"off\";s:1:\"1\";}s:8:\"saturday\";a:3:{s:4:\"open\";s:8:\"08:00 AM\";s:5:\"close\";s:8:\"11:00 PM\";s:3:\"off\";s:1:\"1\";}s:6:\"sunday\";a:3:{s:4:\"open\";s:8:\"08:00 AM\";s:5:\"close\";s:8:\"11:00 PM\";s:3:\"off\";s:1:\"1\";}}', 'restaurant/7d0ff701a3019ceb215990a4507bb89d.jpg', 1, 1, 1, '2018-09-28 08:58:05', 1, '2018-12-07 18:31:28');
INSERT INTO `restaurant` VALUES (2, 0, 'Sankalp', '7896541236', 'sankalp@mail.com', '60', '200', '2', '4000', 'Percentage', 5.00, 1, 'a:7:{s:6:\"monday\";a:3:{s:4:\"open\";s:8:\"07:00 PM\";s:5:\"close\";s:8:\"11:00 PM\";s:3:\"off\";s:1:\"1\";}s:7:\"tuesday\";a:3:{s:4:\"open\";s:8:\"07:00 PM\";s:5:\"close\";s:8:\"11:00 PM\";s:3:\"off\";s:1:\"1\";}s:9:\"wednesday\";a:3:{s:4:\"open\";s:8:\"07:00 PM\";s:5:\"close\";s:8:\"11:00 PM\";s:3:\"off\";s:1:\"1\";}s:8:\"thursday\";a:3:{s:4:\"open\";s:8:\"07:00 PM\";s:5:\"close\";s:8:\"11:00 PM\";s:3:\"off\";s:1:\"1\";}s:6:\"friday\";a:3:{s:4:\"open\";s:8:\"07:00 PM\";s:5:\"close\";s:8:\"11:00 PM\";s:3:\"off\";s:1:\"1\";}s:8:\"saturday\";a:3:{s:4:\"open\";s:5:\"07:00\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}s:6:\"sunday\";a:3:{s:4:\"open\";s:5:\"07:00\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}}', 'restaurant/976378ef4ee0b893f9f6e46199916bae.jpg', 1, 1, 1, '2018-09-28 09:23:08', 1, '2018-12-26 11:12:31');
INSERT INTO `restaurant` VALUES (3, 0, 'Havmor', '7896541230', 'mor@mail.com', '800', '5600', '2', '4000', 'Percentage', 5.00, 1, 'a:7:{s:6:\"monday\";a:3:{s:4:\"open\";s:8:\"10:00 AM\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}s:7:\"tuesday\";a:3:{s:4:\"open\";s:8:\"10:00 AM\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}s:9:\"wednesday\";a:3:{s:4:\"open\";s:8:\"10:00 AM\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}s:8:\"thursday\";a:3:{s:4:\"open\";s:8:\"10:00 AM\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}s:6:\"friday\";a:3:{s:4:\"open\";s:8:\"10:00 AM\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}s:8:\"saturday\";a:3:{s:4:\"open\";s:8:\"10:00 AM\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}s:6:\"sunday\";a:3:{s:4:\"open\";s:8:\"10:00 AM\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}}', 'restaurant/815f755969e0efb09d8221f3c3908952.jpeg', 0, 1, 1, '2018-09-28 11:19:36', 1, '2018-12-24 14:42:13');
INSERT INTO `restaurant` VALUES (5, 0, 'Domino\'s', '898912128894', 'paige.sen021@gmail.com', '300', '20', '0', 'Chandkheda', 'Percentage', 5.00, 1, 'a:7:{s:6:\"monday\";a:3:{s:4:\"open\";s:8:\"11:10 AM\";s:5:\"close\";s:8:\"11:10 PM\";s:3:\"off\";s:1:\"1\";}s:7:\"tuesday\";a:3:{s:4:\"open\";s:8:\"11:10 AM\";s:5:\"close\";s:8:\"11:10 PM\";s:3:\"off\";s:1:\"1\";}s:9:\"wednesday\";a:3:{s:4:\"open\";s:8:\"11:10 AM\";s:5:\"close\";s:8:\"11:10 PM\";s:3:\"off\";s:1:\"1\";}s:8:\"thursday\";a:3:{s:4:\"open\";s:8:\"11:10 AM\";s:5:\"close\";s:8:\"11:10 PM\";s:3:\"off\";s:1:\"1\";}s:6:\"friday\";a:3:{s:4:\"open\";s:8:\"11:10 AM\";s:5:\"close\";s:8:\"11:10 PM\";s:3:\"off\";s:1:\"1\";}s:8:\"saturday\";a:3:{s:4:\"open\";s:8:\"11:10 AM\";s:5:\"close\";s:8:\"11:10 PM\";s:3:\"off\";s:1:\"1\";}s:6:\"sunday\";a:3:{s:4:\"open\";s:8:\"11:10 AM\";s:5:\"close\";s:8:\"11:10 PM\";s:3:\"off\";s:1:\"1\";}}', 'restaurant/32fc6b87db04b996077d771440b15244.jpg', NULL, 1, 1, '2018-10-04 05:43:23', 1, '2019-01-07 18:07:54');
INSERT INTO `restaurant` VALUES (9, 0, 'Pizza Hut', '080000 55668', 'goldy@evincedev.com', '100', '25', '2', '100', 'Percentage', 25.20, 1, 'a:7:{s:6:\"monday\";a:3:{s:4:\"open\";s:5:\"10:00\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}s:7:\"tuesday\";a:3:{s:4:\"open\";s:5:\"10:00\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}s:9:\"wednesday\";a:3:{s:4:\"open\";s:5:\"10:00\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}s:8:\"thursday\";a:3:{s:4:\"open\";s:5:\"10:00\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}s:6:\"friday\";a:3:{s:4:\"open\";s:5:\"10:00\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}s:8:\"saturday\";a:3:{s:4:\"open\";s:5:\"10:00\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}s:6:\"sunday\";a:3:{s:4:\"open\";s:5:\"10:00\";s:5:\"close\";s:5:\"23:00\";s:3:\"off\";s:1:\"1\";}}', 'restaurant/c07f036b10017026076bced569ef3c4d.jpg', NULL, 1, 1, '2018-12-04 09:17:47', 1, '2018-12-26 15:23:11');
INSERT INTO `restaurant` VALUES (13, 1, 'Crinkle', '01011787017', 'rl@mailinator.com', '110', '26', '100', '100', 'Percentage', 14.00, 1, 'a:7:{s:6:\"monday\";a:3:{s:4:\"open\";s:8:\"10:00 AM\";s:5:\"close\";s:8:\"12:00 PM\";s:3:\"off\";s:1:\"1\";}s:7:\"tuesday\";a:3:{s:4:\"open\";s:8:\"10:00 AM\";s:5:\"close\";s:8:\"12:00 PM\";s:3:\"off\";s:1:\"1\";}s:9:\"wednesday\";a:3:{s:4:\"open\";s:8:\"10:00 AM\";s:5:\"close\";s:8:\"12:00 PM\";s:3:\"off\";s:1:\"1\";}s:8:\"thursday\";a:3:{s:4:\"open\";s:8:\"10:00 AM\";s:5:\"close\";s:8:\"12:00 PM\";s:3:\"off\";s:1:\"1\";}s:6:\"friday\";a:3:{s:4:\"open\";s:8:\"10:00 AM\";s:5:\"close\";s:8:\"12:00 PM\";s:3:\"off\";s:1:\"1\";}s:8:\"saturday\";a:3:{s:4:\"open\";s:8:\"10:00 AM\";s:5:\"close\";s:8:\"12:00 PM\";s:3:\"off\";s:1:\"1\";}s:6:\"sunday\";a:3:{s:4:\"open\";s:8:\"10:00 AM\";s:5:\"close\";s:8:\"12:00 PM\";s:3:\"off\";s:1:\"1\";}}', 'restaurant/9996639aa45adfc82c9ed2bafac0afee.png', NULL, 1, 1, '2019-04-22 14:15:46', 1, '2019-09-07 17:42:49');
INSERT INTO `restaurant` VALUES (14, 0, 'كرينكل', '1004526836', 'mohammed.elbehairy@live.com', '300', '20', '2', '150', 'Percentage', 14.00, 1, 'a:7:{s:6:\"monday\";a:3:{s:4:\"open\";s:0:\"\";s:5:\"close\";s:0:\"\";s:3:\"off\";s:1:\"0\";}s:7:\"tuesday\";a:3:{s:4:\"open\";s:0:\"\";s:5:\"close\";s:0:\"\";s:3:\"off\";s:1:\"0\";}s:9:\"wednesday\";a:3:{s:4:\"open\";s:0:\"\";s:5:\"close\";s:0:\"\";s:3:\"off\";s:1:\"0\";}s:8:\"thursday\";a:3:{s:4:\"open\";s:0:\"\";s:5:\"close\";s:0:\"\";s:3:\"off\";s:1:\"0\";}s:6:\"friday\";a:3:{s:4:\"open\";s:0:\"\";s:5:\"close\";s:0:\"\";s:3:\"off\";s:1:\"0\";}s:8:\"saturday\";a:3:{s:4:\"open\";s:0:\"\";s:5:\"close\";s:0:\"\";s:3:\"off\";s:1:\"0\";}s:6:\"sunday\";a:3:{s:4:\"open\";s:0:\"\";s:5:\"close\";s:0:\"\";s:3:\"off\";s:1:\"0\";}}', 'restaurant/6c576d3217c931a471fd74b5c577e585.png', NULL, 1, 7, '2019-09-07 14:23:24', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for restaurant_address
-- ----------------------------
DROP TABLE IF EXISTS `restaurant_address`;
CREATE TABLE `restaurant_address` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `resto_entity_id` int(11) NOT NULL,
  `address` text DEFAULT NULL,
  `landmark` text DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of restaurant_address
-- ----------------------------
BEGIN;
INSERT INTO `restaurant_address` VALUES (1, 1, 'G-8-9, Ground Floor, Shapath Hexa, Beside Domino’s,', 'Opp. Gujarat High Court,', '23.02168304313544', '72.57379531860352', '380060', 'India', 'Gujarat', 'Ahmedabad');
INSERT INTO `restaurant_address` VALUES (2, 2, '6, Local Rd, Vishwas City 1', 'Sola Village', '23.074769', '72.526071', '380061', 'India', 'Gujarat', 'Ahmedabad');
INSERT INTO `restaurant_address` VALUES (3, 3, 'Shrusti 3, Ground Floor, Nr. Canara Bank', 'LG Bridge Corner, Maninagar', '22.9994336', '72.60820149999995', '380008', 'India', 'Gujarat', 'Ahmedabad');
INSERT INTO `restaurant_address` VALUES (4, 4, 'D-402, Ganesh Meridian, D Block, Sarkhej - Gandhinagar Hwy, Vishwas City 1, Sola, Ahmedabad, Gujarat 380060', 'Opp. High Court', '23.0752909', '72.52588609999998', '986523', 'United States', 'NY', 'city name test');
INSERT INTO `restaurant_address` VALUES (5, 5, 'Shrusti 3, Ground Floor, Nr. Canara Bank', 'LG Bridge Corner, Maninagar', '22.9994336', '72.60820149999995', '380008', 'India', 'Gujarat', 'Ahmedabad');
INSERT INTO `restaurant_address` VALUES (6, 6, 'A-53, Suryan Hopetown,, B/H satyamev hospital,chandkheda', 'Gujarat', '23.1116° N', '72.5728° E', '382424', 'India', 'Gujarat', 'Ahmedabad');
INSERT INTO `restaurant_address` VALUES (7, 7, 'Adani CNG Pump, Sarkhej - Gandhinagar Hwy,', 'Vasant Nagar, Gota', '23.0975221', '72.53091010000003', '985623', 'India', 'Gujarat', 'Ahmedabad');
INSERT INTO `restaurant_address` VALUES (8, 8, '3rd J.B. Tower Drive In Road Near SAL Hospital', 'Opp. Doordarshan Kendra, Thaltej, Ahmedabad', '23.0486187', '72.52386060000003', '380054', 'India', 'Gujarat', 'Ahmedabad');
INSERT INTO `restaurant_address` VALUES (9, 9, 'Shop Number 15, First Floor, Satymev 2, Opposite Kargil Petrol Pump, S.G HIghway, Ahmedabad, Gujarat', 'S.G HIghway, Ahmedabad', '23.07572444113706', '72.52665281295776', '380060', 'India', 'Gujarat', 'ghatlodia');
INSERT INTO `restaurant_address` VALUES (10, 10, 'D-402', 'Ganesh meridian', '23.07224727793078', '72.52907901219487', '380060', 'India', 'Gujarat', 'ahmedabad');
INSERT INTO `restaurant_address` VALUES (11, 11, 'Ganesh Maridian,Ganesh Maridian,Ganesh Maridian,Ganesh Maridian,Ganesh Maridian', 'Audi Showroom', '23.075257', '72.52555995396733', '380001', 'India', 'Gujarat', 'Ahemdabad');
INSERT INTO `restaurant_address` VALUES (12, 12, 'Vishwa City 1, Ahmedabad.', 'Audi Showroom', '43.655098', '-79.41449999999998', '380061', 'India', 'Gujurat', 'Ahmedabad');
INSERT INTO `restaurant_address` VALUES (13, 13, 'الفيوم, الجامعة، Ahmed Shawqi, Qesm Al Fayoum, Faiyum, Faiyum Governorate, Egypt', 'S.G HIghway, Ahmedabad', '29.3209691296933', '30.84113359451294', '63512', 'Egypt', 'Fayoum', 'Fayoum');
INSERT INTO `restaurant_address` VALUES (14, 14, 'fa', 'Fayoum', 'asd', 'asd', '12345', 'fayoum', 'Fayoum', 'egypt');
COMMIT;

-- ----------------------------
-- Table structure for restaurant_menu_item
-- ----------------------------
DROP TABLE IF EXISTS `restaurant_menu_item`;
CREATE TABLE `restaurant_menu_item` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `menu_detail` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `receipe_detail` longtext DEFAULT NULL,
  `receipe_time` int(11) DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `is_veg` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1 -active',
  `popular_item` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of restaurant_menu_item
-- ----------------------------
BEGIN;
INSERT INTO `restaurant_menu_item` VALUES (1, 1, 3, 'Soup', 200.00, 'Packed with fresh rosemary, cannellini beans and polenta, this wonderfully warming soup is crammed with flavour and takes just 25 minutes to make .', 'menu/f9a9c482306aced555b5e267c72bf1b4.jpg', '<h3 class=\"recipe-detail__heading\">Ingredients</h3>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n\r\n\r\n<p>2 tbsp olive oil</p>\r\n\r\n<p>1 onion, sliced<br />\r\n2 garlic cloves, crushed<br />\r\n3 x 400g tins cannellini beans, drained and rinsed<br />\r\n600ml (1pt) vegetable stock<br />\r\nhandful rosemary, chopped, plus extra to garnish<br />\r\n&frac12; lemon, zested and juiced<br />\r\n1/2 x 500g pack polenta, cubed<br />\r\nvegetarian hard cheese or Parmesan shavings, to serve<br />\r\nMethod</p>\r\n\r\n<p>Heat 1 tbsp oil in a pan. Add the onion and cook for 3-4 minutes, until softened. Add the garlic, cook for 1 minute, then stir through the beans, stock and rosemary.</p>\r\n\r\n<p>Bring to the boil, then reduce the heat and simmer for 10 minutes. Remove half the mixture and whizz with a stick blender to a pur&eacute;e. Stir it back into the soup. Add the lemon zest and juice, then season to taste.</p>\r\n\r\n<p>Meanwhile, heat the remaining oil in a frying pan. Add the polenta cubes and fry for 2-3 minutes, turning until golden and crisp on all sides. To serve, ladle the soup into bowls and top with the polenta croutons, extra rosemary and cheese shavings.</p>\r\n</div>', 30, 'Lunch,Dinner', 1, 1, 1, 1, '2018-09-28 09:43:07', 1, '2019-03-01 17:25:05');
INSERT INTO `restaurant_menu_item` VALUES (2, 2, 2, 'Idli Sambar', 100.00, 'This nutritious Oats Idli is an easy and light dish to prepare. A perfect breakfast food, this idli has suji replaced with healthy oats which is best for those who are health conscious. A great blend of taste and health.', 'menu/a343c9356d4a4e3ae53d44584051abe1.jpg', '<h3 class=\"recipe-detail__heading\">Ingredients</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Idli rice &ndash; 2 cups</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Urd dal &ndash; 1/2 cup</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Poha &ndash; 1/4 cup</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Salt to taste</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<ul>\r\n	<li class=\"recipe-detail__list-item\" size=\"12\">\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">1/3 cup Toor Dal (split pigeon peas)</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">1/4 teaspoon Turmeric Powder</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">1 cup chopped Mixed Vegetables</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">1/2 teaspoon Mustard Seeds</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">5-6 Curry Leaves</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">1-2 Dry Red Chillies</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">A pinch of Asafoetida</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">1 medium Onion, finely chopped (approx. 1/3 cup)</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">1 tablespoon Sambar Powder</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">1/2 tablespoon Seedless Tamarind</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">1 Tomato, finely chopped (approx. 1/3 cup)</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">1 tablespoon Oil</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">1 cup + 1&frac12; cups Water</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">1 tablespoon finely chopped Coriander Leaves</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Salt to taste</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<h3 class=\"recipe-detail__heading\"><span style=\"font-family:verdana,geneva,sans-serif;\">Method</span></h3>\r\n\r\n<div class=\"recipe-detail__cms\">\r\n<p><span style=\"font-family:verdana,geneva,sans-serif;\">For Idli:</span></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Wash and soak rice poha and urd dal separately for 4-5 hours.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Drain and blend in a blender together with salt and poha till smooth.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Transfer the batter in a big vessel and cover and keep to ferment for 6-8 hours.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Grease the idli molds and pour the batter in each mold.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Steam the idlies for 15-20 minutes, till done.</span></p>\r\n	</li>\r\n</ol>\r\n\r\n<p><span style=\"font-family:verdana,geneva,sans-serif;\">For Sambhar:</span></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Wash the dal.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Add it in a pressure cooker with salt and turmeric powder.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Cook till done.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Add oil in a pan.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">When the oil is hot, add mustard seeds and curry leaves.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Add onion and fry for 2 minutes.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Add tomatoes, brinjal, and sambhar masala.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Add half a cup of water and cook till brinjal is soft.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Add the cooked dal and tamarind pulp.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Cook for another 4-5 minutes.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:verdana,geneva,sans-serif;\">Serve hot with idlies.</span></p>\r\n	</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>', 66, 'Morning,Lunch', 1, 1, 1, 1, '2018-09-28 09:44:07', 1, '2019-02-04 15:38:30');
INSERT INTO `restaurant_menu_item` VALUES (4, 5, 5, 'Blackberry cool', 200.00, 'Shake things up a bit with these refreshing drink and beverage recipes, including coffee drinks', 'menu/7bc7b398409bb952e04a063e7b5cf051.jpg', '<h2 class=\"recipe-detail__heading\">Ingredients</h2>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<ul>\r\n	<li class=\"recipe-detail__list-item\">2 cups blackberries (8 ounces total), plus more for garnish</li>\r\n	<li class=\"recipe-detail__list-item\">1/2 cup sugar</li>\r\n	<li class=\"recipe-detail__list-item\">1 teaspoon fresh lemon juice</li>\r\n	<li class=\"recipe-detail__list-item\">2 cups heavy cream</li>\r\n	<li class=\"recipe-detail__list-item\">1/2 teaspoon pure vanilla extract</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<div class=\"recipe-detail__cms\">\r\n<ol>\r\n	<li>In a blender, combine berries, sugar, and lemon juice; blend until smooth. Pour mixture through a fine-mesh sieve, pressing with a rubber spatula to push through. Discard seeds transfer 1/2 cup berry puree to a small bowl. Cover and refrigerate; reserve for topping.</li>\r\n	<li>&nbsp;In a large bowl, combine cream and vanilla; whip until stiff peaks form. Gently fold remaining berry puree into cream. Spoon mixture into custard cups. Cover loosely and refrigerate 1 hour (or up to overnight). To serve, drizzle blackberry fools with reserved berry puree, and garnish with blackberries.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>', 24, 'Dinner', 1, 1, 1, 1, '2018-10-04 06:09:22', 1, '2018-12-26 12:25:45');
INSERT INTO `restaurant_menu_item` VALUES (5, 9, 3, 'Italian Pizza', 100.00, 'Pizza is a savory dish of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and various other ingredients baked at a high temperature, traditionally in a wood-fired oven.', 'menu/57ac3bf995c98158a310b26a0563bff2.jpg', '<h2 class=\"recipe-detail__heading\">Ingredients</h2>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<ul>\r\n	<li class=\"recipe-detail__list-item\">2 tbsp olive oil</li>\r\n	<li class=\"recipe-detail__list-item\">1 onion, sliced</li>\r\n	<li class=\"recipe-detail__list-item\">2 garlic cloves, crushed</li>\r\n	<li class=\"recipe-detail__list-item\">3 x 400g tins cannellini beans, drained and rinsed</li>\r\n	<li class=\"recipe-detail__list-item\">600ml (1pt) vegetable stock</li>\r\n	<li class=\"recipe-detail__list-item\">handful rosemary, chopped, plus extra to garnish</li>\r\n	<li class=\"recipe-detail__list-item\">&frac12; lemon, zested and juiced</li>\r\n	<li class=\"recipe-detail__list-item\">1/2 x 500g pack polenta, cubed</li>\r\n	<li class=\"recipe-detail__list-item\">vegetarian hard cheese or Parmesan shavings, to serve</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<h2 class=\"recipe-detail__heading\">Method</h2>\r\n\r\n<div class=\"recipe-detail__cms\">\r\n<ol>\r\n	<li>Heat 1 tbsp oil in a pan. Add the onion and cook for 3-4 minutes, until softened. Add the garlic, cook for 1 minute, then stir through the beans, stock and rosemary.</li>\r\n	<li>Bring to the boil, then reduce the heat and simmer for 10 minutes. Remove half the mixture and whizz with a stick blender to a pur&eacute;e. Stir it back into the soup. Add the lemon zest and juice, then season to taste.</li>\r\n	<li>Meanwhile, heat the remaining oil in a frying pan. Add the polenta cubes and fry for 2-3 minutes, turning until golden and crisp on all sides. To serve, ladle the soup into bowls and top with the polenta croutons, extra rosemary and cheese shavings.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>', 30, 'Morning,Lunch,Dinner', 1, 1, 1, 1, '2018-10-04 11:27:30', 1, '2018-12-26 12:29:06');
INSERT INTO `restaurant_menu_item` VALUES (6, 9, 2, 'Combo Pizza', 200.00, 'The deliciousness of their food comes from the cheese and crunchy crust that is hard to resist. Plus they have a wide variety of offers like Domino pizza combo, ...', 'menu/d495ccb718fbb6fb551e868296b0ed8d.jpg', '<h2 class=\"recipe-detail__heading\">Ingredients</h2>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<ul>\r\n	<li class=\"recipe-detail__list-item\">2 tbsp olive oil</li>\r\n	<li class=\"recipe-detail__list-item\">1 onion, sliced</li>\r\n	<li class=\"recipe-detail__list-item\">2 garlic cloves, crushed</li>\r\n	<li class=\"recipe-detail__list-item\">3 x 400g tins cannellini beans, drained and rinsed</li>\r\n	<li class=\"recipe-detail__list-item\">600ml (1pt) vegetable stock</li>\r\n	<li class=\"recipe-detail__list-item\">handful rosemary, chopped, plus extra to garnish</li>\r\n	<li class=\"recipe-detail__list-item\">&frac12; lemon, zested and juiced</li>\r\n	<li class=\"recipe-detail__list-item\">1/2 x 500g pack polenta, cubed</li>\r\n	<li class=\"recipe-detail__list-item\">vegetarian hard cheese or Parmesan shavings, to serve</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<h2 class=\"recipe-detail__heading\">Method</h2>\r\n\r\n<div class=\"recipe-detail__cms\">\r\n<ol>\r\n	<li>Heat 1 tbsp oil in a pan. Add the onion and cook for 3-4 minutes, until softened. Add the garlic, cook for 1 minute, then stir through the beans, stock and rosemary.</li>\r\n	<li>Bring to the boil, then reduce the heat and simmer for 10 minutes. Remove half the mixture and whizz with a stick blender to a pur&eacute;e. Stir it back into the soup. Add the lemon zest and juice, then season to taste.</li>\r\n	<li>Meanwhile, heat the remaining oil in a frying pan. Add the polenta cubes and fry for 2-3 minutes, turning until golden and crisp on all sides. To serve, ladle the soup into bowls and top with the polenta croutons, extra rosemary and cheese shavings.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>', 30, 'Morning,Lunch,Dinner', 1, 1, 0, 1, '2018-12-04 10:16:11', 1, '2018-12-05 05:28:42');
INSERT INTO `restaurant_menu_item` VALUES (7, 1, 2, 'Harabhara Kabab', 100.00, 'when time is less than current time and date more than current date api gives message select time greater than current time', 'menu/b6f91861f0b6d68993faf1d033a813a9.jpg', '<h3 class=\"recipe-detail__heading\">Ingredients</h3>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<ul>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>Spinach 10 leaves</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>Green peas shelled and boiled and mashed 3/4 cup</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>Potatoes boiled, peeled and grated 3-4 medium</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>Green chillies chopped 3</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>Ginger chopped 2 inch pieces</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>Fresh coriander leaves chopped 2 tablespoons</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>Chaat masala 1 teaspoon</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>Salt to taste</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>Cornflour/ corn starch 2 tablespoons</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>Oil for deep-frying</p>\r\n	</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<h3 class=\"recipe-detail__heading\">Method</h3>\r\n\r\n<div class=\"recipe-detail__cms\">\r\n<ol>\r\n	<li>\r\n	<p>Blanch spinach leaves in two cups of boiling salted water for five minutes. Drain, refresh in cold water and squeeze out excess water. Finely chop.</p>\r\n	</li>\r\n	<li>\r\n	<p>Mix spinach, peas and potatoes. Add green chillies, ginger, coriander leaves, chaat masala and salt to taste. Add cornflour for binding.</p>\r\n	</li>\r\n	<li>\r\n	<p>Divide the mixture into twenty-four equal portions. Shape each portion into a ball and then press it between your palms to give it a flat tikki shape.</p>\r\n	</li>\r\n	<li>\r\n	<p>Heat sufficient oil in a kadai. Deep-fry the tikkis on medium heat for three to four minutes. Drain onto an absorbent paper. Serve hot with a sauce of your choice.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>', 24, 'Morning,Lunch,Dinner', 1, 1, 1, 1, '2018-12-06 12:25:14', 1, '2019-02-04 15:37:43');
INSERT INTO `restaurant_menu_item` VALUES (8, 1, 4, 'Browny', 100.00, 'A chocolate brownie is a square, baked, chocolate dessert. Brownies come in a variety of forms and may be either fudgy or cakey, depending on their density.', 'menu/b7e5ee0c4dd642e2a13f5f6940f24b87.jpg', '<h3 class=\"recipe-detail__heading\"><span style=\"font-family:arial,helvetica,sans-serif;\">Ingredients</span></h3>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<ul>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>1 cup unsalted butter*, melted</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>2 1/4 cups sugar</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>1 1/4 cups Dutch-process cocoa</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>1 teaspoon salt*</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>1 teaspoon baking powder</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>1 tablespoon vanilla extract</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>1 teaspoon espresso powder, optional; for enhanced chocolate flavor</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>5 large eggs</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>1/2 cup water</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>1 1/2 cups King Arthur Unbleached All-Purpose Flour</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>1 cup chopped walnuts or pecans, optional</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>1 cup chocolate chips, optional</p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p>*If you use salted butter, reduce the salt in the recipe to 1/2 teaspoon</p>\r\n	</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<h3 class=\"recipe-detail__heading\">Method</h3>\r\n\r\n<div class=\"recipe-detail__cms\">\r\n<ol>\r\n	<li>\r\n	<p>Preheat the oven to 350&deg;F. Lightly grease a 9&quot; x 13&quot; pan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combine the melted butter and sugar, stirring until smooth.</p>\r\n	</li>\r\n	<li>\r\n	<p>Stir in the cocoa, salt, baking powder, vanilla, and espresso powder.</p>\r\n	</li>\r\n	<li>\r\n	<p>Beat in the eggs one at a time. Scrape the bowl, then add the water, stirring until smooth.</p>\r\n	</li>\r\n	<li>\r\n	<p>Add the flour, nuts, and chips, stirring until thoroughly combined.</p>\r\n	</li>\r\n	<li>\r\n	<p>Spoon the batter into the prepared pan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Bake the brownies for 28 to 30 minutes, until a toothpick inserted into the center comes out clean, or with a few moist crumbs attached. The brownies should feel set both on the edges and in the center.</p>\r\n	</li>\r\n	<li>\r\n	<p>Remove the brownies from the oven, and cool them on a rack before cutting and serving. Glaze or frost, if desired.</p>\r\n	</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>', 22, 'Lunch,Dinner', 1, 1, 1, 1, '2018-12-06 13:18:26', 1, '2019-02-04 15:38:08');
INSERT INTO `restaurant_menu_item` VALUES (9, 3, 2, 'Soup', 300.00, 'Packed with fresh rosemary, cannellini beans and polenta, this wonderfully warming soup is crammed with flavour and takes just 25 minutes to make .', 'menu/3943a522755d8a37ac3d7caf2cb34f08.jpg', '<h2 class=\"recipe-detail__heading\">Ingredients</h2>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<ul>\r\n	<li class=\"recipe-detail__list-item\">2 tbsp olive oil</li>\r\n	<li class=\"recipe-detail__list-item\">1 onion, sliced</li>\r\n	<li class=\"recipe-detail__list-item\">2 garlic cloves, crushed</li>\r\n	<li class=\"recipe-detail__list-item\">3 x 400g tins cannellini beans, drained and rinsed</li>\r\n	<li class=\"recipe-detail__list-item\">600ml (1pt) vegetable stock</li>\r\n	<li class=\"recipe-detail__list-item\">handful rosemary, chopped, plus extra to garnish</li>\r\n	<li class=\"recipe-detail__list-item\">&frac12; lemon, zested and juiced</li>\r\n	<li class=\"recipe-detail__list-item\">1/2 x 500g pack polenta, cubed</li>\r\n	<li class=\"recipe-detail__list-item\">vegetarian hard cheese or Parmesan shavings, to serve</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<h2 class=\"recipe-detail__heading\">Method</h2>\r\n\r\n<div class=\"recipe-detail__cms\">\r\n<ol>\r\n	<li>Heat 1 tbsp oil in a pan. Add the onion and cook for 3-4 minutes, until softened. Add the garlic, cook for 1 minute, then stir through the beans, stock and rosemary.</li>\r\n	<li>Bring to the boil, then reduce the heat and simmer for 10 minutes. Remove half the mixture and whizz with a stick blender to a pur&eacute;e. Stir it back into the soup. Add the lemon zest and juice, then season to taste.</li>\r\n	<li>Meanwhile, heat the remaining oil in a frying pan. Add the polenta cubes and fry for 2-3 minutes, turning until golden and crisp on all sides. To serve, ladle the soup into bowls and top with the polenta croutons, extra rosemary and cheese shavings.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>', 45, 'Morning,Lunch,Dinner', 1, 1, 1, 1, '2018-12-07 10:47:22', 1, '2018-12-26 11:41:27');
INSERT INTO `restaurant_menu_item` VALUES (10, 3, 3, 'Pav Bhaji', 92.00, 'Pav Bhaji - a spicy curry of mixed vegetables (bhaji) cooked in a special blend of spices and served with soft bread pav shallow fried in butter.', 'menu/d7ad9c08c281ac2022e17edf53f8b657.jpg', '<h2 class=\"recipe-detail__heading\" style=\"font-weight: normal; line-height: 1.2; color: rgb(51, 51, 51); font-family: sans-serif, Arial, Verdana, &quot;Trebuchet MS&quot;; text-align: justify;\"><strong>Ingredients</strong></h2>\r\n\r\n<div class=\"pw-hidden-cp\" style=\"color: rgb(51, 51, 51); font-family: sans-serif, Arial, Verdana, &quot;Trebuchet MS&quot;; font-size: 14px; text-align: justify;\">\r\n<ul>\r\n	<li class=\"recipe-detail__list-item\">2 medium Potatoes (approx. 1&frac12; cups chopped)</li>\r\n	<li class=\"recipe-detail__list-item\">1/2 cup Green Peas (fresh or frozen)</li>\r\n	<li class=\"recipe-detail__list-item\">3/4 cup chopped Cauliflower (approx. 1/4 head of cauliflower)</li>\r\n	<li class=\"recipe-detail__list-item\">1/2 cup chopped Carrot (approx. 1 medium)</li>\r\n	<li class=\"recipe-detail__list-item\">1 large Onion, chopped (approx. 3/4 cup)</li>\r\n	<li class=\"recipe-detail__list-item\">1 tablespoon Ginger Garlic Paste</li>\r\n	<li class=\"recipe-detail__list-item\">2 medium Tomatoes, chopped (approx. 1&frac14; cup)</li>\r\n	<li class=\"recipe-detail__list-item\">1/2 cup chopped Capsicum (approx. 1 small)</li>\r\n	<li class=\"recipe-detail__list-item\">1&frac12; teaspoons Red Chilli Powder (or less)</li>\r\n	<li class=\"recipe-detail__list-item\">1/4 teaspoon Turmeric Powder</li>\r\n	<li class=\"recipe-detail__list-item\">1 teaspoon Cumin-Coriander Powder, optional</li>\r\n	<li class=\"recipe-detail__list-item\">1 teaspoon Readymade Pav Bhaji Masala Powder</li>\r\n	<li class=\"recipe-detail__list-item\">1 teaspoon Lemon Juice</li>\r\n	<li class=\"recipe-detail__list-item\">Salt to taste</li>\r\n	<li class=\"recipe-detail__list-item\">2 tablespoons Oil + 2 tablespoons Butter</li>\r\n	<li class=\"recipe-detail__list-item\">Butter for serving</li>\r\n	<li class=\"recipe-detail__list-item\">2 tablespoons finely chopped Coriander Leaves</li>\r\n	<li class=\"recipe-detail__list-item\">8 Pav Buns, for serving</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<h2 class=\"recipe-detail__heading\" style=\"font-weight: normal; line-height: 1.2;\"><strong>Method</strong></h2>\r\n\r\n<div class=\"recipe-detail__cms\">\r\n<ol>\r\n	<li>Take all the vegetables listed in the ingredients. Wash them in running water and cut them into small pieces.</li>\r\n	<li>Transfer chopped potato, cauliflower, carrot and green peas into a 2-3 liter capacity pressure cooker. Add 1/2 cup water and salt to taste.</li>\r\n	<li>Close the pressure cooker with a lid and cook over medium flame for 2-whistles. Turn off the flame. Open the lid after pressure releases naturally; it will take around 5-7 minutes.</li>\r\n	<li>Mash the boiled vegetables gently with potato masher or using the backside of a large spoon until little chunky texture. You can mash cooked veggies into a texture you like &ndash; with small chunks or smooth with no chunks at all. The texture of your bhaji would depend on how you mashed the veggies.</li>\r\n	<li>Heat 2-tablespoons oil and 2-tablespoons butter together in a pan over medium flame. Add chopped onion and ginger-garlic paste. Saut&eacute; until onion turns translucent.</li>\r\n	<li>Add chopped capsicum, chopped tomato and salt.</li>\r\n	<li>Saut&eacute; until tomatoes and capsicum turn soft.</li>\r\n	<li>Add 1&frac12; teaspoons red chilli powder, 1/4 teaspoon turmeric powder, 1-teaspoon cumin-coriander powder and 1-teaspoon readymade pav bhaji masala powder.</li>\r\n	<li>Stir and cook for a minute.</li>\r\n	<li>Add 3/4 cup water, mix well and cook for 2-3 minutes.</li>\r\n	<li>Add boiled and mashed vegetables and 1-teaspoon lemon juice.</li>\r\n	<li>Mix well and cook for 4-5 minutes. Taste for the salt at this stage and add more if required. Turn off the flame. Add chopped coriander leaves and mix well. Bhaji is ready for serving.</li>\r\n	<li>Cut the pav buns horizontally into halves. Heat tava over medium flame. Add a tablespoon of butter and place halved pav buns over it. Shallow fry both sides until light brown spots appear, it will take around 30 seconds for each side to turn light brown. Transfer to the plate. Shallow fry remaining pavs.</li>\r\n	<li>Transfer prepared bhaji to a serving bowl and garnish with a cube of butter. Serve hot with butter roasted pav, sliced onion and lemon wedges.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>', 60, 'Lunch,Dinner', 1, 1, 1, 1, '2018-12-07 10:49:56', 1, '2019-01-07 18:03:57');
INSERT INTO `restaurant_menu_item` VALUES (12, 3, 3, 'Dhosha', 300.00, 'A popular South Indian dish, dosa is a delicious comfort food that you can eat in any given course of food', 'menu/b04ac9c2fabda4d05a100027081ac82e.jpg', '<h2 class=\"recipe-detail__heading\">Ingredients</h2>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<ul>\r\n	<li class=\"recipe-detail__list-item\">3/4 cup Parboiled Rice (idli-dosa rice)</li>\r\n	<li class=\"recipe-detail__list-item\">3/4 cup Regular Rice</li>\r\n	<li class=\"recipe-detail__list-item\">1/2 cup Whole Urad Dal (without skin) or Split Urad Dal (black lentils)</li>\r\n	<li class=\"recipe-detail__list-item\">1/4 teaspoon Fenugreek Seeds (methi dana)</li>\r\n	<li class=\"recipe-detail__list-item\">1/2 tablespoon Chana Dal (gram lentils), optional</li>\r\n	<li class=\"recipe-detail__list-item\">Water, as needed</li>\r\n	<li class=\"recipe-detail__list-item\">Salt to taste</li>\r\n	<li class=\"recipe-detail__list-item\">Oil, for shallow frying</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<h2 class=\"recipe-detail__heading\">Method</h2>\r\n\r\n<div class=\"recipe-detail__cms\">\r\n<ol>\r\n	<li>Take all the ingredients to prepare the dosa batter. Rice, urad dal and fenugreek seeds are the main ingredients. Chana dal is used for getting a golden color for Dosa.</li>\r\n	<li>Rinse both types of rice (regular rice and parboiled rice) together in water for 3-4 times and soak them in 2 cups of water for 4-5 hours &ndash; (Place both types of rice in a medium-size bowl and fill it with water till 3/4th height. Rinse the rice by rubbing them between your fingertips; the water will turn cloudy. Drain the water and repeat the process 3-4 times).</li>\r\n	<li>Rinse urad dal and chana dal together in water, add fenugreek seeds and soak in 1 cup water for 4-5 hours.</li>\r\n	<li>Drain water from urad dal in a small bowl and reserve it (it will be used in the next step while grinding the dal). Add drained urad dal, chana dal and fenugreek seeds mixture in the medium jar of a mixer grinder or blender.</li>\r\n	<li>Add water as needed and grind until smooth and fluffy batter (use water reserved in previous step, approx. 1&frac12; cups water will required to grind 1/2 cup dry urad dal).</li>\r\n	<li>Heat non-stick tava or iron tava (skillet or griddle) over medium flame. Sprinkle few drops of water on the surface. If water drops sizzle and evaporate within few seconds, tava is hot enough to cook. Apply 1/2-teaspoon oil on the griddle and spread it evenly with a spatula or a clean wet cloth. Take a ladle full of batter, pour it over the surface of tawa, swirl it as thin as possible in a spiral motion by rotating ladle and make it into round shape of approx. 7-8 inch diameter circle.</li>\r\n	<li>Flip it and cook for a minute. If you are making thin dosa (as shown in the photo), you do not need to cook the other side. Transfer it to a plate. Wipe tava with clean wet cloth before making next dosa (this is to prevent dosa from sticking to Pan) and repeat the process from step-11 to step-13 for remaining batter. Hot and crispy plain dosa is ready.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>', 60, 'Morning,Dinner', 1, 1, 1, 1, '2018-12-07 11:07:13', 1, '2018-12-26 12:03:34');
INSERT INTO `restaurant_menu_item` VALUES (17, 2, 2, 'Medu vada', 60.00, 'Medu vada (ulundu vadai) is a traditional dish from South Indian cuisine served with coconut chutney and Vegetable Sambar as a popular breakfast in most of the Indian restaurants.', 'menu/0d8bf7a446ab39e6a2b24e2cd54dfca1.jpg', '<h2 class=\"recipe-detail__heading\">Ingredients</h2>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<ol>\r\n	<li class=\"recipe-detail__list-item\">1 cup urad dal</li>\r\n	<li class=\"recipe-detail__list-item\">1 tbsp roughly chopped green chillies</li>\r\n	<li class=\"recipe-detail__list-item\">3 to 4 peppercorns (kalimirch)</li>\r\n	<li class=\"recipe-detail__list-item\">8 to 10 curry leaves (kadi patta)</li>\r\n	<li class=\"recipe-detail__list-item\">1 tsp chopped ginger (adrak)</li>\r\n	<li class=\"recipe-detail__list-item\">salt to taste</li>\r\n	<li class=\"recipe-detail__list-item\">oil for deep-frying&nbsp;</li>\r\n</ol>\r\n\r\n<p class=\"recipe-detail__list-item\">Method</p>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<div class=\"recipe-detail__cms\">\r\n<ol>\r\n	<li>Here&rsquo;s a simple way of making this delicacy at home. Soak black gram (urad dal) in water for about an hour and rinse well. Then drain the water and grind urad dal, till it turns into a thick paste. Do not add too much of water, just sprinkle a little bit water to achieve a balanced consistency of batter.</li>\r\n	<li>batter</li>\r\n	<li>Wait till it&#39;s half grinded, now add cumin seeds, peppercorns, ginger, salt, asafoetida and then continue grinding. Traditionally, mortar and pestle was used to grind the paste. However, to make it quickly, you can grind it in a mixer and grinder. If you are fond of spicy flavours then add some finely chopped green chilies to make this dish more delightful.</li>\r\n	<li>Take a bowl and transfer the paste to a bowl. Put the chopped onions and curry leaves and mix well with the batter. Then take a deep fry pan, add some oil and heat it on medium flame. To make the vadas, add a few drop of oil in your palm and extract the batter and make a small hole with your finger, right at the center of the vada. Then carefully drop the vada in the hot oil to fry.</li>\r\n	<li>Increase the flame and fry well, till the vada turns golden brown. Put the vadas on a paper towel or tissue paper, this will remove the excess oil from the vadas. Garnish it with some fried green chillies and curry leaves. It tastes best when served hot with the best of some coconut chutney and sambhar.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>', 60, 'Morning', 1, 1, 1, 1, '2018-12-07 11:39:23', 1, '2019-01-02 12:55:49');
INSERT INTO `restaurant_menu_item` VALUES (18, 2, 3, 'Puri Bhajee', 120.00, 'Indian Puffed BreadPosted by Purabi Nahaon', 'menu/4c5787ef894bf1bc1f62e9a1ace48a25.jpg', '<h2 class=\"recipe-detail__heading\">Ingredients</h2>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<ul>\r\n	<li class=\"recipe-detail__list-item\">Wheat Flour - 2 Cups</li>\r\n	<li class=\"recipe-detail__list-item\">Oil - 2 Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Ajwain / Carom Seeds - &frac12; Tsp (Crushed)</li>\r\n	<li class=\"recipe-detail__list-item\">Salt - &frac12; Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Water - 1 Cup</li>\r\n	<li class=\"recipe-detail__list-item\">Oil to Fry</li>\r\n	<li class=\"recipe-detail__list-item\">Ghee - 2 Tbsp</li>\r\n	<li class=\"recipe-detail__list-item\">Cumin - 1 Tbsp</li>\r\n	<li class=\"recipe-detail__list-item\">Dry Red Chilli - 3</li>\r\n	<li class=\"recipe-detail__list-item\">Hing / Asafoetida - &frac14; Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Ginger - 1 Tbsp (Grated)</li>\r\n	<li class=\"recipe-detail__list-item\">Garlic - 2 Tbsp</li>\r\n	<li class=\"recipe-detail__list-item\">Bay Leaf - 2</li>\r\n	<li class=\"recipe-detail__list-item\">Tomato - 5 (Grinded to Paste)</li>\r\n	<li class=\"recipe-detail__list-item\">Green Chillies - 5</li>\r\n	<li class=\"recipe-detail__list-item\">Coriander / Dhaniya Powder - 1 Tbsp</li>\r\n	<li class=\"recipe-detail__list-item\">Turmeric / Haldi - &frac12; Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Kashmiri Red Chilli Powder - 1 Tbsp</li>\r\n	<li class=\"recipe-detail__list-item\">Kasoori Methi / Dry Fenugreek Leaves - 1 Tbsp</li>\r\n	<li class=\"recipe-detail__list-item\">Salt - 2 Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Garam Masala - 1 Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Saunf / Fennel Seed Powder - &frac12; Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Amchur / Dry Mango Powder - &frac14; Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Water - 2 Cups</li>\r\n	<li class=\"recipe-detail__list-item\">Boiled Potatoes -&nbsp;</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<h2 class=\"recipe-detail__heading\">Method</h2>\r\n\r\n<div class=\"recipe-detail__cms\"><strong>For Poori&#39;s</strong></div>\r\n\r\n<ol>\r\n	<li class=\"recipe-detail__cms\">In a Bowl, Take Wheat flour add oil , Ajwain and Salt. Mix well.</li>\r\n	<li class=\"recipe-detail__cms\">Now add water &frac12; Cup and start kneading the dough. Add &frac14; Cup more water and knead. Add more water if needed. Keep it aside for 10 minutes.</li>\r\n	<li class=\"recipe-detail__cms\">Now take a medium sized ball of dough and roll it into a medium thick disk.</li>\r\n	<li class=\"recipe-detail__cms\">Now heat oil to 380 F.</li>\r\n	<li class=\"recipe-detail__cms\">Once the oil is heated , slide the disk to the oil. It will sink to the bottom before coming to top.</li>\r\n	<li class=\"recipe-detail__cms\">Using a frying ladle flow the oil from the sides to the top of the poori. This helps it in puffing up.</li>\r\n	<li class=\"recipe-detail__cms\">Once the Poori is puffed , Flip it and cook till golden on both sides.</li>\r\n	<li class=\"recipe-detail__cms\">Once Golden, Scoop it to the side so the excess oil is removed.</li>\r\n	<li class=\"recipe-detail__cms\">Put it on a Absorbent paper.</li>\r\n</ol>\r\n\r\n<div class=\"recipe-detail__cms\"><strong>Aloo Sabzi</strong></div>\r\n\r\n<ol>\r\n	<li class=\"recipe-detail__cms\">In a big pan on medium heat, add ghee. Once the ghee is heated add Cumin, dry Red Chilli, Hing, Ginger and Garlic.</li>\r\n	<li class=\"recipe-detail__cms\">Cook till the raw smell of ginger disappears.</li>\r\n	<li class=\"recipe-detail__cms\">Add Bay Leaves and Mix.</li>\r\n	<li class=\"recipe-detail__cms\">Now add Grinded tomato, Green Chillies and stir.</li>\r\n	<li class=\"recipe-detail__cms\">Cook this mixture on medium heat while stirring in between till it thickens.</li>\r\n	<li class=\"recipe-detail__cms\">The Color of the gravy would have become darker red.</li>\r\n	<li class=\"recipe-detail__cms\">Now add the Dry Spices. Coriander Powder, Turmeric , Kashmiri Red Chilli Powder, Kasoori Methi,Salt, Garam Masala, Saunf powder and Amchur powder. Mix well.</li>\r\n	<li class=\"recipe-detail__cms\">Cook till the gray is dry.</li>\r\n	<li class=\"recipe-detail__cms\">Now add water and mix very well.</li>\r\n	<li class=\"recipe-detail__cms\">Add Chopped Boiled Potatoes and Mix.</li>\r\n	<li class=\"recipe-detail__cms\">Cover the pan with a lid and cook on medium heat for 5 minutes.</li>\r\n	<li class=\"recipe-detail__cms\">Garnish with Cilantro and Serve</li>\r\n</ol>\r\n</div>\r\n</div>', 60, 'Lunch,Dinner', 1, 1, 1, 1, '2018-12-07 11:50:06', 1, '2018-12-26 11:56:54');
INSERT INTO `restaurant_menu_item` VALUES (19, 5, 2, 'Garlic Bread', 100.00, 'Garlic bread (also called garlic toast)[1] consists of bread (usually a baguette or sour dough like a ciabatta), topped with garlic and olive oil or butter and may include additional herbs, such as oregano chives.', 'menu/55a7c35b7ad6b92741dc84244a1e29d9.jpg', '<h2 class=\"recipe-detail__heading\">Ingredients</h2>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<ul>\r\n	<li class=\"recipe-detail__list-item\">1 loaf French bread</li>\r\n	<li class=\"recipe-detail__list-item\">&frac12; cup salted butter, softened</li>\r\n	<li class=\"recipe-detail__list-item\">&frac12; teaspoon garlic powder</li>\r\n	<li class=\"recipe-detail__list-item\">3 garlic cloves, minced</li>\r\n	<li class=\"recipe-detail__list-item\">1 teaspoon Italian seasoning</li>\r\n	<li class=\"recipe-detail__list-item\">&frac12; cup shredded parmesan cheese</li>\r\n	<li class=\"recipe-detail__list-item\">fresh chopped parsley for garnish</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<h2 class=\"recipe-detail__heading\">Method</h2>\r\n\r\n<div class=\"recipe-detail__cms\">\r\n<ol>\r\n	<li>Preheat oven to 400 degrees. Cut your French bread loaf lengthwise and place on top of a baking sheet.</li>\r\n	<li>In a small bowl combine softened butter, garlic powder, minced garlic, Italian seasoning and shredded cheese. Spread evenly on each side of the garlic bread.</li>\r\n	<li>Bake in the oven for 12-15 minutes until butter is melted an bubbly. You can also broil the top for 1-2 minutes at the end to give it a more crisp top.</li>\r\n	<li>Garnish with fresh chopped parsley if desired.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>', 13, 'Morning,Lunch', 1, 1, 1, 1, '2018-12-07 12:10:06', 1, '2018-12-26 12:31:38');
INSERT INTO `restaurant_menu_item` VALUES (20, 9, 2, 'Garlic Bread', 200.00, 'Garlic bread (also called garlic toast)[1] consists of bread (usually a baguette or sour dough like a ciabatta), topped with garlic and olive oil or butter and may include additional herbs, such as oregano chives.', 'menu/f7ae17964062ffbf0e135893a34481cc.jpg', '<h2 class=\"recipe-detail__heading\" style=\"font-weight: normal; line-height: 1.2; color: rgb(51, 51, 51); font-family: sans-serif, Arial, Verdana, &quot;Trebuchet MS&quot;; text-align: justify;\">Ingredients</h2>\r\n\r\n<div class=\"pw-hidden-cp\" style=\"color: rgb(51, 51, 51); font-family: sans-serif, Arial, Verdana, &quot;Trebuchet MS&quot;; font-size: 14px; text-align: justify;\">\r\n<ul style=\"padding: 0px 40px;\">\r\n	<li class=\"recipe-detail__list-item\">2 tbsp olive oil</li>\r\n	<li class=\"recipe-detail__list-item\">1 onion, sliced</li>\r\n	<li class=\"recipe-detail__list-item\">2 garlic cloves, crushed</li>\r\n	<li class=\"recipe-detail__list-item\">3 x 400g tins cannellini beans, drained and rinsed</li>\r\n	<li class=\"recipe-detail__list-item\">600ml (1pt) vegetable stock</li>\r\n	<li class=\"recipe-detail__list-item\">handful rosemary, chopped, plus extra to garnish</li>\r\n	<li class=\"recipe-detail__list-item\">&frac12; lemon, zested and juiced</li>\r\n	<li class=\"recipe-detail__list-item\">1/2 x 500g pack polenta, cubed</li>\r\n	<li class=\"recipe-detail__list-item\">vegetarian hard cheese or Parmesan shavings, to serve</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<h2 class=\"recipe-detail__heading\" style=\"font-weight: normal; line-height: 1.2;\">Method</h2>\r\n\r\n<div class=\"recipe-detail__cms\">\r\n<ol style=\"padding: 0px 40px;\">\r\n	<li>Heat 1 tbsp oil in a pan. Add the onion and cook for 3-4 minutes, until softened. Add the garlic, cook for 1 minute, then stir through the beans, stock and rosemary.</li>\r\n	<li>Bring to the boil, then reduce the heat and simmer for 10 minutes. Remove half the mixture and whizz with a stick blender to a pur&eacute;e. Stir it back into the soup. Add the lemon zest and juice, then season to taste.</li>\r\n	<li>Meanwhile, heat the remaining oil in a frying pan. Add the polenta cubes and fry for 2-3 minutes, turning until golden and crisp on all sides. To serve, ladle the soup into bowls and top with the polenta croutons, extra rosemary and c</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>', 40, 'Morning', 1, 1, 1, 1, '2018-12-08 05:44:56', NULL, NULL);
INSERT INTO `restaurant_menu_item` VALUES (21, 9, 5, 'Blackberry cool', 200.00, 'Shake things up a bit with these refreshing drink and beverage recipes, including coffee drinks', 'menu/4803a6f9117164122882a9d031ca9138.jpg', '<p class=\"recipe-detail__heading\" style=\"font-weight: normal; line-height: 1.2; color: rgb(51, 51, 51); font-family: sans-serif, Arial, Verdana, &quot;Trebuchet MS&quot;; text-align: justify;\">Ingredients</p>\r\n\r\n<div class=\"pw-hidden-cp\" style=\"color: rgb(51, 51, 51); font-family: sans-serif, Arial, Verdana, &quot;Trebuchet MS&quot;; font-size: 14px; text-align: justify;\">\r\n<ul style=\"padding: 0px 40px;\">\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family: &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; text-align: start;\">3&nbsp;cups powdered sugar</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family: &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; text-align: start;\">3 sticks (1 1/2 cups) unsalted butter, room temperature</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family: &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; text-align: start;\">8 oz Cream cheese, softened at room temperature</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family: &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; text-align: start;\">1/2 tsp salt (I used fine sea salt)</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family: &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; text-align: start;\">2 packages (6 ounces each)&nbsp;Driscoll&rsquo;s blackberries, divided (1 cup for frosting, 1 cup sliced for&nbsp;layers, 6 berries&nbsp;for decor).</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family: &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; text-align: start;\">2 Tbsp fresh lemon juice from 1 medium lemon</span></p>\r\n	</li>\r\n	<li class=\"recipe-detail__list-item\">\r\n	<p><span style=\"font-family: &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; text-align: start;\">Crystal sprinkles, optional</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<p class=\"recipe-detail__heading\" style=\"font-weight: normal; line-height: 1.2;\">Method</p>\r\n\r\n<div class=\"recipe-detail__cms\">\r\n<ol style=\"padding: 0px 40px;\">\r\n	<li>\r\n	<p>Heat 1 tbsp oil in a pan. Add the onion and cook for 3-4 minutes, until softened. Add the garlic, cook for 1 minute, then stir through the beans, stock and rosemary.</p>\r\n	</li>\r\n	<li>\r\n	<p>Bring to the boil, then reduce the heat and simmer for 10 minutes. Remove half the mixture and whizz with a stick blender to a pur&eacute;e. Stir it back into the soup. Add the lemon zest and juice, then season to taste.</p>\r\n	</li>\r\n	<li>\r\n	<p>Meanwhile, heat the remaining oil in a frying pan. Add the polenta cubes and fry for 2-3 minutes, turning until golden and crisp on all sides. To serve, ladle the soup into bowls and top with the polenta croutons, extra rosemary and cheese shavings.</p>\r\n	</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>', 40, 'Morning,Lunch,Dinner', 1, 1, 1, 1, '2018-12-08 05:51:29', 1, '2019-02-04 15:35:41');
INSERT INTO `restaurant_menu_item` VALUES (22, 5, 3, 'Combo Pizza', 200.00, 'The deliciousness of their food comes from the cheese and crunchy crust that is hard to resist. Plus they have a wide variety of offers like Domino pizza combo, ...', 'menu/11be64548307634fc880f6f40c271e84.jpg', '<h2 class=\"recipe-detail__heading\">Ingredients</h2>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<ul>\r\n	<li class=\"recipe-detail__list-item\">4 small boneless skinless chicken breasts (1 lb./450 g)</li>\r\n	<li class=\"recipe-detail__list-item\">1 pkg. (8 oz./225 g) sliced fresh mushrooms</li>\r\n	<li class=\"recipe-detail__list-item\">1 green pepper, coarsely chopped</li>\r\n	<li class=\"recipe-detail__list-item\">1 can (19 fl oz/540 mL) no-salt-added diced tomatoes, undrained</li>\r\n	<li class=\"recipe-detail__list-item\">1 cup Cracker Barrel Shredded 4 Cheese Italiano Cheese</li>\r\n	<li class=\"recipe-detail__list-item\">1 pkg. (225 g) Kraft Dinner Macaroni and Cheese?</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<h2 class=\"recipe-detail__heading\">Method</h2>\r\n\r\n<div class=\"recipe-detail__cms\">\r\n<ol>\r\n	<li>Heat oven to 400&ordm;F.</li>\r\n	<li>Place chicken in 13x9-inch baking dish; surround with mushrooms and peppers. Top chicken with tomatoes and shredded cheese. Bake 30 min. or until chicken is done (170&ordm;F).</li>\r\n	<li>Meanwhile, prepare Kraft Dinner as directed on package, using the Sensible Solution directions.</li>\r\n	<li>Serve chicken and vegetables with Kraft Dinner.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>', 120, 'Morning,Lunch,Dinner', 0, 1, 1, 1, '2018-12-08 05:54:15', 1, '2018-12-26 12:13:17');
INSERT INTO `restaurant_menu_item` VALUES (25, 11, 3, 'Chicken Biryani', 300.00, 'Chicken Biryani', 'menu/7c91494e63e2ad6382e5f3db5862fbda.jpg', '<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\"><span style=\"font-family:times new roman,times,serif;\"><strong>Ingredients</strong></span></label></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">600 gm boiled basmati rice</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">4 tablespoon minced mint leaves</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">salt as required</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">2 teaspoon coriander powder</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">1 tablespoon garlic paste</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">2 tablespoon tomato puree</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">400 gm thinly sliced white onion</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">8 green cardamom</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">1 tablespoon milk</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">1 kilograms chicken thighs</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">1 teaspoon garam masala powder</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">2 pinches saffron</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">1 tablespoon ginger paste</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">4 sliced &amp; slit green chilli</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">320 gm chopped tomato</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">2 teaspoon cumin seeds</label></p>\r\n	</li>\r\n	<li>\r\n	<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">6 tablespoon refined oil</label></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><label class=\"clearfix\" for=\"1\" style=\"margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\"><strong>Method</strong></label></p>\r\n\r\n<ol>\r\n	<li><label class=\"clearfix\" for=\"1\" style=\"margin-left: 40px;margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\"><span style=\"font-size: 16px; text-align: left;\">First, in order to marinate the chicken, take a large bowl, put Greek yogurt, turmeric, chili powder along with salt as per your taste in a small bowl. Mix it well using a spoon and then, add the chicken thighs in the mixture and rub with this mixture. Keep aside for about 20-30 minutes, so that the yogurt mixture is properly absorbed by the chicken. Also, soak saffron in the milk to make saffron milk and keep aside. </span><span style=\"font-size: 16px; text-align: left;\">?</span></label></li>\r\n	<li><label class=\"clearfix\" for=\"1\" style=\"margin-left: 40px;margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\">I<span style=\"font-size: 16px; text-align: left;\">n the meanwhile, pour refined oil in a deep-bottomed pan, keeping it on medium flame. Add cumin seeds and green cardamom in it and saute for about 2 minutes. Once done, immediately add the sliced onion and fry for 2-3 minutes straight. Make sure you don&#39;t burn it, so when the onion starts to get brown in color, add tomatoes and tomato puree and fry for another 5 minutes</span><span style=\"font-size: 16px; text-align: left; font-family: arial, helvetica, sans-serif;\">.</span></label></li>\r\n	<li><label class=\"clearfix\" for=\"1\" style=\"margin-left: 40px;margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\"><span style=\"font-family:arial,helvetica,sans-serif;\">Next, add the slit green chilies to the mixture along with ginger-garlic paste, frying the mixture yet again for a minute. Then, add coriander powder and turn the flame to medium-low while stirring and cooking the masala. Quickly, add the marinated chicken and mix for a while so that the ingredients absorb the juices properly.</span></label></li>\r\n	<li><label class=\"clearfix\" for=\"1\" style=\"margin-left: 40px;margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\"><span style=\"font-family:arial,helvetica,sans-serif;\">Turn the flame to medium again and heat-through for about 5-6 minutes only to turn it over to low heat. Cover with a lid and let simmer for 5 minutes. Make sure to keep stirring during the entire process, else the chicken might stick to the bottom, eventually ending up burnt. You can add little </span><span style=\"font-family:arial,helvetica,sans-serif;\">water,</span><span style=\"font-family:arial,helvetica,sans-serif;\"> if you find the consistency too thick.</span></label></li>\r\n	<li><label class=\"clearfix\" for=\"1\" style=\"margin-left: 40px;margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\"><span style=\"font-family:arial,helvetica,sans-serif;\">Once done, turn off the flame and add half of the boiled rice in the pan and keep the rest aside until required. Sprinkle milk soaked saffron along with garam masala, mint and coriander leaves. Put the remaining rice over this layer and garnish with the same mentioned four ingredients.</span></label></li>\r\n	<li><label class=\"clearfix\" for=\"1\" style=\"margin-left: 40px;margin: 0px 0px 15px; list-style: none; padding: 0px; line-height: 1.2em; display: inline-block; width: 340px; overflow-wrap: break-word; font-family: proxima-regular1, Calibri;display: block; margin-left: 15px;\"><span style=\"font-family:arial,helvetica,sans-serif;\">Lastly, cover the lid, turn the flame to low medium and let the rice cook for about 5 minutes. Once done, put it off and let the biryani stay covered for about another 10 minutes. Serve hot, along with raita or any chutney of your choice.</span></label></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n</ol>', 30, 'Morning,Lunch,Dinner', 0, 1, 1, 1, '2018-12-26 12:58:53', 1, '2019-02-04 15:44:11');
INSERT INTO `restaurant_menu_item` VALUES (26, 11, 2, 'Chicken Pakora', 150.00, 'Fried chicken  Pakora', 'menu/307279150a4cd43009ed7f6a695efb6f.jpg', '<h4 style=\"box-sizing: border-box; margin-top: 5px; margin-right: 0px; margin-bottom: 5px; padding: 0px; border: 0px; font-size: 20px; vertical-align: baseline; clear: both; color: rgb(66, 66, 66); font-weight: 700; font-family: &quot;Arbutus Slab&quot;, serif; line-height: 1.8; text-align: start;\">Ingredients</h4>\r\n\r\n<ul style=\"box-sizing: border-box; margin: 0px 0px 24px; padding-right: 0px; padding-left: 0px; border: 0px; vertical-align: baseline; list-style-position: outside; list-style-image: initial; line-height: 1.7; overflow: hidden; font-family: Poppins, sans-serif; text-align: start;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">500 gm boneless chicken cubes</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">&frac12; cup thinly sliced onion</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">2 tablespoons lemon juice</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">1 teaspoon ginger paste</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">1 teaspoon garlic paste</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">&frac12; teaspoon chili powder</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">&frac12; teaspoon garam masala</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">&frac14; teaspoon turmeric powder</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">&frac12; teaspoon coriander powder</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">3-4 tablespoons chickpea flour or besan</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">1 teaspoon corn flour</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">1 teaspoon chopped green chili</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">Salt to taste</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">Oil to deep fry??</li>\r\n</ul>\r\n\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\"><strong style=\"color: rgb(66, 66, 66); font-family: Poppins, sans-serif; font-size: 18px; text-align: left;\">Method</strong></p>\r\n\r\n<ol style=\"box-sizing: border-box; margin: 0px 0px 24px; padding-right: 0px; padding-left: 0px; border: 0px; vertical-align: baseline; list-style-position: outside; list-style-image: initial; line-height: 1.7; overflow: hidden; font-family: Poppins, sans-serif; text-align: start;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">Mix the onion, lemon juice, ginger paste, garlic paste, chili powder, turmeric, garam masala, coriander, green chili, and salt in a bowl.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">Drop the chicken cubes and mix well. Keep it aside for 10 minutes.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">Now, add the besan and corn flour to the bowl containing the chicken cubes and mix well.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">Heat the oil in a pan and fry the chicken cubes until they become golden brown.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px 0px 0px 36px; padding: 0px; border: 0px; font-size: 18px; vertical-align: baseline; line-height: 30px; color: rgb(66, 66, 66);\">Serve hot with ketchup or mint chutney.</li>\r\n</ol>', 20, 'Morning,Lunch,Dinner', 0, 1, 1, 1, '2018-12-26 13:01:22', 1, '2019-01-02 12:58:20');
INSERT INTO `restaurant_menu_item` VALUES (27, 11, 4, 'Chocolate Cake', 200.00, 'Chocolate Cake', 'menu/fdeefee10cf5020d38c277488e840b58.jpg', '<h2 class=\"recipe-detail__heading\">Ingredients</h2>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<ul>\r\n	<li class=\"recipe-detail__list-item\">1 cup unsalted butter*, melted</li>\r\n	<li class=\"recipe-detail__list-item\">2 1/4 cups sugar</li>\r\n	<li class=\"recipe-detail__list-item\">1 1/4 cups Dutch-process cocoa</li>\r\n	<li class=\"recipe-detail__list-item\">1 teaspoon salt*</li>\r\n	<li class=\"recipe-detail__list-item\">1 teaspoon baking powder</li>\r\n	<li class=\"recipe-detail__list-item\">1 tablespoon vanilla extract</li>\r\n	<li class=\"recipe-detail__list-item\">1 teaspoon espresso powder, optional; for enhanced chocolate flavor</li>\r\n	<li class=\"recipe-detail__list-item\">5 large eggs</li>\r\n	<li class=\"recipe-detail__list-item\">1/2 cup water</li>\r\n	<li class=\"recipe-detail__list-item\">1 1/2 cups King Arthur Unbleached All-Purpose Flour</li>\r\n	<li class=\"recipe-detail__list-item\">1 cup chopped walnuts or pecans, optional</li>\r\n	<li class=\"recipe-detail__list-item\">1 cup chocolate chips, optional</li>\r\n	<li class=\"recipe-detail__list-item\">*If you use salted butter, reduce the salt in the recipe to 1/2 teaspoon</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<h2 class=\"recipe-detail__heading\">Method</h2>\r\n\r\n<div class=\"recipe-detail__cms\">\r\n<ol>\r\n	<li>Preheat the oven to 350&deg;F. Lightly grease a 9&quot; x 13&quot; pan.</li>\r\n	<li>Combine the melted butter and sugar, stirring until smooth.</li>\r\n	<li>Stir in the cocoa, salt, baking powder, vanilla, and espresso powder.</li>\r\n	<li>Beat in the eggs one at a time. Scrape the bowl, then add the water, stirring until smooth.</li>\r\n	<li>Add the flour, nuts, and chips, stirring until thoroughly combined.</li>\r\n	<li>Spoon the batter into the prepared pan.</li>\r\n	<li>Bake the brownies for 28 to 30 minutes, until a toothpick inserted into the center comes out clean, or with a few moist crumbs attached. The brownies should feel set both on the edges and in the center.</li>\r\n	<li>Remove the brownies from the oven, and cool them on a rack before cutting and serving. Glaze or frost, if desired.</li>\r\n</ol>\r\n</div>\r\n</div>\r\n</div>', 20, 'Morning,Lunch,Dinner', 1, 1, 1, 1, '2018-12-26 13:02:48', 1, '2018-12-27 10:38:27');
INSERT INTO `restaurant_menu_item` VALUES (28, 11, 3, 'Puri Sabji', 100.00, 'Puri Sabji', 'menu/9f323256f0562ee3693d2f57b48822fd.jpg', '<h2 class=\"recipe-detail__heading\">Ingredients</h2>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<ul>\r\n	<li class=\"recipe-detail__list-item\">Wheat Flour - 2 Cups</li>\r\n	<li class=\"recipe-detail__list-item\">Oil - 2 Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Ajwain / Carom Seeds - &frac12; Tsp (Crushed)</li>\r\n	<li class=\"recipe-detail__list-item\">Salt - &frac12; Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Water - 1 Cup</li>\r\n	<li class=\"recipe-detail__list-item\">Oil to Fry</li>\r\n	<li class=\"recipe-detail__list-item\">Ghee - 2 Tbsp</li>\r\n	<li class=\"recipe-detail__list-item\">Cumin - 1 Tbsp</li>\r\n	<li class=\"recipe-detail__list-item\">Dry Red Chilli - 3</li>\r\n	<li class=\"recipe-detail__list-item\">Hing / Asafoetida - &frac14; Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Ginger - 1 Tbsp (Grated)</li>\r\n	<li class=\"recipe-detail__list-item\">Garlic - 2 Tbsp</li>\r\n	<li class=\"recipe-detail__list-item\">Bay Leaf - 2</li>\r\n	<li class=\"recipe-detail__list-item\">Tomato - 5 (Grinded to Paste)</li>\r\n	<li class=\"recipe-detail__list-item\">Green Chillies - 5</li>\r\n	<li class=\"recipe-detail__list-item\">Coriander / Dhaniya Powder - 1 Tbsp</li>\r\n	<li class=\"recipe-detail__list-item\">Turmeric / Haldi - &frac12; Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Kashmiri Red Chilli Powder - 1 Tbsp</li>\r\n	<li class=\"recipe-detail__list-item\">Kasoori Methi / Dry Fenugreek Leaves - 1 Tbsp</li>\r\n	<li class=\"recipe-detail__list-item\">Salt - 2 Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Garam Masala - 1 Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Saunf / Fennel Seed Powder - &frac12; Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Amchur / Dry Mango Powder - &frac14; Tsp</li>\r\n	<li class=\"recipe-detail__list-item\">Water - 2 Cups</li>\r\n	<li class=\"recipe-detail__list-item\">Boiled Potatoes -&nbsp;</li>\r\n</ul>\r\n\r\n<div class=\"pw-hidden-cp\">\r\n<h2 class=\"recipe-detail__heading\">Method</h2>\r\n\r\n<div class=\"recipe-detail__cms\"><strong>For Poori&#39;s</strong></div>\r\n\r\n<ol>\r\n	<li class=\"recipe-detail__cms\">In a Bowl, Take Wheat flour add oil , Ajwain and Salt. Mix well.</li>\r\n	<li class=\"recipe-detail__cms\">Now add water &frac12; Cup and start kneading the dough. Add &frac14; Cup more water and knead. Add more water if needed. Keep it aside for 10 minutes.</li>\r\n	<li class=\"recipe-detail__cms\">Now take a medium sized ball of dough and roll it into a medium thick disk.</li>\r\n	<li class=\"recipe-detail__cms\">Now heat oil to 380 F.</li>\r\n	<li class=\"recipe-detail__cms\">Once the oil is heated , slide the disk to the oil. It will sink to the bottom before coming to top.</li>\r\n	<li class=\"recipe-detail__cms\">Using a frying ladle flow the oil from the sides to the top of the poori. This helps it in puffing up.</li>\r\n	<li class=\"recipe-detail__cms\">Once the Poori is puffed , Flip it and cook till golden on both sides.</li>\r\n	<li class=\"recipe-detail__cms\">Once Golden, Scoop it to the side so the excess oil is removed.</li>\r\n	<li class=\"recipe-detail__cms\">Put it on a Absorbent paper.</li>\r\n</ol>\r\n\r\n<div class=\"recipe-detail__cms\"><strong>Aloo Sabzi</strong></div>\r\n\r\n<ol>\r\n	<li class=\"recipe-detail__cms\">In a big pan on medium heat, add ghee. Once the ghee is heated add Cumin, dry Red Chilli, Hing, Ginger and Garlic.</li>\r\n	<li class=\"recipe-detail__cms\">Cook till the raw smell of ginger disappears.</li>\r\n	<li class=\"recipe-detail__cms\">Add Bay Leaves and Mix.</li>\r\n	<li class=\"recipe-detail__cms\">Now add Grinded tomato, Green Chillies and stir.</li>\r\n	<li class=\"recipe-detail__cms\">Cook this mixture on medium heat while stirring in between till it thickens.</li>\r\n	<li class=\"recipe-detail__cms\">The Color of the gravy would have become darker red.</li>\r\n	<li class=\"recipe-detail__cms\">Now add the Dry Spices. Coriander Powder, Turmeric , Kashmiri Red Chilli Powder, Kasoori Methi,Salt, Garam Masala, Saunf powder and Amchur powder. Mix well.</li>\r\n	<li class=\"recipe-detail__cms\">Cook till the gray is dry.</li>\r\n	<li class=\"recipe-detail__cms\">Now add water and mix very well.</li>\r\n	<li class=\"recipe-detail__cms\">Add Chopped Boiled Potatoes and Mix.</li>\r\n	<li class=\"recipe-detail__cms\">Cover the pan with a lid and cook on medium heat for 5 minutes.</li>\r\n	<li class=\"recipe-detail__cms\">Garnish with Cilantro and Serve</li>\r\n</ol>\r\n</div>\r\n</div>', 19, 'Morning,Lunch,Dinner', 1, 1, 1, 1, '2018-12-26 13:05:46', 1, '2018-12-27 10:14:25');
INSERT INTO `restaurant_menu_item` VALUES (30, 12, 2, 'Chaw', 100.00, 'Chaw', 'menu/7af54f9caf5845f06e84caa4f77820b2.jpeg', '<p>ChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChaw?ChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChawChaw</p>', 30, 'Morning', 1, 1, 1, 1, '2019-03-12 05:35:23', 1, '2019-03-12 11:10:34');
INSERT INTO `restaurant_menu_item` VALUES (31, 12, 2, 'Rolls', 80.00, 'Rolls', 'menu/3ad672d2ff59861b3be72c9abda64412.jpg', '<p>RollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRollsRolls</p>', 60, 'Morning', 1, 1, 1, 1, '2019-03-12 05:36:59', NULL, NULL);
INSERT INTO `restaurant_menu_item` VALUES (32, 12, 3, 'Vegiieee', 150.00, 'Vegiieee', 'menu/4c8cc408c0f3c470a23b52327ba829b2.jpeg', '<p>VegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieeeVegiieee</p>', 60, 'Morning,Lunch,Dinner', 1, 1, 1, 1, '2019-03-12 05:38:18', 1, '2019-03-12 11:10:10');
INSERT INTO `restaurant_menu_item` VALUES (33, 12, 4, 'Burger Bite', 200.00, 'Burger Bite', 'menu/cf0ebd143bd4fc76b94d63b995f6698e.jpeg', '<p>Burger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger BiteBurger Bite</p>', 60, 'Morning,Lunch,Dinner', 1, 1, 1, 1, '2019-03-12 05:39:36', NULL, NULL);
INSERT INTO `restaurant_menu_item` VALUES (34, 13, 3, 'Mega Strips', 139.00, '3 strips bites and fraieds', 'menu/22821727b0b8a7ac8d61b55d70c463ea.jpg', '<p>..</p>', 30, 'Dinner', 0, 1, 1, 7, '2019-09-12 19:30:00', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for restaurant_package
-- ----------------------------
DROP TABLE IF EXISTS `restaurant_package`;
CREATE TABLE `restaurant_package` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of restaurant_package
-- ----------------------------
BEGIN;
INSERT INTO `restaurant_package` VALUES (2, 'Unlimited buzz', 1, 500.00, '<p><span style=\"background-color:rgb(255, 255, 255); color:rgb(102, 102, 102); font-family:proximanova-regular,arial,sans-serif\">Experience our unique specialty restaurants and enjoy great savings when you purchase this package to dine at 3 different venues. Prices are $75.00 per person. *Dining packages on Oasis and Quantum Class ships are $10 more.</span></p>', 'Morning', 1, 1, '2018-10-04 06:00:11', NULL, NULL);
INSERT INTO `restaurant_package` VALUES (3, 'Fix Lunch', 1, 180.00, '<ul>\r\n	<li>3 Roti/Paratha</li>\r\n	<li>Sabji - panner/veg</li>\r\n	<li>Palad</li>\r\n	<li>Papad</li>\r\n	<li>Butter Milk</li>\r\n	<li>Dessert</li>\r\n</ul>', 'Lunch', 1, 1, '2018-10-30 13:07:17', NULL, NULL);
INSERT INTO `restaurant_package` VALUES (4, 'Fix Dinner', 2, 250.00, '<ul>\r\n	<li>Starter</li>\r\n	<li>5 Dosa</li>\r\n	<li>Dessert<br />\r\n	&nbsp;</li>\r\n</ul>', 'Dinner', 1, 1, '2018-10-30 13:09:03', NULL, NULL);
INSERT INTO `restaurant_package` VALUES (5, 'Unlimited dinner', 9, 200.00, '<p><span style=\"color: rgb(102, 102, 102); font-family: proximanova-regular, arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Experience our unique specialty restaurants and enjoy great savings when you purchase this package to dine at 3 different venues. Prices are $75.00 per person. *Dining packages on Oasis and Quantum Class ships are $10 more.</span></p>', 'Morning,Dinner', 1, 1, '2018-12-04 11:05:37', NULL, NULL);
INSERT INTO `restaurant_package` VALUES (6, 'Unlimited buzz', 3, 500.00, '<p><span style=\"color: rgb(102, 102, 102); font-family: proximanova-regular, arial, sans-serif;\">Experience our unique specialty restaurants and enjoy great savings when you purchase this package to dine at 3 different venues. Prices are $75.00 per person. *Dining packages on Oasis and Quantum Class ships are $10 more.</span></p>', 'Morning,Lunch,Dinner', 1, 1, '2018-12-08 05:56:07', NULL, NULL);
INSERT INTO `restaurant_package` VALUES (7, 'Ultimate Dinner Combo', 11, 200.00, '<p>Dinner</p>', 'Dinner', 1, 1, '2018-12-26 09:38:27', 1, '2018-12-27 10:12:35');
COMMIT;

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of review
-- ----------------------------
BEGIN;
INSERT INTO `review` VALUES (1, 13, 19, '.', '3.2490911865', 1, NULL, '2019-09-13 16:07:45', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for slider_image
-- ----------------------------
DROP TABLE IF EXISTS `slider_image`;
CREATE TABLE `slider_image` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of slider_image
-- ----------------------------
BEGIN;
INSERT INTO `slider_image` VALUES (1, 'slider-images/49a110b26116716cd747d099c4fc306c.jpg', 1);
INSERT INTO `slider_image` VALUES (2, 'slider-images/a4dc5b3cb59a4680afbaf467c9dc1c89.jpeg', 1);
INSERT INTO `slider_image` VALUES (3, 'slider-images/3bb611d9cbcfedbc95a2a5ec34654193.jpg', 1);
INSERT INTO `slider_image` VALUES (4, 'slider-images/a558c017a43fb5de21c7f3a3349f06dd.jpg', 1);
INSERT INTO `slider_image` VALUES (5, 'slider-images/4972050dd1396e354930575872033b55.png', 1);
INSERT INTO `slider_image` VALUES (6, 'slider-images/5d46caf1da2223fce37820317bf5f32f.jpg', 1);
INSERT INTO `slider_image` VALUES (7, 'slider-images/02c26fcfe6469ccc08341d36fb21fd6a.jpg', 1);
INSERT INTO `slider_image` VALUES (8, 'slider-images/d8ef1175262883bfd30eeab5e784dab6.jpg', 1);
INSERT INTO `slider_image` VALUES (9, 'slider-images/a773f54f559e4ec636f3c91daac90b0b.jpg', 1);
INSERT INTO `slider_image` VALUES (10, 'slider-images/419bc465ce31a42283a724e2f24184ab.jpg', 1);
COMMIT;

-- ----------------------------
-- Table structure for system_option
-- ----------------------------
DROP TABLE IF EXISTS `system_option`;
CREATE TABLE `system_option` (
  `SystemOptionID` int(11) NOT NULL AUTO_INCREMENT,
  `OptionName` varchar(255) DEFAULT NULL,
  `OptionSlug` varchar(255) DEFAULT NULL,
  `OptionValue` varchar(255) DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `CreadedDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdatedBy` int(11) DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`SystemOptionID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of system_option
-- ----------------------------
BEGIN;
INSERT INTO `system_option` VALUES (1, 'Admin Email Address', 'Admin_Email_Address', 'admin@otlobly.me', 1, '2018-06-20 12:22:20', NULL, '2019-09-01 05:13:59');
INSERT INTO `system_option` VALUES (2, 'Android Version', 'android_version', '1.0', 1, '2018-06-20 12:28:00', NULL, '2019-09-01 05:13:59');
INSERT INTO `system_option` VALUES (3, 'Ios Version', 'ios_version', '1.0', 1, '2018-06-20 12:28:00', NULL, '2019-09-01 05:13:59');
INSERT INTO `system_option` VALUES (4, 'Site Title', 'site_title', 'Otlobly', 1, '2016-12-12 08:59:49', NULL, '2019-09-01 05:13:59');
INSERT INTO `system_option` VALUES (5, 'Site Keyword', 'site_keyword', 'Food Ordering and Delivery', 1, '2016-12-12 08:59:49', NULL, '2019-09-01 05:13:59');
INSERT INTO `system_option` VALUES (6, 'Site Description', 'site_description', '', 1, '2016-12-12 09:00:21', NULL, '2019-09-01 05:13:59');
INSERT INTO `system_option` VALUES (7, 'Email From Name', 'Email_From_Name', 'Otlobly', NULL, '2016-07-18 20:54:16', NULL, '2019-09-01 05:13:59');
INSERT INTO `system_option` VALUES (8, 'From Email Address', 'From_Email_Address', 'noreply@otlobly.me', NULL, '2016-07-18 20:54:44', NULL, '2019-09-01 05:13:59');
COMMIT;

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_entity_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `landmark` text DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `zipcode` varchar(10) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `saved_status` tinyint(4) DEFAULT NULL COMMENT '1 -saved',
  PRIMARY KEY (`entity_id`) USING BTREE,
  KEY `address_user_fk` (`user_entity_id`) USING BTREE,
  CONSTRAINT `address_user_fk` FOREIGN KEY (`user_entity_id`) REFERENCES `users` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_address
-- ----------------------------
BEGIN;
INSERT INTO `user_address` VALUES (1, 19, 'Test', '', '29.3788944', '30.7815988', '', NULL, NULL, '', NULL);
INSERT INTO `user_address` VALUES (2, 20, 'Laporta', '', '29.2355252', '30.8040961', '', NULL, NULL, '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `entity_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` int(11) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` enum('MasterAdmin','Admin','User') NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1- active',
  `active` tinyint(4) NOT NULL COMMENT '1- active',
  `image` varchar(255) DEFAULT NULL,
  `email_verification_code` varchar(255) DEFAULT NULL,
  `notification` tinyint(4) DEFAULT 1,
  `device_id` text NOT NULL,
  `token` varchar(255) NOT NULL,
  `active_code` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`entity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, NULL, 'Omar Sharif', '', '1100060682', '', 'omar@otlobly.me', '3f46230745fdd6d12eace08cb83deaed', 'MasterAdmin', 1, 1, 'profile/39d0e844aaba25f99d9309fcd586db52.jpg', '4CAEpgWH1dclP2ImK3ZUegwSr', 1, 'ermsC7h-wpE:APA91bGCcTus06htDAXs0azA4mBpF7ffzJyJD1EQP73tcZ3C63kiCC5sDWxrwv7ouSVD8svndFCWS662Xi9MgMv7ie-PgydTaSUTc0F9esZWJrshp11-WxLiGxpfHZfbuTRwKReFCGqi', '', NULL, NULL, '2019-09-01 12:17:40', NULL, NULL);
INSERT INTO `users` VALUES (19, NULL, 'Omar', '', NULL, '1100060682', NULL, 'd85f0226ec3671071e5544e872edf722', 'User', 1, 1, 'profile/498279fc9a1c9d31b20bb8d8921e3654.jpg', NULL, 1, 'cZPxa2I9EGA:APA91bHAPz5xYBg6JTa0kbHh6vi1-rWmGzq7Ahicd1HSVqY-hrlIJC4pk4lpX-1UvnUTeYyY2PrXHb8ScJRutnRk86iGlaZk4C4N93p_yyWwKVRb9unE-SrZ9mmO2OrwTfHKM0JfyE0r', '', '53a02d76', NULL, '2019-09-12 22:28:07', NULL, NULL);
INSERT INTO `users` VALUES (20, NULL, 'Hossam Ahmed', '', NULL, '1551553467', NULL, 'c84da8472dc4fb6c9c2b8640e5f56849', 'User', 1, 1, NULL, NULL, 1, '', '', 'd5f15f70', NULL, '2019-09-12 22:49:07', NULL, NULL);
INSERT INTO `users` VALUES (21, NULL, 'Mohamed', 'El Behairy', '', '1004526836', 'mohamed.elbehairy@otlobly.me', 'd959b8336ad8e4529b53dd16b3c1d9b0', 'MasterAdmin', 1, 0, NULL, NULL, 1, '', '', NULL, NULL, '2019-09-21 19:30:28', NULL, NULL);
INSERT INTO `users` VALUES (22, NULL, 'Crinkel', '', '', '', '1', 'b2e50d7107d910fec5a125dc91f949ef', 'Admin', 1, 1, 'profile/39d0e844aaba25f99d9309fcd586db52.jpg', '4CAEpgWH1dclP2ImK3ZUegwSr', 1, 'ermsC7h-wpE:APA91bGCcTus06htDAXs0azA4mBpF7ffzJyJD1EQP73tcZ3C63kiCC5sDWxrwv7ouSVD8svndFCWS662Xi9MgMv7ie-PgydTaSUTc0F9esZWJrshp11-WxLiGxpfHZfbuTRwKReFCGqi', '', NULL, NULL, '2019-09-01 12:17:40', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
