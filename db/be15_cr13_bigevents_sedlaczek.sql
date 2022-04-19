-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2022 at 11:27 AM
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
('DoctrineMigrations\\Version20220417111815', '2022-04-17 13:18:32', 200),
('DoctrineMigrations\\Version20220417115223', '2022-04-17 13:52:28', 110),
('DoctrineMigrations\\Version20220417124149', '2022-04-17 14:41:54', 97),
('DoctrineMigrations\\Version20220417145053', '2022-04-17 16:51:03', 310),
('DoctrineMigrations\\Version20220419032437', '2022-04-19 05:24:50', 944),
('DoctrineMigrations\\Version20220419032704', '2022-04-19 05:27:10', 126),
('DoctrineMigrations\\Version20220419033334', '2022-04-19 05:33:40', 401),
('DoctrineMigrations\\Version20220419053805', '2022-04-19 07:38:15', 353),
('DoctrineMigrations\\Version20220419054543', '2022-04-19 07:45:48', 265);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `organizer_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `start` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  `lead` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `subtitle`, `type`, `price`, `capacity`, `organizer_id`, `location_id`, `date`, `start`, `end`, `lead`, `description`, `img`, `url`) VALUES
(1, 'challenges of a female leader', 'the female factor fireside chat', 'Masterclass', '74.75', NULL, 1, 1, '2022-06-29', '17:00:00', '18:30:00', 'Stepping up as a leader comes with certain challenges, especially as a woman', '<p><strong>what is this masterclass about?</strong></p>\r\n<p>Stepping up as a leader comes with certain challenges, especially as a woman. Learn what you will encounter on your way up and explore how to deal with it. </p>\r\n<p><strong>about the female factor</strong></p>\r\n<p>The female factor is a  global community for the next generation of female leaders.</p>\r\n<p><strong>about the inner circle</strong></p>\r\n<p>The inner circle is the members-only community by the female factor. Members get access to a tailor-made opportunity journey including mentoring sessions, hands-on career knowledge, accountability partners, confidence trainings and a great network of peers.</p>\r\n<p><strong>This event is part of the inner circle offer and free for all members.</strong> If you\'re not a member yet, you can apply to join via www.femalefactor.global/membership.</p>\r\n<p>Join the movement: <a href=\'http://www.femalefactor.global\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'>www.femalefactor.global</a></p>\r\n<p><strong>Terms of Participation Agreement: </strong><em>By participating at the event, you grant the female factor permission to capture photo/video of the event. You can find the exact legal terms on our website but to summarize, we want to share your success with the world. By submitting you agree to our </em><a href=\'https://www.femalefactor.global/impressum\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'><em>terms and conditions</em></a><em> and our </em><a href=\'https://www.femalefactor.global/impressum\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'><em>privacy policy</em></a><em>.</em></p>', '213642869_521976634379.jpg', 'https://www.eventbrite.com/e/challenges-of-a-female-leader-the-female-factor-fireside-chat-tickets-249480080637'),
(2, 'leadership fair', 'the career event for future leaders', 'Career fair', '0.00', NULL, 1, 1, '2022-05-31', '15:00:00', '18:00:00', 'What does it take to step up as a leader? And is it the right step for you?', '<p>What does it take to step up as a leader? And is it the right step for you? Our leadership career fair will take you on your very own discovery journey to explore the different key traits of leadership through inspiring panels and hands-on workshops with real-life cases.</p>\r\n<p>250+ aspiring leaders | 50+ pioneering companies | 25+ key leadership traits to develop</p>\r\n<p><em>“If your actions inspire others to dream more, learn more, do more and become more, you are a leader.”</em></p>\r\n<p><strong>the formats of this event</strong></p>\r\n<ul>\r\n<li>Panel discussion to get inspired: key traits of leadership</li>\r\n<li>Solution labs: work on real-life leadership challenges, discussed with and guided by leaders across industries</li>\r\n<li>Networking areas: meet and mingle with leaders of pioneering companies as well as other aspiring leaders like yourself</li>\r\n<li>Leadership job board: discover 1.000+ open leadership jobs and find the right fit for you</li>\r\n</ul>\r\n<p><strong>what exactly is the solution lab?</strong></p>\r\n<p>Glad you asked! Let’s lead with an example here: Ever heard the advice that you must have excellent communication skills as a leader? That’s cool. But what does it actually mean? And how can you navigate through a difficult conversation?</p>\r\n<p>In our solution lab our leaders will share a previous challenge they had and together you’ll elaborate on diverse solutions and find suitable ones. A solution lab session is approx 45 minutes long and will host a small group of max 10 women.</p>\r\n<p>You can choose which key trait you wanna look into during the sign-up process and you’ll be matched accordingly.</p>\r\n<p><strong>who is it for?</strong></p>\r\n<ul>\r\n<li>Women eager to step up into a leadership role</li>\r\n<li>Female job seekers eager to build a network to land their dream job </li><li>Women who are unsure about their next career steps</li>\r\n<li>Aspiring students ready to define leadership for themselves </li>\r\n</ul>\r\n<p><strong>Ready to unleash your inner leader?</strong>\r\nSave one of the limited spots by signing up for free</p>\r\n<p><strong>about the female factor</strong></p>\r\n<p>The female factor is a  global community for the next generation of female leaders.</p>\r\n<p>Join the movement: <a href=\'http://www.femalefactor.global\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'>www.femalefactor.global</a></p>\r\n<p><strong>Terms of Participation Agreement: </strong><em>By participating at the event, you grant the female factor permission to capture photo/video of the event. You can find the exact legal terms on our website but to summarize, we want to share your success with the world. By submitting you agree to our </em><a href=\'https://www.femalefactor.global/impressum\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'><em>terms and conditions</em></a><em> and our </em><a href=\'https://www.femalefactor.global/impressum\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'><em>privacy policy</em></a><em>.</em></p>', '261571269_521976634379.jpg', 'https://www.eventbrite.com/e/leadership-fair-the-career-event-for-future-leaders-tickets-249459599377'),
(3, 'How to start a career in Digital Product Management?', NULL, 'Webinar', '0.00', NULL, 2, 1, '2022-04-26', '18:00:00', '19:00:00', 'With Katia Cassano, Product Credit EMEA Lead at Paypal, Mentor', '<p>Are you interested in pivoting your career into Digital Product Management but you are unsure about where to start? This webinar is perfect for you!</p>\r\n<p><strong>Agenda:</strong></p>\r\n<p>18:00 - 18:05: Welcome</p>\r\n<p>18:05 - 18:30 : Keynote from the guest speaker <em>How to start a career in Digital Product Management</em>\r\n<p>18:30: 19:00 Q&amp;A</p>\r\n<p><strong>Main takeaways:</strong></p>\r\n<p>- Learn what Digital Product Management is</p>\r\n<p>- What profiles could be fit for this field</p>\r\n<p>- Tips &amp; tricks on how to land a job as a Digital Product Management</p>\r\n<p><strong>About Katia Cassano</strong></p>\r\n<p>Product Credit EMEA Lead at Paypal, Mentor</p>\r\n<p>Katia is passionate about building B2B and B2C products for established businesses and startups with more than 15 years of international experience in companies such as eBay, eDreams and Schibsted Media Group. Currently, she is responsible for driving innovative credit solutions at PayPal as Lead Product EMEA. Katia has a master\'s degree in Business Administration from Bocconi University and a certificate in Design Thinking at Stanford University.</p>\r\n<p><strong>About the Talent Garden Innovation School</strong></p>\r\n<p>The Talent Garden Innovation School provides<strong> fast, in-depth, and hands-on training programs</strong> designed to meet the real needs of the job market. We offer courses in the fields of digital technologies and innovation, with a focus on coding, UX design, data analysis, and digital marketing. Our formats range from 2-day Masterclasses to 8-weeks part-time and 3-month full-time programs.</p>\r\n<p><a href=\'https://talentgarden.org/en/innovation-school/\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'>Find out more</a></p>', '263139599_422416487889.jpg', 'https://www.eventbrite.com/e/how-to-start-a-career-in-digital-product-management-tickets-311822358067'),
(4, 'the work place of the future', 'what really matters to the next generation', 'Webinar', '0.00', NULL, 1, 1, '2022-04-20', '17:30:00', '19:30:00', 'A large-scale study reveals insights on what the next generation really want from their workplaces and gives hands-on recommendations.', '<p>📣 Calling all HR representatives and corporate leaders who are eager to get ahead in the race for talent.</p>\r\n<p>If you\'re thinking of foosball tables, fruit baskets, an in-house gym - you guessed it, these “woke benefits” won’t attract talent in the long run.</p>\r\n<p>A new generation of leaders is on the horizon, and they are clearly setting a new standard when it comes to workplace expectations. We at the female factor partnered with EY to conduct <strong>a large-scale study to find out what the next generation of female professionals really want from their employers</strong>.</p>\r\n<p>During this event, <strong>we’ll present the findings of the study with leading workplace experts </strong>- Rosemarie König, Director at EY Austria and Mathias Burger, Senior Manager B2B Business Development at kununu, as we get<strong> insights and hands-on advice on making your workplace more inclusive and attractive to top talent.</strong></p>\r\n<p>Participation is free, but registration is required.</p>\r\n<p>💬 <strong>The language of the event is German.</strong></p>\r\n  <img src=\'https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F265126749%2F521976634379%2F1%2Foriginal.20220412-053156?h=2000&amp;w=720&amp;auto=format%2Ccompress&amp;q=75&amp;sharp=10&amp;s=a95f6bb2bc2ed73686ce4fb80739900f\' alt=\'the workplace of the future - what really matters to the next generation image\'>', '252968239_521976634379.jpg', 'https://www.eventbrite.com/e/the-work-place-of-the-future-what-really-matters-to-the-next-generation-tickets-304734989557'),
(5, 'crucial conversations', 'the female factor impulse talk', 'Impulse talk', '74.75', NULL, 1, 1, '2022-04-12', '18:00:00', '19:30:00', 'Learn more about the basics of good communication and prepare yourself to lead crucial conversations confidently', '<p><strong>what is this impulse talk about?</strong></p>\r\n<p>Think of a conversation you had that you couldn’t wait to end. The discomfort, confusion or other emotions you felt are probably hard to forget.</p>\r\n<p>Every once in a while, be it in the workspace or in your life, you realise that you need to have a conversation that’s not necessarily easy to have for either party involved. You could beat around the bush or avoid having it altogether, and when you inevitably end up needing to have it, you may not know how to navigate it.</p>\r\n<p>In times like these, crucial communication skills come to your aid - from listening, to speaking and everything in between, we’re tackling it all in our online event.</p>\r\n<p>the female factor would like to invite you to a discussion about communication skills that can make or break you as a leader. </p>\r\n<p><strong>about the speaker.</strong></p>\r\n<p>A proud Philadelphian from the East Coast of the USA, Carol has worked in the HR field for more than 10 years supporting small businesses and large corporations in all their employment needs. She specializes in recruiting, interviewing, onboarding, compensation and benefits, team management, training, and organizational change. Carol also leverages her background in theater for public speaking at presentations, moderating workshops, and emceeing virtual and in-person conferences. Carol serves as a board member for the International Women’s Association in Graz, co-hosts the organization’s podcast, and helps facilitate the professional networking support group along with the monthly Lean In circle. In her spare time, she enjoys volunteering in her home communities, traveling, and experiencing new cultures.</p>\r\n<p><strong>about the female factor.</strong></p>\r\n<p>The female factor is a  global community for the next generation of female leaders.</p>\r\n<p><strong>about the inner circle.</strong></p>\r\n<p>The inner circle is the members-only community by the female factor. Members get access to a tailor-made opportunity journey including mentoring sessions, hands-on career knowledge, accountability partners, confidence trainings and a great network of peers.</p>\r\n<p><strong>This event is part of the inner circle offer and free for all members.</strong> If you\'re not a member yet, you can apply to join via www.femalefactor.global/membership. </p>\r\n<p>Join the movement: <a href=\'http://www.femalefactor.global\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'>www.femalefactor.global</a></p>\r\n<p><strong>Terms of Participation Agreement: </strong><em>By participating at the event, you grant the female factor permission to capture photo/video of the event. You can find the exact legal terms on our website but to summarize, we want to share your success with the world. By submitting you agree to our </em><a href=\'https://www.femalefactor.global/impressum\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'><em>terms and conditions</em></a><em> and our </em><a href=\'https://www.femalefactor.global/impressum\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'><em>privacy policy</em></a><em>.</em></p>', '249587609_521976634379.jpg', 'https://www.eventbrite.com/e/crucial-conversations-the-female-factor-impulse-talk-tickets-249443350777'),
(6, 'learn to lead', 'the female factor masterclass', 'Masterclass', '74.75', NULL, 1, 1, '2022-03-22', '18:00:00', '19:30:00', 'Is leadership something you can learn? Discover the 10 most common pitfalls for first-time leaders together with Bunch & the female factor!', '<p><strong>about the event</strong></p>\r\n<p>Leadership doesn’t always come with a clear job description. </p>\r\n<p>You could have an impressive arsenal of hard and soft skills but they could still fall short when confronted with issues in the workplace. People don’t always talk about the skills that will have your back when it gets rough.</p>\r\n<p>Through the latest instalment of the leadership discovery series, we want to take you on a journey of what it means to be a leader, and how you can empower yourself to be a better one through skills that are rare to find like how to delegate right, how to give critical feedback and how to manage your manager.</p>\r\n<p>Join us for a masterclass with Darja and Hannah from Bunch, the AI leadership coach that makes leadership accessible to you in as little as 2 minutes a day. You’ll also be offered exclusive access to a special collection of leadership tips in the Bunch app, and you’ll get a chance to ask them about democratizing leadership, how to get over the fear of leading people, and more.</p>\r\n<p><strong>about the female factor.</strong></p>\r\n<p>The female factor is a global community for the next generation of female leaders.</p>\r\n<p><strong>about bunch</strong></p>\r\n<p>Our community partner BUNCH is helping anyone become a better leader with your morning coffee. By combining the signature AI coach (iOS App) and a vibrant leadership community, BUNCH aims to provide an engaging, supportive learning experience - personalized to you!</p>\r\n<p><strong>about our guests</strong></p>\r\n<p><a href=\'https://www.linkedin.com/in/darjagutnick/\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'>Darja Gutnick</a>, CEO of BUNCH is an academic-turned-founder and she works to redefine learning at work. As the host of Teams at Work podcast/author of The Weekly Briefing, Darja reaches 50k+ millennial &amp; Gen Z professionals weekly.</p>\r\n<p><a href=\'https://www.linkedin.com/in/hannah-remde/\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'>Hannah Remde</a>, is an accomplished Community &amp; Product Manager at BUNCH, the leadership coach powered by AI. Hannah specialises in community building, product growth, and strategic outlook. At work, Hannah is passionate about female empowerment, building strong team culture, and experimenting with new tools &amp; processes.</p>\r\n<p><strong>about the inner circle.</strong></p>\r\n<p>The inner circle is the members-only community by the female factor. Members get access to a tailor-made opportunity journey including mentoring sessions, hands-on career knowledge, accountability partners, confidence trainings and a great network of peers.</p>\r\n<p><strong>This event is part of the inner circle offer and free for all members. </strong>If you\'re not a member yet, you can apply to join via www.femalefactor.global/membership.</p>\r\n<p>Join the movement: www.femalefactor.global</p>\r\n<p><strong>Terms of Participation Agreement:</strong> <em>By participating at the event, you grant the female factor permission to capture photo/video of the event. You can find the exact legal terms on our website but to summarize, we want to share your success with the world. By submitting you agree to our terms and conditions and our privacy policy.</em></p>', '234496819_521976634379.jpg', 'https://www.eventbrite.com/e/learn-to-lead-the-female-factor-masterclass-tickets-249430963727'),
(7, '#IamRemarkable', 'Google x the female factor', 'Masterclass', '0.00', NULL, 1, 1, '2022-02-03', '17:00:00', '18:30:00', 'Celebrating your superpowers & learning how to use them in achieving your professional goals', '<p><strong>The #IamRemarkable series, powered by Google, aims to empower women and underrepresented groups to celebrate their achievements in the workplace and beyond.</strong></p>\r\n<p>With more than 100k participants in over 100 countries, the goal of the initiative is to improve self promotion motivation and skills across the board. Learn to identify and accept how uniquely gifted you are, and then put it to practice in achieving your professional goals.</p>\r\n<p>The 90-minute masterclass helps participants learn how to speak openly about their accomplishments. The masterclass is divided into three parts:</p>\r\n<ul>\r\n<li>discuss: data and research about self-promotion and unconscious biases</li>\r\n<li>practice: main exercises to help participants articulate their achievements and practice self-promotion.</li>\r\n<li>go home strong: discussion and take-home exercises</li>\r\n</ul>\r\n<p><strong>who is this masterclass for?</strong></p>\r\n<p>All kick-ass women who are ready to acknowledge their own greatness and truly step into their power.</p>\r\n<p><strong>about Google</strong></p>\r\n<p>Google is an American multinational technology company that specializes in Internet-related services and products, which include online advertising technologies, a search engine, cloud computing, software, and hardware.</p>\r\n<p><strong>about the female factor</strong></p>\r\n<p>The female factor is a curated global community advancing careers and creating business opportunities for a new era of female leaders by boosting confidence, competence &amp; connections.</p>\r\n<p><strong>about the inner circle.</strong></p>\r\n<p>The inner circle is the members-only community by the female factor. Members get access to a tailor-made opportunity journey including mentoring sessions, hands-on career knowledge, accountability partners, confidence trainings and a great network of peers.</p>\r\n<p>This event is part of the inner circle offer and free for all members. If you\'re not a member yet, you can apply to join via www.femalefactor.global/membership.</p>\r\n<p><strong>Terms of Participation Agreement: </strong><em>By participating at the event, you grant the female factor permission to capture photo/video of the event. You can find the exact legal terms on our website but to summarize, we want to share your success with the world.</em></p>', '213629729_521976634379.jpg', 'https://www.eventbrite.com/e/iamremarkable-google-x-the-female-factor-tickets-169726100335'),
(8, 'kicking off 2022 goal setting', 'the female factor masterclass', 'Masterclass', '74.75', NULL, 1, 1, '2022-01-27', '17:00:00', '18:30:00', 'Set a goal that makes you want to jump out of bed in the morning', '<p><strong>what is this masterclass about?</strong></p>\r\n<p>Learn effective approaches to planning &amp; goal setting that will allow you to hit your next career objective and get closer to your desired future.</p>\r\n<p><strong>who will you learn from?</strong></p>\r\n<p>This masterclass will be hosted by our very own mentoring lead Louise Gelling and she will be joined by Rabea Thies, Head of People &amp; Culture at Meister, as a guest expert.</p>\r\n<p>As Head of People &amp; Culture at Meister, Rabea works with her main area of interest — people. She is passionate about finding ways to foster team collaboration and innovation through talent-, leadership-, and organizational development. Well-defined goals with a clear focus are key for successful and innovative teams and as Meister\'s OKR Master, Rabea is happy to share Meister’s insights on how to get there. </p>\r\n<p>Louise has a background is in international relations and anti-corruption but she\'s passionate about helping women succeed in their chosen fields, which is why she joined the female factor team.</p>\r\n<p>The masterclass will be moderated by our community lead Maryna Kovalyova.</p>\r\n<p><strong>what you can expect from this masterclass?</strong></p>\r\n<ul>\r\n<li>set the right goals for yourself</li>\r\n<li>not talk about SMART goals over and over again</li>\r\n<li>tips &amp; tricks on the steps of creating a (flexible) goal</li>\r\n<li>learn how to review your goal setting</li>\r\n<li>learn about reasons for failure</li>\r\n<li>to walk away with a clear goal for the next 3-6 months</li>\r\n<li>taking part in interactive goalsetting exercises</li>\r\n<li>networking with other inner circle members</li>\r\n</ul>\r\n<p><strong>who is this masterclass for?</strong></p>\r\n<p>This masterclass is for all go-getters looking to turn their dreams into actionable goals and plan to make them happen.</p>\r\n<p><strong>about Meister</strong></p>\r\n<p><a href=\'https://www.femalefactor.global/employer/meister\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'>Meister</a> creates stunning online productivity and creativity solutions that people simply love to use. Each tool in the Meister Suite integrates smoothly with the others to ensure flawless workflows and keep teams working together, wherever they are, whatever they do.</p>\r\n<p><strong>about the female factor.</strong></p>\r\n<p>The female factor is a  global community for the next generation of female leaders.</p>\r\n<p><strong>about the inner circle</strong></p>\r\n<p>The inner circle is the members-only community by the female factor. Members get access to a tailor-made opportunity journey including mentoring sessions, hands-on career knowledge, accountability partners, confidence trainings and a great network of peers.</p>\r\n<p><strong>This event is part of the inner circle offer and free for all members.</strong> If you\'re not a member yet, you can apply to join via www.femalefactor.global/membership.</p>\r\n<p>Join the movement: <a href=\'http://www.femalefactor.global\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'>www.femalefactor.global</a></p>\r\n<p><strong>Terms of Participation Agreement: </strong><em>By participating at the event, you grant the female factor permission to capture photo/video of the event. You can find the exact legal terms on our website but to summarize, we want to share your success with the world. By submitting you agree to our </em><a href=\'https://www.femalefactor.global/impressum\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'><em>terms and conditions</em></a><em> and our </em><a href=\'https://www.femalefactor.global/impressum\' target=\'_blank\' rel=\'nofollow noopener noreferrer\'><em>privacy policy</em></a><em>.</em></p>', '213630649_521976634379.jpg', 'https://www.eventbrite.com/e/kicking-off-2022-goal-setting-the-female-factor-masterclass-tickets-228491723897');

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
  `country` varchar(53) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `address`, `zip`, `city`, `country`, `url`) VALUES
(1, 'Online event', NULL, NULL, NULL, '\"Austria\"', NULL),
(2, 'Talent Garden Austria', 'Liechtensteinstraße 111-115', 1090, 'Vienna', '\"Austria\"', 'https://talentgarden.org/en/coworking/austria/vienna');

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
  `img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizer`
--

INSERT INTO `organizer` (`id`, `name`, `description`, `location_id`, `contact`, `email`, `phone`, `img`, `url`) VALUES
(1, 'the female factor', '<p><strong>The female factor is a curated global community advancing careers and creating business opportunities for a new era of female leaders by boosting confidence, competence & connections.</strong></p>\r\n  <p>No matter your goal - whether you want to work towards that promotion, settle in a new environment, change professions, write that book, start your own business or just want to be surrounded by other kickass women - we have your back.</p>\r\n  <p>Our tailor-made opportunity journey is designed to get you ahead with the right mentors, hands-on career knowledge, confidence training and a great network of like-minded people from over 47 countries worldwide.</p>', 2, 'Tanja Sternbauer', 'hi@femalefactor.global', NULL, '62236758_307651271781.png', 'https://www.eventbrite.com/o/the-female-factor-20237985128'),
(2, 'Talent Garden Austria', 'The Talent Garden Innovation School provides fast, in-depth, and hands-on training programs designed to meet the real needs of the job market. We offer courses in the fields of digital technologies and innovation, with a focus on coding, UX design, data analysis, and digital marketing. Our formats range from 2-day Masterclasses to 8-weeks part-time and 3-month full-time programs.', 2, NULL, 'vienna@talentgarden.at', '+43/12058183', '96829966_32480798091.jpg', 'https://www.eventbrite.com/o/talent-garden-austria-16030478315');

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
  ADD KEY `IDX_3BAE0AA764D218E` (`location_id`),
  ADD KEY `IDX_3BAE0AA7876C4DDA` (`organizer_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
