-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2022 at 02:31 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be15_cr13_bigevents_sedlaczek`
--
CREATE DATABASE IF NOT EXISTS `be15_cr13_bigevents_sedlaczek` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be15_cr13_bigevents_sedlaczek`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220410150005', '2022-04-10 17:00:26', 750),
('DoctrineMigrations\\Version20220410154211', '2022-04-10 17:42:24', 465),
('DoctrineMigrations\\Version20220410160055', '2022-04-10 18:01:03', 375),
('DoctrineMigrations\\Version20220410232347', '2022-04-11 01:23:59', 575);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  `timezone` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'CEST',
  `lead` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `organizer_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `category` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:array)',
  `price` decimal(6,2) DEFAULT 0.00,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `type`, `date`, `start`, `end`, `timezone`, `lead`, `description`, `capacity`, `organizer_id`, `location_id`, `category`, `price`, `img`, `url`) VALUES
(1, 'challenges of a female leader | the female factor fireside chat', 'Masterclass', '2022-06-29', '17:00:00', '18:30:00', 'CEST', 'Stepping up as a leader comes with certain challenges, especially as a woman.', 'Learn what you will encounter on your way up and explore how to deal with it', NULL, 1, 1, 'Business, Career, Women, Leadership', '74.75', '213642869_521976634379.jpg', 'https://www.eventbrite.com/e/challenges-of-a-female-leader-the-female-factor-fireside-chat-tickets-249480080637'),
(2, 'crucial conversations | the female factor impulse talk', 'Impulse talk', '2022-04-12', '18:00:00', '19:30:00', 'CEST', 'Learn more about the basics of good communication and prepare yourself to lead crucial conversations confidently.', 'Think of a conversation you had that you couldn’t wait to end. The discomfort, confusion or other emotions you felt are probably hard to forget.<br>Every once in a while, be it in the workspace or in your life, you realise that you need to have a conversation that’s not necessarily easy to have for either party involved. You could beat around the bush or avoid having it altogether, and when you inevitably end up needing to have it, you may not know how to navigate it.<br>In times like these, crucial communication skills come to your aid - from listening, to speaking and everything in between, we’re tackling it all in our online event.<br>the female factor would like to invite you to a discussion about communication skills that can make or break you as a leader.', NULL, 1, 1, 'Business, Career, Women, Communication', '74.75', '249587609_521976634379.jpg', 'https://www.eventbrite.com/e/crucial-conversations-the-female-factor-impulse-talk-tickets-249443350777'),
(3, 'How to start a career in Digital Product Management?', 'Webinar', '2022-04-26', '18:00:00', '19:00:00', 'CEST', 'With Katia Cassano, Product Credit EMEA Lead at Paypal, Mentor', 'Are you interested in pivoting your career into Digital Product Management but you are unsure about where to start? This webinar is perfect for you!', NULL, 2, 1, 'Career, IT, Management', '0.00', '263139599_422416487889.jpg', 'https://www.eventbrite.com/e/how-to-start-a-career-in-digital-product-management-tickets-311822358067'),
(4, 'the work place of the future - what really matters to the next generation', 'Webinar', '2022-04-20', '17:30:00', '19:30:00', 'CEST', 'A large-scale study reveals insights on what the next generation really want from their workplaces and gives hands-on recommendations.', 'Foosball table, fruit basket, an in-house gym - you guessed it, these “woke benefits” won’t attract talent in the long run.<br>A new generation of leaders is on the horizon, and they are clearly setting a new standard when it comes to workplace expectations. We at the female factor partnered with EY to find out what the next generation of female professionals really want from their employers.', NULL, 1, 1, 'Business, Career, Women, Leadership', '0.00', '252968239_521976634379.jpg', 'https://www.eventbrite.com/e/the-work-place-of-the-future-what-really-matters-to-the-next-generation-tickets-304734989557'),
(5, 'leadership fair - the career event for future leaders', 'Career fair', '2022-05-31', '15:00:00', '18:00:00', 'CEST', 'What does it take to step up as a leader? And is it the right step for you?', 'Our leadership career fair will take you on your very own discovery journey to explore the different key traits of leadership through inspiring panels and hands-on workshops with real-life cases.<br>250+ aspiring leaders | 50+ pioneering companies | 25+ key leadership traits to develop<br><i>\"If your actions inspire others to dream more, learn more, do more and become more, you are a leader.</i>\"', NULL, 1, 1, 'Business, Career, Women, Leadership', '0.00', '261571269_521976634379.jpg', 'https://www.eventbrite.com/e/leadership-fair-the-career-event-for-future-leaders-tickets-249459599377');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `city` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(53) COLLATE utf8mb4_unicode_ci DEFAULT 'Austria',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `address`, `zip`, `city`, `country`, `url`) VALUES
(1, 'Online event', NULL, NULL, NULL, NULL, NULL),
(2, 'Talent Garden Austria', 'Liechtensteinstraße 111-115', 1090, 'Vienna', 'Austria', 'https://talentgarden.org/en/coworking/austria/vienna');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organizer`
--

CREATE TABLE `organizer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `contact` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(26) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizer`
--

INSERT INTO `organizer` (`id`, `name`, `description`, `location_id`, `contact`, `email`, `phone`, `url`) VALUES
(1, 'the female factor', 'The female factor is a curated global community advancing careers and creating business opportunities for a new era of female leaders by boosting confidence, competence & connections.<br>No matter your goal - whether you want to work towards that promotion, settle in a new environment, change professions, write that book, start your own business or just want to be surrounded by other kickass women - we have your back.<br>Our tailor-made opportunity journey is designed to get you ahead with the right mentors, hands-on career knowledge, confidence training and a great network of like-minded people from over 47 countries worldwide.', 2, 'Tanja Sternbauer', 'hi@femalefactor.global', NULL, 'https://www.femalefactor.global'),
(2, 'Talent Garden Austria', 'The Talent Garden Innovation School provides fast, in-depth, and hands-on training programs designed to meet the real needs of the job market. We offer courses in the fields of digital technologies and innovation, with a focus on coding, UX design, data analysis, and digital marketing. Our formats range from 2-day Masterclasses to 8-weeks part-time and 3-month full-time programs.', 2, NULL, 'vienna@talentgarden.at', '+4312058183', 'https://talentgarden.org/en/coworking/austria/vienna');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3BAE0AA7876C4DDA` (`organizer_id`),
  ADD KEY `IDX_3BAE0AA764D218E` (`location_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indexes for table `organizer`
--
ALTER TABLE `organizer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_99D4717364D218E` (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organizer`
--
ALTER TABLE `organizer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_3BAE0AA764D218E` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `FK_3BAE0AA7876C4DDA` FOREIGN KEY (`organizer_id`) REFERENCES `organizer` (`id`);

--
-- Constraints for table `organizer`
--
ALTER TABLE `organizer`
  ADD CONSTRAINT `FK_99D4717364D218E` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
