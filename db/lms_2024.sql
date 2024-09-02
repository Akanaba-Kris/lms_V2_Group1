-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2024 at 07:39 PM
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
-- Database: `lms_2024`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lesson_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `title`, `description`, `text`, `deadline`, `created_at`, `updated_at`, `deleted_at`, `lesson_id`) VALUES
(1, 'Test 1', 'Test 1', '<p>Use the attachment</p>', '2024-09-01 00:00:00', '2024-08-14 15:09:27', '2024-08-14 17:05:31', '2024-08-14 17:05:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `assignment_submissions`
--

CREATE TABLE `assignment_submissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `assignment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignment_submissions`
--

INSERT INTO `assignment_submissions` (`id`, `content`, `created_at`, `updated_at`, `deleted_at`, `assignment_id`, `student_id`) VALUES
(1, '<p>Information and communication technology (Elective) SHS 1 submission</p>', '2024-08-14 15:11:02', '2024-08-14 17:05:17', '2024-08-14 17:05:17', 1, 3),
(2, '<p>Osman sub</p>', '2024-08-14 16:23:44', '2024-08-14 17:05:17', '2024-08-14 17:05:17', 1, 3),
(3, '<p>New</p>', '2024-08-14 17:03:52', '2024-08-14 17:05:17', '2024-08-14 17:05:17', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(46) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `description`, `subject_id`, `subject_type`, `user_id`, `properties`, `host`, `created_at`, `updated_at`) VALUES
(1, 'audit:created', 1, 'App\\Models\\Level#1', 1, '{\"name\":\"SHS 1\",\"updated_at\":\"2024-08-14 14:50:38\",\"created_at\":\"2024-08-14 14:50:38\",\"id\":1}', '127.0.0.1', '2024-08-14 14:50:38', '2024-08-14 14:50:38'),
(2, 'audit:created', 2, 'App\\Models\\Level#2', 1, '{\"name\":\"SHS 2\",\"updated_at\":\"2024-08-14 14:50:49\",\"created_at\":\"2024-08-14 14:50:49\",\"id\":2}', '127.0.0.1', '2024-08-14 14:50:49', '2024-08-14 14:50:49'),
(3, 'audit:created', 3, 'App\\Models\\Level#3', 1, '{\"name\":\"SHS 3\",\"updated_at\":\"2024-08-14 14:51:01\",\"created_at\":\"2024-08-14 14:51:01\",\"id\":3}', '127.0.0.1', '2024-08-14 14:51:01', '2024-08-14 14:51:01'),
(4, 'audit:created', 1, 'App\\Models\\Course#1', 1, '{\"name\":\"Information and communication technology (Elective) SHS 1\",\"description\":\"Information and communication technology (Elective) SHS 1\",\"requirement\":null,\"level_id\":\"1\",\"updated_at\":\"2024-08-14 14:52:03\",\"created_at\":\"2024-08-14 14:52:03\",\"id\":1}', '127.0.0.1', '2024-08-14 14:52:03', '2024-08-14 14:52:03'),
(5, 'audit:created', 2, 'App\\Models\\Course#2', 1, '{\"name\":\"English Language SHS 1\",\"description\":\"English Language SHS 1\",\"requirement\":null,\"level_id\":\"2\",\"updated_at\":\"2024-08-14 14:52:24\",\"created_at\":\"2024-08-14 14:52:24\",\"id\":2}', '127.0.0.1', '2024-08-14 14:52:24', '2024-08-14 14:52:24'),
(6, 'audit:created', 3, 'App\\Models\\Course#3', 1, '{\"name\":\"English Language SHS 2\",\"description\":\"English Language SHS 2\",\"requirement\":null,\"level_id\":\"2\",\"updated_at\":\"2024-08-14 14:52:54\",\"created_at\":\"2024-08-14 14:52:54\",\"id\":3}', '127.0.0.1', '2024-08-14 14:52:54', '2024-08-14 14:52:54'),
(7, 'audit:created', 4, 'App\\Models\\Course#4', 1, '{\"name\":\"English Language SHS 3\",\"description\":\"English Language SHS 3\",\"requirement\":null,\"level_id\":\"3\",\"updated_at\":\"2024-08-14 14:53:16\",\"created_at\":\"2024-08-14 14:53:16\",\"id\":4}', '127.0.0.1', '2024-08-14 14:53:16', '2024-08-14 14:53:16'),
(8, 'audit:created', 5, 'App\\Models\\Course#5', 1, '{\"name\":\"Elective Mathematics (SHS 1)\",\"description\":\"Elective Mathematics (SHS 1)\",\"requirement\":null,\"level_id\":\"1\",\"updated_at\":\"2024-08-14 14:53:55\",\"created_at\":\"2024-08-14 14:53:55\",\"id\":5}', '127.0.0.1', '2024-08-14 14:53:55', '2024-08-14 14:53:55'),
(9, 'audit:created', 2, 'App\\Models\\User#2', 1, '{\"name\":\"Charles Mbuut\",\"email\":\"atubrago@gmail.com\",\"phone\":\"0545957501\",\"updated_at\":\"2024-08-14 14:55:01\",\"created_at\":\"2024-08-14 14:55:01\",\"id\":2}', '127.0.0.1', '2024-08-14 14:55:01', '2024-08-14 14:55:01'),
(10, 'audit:created', 3, 'App\\Models\\User#3', 1, '{\"name\":\"Osman Baba\",\"email\":\"charlesmbuut@gmail.com\",\"phone\":\"0207929323\",\"updated_at\":\"2024-08-14 14:56:24\",\"created_at\":\"2024-08-14 14:56:24\",\"id\":3}', '127.0.0.1', '2024-08-14 14:56:24', '2024-08-14 14:56:24'),
(11, 'audit:created', 1, 'App\\Models\\CourseInstructor#1', 1, '{\"instructor_id\":\"2\",\"course_id\":\"1\",\"updated_at\":\"2024-08-14 14:57:11\",\"created_at\":\"2024-08-14 14:57:11\",\"id\":1}', '127.0.0.1', '2024-08-14 14:57:11', '2024-08-14 14:57:11'),
(12, 'audit:created', 1, 'App\\Models\\Lesson#1', 1, '{\"course_id\":\"1\",\"name\":\"Information and communication technology (Elective) SHS 1\",\"desctiption\":\"<p>Information and communication technology (Elective) SHS 1<\\/p>\",\"content\":\"<p>Information and communication technology (Elective) SHS 1<\\/p><p>Information and communication technology (Elective) SHS 1<\\/p><p>Information and communication technology (Elective) SHS 1<\\/p>\",\"updated_at\":\"2024-08-14 15:00:27\",\"created_at\":\"2024-08-14 15:00:27\",\"id\":1,\"file\":[],\"media\":[]}', '127.0.0.1', '2024-08-14 15:00:27', '2024-08-14 15:00:27'),
(13, 'audit:created', 1, 'App\\Models\\Assignment#1', 1, '{\"title\":\"Test 1\",\"description\":\"Test 1\",\"text\":\"<p>Use the attachment<\\/p>\",\"lesson_id\":\"1\",\"deadline\":\"01\\/09\\/2024 00:00:00\",\"updated_at\":\"2024-08-14 15:09:27\",\"created_at\":\"2024-08-14 15:09:27\",\"id\":1,\"file\":null,\"media\":[]}', '127.0.0.1', '2024-08-14 15:09:27', '2024-08-14 15:09:27'),
(14, 'audit:created', 1, 'App\\Models\\AssignmentSubmission#1', 1, '{\"assignment_id\":\"1\",\"student_id\":\"3\",\"content\":\"<p>Information and communication technology (Elective) SHS 1 submission<\\/p>\",\"updated_at\":\"2024-08-14 15:11:02\",\"created_at\":\"2024-08-14 15:11:02\",\"id\":1,\"file\":null,\"media\":[]}', '127.0.0.1', '2024-08-14 15:11:02', '2024-08-14 15:11:02'),
(15, 'audit:created', 1, 'App\\Models\\Notice#1', 1, '{\"author_id\":\"1\",\"course_id\":\"1\",\"title\":\"new   ICT  notice\",\"message\":\"<p>New &nbsp;notice&nbsp;<\\/p>\",\"updated_at\":\"2024-08-14 15:13:28\",\"created_at\":\"2024-08-14 15:13:28\",\"id\":1,\"file\":null,\"media\":[]}', '127.0.0.1', '2024-08-14 15:13:28', '2024-08-14 15:13:28'),
(16, 'audit:created', 2, 'App\\Models\\AssignmentSubmission#2', 3, '{\"assignment_id\":\"1\",\"student_id\":\"3\",\"content\":\"<p>Osman sub<\\/p>\",\"updated_at\":\"2024-08-14 16:23:44\",\"created_at\":\"2024-08-14 16:23:44\",\"id\":2,\"file\":null,\"media\":[]}', '127.0.0.1', '2024-08-14 16:23:45', '2024-08-14 16:23:45'),
(17, 'audit:created', 4, 'App\\Models\\User#4', 1, '{\"name\":\"Salam Akugri\",\"email\":\"salam@gmail.com\",\"phone\":\"0545957577\",\"updated_at\":\"2024-08-14 17:02:21\",\"created_at\":\"2024-08-14 17:02:21\",\"id\":4}', '127.0.0.1', '2024-08-14 17:02:22', '2024-08-14 17:02:22'),
(18, 'audit:created', 3, 'App\\Models\\AssignmentSubmission#3', 4, '{\"assignment_id\":\"1\",\"student_id\":\"4\",\"content\":\"<p>New<\\/p>\",\"updated_at\":\"2024-08-14 17:03:52\",\"created_at\":\"2024-08-14 17:03:52\",\"id\":3,\"file\":null,\"media\":[]}', '127.0.0.1', '2024-08-14 17:03:52', '2024-08-14 17:03:52'),
(19, 'audit:deleted', 1, 'App\\Models\\Notice#1', 1, '{\"id\":1,\"title\":\"new   ICT  notice\",\"message\":\"<p>New &nbsp;notice&nbsp;<\\/p>\",\"created_at\":\"2024-08-14 15:13:28\",\"updated_at\":\"2024-08-14 17:05:01\",\"deleted_at\":\"2024-08-14 17:05:01\",\"author_id\":1,\"course_id\":1,\"file\":{\"id\":4,\"model_type\":\"App\\\\Models\\\\Notice\",\"model_id\":1,\"uuid\":\"d6d1b729-84e8-43fb-93cf-78ee3fd0ded9\",\"collection_name\":\"file\",\"name\":\"66bcc97aa14a4_banner\",\"file_name\":\"66bcc97aa14a4_banner.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":81335,\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2024-08-14T15:13:28.000000Z\",\"updated_at\":\"2024-08-14T15:13:30.000000Z\",\"original_url\":\"http:\\/\\/localhost:8000\\/storage\\/4\\/66bcc97aa14a4_banner.jpg\",\"preview_url\":\"http:\\/\\/localhost:8000\\/storage\\/4\\/conversions\\/66bcc97aa14a4_banner-preview.jpg\"},\"media\":[{\"id\":4,\"model_type\":\"App\\\\Models\\\\Notice\",\"model_id\":1,\"uuid\":\"d6d1b729-84e8-43fb-93cf-78ee3fd0ded9\",\"collection_name\":\"file\",\"name\":\"66bcc97aa14a4_banner\",\"file_name\":\"66bcc97aa14a4_banner.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":81335,\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2024-08-14T15:13:28.000000Z\",\"updated_at\":\"2024-08-14T15:13:30.000000Z\",\"original_url\":\"http:\\/\\/localhost:8000\\/storage\\/4\\/66bcc97aa14a4_banner.jpg\",\"preview_url\":\"http:\\/\\/localhost:8000\\/storage\\/4\\/conversions\\/66bcc97aa14a4_banner-preview.jpg\"}]}', '127.0.0.1', '2024-08-14 17:05:01', '2024-08-14 17:05:01'),
(20, 'audit:deleted', 1, 'App\\Models\\AssignmentSubmission#1', 1, '{\"id\":1,\"content\":\"<p>Information and communication technology (Elective) SHS 1 submission<\\/p>\",\"created_at\":\"2024-08-14 15:11:02\",\"updated_at\":\"2024-08-14 17:05:17\",\"deleted_at\":\"2024-08-14 17:05:17\",\"assignment_id\":1,\"student_id\":3,\"file\":{\"id\":3,\"model_type\":\"App\\\\Models\\\\AssignmentSubmission\",\"model_id\":1,\"uuid\":\"80df9b26-1e99-4561-9dd4-266278d24182\",\"collection_name\":\"file\",\"name\":\"66bcc8ddba224_banner\",\"file_name\":\"66bcc8ddba224_banner.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":81335,\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2024-08-14T15:11:02.000000Z\",\"updated_at\":\"2024-08-14T15:11:04.000000Z\",\"original_url\":\"http:\\/\\/localhost:8000\\/storage\\/3\\/66bcc8ddba224_banner.jpg\",\"preview_url\":\"http:\\/\\/localhost:8000\\/storage\\/3\\/conversions\\/66bcc8ddba224_banner-preview.jpg\"},\"media\":[{\"id\":3,\"model_type\":\"App\\\\Models\\\\AssignmentSubmission\",\"model_id\":1,\"uuid\":\"80df9b26-1e99-4561-9dd4-266278d24182\",\"collection_name\":\"file\",\"name\":\"66bcc8ddba224_banner\",\"file_name\":\"66bcc8ddba224_banner.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":81335,\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2024-08-14T15:11:02.000000Z\",\"updated_at\":\"2024-08-14T15:11:04.000000Z\",\"original_url\":\"http:\\/\\/localhost:8000\\/storage\\/3\\/66bcc8ddba224_banner.jpg\",\"preview_url\":\"http:\\/\\/localhost:8000\\/storage\\/3\\/conversions\\/66bcc8ddba224_banner-preview.jpg\"}]}', '127.0.0.1', '2024-08-14 17:05:17', '2024-08-14 17:05:17'),
(21, 'audit:deleted', 2, 'App\\Models\\AssignmentSubmission#2', 1, '{\"id\":2,\"content\":\"<p>Osman sub<\\/p>\",\"created_at\":\"2024-08-14 16:23:44\",\"updated_at\":\"2024-08-14 17:05:17\",\"deleted_at\":\"2024-08-14 17:05:17\",\"assignment_id\":1,\"student_id\":3,\"file\":{\"id\":5,\"model_type\":\"App\\\\Models\\\\AssignmentSubmission\",\"model_id\":2,\"uuid\":\"450b2881-74ad-406c-bb98-03e8b13748b1\",\"collection_name\":\"file\",\"name\":\"66bcda0ce39fd_banner\",\"file_name\":\"66bcda0ce39fd_banner.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":81335,\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2024-08-14T16:23:48.000000Z\",\"updated_at\":\"2024-08-14T16:23:55.000000Z\",\"original_url\":\"http:\\/\\/localhost:8000\\/storage\\/5\\/66bcda0ce39fd_banner.jpg\",\"preview_url\":\"http:\\/\\/localhost:8000\\/storage\\/5\\/conversions\\/66bcda0ce39fd_banner-preview.jpg\"},\"media\":[{\"id\":5,\"model_type\":\"App\\\\Models\\\\AssignmentSubmission\",\"model_id\":2,\"uuid\":\"450b2881-74ad-406c-bb98-03e8b13748b1\",\"collection_name\":\"file\",\"name\":\"66bcda0ce39fd_banner\",\"file_name\":\"66bcda0ce39fd_banner.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":81335,\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2024-08-14T16:23:48.000000Z\",\"updated_at\":\"2024-08-14T16:23:55.000000Z\",\"original_url\":\"http:\\/\\/localhost:8000\\/storage\\/5\\/66bcda0ce39fd_banner.jpg\",\"preview_url\":\"http:\\/\\/localhost:8000\\/storage\\/5\\/conversions\\/66bcda0ce39fd_banner-preview.jpg\"}]}', '127.0.0.1', '2024-08-14 17:05:17', '2024-08-14 17:05:17'),
(22, 'audit:deleted', 3, 'App\\Models\\AssignmentSubmission#3', 1, '{\"id\":3,\"content\":\"<p>New<\\/p>\",\"created_at\":\"2024-08-14 17:03:52\",\"updated_at\":\"2024-08-14 17:05:17\",\"deleted_at\":\"2024-08-14 17:05:17\",\"assignment_id\":1,\"student_id\":4,\"file\":{\"id\":6,\"model_type\":\"App\\\\Models\\\\AssignmentSubmission\",\"model_id\":3,\"uuid\":\"b48216c5-1215-4fa7-80ec-b156d8c3aeda\",\"collection_name\":\"file\",\"name\":\"66bce37410a9a_3\",\"file_name\":\"66bce37410a9a_3.webp\",\"mime_type\":\"image\\/webp\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":33242,\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2024-08-14T17:03:57.000000Z\",\"updated_at\":\"2024-08-14T17:04:10.000000Z\",\"original_url\":\"http:\\/\\/localhost:8000\\/storage\\/6\\/66bce37410a9a_3.webp\",\"preview_url\":\"http:\\/\\/localhost:8000\\/storage\\/6\\/conversions\\/66bce37410a9a_3-preview.jpg\"},\"media\":[{\"id\":6,\"model_type\":\"App\\\\Models\\\\AssignmentSubmission\",\"model_id\":3,\"uuid\":\"b48216c5-1215-4fa7-80ec-b156d8c3aeda\",\"collection_name\":\"file\",\"name\":\"66bce37410a9a_3\",\"file_name\":\"66bce37410a9a_3.webp\",\"mime_type\":\"image\\/webp\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":33242,\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2024-08-14T17:03:57.000000Z\",\"updated_at\":\"2024-08-14T17:04:10.000000Z\",\"original_url\":\"http:\\/\\/localhost:8000\\/storage\\/6\\/66bce37410a9a_3.webp\",\"preview_url\":\"http:\\/\\/localhost:8000\\/storage\\/6\\/conversions\\/66bce37410a9a_3-preview.jpg\"}]}', '127.0.0.1', '2024-08-14 17:05:18', '2024-08-14 17:05:18'),
(23, 'audit:deleted', 1, 'App\\Models\\Assignment#1', 1, '{\"id\":1,\"title\":\"Test 1\",\"description\":\"Test 1\",\"text\":\"<p>Use the attachment<\\/p>\",\"deadline\":\"01\\/09\\/2024 00:00:00\",\"created_at\":\"2024-08-14 15:09:27\",\"updated_at\":\"2024-08-14 17:05:31\",\"deleted_at\":\"2024-08-14 17:05:31\",\"lesson_id\":1,\"file\":{\"id\":2,\"model_type\":\"App\\\\Models\\\\Assignment\",\"model_id\":1,\"uuid\":\"19d4f4c0-f906-4f9f-b84d-2e3c2ec78ba7\",\"collection_name\":\"file\",\"name\":\"66bcc88be842b_banner\",\"file_name\":\"66bcc88be842b_banner.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":81335,\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2024-08-14T15:09:27.000000Z\",\"updated_at\":\"2024-08-14T15:09:29.000000Z\",\"original_url\":\"http:\\/\\/localhost:8000\\/storage\\/2\\/66bcc88be842b_banner.jpg\",\"preview_url\":\"http:\\/\\/localhost:8000\\/storage\\/2\\/conversions\\/66bcc88be842b_banner-preview.jpg\"},\"media\":[{\"id\":2,\"model_type\":\"App\\\\Models\\\\Assignment\",\"model_id\":1,\"uuid\":\"19d4f4c0-f906-4f9f-b84d-2e3c2ec78ba7\",\"collection_name\":\"file\",\"name\":\"66bcc88be842b_banner\",\"file_name\":\"66bcc88be842b_banner.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":81335,\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2024-08-14T15:09:27.000000Z\",\"updated_at\":\"2024-08-14T15:09:29.000000Z\",\"original_url\":\"http:\\/\\/localhost:8000\\/storage\\/2\\/66bcc88be842b_banner.jpg\",\"preview_url\":\"http:\\/\\/localhost:8000\\/storage\\/2\\/conversions\\/66bcc88be842b_banner-preview.jpg\"}]}', '127.0.0.1', '2024-08-14 17:05:31', '2024-08-14 17:05:31'),
(24, 'audit:deleted', 1, 'App\\Models\\Lesson#1', 1, '{\"id\":1,\"name\":\"Information and communication technology (Elective) SHS 1\",\"desctiption\":\"<p>Information and communication technology (Elective) SHS 1<\\/p>\",\"content\":\"<p>Information and communication technology (Elective) SHS 1<\\/p><p>Information and communication technology (Elective) SHS 1<\\/p><p>Information and communication technology (Elective) SHS 1<\\/p>\",\"created_at\":\"2024-08-14 15:00:27\",\"updated_at\":\"2024-08-14 17:06:06\",\"deleted_at\":\"2024-08-14 17:06:06\",\"course_id\":1,\"file\":[{\"id\":1,\"model_type\":\"App\\\\Models\\\\Lesson\",\"model_id\":1,\"uuid\":\"fff1f1d4-ac69-4199-ab32-8fb62627944a\",\"collection_name\":\"file\",\"name\":\"66bcc668a4930_banner\",\"file_name\":\"66bcc668a4930_banner.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":81335,\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2024-08-14T15:00:28.000000Z\",\"updated_at\":\"2024-08-14T15:00:32.000000Z\",\"original_url\":\"http:\\/\\/localhost:8000\\/storage\\/1\\/66bcc668a4930_banner.jpg\",\"preview_url\":\"http:\\/\\/localhost:8000\\/storage\\/1\\/conversions\\/66bcc668a4930_banner-preview.jpg\"}],\"media\":[{\"id\":1,\"model_type\":\"App\\\\Models\\\\Lesson\",\"model_id\":1,\"uuid\":\"fff1f1d4-ac69-4199-ab32-8fb62627944a\",\"collection_name\":\"file\",\"name\":\"66bcc668a4930_banner\",\"file_name\":\"66bcc668a4930_banner.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":81335,\"manipulations\":[],\"custom_properties\":[],\"generated_conversions\":{\"thumb\":true,\"preview\":true},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2024-08-14T15:00:28.000000Z\",\"updated_at\":\"2024-08-14T15:00:32.000000Z\",\"original_url\":\"http:\\/\\/localhost:8000\\/storage\\/1\\/66bcc668a4930_banner.jpg\",\"preview_url\":\"http:\\/\\/localhost:8000\\/storage\\/1\\/conversions\\/66bcc668a4930_banner-preview.jpg\"}]}', '127.0.0.1', '2024-08-14 17:06:07', '2024-08-14 17:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ch_messages`
--

INSERT INTO `ch_messages` (`id`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
('845ff7bd-5e8f-4de4-8aa0-82de70d1b5e2', 1, 2, 'Hello', NULL, 0, '2024-08-14 17:38:13', '2024-08-14 17:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `requirement`, `created_at`, `updated_at`, `deleted_at`, `level_id`) VALUES
(1, 'Information and communication technology (Elective) SHS 1', 'Information and communication technology (Elective) SHS 1', NULL, '2024-08-14 14:52:03', '2024-08-14 14:52:03', NULL, 1),
(2, 'English Language SHS 1', 'English Language SHS 1', NULL, '2024-08-14 14:52:24', '2024-08-14 14:52:24', NULL, 2),
(3, 'English Language SHS 2', 'English Language SHS 2', NULL, '2024-08-14 14:52:54', '2024-08-14 14:52:54', NULL, 2),
(4, 'English Language SHS 3', 'English Language SHS 3', NULL, '2024-08-14 14:53:16', '2024-08-14 14:53:16', NULL, 3),
(5, 'Elective Mathematics (SHS 1)', 'Elective Mathematics (SHS 1)', NULL, '2024-08-14 14:53:55', '2024-08-14 14:53:55', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_instructors`
--

CREATE TABLE `course_instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `instructor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_instructors`
--

INSERT INTO `course_instructors` (`id`, `created_at`, `updated_at`, `deleted_at`, `instructor_id`, `course_id`) VALUES
(1, '2024-08-14 14:57:11', '2024-08-14 14:57:11', NULL, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_students`
--

CREATE TABLE `course_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_students`
--

INSERT INTO `course_students` (`id`, `created_at`, `updated_at`, `deleted_at`, `course_id`, `student_id`) VALUES
(1, '2024-08-14 14:57:53', '2024-08-14 14:57:53', NULL, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desctiption` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `name`, `desctiption`, `content`, `created_at`, `updated_at`, `deleted_at`, `course_id`) VALUES
(1, 'Information and communication technology (Elective) SHS 1', '<p>Information and communication technology (Elective) SHS 1</p>', '<p>Information and communication technology (Elective) SHS 1</p><p>Information and communication technology (Elective) SHS 1</p><p>Information and communication technology (Elective) SHS 1</p>', '2024-08-14 15:00:27', '2024-08-14 17:06:06', '2024-08-14 17:06:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SHS 1', '2024-08-14 14:50:38', '2024-08-14 14:50:38', NULL),
(2, 'SHS 2', '2024-08-14 14:50:49', '2024-08-14 14:50:49', NULL),
(3, 'SHS 3', '2024-08-14 14:51:01', '2024-08-14 14:51:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Lesson', 1, 'fff1f1d4-ac69-4199-ab32-8fb62627944a', 'file', '66bcc668a4930_banner', '66bcc668a4930_banner.jpg', 'image/jpeg', 'public', 'public', 81335, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2024-08-14 15:00:28', '2024-08-14 15:00:32'),
(2, 'App\\Models\\Assignment', 1, '19d4f4c0-f906-4f9f-b84d-2e3c2ec78ba7', 'file', '66bcc88be842b_banner', '66bcc88be842b_banner.jpg', 'image/jpeg', 'public', 'public', 81335, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2024-08-14 15:09:27', '2024-08-14 15:09:29'),
(3, 'App\\Models\\AssignmentSubmission', 1, '80df9b26-1e99-4561-9dd4-266278d24182', 'file', '66bcc8ddba224_banner', '66bcc8ddba224_banner.jpg', 'image/jpeg', 'public', 'public', 81335, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2024-08-14 15:11:02', '2024-08-14 15:11:04'),
(4, 'App\\Models\\Notice', 1, 'd6d1b729-84e8-43fb-93cf-78ee3fd0ded9', 'file', '66bcc97aa14a4_banner', '66bcc97aa14a4_banner.jpg', 'image/jpeg', 'public', 'public', 81335, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2024-08-14 15:13:28', '2024-08-14 15:13:30'),
(5, 'App\\Models\\AssignmentSubmission', 2, '450b2881-74ad-406c-bb98-03e8b13748b1', 'file', '66bcda0ce39fd_banner', '66bcda0ce39fd_banner.jpg', 'image/jpeg', 'public', 'public', 81335, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2024-08-14 16:23:48', '2024-08-14 16:23:55'),
(6, 'App\\Models\\AssignmentSubmission', 3, 'b48216c5-1215-4fa7-80ec-b156d8c3aeda', 'file', '66bce37410a9a_3', '66bce37410a9a_3.webp', 'image/webp', 'public', 'public', 33242, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2024-08-14 17:03:57', '2024-08-14 17:04:10');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2024_08_14_000001_create_audit_logs_table', 1),
(4, '2024_08_14_000002_create_media_table', 1),
(5, '2024_08_14_000003_create_permissions_table', 1),
(6, '2024_08_14_000004_create_roles_table', 1),
(7, '2024_08_14_000005_create_users_table', 1),
(8, '2024_08_14_000006_create_courses_table', 1),
(9, '2024_08_14_000007_create_levels_table', 1),
(10, '2024_08_14_000008_create_lessons_table', 1),
(11, '2024_08_14_000009_create_assignments_table', 1),
(12, '2024_08_14_000010_create_assignment_submissions_table', 1),
(13, '2024_08_14_000011_create_course_instructors_table', 1),
(14, '2024_08_14_000012_create_notices_table', 1),
(15, '2024_08_14_000013_create_course_students_table', 1),
(16, '2024_08_14_000014_create_permission_role_pivot_table', 1),
(17, '2024_08_14_000015_create_role_user_pivot_table', 1),
(18, '2024_08_14_000016_add_relationship_fields_to_courses_table', 1),
(19, '2024_08_14_000017_add_relationship_fields_to_lessons_table', 1),
(20, '2024_08_14_000018_add_relationship_fields_to_assignments_table', 1),
(21, '2024_08_14_000019_add_relationship_fields_to_assignment_submissions_table', 1),
(22, '2024_08_14_000020_add_relationship_fields_to_course_instructors_table', 1),
(23, '2024_08_14_000021_add_relationship_fields_to_notices_table', 1),
(24, '2024_08_14_000022_add_relationship_fields_to_course_students_table', 1),
(25, '2024_08_14_999999_add_active_status_to_users', 2),
(26, '2024_08_14_999999_add_avatar_to_users', 2),
(27, '2024_08_14_999999_add_dark_mode_to_users', 2),
(28, '2024_08_14_999999_add_messenger_color_to_users', 2),
(29, '2024_08_14_999999_create_chatify_favorites_table', 2),
(30, '2024_08_14_999999_create_chatify_messages_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `message`, `created_at`, `updated_at`, `deleted_at`, `author_id`, `course_id`) VALUES
(1, 'new   ICT  notice', '<p>New &nbsp;notice&nbsp;</p>', '2024-08-14 15:13:28', '2024-08-14 17:05:01', '2024-08-14 17:05:01', 1, 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(17, 'course_create', NULL, NULL, NULL),
(18, 'course_edit', NULL, NULL, NULL),
(19, 'course_show', NULL, NULL, NULL),
(20, 'course_delete', NULL, NULL, NULL),
(21, 'course_access', NULL, NULL, NULL),
(22, 'level_create', NULL, NULL, NULL),
(23, 'level_edit', NULL, NULL, NULL),
(24, 'level_show', NULL, NULL, NULL),
(25, 'level_delete', NULL, NULL, NULL),
(26, 'level_access', NULL, NULL, NULL),
(27, 'lesson_create', NULL, NULL, NULL),
(28, 'lesson_edit', NULL, NULL, NULL),
(29, 'lesson_show', NULL, NULL, NULL),
(30, 'lesson_delete', NULL, NULL, NULL),
(31, 'lesson_access', NULL, NULL, NULL),
(32, 'assignment_create', NULL, NULL, NULL),
(33, 'assignment_edit', NULL, NULL, NULL),
(34, 'assignment_show', NULL, NULL, NULL),
(35, 'assignment_delete', NULL, NULL, NULL),
(36, 'assignment_access', NULL, NULL, NULL),
(37, 'assignment_submission_create', NULL, NULL, NULL),
(38, 'assignment_submission_edit', NULL, NULL, NULL),
(39, 'assignment_submission_show', NULL, NULL, NULL),
(40, 'assignment_submission_delete', NULL, NULL, NULL),
(41, 'assignment_submission_access', NULL, NULL, NULL),
(42, 'course_instructor_create', NULL, NULL, NULL),
(43, 'course_instructor_edit', NULL, NULL, NULL),
(44, 'course_instructor_show', NULL, NULL, NULL),
(45, 'course_instructor_delete', NULL, NULL, NULL),
(46, 'course_instructor_access', NULL, NULL, NULL),
(47, 'notice_create', NULL, NULL, NULL),
(48, 'notice_edit', NULL, NULL, NULL),
(49, 'notice_show', NULL, NULL, NULL),
(50, 'notice_delete', NULL, NULL, NULL),
(51, 'notice_access', NULL, NULL, NULL),
(52, 'course_student_create', NULL, NULL, NULL),
(53, 'course_student_edit', NULL, NULL, NULL),
(54, 'course_student_show', NULL, NULL, NULL),
(55, 'course_student_delete', NULL, NULL, NULL),
(56, 'course_student_access', NULL, NULL, NULL),
(57, 'audit_log_show', NULL, NULL, NULL),
(58, 'audit_log_access', NULL, NULL, NULL),
(59, 'chat_create', NULL, NULL, NULL),
(60, 'chat_edit', NULL, NULL, NULL),
(61, 'chat_show', NULL, NULL, NULL),
(62, 'chat_delete', NULL, NULL, NULL),
(63, 'chat_access', NULL, NULL, NULL),
(64, 'profile_password_edit', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(2, 19),
(2, 21),
(2, 24),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 44),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 54),
(2, 56),
(2, 57),
(2, 58),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(3, 19),
(3, 21),
(3, 29),
(3, 31),
(3, 34),
(3, 36),
(3, 37),
(3, 38),
(3, 39),
(3, 40),
(3, 41),
(3, 59),
(3, 60),
(3, 61),
(3, 62),
(3, 63),
(2, 22),
(2, 46);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'Teacher', NULL, '2024-08-14 14:47:42', NULL),
(3, 'Student', '2024-08-14 14:50:04', '2024-08-14 14:50:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `active_status`, `avatar`, `dark_mode`, `messenger_color`) VALUES
(1, 'Admin', 'admin@admin.com', '', NULL, '$2y$10$Hak8vP15kcSHv8HYpiebI.V6Qo3oB5mq/scIyxhj/9UwKdcXfJ35K', NULL, NULL, NULL, NULL, 0, 'avatar.png', 0, NULL),
(2, 'Charles Mbuut', 'atubrago@gmail.com', '0545957501', NULL, '$2y$10$yzeD0zRJups7gt6KZ5RRnOt4/iBmZMt67J9C2s.VgLRYKZ2vZxqz6', NULL, '2024-08-14 14:55:01', '2024-08-14 14:55:01', NULL, 0, 'avatar.png', 0, NULL),
(3, 'Osman Baba', 'charlesmbuut@gmail.com', '0207929323', NULL, '$2y$10$tkwhGQTl27mLCVGV5THq2.tnWSxMRZENbqZf6KHjCztUlWFP8QneW', NULL, '2024-08-14 14:56:24', '2024-08-14 14:56:24', NULL, 0, 'avatar.png', 0, NULL),
(4, 'Salam Akugri', 'salam@gmail.com', '0545957577', NULL, '$2y$10$uZCwsxBbvH4gzoSx./J06uqPNkz9JTcjqwYN5KcJGOXSBmAapaVdK', NULL, '2024-08-14 17:02:21', '2024-08-14 17:02:21', NULL, 0, 'avatar.png', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_fk_10012479` (`lesson_id`);

--
-- Indexes for table `assignment_submissions`
--
ALTER TABLE `assignment_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignment_fk_10012490` (`assignment_id`),
  ADD KEY `student_fk_10012491` (`student_id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_fk_10012449` (`level_id`);

--
-- Indexes for table `course_instructors`
--
ALTER TABLE `course_instructors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructor_fk_10013613` (`instructor_id`),
  ADD KEY `course_fk_10013614` (`course_id`);

--
-- Indexes for table `course_students`
--
ALTER TABLE `course_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_fk_10013630` (`course_id`),
  ADD KEY `student_fk_10013631` (`student_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_fk_10012456` (`course_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `levels_name_unique` (`name`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_fk_10013619` (`author_id`),
  ADD KEY `course_fk_10013620` (`course_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_10012361` (`role_id`),
  ADD KEY `permission_id_fk_10012361` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_10012370` (`user_id`),
  ADD KEY `role_id_fk_10012370` (`role_id`);

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
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_submissions`
--
ALTER TABLE `assignment_submissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_instructors`
--
ALTER TABLE `course_instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_students`
--
ALTER TABLE `course_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `lesson_fk_10012479` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`);

--
-- Constraints for table `assignment_submissions`
--
ALTER TABLE `assignment_submissions`
  ADD CONSTRAINT `assignment_fk_10012490` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`),
  ADD CONSTRAINT `student_fk_10012491` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `level_fk_10012449` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`);

--
-- Constraints for table `course_instructors`
--
ALTER TABLE `course_instructors`
  ADD CONSTRAINT `course_fk_10013614` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `instructor_fk_10013613` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `course_students`
--
ALTER TABLE `course_students`
  ADD CONSTRAINT `course_fk_10013630` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `student_fk_10013631` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `course_fk_10012456` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `author_fk_10013619` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `course_fk_10013620` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_10012361` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_10012361` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_10012370` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_10012370` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
