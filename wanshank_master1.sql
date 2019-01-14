-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2018 at 07:24 PM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wanshank_master1`
--

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `download_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `purchase_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`id`, `product_id`, `download_at`, `ip_address`, `user_agent`, `purchase_id`) VALUES
(1, 33, '0000-00-00 00:00:00', '197.136.73.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 138),
(2, 33, '0000-00-00 00:00:00', '197.136.73.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 138),
(3, 33, '0000-00-00 00:00:00', '197.136.73.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 138),
(4, 33, '2018-02-10 14:32:38', '197.136.73.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 138),
(5, 33, '2018-02-10 14:33:57', '197.136.73.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 138),
(6, 33, '2018-02-10 14:34:30', '197.136.73.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 138),
(7, 33, '2018-02-10 14:34:34', '197.136.73.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 138),
(8, 33, '2018-02-10 14:35:34', '197.136.73.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 138),
(9, 33, '2018-02-10 14:35:39', '197.136.73.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 138),
(10, 11, '2018-02-10 18:35:50', '196.107.12.6', 'Mozilla/5.0 (Linux; Android 6.0; TECNO-N6S Build/MRA58K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/50.0.2661.86 Mobile Safari/537.36', 139),
(11, 11, '2018-02-12 19:27:14', '197.136.73.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 130);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `keyz` varchar(255) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `payer_email` varchar(255) NOT NULL,
  `payment_gross` float NOT NULL,
  `currency_code` varchar(45) NOT NULL,
  `payment_status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`keyz`, `txn_id`, `payer_email`, `payment_gross`, `currency_code`, `payment_status`) VALUES
