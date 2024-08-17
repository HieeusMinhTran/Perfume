-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 31, 2024 at 07:43 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perfumeatelier`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(10) UNSIGNED NOT NULL,
  `AdminName` varchar(50) NOT NULL,
  `AdminUser` varchar(50) NOT NULL,
  `AdminPass` varchar(255) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `NumberPhone` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `AdminName`, `AdminUser`, `AdminPass`, `Position`, `Address`, `NumberPhone`, `Email`, `Avatar`, `created_at`, `updated_at`) VALUES
(4, '', 'admin01', '6eea9b7ef19179a06954edd0f6c05ceb', 'Admin', '', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `idAttribute` int(10) UNSIGNED NOT NULL,
  `AttributeName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`idAttribute`, `AttributeName`, `created_at`, `updated_at`) VALUES
(1, 'Gender', '2022-07-30 09:51:59', '2024-07-15 08:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `idAttrValue` int(10) UNSIGNED NOT NULL,
  `idAttribute` int(11) UNSIGNED NOT NULL,
  `AttrValName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`idAttrValue`, `idAttribute`, `AttrValName`, `created_at`, `updated_at`) VALUES
(4, 1, 'Women', '2022-07-30 09:54:34', '2024-07-15 09:00:15'),
(5, 1, 'Men', '2022-07-30 09:54:44', '2024-07-15 09:02:40'),
(6, 1, 'Unisex', '2022-07-30 09:54:48', '2024-07-15 09:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `idBill` int(10) UNSIGNED NOT NULL,
  `idCustomer` int(11) UNSIGNED NOT NULL,
  `Payment` varchar(50) NOT NULL DEFAULT 'cash',
  `Voucher` varchar(50) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `ReceiveDate` datetime DEFAULT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 0,
  `TotalBill` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billinfo`
--

CREATE TABLE `billinfo` (
  `idBill` int(11) UNSIGNED NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `AttributeProduct` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  `QuantityBuy` int(11) NOT NULL,
  `idProAttr` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `idBlog` int(10) UNSIGNED NOT NULL,
  `BlogContent` longtext NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 1,
  `BlogDesc` text NOT NULL,
  `BlogTitle` varchar(255) NOT NULL,
  `BlogSlug` varchar(255) NOT NULL,
  `BlogImage` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `idBrand` int(10) UNSIGNED NOT NULL,
  `BrandName` varchar(255) NOT NULL,
  `BrandSlug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`idBrand`, `BrandName`, `BrandSlug`, `created_at`, `updated_at`) VALUES
(5, 'Valentino', 'valentino', '2024-07-15 08:52:18', '2024-07-15 08:52:18'),
(6, 'Yves Saint Laurent', 'yves-saint-laurent', '2024-07-15 08:52:41', '2024-07-15 08:52:41'),
(7, 'BURBERRY', 'burberry', '2024-07-15 08:52:51', '2024-07-15 08:52:51'),
(8, 'Gucci', 'gucci', '2024-07-15 08:53:00', '2024-07-15 08:53:00'),
(9, 'Dior', 'dior', '2024-07-15 08:53:11', '2024-07-15 08:53:11'),
(10, 'TOM FORD', 'tom-ford', '2024-07-15 08:54:44', '2024-07-15 08:54:44'),
(11, 'Versace', 'versace', '2024-07-15 08:55:15', '2024-07-15 08:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idCart` int(10) UNSIGNED NOT NULL,
  `idCustomer` int(11) UNSIGNED NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `idProAttr` int(11) UNSIGNED NOT NULL,
  `AttributeProduct` varchar(50) NOT NULL,
  `PriceNew` int(11) NOT NULL,
  `QuantityBuy` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`idCart`, `idCustomer`, `idProduct`, `idProAttr`, `AttributeProduct`, `PriceNew`, `QuantityBuy`, `Total`, `created_at`, `updated_at`) VALUES
(52, 9, 68, 215, 'Gender: Men', 0, 1, 0, '2024-07-24 06:12:54', '2024-07-24 07:35:13'),
(53, 9, 65, 210, 'Gender: Men', 0, 1, 0, '2024-07-24 08:37:12', '2024-07-24 08:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `idCategory` int(10) UNSIGNED NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `CategorySlug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`idCategory`, `CategoryName`, `CategorySlug`, `created_at`, `updated_at`) VALUES
(1, 'Eau De Parfum', 'eau-de-parfum', '2022-07-30 09:51:22', '2024-07-15 08:45:21'),
(2, 'Eau De Toilette', 'eau-de-toilette', '2022-07-30 09:51:24', '2024-07-15 08:46:15'),
(3, 'Parfum', 'parfum', '2022-07-30 09:51:27', '2024-07-15 08:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `idCustomer` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `CustomerName` varchar(50) DEFAULT NULL,
  `Avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idCustomer`, `username`, `password`, `PhoneNumber`, `CustomerName`, `Avatar`, `created_at`, `updated_at`) VALUES
(9, 'admin01', '6eea9b7ef19179a06954edd0f6c05ceb', NULL, NULL, NULL, '2024-07-17 06:54:47', '2024-07-17 06:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_07_29_190711_create_tbl_product_table', 2),
(12, '2022_07_29_202441_create_saleproduct_table', 3),
(13, '2022_07_30_154639_create_brand_table', 4),
(14, '2022_07_30_154846_create_category_table', 4),
(15, '2022_07_30_155010_create_attribute_table', 4),
(16, '2022_07_30_155047_create_attributevalue_table', 4),
(17, '2022_07_30_155155_create_productattribute_table', 4),
(18, '2022_07_30_155246_create_productimage_table', 4),
(19, '2022_07_30_160811_create_admin_table', 5),
(20, '2022_07_30_162600_create_bill_table', 6),
(22, '2022_07_30_164010_create_billinfo_table', 7),
(23, '2022_07_30_171111_create_cart_table', 8),
(24, '2022_07_30_171621_create_wishlist_table', 9),
(25, '2022_07_30_171653_create_compare_table', 9),
(26, '2022_07_30_171717_create_blog_table', 9),
(27, '2022_07_30_171748_create_customer_table', 9),
(28, '2022_07_30_171916_create_statistic_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `idProduct` int(10) UNSIGNED NOT NULL,
  `idCategory` int(11) UNSIGNED NOT NULL,
  `idBrand` int(11) UNSIGNED NOT NULL,
  `QuantityTotal` int(11) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ProductSlug` varchar(255) NOT NULL,
  `DesProduct` longtext NOT NULL,
  `ShortDes` text NOT NULL,
  `Price` int(255) NOT NULL,
  `Sold` int(11) NOT NULL DEFAULT 0,
  `StatusPro` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`idProduct`, `idCategory`, `idBrand`, `QuantityTotal`, `ProductName`, `ProductSlug`, `DesProduct`, `ShortDes`, `Price`, `Sold`, `StatusPro`, `created_at`, `updated_at`) VALUES
(65, 1, 6, 18, 'Y EDP', 'y-edp', '<p>The first thing worth mentioning about YSL Y EDP Intense is that this version has cut out a quite important note in Y EDP, which is green apple. In the EDP version, the green apple note is probably the note that is expressed most clearly and roundly, the smell of a ripe green apple. Normally, fruity notes that resemble ripe fruit in perfume such as apple, pineapple, or plum will bring a sweet feeling. Besides, YSL has also removed the Tonka bean note, a note that often brings a warm, sweet feeling. So that&#39;s the reason why right from the moment it was sprayed, it felt like YSL Y EDP Intense was much less sweet than the EDP version. Another thing that can be easily noticed is that the wood in Y EDP Intense is thicker and clearer than the EDP version. We have a bit of pine wood from the juniper berries accompanied by an earthy woody feeling of vetiver and patchouli, and as time goes on we see them grow more and more clearly. Combined with the first, they make Y EDP Intense feel much more mature and masculine if placed next to Y EDP. These are probably the two most obvious differences that anyone can feel if comparing Y EDP with the Intense version. There is also another point that is not too obvious, which is that in this version there is the presence of lavender, it gives Y EDP intense a clean, slightly soapy feeling, also making the scent somewhat mature. than.</p>', '<p>Correctly understanding the meaning of the Intense version, it will be a Y EDP version that is less sweet and woody, somewhat mature and masculine. No longer a youthful, dynamic Y EDP, but a bit quieter. I believe it will be suitable for almost everyone, used for every occasion from going out to work, going on dates, and can be used almost all year round, it is still very versatile.</p>', 155, 0, 1, '2024-07-22 08:13:53', '2024-07-22 08:13:53'),
(66, 2, 5, 17, 'UOMO BORN IN ROMA', 'uomo-born-in-roma', '<p>BORN IN ROMA began in a dialogue with Valentino&rsquo;s native city: Rome. A symbol of free thought, the streets of Rome are full of the memories of the past, and the energy of the present. A city where cultures and aesthetics layer the walls, reverence and irreverence collide. Rome is the city the Aristopunks adopt in their minds</p>', '<p>Inspired by Rome, a place where past and present coexist, Born in Roma fragrances tell a story of self-expression. A celebration of people living life freely, while embracing their heritage by twisting the classic with the unexpected into new fragrance statements.</p>', 125, 0, 1, '2024-07-22 08:19:11', '2024-07-22 08:19:11'),
(67, 1, 7, 34, 'My Burberry EDP', 'my-burberry-edp', '<p>My Burberry is inspired by Burberry&#39;s classic nude gown, worn on a beautiful sunny day in spring, standing radiantly, shining with flowers in a model garden designed Designs for typical London houses. First introduced in September 2014, My Burberry is a great expectation of the Burberry family when assigned to be in the top 10 luxury beauty products in the year it was released, and My Burberry will also is the original in the company&#39;s newly launched high-end product line, promising to have many variations from this My Burberry girl.</p>', '<p>Each scent evokes a story or carries some meaning that the brand wants to convey, and Burberry&#39;s My Burbery is no exception. Its scent is so beautiful, so full of memories that it keeps me immersed and unconscious. That scent mixture evokes memories of an English girl with clear, dark eyes, loose blonde hair, wearing a long coat and walking quickly through a wet garden after the rain.</p>', 110, 0, 1, '2024-07-22 08:37:50', '2024-07-22 08:37:50'),
(68, 1, 9, 41, 'Dior Homme Parfum', 'dior-homme-parfum', '<p>At Dior Homme Parfum, we have a combo of iris and cocoa along with leather. Iris is clearly powdery with moderately sweet cocoa, the leather is not too thick, sharp but soft but still retains the characteristics of this note, overall giving us a masculine scent in a slightly groomed style. momentum, easy to spray and easy to get compliments.</p>', '<p>When it comes to Dior Homme, any perfume bottle deserves to become a monument, and for me personally, they are designer &quot;incense bottles&quot; but the quality is very niche. Especially the first version Dior Homme Orginal produced in 2005, opened a new trend in the history of men&#39;s perfume by putting iris notes with a characteristic powdery feeling as the main theme, as a premise for creating The male scents are softer, not too &quot;hard&quot; like before.</p>', 200, 0, 1, '2024-07-22 09:01:55', '2024-07-22 09:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `productimage`
--

CREATE TABLE `productimage` (
  `idImage` int(10) UNSIGNED NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `ImageName` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productimage`
--

INSERT INTO `productimage` (`idImage`, `idProduct`, `ImageName`, `created_at`, `updated_at`) VALUES
(63, 65, '[\"YSL10.png\"]', '2024-07-22 08:13:53', '2024-07-22 08:13:53'),
(66, 66, '[\"UOMO_BORN_IN_ROMA34.png\"]', '2024-07-22 08:33:11', '2024-07-22 08:33:11'),
(67, 67, '[\"my_bbr6.png\"]', '2024-07-22 08:37:50', '2024-07-22 08:37:50'),
(68, 68, '[\"dior_homme45.png\"]', '2024-07-22 09:01:55', '2024-07-22 09:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute`
--

CREATE TABLE `product_attribute` (
  `idProAttr` int(10) UNSIGNED NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `idAttrValue` int(11) UNSIGNED NOT NULL DEFAULT 11,
  `Quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attribute`
--

INSERT INTO `product_attribute` (`idProAttr`, `idProduct`, `idAttrValue`, `Quantity`, `created_at`, `updated_at`) VALUES
(210, 65, 5, 18, '2024-07-22 08:13:53', '2024-07-22 08:13:53'),
(213, 66, 5, 17, '2024-07-22 08:33:11', '2024-07-22 08:33:11'),
(214, 67, 4, 34, '2024-07-22 08:37:50', '2024-07-22 08:37:50'),
(215, 68, 5, 41, '2024-07-22 09:01:55', '2024-07-22 09:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `saleproduct`
--

CREATE TABLE `saleproduct` (
  `idSale` int(10) UNSIGNED NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `SaleName` varchar(255) NOT NULL,
  `SaleStart` datetime NOT NULL,
  `SaleEnd` datetime NOT NULL,
  `Percent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `viewer`
--

CREATE TABLE `viewer` (
  `idView` int(11) NOT NULL,
  `idCustomer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `viewer`
--

INSERT INTO `viewer` (`idView`, `idCustomer`, `idProduct`, `created_at`, `updated_at`) VALUES
(75, '3MO4mB8xk2pfvDjhZJcWWZ5LOATVqzil8CdUvXDa', 65, '2024-07-22 08:14:07', '2024-07-22 08:14:07'),
(76, '3MO4mB8xk2pfvDjhZJcWWZ5LOATVqzil8CdUvXDa', 66, '2024-07-22 08:19:50', '2024-07-22 08:19:50'),
(77, 'Tls8X43zJsNuj9Oq50qxci6BwVY6mp4OzIHo2TsO', 66, '2024-07-24 05:23:46', '2024-07-24 05:23:46'),
(78, 'Tls8X43zJsNuj9Oq50qxci6BwVY6mp4OzIHo2TsO', 67, '2024-07-24 05:27:00', '2024-07-24 05:27:00'),
(79, 'Tls8X43zJsNuj9Oq50qxci6BwVY6mp4OzIHo2TsO', 68, '2024-07-24 06:12:35', '2024-07-24 06:12:35'),
(80, '9', 68, '2024-07-24 06:12:52', '2024-07-24 06:12:52'),
(81, '9', 67, '2024-07-24 06:44:11', '2024-07-24 06:44:11'),
(82, '9', 65, '2024-07-24 08:37:06', '2024-07-24 08:37:06'),
(83, 'CypCamV6qYYn3xYZkWLPmRebPMJVnPRcZ6zra9X2', 68, '2024-07-31 05:07:11', '2024-07-31 05:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `idWish` int(10) UNSIGNED NOT NULL,
  `idCustomer` int(11) UNSIGNED NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`idAttribute`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`idAttrValue`),
  ADD KEY `idAttribute` (`idAttribute`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`idBill`),
  ADD KEY `idCustomer` (`idCustomer`);

--
-- Indexes for table `billinfo`
--
ALTER TABLE `billinfo`
  ADD KEY `idBill` (`idBill`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`idBlog`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`idBrand`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idCart`),
  ADD KEY `idCustomer` (`idCustomer`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idProAttr` (`idProAttr`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idCustomer`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `idCategory` (`idCategory`,`idBrand`),
  ADD KEY `idBrand` (`idBrand`);
ALTER TABLE `product` ADD FULLTEXT KEY `ProductName` (`ProductName`);

--
-- Indexes for table `productimage`
--
ALTER TABLE `productimage`
  ADD PRIMARY KEY (`idImage`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indexes for table `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD PRIMARY KEY (`idProAttr`),
  ADD KEY `idProduct` (`idProduct`,`idAttrValue`),
  ADD KEY `idAttrValue` (`idAttrValue`);

--
-- Indexes for table `saleproduct`
--
ALTER TABLE `saleproduct`
  ADD PRIMARY KEY (`idSale`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `viewer`
--
ALTER TABLE `viewer`
  ADD PRIMARY KEY (`idView`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`idWish`),
  ADD KEY `idCustomer` (`idCustomer`,`idProduct`),
  ADD KEY `idProduct` (`idProduct`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `idAttribute` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `idAttrValue` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `idBill` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `idBlog` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `idBrand` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `idCart` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `idCustomer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `idProduct` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `productimage`
--
ALTER TABLE `productimage`
  MODIFY `idImage` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `product_attribute`
--
ALTER TABLE `product_attribute`
  MODIFY `idProAttr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `saleproduct`
--
ALTER TABLE `saleproduct`
  MODIFY `idSale` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `viewer`
--
ALTER TABLE `viewer`
  MODIFY `idView` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `idWish` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD CONSTRAINT `attribute_value_ibfk_1` FOREIGN KEY (`idAttribute`) REFERENCES `attribute` (`idAttribute`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `billinfo`
--
ALTER TABLE `billinfo`
  ADD CONSTRAINT `billinfo_ibfk_1` FOREIGN KEY (`idBill`) REFERENCES `bill` (`idBill`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `billinfo_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`idProAttr`) REFERENCES `product_attribute` (`idProAttr`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`idBrand`) REFERENCES `brand` (`idBrand`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`idCategory`) REFERENCES `category` (`idCategory`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `productimage`
--
ALTER TABLE `productimage`
  ADD CONSTRAINT `productimage_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD CONSTRAINT `product_attribute_ibfk_1` FOREIGN KEY (`idAttrValue`) REFERENCES `attribute_value` (`idAttrValue`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_attribute_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `saleproduct`
--
ALTER TABLE `saleproduct`
  ADD CONSTRAINT `saleproduct_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `viewer`
--
ALTER TABLE `viewer`
  ADD CONSTRAINT `viewer_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
