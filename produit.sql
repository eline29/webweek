-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 16 jan. 2026 à 08:31
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `webweek`
--

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `nom_produit` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `prix` decimal(10,2) DEFAULT NULL,
  `id_boutique` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `nom_produit`, `description`, `prix`, `id_boutique`) VALUES
(13, 'Shampoing solide', 'Soin naturel à l\'argile pour poils courts.', 12.50, 1),
(14, 'Shampooing universel', 'Soin complet pour tous types de pelages.', 9.90, 1),
(15, 'Shampooing Chat', 'Formule extra-douce respectant le PH.', 10.50, 1),
(16, 'Shampooing Protecteur', 'Renforce la brillance et protège le poil.', 14.00, 1),
(17, 'Gamelle pour chat', 'Céramique illustrée avec motifs félins.', 15.00, 1),
(18, 'Attrapes poil', 'Éponges spéciales pour vêtements et tissus.', 8.00, 1),
(19, 'Brosse en caoutchouc', 'Massage et retrait des poils morts.', 7.50, 1),
(20, 'Peigne anti-puces', 'Dents serrées en métal inoxydable.', 6.90, 1),
(21, 'Décapsuleur collier', 'Petit accessoire pratique en métal.', 5.00, 1),
(22, 'Crochets à tique', 'Lot de 2 crochets pour retrait sécurisé.', 4.50, 1),
(23, 'Porte manteau', 'Décoration bois avec trois crochets.', 19.90, 1),
(24, 'Balle pour chien', 'Balle résistante pour le jeu actif.', 11.00, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `id_boutique` (`id_boutique`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`id_boutique`) REFERENCES `boutique` (`id_boutique`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
