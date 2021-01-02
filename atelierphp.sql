-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 02 jan. 2021 à 20:15
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `atelierphp`
--

-- --------------------------------------------------------

--
-- Structure de la table `album`
--

CREATE TABLE `album` (
  `idAlbum` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `prix` float NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `album`
--

INSERT INTO `album` (`idAlbum`, `titre`, `prix`, `image`) VALUES
(1, 'lalala', 1444, '124840021_869129837158248_8956393344434075134_n.png'),
(9, 'Yasmine Daly', 100, 'guitar.jpg'),
(11, 'lalala', 1, ''),
(12, '', 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `annonces`
--

CREATE TABLE `annonces` (
  `id_an` int(11) NOT NULL,
  `montant_demande` float NOT NULL,
  `titre_an` varchar(25) NOT NULL,
  `nom_prenom` varchar(50) NOT NULL,
  `desc_an` varchar(150) NOT NULL,
  `adresse_an` varchar(150) NOT NULL,
  `date_an` date NOT NULL,
  `img` varchar(100) NOT NULL,
  `montant_collec` float NOT NULL,
  `categorie_an` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `annonces`
--

INSERT INTO `annonces` (`id_an`, `montant_demande`, `titre_an`, `nom_prenom`, `desc_an`, `adresse_an`, `date_an`, `img`, `montant_collec`, `categorie_an`) VALUES
(5, 700, 'poor', 'yasmine daly', 'poor me', 'rue ', '2020-12-01', 'hands-5354202_960_720.png', 0, ''),
(10, 400, 'For my cat', 'Yasmine Daly', '<p>My cat got really sick and she needs help</p>\r\n', 'Ariana', '2020-12-15', 'animal.PNG', 80, ''),
(13, 1100, 'My grandpa is so sick ', 'Sophia', '<p>Please help us</p>\r\n', 'Sport city', '2020-12-09', 'grandpa.PNG', 70, ''),
(14, 5500, 'My son is dying', 'Phoebe', '<p>My son is struggling</p>\r\n', 'Zarzis', '2020-12-02', 'oli.PNG', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `date_a` date NOT NULL,
  `titre` int(200) NOT NULL,
  `editor1` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`date_a`, `titre`, `editor1`, `image`, `id`) VALUES
('2020-12-02', 2000, '2000', 'strong.jpg', 3),
('2020-12-16', 0, 'ask for aid and you shall recieve', 'sage.png', 4),
('2020-12-17', 0, 'ask for aid', 'zoe.jpg', 7),
('2021-01-16', 0, 'wdj', 'zoe.jpg', 8),
('2021-01-11', 0, 'gsdegzeg', 'zoe.jpg', 9),
('2021-01-11', 0, 'gsdegzeg', 'zoe.jpg', 10),
('2021-01-11', 0, 'gsdegzeg', 'zoe.jpg', 11),
('2021-01-11', 0, 'gsdegzeg', 'zoe.jpg', 12),
('2021-01-06', 0, 'zouhour', 'zoe.jpg', 13);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(32, 'khaled2', 'aaa', '2021-01-01 11:04:13', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `sender_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `comment`, `sender_name`) VALUES
(11, '', 'zouhour'),
(12, '', 'sage'),
(13, '0000', '0000');

-- --------------------------------------------------------

--
-- Structure de la table `demandes`
--

CREATE TABLE `demandes` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `tel` int(100) NOT NULL,
  `adresse_dem` varchar(250) NOT NULL,
  `montant_dem` float NOT NULL,
  `raison` varchar(300) NOT NULL,
  `attachement` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `demandes`
--

INSERT INTO `demandes` (`id`, `nom`, `tel`, `adresse_dem`, `montant_dem`, `raison`, `attachement`) VALUES
(44, 'Halim Boussaada', 98754878, 'Jendouba', 620, 'Save my pets life\r\nMy cat and my best freind Ahry has recently started to have seizures!!', 'mimg_6993038_1608050046.png'),
(45, ' lowie jay gato', 54878969, 'La Manouba', 1800, 'im knocking on your kind hearts for my cousin which has a heart condition and gave birth 2 days ago. her babies are still in the icu while the mother is suffering because of her heart problems. her husband is just a laborer and they are from the southern part of leyte (visayas region),they are strug', 'mimg_6974019_1606740561-630x470.jpg'),
(46, 'Najia Mabrouk', 24141758, 'Le Kef', 800, 'COVID19 BATTLE OF MY BROTHER:\r\nAny amount will be a great help and is highly appreciated. Should you wish to extend your help for my brother below are the details of accounts where you can transfer funds.', 'mimg_6866848_1600431366.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `dons`
--

CREATE TABLE `dons` (
  `id_don` int(11) NOT NULL,
  `montant_don` float NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `dons`
--

INSERT INTO `dons` (`id_don`, `montant_don`, `message`) VALUES
(1, 550, 'am generous'),
(56, 500, 'Get well soon ♥'),
(57, 50, 'i hope you get better'),
(58, 70, 'hi'),
(59, 40, ''),
(60, 40, '');

-- --------------------------------------------------------

--
-- Structure de la table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `downloads` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` varchar(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `fichier` varchar(5000) NOT NULL,
  `prix` varchar(100) NOT NULL,
  `image_text` text NOT NULL,
  `annee` date NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `element` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `image`, `fichier`, `prix`, `image_text`, `annee`, `categorie`, `element`) VALUES
('aaa', 'm2.jpg', '', '200', 'bbbb', '0000-00-00', 'Medical Material', '');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `login` varchar(50) NOT NULL,
  `mot_de_passe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `email`, `login`, `mot_de_passe`) VALUES
(1, 'daly', 'yasmine', 'yasmine.daly@esprit.tn', 'azerty', 'azerty'),
(8, 'daly', 'jasmin', 'yasmine.daly@esprit.tn', 'ya', 'a');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`idAlbum`);

--
-- Index pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD PRIMARY KEY (`id_an`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `demandes`
--
ALTER TABLE `demandes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dons`
--
ALTER TABLE `dons`
  ADD PRIMARY KEY (`id_don`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `album`
--
ALTER TABLE `album`
  MODIFY `idAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `annonces`
--
ALTER TABLE `annonces`
  MODIFY `id_an` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `demandes`
--
ALTER TABLE `demandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `dons`
--
ALTER TABLE `dons`
  MODIFY `id_don` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
