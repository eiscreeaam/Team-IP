-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 28, 2014 at 01:52 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quiz`
--
CREATE DATABASE IF NOT EXISTS `quiz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quiz`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'All About Men'),
(2, 'All About Women'),
(3, 'All About Lesbian'),
(4, 'All About Gay');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_name` text NOT NULL,
  `answer1` varchar(250) NOT NULL,
  `answer2` varchar(250) NOT NULL,
  `answer3` varchar(250) NOT NULL,
  `answer4` varchar(250) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_name`, `answer1`, `answer2`, `answer3`, `answer4`, `answer`, `category_id`) VALUES
(1, 'Top things Men hate women wearing?', 'Deep V-Necks', 'Jumpsuits', 'Leggings', 'Shorts', '2', 1),
(2, 'What is the most valuable thing you have stolen from your workplace?\r\n', 'Small Office Materials', 'Office Tools (like Stapler)', 'Money from the petty cash', 'Office Furniture (like Chair)', '1', 1),
(3, 'Who are you dressing for?\r\n\r\n\r\n\r\n', 'Men, to impress them', 'To impress myself', 'People who I''m friends with on social media, since photos always end up there', 'Women, to impress them', '4', 1),
(4, 'What''s the first thing you look at when judging the appearance of another woman?\r\n\r\n\r\n\r\n', 'Her weight', 'Her makeup', 'Her entire ensemble', 'Her shoes', '3', 1),
(5, 'Which of the following body parts that women appreciate the most?\r\n\r\n\r\n\r\n', 'Arms', 'Chest', 'Legs', 'Abs', '2', 1),
(6, 'When you turn on your mobile device in the morning, what is the first thing you check?\r\n\r\n	\r\n	\r\n	', 'Social feeds/messages', 'Websites', 'Work email', 'Clock', '1', 2),
(7, 'Which screen do you spend the most time in front of when you are not working?\r\n\r\n	\r\n	\r\n	\r\n	\r\n', 'Television', 'Phone/mobile device', 'Computer', 'Tablet/iPad', '3', 2),
(8, 'What is the ultimate woman''s drink?\r\n	\r\n	\r\n	', 'Cosmo', 'Vodka soda', 'Martini', 'White wine', '4', 2),
(9, 'Who is the most likely to influence which grooming products women buy?', 'Internet research', 'A friend', 'A spokesman for that grooming product', 'A husband or boyfriend', '1', 2),
(10, 'What do women most likely wearing to bed?\r\n\r\n\r\n\r\n', 'Night dresses', 'Over-sized shirt', 'Robes', 'Pyjama pants and tank top', '3', 2),
(11, 'Most lesbian relationship lasts approximately in what year?\r\n\r\n	\r\n	\r\n	\r\n	', '4 years', '5 years', '6 years', '3 years', '4', 3),
(12, 'what is the top thing that happens in a Lesbian relationship?', 'Olympic crying ', 'Expansion', 'Chronic worrying', 'Olympic drinking', '4', 3),
(13, 'What is the top Sign of Lesbian Attraction or Flirting?', 'Open the door for you to walk through', 'Say nice things about you', 'Sitting close to you', 'Can’t get off her eyes on you', '3', 3),
(14, 'What do most lesbian wear pertaining to undies?', 'Brief', 'G-string', 'Panty', 'Nothing', '3', 3),
(15, 'Why do lesbian style their hair like men?', 'To look like a man', 'To look like a woman', 'To become fashionably in', 'To gain fame', '1', 3),
(16, 'On what age does a gay knew that he is a gay? \r\n\r\n	\r\n	\r\n	', '7 years old', '10 years old', '13 years old', '17 years old', '1', 4),
(17, 'What is the most favorite place of a gay?', 'Comedy Bar', 'Gay Bar', 'Carnival', 'Park', '2', 4),
(18, 'Who/What influence the gay most?', 'Fashion', 'Environment', 'Work', 'Fame', '2', 4),
(19, 'What sport do most gay love to play?', 'Basketball', 'Tennis', 'Swimming', 'Volleyball', '4', 4),
(20, 'What social group motivated by bias crimes against gay?', 'Religion', 'Sexual orientation', 'Race', 'Disability', '3', 4),
(21, 'Which social media outlet is the most useless for Men?', 'Pinterest', 'Foursquare', 'Instagram', 'Tumblr', '1', 1),
(22, 'How many hours per week do most men spend gaming?', '7', '5', '10', '15', '2', 1),
(23, 'How do men get news these days?\r\n\r\n\r\n\r\n', 'Reading newspapers', 'Browsing online news sites', 'Watching television', 'Browsing blogs', '3', 1),
(24, 'At what point would men lie to their partner?\r\n\r\n\r\n\r\n', 'Never lie to partner', 'Tell a substantial lie to avoid being in the doghouse for an extended period	', 'Tell a huge lie to avoid splitting up relationship', 'Tell a little white lie to avoid an argument.	', '4', 1),
(25, 'what is the best thing a man can do to make his wife''s head cool down?\r\n\r\n\r\n\r\n', 'Kiss', 'Chocolate', 'Hug', 'Flowers', '1', 1),
(26, 'What is the most bullying word to a man that is not quite pretty?\r\n\r\n\r\n\r\n', 'Horse', 'Male Mermaid', 'Frog', 'Dog', '2', 1),
(27, 'At what age do men start losing their looks?\r\n	\r\n	\r\n	\r\n', '40', '60', 'Never', '50', '3', 1),
(28, 'What is the most probable thing men is doing when he is sweating?\r\n\r\n\r\n\r\n', 'Drinking Coffee', 'Watching TV', 'Lying', 'Taking Shower', '3', 1),
(29, 'What''s the reaction of the majority men and a woman with a great body walks in and stands nearby?\r\n\r\n\r\n\r\n', 'I openly stare at her and drool forms on my lower lip.', 'It is impossible not to be aware that she is there, but I try to stop myself from looking.', 'Nothing happens; it doesn’t affect me.', 'I’m drawn to look at her, and I sneak a peek, or glance at her from the corner of my eye.', '4', 1),
(30, 'How Long Would A Man Date Before Committing?\r\n\r\n\r\n\r\n', 'A couple of months', 'A month', 'Love at first sight', 'A year', '1', 1),
(31, 'For most men, what is the most attractive in a woman?\r\n\r\n\r\n\r\n', 'Eyes', 'Long hair', 'Legs', 'Lips', '2', 1),
(32, 'During which of the following activities do men think about how they look to others?\r\n      \r\n \r\n               \r\n', 'Public leisure time   ', 'Job/School  ', 'Grooming       ', 'Errands', '3', 1),
(33, 'Which of the following are pressing concerns of men right now?\r\n       \r\n                                                           \r\n                                            \r\n', 'Money', 'Job or School ', 'Maintenance of household', 'General physical or mental health  ', '4', 1),
(34, 'What was the alcoholic beverage of choice in Filipinos?\r\n\r\n\r\n\r\n', 'San Miguel', 'Red Horse', 'Tanduay', 'Palm Wine', '1', 1),
(35, 'For men, they feel very handsome when they have a what?\r\n\r\n\r\n\r\n', 'Beard', 'Moustache', 'Goatees', 'Sideburns', '2', 1),
(36, 'According to Filipino men,  when they''re still young, they are scared of what?\r\n\r\n\r\n\r\n', 'Have a tooth', 'Circumcision', 'Injection', 'Cockroach', '3', 1),
(37, 'For men, what is the most often borrowed thing to neighbors?\r\n\r\n\r\n\r\n', 'Saw', 'Wrench', 'DVD', 'Hammer', '4', 1),
(38, 'For men, turnoff if a woman have this.\r\n\r\n\r\n\r\n', 'Scabies', 'Body Odor', 'Dandruff', 'Tartar/Cavities', '1', 1),
(39, 'What does men chose when it comes to color of cellphone casing?\r\n\r\n\r\n\r\n', 'White', 'Blue', 'Red', 'Silver', '2', 1),
(40, 'What sport does men love but wife don''t want?\r\n\r\n\r\n\r\n\r\n', 'Boxing', 'Swimming', 'Basketball', 'Car Racing', '3', 1),
(41, 'What is the top question usually comes up whenever a boyfriend doesn’t respond to texts or calls?\r\n\r\n\r\n', 'Where are you?', 'What did you do this past weekend?', 'Do you have any pets?', 'Do you play any sports?', '1', 2),
(42, 'What is the default question when boyfriend aren’t talking to girlfriend?\r\n\r\n\r\n\r\n', 'Are you hungry?', 'Are you mad at me?', 'Are you bored?', 'Are you drunk?', '2', 2),
(43, 'What is the fitness group that women join  when it comes on losing weight?\r\n\r\n\r\n\r\n', 'Zumba', 'Belly dance troupe', 'Taebo', 'Yoga', '3', 2),
(44, 'When there is a problem, where do women run to?\r\n\r\n\r\n\r\n', 'Church', 'Mall', 'Beach', 'Parlor', '4', 2),
(45, 'Besides from clothes, what is attached from the hanger, according to women?\r\n\r\n\r\n\r\n', 'Bra', 'Belt', 'Bag', 'Scarf', '1', 2),
(46, 'For women, they feel sexy when they wear what clothes?\r\n\r\n\r\n', 'Skater skirt', 'Shorts', 'Skinny jeans', 'Long skirts', '2', 2),
(47, 'Why do most women sent racy photos of herself to a partner?\r\n	\r\n	\r\n\r\n', 'To breakup with him.', 'To spark his interest.', 'To keep his interest during the relationship.', 'To aggravate him after the breakup.', '3', 2),
(48, 'What do women consider to be a romantic gesture (from man to a woman)?\r\n	\r\n	\r\n	\r\n', 'Taking me away for a surprise trip.', 'Taking care of one of my chores, like washing the dishes.', 'Just being there for me.', 'Buying me a romantic gift, like flowers.', '3', 2),
(49, 'How Long Would a women Date Before Committing?\r\n\r\n\r\n\r\n', 'A month', 'Love at first sight', 'A year', 'A couple of months', '4', 2),
(50, 'How often do women wear makeup now?\r\n            \r\n     \r\n', 'Regularly', 'Everyday', 'Never', 'Occasionally  ', '4', 2),
(51, 'Women''s most essential cosmetic makes them look…?\r\n\r\n      \r\n\r\n', 'Prettier or more feminine', 'Healthier or conceals a problem', 'More alert or intelligent', 'More sexually attractive', '1', 2),
(52, 'Which cosmetic would be happiest to throw in the trash and never have to wear again?\r\n        \r\n                 \r\n  ', 'Lipstick or liner ', 'Foundation   ', 'Concealer', 'Mascara', '2', 2),
(53, 'During which of the following activities do women think about how they look to others?\r\n       \r\n                     \r\n                   \r\n   ', 'Grooming', 'Job/School ', 'Public leisure ', 'Errands ', '3', 2),
(54, 'For women, what is the most turnoff qualities of a man?\r\n\r\n\r\n', 'Too fragrant', 'Very intelligent', 'Too kind', 'Too clean to himself', '4', 2),
(55, 'Which of the following are pressing concerns of a woman right now?\r\n                                                          \r\n                                           \r\n  ', 'General physical or mental health  ', 'Money ', 'Job or School  ', 'Maintenance of household', '1', 2),
(56, 'On what part of the body a woman is very conscious?\r\n\r\n\r\n\r\n', 'Chest', 'Hair', 'Legs', 'Lips', '2', 2),
(57, 'What type of gift do woman most likely to receive?\r\n\r\n \r\n\r\n', 'A Lingerie', 'A Jewelry ', 'A Trip ', 'An Xbox ', '3', 2),
(58, 'According to mothers, they are afraid to have a what?\r\n\r\n\r\n\r\n', 'White hair', 'Eye Bags', 'Varicose veins', 'Wrinkles', '4', 2),
(59, 'What is the thing that women often left on a computer shop?\r\n\r\n\r\n\r\n', 'USB', 'Wallet', 'Bag', 'Book', '1', 2),
(60, 'What does women usually do when they are drunk?\r\n\r\n\r\n\r\n\r\n', 'Eating', 'Speaking in English language', 'Starting a fight', 'Biting', '2', 2),
(61, 'In what particular service does gay considered ban?\r\n\r\n\r\n\r\n', 'Military service', 'Religious service', 'Teaching service', 'Private sector service', '1', 4),
(62, 'Why they want to be a gay rather than to be a real man?\r\n\r\n\r\n', 'Fashionable', 'Follow their feeling', 'Dont want to court', 'Dont want to be a man', '2', 4),
(63, 'What is the top main constituent groups within the overall "Gay Community."?\r\n\r\n\r\n\r\n', 'QIA', 'BIP', 'LGBT', 'LG', '3', 4),
(64, 'What is the most color often associated with the gay rights movement?\r\n\r\n\r\n\r\n\r\n', 'Pink', 'Orange', 'Blue', 'Lavender', '4', 4),
(65, 'What is the top word that can insult a gay?\r\n\r\n\r\n\r\n', 'Queer', 'Gay', 'Bisexual', 'Transgender', '1', 4),
(66, 'Why do most gay tell people about their sexual orientation?\r\n\r\n\r\n', 'For better one''s mental health ', 'For higher one''s self-esteem', 'For psychological adjustment', 'For fame', '1', 4),
(67, 'Why other gays are infected with HIV? \r\n\r\n\r\n\r\n', 'Not using drugs', 'Not using safe sexual practices', 'Kissing', 'Holding hands', '2', 4),
(68, 'What is cross dressing?\r\n\r\n\r\n', 'Fantasize on occasion about becoming a woman', 'Gay like to wear women''s clothing in private or in public', 'Desire to actually change their sex', 'Independent of one''s sexual preference', '2', 4),
(69, 'What is the most perception of discrimination for gays?\r\n\r\n\r\n', 'Been rejected by a friend or a family member', 'Been subject to slurs or jokes', 'Been treated or physically attacked', 'Been made to feel unwelcome at a place of worship\r\n', '2', 4),
(70, 'At what median age are gay adults first felt they might be something other than heterosexual or straight ?\r\n', '15 years old', '18 years old', '21 years old', '12 years old', '4', 4),
(71, 'Why gay want to be married?\r\n\r\n\r\n\r\n', 'Love', 'Companionship', 'Making a lifelong commitment', 'Financial support', '1', 4),
(72, 'What is the most difficult terrain for many LGBT adults?\r\n\r\n', 'Socialization', 'Religion', 'Community engagement', 'Fashion', '2', 4),
(73, 'What is the most used social network site by gay?\r\n\r\n', 'Twitter', 'Facebook', 'Tumblr', 'Instagram', '2', 4),
(74, 'According to U.S. Census data, it is the state with the most gay couples ?\r\n\r\n\r\n', 'Massachusetts', 'California', 'Texas', 'Dakota', '2', 4),
(75, 'Given a chance to have plastic surgery, what is the first priority to be done?\r\n\r\n\r\n', 'Chest augmentation', 'Cheekbones', 'Waist', 'Legs', '1', 4),
(76, 'If a gay would be a marine animal, what will they choose?\r\n\r\n\r\n\r\n', 'Octupos', 'Whale', 'Mermaid', 'Jellyfish', '4', 4),
(77, 'Who is the singer that multiple gays idolized  when it comes to dancing?\r\n\r\n\r\n\r\n', 'J.Lo', 'Madonna', 'Beyonce', 'Nicki Minaj', '1', 4),
(78, 'For gays ,it is the most sexiest uniform in this sport ?\r\n\r\n\r\n\r\n', 'Volleyball', 'Basketball', 'Baseball', 'Badminton', '1', 4),
(79, 'Most of the LGBT community implies that sexuality is the result of conscious choice. It discourages the use of what term? \r\n\r\n\r\n\r\n', 'Sexual harassment', 'Sexual frustration', 'Sexual preference', 'Sexual abuse', '3', 4),
(80, 'What is the percentage of gay people that experienced some form of discrimination and harassment at the workplace?\r\n\r\n\r\n\r\n', '10-40', '20-37', '15-43', '25-36', '3', 4),
(81, 'Why do most lesbian decides to marry afterwards?\r\n\r\n\r\n\r\n', 'To have a family', 'To have companionship during old age', 'To repent sin', 'To be happy', '1', 3),
(82, 'On what age does a lesbian knew that he is a lesbian? \r\n\r\n\r\n\r\n', '13 years old', '10 years old', '19 years old', '30 years old', '2', 3),
(83, 'Why most lesbian want to be a lesbian rather than to be a real woman?\r\n\r\n\r\n', 'Follow their feeling', 'Fashionable', 'Dont want to be courted', 'Dont want to be a woman', '3', 3),
(84, 'What is the top reason why a lesbian left their partner?\r\n\r\n\r\n', 'For revenge', 'Lost of interest', 'For fun', 'Neglected', '3', 3),
(85, 'Why does lesbians don''t choose their homosexual condition?\r\n\r\n\r\n\r\n', 'Guilt', 'Hardship', 'Suffering', 'Trial', '4', 3),
(86, 'What do most lesbian say to her partner when it comes to break-ups?\r\n\r\n\r\n\r\n', 'Babe, I''m tired.', 'Babe, I''m bored. I''ll find a new one.', 'Babe, you''re not hot. ', 'Babe, I don''t love you anymore. Let''s break up.', '1', 3),
(87, 'Why do most lesbian were competing to boys?\r\n\r\n\r\n', 'To have fun', 'For fame', 'To increase their charms', 'To have many friends', '2', 3),
(88, 'What is the main reason why a lesbian is not accepted in our community?\r\n\r\n\r\n', 'Sexual orientation', 'Disability', 'Religion', 'Socialization', '3', 3),
(89, 'Why does a lesbian feels like a real man in fashion and mind, but when it comes to Special lane of LRT/ MRT, they line up in girls?\r\n\r\n\r\n\r\n', 'They want to see pretty girls', 'They will borrow make-ups', 'They are using their advantage of being a girl.', 'They will ask a date', '3', 3),
(90, 'Who is often the childhood companion of a lesbian before becoming a lesbian?\r\n\r\n\r\n\r\n', 'Dad', 'Brother', 'Boy Friends', 'Uncle', '1', 3),
(91, 'Why most of the lesbians are dramatic in life than straight gurls especially when it comes to love life?\r\n\r\n\r\n\r\n', 'Their past relationship left them.', 'Boys don''t love them.', 'They have many bad experience', 'They are jealous to pretty girls.', '1', 3),
(92, 'What is the reason why most lesbian choose to become a lesbian instead to be a straight?\r\n\r\n\r\n\r\n', 'Don''t want to be courted', 'There a many pretty girls', 'Afraid of boys', 'Bad experience in their past', '1', 3),
(93, 'What is the top characteristics of a lesbian?\r\n\r\n\r\n\r\n', 'Sporty', 'Has short hair', 'Wears huge t-shirt', 'Allergy to make-up', '2', 3),
(94, 'What is the top reason why a lesbian chase a woman?\r\n\r\n\r\n', 'Because a woman can help with household chores and has a good job.', 'Because a woman can make a lesbian laugh.', 'Because a woman likes being with a lesbian in bed or not.', 'Because a woman can be trusted.', '2', 3),
(95, 'Why do most family can''t accept that there is a lesbian in their family?\r\n\r\n\r\n\r\n', 'Religion', 'Race', 'Reputation', 'Society', '3', 3),
(96, 'What is the top definition of a lesbian?\r\n\r\n\r\n\r\n', 'Has a  romantic desire in same sex', 'Boyish', 'Weird', 'Adventurous', '1', 3),
(97, 'Why do most of the lesbian choose not to say their status to others?\r\n\r\n\r\n\r\n', 'Waiting their family to find out that they are different.', 'Scared to beat off.', 'Waiting for the right time.', 'Scared to death.', '3', 3),
(98, 'What is the top reason why most of lesbians anticipate to their partner?\r\n\r\n\r\n\r\n', 'Orphan', 'To have fun', 'Working student', 'Distress in family', '4', 3),
(99, 'What is the top lesbian movie?\r\n\r\n\r\n', 'Blue Is the Warmest Color', 'Show Me Love', 'Saving Face', 'The Hours', '1', 3),
(100, 'What is the top myth about lesbians?\r\n\r\n\r\n\r\n\r\n', 'All Lesbians Hate Men', 'Lesbians are attracted to all women', 'Lesbians just haven''t met the right man yet', 'One Lesbian in a relationship has to be "the man"', '1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `score`, `category_id`) VALUES
(3, 'jm7', 2, 1),
(18, 'was', 1, 1),
(19, 'joemar', 3, 1),
(20, 'awaw', 0, 1),
(21, 'eisra', 1, 2),
(22, 'pop', 0, 3),
(23, 'pop', 0, 3),
(24, 'popo', 0, 2),
(25, 'uio', 0, 2),
(26, 'awe', 0, 3),
(27, 'poi', 0, 4),
(28, 'ssd', 0, 3),
(29, 'fff', 0, 3),
(30, 'kkk', 0, 3),
(31, 'EisraNew', 10, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
