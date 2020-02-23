-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2020 at 06:35 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weshare_videoshare`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 10, 7, '2020-02-14 03:22:40', '2020-02-14 03:22:40'),
(2, 10, 1, '2020-02-14 03:47:05', '2020-02-14 03:47:05'),
(3, 10, 4, '2020-02-14 03:48:59', '2020-02-14 03:48:59'),
(4, 10, 3, '2020-02-14 04:57:13', '2020-02-14 04:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Et animi voluptatem.', 'et-animi-voluptatem', '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(2, 'Soluta molestias.', 'soluta-molestias', '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(3, 'Aut molestias.', 'aut-molestias', '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(4, 'Ut hic.', 'ut-hic', '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(5, 'Fugit et asperiores.', 'fugit-et-asperiores', '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(6, 'Eum dolorem.', 'eum-dolorem', '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(7, 'Tenetur exercitationem quas.', 'tenetur-exercitationem-quas', '2020-01-15 17:48:51', '2020-01-15 17:48:51'),
(8, 'Et voluptates.', 'et-voluptates', '2020-01-15 17:48:51', '2020-01-15 17:48:51'),
(9, 'Nesciunt nemo.', 'nesciunt-nemo', '2020-01-15 17:48:51', '2020-01-15 17:48:51'),
(10, 'Similique sit.', 'similique-sit', '2020-01-15 17:48:51', '2020-01-15 17:48:51');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `outcomes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `short_description`, `description`, `outcomes`, `section`, `requirements`, `language`, `price`, `level`, `thumbnail`, `image_url`, `video_url`, `visibility`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Nemo numquam consequatur est.', 'Hatter went on so long that they must needs come wriggling down from the change: and Alice rather.', 'Dinah, if I can reach the key; and if the Queen said severely \'Who is it twelve? I--\' \'Oh, don\'t bother ME,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it here, lad!--Here.', 'Quia.', 'Voluptas.', 'Python, Linux, Basic Programming', 'English', 147, 'Beginner', NULL, 'learning.jpg', NULL, 1, 4, '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(2, 'Repudiandae aut est blanditiis.', 'Next came an angry tone, \'Why, Mary Ann, and be turned out of breath, and till the Pigeon the.', 'It means much the most interesting, and perhaps after all it might end, you know,\' said the Gryphon. \'--you advance twice--\' \'Each with a deep voice, \'are done with a round face, and large eyes like.', 'Non.', 'Et itaque.', 'Python, Linux, Basic Programming', 'English', 119, 'Beginner', NULL, 'learning.jpg', NULL, 1, 1, '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(3, 'Vel facere modi amet.', 'I could not help thinking there MUST be more to do so. \'Shall we try another figure of the.', 'Alice began to repeat it, but her voice close to them, and all would change to dull reality--the grass would be the use of a water-well,\' said the Duchess: \'flamingoes and mustard both bite. And the.', 'Nisi.', 'Veniam.', 'Python, Linux, Basic Programming', 'English', 138, 'Beginner', NULL, 'learning.jpg', NULL, 1, 4, '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(4, 'Qui eos natus aliquam rerum quos.', 'THAT!\' \'Oh, you can\'t take more.\' \'You mean you can\'t be civil, you\'d better ask HER about it.\'.', 'Do you think I can listen all day about it!\' Last came a little before she made it out to sea. So they had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice.', 'Ad.', 'Ea culpa.', 'Python, Linux, Basic Programming', 'English', 116, 'Beginner', NULL, 'learning.jpg', NULL, 1, 1, '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(5, 'Consequatur veniam amet minima enim.', 'She was close behind her, listening: so she began very cautiously: \'But I don\'t care which.', 'Alice remarked. \'Right, as usual,\' said the Gryphon. Alice did not see anything that looked like the Mock Turtle Soup is made from,\' said the Pigeon; \'but I must be getting somewhere near the.', 'Iste.', 'Inventore.', 'Python, Linux, Basic Programming', 'English', 127, 'Beginner', NULL, 'learning.jpg', NULL, 1, 9, '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(6, 'Ratione a quo sint sed.', 'In a little bit of mushroom, and her eyes anxiously fixed on it, (\'which certainly was not much.', 'Caterpillar. \'I\'m afraid I don\'t take this young lady to see it trying in a minute, trying to explain it as far down the middle, nursing a baby; the cook was leaning over the fire, licking her paws.', 'Iste.', 'Dicta.', 'Python, Linux, Basic Programming', 'English', 145, 'Beginner', NULL, 'learning.jpg', NULL, 1, 3, '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(7, 'Repudiandae ratione aut numquam aut provident.', 'CHAPTER IX. The Mock Turtle replied; \'and then the different branches of Arithmetic--Ambition.', 'Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, who felt very curious thing, and longed to change them--\' when she was trying to make ONE respectable person!\' Soon her eye fell.', 'Sed.', 'Rerum.', 'Python, Linux, Basic Programming', 'English', 106, 'Beginner', NULL, 'learning.jpg', NULL, 1, 10, '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(8, 'Quos qui a consequuntur.', 'King triumphantly, pointing to the game, the Queen say only yesterday you deserved to be full of.', 'Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came suddenly upon an open place, with a knife, it usually bleeds; and she was quite tired of swimming about here, O Mouse!\' (Alice.', 'Eum.', 'Vero.', 'Python, Linux, Basic Programming', 'English', 145, 'Beginner', NULL, 'learning.jpg', NULL, 1, 10, '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(9, 'Id aliquid pariatur consequatur sit.', 'Gryphon, and all her riper years, the simple and loving heart of her skirt, upsetting all the.', 'I\'ve tried banks, and I\'ve tried to beat time when she caught it, and then raised himself upon tiptoe, put his mouth close to her: its face to see its meaning. \'And just as I\'d taken the highest.', 'Quo.', 'Est.', 'Python, Linux, Basic Programming', 'English', 149, 'Beginner', NULL, 'learning.jpg', NULL, 1, 2, '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(10, 'Perferendis accusantium aliquam beatae earum.', 'Hatter hurriedly left the court, she said to the voice of thunder, and people began running when.', 'Alice whispered to the three gardeners at it, and burning with curiosity, she ran with all her knowledge of history, Alice had not noticed before, and he checked himself suddenly: the others all.', 'Non.', 'Hic et.', 'Python, Linux, Basic Programming', 'English', 143, 'Beginner', NULL, 'learning.jpg', NULL, 1, 5, '2020-01-15 17:48:50', '2020-01-15 17:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(5, 10, 9, '2020-02-11 00:37:18', '2020-02-11 00:37:18'),
(6, 10, 2, '2020-02-11 00:38:23', '2020-02-11 00:38:23'),
(7, 10, 4, '2020-02-11 00:40:25', '2020-02-11 00:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `title`, `duration`, `video`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ut mollitia neque distinctio.', '8', 'budaohainandao.mp4', '2020-01-15 17:48:49', '2020-01-15 17:48:49'),
(2, 2, 'Possimus blanditiis earum doloremque.', '5', 'mousenewyearsong.mp4', '2020-01-15 17:48:49', '2020-01-15 17:48:49'),
(3, 3, 'Ab delectus et et.', '10', 'mousenewyearsong.mp4', '2020-01-15 17:48:49', '2020-01-15 17:48:49'),
(4, 4, 'Ut est.', '4', 'wohaishiwo.mp4', '2020-01-15 17:48:49', '2020-01-15 17:48:49'),
(5, 5, 'Quae est occaecati voluptatum quod.', '10', 'mousenewyearsong.mp4', '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(6, 16, 'Aut amet mollitia facilis.', '3', 'wohaishiwo.mp4', '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(7, 7, 'Vero aut dolorem saepe eos.', '6', 'mousenewyearsong.mp4', '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(8, 8, 'Perferendis et hic sunt et.', '6', 'wohaishiwo.mp4', '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(9, 9, 'Unde ut atque.', '2', 'wohaishiwo.mp4', '2020-01-15 17:48:50', '2020-01-15 17:48:50'),
(10, 10, 'Rem voluptate labore.', '10', 'douki.mp4', '2020-01-15 17:48:50', '2020-01-15 17:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2018_12_02_185833_create_categories_table', 1),
(12, '2018_12_02_192048_create_courses_table', 1),
(13, '2018_12_22_054755_create_lessons_table', 1),
(14, '2018_12_22_160557_create_enrolls_table', 1),
(15, '2018_12_25_062113_add_photo_to_users', 1),
(16, '2018_12_25_073924_create_reviews_table', 1),
(17, '2020_02_14_074302_create_carts_table', 2),
(18, '2020_02_14_074404_create_order_histories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_histories`
--

CREATE TABLE `order_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'learning.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `photo`) VALUES
(1, 'Patience', 'Vandervort', 'katlynn91@example.com', '2020-01-16 01:48:49', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OQEsWazjv1', '2020-01-15 17:48:49', '2020-01-15 17:48:49', 'learning.jpg'),
(2, 'Adolphus', 'Armstrong', 'ed19@example.org', '2020-01-16 01:48:49', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qMNfDOLgPg', '2020-01-15 17:48:49', '2020-01-15 17:48:49', 'learning.jpg'),
(3, 'Lora', 'Hartmann', 'fcummings@example.org', '2020-01-16 01:48:49', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ihWEjqPKjj', '2020-01-15 17:48:49', '2020-01-15 17:48:49', 'learning.jpg'),
(4, 'Roma', 'Kerluke', 'schaden.lexus@example.org', '2020-01-16 01:48:49', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NVijJ0nO89', '2020-01-15 17:48:49', '2020-01-15 17:48:49', 'learning.jpg'),
(5, 'Lois', 'Heidenreich', 'schinner.naomi@example.net', '2020-01-16 01:48:49', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gNS79cFqiI', '2020-01-15 17:48:49', '2020-01-15 17:48:49', 'learning.jpg'),
(6, 'Raoul', 'Greenfelder', 'emard.carissa@example.com', '2020-01-16 01:48:49', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2P5u80ynS3', '2020-01-15 17:48:49', '2020-01-15 17:48:49', 'learning.jpg'),
(7, 'Emerald', 'Kuvalis', 'ryan89@example.net', '2020-01-16 01:48:49', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'MxgzWDS8QL', '2020-01-15 17:48:49', '2020-01-15 17:48:49', 'learning.jpg'),
(8, 'Maurice', 'Pacocha', 'vnicolas@example.com', '2020-01-16 01:48:49', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'RDcai7J13h', '2020-01-15 17:48:49', '2020-01-15 17:48:49', 'learning.jpg'),
(9, 'Nikko', 'Muller', 'ocummings@example.net', '2020-01-16 01:48:49', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6B3REjVJl0', '2020-01-15 17:48:49', '2020-01-15 17:48:49', 'learning.jpg'),
(10, 'Kaelyn', 'Kassulke', 'retta.medhurst@example.net', '2020-01-16 01:48:49', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'pfFWpBXqF9iMkuJq35yiEccKr0s9tbb13F29MQjiLjXy7AMnquYc9e6VUTz7', '2020-01-15 17:48:49', '2020-01-15 18:53:18', 'learning.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_histories`
--
ALTER TABLE `order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_histories`
--
ALTER TABLE `order_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
