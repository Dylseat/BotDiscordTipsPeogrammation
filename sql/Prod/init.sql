-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 18 déc. 2023 à 21:07
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tips_programmations`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_c#`
--

CREATE TABLE `t_c#` (
  `id_C#` int(11) NOT NULL,
  `Types et gestion_de _la mémoire` text DEFAULT NULL,
  `Conventions` text DEFAULT NULL,
  `Comparaison_objet` text DEFAULT NULL,
  `Polymorphisme_héritage` text DEFAULT NULL,
  `Multihéritage_interface` text DEFAULT NULL,
  `Classes_abstraite` text DEFAULT NULL,
  `Héritage_vs_composition` text DEFAULT NULL,
  `Encapsulation` text DEFAULT NULL,
  `Test_unitaire` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_c#`
--

INSERT INTO `t_c#` (`id_C#`, `Types et gestion_de _la mémoire`, `Conventions`, `Comparaison_objet`, `Polymorphisme_héritage`, `Multihéritage_interface`, `Classes_abstraite`, `Héritage_vs_composition`, `Encapsulation`, `Test_unitaire`) VALUES
(1, 'Quelle est la différence entre une classe et un objet ?\r\n\r\nL\'objet et l\'instance d\'une classe.\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, 'Je suis conventions', NULL, 'Je suis Poly', 'Je suis multi', 'Je suis abstrait', 'Je suis héritage', 'Je suis Encapsulation', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_c#`
--
ALTER TABLE `t_c#`
  ADD PRIMARY KEY (`id_C#`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_c#`
--
ALTER TABLE `t_c#`
  MODIFY `id_C#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
