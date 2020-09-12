-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 12, 2020 at 05:46 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aryadume_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Android', 'android', '2020-09-12 07:40:50', '2020-09-12 07:40:50'),
(2, 'Design Systems', 'design-systems', '2020-09-12 07:40:50', '2020-09-12 07:40:50'),
(3, 'iOS', 'ios', '2020-09-12 07:43:57', '2020-09-12 07:43:57'),
(4, 'Javascript', 'javascript', '2020-09-12 07:43:57', '2020-09-12 07:43:57'),
(5, 'Laravel', 'laravel', '2020-09-12 07:45:00', '2020-09-12 07:45:00'),
(6, 'Plugins', 'plugins', '2020-09-12 07:45:00', '2020-09-12 07:45:00'),
(7, 'React', 'react', '2020-09-12 07:45:32', '2020-09-12 07:45:32'),
(8, 'UI/UX', 'ui-ux', '2020-09-12 07:45:32', '2020-09-12 07:45:32'),
(9, 'Web Design', 'web-design', '2020-09-12 07:46:15', '2020-09-12 07:46:15'),
(10, 'Web Programming', 'web-programming', '2020-09-12 07:46:15', '2020-09-12 07:46:15'),
(11, 'Workflow', 'workflow', '2020-09-12 07:46:47', '2020-09-12 07:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2020_09_12_070903_create_categories_table', 2),
(3, '2020_09_12_070942_create_posts_table', 3),
(4, '2020_09_12_073246_add_image_to_posts', 4);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `image`, `name`, `slug`, `content`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'how-to-learn-kotlin-for-android.jpg', 'How to Learn Kotlin for Android', 'how-to-learn-kotlin-for-android', 'Kotlin is a cross-platform, statically typed, general-purpose programming language with type inference.', 'Kotlin is a cross-platform, statically typed, general-purpose programming language with type inference. Kotlin is designed to interoperate fully with Java, and the JVM version of Kotlin\'s standard library depends on the Java Class Library, but type inference allows its syntax to be more concise.<br><br>\r\nCertain Android APIs, like Android KTX, are Kotlin-specific, but most are written in Java and can be called from either Java or Kotlin. Kotlin’s interoperability with Java is core to its growth. It means that you can call into Java code from Kotlin and vice-versa, leveraging all of your existing Java libraries. Kotlin’s popularity results in a nicer development experience on Android, but development of the Android framework continues with both Kotlin and Java in mind.<br><br>\r\nKotlin is a programming language widely used by Android developers everywhere.<br><br>\r\n<a target=\"_blank\" class=\"btn btn-outline-primary btn-sm\"  href=\"https://developer.android.com\">Developer Android</a>', '2020-09-12 07:58:34', '2020-09-12 07:58:34'),
(2, 2, 2, 'design-systems.jpg', 'A Comprehensive Guide to Design Systems', 'a-comprehensive-guide-to-design-systems', 'Build and sustain a UX design system with the right people to bring the concept to a substance.', 'Build and sustain a UX design system with the right people to bring the concept to a substance.<br><br>\r\nThe first model, solitary, or what Curtis calls the “overlord” excludes the actual ‘team’ part of the model. Just as it sounds, the overlord is a one-person show that dictates how the design system will evolve. The overlord unilaterally decides on the process, components, development, and design. While this sets the stage for the process to be predictable and controlled, it also limits the system’s capabilities.<br><br>\r\nUltimately, the solitary model tends to be pretty rigid. It’s not flexible enough to provide structure or guidelines for new brands and products. Since many of today’s brands need to span various applications and platforms to meet their customers’ needs; it’s likely this model represents a pretty outdated approach.<br><br>\r\n<a target=\"_blank\" class=\"btn btn-outline-primary btn-sm\"  href=\"https://isadoradigitalagency.com/insights/strategy/ux-design-teams\">Design System</a>', '2020-09-12 09:23:49', '2020-09-12 09:23:49'),
(3, 1, 3, 'apples-next-generation-ios-operating-system.jpg', 'Apple\'s Next Generation iOS Operating System', 'apples-next-generation-ios-operating system', 'iOS 13 is bringing big design changes this year, with a brand new home screen, alternate color scheme and etc.', 'iOS 13 is bringing big design changes this year, with a brand new home screen, alternate color scheme and potentially some fresh fonts to choose from.<br><br>\r\nThis week 9to5mac got hold of some screenshots of what the rumored dark mode would look like on the iPhone. According to the publication, you’ll have two options to activate dark mode: toggling a switch from Settings, or pressing a new button in your control center for easy access. Apple’s MacOS Mojave brought dark mode to Macs last year, and just a few weeks ago at its developers conference, Google also announced a new dark mode for Android Q.<br><br>\r\nThe Maps, Mail and Reminders apps are all said to get some minor refreshes as well. And the Find My iPhone and Find Friends apps could be merging into one, according to the 9to5mac report.<br><br>\r\niOS 13 could introduce a better bedtime mode as part of this health push, which would combine the new dark mode, the existing do-not-disturb feature and the clock app to optimize sleep time and maybe usher in a new sleep tracking era for the next-generation Apple Watch in September. These software updates can usually clue us in on what Apple has planned in terms of hardware.<br><br>\r\n<a target=\"_blank\" class=\"btn btn-outline-primary btn-sm\"  href=\"https://isadoradigitalagency.com/insights/strategy/ux-design-teams\">Design System</a>', '2020-09-12 09:33:04', '2020-09-12 09:33:04'),
(4, 1, 4, 'version-10-of-angular-now-available.jpg', 'Version 10 of Angular Now Available', 'version-10-of-angular-now-available', 'This is a major release that spans the entire platform, including the framework, Angular Material, and the CLI.', 'This is a major release that spans the entire platform, including the framework, Angular Material, and the CLI. This release is smaller than typical; it has only been 4 months since we released version 9.0 of Angular.<br><br>\r\nWe try to release two major versions each year to keep Angular synchronized with the rest of the JavaScript ecosystem and to have a predictable schedule. We plan to release version 11 this fall.<br><br>\r\nStarting with version 10, we now warn you when your build pulls in one of these bundles. If you’ve started seeing these warnings for your dependencies, let your dependency know that you’d prefer an ECMAScript module (ESM) bundle.<br><br>\r\n<a target=\"_blank\" class=\"btn btn-outline-primary btn-sm\"  href=\"https://blog.angular.io/version-10-of-angular-now-available-78960babd41\">Angular 10</a>', '2020-09-12 10:05:44', '2020-09-12 10:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `slug`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Arya', 'arya', 'aryafebiyan.dumet@gmail.com', '2020-09-12 07:24:29', '$2y$10$6ErjLksB4jMWIa8AoNvHfODXKU4EmjxRcLAm4TfBg5Va2BlGl91xu', NULL, '2020-09-12 07:24:29', '2020-09-12 07:24:29'),
(2, 'Febiyan', 'febiyan', 'arya.febiyan@gmail.com', '2020-09-12 09:50:19', '$2y$10$6ErjLksB4jMWIa8AoNvHfODXKU4EmjxRcLAm4TfBg5Va2BlGl91xu', NULL, '2020-09-12 09:50:19', '2020-09-12 09:50:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
