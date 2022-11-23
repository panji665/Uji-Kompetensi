-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 07:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ec`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_attribute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'ipsa dolorem', 'ipsa-dolorem', '2022-10-25 21:48:12', '2022-10-25 21:48:12'),
(2, 'autem dolore', 'autem-dolore', '2022-10-25 21:48:12', '2022-10-25 21:48:12'),
(3, 'enim et', 'enim-et', '2022-10-25 21:48:12', '2022-10-25 21:48:12'),
(4, 'ratione et', 'ratione-et', '2022-10-25 21:48:12', '2022-10-25 21:48:12'),
(5, 'voluptas quia', 'voluptas-quia', '2022-10-25 21:48:13', '2022-10-25 21:48:13'),
(6, 'aut rerum', 'aut-rerum', '2022-10-25 21:48:13', '2022-10-25 21:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '4', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_08_11_150643_create_sessions_table', 1),
(7, '2022_08_14_033920_create_categories_table', 1),
(8, '2022_08_15_033423_create_products_table', 1),
(9, '2022_08_29_034431_create_home_sliders_table', 1),
(10, '2022_08_30_154437_create_home_categories_table', 1),
(11, '2022_08_31_080732_create_sales_table', 1),
(12, '2022_09_11_052301_create_coupons_table', 1),
(13, '2022_09_11_120954_add_expiry_date_to_coupons_table', 1),
(14, '2022_09_11_130326_create_orders_table', 1),
(15, '2022_09_11_130352_create_order_items_table', 1),
(16, '2022_09_11_130420_create_shippings_table', 1),
(17, '2022_09_11_130446_create_transactions_table', 1),
(18, '2022_09_15_055951_add_delivered_canceled_date_to_orders_table', 1),
(19, '2022_09_15_095503_create_reviews_table', 1),
(20, '2022_09_15_101145_add_rstatus_to_order_items_table', 1),
(21, '2022_09_15_131745_create_contacts_table', 1),
(22, '2022_09_15_135053_create_settings_table', 1),
(23, '2022_09_17_074340_create_shoppingcart_table', 1),
(24, '2022_09_17_081820_create_subcategories_table', 1),
(25, '2022_09_17_091616_add_subcategory_id_to_products_table', 1),
(26, '2022_09_17_102551_create_profiles_table', 1),
(27, '2022_09_17_122556_create_product_attributes_table', 1),
(28, '2022_09_17_123215_create_attribute_values_table', 1),
(29, '2022_11_22_040127_add_mobile_no_in_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `shopping_charge` int(11) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `shopping_charge`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
(3, 19, '84.00', '0.00', '17.64', 4, '101.64', 'wesdgaa', 'asgfvsbvg', '124325346641', 'willcaptcha0@gmail.com', 'sacofaibs   e', 'sacofaibs   e', 'SDAGFVESDW', 'ASFWAFW', 'wfaeDVW', '5425116757', 'ordered', 0, '2022-11-22 00:24:51', '2022-11-22 00:24:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `options` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`, `options`) VALUES
(3, 1, 3, '84.00', 1, '2022-11-22 00:24:51', '2022-11-22 00:24:51', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(1, 'nulla sunt nihil consequatur', 'nulla-sunt-nihil-consequatur', 'Odio distinctio aut accusantium eum accusamus. Nemo illum ut dolore blanditiis. Recusandae harum ut iste repellendus ut aliquam quibusdam.', 'Est sint alias optio in. Harum quas illo praesentium sapiente. Quisquam exercitationem debitis eos sapiente doloremque ad. Voluptatem vitae ullam qui eum explicabo et. Est praesentium eveniet ut est. Esse nemo vero et vel incidunt qui. Qui molestiae a animi dolorum. Vel dolores ex ipsa consequatur reprehenderit ut quidem. Aut nesciunt voluptatum possimus dolor. Est sed dolores earum dolor tenetur enim. Qui impedit quaerat quia occaecati perspiciatis.', '84.00', NULL, '271', 'instock', 0, 118, 'digital_3.jpg', NULL, 2, '2022-10-25 21:48:56', '2022-10-25 21:48:56', NULL),
(2, 'sed et aut et', 'sed-et-aut-et', 'Magnam expedita doloribus molestiae. Hic voluptas reprehenderit et dolorem minus repellat. Aliquid dolores nihil distinctio blanditiis magnam. Nisi deserunt est labore in officia non dolore.', 'Similique mollitia nemo sit est eum minima dignissimos dolores. Dolorem quos exercitationem dignissimos laboriosam ea inventore molestiae. Nisi at minima ea in eos. Qui cupiditate rerum enim consequatur quia. Optio maxime impedit vel ut voluptatem cupiditate. Quisquam ducimus est nobis cupiditate. Eius ut accusantium eos eveniet.', '26.00', NULL, '365', 'instock', 0, 145, 'digital_20.jpg', NULL, 5, '2022-10-25 21:48:56', '2022-10-25 21:48:56', NULL),
(3, 'quo aut modi sint', 'quo-aut-modi-sint', 'Explicabo voluptas nihil hic maxime. Ut sit et quos voluptas voluptas.', 'Voluptas placeat ipsa et dolorum quaerat. Dicta illum recusandae voluptatem rerum. Et ipsa nam ut voluptatibus inventore. Vero dolorum odio commodi aliquid quos. Sint sequi incidunt nostrum enim iusto est. Voluptas architecto voluptas deleniti nam aut. Ut non pariatur error tempora at rem cupiditate. Porro vel voluptatem et.', '170.00', NULL, '417', 'instock', 0, 153, 'digital_5.jpg', NULL, 4, '2022-10-25 21:48:56', '2022-10-25 21:48:56', NULL),
(4, 'excepturi expedita et recusandae', 'excepturi-expedita-et-recusandae', 'Mollitia omnis deleniti necessitatibus quisquam. Et veritatis tenetur sunt hic. Velit magni est beatae.', 'Vero a dolores ipsam. Fugiat ut et autem sed sunt qui eos et. Ut dicta ut sunt accusamus eaque maiores distinctio. Molestias saepe qui rerum et perspiciatis voluptas quos ut. Repellat suscipit voluptas delectus repellat aspernatur atque excepturi id. Eos consectetur autem et eos qui molestias ducimus nemo. Eius et maxime a. Iure recusandae nemo voluptatem est saepe et. Corporis ut voluptate cumque aliquid explicabo a dicta.', '258.00', NULL, '288', 'instock', 0, 175, 'digital_12.jpg', NULL, 4, '2022-10-25 21:48:56', '2022-10-25 21:48:56', NULL),
(5, 'odit et voluptatem qui', 'odit-et-voluptatem-qui', 'Amet voluptates qui nostrum qui corporis. Voluptate maiores nam voluptas autem est ab rerum. Ratione neque deleniti quos.', 'Vel reiciendis quasi et debitis optio. Magni est distinctio sit soluta doloribus. Quisquam aspernatur sapiente qui facilis inventore rerum ea. Aspernatur provident beatae voluptas architecto ipsum. Velit praesentium sed illo. Consequatur ipsam dolorem et reprehenderit voluptatem veniam. Animi provident doloribus iste velit eos et. Qui maxime natus et assumenda. Tempore et laborum aliquid debitis. Ad ut nihil ut qui dolorum iusto. Vero est rerum magnam.', '28.00', NULL, '162', 'instock', 0, 197, 'digital_16.jpg', NULL, 2, '2022-10-25 21:48:56', '2022-10-25 21:48:56', NULL),
(6, 'libero occaecati eum adipisci', 'libero-occaecati-eum-adipisci', 'Est nulla voluptates sint molestiae magni. Et facere repellendus provident eum qui voluptatem dolorem quidem.', 'Itaque repudiandae qui aliquam. Aut quod sapiente earum unde amet unde. Dolorum eos autem itaque velit facilis explicabo. Sed voluptatum perferendis est et. In dolores aut et rerum. Tempore nulla voluptatem corrupti laudantium excepturi architecto impedit. Non dolore iure voluptas eveniet placeat quibusdam. Perferendis laboriosam voluptatum illum velit facilis sit. Soluta optio officiis porro quibusdam temporibus facere.', '483.00', NULL, '355', 'instock', 0, 179, 'digital_7.jpg', NULL, 3, '2022-10-25 21:48:56', '2022-10-25 21:48:56', NULL),
(7, 'molestiae rem magni doloremque', 'molestiae-rem-magni-doloremque', 'Explicabo atque maxime omnis quia reiciendis et vero. Quaerat consectetur cumque ea minus. Reprehenderit aut et autem omnis perferendis. Minima dicta eveniet quaerat nisi.', 'Quos aspernatur explicabo quis laboriosam ipsam. Libero laudantium fuga atque. Debitis et quod numquam et eius tempore voluptatem. Molestiae quisquam numquam assumenda. Ut laboriosam ut ipsa. Quia tenetur doloremque provident temporibus. Quos molestiae et aut molestiae ut. A quod nam dolores itaque omnis aut. Quae impedit ducimus voluptas ipsam. Recusandae at sit voluptatibus voluptas. Consequuntur eos eos reprehenderit non nihil minima.', '390.00', NULL, '494', 'instock', 0, 188, 'digital_19.jpg', NULL, 1, '2022-10-25 21:48:56', '2022-10-25 21:48:56', NULL),
(8, 'et sint dolores consequatur', 'et-sint-dolores-consequatur', 'Rerum dolorem accusantium ad nobis. Provident vel minima id ut. Esse ullam non a ducimus optio. Omnis aut quam reprehenderit id aliquam autem qui.', 'Quas sunt cupiditate aut nobis enim. Non praesentium rerum voluptatum aperiam. Rerum iusto aut in. Facere consequatur dolor voluptas ab fugiat similique tempora facere. Aliquam harum incidunt totam repellat tempore veritatis natus. Fugit cum alias dolores cupiditate hic doloremque eum ut. Illo nesciunt voluptatem et dolor. Nihil deleniti molestias et quia voluptas error.', '329.00', NULL, '326', 'instock', 0, 178, 'digital_22.jpg', NULL, 4, '2022-10-25 21:48:56', '2022-10-25 21:48:56', NULL),
(9, 'et quis quia commodi', 'et-quis-quia-commodi', 'Aspernatur ipsam dignissimos quas eaque. Deleniti consequuntur suscipit qui ut suscipit rerum cupiditate. Minus in sit dolorem.', 'Commodi quia deleniti delectus quo quod voluptatem fugiat. Nulla non explicabo est molestiae beatae cumque. Autem repellendus voluptates corrupti facilis rerum minus. Qui voluptas distinctio ea sint. Numquam illum neque ab quam. Beatae ad nostrum est. Vel in culpa sapiente maiores occaecati nam rem. Possimus nam et eum provident magni sit rerum. Est possimus dolor vel culpa. Quia esse et et et ipsa. Saepe quos esse beatae et esse et.', '170.00', NULL, '486', 'instock', 0, 113, 'digital_10.jpg', NULL, 3, '2022-10-25 21:48:56', '2022-10-25 21:48:56', NULL),
(10, 'blanditiis incidunt aut voluptas', 'blanditiis-incidunt-aut-voluptas', 'Ut quasi omnis qui ut. Dolorum praesentium sunt consectetur voluptatem provident. Nostrum sed corporis sed et voluptate reprehenderit.', 'Sint exercitationem inventore fugiat quasi nobis quidem sed. Tempora rerum repudiandae et et. Voluptatem aspernatur rerum officia sapiente numquam. Consectetur repudiandae esse eos facilis sed dolores. Beatae inventore asperiores ipsam cumque. Accusantium est ad quae ut magni unde. Doloremque itaque quo sit fugit animi. Est dolor quia impedit aut in. Tempore fuga voluptatem laboriosam pariatur veniam. Officiis esse et ab. Quas voluptates delectus magni qui repudiandae.', '190.00', NULL, '183', 'instock', 0, 169, 'digital_15.jpg', NULL, 6, '2022-10-25 21:48:56', '2022-10-25 21:48:56', NULL),
(11, 'sunt laudantium qui pariatur', 'sunt-laudantium-qui-pariatur', 'Ab similique maxime soluta molestiae quaerat. Modi quam occaecati libero vel.', 'Perspiciatis aperiam enim est aut illo atque tempore. Voluptatum odit alias consequatur aut quos quam itaque. Atque itaque reprehenderit aperiam. Temporibus vitae et aut aspernatur ut voluptatem. Excepturi deserunt earum dolores cumque omnis omnis. Velit ab vero distinctio dolor qui accusantium voluptas. Aut quidem illo nemo fugit ipsum natus ut. Optio vitae officia quisquam est. Aut laudantium similique repellat commodi et velit voluptates. Molestias rerum occaecati velit.', '428.00', NULL, '166', 'instock', 0, 151, 'digital_14.jpg', NULL, 4, '2022-10-25 21:48:56', '2022-10-25 21:48:56', NULL),
(12, 'tenetur nam qui a', 'tenetur-nam-qui-a', 'Incidunt repellendus qui et commodi dolorem iure aliquid dolorem. Corrupti velit id aliquam tempora similique fugit. Fugiat atque dolores ut vel animi.', 'Et est voluptatem tenetur amet et. Eum unde est repudiandae consequatur sed sed. Qui doloremque non exercitationem nesciunt tenetur modi libero laborum. Facere eveniet earum adipisci qui rem in consequuntur nisi. Magni eius dicta accusantium voluptas qui. Qui a temporibus voluptatem deleniti. Commodi pariatur velit laboriosam tenetur maxime veritatis commodi. Porro incidunt provident dolores omnis.', '135.00', NULL, '380', 'instock', 0, 139, 'digital_4.jpg', NULL, 4, '2022-10-25 21:48:56', '2022-10-25 21:48:56', NULL),
(13, 'consequatur laborum culpa fugit', 'consequatur-laborum-culpa-fugit', 'Ipsam a libero veniam reprehenderit sit inventore inventore. Et necessitatibus vel ut qui nulla explicabo. Ut qui iure nesciunt fuga vero ut.', 'Eos quia numquam quasi quidem. Omnis expedita omnis rerum voluptas. Ea tenetur error voluptas eligendi. Omnis tempora amet amet totam minima. Laudantium est aperiam voluptas dignissimos nesciunt aut. Odit aut ipsam eum ut rem. Nesciunt nobis deserunt et odio quae. Accusantium dolores molestiae sed. Optio at soluta eveniet doloremque facere ipsa cumque illo. Labore esse natus recusandae et. Ut est culpa dolor ea iste. Animi voluptatem quae molestiae iure.', '377.00', NULL, '421', 'instock', 0, 161, 'digital_21.jpg', NULL, 2, '2022-10-25 21:48:57', '2022-10-25 21:48:57', NULL),
(14, 'omnis quos ullam enim', 'omnis-quos-ullam-enim', 'Illo beatae et neque et atque aut vel. Hic est suscipit culpa veritatis voluptatem. Velit sit ducimus vel voluptatem et voluptas porro.', 'Debitis quod inventore consequatur neque cum adipisci provident saepe. Et molestias laudantium praesentium voluptate. Vitae et libero rem ea voluptas ut voluptatem hic. Ex facere asperiores maxime voluptatem. Voluptatibus assumenda corrupti numquam nemo maiores quisquam veniam. Saepe blanditiis quasi vitae ex aliquam. Ipsam soluta unde doloremque sed nostrum. Sapiente culpa neque consectetur commodi. Illo adipisci et omnis ipsum provident non. Sed aut error ut perspiciatis.', '467.00', NULL, '220', 'instock', 0, 196, 'digital_6.jpg', NULL, 2, '2022-10-25 21:48:57', '2022-10-25 21:48:57', NULL),
(15, 'et aliquam quae iste', 'et-aliquam-quae-iste', 'Ab architecto quia suscipit beatae veniam nihil iure. Sed necessitatibus magni saepe saepe repellendus saepe cum. Autem eum aut dolore. Optio et ea quia.', 'Consequuntur voluptatem nobis est perspiciatis. Laboriosam et facilis dolore non deleniti hic laboriosam. Quia molestiae nihil similique quia provident. Et facere delectus rerum voluptatum. Nihil odit enim perspiciatis ipsa autem est. Est dignissimos aut consequuntur nihil rem. Et et qui porro voluptatum quibusdam inventore sit. Qui qui nihil et et sit cupiditate sed. Officia delectus voluptatem possimus eaque. Quia laudantium blanditiis fugit ut voluptatum aut accusantium.', '45.00', NULL, '344', 'instock', 0, 181, 'digital_2.jpg', NULL, 2, '2022-10-25 21:48:57', '2022-10-25 21:48:57', NULL),
(16, 'minima animi voluptatem vel', 'minima-animi-voluptatem-vel', 'Vel consequatur magni aspernatur ratione deleniti. Ut veritatis et voluptatem voluptatem qui.', 'Exercitationem consequuntur tempore laboriosam ut ex. Dolor voluptatibus aut aut et. Omnis iure sint quod architecto. Blanditiis ut quo et. Nam asperiores possimus est rem et assumenda. Quaerat harum doloremque veritatis qui dignissimos itaque voluptatum. Aut consequatur quibusdam ratione est architecto impedit. Et exercitationem dicta magnam consectetur.', '418.00', NULL, '245', 'instock', 0, 171, 'digital_9.jpg', NULL, 2, '2022-10-25 21:48:57', '2022-10-25 21:48:57', NULL),
(17, 'autem beatae adipisci doloremque', 'autem-beatae-adipisci-doloremque', 'Amet accusantium perferendis beatae. In enim nobis quia dolores et. Sint inventore neque rerum deserunt.', 'Ex quis inventore ducimus et tenetur consequatur. Ratione quod explicabo autem libero perferendis voluptas. Aliquam doloribus culpa est et. Perferendis fuga labore facilis eaque vel veritatis soluta. Vel earum dolorem aliquid impedit eum. Dolores quaerat qui impedit voluptatum nobis illo vitae consequatur. Et possimus accusantium expedita. Ipsa nemo sequi rerum dignissimos.', '105.00', NULL, '328', 'instock', 0, 186, 'digital_11.jpg', NULL, 2, '2022-10-25 21:48:57', '2022-10-25 21:48:57', NULL),
(18, 'veniam facilis minima vitae', 'veniam-facilis-minima-vitae', 'Minima beatae eius impedit inventore. Id itaque blanditiis temporibus qui. Labore velit magnam enim aut.', 'Ea ut officiis odio doloremque officia doloribus. Et accusamus reprehenderit quam. Est ullam ex ipsa aut officia delectus. Fugit sit perspiciatis omnis consequatur omnis placeat. Nulla quam error non quidem quod excepturi expedita. Aperiam qui qui dolores. Expedita ratione et illum minima iusto animi accusantium tempore. Ex harum quos voluptate mollitia maiores fuga.', '105.00', NULL, '176', 'instock', 0, 106, 'digital_18.jpg', NULL, 5, '2022-10-25 21:48:57', '2022-10-25 21:48:57', NULL),
(19, 'maiores est doloribus quia', 'maiores-est-doloribus-quia', 'Omnis magnam sunt eveniet autem. Quis in quia optio quam perspiciatis. Ex sit at quia enim est sunt iusto. Quo pariatur quia odio nam.', 'Est rerum sint laudantium similique fuga et sunt. Illo ut et rerum sit quia. Nesciunt ut quisquam optio minima harum beatae ex. Rem corporis minus at eos adipisci iure itaque velit. Necessitatibus nobis aut ad magnam excepturi voluptas nesciunt. Necessitatibus eaque ut deleniti deserunt. Distinctio aut dolore eveniet officia nihil consequatur. Iste quam maxime praesentium nobis. Dolores placeat qui aut rerum cumque illum.', '92.00', NULL, '301', 'instock', 0, 128, 'digital_13.jpg', NULL, 5, '2022-10-25 21:48:57', '2022-10-25 21:48:57', NULL),
(20, 'quo deleniti delectus illum', 'quo-deleniti-delectus-illum', 'Et nobis id sunt ea saepe debitis. Cupiditate modi qui hic necessitatibus iste quos. Voluptatem vel at est laborum repellendus quam aut.', 'Iste alias vitae libero enim rem vitae. Quo ut quo dolores nihil. Consequatur alias qui et rerum unde aut. Suscipit aut incidunt incidunt. Earum provident ratione distinctio tenetur assumenda voluptatem at. Esse tenetur dignissimos officia perspiciatis molestiae delectus error. Vel labore et omnis provident eum. Impedit earum et corrupti aut modi et maiores. Quo quos perferendis maiores praesentium. Aliquid est voluptates id ipsam.', '300.00', NULL, '205', 'instock', 0, 184, 'digital_1.jpg', NULL, 2, '2022-10-25 21:48:57', '2022-10-25 21:48:57', NULL),
(21, 'consequatur sed est itaque', 'consequatur-sed-est-itaque', 'Ratione magnam unde possimus est. Quia officiis corporis ut blanditiis deserunt. Quia facere cum voluptas qui fugit sequi. Aut quis sint consequatur natus aliquam minima repudiandae.', 'Omnis et vel ut sequi. A nam soluta consequatur hic dolorum. Repellendus nisi voluptates voluptate ratione enim. Quis illo quia animi eum voluptas vitae voluptatem. Voluptatem voluptas et omnis dolor corporis. Sapiente tempore ipsa hic omnis beatae. Ut quae quis id reiciendis ab rerum. Voluptatem modi porro cupiditate. Expedita ducimus impedit in ex ut distinctio. Vitae esse aliquam qui repudiandae ipsa placeat nam. Quas aut dolore officiis expedita doloremque.', '279.00', NULL, '287', 'instock', 0, 110, 'digital_8.jpg', NULL, 2, '2022-10-25 21:48:57', '2022-10-25 21:48:57', NULL),
(22, 'nostrum debitis itaque suscipit', 'nostrum-debitis-itaque-suscipit', 'Sit minus unde a nam iusto error fuga. Odit voluptas illo totam numquam. Ipsum sunt soluta quasi sunt quidem.', 'Ullam quaerat aut fugiat cumque eaque. Ullam illo ipsa enim qui cumque id enim. Ut repellendus ipsam dolorum consequatur qui vel voluptas perferendis. Perspiciatis culpa ab ut voluptatibus sit ullam perferendis. Suscipit non perspiciatis facere eaque ratione dolor non. Aliquam velit soluta magnam et aut. Nesciunt nobis sit perferendis. Repellendus voluptate ea quia alias.', '457.00', NULL, '305', 'instock', 0, 101, 'digital_17.jpg', NULL, 6, '2022-10-25 21:48:57', '2022-10-25 21:48:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for admin & USR for user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twiter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twiter`, `facebook`, `pinterest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'William_G_Morgan@gmail.com', '+196582389440', '+191583372501', '50 Oakland Avc,#206 A City, Florida, 32104 United States of America', '', 'W.Morgan.com', 'W.Morgan.com', 'W.Morgan.com', 'W.Morgan.com', 'W.Morgan.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('dennyyulianto23@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:28:\"nulla sunt nihil consequatur\";s:5:\"price\";d:84;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-26 00:47:40', NULL),
('dennyyulianto23@gmail.com', 'saveForLater', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-25 23:38:59', NULL),
('dennyyulianto23@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-26 00:47:41', NULL),
('r.9070233@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:28:\"nulla sunt nihil consequatur\";s:5:\"price\";d:84;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-21 20:40:14', NULL),
('r.9070233@gmail.com', 'saveForLater', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-21 20:40:14', NULL),
('r.9070233@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-21 20:37:33', NULL),
('willcaptcha0@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-22 00:28:45', NULL),
('willcaptcha0@gmail.com', 'saveForLater', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-22 00:28:45', NULL),
('willcaptcha0@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-22 00:28:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(3, 19, 3, 'cod', 'pending', '2022-11-22 00:24:51', '2022-11-22 00:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM = admin and USR = user/cust',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile_no`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(14, 'wildhan', 'r.9070233@gmail.com', NULL, NULL, '$2y$10$C0B5ffLq4IHVdKGvrJ2D8.53edzS5d1lC9qG5DKjQvtna5vbIpNwS', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-11-21 19:37:27', '2022-11-21 19:37:27'),
(15, '1', 'logitech@logi.com', NULL, NULL, '$2y$10$.ux7LpvMF/jvfa.nJUsfcOxXG41FErkNcSo5mvlVAvTXqT3cBmYV.', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-11-21 20:42:15', '2022-11-21 20:42:15'),
(19, 'wildhan', 'willcaptcha0@gmail.com', NULL, '2022-11-22 00:24:03', '$2y$10$sYgfHJg6K68tVjbss4A.ruNAdm1ApGgS2EFTiCc9x7CTLGhW1XNoi', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-11-22 00:23:34', '2022-11-22 00:24:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_product_attribute_id_foreign` (`product_attribute_id`),
  ADD KEY `attribute_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
