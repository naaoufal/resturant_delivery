-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 24 nov. 2020 à 12:26
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `food`
--

-- --------------------------------------------------------

--
-- Structure de la table `plats`
--

CREATE TABLE `plats` (
  `id_plat` int(11) NOT NULL,
  `entree` varchar(255) NOT NULL,
  `image_entree` text NOT NULL,
  `desc_entree` varchar(2000) NOT NULL,
  `plat` varchar(255) NOT NULL,
  `image_plat` text NOT NULL,
  `plat_desc` varchar(2000) NOT NULL,
  `dessert` varchar(255) NOT NULL,
  `image_dessert` text NOT NULL,
  `dessert_desc` varchar(2000) NOT NULL,
  `price_total` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `plats`
--

INSERT INTO `plats` (`id_plat`, `entree`, `image_entree`, `desc_entree`, `plat`, `image_plat`, `plat_desc`, `dessert`, `image_dessert`, `dessert_desc`, `price_total`) VALUES
(1, 'entree 1', 'assets/images/entree1.jpg', 'c est une entree !!!', 'plat principal 1', 'assets/images/plat1.jpg', 'c est un plat principale', 'dessert 1', 'assets/images/dessert1.jpg', 'c est un dessert ', 20),
(2, 'entree 2', 'assets/images/entree2.jpg', 'c est une entree !!!', 'plat principal 2', 'assets/images/plat2.jpg', 'c est un plat principale', 'dessert 2', 'assets/images/dessert2.jpg', 'c est un dessert ', 20),
(3, 'entree 3', 'assets/images/entree3.jpg', 'c est une entree !!!', 'plat principal 3', 'assets/images/plat3.jpg', 'c est un plat principale', 'dessert 3', 'assets/images/dessert3.jpg', 'c est un dessert ', 20);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `numero_telephone` int(12) NOT NULL,
  `addrss` varchar(2000) NOT NULL,
  `id_plat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `plats`
--
ALTER TABLE `plats`
  ADD PRIMARY KEY (`id_plat`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_reservation`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `plats`
--
ALTER TABLE `plats`
  MODIFY `id_plat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_reservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
