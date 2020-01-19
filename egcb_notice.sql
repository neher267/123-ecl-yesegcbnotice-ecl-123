-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- হোষ্ট: localhost:3306
-- তৈরী করতে ব্যবহৃত সময়: ডিসে 29, 2019 at 03:35 PM
-- সার্ভার সংস্করন: 10.1.43-MariaDB
-- পিএইছপির সংস্করন: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- ডাটাবেইজ: `egcb_notice`
--

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice_type_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_date` datetime NOT NULL,
  `closing` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `notices`
--

INSERT INTO `notices` (`id`, `notice_type_id`, `title`, `link`, `file`, `notice_date`, `closing`, `created_at`, `updated_at`) VALUES
(4, 4, 'মাসিক শুদ্ধাচার কমিটির সভা অক্টোবর  ২০১৯ (সিদ্ধান্তসমূহ)', NULL, 'notice/1572508643.pdf', '0000-00-00 00:00:00', NULL, '2019-10-31 01:57:23', '2019-10-31 01:57:23'),
(5, 7, 'জনাব মোঃ নাজমুল হাসান , নির্বাহি প্রকৌশলী (যান্ত্রিক) এর ইতালি ভ্রমনের অফিস আদেশ।', NULL, 'notice/1572842865.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 22:47:45', '2019-11-03 22:47:45'),
(6, 7, 'জনাব নাজিয়া বিনতে রউফ , সহকারী প্রকৌশলী (প্রকিউরমেন্ট) এর ইতালি ভ্রমনের অফিস আদেশ।', NULL, 'notice/1572843103.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 22:51:43', '2019-11-03 22:51:43'),
(7, 4, 'ইজিসিবি লিঃ এর এপ্রিল-২০১৯ মাসের মাসিক সমন্বয় সভার কার্যবিবরণী', NULL, 'notice/1572843454.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 22:57:34', '2019-11-03 22:57:34'),
(8, 4, 'ইজিসিবি লিঃ এর মে-২০১৯ মাসের মাসিক সমন্বয় সভার কার্যবিবরণী', NULL, 'notice/1572843493.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 22:58:13', '2019-11-03 22:58:13'),
(9, 4, 'ইজিসিবি লিঃ এর জুলাই-২০১৯ মাসের মাসিক সমন্বয় সভার কার্যবিবরণী', NULL, 'notice/1572843528.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 22:58:48', '2019-11-03 22:58:48'),
(10, 4, 'ইজিসিবি লিঃ এর আগস্ট-২০১৯ মাসের মাসিক সমন্বয় সভার কার্যবিবরণী', NULL, 'notice/1572843568.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 22:59:28', '2019-11-03 22:59:28'),
(11, 4, 'ইজিসিবি লিঃ এর সেপ্টেম্বর-২০১৯ মাসের মাসিক সমন্বয় সভার কার্যবিবরণী', NULL, 'notice/1572843606.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 23:00:06', '2019-11-03 23:00:06'),
(12, 4, 'ইজিসিবি লিঃ এর জুন-২০১৯ মাসের মাসিক সমন্বয় সভার কার্যবিবরণী', NULL, 'notice/1572843661.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 23:01:01', '2019-11-03 23:01:01'),
(13, 4, 'প্রকল্পের অগ্রগতি সভার কার্যবিবরণী (এপ্রিল-২০১৯)', NULL, 'notice/1572843703.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 23:01:43', '2019-11-03 23:01:43'),
(14, 4, 'প্রকল্পের অগ্রগতি সভার কার্যবিবরণী (মে-২০১৯)', NULL, 'notice/1572843726.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 23:02:06', '2019-11-03 23:02:06'),
(15, 4, 'প্রকল্পের অগ্রগতি সভার কার্যবিবরণী (জুন-২০১৯)', NULL, 'notice/1572843751.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 23:02:31', '2019-11-03 23:02:31'),
(16, 4, 'প্রকল্পের অগ্রগতি সভার কার্যবিবরণী (জুলাই-২০১৯)', NULL, 'notice/1572843791.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 23:03:11', '2019-11-03 23:03:11'),
(17, 4, 'প্রকল্পের অগ্রগতি সভার কার্যবিবরণী (আগস্ট-২০১৯)', NULL, 'notice/1572843825.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 23:03:45', '2019-11-03 23:03:45'),
(18, 4, 'প্রকল্পের অগ্রগতি সভার কার্যবিবরণী (সেপ্টেম্বর-২০১৯)', NULL, 'notice/1572843855.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 23:04:15', '2019-11-03 23:04:15'),
(19, 4, 'ইজিসিবি লিঃ এর অক্টোবর-২০১৯ মাসের মাসিক সমন্বয় সভার কার্যবিবরণী', NULL, 'notice/1572845098.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 23:24:58', '2019-11-03 23:24:58'),
(20, 7, 'জনাব মোঃ সিদ্দিকুর রহমান , নির্বাহি প্রকৌশলী (আই অ্যান্ড সি) এর ইতালি ভ্রমনের অফিস আদেশ।', NULL, 'notice/1572845430.pdf', '0000-00-00 00:00:00', NULL, '2019-11-03 23:30:30', '2019-11-03 23:30:30'),
(21, 4, 'প্রকল্পের অগ্রগতি সভার কার্যবিবরণী (অক্টোবর-২০১৯)', NULL, 'notice/1572850620.pdf', '0000-00-00 00:00:00', NULL, '2019-11-04 00:57:00', '2019-11-04 00:57:00'),
(22, 7, 'Tech Vision কর্তৃক বিদ্যুৎ বিভাগের জন্য বাস্তবায়নাধীন  ERP এর HR & Pay Roll  Module এর উপর প্রশিক্ষণ', NULL, 'notice/1572864667.pdf', '0000-00-00 00:00:00', NULL, '2019-11-04 04:51:07', '2019-11-04 04:51:07'),
(23, 5, 'ইউনিক হাইটস ভবনের বাণিজ্যিক অংশে সাবস্টেশন এক্সপ্রেস ফিডার সংযোগকালীন সময়ে বিদ্যুৎ সবরাহ বন্ধ থাকা প্রসঙ্গে।', NULL, 'notice/1572867637.pdf', '0000-00-00 00:00:00', NULL, '2019-11-04 05:40:37', '2019-11-04 05:40:37'),
(24, 7, 'বহিঃ বাংলাদেশ ছুটি - মো গিয়াস উদ্দিন (সিকিউরিটি সুপারভাইজার)', NULL, 'notice/1572924958.pdf', '0000-00-00 00:00:00', NULL, '2019-11-04 21:35:58', '2019-11-04 21:35:58'),
(25, 7, 'ইজিসিবি লিঃ এর কর্পোরেট অফিসে কর্মরত অফিস সহকারীদের বিভাগ/শাখা পুনর্বন্টনের দপ্তরাদেশ।', NULL, 'notice/1572925270.pdf', '0000-00-00 00:00:00', NULL, '2019-11-04 21:41:10', '2019-11-04 21:41:10'),
(26, 6, 'এ পি এ টীম মিটিং নোটিশ অক্টোবর ১৭, ২০১৯', NULL, 'notice/1572925395.pdf', '0000-00-00 00:00:00', NULL, '2019-11-04 21:43:15', '2019-11-04 21:43:15'),
(27, 4, 'মাসিক শুদ্ধাচার কমিটির সভা মার্চ ২০১৯ (কার্যবিবরনী)', NULL, 'notice/1573098959.pdf', '0000-00-00 00:00:00', NULL, '2019-11-06 21:55:59', '2019-11-06 21:55:59'),
(28, 5, 'বাংলাদেশ ন্যাশনাল ডিজিটাল আর্কিটেকচার (BNDA) নির্দেশিকা', NULL, 'notice/1573099008.pdf', '0000-00-00 00:00:00', NULL, '2019-11-06 21:56:48', '2019-11-06 21:56:48'),
(29, 7, 'Cyber Security Focal Point Office Order', NULL, 'notice/1573099039.pdf', '0000-00-00 00:00:00', NULL, '2019-11-06 21:57:19', '2019-11-06 21:57:19'),
(30, 5, 'জনস্বার্থ-সংশ্লিষ্ট তথ্য প্রকাশ (সুরক্ষা প্রদান) বিধিমালা', NULL, 'notice/1573099097.pdf', '0000-00-00 00:00:00', NULL, '2019-11-06 21:58:17', '2019-11-06 21:58:17'),
(31, 4, 'মাসিক শুদ্ধাচার কমিটির সভা সেপ্টেম্বর ২০১৯ (কার্যবিবরনী)', NULL, 'notice/1573099256.pdf', '0000-00-00 00:00:00', NULL, '2019-11-06 22:00:56', '2019-11-06 22:00:56'),
(32, 4, 'জাতীয় শুদ্ধাচার বিষয়ক নৈতিকতা কমিটির সভার কার্যবিবরণী- অক্টোবর - ২০১৯', NULL, 'notice/1573099382.pdf', '0000-00-00 00:00:00', NULL, '2019-11-06 22:03:02', '2019-11-06 22:03:02'),
(33, 5, 'Final Training Manual Book 2019-2020', NULL, 'notice/1573099851.pdf', '0000-00-00 00:00:00', NULL, '2019-11-06 22:10:51', '2019-11-06 22:10:51'),
(34, 7, 'প্রশিক্ষন বিষয়ক অফিস অর্ডার', NULL, 'notice/1573099967.pdf', '0000-00-00 00:00:00', NULL, '2019-11-06 22:12:47', '2019-11-06 22:12:47'),
(35, 4, 'ইজিসিবি এর এপিএ টিমের সেপ্টেম্বর-২০১৯ মাসের মাসিক সভার কার্যবিবরণী।', NULL, 'notice/1573100072.pdf', '0000-00-00 00:00:00', NULL, '2019-11-06 22:14:32', '2019-11-06 22:14:32'),
(36, 6, 'ইনোভেশন কমিটির মিটিং নোটিশ অক্টোবর ২০১৯', NULL, 'notice/1573100150.pdf', '0000-00-00 00:00:00', NULL, '2019-11-06 22:15:50', '2019-11-06 22:15:50'),
(37, 4, 'ই-নথির সচেতনতা বৃদ্ধি বিষয়ক সভার কাযর্বিবরনী (সেপ্টেম্বর ২০১৯)', NULL, 'notice/1573100213.pdf', '0000-00-00 00:00:00', NULL, '2019-11-06 22:16:53', '2019-11-06 22:16:53'),
(38, 7, 'APA সংক্রান্ত প্রশিক্ষন', NULL, 'notice/1573100495.pdf', '0000-00-00 00:00:00', NULL, '2019-11-06 22:21:35', '2019-11-06 22:21:35'),
(39, 7, 'পরিবেশ শাখার কার্যাবলি সম্পর্কিত অফিস আদেশ', NULL, 'notice/1573101277.pdf', '0000-00-00 00:00:00', NULL, '2019-11-06 22:34:37', '2019-11-06 22:34:37'),
(40, 7, 'এইচআর বিভাগের কর্মকর্তাদের কার্যাবলী শাখাভিত্তিক পুনঃবন্টনের অফিস আদেশ।', NULL, 'notice/1573102073.pdf', '0000-00-00 00:00:00', NULL, '2019-11-06 22:47:53', '2019-11-06 22:47:53'),
(41, 13, 'যোগদান পত্র- এ কে এম মোস্তাফিজুর রহমান', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/1f9de34d_8e84_4796_8aeb_5b9ccf3c905b/7b89ead376d7f3035350abed8908c8f5.pdf', NULL, '0000-00-00 00:00:00', NULL, '2019-11-07 03:34:51', '2019-11-07 03:34:51'),
(43, 7, 'ইজিসিবি লিঃ এর বিভিন্ন প্রতিবেদন যথাসময়ে বিদ্যুৎ বিভাগে প্রেরন প্রসঙ্গে', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/328158de93dd941655f8edb1bcd6df1a.pdf', NULL, '2019-10-28 00:00:00', NULL, '2019-11-12 21:55:07', '2019-11-12 21:55:07'),
(44, 7, 'ইজিসিবি লিঃ এর ডাটা সেন্টার রক্ষনাবেক্ষন সংক্রান্ত অফিস আদেশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/910d838858119281924a5a4c78746398.pdf', NULL, '2019-10-29 00:00:00', NULL, '2019-11-13 02:43:13', '2019-11-13 02:43:13'),
(45, 6, '১৮ নভেম্বর ,২০১৯  সভাসমুহের নোটিশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/1ea141beaceb0e2a8a93e0594536435b.pdf', NULL, '2019-11-11 00:00:00', NULL, '2019-11-13 02:45:23', '2019-11-13 02:45:23'),
(46, 7, 'আয়েশা বেগম, আসিস্টেন্ট ম্যানেজার(ফিনান্স), এর ইতালি ভ্রমন সংক্রান্ত অফিস আদেশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/ab2047de0dc866ef1900d9dfbc4c0de0.pdf', NULL, '2019-11-11 00:00:00', NULL, '2019-11-13 02:48:32', '2019-11-13 02:48:32'),
(47, 7, 'SAP ERP System এ ব্যাকলগ ডাটা এন্ট্রি সংক্রান্ত অফিস আদেশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/4d8aa0043b5065ff189d382a1a6e964c.pdf', NULL, '2019-11-13 00:00:00', NULL, '2019-11-13 22:35:02', '2019-11-13 22:35:02'),
(48, 6, 'ইনোভেশন কমিটির সভা (নভেম্বর ২০১৯)', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/b062e65c28f24f14f27f95bbfc1b573d.pdf', NULL, '2019-11-13 00:00:00', NULL, '2019-11-14 00:54:26', '2019-11-14 00:54:26'),
(49, 11, 'ইজিসিবি লিঃ এর WPPF নীতিমালা', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/69a328fbf33966d30b4944ea2bc8e67e.pdf', NULL, '2019-11-14 00:00:00', NULL, '2019-11-14 05:46:21', '2019-11-14 05:46:21'),
(50, 11, 'ইজিসিবি লিঃ এর ২২তম (২০১৯) বার্ষিক সাধারন সভার বিজ্ঞপ্তি।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/a86cecae_568a_4d32_935f_eb5393c72045/f1b40e8c057ec577c8fbe9b9ebf796a1.pdf', NULL, '2019-11-20 00:00:00', NULL, '2019-11-20 21:47:53', '2019-11-20 21:47:53'),
(51, 5, 'বিদ্যুৎ সেক্টরে সুশাসন নিশ্চিত করনের নির্দেশনা।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/a86cecae_568a_4d32_935f_eb5393c72045/c997e27eb37e0df3148decf8cb074b9e.pdf', NULL, '2019-11-20 00:00:00', NULL, '2019-11-21 05:29:13', '2019-11-21 05:29:13'),
(52, 6, 'ইজিসিবি’র বিদ্যমান সিটিজেন চার্টার আধুনিকীকরণ প্রসঙ্গে সভার নোটিশ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/b343fb29ff45fdc757da881be1cfec56.pdf', NULL, '2019-11-24 00:00:00', NULL, '2019-11-24 21:45:32', '2019-11-24 21:45:32'),
(53, 4, 'ইজিসিবি লিঃ এর নভেম্বর-২০১৯ মাসের মাসিক সমন্বয় সভার কার্যবিবরণী', NULL, 'notice/1574676679.pdf', '2019-11-25 00:00:00', NULL, '2019-11-25 04:11:19', '2019-11-25 04:11:19'),
(54, 4, 'প্রকল্পের অগ্রগতি সভার কার্যবিবরণী (নভেম্বর-২০১৯)', NULL, 'notice/1574676781.pdf', '2019-11-25 00:00:00', NULL, '2019-11-25 04:13:01', '2019-11-25 04:13:01'),
(55, 5, 'Formation of negotiation Committee. [Pekua]', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/e6a4579d7abc733eb1d90bb51bf66b6d.pdf', NULL, '2019-11-21 00:00:00', NULL, '2019-11-25 06:21:16', '2019-11-25 06:21:16'),
(56, 5, 'pdf মহান বিজয় দিবস-২০১৯ উদযাপন উপলক্ষ্যে গৃহীত জাতীয় কর্মসূচীর আলোকে ইজিসিবি’র কার্যক্রম গ্রহণ প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/3568785bd7d5abf87780e74777323442.pdf', NULL, '2019-11-20 00:00:00', NULL, '2019-11-25 06:23:14', '2019-11-25 06:23:14'),
(57, 11, 'Financial Proposal of RFP Meeting Notice, dtd 26.11.2019', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/a86cecae_568a_4d32_935f_eb5393c72045/bd3efffc19e2b05b5b5a9cc67c2b37fb.pdf', NULL, '2019-11-25 00:00:00', NULL, '2019-11-25 06:25:21', '2019-11-25 06:25:21'),
(58, 4, 'নিরাপত্তা বিষয়ক সভার কাযবিবরনী (নভেম্বর-২০১৯)', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/f41558be0990336ca1001d64522714a0.pdf', NULL, '2019-11-18 00:00:00', NULL, '2019-11-25 06:29:03', '2019-11-25 06:29:03'),
(59, 8, 'বিপিআইএম কর্তৃক প্রদত্ত ”Company Affairs” প্রশিক্ষণের জন্য ইজিসিবি লিঃ এর মনোনয়ন।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/d474ddcd5380de529be8a32946b2c768.pdf', NULL, '2019-11-25 00:00:00', NULL, '2019-11-25 06:36:48', '2019-11-25 06:36:48'),
(60, 8, 'বিপিআইএম কর্তৃক প্রদত্ত “Design, Manufacturing and Testing of Transformer” প্রশিক্ষণের জন্য ইজিসিবি লিঃ এর মনোনয়ন।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/a60cbff1379ea67c502c076a3d41309f.pdf', NULL, '2019-11-25 00:00:00', NULL, '2019-11-25 06:37:17', '2019-11-25 06:37:17'),
(61, 7, 'মিজানুর রহমান (অফিস এটেন্ডেন্ট) এর বদলির আদেশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/6b67f6d7_0643_4e72_9ece_8194f12cad26/ac1ba6191e0fea3d5b8dddaaa60b4310.pdf', NULL, '2019-11-26 00:00:00', NULL, '2019-11-26 06:16:17', '2019-11-26 06:16:17'),
(62, 6, 'হরিপুর ৪১২ মেঃওঃ বিদ্যুৎ কেন্দ্রের ক্যাপাসিটি বিষয়ক মিটিং নোটিশ ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/38e3ef104dde118c046eac2432dba61e.pdf', NULL, '2019-11-26 00:00:00', NULL, '2019-11-26 06:20:48', '2019-11-26 06:20:48'),
(63, 7, 'করপোরেট অফিসের গাড়ি মেরামত এর জন্য মুল্যায়ন কমিটি।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/f4684af79370159a5b96e1f4d1ea93b4.pdf', NULL, '2019-11-26 00:00:00', NULL, '2019-11-27 22:10:37', '2019-11-27 22:10:37'),
(64, 5, 'ইজিসিবি এর নির্বাহী প্রকৌশলী পদের চুড়ান্ত জ্যেষ্ঠতা তালিকা জারী', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/0e4e5656f1178860d7e88c408a835833.pdf', NULL, '2019-11-21 00:00:00', NULL, '2019-11-27 22:12:52', '2019-11-27 22:12:52'),
(65, 14, 'জ্যেষ্ঠতা আবেদন প্রসংগে-্মোঃ সিদ্দিকুর রহমান', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/daca4519e075b29855f1fdf5d11d821a.pdf', NULL, '2019-11-21 00:00:00', NULL, '2019-11-27 22:16:54', '2019-11-27 22:16:54'),
(66, 14, 'জ্যেষ্ঠতা আবেদন প্রসংগে-মোঃ ইলিয়াস হোসেন', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/b79a0901c795c96918ec5d799357d0cf.pdf', NULL, '2019-11-21 00:00:00', NULL, '2019-11-27 22:17:25', '2019-11-27 22:17:25'),
(67, 13, 'যোগদান পত্র- মোঃ নাজমুল আলম', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/1f9de34d_8e84_4796_8aeb_5b9ccf3c905b/358d76da39d6611cdcd3d6b3d5ec6bad.pdf', NULL, '2019-11-25 00:00:00', NULL, '2019-11-27 22:29:26', '2019-11-27 22:29:26'),
(68, 13, 'যোগদান পত্র-মোঃ শফিকুল ইসলাম', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/1f9de34d_8e84_4796_8aeb_5b9ccf3c905b/cb11d42c866b8b8956e9beb764e3b66a.pdf', NULL, '2019-11-25 00:00:00', NULL, '2019-11-27 22:51:41', '2019-11-27 22:51:41'),
(69, 14, 'Bangladesh-China Power Company (Pvt.) Ltd. এ Superintending Engineer (Procurement) পদে আবেদন করার অনুমতি প্রসঙ্গে। -- জনাব মোহাম্মদ নূরে আলাম সিদ্দিকী', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/b8159a128e7f41425aee9ca5686580d1.pdf', NULL, '2019-11-26 00:00:00', NULL, '2019-11-27 23:10:14', '2019-11-27 23:10:14'),
(70, 14, 'Bangladesh-China Power Company (Pvt.) Ltd. এ Superintending Engineer (Procurement) পদে আবেদন করার অনুমতি প্রসঙ্গে। -- জনাব মোহাম্মদ কামরুজ্জামান', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/29fa4a9795d6bdc445c9971bb7014f43.pdf', NULL, '2019-11-26 00:00:00', NULL, '2019-11-27 23:11:51', '2019-11-27 23:11:51'),
(71, 14, 'Bangladesh-China Power Company (Pvt.) Ltd. এ Superintending Engineer (Procurement) পদে আবেদন করার অনুমতি প্রসঙ্গে। -- জনাব দিলওয়ার হোসেন', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/fe4b52cd9490ee2c5e1305a1ad341406.pdf', NULL, '2019-11-26 00:00:00', NULL, '2019-11-27 23:15:42', '2019-11-27 23:15:42'),
(72, 14, 'Bangladesh-China Power Company (Pvt.) Ltd. এ Superintending Engineer (Procurement) পদে আবেদন করার অনুমতি প্রসঙ্গে। -- জনাব মোঃ হাসান জাহিদুল ইসলাম', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/ab55cdd56f439e946bc641585869efa4.pdf', NULL, '2019-11-26 00:00:00', NULL, '2019-11-27 23:16:31', '2019-11-27 23:16:31'),
(73, 8, 'আয়েশা বেগম, সহকারী ব্যবস্থাপক(ফিনান্স), এর ইতালি ভ্রমন সংক্রান্ত অফিস আদেশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/go_ultimate/28132c73_72d5_49a2_9278_c862401425a7/3d34358cbbe564b7ab06aa9ec79a5d3c.pdf', NULL, '2019-11-28 00:00:00', NULL, '2019-11-28 04:03:05', '2019-11-28 04:03:05'),
(74, 5, 'Audit Reply against the Audit Inspection Report---New Haripur Powerplant Development Project', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/36071612ddda29366985fa73468306d4.pdf', NULL, '2019-11-28 00:00:00', NULL, '2019-11-30 21:41:10', '2019-11-30 21:41:10'),
(76, 8, 'জনাব মহসিনুল হক সাফিক ,নির্বাহী প্রকৌশলী, এর ইতালি ভ্রমন সংক্রান্ত অফিস আদেশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/f995e5b07519b025a39db067857ca592.pdf', NULL, '2019-11-28 00:00:00', NULL, '2019-11-30 21:50:36', '2019-11-30 21:50:36'),
(77, 8, 'জনাব এ কে এম ওহিদুজ্জামান , ম্যানেজার(হিসাব), এর ইতালি ভ্রমন সংক্রান্ত অফিস আদেশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/3c69d31e90628ba81dd9350dfef75ca3.pdf', NULL, '2019-11-28 00:00:00', NULL, '2019-11-30 21:51:26', '2019-11-30 21:51:26'),
(78, 5, 'নিরাপত্তা সংক্রান্ত জাতীয় কমিটির সভার সিদ্ধান্ত প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/b18b6d6d812d621e0aa68a80d7bddd57.pdf', NULL, '2019-11-13 00:00:00', NULL, '2019-11-30 22:12:34', '2019-11-30 22:12:34'),
(80, 7, 'সিদ্ধিরগঞ্জ ৩৩৫ মেঃওঃ সিসিপিপি এর Resource Person এর তালিকায়  জনাব এ.কে.এম.মোস্তাফিজুর রহমান, তত্ত্বাবধায়ক প্রকৌশলী (সংরক্ষণ)-কে Resource Person হিসেবে অন্তর্ভুক্তি।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/1b864e797f15205659a777eee7698749.pdf', NULL, '2019-11-26 00:00:00', NULL, '2019-11-30 22:21:40', '2019-11-30 22:21:40'),
(81, 7, 'জনাব ফয়সাল হক, সহকারী প্রকৌশলী ও  জনাব মোঃ শরিফুল আলম সরকার, সহকারী প্রকৌশলী  সিদ্ধিরগঞ্জ ৩৩৫ মেঃওঃ সিসিপিপি নির্মাণ প্রকল্প এর বদলির আদেশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/6b67f6d7_0643_4e72_9ece_8194f12cad26/a1465ecf9baf012bf0fe20dd25ee77f5.pdf', NULL, '2019-11-27 00:00:00', NULL, '2019-11-30 22:35:53', '2019-11-30 22:35:53'),
(82, 10, 'জনাব ইব্রাহীম আহমদ শাফী আল মোহতাদ, তত্ত্বাবধায়ক প্রকৌশলী (পিএন্ডডি), কর্পোরেট অফিস এর ছুটি নগদায়ন ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/daa693f1ab0ab95a3ae0667d7d0a2e15.pdf', NULL, '2019-11-26 00:00:00', NULL, '2019-11-30 22:51:26', '2019-11-30 22:51:26'),
(83, 8, 'প্রশিক্ষণ একাডেমী, বিউবো, কক্সবাজারে ডিসেম্বর/২০১৯ মাসে অনুষ্ঠিত প্রশিক্ষণে ইজিসিবি লিঃ এ কর্মরত কর্মকর্তা/কর্মচারীগণের প্রশিক্ষণ ফি প্রদান প্রসঙ্গে', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/be8a4d8159cc3c716e6d55dda42c739a.pdf', NULL, '2019-11-27 00:00:00', NULL, '2019-11-30 22:57:22', '2019-11-30 22:57:22'),
(84, 6, 'মিটিং নোটিশ, ১ ডিসেম্বর ২০১৯', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/08db68e7e2206a7cccd47722494ce446.pdf', NULL, '2019-12-01 00:00:00', NULL, '2019-12-01 00:19:11', '2019-12-01 00:19:11'),
(85, 6, 'দরপত্র মূল্যায়ন কমিটির সভা- ২ ডিসেম্বর ২০১৯', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/737e38db1a758ba369fb8197139c0c07.pdf', NULL, '2019-12-01 00:00:00', NULL, '2019-12-01 01:04:44', '2019-12-01 01:04:44'),
(86, 5, 'Internal Audit circular-IMS-2019-20', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/100807baf3638597ddea88ead129a43c.pdf', NULL, '2019-12-01 00:00:00', NULL, '2019-12-01 03:56:25', '2019-12-01 03:56:25'),
(87, 6, 'ইজিসিবি লিঃ এর ইনোভেশন কমিটির ডিসেম্বর ২০১৯ ইং এর সভা প্রসঙ্গে', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/b1660b43fe7dc9080770f83a696e831c.pdf', NULL, '2019-12-01 00:00:00', NULL, '2019-12-01 06:31:09', '2019-12-01 06:31:09'),
(88, 9, 'জনাব মোহাম্মদ আবু হানিফ আফ্রাদ, ব্যবস্থাপক (হিসাব),সিদ্ধিরগঞ্জ ২×১২০ মেঃওঃ পিপিপি, ইজিসিবি ,সিদ্ধিরগঞ্জ,নারায়ণগঞ্জ এর ওমরাহ হজ পালনের জন্য বহিঃবাংলাদেশ (অর্জিত) ছুটি মঞ্জুর প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/8b00e39f2b231a2ff602beea77b623b7.pdf', NULL, '2019-12-01 00:00:00', NULL, '2019-12-01 23:28:59', '2019-12-01 23:28:59'),
(89, 7, 'জনাব মোঃ ইশরাক আহমেদ , টেকনিক্যাল অ্যাটেনডেন্ট, সোনাগাজী ৫০ মেঃওঃ সৌর বিদ্যুৎ কেন্দ্র নির্মাণ প্রকল্প এর ইজিসিবি এর চাকরি থেকে অব্যাহতি প্রদান।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/6bf05aa4abf60d9da97a3787630c17d4.pdf', NULL, '2019-12-02 00:00:00', NULL, '2019-12-02 03:02:19', '2019-12-02 03:02:19'),
(90, 5, 'দপ্তরাদেশ মুন্সীগঞ্জ ভ্রমণ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/da24de84c56bbdd3ef1c03f6eabd5194.pdf', NULL, '2019-12-02 00:00:00', NULL, '2019-12-02 05:35:10', '2019-12-02 05:35:10'),
(91, 5, 'ইজিসিবি এর ফোরম্যান পদের চুড়ান্ত তালিকা জারিকরণ প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/da6b5eda779dc9cb39826d48dddcf8ce.pdf', NULL, '2019-12-02 00:00:00', NULL, '2019-12-02 05:38:09', '2019-12-02 05:38:09'),
(92, 5, 'ইজিসিবি এর অফিস সহকারী পদের চুড়ান্ত তালিকা জারিকরণ প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/5a17d0e28db6370e0d906f881ae6aa1e.pdf', NULL, '2019-12-02 00:00:00', NULL, '2019-12-02 05:38:36', '2019-12-02 05:38:36'),
(93, 9, 'বহিঃবাংলাদেশ ছুটিঃ জনাব এ টি এম রাকিবুর রহমান , সহকারী প্রকৌশলী, হরিপুর ৪১২ মেঃ ওঃ সিসিপিপি।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/go_ultimate/b628e17b_21a1_49ca_a005_165097eacf68/646c50e5c3b587ab791ee9b17db9f7c2.pdf', NULL, '2019-12-02 00:00:00', NULL, '2019-12-02 22:14:55', '2019-12-02 22:14:55'),
(94, 5, 'দপ্তরাদেশঃ দরপত্র মুল্যায়ন কমিটি।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/fcb53ad25488225c29a2e4029fe5ef64.pdf', NULL, '2019-12-02 00:00:00', NULL, '2019-12-03 03:24:06', '2019-12-03 03:24:06'),
(95, 5, 'বার্ষিক কর্মসম্পাদন চুক্তি (এপিএ) বাস্তবায়নে বিদ্যুৎ বিভাগ প্রথম স্থান অধিকার করায় সকল কর্মকর্তা-কর্মচারীগণকে অভিনন্দন জ্ঞাপন', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-17-09-38-0ca26ba801af7725795a70dfde001837.pdf', NULL, '2019-12-02 00:00:00', NULL, '2019-12-03 05:13:59', '2019-12-03 05:13:59'),
(97, 7, 'জনাব অনিন্দ্য স্বর্ণকার, উপ-বিভাগীয় প্রকৌশলী,সিদ্ধিরগঞ্জ ২x১২০ মেঃওঃ পিকিং পাওয়ার প্ল্যান্ট, ইজিসিবি, কে  Executive MBA প্রোগ্রামে অধ্যয়নের অনুমতি প্রদান।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/36db618cf85523b94cbd2957b8d56c77.pdf', NULL, '2019-12-03 00:00:00', NULL, '2019-12-03 22:12:05', '2019-12-03 22:12:05'),
(98, 6, 'মিটিং নোটিশ, ৫ ডিসেম্বর ২০১৯', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/eb4e4d928220def7319392cda2c31882.pdf', NULL, '2019-12-04 00:00:00', NULL, '2019-12-04 01:14:34', '2019-12-04 01:14:34'),
(99, 6, 'ইজিসিবি লিঃ এর ইনোভেশন কমিটির ডিসেম্বর ২০১৯ ইং (সংশোধিত নতুন তারিখ) এর সভা প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/18c79579ca9175557e765701f358a0a3.pdf', NULL, '2019-12-04 00:00:00', NULL, '2019-12-04 05:45:15', '2019-12-04 05:45:15'),
(100, 5, '“ডিজিটাল ডিভাইস, ইন্টারনেট ও তথ্য রক্ষণাবেক্ষণ এবং নিরাপত্তা নির্দেশিকা, ২০১৯” এর খসড়া', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/7f2a22ee241e7cc96bc1456af6234a1c.pdf', NULL, '2019-12-01 00:00:00', NULL, '2019-12-04 05:48:53', '2019-12-04 05:48:53'),
(101, 5, 'ইজিসিবি এর গাড়ী চালক পদের খসড়া তালিকা জারিকরণ প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/651c47da7a8e5a3adcf2b57810a2da47.pdf', NULL, '2019-12-04 00:00:00', NULL, '2019-12-04 05:51:46', '2019-12-04 05:51:46'),
(102, 7, '২২ তম বার্ষিক সাধারন সভায় চেয়ারম্যান মহোদয় ও  বোর্ড মেম্বারদের অভ্যর্থনা বিষয়ক অফিস আদেশ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/d2558166b0e9f48875bb43b6a9caaa19.pdf', NULL, '2019-12-04 00:00:00', NULL, '2019-12-04 06:01:38', '2019-12-04 06:01:38'),
(103, 7, '২২ তম বার্ষিক সাধারন সভার আমন্ত্রিত অতিথিদের অভ্যর্থনা বিষয়ক অফিস আদেশ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/d7af2d1971fae9887c74bf54619bf8f1.pdf', NULL, '2019-12-04 00:00:00', NULL, '2019-12-04 06:02:03', '2019-12-04 06:02:03'),
(104, 5, 'দরপত্র উম্মুক্তকরন কমিটি।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/cbc7be67671ba271e1926a1aa029e2b5.pdf', NULL, '2019-12-04 00:00:00', NULL, '2019-12-05 01:32:05', '2019-12-05 01:32:05'),
(105, 5, 'দরপত্র মুল্যায়ন কমিটি।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/3a9d8dc4faabd8994c54538ef15d4133.pdf', NULL, '2019-12-04 00:00:00', NULL, '2019-12-05 01:32:40', '2019-12-05 01:32:40'),
(106, 7, 'ERP pay roll সংক্রান্ত অফিস আদেশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/4f17e55f8b7d9cb5eef82741d6090f37.pdf', NULL, '2019-12-04 00:00:00', NULL, '2019-12-08 01:06:56', '2019-12-08 01:06:56'),
(107, 6, '১০-২০১৯ তম বোর্ড সভার নোটিশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/4d70c3e8bfbfdec7d0862a38e3286040.pdf', NULL, '2019-12-08 00:00:00', NULL, '2019-12-08 03:27:45', '2019-12-08 03:27:45'),
(108, 8, 'জনাব এস এম আতিকুর রহমান , ব্যবস্থাপক(প্রশাসন), এর জাপান ভ্রমন সংক্রান্ত অফিস আদেশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/go_ultimate/eceaaaad_6f42_4e68_875c_a7abdc36778c/3bfde53f79bb943c7d470cb00d5314f4.pdf', NULL, '2019-12-05 00:00:00', NULL, '2019-12-08 03:35:24', '2019-12-08 03:35:24'),
(109, 11, 'Detailed feasibility study বিষয়ক পরামর্শক প্রতিষ্ঠান নিয়োগ সংক্রান্ত বিজ্ঞপ্তি ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/a86cecae_568a_4d32_935f_eb5393c72045/282d4166a643e9c269b73cb9cc3e732a.pdf', NULL, '2019-12-05 00:00:00', NULL, '2019-12-08 04:23:19', '2019-12-08 04:23:19'),
(110, 5, 'মুজিব বর্ষ উপলক্ষে “পরিচ্ছন্ন গ্রাম-পরিচ্ছন্ন শহর” কার্যক্রম বাস্তবায়নের জন্য ইজিসিবি”র কর্মপরিকল্পনা বিদ্যুৎ বিভাগে প্রেরণ প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-09-11-43-d6fa1e50cdf7f80d3d52b5963558eb27.pdf', NULL, '2019-12-08 00:00:00', NULL, '2019-12-08 23:44:43', '2019-12-08 23:44:43'),
(112, 7, '১০/২০১৯ বোর্ড সভায় বোর্ড মেম্বারদের অভ্যর্থনা বিষয়ক অফিস আদেশ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-10-10-05-db01e9f8e99e98ed7e3263faec8ceab2.pdf', NULL, '2019-12-09 00:00:00', NULL, '2019-12-09 22:09:15', '2019-12-09 22:09:15'),
(113, 7, 'জনাব অনিন্দ্য চৌধুরী, টেকনিক্যাল অ্যাটেনডেন্ট, সিদ্ধিরগঞ্জ ৩৩৫ মেঃওঃ সিসিপিপি, সিদ্ধিরগঞ্জ, নারায়ণগঞ্জ কে  ইজিসিবি এর চাকরি থেকে অব্যাহতি প্রদান ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-10-13-01-f87846f7053df2e011880f8d5bbed653.pdf', NULL, '2019-12-09 00:00:00', NULL, '2019-12-10 01:03:03', '2019-12-10 01:03:03'),
(114, 6, 'সভার বিজ্ঞপ্তিঃ এপিএ টীম', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/2019-12-10-13-04-746f9f9c4a06caab2529c233453a81a2.pdf', NULL, '2019-12-10 00:00:00', NULL, '2019-12-10 01:05:38', '2019-12-10 01:05:38'),
(115, 7, 'নারীর প্রতি বৈষম্য ও হয়রানি নিরসণের লক্ষ্যে ইতোপূর্বে ৩০/০৭/২০১৯ তারিখে গঠিত কমপ্লেইন্ট কমিটি পুনর্গঠন', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-10-14-05-0e8deb82fb8711989918503036fc09b1.pdf', NULL, '2019-12-08 00:00:00', NULL, '2019-12-10 02:06:47', '2019-12-10 02:06:47'),
(116, 10, 'জনাব মোহাম্মদ আনোয়ার হোসেন, তত্ত্বাবধায়ক প্রকৌশলী (প্রকিউরমেন্ট), কর্পোরেট অফিস এর ছুটি নগদায়ন ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-10-14-11-8b50596ef51c70a0cc7b378bf177f877.pdf', NULL, '2019-12-09 00:00:00', NULL, '2019-12-10 02:12:00', '2019-12-10 02:12:00'),
(117, 6, 'প্রকিউরমেন্ট এন্ড টেকনিক্যাল কমিটির ১২/২০১৯ তম সভার নোটিশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/2019-12-10-15-58-e0b12fc7d861b63df019c0b8a3eb95fb.pdf', NULL, '2019-12-10 00:00:00', NULL, '2019-12-10 03:59:35', '2019-12-10 03:59:35'),
(118, 7, 'জনাব মোঃ বখতিয়ার উদ্দিন, সহকারী প্রকৌশলী, সিদ্ধিরগঞ্জ ৩৩৫ মেঃওঃ সিসিপিপি, ইজিসিবি, সিদ্ধিরগঞ্জ, নারায়নগঞ্জ কে ইজিসিবি’র এর চাকরি থেকে অব্যাহতি প্রদান।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-10-16-09-dca764c97b1a41be058d4cb3fafe2a0f.pdf', NULL, '2019-12-10 00:00:00', NULL, '2019-12-10 04:10:28', '2019-12-10 04:10:28'),
(119, 7, 'আবাসিক বাসা বরাদ্দ নীতিমালা প্রণয়ন কমিটি', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-10-16-23-253773b535c4f901a50d2ede1ccca1ae.pdf', NULL, '2019-12-10 00:00:00', NULL, '2019-12-10 04:24:32', '2019-12-10 04:24:32'),
(120, 8, '\"Financial Analysis for Decision Making\"-শীর্ষক প্রশিক্ষণ কোর্সে অংশগ্রহণের জন্য জনাব মোহাম্মদ তৌফিক-ই-এলাহী, জুনিয়র সহকারী ব্যবস্থাপক (অর্থ), কর্পোরেট অফিস, ইজিসিবি, ঢাকা-কে ছাড়পত্র প্রদান ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-11-09-34-99c05a964f726a6e54cc3af0902d34bc.pdf', NULL, '2019-12-10 00:00:00', NULL, '2019-12-10 21:36:08', '2019-12-10 21:36:08'),
(121, 8, '\"Financial Analysis for Decision Making\"-শীর্ষক প্রশিক্ষণ কোর্সে অংশগ্রহণের জন্যজনাব মোঃ আবুল হোসেন, উপ-ব্যবস্থাপক (হিসাব), কর্পোরেট অফিস, ইজিসিবি, ঢাকা-কে ছাড়পত্র প্রদান ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-11-09-34-ef6e199334caab0a71f49738d366e4b3.pdf', NULL, '2019-12-10 00:00:00', NULL, '2019-12-10 21:36:41', '2019-12-10 21:36:41'),
(122, 7, 'ERP System এর ESS ব্যবহার করার নির্দেশনা প্রদান প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-11-09-38-87ef6b8cbeb4d061d64ff5f9e704746b.pdf', NULL, '2019-12-10 00:00:00', NULL, '2019-12-10 21:39:29', '2019-12-10 21:39:29'),
(123, 6, 'সভার নোটিশ, ১৫ ডিসেম্বর ২০১৯', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/2019-12-11-09-41-e77dab646493e6b99834e240c60f8a34.pdf', NULL, '2019-12-10 00:00:00', NULL, '2019-12-10 21:45:31', '2019-12-10 21:45:31'),
(124, 4, 'ইজিসিবি এর এপিএ টিমের ডিসেম্বর-২০১৯ মাসের মাসিক সভার কার্যবিবরণী', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/2019-12-11-15-17-15c5b40ecf940457e9c5eca7d079d60a.pdf', NULL, '2019-12-11 00:00:00', NULL, '2019-12-11 03:18:39', '2019-12-11 03:18:39'),
(125, 11, 'বিজয় দিবস উদযাপন, সিদ্ধিরগঞ্জ ২x১২০ মেঃওঃ বিদ্যুৎ কেন্দ্র।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/a86cecae_568a_4d32_935f_eb5393c72045/2019-12-11-15-36-01268df516b30d8a9b2a98174689a459.pdf', NULL, '2019-12-11 00:00:00', NULL, '2019-12-11 03:36:22', '2019-12-11 03:36:22'),
(126, 7, 'সিদ্ধিরগঞ্জ ২x১২০ মেঃওঃ বিদ্যুৎ কেন্দ্র সম্পর্কিত দপ্তরাদেশ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-11-15-45-f26978dfa10bee9cbbdd3f32a6744065.pdf', NULL, '2019-12-11 00:00:00', NULL, '2019-12-11 03:48:26', '2019-12-11 03:48:26'),
(127, 7, 'জনাব মোঃ আরিফুল ইসলাম, উপ-সহকারী প্রকৌশলী, সিদ্ধিরগঞ্জ ৩৩৫ মেঃওঃ সিসিপিপি, ইজিসিবি, সিদ্ধিরগঞ্জ, নারায়ণগঞ্জ এর চাকরির চুক্তির মেয়াদ বৃদ্ধি', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-12-11-09-ffe66dcf03b1b7de5549c9de4602feb0.pdf', NULL, '2019-12-11 00:00:00', NULL, '2019-12-11 23:09:57', '2019-12-11 23:09:57'),
(128, 7, 'বিজয় দিবস উদযাপন, হরিপুর ৪১২ মেঃওঃ বিদ্যুৎ কেন্দ্র।', 'বিজয় দিবস উদযাপন, হরিপুর ৪১২ মেঃওঃ বিদ্যুৎ কেন্দ্র।', NULL, '2019-12-11 00:00:00', NULL, '2019-12-12 01:16:10', '2019-12-12 01:16:10'),
(129, 5, '.৩৩৫মেঃ ওঃ  ইপিসি ঠিকাদার কর্তৃক  যন্ত্রপাতি খালাশের প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-12-14-01-645e15a8b98cd03d53e5ae62ee701056.pdf', NULL, '2019-12-11 00:00:00', NULL, '2019-12-12 02:07:06', '2019-12-12 02:07:06'),
(130, 7, '\"Tender Evaluation Commitee\" Samsung C&T এর একটি দাবীর বিষয়ে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-12-14-10-827ae094f77e0cd87dfe83df4a08f6e2.pdf', NULL, '2019-12-12 00:00:00', NULL, '2019-12-12 02:14:51', '2019-12-12 02:14:51'),
(131, 11, 'শাখা ভিত্তিক পত্রসংখ্যা, নিস্পন্ন ও অনিস্পন্ন পত্র সংখ্যা প্রেরন এর নির্ধারিত ছক।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/a86cecae_568a_4d32_935f_eb5393c72045/2019-12-15-09-59-7e625ef064ef62f5fb2fbbef771e4047.pdf', NULL, '2019-12-12 00:00:00', NULL, '2019-12-14 22:00:24', '2019-12-14 22:00:24'),
(132, 9, 'বহিঃবাংলাদেশ ছুটিঃ জনাব মোঃ আবু হানিফ আফ্রাদ, ব্যবস্থাপক (হিসাব), সিদ্ধিরগঞ্জ ২×১২০ মেঃওঃ পিপিপি-কে অব্যাহতি প্রদান', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-15-13-32-cab358318d67b3b5d95c13e22796a55a.pdf', NULL, '2019-12-12 00:00:00', NULL, '2019-12-15 01:34:05', '2019-12-15 01:34:05'),
(133, 5, 'ইজিসিবি এর জুনিয়র সহকারী ব্যবস্থাপক (হিসাব/অর্থ/অডিট) পদের খসড়া জ্যেষ্ঠতা তালিকা জারীকরন প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-15-13-38-01dce4e24c807fa4c1f7258b1e2a7ba0.pdf', NULL, '2019-12-12 00:00:00', NULL, '2019-12-15 01:38:55', '2019-12-15 01:38:55'),
(134, 7, 'জনাব মেহনাজ ফাতেমা, অফিস সহকারী (গ্রেড-৩), সিদ্ধিরগঞ্জ ৩৩৫ মেঃওঃ সিসিপিপি, সিদ্ধিরগঞ্জ, নারায়ণগঞ্জ এর অসুস্থতার জন্য অর্জিত ছুটি মঞ্জুর।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-15-13-59-eb77b2ac0bf2474fc5fae0c88b70e9f4.pdf', NULL, '2019-12-12 00:00:00', NULL, '2019-12-15 02:01:12', '2019-12-15 02:01:12'),
(135, 8, 'Scorecard and Dashboards System পরিদর্শনের নিমিত্ত The Boston Consulting Group (BCG) কর্তৃক আয়োজিত থাইল্যান্ড ভ্রমণের জন্য প্রতিনিধি মনোনয়ন প্রসঙ্গে', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-15-14-08-104bc9a64e4be0ddc2513e101099227a.pdf', NULL, '2019-12-12 00:00:00', NULL, '2019-12-15 02:11:58', '2019-12-15 02:11:58'),
(136, 5, '৩৪ তম বার্ষিক আন্তঃ অফিস ক্রীডা প্রতিযোগিতার ব্যয় নির্বাহের জন্য বরাদ্দ প্রদান প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-17-16-47-cd7876c5d0036ea04089c453cf2587c6.pdf', NULL, '2019-12-15 00:00:00', NULL, '2019-12-16 22:22:05', '2019-12-16 22:22:05'),
(137, 6, 'রেগুলার ইলেক্ট্রিশিয়ান প্রশিক্ষণ পরিচালনা কমিটির ৪র্থ সভার নোটিশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/2019-12-17-13-59-bde22e82ada053d2c48d3497fd7c9391.pdf', NULL, '2019-12-17 00:00:00', NULL, '2019-12-17 02:10:13', '2019-12-17 02:10:13'),
(138, 5, 'ইজিসিবি এর টেকনিশিয়ান পদের খসড়া জ্যেষ্ঠতা তালিকা জারিকরণ প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-17-14-15-b2bc52d50142c8937964e6825290f845.pdf', NULL, '2019-12-15 00:00:00', NULL, '2019-12-17 02:17:07', '2019-12-17 02:17:07'),
(139, 7, 'ইনসেনটিভ বোনাস বিষয়ক অফিস আদেশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-18-09-57-ce0c1534de86de91f3a12e8492ecc0cb.pdf', NULL, '2019-12-17 00:00:00', NULL, '2019-12-17 21:58:46', '2019-12-17 21:58:46'),
(140, 8, 'বিউবো’র রাজশাহী প্রশিক্ষণ কেন্দ্র, রাজশাহী তে ইজিসিবি এর কর্মচারীদের প্রশিক্ষণ প্রদান প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-18-10-19-c7655b56977dee497fe1c45575d5a983.pdf', NULL, '2019-12-17 00:00:00', NULL, '2019-12-17 22:21:16', '2019-12-17 22:21:16'),
(141, 7, 'ইনসেনটিভ বোনাস বিষয়ক অফিস আদেশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-18-10-31-f5286effdfe919bb24f9538f00e50b75.pdf', NULL, '2019-12-17 00:00:00', NULL, '2019-12-17 22:32:08', '2019-12-17 22:32:08'),
(142, 7, 'ইনসেনটিভ বোনাস বিষয়ক অফিস আদেশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-18-10-31-b485cf248865d77a93f0a73044e63c88.pdf', NULL, '2019-12-17 00:00:00', NULL, '2019-12-17 22:33:03', '2019-12-17 22:33:03'),
(143, 5, 'ইজিসিবি এর উপ-সহকারী প্রকৌশলী পদের চূড়ান্ত জ্যেষ্ঠতা তালিকা জারীকরণ প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-18-10-41-56597105415bbd6d6717085f2df6ad4b.pdf', NULL, '2019-12-17 00:00:00', NULL, '2019-12-17 22:45:54', '2019-12-17 22:45:54'),
(144, 7, 'বাঁশখালী ভ্রমনের অফিস আদেশ', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-18-13-23-45bee6cd7a21ac02888262ad7fcea9a8.pdf', NULL, '2019-12-18 00:00:00', NULL, '2019-12-18 01:25:25', '2019-12-18 01:25:25'),
(145, 13, 'যোগদান পত্র- এস এম আতিকুর  রহমান', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/1f9de34d_8e84_4796_8aeb_5b9ccf3c905b/2019-12-18-14-19-4ea0cfd6d4a074afa30e5798627e44f9.pdf', NULL, '2019-12-15 00:00:00', NULL, '2019-12-18 02:22:03', '2019-12-18 02:22:03'),
(146, 7, 'জনাব মোঃ শরিফুল আলম সরকার ,সহকারী প্রকৌশলী, এর বদলীপূর্বক পদস্থকরন সংক্রান্ত অফিস আদেশ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-18-14-31-49a767fdea4d847ed09993616d76cd1f.pdf', NULL, '2019-12-15 00:00:00', NULL, '2019-12-18 02:32:37', '2019-12-18 02:32:37'),
(147, 8, 'ইজিসিবি’র কর্মকর্তাদের অংশগ্রহণে ২৯/১২/২০১৯ থেকে ০২/০১/২০২০ তারিখ পর্যন্ত ০৫ দিনব্যাপী ইনোভেশন বিষয়ক প্রশিক্ষণ কর্মশালা আয়োজনের লক্ষ্যে সাধারণ মিলনায়তন-৫ম তলা, রুম নং-৪০৩ বরাদ্দকরণ প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-18-17-19-81482a1c2d75e69aacb9f0d6b7d94e19.pdf', NULL, '2019-12-17 00:00:00', NULL, '2019-12-18 05:19:56', '2019-12-18 05:19:56'),
(148, 7, 'টেকনিশিয়ানদের বদলীপূর্বক পদস্থকরন  সংক্রান্ত অফিস আদেশ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-18-17-21-c2adcc7f284feca8ac8f36076812493f.pdf', NULL, '2019-12-18 00:00:00', NULL, '2019-12-18 05:23:39', '2019-12-18 05:23:39'),
(149, 14, 'জ্যেষ্ঠতা আবেদন প্রসংগে-মোঃ আতিকুর রহমান', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-19-10-06-ea01925117e85d6754cf5f76f4e70b89.pdf', NULL, '2019-12-17 00:00:00', NULL, '2019-12-18 22:07:50', '2019-12-18 22:07:50'),
(150, 7, 'ভুল কেমিক্যাল ব্যবহার পুনরাবৃত্তি রোধে এবং এর কারণ অনুসন্ধানে কমিটি গঠন ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-19-10-10-29945e1832d364c7c67d49e7a18cdec2.pdf', NULL, '2019-12-18 00:00:00', NULL, '2019-12-18 22:10:56', '2019-12-18 22:10:56'),
(151, 9, 'বহিঃবাংলাদেশ ছুটিঃ জনাব এ টি এম রাকিবুর রহমান-কে অব্যাহতি প্রদান', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-22-10-24-33d9d80b5e8f3b868ee7f8054bcd4290.pdf', NULL, '2019-12-19 00:00:00', NULL, '2019-12-21 22:25:47', '2019-12-21 22:25:47'),
(152, 7, 'ERP System এর Material Management মডিউল ব্যবহার করা প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-22-10-40-9abf706c0f71e0c36bc13381171a726c.pdf', NULL, '2019-12-19 00:00:00', NULL, '2019-12-21 22:43:19', '2019-12-21 22:43:19'),
(153, 13, 'যোগদান পত্র- মোঃ এমদাদুল হক মোল্লা', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/1f9de34d_8e84_4796_8aeb_5b9ccf3c905b/2019-12-22-11-05-2c4428858a98deab18a346e74ed0b9a1.pdf', NULL, '2019-12-17 00:00:00', NULL, '2019-12-21 23:06:51', '2019-12-21 23:06:51'),
(154, 7, 'জনাব রাফসান-বিন-আনোয়ার, সহকারী প্রকৌশলী, সিদ্ধিরগঞ্জ ৩৩৫ মেঃওঃ সিসিপিপি, সিদ্ধিরগঞ্জ, নারায়ণগঞ্জ কে ইজিসিবি এর চাকরি থেকে অব্যাহতি প্রদান ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-22-11-15-8ec43fff8464872dd00971c5dd5a48d7.pdf', NULL, '2019-12-19 00:00:00', NULL, '2019-12-21 23:16:20', '2019-12-21 23:16:20'),
(155, 8, 'চট্টগ্রাম প্রশিক্ষণ কেন্দ্র, বিউবো, চট্টগ্রাম এ অনুষ্ঠিত প্রশিক্ষণে ইজিসিবি লিঃ এ কর্মরত কর্মকর্তা/কর্মচারীগণের প্রশিক্ষণ ফি প্রদান প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-22-11-25-84f9af18f71e1463bfd8d2f30ca7ebf0.pdf', NULL, '2019-12-19 00:00:00', NULL, '2019-12-21 23:26:48', '2019-12-21 23:26:48'),
(156, 7, 'কাজী মুহম্মদ হুমায়ূন কবীর, ব্যবস্থাপক (পরিবেশ), কর্পোরেট অফিস, ইজিসিবি, ঢাকা-কে নিজ দায়িত্বের অতিরিক্ত দায়িত্ব প্রদান', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-22-11-39-db661819ac77e6fb6fc277e390589b22.pdf', NULL, '2019-12-19 00:00:00', NULL, '2019-12-21 23:40:19', '2019-12-21 23:40:19'),
(157, 10, 'হোসেন মোঃ ফুয়াদ, জুনিয়র সহকারী ব্যবস্থাপক (হিসাব) এর ছুটি নগদায়ন ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-22-12-13-2c0f1a10db13984766ddcc0629da9f4e.pdf', NULL, '2019-12-19 00:00:00', NULL, '2019-12-22 00:13:56', '2019-12-22 00:13:56'),
(158, 5, 'List for service extension of staff in 2020', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-23-09-37-9529f8b740a361dc2ea2132258f59b84.pdf', NULL, '2019-12-22 00:00:00', NULL, '2019-12-22 21:38:31', '2019-12-22 21:38:31'),
(160, 5, 'Lists of officers for service extension in 2020', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-23-12-18-f963ecca7096bde8ad5d3709de233e9d.pdf', NULL, '2019-12-23 00:00:00', NULL, '2019-12-23 00:21:38', '2019-12-23 00:21:38'),
(161, 7, 'জনাব মোঃ এরশাদ হোসেন, অফিস অ্যাটেনডেন্ট (গ্রেড-২), কর্পোরেট অফিস, ইজিসিবি লিঃ, ঢাকা এর ছুটি নগদায়ন ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-23-09-43-4661d7ff228b4b964540096853432f7c.pdf', NULL, '2019-12-19 00:00:00', NULL, '2019-12-23 00:22:12', '2019-12-23 00:22:12'),
(162, 6, 'সভার নোটিশ, ২৪ ডিসেম্বর', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/2019-12-23-12-25-a4429e466b571f58f925843142afb9b1.pdf', NULL, '2019-12-23 00:00:00', NULL, '2019-12-23 00:27:06', '2019-12-23 00:27:06'),
(163, 8, 'বিপিএমআই (BPMI) এর প্রশিক্ষণে ইজিসিবি এর প্রশিক্ষনার্থী মনোনয়ন  প্রসঙ্গে', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-23-12-29-058eb4d862473fee8a7c8c5b65237b7d.pdf', NULL, '2019-12-23 00:00:00', NULL, '2019-12-23 00:29:48', '2019-12-23 00:29:48'),
(164, 6, 'সভার নোটিশ, ২৪ ডিসেম্বর (নারীর প্রতি বৈষম্য)', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/091ee845_41c6_4253_803c_71c985963680/2019-12-23-16-51-9d4a7b0135edbd123dfe8f23a09f3769.pdf', NULL, '2019-12-23 00:00:00', NULL, '2019-12-23 04:52:57', '2019-12-23 04:52:57'),
(165, 7, 'ক্রয়সংক্রান্ত কার্যক্রম বিষয়ক অফিস আদেশ।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-23-16-54-f043410d18b8e3f2cd4bd1b512288d38.pdf', NULL, '2019-12-23 00:00:00', NULL, '2019-12-23 04:55:00', '2019-12-23 04:55:00'),
(167, 13, 'যোগদান পত্র-  মোঃ সাইফুল ইসলাম', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/1f9de34d_8e84_4796_8aeb_5b9ccf3c905b/2019-12-24-11-18-d5e6d71aeeded5f236c3a53c0a72a6f0.pdf', NULL, '2019-12-02 00:00:00', NULL, '2019-12-23 23:20:56', '2019-12-23 23:20:56'),
(168, 13, 'যোগদান পত্র- ফরিদ উদ্দিন', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/1f9de34d_8e84_4796_8aeb_5b9ccf3c905b/2019-12-24-11-26-3984614560d9da4a367de3dbf4143106.pdf', NULL, '2019-12-02 00:00:00', NULL, '2019-12-23 23:30:09', '2019-12-23 23:30:09'),
(169, 8, 'ERP & EAM System Implementation প্রকল্পের আওতায় ব্যবহারকারীদের End-User Training প্রদান প্রসংগে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-24-16-43-11a71850d276ba6ddfe865ae651ddb35.pdf', NULL, '2019-12-24 00:00:00', NULL, '2019-12-24 04:44:57', '2019-12-24 04:44:57'),
(170, 8, 'নাগরিক সেবায় উদ্ভাবন’ বিষয়ক একটি প্রশিক্ষণ কর্মশালা।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-26-11-41-398b72591b0e314ebb9ef939cff412b9.pdf', NULL, '2019-12-24 00:00:00', NULL, '2019-12-25 23:41:30', '2019-12-25 23:41:30'),
(171, 5, 'বিদ্যুৎ উন্নয়ন বোর্ডের সকল শ্রেণির চাকরির ক্ষেত্রে এসেন্সিয়াল সার্ভিসেস (সেকেন্ড) অর্ডিন্যান্স, ১৯৫৮ প্রযোজ্য করা সংক্রান্ত ঘোষণার মেয়াদ ৬ (ছয়) মাস বৃদ্ধিকরণ প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/936d1b07_e500_40ad_941b_7b0d19ad8f8a/2019-12-26-12-28-65882ee06a1f4680fc8f8d0dfc1c313d.pdf', NULL, '2019-12-23 00:00:00', NULL, '2019-12-26 00:30:09', '2019-12-26 00:30:09'),
(172, 7, 'SAP ব্যবহার সংক্রান্ত Tier-1 Functional Assistance টীম গঠন', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-26-12-37-7a7cbd39da0b5b15b7cce50fff33c97e.pdf', NULL, '2019-12-24 00:00:00', NULL, '2019-12-26 00:38:27', '2019-12-26 00:38:27'),
(173, 7, 'জনাব তৌহিদুর রহমান খান, সহকারী প্রকৌশলী (পিএন্ডডি), কর্পোরেট অফিস, ইজিসিবি, ঢাকা-কে প্রকিউরমেন্ট বিভাগ, কর্পোরেট অফিস-এ সংযুক্ত করা প্রসঙ্গে', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-26-12-43-8a85f0dcce56791ee8c3f75571916e00.pdf', NULL, '2019-12-24 00:00:00', NULL, '2019-12-26 00:44:06', '2019-12-26 00:44:06'),
(174, 7, 'জনাব মোঃ আমিরুল ইসলাম, উপ-সহকারী প্রকৌশলী, সিদ্ধিরগঞ্জ ৩৩৫ মেঃওঃ সিসিপিপি, ইজিসিবি, সিদ্ধিরগঞ্জ, নারায়ণগঞ্জ এর চাকরির চুক্তির মেয়াদ বৃদ্ধি প্রসঙ্গে', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-26-12-50-2dfa8c24cf7eaf014aebcdc715910bdd.pdf', NULL, '2019-12-24 00:00:00', NULL, '2019-12-26 00:51:58', '2019-12-26 00:51:58'),
(175, 7, '২৯/১২/২০১৯ ইং তারিখে বিদ্যুৎ ভবনে অনুষ্ঠিত বোর্ড সভায় বোর্ডের চেয়ারম্যন মহোদয় এবং সম্মানিত পরিচালকগণকে অভ্যর্থনার মাধ্যমে বোর্ড রুমে নিয়ে আসার জন্য মনোনীত কর্মকর্তা সমূহ', NULL, 'notice/1577596981.pdf', '2019-12-29 00:00:00', NULL, '2019-12-28 23:23:01', '2019-12-28 23:23:01'),
(176, 6, 'আগামী ০২/০১/২০২০ ইং তারিখ বিকাল ০৩ ঘটিকায় কর্পোরেট অফিসে ২০১৯-২০ অর্থবছরে এপিএ এর মূল্যায়ন সম্পাদন সংক্রান্ত সভা', NULL, 'notice/1577597191.pdf', '2019-12-29 00:00:00', NULL, '2019-12-28 23:26:31', '2019-12-28 23:26:31'),
(177, 8, 'প্রশিক্ষণ একাডেমী, বিউবো, কক্সবাজার এ ইজিসিবি এ কর্মরত কর্মকর্তা/কর্মচারীদের প্রশিক্ষণ প্রদান প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-29-15-07-88fcaf37214e83e023b553bfe91edc39.pdf', NULL, '2019-12-26 00:00:00', NULL, '2019-12-29 03:08:12', '2019-12-29 03:08:12'),
(178, 8, 'চট্টগ্রাম প্রশিক্ষণ কেন্দ্র, বিউবো, চট্টগ্রাম এ ইজিসিবি লিঃ এ কর্মরত কর্মকর্তা/কর্মচারীদের প্রশিক্ষণ প্রদান প্রসঙ্গে।', 'https://egcb.portal.gov.bd/sites/default/files/files/egcb.portal.gov.bd/files/59c72ab1_a66e_42fa_bcba_35ed2444c17d/2019-12-29-15-10-a0996e2432ee7b32a77ad1756372a490.pdf', NULL, '2019-12-26 00:00:00', NULL, '2019-12-29 03:11:06', '2019-12-29 03:11:06');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `notice_types`
--

CREATE TABLE `notice_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `notice_types`
--

