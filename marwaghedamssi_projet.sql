-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db.3wa.io
-- Généré le : mer. 22 déc. 2021 à 21:29
-- Version du serveur :  5.7.33-0ubuntu0.18.04.1-log
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `marwaghedamssi_projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `Date` datetime NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `tva` float NOT NULL,
  `total` float NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `order_detail`
--

INSERT INTO `order_detail` (`id`, `date`, `tva`, `total`, `user_id`) VALUES
(21, '2021-12-14 23:55:20', 0, 0, 7),
(22, '2021-12-14 23:55:27', 3.54, 35.4, 7),
(23, '2021-12-14 23:55:27', 0, 0, 7),
(24, '2021-12-14 23:56:19', 0, 0, 7),
(25, '2021-12-14 23:56:24', 0, 0, 7),
(26, '2021-12-14 23:56:24', 3.54, 35.4, 7),
(27, '2021-12-14 23:56:36', 3.54, 35.4, 7),
(28, '2021-12-14 23:57:01', 0, 0, 7),
(29, '2021-12-14 23:57:13', 3.54, 35.4, 7),
(30, '2021-12-15 00:00:19', 0, 0, 7),
(31, '2021-12-15 00:00:48', 3.54, 35.4, 7),
(32, '2021-12-15 10:38:59', 0, 0, 7),
(33, '2021-12-15 10:38:59', 3.54, 35.4, 7),
(34, '2021-12-15 10:39:18', 0, 0, 7),
(35, '2021-12-15 10:41:31', 0, 0, 7),
(36, '2021-12-15 10:44:27', 0, 0, 7),
(37, '2021-12-15 10:45:51', 3.54, 35.4, 7),
(38, '2021-12-15 10:45:52', 0, 0, 7),
(39, '2021-12-15 10:45:55', 3.54, 35.4, 7),
(40, '2021-12-15 10:51:56', 0, 0, 7),
(41, '2021-12-15 12:15:02', 3.54, 35.4, 7),
(42, '2021-12-15 12:15:02', 0, 0, 7),
(43, '2021-12-15 12:17:17', 0, 0, 7),
(44, '2021-12-15 12:17:20', 0, 0, 7),
(45, '2021-12-15 12:17:39', 0, 0, 7),
(46, '2021-12-15 12:17:39', 3.54, 35.4, 7),
(47, '2021-12-15 12:17:41', 3.54, 35.4, 7),
(48, '2021-12-15 12:24:46', 0, 0, 7),
(49, '2021-12-15 12:25:01', 9.45, 94.5, 9),
(50, '2021-12-15 12:25:01', 0, 0, 9),
(51, '2021-12-15 12:25:02', 3.54, 35.4, 7),
(52, '2021-12-15 12:25:02', 0, 0, 7),
(53, '2021-12-15 12:25:47', 0, 0, 9),
(54, '2021-12-15 12:26:07', 3.54, 35.4, 7),
(55, '2021-12-15 12:26:07', 0, 0, 7),
(56, '2021-12-15 12:26:11', 0, 0, 9),
(57, '2021-12-15 12:26:22', 9.45, 94.5, 9),
(58, '2021-12-15 12:26:23', 0, 0, 9),
(59, '2021-12-15 12:26:39', 9.45, 94.5, 9),
(60, '2021-12-15 12:26:39', 0, 0, 9),
(61, '2021-12-15 12:26:52', 0, 0, 7),
(62, '2021-12-15 12:26:52', 3.54, 35.4, 7),
(63, '2021-12-15 12:27:00', 9.45, 94.5, 9),
(64, '2021-12-15 12:27:00', 0, 0, 9),
(65, '2021-12-15 12:27:07', 9.45, 94.5, 9),
(66, '2021-12-15 12:27:07', 0, 0, 9),
(67, '2021-12-15 12:30:33', 0, 0, 7),
(68, '2021-12-15 12:30:40', 3.54, 35.4, 7),
(69, '2021-12-15 12:31:01', 3.54, 35.4, 7),
(70, '2021-12-15 12:32:44', 0, 0, 7),
(71, '2021-12-15 12:32:44', 0, 0, 9),
(72, '2021-12-15 12:33:10', 0, 0, 7),
(73, '2021-12-15 12:33:10', 3.54, 35.4, 7),
(74, '2021-12-15 12:33:40', 0, 0, 7),
(75, '2021-12-15 12:35:27', 9.45, 94.5, 9),
(76, '2021-12-15 12:35:28', 0, 0, 9),
(77, '2021-12-15 12:36:32', 9.45, 94.5, 9),
(78, '2021-12-15 12:36:39', 3.54, 35.4, 7),
(79, '2021-12-15 12:37:27', 3.54, 35.4, 7),
(80, '2021-12-15 12:41:56', 9.45, 94.5, 9),
(81, '2021-12-15 12:42:00', 9.45, 94.5, 9),
(82, '2021-12-15 12:42:01', 0, 0, 9),
(83, '2021-12-15 12:45:44', 9.45, 94.5, 9),
(84, '2021-12-15 12:50:15', 3.54, 35.4, 7),
(85, '2021-12-15 12:53:46', 0, 0, 9),
(86, '2021-12-15 12:54:04', 0, 0, 9),
(87, '2021-12-15 12:54:09', 0, 0, 7),
(88, '2021-12-15 12:55:14', 0, 0, 9),
(89, '2021-12-15 12:55:16', 0, 0, 7),
(90, '2021-12-15 12:55:50', 0, 0, 9),
(91, '2021-12-15 12:56:23', 0, 0, 9),
(92, '2021-12-15 12:56:40', 3.54, 35.4, 7),
(93, '2021-12-15 12:56:48', 9.45, 94.5, 9),
(94, '2021-12-15 12:59:07', 9.45, 94.5, 9),
(95, '2021-12-15 13:00:03', 9.45, 94.5, 9),
(96, '2021-12-15 13:02:40', 9.45, 94.5, 9),
(97, '2021-12-15 13:04:23', 9.45, 94.5, 9),
(98, '2021-12-15 13:05:28', 9.45, 94.5, 9),
(99, '2021-12-15 13:06:21', 3.54, 35.4, 7),
(100, '2021-12-15 13:06:53', 3.54, 35.4, 7),
(101, '2021-12-15 13:06:53', 0, 0, 7),
(102, '2021-12-15 13:08:20', 9.45, 94.5, 9),
(103, '2021-12-15 13:08:29', 0, 0, 7),
(104, '2021-12-15 13:08:40', 0, 0, 9),
(105, '2021-12-15 13:12:17', 9.45, 94.5, 9),
(106, '2021-12-15 13:12:22', 9.45, 94.5, 9),
(107, '2021-12-15 13:12:22', 0, 34, 9),
(108, '2021-12-15 13:18:06', 3.54, 35.4, 7),
(109, '2021-12-15 13:18:07', 0, 0, 7),
(110, '2021-12-15 13:18:59', 0, 0, 7),
(111, '2021-12-15 13:19:25', 0, 0, 9),
(112, '2021-12-15 13:19:29', 9.45, 94.5, 9),
(113, '2021-12-15 13:19:29', 0, 0, 9),
(114, '2021-12-15 13:19:32', 0, 0, 7),
(115, '2021-12-15 13:19:44', 9.45, 94.5, 9),
(116, '2021-12-15 13:19:44', 0, 0, 9),
(117, '2021-12-15 13:19:46', 3.54, 35.4, 7),
(118, '2021-12-15 13:19:46', 0, 0, 7),
(119, '2021-12-15 13:20:30', 0, 0, 7),
(120, '2021-12-15 13:20:31', 3.54, 35.4, 7),
(121, '2021-12-15 13:21:38', 3.54, 35.4, 7),
(122, '2021-12-15 13:29:51', 3.54, 35.4, 7),
(123, '2021-12-15 13:29:51', 0, 0, 7),
(124, '2021-12-15 13:31:11', 0, 0, 7),
(125, '2021-12-15 13:31:11', 3.54, 35.4, 7),
(126, '2021-12-15 13:34:50', 3.54, 35.4, 7),
(127, '2021-12-15 13:34:57', 9.45, 94.5, 9),
(128, '2021-12-15 13:35:22', 9.45, 94.5, 9),
(129, '2021-12-15 13:35:22', 3.54, 35.4, 7),
(130, '2021-12-15 13:35:28', 9.45, 94.5, 9),
(131, '2021-12-15 13:35:37', 4.35, 43.5, 7),
(132, '2021-12-15 13:37:09', 4.35, 43.5, 7),
(133, '2021-12-15 21:45:01', 0.96, 9.6, 7),
(134, '2021-12-20 11:27:07', 0.96, 9.6, 8),
(135, '2021-12-20 11:30:34', 0.96, 9.6, 8),
(136, '2021-12-20 11:32:08', 0.96, 9.6, 8),
(137, '2021-12-20 11:34:17', 0.96, 9.6, 8),
(138, '2021-12-20 11:34:44', 0.96, 9.6, 8),
(139, '2021-12-20 11:37:02', 0.96, 9.6, 8),
(140, '2021-12-20 12:34:56', 0.45, 4.5, 7),
(141, '2021-12-20 17:33:20', 1.11, 11.1, 8),
(142, '2021-12-20 18:04:46', 1.11, 11.1, 8),
(143, '2021-12-20 22:33:54', 0.45, 4.5, 7),
(144, '2021-12-20 22:41:09', 0.45, 4.5, 7),
(145, '2021-12-21 09:45:23', 0.45, 4.5, 7),
(146, '2021-12-21 17:21:00', 0.96, 9.6, 7),
(147, '2021-12-21 21:57:19', 0.96, 9.6, 7),
(148, '2021-12-21 21:58:55', 0.96, 9.6, 7),
(149, '2021-12-22 14:42:48', 0.96, 9.6, 7),
(150, '2021-12-22 14:44:27', 0.96, 9.6, 7),
(151, '2021-12-22 14:45:28', 0.96, 9.6, 7),
(152, '2021-12-22 14:47:04', 0.96, 9.6, 7);

-- --------------------------------------------------------

--
-- Structure de la table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `order_product`
--

INSERT INTO `order_product` (`id`, `quantity`, `order_id`, `product_id`, `price`) VALUES
(210, 1, 146, 21, 1.5),
(212, 1, 147, 21, 1.5),
(214, 1, 148, 21, 1.5),
(216, 1, 149, 21, 1.5),
(218, 1, 150, 21, 1.5),
(220, 1, 151, 21, 1.5),
(222, 1, 152, 21, 1.5);

-- --------------------------------------------------------

--
-- Structure de la table `payment_detail`
--

CREATE TABLE `payment_detail` (
  `id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `status` varchar(15) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `is_famous` tinyint(1) DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `picture` varchar(100) NOT NULL,
  `product_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `is_famous`, `name`, `description`, `price`, `picture`, `product_category_id`) VALUES
(21, 0, 'Zuppa di Pesce                                    ', 'Fischsuppe', 1.5, 'img//soupe.jpg', 2),
(25, 0, 'test4', 'test4', 7.2, 'img//menu.PNG', 9),
(26, 0, 'test1', 'test1', 8.2, 'img//242581218_445242750246669_7694484364901662619_n.jpg', 3),
(27, 0, 'test2', 'test2', 40.5, 'img//242567637_1235441210305887_5710548477319042289_n.jpg', 4),
(28, 0, 'test3', 'test3', 14.5, 'img//242595324_444606370274880_1186557781640044683_n.jpg', 5),
(29, 0, 'test5', 'test4', 10.5, 'img//242582633_1618032601700289_8898643830708975043_n.jpg', 4),
(30, 0, 'test6', 'test6', 9.5, 'img//242601158_402122764603084_5209072340796263683_n.jpg', 6),
(31, 0, 'test7', 'test7', 10.5, 'img//242601158_402122764603084_5209072340796263683_n.jpg', 6),
(32, 0, 'test8', 'test8', 8.5, 'img//242603377_547921896495508_6791518894091221291_n.jpg', 5),
(33, 0, 'test9', 'test9', 9.5, 'img//242566192_1191173111375058_5031546545327463529_n.jpg', 5),
(34, 0, 'test10', 'test10', 10.5, 'img//242598363_574011257071669_6707849294725115954_n.jpg', 1),
(35, 0, 'test11', 'test11', 14.5, 'img//242578600_294206912083964_4045332397969931923_n.jpg', 8),
(36, 0, 'test12', 'test12', 10.5, 'img//242578602_272721308033579_5955801735100230636_n.jpg', 8),
(37, 0, 'test18', 'test18', 5.5, 'img//img5.jpg', 3);

-- --------------------------------------------------------

--
-- Structure de la table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `description`) VALUES
(1, 'Vorspeisen', 'Entré'),
(2, 'Suppen', 'soupe'),
(3, 'Salat', 'salade'),
(4, 'Pastagerichte', ''),
(5, 'Fischgerichte', 'poisson'),
(6, 'Pizza', 'pizza'),
(7, 'Bier', 'bierre'),
(8, 'Aperitif', 'aperatif'),
(9, 'Wein', 'vin'),
(10, 'Alkoholfreie Getränke', 'test'),
(11, 'Spirituosen', 'test'),
(12, 'Heiße Getränke', 'test'),
(13, 'Nachspeisen', ''),
(14, 'Meter Schnaps', ''),
(15, 'test', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `number`, `date`, `time`, `user_id`) VALUES
(89, 3, '2021-11-27', '16:09:00', 7),
(90, 4, '2021-11-25', '15:09:00', 7);

-- --------------------------------------------------------

--
-- Structure de la table `supplément`
--

CREATE TABLE `supplément` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `mail` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(10) NOT NULL,
  `last_name` varchar(10) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `is_news` tinyint(1) DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `mail`, `password`, `first_name`, `last_name`, `phone_number`, `is_news`, `is_admin`) VALUES
(2, 'marwa@gmail.com', '$2y$10$BvcR00zRRBYpR8nVXpNFHOFQOqXwjp38NtLRfUHMLCJ1g/WUMHNdO', 'marwa', 'ben salem', '00 00 00 00', 1, 0),
(3, 'test2@hotmail.com', '$2y$10$Xcgzxe.f99aLSBZ042LqjOfs3GLgYK0c1N/3KymvaMcdfgZ1Y4PKy', 'test2', 'test2', '00000000', 1, 0),
(4, 'test1@gmail.com', '$2y$10$LHXA0IMXg/6vgwgH72LYHO7Lt7zbIorJjYvG.wsd4tCn6icjUZPJe', 'test1', 'test1', '00000000', 1, 0),
(5, 'test1@gmail.com', '$2y$10$tdLMROItXNDDp.d5HeKMRev1uFm0muSgkA3nKzgrfsEMbqN8SByHO', 'test1', 'test1', '00000000', 1, 0),
(6, 'test4@hotmail.com', '$2y$10$MxZu/FbcKNitST8vYX4Z3eRiTWhqqoy.8xKxgT08cFAj7dro1dOKy', 'test4', 'test4', '00000000', 1, 0),
(7, 'marwagbs1@gmail.com', '$2y$10$Vp2cALY/6ZDJ8B/as4.lQO0isPv62JdfGkrN6PFMqWHF.yu7dBmBq', 'marwa', 'GHEDAMSSI', '00000000', 0, 1),
(8, 'roudy@admin.com', '$2y$10$3Hr1hEX3NdiBspBDecZgGuLwkwolPWowB7nwJnmxuibjz/qIAi5oi', 'Roudy', 'Saks', '+2234531341', 1, 0),
(9, 'oklm@test.fr', '$2y$10$jaLCSUOixMVAg8DCf9tYLuI3cyLmC/sfd/dS7E5QyBu5vn5HcXpqy', 'greg', 'bibi', '0203010405', 1, 0),
(10, 'test3@gmail.com', '$2y$10$Bm27970ENhKh.paaytq0iOAm.qqzfc3sjKYP6dPAOQ6GDBlqBNu.i', '', '', '', 0, 0),
(11, 'Mhamed@gmail.com', '$2y$10$w36//4wBpapnWjunMWvSxeQugQOCRrg/u5.yvuXdmjxMM2F6l8CLa', 'M\'hamed', 'GHEDAMSSI', '00000000', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `address_line1` varchar(50) NOT NULL,
  `address_line2` varchar(50) NOT NULL,
  `city` varchar(80) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`order_id`);

--
-- Index pour la table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`user_id`);

--
-- Index pour la table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`user_id`);

--
-- Index pour la table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`user_id`);

--
-- Index pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`order_id`),
  ADD KEY `order_product_ibfk_2` (`product_id`);

--
-- Index pour la table `payment_detail`
--
ALTER TABLE `payment_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_detail_id` (`order_detail_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product_category` (`product_category_id`);

--
-- Index pour la table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_ibfk_1` (`user_id`);

--
-- Index pour la table `supplément`
--
ALTER TABLE `supplément`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`product_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT pour la table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT pour la table `payment_detail`
--
ALTER TABLE `payment_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT pour la table `supplément`
--
ALTER TABLE `supplément`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_detail` (`id`);

--
-- Contraintes pour la table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_detail` (`id`),
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Contraintes pour la table `payment_detail`
--
ALTER TABLE `payment_detail`
  ADD CONSTRAINT `payment_detail_ibfk_2` FOREIGN KEY (`order_detail_id`) REFERENCES `order_detail` (`id`),
  ADD CONSTRAINT `payment_detail_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `supplément`
--
ALTER TABLE `supplément`
  ADD CONSTRAINT `supplément_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Contraintes pour la table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