('899fb173c4f8cffd63a256b3410638b3', '8UH73781T8939523S', 'cisco1@kavya.com', 17.25, 'USD', 'Pending'),
('19e5fc6cbd999b1292d0eec7b8946e65', '3CN23742BM511061N', 'cisco1@kavya.com', 131.1, 'USD', 'Pending'),
('bd4659778fdb97acc06d4e6667de5547', '0HU54695G6217094A', 'cisco1@kavya.com', 23, 'USD', 'Pending'),
('27099f5dbca50f7798a1174f8f2a4c03', '4U96835004517100E', 'cisco1@kavya.com', 23, 'USD', 'Pending'),
('a7c852cd9edd78074a903faa0e559fb3', '1NG589318A674901W', 'cisco1@kavya.com', 23, 'USD', 'Pending'),
('9ead5c1b1b4a29e72dd41ef94939139b', '00F75406PR824122C', 'cisco1@kavya.com', 69, 'USD', 'Completed'),
('d38b80a0e3f40fad1ce7783bffd94db7', '511698332W344914W', 'cisco1@kavya.com', 69, 'USD', 'Completed'),
('7f76a8df64a67ec1bd2a42b5fd96024c', '1XS2459243840773A', 'cisco1@kavya.com', 23, 'USD', 'Pending'),
('a38e1fa25d7a49814377295711c39e7b', '8DY97489HL9442421', 'cisco1@kavya.com', 23, 'USD', 'Pending'),
('740ce3ca51ff710d7b5d687ec23825be', '9JA3948361208184U', 'cisco1@kavya.com', 23, 'USD', 'Pending'),
('72b65d00120419554bc645fbfa4f9040', '1DG15000DY573825S', 'cisco1@kavya.com', 23, 'USD', 'Pending'),
('4abbd387ee3e8534292c726c35e0f16f', '2SN80592EA1057131', 'cisco1@kavya.com', 23, 'USD', 'Pending'),
('8d99674c39ace5d8876191f912176ccd', '9GA953680A4873520', 'cisco1@kavya.com', 23, 'USD', 'Pending'),
('61f49e92a84544b5971359d3ebe7d63a', '5RV59222AM276662K', 'cisco1@kavya.com', 23, 'USD', 'Pending'),
('72a40a7a19c1e814262c7068d1d45b38', '5R734810EU232131C', 'cisco1@kavya.com', 23, 'USD', 'Pending'),
('1ef91e3365ac814ae2e511f8f3d8fd00', '1LS2595861427932F', 'cisco1@kavya.com', 345, 'USD', 'Pending'),
('2328be62e68fae385f8745834d7dedbd', '3JM59099RG260504P', 'cisco1@kavya.com', 37.95, 'USD', 'Completed'),
('895f1d8e588ac931c8dac66714bd5be4', '85786386HR050882T', 'cisco1@kavya.com', 23, 'USD', 'Pending'),
('ba38b63cb8ce74ad6bd9c56de5bbfbda', '01N39215KN4703747', 'cisco1@kavya.com', 17.25, 'USD', 'Completed'),
('a8624a065f981b3f7adbe687365f6ecb', '48355174G1763613P', 'cisco1@kavya.com', 89.7, 'USD', 'Completed'),
('063d1322f6b3fc3eea7c5abe18c29af4', '3H728120EB539940U', 'cisco1@kavya.com', 19.55, 'USD', 'Completed'),
('be914ab0767565beacb0258eff15b8ad', '1SC86110KA8006838', 'cisco1@kavya.com', 62.1, 'USD', 'Completed'),
('af65a238da246133adb430f3ab468082', '4AS93303BS1766836', 'cisco1@kavya.com', 85.1, 'USD', 'Completed'),
('f1a5ddb81d2218b59c0f73bb9d8e00f0', '8YJ82342PF373391A', 'cisco1@kavya.com', 24.15, 'USD', 'Completed'),
('27dbb779ec871c2b39b26dea78c9fc6f', '4P122429DB5468528', 'cisco1@kavya.com', 62.1, 'USD', 'Completed'),
('e8b696a688d240fadcd21d2041469664', '82E49033P4589263R', 'cisco1@kavya.com', 14.95, 'USD', 'Completed'),
('143913508d4b19db304594ae07493f48', '0E445925B4103920D', 'cisco1@kavya.com', 89.7, 'USD', 'Completed'),
('899fb173c4f8cffd63a256b3410638b3', '8UH73781T8939523S', 'cisco1@kavya.com', 17.25, 'USD', 'Completed'),
('19e5fc6cbd999b1292d0eec7b8946e65', '3CN23742BM511061N', 'cisco1@kavya.com', 131.1, 'USD', 'Completed'),
('bd4659778fdb97acc06d4e6667de5547', '0HU54695G6217094A', 'cisco1@kavya.com', 23, 'USD', 'Completed'),
('27099f5dbca50f7798a1174f8f2a4c03', '4U96835004517100E', 'cisco1@kavya.com', 23, 'USD', 'Completed'),
('a7c852cd9edd78074a903faa0e559fb3', '1NG589318A674901W', 'cisco1@kavya.com', 23, 'USD', 'Completed'),
('7f76a8df64a67ec1bd2a42b5fd96024c', '1XS2459243840773A', 'cisco1@kavya.com', 23, 'USD', 'Completed'),
('a38e1fa25d7a49814377295711c39e7b', '8DY97489HL9442421', 'cisco1@kavya.com', 23, 'USD', 'Completed'),
('740ce3ca51ff710d7b5d687ec23825be', '9JA3948361208184U', 'cisco1@kavya.com', 23, 'USD', 'Completed'),
('72b65d00120419554bc645fbfa4f9040', '1DG15000DY573825S', 'cisco1@kavya.com', 23, 'USD', 'Completed'),
('4abbd387ee3e8534292c726c35e0f16f', '2SN80592EA1057131', 'cisco1@kavya.com', 23, 'USD', 'Completed'),
('8d99674c39ace5d8876191f912176ccd', '9GA953680A4873520', 'cisco1@kavya.com', 23, 'USD', 'Completed'),
('61f49e92a84544b5971359d3ebe7d63a', '5RV59222AM276662K', 'cisco1@kavya.com', 23, 'USD', 'Completed'),
('72a40a7a19c1e814262c7068d1d45b38', '5R734810EU232131C', 'cisco1@kavya.com', 23, 'USD', 'Completed'),
('1ef91e3365ac814ae2e511f8f3d8fd00', '1LS2595861427932F', 'cisco1@kavya.com', 345, 'USD', 'Completed'),
('895f1d8e588ac931c8dac66714bd5be4', '85786386HR050882T', 'cisco1@kavya.com', 23, 'USD', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `purchased_at` datetime NOT NULL,
  `paypal_txn_id` varchar(255) NOT NULL,
  `paypal_email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `order_id`, `key`, `email`, `active`, `purchased_at`, `paypal_txn_id`, `paypal_email`) VALUES
(125, 170, '899fb173c4f8cffd63a256b3410638b3', 'cisco1576@gmail.com', 1, '2018-02-10 20:01:00', '8UH73781T8939523S', 'cisco1@kavya.com'),
(126, 171, '19e5fc6cbd999b1292d0eec7b8946e65', 'cisco1576@gmail.com', 1, '2018-02-10 20:06:50', '3CN23742BM511061N', 'cisco1@kavya.com'),
(127, 172, 'bd4659778fdb97acc06d4e6667de5547', 'cisco1576@gmail.com', 1, '2018-02-10 20:25:34', '0HU54695G6217094A', 'cisco1@kavya.com'),
(128, 173, '27099f5dbca50f7798a1174f8f2a4c03', 'cisco1576@gmail.com', 1, '2018-02-10 21:08:13', '4U96835004517100E', 'cisco1@kavya.com'),
(129, 174, 'a7c852cd9edd78074a903faa0e559fb3', 'cisco1576@gmail.com', 1, '2018-02-10 21:10:09', '1NG589318A674901W', 'cisco1@kavya.com'),
(130, 175, '7f76a8df64a67ec1bd2a42b5fd96024c', 'cisco1576@gmail.com', 1, '2018-02-11 12:04:25', '1XS2459243840773A', 'cisco1@kavya.com'),
(131, 176, 'a38e1fa25d7a49814377295711c39e7b', 'cisco1576@gmail.com', 1, '2018-02-11 12:07:46', '8DY97489HL9442421', 'cisco1@kavya.com'),
(132, 177, '740ce3ca51ff710d7b5d687ec23825be', 'cisco1576@gmail.com', 1, '2018-02-11 12:11:13', '9JA3948361208184U', 'cisco1@kavya.com'),
(133, 178, '72b65d00120419554bc645fbfa4f9040', 'cisco1576@gmail.com', 1, '2018-02-11 12:25:02', '1DG15000DY573825S', 'cisco1@kavya.com'),
(134, 179, '4abbd387ee3e8534292c726c35e0f16f', 'cisco1576@gmail.com', 1, '2018-02-11 12:31:24', '2SN80592EA1057131', 'cisco1@kavya.com'),
(135, 180, '8d99674c39ace5d8876191f912176ccd', 'cisco1576@gmail.com', 1, '2018-02-11 12:37:04', '9GA953680A4873520', 'cisco1@kavya.com'),
(136, 181, '61f49e92a84544b5971359d3ebe7d63a', 'cisco1576@gmail.com', 1, '2018-02-11 12:55:46', '5RV59222AM276662K', 'cisco1@kavya.com'),
(137, 182, '72a40a7a19c1e814262c7068d1d45b38', 'cisco1576@gmail.com', 1, '2018-02-11 12:58:01', '5R734810EU232131C', 'cisco1@kavya.com'),
(138, 183, '1ef91e3365ac814ae2e511f8f3d8fd00', 'cisco1576@gmail.com', 1, '2018-02-11 14:07:15', '1LS2595861427932F', 'cisco1@kavya.com'),
(139, 184, '895f1d8e588ac931c8dac66714bd5be4', 'cisco1576@gmail.com', 1, '2018-02-11 17:43:50', '85786386HR050882T', 'cisco1@kavya.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_description` text NOT NULL,
  `publication_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_description`, `publication_status`) VALUES
