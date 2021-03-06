-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 30 oct. 2021 à 21:38
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `api_rest`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Mode', 'Catégorie pour tout ce qui est en rapport avec la mode.', '2019-06-01 00:32:07', '2019-08-30 15:34:33'),
(2, 'Electronique', 'Gadgets, drones et plus.', '2018-06-03 02:34:11', '2019-01-30 16:34:33'),
(3, 'Moteurs', 'Sports mécaniques', '2018-06-01 10:33:07', '2019-07-30 15:34:54'),
(5, 'Films', 'Produits cinématographiques.', '2018-06-01 10:33:07', '2018-01-08 12:27:26'),
(6, 'Livres', 'E-books, livres audio...', '2018-06-01 10:33:07', '2019-01-08 12:27:47'),
(13, 'Sports', 'Articles de sport.', '2018-01-09 02:24:24', '2019-01-09 00:24:24');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `description`, `prix`, `categories_id`, `created_at`, `updated_at`) VALUES
(1, 'Produit 1', 'Ma nouvelle description', '50', 2, '2021-10-30 23:36:06', '2021-10-30 21:36:06'),
(2, 'Produit 2', 'Ma nouvelle description', '50', 2, '2021-10-30 23:36:13', '2021-10-30 21:36:13'),
(3, 'Produit 3', 'Ma nouvelle description', '50', 2, '2021-10-30 23:36:20', '2021-10-30 21:36:20'),
(4, 'Produit 4', 'Ma nouvelle description', '50', 2, '2021-10-30 23:36:25', '2021-10-30 21:36:25'),
(5, 'Produit 5', 'Ma nouvelle description', '50', 2, '2021-10-30 23:36:29', '2021-10-30 21:36:29'),
(6, 'Produit 6', 'Ma nouvelle description', '100', 5, '2021-10-30 23:36:55', '2021-10-30 21:36:55'),
(7, 'Produit 7', 'Ma nouvelle description', '100', 5, '2021-10-30 23:37:02', '2021-10-30 21:37:02'),
(8, 'Produit 8', 'Ma nouvelle description', '100', 5, '2021-10-30 23:37:11', '2021-10-30 21:37:11'),
(9, 'Produit 9', 'Ma nouvelle description', '100', 5, '2021-10-30 23:37:15', '2021-10-30 21:37:15'),
(10, 'Produit 10', 'Ma nouvelle description', '100', 5, '2021-10-30 23:37:19', '2021-10-30 21:37:19');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_id` (`categories_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