INSERT INTO `notice_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'Meeting Minutes', '2019-10-31 01:56:20', '2019-10-31 01:56:20'),
(5, 'Others', '2019-10-31 01:56:32', '2019-10-31 01:56:32'),
(6, 'Meeting Notice', '2019-11-03 22:38:01', '2019-11-03 22:38:01'),
(7, 'Office Order', '2019-11-03 22:40:24', '2019-11-03 22:40:24'),
(8, 'Official Training', '2019-11-18 00:37:12', '2019-11-18 00:37:12'),
(9, 'Ex-Bangladesh Leave', '2019-11-18 00:41:30', '2019-11-18 00:41:30'),
(10, 'Leave Encashment', '2019-11-18 00:44:24', '2019-11-18 00:44:24'),
(11, 'Circular', '2019-11-20 21:43:46', '2019-11-20 21:43:46'),
(13, 'Joining Letter', '2019-11-27 22:19:46', '2019-11-27 22:19:46'),
(14, 'Employee Applications', '2019-11-27 22:25:00', '2019-11-27 22:25:00');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jhon Dhoe', 'jhon@egcb.com.bd', NULL, 'admin', 'images/Profile/1572175223.jpg', '$2y$10$pLZiF1R/QBzWVeK5c5UFKeBaFDn7rv6ciA8ZF00KWcYmFlTq9CHgm', NULL, '2019-10-20 01:45:51', '2019-10-27 05:20:23'),
(9, 'Test', 'testuser', NULL, NULL, NULL, '$2y$10$8g9B/r3waPhbgCNm349nUOJSBhmUGwL4pyhjVR7Ut.DLZQyT47IXm', NULL, '2019-10-30 22:17:14', '2019-10-30 22:17:14'),
(11, 'Admin', 'EgcbAdmin', NULL, 'admin', NULL, '$2y$10$IdWOqDc/cNjc3Gi3OTVxkuEXdwnJ9uJAfTyTcYZoLCaJyZc6Q/PTi', NULL, '2019-11-02 23:21:36', '2019-11-02 23:21:36'),
(12, 'Egcb Users', 'egcbuser', NULL, NULL, NULL, '$2y$10$IoHEmTYOGIdZa.RxQExwEerphb9cZ23AFfregqEzJG0CDzzm2OLce', NULL, '2019-11-05 22:32:59', '2019-11-05 22:32:59');

--
-- স্তুপকৃত টেবলের ইনডেক্স
--

--
-- টেবিলের ইনডেক্সসমুহ `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- টেবিলের ইনডেক্সসমুহ `notice_types`
--
ALTER TABLE `notice_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notice_types_name_unique` (`name`);

--
-- টেবিলের ইনডেক্সসমুহ `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- স্তুপকৃত টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT)
--

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `notice_types`
--
ALTER TABLE `notice_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
