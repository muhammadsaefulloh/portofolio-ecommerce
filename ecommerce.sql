-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Nov 2021 pada 19.08
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Baju', NULL, NULL),
(2, 'Celana', NULL, NULL),
(3, 'Hoodie', NULL, NULL),
(4, 'Daster', NULL, NULL),
(5, 'Rok', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_11_22_034003_create_categories_table', 1),
(5, '2021_11_22_034004_create_products_table', 1),
(6, '2021_11_22_151650_create_carts_table', 2),
(7, '2021_11_23_154453_create_transactions_table', 3),
(8, '2021_11_23_154518_create_transaction_details_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `desc`, `image`, `created_at`, `updated_at`) VALUES
(1, 4, 'Cornell', 229616, 'Dolorum aut non quis consequuntur cumque. Laudantium est ratione optio nihil culpa similique. Omnis sit voluptas et omnis omnis commodi fugiat dolor.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(2, 2, 'Horacio', 427031, 'Minus in harum porro. Nemo esse quaerat labore dolorum quas at. Quo architecto culpa voluptas accusantium et et.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(3, 5, 'Maxime', 945930, 'Ducimus ut debitis maxime rerum qui ut. Dolore sit quam ea nihil minima est. Quas commodi sit provident error magni quis ducimus.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(4, 2, 'Felix', 669092, 'Aut nisi veniam vel voluptatem. Excepturi placeat et dolore libero est aliquid provident.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(5, 5, 'Trystan', 141379, 'Nostrum ipsa quas eos quia voluptas voluptas. Quos vel et laborum commodi optio et vel.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(6, 2, 'Bernie', 492037, 'Dolorem assumenda porro voluptatem et quod. In ab at reprehenderit non delectus excepturi. Et ab sint et veniam sed magnam rerum.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(7, 5, 'Jamey', 252828, 'Velit omnis dolore autem aut consequatur libero sunt ipsa. Voluptatibus et recusandae deleniti ad totam.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(8, 2, 'Jeremie', 529942, 'Sed eum accusamus similique nemo. Sint exercitationem illo alias illum excepturi reiciendis architecto commodi. Omnis corrupti consequuntur enim enim sint.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(9, 5, 'Johathan', 177411, 'Sint dignissimos repudiandae incidunt illo nemo nobis cum. Id maxime odit voluptas aut minima cupiditate. Qui est aut quas sunt repellat iusto ducimus.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(10, 3, 'Noel', 323832, 'Nam ab rem ut molestiae. Consequuntur quidem eveniet cupiditate itaque modi quaerat quo.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(11, 3, 'Erich', 626068, 'Ducimus mollitia in quae quis et explicabo. Harum quis eligendi voluptas nihil omnis corrupti dolorum qui.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(12, 5, 'Kolby', 603236, 'Autem aut placeat corporis voluptas eos. Dolor consectetur sed non facilis vero qui est occaecati.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(13, 5, 'Jedidiah', 123335, 'Omnis inventore officiis et molestiae. Incidunt qui ullam aut sed.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(14, 5, 'Edward', 482318, 'Sed veritatis et vitae occaecati possimus. Excepturi aspernatur iusto porro deserunt non.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(15, 1, 'Moises', 892493, 'In commodi ab perferendis et est odit. Omnis sapiente temporibus natus voluptas minus temporibus culpa. Sequi sed ut excepturi omnis natus.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(16, 4, 'Keenan', 421017, 'Et nobis laborum et sit. Consequuntur nulla omnis omnis maxime tempora laborum est. Qui voluptas distinctio deleniti assumenda fugiat.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(17, 3, 'Major', 435082, 'Ullam labore fugiat consectetur. Omnis voluptas fuga non beatae accusamus non. Facilis quibusdam quo sunt omnis sapiente dolor laudantium ut.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(18, 2, 'Misael', 617608, 'Quisquam aut accusamus dicta quos aliquid quo aut unde. Quibusdam et aspernatur nobis. Neque laborum aut ut incidunt.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(19, 1, 'Shaun', 595365, 'Eius sit dolorem nisi repellendus voluptate dignissimos. Rerum saepe pariatur asperiores harum perspiciatis et. Omnis voluptatem quae rerum eius eaque.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(20, 5, 'Godfrey', 835560, 'Culpa harum necessitatibus fugit officiis. Et officiis laudantium quas commodi eveniet.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(21, 4, 'Braden', 938614, 'Voluptatem repellat est aliquam aspernatur culpa quae non. Vel facere adipisci molestiae rerum.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(22, 1, 'Orland', 830839, 'Debitis ducimus ducimus numquam est qui. Commodi eligendi rerum nulla et voluptatem recusandae. Assumenda quo magni fuga fugit suscipit est ab.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(23, 3, 'Nat', 652696, 'Sit nisi praesentium voluptas beatae nulla est. Voluptatem fuga aut vitae illo voluptatibus accusamus molestiae nam.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(24, 3, 'Abdul', 597781, 'Eum aliquid possimus in omnis voluptate. Rem assumenda ullam eveniet qui omnis ut alias similique.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(25, 4, 'Arnoldo', 815661, 'Qui veniam rerum ut saepe. Velit error omnis maxime inventore blanditiis quibusdam. Consequatur nemo voluptatibus odio provident ea et aut consequatur.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(26, 1, 'Dejon', 872254, 'Dicta voluptatibus sed et ea qui. Assumenda voluptatem fugit labore fugit totam reprehenderit aut.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(27, 3, 'Leonardo', 870628, 'Aut aut rerum exercitationem ut dolor id. Suscipit itaque sint quas quo laudantium nobis quisquam. Saepe consectetur facilis qui aut maiores consequuntur debitis.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(28, 4, 'Buck', 354527, 'Ex mollitia dolorem quia. Ut excepturi facilis soluta nesciunt ex dolores.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(29, 1, 'Mario', 846496, 'Incidunt incidunt eaque repellendus. Nihil sit et qui facilis dolor.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(30, 5, 'Emanuel', 448958, 'Et ipsa culpa unde iste qui voluptatem. Dolores consequatur consequatur quae eos est minus maxime necessitatibus. Et nam accusantium cum aut ut eos ipsam asperiores.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(31, 3, 'Elliot', 182889, 'Praesentium dolorem molestiae porro eligendi ut minima aspernatur error. Explicabo dolor et et dolorum minus est.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(32, 1, 'Rafael', 960387, 'Molestiae asperiores eum maiores sit dolorem. Omnis fugiat maiores atque explicabo.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(33, 3, 'Horace', 770626, 'Culpa similique quod laudantium commodi doloribus dolorem. Rem qui laboriosam voluptatum consequuntur nisi nihil.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(34, 1, 'Pedro', 655389, 'Quo non exercitationem dignissimos nihil nisi esse. Quod tenetur ex pariatur odit sunt omnis. Quasi consectetur autem consequatur illum hic.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(35, 5, 'Hubert', 166691, 'Tenetur cum sit molestiae soluta. Qui enim vel dignissimos est.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(36, 1, 'Jasper', 210850, 'Itaque perferendis inventore animi consectetur. Iusto quod quia quam error. A exercitationem ratione dicta suscipit saepe assumenda explicabo adipisci.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(37, 3, 'Ezekiel', 277826, 'Natus dolores quidem dolor laudantium illo deserunt. Blanditiis aut libero fuga cumque.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(38, 3, 'Kennith', 956392, 'Fugiat animi earum odit ratione delectus velit nulla debitis. Nam omnis laudantium velit magni ut nam qui.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(39, 1, 'Joany', 766510, 'Esse enim quo excepturi rerum repellat eos sint facere. Et dolore quae nulla ad velit aperiam. Quia voluptas molestias explicabo aliquam sed.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(40, 5, 'Sid', 706440, 'Sed voluptas provident quam pariatur. Ipsum voluptatem ut aut unde harum. Aut maiores soluta et laboriosam perspiciatis dolorum.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(41, 4, 'Elian', 859300, 'Ex nihil eaque dolorem libero. Tempore occaecati eaque numquam sit aut.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(42, 5, 'Wallace', 761315, 'Vel architecto ipsa autem architecto aut. Repudiandae non tempora quia tenetur. Ullam quidem rerum ipsam itaque ut natus.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(43, 1, 'Cristian', 147794, 'Voluptatem quo voluptate voluptatem fugiat sint optio. Et eos cum non eos.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(44, 4, 'Garret', 943162, 'Reiciendis architecto in explicabo quia accusamus. Explicabo at ipsa et nostrum aut ad veniam sit.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(45, 2, 'Hailey', 633433, 'Esse voluptate magni amet labore atque qui vero. Qui saepe et cumque et maiores reiciendis porro. Voluptatibus eius fuga veritatis cum quam.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(46, 4, 'Kayden', 326835, 'Soluta tempore impedit beatae tempora. Quia est eveniet doloribus itaque sint eligendi aperiam voluptates. Odio exercitationem non beatae beatae hic temporibus a.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(47, 3, 'Donnie', 777570, 'Perspiciatis beatae voluptatum et sit at unde. Neque libero sequi officiis ducimus dicta ut.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(48, 1, 'Gilbert', 480331, 'Sed corrupti dolores delectus ullam qui et veritatis. Et laudantium qui dolore est quaerat numquam minima. Dicta aliquid eum illum assumenda.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(49, 1, 'Nels', 569160, 'Eos corporis repudiandae nostrum culpa. Ducimus voluptates autem aut. Officiis impedit exercitationem id dolor accusamus.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42'),
(50, 1, 'Jayde', 731801, 'Praesentium quos sed ullam incidunt occaecati harum corporis. Nobis culpa reprehenderit expedita doloribus rerum quo tempora.', '/images/product.jpg', '2021-11-22 02:18:42', '2021-11-22 02:18:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-11-23 08:56:13', '2021-11-23 08:56:13'),
(2, 1, '2021-11-23 09:21:33', '2021-11-23 09:21:33'),
(3, 1, '2021-11-23 09:22:16', '2021-11-23 09:22:16'),
(4, 1, '2021-11-23 09:25:12', '2021-11-23 09:25:12'),
(5, 1, '2021-11-23 09:28:44', '2021-11-23 09:28:44'),
(6, 1, '2021-11-23 09:29:39', '2021-11-23 09:29:39'),
(7, 1, '2021-11-23 09:31:56', '2021-11-23 09:31:56'),
(8, 1, '2021-11-23 19:08:39', '2021-11-23 19:08:39'),
(9, 1, '2021-11-24 09:19:45', '2021-11-24 09:19:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2021-11-23 08:56:14', '2021-11-23 08:56:14'),
(2, 2, 1, 1, '2021-11-23 09:21:33', '2021-11-23 09:21:33'),
(3, 3, 1, 1, '2021-11-23 09:22:17', '2021-11-23 09:22:17'),
(4, 4, 1, 1, '2021-11-23 09:25:12', '2021-11-23 09:25:12'),
(5, 5, 1, 1, '2021-11-23 09:28:44', '2021-11-23 09:28:44'),
(6, 6, 1, 1, '2021-11-23 09:29:39', '2021-11-23 09:29:39'),
(7, 7, 1, 1, '2021-11-23 09:31:56', '2021-11-23 09:31:56'),
(8, 8, 1, 1, '2021-11-23 19:08:39', '2021-11-23 19:08:39'),
(9, 9, 2, 3, '2021-11-24 09:19:45', '2021-11-24 09:19:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'saeful', 'saeful@gmail.com', NULL, '$2y$10$wkvoLGbYPuVyYl5HklFyp.sN3sxQKGKiBeP4.MprP.ohQpoWtjY4K', 'banyumas', 979699, NULL, '2021-11-22 02:20:54', '2021-11-22 02:20:54');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_details_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transaction_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