(3, 'Bungalow', '                                    Has got only one floor, these are flats.<br>                                ', 1),
(4, 'Mansion', 'Has got more than one floor.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL,
  `publication_status` tinyint(4) NOT NULL COMMENT 'Published=1,Unpublished=0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_name`, `category_description`, `publication_status`) VALUES
(1, 'One Bedroom', '                                    Bungalow Desc                                ', 1),
(2, 'Two Bedroom', 'Clean Mansion', 1),
(3, 'Three Bedroom', 'A great Mansion for your family', 1),
(4, 'Four Bedroom', 'Magical Bungalow, expansive', 1),
(5, 'Five Bedroom', 'Mansions on Demand', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_password` varchar(32) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_city` varchar(50) NOT NULL,
  `customer_zipcode` varchar(20) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_country` varchar(100) NOT NULL,
  `customer_active` tinyint(4) NOT NULL COMMENT 'Active=1,Unactive=0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_address`, `customer_city`, `customer_zipcode`, `customer_phone`, `customer_country`, `customer_active`) VALUES
(4, 'Rostom Ali4444', 'rostomali4444@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Comilla,Bangladesh', 'Comilla', '0152698', '014795', 'Bangladesh', 0),
(5, 'Rostom Ali4', 'rostomali4@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Comilla,Bangladesh', 'Comilla', '0152698', '014795', 'Bangladesh', 0),
(6, 'Rostom Ali', 'rostomali@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Comilla,Bangladesh', 'Comilla', '0152698', '014795', 'Bangladesh', 0),
(7, 'Rostom Ali3', 'rostomali444@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Comilla,Bangladesh', 'Comilla', '0152698', '014795', 'Bangladesh', 0),
(8, 'Rostom Ali', 'rostomali44445@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Comilla,Bangladesh', 'Comilla', '0152698', '014795', 'Pakistan', 0),
(9, 'Francis Kiiru', 'cisco1576@gmail.com', '22dea792b27e9bf934f7f4074be18c5a', '20100', 'Nairobi', '20100', '0703993629', 'India', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_option`
--

CREATE TABLE `tbl_option` (
  `option_id` int(11) NOT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_favicon` varchar(100) NOT NULL,
  `site_copyright` varchar(255) NOT NULL,
  `site_contact_num1` varchar(100) NOT NULL,
  `site_contact_num2` varchar(100) NOT NULL,
  `site_facebook_link` varchar(100) NOT NULL,
  `site_twitter_link` varchar(100) NOT NULL,
  `site_google_plus_link` varchar(100) NOT NULL,
  `site_email_link` varchar(100) NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_subtitle` varchar(255) NOT NULL,
  `contact_description` text NOT NULL,
  `company_location` varchar(255) NOT NULL,
  `company_number` varchar(100) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `company_facebook` varchar(100) NOT NULL,
  `company_twitter` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_option`
--

INSERT INTO `tbl_option` (`option_id`, `site_logo`, `site_favicon`, `site_copyright`, `site_contact_num1`, `site_contact_num2`, `site_facebook_link`, `site_twitter_link`, `site_google_plus_link`, `site_email_link`, `contact_title`, `contact_subtitle`, `contact_description`, `company_location`, `company_number`, `company_email`, `company_facebook`, `company_twitter`) VALUES
(1, 'logofinal.png', 'logo2.png', '©WEB-APP Designed And Developed By Kiragu Francis 0703993629', '0703993629', '0703993629', 'https://www.facebook.com/francis.kiragu.902', 'https://www.twitter.com', 'https://www.plus.google.com', 'https://www.gmail.com', 'Contact Page', 'Contact Page Subtitle', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 Contact Page Description\r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                \r\n                                ', '                                    ty                                ', '0703993629', 'https://www.gmail.com', 'https://www.facebook.com', 'https://www.twitter.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` float NOT NULL,
  `actions` varchar(50) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `actions`) VALUES
(170, 9, 13, 193, 17.25, 'Pending'),
(171, 9, 13, 194, 131.1, 'Pending'),
(172, 9, 13, 195, 23, 'Pending'),
(173, 9, 13, 196, 23, 'Pending'),
(174, 9, 13, 197, 23, 'Pending'),
(175, 9, 13, 198, 23, 'Pending'),
(176, 9, 13, 199, 23, 'Pending'),
(177, 9, 13, 200, 23, 'Pending'),
(178, 9, 13, 201, 23, 'Pending'),
(179, 9, 13, 202, 23, 'Pending'),
(180, 9, 13, 203, 23, 'Pending'),
(181, 9, 13, 204, 23, 'Pending'),
(182, 9, 13, 205, 23, 'Pending'),
(183, 9, 13, 206, 345, 'Pending'),
(184, 9, 13, 207, 23, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `product_image` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `product_image`) VALUES
(179, 170, 12, 'House 3', 15, 1, NULL),
(180, 171, 31, 'House 12', 60, 1, NULL),
(181, 171, 30, 'House 11', 54, 1, NULL),
(182, 172, 11, 'House 2', 20, 1, NULL),
(183, 173, 11, 'House 2', 20, 1, NULL),
(184, 174, 11, 'House 2', 20, 1, NULL),
(185, 175, 11, 'House 2', 20, 1, NULL),
(186, 176, 11, 'House 2', 20, 1, NULL),
(187, 177, 11, 'House 2', 20, 1, NULL),
(188, 178, 11, 'House 2', 20, 1, NULL),
(189, 179, 11, 'House 2', 20, 1, NULL),
(190, 180, 11, 'House 2', 20, 1, NULL),
(191, 181, 11, 'House 2', 20, 1, NULL),
(192, 182, 11, 'House 2', 20, 1, NULL),
(193, 183, 33, 'House 20', 300, 1, NULL),
(194, 184, 11, 'House 2', 20, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `actions` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_type`, `actions`) VALUES
(1, 'cashon', 'pending'),
(2, 'ssl', 'pending'),
(3, 'cashon', 'pending'),
(4, 'cashon', 'pending'),
(5, 'cashon', 'pending'),
(6, 'cashon', 'pending'),
(7, 'cashon', 'pending'),
(8, 'cashon', 'pending'),
(9, 'cashon', 'pending'),
(10, 'cashon', 'pending'),
(11, 'cashon', 'pending'),
(12, 'cashon', 'pending'),
(13, 'cashon', 'pending'),
(14, 'cashon', 'pending'),
(15, 'paypal', 'pending'),
(16, 'paypal', 'pending'),
(17, 'paypal', 'pending'),
(18, 'paypal', 'pending'),
(19, 'paypal', 'pending'),
(20, 'paypal', 'pending'),
(21, 'paypal', 'pending'),
(22, 'paypal', 'pending'),
(23, 'paypal', 'pending'),
(24, 'paypal', 'pending'),
(25, 'paypal', 'pending'),
(26, 'paypal', 'pending'),
(27, 'paypal', 'pending'),
(28, 'paypal', 'pending'),
(29, 'paypal', 'pending'),
(30, 'paypal', 'pending'),
(31, 'paypal', 'pending'),
(32, 'paypal', 'pending'),
(33, 'paypal', 'pending'),
(34, 'paypal', 'pending'),
(35, 'paypal', 'pending'),
(36, 'paypal', 'pending'),
(37, 'cashon', 'pending'),
(38, 'cashon', 'pending'),
(39, 'paypal', 'pending'),
(40, 'paypal', 'pending'),
(41, 'paypal', 'pending'),
(42, 'paypal', 'pending'),
(43, 'paypal', 'pending'),
(44, 'paypal', 'pending'),
(45, 'paypal', 'pending'),
(46, 'paypal', 'pending'),
(47, 'paypal', 'pending'),
(48, 'paypal', 'pending'),
(49, 'paypal', 'pending'),
(50, 'paypal', 'pending'),
(51, 'paypal', 'pending'),
(52, 'paypal', 'pending'),
(53, 'paypal', 'pending'),
(54, 'paypal', 'pending'),
(55, 'paypal', 'pending'),
(56, 'paypal', 'pending'),
(57, 'paypal', 'pending'),
(58, 'paypal', 'pending'),
(59, 'paypal', 'pending'),
(60, 'paypal', 'pending'),
(61, 'paypal', 'pending'),
(62, 'paypal', 'pending'),
(63, 'paypal', 'pending'),
(64, 'paypal', 'pending'),
(65, 'paypal', 'pending'),
(66, 'paypal', 'pending'),
(67, 'paypal', 'pending'),
(68, 'paypal', 'pending'),
(69, 'paypal', 'pending'),
(70, 'paypal', 'pending'),
(71, 'paypal', 'pending'),
(72, 'paypal', 'pending'),
(73, 'paypal', 'pending'),
(74, 'paypal', 'pending'),
(75, 'paypal', 'pending'),
(76, 'paypal', 'pending'),
(77, 'paypal', 'pending'),
(78, 'paypal', 'pending'),
(79, 'paypal', 'pending'),
(80, 'paypal', 'pending'),
(81, 'paypal', 'pending'),
(82, 'payapal', 'pending'),
(83, 'payapal', 'pending'),
(84, 'payapal', 'pending'),
(85, 'payapal', 'pending'),
(86, 'paypal', 'pending'),
(87, 'paypal', 'pending'),
(88, 'paypal', 'pending'),
(89, 'paypal', 'pending'),
(90, 'paypal', 'pending'),
(91, 'paypal', 'pending'),
(92, 'paypal', 'pending'),
(93, 'paypal', 'pending'),
(94, 'paypal', 'pending'),
(95, 'paypal', 'pending'),
(96, 'paypal', 'pending'),
(97, 'paypal', 'pending'),
(98, 'paypal', 'pending'),
(99, 'paypal', 'pending'),
(100, 'paypal', 'pending'),
(101, 'paypal', 'pending'),
(102, 'paypal', 'pending'),
(103, 'paypal', 'pending'),
(104, 'paypal', 'pending'),
(105, 'paypal', 'pending'),
(106, 'paypal', 'pending'),
(107, 'paypal', 'pending'),
(108, 'paypal', 'pending'),
(109, 'paypal', 'pending'),
(110, 'paypal', 'pending'),
(111, 'paypal', 'pending'),
(112, 'paypal', 'pending'),
(113, 'paypal', 'pending'),
(114, 'paypal', 'pending'),
(115, 'paypal', 'pending'),
(116, 'paypal', 'pending'),
(117, 'paypal', 'pending'),
(118, 'paypal', 'pending'),
(119, 'paypal', 'pending'),
(120, 'paypal', 'pending'),
(121, 'paypal', 'pending'),
(122, 'paypal', 'pending'),
(123, 'paypal', 'pending'),
(124, 'paypal', 'pending'),
(125, 'paypal', 'pending'),
(126, 'paypal', 'pending'),
(127, 'paypal', 'pending'),
(128, 'paypal', 'pending'),
(129, 'paypal', 'pending'),
(130, 'paypal', 'pending'),
(131, 'paypal', 'pending'),
(132, 'paypal', 'pending'),
(133, 'paypal', 'pending'),
(134, 'paypal', 'pending'),
(135, 'paypal', 'pending'),
(136, 'paypal', 'pending'),
(137, 'paypal', 'pending'),
(138, 'paypal', 'pending'),
(139, 'paypal', 'pending'),
(140, 'paypal', 'pending'),
(141, 'paypal', 'pending'),
(142, 'paypal', 'pending'),
(143, 'paypal', 'pending'),
(144, 'cheque', 'pending'),
(145, 'paypal', 'pending'),
(146, 'paypal', 'pending'),
(147, 'paypal', 'pending'),
(148, 'paypal', 'pending'),
(149, 'paypal', 'pending'),
(150, 'cheque', 'pending'),
(151, 'paypal', 'pending'),
(152, 'paypal', 'pending'),
(153, 'paypal', 'pending'),
(154, 'paypal', 'pending'),
(155, 'paypal', 'pending'),
(156, 'paypal', 'pending'),
(157, 'paypal', 'pending'),
(158, 'paypal', 'pending'),
(159, 'paypal', 'pending'),
(160, 'paypal', 'pending'),
(161, 'paypal', 'pending'),
(162, 'paypal', 'pending'),
(163, 'paypal', 'pending'),
(164, 'paypal', 'pending'),
(165, 'paypal', 'pending'),
(166, 'paypal', 'pending'),
(167, 'paypal', 'pending'),
(168, 'paypal', 'pending'),
(169, 'paypal', 'pending'),
(170, 'paypal', 'pending'),
(171, 'paypal', 'pending'),
(172, 'paypal', 'pending'),
(173, 'paypal', 'pending'),
(174, 'paypal', 'pending'),
(175, 'paypal', 'pending'),
(176, 'paypal', 'pending'),
(177, 'paypal', 'pending'),
(178, 'paypal', 'pending'),
(179, 'paypal', 'pending'),
(180, 'paypal', 'pending'),
(181, 'paypal', 'pending'),
(182, 'paypal', 'pending'),
(183, 'paypal', 'pending'),
(184, 'paypal', 'pending'),
(185, 'paypal', 'pending'),
(186, 'paypal', 'pending'),
(187, 'paypal', 'pending'),
(188, 'paypal', 'pending'),
(189, 'paypal', 'pending'),
(190, 'paypal', 'pending'),
(191, 'paypal', 'pending'),
(192, 'paypal', 'pending'),
(193, 'paypal', 'pending'),
(194, 'paypal', 'pending'),
(195, 'paypal', 'pending'),
(196, 'paypal', 'pending'),
(197, 'paypal', 'pending'),
(198, 'paypal', 'pending'),
(199, 'paypal', 'pending'),
(200, 'paypal', 'pending'),
(201, 'paypal', 'pending'),
(202, 'paypal', 'pending'),
(203, 'paypal', 'pending'),
(204, 'paypal', 'pending'),
(205, 'paypal', 'pending'),
(206, 'paypal', 'pending'),
(207, 'paypal', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `plan` varchar(255) NOT NULL,
  `product_short_description` text NOT NULL,
  `product_long_description` text NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_feature` tinyint(4) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_brand` int(11) NOT NULL,
  `product_author` int(11) NOT NULL,
  `product_view` int(11) NOT NULL DEFAULT '0',
  `published_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `publication_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_title`, `plan`, `product_short_description`, `product_long_description`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `product_quantity`, `product_feature`, `product_category`, `product_brand`, `product_author`, `product_view`, `published_date`, `publication_status`) VALUES
(10, 'House 1', '', '                                                                                                                                                                                                                        <span class=\"fontstyle0\">Global Positioning System (GPS) devices use a network of satellites to<br>retrieve location-based information. Multiple satellites send time-stamped<br></span><br style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: normal; text-align: -webkit-auto; text-size-adjust: auto;\">                                                                                                                                                                                                ', '                                                                                                                                                                                                                        <span class=\"fontstyle0\">Global Positioning System (GPS) devices use a network of satellites to<br>retrieve location-based information. Multiple satellites send time-stamped<br>signals to the GPS device, which calculates the distance to each satellite<br>based on the time the signal left the satellite and the time the signal arrived.<br>This information is used to determine the exact location of the device. GPS<br>devices can provide step-by-step directions and help you easily find nearby</span>&nbsp;&nbsp;                                                                                                                                                                                                ', '43.jpg', 'house_21.jpg', 'house-designs-modern-on-inside-small-pinoy-eplans-41.jpg', 13, 10, 0, 5, 3, 1, 0, '2018-01-29 19:45:10', 1),
(11, 'House 2', '', '                                                                        <span class=\"fontstyle0\">Cloud computing </span><span class=\"fontstyle2\">allows you to use software, hardware and information<br>stored in the “cloud”—i.e., accessed on remote computers via the Internet<br>and available on demand—rather than having it stored on your personal<br>computer. Amazon is one of the leading providers of public cloud computing services. You can rent extra storage capacity using the Amazon Simple<br>Storage Service (Amazon S3), or augment processing capabilities with Amazon’s EC2 (Amazon Elastic Compute Cloud).</span>&nbsp;&nbsp;<br style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: normal; text-align: -webkit-auto; text-size-adjust: auto;\"><div><br></div>                                                                ', '                                                                        <span class=\"fontstyle0\">Cloud computing&nbsp;</span><span class=\"fontstyle2\">allows you to use software, hardware and information<br>stored in the “cloud”—i.e., accessed on remote computers via the Internet<br>and available on demand—rather than having it stored on your personal<br>computer. Amazon is one of the leading providers of public cloud computing services. You can rent extra storage capacity using the Amazon Simple<br>Storage Service (Amazon S3), or augment processing capabilities with Amazon’s EC2 (Amazon Elastic Compute Cloud).</span>&nbsp;&nbsp;                                                                ', '451.jpg', '', '', 20, 30, 0, 4, 4, 1, 0, '2018-01-29 19:48:54', 1),
(12, 'House 3', '', '                                                                                                            <span class=\"fontstyle0\">FTP (file transfer protocol) allows you<br>to exchange files between multiple computers (e.g., a client computer such<br>as your desktop and a file server) over the Internet using the TCP/IP protocols for transferring data.</span>&nbsp;&nbsp;                                                                                                ', '                                                                                                            (IM) and Video Chat apps, such as AIM, Skype, Yahoo! Messenger and others allow you to communicate with others in real time by sending your messages and live video through servers.&nbsp;                                                                                                ', '16.jpg', '42.jpg', '74.jpg', 15, 30, 1, 3, 3, 1, 0, '2018-01-29 19:53:06', 1),
(13, 'House 4', '', '                                                                        <span class=\"fontstyle0\">JavaScript is a language that helps you build </span><span class=\"fontstyle2\">dynamic </span><span class=\"fontstyle0\">web pages (i.e., pages that can be<br>modified “on the fly” in response to </span><span class=\"fontstyle2\">events</span><span class=\"fontstyle0\">, such as user input, time changes and&nbsp;</span><br style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: normal; text-align: -webkit-auto; text-size-adjust: auto;\">                                                                ', '                                                                        <span class=\"fontstyle0\">more) and<br>computer applications. It enables you to do the client-side programming of web applications. In addition, there are now several projects dedicated to&nbsp;</span><span class=\"fontstyle2\">server-side&nbsp;</span><span class=\"fontstyle0\">JavaScript, including CommonJS (</span><span class=\"fontstyle3\">www.commonjs.org</span><span class=\"fontstyle0\">), Node.js (</span><span class=\"fontstyle3\">nodejs.org</span><span class=\"fontstyle0\">) and Jaxer (</span><span class=\"fontstyle3\">jaxer.org</span><span class=\"fontstyle0\">).</span>&nbsp;&nbsp;                                                                ', '3a32.jpg', '3a4.jpg', '44.jpg', 20, 40, 1, 1, 3, 1, 0, '2018-01-29 19:54:31', 1),
(14, 'House 5', '', '                                    <span class=\"fontstyle0\">Ensuring a consistent look and feel on client-side browsers is one of the great challenges<br>of developing web-based applications. Currently, a standard does not exist to which software vendors must adhere when creating web browsers. Although browsers share a common set of features, each browser might render pages differently. Browsers are available in<br>many versions and on many different platforms (Microsoft Windows, Apple Macintosh,<br>Linux, UNIX, etc.).&nbsp;</span> \r\n<br style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: normal; text-align: -webkit-auto; text-size-adjust: auto;\">                                ', '                                    <span class=\"fontstyle0\">Vendors add features to each new version that sometimes result in<br>cross-platform incompatibility issues. It’s difficult to develop web pages that render correctly on all versions of each browser.<br>All of the code examples in the book were tested in the five most popular desktop<br>browsers and the two most popular mobile browsers (Fig. 1.5). Support for HTML5,<br>CSS3 and JavaScript features varies by browser. The </span><span class=\"fontstyle2\">HTML5 Test </span><span class=\"fontstyle0\">website (</span><span class=\"fontstyle3\">http://<br>html5test.com/</span><span class=\"fontstyle0\">) scores each browser based on its support for the latest features of these</span>&nbsp;&nbsp;<br style=\"font-variant-numeric: normal; font-variant-east-asian: normal; line-height: normal; text-align: -webkit-auto; text-size-adjust: auto;\">                                ', '73.jpg', '1a1.jpg', '32.jpg', 9, 40, 1, 2, 3, 1, 0, '2018-01-29 20:39:46', 1),
(28, 'House 15', '', '                                                                                                                                                                                                                                                                                                                                                                                                            <p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>                                                                                                                                                                                                                                                                                                                                                                ', '<div><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></div>                                                                                                                                                                                                ', 'images_(1).jpg', 'images_(2).jpg', 'Luxurious-And-Mansion-That-Will-Take-Your-Breath-Away-2.jpg', 17, 40, 0, 1, 4, 1, 0, '2018-02-07 13:53:44', 1),
(29, 'House 10', '', '<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the&nbsp;</span>', '<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</span>', 'war4.jpg', 'duldeck.jpg', 'war41.jpg', 21, 39, 1, 5, 4, 1, 0, '2018-02-07 13:55:16', 1),
(30, 'House 11', '', '<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span>', '<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span>', 'war2.jpg', 'fine-house-designs-architecture-regarding-other1.jpg', 'house-designs-modern-on-inside-small-pinoy-eplans-42.jpg', 54, 56, 1, 4, 4, 1, 0, '2018-02-07 13:56:55', 1),
(31, 'House 12', '', '<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span>', '<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span>', 'duldeck1.jpg', 'war5.jpg', 'Random_House_Design_for_Millenium_Housespng_(1)2.jpg', 60, 89, 0, 3, 3, 1, 0, '2018-02-07 13:59:51', 1),
(32, 'House 13', '', '<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.3</span>', '<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.3</span>', 'war8.jpg', '91.jpg', 'war51.jpg', 78, 57, 0, 2, 4, 1, 0, '2018-02-07 14:05:44', 1),
(33, 'House 20', 'SMS-Quotation.pdf', 'This ia atrial', 'Trial', 'maxresdefault.jpg', 'fine-house-designs-architecture-regarding-other.jpg', 'home-designs-act.jpg', 300, 24, 1, 1, 3, 1, 0, '2018-02-10 10:59:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_name` varchar(50) NOT NULL,
  `shipping_email` varchar(100) NOT NULL,
  `shipping_address` text NOT NULL,
  `shipping_city` varchar(100) NOT NULL,
  `shipping_country` varchar(50) NOT NULL,
  `shipping_phone` varchar(20) NOT NULL,
  `shipping_zipcode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `customer_id`, `shipping_name`, `shipping_email`, `shipping_address`, `shipping_city`, `shipping_country`, `shipping_phone`, `shipping_zipcode`) VALUES
(3, 4, 'Amjad Hossain', 'amjad@gmail.com', 'bangladesh', 'comilla', 'Bangladesh', '555', '555'),
(4, 4, 'Amjad Hossain', 'amjad2@gmail.com', 'bangladesh', 'comilla', 'Pakistan', '555', '555'),
(5, 4, 'Amjad Hossain', 'amjad4@gmail.com', 'bangladesh', 'comilla', 'Bangladesh', '555', '555'),
(6, 4, 'Amjad Hossain', 'amjad62@gmail.com', 'bangladesh', 'comilla', 'Afghanistan', '555', '555'),
(7, 4, 'Amjad Hossain', 'amjad23@gmail.com', 'bangladesh', 'comilla', 'Afghanistan', '555', '555'),
(8, 4, 'Amjad Hossain', 'amjad233@gmail.com', 'bangladesh', 'comilla', 'Bangladesh', '555', '555'),
(9, 0, 'Rostom', 'rostom@gmail.com', 'bangladesh', 'comilla', 'Bangladesh', '555', '555'),
(13, 0, 'Francis Kiiru', 'cisco1576@gmail.com', 'Nairobi Ngara Plaza', 'Nairobi', 'Kenya', '0703993629', '20100'),
(14, 0, 'Francis Kiiru', 'kiragufrancis97@gmail.com', 'Nairobi Ngara Plaza', 'Nairobi', 'Kenya', '0703993629', '20100');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `slider_link` varchar(255) NOT NULL,
  `publication_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_title`, `slider_image`, `slider_link`, `publication_status`) VALUES
(1, 'slider', 'war31.jpg', 'https://wanshankivche.com/shop/single/32', 1),
(2, 'slider 2', '3a2.jpg', 'https://wanshankivche.com/shop/single/13', 1),
(3, 'slider 3', 'Random_House_Design_for_Millenium_Housespng_(1).jpg', 'https://wanshankivche.com/shop/single/11', 1),
(4, 'Good ', 'war83.jpg', 'https://wanshankivche.com/shop/single/32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role` tinyint(4) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_role`, `created_time`, `updated_time`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 1, '2017-11-13 18:31:36', '2017-11-13 18:31:36'),
(2, 'editor', 'editor@gmail.com', '5aee9dbd2a188839105073571bee1b1f', 2, '2017-11-13 18:31:36', '2017-11-13 18:31:36'),
(3, 'author', 'author@gmail.com', '02bd92faa38aaa6cc0ea75e59937a1ef', 3, '2017-11-13 18:31:36', '2017-11-13 18:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Author'),
(3, 'Editor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_option`
--
ALTER TABLE `tbl_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_option`
--
ALTER TABLE `tbl_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
