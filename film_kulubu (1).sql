-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 19 Ara 2025, 11:27:01
-- Sunucu sürümü: 8.4.3
-- PHP Sürümü: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `film_kulubu`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `genres`
--

CREATE TABLE `genres` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `genres`
--

INSERT INTO `genres` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Aksiyon', 'aksiyon', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(2, 'Komedi', 'komedi', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(3, 'Drama', 'drama', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(4, 'Bilim-Kurgu', 'bilim-kurgu', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(5, 'Korku', 'korku', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(6, 'Romantik', 'romantik', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(7, 'Gerilim', 'gerilim', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(8, 'Macera', 'macera', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(9, 'Animasyon', 'animasyon', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(10, 'Suç', 'suc', '2025-12-17 18:27:15', '2025-12-17 18:27:15');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `genre_movie`
--

CREATE TABLE `genre_movie` (
  `id` bigint UNSIGNED NOT NULL,
  `genre_id` bigint UNSIGNED NOT NULL,
  `movie_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `genre_movie`
--

INSERT INTO `genre_movie` (`id`, `genre_id`, `movie_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, NULL, NULL),
(2, 6, 1, NULL, NULL),
(3, 10, 2, NULL, NULL),
(4, 2, 3, NULL, NULL),
(5, 4, 3, NULL, NULL),
(6, 7, 3, NULL, NULL),
(7, 10, 4, NULL, NULL),
(8, 6, 5, NULL, NULL),
(9, 10, 5, NULL, NULL),
(10, 5, 6, NULL, NULL),
(11, 5, 7, NULL, NULL),
(12, 10, 7, NULL, NULL),
(13, 9, 8, NULL, NULL),
(14, 2, 9, NULL, NULL),
(15, 6, 9, NULL, NULL),
(16, 3, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_15_200145_create_movies_table', 1),
(5, '2025_12_15_200706_create_reviews_table', 1),
(6, '2025_12_15_201714_create_personal_access_tokens_table', 1),
(7, '2025_12_17_210059_add_is_admin_to_users_table', 1),
(8, '2025_12_17_212416_create_genres_table', 1),
(9, '2025_12_17_212420_create_genre_movie_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `movies`
--

CREATE TABLE `movies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `release_year` year NOT NULL,
  `poster_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `director`, `release_year`, `poster_url`, `created_at`, `updated_at`) VALUES
(1, 'Qui est blanditiis debitis.', 'Et nisi consectetur quibusdam repellendus. Placeat veritatis explicabo facere doloremque ab perspiciatis et. Impedit delectus excepturi est quo et vitae nihil rerum. Sed neque sit temporibus laborum quidem.', 'Otha Fisher I', '1986', 'https://picsum.photos/seed/982/400/600', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(2, 'Fugiat ea eum.', 'Consequatur sit est tenetur ipsa et. Molestiae velit dolorem fugit aperiam ullam sapiente nihil. Facere adipisci at excepturi assumenda quia.', 'Nicolette Kuhn', '2002', 'https://picsum.photos/seed/582/400/600', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(3, 'Repellat nam et.', 'Ducimus commodi pariatur ut dolorem tempora autem nostrum. Quaerat et est minima recusandae culpa deserunt saepe tenetur.', 'Ms. Marlene Mitchell IV', '1975', 'https://picsum.photos/seed/248/400/600', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(4, 'Harum dolorum nam dignissimos.', 'Est fuga dolorum nihil ea aut quia. Aspernatur facilis suscipit occaecati suscipit. Et quae dolor quasi sit veritatis vero. Provident rerum accusamus est ipsa nihil qui.', 'Dr. Virgie Bergnaum', '1975', 'https://picsum.photos/seed/849/400/600', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(5, 'Est exercitationem autem quae.', 'Excepturi cum et temporibus esse harum dolores quibusdam. Optio quo aperiam incidunt vel aliquam dicta. Repellendus est et itaque quisquam fugit.', 'Prof. Jarred Swift', '1986', 'https://picsum.photos/seed/424/400/600', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(6, 'Architecto quasi explicabo optio.', 'Quibusdam consectetur illo dolore repellat. Illum harum fugit ut alias numquam animi et voluptatum. Nobis nostrum et quaerat accusamus voluptas aut id adipisci. Neque nihil placeat consequuntur facilis qui.', 'Sienna Halvorson', '2020', 'https://picsum.photos/seed/328/400/600', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(7, 'Vel unde aut.', 'Est deleniti laudantium aut aut dolores debitis. Iste sit ea voluptas est aut voluptate et. Voluptas sequi quas dolores.', 'Nettie Kemmer', '2011', 'https://picsum.photos/seed/276/400/600', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(8, 'Labore nihil soluta.', 'Voluptas facilis aliquid quia qui dolorem nisi. Iure rerum porro praesentium eos error est. Rerum repudiandae ea dignissimos.', 'Thelma Mann', '1988', 'https://picsum.photos/seed/978/400/600', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(9, 'Dolore et pariatur.', 'Ipsam soluta ex quis vel. Non ratione quidem qui quo. Eum ipsam necessitatibus tempore voluptas quia atque. Ut maxime sint omnis eum perferendis culpa. Sit non nostrum fugiat est corporis.', 'Evalyn Kuvalis', '1973', 'https://picsum.photos/seed/474/400/600', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(10, 'Autem voluptatem delectus.', 'Distinctio pariatur minima eum ut maiores dignissimos ut repellat. Optio sit quibusdam cumque. Sed et placeat totam quibusdam eius ducimus assumenda.', 'Dr. Alexys Hoeger I', '1977', 'https://picsum.photos/seed/304/400/600', '2025-12-17 18:27:15', '2025-12-17 18:27:15');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `movie_id` bigint UNSIGNED NOT NULL,
  `rating` tinyint NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `movie_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 2, 'Atque consectetur maiores omnis expedita.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(2, 10, 1, 1, 'Rerum adipisci nemo temporibus voluptatum eius veritatis qui.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(3, 6, 5, 3, 'Eligendi aut nam dicta maiores.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(4, 10, 7, 1, 'Maiores quasi quidem aut nostrum.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(5, 6, 5, 4, 'Quasi laudantium ipsum rerum aut dolores impedit accusantium.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(6, 2, 5, 2, 'Eius ipsum blanditiis aut dolor voluptatum repellat.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(7, 11, 7, 3, 'Culpa fugit totam id deleniti iste et sunt.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(8, 11, 5, 2, 'Amet natus dolores ipsa velit est consectetur perferendis.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(9, 4, 9, 4, 'Accusantium nulla ut voluptates laudantium.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(10, 11, 5, 3, 'Non aut et deleniti mollitia dolore accusamus.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(11, 8, 2, 1, 'Enim fuga quod quia quaerat iste consequatur.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(12, 5, 6, 1, 'Quia veniam quia odio non quos possimus et.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(13, 3, 7, 1, 'Enim maiores sequi ea rerum et.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(14, 9, 1, 2, 'Suscipit reprehenderit quibusdam ut ut quod qui eos.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(15, 2, 6, 4, 'Sit possimus rerum et voluptatem nesciunt.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(16, 11, 6, 2, 'Est vel rerum ea esse repellendus fugiat et ut.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(17, 6, 6, 3, 'Pariatur quia debitis minima.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(18, 11, 6, 5, 'Molestias quibusdam omnis fugiat ullam eum magni quae.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(19, 2, 9, 5, 'Facere accusantium consequatur qui ut quia quidem.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(20, 2, 4, 3, 'A non suscipit dignissimos expedita vero eos.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(21, 7, 10, 1, 'Unde quis est voluptates et sunt nobis.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(22, 3, 9, 3, 'Id provident pariatur qui qui est soluta provident.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(23, 7, 9, 3, 'Et sunt numquam atque assumenda molestiae suscipit voluptatem.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(24, 9, 1, 3, 'Officiis quibusdam nisi deserunt quo voluptas reprehenderit quas.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(25, 6, 8, 1, 'Est velit ullam harum laborum hic voluptatem.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(26, 9, 1, 2, 'Animi unde excepturi nisi beatae distinctio saepe voluptas.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(27, 11, 3, 5, 'Qui id unde aut officiis.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(28, 6, 3, 3, 'Et voluptas ut quidem.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(29, 9, 6, 4, 'Non recusandae aperiam consequuntur molestiae in repellendus nam.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(30, 2, 7, 4, 'Dolores placeat ut consequatur et atque corporis sequi.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(31, 3, 5, 2, 'Sint sequi eos nihil et laboriosam.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(32, 3, 6, 3, 'Occaecati nesciunt qui quia praesentium.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(33, 7, 7, 1, 'Ut odit voluptate itaque expedita dolores occaecati accusantium.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(34, 11, 6, 2, 'Aspernatur alias error perspiciatis est ad ut.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(35, 3, 6, 5, 'Voluptates et impedit aliquid nemo ullam est.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(36, 8, 1, 2, 'Velit autem debitis aliquam reiciendis suscipit esse.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(37, 6, 8, 2, 'Dolore facilis esse cum aut est et tempora.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(38, 6, 6, 1, 'Et nemo et voluptatem.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(39, 10, 9, 1, 'Voluptas amet dolorem non provident ea corrupti porro.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(40, 3, 9, 4, 'Tempora id repudiandae pariatur explicabo qui.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(41, 2, 5, 4, 'Debitis quia deleniti omnis ut quos repudiandae quod.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(42, 2, 3, 4, 'Incidunt similique qui iste iste odit nulla.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(43, 9, 1, 2, 'Tempora nostrum debitis eum recusandae voluptas sint non.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(44, 2, 5, 5, 'Sapiente dolorem dolore aut minus deserunt qui est dignissimos.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(45, 5, 8, 3, 'Perspiciatis sint enim assumenda quis velit nihil quod.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(46, 3, 2, 3, 'Dicta voluptate ab sunt.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(47, 4, 8, 2, 'Enim quibusdam ut sit non reiciendis ipsa cumque distinctio.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(48, 11, 4, 3, 'Similique et dignissimos praesentium accusantium quod.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(49, 10, 7, 4, 'Facere rerum occaecati fuga autem quo.', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(50, 3, 3, 5, 'Eligendi sint nobis quaerat velit iste.', '2025-12-17 18:27:15', '2025-12-17 18:27:15');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('81AJPzHNkECBzBf5CvqC6wGWxWOfgiqyYwAhMzKC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZk44a2pRNG84UG1HWnA2MFdtMmNmMFVKanZqV0Znekd6SlUweHpUYiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1766044074),
('kt8sGA9vHol6uzjaYMnE041TY1fzkDUGPuO4O0V1', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMkNIOTFmSnhuaHhkd0JCdkNlQjM4djlpY0libEFVQUQ3Tk45bjVPTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTI7fQ==', 1766010876);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@filmkulubu.com', NULL, '$2y$12$jy44ysJI055AzMYaOgNO/.veAgRXifaRWBpWT99SI/PX2btnHNm9O', 1, NULL, '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(2, 'Clotilde Block', 'trantow.boris@example.com', '2025-12-17 18:27:15', '$2y$12$2eGsBoPMmJS7pzeTCE1dlO.snPFnTg6o1v8BgKBBSJQmomiOHuqmO', 0, 'LQc7kmVhud', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(3, 'Viviane Skiles IV', 'maiya49@example.org', '2025-12-17 18:27:15', '$2y$12$2eGsBoPMmJS7pzeTCE1dlO.snPFnTg6o1v8BgKBBSJQmomiOHuqmO', 0, '0hDqnnJWek', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(4, 'Mr. Isaias Jacobson IV', 'virginia76@example.net', '2025-12-17 18:27:15', '$2y$12$2eGsBoPMmJS7pzeTCE1dlO.snPFnTg6o1v8BgKBBSJQmomiOHuqmO', 0, 'macR7Rl1lG', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(5, 'Miss Heidi Marvin II', 'beverly81@example.net', '2025-12-17 18:27:15', '$2y$12$2eGsBoPMmJS7pzeTCE1dlO.snPFnTg6o1v8BgKBBSJQmomiOHuqmO', 0, 'iW83TGFGaW', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(6, 'Rodolfo Pfannerstill II', 'ppadberg@example.org', '2025-12-17 18:27:15', '$2y$12$2eGsBoPMmJS7pzeTCE1dlO.snPFnTg6o1v8BgKBBSJQmomiOHuqmO', 0, 'US2JCGyPpH', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(7, 'Esteban Gutkowski', 'lstreich@example.net', '2025-12-17 18:27:15', '$2y$12$2eGsBoPMmJS7pzeTCE1dlO.snPFnTg6o1v8BgKBBSJQmomiOHuqmO', 0, 'IUoluIr1xH', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(8, 'Phoebe Schinner', 'yrempel@example.com', '2025-12-17 18:27:15', '$2y$12$2eGsBoPMmJS7pzeTCE1dlO.snPFnTg6o1v8BgKBBSJQmomiOHuqmO', 0, 'oQl8kmsqKh', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(9, 'Jerry Gibson', 'unader@example.net', '2025-12-17 18:27:15', '$2y$12$2eGsBoPMmJS7pzeTCE1dlO.snPFnTg6o1v8BgKBBSJQmomiOHuqmO', 0, 'OzY5BNxQFg', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(10, 'Prof. Alisha McKenzie', 'thalia82@example.net', '2025-12-17 18:27:15', '$2y$12$2eGsBoPMmJS7pzeTCE1dlO.snPFnTg6o1v8BgKBBSJQmomiOHuqmO', 0, 'LXdhAm2Xzu', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(11, 'Maxwell Moore DDS', 'ekirlin@example.com', '2025-12-17 18:27:15', '$2y$12$2eGsBoPMmJS7pzeTCE1dlO.snPFnTg6o1v8BgKBBSJQmomiOHuqmO', 0, 'RpoJk02C2G', '2025-12-17 18:27:15', '2025-12-17 18:27:15'),
(12, 'Test User', 'test@test.com', NULL, '$2y$12$kw2ib36F2Nq6HTFz2r5YQOtJSmeTuyF1FUFsx3WCgEtjp4UBw2Ok.', 0, NULL, '2025-12-17 19:34:36', '2025-12-17 19:34:36');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Tablo için indeksler `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genres_name_unique` (`name`),
  ADD UNIQUE KEY `genres_slug_unique` (`slug`);

--
-- Tablo için indeksler `genre_movie`
--
ALTER TABLE `genre_movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre_movie_genre_id_foreign` (`genre_id`),
  ADD KEY `genre_movie_movie_id_foreign` (`movie_id`);

--
-- Tablo için indeksler `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Tablo için indeksler `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Tablo için indeksler `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_movie_id_foreign` (`movie_id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `genre_movie`
--
ALTER TABLE `genre_movie`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `genre_movie`
--
ALTER TABLE `genre_movie`
  ADD CONSTRAINT `genre_movie_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `genre_movie_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
